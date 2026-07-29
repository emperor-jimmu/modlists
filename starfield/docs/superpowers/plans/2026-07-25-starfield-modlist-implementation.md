# Void Enhanced Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development or superpowers:executing-plans. Steps use checkbox (`- [ ]`) syntax.

**Goal:** Scaffold the Void Enhanced modlist/guide with full Typst PDF pipeline, setup guides, and wave-based content.

**Architecture:** `main.typ` includes guide files from `guide/` by category. A batch file runs `typst compile`. Content split into shared setup, Wave 0 (beginner), Wave 1 (advanced). Mods are placeholder entries until populated later.

**Tech Stack:** Typst 0.15, Mod Organizer 2

---

### Task 1: Project Bootstrap + Meta Files

**Files:**

- Create: `AGENTS.md`
- Create: `README.md`
- Create: `conflicts-mods.md`
- Create: `mod-ideas.md`

These four files have no dependencies on any other task. All created in one batch.

- [ ] **Step 1: Create AGENTS.md**

```markdown
# Void Enhanced — Starfield Modlist

**Game Version:** 1.16.244 (June 11, 2026)
**Mod Manager:** Mod Organizer 2
**PDF Engine:** Typst 0.15

## Project Rules

- Two waves: Wave 0 "The Drifter" (beginner, vanilla+/QoL), Wave 1 "The Void Walker" (advanced, mechanics/content/graphics)
- Each wave is a separate MO2 profile — mods do NOT carry over between waves
- Mods must be compatible with game version 1.16.244
- No porn mods (adult/nude OK where relevant — ask user if uncertain)
- No cheating, overpowered, or all-knowing mods
- No redundant or conflicting mods
- Graphics, content, mechanics allowed (mechanics for Wave 1+)

## File Conventions

- Guide content: `.typ` files under `guide/`
- PDF source: `main.typ` at repo root
- Output: `output/Void-Enhanced.pdf`
- `conflicts-mods.md` and `mod-ideas.md` are NOT included in the PDF

## Regenerating the PDF

```

.\generate-pdf.bat

```

## Build Pipeline

`main.typ` includes all guide files via `#include`. `generate-pdf.bat` runs `typst compile main.typ output/Void-Enhanced.pdf --font-path assets`.
```

- [ ] **Step 2: Create README.md**

```markdown
# Void Enhanced — Starfield Modlist & Guide

A curated modlist and game guide for **Starfield version 1.16.244 (June 2026)**.

## Overview

Void Enhanced organizes mods into two waves:
- **Wave 0 — The Drifter:** Beginner-friendly, vanilla+/QoL mods, complete how-to-play guide
- **Wave 1 — The Void Walker:** Advanced mods, new mechanics, strategy guide

Each wave has its own roleplaying background and MO2 profile.

## Requirements

- Starfield 1.16.244 (Steam)
- Mod Organizer 2 (latest)
- Typst 0.15 (for PDF regeneration)
- Inter font (bundled in `assets/`)

## Files

| Path                | Description                         |
|---------------------|-------------------------------------|
| `main.typ`          | Typst source — builds the PDF       |
| `generate-pdf.bat`  | One-click PDF regeneration          |
| `guide/`            | Guide content organized by category |
| `output/`           | Generated PDF                       |
| `conflicts-mods.md` | Known mod conflicts (not in PDF)    |
| `mod-ideas.md`      | Future mod ideas (not in PDF)       |

## Regenerating the PDF

```

.\generate-pdf.bat

```

Output: `output/Void-Enhanced.pdf`
```

- [ ] **Step 3: Create conflicts-mods.md**

```markdown
# Known Mod Conflicts

Mod conflicts discovered during testing. Updated as mods are added.

## Template

### Conflict: [Mod A] + [Mod B]

- **Symptoms:**
- **Cause:**
- **Resolution:**

---

_(No conflicts documented yet — mods have not been populated.)_
```

- [ ] **Step 4: Create mod-ideas.md**

```markdown
# Mod Ideas (Future Development)

Mod concepts to develop for future updates. Not yet implemented.

## Template

### [Mod Name]

