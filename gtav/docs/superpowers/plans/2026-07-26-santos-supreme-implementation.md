# Santos Supreme Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Scaffold the Santos Supreme GTA V modlist project — project files, Typst PDF template, wave guide stubs, and batch build chain.

**Architecture:** Single Typst template (`template.typ`) includes all wave guide `.typ` files in order. A batch file wraps Typst compilation. Guide content is written in Typst markup for seamless inclusion. Conflicts and mod-ideas docs live outside the PDF.

**Tech Stack:** Typst 0.15, PowerShell/batch for build, git for version control.

---

### Task 0: Git Init + Root Project Files

**Files:**
- Create: `H:\Projects\modguides\gta-v-modlist\AGENTS.md`
- Create: `H:\Projects\modguides\gta-v-modlist\README.md`
- Modify: git repo

- [ ] **Step 1: Initialize git repo**

Run in project root: `git init`

Expected: `Initialized empty Git repository in H:/Projects/modguides/gta-v-modlist/.git/`

- [ ] **Step 2: Write AGENTS.md**

```markdown
# Santos Supreme — Agent Instructions

This project produces a curated GTA V v1.73 modlist and game guide called **Santos Supreme**, organized into progressive waves with roleplaying backstories.

## Project structure
- `guide/wave0/` — Wave 0 "Getting By": vanilla+/first playthrough. UI/QoL mods only.
- `guide/wave1/` — Wave 1 "Untold Stories": mod-heavy/post-story. Graphics, content, mechanics.
- `template.typ` — Typst 0.15 PDF template. Includes all guide `.typ` files.
- `generate.bat` — Batch file: `typst compile template.typ output/santos-supreme.pdf`.
- `conflicts.md` — Known mod conflicts (NOT in PDF).
- `mod-ideas.md` — Future mod ideas (NOT in PDF).

## Mod rules
- All mods must be compatible with GTA V v1.73 (July 14, 2026).
- No conflicting mods (same .rpf or ScriptHookV hook = conflict).
- No porn. Adult/nude allowed where relevant with per-mod user approval.
- No cheating/overpowered/all-knowing mods.
- No redundant mods.
- Wave 0: UI/QoL/bugfix only. Wave 1+: graphics, content, mechanics.

## PDF generation
- `generate.bat` rebuilds `output/santos-supreme.pdf` from `template.typ`.

## Foundation tools
- OpenIV (mod manager), ScriptHookV, ScriptHookVDotNet, OpenIV.asi, Gameconfig.xml
```

- [ ] **Step 3: Write README.md**

```markdown
# Santos Supreme

A curated GTA V modlist and game guide for **version 1.73** (July 14, 2026).

Two progressive playthrough waves:
- **Wave 0 — Getting By:** Vanilla+ experience with UI/QoL mods. Complete beginner's guide.
- **Wave 1 — Untold Stories:** Post-story, heavy modding. New content, graphics, mechanics.

## Quick start

1. Install [OpenIV](https://openiv.com/)
2. Install [ScriptHookV](http://dev-c.com/gtaiv/scripthookv/) (v1.73-compatible)
3. Follow the guide in `guide/wave0/01-before-you-begin.typ`
4. Build the PDF: `.\generate.bat`

## Project layout

```
guide/wave0/          Wave 0 guide & modlist files
guide/wave1/          Wave 1 guide & modlist files
template.typ          Typst PDF template
output/               Generated PDF output
conflicts.md          Known mod conflicts
mod-ideas.md          Future mod ideas
```

Requires [Typst 0.15](https://typst.app/) for PDF generation.
```

- [ ] **Step 4: Add .gitignore**

Create `H:\Projects\modguides\gta-v-modlist\.gitignore`:
```gitignore
output/*
!output/.gitkeep
```

- [ ] **Step 5: Initial commit**

```bash
git add AGENTS.md README.md .gitignore
git commit -m "chore: initialize Santos Supreme project"
```

---

### Task 1: Typst Template + Batch File

**Files:**
- Create: `H:\Projects\modguides\gta-v-modlist\template.typ`
- Create: `H:\Projects\modguides\gta-v-modlist\generate.bat`

