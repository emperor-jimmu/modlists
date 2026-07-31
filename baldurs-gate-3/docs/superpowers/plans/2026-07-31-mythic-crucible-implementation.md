# Mythic Crucible — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build a complete 2-wave modlist + game guide for Baldur's Gate 3 "Mythic Crucible" with Typst-generated PDF output.

**Architecture:** Content-first pipeline. Markdown source files in `guide/` authored directly. A Node.js pre-processor converts `.md` to Typst-compatible `.typ` content blocks in `guide/.typst-cache/`. `build.typ` assembles them with BG3-themed styling (dark purples, golds, dark backgrounds, high-contrast text). `build.bat` orchestrates the full compile and validates prerequisites. Mod research done via Playwright browser against Nexus Mods.

**Tech Stack:** Markdown (guide content), Typst 0.15.x (PDF engine), Node.js (markdown-to-typst converter), Batch (build launcher)

**Commit Strategy:** 5 atomic commits — one per major deliverable.

---

## File Map

| File                         | Responsibility                                                               |
|------------------------------|------------------------------------------------------------------------------|
| `AGENTS.md`                  | Project-specific agent instructions for this modlist                         |
| `README.md`                  | Public-facing modlist overview and quick-start                               |
| `STATUS.md`                  | Living decision log — accepted/rejected mods, conflicts, notes               |
| `mod-ideas.md`               | Future mod ideas, not included in PDF                                        |
| `conflicts-mods.md`          | Known incompatibilities between mods                                         |
| `guide/00-cover.md`          | Cover page content (modlist name, tagline, logo reference)                   |
| `guide/00-toc.md`            | Table of contents placeholder (Typst generates real TOC)                     |
| `guide/01-installation.md`   | BG3MM installation guide + mod setup instructions                            |
| `guide/02-wave-0-guide.md`   | Beginner's guide: character creation, builds, mechanics                      |
| `guide/03-wave-0-modlist.md` | Wave 0 mod entries (~10-20 mods)                                             |
| `guide/04-wave-1-guide.md`   | Advanced guide: multiclassing, mechanics, mod integration                    |
| `guide/05-wave-1-modlist.md` | Wave 1 mod entries (50+ mods)                                                |
| `guide/06-load-order.md`     | Prescribed load order for each wave                                          |
| `scripts/convert.js`         | Node.js script: markdown files → Typst `.typ` content blocks                 |
| `scripts/clean.js`           | Node.js script: wipes `.typst-cache/` for a clean build                      |
| `build.typ`                  | Typst document: imports converted `.typ` files, applies styling, renders PDF |
| `build.bat`                  | One-click launcher: prerequisite check → clean → convert → compile           |
| `output/mythic-crucible.pdf` | Generated PDF (gitignored)                                                   |

---

### Task 1: Project Scaffolding

**Files:**

- Create: `AGENTS.md`, `README.md` (stub), `STATUS.md` (stub), `mod-ideas.md` (stub), `conflicts-mods.md` (stub)
- Create: `guide/00-cover.md` (stub), `guide/00-toc.md` (stub), `guide/01-installation.md` (stub)
- Create: `guide/02-wave-0-guide.md` (stub), `guide/03-wave-0-modlist.md` (stub)
- Create: `guide/04-wave-1-guide.md` (stub), `guide/05-wave-1-modlist.md` (stub), `guide/06-load-order.md` (stub)
- Create: `build.bat` (stub), `scripts/convert.js` (stub), `scripts/clean.js` (stub), `.gitignore`

- [ ] **Step 1: Create all directory structure**

```
baldurs-gate-3/
├── AGENTS.md
├── README.md
├── STATUS.md
├── mod-ideas.md
├── conflicts-mods.md
├── build.bat
├── build.typ                    (created in Task 10)
├── .gitignore
├── assets/
│   └── logo.jpg                 (already exists)
├── guide/
│   ├── 00-cover.md
│   ├── 00-toc.md
│   ├── 01-installation.md
│   ├── 02-wave-0-guide.md
│   ├── 03-wave-0-modlist.md
│   ├── 04-wave-1-guide.md
│   ├── 05-wave-1-modlist.md
│   └── 06-load-order.md
├── scripts/
│   ├── convert.js
│   └── clean.js
└── output/                      (gitignored, created by build)
```

- [ ] **Step 2: Create AGENTS.md**

```markdown
# Baldur's Gate 3 — Mythic Crucible

Target version: Hotfix #36 / Patch 8 (April 15, 2025)
Mod organizer: BG3 Mod Manager (BG3MM)

## Structure

- `guide/` — all guide and modlist content (Markdown)
- `output/` — generated PDF
- `scripts/` — build tooling
- `STATUS.md` — decision log, accepted/rejected mods, conflicts
- `mod-ideas.md` — future mod ideas (not in PDF)
- `conflicts-mods.md` — known incompatibilities (not in PDF)

## Mod rules

- No fabrication — every mod must be verified via Nexus Mods
- Compatible with Patch 8 / Hotfix #36 (April 15, 2025)
- No cheating, meme, redundant, or incompatible mods
- Adult/nude OK if thematically relevant; no explicit porn

## Build

Run `build.bat` to regenerate the PDF. Requires Typst 0.15.x and Node.js.
```

- [ ] **Step 3: Create README.md stub**

