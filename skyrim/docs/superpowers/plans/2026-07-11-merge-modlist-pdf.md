# merge-modlist.ps1 PDF Generator — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Upgrade `tools/merge-modlist.ps1` from a markdown merger to a PDF generator using Typst, with cover page, TOC (H1/H2), blue links, Inter font, and the specified cover image.

**Architecture:** The script reads all `guide/*.md` files and `VERSION`, converts markdown to typst syntax (tables → `#table()`, headings → `=`, images → `#image()`), emits `rendered/elder-wilds.typ`, then runs `typst compile` to produce `rendered/elder-wilds.pdf`.

**Tech Stack:** PowerShell 7+, Typst 0.15+

---

## Final Script Structure (end-to-end)

```
tools/merge-modlist.ps1
├── Ensure-Fonts()              → downloads Inter + JetBrains Mono to assets/fonts/
├── Resize-CoverImage()         → resizes 9MB PNG → 1200px wide
├── Test-TypstInstalled()       → checks PATH, warns if missing
├── Convert-Table($Text)        → pipe tables → #table() content blocks
├── Convert-MarkdownToTypst()   → headings → =, images → image(), tables, comments
│
└── Main body:
    ├── Read VERSION → $version
    ├── Foreach file → Convert-MarkdownToTypst + collect headings
    ├── Build .typ preamble (fonts, page setup, show rules, cover, TOC)
    ├── Append converted content per file
    ├── Rewrite cross-file links (](file.md#a) → ](#fileh1-a))
    ├── Write rendered/elder-wilds.typ
    ├── typst compile → rendered/elder-wilds.pdf
    └── Remove old rendered/*.md (no longer produced)
```

---

### Task 1: Helper functions

**Files:**
- Modify: `tools/merge-modlist.ps1` (prepend before `param()` or add after `param()` at top)

- [ ] **Step 1: Add `Ensure-Fonts`, `Resize-CoverImage`, `Test-TypstInstalled`**

```powershell
function Ensure-Fonts {
  $fontDir = Join-Path $root "assets/fonts"
  $null = New-Item -ItemType Directory -Path $fontDir -Force
  $fonts = @(
    @{ Name = "Inter-Regular.ttf"; Url = "https://github.com/rsms/inter/raw/master/docs/font-files/Inter-Regular.ttf" }
    @{ Name = "Inter-Bold.ttf"; Url = "https://github.com/rsms/inter/raw/master/docs/font-files/Inter-Bold.ttf" }
    @{ Name = "Inter-Italic.ttf"; Url = "https://github.com/rsms/inter/raw/master/docs/font-files/Inter-Italic.ttf" }
    @{ Name = "JetBrainsMono-Regular.ttf"; Url = "https://github.com/JetBrains/JetBrainsMono/raw/master/fonts/ttf/JetBrainsMono-Regular.ttf" }
    @{ Name = "JetBrainsMono-Bold.ttf"; Url = "https://github.com/JetBrains/JetBrainsMono/raw/master/fonts/ttf/JetBrainsMono-Bold.ttf" }
  )
  foreach ($f in $fonts) {
    $path = Join-Path $fontDir $f.Name
    if (-not (Test-Path $path)) {
      Write-Host "Downloading $($f.Name)..."
      Invoke-WebRequest -Uri $f.Url -OutFile $path -UseBasicParsing
    }
  }
  return $fontDir
}

function Resize-CoverImage {
  $source = Join-Path $root "assets/Gemini_Generated_Image_ivqvcgivqvcgivqv.png"
  $target = Join-Path $root "assets/cover-resized.png"
  if (-not (Test-Path $source)) { Write-Warning "Cover image not found"; return $null }
  if (Test-Path $target) { return $target }
  Write-Host "Resizing cover image to 1200px wide..."
  Add-Type -AssemblyName System.Drawing
  $img = [System.Drawing.Image]::FromFile($source)
  $scale = 1200.0 / $img.Width
  $bmp = New-Object System.Drawing.Bitmap(1200, [int]($img.Height * $scale))
  $gfx = [System.Drawing.Graphics]::FromImage($bmp)
  $gfx.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
  $gfx.DrawImage($img, 0, 0, $bmp.Width, $bmp.Height)
  $gfx.Dispose(); $bmp.Save($target, [System.Drawing.Imaging.ImageFormat]::Png)
  $img.Dispose(); $bmp.Dispose()
  return $target
}

function Test-TypstInstalled {
  $null -eq (Get-Command "typst" -ErrorAction SilentlyContinue)
}
```

