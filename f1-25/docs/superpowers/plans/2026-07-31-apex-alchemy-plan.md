# Apex Alchemy Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build a complete structured modlist + game guide/tutorial for F1 25 v1.24 with 3 waves, Simplified Launcher mod management, and a Typst-generated PDF.

**Architecture:** Markdown content files in `guide/` directory organized by wave. Single `GUIDE.md` concatenates all content. Typst templates (`templates/guide.typ`, `templates/style.typ`) parse markdown via cmarker to produce a themed PDF. PowerShell script automates Typst compilation.

**Tech Stack:** Markdown, Typst 0.15.1, cmarker 0.1.10, PowerShell 7, OverTake.gg for mod sourcing.

**Verified:** Simplified Launcher for F1 25 v3.2.10 by Team Simplified — confirmed on OverTake.gg.

**Mod Research:** User will provide verified mods separately. Task 5 formats and inserts them.

**Guide Content Caveat:** All game-mechanic content (controls, assists, career features, ERS modes, etc.) is written from F1 series knowledge. A future task should verify specifics against the actual F1 25 v1.24 in-game screens.

---

### Task 1: Create Project Skeleton and Boilerplate

**Files:**

- Create: `f1-25/guide/wave-0/how-to-play.md`
- Create: `f1-25/guide/wave-0/mods.md`
- Create: `f1-25/guide/wave-1/strategy.md`
- Create: `f1-25/guide/wave-1/mods.md`
- Create: `f1-25/guide/wave-2/advanced.md`
- Create: `f1-25/guide/wave-2/mods.md`
- Create: `f1-25/templates/guide.typ`
- Create: `f1-25/templates/style.typ`
- Create: `f1-25/output/.gitkeep`
- Create: `f1-25/.gitignore`
- Create: `f1-25/VERSION`
- Create: `f1-25/AGENTS.md`
- Create: `f1-25/README.md`
- Create: `f1-25/STATUS.md`
- Create: `f1-25/GUIDE.md`
- Create: `f1-25/generate-pdf.ps1`
- Create: `f1-25/conflicts-mods.md`
- Create: `f1-25/mod-ideas.md`

- [ ] **Step 1: Create all directories**

```powershell
New-Item -ItemType Directory -Path "f1-25\guide\wave-0" -Force
New-Item -ItemType Directory -Path "f1-25\guide\wave-1" -Force
New-Item -ItemType Directory -Path "f1-25\guide\wave-2" -Force
New-Item -ItemType Directory -Path "f1-25\templates" -Force
New-Item -ItemType Directory -Path "f1-25\output" -Force
```

- [ ] **Step 2: Write VERSION**

```markdown
0.1.0
```

- [ ] **Step 3: Write .gitignore**

```gitignore
# Generated PDFs (rebuild from source, don't track binaries)
output/APEX-ALCHEMY-GUIDE.pdf

# Typst cache
output/*.png
output/*.svg

# OS files
Thumbs.db
.DS_Store
```

- [ ] **Step 4: Write AGENTS.md**

```markdown
# F1 25 Apex Alchemy — AGENTS.md

This document defines the vision, constraints, and working conventions for the Apex Alchemy F1 25 modlist. Every session working on this project must align with the principles below.

---

## Core Vision

A progressive modlist + game guide for F1 25 that teaches complete beginners how to play racing games while introducing modding in later waves. Wave 0 is a standalone "how to play F1 25" tutorial. Waves 1 and 2 layer on strategy depth, mod content, and new mechanics.

## Wave Structure (3 waves)

| Wave | Audience           | Content Focus                       | Mod Philosophy                     |
|------|--------------------|-------------------------------------|------------------------------------|
| 0    | Complete beginners | Full how-to-play guide              | Vanilla + Simplified Launcher only |
| 1    | Intermediate       | Strategy, telemetry, cameras        | Content mods + new mechanics       |
| 2    | Advanced           | Setup mastery, custom championships | Rich systems + full customization  |

## Mod Rules

- **Allowed:** Graphics/visuals, new content, new mechanics (Wave 1+), adult/nude if thematically relevant
- **Forbidden:** Conflicting mods, meme/joke mods, explicit porn, redundant mods, cheats/overpowered mods, anything incompatible with F1 25 v1.24
- **No fabrication** — only real, verified mods with working OverTake.gg URLs
- **Primary source:** OverTake.gg

## Mod Entry Format

Every mod entry must use this consistent table format:

```markdown
#### [Mod Name](verified-overtake-url)

| Detail              | Value                                        |
|---------------------|----------------------------------------------|
| **Version**         | X.Y.Z                                        |
| **Author**          | Author Name                                  |
| **Dependencies**    | List or None                                 |
| **What It Changes** | Description of the mod's impact on the game. |
| **Installation**    | Any special installation notes.              |
```

## Technical Standards

```
Game Version         F1 25 v1.24 (July 13, 2026)
Mod Organizer        Simplified Launcher v3.2.10 (by Team Simplified)
PDF Engine           Typst 0.15.1
Markdown Parser      cmarker 0.1.10

File Layout          guide/              — guide + modlist organized by wave
                     templates/          — Typst document templates
                     output/             — generated PDFs
                     AGENTS.md           — this file
                     STATUS.md           — living decision log
                     GUIDE.md            — compiled single-source markdown
                     conflicts-mods.md   — known conflicts (not in PDF)
                     mod-ideas.md        — future ideas (not in PDF)
```

## Session Navigation

1. Read STATUS.md — understand what's in progress, blocked, done
2. Pick one chunk — one completed unit of work per session
3. Update STATUS.md — mark completed, note blockers, set next chunk

## Mod Research Protocol

When searching OverTake.gg for mods:

1. Use Playwright browser to navigate the site (Cloudflare protection blocks direct HTTP)
2. Search the F1 25 categories: F1 25 Skins, F1 25 My Team, F1 25 Helmets, F1 25 Track updates, F1 25 Plugins, F1 25 Misc
3. For each candidate mod, verify: version compatibility with v1.24, last update date, dependencies
4. Record all findings in STATUS.md — accepted AND rejected

```

- [ ] **Step 5: Write STATUS.md**

```markdown
# STATUS — Apex Alchemy (F1 25)

## Legend

- [x] = completed
- [ ] = pending
- [!] = blocked

## Completed

### Project Setup
- [x] Project skeleton created with all directories and files
- [x] AGENTS.md written with vision, rules, and conventions
- [x] VERSION set to 0.1.0
- [x] .gitignore created (excludes generated PDFs)
- [x] Simplified Launcher v3.2.10 verified on OverTake.gg

## Pending

### Wave 0 — First Lap
- [ ] How-to-play guide written (9 sections)
- [ ] Wave 0 mods documented (Simplified Launcher entry)

### Wave 1 — Building Speed
- [ ] Strategy guide written (7 sections)
- [ ] Wave 1 mods formatted and inserted (user-supplied)

### Wave 2 — Apex Predator
- [ ] Advanced guide written (5 sections)
- [ ] Wave 2 mods formatted and inserted (user-supplied)

### PDF
- [ ] Typst style.typ written (Carbon & Crimson theme)
- [ ] Typst guide.typ written (cover + TOC + body)
- [ ] Typst theme verified with test compilation
- [ ] generate-pdf.ps1 written
- [ ] GUIDE.md built from guide/ sources
- [ ] PDF compiles cleanly with verified output

## Decisions

### Mod Organizer
- [x] Simplified Launcher v3.2.10 chosen — verified on OverTake.gg, 57 reviews, 10 updates, YouTube tutorial available
- [x] URL: https://www.overtake.gg/downloads/simplified-launcher-for-f1-25-used-to-quickly-manage-and-launch-mods.77451/
- [x] Discord: https://discord.gg/GQZn5gbBdg
- [x] Features: drag-and-drop mod install, ZIP/RAR/7Z support, backup/restore, favorites, categories, presets, conflict detection
- [x] Note: Windows Defender may flag as false positive (unsigned Python self-package)

### Guide Content
- [ ] Game-mechanic content NOT yet verified against actual F1 25 v1.24 in-game screens — TODO: cross-reference controls, assist menu, career UI, ERS modes

## Skipped / Rejected

(None yet)
```

