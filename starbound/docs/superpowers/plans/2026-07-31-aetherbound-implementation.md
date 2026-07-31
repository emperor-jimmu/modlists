# Aetherbound Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Scaffold the Aetherbound Starbound modlist project — directory structure, root files, Typst PDF template with verified build pipeline, all guide content, and placeholder modlist files ready for mod research.

**Architecture:** Greenfield project. Content authored in Typst `.typ` files under `guide/`. Typst template at `templates/aetherbound.typ` defines `#mod-entry` and styled callout functions. Prose chapters use `= H1` (page-break). Mod category files use `== H2` (inline). Build script at `tools/build.ps1` validates Typst version, passes `--font-path`, and compiles in one step. Fonts bundled as OTF in `assets/fonts/`.

**Tech Stack:** Typst 0.15.1, PowerShell 7+, Space Grotesk + Inter fonts (SIL OFL)

**Spec:** `docs/superpowers/specs/2026-07-31-aetherbound-design.md`

**Key design decisions (roast fixes):**

- No emoji in templates — use styled text labels (`TIP`, `CONCEPT`, `WARNING`) for reliable font rendering
- Category badges use inline `#box` not `#rect` (block vs inline layout)
- Wave divider pages use `#show page` conditional to adjust footer color on dark backgrounds
- `--font-path assets/fonts` in build script ensures fonts load regardless of system state
- H1 headings auto-pagebreak (for prose chapters); mod category files use H2 (no page break)
- Build gate: compile with one placeholder mod entry before writing full content
- Font fallback chain: Space Grotesk → system sans-serif, Inter → system sans-serif

---

### Task 1: Create directory structure

**Files:**

- Create all directories under `starbound/`

- [ ] **Step 1: Create all directories**

```powershell
$dirs = @(
    "assets/fonts",
    "guide/wave-0/modlist",
    "guide/wave-1/modlist",
    "templates",
    "tools",
    "output"
)
foreach ($d in $dirs) {
    New-Item -ItemType Directory -Path "starbound/$d" -Force
}
```

Run from `H:\Projects\modlists`

Expected: 6 directories created under `starbound/`

- [ ] **Step 2: Create .gitkeep for output directory**

```powershell
New-Item -ItemType File -Path "starbound/output/.gitkeep" -Force
```

- [ ] **Step 3: Verify structure**

```powershell
Get-ChildItem -Recurse -Directory starbound | ForEach-Object { $_.FullName.Replace((Get-Location).Path + '\', '') }
```

Expected output lists: `starbound\assets`, `starbound\assets\fonts`, `starbound\guide`, `starbound\guide\wave-0`, `starbound\guide\wave-0\modlist`, `starbound\guide\wave-1`, `starbound\guide\wave-1\modlist`, `starbound\output`, `starbound\templates`, `starbound\tools`

- [ ] **Step 4: Commit**

```bash
git add starbound/
git commit -m "feat(starbound): scaffold directory structure"
```

---

### Task 2: Download and bundle fonts

**Files:**

- Create: `starbound/assets/fonts/SpaceGrotesk-Bold.otf`
- Create: `starbound/assets/fonts/SpaceGrotesk-Regular.otf`
- Create: `starbound/assets/fonts/Inter-Regular.otf`
- Create: `starbound/assets/fonts/Inter-Bold.otf`
- Create: `starbound/assets/fonts/Inter-Italic.otf`

Fonts are SIL Open Font License — free to download and distribute.

- [ ] **Step 1: Download Space Grotesk and Inter OTF files**

Run this script which tries primary and fallback URLs:

```powershell
$fontDir = "starbound/assets/fonts"

$fonts = @(
    @{ File = "SpaceGrotesk-Bold.otf";   Urls = @(
        "https://github.com/floriankarsten/space-grotesk/raw/master/fonts/otf/SpaceGrotesk-Bold.otf",
        "https://raw.githubusercontent.com/floriankarsten/space-grotesk/master/fonts/otf/SpaceGrotesk-Bold.otf"
    )},
    @{ File = "SpaceGrotesk-Regular.otf"; Urls = @(
        "https://github.com/floriankarsten/space-grotesk/raw/master/fonts/otf/SpaceGrotesk-Regular.otf",
        "https://raw.githubusercontent.com/floriankarsten/space-grotesk/master/fonts/otf/SpaceGrotesk-Regular.otf"
    )},
    @{ File = "Inter-Regular.otf"; Urls = @(
        "https://github.com/rsms/inter/releases/latest/download/Inter-Regular.otf",
        "https://raw.githubusercontent.com/rsms/inter/master/docs/fonts/Inter-Regular.otf"
    )},
    @{ File = "Inter-Bold.otf"; Urls = @(
        "https://github.com/rsms/inter/releases/latest/download/Inter-Bold.otf",
        "https://raw.githubusercontent.com/rsms/inter/master/docs/fonts/Inter-Bold.otf"
    )},
    @{ File = "Inter-Italic.otf"; Urls = @(
        "https://github.com/rsms/inter/releases/latest/download/Inter-Italic.otf",
        "https://raw.githubusercontent.com/rsms/inter/master/docs/fonts/Inter-Italic.otf"
    )}
)

foreach ($font in $fonts) {
    $dest = Join-Path $fontDir $font.File
    $downloaded = $false
    foreach ($url in $font.Urls) {
        try {
            Write-Host "Trying: $url"
            Invoke-WebRequest -Uri $url -OutFile $dest -ErrorAction Stop
            $downloaded = $true
            Write-Host "  -> Downloaded $($font.File)" -ForegroundColor Green
            break
        } catch {
            Write-Host "  -> Failed: $($_.Exception.Message)" -ForegroundColor Yellow
        }
    }
    if (-not $downloaded) {
        Write-Host "FAILED to download $($font.File). Download manually and place in $fontDir" -ForegroundColor Red
        Write-Host "  Space Grotesk: https://fonts.google.com/specimen/Space+Grotesk" -ForegroundColor Red
        Write-Host "  Inter: https://fonts.google.com/specimen/Inter" -ForegroundColor Red
    }
}
```