- `Test-TypstInstalled` returns `$true` when typst is NOT found, `$false` when it IS found. Callers use: `if (Test-TypstInstalled) { Write-Error "..."; exit 1 }`.

---

### Task 2: Markdown → Typst conversion functions

**Files:**
- Modify: `tools/merge-modlist.ps1` (add after helpers)

- [ ] **Step 2: Add `Convert-Table` (pipe tables → `#table()` using content blocks)**

```powershell
function Convert-Table {
  param([string]$Text)
  $result = [System.Text.StringBuilder]::new()
  $lines = $Text -split "`r`n|`n"
  $i = 0
  while ($i -lt $lines.Length) {
    $line = $lines[$i]
    # Detect pipe table: line starts with | and next line is separator row
    if ($line -match '^\s*\|.+\|' -and ($i+1) -lt $lines.Length -and $lines[$i+1] -match '^\s*\|[\s:-]+\|') {
      $header = ($line -replace '^\s*\||\|\s*$', '') -split '\|' | ForEach-Object { $_.Trim() }
      $i += 2  # skip header + separator
      $rows = @()
      while ($i -lt $lines.Length -and $lines[$i] -match '^\s*\|') {
        $cells = ($lines[$i] -replace '^\s*\||\|\s*$', '') -split '\|' | ForEach-Object { $_.Trim() }
        $rows += ,$cells
        $i++
      }
      # Emit #table(
      $result.AppendLine("#table(") | Out-Null
      $result.AppendLine("  columns: ($(('auto,' * [Math]::Max($header.Count,1)).TrimEnd(',')),") | Out-Null
      if ($header.Count -gt 0) { $result.AppendLine("  fill: (luma(240), none),") | Out-Null }
      else { $result.AppendLine("  fill: none,") | Out-Null }
      foreach ($cell in $header) { $result.AppendLine("  [*$cell*],") | Out-Null }
      foreach ($row in $rows) { foreach ($cell in $row) { $result.AppendLine("  [$cell],") | Out-Null } }
      $result.AppendLine(")") | Out-Null
    } else {
      $result.AppendLine($line) | Out-Null
      $i++
    }
  }
  return $result.ToString()
}
```

Note: Table cells use typst content blocks `[cell]`. Markdown links like `[Mod](url)` in cells have balanced brackets, so the content block parses correctly. Clickable links in tables are a future improvement — current output shows the text without hyperlinks.

- [ ] **Step 3: Add `Convert-MarkdownToTypst`**

```powershell
function Convert-MarkdownToTypst {
  param([string]$Text, [string]$FileH1Anchor)
  # 1. Strip HTML comments
  $text = $Text -replace '(?s)<!--.*?-->', ''
  # 2. Convert headings + emit typst labels for cross-file link resolution
  $usedLabels = @{}
  $headingOrder = @()
  $converted = [System.Text.StringBuilder]::new()
  foreach ($line in $text -split "`r`n|`n") {
    if ($line -match '^(#{1,6})\s+(.+)$') {
      $level = $matches[1].Length
      $body = $matches[2]
      $converted.AppendLine(("=" * $level) + " $body") | Out-Null
      $rawAnchor = ($body -replace '\s*&\s*', '--' -replace '[^\w\s-]', '' -replace '\s+', '-' -replace '-{3,}', '-' -replace '^-|-$', '').ToLower()
      $label = if ($level -eq 1) { $rawAnchor } else { "$FileH1Anchor-$rawAnchor" }
      $final = $label; $suffix = 2
      while ($usedLabels.ContainsKey($final)) { $final = "$label-$suffix"; $suffix++ }
      $usedLabels[$final] = $true
      $converted.AppendLine("<$final>") | Out-Null
      $headingOrder += @{Text = $body; Anchor = $final; Level = $level}
    } else { $converted.AppendLine($line) | Out-Null }
  }
  # 3. Convert images
  $text = $converted.ToString() -replace '!\[([^\]]*)\]\(([^)]+)\)', '#image("$2")'
  # 4. Convert tables (must be last — operates on raw text)
  return @{ Content = Convert-Table -Text $text; Headings = $headingOrder }
}
```

---

### Task 3: Rewrite main script body

**Files:**
- Modify: `tools/merge-modlist.ps1` (replace everything after function definitions)

- [ ] **Step 4: Read VERSION, process files, build .typ content**

Main body replaces the old merge-to-markdown logic:

```powershell
# ── Configuration ──
$scriptDir = Split-Path -Parent $PSCommandPath
$root = Split-Path -Parent $scriptDir
$files = @(
  "guide/modlist.md", "guide/install.md", "guide/modlist-foundations.md",
  "guide/modlist-graphics.md", "guide/modlist-graphics-pgpatcher.md",
  "guide/modlist-graphics-shaders.md", "guide/modlist-graphics-textures.md",
  "guide/modlist-graphics-lighting.md", "guide/modlist-graphics-weather.md",
  "guide/modlist-graphics-terrain.md", "guide/modlist-graphics-characters.md",
  "guide/modlist-graphics-lod.md", "guide/modlist-ui.md",
  "guide/modlist-animations.md", "guide/modlist-third-person.md",
  "guide/modlist-expanded-systems.md", "guide/modlist-expanded-character.md",
  "guide/modlist-expanded-magic.md", "guide/modlist-expanded-survival.md",
  "guide/modlist-expanded-crafting.md", "guide/modlist-expanded-followers.md",
  "guide/modlist-world-feel.md", "guide/modlist-world-content.md",
  "guide/modlist-npcs.md", "guide/modlist-creatures.md", "guide/modlist-audio.md",
  "guide/modlist-survival-combat.md", "guide/modlist-lotd.md",
  "guide/modlist-design-philosophy.md", "guide/modlist-curation.md",
  "guide/modlist-adult.md", "guide/modlist-voicing.md",
  "guide/modlist-performance.md", "guide/modlist-performance-strategy.md",
  "guide/modlist-performance-optimization.md", "guide/modlist-performance-tools.md",
  "guide/modlist-performance-patches.md", "guide/modlist-performance-testing.md",
  "guide/separators.md"
)