- [ ] **Step 6: Write README.md**

```markdown
# Apex Alchemy — F1 25 Modlist & Guide

A structured modlist and game guide for **F1 25 v1.24** (July 13, 2026).

## What's Inside

- **Wave 0 — First Lap:** Complete beginner's tutorial. Learn to drive, race, and manage a career. Zero game knowledge required.
- **Wave 1 — Building Speed:** Intermediate strategy, telemetry dashboards, camera mods, livery customisation. Layer in your first mods.
- **Wave 2 — Apex Predator:** Advanced car setup, custom championships, physics tweaks, full visual overhaul. Become the complete driver.

## Quick Start

1. Read the PDF: `output/APEX-ALCHEMY-GUIDE.pdf`
2. Install F1 25 and update to v1.24
3. Follow the Wave 0 installation steps

## Regenerate PDF

```powershell
.\generate-pdf.ps1
```

Requires Typst 0.15.1: `winget install Typst.Typst`

## Structure

```
f1-25/
├── guide/             # Guide + modlist organised by wave
│   ├── wave-0/        # Beginner tutorial + tools
│   ├── wave-1/        # Intermediate strategy + mods
│   └── wave-2/        # Advanced guide + mods
├── templates/         # Typst PDF templates
├── output/            # Generated PDFs
├── GUIDE.md           # Compiled single-source markdown
├── STATUS.md          # Project decisions and progress
├── AGENTS.md          # Vision, constraints, conventions
├── conflicts-mods.md  # Known mod conflicts
└── mod-ideas.md       # Future mod ideas
```

```

- [ ] **Step 7: Write conflicts-mods.md** (placeholder with purpose)

```markdown
# Conflicts & Known Issues — Apex Alchemy

This file documents known conflicts between mods and game issues.
It is NOT included in the generated PDF.

## Format

For each conflict, record:
- Which mods conflict
- What happens (crash, broken feature, visual glitch)
- Resolution (load order fix, config change, one must be removed)

## Known Conflicts

(None documented yet — populate during mod testing)
```

- [ ] **Step 8: Write mod-ideas.md** (placeholder with purpose)

```markdown
# Mod Ideas — Apex Alchemy

Future mods to investigate, rejected mods with reasons, and community suggestions.
NOT included in the generated PDF.

## Format

For each idea, record:
- Mod name and URL (if known)
- Which wave it would fit in
- Why it's not included yet (needs testing, incompatible version, user preference)

## Candidates

(None yet — populated during research and community feedback)
```

- [ ] **Step 9: Create remaining empty files**

```powershell
New-Item -ItemType File -Path "f1-25\guide\wave-0\how-to-play.md" -Force
New-Item -ItemType File -Path "f1-25\guide\wave-0\mods.md" -Force
New-Item -ItemType File -Path "f1-25\guide\wave-1\strategy.md" -Force
New-Item -ItemType File -Path "f1-25\guide\wave-1\mods.md" -Force
New-Item -ItemType File -Path "f1-25\guide\wave-2\advanced.md" -Force
New-Item -ItemType File -Path "f1-25\guide\wave-2\mods.md" -Force
New-Item -ItemType File -Path "f1-25\templates\guide.typ" -Force
New-Item -ItemType File -Path "f1-25\templates\style.typ" -Force
New-Item -ItemType File -Path "f1-25\output\.gitkeep" -Force
New-Item -ItemType File -Path "f1-25\GUIDE.md" -Force
New-Item -ItemType File -Path "f1-25\generate-pdf.ps1" -Force
```

- [ ] **Step 10: Verify structure**

```powershell
Get-ChildItem -Recurse -File "f1-25" | ForEach-Object { $_.FullName.Replace("$PWD\", "") }
```

Expected: All files listed, no errors.

- [ ] **Step 11: Commit**

```bash
git add f1-25/guide f1-25/templates f1-25/output f1-25/conflicts-mods.md f1-25/mod-ideas.md f1-25/VERSION f1-25/AGENTS.md f1-25/README.md f1-25/STATUS.md f1-25/GUIDE.md f1-25/generate-pdf.ps1 f1-25/.gitignore
git commit -m "f1-25: create project skeleton with all boilerplate files"
```

---

### Task 2: Write Wave 0 Guide Content

**Files:**

- Write: `f1-25/guide/wave-0/how-to-play.md`
- Write: `f1-25/guide/wave-0/mods.md`

- [ ] **Step 1: Write how-to-play guide**