If downloads fail, manually download OTF files from Google Fonts and place in `starbound/assets/fonts/`.

- [ ] **Step 2: Verify fonts downloaded**

```powershell
Get-ChildItem starbound/assets/fonts | Select-Object Name, @{N='KB';E={[math]::Round($_.Length/1KB,1)}}
```

Expected: 5 `.otf` files, each > 50 KB. If any are missing or tiny, re-download manually.

- [ ] **Step 3: Commit**

```bash
git add starbound/assets/fonts/
git commit -m "feat(starbound): bundle Space Grotesk and Inter fonts (SIL OFL)"
```

---

### Task 3: Write root project files

**Files:**

- Create: `starbound/AGENTS.md`
- Create: `starbound/README.md`
- Create: `starbound/.gitignore`
- Create: `starbound/STATUS.md`
- Create: `starbound/conflicts.md`
- Create: `starbound/mod-ideas.md`

- [ ] **Step 1: Write AGENTS.md**

```markdown
# Aetherbound — AGENTS.md

## Project Purpose

Aetherbound is a curated two-wave modlist guide for Starbound 1.4.4 (August 7, 2019). Each wave represents a different level of game experience, introduced by a roleplaying backstory. Outputs a professional PDF guide built with Typst.

## Project Structure

```

starbound/
├── AGENTS.md                    # This file
├── README.md                    # Project overview and quick start
├── STATUS.md                    # Development journal: decisions, rejected mods, notes
├── conflicts.md                 # Canonical mod conflict reference (NOT in PDF)
├── mod-ideas.md                 # Future mod development ideas (NOT in PDF)
├── assets/
│   ├── logo.jpg                 # Cover page logo
│   └── fonts/                   # Space Grotesk + Inter (SIL OFL)
├── guide/
│   ├── introduction.typ         # About this guide
│   ├── install.typ              # SBMM setup and game preparation
│   ├── wave-0/
│   │   ├── story.typ            # Roleplaying backstory
│   │   ├── how-to-play.typ      # Vanilla new-player guide
│   │   └── modlist/             # Wave 0 mod categories (H2 headings)
│   └── wave-1/
│       ├── story.typ            # Roleplaying backstory
│       ├── strategy.typ         # Advanced topics
│       └── modlist/             # Wave 1 mod categories (H2 headings)
├── templates/
│   └── aetherbound.typ          # Typst PDF template (entry point, all functions)
├── output/
│   └── aetherbound.pdf          # Generated PDF (gitignored)
└── tools/
    └── build.ps1                # PDF build script (font-path, version gate)

```

## Game Version

**Target: Starbound 1.4.4 (August 7, 2019)**

All mods must be compatible with Starbound 1.4.x. Use the patch release date (August 2019) as a heuristic: mods updated after 2019 are likely compatible; mods last updated before 2019 are suspicious.

## Mod Rules

- No conflicting mods within or across waves
- No porn mods (adult/nude is acceptable where relevant; ask user when in doubt)
- No redundant mods
- No mods incompatible with version 1.4.x
- No cheating, overpowered, or "all-knowing" mods
- Primary mod source: Steam Workshop. Fallbacks: Chucklefish Forums, GitHub, Nexus Mods.

## Content Format

All guide content is in **Typst markup** (`.typ` files). The template (`templates/aetherbound.typ`) defines reusable functions:

- `#mod-entry(...)` — styled mod information panel
- `#tip[content]` — amber left-border callout
- `#concept[content]` — indigo left-border callout
- `#warning[content]` — red left-border callout

Prose chapters use `= H1` (page break before). Mod category files use `== H2` (inline, no page break).

## Typst Quick Reference

| Element    | Typst                |
|------------|----------------------|
| H1         | `= Title`            |
| H2         | `== Section`         |
| H3         | `=== Subsection`     |
| Bold       | `*bold*`             |
| Italic     | `_italic_`           |
| Link       | `#link("url")[text]` |
| List       | `- item`             |
| Image      | `#image("path")`     |
| Page break | `#pagebreak()`       |

## Adding a New Mod

1. Find the correct category file in `guide/wave-N/modlist/`
2. Add a `#mod-entry(...)` call (see format below)
3. Verify the URL via Playwright before committing
4. Check for conflicts; document in `conflicts.md`, note in `STATUS.md`

```typst
#mod-entry(
  name: "Mod Name",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=XXXXXXXXX",
  category: "QoL",
  version: "2024-03",
  dependencies: (),
  system-impact: none,
  description: [What the mod does.],
  install-notes: [SBMM group and load order notes.],
  wave: 0,
)
```

## Build Commands

```powershell
# From starbound/ root
typst compile --font-path assets/fonts templates/aetherbound.typ output/aetherbound.pdf

# Or use the build script
./tools/build.ps1
```

