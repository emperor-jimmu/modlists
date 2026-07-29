# The Final Cycle — Design Document

**Date:** 2026-07-21
**Status:** Approved
**Project:** Mass Effect Legendary Edition Modlist & Game Guide

---

## 1. Overview

**The Final Cycle** is a curated modlist and gameplay guide for Mass Effect Legendary Edition (MELE, 2021+). It organizes mods into two progressive "Waves" — each representing a more challenging, mod-enhanced playthrough with its own roleplaying background.

- **Wave 0**: Vanilla-friendly. Bugfixes, community patches, and essential UI/QoL mods that do not alter gameplay balance or add new content. No previous ME experience needed. Includes a complete How to Play primer.
- **Wave 1**: More mods across all categories — graphics, gameplay mechanics, content, audio, character appearance. Assumes prior ME experience. Includes an advanced strategy guide.

Mods must be MELE-compatible. Modern mods preferred for compatibility.

---

## 2. Wave Assignment Criteria

Each mod is assigned to a wave based on objective rules:

**Wave 0 — Always includes:**

- Bugfixes and community patches (LE1/LE2/LE3 Community Patches, Unofficial Patches)
- UI/QoL mods that: do NOT alter game balance, add content, or change mechanics
- Examples of acceptable Wave 0 QoL: faster elevators (skipping animation without skipping gameplay), improved journal/map, controller fixes, subtitle improvements

**Wave 1 — Everything else:**

- Graphics/texture mods (including MEM-based textures)
- Gameplay mechanics changes (combat rebalance, new powers, difficulty mods)
- New content (restored content, new quests, expanded dialogue)
- Audio/sound overhauls
- Character appearance changes (texture replacers, model swaps)
- Any mod that adds, removes, or alters game mechanics or content

**Not allowed in any wave:**

- Porn mods (adult/nude is acceptable if thematically relevant — ask if in doubt)
- Cheat/overpowered mods (see criteria below)
- Mods not compatible with MELE (2021+)

---

## 3. Cheat Detection Criteria

A mod is considered a "cheat" and excluded if it does any of the following:

- Grants infinite or effectively unlimited resources (credits, minerals, medi-gel, ammo, paragon/renegade points)
- Skips or auto-completes gameplay segments (e.g., auto-win minigames, skip boss fights)
- Reveals hidden game information the player should discover through gameplay (e.g., all dialogue outcomes shown in advance, hidden item locations without discovery mechanics)
- Trivializes combat (one-hit kills, invulnerability, enemy AI removal, infinite powers with no cooldown)
- Removes resource constraints that are core to game balance (infinite sprint, no weapon overheat)

The following are NOT cheats — they are QoL:

- Reducing tedium without removing challenge (faster scanning minigame animation, skippable repeated content on replay)
- More intuitive UI (better map markers, clearer quest journal, improved inventory management)
- Bugfixes and stability improvements

---

## 4. Output Artifact

A single PDF generated via **Typst** (v0.12+), output to `output/The-Final-Cycle.pdf`. The PDF includes:

- Cover page with logo, title, version number, and date
- Auto-generated table of contents
- "How to Use This Guide" navigation with two reader paths
- Full installation guide (ME3Tweaks toolchain, 2026) with disk space warnings
- Modding best practices
- MEM texture guide (including where to find texture mods)
- RPG character creation backgrounds per wave
- How to Play guides (Wave 0 primer — scoped sections; Wave 1 comprehensive)
- Categorized mod entries with wave badges, version numbers, and last-checked dates
- Known conflicts section
- Mod ideas for future development

---

## 5. Project Structure