```markdown
# Mythic Crucible — Baldur's Gate 3 Modlist

A curated 2-wave modlist and game guide for Baldur's Gate 3 (Patch 8 / Hotfix #36).

| Wave | For         | Mods   | Focus                                     |
|------|-------------|--------|-------------------------------------------|
| 0    | Beginners   | ~10-20 | UI/QoL + bug fixes + lightweight graphics |
| 1    | Experienced | 50+    | New content, mechanics, graphics overhaul |

## Quick Start

1. Read `guide/01-installation.md` for BG3MM setup
2. Follow Wave 0 (`guide/02-wave-0-guide.md`) for your first playthrough
3. After completing Wave 0, start fresh with Wave 1 (`guide/04-wave-1-guide.md`)

Full documentation in `guide/`. PDF: `output/mythic-crucible.pdf`.
```

- [ ] **Step 4: Create STATUS.md stub**

```markdown
# STATUS.md — Mythic Crucible Decision Log

## Accepted Mods

| Mod | Wave | Category | Decision Date | Notes |
|-----|------|----------|---------------|-------|

## Rejected Mods

| Mod | Reason | Date |
|-----|--------|------|

## Design Decisions

- **2026-07-31:** Project created. 2-wave structure. BG3MM as mod organizer. Typst for PDF.

## Conflicts & Resolutions

*(Resolved conflicts documented in conflicts-mods.md)*
```

- [ ] **Step 5: Create mod-ideas.md stub**

```markdown
# mod-ideas.md — Future Mod Ideas

Mods that sound interesting but couldn't be verified, aren't compatible yet, or were out of scope. Not included in the PDF.

| Mod | Category | Status | Notes |
|-----|----------|--------|-------|
```

- [ ] **Step 6: Create conflicts-mods.md stub**

```markdown
# conflicts-mods.md — Known Mod Conflicts

| Mod A | Mod B | Conflict Type | Resolution |
|-------|-------|---------------|------------|
```

- [ ] **Step 7: Create all guide stub files**

`guide/00-cover.md`:

```markdown
# Mythic Crucible

A Baldur's Gate 3 Modlist & Guide

![Logo](../assets/logo.jpg)

Patch 8 / Hotfix #36 — April 2025
```

`guide/00-toc.md`:

```markdown
# Table of Contents

The table of contents is generated automatically by Typst during PDF build.
```

`guide/01-installation.md`:

```markdown
# Installation Guide

## Installing BG3 Mod Manager

[TODO]

## Setting Up Mods

[TODO]

## Wave Setup

[TODO]
```

`guide/02-wave-0-guide.md`:

```markdown
# Wave 0 — First Steps into Faerun

*You awaken on the nautiloid with nothing but fragmented memories and a tadpole behind your eye. The world is brutal, unfamiliar, and unforgiving. You are not yet a hero — you are a survivor, learning the rules of a world that does not care whether you live or die. Every conversation could be your last. Every battle is a lesson. Your only advantage: a keener eye for detail and smoother tools than fate intended. This is your origin story.*

## Getting Started

[TODO]

## Character Creation

[TODO]

## Recommended Beginner Builds

[TODO]

## Important Mechanics

[TODO]

## Combat Fundamentals

[TODO]

## Early-Game Tips

[TODO]

## Common Pitfalls

[TODO]
```

`guide/03-wave-0-modlist.md`:

```markdown
# Wave 0 Modlist

## Bug Fixes & Community Patches

*(Mods to be added)*

## UI Enhancements

*(Mods to be added)*

## Quality of Life

*(Mods to be added)*

## Lightweight Graphics

*(Mods to be added)*
```

`guide/04-wave-1-guide.md`:

```markdown
# Wave 1 — Mythic Crucible

*You've walked this path before. You know the faces, the betrayals, the choices that await. But the Weave has shifted — new powers stir, forgotten races emerge from shadow, and the gods themselves seem to be rewriting the rules of engagement. The Sword Coast is bigger, darker, and more dangerous than you remember. This time, you're not just surviving — you're testing the limits of what a mortal can become. The crucible awaits.*

## Advanced Character Building

[TODO]

## Deeper Mechanics

[TODO]

## Party Optimization

[TODO]

## Economy

[TODO]

## Mod Integration

[TODO]

## Late-Game & Post-Campaign

[TODO]
```

`guide/05-wave-1-modlist.md`:

```markdown
# Wave 1 Modlist

## Graphics & Visuals

*(Mods to be added)*

## Character Creation

*(Mods to be added)*

## Races

*(Mods to be added)*

## Classes & Subclasses

*(Mods to be added)*

## Spells

*(Mods to be added)*

## Feats & Progression

*(Mods to be added)*

## Equipment

*(Mods to be added)*

## Companions & NPCs

*(Mods to be added)*

## Quests & Areas

*(Mods to be added)*

## Combat & Difficulty

*(Mods to be added)*

## Gameplay Mechanics

*(Mods to be added)*

## Romance & Adult

*(Mods to be added)*

## UI/QoL

*(Mods to be added)*
```

`guide/06-load-order.md`:

```markdown
# Load Order

## Wave 0 Load Order

*(To be determined after mod curation)*

## Wave 1 Load Order

*(To be determined after mod curation)*
```

- [ ] **Step 8: Create build.bat stub**

```batch
@echo off
setlocal enabledelayedexpansion

echo === Mythic Crucible PDF Builder ===

echo.
echo [1/4] Checking prerequisites...
where typst >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Typst is not installed or not in PATH.
    echo Install Typst from https://github.com/typst/typst/releases
    echo Then run this script again.
    exit /b 1
)

where node >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Node.js is not installed or not in PATH.
    echo Install Node.js from https://nodejs.org
    echo Then run this script again.
    exit /b 1
)

echo Typst and Node.js found.
echo.

echo [2/4] Cleaning previous build cache...
node scripts/clean.js
if %errorlevel% neq 0 (
    echo ERROR: Cache cleaning failed.
    exit /b 1
)

echo.
echo [3/4] Converting Markdown to Typst...
node scripts/convert.js
if %errorlevel% neq 0 (
    echo ERROR: Markdown conversion failed.
    exit /b 1
)

echo.
echo [4/4] Compiling PDF with Typst...
if not exist "output" mkdir "output"
typst compile build.typ output/mythic-crucible.pdf
if %errorlevel% neq 0 (
    echo ERROR: Typst compilation failed.
    echo Check error messages above for details.
    exit /b 1
)

echo.
echo === Done! PDF saved to output/mythic-crucible.pdf ===
```