- **Category:** Mechanics / Content / Graphics
- **Concept:**
- **Rationale:**
- **Status:** Idea / In design / In testing

---

_(No ideas documented yet.)_
```

- [ ] **Step 5: Create directory structure and commit**

```bash
mkdir -p guide/setup guide/wave-0 guide/wave-1 output

git add AGENTS.md README.md conflicts-mods.md mod-ideas.md guide/ output/
git commit -m "chore: initial project bootstrap with meta files and folder structure"
```

---

### Task 2: PDF Build Pipeline

**Files:**

- Create: `main.typ`
- Create: `generate-pdf.bat`
- Download: `assets/Inter-Variable.ttf`

- [ ] **Step 1: Download Inter Variable font to assets/**

```powershell
$url = "https://github.com/rsms/inter/releases/download/v4.1/Inter-4.1.zip"
$zip = "$env:TEMP\inter-4.1.zip"
Invoke-WebRequest -Uri $url -OutFile $zip
Expand-Archive -Path $zip -DestinationPath "assets/inter-temp"
Move-Item "assets/inter-temp/InterVariable.ttf" "assets/Inter-Variable.ttf" -Force
Remove-Item "assets/inter-temp" -Recurse -Force
Remove-Item $zip -Force
```

If download fails, manually download from #link("<https://github.com/rsms/inter/releases")[Inter> Releases] and place `InterVariable.ttf` (renamed to `Inter-Variable.ttf`) in `assets/`.

- [ ] **Step 2: Create generate-pdf.bat**

```bat
@echo off
echo Compiling Void Enhanced PDF...
typst compile main.typ output/Void-Enhanced.pdf --font-path assets
echo Done. Output: output/Void-Enhanced.pdf
```

- [ ] **Step 3: Create main.typ**

```typst
#set document(
  title: "Void Enhanced",
  author: "Void Enhanced Modlist",
)

#set text(
  font: "Inter",
  size: 10pt,
  fill: white,
)

#set page(
  paper: "a4",
  fill: rgb("#0d0d12"),
  margin: (top: 2cm, bottom: 2cm, left: 2.5cm, right: 2.5cm),
)

// Heading styles
#show heading.where(level: 1): set text(
  fill: rgb("#00d4ff"),
  size: 18pt,
  weight: "bold",
)

#show heading.where(level: 2): set text(
  fill: rgb("#ff6b35"),
  size: 14pt,
)

#show heading.where(level: 3): set text(
  fill: rgb("#c0c4cc"),
  size: 11pt,
)

// Link style
#show link: set text(fill: rgb("#ff6b35"))

// Inline code
#show raw.where(block: false): set text(fill: rgb("#7fdbff"))

// --- Cover Page (no page number) ---
#set page(numbering: none)
#align(center)[
  #v(5cm)
  #image("assets/logo.jpg", height: 6cm)
  #v(2.5cm)
  #text(size: 36pt, fill: rgb("#00d4ff"), weight: "bold")[VOID ENHANCED]
  #v(0.5cm)
  #text(size: 16pt)[A Starfield Modlist & Guide]
  #v(0.8cm)
  #text(size: 10pt, fill: rgb("#888888"))[v1.0 — Starfield 1.16.244]
]

#pagebreak()

// --- Main content starts with page numbering ---
#set page(numbering: "1", number-align: center + bottom)

// --- Introduction ---
= Introduction

Welcome to *Void Enhanced*, a curated modlist and guide for Starfield version 1.16.244.

This document is organized in two waves:

- *Wave 0 — The Drifter*: A vanilla+/QoL experience designed for new players. Complete how-to-play guide included.
- *Wave 1 — The Void Walker*: An advanced experience with content, mechanics, and graphics mods. Strategy guide included.

Each wave is a **separate MO2 profile** — start a new game for each wave. Mods do not carry over between waves.

// --- Table of Contents ---
#pagebreak()
#outline()

// --- Setup ---
#pagebreak()
#include "guide/setup/00-mo2-installation.typ"
#include "guide/setup/01-sfse-and-script-extenders.typ"
#include "guide/setup/02-ini-and-configuration.typ"
#include "guide/setup/03-load-order-and-archive-invalidation.typ"
#include "guide/setup/04-troubleshooting.typ"

