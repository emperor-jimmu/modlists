# Merged Guide Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Merge `GETTING-STARTED.md` and `MODLIST.md` into a single `GUIDE.md`, rendered as a polished Typst PDF with driftwood-logo cover page and color palette.

**Architecture:** Single `GUIDE.md` source file (merged once from the two original files, then hand-curated), rendered via `templates/guide.typ` through cmarker. `style.typ` applies the driftwood color palette. `generate-pdf.ps1` compiles a single PDF output.

**Tech Stack:** Typst 0.15.0, cmarker 0.1.10, PowerShell 7, Node.js (for one-time merge)

---

### Task 1: Create output directory and merge script

**Files:**
- Create: `tools/` directory
- Create: `tools/merge-guide.js`

- [ ] **Step 1: Create the tools directory**

```bash
New-Item -ItemType Directory -Force -Path tools
```

- [ ] **Step 2: Write `tools/merge-guide.js`**

```javascript
// tools/merge-guide.js
// One-time script: merges MODLIST.md + GETTING-STARTED.md into GUIDE.md
// Strips dependency-only sub-sections and raw-typst comments from MODLIST content.
// Logs warnings when wave headers don't match across files.

const fs = require('fs');
const path = require('path');

const root = path.resolve(__dirname, '..');
const modlist = fs.readFileSync(path.join(root, 'MODLIST.md'), 'utf8');
const gettingStarted = fs.readFileSync(path.join(root, 'GETTING-STARTED.md'), 'utf8');

// Normalize a header line for comparison: collapse whitespace, lowercase, strip trailing punctuation
function normalizeHeader(h) {
  return h.replace(/\s+/g, ' ').trim().toLowerCase().replace(/[—–-]$/, '').trim();
}

function parseWaves(content) {
  // Match ## Wave headers. The header line is the full line.
  const regex = /^##\s+(Wave\s[^\n]+)$/gm;
  const matches = [...content.matchAll(regex)];
  const waves = new Map(); // use Map to preserve insertion order
  
  for (let i = 0; i < matches.length; i++) {
    const label = matches[i][1].trim();
    const start = content.indexOf('\n', matches[i].index + matches[i][0].length) + 1;
    const end = i + 1 < matches.length ? matches[i + 1].index : content.length;
    const blockContent = content.slice(start, end).trimEnd();
    waves.set(label, blockContent);
  }
  return waves;
}

function stripDepsAndPagebreaks(content) {
  // Remove <!--raw-typst ... --> comments
  let cleaned = content.replace(/<!--raw-typst[\s\S]*?-->/g, '');
  
  // Remove any ### subsection whose header matches the pattern
  // "Dependencies", "Dependency", "dependencies", "dependency" as a whole-word match
  // including all content until the next ### or ## or end of string
  cleaned = cleaned.replace(
    /^###\s+[^\n]*?\b[Dd]ependenc(?:y|ies)\b[^\n]*\n([\s\S]*?)(?=\n###\s|\n##\s|\n<!--raw-typst|$)/gm,
    ''
  );
  
  // Remove the "Note: XMCL installs dependencies" callout if present
  // This matches a blockquote starting with "> **Note**: XMCL installs..."
  cleaned = cleaned.replace(
    /^>\s*\*\*Note\*\*:\s*XMCL installs dependencies automatically[\s\S]*?(?=\n\n|$)/gm,
    ''
  );
  
  // Collapse multiple blank lines
  cleaned = cleaned.replace(/\n{3,}/g, '\n\n');
  
  return cleaned.trim();
}

function extractWaveNumber(label) {
  const m = label.match(/^Wave\s+(-?\d+(?:\.\d+)?)/i);
  return m ? parseFloat(m[1]) : Infinity;
}

const mlWaves = parseWaves(modlist);
const gsWaves = parseWaves(gettingStarted);

// Cross-validate: warn about waves in one file but not the other
const mlLabels = new Set(mlWaves.keys());
const gsLabels = new Set(gsWaves.keys());

for (const label of mlLabels) {
  if (!gsLabels.has(label)) {
    const norm = normalizeHeader(label);
    const foundInGs = [...gsLabels].find(l => normalizeHeader(l) === norm);
    if (foundInGs) {
      console.warn(`WARN: Near-match for "${label}" -> found "${foundInGs}" in GETTING-STARTED (may merge correctly)`);
    } else {
      console.warn(`WARN: "${label}" only in MODLIST (no matching GETTING-STARTED section)`);
    }
  }
}
for (const label of gsLabels) {
  if (!mlLabels.has(label)) {
    const norm = normalizeHeader(label);
    const foundInMl = [...mlLabels].find(l => normalizeHeader(l) === norm);
    if (foundInMl) {
      console.warn(`WARN: Near-match for "${label}" -> found "${foundInMl}" in MODLIST (may merge correctly)`);
    } else {
      console.warn(`WARN: "${label}" only in GETTING-STARTED (no matching MODLIST section)`);
    }
  }
}

// Build a merged set matching by normalized header
const allLabels = new Map(); // normalized -> { mlLabel, gsLabel, num }

for (const [label, content] of mlWaves) {
  const norm = normalizeHeader(label);
  if (!allLabels.has(norm)) {
    allLabels.set(norm, { mlLabel: label, gsLabel: null, num: extractWaveNumber(label) });
  }
  allLabels.get(norm).mlLabel = label;
}

for (const [label, content] of gsWaves) {
  const norm = normalizeHeader(label);
  if (!allLabels.has(norm)) {
    allLabels.set(norm, { mlLabel: null, gsLabel: label, num: extractWaveNumber(label) });
  }
  allLabels.get(norm).gsLabel = label;
}

const sorted = [...allLabels.entries()].sort((a, b) => a[1].num - b[1].num);

const output = [];
output.push('# Driftwood — Setup & Mod Guide');
output.push('');
output.push('<!-- Cover page and TOC are handled in the Typst template. -->');
output.push('');

for (const [norm, { mlLabel, gsLabel, num }] of sorted) {
  // Use the MODLIST label if available (it has the " — Name" format), otherwise GS label
  const displayLabel = mlLabel || gsLabel;
  
  const mlContent = mlLabel ? stripDepsAndPagebreaks(mlWaves.get(mlLabel)) : null;
  const gsRaw = gsLabel ? (gsWaves.get(gsLabel) || '') : null;
  const gsContent = gsRaw
    ? gsRaw
        .replace(/<!--raw-typst[\s\S]*?-->/g, '')
        // Strip "### Install\n\nSee MODLIST.md ..." lines since mod tables are above
        .replace(/^###\s+Install\n\nSee\s+\[MODLIST\.md\][^\n]*\n?/gm, '')
        .trim()
    : null;

  if (!mlContent && !gsContent) continue;

  output.push('');
  output.push(`<!--raw-typst #pagebreak() -->`);
  output.push('');
  output.push(`## ${displayLabel}`);
  output.push('');

  if (mlContent) {
    output.push(mlContent);
    output.push('');
  }

  if (gsContent) {
    output.push(gsContent);
    output.push('');
  }
}