```markdown
## Wave 0 — First Lap

**Roleplaying Background:** You're a rookie driver, fresh out of karting. You've never turned a wheel in a Formula 1 car. The team will teach you everything — from what the buttons on the wheel do, to surviving your first race weekend. Take it slow. Absorb it all. Everyone starts somewhere.

---

### 0.1 — Getting Started

#### Installing F1 25

F1 25 is available on Steam, EA App, and Epic Games Store. Install via your platform of choice and ensure the game is updated to **v1.24** (released July 13, 2026).

Verify your version in the main menu — it appears in the bottom-right corner.

#### Simplified Launcher Setup

The **Simplified Launcher** by Team Simplified is the recommended mod manager for F1 25. It installs, manages, and launches mods without touching your original game files.

| Detail   | Value                                                                                                                                                  |
|----------|--------------------------------------------------------------------------------------------------------------------------------------------------------|
| Download | [Simplified Launcher for F1 25 v3.2.10](https://www.overtake.gg/downloads/simplified-launcher-for-f1-25-used-to-quickly-manage-and-launch-mods.77451/) |
| Author   | Team Simplified                                                                                                                                        |
| Support  | [Team Simplified Discord](https://discord.gg/GQZn5gbBdg)                                                                                               |
| Tutorial | [YouTube — Simplified Launcher v3.0 Tutorial](https://www.youtube.com/watch?v=de5mGVzbaso)                                                             |

**Installation Steps:**

1. Download the Simplified Launcher from OverTake.gg (requires a free OverTake.gg account)
2. Extract the ZIP file to a folder of your choice (e.g., `C:\Tools\SimplifiedLauncher`)
3. Run `SimplifiedLauncher.exe`
4. Set your F1 25 game directory when prompted — this is where F1 25 is installed:
   - Steam: `C:\Program Files (x86)\Steam\steamapps\common\F1 25`
   - EA App: `C:\Program Files\EA Games\F1 25`
   - Epic: `C:\Program Files\Epic Games\F1 25`
5. The launcher is now ready. No mods are needed for Wave 0 — we'll add them in Waves 1 and 2.

> **Note:** Some antivirus software may flag the Simplified Launcher as a false positive. The developer confirms this is due to Python self-packaging without a code signing certificate. The tool is safe to use — add an exception if needed.

**Key Features (for later waves):**
- **Drag and drop** mod archives onto the app to install
- **Backup and restore** — original game files are backed up before mod installation, restored when you quit
- **Clean online play** — when not using the launcher, your game is completely vanilla
- **Presets** — save mod combinations and share them with friends
- **Categories** — organize mods into folders (My Team, Helmets, etc.)
- **Conflict detection** — prevents two mods that replace the same files from launching together

> **Verification note:** The controls, assists, and game mechanics described below are written from F1 series knowledge. Specific F1 25 v1.24 menus, default bindings, and feature names should be verified against the actual game in a future pass.

---

### 0.2 — Controls

#### Controller vs Wheel

You can play F1 25 with either a **controller** (Xbox, PlayStation) or a **racing wheel**. Both are fully viable.

**Controller** — The default input method. Good for learning and casual play. The game's assist systems compensate for the lack of precision.

**Racing Wheel** — Provides force feedback, finer steering control, and a more immersive experience. Recommended if you're serious about sim racing, but not required to enjoy or complete the game.

#### Essential Controls (Controller)

| Input                    | Action                         |
|--------------------------|--------------------------------|
| Left Stick               | Steer                          |
| Right Trigger (RT)       | Accelerate                     |
| Left Trigger (LT)        | Brake                          |
| A (Xbox) / X (PS)        | Overtake (ERS boost)           |
| B (Xbox) / Circle (PS)   | DRS (when available)           |
| X (Xbox) / Square (PS)   | Change ERS mode                |
| Y (Xbox) / Triangle (PS) | Pit limiter / request pit stop |
| D-Pad Left/Right         | Change MFD panel               |
| D-Pad Up/Down            | Adjust within MFD panel        |
| Left Bumper (LB)         | Look back                      |
| Right Bumper (RB)        | Change camera                  |
| Menu/Options             | Pause                          |

#### Essential Controls (Wheel)

If you have a wheel, customize bindings in **Settings > Controls > Custom**. At minimum, bind:
- Upshift / Downshift (paddles)
- Overtake button
- DRS button
- MFD navigation (rotary or D-Pad)
- Pit limiter

#### Calibration

Before your first drive:
1. Go to **Settings > Controls > Calibration**
2. Follow the on-screen prompts to calibrate steering, throttle, and brake
3. For wheel users: set **Steering Rotation** to 360 degrees for F1 cars

---

### 0.3 — Assists

F1 25 offers a range of driving assists that make the car easier to control. As a complete beginner, use them. You can reduce or disable them as you improve.

#### Recommended Beginner Assist Preset

| Assist                 | Setting      | Why                                                           |
|------------------------|--------------|---------------------------------------------------------------|
| Steering Assist        | Off          | Can fight your inputs — leave off even as a beginner          |
| Braking Assist         | Off          | Learn to brake yourself from day one                          |
| Anti-Lock Brakes (ABS) | On           | Prevents wheel lock under braking                             |
| Traction Control       | Medium       | Prevents wheelspin on throttle; Full TC is too invasive       |
| Dynamic Racing Line    | Corners Only | Shows braking and turn-in points without cluttering straights |
| Gearbox                | Automatic    | Focus on steering and braking first                           |
| Pit Assist             | On           | Handles pit entry/exit for you                                |
| Pit Release Assist     | On           | Releases you into safe gaps                                   |
| ERS Assist             | On           | Manages deployment automatically                              |
| DRS Assist             | On           | Opens DRS automatically when available                        |

**When to reduce assists:** Once you can consistently complete a race weekend without spinning or crashing, start reducing. Suggested order: Traction Control to Low, then Gearbox to Manual (Suggested), then ABS Off, then ERS to Manual.

---

### 0.4 — Driving Basics

#### The Racing Line

The racing line is the fastest path through a corner. It follows this pattern:

1. **Approach** from the outside of the track
2. **Turn in** toward the apex (the innermost point of the corner)
3. **Clip the apex** — get as close to the inside curb as possible
4. **Track out** to the outside on exit, using the full width of the track

#### Braking

- Brake in a straight line **before** the corner, not during
- Release the brake smoothly as you turn in (this is called "trail braking" — practice it later)
- If you're locking wheels, brake earlier and with less pressure, or enable ABS

#### Throttle Application

- Apply throttle smoothly on corner exit
- Going full throttle too early causes wheelspin and sliding — wait until the car is straightened
- With Traction Control on Medium, the game will help manage this

#### Corner Types

| Type         | Speed       | Approach                                                             |
|--------------|-------------|----------------------------------------------------------------------|
| Hairpin      | Very slow   | Hard braking in a straight line, late apex, patience on throttle     |
| Medium-speed | Moderate    | Light brake or lift, smooth turn-in, early throttle                  |
| High-speed   | Fast        | Brief lift off throttle, minimal steering input, full throttle early |
| Chicane      | Slow-medium | Brake for first part, attack the curbs, quick direction change       |

#### Practice

Start with **Time Trial** mode. Pick a track (Bahrain is a good starter — wide, forgiving, mix of corner types). Drive laps. Watch the delta timer — green means you're faster than your best, red means slower. Aim for consistency, not hero laps.

---

### 0.5 — Race Weekend Structure

A Formula 1 race weekend follows this format:

#### Standard Weekend (most races)

| Session               | Duration              | Purpose                                          |
|-----------------------|-----------------------|--------------------------------------------------|
| FP1 (Free Practice 1) | 60 minutes            | Learn the track, test setups, run long-run pace  |
| FP2 (Free Practice 2) | 60 minutes            | Qualifying simulations, race pace runs           |
| FP3 (Free Practice 3) | 60 minutes            | Final setup tweaks, short qualifying simulations |
| Qualifying            | Q1/Q2/Q3 format       | Set your grid position                           |
| Race                  | ~305 km / ~90 minutes | The main event                                   |

#### Sprint Weekend (select races)

Sprint weekends replace one practice session with a shorter race on Saturday:

| Session           | Duration                     |
|-------------------|------------------------------|
| FP1               | 60 minutes                   |
| Sprint Qualifying | SQ1/SQ2/SQ3 (shorter format) |
| Sprint Race       | ~100 km / ~30 minutes        |
| Race              | Full distance                |

#### Qualifying Format (Q1/Q2/Q3)

- **Q1 (18 minutes):** All 20 drivers — slowest 5 eliminated (positions 16-20)
- **Q2 (15 minutes):** 15 fastest from Q1 — slowest 5 eliminated (positions 11-15)
- **Q3 (12 minutes):** 10 fastest from Q2 — fight for pole position (positions 1-10)

You get one set of tyres per qualifying segment. Plan your runs — go out early to set a banker lap, then improve on a second run when the track has more grip.

---

### 0.6 — Tyres 101

F1 uses Pirelli tyres in six compounds per race weekend:

| Compound     | Colour | Use Case                                                   |
|--------------|--------|------------------------------------------------------------|
| Soft         | Red    | Fastest, most grip, wears out fastest — used in qualifying |
| Medium       | Yellow | Balanced grip and durability — most common race tyre       |
| Hard         | White  | Least grip, most durable — used for long stints            |
| Intermediate | Green  | Light rain, damp track                                     |
| Full Wet     | Blue   | Heavy rain, standing water                                 |

**Key Concepts:**
- **Degradation** — tyres lose grip as they wear. You'll feel the car slide more as tyres age.
- **Temperature window** — tyres work best in a narrow temperature range. Too cold = no grip. Too hot = rapid wear.
- **Pit stops** — you must use at least two different compounds in a dry race. A typical strategy is Medium -> Hard, or Soft -> Medium -> Soft.
- **Undercut** — pitting earlier than your rival to gain position through fresh-tyre pace.

---

### 0.7 — ERS 101

The Energy Recovery System (ERS) harvests energy from braking and the turbocharger, storing it in a battery for deployment as extra horsepower.

**Deployment Modes (with ERS Assist On, automatic):**
- **None / Hotlap** — The game manages this. Don't worry about it in Wave 0.

**Overtake Button:**
- Press the Overtake button for a burst of maximum ERS deployment
- Use it on straights when attacking or defending position
- Battery depletes with use — it recharges under braking

> In Wave 0 with ERS Assist On, the game handles all ERS management. Press Overtake when you need a burst of speed. That's it.

---

### 0.8 — Career Mode

Career Mode lets you create your own driver and compete through F1 seasons.

#### Starting Your Career

1. **Create Your Driver** — name, nationality, helmet design, number
2. **Choose Starting Point:**
   - **F2 Start** — race in Formula 2 first, earn a superlicence, then join F1. More immersive.
   - **F1 Start** — jump straight into F1 with a midfield or backmarker team. Faster path.
3. **Choose Your Team** — as a beginner, pick a midfield team (Aston Martin, Alpine, RB) or a backmarker (Williams, Kick Sauber). Don't start at Red Bull or McLaren — the expectations are too high.

#### R&D (Research & Development)

Between races, you earn **Resource Points** to upgrade your car. Categories:

- **Aerodynamics** — front wing, rear wing, floor, sidepod (improves cornering speed)
- **Chassis** — weight reduction, suspension (improves handling)
- **Powertrain** — engine, ERS, gearbox (improves straight-line speed)
- **Durability** — component wear reduction (fewer grid penalties)

**Tips:**
- Focus on one department per season — spreading points too thin makes little difference
- Aero upgrades are generally the most impactful
- Powertrain components wear over races — when one fails, you take a grid penalty for replacing it

#### Practice Programmes

During Free Practice sessions, complete programmes to earn Resource Points:

- **Track Acclimatisation** — drive through gates on the racing line
- **Tyre Management** — complete laps while keeping tyre temperatures in the green zone
- **Fuel Management** — complete laps while hitting a fuel efficiency target
- **Qualifying Simulation** — set a fast lap; your time predicts your qualifying pace
- **Race Strategy** — complete long runs to estimate tyre wear and race pace

Each completed programme awards Resource Points. You don't need to ace all of them — even partial completion earns points.

---

### 0.9 — UI Tour

#### MFD (Multi-Function Display)

The MFD is the screen on your steering wheel or HUD. Use D-Pad Left/Right to cycle panels:

| Panel     | Shows                                                    |
|-----------|----------------------------------------------------------|
| Strategy  | Tyre wear, fuel delta, pit window, weather forecast      |
| Tyres     | Per-tyre temperature and wear percentage                 |
| ERS       | Battery level, deployment mode, energy harvested per lap |
| Fuel      | Fuel remaining, fuel mix mode, fuel delta to target      |
| Damage    | Component wear and damage status                         |
| Race Info | Position, gaps to cars ahead/behind, lap times           |

#### Timing Screen (Pause Menu)

Pause during a session to see:
- Full timing table with gaps and tyre compounds
- Race director messages (penalties, flags, safety car)
- Session standings

#### Engineer Radio

Your race engineer gives you information during the race:
- Gaps to cars ahead and behind
- Tyre and brake temperature warnings
- Weather updates
- Pit window and strategy calls
- Traffic information

You can request specific information from the engineer via the MFD request menu (D-Pad).

---

### Wave 0 Mods

For Wave 0, the only tool you need is the **Simplified Launcher** — and even that is optional at this stage. The goal of Wave 0 is to learn the game vanilla. No gameplay mods.

If you're eager to explore the mod ecosystem, see [Wave 1 Mods](#wave-1-mods).
```