```bash
masseffect-legendary-modlist/
├── AGENTS.md                              # AI agent instructions (mod rules, file conventions, research methodology)
├── README.md                              # Project overview, build instructions, credits, audience
├── build.bat                              # PDF generation with error handling
├── assets/
│   └── logo.png
├── fonts/                                 # Custom fonts for PDF (fallback .ttf/.otf)
├── guide/
│   ├── main.typ                           # Entry point, document config, #include chain
│   ├── 00-cover.typ                       # Cover page (logo, title, version, date)
│   ├── 01-introduction.typ                # Guide overview, wave philosophy, reader navigation
│   ├── 02-installation.typ                # ME3Tweaks setup, toolchain, backups, disk space
│   ├── 02a-modding-best-practices.typ     # Backup strategy, order rules, texture rule
│   ├── 02b-mem-texture-guide.typ          # MEM step-by-step texture installation
│   ├── 03-rpg-backgrounds.typ             # Character creation backgrounds (both waves)
│   ├── 04-how-to-play-wave0.typ           # Essential gameplay primer
│   ├── 05-how-to-play-wave1.typ           # Comprehensive advanced guide
│   ├── 09-bugfixes-patches.typ            # Bugfixes & Community Patches (foundational)
│   ├── 10-graphics.typ                    # Graphics mods
│   ├── 11-gameplay-mechanics.typ          # Gameplay/Mechanics mods
│   ├── 12-weapons-armor.typ               # Weapons & Armor mods
│   ├── 13-ui-qol.typ                      # UI & Quality of Life mods
│   ├── 14-quests.typ                      # Quest mods (new/restored missions)
│   ├── 15-content.typ                     # Content mods (dialogue, NPCs, non-quest additions)
│   ├── 16-audio-sound.typ                 # Audio/Sound mods
│   ├── 17-characters-appearance.typ       # Characters/Appearance mods
│   ├── 18-tools-utilities.typ             # Tools & Utilities mods
│   ├── 98-conflicts.typ                   # Known conflicts, DLC mount priority notes
│   └── 99-mod-ideas.typ                   # Future mod ideas
└── output/
    └── The-Final-Cycle.pdf
```

---

## 6. File Contents

### 6.1 `build.bat`

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
    echo Install Typst: https://github.com/typst/typst/releases
    pause
    exit /b 1
)

REM Get Typst version
for /f "tokens=2" %%v in ('typst --version') do set TYPST_VER=%%v
echo Typst version: %TYPST_VER%

REM Create output directory
if not exist "output" (
    echo Creating output directory...
    mkdir output
)

REM Check logo
if not exist "assets\logo.png" (
    echo [WARNING] assets\logo.png not found. Cover page will lack a logo.
)

REM Compile
echo.
echo Compiling PDF...
typst compile guide\main.typ output\The-Final-Cycle.pdf

if %errorlevel% equ 0 (
    echo.
    echo [SUCCESS] PDF generated: output\The-Final-Cycle.pdf
) else (
    echo.
    echo [ERROR] Compilation failed. Check Typst output above for details.
    pause
    exit /b 1
)

endlocal
```

### 6.2 `main.typ`

Document-level configuration:

- Page size: A4, margins 2.5cm
- Fonts: Inter (body), Orbitron (headings), JetBrains Mono (code) — with system fallbacks
    - Font files in `fonts/` directory take priority over system fonts
- Color palette: dark backgrounds, N7 red (`#D93829`), electric blue (`#00BFFF`), slate grays
- Table of contents (auto-generated)
- `#include` chain for all sub-files
- Custom functions defined:
    - `#wave-badge(waves)` — renders colored pill badges
    - `#mod-entry(name, url, waves, version, last-checked, deps, impact, notes)` — consistent mod listing
    - `#callout(type, body)` — styled callout boxes (info, warning, tip, dependency)
- Page numbering: Roman numerals for front matter (i, ii, iii...), Arabic for body (1, 2, 3...)

### 6.3 `00-cover.typ`

- Dark background fill (`#1A1A1A`)
- `logo.png` centered at 40% page width
- Title: "The Final Cycle" in Orbitron display font, N7 red
- Subtitle: "Mass Effect Legendary Edition — Modlist & Guide"
- Bottom-right: version number and date (e.g., "Revision 1 — July 2026")

### 6.4 `01-introduction.typ`

**What this guide is:**

- A curated modlist and companion guide for MELE
- Two-wave progressive system

**How to Use This Guide:**
Two reader paths, clearly separated:

> **New to Mass Effect? — Wave 0 Path**
>
> 1. Installation (Section 2) → 2. Modding Best Practices (Section 2a) → 3. Wave 0 RPG Background (Section 3) → 4. How to Play: Wave 0 (Section 4) → 5. Install Wave 0 mods in category order (Sections 9-16, "Wave 0" subsections only)

> **Returning Player? — Wave 1 Path**
>
> 1. Installation (Section 2) — if first time modding → 2. Modding Best Practices + MEM Guide (Sections 2a-2b) → 3. Wave 1 RPG Background (Section 3) → 4. How to Play: Wave 1 (Section 5) → 5. Install ALL mods in category order (Sections 9-16, all subsections)