// --- Wave 0 ---
#pagebreak()
= Wave 0: The Drifter
#h(1cm)
#include "guide/wave-0/00-background-story.typ"
#v(2cm)
#include "guide/wave-0/01-guide.typ"
#v(2cm)
#include "guide/wave-0/02-ui-mods.typ"
#v(2cm)
#include "guide/wave-0/03-graphics-mods.typ"
#v(2cm)
#include "guide/wave-0/04-mod-installation.typ"

// --- Wave 1 ---
#pagebreak()
= Wave 1: The Void Walker
#h(1cm)
#include "guide/wave-1/00-background-story.typ"
#v(2cm)
#include "guide/wave-1/01-guide.typ"
#v(2cm)
#include "guide/wave-1/02-content-mods.typ"
#v(2cm)
#include "guide/wave-1/03-mechanics-mods.typ"
#v(2cm)
#include "guide/wave-1/04-graphics-mods.typ"
#v(2cm)
#include "guide/wave-1/05-mod-installation.typ"
```

- [ ] **Step 4: Create a temporary placeholder to verify compilation**

Create `guide/setup/00-mo2-installation.typ` with minimal content:

```typst
= MO2 Installation (placeholder)
Content pending.
```

- [ ] **Step 5: Verify Typst compilation**

```bash
.\generate-pdf.bat
```

Expected output: `output/Void-Enhanced.pdf` created with cover page, ToC, and one setup section.

- [ ] **Step 6: Remove placeholder file**

```bash
del guide\setup\00-mo2-installation.typ
```

- [ ] **Step 7: Commit**

```bash
git add main.typ generate-pdf.bat assets/Inter-Variable.ttf
git commit -m "feat: add Typst PDF pipeline with cover page, ToC, and verified compilation"
```

---

### Task 3: Setup Guide Files

**Files:**

- Create: `guide/setup/00-mo2-installation.typ`
- Create: `guide/setup/01-sfse-and-script-extenders.typ`
- Create: `guide/setup/02-ini-and-configuration.typ`
- Create: `guide/setup/03-load-order-and-archive-invalidation.typ`
- Create: `guide/setup/04-troubleshooting.typ`

- [ ] **Step 1: Create 00-mo2-installation.typ**

```typst
== Mod Organizer 2 Installation

=== Step 1: Download MO2

1. Visit #link("https://www.nexusmods.com/site/mods/1")[Nexus Mods — Mod Organizer 2].
2. Download the latest stable version.
3. Run the installer.

=== Step 2: Install MO2

- Choose *Portable* install (recommended for modlists).
- Point the install location to a folder *outside* your Starfield directory (e.g., `C:\Games\MO2-Starfield`).
- Let the installer create shortcuts.

=== Step 3: Configure MO2 for Starfield

1. Launch MO2.
2. From the dropdown in the top-right, select *Starfield*.
3. If Starfield doesn't appear, click `<Edit...>` and manually add it:
   - *Name:* Starfield
   - *Binary:* `path\to\Starfield.exe`
   - *Start in:* `path\to\Starfield`
4. Click *OK*.

=== Step 4: Verify Setup

1. In MO2, click *Run* to launch Starfield.
2. The game should start normally. If it doesn't, check your binary path.
```

- [ ] **Step 2: Create 01-sfse-and-script-extenders.typ**

```typst
== Script Extender Setup

=== Starfield Script Extender (SFSE)

SFSE is required for almost all scripted mods. Every mod in this list that uses scripts will depend on it.

1. Visit #link("https://sfse.silverlock.org/")[Silverlock — SFSE].
2. Download the latest version compatible with 1.16.244.
3. Extract the archive.
4. Copy all files *except* `Data/` into your Starfield root folder (where `Starfield.exe` lives).
5. Copy the `Data/` folder contents into `Data/` (merge if needed).

=== Launching Through SFSE