- [ ] **Step 2: Write Wave 0 mods**

```markdown
### Wave 0 Mods — Tools & Launcher

Wave 0 uses no gameplay mods. The only tool is the Simplified Launcher, which is used to manage mods in later waves. It's introduced here so you're familiar with it before adding content mods.

#### [Simplified Launcher for F1 25](https://www.overtake.gg/downloads/simplified-launcher-for-f1-25-used-to-quickly-manage-and-launch-mods.77451/)

| Detail              | Value                                                                                                                                                                                                                             |
|---------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Version**         | v3.2.10                                                                                                                                                                                                                           |
| **Author**          | Team Simplified                                                                                                                                                                                                                   |
| **Dependencies**    | None                                                                                                                                                                                                                              |
| **What It Changes** | Manages mod installation, backup, and launching for F1 25. Drag-and-drop mod archives (ZIP/RAR/7Z). Automatically backs up and restores original game files. Supports mod categories, favorites, presets, and conflict detection. |
| **Installation**    | Download from OverTake.gg. Extract to any folder. Run `SimplifiedLauncher.exe`. Set your F1 25 game directory. No gameplay mods are installed in Wave 0 — the launcher is set up here for use in Waves 1 and 2.                   |
```

- [ ] **Step 3: Commit**

```bash
git add f1-25/guide/wave-0/how-to-play.md f1-25/guide/wave-0/mods.md
git commit -m "f1-25: write Wave 0 how-to-play guide and mods"
```

---

### Task 3: Write Wave 1 Strategy Guide

**Files:**

- Write: `f1-25/guide/wave-1/strategy.md`

- [ ] **Step 1: Write Wave 1 strategy guide**