fs.writeFileSync(path.join(root, 'GUIDE.md'), output.join('\n'));
console.log(`OK: GUIDE.md written — ${sorted.length} wave sections`);
```

- [ ] **Step 3: Run the merge script**

```bash
node tools/merge-guide.js
```

Expected: `OK: GUIDE.md written — N wave sections` with any warnings about mismatched headers.

- [ ] **Step 4: Verify no warnings need manual attention**

If any `WARN:` lines appear, review and fix the source files to match headers.

- [ ] **Step 5: Review GUIDE.md structure**

```bash
Select-String -Path GUIDE.md -Pattern '^## Wave' | ForEach-Object { $_.Line }
```

Expected: Each wave appears exactly once in ascending order. Spot-check the first wave's content to confirm mod tables appear before tutorials.

- [ ] **Step 6: Commit**

```bash
git add tools/merge-guide.js GUIDE.md
git commit -m "feat: add merged GUIDE.md and one-time merge script"
```

---

### Task 2: Verify dependency stripping

- [ ] **Step 1: Check for remaining dependency sections**

```bash
Select-String -Path GUIDE.md -Pattern '^###\s+[^\n]*dependenc' -CaseSensitive:$false
```

Expected: No matches. If any remain, adjust the regex in `tools/merge-guide.js` and re-run.

- [ ] **Step 2: Spot-check a complex wave (Wave 1 or Wave 3) for correctness**

```bash
Select-String -Path GUIDE.md -Pattern '## Wave 3' -Context 0,50
```

Scan the output to verify mod tables appear first, then tutorial content, with no dependency rows visible.

---

### Task 3: Update style.typ with driftwood palette

**Files:**
- Modify: `templates/style.typ`

- [ ] **Step 1: Write `templates/style.typ`**

```typst
// style.typ — Driftwood palette for the merged guide
#let apply(body) = {
  set text(font: ("Cambria", "Georgia"), size: 11pt, lang: "en", fill: rgb("#2C1810"))
  set par(leading: 0.65em)

  // Code blocks — dark warm background
  show raw.where(block: true): it => {
    set text(font: ("Consolas", "Courier New"), size: 9pt, fill: rgb("#E8D8C0"))
    block(
      fill: rgb("#2C2418"),
      inset: (x: 10pt, y: 8pt),
      radius: 3pt,
      width: 100%,
      stroke: 0.5pt + rgb("#4A3C30"),
    )[#it]
  }

  // Inline code — blue text, no background
  show raw.where(block: false): set text(size: 9pt, fill: rgb("#5B7B8A"), font: "Consolas")

  // H1 — driftwood dark (used for the document title only)
  show heading.where(level: 1): it => {
    set text(size: 20pt, weight: "bold", fill: rgb("#403020"))
    it
  }

  // H2 — driftwood brown (wave section headers)
  show heading.where(level: 2): it => {
    set text(size: 15pt, weight: "bold", fill: rgb("#604020"))
    it
  }

  // H3 — driftwood blue (subsections)
  show heading.where(level: 3): it => {
    set text(size: 12pt, weight: "semibold", fill: rgb("#5B7B8A"))
    it
  }

  // Links — driftwood blue
  show link: set text(fill: rgb("#5B7B8A"))

  // Tables — brown header row with white text, cream alternating body rows
  show table: it => {
    set table(
      fill: (luma(255), rgb("#F5EDE0")),
      stroke: none,
      inset: (x: 6pt, y: 4pt),
    )
    // Style header row: brown fill, white text, bottom border
    show table.cell.where(y: 0): cell => {
      set text(fill: white, weight: "bold", size: 9pt)
      block(
        fill: rgb("#604020"),
        inset: (x: 6pt, y: 3pt),
      )[#cell]
      // Bottom border on header row cells
    }
    it
  }

  // Horizontal rules between header rows
  show table.hline: set stroke(0.5pt + rgb("#C8B8A0"))

  // Blockquotes -> callout boxes (cream bg, gold left border)
  show quote: it => {
    block(
      fill: rgb("#F5EDE0"),
      inset: (x: 10pt, y: 6pt),
      radius: 2pt,
      width: 100%,
      stroke: (left: 4pt + rgb("#C4A882"), top: none, right: none, bottom: none),
    )[#it]
  }

  body
}
```

- [ ] **Step 2: Commit**

```bash
git add templates/style.typ
git commit -m "feat: driftwood color palette with table header styling"
```

---

### Task 4: Update guide.typ with cover page and TOC

**Files:**
- Modify: `templates/guide.typ`

- [ ] **Step 1: Write `templates/guide.typ`**

```typst
#set page(
  paper: "a4",
  margin: (top: 2cm, bottom: 2cm, left: 2.5cm, right: 2.5cm),
  numbering: "1",
)

#import "@preview/cmarker:0.1.10"
#import "style.typ": apply
#show: apply

#let version = read("../VERSION").trim()
#let logo-path = "../assets/driftwood-logo.png"

// ---- Cover Page ----
#set page(numbering: none)
#align(center + horizon, [
  #block(height: 1.5cm)
  #image(logo-path, width: 60%)
  #block(height: 1cm)
  #text(size: 36pt, weight: "bold", fill: rgb("#604020"))[Driftwood]
  #block(height: 0.5cm)
  #text(size: 18pt, fill: rgb("#5B7B8A"))[Setup & Mod Guide]
  #block(height: 0.8cm)
  #line(length: 40%, stroke: 0.5pt + luma(180))
  #block(height: 0.4cm)
  #text(size: 13pt, fill: luma(120))[Minecraft 1.21.1 -- NeoForge]
  #block(height: 1.5cm)
  #text(size: 11pt, fill: luma(160))[Version #version]
])