# ── Prerequisites ──
if (Test-TypstInstalled) { Write-Host "ERROR: Typst not found. Install: winget install Typst.Typst" -ForegroundColor Red; exit 1 }
$fontDir = Ensure-Fonts
$coverPath = Resize-CoverImage

# ── Read version ──
$versionPath = Join-Path $root "VERSION"
$version = if (Test-Path $versionPath) { (Get-Content $versionPath -Raw).Trim() } else { "0.0.1-dev" }
$date = Get-Date -Format "yyyy-MM-dd"

# ── Process files ──
$allSections = [System.Collections.Generic.List[string]]::new()
$allHeadings = @()
$fileAnchorMap = @{}

foreach ($file in $files) {
  $path = Join-Path $root $file
  if (-not (Test-Path $path)) { Write-Warning "Skipping $file — not found"; continue }
  Write-Host "Processing $file..."
  $content = (Get-Content $path -Raw).Trim()
  $fileH1Anchor = if ($content -match '^#\s+(.+)$') {
    ($matches[1].Trim() -replace '\s*&\s*', '--' -replace '[^\w\s-]', '' -replace '\s+', '-' -replace '-{3,}', '-' -replace '^-|-$', '').ToLower()
  } else { "untitled" }
  $result = Convert-MarkdownToTypst -Text $content -FileH1Anchor $fileH1Anchor
  $allHeadings += $result.Headings
  $basename = Split-Path -Leaf $file
  $fileAnchorMap[$basename] = $fileH1Anchor
  $fileAnchorMap[$file] = $fileH1Anchor
  $allSections.Add("// ── $file ──")
  $allSections.Add($result.Content)
  $allSections.Add("")
}
```

- [ ] **Step 5: Emit the .typ file preamble and content**

```powershell
# ── Build .typ file ──
$relFontDir = "../assets/fonts"
$relCover = if ($coverPath) { "../assets/cover-resized.png" } else { $null }
$typLines = [System.Collections.Generic.List[string]]::new()
$a = { $typLines.Add }.GetNewClosure()