```markdown
## Wave 1 — Building Speed

**Roleplaying Background:** You've completed a season in F1. You've scored points, maybe even stood on a podium. But the car still feels like it holds secrets from you. The telemetry screens in the garage look like alien language. Time to peel back the first layer. Time to understand what the machine is actually doing.

---

### 1.1 — Driving Technique

#### Trail Braking

Trail braking is the technique of gradually releasing the brake as you turn into a corner, rather than completing all braking in a straight line. It shifts weight to the front tyres during turn-in, improving front-end grip and rotation.

**How to practice:**
1. Approach the corner and brake hard in a straight line (80-90% pressure)
2. Begin turning in while releasing brake pressure to ~20-30%
3. Trail the brake off completely as you reach the apex
4. Apply throttle on exit

Start with medium-speed corners (Turn 1 at Bahrain, Turn 4 at Spain). Don't try this on hairpins until you're comfortable.

#### Corner Exit Priority

In Formula 1, corner exit is more important than corner entry. A fast exit means higher speed on the following straight, which compounds into lap time. Sacrifice a tiny bit of entry speed to get a better exit.

**The rule:** "Slow in, fast out." It's a cliche because it's true.

#### Weight Transfer

Every input shifts the car's weight:
- **Braking** shifts weight forward — more front grip, less rear grip (rear can slide)
- **Accelerating** shifts weight rearward — more rear grip, less front grip (understeer)
- **Steering** shifts weight to the outside tyres

Use weight transfer deliberately. A slight lift off the throttle before turn-in shifts weight forward for better rotation. A touch of throttle mid-corner settles the rear.

---

### 1.2 — Intermediate Car Setup

Car setup determines how the car behaves. Each track demands different compromises. Here are the key parameters you can adjust and what they do.

#### Aerodynamics (Front Wing / Rear Wing)

| Change    | Effect                                                  |
|-----------|---------------------------------------------------------|
| More wing | More downforce — better cornering grip, lower top speed |
| Less wing | Less downforce — higher top speed, less cornering grip  |

**Rule of thumb:** High-downforce for Monaco, Singapore, Hungary. Low-downforce for Monza, Spa, Baku. Balanced for most other tracks.

**Front vs Rear balance:** If the car understeers (won't turn), add front wing. If it oversteers (rear slides), add rear wing or reduce front wing.

#### Differential (On-Throttle / Off-Throttle)

The differential controls how the rear wheels rotate relative to each other.

| Setting  | On-Throttle Effect                                     | Off-Throttle Effect                        |
|----------|--------------------------------------------------------|--------------------------------------------|
| Lower %  | Less lock — better rotation mid-corner, easier to turn | Less lock — more rear instability on entry |
| Higher % | More lock — more traction on exit, more understeer     | More lock — more stability under braking   |

**Starting point:** 50-60% on-throttle, 50-55% off-throttle. Adjust based on feel.

#### Brake Bias

Brake bias distributes braking force between front and rear.

| Bias         | Effect                                        |
|--------------|-----------------------------------------------|
| More front % | More stable under braking, less rotation      |
| More rear %  | Better turn-in rotation, risk of rear locking |

**Tip:** Move brake bias rearward (lower %) for tracks with slow corners where you need the car to rotate. Keep it forward for high-speed braking zones.

#### Brake Pressure

Higher pressure = more braking force, but easier to lock wheels. Lower pressure = more modulation control.

With ABS On: 100% is fine.
With ABS Off: 85-95% typically. Lower for wet conditions.

---

### 1.3 — ERS Strategy

With **ERS Assist Off** (manual mode), you control when the battery deploys and harvests.

#### Deployment Modes

| Mode     | Behaviour                                               |
|----------|---------------------------------------------------------|
| None     | No deployment — battery charges from braking/turbo      |
| Medium   | Balanced deployment and harvesting                      |
| Hotlap   | Maximum deployment — fastest but drains battery quickly |
| Overtake | Maximum deployment while button is held — use in bursts |

#### Per-Track Strategy

Each track has unique deployment zones. The general approach:

1. **Harvest on corner entry** (braking zone = free energy)
2. **Deploy on corner exit and straights** (where speed matters most)
3. **Save battery for overtaking/defending** — don't arrive at a battle with 0% charge

**Qualifying:** Hotlap mode for the entire lap. Manage battery so you don't hit 0% before the finish line.

**Race:** Medium mode for most of the lap. Switch to Hotlap when attacking or defending. Switch to None in dirty air (saving battery) or when fuel-saving.

---

### 1.4 — Fuel Management

Fuel load affects car weight significantly. A full tank at race start makes the car slower and harder to handle. As fuel burns off, the car becomes faster.

#### Fuel Mix Modes

| Mix      | Consumption | Pace    |
|----------|-------------|---------|
| Rich     | Highest     | Fastest |
| Standard | Normal      | Normal  |
| Lean     | Lowest      | Slowest |

**Race strategy:**
- Start on Standard mix
- Switch to Rich when attacking or in clean air chasing lap time
- Switch to Lean when saving fuel (behind a safety car, or if you're fuel-negative)
- Lift and coast into heavy braking zones to save additional fuel (lift off throttle before braking point)

---

### 1.5 — Tyre Management

#### Temperature Windows

Each compound has an optimal temperature window. The game's tyre HUD shows per-tyre temperatures:
- **Blue** = too cold, no grip
- **Green** = optimal temperature
- **Red** = overheating, rapid wear

**Managing temperatures:**
- Weaving on straights warms tyres
- Smooth steering keeps temperatures stable
- Aggressive sliding overheats tyres rapidly
- Driving in dirty air (behind another car) reduces front-end cooling

#### Graining vs Blistering

- **Graining** — tyre surface tears and re-sticks unevenly. Caused by sliding on a cold tyre. Heals as tyre wears and temperatures rise.
- **Blistering** — air pockets form inside the tyre from overheating. Does not heal. Manage by driving smoother.

---

### 1.6 — AI Calibration

Finding the right AI difficulty is crucial for realistic racing. The game uses a 0-110 scale.

**Goal:** Qualify and race around your teammate's pace. If you consistently beat your teammate by 5+ positions, raise AI. If you're always last, lower it.

**Per-track adjustment:** AI strength varies by track. You may need 105 at Bahrain but 95 at Monaco. Don't be afraid to adjust per-race.

**General starting points:**
- Controller + full assists: 40-60
- Controller + minimal assists: 60-80
- Wheel + no assists: 80-100
- Experienced sim racer: 100-110

---

### 1.7 — Race Strategy

#### Undercut

Pitting earlier than the car ahead to gain track position. Your fresh tyres give you pace while they're still on old tyres. When they pit, you emerge ahead.

**When to undercut:** When you're within 1-2 seconds of the car ahead and tyres are dropping off.

#### Overcut

Staying out longer while others pit. If you have clean air and good pace on old tyres, you can build a gap and emerge ahead after your stop.

**When to overcut:** When you have clean air, good pace, and the track is clear ahead.

#### Safety Car Strategy

A Safety Car bunches the field. Free pit stop — you lose less time pitting under SC than under green flag conditions. If a SC is deployed and you're near your pit window, pit immediately.

#### Weather Strategy

- **Radar is your friend** — check the weather radar on the MFD
- **Inters vs Wets** — cross the line between them carefully. Inters on a drying track are faster than Wets. Wets in heavy rain prevent aquaplaning.
- **Timing the switch** — pitting one lap earlier or later for tyres can gain or lose 5+ positions in changing conditions
```

- [ ] **Step 2: Write Wave 1 mods placeholder**

```markdown
### Wave 1 Mods — Strategy, Cameras, Telemetry, AI, Liveries

Wave 1 introduces your first gameplay mods. These enhance the experience without fundamentally changing the game's mechanics.

> **Mods to be inserted here by Task 5.** Categories: Telemetry/Dashboards, Cameras, Liveries, AI Tweaks. Each entry uses the standard format from AGENTS.md.
```

- [ ] **Step 3: Commit**

```bash
git add f1-25/guide/wave-1/strategy.md f1-25/guide/wave-1/mods.md
git commit -m "f1-25: write Wave 1 strategy guide and mods placeholder"
```

---

### Task 4: Write Wave 2 Advanced Guide

**Files:**

- Write: `f1-25/guide/wave-2/advanced.md`

- [ ] **Step 1: Write Wave 2 advanced guide**

