# Stardew Valley Modlist Guide — Initial Project Setup

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Scaffold the modlist project with directory structure, AGENTS.md, README.md, mod catalog stubs, build script, and PDF template.

**Architecture:** Flat markdown files organized by category, compiled to PDF via Pandoc + wkhtmltopdf with a custom HTML/CSS template. Mod catalog is a numbered series of files for deterministic ordering.

**Tech Stack:** Markdown, Pandoc, wkhtmltopdf, PowerShell 7+

---

### Task 1: Create AGENTS.md

**Files:**
- Create: `AGENTS.md`

- [ ] **Step 1: Write AGENTS.md**

```markdown
# Stardew Valley Modlist Guide — AGENTS.md

## Project Purpose

A curated Stardew Valley modlist guide for first-time players. Teaches vanilla mechanics alongside the modded experience, outputs a polished PDF handbook via Pandoc.

## Project Structure

```
stardew-valley-modlist/
├── docs/
│   ├── assets/              # images, fonts
│   ├── guide/               # guide chapters + mod catalog
│   │   ├── 01-setup.md
│   │   ├── 02-vanilla-primer.md
│   │   ├── 03-mod-catalog/  # numbered mod category files
│   │   ├── 04-modded-gameplay.md
│   │   └── 05-mo2-separators.md
│   ├── performance/         # FPS/load time benchmarks
│   └── superpowers/         # specs, plans
├── scripts/
│   ├── build.ps1            # builds the PDF
│   └── template.html        # Pandoc HTML template
├── AGENTS.md
└── README.md
```

## Adding a New Mod to the Catalog

1. Find the correct category file in `docs/guide/03-mod-catalog/`
2. Add the mod entry following the existing format:
   - Mod name and NexusMods URL
   - Brief description of what it does
   - Installation notes (if any)
   - Load order placement
   - Performance impact notes (if known)
3. Update `docs/performance/03-mod-impact.md` if the mod has meaningful performance impact

## Build Commands

```powershell
# Build the full PDF guide
./scripts/build.ps1

# Output: stardew-valley-modlist-guide.pdf in project root
```

## PDF Styling

- Template: `scripts/template.html`
- Fonts: Open Sans (body), Lora (headings) in `docs/assets/fonts/`
- Dependencies: Pandoc + wkhtmltopdf

## Performance Testing

- Baseline: Vanilla SDV at 4K
- Test per mod category in isolation
- Metrics: FPS (avg/min), load times at key locations
- Results in `docs/performance/` as markdown tables

## MO2 Separators

- One top-level separator per mod category (15 total)
- Each with a distinct color; subcategory separators use gradient
- Documented in `docs/guide/05-mo2-separators.md`

## Web Browsing

If you need to browse web pages that don't work with standard tools, use Playwright (available as a tool in this environment).

## Conventions

- Markdown files use `##` for chapter headings, `###` for section headings
- File names are zero-padded numbers for ordering (e.g., `01-bugfixes.md`)
- Keep performance data factual — note "not tested" rather than guessing
- No multiplayer mods, no cheat/overpowered mods, no overtly pornographic content
```

- [ ] **Step 2: Verify file exists and review**

Run: `Test-Path "AGENTS.md"`
Expected: `True`

---

### Task 2: Create README.md

**Files:**
- Create: `README.md`

- [ ] **Step 1: Write README.md**

```markdown
# Stardew Valley Modlist Guide

A curated, beginner-friendly modlist for **Stardew Valley** using **Mod Organizer 2**.

## Philosophy

This guide is built for **first-time players** who want a richer, more polished Stardew Valley experience without losing the soul of the original game.

### What's Included

- Bugfixes to smooth out rough edges
- Expanded content — more weapons, monsters, locations, NPC interactions, crops, and items
- Improved UI/HUD for better usability
- Enhanced graphics (cohesive base overhaul + piecemeal upgrades)
- Tasteful mature content that grows with the player
- Performance benchmarks to show real impact

### What's NOT Included

- Cheats or overpowered mods
- Overtly pornographic content
- Multiplayer mods