In MO2:
1. Click the dropdown next to *Run* and select `<Edit...>`.
2. Add a new executable:
   - *Title:* SFSE
   - *Binary:* `path\to\Starfield\sfse_loader.exe`
3. Always launch Starfield via this entry.

=== Address Library

Required by many SFSE plugins. Installs like any other mod in MO2.

1. Download from Nexus Mods.
2. Install via MO2 (drag the archive into the downloads tab and double-click).
```

- [ ] **Step 3: Create 02-ini-and-configuration.typ**

```typst
== INI and Configuration Tweaks

=== StarfieldCustom.ini

Create or edit `Documents\My Games\Starfield\StarfieldCustom.ini`:

```ini
[General]
bEnableMessageOfTheDay=0

[Display]
fDefaultFOV=90

[Camera]
fFPitchMax=80
fFPitchMin=-60
fTPitchMax=80
fTPitchMin=-60

[Archive]
bInvalidateOlderFiles=1
sResourceDataDirs=
```

=== Recommended Graphics Settings (In-Game)

- Upscaling: DLSS or FSR — Quality
- Shadow Quality: High
- Volumetric Lighting: Medium
- Motion Blur: Off
- Depth of Field: Off
- VSync: Off (cap via GPU driver)

=== Performance Tips

1. Verify your GPU drivers are up to date.
2. If using DLSS, prefer the latest DLSS DLL.
3. Disable Steam overlay for Starfield.

```

- [ ] **Step 4: Create 03-load-order-and-archive-invalidation.typ**

```typst
== Load Order & Archive Invalidation

=== Plugin Sorting

Starfield uses a plugin-based load order similar to Fallout 4 / Skyrim.

1. Enable plugins in the MO2 right pane.
2. Order: master files first, then plugins, then patches.
3. Use the built-in MO2 priority system (left pane) for asset conflicts.

=== Archive Invalidation

The `StarfieldCustom.ini` setting `bInvalidateOlderFiles=1` tells the game to load loose files over archived ones. Required for texture/mesh replacers.

=== Load Order Guidelines

- Framework mods (SFSE, Address Library) load first.
- UI mods load after frameworks.
- Content mods load after UI.
- Patches and compatibility fixes load last.

Specific load order is provided per wave in its mod installation section.
```

- [ ] **Step 5: Create 04-troubleshooting.typ**

```typst
== Troubleshooting

=== Game Crashes on Launch

1. Verify SFSE version matches game version.
2. Check MO2 plugin list for incompatible plugins.
3. Disable mods in batches to isolate the culprit.

=== Textures Appear Black or Missing

- Check `bInvalidateOlderFiles=1` in `StarfieldCustom.ini`.
- Verify MO2 left-pane order — textures should load after vanilla assets.

=== Mods Not Appearing In-Game

1. Verify the mod is enabled in MO2's left pane.
2. Check the mod's plugin is checked in the right pane.
3. Launch via SFSE, not the vanilla executable.

=== Common CTD Causes

- Missing master or dependency (check MO2 warnings triangle).
- Outdated SFSE plugins.
- Conflicting mods editing the same record.

=== Getting Help

- Check `conflicts-mods.md` in the modlist root.
- Visit the mod's Nexus page for known issues.
```

- [ ] **Step 6: Verify compilation with all setup files**

```bash
.\generate-pdf.bat
```

Expected: PDF compiles without errors.

- [ ] **Step 7: Commit**

```bash
git add guide/setup/
git commit -m "feat: add setup guides for MO2, SFSE, config, load order, troubleshooting"
```

---

### Task 4: Wave 0 — The Drifter

**Files:**

- Create: `guide/wave-0/00-background-story.typ`
- Create: `guide/wave-0/01-guide.typ`
- Create: `guide/wave-0/02-ui-mods.typ`
- Create: `guide/wave-0/03-graphics-mods.typ`
- Create: `guide/wave-0/04-mod-installation.typ`

- [ ] **Step 1: Create 00-background-story.typ**

```typst
== Background Story

You were nothing. A nobody with a rust bucket and a bad feeling about the Settled Systems.