```markdown
## Wave 2 — Apex Predator

**Roleplaying Background:** You don't just drive the car anymore — you define it. Every click of wing angle, every tenth of a psi, every suspension millimeter is a deliberate choice. You don't react to strategy — you script it before the lights go out. The car is an extension of your will. Now make it sing.

---

### 2.1 — Advanced Car Setup

By now, you understand the basics of wings, differential, and brake bias. Advanced setup is about the fine details — the relationships between parameters that experienced engineers spend careers mastering.

#### Full Aerodynamic Map

The front and rear wings don't exist in isolation. Their relationship to ride height, suspension stiffness, and tyre pressures creates the car's aerodynamic platform.

| Parameter                         | Aero Effect                                                            |
|-----------------------------------|------------------------------------------------------------------------|
| **Lower front ride height**       | Increases front downforce — better turn-in, risk of bottoming          |
| **Higher rear ride height**       | Increases rear downforce — more stability, more drag                   |
| **Rake (rear higher than front)** | Increases overall downforce — gives the diffuser more air to work with |
| **Stiff front suspension**        | Maintains aero platform, less mechanical grip                          |
| **Soft rear suspension**          | Better rear traction, risk of aero instability                         |

**Principle:** Change one thing at a time. If you change rear wing, front ride height, and differential all at once, you won't know what improved or ruined the car.

#### Suspension Kinematics

| Parameter               | More (Higher Setting)                                 | Less (Lower Setting)                           |
|-------------------------|-------------------------------------------------------|------------------------------------------------|
| **Front Camber**        | Better mid-corner front grip, worse braking stability | Better braking, less cornering grip            |
| **Rear Camber**         | Better rear grip on exit, less straight-line traction | More straight-line stability, less corner grip |
| **Front Toe**           | Toe-out = better turn-in response                     | Toe-in = more stability                        |
| **Rear Toe**            | Toe-in = stability under braking                      | Toe-out = better rotation                      |
| **Front Anti-Roll Bar** | More understeer, sharper response                     | Less understeer, smoother response             |
| **Rear Anti-Roll Bar**  | More oversteer on entry                               | Less oversteer, better traction                |

#### Ride Height & Rake

Ride height directly affects aerodynamics. Lower = more downforce from the floor, but risk of bottoming out on bumps and kerbs. Bottoming causes sudden loss of downforce — dangerous in high-speed corners.

**Ride height targets (mm):**
- Monaco / Singapore: Higher (45-50mm) — bumpy, lots of kerbs
- Monza / Spa: Lower (35-40mm) — smooth, high-speed, need low drag
- Most tracks: 40-45mm front, 50-55mm rear (3-8mm rake)

#### Corner Weight & Balance

Corner weights aren't adjustable in F1 25's setup screen directly, but ballast (if available in career) and asymmetric setups matter:

- More weight on the left side helps clockwise circuits (most F1 tracks)
- Adjust tyre pressures per-side for asymmetric tracks (e.g., higher right-side pressures at clockwise tracks)

---

### 2.2 — Qualifying Mastery

#### Track Evolution

The track gets faster as rubber is laid down. Q3 is typically 1-2 seconds faster than Q1 on the same tyre compound. Plan your runs knowing the track will improve.

#### Tow Strategy

Running behind another car on a straight gives you a slipstream (tow) — worth 0.2-0.4 seconds. In qualifying, teams coordinate to give their drivers tows. As a solo player:

- If you're behind a faster car on a straight, stay in their slipstream
- Don't follow too closely in corners — dirty air reduces downforce more than the tow is worth

#### One-Lap Preparation

**Out lap:**
- Weave aggressively to bring tyres to temperature
- Manage battery — arrive at the start line with 100% charge
- Build gap to the car ahead — 5+ seconds for clean air

**Hot lap:**
- ERS in Hotlap mode
- Rich fuel mix
- Use every inch of track — curbs are your friend (except sausage kerbs — avoid those)

**Cooldown lap:**
- Harvest energy in EV-only or low deployment mode
- Stay off the racing line so you don't impede others

---

### 2.3 — Wet Weather Racing

#### Inters vs Full Wet Crossover

The crossover point where Full Wets become faster than Inters depends on track and conditions:

| Condition                    | Tyre                                 |
|------------------------------|--------------------------------------|
| Damp track, no spray         | Inters                               |
| Light rain, light spray      | Inters (they clear water adequately) |
| Standing water visible       | Full Wets                            |
| Heavy spray, poor visibility | Full Wets                            |
| Drying line appearing        | Inters are faster — switch early     |

**Key indicator:** If the AI starts pitting for Wet tyres, you probably should too.

#### Driving in Wet Conditions

- Brake earlier and with less pressure — grip is reduced
- Use higher gears — short-shift to reduce wheelspin
- Avoid kerbs and painted lines — they're extremely slippery when wet
- Aquaplaning: if the car suddenly floats and steering goes light, lift off gently, don't brake
- The racing line is the most rubbered-in part of the track — it can actually be MORE slippery in very wet conditions. The offline line may have more grip.

#### Setup Changes for Wet

| Parameter                  | Dry Setup       | Wet Adjustment                                                        |
|----------------------------|-----------------|-----------------------------------------------------------------------|
| Wings                      | Track-dependent | Add 2-4 clicks front and rear                                         |
| Ride Height                | Low             | Raise 5-10mm (avoid bottoming with less downforce from slower speeds) |
| Brake Pressure             | 95-100%         | Reduce to 85-90%                                                      |
| Brake Bias                 | Track-dependent | Move forward 2-3% (more stability)                                    |
| Differential (on-throttle) | Track-dependent | Reduce 10-15% (less wheelspin on exit)                                |
| Tyre Pressures             | Optimal         | Increase slightly (tyres run cooler)                                  |

---

### 2.4 — Custom Championships

F1 25 allows you to create custom championship seasons with modified calendars, regulations, and cars.

#### Building a Custom Season

1. Go to **Solo > Custom Championship**
2. Choose the number of races (full 24-race calendar, or a mini-season)
3. Select tracks — try themed seasons:
   - **European Tour:** Silverstone, Spa, Monza, Monaco, Barcelona, Zandvoort
   - **Asian Swing:** Suzuka, Singapore, Shanghai, Baku, Yas Marina
   - **Americas:** COTA, Mexico, Interlagos, Montreal, Miami, Las Vegas
4. Set regulations: points system, parc ferme rules, qualifying format
5. Choose cars: equal performance or realistic (team performance differences)

---

### 2.5 — Data Analysis

#### Reading Telemetry

Telemetry comparison is how real drivers find lap time. F1 25 doesn't have a built-in telemetry tool, but third-party tools (SimHub, custom dashboards) can export data.

**What to compare (vs your best lap or a faster ghost):**
1. **Throttle trace** — are you getting to full throttle later than optimal?
2. **Brake trace** — are you braking too early? Too hard? Trailing properly?
3. **Speed trace** — where are you losing minimum speed mid-corner?
4. **Steering trace** — are you sawing at the wheel? Smooth inputs = faster laps.

#### Identifying Time Loss

1. Find the corner where you lose the most time (use delta comparison)
2. Focus on that one corner for 5-10 laps
3. Try different lines, braking points, and throttle applications
4. Move to the next corner only after you've improved

**Typical patterns:**
- Losing time on entry = braking too early or too hard
- Losing time mid-corner = not enough minimum speed, or too much steering angle
- Losing time on exit = getting on throttle too late, or too aggressively
```

- [ ] **Step 2: Write Wave 2 mods placeholder**

```markdown
### Wave 2 Mods — Physics, Career, Visuals, Audio

Wave 2 introduces deeper mods that change game mechanics and visuals.

> **Mods to be inserted here by Task 5.** Categories: Physics/Handling, Career Enhancement, Graphics/Visual, Audio. Each entry uses the standard format from AGENTS.md.
```

- [ ] **Step 3: Commit**

```bash
git add f1-25/guide/wave-2/advanced.md f1-25/guide/wave-2/mods.md
git commit -m "f1-25: write Wave 2 advanced guide and mods placeholder"
```

---

### Task 5: Format and Insert User-Provided Mods

**Files:**

- Modify: `f1-25/guide/wave-1/mods.md`
- Modify: `f1-25/guide/wave-2/mods.md`
- Modify: `f1-25/STATUS.md`

**Prerequisites:** User has provided a list of verified mods with: name, OverTake.gg URL, version, author, dependencies, description, which wave it belongs to.

- [ ] **Step 1: Format Wave 1 mods using the standard entry template**

For each Wave 1 mod provided, write:

```markdown
#### [Mod Name](overtake-url)

| Detail              | Value                                        |
|---------------------|----------------------------------------------|
| **Version**         | X.Y.Z                                        |
| **Author**          | Author Name                                  |
| **Dependencies**    | List or None                                 |
| **What It Changes** | Description of the mod's impact on the game. |
| **Installation**    | Any special installation notes.              |
```

Insert each entry into `f1-25/guide/wave-1/mods.md`, replacing the placeholder text.

- [ ] **Step 2: Format Wave 2 mods using the same template**

Same format as Step 1, inserting into `f1-25/guide/wave-2/mods.md`.

- [ ] **Step 3: Update STATUS.md**

Add each mod under the appropriate wave's completed section with URL, version, and decision note. Record any mods that were considered but rejected in the Skipped section with reasons.

- [ ] **Step 4: Commit**

```bash
git add f1-25/guide/wave-1/mods.md f1-25/guide/wave-2/mods.md f1-25/STATUS.md
git commit -m "f1-25: insert user-provided mods for Waves 1 and 2"
```

---

### Task 6: Write Typst Theme and Verify with Test Compilation

**Files:**

- Write: `f1-25/templates/style.typ`
- Create: `f1-25/templates/test-theme.md` (temporary — deleted after verification)
- Create: `f1-25/templates/test-theme.typ` (temporary — deleted after verification)

- [ ] **Step 1: Write style.typ**