// ---- Table of Contents ----
#set page(numbering: "i")
#pagebreak()
#outline(
  indent: 1.2em,
  fill: line(length: 100%, stroke: 0.5pt + luma(200)),
)

// ---- Body ----
#set page(numbering: "1", number-align: center)
#pagebreak()
#cmarker.render(read("../GUIDE.md"), h1-level: 0, set-document-title: false)
```

- [ ] **Step 2: Commit**

```bash
git add templates/guide.typ
git commit -m "feat: cover page with logo and TOC in guide.typ"
```

---

### Task 5: Remove orphaned template

**Files:**
- Remove: `templates/modlist.typ`

- [ ] **Step 1: Delete and stage removal**

```bash
git rm templates/modlist.typ
```

- [ ] **Step 2: Commit**

```bash
git commit -m "chore: remove orphaned modlist.typ template"
```

---

### Task 6: Update generate-pdf.ps1

**Files:**
- Modify: `generate-pdf.ps1`

- [ ] **Step 1: Write `generate-pdf.ps1`**

```powershell
$ErrorActionPreference = "Stop"
$ProjectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$RenderedDir = Join-Path $ProjectRoot "rendered"

function Write-Status($Symbol, $Message) {
  $color = if ($Symbol -eq "OK") { "Green" } elseif ($Symbol -eq "FAIL") { "Red" } else { "Yellow" }
  Write-Host ("[" + $Symbol + "]") -ForegroundColor $color -NoNewline
  Write-Host " $Message"
}