- [ ] **Step 9: Create scripts/convert.js stub**

```javascript
// Converts guide/*.md files to Typst-compatible .typ content blocks
// Full implementation in Task 10
const fs = require('fs');
const path = require('path');

const guideDir = path.join(__dirname, '..', 'guide');
const cacheDir = path.join(guideDir, '.typst-cache');

if (!fs.existsSync(cacheDir)) {
  fs.mkdirSync(cacheDir, { recursive: true });
}

console.log('Convert.js placeholder — full implementation in Task 10');
```

- [ ] **Step 10: Create scripts/clean.js**

```javascript
// Wipes the .typst-cache directory for a clean build
const fs = require('fs');
const path = require('path');

const cacheDir = path.join(__dirname, '..', 'guide', '.typst-cache');

if (fs.existsSync(cacheDir)) {
  fs.rmSync(cacheDir, { recursive: true, force: true });
  console.log('Cleaned build cache.');
} else {
  console.log('No cache to clean.');
}
```

- [ ] **Step 11: Create .gitignore**

```
output/*.pdf
guide/.typst-cache/
node_modules/
```

- [ ] **Step 12: Create output/ directory**

```bash
mkdir -p baldurs-gate-3/output
```

Create `output/.gitkeep` (empty file) so the directory is tracked.

- [ ] **Step 13: Verify scaffolding**

Run: `Get-ChildItem -Recurse -Name baldurs-gate-3/guide`
Expected: 7 `.md` files present

Run: `Get-ChildItem -Name baldurs-gate-3/*.md`
Expected: `AGENTS.md`, `README.md`, `STATUS.md`, `mod-ideas.md`, `conflicts-mods.md`

Run: `Get-ChildItem -Name baldurs-gate-3/scripts/`
Expected: `convert.js`, `clean.js`

- [ ] **Step 14: Commit — Scaffolding**

```bash
git add baldurs-gate-3/
git commit -m "feat(bg3): scaffold Mythic Crucible project structure"
```

---

### Task 2: Research & Write Wave 0 Modlist (All Categories)

**Files:**

- Modify: `guide/03-wave-0-modlist.md`
- Modify: `STATUS.md`
- Modify: `mod-ideas.md` (for rejected/uncertain mods)

**Target:** ~10-20 mods across all 4 Wave 0 categories.

- [ ] **Step 1: Open Nexus Mods BG3 in Playwright**

Navigate to: `https://www.nexusmods.com/baldursgate3/mods/`
Browse by category, endorsements, and last updated. Filter mindset: Patch 8 compatible only.

- [ ] **Step 2: Research Bug Fixes & Community Patches (target: 3-5 mods)**

Search terms: "community patch", "bug fix", "patch fix", "unofficial patch", "fixes"
For each candidate document: name, URL, last updated date, version, description, dependencies.
Reject any mod last updated before September 2024.
Reject any mod with Patch 8 complaints in recent comments.
Log all decisions in STATUS.md.
Write verified entries into `guide/03-wave-0-modlist.md` under "Bug Fixes & Community Patches".

- [ ] **Step 3: Research UI Enhancements (target: 5-8 mods)**

Search terms: "UI", "interface", "inventory", "tooltip", "camera", "controls", "WASD", "Better UI", "Improved UI", "hotbar"
For each candidate: same verification process as Step 2.
Write entries under "UI Enhancements".

- [ ] **Step 4: Research Quality of Life (target: 3-5 mods)**

Search terms: "quality of life", "auto loot", "faster loot", "sort bags", "weight", "highlight", "search", "quick", "AOE loot"
Same verification process.
Write entries under "Quality of Life".

- [ ] **Step 5: Research Lightweight Graphics (target: 3-5 mods)**

Search terms: "texture", "lighting", "reshade", "visual", "better faces", "hair", "upscale"
Focus: visual polish only — no gameplay changes. Heavier overhauls go to Wave 1.
Same verification process.
Write entries under "Lightweight Graphics".

- [ ] **Step 6: Mod entry format verification**

Spot-check all entries against the required format — every mod must have:

```markdown
### [Mod Name](URL)

- **Version:** x.y.z
- **Description:** 3-5 lines — what the mod does, how it changes the game, why it's included.
- **Dependencies:** [list or "None"]
- **Category:** [category name]
- **Notes:** Load order tip, configuration, known issues.
```

- [ ] **Step 7: Commit — Wave 0 modlist**

```bash
git add baldurs-gate-3/guide/03-wave-0-modlist.md baldurs-gate-3/STATUS.md baldurs-gate-3/mod-ideas.md
git commit -m "feat(bg3): add Wave 0 modlist — bug fixes, UI, QoL, lightweight graphics"
```

---

### Task 3: Write Wave 0 Guide + Installation Guide

**Files:**

- Modify: `guide/02-wave-0-guide.md`
- Modify: `guide/01-installation.md`

- [ ] **Step 1: Write "Getting Started" section**

Content: launching the game, basic controls (mention WASD movement mod if one is in the modlist, otherwise click-to-move), camera controls, interacting with objects and NPCs, opening inventory/journal/map, quicksave/quickload importance (F5/F8).

- [ ] **Step 2: Write "Character Creation" section**

