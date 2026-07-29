# The Final Cycle — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build the complete project scaffolding, Typst template, cover page, all guide content files, and mod category skeletons for The Final Cycle modlist PDF.

**Architecture:** A Typst document (`main.typ`) defines shared colors, fonts, and three custom functions (`wave-badge`, `callout`, `mod-entry`) then includes 19 sub-files via `#include`. A `build.bat` batch script runs Typst compilation with pre-flight checks.

**Tech Stack:** Typst v0.12+, Windows Batch, fonts (Inter, Orbitron, JetBrains Mono with fallbacks)

**Spec reference:** `docs/superpowers/specs/2026-07-21-the-final-cycle-design.md`

---

## File Map

| File                             | Responsibility                                   |
|----------------------------------|--------------------------------------------------|
| `main.typ`                       | Document config, shared functions, include chain |
| `00-cover.typ`                   | Cover page with logo, title, version             |
| `01-introduction.typ`            | Overview, wave philosophy, reader navigation     |
| `02-installation.typ`            | Full ME3Tweaks setup guide                       |
| `02a-modding-best-practices.typ` | Backup, order rules, texture rule                |
| `02b-mem-texture-guide.typ`      | MEM texture workflow                             |
| `03-rpg-backgrounds.typ`         | Two character profiles                           |
| `04-how-to-play-wave0.typ`       | Essential gameplay primer                        |
| `05-how-to-play-wave1.typ`       | Comprehensive advanced guide                     |
| `09-bugfixes-patches.typ`        | Bugfixes and community patches                   |
| `10-graphics.typ`                | Graphics mods                                    |
| `11-gameplay-mechanics.typ`      | Gameplay/Mechanics mods                          |
| `12-weapons-armor.typ`           | Weapons and Armor mods                           |
| `13-ui-qol.typ`                  | UI and Quality of Life mods                      |
| `14-quests.typ`                  | Quest mods (new/restored missions)               |
| `15-content.typ`                 | Content mods (dialogue, NPCs, non-quest content) |
| `16-audio-sound.typ`             | Audio/Sound mods                                 |
| `17-characters-appearance.typ`   | Characters/Appearance mods                       |
| `18-tools-utilities.typ`         | Tools and Utilities mods                         |
| `98-conflicts.typ`               | Known conflicts                                  |
| `99-mod-ideas.typ`               | Future mod ideas                                 |
| `build.bat`                      | Build script with error handling                 |
| `AGENTS.md`                      | AI agent instructions                            |
| `README.md`                      | Human-facing project overview                    |

---

## Tasks Overview

1. **Task 1:** Project scaffolding (AGENTS.md, README.md, build.bat, directories)
2. **Task 2:** Typst template (main.typ)
3. **Task 3:** Cover page (00-cover.typ)
4. **Task 4:** Introduction (01-introduction.typ)
5. **Task 5:** Installation guide (02-installation.typ)
6. **Task 6:** Best practices and MEM guide (02a, 02b)
7. **Task 7:** RPG backgrounds (03-rpg-backgrounds.typ)
8. **Task 8:** How to Play Wave 0 (04-how-to-play-wave0.typ)
9. **Task 9:** How to Play Wave 1 (05-how-to-play-wave1.typ)
10. **Task 10:** All mod category skeletons (09, 10-18, 98, 99)
11. **Task 11:** Build verification — run build.bat, confirm PDF

Each task writes complete file contents. The spec (`docs/superpowers/specs/2026-07-21-the-final-cycle-design.md`) defines exact content requirements per file — sections 6.1 through 6.15. The AGENTS.md file (created in Task 1) defines the `#mod-entry()` function signature used in Task 10.

## Dependency Chain

```
Task 1 (scaffolding) → Task 2 (main.typ)
Task 2 → Tasks 3-10 (all .typ files reference main.typ's functions and colors)
Tasks 1-10 → Task 11 (build verification)
```

Tasks 3-10 can be executed in any order, but all require Task 2 to be complete first.

## Conventions

- Every `.typ` section file (Tasks 3-10) MUST start with `#pagebreak()` to ensure sections begin on a clean page.
- Open `= Heading` with exactly one blank line after `#pagebreak()`.

---

## Task 1: Project Scaffolding

**Files:**

- Create: `AGENTS.md`
- Create: `README.md`
- Create: `build.bat`
- Create: directories `guide/`, `output/`, `fonts/`