```typst
// style.typ — Carbon & Crimson theme for Apex Alchemy
#let apply(body) = {
  set text(font: ("Inter", "Segoe UI", "DejaVu Sans"), size: 12pt, lang: "en", fill: rgb("#15151E"))
  set par(leading: 0.65em)

  // Code blocks — dark carbon background, electric blue text
  show raw.where(block: true): it => {
    set text(font: ("JetBrains Mono", "Consolas", "DejaVu Sans Mono"), size: 10pt, fill: rgb("#00A3E0"))
    block(
      fill: rgb("#1A1A2E"),
      inset: (x: 10pt, y: 8pt),
      radius: 3pt,
      width: 100%,
      stroke: 0.5pt + rgb("#38383F"),
    )[#it]
  }

  // Inline code — electric blue, no background
  show raw.where(block: false): set text(size: 10pt, fill: rgb("#00A3E0"), font: ("JetBrains Mono", "Consolas"))

  // H1 — Racing Red, bold (document title only)
  show heading.where(level: 1): it => {
    set text(size: 26pt, weight: "bold", fill: rgb("#E10600"))
    it
  }

  // H2 — Electric Blue, bold (wave section headers)
  show heading.where(level: 2): it => {
    set text(size: 20pt, weight: "bold", fill: rgb("#00A3E0"))
    block(stroke: (bottom: 1pt + rgb("#E10600")), width: 100%)[#it]
  }

  // H3 — Gold accent, semibold (subsections)
  show heading.where(level: 3): it => {
    set text(size: 15pt, weight: "semibold", fill: rgb("#C4A800"))
    it
  }

  // H4 — Mid Gray (mod names in entries)
  show heading.where(level: 4): it => {
    set text(size: 13pt, weight: "semibold", fill: rgb("#38383F"))
    it
  }

  // Links — Racing Red for contrast
  show link: set text(fill: rgb("#E10600"))

  // Tables — dark header row, alternating cream/white body rows
  show table: it => {
    set table(
      fill: (rgb("#FFFFFF"), rgb("#F0F0F0")),
      stroke: none,
      inset: (x: 8pt, y: 5pt),
    )
    show table.cell.where(y: 0): cell => {
      set text(fill: white, weight: "bold", size: 10pt)
      block(
        fill: rgb("#15151E"),
        inset: (x: 8pt, y: 4pt),
      )[#cell]
    }
    it
  }

  // Blockquotes -> callout boxes (light gray background, gold left border)
  show quote: it => {
    block(
      fill: rgb("#F0F0F0"),
      inset: (x: 12pt, y: 8pt),
      radius: 2pt,
      width: 100%,
      stroke: (left: 4pt + rgb("#C4A800"), top: none, right: none, bottom: none),
    )[#it]
  }

  body
}
```

- [ ] **Step 2: Write test-theme.md (exercises all theme features)**

```markdown
# Theme Test Document

## Section Header (H2 — Electric Blue with red underline)

This is body text in Dark Carbon. Here is some `inline code` in Electric Blue.

### Subsection (H3 — Gold)

| Table Header | Column B |
|--------------|----------|
| Row 1        | Value 1  |
| Row 2        | Value 2  |

#### Mod Entry Heading (H4 — Mid Gray)

> This is a blockquote callout box. It should have a gold left border and light gray background. Useful for warnings, notes, and tips.

```

// Code block — dark carbon background with electric blue text
const hello = "world";
console.log(hello);

```

[Clickable link text](https://example.com) — should render in Racing Red.
```

- [ ] **Step 3: Write test-theme.typ**

```typst
#set page(
  paper: "a4",
  margin: (top: 2cm, bottom: 2cm, left: 2.5cm, right: 2.5cm),
)

#import "@preview/cmarker:0.1.10"
#import "style.typ": apply
#show: apply

#cmarker.render(read("test-theme.md"), h1-level: 0, set-document-title: false)
```

- [ ] **Step 4: Compile test document and verify**

```powershell
cd f1-25\templates
typst compile test-theme.typ test-theme.pdf
```

Expected: Typst compiles without errors. `test-theme.pdf` is created.

- [ ] **Step 5: Clean up test files**

```powershell
Remove-Item "f1-25\templates\test-theme.md" -ErrorAction SilentlyContinue
Remove-Item "f1-25\templates\test-theme.typ" -ErrorAction SilentlyContinue
Remove-Item "f1-25\templates\test-theme.pdf" -ErrorAction SilentlyContinue
```

- [ ] **Step 6: Commit**

```bash
git add f1-25/templates/style.typ
git commit -m "f1-25: write Carbon & Crimson Typst theme (verified with test compilation)"
```

---

### Task 7: Write Typst Guide Template

**Files:**

- Write: `f1-25/templates/guide.typ`

- [ ] **Step 1: Write guide.typ with cover page, TOC, and body**

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
#let logo-path = "../assets/logo.jpg"

// ---- Cover Page ----
#set page(numbering: none)
#align(center + horizon, [
  #block(height: 1.5cm)
  #image(logo-path, width: 60%)
  #block(height: 1cm)
  #text(size: 36pt, weight: "bold", fill: rgb("#E10600"))[Apex Alchemy]
  #block(height: 0.5cm)
  #text(size: 18pt, fill: rgb("#00A3E0"))[F1 25 — Setup & Mod Guide]
  #block(height: 0.8cm)
  #line(length: 40%, stroke: 0.5pt + luma(180))
  #block(height: 0.4cm)
  #text(size: 13pt, fill: luma(140))[F1 25 v1.24 — Simplified Launcher]
  #block(height: 1.5cm)
  #text(size: 11pt, fill: luma(160))[Version #version]
])

// ---- Table of Contents ----
#set page(numbering: "i")
#pagebreak()
#set outline.entry(fill: line(length: 100%, stroke: 0.5pt + luma(200)))
#outline(indent: 1.2em, depth: 2)

// ---- Body ----
#set page(numbering: "1", number-align: center)
#pagebreak()
#cmarker.render(read("../GUIDE.md"), h1-level: 0, set-document-title: false)
```

- [ ] **Step 2: Commit**

```bash
git add f1-25/templates/guide.typ
git commit -m "f1-25: write Typst guide template with cover and TOC"
```

---

### Task 8: Write generate-pdf.ps1

**Files:**

- Write: `f1-25/generate-pdf.ps1`

- [ ] **Step 1: Write PDF generation script**

```powershell
$ErrorActionPreference = "Stop"
$ProjectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$OutputDir = Join-Path $ProjectRoot "output"

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

function Build-Guide() {
  Write-Host ""
  Write-Host "Building GUIDE.md from guide/ directory..." -ForegroundColor Cyan

  $guideFiles = @(
    "guide\wave-0\how-to-play.md",
    "guide\wave-0\mods.md",
    "guide\wave-1\strategy.md",
    "guide\wave-1\mods.md",
    "guide\wave-2\advanced.md",
    "guide\wave-2\mods.md"
  )

  $guideContent = ""
  foreach ($file in $guideFiles) {
    $fullPath = Join-Path $ProjectRoot $file
    if (Test-Path $fullPath) {
      $guideContent += (Get-Content $fullPath -Raw) + "`n`n"
    } else {
      Write-Status "WARN" "Missing: $file"
    }
  }

  $guidePath = Join-Path $ProjectRoot "GUIDE.md"
  Set-Content -Path $guidePath -Value $guideContent.TrimEnd() -Encoding UTF8
  Write-Status "OK" "GUIDE.md built from $($guideFiles.Count) source files."
}

function Compile-Guide() {
  Write-Host ""
  Write-Host "Compiling Apex Alchemy Guide..." -ForegroundColor Cyan
  $sourceFile = Join-Path $ProjectRoot "templates" "guide.typ"
  $outputPdf = Join-Path $OutputDir "APEX-ALCHEMY-GUIDE.pdf"

  $result = typst compile --root $ProjectRoot $sourceFile $outputPdf 2>&1
  if ($LASTEXITCODE -eq 0) {
    $fileInfo = Get-Item $outputPdf
    $sizeKB = [math]::Round($fileInfo.Length / 1KB, 1)
    Write-Status "OK" "APEX-ALCHEMY-GUIDE.pdf -> $outputPdf ($sizeKB KB)"
    return $true
  } else {
    Write-Status "FAIL" "Failed to compile APEX-ALCHEMY-GUIDE.pdf"
    Write-Host $result -ForegroundColor Red
    return $false
  }
}

