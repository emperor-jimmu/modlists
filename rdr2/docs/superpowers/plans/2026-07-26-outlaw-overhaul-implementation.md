# Outlaw Overhaul Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Scaffold the Outlaw Overhaul RDR2 modlist project with Typst PDF generation, guide skeletons, and project documentation.

**Architecture:** Single Typst project with `guide/master.typ` as entry point that `#include`s section files. `theme.typ` provides shared show rules, colors, and fonts. A batch file orchestrates `typst compile` with proper error handling. Guide content is skeleton — mods filled in later.

**Tech Stack:** Typst 0.15, PowerShell/batch for compilation, Playfair Display + Inter fonts

---

### File Inventory

| File | Purpose |
|------|---------|
| `AGENTS.md` | Project instructions / constraint memory |
| `README.md` | Project overview |
| `fonts/*.ttf` | Bundled fonts (Playfair Display + Inter) |
| `guide/master.typ` | Entry point, cover page, outline, includes |
| `guide/theme.typ` | Show rules, color constants, page setup |
| `guide/00-foreword.typ` | Intro, credits, version scope |
| `guide/01-installation.typ` | LML setup, requirements |
| `guide/02-wave0-guide.typ` | Wave 0 beginner guide skeleton |
| `guide/03-wave1-guide.typ` | Wave 1 advanced guide skeleton |
| `guide/04-modlist.typ` | Mod catalog skeleton by category |
| `guide/05-appendix.typ` | Troubleshooting skeleton |
| `conflicts.md` | Mod conflict tracking |
| `mod-ideas.md` | Mod ideas needing development |
| `generate-pdf.bat` | Build script with error handling |

---

### Task 1: Project Scaffolding

**Files:**
- Create: `AGENTS.md`
- Create: `README.md`
- Create: `conflicts.md`
- Create: `mod-ideas.md`
- Create: `guide/` directory
- Create: `fonts/` directory
- Create: `output/` directory

- [ ] **Step 1: Create directories**

```bash
mkdir -p guide fonts output
```

- [ ] **Step 2: Write AGENTS.md**

```markdown
# Outlaw Overhaul — Project Instructions

This project is a modlist and guide for Red Dead Redemption 2 (version 1.32).

## Key Constraints
- All mods must be compatible with RDR2 version 1.32 (March 19, 2024 patch). Check mod pages for stated version. If no version stated, use last-updated date — mods updated after Jan 2024 are likely OK. Test in clean LML environment.
- Mod loader: Lenny's Mod Loader (LML) only.
- No redundant or conflicting mods.
- No porn mods. Adult/nude allowed where thematically relevant (saloon realism, body diversity). Not allowed: explicit sexual content, sexual animations, minors, bestiality. Ask user if in doubt.
- No cheating/overpowered/all-knowing mods.

## Waves
- Wave 0: Vanilla/QoL only. Beginner-friendly. Theme: honorable drifter.
- Wave 1: Graphics, content, new mechanics. Experienced. Theme: full outlaw descent.

## PDF Generation
- Typst 0.15. Run `generate-pdf.bat` to compile.
- Fonts bundled in `fonts/`.
- Logo: `assets/logo.jpg`.

## Mod Entry Format
Name (clickable link) | Author | Category (Graphics/Gameplay/UI/Audio/Weapons/Horses/Economy/World) | Wave (0/1/both) | Description (2-3 lines) | Dependencies | System/Mechanic Impact | Installation Notes | Conflicts

## Content Files
All sections: guide/master.typ -> includes theme.typ + each section .typ file.
```

- [ ] **Step 3: Write README.md**

```markdown
# Outlaw Overhaul

A curated modlist and comprehensive guide for **Red Dead Redemption 2** (version 1.32).

## Contents
- **Wave 0** — Vanilla-friendly playthrough with UI/QoL improvements
- **Wave 1** — Advanced playthrough with graphics, content, and mechanical mods

## Prerequisites
- RDR2 version 1.32
- Lenny's Mod Loader (LML)

## Generating the PDF
Run `generate-pdf.bat` to compile the complete guide to `output/Outlaw-Overhaul.pdf`.

Requires [Typst 0.15](https://typst.app/) installed and on PATH.
```

- [ ] **Step 4: Write conflicts.md**