The message came on an old frequency — one you hadn't heard in years. A distress signal from a research outpost on the edge of known space. The sender? A name you thought you'd buried.

You never asked to be a hero. But the creds are good, and the ship's fuel won't pay for itself.

They call you Drifter. Not because you don't have a past — but because you keep moving forward. One jump at a time.

=== Character Creation

Build your Drifter:

- *Background:* Long Hauler or Explorer
- *Traits:* Introvert, Taskmaster, Terra Firma
- *Starting Skills:* Piloting, Ballistics, Security

Start in United Colonies space and follow the main quest. Your character is learning the galaxy fresh — embrace the unknown.
```

- [ ] **Step 2: Create 01-guide.typ**

```typst
== How to Play

This section covers the core gameplay systems you'll encounter during Wave 0.

=== Character Creation

Choose your background and traits as recommended above. Spend starting skill points in Piloting (for better ship access) and Security (for loot flexibility).

=== Combat Basics

- Use cover and flanking — Starfield's combat AI flushes you out of position.
- Headshots are effective against humanoid enemies.
- Weapon mods: prioritize damage and magazine capacity early.
- Maintain a short-range (shotgun/pistol) and long-range (rifle) weapon.

=== Inventory and Loot

- Carry weight is limited. Invest in the Weight Lifting skill early.
- Most "junk" items are for outpost decoration — sell them unless you plan to build.
- Weapons, spacesuits, and packs are the primary loot. Compare stats before swapping.
- Use the Transfer menu (R on PC) to move items between you and containers quickly.

=== Navigation

- Surface maps show discovered points of interest (POIs).
- Fast travel is available from your ship's cockpit or by opening the star map.
- Your scanner (Tab on PC) marks resources, items, and interactables.

=== Ship Basics

==== Flight Controls

- Thrusters (Space on PC) enable sharp turns at speed.
- Target enemy engines (E on PC in targeting mode) to disable ships for boarding.
- Boost is limited by your reactor's energy allocation — watch the pips.

==== Cargo and Contraband

- Upgrade cargo capacity at Ship Services Technicians (found at major spaceports).
- Stolen goods and contraband require shielded cargo holds to avoid scan detection.
- Scan jammers reduce detection probability but don't guarantee safety.

==== Docking

- Hail ships (target + communicate) before docking.
- Approach within 500m and match speed, then dock when prompted.
- Boarding disabled ships gives you their cargo plus the ship itself.

=== Outpost Fundamentals

- Outposts are optional but simplify resource gathering.
- Place your first extractor on a planet with iron and aluminum (common building materials).
- Link storage containers via the outpost builder to automate material flow.
- Assign crew to outposts for production bonuses.

=== Factions

- *UC Vanguard:* Accessible from New Atlantis. High rewards and ties to the main quest.
- *Ryujin Industries:* Stealth-focused corporate faction based in Neon.
- *Crimson Fleet:* Pirate faction with a UC undercover entry route.
- *Freestar Collective:* Western-themed faction in Akila City.

As a Drifter, joining UC Vanguard fits your backstory — a second chance at purpose.

=== Skills Progression

- Invest in tiers: early skills cost 1 point, advanced skills require rank 4 in a related skill.
- Physical skills (Weight Lifting, Fitness) pay off across all playstyles.
- Tech skills (Piloting, Targeting Control) unlock ship upgrades.
- Combat skills (Ballistics, Pistols, Rifles) directly improve damage.
- Social skills (Persuasion, Commerce) unlock dialogue and economic options.
```

- [ ] **Step 3: Create 02-ui-mods.typ**

```typst
== UI and Quality of Life Mods

Mods in this category improve the user interface and add convenience features without changing core gameplay.

_(Specific mods to be added after research.)_

### #link("https://www.nexusmods.com/starfield/mods/XXX")[*Example UI Mod*]

Improves the inventory screen with better sorting, search, and category filtering.

- *Version:* 1.0.0
- *Dependencies:* SFSE
- *System Impact:* None (cosmetic UI change)
```

- [ ] **Step 4: Create 03-graphics-mods.typ**

```typst
== Graphics Mods