function Verify-Pdf($pdfPath) {
  $fileInfo = Get-Item $pdfPath
  $sizeKB = [math]::Round($fileInfo.Length / 1KB, 1)

  if ($sizeKB -lt 50) {
    Write-Status "FAIL" "PDF too small ($sizeKB KB) — may be empty or broken"
    return $false
  }

  $content = [System.IO.File]::ReadAllBytes($pdfPath)
  $header = [System.Text.Encoding]::ASCII.GetString($content[0..4])
  if ($header -ne "%PDF-") {
    Write-Status "FAIL" "File does not start with PDF header"
    return $false
  }

  $footerPos = $content.Length - 64
  if ($footerPos -gt 0) {
    $footer = [System.Text.Encoding]::ASCII.GetString($content[$footerPos..($content.Length - 1)])
    if ($footer -notmatch "%%EOF") {
      Write-Status "WARN" "PDF footer (%%EOF) not found — file may be truncated"
    }
  }

  Write-Status "OK" "PDF verified: $sizeKB KB, valid PDF header"
  return $true
}

Write-Host "========================================" -ForegroundColor Cyan
Write-Host " Apex Alchemy — PDF Generator" -ForegroundColor Cyan
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

if (-not (Test-Path $OutputDir)) {
  New-Item -ItemType Directory -Path $OutputDir -Force | Out-Null
}

Build-Guide
$guideOk = Compile-Guide

Write-Host ""
if ($guideOk) {
  $pdfPath = Join-Path $OutputDir "APEX-ALCHEMY-GUIDE.pdf"
  if (-not (Verify-Pdf $pdfPath)) {
    Write-Status "FAIL" "PDF verification failed."
    exit 1
  }
  Write-Status "OK" "Guide PDF generated and verified successfully."
} else {
  Write-Status "FAIL" "PDF compilation failed."
  exit 1
}
```

- [ ] **Step 2: Commit**

```bash
git add f1-25/generate-pdf.ps1
git commit -m "f1-25: write PDF generation script with PDF verification"
```

---

### Task 9: Build GUIDE.md, Generate PDF, and Verify

**Files:**

- Modify: `f1-25/GUIDE.md`
- Create: `f1-25/output/APEX-ALCHEMY-GUIDE.pdf`

- [ ] **Step 1: Run generate-pdf.ps1**

```powershell
.\f1-25\generate-pdf.ps1
```

Expected output:

```
[OK] Typst found at...
[OK] Version: 0.1.0
[OK] GUIDE.md built from 6 source files.
[OK] APEX-ALCHEMY-GUIDE.pdf -> .../output/APEX-ALCHEMY-GUIDE.pdf (XXX KB)
[OK] PDF verified: XXX KB, valid PDF header
[OK] Guide PDF generated and verified successfully.
```

- [ ] **Step 2: Verify the PDF content visually**

Open `f1-25/output/APEX-ALCHEMY-GUIDE.pdf` and confirm:

- [ ] Cover page renders with logo, title, subtitle, version
- [ ] Table of contents has entries for all waves and subsections
- [ ] Body text is readable in Dark Carbon on white background
- [ ] H2 headings are Electric Blue with red underline
- [ ] H3 headings are Gold
- [ ] Tables have dark headers with white text
- [ ] Blockquotes have gold left border
- [ ] Code blocks have dark background with blue text
- [ ] Links are Racing Red

- [ ] **Step 3: Commit GUIDE.md only** (PDF is gitignored)

```bash
git add f1-25/GUIDE.md
git commit -m "f1-25: build GUIDE.md from guide/ sources"
```

---

### Task 10: Final STATUS.md Update and Verification

**Files:**

- Modify: `f1-25/STATUS.md`

- [ ] **Step 1: Update STATUS.md — mark all completed items**

```markdown
# STATUS — Apex Alchemy (F1 25)

## Legend

- [x] = completed
- [ ] = pending
- [!] = blocked

## Completed

### Project Setup
- [x] Project skeleton created with all directories and files
- [x] AGENTS.md written with vision, rules, and conventions
- [x] VERSION set to 0.1.0
- [x] .gitignore created (excludes generated PDFs)
- [x] Simplified Launcher v3.2.10 verified on OverTake.gg
- [x] Typst theme verified with test compilation

### Wave 0 — First Lap
- [x] How-to-play guide written (9 sections)
- [x] Wave 0 mods documented (Simplified Launcher entry)

### Wave 1 — Building Speed
- [x] Strategy guide written (7 sections)
- [x] Wave 1 mods formatted and inserted

### Wave 2 — Apex Predator
- [x] Advanced guide written (5 sections)
- [x] Wave 2 mods formatted and inserted

### PDF
- [x] Typst style.typ written (Carbon & Crimson theme)
- [x] Typst guide.typ written (cover + TOC + body)
- [x] generate-pdf.ps1 written with PDF verification
- [x] GUIDE.md built from guide/ sources
- [x] PDF compiles cleanly and passes verification

### Documentation
- [x] README.md written
- [x] conflicts-mods.md created (awaiting mod testing data)
- [x] mod-ideas.md created (awaiting community suggestions)

## Pending

### Verification
- [ ] Cross-reference guide content against actual F1 25 v1.24 in-game screens (controls, assists, career UI, ERS modes)

## Decisions

### Mod Organizer
- [x] Simplified Launcher v3.2.10 chosen — verified on OverTake.gg, 57 reviews, 10 updates, YouTube tutorial available
- [x] URL: https://www.overtake.gg/downloads/simplified-launcher-for-f1-25-used-to-quickly-manage-and-launch-mods.77451/
- [x] Discord: https://discord.gg/GQZn5gbBdg
- [x] Features: drag-and-drop mod install, ZIP/RAR/7Z support, backup/restore, favorites, categories, presets, conflict detection
- [x] Note: Windows Defender may flag as false positive (unsigned Python self-package)

### Design
- [x] Guide content caveat: game-mechanic content written from F1 series knowledge — needs verification against actual F1 25 v1.24
- [x] PDF excluded from git tracking via .gitignore (generated binary)

## Skipped / Rejected

(None yet — populate as mods are evaluated)
```

- [ ] **Step 2: Final verification command**

```powershell
$required = @(
  "f1-25\AGENTS.md",
  "f1-25\README.md",
  "f1-25\VERSION",
  "f1-25\STATUS.md",
  "f1-25\GUIDE.md",
  "f1-25\.gitignore",
  "f1-25\guide\wave-0\how-to-play.md",
  "f1-25\guide\wave-0\mods.md",
  "f1-25\guide\wave-1\strategy.md",
  "f1-25\guide\wave-1\mods.md",
  "f1-25\guide\wave-2\advanced.md",
  "f1-25\guide\wave-2\mods.md",
  "f1-25\templates\guide.typ",
  "f1-25\templates\style.typ",
  "f1-25\generate-pdf.ps1",
  "f1-25\output\APEX-ALCHEMY-GUIDE.pdf",
  "f1-25\conflicts-mods.md",
  "f1-25\mod-ideas.md"
)
$missing = @()
foreach ($file in $required) {
  if (Test-Path $file) {
    Write-Host "[OK] $file" -ForegroundColor Green
  } else {
    Write-Host "[FAIL] $file" -ForegroundColor Red
    $missing += $file
  }
}
if ($missing.Count -eq 0) {
  Write-Host "`nAll $($required.Count) files present." -ForegroundColor Green
} else {
  Write-Host "`n$($missing.Count) files missing." -ForegroundColor Red
}
```

Expected: All files show [OK], no missing files.

- [ ] **Step 3: Commit**

```bash
git add f1-25/STATUS.md
git commit -m "f1-25: finalize STATUS.md — all v0.1.0 tasks complete"
```