**Modding philosophy:**

- No cheats (see criteria in cheat detection section above)
- MELE-compatible only (2021+)
- No conflicting or redundant mods
- Modern, maintained mods preferred

### 6.5 `02-installation.typ`

Full step-by-step, updated for 2026:

1. **System requirements**
   - MELE installed (~120GB)
   - **Disk space warning**: full game backup requires an additional ~120GB. Plan at least 250GB free for game + backup + mods.
   - Windows 10/11 recommended

2. **Downloading ME3Tweaks Mod Manager**
   - Official download location
   - Version check

3. **Installing and first-launch setup**
   - Install location
   - Game detection
   - Initial configuration wizard

4. **Toolchain overview**
   - ME3Tweaks Mod Manager — primary mod installer and organizer (DLC-based modding)
   - Mass Effect Modder (MEM) — texture installation (bundled with ME3Tweaks)
   - Trilogy Save Editor — save file management, character editing
   - AutoTOC — updates game's table of contents after mod changes (bundled with ME3Tweaks)

5. **Creating a full game backup**
   - How to back up the entire MELE installation (~120GB)
   - Recommended: copy the entire game directory to a backup location
   - Why: texture mods are "sticky" — the cleanest way to change mods post-texture is restoring from backup
   - Backup BEFORE installing any mods

6. **DLC mount priority and conflict resolution**
   - ME3Tweaks installs mods as DLC packages in the game's DLC directory
   - Unlike Bethesda games, there is no plugin-based "load order"
   - Conflict resolution: when two mods modify the same file, the mod installed LAST wins
   - Mount priority: mods are mounted in the order they were installed
   - Rule: install foundational mods first, then specific mods, then textures last

7. **Common troubleshooting**
   - Game won't launch after modding
   - Black screen or infinite loading
   - Missing textures or broken meshes
   - Restoring from backup procedure
   - Where to find help (ME3Tweaks Discord, NexusMods forums)

### 6.6 `02a-modding-best-practices.typ`

- **Always backup before modding** — full game directory copy, no exceptions
- **Install in small batches** — 3-5 mods at a time, launch game between batches to verify
- **The texture rule** — texture mods (applied via MEM) go LAST in the install order. If you need to add or change mods after applying textures, you MUST: restore clean backup → reinstall all mods in the correct order → re-apply textures last
- **Document your install order** — maintain a personal log; ME3Tweaks tracks installed mods, but a manual log helps with troubleshooting
- **Install dependencies before dependents** — if Mod B requires Mod A, install Mod A first
- **When to restore a backup** — after uninstalling mods, after adding mods post-texture, when troubleshooting unexplained crashes
- **Category install order** — recommended sequence: Bugfixes/Patches → Tools/Utilities → Gameplay/Mechanics → Weapons/Armor → UI/QoL → Quests → Content → Audio → Characters/Appearance → Graphics → Textures (MEM)

### 6.7 `02b-mem-texture-guide.typ`

- **What is Mass Effect Modder (MEM)?** — A tool bundled with ME3Tweaks for installing texture replacements. Unlike standard mods (DLC packages), texture mods directly replace game texture files (.tfc archives).
- **Where to get texture mods** — Primarily NexusMods, under the MELE category. Look for `.mem` file format or mods that specify "MEM installation" or "Mass Effect Modder" in their description. Some mods include both DLC packages and MEM texture files.
- **Launching MEM from within ME3Tweaks** — Step-by-step with UI reference
- **Installing texture mods** — Selecting .mem files, game detection, scanning for textures, applying
- **Applying and verifying textures** — The scan → install → verify workflow
- **Texture load order within MEM** — Order matters: later-applied textures overwrite earlier ones. Apply base textures first, then specific overrides.
- **Common pitfalls**
    - Applying textures before all DLC mods are installed (forces full reinstall if you add mods later)
    - Conflicting texture mods (two mods replacing the same texture — last applied wins)
    - Large texture packs causing performance issues on lower-end hardware
    - How to revert: restore from backup and reapply

### 6.8 `03-rpg-backgrounds.typ`

Two character profiles — character creation choices only. No spoiler story decisions.

Each profile includes:

- **First name** — suggested name for the playthrough
- **Origin** — Spacer, Colonist, or Earthborn
- **Psychological profile** — Sole Survivor, War Hero, or Ruthless
- **Class** — one of the six classes
- **Short narrative intro** — 2-4 sentences setting the tone for this character's journey

**Wave 0:** A newcomer-friendly profile — possibly Soldier or Infiltrator (straightforward mechanics), War Hero or Sole Survivor (heroic alignment conducive to Paragon first playthrough)

**Wave 1:** A more nuanced profile — possibly Adept, Vanguard, or Sentinel (power-focused), Ruthless or Colonist (morally complex background)

### 6.9 `04-how-to-play-wave0.typ`

**Essential primer — spoiler-free. Target: ~8-10 pages.**

Section outline:

1. **Getting Started** (0.5 page)
   - Difficulty selection (Normal recommended for first playthrough)
   - Auto-save and manual save habits
   - Conversation wheel basics

2. **Class Overview** (1.5 pages)
   - One paragraph per class describing playstyle, strengths, and beginner-friendliness
   - Soldier: straightforward gunplay, durable — recommended for beginners
   - Infiltrator: sniper + tech, cloak for emergencies
   - Adept: space wizard, crowd control, fragile
   - Engineer: tech specialist, debuffs, drones
   - Vanguard: high-risk shotgun+charge, exciting but punishing
   - Sentinel: hybrid tank, tech+biótic, forgiving

3. **Combat Basics** (2 pages)
   - Cover system: how to enter/exit, when to use it
   - Weapons: types, effective ranges, ammo (thermal clips)
   - Powers: cooldown system, targeting, combining with squad
   - Squad commands: directing squadmates, using their powers
   - Health, shields, barriers, armor — what they mean
   - Medi-gel and revival

4. **Squad Management** (1 page)
   - How to choose squadmates for missions
   - Complementing your class with squad powers
   - Squadmate loyalty and conversations between missions (talk to everyone!)

5. **Morality System** (1 page)
   - Paragon (top-right dialogue), Renegade (bottom-right dialogue)
   - Charm and Intimidate — what they unlock
   - Commitment matters: focus on one path for best outcomes
   - Neutral/investigate options are always safe

6. **Exploration & Activities** (1.5 pages)
   - Galaxy map navigation
   - Planet scanning for resources (in each game)
   - Mako driving (ME1) — tips for handling
   - Side missions vs. main missions — do side content first
   - Hub areas: explore, talk to everyone, check vendors

7. **Equipment & Inventory** (1 page)
   - Weapons, armor, mods, omni-tools, biótic amps
   - What to look for in equipment (damage, protection, power bonuses)
   - Selling vs. keeping — convert low-tier gear to omni-gel (ME1) or sell (ME2/ME3)
   - Upgrading weapons and armor

8. **New Player Tips** (1 page)
   - Save often, in multiple slots
   - Decisions carry across all three games
   - Talk to squadmates between every mission
   - Don't skip loyalty missions
   - The importance of the "Suicide Mission" preparation (ME2, vague — no spoilers)

### 6.10 `05-how-to-play-wave1.typ`

**Comprehensive advanced guide. Target: ~12-15 pages. Assumes Wave 0 knowledge. Contains mechanics spoilers (power combos, optimal builds) but no story spoilers.**

Section outline:

1. **Power Combo System** (2.5 pages)
   - Primer/detonator mechanics across all three games
   - Tech combos: Tech Burst, Fire Explosion, Cryo Explosion, Tech Burst chain
   - Biótic combos: Biotic Explosion mechanics, Warp detonations
   - Combo damage scaling and difficulty considerations
   - Which powers prime, which detonate (per game)
   - Combo builds for each class

2. **Weapon Optimization** (2 pages)
   - Weapon tier system across games
   - Mod attachments: which mods for which weapon types
   - Ammo powers: choosing the right ammo for your class and squad
   - Weapon weight vs. power cooldown (ME3)
   - Best-in-slot weapons per class and playstyle

3. **Armor & Build Synergy** (1.5 pages)
   - Armor pieces and set bonuses
   - Custom armor configurations for power damage, weapon damage, or survivability
   - Building around your class strengths
   - Respeccing: when and why

4. **Economy & Resource Management** (1 page)
   - Credit earning across games
   - What to buy vs. what to skip
   - Mineral/resource farming efficiency
   - War Assets (ME3) — no spoiler specifics, just the system explanation