$a.Invoke("// Generated by merge-modlist.ps1 — do not edit")
$a.Invoke("")
$a.Invoke('#let ew-version = "' + $version + '"')
$a.Invoke('#let ew-date = "' + $date + '"')
$a.Invoke("")
$a.Invoke("// ── Fonts ──")
$a.Invoke('#let ew-font-inter-path = "' + $relFontDir + '/Inter-Regular.ttf"')
$a.Invoke('#let ew-font-jbmono-path = "' + $relFontDir + '/JetBrainsMono-Regular.ttf"')
$a.Invoke("")
$a.Invoke("// ── Page Setup ──")
$a.Invoke('#set text(font: ("Inter", ew-font-inter-path), size: 10pt)')
$a.Invoke('#set link(color: rgb("#2563EB"))')
$a.Invoke('#set raw(font: ("JetBrains Mono", ew-font-jbmono-path), theme: "one-dark")')
$a.Invoke('#set heading(numbering: "1.1")')
$a.Invoke('#set page(')
$a.Invoke('  margin: (left: 2.5cm, right: 2cm, top: 2cm, bottom: 2cm),')
$a.Invoke('  footer: context align(center + bottom, text(8pt, fill: luma(140),')
$a.Invoke('    counter(page).display() + " — " + counter(page).display(numbering: "1")')
$a.Invoke('  ))')
$a.Invoke(')')
$a.Invoke("")
$a.Invoke("// ── Heading Styling ──")
$a.Invoke('#show heading.where(level: 1): set heading(numbering: none)')
$a.Invoke('#show heading: it => {')
$a.Invoke("  set text(")
$a.Invoke('    size: if it.level == 1 { 22pt } else if it.level == 2 { 14pt } else if it.level == 3 { 11pt } else { 10.5pt },')
$a.Invoke('    fill: if it.level == 1 { rgb("#1e293b") } else if it.level == 2 { rgb("#334155") } else { rgb("#475569") },')
$a.Invoke("  )")
$a.Invoke('  if it.level == 1 { v(1.5cm) } else if it.level == 2 { v(0.8cm) } else if it.level >= 3 { v(0.4cm) }')
$a.Invoke("  it")
$a.Invoke('  if it.level == 1 { v(0.5cm) }')
$a.Invoke("}")
$a.Invoke("")

# Cover page
if ($relCover) {
  $a.Invoke("// ── Cover Page ──")
  $a.Invoke('#align(center + horizon, image("' + $relCover + '", width: 60%))')
  $a.Invoke('#v(3cm)')
}
$a.Invoke('#align(center, text(size: 28pt, weight: "bold", fill: rgb("#0f172a"), "Elder Wilds"))')
$a.Invoke('#align(center, text(size: 14pt, fill: rgb("#475569"), "Version " + ew-version))')
$a.Invoke('#align(center, text(size: 10pt, fill: luma(120), "Generated " + ew-date))')
$a.Invoke('#pagebreak()')
$a.Invoke("")
$a.Invoke("// ── Table of Contents ──")
$a.Invoke('#text(size: 16pt, weight: "bold", fill: rgb("#1e293b"), "Contents")')
$a.Invoke("#v(0.5cm)")
$a.Invoke("#outline(depth: 2)")
$a.Invoke("#pagebreak()")
$a.Invoke("")
$a.Invoke("// ── Content ──")
$a.Invoke("")
foreach ($section in $allSections) { $a.Invoke($section) }

$typContent = $typLines -join "`r`n"
```

- [ ] **Step 6: Cross-file link resolution, write, compile**

```powershell
# ── Resolve cross-file links: ](file.md#anchor) → ](#fileh1anchor-anchor) ──
foreach ($kv in $fileAnchorMap.GetEnumerator()) {
  $escaped = [regex]::Escape($kv.Key)
  $anchor = $kv.Value
  $typContent = $typContent -replace "(?<=\]\()${escaped}#([^)]+)(?=\))", "#${anchor}-`$1"
  $typContent = $typContent -replace "(?<=\]\()${escaped}(?=\))", "#${anchor}"
}