- [ ] **Step 1: Write template.typ — page setup, colors, fonts**

```typst
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2cm),
)
#set text(font: ("Georgia", "Times New Roman"), size: 11pt)
#set par(justify: true, leading: 0.45em)
#set heading(numbering: "1.")
#show heading.where(level: 1): set text(size: 20pt, weight: "bold", fill: rgb("#8B6914"))
#show heading.where(level: 2): set text(size: 15pt, weight: "bold", fill: rgb("#6B4E0A"))
#show heading.where(level: 3): set text(size: 12pt, weight: "bold", fill: rgb("#5A3E08"))
#show link: text.with(fill: rgb("#2E5A88"))
#show list.item: set text(size: 10.5pt)
```

- [ ] **Step 2: Write template.typ — cover page**

```typst
// ── Cover Page ──────────────────────────────────
#set page(fill: rgb("#1a1a1a"))
#align(center + middle, [
  #image("assets/logo.jpg", width: 55%)
  #v(1.5cm)
  #text(size: 38pt, weight: "bold", fill: rgb("#D4A843"))[Santos Supreme]
  #v(0.6cm)
  #text(size: 16pt, fill: rgb("#C0B090"), weight: "regular")[A Curated GTA V Modlist & Guide]
  #v(0.4cm)
  #text(size: 12pt, fill: rgb("#A09080"))[Version 1.73 — July 2026]
])
#pagebreak()
```

- [ ] **Step 3: Write template.typ — TOC and wave dividers**

```typst
// ── Table of Contents ───────────────────────────
#set page(fill: white)
#set text(fill: rgb("#2A2A2A"))
#outline(title: [Table of Contents])
#pagebreak()

// ── Wave divider helper ─────────────────────────
#let wave-divider(title) = {
  pagebreak()
  set page(fill: rgb("#1a1a1a"))
  align(center + middle, text(size: 28pt, weight: "bold", fill: rgb("#D4A843"))[#title])
  pagebreak()
  set page(fill: white)
  set text(fill: rgb("#2A2A2A"))
}
```

- [ ] **Step 4: Write template.typ — Wave 0 includes**

```typst
// ═════════════════════════════════════════════
//  WAVE 0: Getting By
// ═════════════════════════════════════════════
#wave-divider("Wave 0: Getting By")

#set heading(numbering: "0.")

#include "guide/wave0/00-roleplay.typ"
#include "guide/wave0/01-before-you-begin.typ"
#include "guide/wave0/02-modlist.typ"
#include "guide/wave0/03-gameplay-guide.typ"
```

- [ ] **Step 5: Write template.typ — Wave 1 includes**

```typst
// ═════════════════════════════════════════════
//  WAVE 1: Untold Stories
// ═════════════════════════════════════════════
#wave-divider("Wave 1: Untold Stories")

#include "guide/wave1/00-roleplay.typ"
#include "guide/wave1/01-migration-guide.typ"
#include "guide/wave1/02-modlist-graphics.typ"
#include "guide/wave1/03-modlist-content.typ"
#include "guide/wave1/04-modlist-mechanics.typ"
#include "guide/wave1/05-modlist-adult.typ"
#include "guide/wave1/06-advanced-guide.typ"
```

- [ ] **Step 6: Write generate.bat**

```bat
@echo off
echo Building Santos Supreme PDF...
typst compile template.typ output/santos-supreme.pdf
if %ERRORLEVEL% neq 0 (
    echo Build failed with error code %ERRORLEVEL%
    exit /b %ERRORLEVEL%
)
echo Success: output/santos-supreme.pdf
```

- [ ] **Step 7: Commit**

```bash
git add template.typ generate.bat
git commit -m "feat: add Typst template and build script"
```

---

### Task 2: Wave 0 Guide Files

**Files:**
- Create: `H:\Projects\modguides\gta-v-modlist\guide\wave0\00-roleplay.typ`
- Create: `H:\Projects\modguides\gta-v-modlist\guide\wave0\01-before-you-begin.typ`
- Create: `H:\Projects\modguides\gta-v-modlist\guide\wave0\02-modlist.typ`
- Create: `H:\Projects\modguides\gta-v-modlist\guide\wave0\03-gameplay-guide.typ`