## Prerequisites

- **Stardew Valley** (latest version, from Steam/GOG)
- **Mod Organizer 2** — [Download](https://github.com/ModOrganizer2/modorganizer/releases)
- **SMAPI** — [Download](https://smapi.io/)
- **Pandoc** — `winget install Pandoc`
- **wkhtmltopdf** — [Download](https://wkhtmltopdf.org/downloads.html)

## Quick Start

1. Install SMAPI (run the installer, point it at your Stardew Valley install)
2. Install Mod Organizer 2
3. Clone this repo: `git clone https://github.com/YOUR_USER/stardew-valley-modlist.git`
4. Follow `docs/guide/01-setup.md` for MO2 configuration and mod installation order
5. Install mods per category in the order specified in `docs/guide/03-mod-catalog/`

## Building the PDF Guide

```powershell
./scripts/build.ps1
```

Output: `stardew-valley-modlist-guide.pdf`

## Guide Structure

| Chapter | File | Description |
|---------|------|-------------|
| 1 | `01-setup.md` | MO2 + SMAPI installation walkthrough |
| 2 | `02-vanilla-primer.md` | How to play Stardew Valley (first-time friendly) |
| 3 | `03-mod-catalog/*` | Full mod catalog by category (15 categories) |
| 4 | `04-modded-gameplay.md` | How the game changes with the modlist |
| 5 | `05-mo2-separators.md` | MO2 separator list with colors and gradients |

## Performance

Benchmarks at 4K resolution, per category. See `docs/performance/`.

## License

Mods are property of their respective authors. Guide content is [choose a license].
```

- [ ] **Step 2: Verify file exists**

Run: `Test-Path "README.md"`
Expected: `True`

---

### Task 3: Create Directory Structure + Placeholder Mod Catalog Files

**Files:**
- Create: `docs/assets/images/.gitkeep`
- Create: `docs/assets/fonts/.gitkeep`
- Create: `docs/guide/01-setup.md` (stub)
- Create: `docs/guide/02-vanilla-primer.md` (stub)
- Create: All 15 `docs/guide/03-mod-catalog/NN-category.md` (stubs)
- Create: `docs/guide/04-modded-gameplay.md` (stub)
- Create: `docs/guide/05-mo2-separators.md` (stub)
- Create: `docs/performance/01-methodology.md` (stub)
- Create: `docs/performance/02-baseline.md` (stub)
- Create: `docs/performance/03-mod-impact.md` (stub)

- [ ] **Step 1: Create all directories**

```powershell
$dirs = @(
    "docs/assets/images",
    "docs/assets/fonts",
    "docs/guide/03-mod-catalog",
    "docs/performance"
)
foreach ($d in $dirs) { New-Item -ItemType Directory -Path $d -Force }
```

Expected: All directories created (no errors if they already exist).

- [ ] **Step 2: Create `.gitkeep` files in empty asset directories**

```powershell
New-Item -ItemType File -Path "docs/assets/images/.gitkeep" -Force
New-Item -ItemType File -Path "docs/assets/fonts/.gitkeep" -Force
```

Expected: Two `.gitkeep` files created.

- [ ] **Step 3: Create all stub markdown files**

```powershell
# Guide chapters
@(
    "docs/guide/01-setup.md",
    "docs/guide/02-vanilla-primer.md",
    "docs/guide/04-modded-gameplay.md",
    "docs/guide/05-mo2-separators.md"
) | ForEach-Object {
    Set-Content -Path $_ -Value "# $([System.IO.Path]::GetFileNameWithoutExtension($_))`n`nTODO: Write this section."
}

# Mod catalog files
$categories = @(
    @{n="01";t="Bugfixes"},
    @{n="02";t="UI and HUD"},
    @{n="03";t="Graphics Base"},
    @{n="04";t="Graphics Portraits"},
    @{n="05";t="Graphics Terrain"},
    @{n="06";t="Graphics Animals"},
    @{n="07";t="World Expansion"},
    @{n="08";t="Monsters and Combat"},
    @{n="09";t="Items and Weapons"},
    @{n="10";t="NPC Interactions"},
    @{n="11";t="Grownup Town"},
    @{n="12";t="Gameplay Tweaks"},
    @{n="13";t="Skills and Professions"},
    @{n="14";t="Farming and Making"},
    @{n="15";t="Music and Audio"}
)
foreach ($c in $categories) {
    Set-Content -Path "docs/guide/03-mod-catalog/$($c.n)-$($c.t.ToLower().Replace(' ','-')).md" -Value "# $($c.t)`n`nTODO: Write this section."
}

# Performance files
@(
    @{p="docs/performance/01-methodology.md";t="Performance Testing Methodology"},
    @{p="docs/performance/02-baseline.md";t="Baseline Performance (Vanilla SDV at 4K)"},
    @{p="docs/performance/03-mod-impact.md";t="Mod Performance Impact Results"}
) | ForEach-Object {
    Set-Content -Path $_.p -Value "# $($_.t)`n`nTODO: Write this section."
}
```

Expected: All stub files created (count them).

- [ ] **Step 4: Verify structure**

Run: `Get-ChildItem -Recurse -File | Select-Object FullName`
Expected: Full tree of all created files.

---

### Task 4: Create Pandoc PDF Template

**Files:**
- Create: `scripts/template.html`

- [ ] **Step 1: Write the HTML template for Pandoc**

```html
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="$lang$" xml:lang="$lang$"$if(dir)$ dir="$dir$"$endif$>
<head>
  <meta charset="utf-8" />
  <meta name="generator" content="pandoc" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
  <title>$title$</title>
  <style>
    /* Reset & Base */
    *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }
    html { font-size: 11pt; }
    body {
      font-family: 'Open Sans', 'Segoe UI', sans-serif;
      line-height: 1.6;
      color: #2c2c2c;
      max-width: 210mm;
      margin: 0 auto;
      padding: 20mm 25mm;
    }

    /* Fonts */
    @font-face {
      font-family: 'Open Sans';
      src: url('../docs/assets/fonts/OpenSans-Regular.ttf') format('truetype');
      font-weight: normal;
    }
    @font-face {
      font-family: 'Open Sans';
      src: url('../docs/assets/fonts/OpenSans-Bold.ttf') format('truetype');
      font-weight: bold;
    }
    @font-face {
      font-family: 'Lora';
      src: url('../docs/assets/fonts/Lora-Regular.ttf') format('truetype');
      font-weight: normal;
    }
    @font-face {
      font-family: 'Lora';
      src: url('../docs/assets/fonts/Lora-Bold.ttf') format('truetype');
      font-weight: bold;
    }

    /* Title Page */
    .title-page {
      page-break-after: always;
      text-align: center;
      padding-top: 120mm;
    }
    .title-page h1 {
      font-family: 'Lora', serif;
      font-size: 28pt;
      color: #4a7c59;
      margin-bottom: 8pt;
    }
    .title-page .subtitle {
      font-size: 14pt;
      color: #666;
      margin-bottom: 40pt;
    }
    .title-page .meta {
      font-size: 10pt;
      color: #888;
    }

    /* Headings */
    h1, h2, h3, h4 { font-family: 'Lora', serif; color: #3a5a40; page-break-after: avoid; }
    h1 { font-size: 22pt; margin-top: 30pt; margin-bottom: 12pt; border-bottom: 3px solid #4a7c59; padding-bottom: 4pt; }
    h2 { font-size: 16pt; margin-top: 22pt; margin-bottom: 8pt; }
    h3 { font-size: 13pt; margin-top: 16pt; margin-bottom: 6pt; }
    h4 { font-size: 11pt; margin-top: 12pt; margin-bottom: 4pt; }

    /* Body */
    p { margin-bottom: 8pt; text-align: justify; }
    a { color: #4a7c59; text-decoration: none; }
    ul, ol { margin: 6pt 0 6pt 20pt; }
    li { margin-bottom: 3pt; }

    /* Code */
    code {
      font-family: 'Cascadia Code', 'Fira Code', 'Consolas', monospace;
      font-size: 9pt;
      background: #f0f4f0;
      padding: 1pt 4pt;
      border-radius: 3pt;
    }
    pre {
      background: #f0f4f0;
      padding: 10pt;
      border-radius: 4pt;
      margin: 8pt 0;
      overflow-x: auto;
    }
    pre code { background: none; padding: 0; }

    /* Tables */
    table {
      width: 100%;
      border-collapse: collapse;
      margin: 10pt 0;
      font-size: 9.5pt;
    }
    th, td {
      border: 1px solid #ccc;
      padding: 5pt 8pt;
      text-align: left;
    }
    th { background: #4a7c59; color: white; font-weight: 600; }
    tr:nth-child(even) { background: #f8faf8; }

    /* Page breaks */
    .page-break { page-break-before: always; }

    /* Page numbers */
    @page {
      margin: 25mm 20mm;
      @bottom-center {
        content: counter(page);
        font-family: 'Open Sans', sans-serif;
        font-size: 9pt;
        color: #888;
      }
    }

    /* Category color bars */
    .category-bar {
      display: inline-block;
      padding: 2pt 10pt;
      border-radius: 3pt;
      color: white;
      font-size: 9pt;
      font-weight: bold;
      margin-bottom: 8pt;
    }
  </style>
</head>
<body>
  <div class="title-page">
    <h1>$title$</h1>
    $if(subtitle)$<p class="subtitle">$subtitle$</p>$endif$
    <p class="meta">$date$</p>
  </div>

  $for(include-before)$
  $include-before$
  $endfor$

  $body$

  $for(include-after)$
  $include-after$
  $endfor$
</body>
</html>
```

- [ ] **Step 2: Verify file exists**

Run: `Test-Path "scripts/template.html"`
Expected: `True`

---

### Task 5: Create Build Script

**Files:**
- Create: `scripts/build.ps1`

- [ ] **Step 1: Write build.ps1**

```powershell
<#
.SYNOPSIS
Builds the Stardew Valley Modlist Guide PDF from markdown sources.
.DESCRIPTION
Merges all markdown files in order, applies the HTML template, and
generates a PDF via Pandoc + wkhtmltopdf.
#>

$ErrorActionPreference = "Stop"
$ProjectRoot = Split-Path -Parent $PSScriptRoot
$OutputFile = Join-Path $ProjectRoot "stardew-valley-modlist-guide.pdf"

# Check dependencies
$pandoc = Get-Command pandoc -ErrorAction SilentlyContinue
if (-not $pandoc) {
    Write-Error "Pandoc not found. Install with: winget install Pandoc"
    exit 1
}

$wkhtml = Get-Command wkhtmltopdf -ErrorAction SilentlyContinue
if (-not $wkhtml) {
    Write-Error "wkhtmltopdf not found. Download from https://wkhtmltopdf.org/downloads.html"
    exit 1
}

# Collect markdown files in order
$files = @(
    # Guide chapters
    (Join-Path $ProjectRoot "docs/guide/01-setup.md"),
    (Join-Path $ProjectRoot "docs/guide/02-vanilla-primer.md"),
    # Mod catalog — numbered, so sorted correctly
    (Get-ChildItem (Join-Path $ProjectRoot "docs/guide/03-mod-catalog") -Filter "*.md" | Sort-Object Name).FullName,
    (Join-Path $ProjectRoot "docs/guide/04-modded-gameplay.md"),
    (Join-Path $ProjectRoot "docs/guide/05-mo2-separators.md")
) | Where-Object { Test-Path $_ }

if ($files.Count -eq 0) {
    Write-Error "No markdown files found to build."
    exit 1
}

Write-Host "Building PDF from $($files.Count) markdown files..." -ForegroundColor Green

# Build the PDF
$template = Join-Path $ProjectRoot "scripts/template.html"
$metadata = @(
    "--metadata", "title=Stardew Valley Modlist Guide",
    "--metadata", "subtitle=A Curated First-Time Player Experience",
    "--metadata", "date=$(Get-Date -Format 'yyyy-MM-dd')"
)

$args = @(
    "--pdf-engine=wkhtmltopdf",
    "--template=$template",
    "--toc",
    "--toc-depth=2",
    "--number-sections",
    "--metadata", "title=Stardew Valley Modlist Guide",
    "--metadata", "subtitle=A Curated First-Time Player Experience",
    "--metadata", "date=$(Get-Date -Format 'yyyy-MM-dd')",
    "-o", $OutputFile
) + $files

& pandoc @args

if ($LASTEXITCODE -eq 0) {
    Write-Host "PDF generated: $OutputFile" -ForegroundColor Green
} else {
    Write-Error "Pandoc exited with code $LASTEXITCODE"
    exit 1
}
```

- [ ] **Step 2: Verify file exists**

Run: `Test-Path "scripts/build.ps1"`
Expected: `True`

---

### Task 6: Create MO2 Separators Doc

**Files:**
- Create: `docs/guide/05-mo2-separators.md`

- [ ] **Step 1: Write separators reference**

```markdown
# MO2 Separators

These separators organize mods in Mod Organizer 2 by category. Each top-level separator has a distinct color. Subcategory separators use a gradient based on the parent color.

## Top-Level Separators

| # | Separator | Color | Hex |
|---|-----------|-------|-----|
| 1 | Bugfixes | Deep Red | `#8B0000` |
| 2 | UI & HUD | Steel Blue | `#4682B4` |
| 3 | Graphics Base | Forest Green | `#228B22` |
| 4 | Graphics — Portraits | Coral | `#FF7F50` |
| 5 | Graphics — Terrain | Olive | `#6B8E23` |
| 6 | Graphics — Animals | Goldenrod | `#DAA520` |
| 7 | World Expansion | Teal | `#008080` |
| 8 | Monsters & Combat | Dark Orange | `#CC5500` |
| 9 | Items & Weapons | Royal Purple | `#7851A9` |
| 10 | NPC Interactions | Rosy Brown | `#BC8F8F` |
| 11 | Grownup Town | Mauve | `#993366` |
| 12 | Gameplay Tweaks | Slate Gray | `#708090` |
| 13 | Skills & Professions | Cornflower Blue | `#6495ED` |
| 14 | Farming & Making | Dark Sea Green | `#8FBC8F` |
| 15 | Music & Audio | Dim Gray | `#696969` |

## Subcategory Separators

Subcategory separators use a lighter gradient of their parent category's color. To create a gradient in MO2:

1. Right-click the separator → "Create Separator"
2. Set the name following the parent pattern (e.g., `== Graphics Base > Terrain ==`)
3. Use a hex color 2-3 steps lighter than the parent
4. Enable "Italic" for subcategory separators to visually differentiate them

**Example gradient — Graphics Base (#228B22):**

| Level | Name | Hex | Style |
|-------|------|-----|-------|
| Top | `== Graphics Base ==` | `#228B22` | Bold |
| Sub | `== Graphics Base > Terrain ==` | `#66CD66` | Bold + Italic |
| Sub | `== Graphics Base > Buildings ==` | `#90EE90` | Bold + Italic |

## Creating Separators in MO2

1. Open Mod Organizer 2
2. In the left pane (mod list), click "Create Separator" (or right-click → "Create Separator")
3. Set the name and color to match the table above
4. Drag mods into the appropriate separator group
5. Order the separators to match the numeric order in this guide
```

- [ ] **Step 2: Verify file exists**

Run: `Test-Path "docs/guide/05-mo2-separators.md"`
Expected: `True`

---

### Task 7: Final Verification

- [ ] **Step 1: Verify complete file tree**

```powershell
Get-ChildItem -Recurse -File | Sort-Object FullName | Format-Table FullName
```

Expected: All files from the project structure tree are present.

- [ ] **Step 2: Run build script test**

Run: `cd <project_root> && ./scripts/build.ps1`
Expected: Either PDF generated successfully, or clear error about missing markdown content (since stubs are placeholders). This is a scaffolding check — the PDF will improve as content fills in.