# ── Write .typ file ──
$outputDir = Join-Path $root "rendered"
$null = New-Item -ItemType Directory -Path $outputDir -Force
$typPath = Join-Path $outputDir "elder-wilds.typ"
$typContent | Set-Content $typPath -Encoding UTF8
Write-Host "Generated $typPath ($((Get-Item $typPath).Length / 1KB -as [int]) KB)"

# ── Compile to PDF ──
Write-Host "Compiling PDF..."
$pdfPath = Join-Path $outputDir "elder-wilds.pdf"
$compileResult = & typst compile $typPath $pdfPath 2>&1
if ($LASTEXITCODE -eq 0) {
  Write-Host "PDF generated → $pdfPath ($((Get-Item $pdfPath).Length / 1KB -as [int]) KB)" -ForegroundColor Green
} else {
  Write-Host "Typst compilation failed:" -ForegroundColor Red
  $compileResult | ForEach-Object { Write-Host $_ -ForegroundColor Red }
}
```

- [ ] **Step 7: Clean up old rendered files**

```powershell
# ── Cleanup: remove old .md output (no longer produced) ──
Remove-Item (Join-Path $outputDir "elder-wilds.md") -ErrorAction SilentlyContinue
```

---

### Task 4: Validate conversion pattern before full compile

- [ ] **Step 8: Write a quick typst test with one real file**

```bash
# Create a minimal .typ file using one actual guide file to validate
$testContent = @"
#set page(width: auto, height: auto)
#include "guide/modlist-foundations.md"
"@
$testContent | Set-Content "rendered/test-include.typ"
typst compile rendered/test-include.typ rendered/test-include.pdf 2>&1
```

If this succeeds with `#include`, then `#include` is a viable alternative to inline conversion. If it fails (tables, images, comments not rendering correctly), the inline conversion approach in Tasks 2-3 is the right path.

Either way, the test confirms the pattern before processing all 40 files.

- [ ] **Step 9: Run the full pipeline**

```bash
.\tools\merge-modlist.ps1
```

Expected: fonts downloaded (first run), cover image resized (first run), `.typ` generated, PDF compiled, no errors.

- [ ] **Step 10: Verify output**

```bash
Test-Path "rendered/elder-wilds.pdf" -and (Get-Item "rendered/elder-wilds.pdf").Length -gt 1MB
```

---

### Task 5: Self-review

**Spec coverage:**
- Cover page with resized image → Task 3 step 5
- TOC H1+H2 → `#outline(depth: 2)` in step 5
- Blue links → `#set link(color: rgb("#2563EB"))` in step 5
- Inter font → `Ensure-Fonts` in Task 1, font setup in step 5
- Version from VERSION file → read in step 4, injected as `ew-version`
- All 40 files → file list in step 4
- Cross-file links resolve → label emission in Task 2 step 3, link rewrite in step 6
- Typst not found → `Test-TypstInstalled` check in step 4
- Fonts auto-downloaded → `Ensure-Fonts` in Task 1
- Cover resized → `Resize-CoverImage` in Task 1
- No .md output → removed in step 7
- Footer plain → `counter(page).display() + " — "` in step 5
- `#set heading(numbering: "1.1")` before show rules → step 5 ordering is correct
- Get-Command null check → `$null -eq (Get-Command ...)` in Task 1

**Placeholders:** None. All code blocks are complete.

**Type consistency:** `Convert-MarkdownToTypst` returns `@{}` with `Content` and `Headings` keys — consumed correctly in step 4. `fileAnchorMap` built in step 4, consumed in step 6. `$allSections` is `List[string]` in step 4, iterated in step 5.

**Cross-file label prefixing:** Uses `$FileH1Anchor-per-heading-anchor` for H2+ labels. Since each file has a unique H1, there are no cross-file collisions. `$usedLabels` hashtable prevents within-file duplicates.