function Test-TypstInstall() {
  $null = Get-Command "typst" -ErrorAction SilentlyContinue
  if ($?) { return $true }

  $env:Path = [Environment]::GetEnvironmentVariable("Path", "User") + ";" + [Environment]::GetEnvironmentVariable("Path", "Machine")
  $null = Get-Command "typst" -ErrorAction SilentlyContinue
  if ($?) { return $true }

  $wingetTypst = Join-Path $env:LOCALAPPDATA "Microsoft\WinGet\Packages\Typst.Typst_Microsoft.Winget.Source_8wekyb3d8bbwe\typst-x86_64-pc-windows-msvc\typst.exe"
  if (Test-Path $wingetTypst) {
    $env:Path = $env:Path + ";" + [System.IO.Path]::GetDirectoryName($wingetTypst)
    Write-Status "OK" "Typst found at winget package path."
    return $true
  }

  Write-Status "WARN" "Typst not found. Attempting install via winget..."
  try {
    winget install Typst.Typst --accept-source-agreements --accept-package-agreements 2>&1 | Out-Null
    $env:Path = [Environment]::GetEnvironmentVariable("Path", "User") + ";" + [Environment]::GetEnvironmentVariable("Path", "Machine")
    $null = Get-Command "typst" -ErrorAction SilentlyContinue
    if ($?) {
      Write-Status "OK" "Typst installed successfully."
      return $true
    }
    if (Test-Path $wingetTypst) {
      $env:Path = $env:Path + ";" + [System.IO.Path]::GetDirectoryName($wingetTypst)
      Write-Status "OK" "Typst installed via winget."
      return $true
    }
  } catch {
    Write-Status "FAIL" "Failed to install Typst automatically."
  }

  Write-Host ""
  Write-Host "Install Typst manually from https://github.com/typst/typst/releases" -ForegroundColor Yellow
  Write-Host "  winget install Typst.Typst" -ForegroundColor Cyan
  return $false
}

function Compile-Guide() {
  Write-Host ""
  Write-Host "Compiling Driftwood Guide..." -ForegroundColor Cyan
  $sourceFile = Join-Path $ProjectRoot "templates" "guide.typ"
  $outputPdf = Join-Path $RenderedDir "DRIFTWOOD-GUIDE.pdf"

  $result = typst compile --root $ProjectRoot $sourceFile $outputPdf 2>&1
  if ($LASTEXITCODE -eq 0) {
    $fileInfo = Get-Item $outputPdf
    $sizeKB = [math]::Round($fileInfo.Length / 1KB, 1)
    Write-Status "OK" "DRIFTWOOD-GUIDE.pdf -> $outputPdf ($sizeKB KB)"
    return $true
  } else {
    Write-Status "FAIL" "Failed to compile DRIFTWOOD-GUIDE.pdf"
    Write-Host $result -ForegroundColor Red
    return $false
  }
}

Write-Host "========================================" -ForegroundColor Cyan
Write-Host " Driftwood -- PDF Generator" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

if (-not (Test-TypstInstall)) {
  exit 1
}

$versionFile = Join-Path $ProjectRoot "VERSION"
if (Test-Path $versionFile) {
  $version = Get-Content $versionFile -Raw | ForEach-Object { $_.Trim() }
  Write-Status "OK" "Version: $version"
} else {
  Write-Status "WARN" "VERSION file not found at $versionFile"
}