Content: all races/subraces with brief mechanical summaries (ability bonuses, key racial features), all classes with playstyle descriptions (mark beginner-friendly vs. complex), backgrounds and what they affect (inspiration goals, skill proficiencies), ability scores explained (Strength, Dexterity, Constitution, Intelligence, Wisdom, Charisma — what each does, recommended allocation for beginners), skills overview (which matter most early game), Origin vs. Custom character choice.

- [ ] **Step 3: Write "Recommended Beginner Builds" section**

Provide 3 builds. Each includes:

- Class + subclass recommendation with reasoning
- Recommended race and why
- Ability score allocation (point buy or standard array)
- Leveling path (feats/choices at levels 4, 8, 12)
- Gear priorities (what stats/weapons to look for)
- Playstyle overview (how to play in combat)
- Party role

Suggested builds:

1. Battle Master Fighter (martial, simple, effective)
2. Light Cleric (caster with survivability, healing, radiance damage)
3. Swords Bard (hybrid — face, lockpicker, melee, spells)

- [ ] **Step 4: Write "Important Mechanics" section**

Content: action economy (actions, bonus actions, reactions — what each can be used for), short rest vs. long rest (when to use each, what they restore, camp supplies), inspiration (how to earn it, using it for rerolls), dialogue checks (ability checks in conversation, Guidance, inspiration rerolls), skill checks (what each skill does, proficiency bonus), saving throws (what they are, which classes are proficient in which), concentration (what breaks it, why it matters for casters), advantage/disadvantage (when each applies, how to seek advantage).

- [ ] **Step 5: Write "Combat Fundamentals" section**

Content: initiative (how determined — d4 + Dex mod), positioning (high ground advantage, backstab advantage, threatened status), surfaces (fire, ice, acid, electrified — how to create and exploit them), shove/jump/throw (bonus actions for martials, environmental kills), help action (reviving downed allies), disengage/dash/hide (bonus actions for rogues and monks).

- [ ] **Step 6: Write "Early-Game Tips" section**

Content: party composition basics (you want a face, a lockpicker, a healer/support, and damage), key Act 1 NPCs — where to find Shadowheart, Gale, Astarion, Lae'zel, Wyll, Karlach, what to do before leaving the nautiloid (explore thoroughly, grab the Everburn Blade from Commander Zhalk), camp supplies management (how to get food, long rest frequency).

- [ ] **Step 7: Write "Common Pitfalls" section**