5. **Insanity Difficulty** (2 pages)
   - What changes on Insanity: enemy health, shields, aggression
   - Class-specific Insanity tactics
   - Squad composition for Insanity per game
   - Survivability strategies (shield-gating, positioning, crowd control)
   - Recommended bonus powers for Insanity

6. **Squad Synergy** (2 pages)
   - Deep dive: best squadmates for each class
   - Power combo partners (who pairs well with whom)
   - Squadmate power selection and auto-leveling (when to manual)
   - Weapon loadout recommendations for squadmates

7. **Import Mechanics** (1 page)
   - What carries over between games (decisions, levels, resources)
   - Level cap and bonus start benefits
   - Key decisions that have cross-game consequences (vague, no spoilers)

### 6.11 `09-bugfixes-patches.typ`

**Category: Bugfixes & Community Patches**

This category is foundational — install these first, before any other category. Both Wave 0 and Wave 1 should install all patches.

Each mod entry uses the `#mod-entry()` function (defined in main.typ):

```
#mod-entry(
  name: "LE1 Community Patch",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/###",
  waves: (0, 1),
  version: "v1.6",
  last-checked: "2026-07",
  deps: (),
  impact: [Fixes hundreds of bugs in Mass Effect 1. Restores broken content, corrects dialogue flags, fixes quest logic. Required for a stable playthrough.],
  notes: none,
)
```

Mod entries sorted by recommended install order within the category.

For categories 10-18, each file is structured with two subsections:

### Wave 0 subsection

Only mods assigned to Wave 0 appear here. Labeled "Wave 0" with a blue badge heading.

### Wave 1 Additional subsection

Mods that are Wave 1 only or Wave 0+1 appear here. Labeled "Wave 1" with an orange/red badge heading. A Wave 1 player installs the Wave 0 subsection mods first, then the Wave 1 subsection.

Wave 0 readers can stop after the "Wave 0" subsection of each category and skip the rest.

### 6.12 Mod Category Files (`10-18-*.typ`)

**Categories:**

| #  | File                           | Category              |
|----|--------------------------------|-----------------------|
| 09 | `09-bugfixes-patches.typ`      | Bugfixes & Patches    |
| 10 | `10-graphics.typ`              | Graphics              |
| 11 | `11-gameplay-mechanics.typ`    | Gameplay/Mechanics    |
| 12 | `12-weapons-armor.typ`         | Weapons & Armor       |
| 13 | `13-ui-qol.typ`                | UI & Quality of Life  |
| 14 | `14-quests.typ`                | Quests (new/restored) |
| 15 | `15-content.typ`               | Content (dialogue, NPCs, etc.) |
| 16 | `16-audio-sound.typ`           | Audio/Sound           |
| 17 | `17-characters-appearance.typ` | Characters/Appearance |
| 18 | `18-tools-utilities.typ`       | Tools & Utilities     |

### 6.13 `#mod-entry()` Function Specification

Defined in `main.typ`:

```typst
#let mod-entry(
  name: "",           // string — mod display name
  url: "",            // string — full URL to mod page
  waves: (),          // array of integers — (0,) for Wave 0, (1,) for Wave 1, (0,1) for both
  version: "",        // string — latest compatible version, e.g. "v2.1"
  last-checked: "",   // string — date last verified compatible, e.g. "2026-07"
  deps: (),           // array of strings — mod names this mod depends on; empty array if none
  impact: none,       // content block — description of what the mod changes (formatted text)
  notes: none,        // content block or none — non-standard installation instructions; omit if standard
) = {
  // Renders:
  // [Wave badge pills]  **name** (version vX.Y)  [last checked: date]
  //
  //   url (clickable link)
  //
  //   **Dependencies:** dep1, dep2 (or "None" if deps is empty)
  //   **Impact:** impact content block
  //   **Installation notes:** notes content block (only if notes is not none)
}
```

All parameters are required except `notes` (omit for standard ME3Tweaks install).

### 6.14 `98-conflicts.typ`

- Known incompatible mod pairs with explanations
- DLC mount priority conflicts (two mods modifying the same game file — last installed wins)
- Special conflict resolution steps (compatibility patches, install order workarounds)
- Category grouping by conflict type: "Incompatible Pairs" and "Overwrite Warnings"