Light graphical enhancements compatible with Wave 0's vanilla+ philosophy.

_(Specific mods to be added after research.)_

### #link("https://www.nexusmods.com/starfield/mods/XXX")[*Example Graphics Mod*]

Improves texture quality and lighting without significant performance cost.

- *Version:* 1.0.0
- *Dependencies:* None
- *System Impact:* None (visual only)
```

- [ ] **Step 5: Create 04-mod-installation.typ**

```typst
== Wave 0 Mod Installation

=== Prerequisites

Ensure you have completed the setup guide (MO2, SFSE, INI tweaks) before continuing.

=== Installation Order

1. Install UI and QoL mods first (foundation for other mods).
2. Install graphics mods second.
3. Apply load order per each mod's instructions.

=== Load Order

- UI framework mods load before UI improvement mods.
- Texture replacers can conflict — load higher-quality ones later.
- Specific load order is listed per-mod in the sections above.

=== Verification

Launch the game via SFSE. Verify:

1. The UI mods appear and function.
2. Graphics mods are visible on characters and environments.
3. No crashes on save or load.
```

- [ ] **Step 6: Verify compilation**

```bash
.\generate-pdf.bat
```

Expected: PDF compiles with Wave 0 content rendered.

- [ ] **Step 7: Commit**

```bash
git add guide/wave-0/
git commit -m "feat: add Wave 0 — Drifter background, guide, and mod templates"
```

---

### Task 5: Wave 1 — The Void Walker

**Files:**

- Create: `guide/wave-1/00-background-story.typ`
- Create: `guide/wave-1/01-guide.typ`
- Create: `guide/wave-1/02-content-mods.typ`
- Create: `guide/wave-1/03-mechanics-mods.typ`
- Create: `guide/wave-1/04-graphics-mods.typ`
- Create: `guide/wave-1/05-mod-installation.typ`

- [ ] **Step 1: Create 00-background-story.typ**

```typst
== Background Story

The void doesn't forget.

You've seen things in the black between stars. Ancient tech that shouldn't exist. Signals that sound like screaming. You made enemies — the kind that don't die when you pull the trigger.

Now you walk the line. One foot in civilization, one in the abyss. You know the Settled Systems is just a thin crust over something deeper. Something hungry.

They call you Void Walker. Not because you chose the path — but because the path chose you.

=== Character Creation

Build your Void Walker:

- *Background:* Bounty Hunter or Xenobiologist
- *Traits:* Spaced, Empath, Neon Street Rat
- *Starting Skills:* Sneak, Medicine, Weapon Engineering

Start in the Narion system. Your character has history — bad deals, old debts, knowledge that costs more than it pays.
```

- [ ] **Step 2: Create 01-guide.typ**

```typst
== Strategy Guide

This section covers advanced play techniques and systems. Mod-specific notes will be added once mods are selected for this wave.

=== Advanced Combat

- Use positioning and environmental hazards to control engagements.
- Study enemy types: robotic, alien, and humanoid enemies each have distinct weaknesses.
- Match damage types to armor when possible.

=== Economy and Smuggling

- Certain systems scan for contraband. Wolf and Kryx are safe harbors.
- Invest in shielded cargo modules and scan jammers.
- Learn which vendors sell rare resources and which buy stolen goods.

=== Faction Strategy

- Choose one major faction to align with for endgame content.
- Cross-faction actions carry reputation consequences.
- Neutral systems and settlements are valuable staging grounds.

=== Ship Specialization

- *Combat ships:* Max engines and shields. Particle weapons are the most versatile.
- *Haulers:* Prioritize cargo and fuel capacity. Shielded cargo mandatory.
- *Explorers:* Grav drive range and scanning arrays. Invest in jump distance.

=== Endgame and NG+

- Completing the main quest unlocks New Game Plus, resetting quest progress.
- Consider finishing all faction quests before entering the Unity.
- Stash gear in a safe container before NG+ — it won't carry over, but it persists if you reload.
```

- [ ] **Step 3: Create 02-content-mods.typ**

```typst
== Content Mods

Mods that add new quests, locations, NPCs, and world-building content.