Content: friendly fire (AoE spells hit allies too), failing dialogue checks isn't game over (embrace consequences, the game adapts), respeccing is cheap (Withers at camp, 100g — don't be afraid to experiment), don't hoard consumables (use scrolls, potions, arrows — they're plentiful), long resting often is fine (don't feel pressured to minimize rests).

- [ ] **Step 8: Write Installation Guide — "Installing BG3 Mod Manager"**

Content: download link (`https://github.com/LaughingLeader/BG3ModManager`), installation steps (extract zip, run BG3ModManager.exe, point to BG3 game directory), first-launch setup (settings, creating a profile), how to verify it detects the game correctly (check the status bar).

- [ ] **Step 9: Write Installation Guide — "Setting Up Mods"**

Content: downloading mods from Nexus Mods (manual download, .pak files), importing mods into BG3MM (drag-and-drop .pak files or File > Import Mod), activating mods (moving from Inactive to Active list), load order basics (dragging to reorder, File > Save Order, File > Export Order to Game), verifying mods are active (launch game, Mod Manager option in main menu shows active mods).

- [ ] **Step 10: Write Installation Guide — Troubleshooting**

Content: mod not appearing in game (check BG3MM export, verify .pak file not corrupted), game crash on launch (likely load order conflict, disable mods one at a time to isolate), load order conflicts (if two mods modify the same file, the one loaded later wins), verifying game files after mod issues (Steam > Properties > Verify Integrity).

- [ ] **Step 11: Write Installation Guide — "Wave Setup"**

Content: Wave 0 setup (install only Wave 0 mods, create a BG3MM profile called "Mythic Crucible — Wave 0"), Wave 1 setup (install Wave 0 + Wave 1 mods, create a separate profile "Mythic Crucible — Wave 1"), reminder that Wave 1 requires a new save.

- [ ] **Step 12: Commit — Wave 0 guide + installation**

```bash
git add baldurs-gate-3/guide/02-wave-0-guide.md baldurs-gate-3/guide/01-installation.md
git commit -m "feat(bg3): write Wave 0 beginner's guide and installation instructions"
```

---

### Task 4: Research Wave 1 Mods — Graphics, Character Creation, Races

**Files:**

- Modify: `guide/05-wave-1-modlist.md`
- Modify: `STATUS.md`
- Modify: `mod-ideas.md`

**Target:** 19-29 mods across 3 categories.

- [ ] **Step 1: Research Graphics & Visuals mods (target: 8-12)**

Search Nexus Mods for: texture overhauls, environment retextures, lighting mods, Reshade presets, character model improvements, VFX enhancements, hair physics.
Each mod: verify Patch 8 compatibility (updated after Sep 2024), check comments for issues, document in STATUS.md.
Write entries under "Graphics & Visuals".

- [ ] **Step 2: Research Character Creation mods (target: 8-12)**

Search for: faces (face packs), hairstyles, hair colors, tattoos, body tattoos, scars, makeup, piercings, eye colors, horns (tiefling horns mods), character creator unlocker, body models, skin textures.
Same verification process. Write entries under "Character Creation".

- [ ] **Step 3: Research Races mods (target: 3-5)**

Search for: new playable races, race unlocks (aasimar, genasi, firbolg, goblin, hobgoblin, kobold, etc.), race expansions.
Criteria: add meaningful variety without being overpowered. Must be 5e-accurate or close to it.
Same verification process. Write entries under "Races".

- [ ] **Step 4: Commit — Wave 1 mods batch 1**

```bash
git add baldurs-gate-3/guide/05-wave-1-modlist.md baldurs-gate-3/STATUS.md baldurs-gate-3/mod-ideas.md
git commit -m "feat(bg3): add Wave 1 mods — graphics, character creation, races"
```

---

### Task 5: Research Wave 1 Mods — Classes, Spells, Feats

**Files:**

- Modify: `guide/05-wave-1-modlist.md`
- Modify: `STATUS.md`
- Modify: `mod-ideas.md`

**Target:** 10-15 mods across 3 categories.

- [ ] **Step 1: Research Classes & Subclasses mods (target: 5-8)**

Search for: new classes (Artificer, Blood Hunter, Mystic, etc.), subclass expansions (more options per existing class), class reworks (5e-accurate adjustments, not overpowered homebrew).
Verify and write entries under "Classes & Subclasses".

- [ ] **Step 2: Research Spells mods (target: 3-5)**

Search for: additional spells (5e spells missing from BG3), cantrip expansions, spell list expansions, spell tweaks.
Verify and write entries under "Spells".

- [ ] **Step 3: Research Feats & Progression mods (target: 2-3)**

Search for: additional feats, feat expansions, level curve mods (level 13-20 unlock), progression reworks.
Verify and write entries under "Feats & Progression".

- [ ] **Step 4: Commit — Wave 1 mods batch 2**

```bash
git add baldurs-gate-3/guide/05-wave-1-modlist.md baldurs-gate-3/STATUS.md baldurs-gate-3/mod-ideas.md
git commit -m "feat(bg3): add Wave 1 mods — classes, spells, feats"
```

---

### Task 6: Research Wave 1 Mods — Equipment, Companions, Quests

**Files:**

- Modify: `guide/05-wave-1-modlist.md`
- Modify: `STATUS.md`
- Modify: `mod-ideas.md`

**Target:** 8-14 mods across 3 categories.

- [ ] **Step 1: Research Equipment mods (target: 3-5)**

Search for: weapon packs, armor packs, clothing, camp clothes, accessories, transmog (appearance change without stat loss).
Verify and write entries under "Equipment".

- [ ] **Step 2: Research Companions & NPCs mods (target: 3-5)**

Search for: companion appearance edits, new companions, NPC visual overhauls, companion AI improvements, companion dialogue expansions.
Verify and write entries under "Companions & NPCs".

- [ ] **Step 3: Research Quests & Areas mods (target: 2-4)**

Search for: new quests, area expansions, dungeon mods, new locations, Act 1/2/3 expansions.
Verify and write entries under "Quests & Areas".

- [ ] **Step 4: Commit — Wave 1 mods batch 3**

```bash
git add baldurs-gate-3/guide/05-wave-1-modlist.md baldurs-gate-3/STATUS.md baldurs-gate-3/mod-ideas.md
git commit -m "feat(bg3): add Wave 1 mods — equipment, companions, quests"
```

---

### Task 7: Research Wave 1 Mods — Combat, Mechanics, Romance, UI/QoL

**Files:**

- Modify: `guide/05-wave-1-modlist.md`
- Modify: `STATUS.md`
- Modify: `mod-ideas.md`

**Target:** 12-20 mods across 4 categories.

- [ ] **Step 1: Research Combat & Difficulty mods (target: 3-5)**

Search for: combat AI improvements, encounter expansions, difficulty mods (Tactician Plus, Honor Mode enhancers), enemy variety, legendary actions expansions, enemy stat increases.
Must add challenge without being unfair/unbeatable.
Verify and write entries under "Combat & Difficulty".

- [ ] **Step 2: Research Gameplay Mechanics mods (target: 3-5)**

Search for: new mechanics, 5e rule implementations, crafting expansions, camping system changes, resting changes, inventory system overhauls, party limit adjustments.
Verify and write entries under "Gameplay Mechanics".

- [ ] **Step 3: Research Romance & Adult mods (target: 3-5)**

Search for: enhanced romance scenes, body model improvements (not explicit porn), relationship system expansions, romance option unlocks (polyamory, more companions).
If Nexus Mods shows age gate: use Playwright browser to bypass and view mod details.
Verify and write entries under "Romance & Adult".

- [ ] **Step 4: Research additional UI/QoL mods (target: 3-5)**

Search for: Wave 1 UI/QoL that goes beyond Wave 0 basics — advanced inventory management, combat log improvements, build planners in-game, party formation mods, auto-sorters.
Verify and write entries under "UI/QoL".

- [ ] **Step 5: Run total mod count check**

Run a quick count on `guide/05-wave-1-modlist.md` — should be 50+ entries.
If below 50, return to previous tasks and fill gaps.

- [ ] **Step 6: Commit — Wave 1 mods batch 4**

```bash
git add baldurs-gate-3/guide/05-wave-1-modlist.md baldurs-gate-3/STATUS.md baldurs-gate-3/mod-ideas.md
git commit -m "feat(bg3): add Wave 1 mods — combat, mechanics, romance, UI/QoL"
```

---

### Task 8: Determine Load Order & Document Conflicts

**Files:**

- Modify: `guide/06-load-order.md`
- Modify: `conflicts-mods.md`
- Modify: `STATUS.md`

- [ ] **Step 1: Research BG3MM load order conventions**

Using Playwright or Context7, research BG3MM load order best practices:

- Core/community patches load first
- UI mods load after patches
- Graphics mods load after UI
- Content mods (classes, races, spells) load after graphics
- Override mods (if any) load last

- [ ] **Step 2: Determine Wave 0 load order**

Based on the mods curated in Task 2, assign load order:

1. Bug Fixes & Community Patches (always first)
2. UI Enhancements
3. Quality of Life
4. Lightweight Graphics (always last in Wave 0)
Within each category, order by dependency (mods that others depend on go first).

Write the ordered list in `guide/06-load-order.md` under "Wave 0 Load Order". Format:

```markdown
### Wave 0 Load Order

1. **Mod Name** — *(reason for position)*
2. **Mod Name** — *(reason for position)*
...
```

- [ ] **Step 3: Determine Wave 1 load order**

Based on all Wave 1 mods (Tasks 4-7), plus Wave 0 mods (they carry forward), assign load order:

1. Wave 0 mods in their established order
2. New mechanics / rule changes
3. Races / classes / subclasses
4. Spells / feats
5. Equipment
6. Companions / NPCs
7. Quests / areas
8. Graphics (last — they override visuals)
Within each category, order by dependency.

Write the ordered list under "Wave 1 Load Order" with same format.

- [ ] **Step 4: Document conflicts**

Review all mods for overlapping files or known incompatibilities:

- Two mods modifying the same file → conflict, pick one or document load order resolution
- Mods with explicit "incompatible with X" notes on Nexus → document
- Test: cross-reference mod descriptions for mentions of other mods

Write all findings in `conflicts-mods.md` and link from STATUS.md.

- [ ] **Step 5: Commit — Load order & conflicts**

```bash
git add baldurs-gate-3/guide/06-load-order.md baldurs-gate-3/conflicts-mods.md baldurs-gate-3/STATUS.md
git commit -m "feat(bg3): determine load order and document conflicts"
```

---

### Task 9: Write Wave 1 Advanced Guide

**Files:**

- Modify: `guide/04-wave-1-guide.md`

- [ ] **Step 1: Write "Advanced Character Building" section**

Content: multiclass synergies with concrete examples — Sorcadin 6/6 (Paladin auras + Sorcerer metamagic), Gloomstalker/Assassin (first-round burst damage), Tempest Cleric 2 / Storm Sorcerer 10 (maximized lightning damage), Bard 10 / Paladin 2 (Magical Secrets smites). Feat tier list: S-tier (Alert, Great Weapon Master, Sharpshooter, Tavern Brawler), A-tier (War Caster, Resilient: Con, Sentinel, Polearm Master, Dual Wielder), situational vs. trap feats (Actor, Dungeon Delver). Attribute breakpoints: odd vs. even scores, when ASI beats half-feat. Respec timing: levels where build comes online, Withers cost.

- [ ] **Step 2: Write "Deeper Mechanics" section**

Content: initiative (d4 + Dex + Alert + gear — how to hit 10+ and always go first), surface interactions (Create Water + lightning = electrified, Grease + fire = burning, ice melts into water which can be electrified — full combo chain), stealth and surprise (how to initiate surprise rounds consistently, which classes benefit most — Assassin, Gloomstalker), action surge optimization (Fighter 2 dip breakpoints, what classes gain most from it), legendary actions and resistance (boss teleport to ranged attackers, LR burn strategy — Magic Missile spam forces 3 saves per cast, Monk Stunning Strike forces Con saves).

- [ ] **Step 3: Write "Party Optimization" section**

Content: role coverage (Face — Cha + Persuasion/Deception, lockpicker/trap disarmer — Sleight of Hand/Perception, support/healer, control caster vs. blaster, striker vs. tank), skill monkey builds (Bard/Rogue multiclass with expertise covering all key skills), camp caster buff strategy (hirelings at camp: Aid upcast, Longstrider, Protection from Poison, Warding Bond, Death Ward, Heroes' Feast — all applied before leaving camp, don't need to be in active party).

- [ ] **Step 4: Write "Economy" section**

Content: gold farming (loot everything with weight:value ratio >10:1, sell to vendors after raising attitude to 100% via donations, pickpocket gold back after large trades), vendor refresh (long rest or any character level-up resets inventory — keep a respec-ready hireling for on-demand resets), pickpocket strategy (Guidance + Enhance Ability: Dex + Bardic Inspiration, enter turn-based mode, Darkness/Fog Cloud for cover, split gold stacks into smaller piles to reduce DC).

- [ ] **Step 5: Write "Mod Integration" section**

Content: how mod-added classes/subclasses interact with base systems (do they use existing spell lists or custom ones? any compatibility issues with base game gear?), which mod-added spells are competitive (compare damage dice and utility to base game options), how combat/difficulty mods change encounter planning (more enemies means AoE value increases, smarter AI means baiting and positioning matter more, higher stats mean save-or-suck spells lose value vs. guaranteed damage).

- [ ] **Step 6: Write "Late-Game & Post-Campaign" section**

Content: legendary item locations (must-have legendaries by build type — Nyrulna for throw builds, Balduran's Giantslayer for STR martials, Markoheshkir for casters, Helldusk Armor for anyone — and where they're found in Act 3), optimal Act 3 routing (Rivington → Wyrm's Crossing → Lower City quest order for efficient XP/gear before difficult fights like House of Grief, House of Hope, Raphael), epilogue mechanics (everything before the Morphic Pool is your last chance — tie up companion quests, final gear check, camp celebration).

- [ ] **Step 7: Commit — Wave 1 guide**

```bash
git add baldurs-gate-3/guide/04-wave-1-guide.md
git commit -m "feat(bg3): write Wave 1 advanced guide"
```

---

### Task 10: Build PDF Generation Pipeline

**Files:**

- Modify: `scripts/convert.js` (full implementation)
- Create: `build.typ`
- Modify: `build.bat` (already has full implementation from Task 1)
- Modify: `guide/00-cover.md` (finalize)
- Modify: `guide/00-toc.md` (finalize)

- [ ] **Step 1: Look up Typst 0.15 API via Context7 MCP**

Use Context7 to resolve library ID for Typst and query:

- Document setup: `#set page()`, `#set text()`, `#set heading()`
- Image inclusion: `#image("path", width: ...)`
- Document structure and `#include`
- Table of contents: `#outline()`
- Styling: backgrounds, colors, fonts, links

- [ ] **Step 2: Implement scripts/convert.js (full version)**

```javascript
const fs = require('fs');
const path = require('path');

const guideDir = path.join(__dirname, '..', 'guide');
const cacheDir = path.join(guideDir, '.typst-cache');

if (!fs.existsSync(cacheDir)) {
  fs.mkdirSync(cacheDir, { recursive: true });
}

// Exclude TOC from conversion (Typst generates it)
const files = [
  '00-cover.md',
  '01-installation.md',
  '02-wave-0-guide.md',
  '03-wave-0-modlist.md',
  '04-wave-1-guide.md',
  '05-wave-1-modlist.md',
  '06-load-order.md',
];

files.forEach(filename => {
  const mdPath = path.join(guideDir, filename);
  if (!fs.existsSync(mdPath)) {
    console.log(`Skipping ${filename} — not found`);
    return;
  }
  const md = fs.readFileSync(mdPath, 'utf8');
  const typst = convertMarkdownToTypst(md);
  const typFilename = filename.replace('.md', '.typ');
  const typPath = path.join(cacheDir, typFilename);
  fs.writeFileSync(typPath, typst, 'utf8');
  console.log(`Converted ${filename} -> ${typFilename}`);
});

console.log(`Conversion complete. ${files.filter(f => {
  return fs.existsSync(path.join(guideDir, f));
}).length} files processed.`);

function convertMarkdownToTypst(md) {
  let result = md;

  // Escape backslashes in paths first (before other processing)
  result = result.replace(/\\/g, '\\\\');

  // IMPORTANT: handle asterisk-based formatting in the right order.
  // Bold-italic (***text***) before bold (**text**) before italic (*text*)

  // Convert bold-italic: ***text*** -> *_text_* (Typst: bold wrapping italic)
  result = result.replace(/\*\*\*(.+?)\*\*\*/g, '*_$1_*');

  // Convert bold: **text** or __text__ -> *text* (Typst uses * for strong/bold)
  result = result.replace(/\*\*(.+?)\*\*/g, '*$1*');
  result = result.replace(/__(.+?)__/g, '*$1*');

  // Convert italic: *text* or _text_ -> _text_ (Typst uses _ for emphasis/italic)
  // Only match single asterisks that aren't part of ** or *** (already handled above)
  result = result.replace(/(?<!\*)\*(?!\*)(.+?)(?<!\*)\*(?!\*)/g, '_$1_');

  // Convert markdown images: ![alt](path) -> #image("path")
  result = result.replace(/!\[([^\]]*)\]\(([^)]+)\)/g, (match, alt, imgPath) => {
    return `#image("${imgPath}")`;
  });

  // Convert markdown links: [text](url) -> #link("url")[text] for HTTP URLs
  result = result.replace(/\[([^\]]+)\]\(([^)]+)\)/g, (match, text, url) => {
    if (url.startsWith('http')) {
      return `#link("${url}")[${text}]`;
    }
    return `[${text}](${url})`;
  });

  // Convert headings: # H1 -> = H1, ## H2 -> == H2, etc.
  result = result.replace(/^#### (.+)$/gm, '==== $1');
  result = result.replace(/^### (.+)$/gm, '=== $1');
  result = result.replace(/^## (.+)$/gm, '== $1');
  result = result.replace(/^# (.+)$/gm, '= $1');

  // Ensure blank lines before lists (Typst requires them)
  result = result.replace(/([^\n])\n- /g, '$1\n\n- ');

  // Convert horizontal rules: --- -> #line(length: 100%)
  result = result.replace(/^---$/gm, '#line(length: 100%)');

  return result;
}
```

- [ ] **Step 3: Implement build.typ**

```typst
// Mythic Crucible — BG3 Modlist PDF
// Generated by build.bat via scripts/convert.js

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2cm, left: 2cm, right: 2cm),
)

#set page(fill: rgb("#1a1220"))

#set text(
  font: ("Linux Libertine", "Times New Roman", serif),
  size: 11pt,
  fill: rgb("#e8dcc8"),
)