### 6.15 `99-mod-ideas.typ`

- Mod concepts for future development
- Missing functionality ideas
- Community wishlist items

---

## 7. Visual Design

### 7.1 Colors

| Role                                 | Color         | Hex       |
|--------------------------------------|---------------|-----------|
| Primary accent (headings, badges)    | N7 Red        | `#D93829` |
| Secondary accent (links, highlights) | Electric Blue | `#00BFFF` |
| Page background                      | Near-black    | `#1A1A1A` |
| Content background                   | Dark charcoal | `#2D2D2D` |
| Warning/conflict                     | Amber         | `#FFA500` |
| Info callout                         | Muted blue    | `#3A5A7C` |
| Text body                            | Light gray    | `#E0E0E0` |
| Wave 0 badge                         | Blue          | `#4A90D9` |
| Wave 1 badge                         | Orange        | `#E07B39` |
| Success/positive                     | Green         | `#4CAF50` |

### 7.2 Typography

- Body: Inter (sans-serif, clean readability)
- Headings: Orbitron (sci-fi display font)
- Code/monospace: JetBrains Mono
- Fallback chain: heading -> system sans-serif, body -> system sans-serif, mono -> system monospace
- `fonts/` directory for distributing fallback .ttf/.otf files

### 7.3 UI Elements

- **Wave badges**: Rounded pill shapes — blue "Wave 0", orange "Wave 1"
- **Callout boxes**: Colored left-border blocks — blue for info, amber for warning, green for tip, red for dependency
- **Mod entries**: Alternating row shading (dark charcoal, slightly lighter charcoal), clear hierarchy
- **Cover**: Centered logo, title in Orbitron display font at 36pt, subtitle at 18pt, dark background, version stamp bottom-right
- **Section headings**: N7 red with Orbitron font, numbered (1, 2, 3...)
- **Code blocks**: JetBrains Mono on slightly lighter background for contrast

---

## 8. Non-Mod Files

### 8.1 `AGENTS.md`

Purpose: Instructions for AI agents working on this project.

Content:

- Project description and purpose
- File conventions: `.typ` files in `guide/`, generated PDF in `output/`
- Mod rules reference (link to spec or inline)
- Mod entry template and `#mod-entry()` function signature
- Research methodology: check NexusMods MELE category, verify compatibility, prefer maintained mods
- When adding mods: update the correct category file, list dependencies, verify no conflicts exist
- Build command: `typst compile guide/main.typ output/The-Final-Cycle.pdf`
- Before committing: run the build and verify it succeeds

### 8.2 `README.md`

Purpose: Human-facing project overview.

Content:

- **The Final Cycle** — Mass Effect Legendary Edition modlist and gameplay guide
- What's included: curated modlist, installation guide, how-to-play guides, RPG backgrounds
- Wave system explained (brief)
- Audience: both new ME players and veterans
- How to build: prerequisites (Typst), run `build.bat`
- Credits and acknowledgements
- License note

---

## 9. Extensibility

The project is versioned. Future waves (Wave 2, Wave 3) can be added by:

1. Adding new mod entries with `waves: (2,)` to existing category files
2. Adding a new "Wave 2 Additional" subsection to each category
3. Creating `06-how-to-play-wave2.typ` for additional gameplay guidance
4. Adding a Wave 2 RPG background to `03-rpg-backgrounds.typ`
5. Bumping the cover version number

File numbering leaves room: `06-` through `08-` are reserved for future how-to-play files. Category files are `09-18` (09 = bugfixes/patches, 10-18 = standard categories). Additional mod categories can be inserted before 98-conflicts.

---

## 10. Implementation Notes

### 10.1 Typst Template

- Defined inline in `main.typ`
- `#wave-badge(waves)` — renders one or two pill badges
- `#mod-entry(...)` — renders a complete mod entry block
- `#callout(type, body)` — renders a styled callout box
- Page numbering: Roman for front matter, Arabic for body
- Auto-generated table of contents

### 10.2 Build

```batch
typst compile guide/main.typ output/The-Final-Cycle.pdf
```

`build.bat` handles pre-flight checks (Typst installed, output dir exists, logo present).

### 10.3 Dependencies

- Typst CLI v0.12+
- System fonts or fonts in `fonts/` directory
- No external Typst packages (self-contained)