_(Specific mods to be added after research.)_

### #link("https://www.nexusmods.com/starfield/mods/XXX")[*Example Content Mod*]

Adds a new questline with multiple hours of gameplay, new locations, and unique rewards.

- *Version:* 1.0.0
- *Dependencies:* SFSE
- *System Impact:* Adds quests, NPCs, and locations
```

- [ ] **Step 4: Create 03-mechanics-mods.typ**

```typst
== Mechanics Mods

Mods that introduce new gameplay systems and deepen existing mechanics.

_(Specific mods to be added after research.)_

### #link("https://www.nexusmods.com/starfield/mods/XXX")[*Example Mechanics Mod*]

Adds survival mechanics — hunger, thirst, sleep, temperature, and environmental hazards.

- *Version:* 1.0.0
- *Dependencies:* SFSE
- *System Impact:* Major — changes health, inventory, and travel decisions
```

- [ ] **Step 5: Create 04-graphics-mods.typ**

```typst
== Graphics Mods (Enhanced)

More demanding visual enhancements for a fully modded experience.

_(Specific mods to be added after research.)_

### #link("https://www.nexusmods.com/starfield/mods/XXX")[*Example Enhanced Graphics Mod*]

High-resolution texture overhaul, improved lighting, and weather effects.

- *Version:* 1.0.0
- *Dependencies:* None
- *System Impact:* Performance — requires a capable GPU
```

- [ ] **Step 6: Create 05-mod-installation.typ**

```typst
== Wave 1 Mod Installation

=== Prerequisites

Complete the Wave 0 playthrough first. Create a new MO2 profile for Wave 1 — do not carry over Wave 0 mods.

=== Creating a New MO2 Profile

1. In MO2, open the profile dropdown and select *Manage*.
2. Click *Create* and name it `Void Enhanced — Wave 1`.
3. Set it as a *separate profile* (do not copy Wave 0's mods).

=== Installation Order

1. Framework mods (SFSE plugins, Address Library, other extenders)
2. Content mods (quests, locations)
3. Mechanics mods (survival, economy, crafting)
4. Graphics mods (enhanced)
5. Patches and compatibility fixes

=== Load Order

Wave 1 has more moving parts. Follow each mod's load order instructions carefully.

Priority:
- Masters and frameworks first
- Framework patches second
- Quest mods third
- Mechanics mods fourth
- Graphics last
- Comprehensive patches last

=== Verification

1. Launch via SFSE.
2. Check mod configuration menus for configurable mods.
3. Test a save-load cycle.
4. Visit a new location from a content mod to verify it loads correctly.
```

- [ ] **Step 7: Verify final compilation**

```bash
.\generate-pdf.bat
```

Expected: PDF compiles without errors. Check that cover page has no page number, ToC starts at page 2, and all sections render.

- [ ] **Step 8: Commit**

```bash
git add guide/wave-1/
git commit -m "feat: add Wave 1 — Void Walker background, strategy guide, and mod templates"
```

---

## Parallelization Notes

- Tasks 1 (bootstrap + meta), 2 (pipeline), 3 (setup), 4 (Wave 0), and 5 (Wave 1) have no file conflicts — they write to disjoint paths.
- If executing with subagent-driven: Tasks 1+2 can run first (pipeline needed for verification steps), then 3, 4, and 5 in parallel.

## Self-Review Checklist

- [ ] No `it.function.fill` or other invalid Typst syntax in main.typ
- [ ] Cover page has `page(numbering: none)` before and `page(numbering: "1")` after
- [ ] No `#v()` inside `horizon` alignment — cover uses `center` + explicit `#v()` spacing
- [ ] Nexus URLs include `www.` prefix
- [ ] Inter font download uses PowerShell Expand-Archive for ZIP extraction
- [ ] No `pause` at end of generate-pdf.bat
- [ ] Early compilation check after main.typ creation (Task 2 Step 5)
- [ ] No references to specific mod-mechanics in Wave 1 guide prose
- [ ] Visual separation (`#v(2cm)`) between included files within each wave
- [ ] No duplicate/contradictory commit steps at end