#set heading(
  fill: rgb("#d4a843"),
)

#show link: underline

// ===== COVER PAGE =====
#align(center)[
  #v(4cm)
  #image("assets/logo.jpg", width: 6cm)
  #v(1cm)
  #text(size: 28pt, weight: "bold", fill: rgb("#d4a843"))[Mythic Crucible]
  #v(0.5cm)
  #text(size: 14pt, fill: rgb("#c0b090"))[A Baldur's Gate 3 Modlist & Guide]
  #v(0.3cm)
  #text(size: 10pt, fill: rgb("#8a7a60"))[Patch 8 / Hotfix #36 — April 2025]
  #v(0.5cm)
  #text(size: 10pt, fill: rgb("#8a7a60"))[BG3 Mod Manager (BG3MM)]
  #v(2cm)
  #text(size: 11pt, fill: rgb("#a09078"))[Curated by Emperor Jimmu]
]

#pagebreak()

// ===== TABLE OF CONTENTS =====
#outline(
  title: [Table of Contents],
  depth: 2,
  fill: rgb("#e8dcc8"),
)

#pagebreak()

// ===== CONTENT =====
// Content loaded from pre-converted .typ files in guide/.typst-cache/
// The convert.js script produces these from guide/*.md

#include "guide/.typst-cache/00-cover.typ"
#pagebreak()
#include "guide/.typst-cache/01-installation.typ"
#pagebreak()
#include "guide/.typst-cache/02-wave-0-guide.typ"
#pagebreak()
#include "guide/.typst-cache/03-wave-0-modlist.typ"
#pagebreak()
#include "guide/.typst-cache/04-wave-1-guide.typ"
#pagebreak()
#include "guide/.typst-cache/05-wave-1-modlist.typ"
#pagebreak()
#include "guide/.typst-cache/06-load-order.typ"
```

Note: `00-toc.md` is intentionally excluded from conversion — Typst generates the real TOC via `#outline()`.