if (-not (Test-Path $RenderedDir)) {
  New-Item -ItemType Directory -Path $RenderedDir -Force | Out-Null
}

$guideOk = Compile-Guide

Write-Host ""
if ($guideOk) {
  Write-Status "OK" "Guide PDF generated successfully."
} else {
  Write-Status "FAIL" "PDF compilation failed."
  exit 1
}
```

- [ ] **Step 2: Commit**

```bash
git add generate-pdf.ps1
git commit -m "refactor: simplify to single guide PDF output"
```

---

### Task 7: Compile and verify

- [ ] **Step 1: Run the PDF generator**

```bash
pwsh generate-pdf.ps1
```

Expected: Clean compile, no errors. Output shows file size.

- [ ] **Step 2: Verify output file exists and is substantial**

```bash
$pdf = Get-Item rendered/DRIFTWOOD-GUIDE.pdf
Write-Host ("File: {0}, Size: {1} KB" -f $pdf.Name, [math]::Round($pdf.Length / 1KB, 1))
```

Expected: File > 800 KB (merged content should be larger than the old ~1 MB getting-started alone).

- [ ] **Step 3: Verify no Typst compilation warnings**

```bash
$result = typst compile --root $ProjectRoot templates/guide.typ rendered/DRIFTWOOD-GUIDE.pdf 2>&1
if ($LASTEXITCODE -ne 0) { Write-Host "COMPILE FAILED" -ForegroundColor Red; Write-Host $result }
```

Expected: exit code 0, no errors.

- [ ] **Step 4: Remove old rendered PDFs (superseded)**

```bash
git rm rendered/GETTING-STARTED.pdf rendered/MODLIST.pdf
```

---

### Task 8: Update STATUS.md

**Files:**
- Modify: `STATUS.md`

- [ ] **Step 1: Update the "PDF Generator" section and add merged guide entry**

Replace the "PDF Generator" checkmark group and add a new "Merged Guide" section.

In `STATUS.md`, replace the lines:

```
### PDF Generator
- [x] Typst 0.15.0 installed via winget
- [x] cmarker 0.1.10 package for inline markdown-to-Typst rendering
- [x] generate-pdf.ps1 with dependency check, auto-install, and fallback winget path
- [x] Both PDFs compile cleanly: MODLIST.pdf, GETTING-STARTED.pdf
```

with:

```
### Merged Guide (Jul 2026)
- [x] GUIDE.md created — single canonical source merged from MODLIST.md + GETTING-STARTED.md
- [x] Driftwood Typst theme — cover page with logo, TOC, color palette from logo
- [x] templates/modlist.typ removed — superseded by single guide.typ
- [x] generate-pdf.ps1 simplified to single DRIFTWOOD-GUIDE.pdf output
- [x] DRIFTWOOD-GUIDE.pdf compiled cleanly
```

- [ ] **Step 2: Commit**

```bash
git add STATUS.md
git commit -m "docs: update STATUS.md for merged guide"
```

---

### Task 9: Cleanup

- [ ] **Step 1: Remove one-time artifacts**

```bash
git rm analyze-logo.ps1
Remove-Item tools/merge-guide.js -Force
```

The merge script was a one-time tool; GUIDE.md is now the canonical source and won't be regenerated from it.

- [ ] **Step 2: Remove the now-empty tools/ directory**

```bash
if ((Get-ChildItem tools -ErrorAction SilentlyContinue | Measure-Object).Count -eq 0) {
  Remove-Item tools -Force
}
```

- [ ] **Step 3: Final commit**

```bash
git add -A
git status
git commit -m "chore: remove one-time scripts and superseded PDFs"
```

Verify `git status` shows only intentional changes before committing.

---

### Task 10: Final verification

- [ ] **Step 1: Full clean compile**

```bash
pwsh generate-pdf.ps1
```

Expected: Clean compile, no warnings.

- [ ] **Step 2: Review the output**

Open `rendered/DRIFTWOOD-GUIDE.pdf` and verify:
- Cover shows logo, "Driftwood", "Setup & Mod Guide", version
- TOC lists all waves with correct page numbers
- First content page starts with Wave -1
- Each wave section shows mod tables then tutorials
- No dependency-only sections visible
- Colors match the driftwood palette (brown headers, cream table rows, dark code blocks)