- [ ] **Step 1: Write 00-roleplay.typ**

```typst
= Getting By

== The Premise

You've just arrived in Los Santos and the city doesn't care. Empty pockets, a cheap apartment, and a car that barely runs.

The goal is simple: survive and thrive.

// ── Franklin ──────────────────────────────────
== Franklin Clinton

Franklin sees Los Santos as a ladder. Repo man by day, hustler by night — every job is a step up. For him, "getting by" means escaping the neighborhood that raised him. Learn the streets, build connections, and climb.

*Approach:* Mission-driven. Follow the main story, invest earnings in properties, build steady income.

// ── Michael ────────────────────────────────────
== Michael De Santa

Michael has everything and nothing. A mansion, a family that hates him, and a past he can't outrun. "Getting by" for Michael is holding it together — keeping the peace, managing the chaos, and finding purpose beyond the couch and the therapist.

*Approach:* Side content. Buy the cinema, the cab company, the golf course. Build a legitimate empire while the story pulls him back into crime.

// ── Trevor ─────────────────────────────────────
== Trevor Philips

Trevor lives on the fringes. Sandy Shores is his kingdom of misfits, and his version of "getting by" is raw survival — take what you need, burn what you can't carry, and never apologize.

*Approach:* Explore every corner of Blaine County. Build the Trevor Philips Industries empire through chaos and opportunity.

== This Guide

This wave covers the vanilla GTA V experience with a light layer of quality-of-life mods. You'll learn controls, mechanics, money-making, and how to set up mods safely. Follow the waves in order — Wave 1 assumes you know what's here.
```

- [ ] **Step 2: Write 01-before-you-begin.typ**

```typst
= Before You Begin

This guide assumes you have GTA V installed and can launch it successfully in singleplayer.

== Installing OpenIV

#link("https://openiv.com/")[OpenIV] is the standard mod management tool for GTA V.

1. Download the latest version from #link("https://openiv.com/")[openiv.com]
2. Run the installer (default settings are fine)
3. Launch OpenIV — it will scan for your GTA V installation automatically
4. Switch OpenIV to *Edit Mode* when prompted (this enables file modification)

*Always back up files before editing.* OpenIV can create backups automatically — use this feature.

== Mod Management with OpenIV

OpenIV organizes mods through two mechanisms:

=== Mods Folder (Recommended)

OpenIV's *mods* folder creates a virtual override system:

1. In OpenIV, go to *Tools > Package Installer*
2. Set the install path to your GTA V directory
3. Most mod packages will install into */mods/* automatically

The *mods* folder keeps the original game files untouched. To disable all mods for GTA Online, rename the *mods* folder to *mods_off*.

=== Direct .rpf Editing

Some older mods require direct editing of game archives (.rpf files). Only do this if the mod's install guide explicitly requires it. Always back up the original .rpf first.

The most common paths:
- *update/update.rpf* — DLC content, most common target
- *x64/* — Base game textures and models
- *common.rpf* — Shared data and scripts

== ScriptHookV

#link("http://dev-c.com/gtaiv/scripthookv/")[ScriptHookV] is required by almost every mod.

1. Download ScriptHookV (v1.73 compatible version)
2. Extract *ScriptHookV.dll* and *dsound.dll* into your GTA V root folder
3. Download #link("https://github.com/crosire/scripthookvdotnet")[ScriptHookVDotNet] if a mod requires it
4. Extract the .asi and .dll files into the same folder

*Verify:* Launch the game. If you see the ScriptHookV loading text in the top-left corner, it's working.

== ASI Mods

ASI mods use the OpenIV.asi loader:
- Copy the *.asi* file to your GTA V root folder (*not* the *mods* folder)
- ScriptHookV's *dsound.dll* acts as the ASI loader — no extra steps needed

== Safety Checklist

Run through this checklist before starting the game with new mods:

- [ ] Mods folder exists and is named *mods* (not *mods_off*)
- [ ] ScriptHookV.dll and dsound.dll in game root
- [ ] All mod files installed to correct paths
- [ ] Backups created for any replaced .rpf files
- [ ] GTA Online not launched with mods active (rename the *mods* folder to *mods_off* before launching Online)
```