- [ ] **Step 4: Update guide/00-cover.md**

Since the Typst cover already renders everything, trim 00-cover.md to just the key info (it still needs to exist for the typ include reference):

```markdown
= Mythic Crucible

A Baldur's Gate 3 Modlist & Guide

Patch 8 / Hotfix #36 — April 2025

BG3 Mod Manager (BG3MM)

Curated by Emperor Jimmu
```

Noting: the converted `00-cover.typ` will render this as secondary cover content after the main cover page — this is intentional as an inside-cover blurb.

- [ ] **Step 5: Update guide/00-toc.md**

```markdown
= Table of Contents

The table of contents is generated automatically by Typst during PDF build via the `#outline()` function in `build.typ`.
```

- [ ] **Step 6: Verify PDF pipeline**

Run: `build.bat`
Expected output:

```
=== Mythic Crucible PDF Builder ===

[1/4] Checking prerequisites...
Typst and Node.js found.

[2/4] Cleaning previous build cache...
Cleaned build cache.

[3/4] Converting Markdown to Typst...
Converted 00-cover.md -> 00-cover.typ
Converted 01-installation.md -> 01-installation.typ
Converted 02-wave-0-guide.md -> 02-wave-0-guide.typ
Converted 03-wave-0-modlist.md -> 03-wave-0-modlist.typ
Converted 04-wave-1-guide.md -> 04-wave-1-guide.typ
Converted 05-wave-1-modlist.md -> 05-wave-1-modlist.typ
Converted 06-load-order.md -> 06-load-order.typ
Conversion complete. 7 files processed.