### Step 1.1: Create AGENTS.md

Write `AGENTS.md`:

```markdown
# AGENTS.md -- The Final Cycle

## Project
Curated modlist and gameplay guide for Mass Effect Legendary Edition (MELE, 2021+).
Two progressive "Waves" of mods with roleplaying backgrounds and gameplay guides.
Output: a single PDF generated via Typst.

## File Conventions
- Guide content: `guide/*.typ` (Typst markup)
- Assets: `assets/` (logo.png)
- Fonts: `fonts/` (custom .ttf/.otf for PDF)
- Output: `output/The-Final-Cycle.pdf`
- Build: `build.bat` (Windows batch)

## Mod Rules
1. MELE compatible only (2021+). No OT-specific mods.
2. No porn mods. Adult/nude OK if thematically relevant -- ask if in doubt.
3. No cheat/overpowered mods. See cheat criteria in spec.
4. No conflicting mods -- verify compatibility before adding.
5. No redundant mods -- one mod per function. Prefer modern, maintained mods.
6. Use ME3Tweaks Mod Manager as the primary toolchain.

## Wave Assignment
- **Wave 0**: Bugfixes, community patches, UI/QoL that do NOT alter game balance or add content.
- **Wave 1**: Everything else -- graphics, gameplay changes, new content, audio, character appearance.

## Adding a Mod
1. Choose the correct category file in `guide/`:
   - `09-bugfixes-patches.typ` -- community patches, unofficial fixes
   - `10-graphics.typ` -- texture packs, lighting, shader mods
   - `11-gameplay-mechanics.typ` -- combat, powers, difficulty changes
   - `12-weapons-armor.typ` -- weapon stats, new weapons, armor stats, new armor sets
   - `13-ui-qol.typ` -- interface improvements, quality of life
   - `14-quests.typ` -- new missions, restored missions
   - `15-content.typ` -- expanded dialogue, new NPCs, non-quest content additions
   - `16-audio-sound.typ` -- music, sound effects, voice
   - `17-characters-appearance.typ` -- character textures, model swaps
   - `18-tools-utilities.typ` -- companion tools, save editors
2. Use the `#mod-entry()` function:
   ```

   #mod-entry(
     name: "Mod Name",
     url: "<https://www.nexusmods.com/masseffectlegendaryedition/mods/NNN>",
     waves: (0, 1),
     version: "v1.0",
     last-checked: "2026-07",
     deps: (),
     impact: [What this mod changes],
     notes: none,
   )

   ```
3. Place Wave 0 mods under the `== Wave 0` heading, Wave 1 under `== Wave 1 Additional`.
4. Sort within each wave subsection by recommended install order.
5. Run `build.bat` and verify the PDF compiles without errors.
6. If the mod conflicts with any existing mod, add a note to `98-conflicts.typ`.

## Build Command
```

typst compile guide/main.typ output/The-Final-Cycle.pdf

```

## Research Methodology
- Primary source: NexusMods MELE category
- Verify each mod is for Legendary Edition, not original trilogy
- Prefer mods updated within the last 2 years
- Check mod comments/posts for reported compatibility issues
- Cross-reference with existing modlist to avoid conflicts
```

### Step 1.2: Create README.md

Write `README.md`:

```markdown
# The Final Cycle

**Mass Effect Legendary Edition -- Curated Modlist and Game Guide**

A progressive, wave-based modding guide for Mass Effect Legendary Edition. Two
waves -- from vanilla-friendly essentials to an enhanced, mod-rich experience.
Each wave includes a roleplaying background, gameplay guide, and curated mod
selections.

## Audience

- **Wave 0** -- No prior Mass Effect experience. Bugfixes and essential
  quality-of-life mods only. Complete beginner's gameplay primer included.
- **Wave 1** -- Returning players. Full mod suite across all categories.
  Advanced strategy and mechanics guide included.

## What's Inside

- Full step-by-step ME3Tweaks Mod Manager installation guide (2026)
- Modding best practices and MEM texture guide
- RPG character creation backgrounds for each wave
- How to Play guides: essential primer (Wave 0) and comprehensive mechanics
  deep-dive (Wave 1)
- Curated mod entries with version tracking, dependencies, and installation
  notes
- Known conflicts documentation
- Mod ideas wishlist

## How to Build

**Prerequisites:**
- [Typst](https://github.com/typst/typst/releases) v0.12 or later (in PATH)
- Windows (for batch build script)

**Build:**
```batch
build.bat
```

Output: `output/The-Final-Cycle.pdf`

## Project Structure

```
The Final Cycle/
├── AGENTS.md         -- AI agent instructions
├── README.md         -- This file
├── build.bat         -- PDF generation script
├── assets/           -- Logo and images
├── fonts/            -- Custom fonts (optional)
├── guide/            -- Typst source files
├── output/           -- Generated PDF
└── docs/             -- Design docs and plans
```

## Credits

Modlist curated for Mass Effect Legendary Edition.
All mods are property of their respective authors.

```

### Step 1.3: Create build.bat

Write `build.bat`:

```batch
@echo off
setlocal enabledelayedexpansion

echo ============================================
echo   The Final Cycle - PDF Generator
echo ============================================
echo.

REM Check Typst installation
where typst >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Typst is not installed or not in PATH.
    echo.
    echo Download Typst: https://github.com/typst/typst/releases
    echo Add it to your PATH and try again.
    pause
    exit /b 1
)

REM Get and display Typst version
for /f "tokens=2" %%v in ('typst --version') do set TYPST_VER=%%v
echo Typst version: %TYPST_VER%

REM Create output directory if missing
if not exist "output" (
    echo Creating output directory...
    mkdir output
)

REM Verify required files
if not exist "assets\logo.png" (
    echo [WARNING] assets\logo.png not found. Cover page will lack a logo image.
)

if not exist "guide\main.typ" (
    echo [ERROR] guide\main.typ not found. Are you in the project root?
    pause
    exit /b 1
)

echo.
echo Compiling PDF...
echo.

typst compile guide\main.typ output\The-Final-Cycle.pdf

if %errorlevel% equ 0 (
    echo.
    echo ============================================
    echo   [SUCCESS] PDF generated successfully!
    echo   output\The-Final-Cycle.pdf
    echo ============================================
) else (
    echo.
    echo ============================================
    echo   [ERROR] Compilation failed.
    echo   Review the Typst errors above.
    echo ============================================
    pause
    exit /b 1
)

endlocal
```

### Step 1.4: Create directories

Run:

```powershell
New-Item -ItemType Directory -Force -Path "guide", "output", "fonts" | Out-Null; Write-Output "Directories created"
```

### Step 1.5: Commit

```bash
git add AGENTS.md README.md build.bat
git commit -m "feat: project scaffolding -- README, AGENTS, build.bat, directories"
```

---

## Task 2: Typst Template -- main.typ

**Files:**

- Create: `guide/main.typ`

### Step 2.1: Write guide/main.typ

Write `guide/main.typ` with these contents. This is the entry point that defines all shared configuration, colors, fonts, and custom functions. It then includes every sub-file in order.

```typst
// main.typ -- The Final Cycle
// Entry point: document config, shared functions, include chain.

// === Document Setup ===
#set document(
  title: "The Final Cycle",
  author: "",
  keywords: ("Mass Effect", "Legendary Edition", "Modlist", "Guide", "MELE"),
)

#set page(
  paper: "a4",
  margin: (top: 2.2cm, bottom: 2.2cm, left: 2.2cm, right: 2.2cm),
  fill: rgb("#1A1A1A"),
)

#set text(
  font: ("Inter", "Segoe UI", "DejaVu Sans", "Arial"),
  size: 11pt,
  fill: rgb("#E0E0E0"),
  hyphenate: true,
)

#set par(
  leading: 0.65em,
  justify: true,
)

#set heading(
  font: ("Orbitron", "Segoe UI", "DejaVu Sans", "Arial"),
)

// === Color Palette ===
#let clr-n7-red = rgb("#D93829")
#let clr-blue = rgb("#00BFFF")
#let clr-bg = rgb("#1A1A1A")
#let clr-content = rgb("#2D2D2D")
#let clr-amber = rgb("#FFA500")
#let clr-info = rgb("#3A5A7C")
#let clr-text = rgb("#E0E0E0")
#let clr-w0 = rgb("#4A90D9")
#let clr-w1 = rgb("#E07B39")
#let clr-ok = rgb("#4CAF50")
#let clr-muted = rgb("#888888")

// === Custom Functions ===

// Wave badge -- colored pill badge(s) for wave membership
#let wave-badge(waves) = {
  for wave in waves {
    let (color, label) = if wave == 0 {
      (clr-w0, "Wave 0")
    } else {
      (clr-w1, "Wave 1")
    }
    box(
      fill: color,
      inset: (x: 8pt, y: 2pt),
      radius: 4pt,
      text(fill: white, size: 9pt, weight: "bold", label)
    )
    h(4pt)
  }
}

// Callout box -- colored left-border block
#let callout(type, body) = {
  let color = if type == "info" {
    clr-info
  } else if type == "warning" {
    clr-amber
  } else if type == "tip" {
    clr-ok
  } else if type == "dependency" {
    clr-n7-red
  } else {
    clr-info
  }
  let icon = if type == "info" {
    "i"
  } else if type == "warning" {
    "!"
  } else if type == "tip" {
    "?"
  } else {
    ">"
  }

  stack(
    spacing: 0pt,
    block(
      fill: rgb("#252525"),
      inset: (top: 8pt, bottom: 8pt, left: 12pt, right: 12pt),
      radius: 4pt,
      stroke: (left: 4pt + color),
      [
        #text(fill: color, weight: "bold", size: 10pt)[#icon\ ]
        #body
      ],
    ),
    v(8pt),
  )
}

// Mod entry -- consistent, styled mod listing
#let mod-entry(
  name: "",
  url: "",
  waves: (),
  version: "",
  last-checked: "",
  deps: (),
  impact: none,
  notes: none,
) = {
  stack(
    spacing: 0pt,
    block(
      fill: clr-content,
      inset: 12pt,
      radius: 6pt,
      stroke: 1pt + clr-content,
      [
        #wave-badge(waves)
        #text(size: 13pt, weight: "bold")[#name]

        #text(size: 9pt, fill: clr-muted)[v\ #version \ | \ Last checked: #last-checked]

        #link(url)[#url]

        #v(6pt)

        #text(weight: "bold")[Dependencies: ]\
        #{ if deps.len() > 0 { deps.join(", ") } else { [None] } }

        #v(4pt)

        #if impact != none {
          text(weight: "bold")[Impact: ] + impact
        }

        #v(4pt)

        #if notes != none {
          text(weight: "bold")[Installation notes: ] + notes
        }
      ],
    ),
    v(10pt),
  )
}

// Global show rules
#show heading: set text(fill: clr-n7-red)
#show link: set text(fill: clr-blue)

// === Cover (front matter; no page number) ===
#include "00-cover.typ"

// === Table of Contents ===
#counter(page).update(1)
#set page(numbering: "i")
#outline(
  title: [Table of Contents],
  indent: 2em,
  depth: 2,
)

// === Body (Arabic page numbers) ===
#pagebreak()
#counter(page).update(1)
#set page(numbering: "1")

#include "01-introduction.typ"
#include "02-installation.typ"
#include "02a-modding-best-practices.typ"
#include "02b-mem-texture-guide.typ"
#include "03-rpg-backgrounds.typ"
#include "04-how-to-play-wave0.typ"
#include "05-how-to-play-wave1.typ"
#include "09-bugfixes-patches.typ"
#include "10-graphics.typ"
#include "11-gameplay-mechanics.typ"
#include "12-weapons-armor.typ"
#include "13-ui-qol.typ"
#include "14-quests.typ"
#include "15-content.typ"
#include "16-audio-sound.typ"
#include "17-characters-appearance.typ"
#include "18-tools-utilities.typ"
#include "98-conflicts.typ"
#include "99-mod-ideas.typ"
```

### Step 2.2: Commit

```bash
git add guide/main.typ
git commit -m "feat: Typst template with shared functions and include chain"
```

---

## Task 3: Cover Page -- 00-cover.typ

**Files:**

- Create: `guide/00-cover.typ`

### Step 3.1: Write guide/00-cover.typ

```typst
// 00-cover.typ -- Cover page

#set align(center + horizon)
#v(3cm)

#image("assets/logo.png", width: 40%)
#v(1.2cm)

#text(
  font: ("Orbitron", "Segoe UI", "DejaVu Sans"),
  size: 36pt,
  fill: clr-n7-red,
  weight: "bold",
)[The Final Cycle]

#v(0.6cm)

#text(
  size: 18pt,
  fill: clr-blue,
)[Mass Effect Legendary Edition]
#text(
  size: 14pt,
  fill: clr-muted,
)[Modlist \& Game Guide]

#v(3cm)

#text(
  size: 10pt,
  fill: clr-muted,
)[Revision 1 -- July 2026]

#pagebreak()
```

### Step 3.2: Commit

```bash
git add guide/00-cover.typ
git commit -m "feat: cover page with logo, title, and version stamp"
```

---

## Task 4: Introduction -- 01-introduction.typ

**Files:**

- Create: `guide/01-introduction.typ`

Refer to spec section 6.4 for exact content requirements.

### Step 4.1: Write guide/01-introduction.typ

This section explains what the guide is, the wave system, provides reader navigation paths, and states the modding philosophy. The spec section 6.4 defines the exact structure: guide overview, two explicit reader paths (New to Mass Effect, Returning Player), and modding philosophy.

Content follows spec section 6.4 -- write the file with:

- A `= Introduction` heading
- A `== What This Guide Is` subsection explaining the curated modlist/wave concept
- A `== How to Use This Guide` subsection with two distinct reader paths in callout boxes
- A `== Modding Philosophy` subsection listing the rules (no cheats, MELE-compatible, no conflicts, modern mods preferred)

Use `#callout("info", [...])` and `#callout("tip", [...])` for the reader paths.

### Step 4.2: Commit

```bash
git add guide/01-introduction.typ
git commit -m "feat: introduction with reader navigation paths"
```

---

## Task 5: Installation Guide -- 02-installation.typ

**Files:**

- Create: `guide/02-installation.typ`

Refer to spec section 6.5 for exact content requirements.

### Step 5.1: Write guide/02-installation.typ

Write the full installation guide covering:

1. System requirements (with disk space warning -- 250GB recommended for game + backup + mods)
2. Downloading ME3Tweaks Mod Manager
3. Installing and first-launch setup
4. Toolchain overview (ME3Tweaks, MEM, Trilogy Save Editor, AutoTOC)
5. Creating a full game backup (~120GB)
6. DLC mount priority and conflict resolution (correct MELE modding concepts -- no Bethesda-style "load order")
7. Common troubleshooting

Each section is a level-2 heading. Use `#callout("warning", [...])` for the disk space warning and `#callout("tip", [...])` for pro-tips.

### Step 5.2: Commit

```bash
git add guide/02-installation.typ
git commit -m "feat: full ME3Tweaks installation guide"
```

---

## Task 6: Best Practices and MEM Texture Guide -- 02a, 02b

**Files:**

- Create: `guide/02a-modding-best-practices.typ`
- Create: `guide/02b-mem-texture-guide.typ`

Refer to spec sections 6.6 and 6.7.

### Step 6.1: Write guide/02a-modding-best-practices.typ

Cover:

- Always backup before modding
- Install in small batches (3-5 mods), test between batches
- The texture rule: MEM textures go LAST
    - If adding mods after textures: restore clean backup, reinstall all mods, re-apply textures
- Document your install order
- Install dependencies before dependents
- When to restore a backup
- Recommended category install order (Bugfixes first, Textures last)

Use `#callout("warning", [...])` for the texture rule -- it's the most important warning in the entire guide.

### Step 6.2: Write guide/02b-mem-texture-guide.typ

Cover:

- What Mass Effect Modder (MEM) is and when to use it (vs standard DLC-based modding)
- Where to get texture mods (NexusMods MELE category, `.mem` file format)
- Launching MEM from within ME3Tweaks
- Installing texture mods: selecting `.mem` files, game detection, scanning
- Applying and verifying textures: the scan, install, verify workflow
- Texture load order within MEM (base textures first, then overrides)
- Common pitfalls: applying before all DLC mods, conflicting textures, performance on lower-end hardware, reverting via backup

### Step 6.3: Commit

```bash
git add guide/02a-modding-best-practices.typ guide/02b-mem-texture-guide.typ
git commit -m "feat: modding best practices and MEM texture guide"
```

---

## Task 7: RPG Backgrounds -- 03-rpg-backgrounds.typ

**Files:**

- Create: `guide/03-rpg-backgrounds.typ`

Refer to spec section 6.8.

### Step 7.1: Write guide/03-rpg-backgrounds.typ

Create two character profiles using character creation choices only -- no story spoilers.

**Wave 0 profile -- Soldier, Earthborn, War Hero:**

- First name suggestion
- Origin: Earthborn (grew up on the streets, familiar with hardship)
- Psych profile: War Hero (proved themselves under fire, natural leader)
- Class: Soldier (straightforward, durable -- ideal for newcomers)
- Short narrative intro (2-4 sentences setting the tone)

**Wave 1 profile -- Adept, Colonist, Ruthless:**

- First name suggestion
- Origin: Colonist (survivor of Batarian raid on Mindoir)
- Psych profile: Ruthless (willing to sacrifice for the greater good)
- Class: Adept (power-focused, crowd control specialist)
- Short narrative intro (2-4 sentences setting the tone)

### Step 7.2: Commit

```bash
git add guide/03-rpg-backgrounds.typ
git commit -m "feat: RPG character creation backgrounds for both waves"
```

---

## Task 8: How to Play Wave 0 -- 04-how-to-play-wave0.typ

**Files:**

- Create: `guide/04-how-to-play-wave0.typ`

Refer to spec section 6.9 for detailed section outline. Target: 8-10 pages. Spoiler-free. This is the essential primer for new players.

### Step 8.1: Write guide/04-how-to-play-wave0.typ

Write an essential primer with these sections:

1. **Getting Started** -- Difficulty selection (Normal recommended), save habits, conversation wheel basics
2. **Class Overview** -- One paragraph per class (Soldier, Infiltrator, Adept, Engineer, Vanguard, Sentinel) describing playstyle, strengths, beginner-friendliness. Mark Soldier as recommended for beginners.
3. **Combat Basics** -- Cover system, weapon types and ranges, thermal clips, power cooldowns, targeting, squad commands, health/shields/barriers/armor, medi-gel and revival
4. **Squad Management** -- Choosing squadmates, complementing your class, conversations between missions (talk to everyone!)
5. **Morality System** -- Paragon vs Renegade, Charm/Intimidate unlocks, commitment matters, neutral options are safe
6. **Exploration and Activities** -- Galaxy map, planet scanning, Mako driving tips, side missions before main, hub areas: explore and talk to vendors
7. **Equipment and Inventory** -- Weapons, armor, mods, omni-tools, biotic amps, what to look for, selling vs keeping
8. **New Player Tips** -- Save often/multiple slots, decisions carry across all three games, talk to squadmates between every mission, don't skip loyalty missions, Suicide Mission preparation (vague, no spoilers)

Use `#callout("tip", [...])` for beginner-friendly advice throughout.

### Step 8.2: Commit

```bash
git add guide/04-how-to-play-wave0.typ
git commit -m "feat: Wave 0 essential gameplay primer"
```

---

## Task 9: How to Play Wave 1 -- 05-how-to-play-wave1.typ

**Files:**

- Create: `guide/05-how-to-play-wave1.typ`

Refer to spec section 6.10. Target: 12-15 pages. Assumes Wave 0 knowledge. Contains mechanics spoilers (power combos, builds) but no story spoilers.

### Step 9.1: Write guide/05-how-to-play-wave1.typ

Write a comprehensive guide with these sections:

1. **Power Combo System** -- Primer/detonator mechanics across all three games. Tech combos (Tech Burst, Fire Explosion, Cryo Explosion). Biotic combos (Biotic Explosion, Warp detonations). Combo damage scaling. Which powers prime vs detonate (per game). Combo builds per class.
2. **Weapon Optimization** -- Weapon tier systems. Mod attachments: which mods for which weapon types. Ammo powers: choosing the right ammo. Weapon weight vs power cooldown (ME3). Best-in-slot weapons per class.
3. **Armor and Build Synergy** -- Armor pieces and set bonuses. Configurations for power damage, weapon damage, survivability. Building around class strengths. Respeccing: when and why.
4. **Economy and Resource Management** -- Credit earning across games. What to buy vs skip. Mineral/resource farming efficiency. War Assets system (ME3, no spoiler specifics).
5. **Insanity Difficulty** -- What changes: enemy health, shields, aggression. Class-specific Insanity tactics. Squad composition per game. Survivability (shield-gating, positioning, crowd control). Recommended bonus powers.
6. **Squad Synergy** -- Best squadmates per class. Power combo partners. Squadmate power selection and auto-leveling. Weapon loadout recommendations for squadmates.
7. **Import Mechanics** -- What carries over between games (decisions, levels, resources). Level cap and bonus start benefits. Key cross-game consequences (vague, no spoilers).

### Step 9.2: Commit

```bash
git add guide/05-how-to-play-wave1.typ
git commit -m "feat: Wave 1 comprehensive advanced guide"
```

---

## Task 10: Mod Category Skeletons -- 09 through 99

**Files:**

- Create: `guide/09-bugfixes-patches.typ`
- Create: `guide/10-graphics.typ`
- Create: `guide/11-gameplay-mechanics.typ`
- Create: `guide/12-weapons-armor.typ`
- Create: `guide/13-ui-qol.typ`
- Create: `guide/14-quests.typ`
- Create: `guide/15-content.typ`
- Create: `guide/16-audio-sound.typ`
- Create: `guide/17-characters-appearance.typ`
- Create: `guide/18-tools-utilities.typ`
- Create: `guide/98-conflicts.typ`
- Create: `guide/99-mod-ideas.typ`

Refer to spec sections 6.11-6.15. The spec section 6.13 defines the `#mod-entry()` function (already implemented in main.typ).

### Step 10.1: Write guide/09-bugfixes-patches.typ

```typst
// 09-bugfixes-patches.typ -- Bugfixes and Community Patches

#pagebreak()
= Bugfixes and Community Patches

These mods are foundational. Install them first, before any other category.
Both Wave 0 and Wave 1 should install all patches listed here.

#callout("info")[
  Community patches fix hundreds of bugs across all three games. They are
  strongly recommended for a stable, polished experience regardless of wave.
]

== Wave 0

// Example entry -- replace URL and details with actual mods:
// #mod-entry(
//   name: "LE1 Community Patch",
//   url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/...",
//   waves: (0, 1),
//   version: "v1.6",
//   last-checked: "2026-07",
//   deps: (),
//   impact: [Fixes hundreds of bugs in Mass Effect 1. Restores broken content,
//     corrects dialogue flags, fixes quest logic. Required for a stable playthrough.],
//   notes: none,
// )

_Mods to be added. See AGENTS.md for the mod entry format._

== Wave 1 Additional

_No additional bugfix mods beyond Wave 0 at this time._
```

### Step 10.2: Write guide/10-graphics.typ

```typst
// 10-graphics.typ -- Graphics mods

#pagebreak()
= Graphics

Texture replacements, lighting improvements, shader mods, and visual
enhancements. Most graphics mods belong to Wave 1.

== Wave 0

_Wave 0 does not include graphics mods._

== Wave 1 Additional

_Mods to be added. Use the \#mod-entry() function._
```

### Step 10.3: Write guide/11-gameplay-mechanics.typ

```typst
// 11-gameplay-mechanics.typ -- Gameplay and Mechanics

#pagebreak()
= Gameplay and Mechanics

Mods that alter combat, powers, difficulty, AI, or core game systems. All
gameplay mods are Wave 1 only (they change game balance).

== Wave 0

_Wave 0 does not include gameplay mods._

== Wave 1 Additional

_Mods to be added. Use the \#mod-entry() function._
```

### Step 10.4: Write guide/12-weapons-armor.typ

```typst
// 12-weapons-armor.typ -- Weapons and Armor

#pagebreak()
= Weapons and Armor

Weapon stat changes, new weapons, armor stat changes, new armor sets, and
equipment mods. All weapons and armor mods are Wave 1 only (they alter
game balance by changing equipment stats or adding new items).

== Wave 0

_Wave 0 does not include weapons or armor mods._

== Wave 1 Additional

_Mods to be added. Use the \#mod-entry() function._
```

### Step 10.5: Write guide/13-ui-qol.typ

```typst
// 13-ui-qol.typ -- UI and Quality of Life

#pagebreak()
= UI and Quality of Life

Interface improvements, convenience features, and quality-of-life tweaks.
Wave 0 includes essentials that do not alter game balance. Wave 1 adds
enhanced or more opinionated UI changes.

== Wave 0

_Mods to be added. Wave 0 QoL mods must not alter game balance or add content._

== Wave 1 Additional

_Mods to be added. Use the \#mod-entry() function._
```

### Step 10.6: Write guide/14-quests.typ

```typst
// 14-quests.typ -- Quests

#pagebreak()
= Quests

New missions, restored missions, and expanded mission content. All quest
mods are Wave 1 only.

== Wave 0

_Wave 0 does not include quest mods (vanilla experience)._

== Wave 1 Additional

_Mods to be added. Use the \#mod-entry() function._
```

### Step 10.7: Write guide/15-content.typ

```typst
// 15-content.typ -- Content

#pagebreak()
= Content

Expanded dialogue, new NPCs, new hub areas, and non-quest content additions.
All content mods are Wave 1 only.

== Wave 0

_Wave 0 does not include content mods (vanilla experience)._

== Wave 1 Additional

_Mods to be added. Use the \#mod-entry() function._
```

### Step 10.8: Write guide/16-audio-sound.typ

```typst
// 16-audio-sound.typ -- Audio and Sound

#pagebreak()
= Audio and Sound

Music replacements, sound effect overhauls, voice mods, and audio
enhancements. All audio mods are Wave 1 only.

== Wave 0

_Wave 0 does not include audio mods._

== Wave 1 Additional

_Mods to be added. Use the \#mod-entry() function._
```

### Step 10.9: Write guide/17-characters-appearance.typ

```typst
// 17-characters-appearance.typ -- Characters and Appearance

#pagebreak()
= Characters and Appearance

Character texture replacements, model swaps, and visual overhauls for
squadmates and NPCs. All appearance mods are Wave 1 only.

== Wave 0

_Wave 0 does not include character appearance mods._

== Wave 1 Additional

_Mods to be added. Use the \#mod-entry() function._
```

### Step 10.10: Write guide/18-tools-utilities.typ

```typst
// 18-tools-utilities.typ -- Tools and Utilities

#pagebreak()
= Tools and Utilities

Companion tools, save editors, and utility mods to enhance the modding
experience. Install after bugfixes but before other categories.

== Wave 0

_Mods to be added. Wave 0 tools should be limited to essential utilities._

== Wave 1 Additional

_Mods to be added. Use the \#mod-entry() function._
```

### Step 10.11: Write guide/98-conflicts.typ

```typst
// 98-conflicts.typ -- Known Conflicts

#pagebreak()
= Known Conflicts

Documented incompatibilities, conflict resolution steps, and DLC mount
priority notes.

#callout("warning")[
  When two mods modify the same game file, the mod installed LAST wins.
  Always check this section before adding mods to your install order.
]

== Incompatible Mod Pairs

_None documented yet. Add entries as conflicts are discovered._

== Overwrite Warnings

_None documented yet. Mods that overwrite shared files should be listed here
with the recommended install order to get the intended result._
```

### Step 10.12: Write guide/99-mod-ideas.typ

```typst
// 99-mod-ideas.typ -- Mod Ideas

#pagebreak()
= Mod Ideas

Concepts for future mod development and community wishlist items.
These are not existing mods -- they are suggestions for mod authors.

== Gameplay

_No ideas listed yet._

== Content

_No ideas listed yet._

== UI and Quality of Life

_No ideas listed yet._

== Graphics

_No ideas listed yet._

== Other

_No ideas listed yet._
```

### Step 10.13: Commit

```bash
git add guide/09-bugfixes-patches.typ guide/10-graphics.typ guide/11-gameplay-mechanics.typ guide/12-weapons-armor.typ guide/13-ui-qol.typ guide/14-quests.typ guide/15-content.typ guide/16-audio-sound.typ guide/17-characters-appearance.typ guide/18-tools-utilities.typ guide/98-conflicts.typ guide/99-mod-ideas.typ
git commit -m "feat: all mod category file skeletons with example entries"
```

---

## Task 11: Build Verification

**Files:**

- None (verification only)

### Step 11.1: Build the PDF

Run:

```batch
build.bat
```

Expected: PDF compiles successfully to `output/The-Final-Cycle.pdf`.

If compilation fails, examine the Typst error output, fix the offending file, and re-run.

Typst errors to watch for:

- Missing `#include` files -- ensure all files from the include chain exist
- Undefined color/font variables -- ensure variable names match between files
- Syntax errors in `.typ` files -- check parentheses, brackets, quotes

### Step 11.2: Verify PDF content

Open `output/The-Final-Cycle.pdf` and verify:

- Cover page renders with logo, title, and version stamp
- Table of contents is generated with correct page numbers
- All sections appear in order
- Colors render correctly (dark background, N7 red headings, wave badges)
- Fonts render (fallback to system fonts is acceptable)
- Page numbers: Roman for front matter (i, ii), Arabic for body (1, 2, ...)

### Step 11.3: Commit

```bash
git commit -m "chore: verify PDF builds successfully" --allow-empty
```

If PDF failed and required fixes, commit those fixes instead:

```bash
git add -A
git commit -m "fix: corrections from build verification"
```