- [ ] **Step 3: Write 02-modlist.typ**

```typst
= Wave 0: Modlist

== Mod Entry Format

Each entry shows:
- *Category:* UI / QoL / Bugfix
- *Version:* Compatible with v1.73
- *Dependencies:* Required tools or mods
- *Install path:* Where files go
- *System Impact:* What the mod changes
- *Installation:* Special steps (if any)

---

(Mod entries to be populated. This section lists UI, quality-of-life, and bug-fix mods compatible with GTA V v1.73. No content additions or mechanic overhauls.)

*Template for new entries:*

// == #link("mod-url")[Mod Name]
// - *Category:* UI
// - *Version:* 1.0
// - *Dependencies:* ScriptHookV
// - *Install path:* /mods/update/update.rpf
// - *System Impact:* Changes HUD appearance
// - *Installation:* Use OpenIV Package Installer
```

- [ ] **Step 4: Write 03-gameplay-guide.typ**

```typst
= Gameplay Guide

== Core Controls

| Key | Action |
|-----|--------|
| WASD | Movement |
| Shift | Sprint (on foot) / Accelerate (vehicle) |
| Space | Jump / Brake |
| E | Interact / Enter vehicle |
| F | Enter/exit cover |
| Q | Take cover |
| Left click | Shoot |
| Right click | Aim |
| R | Reload |
| Tab | Switch weapon |
| M | Phone |
| Z | Character ability (special) |

== Making Money (Early Game)

=== Story Missions

The fastest money early on comes from story missions. Prioritize:
- Franklin's repo jobs (first few missions)
- Michael's early heist setup missions
- Trevor's early jobs

=== Stock Market

The LCN and BAWSAQ stock markets are tied to specific story missions. Key rule: *always check Lester's assassination missions* — complete the mission, then invest before the target stock moves. This is the single biggest money-maker in the game.

=== Side Hustles

- *Taxi work* (Franklin): Easy early cash, unlocks taxi boost
- *Tow truck* (Franklin): Available after certain missions
- *The Epsilon Program* (Michael): Tedious but lucrative
- *Strangers and Freaks*: Random encounters that pay well and unlock content

== Property Investment

=== Businesses

Buyable properties unlock passive income:
- *Los Santos Customs* (various locations): Mod shop income
- *Cinema* (Michael): Story-specific
- *Cab Company* (Franklin): Story-specific
- *Smoke on the Water*: Dispensary income

=== Safehouses

Safehouses serve as save points and vehicle storage. Buy them when you have cash — they appreciate in value... in a sense.

== Combat Tips

- *Headshots* are king. Take time to aim.
- *Cover* is your best friend. Don't run into open areas.
- *Use character abilities:* Franklin's bullet-time driving, Michael's slow-mo shooting, Trevor's rage mode.
- *Body armor* is available at Ammu-Nation. Buy it before heist missions.
- *Switch weapons* strategically — use SMGs indoors, rifles at range.

== Vehicle Tips

- *Sell stolen cars* at Los Santos Customs (one per in-game day)
- *Upgrade the turbo and transmission* first — best performance per dollar
- *Keep a fast car and a tough car* — speed for missions, armor for chaos
- *Use Franklin's special* for tight driving sections
- *Motorcycles* weave through traffic faster than cars
```
- [ ] **Step 5: Commit**

```bash
git add guide/wave0/
git commit -m "feat: add Wave 0 guide files"
```

---

### Task 3: Wave 1 Guide Files