Requires: Typst 0.15.0+

## Research Workflow

- Use Playwright to browse Steam Workshop pages
- Cross-reference with Chucklefish Forums and r/starbound
- Prefer mods updated after August 2019 (post-1.4.4 release)
- Document every rejection in STATUS.md with reasoning

```

Write to `starbound/AGENTS.md`

- [ ] **Step 2: Write README.md**

Identical to the README in the roast-fixed plan v1, with Typst install note: `winget install Typst.Typst`.

Write to `starbound/README.md`

- [ ] **Step 3: Write .gitignore**

```

output/*.pdf

```

Write to `starbound/.gitignore`

- [ ] **Step 4: Write STATUS.md**

```markdown
# Aetherbound STATUS

## Decisions Made
- [2026-07-31] **Two-wave structure** (Wave 0: QoL only, Wave 1: full modlist). *Reasoning:* Gradual introduction.
- [2026-07-31] **Typst for PDF generation.** *Reasoning:* Modern, fast, professional. No markdown conversion needed.
- [2026-07-31] **Steam Workshop as primary mod source.** *Reasoning:* Largest Starbound mod collection.
- [2026-07-31] **SBMM by korsir as mod manager.** *Reasoning:* User-specified.
- [2026-07-31] **H2 for mod categories, H1 for prose chapters.** *Reasoning:* Avoids unwanted page breaks. Template controls layout.
- [2026-07-31] **Text labels (TIP/CONCEPT/WARNING) instead of emoji in callouts.** *Reasoning:* Emoji font coverage unreliable in PDF.
- [2026-07-31] **--font-path in build script.** *Reasoning:* Ensures bundled fonts load regardless of system state.

## Rejected Mods
*None yet.*

## Known Conflicts
*See `conflicts.md`.*

## Open Questions
- **SBMM exact GitHub URL?** TBD during research.
- **Are enough 1.4.4-compatible bugfix mods on Workshop?** TBD during research.

## Version Notes
- Target: Starbound 1.4.4 (August 2019)
- SBMM version: TBD
- Typst version: 0.15.1
```

Write to `starbound/STATUS.md`

- [ ] **Step 5: Write conflicts.md**

```markdown
# Mod Conflicts

Canonical reference. STATUS.md links here for details.

| Mod A | Mod B | Conflict Type | Resolution | Notes                         |
|-------|-------|---------------|------------|-------------------------------|
| —     | —     | —             | —          | *No conflicts documented yet* |

**Types:** Hard (cannot coexist), Soft (overlap, resolvable with load order)
```

Write to `starbound/conflicts.md`

- [ ] **Step 6: Write mod-ideas.md**

```markdown
# Mod Ideas

Ideas for mods that do not currently exist but would benefit Aetherbound. Not in PDF.

## Graphics
*No ideas yet.*

## Races
*No ideas yet.*

## Content
*No ideas yet.*

## Mechanics
*No ideas yet.*

## Ships
*No ideas yet.*

## Weapons & Armor
*No ideas yet.*

## Building
*No ideas yet.*

## Audio
*No ideas yet.*

## Adult
*No ideas yet.*
```

Write to `starbound/mod-ideas.md`

- [ ] **Step 7: Commit**

```bash
git add starbound/AGENTS.md starbound/README.md starbound/.gitignore starbound/STATUS.md starbound/conflicts.md starbound/mod-ideas.md
git commit -m "feat(starbound): root project files"
```

---

### Task 4: Write Typst PDF template

**Files:**

- Create: `starbound/templates/aetherbound.typ`

Key design rules applied in this template:

- **No emoji** — all callouts use styled text labels (TIP, CONCEPT, WARNING)
- **Badges are inline** — `#box` not `#rect` so category/system-impact labels sit next to the mod title
- **Dark-page footer** — wave dividers override footer color for visibility
- **H1 auto-pagebreak** for prose chapters; mod categories use H2 (no page break)
- **Font fallback** — explicit font list with system sans-serif fallback

- [ ] **Step 1: Write the template**

```typst
// Aetherbound Typst Template — Typst 0.15+
// Paths are relative to this file (templates/aetherbound.typ)

// ── Fonts ───────────────────────────────────────────
#let heading-font = ("Space Grotesk", "sans-serif")
#let body-font = ("Inter", "sans-serif")

// ── Palette ─────────────────────────────────────────
#let clr-bg-dark = rgb("#1a103c")
#let clr-cyan = rgb("#00e5ff")
#let clr-amber = rgb("#ffb74d")
#let clr-red = rgb("#ff5252")
#let clr-bg-body = rgb("#fafaf8")
#let clr-text = rgb("#1a1a2e")
#let clr-code = rgb("#7c4dff")
#let clr-info = rgb("#5c6bc0")
#let clr-footer-light = luma(150)
#let clr-footer-dark = luma(90)

// ── Page Setup ──────────────────────────────────────
#let is-dark-page = state("is-dark-page", false)

#set page(
  paper: "a4",
  margin: (x: 20mm, y: 20mm),
  footer: context {
    let dark = is-dark-page.get()
    set text(
      size: 8pt,
      fill: if dark { clr-footer-dark } else { clr-footer-light },
      font: body-font,
    )
    counter(page).display()
  },
)

#set text(font: body-font, size: 10pt, fill: clr-text)
#set par(leading: 0.65em, justify: true)

// ── Heading Styles ──────────────────────────────────
// H1: page break, large, cyan rule. H2/H3: inline.
#show heading: it => {
  set text(font: heading-font, fill: clr-bg-dark)
  if it.level == 1 {
    pagebreak()
    v(1em)
    text(size: 24pt, weight: "bold", it.body)
    v(4pt)
    line(length: 100%, stroke: 1pt + clr-cyan)
    v(8pt)
  } else if it.level == 2 {
    v(0.8em)
    text(size: 18pt, weight: "bold", it.body)
    v(4pt)
  } else if it.level == 3 {
    v(0.5em)
    text(size: 14pt, weight: "bold", it.body)
    v(2pt)
  }
}

// ── Mod Entry Panel ─────────────────────────────────
#let mod-entry(
  name: "",
  url: "",
  category: "",
  version: "",
  dependencies: (),
  system-impact: none,
  description: [],
  install-notes: [],
  wave: 0,
) = {
  rect(
    fill: rgb("#f0f0f8"),
    stroke: 1pt + clr-cyan,
    radius: 4pt,
    inset: 8pt,
    [
      // Title row with inline badges
      #text(font: heading-font, size: 11pt, weight: "bold")[#link(url)[#name]]
      #h(6pt)

      // Category badge (inline box, not rect)
      #box(
        fill: clr-cyan,
        radius: 2pt,
        inset: (x: 4pt, y: 1pt),
        text(font: heading-font, size: 8pt, fill: white)[#category]
      )

      // System impact badge (only if impact != none)
      #if system-impact != none {
        h(4pt)
        box(
          fill: clr-amber,
          radius: 2pt,
          inset: (x: 4pt, y: 1pt),
          text(font: heading-font, size: 8pt, fill: white)[IMPACT: #system-impact]
        )
      }

      // Metadata row
      #v(4pt)
      #text(size: 9pt, fill: luma(100), font: body-font)[v#version]
      #if dependencies.len() > 0 {
        text(size: 9pt, fill: luma(100), font: body-font)[  ·  Depends on: #dependencies.join(", ")]
      }

      // Description
      #v(4pt)
      #description

      // Install notes
      #if install-notes != [] {
        v(4pt)
        text(size: 9pt, style: "italic", fill: luma(120), font: body-font)[
          *Install:* #install-notes
        ]
      }
    ]
  )
  v(8pt)
}

// ── Callout Panels (text labels, no emoji) ──────────
#let tip(body) = {
  rect(
    fill: rgb("#fff8e1"),
    stroke: (left: 4pt + clr-amber),
    inset: 8pt,
    radius: 2pt,
    [
      #text(font: heading-font, size: 9pt, fill: clr-amber, weight: "bold")[TIP]
      #h(4pt)
      #text(size: 10pt, font: body-font)[#body]
    ]
  )
  v(6pt)
}

#let concept(body) = {
  rect(
    fill: rgb("#e8eaf6"),
    stroke: (left: 4pt + clr-info),
    inset: 8pt,
    radius: 2pt,
    [
      #text(font: heading-font, size: 9pt, fill: clr-info, weight: "bold")[CONCEPT]
      #h(4pt)
      #text(size: 10pt, font: body-font)[#body]
    ]
  )
  v(6pt)
}

#let warning(body) = {
  rect(
    fill: rgb("#ffebee"),
    stroke: (left: 4pt + clr-red),
    inset: 8pt,
    radius: 2pt,
    [
      #text(font: heading-font, size: 9pt, fill: clr-red, weight: "bold")[WARNING]
      #h(4pt)
      #text(size: 10pt, font: body-font)[#body]
    ]
  )
  v(6pt)
}

// ── Wave Divider Helper ─────────────────────────────
#let wave-divider(wave-number, wave-name, blurb) = {
  pagebreak()
  is-dark-page.update(true)
  set page(fill: clr-bg-dark)
  align(center + horizon)[
    v(4cm)
    text(font: heading-font, size: 36pt, fill: white, weight: "bold")[Wave #wave-number]
    v(0.5em)
    text(font: body-font, size: 14pt, fill: clr-cyan)[#wave-name]
    v(2em)
    text(font: body-font, size: 11pt, fill: luma(170))[#blurb]
  ]
  set page(fill: clr-bg-body)
  is-dark-page.update(false)
}

// ── Cover Page ──────────────────────────────────────
is-dark-page.update(true)
#set page(fill: clr-bg-dark)
#align(center + horizon)[
  #v(4cm)
  #image("../assets/logo.jpg", width: 6cm)
  #v(1cm)
  #text(font: heading-font, size: 48pt, fill: white, weight: "bold")[Aetherbound]
  #v(0.5cm)
  #text(font: body-font, size: 18pt, fill: clr-cyan)[A Starbound Modlist Guide]
  #v(2cm)
  #text(font: body-font, size: 12pt, fill: luma(140))[Starbound 1.4.4  ·  v1.0]
  #v(0.3cm)
  #text(font: body-font, size: 10pt, fill: luma(120))[Mod Manager: SBMM by korsir]
]

// ── Body ────────────────────────────────────────────
#set page(fill: clr-bg-body)
is-dark-page.update(false)

// ── Table of Contents ───────────────────────────────
= Contents
#outline(indent: 2em, depth: 1)
#pagebreak()

// ── Prose Chapters ──────────────────────────────────
#include "../guide/introduction.typ"

#include "../guide/install.typ"

// ── Wave 0 ──────────────────────────────────────────
#wave-divider(0, "First Steps", [
  Fresh Protectorate academy graduate. \
  First planetary posting. \
  Wide-eyed explorer armed with a basic \
  Matter Manipulator and academy training, \
  setting out into the unknown.
])

#include "../guide/wave-0/story.typ"
#include "../guide/wave-0/how-to-play.typ"

= Wave 0 Modlist
#include "../guide/wave-0/modlist/01-qol-ui.typ"
#include "../guide/wave-0/modlist/02-bugfixes.typ"

// ── Wave 1 ──────────────────────────────────────────
#wave-divider(1, "Beyond the Horizon", [
  Veteran protector reassigned to fringe space. \
  Deeper mysteries await beyond charted territory. \
  Seasoned explorer with resources, reputation, \
  and the honed instinct that only comes from \
  surviving the unknown.
])

#include "../guide/wave-1/story.typ"
#include "../guide/wave-1/strategy.typ"

= Wave 1 Modlist
#include "../guide/wave-1/modlist/01-graphics.typ"
#include "../guide/wave-1/modlist/02-races.typ"
#include "../guide/wave-1/modlist/03-content.typ"
#include "../guide/wave-1/modlist/04-mechanics.typ"
#include "../guide/wave-1/modlist/05-ships.typ"
#include "../guide/wave-1/modlist/06-weapons-armor.typ"
#include "../guide/wave-1/modlist/07-building.typ"
#include "../guide/wave-1/modlist/08-audio.typ"
#include "../guide/wave-1/modlist/09-adult.typ"
```

Write to `starbound/templates/aetherbound.typ`

- [ ] **Step 2: Commit**

```bash
git add starbound/templates/aetherbound.typ
git commit -m "feat(starbound): Typst template — mod panels, callouts, wave dividers, dark footer"
```

---

### Task 5: Write build script with font-path and version gate

**Files:**

- Create: `starbound/tools/build.ps1`

- [ ] **Step 1: Write build script**

```powershell
# Aetherbound PDF Build Script
# Usage: .\tools\build.ps1
# Requires: Typst 0.15.0+

$ErrorActionPreference = "Stop"

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$ProjectRoot = Resolve-Path (Join-Path $ScriptDir "..")

$FontPath = Join-Path $ProjectRoot "assets" "fonts"
$Template = Join-Path $ProjectRoot "templates" "aetherbound.typ"
$Output = Join-Path $ProjectRoot "output" "aetherbound.pdf"

Write-Host "=== Aetherbound PDF Builder ===" -ForegroundColor Cyan
Write-Host "Project:  $ProjectRoot"
Write-Host "Fonts:    $FontPath"
Write-Host "Template: $Template"
Write-Host "Output:   $Output"
Write-Host ""

# --- Check Typst installed and version >= 0.15 ---
try {
    $versionStr = typst --version 2>&1 | Out-String
    Write-Host "Typst: $($versionStr.Trim())" -ForegroundColor Green

    if ($versionStr -match '(\d+)\.(\d+)') {
        $major = [int]$Matches[1]
        $minor = [int]$Matches[2]
        if ($major -lt 0 -or ($major -eq 0 -and $minor -lt 15)) {
            Write-Host "ERROR: Typst 0.15.0+ required. Found: $major.$minor" -ForegroundColor Red
            Write-Host "Update: winget upgrade Typst.Typst" -ForegroundColor Red
            exit 1
        }
    }
} catch {
    Write-Host "ERROR: Typst not found. Install: winget install Typst.Typst" -ForegroundColor Red
    exit 1
}

# --- Check fonts exist ---
if (-not (Test-Path $FontPath)) {
    Write-Host "ERROR: Font directory not found: $FontPath" -ForegroundColor Red
    exit 1
}
$fontCount = (Get-ChildItem $FontPath -Filter "*.otf").Count
if ($fontCount -lt 5) {
    Write-Host "WARNING: Expected 5 OTF fonts, found $fontCount. PDF may fall back to system fonts." -ForegroundColor Yellow
}

# --- Ensure output directory ---
$OutputDir = Split-Path -Parent $Output
if (-not (Test-Path $OutputDir)) {
    New-Item -ItemType Directory -Path $OutputDir -Force | Out-Null
}

# --- Compile ---
Write-Host "Compiling..." -ForegroundColor Yellow
Push-Location $ProjectRoot
try {
    typst compile --font-path $FontPath $Template $Output
    Write-Host "SUCCESS: $Output" -ForegroundColor Green
    $fileInfo = Get-Item $Output
    $sizeKB = [math]::Round($fileInfo.Length / 1KB, 1)
    Write-Host "Size: $sizeKB KB" -ForegroundColor Green
} catch {
    Write-Host "ERROR: Compilation failed" -ForegroundColor Red
    Write-Host $_.Exception.Message
    exit 1
} finally {
    Pop-Location
}
```

Write to `starbound/tools/build.ps1`

- [ ] **Step 2: Commit**

```bash
git add starbound/tools/build.ps1
git commit -m "feat(starbound): build script with --font-path, version gate, font check"
```

---

### Task 6: Build gate — test template with one mod entry before writing content

**Files:**

- Create (temporary): `starbound/guide/introduction.typ` (minimal)
- Create (temporary): `starbound/guide/install.typ` (minimal)
- Create (temporary): all wave content files (minimal stubs)
- Run: `tools/build.ps1`
- This gate catches template syntax errors, font loading issues, and path problems BEFORE writing 500+ lines of content.

- [ ] **Step 1: Write minimal content stubs for all included files**

```typst
// guide/introduction.typ (STUB)
= Introduction

Welcome to Aetherbound, a curated modlist guide for Starbound 1.4.4.

#tip[This is a tip callout. Test rendering.]

#concept[This is a concept callout. Explain a system.]

#warning[This is a warning callout. Compatibility note.]

== A Subsection
Body text with *bold* and _italic_ and #link("https://example.com")[a link].
```

Write to `starbound/guide/introduction.typ`

```typst
// guide/install.typ (STUB)
= Installation

SBMM setup instructions go here.

#mod-entry(
  name: "Test Mod",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1234567890",
  category: "QoL",
  version: "2024-01",
  dependencies: (),
  system-impact: none,
  description: [A test mod entry to validate panel rendering, badges, metadata, and install notes all render correctly.],
  install-notes: [Place in SBMM group 00-QoL-UI. No conflicts.],
  wave: 0,
)

#mod-entry(
  name: "Frackin' Universe",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=729480149",
  category: "Mechanics",
  version: "2024-06",
  dependencies: ("xClient"),
  system-impact: "adds research tree, new biomes, crafting",
  description: [Massive overhaul adding research, dozens of biomes, hundreds of items, and entirely new progression systems.],
  install-notes: [LOAD FIRST in SBMM group 04-Mechanics. Requires xClient mod. Start new save.],
  wave: 1,
)
```

Write to `starbound/guide/install.typ`

```typst
// guide/wave-0/story.typ (STUB)
= Wave 0 Story

Your story as a fresh academy graduate.
```

Write to `starbound/guide/wave-0/story.typ`

```typst
// guide/wave-0/how-to-play.typ (STUB)
= How to Play

Controls and survival basics.
```

Write to `starbound/guide/wave-0/how-to-play.typ`

```typst
// guide/wave-0/modlist/01-qol-ui.typ (STUB — H2, no page break)
== Quality of Life & UI
Mods go here.
```

Write to `starbound/guide/wave-0/modlist/01-qol-ui.typ`

```typst
// guide/wave-0/modlist/02-bugfixes.typ (STUB)
== Bugfixes
Mods go here.
```

Write to `starbound/guide/wave-0/modlist/02-bugfixes.typ`

```typst
// guide/wave-1/story.typ (STUB)
= Wave 1 Story

Veteran protector in fringe space.
```

Write to `starbound/guide/wave-1/story.typ`

```typst
// guide/wave-1/strategy.typ (STUB)
= Strategy

Advanced topics.
```

Write to `starbound/guide/wave-1/strategy.typ`

For each Wave 1 modlist file (`01-graphics.typ` through `09-adult.typ`), write a one-line stub:

```typst
== [Category Name]
Mods go here.
```

Write to each `starbound/guide/wave-1/modlist/XX-category.typ`

- [ ] **Step 2: Run the build**

```powershell
cd starbound
.\tools\build.ps1
```

Expected output:

```
=== Aetherbound PDF Builder ===
Project:  H:\Projects\modlists\starbound
Fonts:    H:\Projects\modlists\starbound\assets\fonts
Template: H:\Projects\modlists\starbound\templates\aetherbound.typ
Output:   H:\Projects\modlists\starbound\output\aetherbound.pdf

Typst: typst 0.15.x
Compiling...
SUCCESS: ...\aetherbound.pdf
Size: XX.X KB
```

If compilation fails, fix errors in the template or content stubs and retry until it succeeds.

- [ ] **Step 3: Verify PDF content**

Open `starbound/output/aetherbound.pdf` in a PDF viewer. Check:

| Check               | Expected                                                                                                                                                            |
|---------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Cover page          | Logo renders, "Aetherbound" title visible, subtitle in cyan                                                                                                         |
| TOC                 | Lists: Introduction, Installation, Wave 0 Story, How to Play, Wave 0 Modlist, Wave 1 Story, Strategy, Wave 1 Modlist                                                |
| Fonts               | Headings use Space Grotesk (geometric, narrow); body uses Inter (neutral sans-serif). If both look like system sans-serif, fonts didn't load — check `--font-path`. |
| Mod panel 1         | "Test Mod" with cyan "QoL" badge inline next to title. No "IMPACT" badge.                                                                                           |
| Mod panel 2         | "Frackin' Universe" with cyan "Mechanics" badge PLUS amber "IMPACT: adds research tree..." badge. Dependency line visible. Install notes in italic.                 |
| Callouts            | Three callouts on introduction page: amber TIP label with left border, indigo CONCEPT, red WARNING. Text renders.                                                   |
| Wave dividers       | Deep indigo pages with "Wave 0 / First Steps" and "Wave 1 / Beyond the Horizon" centered. Page numbers on dividers are dark (not invisible).                        |
| Page numbers        | Visible on all pages. Darker on divider pages, lighter on body pages.                                                                                               |
| No raw Typst syntax | No `#rect`, `#set`, `#include` visible in output                                                                                                                    |

- [ ] **Step 4: If all checks pass, commit**

```bash
git add starbound/guide/ starbound/output/aetherbound.pdf
git commit -m "feat(starbound): build gate passes — template, fonts, mod panels verified"
```

If any check fails, fix and retry before proceeding. Do NOT continue to full content until this gate passes.

---

### Task 7: Write introduction.typ (replace stub)

**Files:**

- Modify: `starbound/guide/introduction.typ` (overwrite stub)

- [ ] **Step 1: Write full content**

```typst
= About This Guide

Welcome to *Aetherbound*, a curated modlist guide for Starbound 1.4.4. Whether stepping off your ship for the first time or returning after saving the universe, this guide has something for you.

== How It Works

Aetherbound is organized into two *waves*. Each is a self-contained game setup: its own roleplaying backstory, its own mod set, and a guide tuned to your experience level. Start with Wave 0, finish the game, then return for Wave 1.

#concept[
  *A wave* bundles a specific set of mods, a narrative role to play, and guidance matched to your experience. Nothing carries over between waves — each is a fresh start.
]

== Wave Overview

=== Wave 0: First Steps
Fresh Protectorate academy graduate on your first assignment. This wave assumes zero prior Starbound experience. Includes a complete how-to-play walkthrough. Mods are limited to quality-of-life and bugfixes — nothing that changes core gameplay.

- *Categories:* QoL and UI, Bugfixes
- *Experience required:* None
- *Goal:* Learn Starbound from scratch with a polished vanilla experience

=== Wave 1: Beyond the Horizon
Veteran protector reassigned to fringe space. You have beaten the Ruin and know the galaxy. This wave adds new races, quests, planets, mechanics, ships, weapons, and visual enhancements. The strategy guide covers advanced topics.

- *Categories:* Graphics, Races, Content, Mechanics, Ships, Weapons and Armor, Building, Audio, Adult
- *Experience required:* Completed vanilla story at least once
- *Goal:* Deepen and expand Starbound with carefully selected mods

== Mod Selection Philosophy

Every mod in Aetherbound passes a strict filter:

- *Compatible:* Works with Starbound 1.4.x. No exceptions.
- *Non-cheating:* No god-mode items, free resources, or all-knowing UI panels.
- *Non-redundant:* When two mods do the same thing, we pick the better one.
- *Non-conflicting:* No mod pair breaks each other. Documented when unavoidable.
- *Appropriate:* Adult content is tasteful and relevant. No porn.

#tip[
  Each mod entry includes a clickable Steam Workshop link, dependency list, and SBMM-specific install notes. You are expected to install mods yourself — this guide tells you what to get and how to set it up.
]

== Prerequisites

Before you begin:

- Starbound 1.4.4 installed via Steam
- SBMM (Starbound Mod Manager) by korsir — download from GitHub
- About 30 minutes for initial setup
```

Write to `starbound/guide/introduction.typ`

- [ ] **Step 2: Commit**

```bash
git add starbound/guide/introduction.typ
git commit -m "feat(starbound): guide introduction (full content)"
```

---

### Task 8: Write install.typ (replace stub)

**Files:**

- Modify: `starbound/guide/install.typ` (overwrite stub)

- [ ] **Step 1: Write full content**

Content as specified in the original plan (Task 7 from v1). The installation guide covers: SBMM setup, profile creation, mod groups, Workshop backup strategy, mod installation steps, verification, and wave switching.

Write to `starbound/guide/install.typ`

- [ ] **Step 2: Commit**

```bash
git add starbound/guide/install.typ
git commit -m "feat(starbound): installation guide — SBMM setup, workshop backup, wave switching"
```

---

### Task 9: Write Wave 0 and Wave 1 story + guide content (replace stubs)

**Files:**

- Modify: `starbound/guide/wave-0/story.typ`
- Modify: `starbound/guide/wave-0/how-to-play.typ`
- Modify: `starbound/guide/wave-1/story.typ`
- Modify: `starbound/guide/wave-1/strategy.typ`

- [ ] **Step 1: Write Wave 0 story**

Content as specified in the original plan (Task 8, Step 1, story.typ). The cadet graduating from the academy, first planetary assignment, tone of discovery.

Write to `starbound/guide/wave-0/story.typ`

- [ ] **Step 2: Write Wave 0 how-to-play**

Content as specified in the original plan (Task 8, Step 2, how-to-play.typ). Covers: controls, first hour, survival systems, tech and progression, crafting tiers, crew and colony, farming, mechs, bounty hunting. ~17 pages.

Write to `starbound/guide/wave-0/how-to-play.typ`

- [ ] **Step 3: Write Wave 1 story**

Content as specified in the original plan (Task 9, Step 1, story.typ). The commander reassigned to Kappa Sector, deeper mysteries, tone of mastery and mystery.

Write to `starbound/guide/wave-1/story.typ`

- [ ] **Step 4: Write Wave 1 strategy**

Content as specified in the original plan (Task 9, Step 2, strategy.typ). Covers: planet tier optimization, faction dynamics, crew composition, base building efficiency, rare resources, boss tactics, modded mechanics integration.

Write to `starbound/guide/wave-1/strategy.typ`

- [ ] **Step 5: Commit**

```bash
git add starbound/guide/wave-0/story.typ starbound/guide/wave-0/how-to-play.typ starbound/guide/wave-1/story.typ starbound/guide/wave-1/strategy.typ
git commit -m "feat(starbound): Wave 0 + Wave 1 story and guide content"
```

---

### Task 10: Write placeholder modlist files (replace stubs with correct H2 headings)

**Files:**

- Modify all 11 modlist `.typ` files — replace stubs with proper `== H2` category headings and placeholder text.

- [ ] **Step 1: Write each modlist file**

Wave 0:

```typst
== Quality of Life & UI
*Mods that improve the interface and usability without changing gameplay balance.*

// Mod entries will be added during research phase.
// Format:
// #mod-entry(
//   name: "Mod Name",
//   url: "...",
//   category: "QoL",
//   ...
//   wave: 0,
// )
```

Write to `starbound/guide/wave-0/modlist/01-qol-ui.typ`

```typst
== Bugfixes
*Community patches for known issues in Starbound 1.4.4.*
```

Write to `starbound/guide/wave-0/modlist/02-bugfixes.typ`

Wave 1 (all 9 files follow the same pattern with `== Category Name` H2):

```typst
== Graphics
*Visual enhancements: parallax layers, planet backgrounds, lighting, and visual effects.*
```

Write to `starbound/guide/wave-1/modlist/01-graphics.typ`

(Repeat for 02-races.typ through 09-adult.typ with appropriate descriptions.)

- [ ] **Step 2: Commit**

```bash
git add starbound/guide/wave-0/modlist/ starbound/guide/wave-1/modlist/
git commit -m "feat(starbound): modlist placeholder files (H2 headings, ready for research)"
```

---

### Task 11: Final PDF build with all content

- [ ] **Step 1: Run the build**

```powershell
cd starbound
.\tools\build.ps1
```

Expected: SUCCESS. PDF compiles without errors or warnings.

- [ ] **Step 2: Verify PDF integrity**

Open `starbound/output/aetherbound.pdf`. Verify:

| Check              | Expected                                                                                                                                           |
|--------------------|----------------------------------------------------------------------------------------------------------------------------------------------------|
| Cover              | Logo visible, title, subtitle, version                                                                                                             |
| TOC                | Correct hierarchy — prose chapters (Introduction, Installation, Wave 0 Story, How to Play, Wave 0 Modlist, Wave 1 Story, Strategy, Wave 1 Modlist) |
| Fonts              | Space Grotesk on all headings, Inter on body. No fallback to system sans-serif.                                                                    |
| How-to-play tables | Controls table, crafting stations table, ore tiers table all render correctly                                                                      |
| Mod panels         | Only the 2 test mods from install.typ appear (Test Mod, Frackin' Universe)                                                                         |
| Callouts           | TIP, CONCEPT, WARNING labels render on colored left-border panels                                                                                  |
| Wave dividers      | Indigo pages with story blurbs, dark page numbers                                                                                                  |
| No syntax leakage  | No raw Typst code visible in output                                                                                                                |
| Page count         | ~40-50 pages (prose chapters ~35pp + cover + TOC + dividers)                                                                                       |

- [ ] **Step 3: If all checks pass, commit**

```bash
git add starbound/output/aetherbound.pdf
git commit -m "feat(starbound): final PDF build — all prose content, verified rendering"
```

---

### Phase 2: Mod Research (Tasks 12-24)

These tasks populate the placeholder modlist files with actual verified mods. Each follows the identical research workflow. The core step is: browse Steam Workshop via Playwright, verify mod compatibility, add `#mod-entry(...)` to the category file, update conflicts.md/STATUS.md, rebuild PDF, commit.

**Research workflow per category:**

1. Browse `https://steamcommunity.com/app/211820/workshop/` in Playwright
2. Search/browse for mods matching the category using keywords from the spec
3. For each candidate mod:
   a. Open Workshop page, record: name, ID, last-updated date, description, listed dependencies
   b. Verify: updated after August 2019 (1.4.4 release), no explicit incompatibility notes
   c. Check Chucklefish Forums and r/starbound for community signal
   d. Determine system-impact and install-notes
4. Add verified mods to the `.typ` file as `#mod-entry(...)` calls
5. Cross-check with existing mods for conflicts; document in `conflicts.md` if found
6. Update `STATUS.md` with decisions and any rejected mods (with reasoning)
7. Run `.\tools\build.ps1` to verify PDF still compiles
8. Commit with descriptive message

| Task | File                                        | Category        |
|------|---------------------------------------------|-----------------|
| 12   | `guide/wave-0/modlist/01-qol-ui.typ`        | QoL & UI        |
| 13   | `guide/wave-0/modlist/02-bugfixes.typ`      | Bugfixes        |
| 14   | `guide/wave-1/modlist/01-graphics.typ`      | Graphics        |
| 15   | `guide/wave-1/modlist/02-races.typ`         | Races           |
| 16   | `guide/wave-1/modlist/03-content.typ`       | Content         |
| 17   | `guide/wave-1/modlist/04-mechanics.typ`     | Mechanics       |
| 18   | `guide/wave-1/modlist/05-ships.typ`         | Ships           |
| 19   | `guide/wave-1/modlist/06-weapons-armor.typ` | Weapons & Armor |
| 20   | `guide/wave-1/modlist/07-building.typ`      | Building        |
| 21   | `guide/wave-1/modlist/08-audio.typ`         | Audio           |
| 22   | `guide/wave-1/modlist/09-adult.typ`         | Adult           |

**Commit message format per task:** `feat(starbound): populate [category] modlist — [N] mods added, [M] rejected`

---

### Task 23: Cross-wave conflict review

After all mods are researched:

1. Review all 11 category files for cross-wave and cross-category conflicts
2. Verify no Wave 0 mod conflicts with any Wave 1 mod
3. Run final PDF build
4. Full visual quality check (contrast, orphans/widows, table formatting)
5. Update `README.md` table of contents if mod count changed

- [ ] **Step 1: Commit**

```bash
git add starbound/
git commit -m "feat(starbound): cross-wave conflict review — modlist complete"
```