```markdown
# Mod Conflicts Tracker

| Mod A | Mod B | Conflict | Resolution | Verified |
|-------|-------|----------|------------|----------|
| | | | | |

## Verification Notes
```
```

- [ ] **Step 5: Write mod-ideas.md**

```markdown
# Mod Ideas (Needs Development)

Mods that don't yet exist and would fill gaps in the Outlaw Overhaul vision.

## Template
- **Concept:** [name]
- **Desired Mechanics:** [what it should do]
- **Rationale:** [why existing mods don't cover this]
- **Wave:** [0 or 1]

---

```
```

- [ ] **Step 6: Git init and first commit**

```bash
git add AGENTS.md README.md conflicts.md mod-ideas.md
git commit -m "chore: initial project scaffolding"
```

---

### Task 2: Font Acquisition

**Files:**
- Create: `fonts/`

- [ ] **Step 1: Download Playfair Display** (Google Fonts, OFL licensed)

```bash
# Playfair Display Regular + Bold
curl -L "https://github.com/google/fonts/raw/main/ofl/playfairdisplay/PlayfairDisplay%5Bwght%5D.ttf" -o "fonts/PlayfairDisplay[wght].ttf"
```

- [ ] **Step 2: Download Inter** (Google Fonts, OFL licensed)

```bash
# Inter variable font (covers all weights)
curl -L "https://github.com/google/fonts/raw/main/ofl/inter/Inter%5Bslnt,wght%5D.ttf" -o "fonts/Inter[slnt,wght].ttf"
```

- [ ] **Step 3: Verify fonts downloaded**

```bash
ls -la fonts/
# Expected: ~200KB+ per file
```

- [ ] **Step 4: Commit fonts**

```bash
git add fonts/
git commit -m "chore: add Playfair Display and Inter fonts"
```

---

### Task 3: Typst Theme (theme.typ)

**Files:**
- Create: `guide/theme.typ`

- [ ] **Step 1: Write theme.typ**

```typst
// Colors
#let bg-color = rgb("#f5eedc")
#let heading-color = rgb("#5c3a21")
#let body-color = rgb("#2c2c2c")
#let accent-color = rgb("#8b2500")
#let code-bg = rgb("#3a2a1a")
#let code-text = rgb("#f0d060")
#let wave0-color = rgb("#4a7c59")
#let wave1-color = rgb("#8b2500")
#let both-color = rgb("#5c3a21")

// Page setup
#set page(
  paper: "us-letter",
  margin: (x: 1.2in, y: 1in),
  background: bg-color,
)

// Body text
#set text(font: "Inter", size: 10pt, fill: body-color)
#set par(justify: true, leading: 0.65em)

// Heading styles
#show heading: set text(font: "Playfair Display", fill: heading-color)
#show heading.where(level: 1): set text(size: 22pt, weight: "bold")
#show heading.where(level: 2): set text(size: 16pt)
#show heading.where(level: 3): set text(size: 13pt)

// Links
#show link: set text(fill: accent-color)
#show link: underline

// Code / config blocks
#show raw: set text(font: "Inter", size: 9pt, fill: code-text)
#show raw: set block(
  fill: code-bg,
  inset: 8pt,
  radius: 4pt,
  width: 100%,
)

// Wave badge helper
#let wave-badge(wave) = {
  let (label, col) = if wave == "0" {
    ("Wave 0", wave0-color)
  } else if wave == "1" {
    ("Wave 1", wave1-color)
  } else {
    ("Both", both-color)
  }
  box(
    fill: col,
    inset: (x: 6pt, y: 2pt),
    radius: 3pt,
    text(size: 8pt, weight: "bold", fill: white)[#label],
  )
}

// Mod card helper
#let mod-entry(name, url, author, category, wave, desc, deps, impact, notes, conflicts) = {
  v(6pt)
  block(
    inset: 10pt,
    radius: 4pt,
    fill: luma(245),
    stroke: 1pt + luma(220),
  )[
    #text(size: 13pt, weight: "bold", fill: heading-color)[
      #link(url)[#name]
    ]
    #wave-badge(wave)
    #h(4pt)
    #text(size: 9pt, fill: luma(120))[by _#author_  ·  #category]

    #v(4pt)
    #desc

    #v(2pt)
    #text(size: 9pt, fill: luma(100))[
      *Deps:* #deps \
      *Impact:* #impact \
    ]

    #if notes != "" {
      #text(size: 9pt, fill: luma(100))[*Install:* #notes]
    }
    #if conflicts != "" {
      #v(2pt)
      #text(size: 9pt, fill: accent-color)[*Conflicts:* #conflicts]
    }
  ]
  v(6pt)
}
```

---

### Task 4: Master Entry Point (master.typ)

**Files:**
- Create: `guide/master.typ`

- [ ] **Step 1: Write master.typ**

```typst
#import "theme.typ": *

// ========================
//        COVER PAGE
// ========================
#set page(numbering: none)

#align(center + top)[
  #v(2cm)
  #image("../assets/logo.jpg", width: 60%)

  #v(1.5cm)

  #text(size: 36pt, weight: "bold", font: "Playfair Display", fill: heading-color)[
    Outlaw Overhaul
  ]

  #v(0.3cm)
  #text(size: 14pt, font: "Inter", fill: body-color)[
    A Red Dead Redemption 2 Modlist & Guide
  ]

  #v(1.5cm)
  #line(length: 60%, stroke: 0.5pt + heading-color)

  #v(1cm)
  #text(size: 11pt, font: "Inter", fill: luma(120))[
    Version 1.32 · July 2026
  ]

  #v(2cm)
  #outline(depth: 1, indent: auto)
]

#pagebreak()

// ========================
//     MAIN CONTENT
// ========================
#set page(numbering: "1")
#counter(page).update(1)

#include "00-foreword.typ"
#include "01-installation.typ"
#include "02-wave0-guide.typ"
#include "03-wave1-guide.typ"
#include "04-modlist.typ"
#include "05-appendix.typ"
```

---

### Task 5: Foreword (00-foreword.typ)

**Files:**
- Create: `guide/00-foreword.typ`

- [ ] **Step 1: Write 00-foreword.typ**

```typst
= Foreword

Welcome to _Outlaw Overhaul_, a curated modlist and comprehensive guide for
_Red Dead Redemption 2_ version 1.32 (the March 19, 2024 patch).

== What This Is

This guide is structured as two distinct playthrough "waves":

- **Wave 0** is designed for first-time or casual players. It recommends only
  user interface and quality-of-life mods, keeping the vanilla experience
  intact while polishing rough edges. The accompanying walkthrough helps you
  master core mechanics.
- **Wave 1** transforms the game with graphics enhancements, additional
  content, and deeper mechanics. It assumes you have completed the story at
  least once and are ready for a more challenging, immersive experience.

== Compatibility

All mods listed here have been verified against RDR2 version 1.32. We use
_Lenny's Mod Loader (LML)_ as the sole modding framework. See the
Installation section for detailed setup instructions.

== Credits

A full list of mod authors, their mod pages, and acknowledgments can be
found in the Mod Catalog.

== Disclaimer

Modding carries inherent risks. Always back up your save files and game
installation before adding mods. The authors of this guide are not
responsible for corrupted saves, crashes, or other issues.
```

---

### Task 6: Installation Guide (01-installation.typ)

**Files:**
- Create: `guide/01-installation.typ`

- [ ] **Step 1: Write 01-installation.typ**

```typst
= Installation & Setup

Follow these steps to prepare your game for modding. Perform them in order.

== Prerequisites

- Red Dead Redemption 2 (version 1.32) — Steam, Rockstar Launcher, or Epic
- ~2 GB free disk space for mod files
- Administrative access to your game installation directory

== Step 1: Clean Game Installation

Ensure RDR2 is fully updated to version 1.32. Verify the version by
checking the game properties in your launcher.

```default
Steam:      Library > RDR2 > Properties > Betas > "None"
Rockstar:   Settings > RDR2 > Game Details
```

== Step 2: Lenny's Mod Loader (LML)

Download the latest version of Lenny's Mod Loader from the official site.

1. Extract the archive to a temporary folder
2. Copy all files into your RDR2 installation root directory (where
   `RDR2.exe` lives)

```default
RDR2 Installation/
├── RDR2.exe
├── version.dll          <- LML file
├── LML/                 <- will be created on first launch
├── lml_mods/            <- your mods go here
```

3. Launch the game once to verify LML installed correctly — you should see
   an LML notification in the top-left corner

== Step 3: Script Hook RDR2

Some gameplay mods require Script Hook RDR2. Download it and place
`ScriptHookRDR2.dll` and `ScriptHookRDR2.asi` in the game root directory.

== Step 4: Verify Installation

Launch the game and check:
- LML version in the top-left notification
- Script Hook loads without errors (check `ScriptHookRDR2.log` in `Documents`
  or game root)

== Folder Structure

```default
RDR2 Installation/
├── RDR2.exe
├── version.dll
├── ScriptHookRDR2.dll
├── ScriptHookRDR2.asi
├── LML/
├── lml_mods/
│   ├── ModName1/          <- extracted mod folders
│   └── ModName2/
└── settings.xml           <- LML config (enable/disable mods here)
```

== Removing Mods

To disable a mod, move its folder out of `lml_mods/`. To uninstall LML,
remove `version.dll` and the `LML/` folder.
```

---

### Task 7: Wave 0 Guide (02-wave0-guide.typ)

**Files:**
- Create: `guide/02-wave0-guide.typ`

- [ ] **Step 1: Write 02-wave0-guide.typ**

```typst
= Wave 0: The Honorable Drifter

#text(size: 11pt, style: "italic")[
  _You step off the train in Colter with nothing but the clothes on your back
  and a debt to the man who pulled you from the snow. The mountains don't
  care about your past — only what you do next. Help those who need it, learn
  the land, and remember: out in the West, a reputation is earned one
  decision at a time._
]

== Recommended Mods

The following mods enhance the vanilla experience without changing core
gameplay. Install them before starting your Wave 0 playthrough.

*Mod entries will be added here.*

== Core Mechanics

=== Dead Eye

Dead Eye is your most powerful tool. It slows time, letting you paint shots
on multiple targets. The system unlocks in stages:

- **Chapter 1 (Colter):** Manual painting — tag targets and fire
- **Chapter 2 (Horseshoe Overlook):** Auto-paint on nearby enemies
- **Later chapters:** Critical shots and enhanced duration

_Tip:_ Upgrade Dead Eye by completing story missions and crafting tonics at
campfires. _Valerian Root_ and _Chewing Tobacco_ refill the meter.

=== Hunting

A reliable source of income and crafting materials.

1. Study an animal with binoculars to learn its quality rating
2. Use the correct weapon for the animal's size (rifle for deer, varmint
   for rabbits, bow for perfect pelts)
3. Clean kills preserve pelt quality — aim for the head or heart
4. Bring pelts to Pearson at camp or sell to the Trapper

=== Honor System

Your actions affect Arthur's honor meter, which influences NPC reactions,
shop prices, and story outcomes.

| Action | Effect |
|--------|--------|
| Greeting strangers | + Honor |
| Helping strangers | + Honor |
| Donating to camp | + Honor |
| Robbing/killing innocents | - Honor |
| Bounty evasion | - Honor |

=== Crafting

- **Pearson (Camp):** Upgrades satchel capacity, camp equipment
- **Trapper (World):** Craft unique outfits and gear from legendary animal
  parts
- **Campfire:** Cook meat for health/stamina/dead eye buffs; craft ammo,
  tonics, and throwables

== Camp Management

Donate money and supplies to the camp ledger. Upgrades unlock fast travel,
better provisions, and improved morale. Dutch's tent, the medical supplies,
and the ledger itself are priority upgrades.

== Chapter Highlights

=== Chapter 1 — Colter
- Tutorial chapter. Learn movement, shooting, and Dead Eye basics.
- _Tip:_ Loot every body for cash and supplies.

=== Chapter 2 — Horseshoe Overlook
- The world opens up. Explore, hunt, and complete side content.
- _Tip:_ Complete the "Money Lending and Other Sins" Strauss missions
  early — they unlock the camp ledger.

=== Chapter 3 — Clemens Point
- Mid-game. Gang tensions rise. Focus on camp upgrades.
- _Tip:_ Treasure maps found during exploration pay out well.

=== Chapter 4 — Shady Belle
- Prepare for Chapter 5. Purchase better weapons and upgrade your saddle.

=== Chapter 5 — Guarma
- Linear story chapter. Minimal free roam. Focus on story missions.

=== Chapter 6 — Beaver Hollow
- Endgame. Arthur's health declines. Complete all side content and
  companion requests before the final missions.

== Transitioning to Wave 1

Create a separate save file before starting a Wave 1 playthrough. Wave 1
requires a fresh playthrough with new mods — do not add Wave 1 mods to an
existing Wave 0 save.
```

---

### Task 8: Wave 1 Guide (03-wave1-guide.typ)

**Files:**
- Create: `guide/03-wave1-guide.typ`

- [ ] **Step 1: Write 03-wave1-guide.typ**

```typst
= Wave 1: Full Outlaw Descent

#text(size: 11pt, style: "italic")[
  _You've seen what the law can do. You've played by their rules long enough.
  Now it's time to write your own. The gangs are fighting, the towns are
  ripe, and the Frontier is ready for someone ruthless enough to take it.
  Leave the honor to the grave—an outlaw's legacy is written in wanted
  posters._
]

== Recommended Mods

Wave 1 mods add graphics enhancements, new content, and deeper mechanics.
Install _all_ of these on a clean game installation before starting.

*Mod entries will be added here.*

== Advanced Strategies

=== Bounty Evasion

With higher bounties from increased crime-focused gameplay, evading the law
is critical:

1. Lay low in the wilderness — lawmen search towns first
2. Change your outfit and horse appearance at a hotel
3. Pay off bounties at post offices when the heat dies down
4. Use fences to launder stolen goods before spending

=== Maximum Profit Routes

- **Moonshining:** Invest in the Moonshiner role early — passive income
- **Treasure Maps:** Every map found in the wild pays $150–$400
- **Bounty Hunting:** Bring targets in alive for double the reward
- **Stagecoach Robberies:** Hit the Valentine–Saint Denis route for
  high-value hauls

=== Crime Waves

Plan your crime sprees around lawman response times:

1. Hit a town on the outskirts first (Strawberry, Annesburg)
2. Move inward as heat on outer towns dies down
3. Avoid Saint Denis until you have top-tier weapons and gear
4. Legendary bounties are safer than random crime — they don't generate
   persistent heat

== Save Management

Wave 1 mods change game mechanics. Keep backups:

```default
Documents/Rockstar Games/RDR2/Profiles/
├── wave0_backup/       <- before Wave 1 install
├── wave1_ch2.sav       <- Chapter 2 checkpoint
├── wave1_ch4.sav       <- Chapter 4 checkpoint
└── wave1_ch6.sav       <- Endgame checkpoint
```

== Performance Tuning

Heavy mod loads impact performance. Recommended settings:

- **Resolution:** 1920x1080 or 2560x1440 (not 4K with heavy graphics mods)
- **Texture Quality:** Ultra
- **Reflection Quality:** Medium
- **Water Quality:** Medium
- **Volumetrics:** Low
- **Tree Tessellation:** Off
```

---

### Task 9: Mod Catalog (04-modlist.typ)

**Files:**
- Create: `guide/04-modlist.typ`

- [ ] **Step 1: Write 04-modlist.typ**

```typst
= Mod Catalog

All mods are organized by category and listed alphabetically. Each entry
includes the wave it belongs to, dependencies, and compatibility notes.

== Graphics

*No mods added yet.*

== Gameplay

*No mods added yet.*

== UI

*No mods added yet.*

== Audio

*No mods added yet.*

== Weapons

*No mods added yet.*

== Horses

*No mods added yet.*

== Economy

*No mods added yet.*

== World

*No mods added yet.*
```

---

### Task 10: Appendix (05-appendix.typ)

**Files:**
- Create: `guide/05-appendix.typ`

- [ ] **Step 1: Write 05-appendix.typ**

```typst
= Appendix

== Troubleshooting

=== Game Crashes on Launch

1. Verify game file integrity in your launcher
2. Remove all files from `lml_mods/` — test in vanilla
3. Re-install LML: replace `version.dll`
4. Check `Documents/Rockstar Games/RDR2/Settings/system.xml` for
   corrupted settings

=== Mods Not Loading

1. Ensure `version.dll` is in the game root
2. Verify each mod's folder structure matches LML expectations
3. Check LML's log (generated in the `LML/` folder)
4. Mods requiring Script Hook won't work without `ScriptHookRDR2.dll`

=== Save File Issues

- Disable all mods before loading a vanilla save
- Wave 1 saves are not backward-compatible with Wave 0
- Backup saves before adding or removing mods

== Performance Tuning

+----------------------------+----------+----------+
| Setting                    | Wave 0   | Wave 1   |
+----------------------------+----------+----------+
| Resolution                 | 1440p    | 1080p    |
| Texture Quality            | Ultra    | Ultra    |
| Reflection Quality         | High     | Medium   |
| Water Quality              | High     | Medium   |
| Volumetric Quality         | Medium   | Low      |
| Tree Tessellation          | On       | Off      |
| Near Volumetric Resolution | High     | Medium   |
+----------------------------+----------+----------+
```

---

### Task 11: Batch File (generate-pdf.bat)

**Files:**
- Create: `generate-pdf.bat`

- [ ] **Step 1: Write generate-pdf.bat**

```batch
@echo off
setlocal enabledelayedexpansion

set PROJECT_DIR=%~dp0
set FONTS_DIR=%PROJECT_DIR%fonts
set GUIDE_DIR=%PROJECT_DIR%guide
set OUTPUT_DIR=%PROJECT_DIR%output
set LOG_FILE=%OUTPUT_DIR%\Outlaw-Overhaul.log

echo Outlaw Overhaul — PDF Generator
echo ================================
echo.

:: Step 1: Check Typst is installed
where typst >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo [ERROR] Typst not found on PATH.
    echo Install Typst 0.15 from https://typst.app/
    echo Or: winget install Typst.Typst
    pause
    exit /b 1
)
echo [OK] Typst found

:: Step 2: Check fonts
if not exist "%FONTS_DIR%\PlayfairDisplay[wght].ttf" (
    echo [ERROR] Playfair Display font not found in fonts/
    echo Download from Google Fonts or run the font acquisition script.
    pause
    exit /b 1
)
if not exist "%FONTS_DIR%\Inter[slnt,wght].ttf" (
    echo [ERROR] Inter font not found in fonts/
    echo Download from Google Fonts or run the font acquisition script.
    pause
    exit /b 1
)
echo [OK] Fonts found

:: Step 3: Check master.typ
if not exist "%GUIDE_DIR%\master.typ" (
    echo [ERROR] guide/master.typ not found
    pause
    exit /b 1
)
echo [OK] Guide files found

:: Step 4: Check logo
if not exist "%PROJECT_DIR%assets\logo.jpg" (
    echo [WARN] assets/logo.jpg not found — cover page will be missing the logo
)

:: Step 5: Create output directory
if not exist "%OUTPUT_DIR%" mkdir "%OUTPUT_DIR%"

:: Step 6: Compile
echo.
echo Compiling PDF...
echo This may take a moment.
echo.

cd /d "%PROJECT_DIR%"
typst compile --font-path "%FONTS_DIR%" "guide/master.typ" "%OUTPUT_DIR%\Outlaw-Overhaul.pdf" 2> "%LOG_FILE%"

if %ERRORLEVEL% neq 0 (
    echo.
    echo [ERROR] Compilation failed.
    echo Check the log: %LOG_FILE%
    type "%LOG_FILE%"
    pause
    exit /b 1
)

echo.
echo [OK] PDF generated: %OUTPUT_DIR%Outlaw-Overhaul.pdf
echo.
pause
```

---

### Task 12: First PDF Compilation Test

- [ ] **Step 1: Run the batch file**

```bash
.\generate-pdf.bat
```

Expected output:
```
[OK] Typst found
[OK] Fonts found
[OK] Guide files found
[OK] PDF generated: output/Outlaw-Overhaul.pdf
```

- [ ] **Step 2: Verify PDF exists and has pages**

```bash
ls -la output/Outlaw-Overhaul.pdf
# Expected: file size > 10KB, non-zero
```

- [ ] **Step 3: Commit all completed work**

```bash
git add -A
git commit -m "feat: initial Outlaw Overhaul project scaffold with Typst PDF generation"
```

---

## Self-Review Checklist

- [ ] Spec coverage: every section in the spec has a corresponding task
- [ ] No placeholders, TBDs, or TODOs
- [ ] All file paths match between tasks
- [ ] All Typst syntax verified against Typst 0.15 docs (outline depth, include, image, show rules, links, page numbering, page counter reset, colors)
- [ ] Batch file handles all error cases from spec