**Files:**
- Create: `H:\Projects\modguides\gta-v-modlist\guide\wave1\00-roleplay.typ`
- Create: `H:\Projects\modguides\gta-v-modlist\guide\wave1\01-migration-guide.typ`
- Create: `H:\Projects\modguides\gta-v-modlist\guide\wave1\02-modlist-graphics.typ`
- Create: `H:\Projects\modguides\gta-v-modlist\guide\wave1\03-modlist-content.typ`
- Create: `H:\Projects\modguides\gta-v-modlist\guide\wave1\04-modlist-mechanics.typ`
- Create: `H:\Projects\modguides\gta-v-modlist\guide\wave1\05-modlist-adult.typ`
- Create: `H:\Projects\modguides\gta-v-modlist\guide\wave1\06-advanced-guide.typ`

- [ ] **Step 1: Write 00-roleplay.typ**

```typst
= Untold Stories

== The Premise

The story missions are done. The big scores are history. But Los Santos is deeper than the main plot reveals — hidden locations, underground economies, new territories, and entire game systems the vanilla world never shows you.

You know the city. Now discover what it hides.

== What Changes

This wave introduces mods that expand the world:
- *New mechanics:* Economy systems, gang warfare, realistic needs
- *New content:* Custom missions, map extensions, vehicles, weapons
- *Graphics overhauls:* Visuals that push the RAGE engine to its limits

== Requirements

Before starting Wave 1:
- Complete the main story in Wave 0
- Familiarity with OpenIV mod management
- Understanding of ScriptHookV and ASI mods
- Strong PC recommended (graphics mods are demanding)
```

- [ ] **Step 2: Write 01-migration-guide.typ**

```typst
= Migrating from Wave 0

== Backup Your Saves

Wave 1 uses many of the same save files as Wave 0, but mods can corrupt saves. Back up your save folder before installing new mods:

`Documents\Rockstar Games\GTA V\Profiles\<your-profile-id>\`

== Removing Wave 0 Mods

Some Wave 0 QoL mods may conflict with Wave 1 mechanics mods. When in doubt:
1. Clear the */mods/* folder
2. Reinstall only Wave 1 mods
3. Keep ScriptHookV and OpenIV — they're shared

== New Dependencies

Wave 1 mods often require additional frameworks:

| Framework | Purpose |
|-----------|---------|
| ScriptHookVDotNet | .NET-based mods |
| NativeUI | Custom menu interfaces |
| LemonUI | Alternative UI framework |
| MapEditor | Map/content editing |
| HeapAdjuster | Memory limit adjustment for heavy mods |

== Gameconfig.xml

Many graphics and content mods require a custom *Gameconfig.xml* to increase memory limits:
1. Download a v1.73-compatible Gameconfig.xml
2. Install to: */mods/update/update.rpf/common/data/gameconfig.xml*
3. Without this, the game crashes when loading heavy mods
```

- [ ] **Step 3: Write 02-modlist-graphics.typ**

```typst
= Wave 1: Graphics Mods

== Mod Entry Format

- *Category:* Graphics
- *Version:* Compatible with v1.73
- *Dependencies:* Required tools or mods
- *Install path:* Where files go
- *System Impact:* Visual changes to environment, lighting, textures
- *Installation:* Special steps

---

(Mod entries to be populated.)

// == #link("mod-url")[Mod Name]
// - *Category:* Graphics
// - *Version:* 1.0
// - *Dependencies:* ScriptHookV, Gameconfig.xml
// - *Install path:* /mods/update/update.rpf
// - *System Impact:* Replaces all environmental textures with 4K versions
// - *Installation:* Use OpenIV Package Installer, then replace Gameconfig.xml
```

- [ ] **Step 4: Write 03-modlist-content.typ**

```typst
= Wave 1: Content Mods

(Mod entries to be populated — new missions, map extensions, vehicles, weapons.)
```

- [ ] **Step 5: Write 04-modlist-mechanics.typ**

```typst
= Wave 1: Mechanics Mods

(Mod entries to be populated — economy, realism, gang systems, gameplay overhauls.)
```

- [ ] **Step 6: Write 05-modlist-adult.typ**

```typst
= Wave 1: Adult Mods

*Note:* Adult/nude mods listed here are for users 18+. Each mod requires explicit approval before inclusion in the final PDF.

(Mod entries to be populated — pending per-mod user approval.)
```

- [ ] **Step 7: Write 06-advanced-guide.typ**