[4/4] Compiling PDF with Typst...

=== Done! PDF saved to output/mythic-crucible.pdf ===
```

If Typst reports errors: fix the offending `.md` file (likely unescaped special characters or malformed markdown) and re-run.

- [ ] **Step 7: Commit — PDF pipeline**

```bash
git add baldurs-gate-3/scripts/convert.js baldurs-gate-3/scripts/clean.js baldurs-gate-3/build.typ baldurs-gate-3/build.bat baldurs-gate-3/guide/00-cover.md baldurs-gate-3/guide/00-toc.md
git commit -m "feat(bg3): implement PDF build pipeline with Typst"
```

---

### Task 11: Final Polish & Verification

**Files:**

- Modify: `README.md` (finalize)
- Modify: `STATUS.md` (final review)
- All project files (verification only)

- [ ] **Step 1: Finalize README.md**

Ensure README contains:

- Modlist name "Mythic Crucible" and description
- Game version: Patch 8 / Hotfix #36
- Wave overview table with mod counts
- Quick-start: 3-step guide linking to installation and wave guides
- Reference to PDF: `output/mythic-crucible.pdf`
- Credit: "Curated by Emperor Jimmu"
- Link to this repo

- [ ] **Step 2: STATUS.md cleanup**

Review all entries:

- Every accepted mod has: name, wave, category, decision date, notes
- Every rejected mod has: name, reason, date
- No [TODO]/[TBD] placeholders
- Design decisions section is up to date

- [ ] **Step 3: Verify file manifest**

Run: `Get-ChildItem -Recurse -Name baldurs-gate-3/`
Confirm all expected files exist:

```
AGENTS.md, README.md, STATUS.md, mod-ideas.md, conflicts-mods.md
build.bat, build.typ, .gitignore
guide/00-cover.md, guide/00-toc.md, guide/01-installation.md
guide/02-wave-0-guide.md, guide/03-wave-0-modlist.md
guide/04-wave-1-guide.md, guide/05-wave-1-modlist.md, guide/06-load-order.md
scripts/convert.js, scripts/clean.js
assets/logo.jpg
```

- [ ] **Step 4: Verify mod counts**

Run a programmatic count (using grep or Node.js):

- `guide/03-wave-0-modlist.md`: count lines starting with `### [` (each is a mod entry) — confirm 10-20
- `guide/05-wave-1-modlist.md`: same count — confirm 50+

- [ ] **Step 5: Verify all mod URLs are reachable**

Run a Node.js script that extracts all Nexus Mods URLs from both modlist files and does a HEAD request to each. Any that return 404 or timeout: flag for review.

- [ ] **Step 6: Verify no fabricated entries**

Cross-check: every mod entry in the guide files should have a corresponding row in STATUS.md.
Run a script to extract mod names from guide files and compare against STATUS.md table.

- [ ] **Step 7: Full PDF build and visual spot-check**

Run: `build.bat`
Open `output/mythic-crucible.pdf`:

- Cover renders with logo, title, colors
- TOC has correct entries
- All pages have consistent styling (dark background, gold headings, cream text)
- No broken image references, no raw markdown leaking through
- Mod entries are readable with proper formatting

- [ ] **Step 8: Commit — Final polish**

```bash
git add baldurs-gate-3/
git commit -m "feat(bg3): final polish and verification — Mythic Crucible complete"
```
