# No Crown Without Blood — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build a complete, multi-wave Bannerlord modlist and game guide with Typst-based PDF generation, organized into three progressive waves (Exile, Alliance, Reckoning) following a revenge-arc narrative.

**Architecture:** Modular Typst content files per wave, assembled by `_index.typ` via `#include` directives. A `typst/` folder holds template and styles. `build.bat` validates prerequisites then runs `typst compile`. Shared content (installation, troubleshooting) lives in `guide/shared/`.

**Tech Stack:** Typst 0.15 for PDF generation, batch file for build orchestration, Typst markup for content, system fonts (Crimson Pro, Libre Baskerville, Fira Code, Cinzel).

**Spec reference:** `docs/superpowers/specs/2026-07-21-no-crown-without-blood-design.md`

**Note on content tasks:** Tasks that write guide prose include the full opening paragraph for each section plus a detailed specification of what that section covers. These are not bare topic tags — they provide enough substance that the implementer can write coherent, mechanically accurate text without guessing at the intended depth or scope. Every = heading and == subheading is explicitly listed with its content specification.

**Estimated implementation time:** 6-12 hours for a single implementer. The bulk is in Tasks 7, 10, 15, 16, 20, 21 (content-heavy guide writing). Template files and modlists are fast by comparison.

**Commit strategy:** ~12 commits total, grouped by logical unit. Each commit produces a buildable state (template verifies, then shared content verifies, then each wave verifies).

---

## Phase 1: Project Scaffold

### Task 1: Create directories and config files

**Files:**
- Create: all directories in project tree
- Create: `AGENTS.md`
- Create: `README.md`
- Create: `guide/_index.typ`
- Create: `mod-conflicts.md`
- Create: `mod-ideas.md`

- [ ] **Step 1: Create all directories**

```pwsh
New-Item -ItemType Directory -Path "typst" -Force
New-Item -ItemType Directory -Path "guide/shared" -Force
New-Item -ItemType Directory -Path "guide/waves/wave-0" -Force
New-Item -ItemType Directory -Path "guide/waves/wave-1" -Force
New-Item -ItemType Directory -Path "guide/waves/wave-2" -Force
New-Item -ItemType Directory -Path "output" -Force
New-Item -ItemType Directory -Path "assets/screenshots" -Force
```

- [ ] **Step 2: Write AGENTS.md**

```markdown
# AGENTS.md — AI Agent Rules for No Crown Without Blood

This file governs how AI agents should work within this repository.

## Project

"No Crown Without Blood" — a Bannerlord modlist and game guide.
**Target:** Mount & Blade II: Bannerlord WS v1.2.7 / BL v1.4.7 (8 July 2026)
**Launcher:** Bannerlord Software Extender (BLSE) — https://www.nexusmods.com/mountandblade2bannerlord/mods/1

## File conventions

- Guide content files: `.typ` (Typst markup) in `guide/`
- Working documents: `.md` in project root
- PDF output: `output/No-Crown-Without-Blood.pdf`
- Typst templates: `typst/` folder
- Assets: `assets/` folder

## Mod addition workflow

1. Find a placeholder block (marked with `// ---- MOD PLACEHOLDER ----`) in the target wave's `03-mods.typ`
2. Verify the candidate mod is compatible with BL 1.4.x / WS 1.2.x
3. Verify no conflicts with other mods in the same wave (check `mod-conflicts.md`)
4. Replace the placeholder `#block()` with a real `#mod-entry()` call using the exact fields: name, url, category, dependencies, impact, config, load-order, compat
5. Update `load-order.typ` in that wave with the new mod's position
6. Add any discovered conflicts to `mod-conflicts.md`
7. Run `build.bat` and verify PDF builds without errors

## Mod rules

- Must be compatible with BL 1.4.x / WS 1.2.x
- No conflicting mods within the same wave
- No pornographic mods (adult/nude OK where thematically relevant; ask if in doubt)
- No cheating/overpowered/omniscient mods
- No redundant mods (no two mods that do the same thing)
- New mods must fit the wave's allowed categories per the mod taxonomy

## Writing style

- **Wave introductions** (`00-introduction.typ`): In-character, second-person narrative, immersive
- **How-to-play / Strategy / Mechanics**: Direct, instructional, second-person, concise
- **Mod entries**: Factual, third-person, technical
- All content files use Typst markup (see Appendix A in spec)

## PDF regeneration

After any content change: run `build.bat` from project root.
Verify: PDF opens correctly, TOC is updated, no Typst compilation errors.

## Design constraints

Do not change colors, fonts, page layout, or template structure without updating the design spec.
Design spec: `docs/superpowers/specs/2026-07-21-no-crown-without-blood-design.md`

## Version pin

All mod discussions, recommendations, and compatibility checks must reference:
**Bannerlord WS v1.2.7 / BL v1.4.7 (8 July 2026)**
```

- [ ] **Step 3: Write README.md**

```markdown
# No Crown Without Blood

A structured, multi-wave modlist and game guide for Mount & Blade II: Bannerlord.

**Target:** Bannerlord WS v1.2.7 / BL v1.4.7 (8 July 2026)
**Launcher:** Bannerlord Software Extender (BLSE)

## What is this?

A progressive modlist and companion guide organized into three "waves" of increasing difficulty and mod complexity. Each wave features a roleplaying backstory in a revenge-arc narrative. The guide teaches you how to play Bannerlord from zero to total war.

## Waves

- **Wave 0 — The Exile**: Vanilla experience with UI/QoL mods. Complete how-to-play guide for new players.
- **Wave 1 — The Alliance**: Enhanced graphics, deeper mechanics, expanded content. Mid-game strategy and politics.
- **Wave 2 — The Reckoning**: Heavy overhaul mods, total conversion feel. Endgame warfare and kingdom management.

## Building the PDF

### Prerequisites

- [Typst 0.15+](https://github.com/typst/typst/releases) in system PATH
- Required fonts (installed system-wide):
  - [Crimson Pro](https://fonts.google.com/specimen/Crimson+Pro)
  - [Libre Baskerville](https://fonts.google.com/specimen/Libre+Baskerville)
  - [Fira Code](https://fonts.google.com/specimen/Fira+Code)
  - [Cinzel](https://fonts.google.com/specimen/Cinzel)

### Build

```
build.bat
```

Output: `output/No-Crown-Without-Blood.pdf`

## Project structure

```
bannerlord-modlist/
├── AGENTS.md              # AI agent rules
├── README.md              # This file
├── build.bat              # PDF generation script
├── assets/
│   ├── logo.png           # Modlist logo
│   └── screenshots/       # Per-wave screenshots (optional)
├── typst/
│   ├── template.typ       # Cover page, body setup, show rules
│   └── styles.typ         # Colors, fonts, helper functions
├── guide/
│   ├── _index.typ         # Entry point for typst compile
│   ├── shared/
│   │   ├── installation.typ
│   │   └── troubleshooting.typ
│   └── waves/
│       ├── wave-0/        # The Exile
│       ├── wave-1/        # The Alliance
│       └── wave-2/        # The Reckoning
├── output/                # Generated PDF
├── mod-conflicts.md       # Known mod incompatibilities (not in PDF)
└── mod-ideas.md           # Future mod ideas (not in PDF)
```

## License

This guide is for personal use. Mod copyrights belong to their respective authors.
```

- [ ] **Step 4: Write mod-conflicts.md**

```markdown
# Known Mod Conflicts

Documents confirmed incompatibilities between mods in this list. Only lists verified conflicts, never speculative ones. Not included in PDF output.

Format: `[Mod A]` x `[Mod B]` — conflict description. Resolution (if any). Discovered: YYYY-MM-DD.

## Wave 0 conflicts
(None yet)

## Wave 1 conflicts
(None yet)

## Wave 2 conflicts
(None yet)

## Cross-wave conflicts
(None yet)
```

- [ ] **Step 5: Write mod-ideas.md**

```markdown
# Mod Ideas

Ideas for mods that do not yet exist but would improve the modlist. Each entry describes the gap and desired behavior. Not included in PDF output.

Format:
### [Idea Title] (Target Wave: 0/1/2)
**Category:** [UI/QoL, Light mechanic, Graphics, Content addition, Heavy overhaul]
**Problem:** What gap in the game does this address?
**Desired behavior:** What should the mod do?
**Existing mods that do part of this:** List if any.

---

(No entries yet — add ideas below)
```

- [ ] **Step 6: Write guide/_index.typ**

Note: Include directives are present from the start. During Phase 2 (template verification), we use a separate test file to avoid missing-include errors. See Task 3.

```typst
// _index.typ — Entry point for typst compile
// Assembly order for "No Crown Without Blood"
#import "typst/template.typ": *

// Cover page
#cover-page()

// Body setup (fonts, colors, page layout, TOC)
#setup-document()

// --- Shared Content ---
#include "guide/shared/installation.typ"
#include "guide/shared/troubleshooting.typ"

// --- Wave 0: The Exile ---
#wave-header(0, "The Exile", wave-0-accent)
#include "guide/waves/wave-0/00-introduction.typ"
#include "guide/waves/wave-0/01-how-to-play.typ"
#include "guide/waves/wave-0/02-getting-started.typ"
#include "guide/waves/wave-0/03-mods.typ"
#include "guide/waves/wave-0/load-order.typ"

// --- Wave 1: The Alliance ---
#wave-header(1, "The Alliance", wave-1-accent)
#include "guide/waves/wave-1/00-introduction.typ"
#include "guide/waves/wave-1/01-strategy.typ"
#include "guide/waves/wave-1/02-mechanics.typ"
#include "guide/waves/wave-1/03-mods.typ"
#include "guide/waves/wave-1/load-order.typ"

// --- Wave 2: The Reckoning ---
#wave-header(2, "The Reckoning", wave-2-accent)
#include "guide/waves/wave-2/00-introduction.typ"
#include "guide/waves/wave-2/01-strategy.typ"
#include "guide/waves/wave-2/02-mechanics.typ"
#include "guide/waves/wave-2/03-mods.typ"
#include "guide/waves/wave-2/load-order.typ"
```

- [ ] **Step 7: Commit**

```pwsh
git add AGENTS.md README.md guide/_index.typ mod-conflicts.md mod-ideas.md typst/ guide/shared/ guide/waves/ output/ assets/screenshots/
git commit -m "feat: scaffold project — config files, directory structure, _index.typ assembly order"
```

---

## Phase 2: Typst Template

### Task 2: Write typst/styles.typ

**Files:**
- Create: `typst/styles.typ`

- [ ] **Step 1: Write styles.typ**

```typst
// styles.typ — Design system for "No Crown Without Blood"
// Colors, fonts, and helper functions

// --- Font families (with fallbacks) ---
#let body-font = ("Crimson Pro", "Libertinus Serif")
#let heading-font = ("Libre Baskerville", "Libertinus Serif")
#let mono-font = ("Fira Code", "Libertinus Mono")
#let display-font = ("Cinzel", "Libre Baskerville")

// --- Colors ---
// Cover
#let charcoal = rgb("#1A1A2E")
#let cover-gold = rgb("#D4AF37")
#let cover-cream = rgb("#E8DCC8")

// Body
#let parchment = rgb("#F5F0E6")
#let body-text-color = rgb("#3B2F2F")
#let header-color = rgb("#8B6914")
#let link-color = rgb("#1A4B8C")
#let emphasis-color = rgb("#7B1818")
#let code-bg = rgb("#EDE5D8")

// Wave accent colors
#let wave-0-accent = rgb("#1A4B8C")
#let wave-1-accent = rgb("#2D5A27")
#let wave-2-accent = rgb("#8B1A1A")

// Callout box colors
#let tip-bg = rgb("#E6F0E6")
#let warning-bg = rgb("#F5EDE0")
#let danger-bg = rgb("#F2DEDE")

// --- Page layout ---
#let body-margin = (left: 2.5cm, right: 2cm, top: 2cm, bottom: 2cm)

// --- Heading show rule ---
#let apply-heading-style(it) = {
  if it.level == 1 {
    block(
      above: 1.6em,
      below: 0.8em,
      stroke: (bottom: 1.5pt + header-color),
      inset: (bottom: 4pt),
    )[
      #text(font: heading-font, size: 22pt, fill: header-color, weight: "bold")[#it.body]
    ]
  } else if it.level == 2 {
    block(
      above: 1.3em,
      below: 0.6em,
    )[
      #text(font: heading-font, size: 16pt, fill: header-color, weight: "bold")[#it.body]
    ]
  } else if it.level == 3 {
    block(
      above: 1em,
      below: 0.4em,
    )[
      #text(font: heading-font, size: 13pt, fill: header-color, weight: "bold")[#it.body]
    ]
  } else {
    block(
      above: 0.8em,
      below: 0.3em,
    )[
      #text(font: heading-font, size: 11.5pt, fill: header-color, weight: "bold")[#it.body]
    ]
  }
}

// --- Wave section header ---
#let wave-header(wave-num, title, accent) = {
  pagebreak()
  block(
    fill: accent.transparentize(88%),
    stroke: (bottom: 3pt + accent),
    inset: (left: 10pt, right: 10pt, top: 8pt, bottom: 8pt),
  )[
    #text(font: display-font, size: 30pt, fill: accent, weight: "bold")[Wave #wave-num]
    #v(0.3em)
    #text(font: heading-font, size: 22pt, fill: accent)[#title]
  ]
  v(1em)
}

// --- Mod entry (real mod) ---
#let mod-entry(name, url, category, dependencies, impact, config, load-order, compat) = {
  block(
    fill: code-bg,
    stroke: 1pt + header-color,
    radius: 6pt,
    inset: 12pt,
    breakable: true,
    width: 100%,
  )[
    === #text(fill: header-color, weight: "bold")[#name]
    #link(url)[Nexus Mods page]

    #v(0.3em)
    #table(
      columns: (auto, 1fr),
      stroke: none,
      [*Category*], [#category],
      [*Dependencies*], [#dependencies],
      [*Impact*], [#impact],
      [*Configuration*], [#config],
      [*Load order*], [#load-order],
      [*Compatibility*], [#compat],
    )
  ]
  v(0.6em)
}

// --- Placeholder mod block ---
#let mod-placeholder(category, examples, requirements) = {
  block(
    fill: code-bg,
    stroke: (dash: "dashed") + 1.5pt + header-color.transparentize(50%),
    radius: 6pt,
    inset: 10pt,
    breakable: true,
    width: 100%,
  )[
    *=== #text(fill: header-color)[#category Mod Placeholder]*

    A #category mod will go here.

    *Examples of what this slot should contain:*
    #for e in examples [
      - #e
    ]

    *Requirements:* #requirements
  ]
  v(0.4em)
}

// --- Callout boxes ---
#let tip-box(body) = block(
  fill: tip-bg,
  stroke: (left: 4pt + rgb("#2E6B3E")),
  inset: 10pt,
  radius: 4pt,
  breakable: true,
)[
  *#text(fill: rgb("#2D5A27"))[Tip:]* #body
]

#let warning-box(body) = block(
  fill: warning-bg,
  stroke: (left: 4pt + rgb("#C9A041")),
  inset: 10pt,
  radius: 4pt,
  breakable: true,
)[
  *#text(fill: rgb("#8B6914"))[Warning:]* #body
]

#let danger-box(body) = block(
  fill: danger-bg,
  stroke: (left: 4pt + rgb("#8B1A1A")),
  inset: 10pt,
  radius: 4pt,
  breakable: true,
)[
  *#text(fill: rgb("#8B1A1A"))[Danger:]* #body
]
```

### Task 3: Write typst/template.typ and build.bat

**Files:**
- Create: `typst/template.typ`
- Create: `build.bat`

- [ ] **Step 1: Write template.typ**

```typst
// template.typ — Document template for "No Crown Without Blood"
#import "styles.typ": *

// --- Cover page ---
#let cover-page() = {
  set page(
    paper: "a4",
    fill: charcoal,
    margin: (left: 3cm, right: 3cm, top: 3cm, bottom: 3cm),
  )

  v(10%)

  align(center)[
    #image("assets/logo.png", width: 40%)
  ]

  v(2em)

  align(center)[
    #text(font: display-font, size: 40pt, fill: cover-gold, weight: "bold")[No Crown Without Blood]
  ]

  v(0.8em)

  align(center)[
    #text(font: heading-font, size: 16pt, fill: cover-cream)[A Bannerlord Modlist & Guide]
  ]

  v(1.5em)

  align(center, line(length: 55%, stroke: 1pt + cover-gold))

  v(1.5em)

  align(center)[
    #text(font: body-font, size: 12pt, fill: cover-cream)[Mount & Blade II: Bannerlord]
    #v(0.3em)
    #text(font: body-font, size: 11pt, fill: cover-cream)[WS v1.2.7 / BL v1.4.7]
    #v(0.3em)
    #text(font: body-font, size: 10pt, fill: cover-gold)[July 2026]
  ]

  pagebreak()
}

// --- Body page setup ---
#let setup-document() = {
  set page(
    paper: "a4",
    fill: parchment,
    margin: body-margin,
    numbering: "1",
    header: align(
      right,
      text(font: heading-font, size: 8pt, fill: header-color)[*No Crown Without Blood*],
    ),
    footer: align(
      center,
      text(font: body-font, size: 8pt, fill: header-color)[— #counter(page).display() —],
    ),
  )

  set text(font: body-font, size: 11pt, fill: body-text-color)
  set par(justify: true, leading: 0.65em, first-line-indent: 0pt)

  show heading: apply-heading-style
  show link: it => text(fill: link-color, it)
  show strong: set text(fill: emphasis-color)
  set table(stroke: 0.5pt + header-color.transparentize(60%), inset: 6pt)

  show raw: it => block(
    fill: code-bg,
    inset: 10pt,
    radius: 4pt,
    breakable: true,
  )[
    text(font: mono-font, size: 9.5pt, it)
  ]

  // --- Table of Contents ---
  block(
    fill: code-bg,
    inset: 16pt,
    radius: 4pt,
    stroke: 1pt + header-color,
  )[
    #text(font: heading-font, size: 18pt, fill: header-color, weight: "bold")[Table of Contents]
    #v(0.6em)
    #outline(indent: 2em, depth: 2)
  ]

  pagebreak()
}
```

- [ ] **Step 2: Write build.bat**

```batch
@echo off
setlocal enabledelayedexpansion

echo ============================================
echo  No Crown Without Blood - PDF Builder
echo  Target: Bannerlord WS v1.2.7 / BL v1.4.7
echo ============================================
echo.

REM --- Prerequisite: Typst 0.15+ ---
where typst >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] typst not found in PATH.
    echo.
    echo Install Typst 0.15+ from:
    echo   https://github.com/typst/typst/releases
    echo.
    echo Ensure typst.exe is in your system PATH, then re-run this script.
    pause
    exit /b 1
)