```typst
= Advanced Strategy Guide

== Optimizing for Modded Gameplay

Heavy mods require tweaking to maintain stable FPS:

=== Memory and Performance

- Install *HeapAdjuster* or *HeapLimitAdjuster* for memory limit increases
- Use *Gameconfig.xml* tuned to your RAM (8GB/16GB/32GB variants exist)
- Set *-GPUCount* and *-availablevidmem* launch parameters in Steam/RGL
- Disable VSync in-game, cap FPS via GPU driver

=== Load Order

ASI mods load alphabetically from the root folder. If two ASI mods conflict:
1. Rename one to load later (e.g., *zzz_myMod.asi* loads last)
2. Check each mod's documentation for recommended load position

=== Troubleshooting

| Symptom | Likely Fix |
|---------|------------|
| Crash on startup | Outdated ScriptHookV or missing Gameconfig.xml |
| Crash on loading save | Corrupted save or missing mod dependency |
| Textures not loading | Packfile limit reached — use HeapAdjuster |
| Infinite loading screen | Conflicting .rpf mods — check *mods* folder |
| FPS drops | Too many 4K textures — reduce texture quality |

== Hidden Content Routes

With content mods installed, explore:
- (To be documented with specific mod content)
```

- [ ] **Step 8: Commit**

```bash
git add guide/wave1/
git commit -m "feat: add Wave 1 guide files"
```

---

### Task 4: Conflicts + Mod Ideas Files

**Files:**
- Create: `H:\Projects\modguides\gta-v-modlist\conflicts.md`
- Create: `H:\Projects\modguides\gta-v-modlist\mod-ideas.md`

- [ ] **Step 1: Write conflicts.md**

```markdown
# Known Mod Conflicts

Use this file to track mods that cannot coexist in the same wave.

## Format

```markdown
### Mod A + Mod B
- **Category conflict:** [e.g., Same .rpf overwrite / Same ScriptHookV hook]
- **Wave:** [0 or 1]
- **Resolution:** [e.g., Choose one, or install order fix]
- **Status:** [Open / Resolved]
```

## Wave 0 Conflicts

*None documented yet.*

## Wave 1 Conflicts

*None documented yet.*

## Cross-Wave Conflicts

*None documented yet.*
```

- [ ] **Step 2: Write mod-ideas.md**

```markdown
# Mod Ideas (Future Development)

Mods we'd like to exist for v1.73 but haven't found, researched, or verified yet.

## Format

```markdown
### Idea Name
- **Category:** [Graphics/Content/Mechanics/UI]
- **Wave:** [0 or 1]
- **Concept:** What the mod would do
- **Existing alternatives:** [Related mods that partly fill this gap]
- **Priority:** [High/Medium/Low]
```

## Ideas

*None recorded yet.*
```

- [ ] **Step 3: Commit**

```bash
git add conflicts.md mod-ideas.md
git commit -m "docs: add conflicts and mod-ideas tracking files"
```

---

### Task 5: Generate and Validate PDF

**Files:**
- Validate: `template.typ`
- Validate: `generate.bat`
- Output: `output/santos-supreme.pdf`

- [ ] **Step 1: Run the batch file**

Run: `.\generate.bat`

Expected: `Success: output/santos-supreme.pdf`

- [ ] **Step 2: Verify PDF exists and has content**

Run:
```bash
if (Test-Path 'output/santos-supreme.pdf') {
  $f = Get-Item 'output/santos-supreme.pdf'
  Write-Output "PDF created: $($f.Length) bytes"
}
```

Expected output: `PDF created: <some number> bytes` (> 50KB typically)

- [ ] **Step 3: If build fails, fix and re-run**

Common issues:
- Typst syntax errors in .typ files
- Missing include paths (files not found)
- Logo path mismatch

Fix the issue in the offending file, then rerun `.\generate.bat`.

- [ ] **Step 4: Create .gitkeep in output**

```bash
New-Item -ItemType File -Path 'output\.gitkeep'
```

- [ ] **Step 5: Commit**

```bash
git add output/.gitkeep .gitignore
git commit -m "feat: add output directory and validate PDF generation"
```