for /f "tokens=2" %%v in ('typst --version 2^>^&1') do set TYPST_VER=%%v
echo [OK] typst found: version %TYPST_VER%
echo.

REM --- Prerequisite: Required fonts ---
echo Checking fonts...
powershell -Command ^
  "$fonts = @('Crimson Pro', 'Libre Baskerville', 'Fira Code', 'Cinzel');" ^
  "$missing = @();" ^
  "$fontCollection = [System.Drawing.Text.InstalledFontCollection]::new();" ^
  "$fontNames = $fontCollection.Families | ForEach-Object { $_.Name };" ^
  "foreach ($f in $fonts) {" ^
  "  if ($fontNames -notcontains $f) {" ^
  "    $missing += $f;" ^
  "    Write-Host '[WARN] Missing font: ' -NoNewline; Write-Host $f -ForegroundColor Yellow;" ^
  "  } else {" ^
  "    Write-Host '[OK]   Found font: ' -NoNewline; Write-Host $f -ForegroundColor Green;" ^
  "  }" ^
  "};" ^
  "if ($missing.Count -gt 0) {" ^
  "  Write-Host '';" ^
  "  Write-Host '[WARN] Missing fonts will cause Typst to fall back to system serif/mono.' -ForegroundColor Yellow;" ^
  "  Write-Host '       The PDF will build but may not look as intended.' -ForegroundColor Yellow;" ^
  "  Write-Host 'Missing fonts:' $missing;" ^
  "  Write-Host 'Download from Google Fonts or install via system font manager.';" ^
  "} else {" ^
  "  Write-Host '';" ^
  "  Write-Host '[OK]   All required fonts installed.' -ForegroundColor Green;" ^
  "}"
echo.

REM --- Build ---
echo Building PDF...
echo.

typst compile guide/_index.typ output/No-Crown-Without-Blood.pdf

if %errorlevel% neq 0 (
    echo.
    echo ============================================
    echo [FAIL] PDF build failed.
    echo Check the Typst error messages above.
    echo ============================================
    pause
    exit /b 1
)

echo.
echo ============================================
echo [OK]   PDF generated:
echo       output\No-Crown-Without-Blood.pdf
echo ============================================
pause
```

### Task 4: Verify template builds (with test file, not _index.typ)

- [ ] **Step 1: Create a test Typst file that only renders the template**

Since `_index.typ` includes 17 files that don't exist yet, we verify the template separately.

```pwsh
@"
#import "typst/template.typ": *
#cover-page()
#setup-document()
= Template Verification
This page confirms the template builds successfully.
All fonts, colors, headers, footers, and TOC styling are applied.
"@ | Out-File -FilePath "test-template.typ" -Encoding UTF8
```

- [ ] **Step 2: Compile the test file**

```pwsh
typst compile test-template.typ output/test-template.pdf
```

Expected: `typst compile` exits with code 0. Output file exists and is non-zero. If it fails: check that all 4 fonts are installed, that `assets/logo.png` exists, and that Typst version is 0.15+. If a specific function has a syntax error, fix it in the template file and re-run.

- [ ] **Step 3: Clean up test file**

```pwsh
Remove-Item test-template.typ -Force
Remove-Item output/test-template.pdf -Force -ErrorAction SilentlyContinue
```

- [ ] **Step 4: Commit**

```pwsh
git add typst/styles.typ typst/template.typ build.bat
git commit -m "feat: add Typst template — styles, cover page, body setup, TOC, build.bat"
```

---

## Phase 3: Shared Content

### Task 5: Write guide/shared/installation.typ

**Files:**
- Create: `guide/shared/installation.typ`
- Note: After this file is created, `_index.typ` can successfully build (other includes will fail, but that's expected).

- [ ] **Step 1: Write installation.typ**

This is the first content file and establishes the instructional writing style used throughout the guide. Write in Typst markup.

```typst
= Installation & Setup

This section covers everything you need to set up Bannerlord with BLSE and prepare for any wave. Follow these steps once — they apply to all three waves.

== Game Installation

Ensure your Bannerlord installation matches the target version before proceeding.

#warning-box[All mods in this guide target *WS v1.2.7 / BL v1.4.7 (8 July 2026)*. Mods marked for other versions will not work and may corrupt your saves.]

=== On Steam

- Right-click Mount & Blade II: Bannerlord in your Steam library
- Select *Properties* > *Betas*
- From the dropdown, choose the version matching `v1.4.7`
- Allow Steam to download the correct version files
- Launch the game once to generate config files, then exit

=== On GOG / Other Platforms

- Use the platform's version management to select the `v1.4.7` build
- If your platform does not support version pinning, you must ensure your installed version matches before proceeding
- Launch once, then exit

== Bannerlord Software Extender (BLSE)

BLSE is the mod launcher for this modlist. It manages load order, resolves dependencies, and provides a unified mod management interface.

=== What BLSE Does

- Sorts mods automatically by dependency and compatibility rules
- Detects version mismatches before you launch
- Provides a clean UI for enabling, disabling, and reordering mods
- Replaces the default Bannerlord launcher entirely

#tip-box[BLSE is required for all waves, including Wave 0. The default game launcher does not reliably manage mod load order and will cause crashes with multiple mods. Install BLSE even if you only plan to use Wave 0.]

=== Download & Install BLSE

#link("https://www.nexusmods.com/mountandblade2bannerlord/mods/1")[Download BLSE from Nexus Mods]

- Download the latest BLSE release
- Extract the archive into your Bannerlord game directory (the folder containing `bin\Win64_Shipping_Client\`)
- The key files are `BannerlordSoftwareExtender.exe` and the `BLSE` folder
- Launch `BannerlordSoftwareExtender.exe` — this replaces your normal game launch

=== First Launch with BLSE

- BLSE will scan your game directory and detect installed mods on first launch
- You will see the main mod management screen with a list of detected mods (empty initially for Wave 0)
- The load order panel on the right shows the current order
- BLSE's *Auto-Sort* button resolves dependencies automatically

#tip-box[Always launch Bannerlord through BLSE, even for Wave 0. Launching through Steam or the default launcher will bypass your mod setup.]

=== BLSE Settings

When you first open BLSE, configure the following:

#table(
  columns: (auto, 1fr),
  [*Setting*], [*Recommended Value*],
  [*Auto-Sort on Launch*], [Enabled — ensures load order is always correct],
  [*Check for Mod Updates*], [Enabled — warns you when mods have newer versions],
  [*Game Launch Arguments*], [Leave blank unless you need specific launch flags],
  [*Backup Saves*], [Enabled — creates timestamped save backups before launching],
)

=== Installing Mods with BLSE

For each mod in a wave's modlist:

+ Download the mod from its Nexus Mods page
+ Extract the mod folder into `Modules\` inside your Bannerlord game directory
+ Launch BLSE — the mod will appear in the list
+ Enable the mod by checking its box
+ Use *Auto-Sort* to place it correctly in the load order

#warning-box[Always check the mod's installation instructions on its Nexus page. Some mods require specific subfolder placement or additional dependencies not listed here.]

== Wave-Specific Setup

After installing BLSE and your game, follow the *Getting Started* section of your chosen wave. Each wave has its own mod list and recommended game settings.

=== Choosing Your Wave

- *Wave 0 — The Exile*: You are new to Bannerlord or want a guided first campaign. Minimal mods, complete tutorial.
- *Wave 1 — The Alliance*: You have completed a campaign or are familiar with Bannerlord's basics. Enhanced experience, more mechanics.
- *Wave 2 — The Reckoning*: You are a veteran player seeking a transformed, challenging experience with major overhauls.

#danger-box[Do not mix mods from different waves. Each wave's mod list is tested as a complete set. Adding Wave 2 mods to a Wave 1 setup will cause conflicts and crashes.]

== Game Settings

Regardless of your wave, these baseline settings are recommended:

#table(
  columns: (auto, 1fr),
  [*Setting*], [*Value*],
  [*Difficulty*], [Freebooter (medium) — adjustable per wave],
  [*Autosave Interval*], [15 minutes — prevents progress loss],
  [*Friendly Troops Banner Icons*], [Enabled — easier battle awareness],
  [*Show HUD in Combat*], [Enabled — shows health, ammo, orders],
  [*Graphics API*], [DirectX 11 — most stable for modded setups],
  [*Sound*], [Default — some mods add audio and rely on default settings],
)

#tip-box[Graphics settings depend on your hardware. Higher textures and shadows work well with Wave 1+ graphics mods, but start conservatively and increase if your framerate allows.]
```

- [ ] **Step 2: Build with only this file (others will error — expected)**

```pwsh
typst compile guide/_index.typ output/No-Crown-Without-Blood.pdf 2>&1
```

Expected: Typst reports errors for the 15 still-missing include files. The installation section is NOT verified in isolation here — it's verified in Task 6 after troubleshooting.typ is written. If you want early verification, temporarily comment out remaining includes in `_index.typ`.

- [ ] **Step 3: Commit**

```pwsh
git add guide/shared/installation.typ
git commit -m "feat: add shared installation guide — BLSE setup, game config, wave selection"
```

### Task 6: Write guide/shared/troubleshooting.typ and verify shared content

**Files:**
- Create: `guide/shared/troubleshooting.typ`

- [ ] **Step 1: Write troubleshooting.typ**

```typst
= Troubleshooting

Common issues you may encounter when setting up or playing with this modlist, and how to fix them.

== Game Crashes on Startup

The most common issue with modded setups. Work through these checks in order:

=== BLSE Won't Launch

- Verify BLSE files are in the game root directory (not in a subfolder)
- Run `BannerlordSoftwareExtender.exe` as Administrator once
- Check that your antivirus has not quarantined BLSE — add an exception for the game folder
- Re-download BLSE from the official page: #link("https://www.nexusmods.com/mountandblade2bannerlord/mods/1")

=== Game Crashes Before Main Menu

- Disable all mods in BLSE and try launching with zero mods
- If the game launches without mods, a mod is the cause. Enable mods one at a time to find the culprit.
- Check that all mod dependencies are installed and enabled (see each wave's mod list for dependency requirements)
- Verify your game version matches WS v1.2.7 / BL v1.4.7

=== Crash During Loading Screen

- Your save may be corrupted. Try loading an earlier save or a new game.
- Verify load order in BLSE matches the wave's `load-order.typ`
- Clear the game's shader cache: delete `%ProgramData%\Mount and Blade II Bannerlord\Shaders\`

== Mod-Related Issues

=== Mod Version Mismatch

BLSE may show a warning that a mod's version does not match your game version. This can happen with mods that have not been updated but still work.

#warning-box[If a mod shows a version warning but BLSE's Auto-Sort still loads it and the game launches, it is usually safe to use. However, always check the mod's Nexus page for compatibility notes.]

=== Mods Not Detected by BLSE

- Ensure the mod folder is placed directly in `Modules\` (e.g., `Modules\MyMod\SubModule.xml`)
- BLSE reads `SubModule.xml` in each mod folder. If this file is missing or misplaced, BLSE will not detect the mod.
- Restart BLSE after adding new mods — it scans on launch, not dynamically.

=== Two Mods Conflict

- Check `mod-conflicts.md` in this project — known conflicts are documented there
- In BLSE, try adjusting load order manually: the mod loaded *last* takes priority
- Some mods have compatibility patches on their Nexus pages — check the mod's files tab
- If no resolution, choose one mod over the other — running both will cause unpredictable behavior

== Save Game Issues

=== Save Won't Load

- Saves made with mods A, B, C cannot be loaded if mod C is removed. Re-enable removed mods or start a new game.
- Saves from one wave cannot be used with another wave's mod set. Each wave requires a new campaign.
- If a save crashes mid-load, it may be corrupted. Use BLSE's *Backup Saves* feature (enabled in settings) to restore an earlier version.

=== Save Corrupted

#danger-box[Never save immediately after a battle or during an autosave. Wait a few seconds for the game to finish post-battle processing. Saving during heavy scripting can corrupt the save file.]

- Use the backup save from BLSE if enabled
- If no backup exists, the save is likely unrecoverable. Start a new game with the backup setting enabled.

== Performance Issues

=== Low FPS in Battles

- Reduce battle size in game options (Options > Gameplay > Battle Size)
- Lower shadow quality and particle effects
- Disable any graphics mods temporarily to isolate if a texture mod is the cause
- Verify your GPU drivers are up to date

=== Stuttering on Campaign Map

- Reduce sound channels in Options > Audio
- This is often CPU-related; close background applications
- Some large mods increase world processing. This is expected in Wave 2 setups.

== BLSE-Specific Issues

=== Auto-Sort Places Mods Incorrectly

BLSE's Auto-Sort uses mod metadata to determine order. If a mod author did not declare dependencies correctly, manual sorting is needed.

- Check the wave's `load-order.typ` for the correct order
- In BLSE, drag the mod to the correct position in the load order panel
- Export your load order for future use: BLSE menu > Export Load Order

=== "Cannot Resolve Dependencies" Error

- A mod requires another mod that is not installed or enabled
- Check the mod's *Dependencies* field in the wave's mod list
- Install and enable the missing dependency, then re-run Auto-Sort

== Getting Help

If none of the above resolves your issue:

- Check the Nexus Mods page of the mod causing issues — the Posts and Bugs tabs often have solutions
- The Bannerlord modding Discord servers are active and helpful
- BLSE's GitHub page has an Issues tracker for launcher-specific problems

#tip-box[When asking for help online, always mention your game version (WS v1.2.7 / BL v1.4.7), which wave you are playing, and your full mod list. This information is essential for anyone helping you.]
```

- [ ] **Step 2: Create a temporary test index to verify shared content**

Since Wave files don't exist yet, create a minimal test:

```pwsh
@"
#import "typst/template.typ": *
#cover-page()
#setup-document()
#include "guide/shared/installation.typ"
#include "guide/shared/troubleshooting.typ"
"@ | Out-File -FilePath "test-shared.typ" -Encoding UTF8
typst compile test-shared.typ output/test-shared.pdf
```

Expected: PDF builds with zero errors. Cover page renders. TOC lists "Installation & Setup" and "Troubleshooting" with child headings. All callout boxes, tables, and links render correctly.

If build fails: the Typst error message points to the offending line. Common causes: unclosed bracket in a callout box, missing comma in a table row, mismatched `=` heading nesting.

- [ ] **Step 3: Clean up test files**

```pwsh
Remove-Item test-shared.typ -Force
Remove-Item output/test-shared.pdf -Force -ErrorAction SilentlyContinue
```

- [ ] **Step 4: Commit**

```pwsh
git add guide/shared/troubleshooting.typ
git commit -m "feat: add shared troubleshooting guide and verify both shared sections build"
```

---

## Phase 4: Wave 0 — The Exile

### Task 7: Write wave-0/00-introduction.typ

**Files:**
- Create: `guide/waves/wave-0/00-introduction.typ`

- [ ] **Step 1: Write the Wave 0 introduction**

This file sets the narrative tone for the entire modlist. Write the full text in Typst markup. The narrative opening establishes the character, world, and stakes. The instructional sections that follow transition the reader from story to gameplay.

```typst
= Introduction

The rain came down in sheets the night your family died. Not the gentle spring rain that nourished your father's fields, but a hard, driving storm that drowned out the screams. You remember the thunder — or was it the heavy boots of your uncle's men on the stone stairs? Memory blurs the worst moments. What remains, sharp as a freshly-honed blade, is the face of your mother's guard, Ser Aldric, dragging you through the servant's passage as the great hall behind you filled with fire.

"Don't look back," he said. "Never look back."

You were fourteen. The youngest child of House Verdan, a minor noble house sworn to the Kingdom of Vlandia. Your father had been a just lord. Your mother, a diplomat who kept the peace between rival houses. Your elder siblings — three of them — had been warriors and scholars, each groomed for a role in the family's future. None of them survived the summit.

Your uncle Evran had called it a peace summit. He came under a banner of truce, with gifts and promises. Your father welcomed his own brother into the great hall with open arms. The poisoning started within the hour. By midnight, your family was dead and Evran's men held the keep. Ser Aldric got you out because he knew a passage your uncle didn't — an old escape tunnel dug during the last war.

You traveled for three weeks without stopping. Aldric sold his sword to buy food. He taught you how to start a fire in the rain, how to tell which villages would give shelter and which would sell you out. He taught you that survival has no honor — only outcomes.

On the border of Battania, in a nameless village that stank of sheep and desperation, Aldric's wounds caught up with him. The fever took three days. You buried him under an old oak, marked the grave with his sword driven into the earth, and walked on alone.

That was two years ago. You are sixteen now, or thereabouts — you stopped counting days after the first winter. You have learned to fight because the alternative is death. You have learned to trade because empty pockets mean empty stomachs. You have learned to lead because a lone wolf is just prey for a larger pack. You are nobody. A nameless face in a world that does not care whether you live or die.

Good. That is your advantage.

You are not here to survive. You are here to learn everything Calradia can teach you — how to fight, how to lead, how to build something from nothing. Because somewhere across these mountains, your uncle Evran still sits on your father's throne. He thinks you died in the fire. He thinks the line of Verdan ended that night.

He is wrong.

You will not go after him yet. You are not ready. You are still weak, still learning, still nobody. But every sword that falls to your blade, every soldier who swears to your banner, every coin you earn through your own cunning — these are the bricks of the foundation you are building. One day, when you are strong enough, when you have an army at your back and allies who fear your name, you will cross those mountains and remind your uncle that Verdan blood does not die so easily.

But that is another story. This is the story of how you started.

== Wave 0 Objectives

Wave 0 is your training ground. Forget revenge for now. Focus on:

+ Learning the fundamentals of combat, trade, and leadership
+ Understanding how the world of Calradia works — its factions, its economy, its rules
+ Building your first warband and earning your first renown
+ Surviving long enough to reach Clan Tier 2
+ Completing a full campaign from obscurity to established mercenary

#tip-box[There is no rush. Wave 0 is designed for learning — take your time, experiment, make mistakes. You will start over in Wave 1 anyway. Use this wave to understand the game, not to beat it.]

== What Makes Wave 0 Different

Wave 0 is as close to vanilla Bannerlord as possible. The mod list is restricted to *UI and Quality of Life* improvements only — nothing that changes gameplay mechanics. This means:

+ You experience Bannerlord as the developers intended, but with a smoother interface
+ Every mechanic you learn in Wave 0 carries over to Waves 1 and 2 — mods add depth, not replacements
+ You can compare the vanilla experience to later waves and understand what each mod changes and why

== Your Character

For the best roleplaying experience in this wave, create a character that fits the Exile background:

- *Culture*: Vlandia (your homeland) or Battania (where you fled). Both offer bonuses that help a new player.
- *Background*: You were raised in a noble house but have spent two years as a survivor. Choose backgrounds that reflect both privilege and hardship.
- *Starting age*: 16-18 (you were exiled at 14, and a couple of years have passed)
- *Starting skills*: Prioritize One-Handed (Aldric's training), Athletics (you walked across half a continent), and Trade (you learned to survive on nothing)

#tip-box[Character creation is covered in detail in the *How to Play* section. For now, just remember: you are not a hero yet. You are a refugee with a grudge and a long road ahead. Build accordingly.]
```

- [ ] **Step 2: Build shared + wave-0-intro to verify**

```pwsh
@"
#import "typst/template.typ": *
#cover-page()
#setup-document()
#include "guide/shared/installation.typ"
#include "guide/shared/troubleshooting.typ"
#wave-header(0, "The Exile", wave-0-accent)
#include "guide/waves/wave-0/00-introduction.typ"
"@ | Out-File -FilePath "test-wave0-intro.typ" -Encoding UTF8
typst compile test-wave0-intro.typ output/test-wave0-intro.pdf
Remove-Item test-wave0-intro.typ -Force
```

Expected: PDF builds with zero errors. Wave header (blue, "Wave 0 / The Exile") renders. Introduction prose flows correctly.

- [ ] **Step 3: Commit**

```pwsh
git add guide/waves/wave-0/00-introduction.typ
git commit -m "feat: add Wave 0 introduction — Exile backstory, objectives, character setup"
```

### Task 8: Write wave-0/01-how-to-play.typ

**Files:**
- Create: `guide/waves/wave-0/01-how-to-play.typ`

- [ ] **Step 1: Write the how-to-play guide**

This is the longest content file (~3000-4000 words, 10-15 PDF pages). Write the complete text in Typst markup. Every section named below must be written as full explanatory prose with concrete game details. Use #table(), #tip-box(), #warning-box(), and #danger-box() where specified.

Below is the complete outline with the opening paragraph for each section. Write the full text for every subsection.

```typst
= How to Play

This guide covers everything you need to know for your first campaign. If you have never played Bannerlord before, start here. If you have played but want to sharpen your fundamentals, work through each section in order.

== Character Creation

Your first decisions shape your entire campaign. Do not rush this.

=== Choosing a Culture

Your culture determines your starting location, initial bonuses, and which factions consider you kin. For the Exile backstory, two cultures make the most sense.

[Table comparing Vlandia (location: western Calradia, bonus: 20% more renown from battles, troops: shock cavalry and crossbowmen, narrative fit: returning to homeland) vs Battania (location: northwest forests, bonus: 50% less speed penalty in forests, troops: archers and skirmishers, narrative fit: outsider earning trust)]

=== Background Skills

[Explain the background selection screen. Favor backgrounds granting One-Handed, Athletics, Trade, Leadership, Tactics. Avoid Roguery, Engineering, Steward early — they require infrastructure you don't have. Tip-box about no wrong choice but some synergies are better.]

=== Attribute Points

[Explain all 6 attributes (VIG/CTR/END/CNG/SOC/INT) and the 3 skills each governs. Recommend minimum investments: VIG 3, END 3, CNG 2-3, SOC 2-3, INT 2. CTR optional for ranged builds. Warning-box: you cannot reset attribute points later. A balanced spread is safer than min-maxing.]

=== Appearance & Name

[Character creator is detailed — take your time. Vlandian/Battanian naming conventions. Your name appears everywhere: diplomacy, battle reports, encyclopedia. Make it memorable.]

== Controls & UI

=== Basic Controls

[Table: Movement WASD, Attack LMB, Block RMB+direction, Kick E, Interact F, Mount/Dismount F, Inventory I, Character C, Party P, Journal J, Encyclopedia N, Kingdom K, Clan L, Map Alt, Fast-forward 3, Pause Space, Commands F1-F7]

=== Combat Basics

[Directional combat system. Attacks: mouse direction wind-up then left-click. Quick flicks vs held wind-ups. Feints: start one direction, switch before release. Blocking: hold RMB, match direction. Watch attacker's shoulder/elbow for telegraph. Chamber blocking: attack into incoming attack — high risk, devastating. Kicking: press E while looking at blocking enemy — breaks guard, staggers. Short range.]

=== Mounted Combat

[Speed determines damage — couched lance at full gallop one-shots. Attack from right side of horse. Never stop moving — stationary rider is dead rider. Horses can die — buy a backup mount. Warning-box about horse death.]

=== Ranged Combat

[Compare bows (fast, low damage, horse archery), crossbows (slow, high damage, can pre-load and fire on horseback without Bow skill), throwing (short range, massive damage, limited ammo). Accuracy depends on skill level — reticle bloom at low skill.]

== Your First Hour

=== Tutorial Quest

[The main quest "Neretzes' Folly" starts immediately — it spans the entire game. Not urgent. Use it as an excuse to explore and meet nobles.]

=== Your First Recruits

[Open party screen (P). Recruit from villages (Tier 1) and towns (Tier 1-2). Target 10-15 soldiers — enough to fight looters, not so many that wages are crushing. 60% infantry (shields), 40% archers. Tip-box about wages being daily — every soldier costs whether you fight or not.]

=== Food & Morale

[Open inventory food section. Table: Grain (12 units, cheap), Meat (8, moderate), Fish (6, cheap coastal), Cheese (5, moderate), Butter (4, morale boost), Grapes/Olives (3, local). Variety bonus: 3+ food types = morale boost. Danger-box: zero food = starvation, wounding, desertion, party wipe. Always carry 3 days minimum.]

=== Your First Fight

[Find looters (5-15 band, weakest enemy). Pre-battle: "Send Troops" to autoresolve safely. Manual battle: choose "Attack," use F1+F3 to charge, or F1+drag to position on high ground. Stay with your infantry — charging alone gets you killed. Loot everything — junk sells.]

=== Visit a Town

[Walk streets: Tavern (mercenaries, companions, rumors), Market (buy/sell — prices vary by town), Arena (practice combat — zero risk, equal equipment, temporary death), Keep (speak to noble if present). Arena is your best friend early — spend 20 minutes before real fights. Tournament prizes can be high-tier weapons/armor — check prize before entering.]

== Building Your Warband

=== Party Composition

[Table: Infantry (shield) 40%, Archers 35%, Cavalry 15%, Horse Archers 10%. Principle: shields hold, archers kill, cavalry exploits. Ratio shifts with progression.]

=== Companions

[Named characters recruited from taverns. Don't die (only wound). Assign roles: Scout (visibility), Surgeon (fewer deaths), Quartermaster (party size, food), Engineer (siege speed). Assign through Clan screen (L) > Roles tab. Check stats before assigning.]

=== Equipment & Upgrades

[Priority: weapon > armor > horse > shield. Don't buy legendary weapon before having decent armor. Towns with smithies sell better weapons; towns near war zones sell discounted armor. Troops upgrade automatically — upgrade icon appears in party screen when they earn enough XP. Higher tier = dramatically better.]

== Trading 101

=== Understanding Prices

[Hover over trade good to see base price. Green = below average (buy). White = average (avoid). Red = above average (sell). A town producing iron ore sells cheap; a town with a smithy buys iron at premium.]

=== Trade Rumors

[Visit tavern, talk to tavernkeeper, pay small fee for trade rumors. Updates market prices before you travel — saves wasted journeys.]

=== Quick Profit Routes

[Table: 5 routes. Buy hardwood in Seonon, sell in Marunath. Buy grain in Vlandian villages, sell in Sargot/Jaculan. Buy iron ore in Pravend/Ocs Hall, sell to towns with smithies. Buy fish in coastal towns, sell inland/desert. Buy dates in Aserai, sell in north (Sturgia/Battania). Tip-box: carry goods on pack animals — mules and sumpter horses increase carrying capacity from 20 to 100+.]

=== Avoiding Bandits While Trading

[Take safe roads, not forest shortcuts. Travel at night (bandits less active). Keep party size 15+ before cross-region routes. Save before entering danger zones.]

== Clan Progression

=== Renown

[Earned from challenging battles. Looters = negligible. Equal or stronger = significant. Outnumbered = multiplier. Tip-box: fight enemies your size or slightly larger for best renown/time ratio.]

=== Clan Tier Breakpoints

[Table: Tier 0 (starting, 20 party), Tier 1 (50 renown, 40 party, mercenary contracts), Tier 2 (150 renown, 60 party, companion parties, vassalage), Tier 3 (350 renown, 80 party, kingdom policies), Tier 4 (900 renown, 110 party, second companion party). Wave 0 goal: reach Tier 2. Tier 3 is stretch.]

=== Mercenary Contracts

[At Tier 1: visit faction lord, ask to be hired. Paid influence-based wages, faction covers partial troop wages, access to faction towns, can leave anytime. Safest early income source.]

== Saving & Difficulty

=== Save Management

[Two modes: Normal (save anytime, multiple files — recommended for Wave 0) and Ironman (one file, death permanent — consider in Wave 2). Tip-box: save before entering towns, battles, approaching large parties.]

=== Difficulty Settings

[Table: Player Damage = Reduced 50% (you'll make mistakes), Troop Damage = Realistic (troops feel valuable), Recruitment = Normal, Map Speed = Realistic, Combat AI = Normal, Persuasion = Normal, Clan Death = Reduced. Warning-box: these are Wave 0 only. Wave 1 expects Realistic player damage. Wave 2 expects maximum difficulty.]

== Early Quests & Notables

=== Village Notables

[Every village has headman, smith, trader. Doing quests increases relation, unlocks better recruits, gives gold/items. Invest in villages that produce troops you want.]

=== Common Early Quests

[Family Feud: persuasion escort, good Charm XP. Extortion by Deserters: easy combat, good relation. Escort Merchant Caravan: protects caravan between towns, combines trade+combat learning. Hunt Bandits: clear nearby hideouts. Army of Poachers: hunt poachers near village. Tip-box: accept quests before leaving village, chain them by region.]

== Next Steps

Once you have completed a few quest loops, upgraded your troops, and established a modest income through trading or mercenary work, you are ready for the *Getting Started* section, which walks you through setting up your Wave 0 mods and starting a dedicated campaign.
```

The implementer must expand each bracketed description into full paragraphs. The sample prose in the introduction and first sections (Character Creation opening, Controls opening) demonstrates the writing style. Target: substantive explanatory text for every section, not bullet-point outlines. Use second-person ("you") throughout.

- [ ] **Step 2: Verify this file compiles (test with shared + wave-0-intro + this)**

```pwsh
@"
#import "typst/template.typ": *
#cover-page()
#setup-document()
#include "guide/shared/installation.typ"
#include "guide/shared/troubleshooting.typ"
#wave-header(0, "The Exile", wave-0-accent)
#include "guide/waves/wave-0/00-introduction.typ"
#include "guide/waves/wave-0/01-how-to-play.typ"
"@ | Out-File -FilePath "test-wave0-guide.typ" -Encoding UTF8
typst compile test-wave0-guide.typ output/test-wave0-guide.pdf
Remove-Item test-wave0-guide.typ -Force
```

Expected: PDF builds. How-to-play section renders all subsections, tables, and callout boxes. No Typst syntax errors.

- [ ] **Step 3: Commit**

```pwsh
git add guide/waves/wave-0/01-how-to-play.typ
git commit -m "feat: add Wave 0 how-to-play — full game guide covering all essential mechanics"
```

### Task 9: Write wave-0/02-getting-started.typ and wave-0/03-mods.typ and wave-0/load-order.typ

**Files:**
- Create: `guide/waves/wave-0/02-getting-started.typ`
- Create: `guide/waves/wave-0/03-mods.typ`
- Create: `guide/waves/wave-0/load-order.typ`

- [ ] **Step 1: Write getting-started**

```typst
= Getting Started — Wave 0

This section walks you through setting up Wave 0 from scratch. You will install the mods, configure them, and start a new campaign with the Exile backstory parameters.

== Mod Installation

Wave 0 uses only UI and Quality of Life mods. The list is intentionally short — you should install all of them before starting.

=== How to Install Wave 0 Mods

+ Download each mod from its Nexus Mods page (links in the Mod List section)
+ Extract the mod folder into your Bannerlord `Modules\` directory
+ Launch BLSE — the mods will appear in the list
+ Enable each mod by checking its box
+ Press *Auto-Sort* to resolve load order

The correct load order is listed in the *Load Order* section at the end of this wave.

=== What Wave 0 Mods Do

All Wave 0 mods fall into the *UI/QoL* category. This means:

+ They change how information is displayed — better tooltips, sorted inventory, readable fonts
+ They add convenience features — quicker menus, keyboard shortcuts, saved configurations
+ They fix interface annoyances — slow dialogue, hidden stats, poor map readability
+ They do *not* change combat, economy, diplomacy, troops, items, or any game mechanic

You are playing vanilla Bannerlord. The mods just make the interface less frustrating.

== Starting Your Campaign

=== Recommended Settings

Start a new campaign with these parameters:

- *Campaign Mode*: Sandbox (not the main quest) — Wave 0's story replaces the main quest for roleplaying purposes
- *Difficulty*: Freebooter (medium) — adjust individual settings as discussed in *How to Play*
- *Character Creation*: Follow the guidance in *How to Play* for a character that fits the Exile narrative
- *Starting Culture*: Vlandia or Battania (your choice)
- *Save Mode*: Normal (Free Save) — you are learning and should be able to reload mistakes

#tip-box[If you want to follow the Exile story exactly, choose Vlandian culture and start near Sargot. The "Exile" narrative places you on the Vlandian-Battanian border, and Sargot is the closest major city to that region.]

=== Early Game Goals

Your objectives for the first 10-20 hours of Wave 0:

+ Reach Clan Tier 2 (150 renown)
+ Build a warband of 40-60 soldiers at Tier 3 or above
+ Accumulate 10,000-20,000 denars through trading and mercenary work
+ Own a workshop in at least one town
+ Win at least 3 tournaments
+ Marry (optional, but recommended for learning the mechanic)

=== Recommended Route

For the first campaign, follow this rough route to see the world and learn the mechanics.

#warning-box[This route is a suggestion, not a requirement. You can and should deviate based on what you find interesting. The world is dynamic — wars, bandit spawns, and prices change with every new campaign.]

1. *Start near Sargot* (Vlandia): Recruit Vlandian infantry and crossbowmen. Do village quests around Sargot and Jaculan. Learn how Vlandian shock cavalry works.

2. *Travel east to Battania*: Visit Seonon and Marunath. Try Battanian archers — compare them to your crossbowmen. Learn forest terrain advantages. Experience the difference between faction troops firsthand.

3. *Continue east to the Empire*: The heart of the map. More towns, more quests, more tournaments, more trade opportunities. Zharona sells cheap horses — buy here. The Empire's central position means you interact with every faction's caravans and armies.

4. *Loop south through the Aserai desert*: Buy desert horses and dates. Sell to the north — this is a profitable trade loop even for beginners. Experience desert terrain and cavalry-heavy combat.

5. *Head north into Sturgia*: Recruit Sturgian infantry — they are the sturdiest shield wall in the game. Learn the difference between faction troops at the extreme ends of the spectrum. Sturgia's slow, heavy infantry is the opposite of Khuzait horse archers.

6. *Return west to Vlandia*: By now you should be Clan Tier 2, have a decent warband, and understand how trade and combat work. Take a mercenary contract with Vlandia or Battania and fight in a real war — this is the test of everything you have learned.

This loop exposes you to every major faction, every terrain type, and every troop archetype.

=== When to End Wave 0

There is no "completion" requirement for Wave 0. A good stopping point is:

+ You have reached Clan Tier 2 or 3
+ You have fought in at least one faction war
+ You understand how trade, combat, and clan mechanics work
+ You have experimented with different troop types and found your preferred playstyle
+ You are comfortable with the BLSE launcher and mod management

When you are ready, uninstall Wave 0 mods through BLSE (uncheck all mods), install Wave 1 mods, and start a new campaign. You cannot carry a Wave 0 save into Wave 1 — the mod changes are too significant.

#danger-box[Never load a Wave 0 save after installing Wave 1 mods. The save depends on Wave 0's mod list and will crash or corrupt if loaded with different mods. Each wave requires a fresh campaign. This is intentional — each wave is a different stage of the story and a different game experience.]
```

- [ ] **Step 2: Write Wave 0 modlist**

```typst
= Mod List — Wave 0

Wave 0 uses only *UI and Quality of Life* mods. These enhance the interface without changing any game mechanics. All mods must be compatible with BL 1.4.x / WS 1.2.x.

// ---- MOD PLACEHOLDER: UI/QoL ----
// Replace this entire block with a real mod entry.
// Delete the #block below and uncomment the template.

/*
=== [Mod Name]
#link("[URL]")[Nexus Mods]

#table(
  columns: (auto, 1fr),
  [*Category:*], [UI/QoL],
  [*Dependencies:*], [[List of dependencies]],
  [*Impact:*], [[What this mod changes — must be UI-only, no mechanics]],
  [*Configuration:*], [[In-game settings or config file options]],
  [*Load order:*], [[Position in the load order]],
  [*Compatibility:*], [[Interaction with other Wave 0 mods]],
)
*/

// Wave 0 currently uses placeholder mod entries.
// Real mods will be selected and filled in later, following the mod rules
// and compatibility with BL 1.4.x / WS 1.2.x.

#v(0.8em)

// ---- MOD PLACEHOLDER: UI — Better Tooltips ----
#mod-placeholder(
  "UI/QoL",
  ("Better tooltips showing exact stat values instead of vague descriptions",
   "Trait and perk details visible before committing to a choice",
   "Detailed weapon comparison when hovering over items in inventory"),
  "Must not change any game mechanics. UI display changes only.",
)

// ---- MOD PLACEHOLDER: UI — Inventory Management ----
#mod-placeholder(
  "UI/QoL",
  ("Sort and filter inventory by type, value, weight",
   "Bulk sell/buy options for trade goods",
   "Companion equipment comparison in a single screen"),
  "Must not add items, change item stats, or alter economy.",
)

// ---- MOD PLACEHOLDER: UI — Map Enhancements ----
#mod-placeholder(
  "UI/QoL",
  ("Show troop speed modifiers on the campaign map",
   "Bandit hideout and quest location markers visible without hovering",
   "Faction borders and war status visible on the main map"),
  "Must not reveal hidden information (e.g., enemy party locations through fog of war).",
)

// ---- MOD PLACEHOLDER: UI — Dialogue & Menus ----
#mod-placeholder(
  "UI/QoL",
  ("Skip or speed up repetitive dialogue sequences",
   "Quick-load save without navigating through menus",
   "Keyboard shortcuts for common town actions (arena, tavern, market)"),
  "Must not skip important story or quest dialogue without player input.",
)

// ---- MOD PLACEHOLDER: UI — Better Fonts & Text Scaling ----
#mod-placeholder(
  "UI/QoL",
  ("Improved font rendering for high-resolution displays",
   "Adjustable UI text size for different screen sizes and resolutions",
   "Better text contrast for readability in bright environments"),
  "Must work at common resolutions (1920x1080, 2560x1440). No font substitutions that break text layout.",
)

// ---- MOD PLACEHOLDER: UI — Troop & Party Management ----
#mod-placeholder(
  "UI/QoL",
  ("Party screen shows troop stats, upgrade paths, and equipment without navigating submenus",
   "Sort troops by type, tier, or wounded status",
   "Bulk upgrade troops with a single click"),
  "Must not change upgrade costs, troop stats, or recruitment mechanics.",
)

// ---- MOD PLACEHOLDER: UI — Battle Orders ----
#mod-placeholder(
  "UI/QoL",
  ("Order of battle screen before combat — assign troops to formations",
   "Customizable formation presets saved between battles",
   "Better charge and advance commands with visual feedback"),
  "Must not change troop AI behavior. UI layer only — formations use vanilla AI commands.",
)

// ---- MOD PLACEHOLDER: UI — Save Management ----
#mod-placeholder(
  "UI/QoL",
  ("Named save files instead of auto-generated timestamps",
   "More autosave slots with configurable intervals",
   "Save file preview showing party composition and location"),
  "Must not modify save file contents or enable save-scumming shortcuts.",
)
```

- [ ] **Step 3: Write Wave 0 load order**

```typst
= Load Order — Wave 0

The correct load order for all Wave 0 mods, listed from top to bottom. Mods loaded first appear at the top; mods loaded last override and appear at the bottom.

Use BLSE's Auto-Sort function to resolve this automatically. If Auto-Sort places mods incorrectly, manually drag them to match this order.

#table(
  columns: (auto, auto, 1fr),
  stroke: 0.5pt + header-color.transparentize(60%),
  [*Position*], [*Mod*], [*Notes*],
  [1.], [Better Fonts & Text Scaling], [Font mods load first to apply before other UI mods],
  [2.], [Better Tooltips], [Depends on font mod for correct text display],
  [3.], [Map Enhancements], [No dependencies — loads independently],
  [4.], [Inventory Management], [No dependencies — loads independently],
  [5.], [Troop & Party Management], [No dependencies — loads independently],
  [6.], [Dialogue & Menus], [No dependencies — loads independently],
  [7.], [Battle Orders], [No dependencies — loads independently],
  [8.], [Save Management], [No dependencies — loads independently],
)

#warning-box[The load order is a suggested template based on placeholder mods. When real mods are added, update this table with actual mod names and verified positions. Always run BLSE Auto-Sort first, then adjust manually if needed.]
```

- [ ] **Step 4: Verify full Wave 0 builds**

```pwsh
@"
#import "typst/template.typ": *
#cover-page()
#setup-document()
#include "guide/shared/installation.typ"
#include "guide/shared/troubleshooting.typ"
#wave-header(0, "The Exile", wave-0-accent)
#include "guide/waves/wave-0/00-introduction.typ"
#include "guide/waves/wave-0/01-how-to-play.typ"
#include "guide/waves/wave-0/02-getting-started.typ"
#include "guide/waves/wave-0/03-mods.typ"
#include "guide/waves/wave-0/load-order.typ"
"@ | Out-File -FilePath "test-wave0.typ" -Encoding UTF8
typst compile test-wave0.typ output/test-wave0.pdf
Remove-Item test-wave0.typ -Force
```

Expected: PDF builds with zero errors. All 5 Wave 0 files render in sequence. Mod placeholders show dashed-border blocks. Load order table renders.

- [ ] **Step 5: Commit**

```pwsh
git add guide/waves/wave-0/02-getting-started.typ guide/waves/wave-0/03-mods.typ guide/waves/wave-0/load-order.typ
git commit -m "feat: complete Wave 0 — getting-started, 8 UI/QoL placeholders, load order"
```

---

## Phase 5: Wave 1 — The Alliance

### Task 10: Write wave-1/00-introduction.typ

**Files:**
- Create: `guide/waves/wave-1/00-introduction.typ`

- [ ] **Step 1: Write the Wave 1 introduction**

The narrative picks up 5 years after Wave 0. The character has grown from refugee to respected mercenary captain. Write the full text:

```typst
= Introduction

Five years. Five years since the rain-soaked staircase. Five years since Ser Aldric put his sword in the earth for the last time. Five years of learning, fighting, earning, surviving. And now? Now they know your name.

It happened slowly, the way these things do. A tournament in Jaculan where you unseated a minor lord's champion. A skirmish outside Ocs Hall where your thirty men held against a hundred, and someone wrote a song about it. A mercenary contract with Vlandia that turned into a second, then a third, until you were not just another sword-for-hire — you were an asset that lords competed for.

You have gold now. Not a fortune, but enough. You have soldiers — veterans who have bled beside you and stayed when others ran. You have companions who call you captain and mean it. When you ride into a town, people watch. Some with respect. Some with fear. Some with calculation.

You have learned what Ser Aldric never had time to teach you: that Calradia is not won by blades alone. It is won by marriages that bind houses together. By trade routes that make kingdoms dependent on your goodwill. By whispered promises in the right ears and loud declarations in the right halls. By knowing when to draw your sword — and when to keep it sheathed while someone else draws theirs.

Your uncle Evran still sits on your father's throne. He has grown fat and suspicious, they say. He executes vassals for imagined slights. He trusts no one. Good. Paranoia is a hungry animal — it devours its owner if fed long enough. You have been feeding it from a distance, spreading rumors through merchants who cross the mountains, letting Evran hear whispers of a young Vlandian captain with suspicious skill and no traceable past.

But whispers are not armies, and a reputation is not a crown. You have reached the limit of what one person can achieve alone. To take back what was stolen, you need allies. You need marriages that buy you legitimacy. You need trade networks that fund a war. You need lords who will follow you not for coin but because they believe your cause is theirs.

This is the story of how you stopped being a survivor and started being a threat.

== Wave 1 Objectives

Wave 1 shifts from survival to ambition. Your goals:

+ Build a network of alliances through marriage, diplomacy, and trade
+ Master mid-game economics — workshops, caravans, and land ownership
+ Command armies, not warbands — learn formation tactics, siege warfare, and force composition
+ Ascend to Clan Tier 4 or higher
+ Own a fief, manage its development, and defend it against rivals
+ Transition from mercenary to vassal (or remain independent with sufficient power)

== What Changes in Wave 1

Wave 1 introduces significantly more mods, spanning multiple categories:

+ *Graphics enhancements*: Better textures, lighting, environments. The world looks richer and more atmospheric.
+ *Light mechanic additions*: Expanded diplomacy options, improved AI behavior, new quest types. The game gains depth without losing its identity.
+ *Content additions*: New equipment, troops, and possibly factions. More variety in what you can field and who you can fight.
+ *Still no heavy overhauls*: Core systems remain intact. Wave 2 is for system-level changes.

#warning-box[You are expected to understand the basics of combat, trade, and clan management before starting Wave 1. The *How to Play* guide in Wave 0 covers these fundamentals. If you skipped it, go back and read it — Wave 1's strategy sections assume you know the basics.]

== Your Character, Reborn

The character you built in Wave 0 does not carry over mechanically (you start a new campaign), but narratively, you are the same person five years later:

- *Culture*: Same as your Wave 0 choice — this is your origin and it continues to matter
- *Background*: Your skills reflect five years of experience. Invest in Leadership, Charm, Trade, and Tactics more aggressively than Wave 0.
- *Relationships*: You know people now. When you meet lords in Wave 1, roleplay as if you have history with them — you have been in their world for years.
- *Starting wealth*: You are not poor. Invest your starting gold in workshops and trade routes immediately — you know how the economy works now.

#tip-box[Consider increasing the starting clan tier via mod settings if your chosen Wave 1 mods include such options. Starting at Clan Tier 1 or 2 reflects your character's established reputation and lets you jump into mid-game content faster.]
```

- [ ] **Step 2: Verify with shared + wave-0 + this**

```pwsh
@"
#import "typst/template.typ": *
#cover-page()
#setup-document()
#include "guide/shared/installation.typ"
#include "guide/shared/troubleshooting.typ"
#wave-header(0, "The Exile", wave-0-accent)
#include "guide/waves/wave-0/00-introduction.typ"
#include "guide/waves/wave-0/01-how-to-play.typ"
#include "guide/waves/wave-0/02-getting-started.typ"
#include "guide/waves/wave-0/03-mods.typ"
#include "guide/waves/wave-0/load-order.typ"
#wave-header(1, "The Alliance", wave-1-accent)
#include "guide/waves/wave-1/00-introduction.typ"
"@ | Out-File -FilePath "test-wave1-intro.typ" -Encoding UTF8
typst compile test-wave1-intro.typ output/test-wave1-intro.pdf
Remove-Item test-wave1-intro.typ -Force
```

- [ ] **Step 3: Commit**

```pwsh
git add guide/waves/wave-1/00-introduction.typ
git commit -m "feat: add Wave 1 introduction — Alliance backstory, objectives, character transition"
```

### Task 11: Write wave-1/01-strategy.typ

**Files:**
- Create: `guide/waves/wave-1/01-strategy.typ`

- [ ] **Step 1: Write the Wave 1 strategy guide**

Write the complete text (~2000-3000 words). Every subsection listed below must contain full explanatory prose, not just bullet points.

```typst
= Strategy — Wave 1

Wave 1 is where you stop reacting and start planning. This section covers mid-game strategy: economics, politics, warfare at scale, and the social game that determines who rises and who falls in Calradia.

== Mid-Game Economics

By now, trading between towns should feel familiar. Wave 1 introduces the next tier of economic play: passive income. You do not want to be the person hauling grain between villages. You want the grain to make you money while you are fighting a war on the other side of the map.

=== Workshops
[Workshops convert raw materials into finished goods. You buy a workshop in a town, assign a production type, and it generates daily income. Key variables: input cost (local raw material price), output price (local finished good price), village-bound production (which villages feed the town), prosperity (affects demand). Table: Brewery (grain towns), Smithy (iron villages), Velvet Weavery (silk villages, high prosperity). Avoid Pottery in towns that already produce cheap pottery. Tip-box about most reliable workshop types.]

=== Caravans
[Caravans are mobile trade operations led by a companion. Pay a setup fee, companion takes troops, caravan travels independently buying low and selling high. Higher Trade/Scouting/Tactics = better profits. Can be attacked and destroyed. Peacetime safe, wartime targets. Variable income. Warning-box: low-Scouting companions get ambushed — train companions before sending them.]

=== Land Ownership — Fiefs
[At Clan Tier 2+, you can be granted castles and towns as a vassal. Tax income based on prosperity and population. Tariff income based on market activity. Garrison expenses are your responsibility. Building projects upgrade walls, fairgrounds, workshops, farmlands. Each takes time and money but provides permanent bonuses. Tip-box: newly captured fiefs lose money for weeks/months before becoming profitable. Budget for this.]

== Kingdom Politics

=== Influence
[Influence is political currency. Sources: winning battles, sieges, high Charm, policies, Forum building. Spending: proposing/voting on policies, overruling council, forming armies, claiming fiefs. Table of generation methods with approximate values.]

=== Policies
[Table of 8-10 key policies with effects and strategic context. This is NOT the full reference table (that's in the Mechanics section). This table covers: which policies to SUPPORT as a vassal (Council of Commons, Senate for loyalty, Noble Retinues for party size) and which to OPPOSE (Feudal Inheritance, Royal Guard, Sacred Majesty — all benefit rulers at vassal expense). Each row: Policy Name, Effect, Strategic Advice.]

=== Councils & Voting
[When kingdom makes decisions, council votes. Each clan's vote weighted by influence. Vote with majority to build relations. Vote against to maintain principle (costs relations). Abstain if you don't care. Propose your own initiatives when influence pool is high.]

=== Marriage & Alliances
[Marriage is both mechanic and roleplaying tool. Marrying a noble gives relation boost with their entire clan. Spouse joins as companion-level character. Strategic marriages secure your position. Tip-box: marry for politics, not stats. A marriage to a powerful clan can save your kingdom when they vote with you on critical decisions.]

== Army Composition & Tactics

=== The Rock-Paper-Scissors of Troop Types
[Table: Shield Infantry (strong vs archers/infantry, weak vs heavy cavalry/horse archers), Shock Infantry (strong vs shields, weak vs archers/cavalry), Archers (strong vs unshielded/horse archers, weak vs shields/cavalry), Crossbowmen (strong vs heavy armor/shields, weak vs fast targets/overrun), Heavy Cavalry (strong vs archers/isolated infantry/routers, weak vs spears/dense forest), Horse Archers (strong vs slow infantry/static formations, weak vs dense terrain/crossbows/shield walls).]

=== Formation Basics
[Pre-battle deployment: Formation 1 = Infantry (shield wall on high ground), Formation 2 = Archers (behind infantry, elevated), Formation 3 = Cavalry (flank, hidden behind terrain), Formation 4 = Horse Archers (enemy flank, harassment). During battle: F1 movement commands (F1+F1 hold, F1+F2 follow, F1+F3 charge, F1+F4 advance), F2 facing, F3 formation shape, F4 fire at will/hold fire, F6 delegate to AI.]

=== The Hammer and Anvil
[Three-step tactic: 1) Anvil — infantry line holds enemy advance, 2) Hammer — cavalry circles wide around enemy flank, 3) Strike — when enemy fully engaged with infantry, charge cavalry into their rear. Rear attacks bypass shields and cause massive morale damage. Timing is critical — charge too early = enemy turns to meet you. Charge too late = infantry broken. Watch for the moment enemy troops face your infantry.]

=== Siege Tactics
[Attacking: build camp, construct ram + siege tower (minimum), bombard walls with trebuchets (breaches bypass gates), lead assault personally, prioritize enemy archers on walls, fight toward inner keep. Defending: destroy enemy engines with catapults before they reach walls, archers on walls + infantry at gates, fall back to choke points if breached, destroy enemy ram (without it they climb ladders = slaughter), sally out to destroy engines. Warning-box: sieges take time. Enemy army may arrive to break siege. Check diplomacy screen for nearby enemy armies before committing.]

== Companion Development

=== Role Specialization
[Table: Scout (Scouting, Tactics — detects enemies before they detect you), Surgeon (Medicine — reduces post-battle deaths), Quartermaster (Steward — party size and food efficiency), Engineer (Engineering — siege speed), Governor (Steward/Medicine/Engineering/Charm — fief growth when assigned to govern). Each companion should specialize in ONE role.]

=== Companion Parties
[At Clan Tier 2: create companion-led party. Operates independently — recruits, fights, earns income. Costs daily wage but typically earns more than it costs. Can be called into your army at no influence cost. High Steward + Leadership = better party leader. Tip-box: companion parties are your first taste of delegation. A well-managed one is net positive. A poorly managed one is a money pit.]

== Faction Selection

In Wave 0, you stayed mostly in Vlandia/Battania. In Wave 1, the entire map is open. Consider which faction aligns with your revenge narrative and preferred playstyle.

[Table with 6 factions: Vlandia (shock cavalry, crossbows, defensible west — homeland, direct path to revenge), Battania (best archers, forest mobility, weak cavalry, surrounded — repaying shelter debt), Empire (balanced rosters, central trade position, civil war split — meddling for army), Sturgia (best shield infantry, strong sieges, slow campaign — earn loyalty through combat), Khuzait (best horse archers, fastest movement, weak infantry/sieges — outsider path), Aserai (strong cavalry, excellent trade, defensible desert — safe base to build power). Columns: Strengths, Weaknesses, Narrative Fit.]
```

The implementer writes full prose for every bracketed section. Use the same second-person instructional tone as Wave 0's how-to-play guide. Every table must have complete data (not "fill in later"). Research Bannerlord mechanics if needed to ensure accuracy.

- [ ] **Step 2: Verify**

Use the same test file pattern — create test-wave1-strategy.typ including all prior includes plus this file, compile, verify no errors, remove test file.

- [ ] **Step 3: Commit**

```pwsh
git add guide/waves/wave-1/01-strategy.typ
git commit -m "feat: add Wave 1 strategy — economics, politics, army tactics, sieges, companions, factions"
```

### Task 12: Write wave-1/02-mechanics.typ

**Files:**
- Create: `guide/waves/wave-1/02-mechanics.typ`

- [ ] **Step 1: Write the Wave 1 mechanics guide**

Write the complete text (~2500-3500 words).

```typst
= Mechanics — Wave 1

This section covers individual game systems in depth. Each mechanic is explained with its underlying rules, optimal strategies, and how Wave 1 mods may affect it.

== Smithing Deep Dive

=== How Smithing Works
[Stamina: smithing pool, recovers by waiting in town. Smithing XP: earned by forging at higher difficulties. Parts: unlocked randomly from smelting weapons of the same type. Refining: convert materials up the chain (crude iron > wrought iron > iron > steel > fine steel > Thamaskene steel).]

=== The Profit Loop
[Step 1: Buy cheap weapons (Pugios ~200 denars, Tribesman Throwing Daggers, Wooden Hammers). Step 2: Smelt for high-quality materials (Pugios give fine steel). Step 3: Craft Two-Handed Swords with highest-tier parts unlocked. Step 4: Sell for 10x-50x material cost (10,000-60,000 denars). Tip-box: Pugios are the most efficient conversion in the game.]

=== Part Unlocking Strategy
[Early game: smelt every looted weapon — don't sell. Focus Two-Handed Swords (most profitable, most parts). Forge highest-difficulty sword as often as stamina allows. Use companions as additional smiths (each has own stamina pool). Don't refine for XP — forging gives all XP, refining is material conversion only.]

=== Crafting for Personal Use
[Table: Two-Handed Sword (versatile — good damage/speed/reach), Two-Handed Axe (shield-breaking, cleaves multiple enemies), Polearm/Glaive (mounted combat, long reach, one-shots at speed), One-Handed Sword (civic/siege, use with shield), Javelins (highest-tier one-shots any unit, limited ammo). Warning-box: smithing orders from nobles are profitable but frustrating if you lack required parts. Check order before accepting — failing costs relation.]

== Trade Routes

=== Supply & Demand Mechanics
[Every town has a good pool affected by: village production (attached villages flow to town), caravan activity (bring goods from other regions, lower prices), workshop production (consume raw, produce finished), prosperity (higher = more consumption = higher demand), recent events (sieges starve towns, skyrocketing prices).]

=== Profitable Deep Routes
[Silver Route: Vlandian silver/jewelry to Aserai nobles (premium), Aserai desert horses/dates/beer to Sturgia (horses scarce in north), Sturgian furs/hardwood back to Vlandia. Iron Circle: Epicrotea/Diathma iron ore to Zeonica/Onira/Danustica smithies, buy tools/weapons from smithy towns, sell tools to villages (production upgrades), loop back accumulating mules for cargo capacity.]

=== Trade Skill Perks
[Table of 5 key perks with level requirements: Appraiser (25 Trade — shows real market prices, removes guesswork), Caravan Master (75 Trade — +30% caravan profit, mandatory for caravan runners), Market Dealer (125 Trade — reduced trade penalty on low-supply goods), Granary (225 Trade — bought grain becomes party food, QoL), Everything Has a Price (300 Trade — trade fiefs, ultimate perk).]

== Influence Management

=== Generating Influence
[Table: winning battles (3-8 per battle, scales with importance), successful siege (10-20, scales with settlement), high Charm skill (passive daily), Forum building (passive daily), Council of Commons policy (modifier), donating troops to allied garrisons (variable by tier/quantity), donating prisoners (variable by tier/quantity).]

=== Spending Influence
[Army cohesion: daily cost to maintain, larger armies = more cost, long campaigns drain pools. Voting: proposing policies or overruling costs influence. Claiming fiefs: spend influence after siege to claim for yourself — more spent = more likely council votes your way. Tip-box: pool 100+ influence before joining a siege campaign. If you capture a town you want and have no influence to claim it, you did the fighting for nothing.]

=== Influence Economy
[Think of influence like gold: earn during peacetime (bandits, tournaments, Charm passive), hoard when not needed (doesn't decay), spend aggressively during wartime (influence buys armies and land), protect income (don't support policies that reduce generation). Danger-box: a kingdom that runs out of influence cannot form armies. Never let your pool hit zero.]

== Fief Development

=== Buildings Priority
[Table of 6 priorities with costs and rationale: 1 Fairgrounds (always first — increases loyalty = faster construction), 2 Granary (food storage — starvation kills prosperity + loyalty), 3 Workshop (income — more prosperity = more workshop income), 4 Militia Grounds (free defense without wages), 5 Walls (siege defense — build if on hostile border), 6 Siege Workshop (faster engine construction — only if forward operating base). Tip-box: don't build everything at once. 30-60 days each before bonuses. Loyalty first, food second, income third.]

=== Garrison Management
[Pay: you pay daily wages for garrison troops (separate from party troops). Auto-recruitment: fief auto-hires over time. Quality vs quantity: 50 Tier 3 troops stronger than 100 Tier 1 recruits, similar cost. Warning-box: garrison wages will bankrupt you if unchecked. Set wage limit 500-1000 denars/day. Disable auto-recruitment if budget exceeded. Manually recruit specific troops later.]

=== Governor Assignment
[Assign companion as Governor through Clan > Fiefs > Governor. Skills apply: Steward (construction speed), Medicine (prosperity growth), Engineering (wall/siege bonuses), Charm (loyalty). Culture match = +1 loyalty bonus (Battanian governor for Battanian fief, etc.). Tip-box: culture match is the single most impactful governor decision. Mismatched governor provides no bonus and may cause penalty.]

== Clan Tier Progression

[Table: Tiers 1-6 with renown thresholds, party size, and key unlocks. Tier 1: 50 renown, 40 party, mercenary. Tier 2: 150, 60 party, companion party x1, vassalage. Tier 3: 350, 80 party, companion party x2, policies. Tier 4: 900, 110 party, companion party x3. Tier 5: 2100, 140 party, companion party x4, kingdom founding. Tier 6: 5000, 180 party, maximum capabilities.]

=== Fastest Renown Sources
[Even-odds battles (equal strength = max renown, outnumbering = less, outnumbered = more), tournaments (consistent, safe), quest completions (check rewards before accepting), army participation (contribute to sieges/battles, earn based on contribution even if not leading).]
```

The implementer writes full prose for every bracketed section. Research Bannerlord mechanics for accuracy — smithing values, trade route town names, policy effects, and renown thresholds must match the actual game.

- [ ] **Step 2: Verify**

- [ ] **Step 3: Commit**

```pwsh
git add guide/waves/wave-1/02-mechanics.typ
git commit -m "feat: add Wave 1 mechanics — smithing, trade routes, influence, fiefs, clan tiers"
```

### Task 13: Write wave-1/03-mods.typ and wave-1/load-order.typ

**Files:**
- Create: `guide/waves/wave-1/03-mods.typ`
- Create: `guide/waves/wave-1/load-order.typ`

- [ ] **Step 1: Write Wave 1 modlist (13 placeholders)**

```typst
= Mod List — Wave 1

Wave 1 expands the mod list to include *Graphics*, *Light mechanic*, and *Content addition* mods alongside continued *UI/QoL* improvements. No heavy overhauls — those are reserved for Wave 2.

#warning-box[Read each placeholder carefully. The examples listed are real mod types that fit the slot — but the actual mod chosen must be verified for compatibility with BL 1.4.x / WS 1.2.x before being added permanently.]

// === Graphics (3) ===

// ---- MOD PLACEHOLDER: Graphics — Lighting & Atmosphere ----
#mod-placeholder("Graphics", ("Improved lighting engine with better ambient occlusion, bloom, and shadow cascades", "Time-of-day color grading that makes sunsets, dawn, and night more atmospheric", "Weather effects enhancement — rain, snow, and fog"), "Must be compatible with other graphics mods. No performance drops below 30 FPS on medium hardware (GTX 1060 or equivalent).")

// ---- MOD PLACEHOLDER: Graphics — Texture Enhancement ----
#mod-placeholder("Graphics", ("High-resolution texture pack for terrain, buildings, and environments", "Improved armor and weapon textures for all faction troops", "Better character face and skin textures"), "Must not exceed 4GB VRAM usage at 1080p with medium settings. Must not conflict with equipment mods.")

// ---- MOD PLACEHOLDER: Graphics — Character Models ----
#mod-placeholder("Graphics", ("Higher-poly character heads with better expressions and skin shading", "Improved hair and beard rendering", "Better body proportions and armor fitting"), "Must be compatible with any character creation mods in this wave.")

// === UI/QoL (2) ===

// ---- MOD PLACEHOLDER: UI/QoL — Enhanced Encyclopedia ----
#mod-placeholder("UI/QoL", ("Search and filter functionality for the in-game encyclopedia", "Show troop upgrade trees with stat comparisons", "Track relationship changes, quest history, and notable interactions"), "Must not alter any underlying game data — display and search only.")

// ---- MOD PLACEHOLDER: UI/QoL — Battle Camera & Controls ----
#mod-placeholder("UI/QoL", ("Free camera mode in battles (spectator and replay)", "Customizable key bindings for formation commands", "Better death cam — follow your killer or your troops after death"), "Must not allow control of troops after death (no cheating/god-mode).")

// === Light Mechanic (5) ===

// ---- MOD PLACEHOLDER: Light Mechanic — Diplomacy Expansion ----
#mod-placeholder("Light mechanic", ("Non-aggression pacts, defensive alliances, and trade agreements between kingdoms", "Peace treaty duration enforcement — prevents immediate re-declaration of war", "Messenger system — send diplomatic proposals without traveling to the ruler"), "Must not override core kingdom mechanics. Must integrate with BL 1.4.7's faction AI. Diplomacy should be earned, not bought.")

// ---- MOD PLACEHOLDER: Light Mechanic — Improved AI ----
#mod-placeholder("Light mechanic", ("Better AI battle tactics — enemy lords use formations, flanking, and terrain", "Improved AI decision-making for declaring war and making peace", "AI lords manage their fiefs and parties more efficiently"), "Must not make the game unfair. AI should be smarter, not omniscient. Must still be beatable by a skilled player on normal difficulty.")

// ---- MOD PLACEHOLDER: Light Mechanic — Tournament & Arena Expansion ----
#mod-placeholder("Light mechanic", ("More varied tournament prizes including named weapons and armor", "Different tournament formats (team fights, archery contests, jousting)", "Arena betting with dynamic odds based on your reputation"), "Must not make tournaments a primary income source — prizes should be cosmetic or sidegrade-tier, not best-in-slot.")

// ---- MOD PLACEHOLDER: Light Mechanic — Bandit & Minor Faction Overhaul ----
#mod-placeholder("Light mechanic", ("Bandit parties scale with game time — late-game bandit armies instead of irrelevant looters", "Minor factions have unique troops, leaders, and motivations instead of being generic", "Bandit hideouts have more variety and better rewards for clearing them"), "Must not make bandits overpower players in early game. Scaling should match clan tier progression.")

// ---- MOD PLACEHOLDER: Light Mechanic — Culture & Settlement ----
#mod-placeholder("Light mechanic", ("Settlements slowly adopt the culture of their owner over time", "Cultural bonuses for troops recruited in their native regions", "Cultural festivals and events that affect prosperity and loyalty"), "Must not allow instant culture conversion. Change should take multiple in-game years.")

// === Content Addition (3) ===

// ---- MOD PLACEHOLDER: Content Addition — New Equipment ----
#mod-placeholder("Content addition", ("Additional historically-inspired armor sets for each faction", "More weapon variety — different sword types, polearms, and bows", "New horse breeds with distinct stats and appearances"), "Must not add overpowered items. New equipment should be sidegrades to existing items, not strict upgrades. Must be compatible with texture mods.")

// ---- MOD PLACEHOLDER: Content Addition — Expanded Troop Trees ----
#mod-placeholder("Content addition", ("Additional troop upgrade paths for all factions", "Noble troops have more distinct specializations from common troops", "Unique troop types for minor factions and mercenary companies"), "Must maintain faction identity. Vlandian troops should not become better archers than Battanians. Must not create unbeatable combinations.")

// ---- MOD PLACEHOLDER: Content Addition — Companions & NPCs ----
#mod-placeholder("Content addition", ("More companion variety — different backgrounds, skills, and personalities", "Companions have personal quests and storylines", "More named NPCs in the world with unique dialogue and interactions"), "Must not add companions that trivialize early game. Dialogue must not conflict with the game's tone.")
```

- [ ] **Step 2: Write Wave 1 load order**

```typst
= Load Order — Wave 1

The correct load order for all Wave 1 mods, listed from top to bottom. Mods loaded first appear at the top; mods loaded last override and appear at the bottom.

#warning-box[The load order is a suggested template based on placeholder mods. When real mods are added, update this table with actual mod names and verified positions. Load order is critical in Wave 1 — mods that affect the same systems must be ordered correctly to avoid overrides and conflicts.]

=== Load Order Rules (Wave 1)

+ *UI/QoL mods*: Load first — they should not override game mechanics
+ *Graphics mods*: Load after UI/QoL — they affect rendering, not logic
+ *Content addition mods*: Load after graphics — new items and troops must load before mods that modify them
+ *Light mechanic mods*: Load last — they modify game systems and need to see the full content stack

#table(
  columns: (auto, auto, auto, 1fr),
  stroke: 0.5pt + header-color.transparentize(60%),
  [*Position*], [*Category*], [*Mod*], [*Notes*],
  [1.], [UI/QoL], [Enhanced Encyclopedia], [UI-only, loads first to avoid conflicts],
  [2.], [UI/QoL], [Battle Camera & Controls], [UI-only, independent],
  [3.], [Graphics], [Lighting & Atmosphere], [Rendering layer, must load before texture mods],
  [4.], [Graphics], [Texture Enhancement], [Replaces base textures],
  [5.], [Graphics], [Character Models], [Depends on texture mod for base textures],
  [6.], [Content addition], [New Equipment], [Adds items before troop mods reference them],
  [7.], [Content addition], [Expanded Troop Trees], [References equipment from New Equipment],
  [8.], [Content addition], [Companions & NPCs], [Independent content addition],
  [9.], [Light mechanic], [Diplomacy Expansion], [Modifies kingdom diplomacy layer],
  [10.], [Light mechanic], [Improved AI], [Modifies game logic — loads after content],
  [11.], [Light mechanic], [Tournament & Arena], [Modifies tournament logic],
  [12.], [Light mechanic], [Bandit & Minor Faction], [Modifies faction logic],
  [13.], [Light mechanic], [Culture & Settlement], [Modifies settlement logic — loads last to override culture systems],
)
```

- [ ] **Step 3: Verify full Wave 0 + Wave 1 builds**

Create test-wave1.typ including all shared + Wave 0 + Wave 1 files, compile, verify zero errors, remove test file.

- [ ] **Step 4: Commit**

```pwsh
git add guide/waves/wave-1/03-mods.typ guide/waves/wave-1/load-order.typ
git commit -m "feat: complete Wave 1 — 13 placeholders across 4 categories, categorized load order"
```

---

## Phase 6: Wave 2 — The Reckoning

### Task 14: Write wave-2/00-introduction.typ

**Files:**
- Create: `guide/waves/wave-2/00-introduction.typ`

- [ ] **Step 1: Write the Wave 2 introduction**

Write the full narrative text:

```typst
= Introduction

You have crossed the mountains. It took longer than you imagined — months of campaigning, three sieges, two betrayals, and a battle in a valley that still gives you nightmares — but you are here. The banners of your allies stretch across the fields before your ancestral keep. Vlandians in their heavy plate. Battanians with their longbows strung. Even a company of Khuzait horse archers, hired at ruinous expense, their arrows tipped with Thamaskene steel.

Your uncle sits behind those walls. His spies told him you were coming weeks ago — there was no hiding an army of this size. He has pulled every garrison from every holding he still controls. The siege engines you see on the battlements are the same ones your father commissioned, years before the betrayal. The men on those walls are the sons of the men who killed your family. Some of them know who you are. Some of them remember.

Let them remember.

You could send an envoy. You could demand surrender, offer terms, negotiate a bloodless transfer of power. The diplomat in you — the part that learned charm and persuasion in a hundred quiet conversations — whispers that this is the smart play. The smart play preserves lives. The smart play preserves the kingdom you will inherit.

But the smart play is not why you came here.

You did not cross half a continent and spill rivers of blood to sit at a negotiation table with the man who murdered your family. You did not build an army, forge alliances, and earn the loyalty of thousands to sign a treaty that lets him keep his head. You came here for one thing, and you will have it, and no power in Calradia will stand between you and it.

The crown does not exist yet. Your father never wore one — he was a baron, not a king. But you will forge it yourself, from the melted-down swords of your enemies, and you will place it on your own head because no one else has the right. No crown is given. No crown is earned. No crown comes without blood.

Let it be blood.

== Wave 2 Objectives

Wave 2 is total war. Your goals:

+ Found or claim a kingdom and lead it to dominance over Calradia
+ Master mass-scale warfare — coordinate multiple armies across multiple fronts
+ Manage kingdom-level politics — vassals, policies, and internal stability
+ Build an economic empire that funds constant war
+ Assemble the strongest possible army with endgame-tier troops and equipment
+ Achieve total victory — whether that means conquering the map or achieving your personal objective

== What Changes in Wave 2

Wave 2 is the heaviest mod experience:

+ *Heavy overhaul mods*: Core systems are changed. Economy, combat, diplomacy, and kingdom management may work differently from vanilla.
+ *All previous categories*: Graphics, UI/QoL, light mechanics, and content additions also apply. Wave 2 includes everything from Wave 1 plus overhauls.
+ *Maximum mod count*: Wave 2 has the most mods of any wave. Load order management is critical.

#danger-box[Wave 2 is designed for veteran players who understand every mechanic from Waves 0 and 1. If you have not completed (or at least extensively played) Wave 1, Wave 2 will be overwhelming and likely frustrating. The difficulty is higher, the systems are deeper, and the margin for error is razor-thin.]

== Your Character, Ascended

You are no longer the refugee child or the ambitious mercenary. You are a warlord:

- *Age*: Mid-to-late twenties (approximately 10 years after the massacre)
- *Skills*: Your build should be complete. You have invested in every attribute and every skill that matters for your playstyle. Specialize ruthlessly — a generalist is a dead generalist in Wave 2.
- *Reputation*: Your renown is high and your enemies are many. Lords remember your victories, your betrayals, and your grudges. Every diplomatic interaction is weighted by years of history.
- *Starting wealth*: You begin with significant resources — 50,000+ denars, workshops, and caravans. You are not building from scratch; you are deploying existing wealth.

=== Difficulty

Wave 2 recommends maximum difficulty settings:

#table(
  columns: (auto, auto),
  [*Setting*], [*Wave 2 Value*],
  [*Player Received Damage*], [Realistic (100%) — every hit matters],
  [*Troop Received Damage*], [Realistic — your troops are mortal],
  [*Recruitment Difficulty*], [Realistic — no recruitment shortcuts],
  [*Combat AI Difficulty*], [Veteran — enemies use Wave 2 modded AI at full capacity],
  [*Ironman Mode*], [Recommended — no savescumming, live with your decisions],
  [*Clan Member Death*], [Enabled — companions and family can die permanently],
)

#tip-box[If Ironman mode feels too punishing during your first Wave 2 attempt, start with Normal saving. Wave 2 is difficult enough without the fear of permanent death. Turn Ironman on when you feel confident in your kingdom's stability.]
```

- [ ] **Step 2: Verify**

Test with all prior includes + this file. Compile, verify, remove test.

- [ ] **Step 3: Commit**

```pwsh
git add guide/waves/wave-2/00-introduction.typ
git commit -m "feat: add Wave 2 introduction — Reckoning backstory, total war objectives, max difficulty"
```

### Task 15: Write wave-2/01-strategy.typ

**Files:**
- Create: `guide/waves/wave-2/01-strategy.typ`

- [ ] **Step 1: Write the Wave 2 strategy guide**

```typst
= Strategy — Wave 2

You have fought battles. You have won wars. You have built a kingdom from nothing. Now you must manage it — and expand it — at a scale where your personal sword matters less than your strategic mind.

== Endgame Warfare

The battles of Wave 2 are not skirmishes. They are campaigns involving thousands of troops across multiple armies and multiple fronts.

=== Multi-Army Strategy
[At Clan Tier 4+: your party + companion parties + allied lords = 1,000+ troops in one army. But one army can only be in one place. Two-army doctrine: Army A (Offensive) led by you with best troops and capable companions — captures territory. Army B (Defensive) led by trusted companion or allied lord with garrison-quality troops — patrols borders, responds to incursions. You cannot be in two places at once, but your kingdom can. Tip-box: a kingdom that commits 100% to offense loses its home territory to enemy raids.]

=== War Target Selection
[Don't fight everyone at once. Choose wars by: geographic adjacency (attack neighbors, distant wars drain cohesion), enemy war exhaustion (faction fighting 2+ enemies = easy target), settlement value (high-prosperity towns > castles — rich town funds next war, castle just costs garrison wages), choke points (castles on passes/bridges control movement).]

=== Sustaining an Offensive
[Supply lines: capture enemy villages for food, assign high-Steward QM, winter = more food consumption. Reinforcement pipelines: keep trained troops in core fief garrisons, rotate wounded rear/fresh forward, use companion parties as ferries. Warning-box: siege in enemy territory is a logistics challenge. Need enough food to outlast defenders' months of supplies. Run out of food = lose the siege.]

== Kingdom Management

=== Vassal Management
[Grant fiefs after sieges — especially to vassals who contributed troops. Don't hoard fiefs — landless vassals leave. Support pro-vassal policies (Council of Commons, Senate) until your position is secure. Vote with your vassals on decisions they care about — relation is a resource like gold. Danger-box: vassals defecting during war can turn a winning campaign into a losing one overnight. Monitor relation levels of border vassals especially.]

=== Internal Stability
[Loyalty mechanics: culture match (governor, owner), security (garrison size), policies, recent ownership debuff. Rebellion triggers: loyalty below 15-20 for extended period. Prevent with culture-matched governor, fairgrounds, garrison, festival funding during crisis. Multi-front war reduces ability to suppress rebellions — stabilize borders before expanding.]

=== Vassal Defection Prevention
[Relation thresholds: keep vassals above -20 relation. Fief count: vassals with 0-1 fiefs are restless — grant from conquests. Culture match: giving a Vlandian lord a Battanian fief causes friction. War state: vassals rarely defect during peacetime. Shared enemies keep them loyal — always have one common enemy.]

== Advanced Diplomacy

=== Alliance Networks
[Mutual defense pacts: coordinate wars with allied kingdoms. Your wars become their wars and vice versa. Risk: allied kingdom's wars drag you into conflicts you didn't choose. Breaking alliances costs massive relation and triggers a war cooldown. Tip-box: only ally with kingdoms you share borders with. A distant ally cannot reinforce you but can drag you into their regional wars.]

=== Strategic Betrayals
[Timing: break treaty when target is already at war with multiple factions (your war is the tipping point). Window of vulnerability: immediately after peace treaty, garrison sizes are low and armies are recovering. Reputation cost: betrayals affect ALL faction relations, not just the target. Betray too often and no one will ally with you.]

=== Non-Aggression Pacts
[Secure one border while expanding on another. Essential for multi-front kingdoms. Approach the ruler of a neighboring kingdom — pacts cost influence to propose and must pass a council vote. Duration varies by diplomacy mods (see Wave 2 modlist).]

== Succession Planning

=== Heirs
[Children born from marriage become playable clan members after ~18 in-game years. Education: assign a guardian companion, child inherits guardian's skill affinities. Tip-box: children are a multi-decade investment. Don't expect to play as them unless you're running a very long campaign or using mods that accelerate aging.]

=== Clan Longevity
[Multiple family members = multiple party leaders, governors, and backup characters if your main dies. Spread marriage alliances across factions — your brother married to a Vlandian clan, your sister to a Battanian one. When one faction betrays you, the other marriage may save the alliance.]

== Total War Logistics

=== Food Supply Chains
[Army-scale consumption: a 1,000-man army eats 20-30 food per day. A captured village provides ~50-100 food one time. Plan resupply stops every 3-4 days of marching. Autumn harvest = abundance. Winter = scarcity. Besiege towns in autumn (defenders have less food storage), not winter (you'll starve first).]

=== Reinforcement Pipelines
[Companion parties as couriers: send a companion from the rear with fresh troops while your army holds position. Garrison rotation: transfer veteran troops from one front to another by rotating through central garrison hubs. Time cost: a reinforcement from your capital to a distant front takes 5-10 in-game days. Plan ahead.]

=== War Exhaustion
[Influence drain: raising and maintaining armies costs influence. Council will refuse to continue war at zero influence. Troop morale: long campaigns with no reprieve reduce troop morale. Vassal fatigue: vassals get tired of constant war — they want peacetime to manage fiefs and earn money. Cycle between war (6-12 months) and peace (3-6 months) to manage exhaustion.]

== Map-Painting Strategy

=== Conquest Order
[Weakest first, strongest last. Order: eliminate minor factions and weakened kingdoms first. Encirclement: capture territory that surrounds remaining enemies — cut off their expansion routes. Never fight a two-front war if you can help it. Conquer one direction, stabilize, then pivot.]

=== Choke Points
[Strategic castles: mountain passes that block entire army movements. Bridges: river crossings that force enemies into predictable paths. A single castle in the right location can defend an entire border from a specific direction. Garrison these heavily — losing a choke point opens your interior to raids.]

=== Vassal Distribution
[Place vassal fiefs strategically: border vassals with military-focused clans (their parties defend raids), interior vassals with economy-focused clans (their prosperity funds the war). Give neighboring fiefs to the same clan — they defend the region as a unit. Don't spread one clan's holdings across the map — they can't defend scattered territory.]
```

The implementer expands every section into full prose. Research: Bannerlord vassal relation thresholds, loyalty mechanics formulas, food consumption rates, and policy effects for accuracy.

- [ ] **Step 2: Verify**

- [ ] **Step 3: Commit**

```pwsh
git add guide/waves/wave-2/01-strategy.typ
git commit -m "feat: add Wave 2 strategy — endgame warfare, kingdom management, diplomacy, logistics, map conquest"
```

### Task 16: Write wave-2/02-mechanics.typ

**Files:**
- Create: `guide/waves/wave-2/02-mechanics.typ`

- [ ] **Step 1: Write the Wave 2 mechanics guide**

Note: Wave 2 mechanics provides the FULL kingdom policies reference table (all policies, their exact effects, best eras, recommendations). Wave 1's strategy section covered only the strategic subset. This is the comprehensive reference.

```typst
= Mechanics — Wave 2

Advanced systems for ruling a kingdom. These mechanics assume you are the ruler — the dynamics shift significantly when you are the one making decisions for an entire faction.

== Kingdom Policies — Full Reference

[Research: list EVERY kingdom policy in Bannerlord (approximately 15-20 policies). Table columns: Policy Name, Effect (exact mechanical description), Support Required (percentage of council or ruler-only), Best Era (early/mid/late/never), Recommendation (enact/abolish/conditional). Include policies like: Council of Commons, Senate, Feudal Inheritance, Noble Retinues, Citizenship, Imperial Towns, Royal Guard, Sacred Majesty, Peerage, Trial by Jury, Serfdom, Debasement of Currency, Forgiveness of Debts, Hunting Rights, Grazing Rights, Land Tax, Road Tolls, State Monopolies, War Tax. For each: explain the tradeoff and when it's worth the cost.]

== Vassal Management in Detail

=== Fief Distribution Algorithm
[The game's decision logic when a fief needs assignment: participation score (who contributed most to the siege), clan tier, existing holdings (fewer = higher priority), relation with ruler, culture match with fief. As ruler, you can spend influence to override the algorithm — the more influence you spend, the more likely the council accepts your choice.]

=== Preventing Defection
[Three pillars of vassal loyalty: relation (+50 is safe, -20 is danger zone), fief count (1-3 fiefs = content, 0 = restless, 4+ = the vassal won't leave regardless), shared enemies (fighting the same enemy = +relation over time). Marriage ties add a permanent relation buffer. Non-aggression pacts don't affect vassal loyalty — only external relations.]

=== Removing Problem Vassals
[Three methods: vote to exile (costs influence, requires council support, they take their fiefs), provoke rebellion (starve their fief of garrison support, let rebels take it, then reconquer for yourself), let enemies capture them (decline to ransom, they rot in enemy dungeon = no influence on council). Warning-box: exiled vassals join enemy kingdoms and bring their grievances (and knowledge of your borders) with them.]

== Economy at Scale

=== Taxation Optimization
[Policy effects on tax rates. Prosperity as multiplier on tax income. Tariff mechanics: based on trade volume through the town, increased by caravans and workshops. A prosperous interior town generates more passive income than a front-line town with high tax rate but low prosperity.]

=== Workshop Empire Management
[Cap per clan: 1 workshop base, +1 per clan tier above 2. Max 5 workshops per clan. Optimal placement: in towns you own (no rent expenses), with matching village production. Synergy: a smithy in a town you own with iron villages attached + a caravan trading weapons = compound income.]

=== War Profiteering
[Selling captured gear: post-battle loot scales with enemy troop quality. Elite enemy armies drop high-tier equipment worth thousands. Ransoming lords: captured enemy lords can be ransomed at taverns. Higher-tier lords = higher ransom. Ransom values decrease if you ransom the same lord repeatedly. Tribute payments: defeated kingdoms pay daily tribute to the victor. Exploit: defeat a faction, demand tribute, let them recover while you fight someone else, return and demand more tribute.]

== Rebellion Suppression

=== Loyalty Mechanics
[Factors affecting loyalty in detail: culture match (+1 if governor matches, +1 if owner matches), governor skills (Charm = loyalty, Steward = security bonus), security (garrison size relative to population), policies (several affect loyalty), starvation (below zero food = rapid loyalty loss), recent ownership (-3 debuff decays over 30 days), militia presence (protects against rebellion but doesn't affect loyalty stat).]

=== Suppressing Rebellion
[Garrison threshold: security must exceed population-derived threshold to prevent rebellion. Governor: assign companion with high Charm and matching culture. Festival funding: spend denars to boost loyalty temporarily — expensive but stops immediate rebellion. Building priority: Fairgrounds > Granary (no food = no loyalty) > Workshop (prosperous towns have higher loyalty thanks to content populace).]

=== Exploiting Enemy Rebellion
[Supporting enemy rebels: some mods let you fund rebel factions in enemy towns, accelerating their rebellion. Capturing secessionist towns: when a town rebels, it becomes an independent minor faction — you can attack and conquer it without declaring war on the parent kingdom. No war declaration = no allies called in. The parent kingdom may reconquer it later, but if you hold it long enough, the ownership debuff decays and it becomes yours.]

== Cultural Integration

=== Culture Conversion
[Passive conversion: each day, settlement loyalty slowly converts to owner's culture if governor matches. Rate: approximately 1-2% per in-game year in vanilla. Policy acceleration: some policies increase conversion rate. Modded: Wave 2 overhaul mods may add active conversion mechanics (missionaries, festivals, forced relocation). Check mod descriptions.]

=== Multicultural Kingdoms
[Managing loyalty penalties: a multicultural kingdom has fiefs of many cultures. Each fief without matching governor gets a -1 or -2 loyalty penalty. Distributing culture-matching vassals: give Imperial fiefs to Imperial vassals, etc. This requires recruiting vassals from every culture you conquer — which means your kingdom must be diplomatically attractive to lords from all factions.]

=== Cultural Benefits
[Native recruitment: troops recruited in their native culture's territory are available at higher tiers than in foreign territory. Morale effects: troops of your culture have a small morale bonus when fighting for a same-culture kingdom. Prosperity: towns and villages of the owner's culture gain prosperity faster. These are passive bonuses — they won't win wars alone, but they compound over campaigns.]
```

The implementer must research and write the full kingdom policies table. This is the most research-intensive section of the entire guide. Every policy must have the exact effect as implemented in Bannerlord.

- [ ] **Step 2: Verify**

- [ ] **Step 3: Commit**

```pwsh
git add guide/waves/wave-2/02-mechanics.typ
git commit -m "feat: add Wave 2 mechanics — full policy reference, vassal management, economy at scale, rebellions, culture"
```

### Task 17: Write wave-2/03-mods.typ and wave-2/load-order.typ

**Files:**
- Create: `guide/waves/wave-2/03-mods.typ`
- Create: `guide/waves/wave-2/load-order.typ`

- [ ] **Step 1: Write Wave 2 modlist (6 placeholders)**

```typst
= Mod List — Wave 2

Wave 2 introduces *Heavy overhaul* mods — mods that fundamentally change or replace core systems. This is the most transformative and highest-risk wave. Every previous category (UI/QoL, Graphics, Light mechanic, Content addition) is also present, inherited from Waves 0 and 1.

#danger-box[Wave 2 load order is the most fragile. A single misplaced mod can cause cascading conflicts. Verify with Auto-Sort, then manually adjust to match the load order section. When adding real mods, test the full load order before starting a campaign.]

// === Heavy Overhaul (5) ===

// ---- MOD PLACEHOLDER: Heavy Overhaul — Economy & Trade Overhaul ----
#mod-placeholder("Heavy overhaul", ("Rebalanced prices, supply/demand rework across all regions", "Workshop profitability overhaul — workshops are long-term investments, not quick money", "Trade skill rebalanced — 300 Trade is genuinely game-changing rather than a grind"), "Must make economy harder without making it unfun. Must integrate with any diplomatic or kingdom overhaul mods.")

// ---- MOD PLACEHOLDER: Heavy Overhaul — Kingdom Management Overhaul ----
#mod-placeholder("Heavy overhaul", ("Vassal management rework — more nuanced loyalty, more meaningful councils", "Policy system expanded — more policies, more consequences, harder to change", "Rebellion mechanics deepened — unrest visible before it triggers, more player agency", "Diplomacy system rebuilt — alliances, non-aggression pacts, tribute, hostages"), "Must not make kingdom stability trivial or impossible. Must allow player agency in all decisions. Must integrate with other Wave 2 overhaul mods.")

// ---- MOD PLACEHOLDER: Heavy Overhaul — Combat & Damage Overhaul ----
#mod-placeholder("Heavy overhaul", ("Armor formula rework — armor matters more, naked berserkers are no longer viable", "Weapon balance pass — all weapon types have a role, no 'never-use' categories", "New damage types and injury system — wounds have consequences beyond the battle"), "Must increase realism without breaking faction balance. Sturgians should still win shield walls. Khuzait should still win open-field cavalry fights.")

// ---- MOD PLACEHOLDER: Heavy Overhaul — Troop & Recruitment Overhaul ----
#mod-placeholder("Heavy overhaul", ("Recruitment reworked — culture, region, and relation all affect who you can recruit", "Troop trees expanded and rebalanced — every faction has a viable late-game composition", "Noble vs common troop distinction meaningful — noble troops are special, not just +1 tier"), "Must preserve faction identity. Battanians remain best archers. Vlandians remain best shock cavalry. No faction should become the answer to every question.")

// ---- MOD PLACEHOLDER: Heavy Overhaul — World & Faction Overhaul ----
#mod-placeholder("Heavy overhaul", ("New factions and map changes — expanded world with more political actors", "Dynamic world events — famines, plagues, great tournaments, religious schisms", "Cultural mechanics deepened — culture conversion, cultural tensions, cultural alliances"), "Must be compatible with BL 1.4.7 map data. Must integrate with other Wave 2 overhaul mods. Must not introduce game-breaking event chains.")

// === Content Addition (1) ===

// ---- MOD PLACEHOLDER: Content Addition — Endgame Equipment & Artifacts ----
#mod-placeholder("Content addition", ("Legendary weapons and armor for late game — rewards for the greatest achievements", "Unique items from specific quests, bosses, or events — not buyable, only earnable", "Cosmetic variations — look like a king when you become one"), "Must not add pre-endgame power creep. Legendary items should require legendary achievements. A fresh character should not be able to acquire them.")
```

- [ ] **Step 2: Write Wave 2 load order**

```typst
= Load Order — Wave 2

The correct load order for all Wave 2 mods, listed from top to bottom. This includes mods inherited from Waves 0 and 1 plus the new Wave 2 entries.

#warning-box[The load order is a suggested template based on placeholder mods. When real mods are added, update this table with actual mod names and verified positions.]

=== Load Order Rules (Wave 2)

+ *UI/QoL and Graphics*: Inherited from Waves 0 and 1 — load first
+ *Content addition*: Inherited from Wave 1 + new Wave 2 content — load after graphics
+ *Light mechanic*: Inherited from Wave 1 — load after content
+ *Heavy overhaul*: New in Wave 2 — load last, ordered by system dependency:
  1. Economy (other systems depend on prices and trade)
  2. World & Faction (map and faction changes define the playing field)
  3. Combat & Damage (combat math applies on top of faction balance)
  4. Troop & Recruitment (troops depend on faction definitions)
  5. Kingdom Management (highest-level system — depends on everything below)

#danger-box[Wave 2 load order is the most fragile. A single misplaced mod can cause cascading conflicts. Test the full load order before starting a campaign. When in doubt, load the mod that changes the FEWER systems first, and the mod that changes the MOST systems last.]
```

- [ ] **Step 3: Verify full Wave 0 + Wave 1 + Wave 2 builds**

Create test-wave2.typ including ALL includes from _index.typ (shared + all 3 waves). Compile. Verify zero errors. Remove test file.

- [ ] **Step 4: Commit**

```pwsh
git add guide/waves/wave-2/03-mods.typ guide/waves/wave-2/load-order.typ
git commit -m "feat: complete Wave 2 — 6 placeholders (5 heavy overhaul, 1 content addition), load order with dependency rules"
```

---

## Phase 7: Final Verification

### Task 18: Full build

- [ ] **Step 1: Build the complete PDF using the real _index.typ**

All 17 include files now exist. Run the actual build:

```pwsh
./build.bat
```

Expected: typst found, fonts checked, PDF builds with zero errors. All 17 content files included successfully.

If build fails: the Typst error message includes the file path and line number. Common causes: unclosed bracket in a code block (check callout boxes), mismatched == heading within = section, missing comma in table rows, undefined function call (misspelled #tip-box() etc.). Fix the error in the indicated file and re-run.

- [ ] **Step 2: Automated output checks**

```pwsh
$pdf = "output/No-Crown-Without-Blood.pdf"
Write-Host "File size: $((Get-Item $pdf).Length / 1KB) KB"
```

Expected: File size > 100 KB (confirms substantial content rendered, not an empty template).

- [ ] **Step 3: Check for compilation warnings**

```pwsh
typst compile guide/_index.typ output/No-Crown-Without-Blood.pdf 2>&1 | Select-String -Pattern "warning" -CaseSensitive:$false
```

Expected: No warnings (or only font fallback warnings, which are acceptable). Warnings about unresolved references, missing images, or unknown functions indicate bugs.

- [ ] **Step 4: Verify include chain is complete**

```pwsh
$index = Get-Content "guide/_index.typ" -Raw
$includes = [regex]::Matches($index, '#includes+"([^"]+)"') | ForEach-Object { $_.Groups[1].Value }
Write-Host "Include count: $($includes.Count)"
foreach ($inc in $includes) {
    $exists = Test-Path $inc
    Write-Host "$(if($exists){'[OK]'}else{'[MISSING]'}) $inc"
}
```

Expected: 17 includes, all marked [OK]. Any [MISSING] entry means a file is referenced but doesn't exist — create it.

- [ ] **Step 5: Verify non-PDF working docs are excluded**

Confirm `mod-conflicts.md` and `mod-ideas.md` are not referenced in `_index.typ` or any include chain. These are markdown files in the project root and must not appear in the PDF.

```pwsh
Select-String -Path "guide/_index.typ","guide/shared/*.typ","guide/waves/wave-*/*.typ" -Pattern "mod-conflicts|mod-ideas" -CaseSensitive:$false
```

Expected: No matches. If matches are found, remove the reference — these files are maintainer working documents only.

- [ ] **Step 6: Commit**

```pwsh
git add guide/_index.typ
git commit -m "chore: final verification — full PDF builds, all 17 includes verified, no warnings, working docs excluded"
```

---

## Summary

**Total tasks:** 18 (condensed from initial draft by combining related file writes)
**Files created:** 20 (.typ content, .typ template x2, .bat, .md x4)
**Commits:** 12 (one per logical unit — no empty commits, no orphaned file batches)
**Estimated time:** 6-12 hours (bulk in Tasks 8, 11, 12, 15, 16 — research-heavy prose writing)
**Dependencies:** Scaffold > Template > Shared content > Wave 0 > Wave 1 > Wave 2 > Final verify. Each phase depends on the previous.

**Verification pattern:** Every content task includes a test-build step using a temporary .typ file that includes only the files written so far. This isolates errors to the most recently written file. The final task (18) verifies the complete _index.typ build.

**Human review gates:** After Task 18, a human must visually inspect the PDF for: cover page design, TOC accuracy, wave header colors, callout box rendering, table styling, link clickability, and page headers/footers. These are visual quality checks that cannot be automated.
