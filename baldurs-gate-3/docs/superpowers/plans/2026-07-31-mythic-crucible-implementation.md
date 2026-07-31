# Mythic Crucible — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build a complete 2-wave modlist + game guide for Baldur's Gate 3 "Mythic Crucible" with Typst-generated PDF output.

**Architecture:** Content-first pipeline. Markdown source files in `guide/` authored with a custom template format. A Node.js pre-processor converts `.md` to Typst-compatible `.typ` content blocks. `build.typ` assembles them with BG3-themed styling and `build.bat` orchestrates the full compile. Mod research done via Playwright browser against Nexus Mods.

**Tech Stack:** Markdown (guide content), Typst 0.15.x (PDF engine), Node.js (markdown→typst converter), PowerShell/Batch (build launcher)

---

## File Map

| File | Responsibility |
|------|---------------|
| `AGENTS.md` | Project-specific agent instructions for this modlist |
| `README.md` | Public-facing modlist overview and quick-start |
| `STATUS.md` | Living decision log — accepted/rejected mods, conflicts, notes |
| `mod-ideas.md` | Future mod ideas, not included in PDF |
| `conflicts-mods.md` | Known incompatibilities between mods |
| `guide/00-cover.md` | Cover page content (modlist name, tagline, logo reference) |
| `guide/00-toc.md` | Table of contents (placeholder — Typst generates real TOC) |
| `guide/01-installation.md` | BG3MM installation guide + mod setup instructions |
| `guide/02-wave-0-guide.md` | Beginner's guide: character creation, builds, mechanics |
| `guide/03-wave-0-modlist.md` | Wave 0 mod entries (~10-20 mods) |
| `guide/04-wave-1-guide.md` | Advanced guide: multiclassing, mechanics, mod integration |
| `guide/05-wave-1-modlist.md` | Wave 1 mod entries (50+ mods) |
| `scripts/convert.js` | Node.js script: markdown files → Typst `.typ` content blocks |
| `build.typ` | Typst document: imports converted `.typ` files, applies styling, renders PDF |
| `build.bat` | One-click launcher: runs convert.js → `typst compile` |
| `output/mythic-crucible.pdf` | Generated PDF (gitignored) |

---

### Task 1: Project Scaffolding

**Files:**
- Create: `AGENTS.md`
- Create: `README.md` (stub)
- Create: `STATUS.md` (stub)
- Create: `mod-ideas.md` (stub)
- Create: `conflicts-mods.md` (stub)
- Create: `guide/00-cover.md` (stub)
- Create: `guide/00-toc.md` (stub)
- Create: `guide/01-installation.md` (stub)
- Create: `guide/02-wave-0-guide.md` (stub)
- Create: `guide/03-wave-0-modlist.md` (stub)
- Create: `guide/04-wave-1-guide.md` (stub)
- Create: `guide/05-wave-1-modlist.md` (stub)
- Create: `build.bat` (stub)
- Create: `scripts/convert.js` (stub)
- Create: `.gitignore`

- [ ] **Step 1: Create AGENTS.md**

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

- [ ] **Step 2: Create README.md stub**

```markdown
# Mythic Crucible — Baldur's Gate 3 Modlist

A curated 2-wave modlist and game guide for Baldur's Gate 3 (Patch 8 / Hotfix #36).

| Wave | For | Mods | Focus |
|------|-----|------|-------|
| 0 | Beginners | ~10-20 | UI/QoL + bug fixes + lightweight graphics |
| 1 | Experienced | 50+ | New content, mechanics, graphics overhaul |

## Quick Start

1. Read `guide/01-installation.md` for BG3MM setup
2. Follow Wave 0 (`guide/02-wave-0-guide.md`) for your first playthrough
3. After completing Wave 0, start fresh with Wave 1 (`guide/04-wave-1-guide.md`)

Full documentation in `guide/`. PDF: `output/mythic-crucible.pdf`.
```

- [ ] **Step 3: Create STATUS.md stub**

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

*(Documented in conflicts-mods.md)*
```

- [ ] **Step 4: Create mod-ideas.md stub**

```markdown
# mod-ideas.md — Future Mod Ideas

Mods that sound interesting but couldn't be verified, aren't compatible yet, or were out of scope. Not included in the PDF.

| Mod | Category | Status | Notes |
|-----|----------|--------|-------|
```

- [ ] **Step 5: Create conflicts-mods.md stub**

```markdown
# conflicts-mods.md — Known Mod Conflicts

| Mod A | Mod B | Conflict Type | Resolution |
|-------|-------|---------------|------------|
```

- [ ] **Step 6: Create guide stub files**

Create each of these with a short heading placeholder:

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

*(Generated by Typst during PDF build)*
```

`guide/01-installation.md`:
```markdown
# Installation Guide

## Installing BG3 Mod Manager

[TODO]

## Setting Up Mods

[TODO]
```

`guide/02-wave-0-guide.md`:
```markdown
# Wave 0 — First Steps into Faerun

*You awaken on the nautiloid with nothing but fragmented memories and a tadpole behind your eye...*

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

*You've walked this path before. You know the faces, the betrayals, the choices that await...*

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

## Classes & Subclasses

*(Mods to be added)*

## Races

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

- [ ] **Step 7: Create build.bat stub**

```batch
@echo off
echo === Mythic Crucible PDF Builder ===
echo Step 1: Converting Markdown to Typst...
node scripts/convert.js
echo Step 2: Compiling PDF with Typst...
typst compile build.typ output/mythic-crucible.pdf
echo Done! PDF saved to output/mythic-crucible.pdf
```

- [ ] **Step 8: Create scripts/convert.js stub**

```javascript
// Converts guide/*.md files to Typst-compatible .typ content blocks
const fs = require('fs');
const path = require('path');

const guideDir = path.join(__dirname, '..', 'guide');
const outputDir = path.join(__dirname, '..', 'guide', '.typst-cache');

if (!fs.existsSync(outputDir)) {
  fs.mkdirSync(outputDir, { recursive: true });
}

console.log('Convert.js placeholder — will be implemented in Task 12');
```

- [ ] **Step 9: Create .gitignore**

```
output/*.pdf
guide/.typst-cache/
node_modules/
```

- [ ] **Step 10: Verify scaffolding**

Run: `dir /b /s baldurs-gate-3\guide` — confirm all 7 `.md` files exist
Run: `dir baldurs-gate-3\*.md` — confirm AGENTS.md, README.md, STATUS.md, mod-ideas.md, conflicts-mods.md exist
Run: `dir baldurs-gate-3\build.bat baldurs-gate-3\scripts\convert.js` — confirm both exist

- [ ] **Step 11: Commit**

```bash
git add baldurs-gate-3/
git commit -m "feat(bg3): scaffold Mythic Crucible project structure"
```

---

### Task 2: Research Wave 0 Mods — Bug Fixes & Community Patches

**Files:**
- Modify: `guide/03-wave-0-modlist.md`
- Modify: `STATUS.md`

- [ ] **Step 1: Open Nexus Mods BG3 category in Playwright**

Navigate to: `https://www.nexusmods.com/baldursgate3/mods/`
Sort by endorsements or last updated. Filter for Patch 8 compatible mods.

- [ ] **Step 2: Search for community patch / bug fix mods**

Search terms: "community patch", "bug fix", "patch fix", "unofficial patch"
Document each candidate mod's: name, URL, last updated date, version, description, dependencies.

- [ ] **Step 3: Verify each mod's Patch 8 compatibility**

Check the mod description page and comments for Patch 8 / Hotfix #36 compatibility.
Any mod last updated before September 2024: flag as uncertain, move to mod-ideas.md.
Any mod with Patch 8 complaints in comments: reject, log in STATUS.md.

- [ ] **Step 4: Curate selection**

Target: 3-5 essential bug fix mods.
Criteria: well-maintained, high endorsements, explicitly Patch 8 compatible.
Document all accepted and rejected mods in STATUS.md.

- [ ] **Step 5: Write mod entries into guide/03-wave-0-modlist.md**

For each accepted mod, write entry in the format:

```markdown
### [Mod Name](URL)

- **Version:** x.y.z
- **Description:** 3-5 lines — what the mod does, how it changes the game, why it's included.
- **Dependencies:** [list or "None"]
- **Category:** Bug Fixes & Community Patches
- **Notes:** Load order tip, configuration, known issues.
```

- [ ] **Step 6: Commit**

```bash
git add baldurs-gate-3/guide/03-wave-0-modlist.md baldurs-gate-3/STATUS.md
git commit -m "feat(bg3): add Wave 0 bug fix and community patch mods"
```

---

### Task 3: Research Wave 0 Mods — UI Enhancements

**Files:**
- Modify: `guide/03-wave-0-modlist.md`
- Modify: `STATUS.md`

- [ ] **Step 1: Search Nexus Mods for UI mods**

Search terms: "UI", "interface", "inventory", "tooltip", "camera", "controls", "WASD", "Better UI"
Browse the UI category: `https://www.nexusmods.com/baldursgate3/mods/categories/43/`

- [ ] **Step 2: Verify and curate**

Target: 5-8 UI enhancement mods.
Focus: inventory management, better tooltips, camera improvements, native camera tweaks, WASD movement, improved hotbar.
Verify Patch 8 compatibility. Log decisions in STATUS.md.

- [ ] **Step 3: Write mod entries into guide/03-wave-0-modlist.md**

Use the same entry format as Task 2, Step 5. Category: UI Enhancements.

- [ ] **Step 4: Commit**

```bash
git add baldurs-gate-3/guide/03-wave-0-modlist.md baldurs-gate-3/STATUS.md
git commit -m "feat(bg3): add Wave 0 UI enhancement mods"
```

---

### Task 4: Research Wave 0 Mods — Quality of Life

**Files:**
- Modify: `guide/03-wave-0-modlist.md`
- Modify: `STATUS.md`

- [ ] **Step 1: Search Nexus Mods for QoL mods**

Search terms: "quality of life", "auto loot", "faster", "sort", "bags", "weight", "highlight", "search", "quick"
Browse popular mods with high endorsements in the gameplay/misc categories.

- [ ] **Step 2: Verify and curate**

Target: 3-5 QoL mods.
Focus: auto-loot/area loot, inventory sorting/bags, faster animations (looting, dialogue skip), highlight/visibility improvements.
Verify Patch 8 compatibility. Log decisions in STATUS.md.

- [ ] **Step 3: Write mod entries into guide/03-wave-0-modlist.md**

Category: Quality of Life.

- [ ] **Step 4: Commit**

```bash
git add baldurs-gate-3/guide/03-wave-0-modlist.md baldurs-gate-3/STATUS.md
git commit -m "feat(bg3): add Wave 0 quality of life mods"
```

---

### Task 5: Research Wave 0 Mods — Lightweight Graphics

**Files:**
- Modify: `guide/03-wave-0-modlist.md`
- Modify: `STATUS.md`

- [ ] **Step 1: Search Nexus Mods for lightweight graphics mods**

Search terms: "texture", "lighting", "reshade", "visual", "better faces", "hair"
Browse the visual/graphics categories. Focus on mods that improve visual quality without changing gameplay — texture upscales, lighting tweaks, simple shader improvements.

- [ ] **Step 2: Verify and curate**

Target: 3-5 lightweight graphics mods.
Focus: texture improvements (faces, hair, environments), lighting/shader tweaks, no heavy overhauls (those go in Wave 1).
Verify Patch 8 compatibility. Log decisions in STATUS.md.

- [ ] **Step 3: Write mod entries into guide/03-wave-0-modlist.md**

Category: Lightweight Graphics.

- [ ] **Step 4: Commit**

```bash
git add baldurs-gate-3/guide/03-wave-0-modlist.md baldurs-gate-3/STATUS.md
git commit -m "feat(bg3): add Wave 0 lightweight graphics mods"
```

---

### Task 6: Write Wave 0 Beginner's Guide

**Files:**
- Modify: `guide/02-wave-0-guide.md`

This task fills in all `[TODO]` sections in the Wave 0 guide with real content. The guide targets complete beginners to BG3. Write in a friendly, instructive tone. Use game-accurate terminology and mechanics.

- [ ] **Step 1: Write "Getting Started" section**

Cover: launching the game for the first time, basic controls (WASD if using mod, click-to-move otherwise), camera controls, interacting with objects/NPCs, opening inventory/journal/map, quicksave/quickload importance.

- [ ] **Step 2: Write "Character Creation" section**

Cover: all races and subraces (with brief mechanical summaries — ability bonuses, key racial features), all classes (with playstyle descriptions — which are beginner-friendly, which are complex), backgrounds (what they affect — inspiration goals, skill proficiencies), ability scores (what each does, recommended allocation for beginners), skills (which matter most early game), and Origin vs. Custom character choice.

- [ ] **Step 3: Write "Recommended Beginner Builds" section**

Provide 2-3 builds. Each build includes:
- Class + subclass recommendation
- Recommended race
- Ability score allocation
- Leveling path (which feats/choices at key levels: 4, 8, 12)
- Gear priorities (what stats/weapons to look for)
- Playstyle overview (how to play the build in combat)
- Party role (what they contribute to the team)

Suggested builds: one martial (e.g., Battle Master Fighter), one caster (e.g., Evocation Wizard or Light Cleric), one hybrid (e.g., Swords Bard or Paladin).

- [ ] **Step 4: Write "Important Mechanics" section**

Cover: action economy (actions, bonus actions, reactions — what each can be used for), short rest vs. long rest (when to use each, what they restore, camp supplies), inspiration (how to earn it, how to use it for rerolls), dialogue checks (ability checks in conversation, guidance, inspiration rerolls), skill checks (what each skill does, proficiency bonus), saving throws (what they are, which classes are proficient in which), concentration (what breaks it, why it matters for casters), advantage/disadvantage (when each applies, how to get advantage).

- [ ] **Step 5: Write "Combat Fundamentals" section**

Cover: initiative (how it's determined, d4 bonus from Dexterity), positioning (high ground advantage, backstab advantage, threatened status), surfaces (fire, ice, acid, electrified — how to create and exploit them), shove/jump/throw (bonus actions for martials, environmental kills), help action (reviving downed allies), disengage/dash/hide (bonus actions for rogues).

- [ ] **Step 6: Write "Early-Game Tips" section**

Cover: party composition basics (you want a face, a lockpicker, a healer/support, and damage), key Act 1 NPCs to recruit (Shadowheart, Gale, Astarion, Lae'zel, Wyll, Karlach — where to find each), what to do before leaving the nautiloid (explore thoroughly, grab the Everburn Blade), camp supplies management (how to get food, long rest frequency).

- [ ] **Step 7: Write "Common Pitfalls" section**

Cover: friendly fire (AoE spells hit allies too — careful with Fireball placement), failing dialogue checks isn't game over (embrace consequences, the game adapts), respeccing is cheap (Withers at camp, 100g — don't be afraid to experiment), don't hoard consumables (use scrolls, potions, arrows — they're plentiful), long resting often is fine (don't feel pressured to minimize rests).

- [ ] **Step 8: Commit**

```bash
git add baldurs-gate-3/guide/02-wave-0-guide.md
git commit -m "feat(bg3): write Wave 0 beginner's guide"
```

---

### Task 7: Write Installation Guide

**Files:**
- Modify: `guide/01-installation.md`

- [ ] **Step 1: Write "Installing BG3 Mod Manager" section**

Cover:
- Where to download BG3MM (GitHub: `https://github.com/LaughingLeader/BG3ModManager`)
- Installation steps (extract, run, point to BG3 game directory)
- First-launch setup (settings, profiles)
- How to verify it detects the game correctly

- [ ] **Step 2: Write "Setting Up Mods" section**

Cover:
- How to download mods from Nexus Mods (manual download)
- How to import mods into BG3MM (drag-and-drop or File > Import)
- How to activate mods (moving from Inactive to Active list)
- Load order basics (how to reorder, save order, export to game)
- How to verify mods are active (launch game, check Mod Manager in main menu)
- Troubleshooting: common issues and fixes (mod not appearing, game crash on launch, load order conflicts)

- [ ] **Step 3: Write "Wave Setup" section**

Cover:
- Wave 0 setup: install only Wave 0 mods
- Wave 1 setup: install Wave 0 + Wave 1 mods (all Wave 0 mods carry forward)
- Creating separate BG3MM profiles for each wave
- Reminder: Wave 1 requires a new save

- [ ] **Step 4: Commit**

```bash
git add baldurs-gate-3/guide/01-installation.md
git commit -m "feat(bg3): write installation guide with BG3MM instructions"
```

---

### Task 8: Research Wave 1 Mods — Graphics, Character Creation, Races

**Files:**
- Modify: `guide/05-wave-1-modlist.md`
- Modify: `STATUS.md`

Categories covered in this task:
- Graphics & Visuals (target: 8-12 mods)
- Character Creation (target: 8-12 mods)
- Races (target: 3-5 mods)

- [ ] **Step 1: Research Graphics & Visuals mods**

Search Nexus Mods for: texture overhauls, environment retextures, lighting mods, shader presets (Reshade), character model improvements, VFX enhancements.
Target: 8-12 graphics mods. Heavier overhauls than Wave 0 — full texture packs, lighting overhauls, complete Reshade presets.

- [ ] **Step 2: Research Character Creation mods**

Search for: faces, hairstyles, hair colors, tattoos, body tattoos, scars, makeup, piercings, eye colors, horns, tiefling customization, character creator unlocker.
Target: 8-12 character creation mods.

- [ ] **Step 3: Research Races mods**

Search for: new playable races, race unlocks (goblin, hobgoblin, aasimar, genasi, firbolg, etc.), race expansions.
Target: 3-5 race mods that add meaningful variety without being overpowered.

- [ ] **Step 4: Verify all mods**

Each mod must be Patch 8 compatible (updated after September 2024, no Patch 8 complaints in comments).
Log all decisions in STATUS.md.

- [ ] **Step 5: Write entries into guide/05-wave-1-modlist.md**

Use the standard mod entry format. Fill each category section.

- [ ] **Step 6: Commit**

```bash
git add baldurs-gate-3/guide/05-wave-1-modlist.md baldurs-gate-3/STATUS.md
git commit -m "feat(bg3): add Wave 1 graphics, character creation, and race mods"
```

---

### Task 9: Research Wave 1 Mods — Classes, Subclasses, Spells, Feats

**Files:**
- Modify: `guide/05-wave-1-modlist.md`
- Modify: `STATUS.md`

Categories: Classes & Subclasses, Spells, Feats & Progression.
Target: 10-15 mods across these categories.

- [ ] **Step 1: Research Classes & Subclasses mods**

Search for: new classes (Artificer, Blood Hunter, Mystic, etc.), subclass expansions (more options per class), class reworks.
Focus on mods that add 5e-accurate content, not overpowered homebrew.
Target: 5-8 class/subclass mods.

- [ ] **Step 2: Research Spells mods**

Search for: additional spells, 5e spells, cantrip expansions, spell list expansions.
Target: 3-5 spell mods.

- [ ] **Step 3: Research Feats & Progression mods**

Search for: additional feats, feat expansions, level curve mods (level 13-20), progression reworks.
Target: 2-3 feat/progression mods.

- [ ] **Step 4: Verify and write entries**

Same verification process. Write into guide/05-wave-1-modlist.md.

- [ ] **Step 5: Commit**

```bash
git add baldurs-gate-3/guide/05-wave-1-modlist.md baldurs-gate-3/STATUS.md
git commit -m "feat(bg3): add Wave 1 classes, spells, and feats mods"
```

---

### Task 10: Research Wave 1 Mods — Equipment, Companions, Quests, Combat, Mechanics, Romance, UI/QoL

**Files:**
- Modify: `guide/05-wave-1-modlist.md`
- Modify: `STATUS.md`

This is the largest research task — covering the remaining 7 categories.
Target: 15-25 mods total.

- [ ] **Step 1: Research Equipment mods**

Search for: weapon packs, armor packs, clothing, camp clothes, accessories, transmog.
Target: 3-5 equipment mods.

- [ ] **Step 2: Research Companions & NPCs mods**

Search for: companion appearance edits, new companions, NPC visual overhauls, companion AI.
Target: 3-5 companion/NPC mods.

- [ ] **Step 3: Research Quests & Areas mods**

Search for: new quests, area expansions, dungeon mods, new locations.
Target: 2-4 quest/area mods.

- [ ] **Step 4: Research Combat & Difficulty mods**

Search for: combat AI improvements, encounter expansions, difficulty mods, enemy variety, legendary actions.
Target: 3-5 combat mods.

- [ ] **Step 5: Research Gameplay Mechanics mods**

Search for: new mechanics, rule changes, 5e rule implementations, crafting expansions, camping changes.
Target: 3-5 mechanic mods.

- [ ] **Step 6: Research Romance & Adult mods**

Search for: enhanced romance scenes, body model improvements (not explicit porn), relationship system expansions.
Use Playwright browser since adult mods may have age gates.
Target: 3-5 romance/adult mods.

- [ ] **Step 7: Research additional UI/QoL mods**

Search for: Wave 1 UI/QoL mods that go beyond the basics — advanced inventory management, combat log improvements, build planners in-game.
Target: 3-5 additional UI/QoL mods.

- [ ] **Step 8: Verify all mods and write entries**

Standard verification. Write all entries into guide/05-wave-1-modlist.md.
Update STATUS.md with all decisions.

- [ ] **Step 9: Commit**

```bash
git add baldurs-gate-3/guide/05-wave-1-modlist.md baldurs-gate-3/STATUS.md
git commit -m "feat(bg3): add Wave 1 equipment, companions, quests, combat, mechanics, romance, and UI/QoL mods"
```

---

### Task 11: Write Wave 1 Advanced Guide

**Files:**
- Modify: `guide/04-wave-1-guide.md`

Fill all `[TODO]` sections. Assumes reader completed Wave 0 and understands basics.

- [ ] **Step 1: Write "Advanced Character Building" section**

Cover: multiclass synergies (e.g., Sorcadin 6/6, Gloomstalker/Assassin, Tempest Cleric/Sorcerer, Bard/Paladin — explain level splits and why they work), feat tier list (S-tier: Alert, Great Weapon Master, Sharpshooter, Tavern Brawler vs. situational vs. trap feats), attribute breakpoints (odd vs. even scores, when to take ASI vs. half-feat), respec timing (best levels to respec, Withers cost).

- [ ] **Step 2: Write "Deeper Mechanics" section**

Cover: initiative formula (d4 + Dex mod + Alert feat + gear bonuses — how to guarantee going first), surface interactions (create water + lightning = electrified, grease + fire = burning, ice + fire = water, etc. — combo examples), stealth and surprise rounds (how to initiate surprise, which classes benefit most), action surge optimization (Fighter multiclass breakpoints), legendary actions and legendary resistance (boss mechanics, how to burn through LR efficiently — Magic Missile spam, etc.).

- [ ] **Step 3: Write "Party Optimization" section**

Cover: role coverage (Face with high Cha + Persuasion/Deception, lockpicker/trap disarmer with Sleight of Hand/Perception, support/healer, control caster, striker), skill monkey builds (Bard/Rogue multiclass with expertise in all key skills), support vs. control vs. striker vs. tank (what each role does, which classes fit each), camp caster buff strategy (hirelings at camp casting Aid, Longstrider, Protection from Poison, Warding Bond, Death Ward, Heroes' Feast on party before leaving camp).

- [ ] **Step 4: Write "Economy" section**

Cover: gold farming methods (loot everything, sell to vendors with high attitude, pickpocket gold back after trading), vendor refresh mechanics (long rest or level-up resets inventory), pickpocket strategies (guidance, enhance ability, bardic inspiration, turn-based mode, darkness/fog cloud for cover, split gold stacks).

- [ ] **Step 5: Write "Mod Integration" section**

Cover: how new classes/subclasses from mods interact with base systems (do they use existing spell lists? any compatibility issues?), which mod-added spells are worth picking (damage comparison and utility), how modded difficulty/combat mods change encounter planning (more enemies, smarter AI, higher stats — what adjustments to make).

- [ ] **Step 6: Write "Late-Game & Post-Campaign" section**

Cover: legendary item locations (must-have legendaries and where to find them in Act 3), optimal Act 3 routing (which quests to prioritize for gear/XP before tough fights), epilogue mechanics (what to do before the final point of no return, how endings work).

- [ ] **Step 7: Commit**

```bash
git add baldurs-gate-3/guide/04-wave-1-guide.md
git commit -m "feat(bg3): write Wave 1 advanced guide"
```

---

### Task 12: Build PDF Generation Pipeline

**Files:**
- Modify: `scripts/convert.js` (full implementation)
- Modify: `build.typ` (full implementation)
- Modify: `build.bat` (finalize)
- Modify: `guide/00-cover.md` (finalize)
- Modify: `guide/00-toc.md` (finalize)

- [ ] **Step 1: Look up Typst 0.15 API via Context7 MCP**

Use the Context7 MCP tool to resolve library ID for Typst 0.15 and query the API for:
- Document setup: page size, margins, fonts, colors
- How to include images (logo.jpg)
- How to structure a multi-section document with headings
- Table of contents generation (`outline` / `table-of-contents`)
- Custom styling: background colors, text colors, font families
- How to read/include content from external `.typ` files

- [ ] **Step 2: Implement scripts/convert.js**

The converter reads each Markdown file from `guide/` and produces a corresponding `.typ` content block in `guide/.typst-cache/`. Conversion rules:

```javascript
const fs = require('fs');
const path = require('path');

const guideDir = path.join(__dirname, '..', 'guide');
const cacheDir = path.join(guideDir, '.typst-cache');

if (!fs.existsSync(cacheDir)) {
  fs.mkdirSync(cacheDir, { recursive: true });
}

const files = [
  '00-cover.md',
  '00-toc.md',
  '01-installation.md',
  '02-wave-0-guide.md',
  '03-wave-0-modlist.md',
  '04-wave-1-guide.md',
  '05-wave-1-modlist.md',
];

files.forEach(filename => {
  const mdPath = path.join(guideDir, filename);
  if (!fs.existsSync(mdPath)) {
    console.log(`Skipping ${filename} — not found`);
    return;
  }
  const md = fs.readFileSync(mdPath, 'utf8');
  const typst = convertMarkdownToTypst(md, filename);
  const typPath = path.join(cacheDir, filename.replace('.md', '.typ'));
  fs.writeFileSync(typPath, typst, 'utf8');
  console.log(`Converted ${filename} -> ${path.basename(typPath)}`);
});

function convertMarkdownToTypst(md, filename) {
  let result = md;

  // Convert markdown images: ![alt](path) -> #image("path")
  result = result.replace(/!\[([^\]]*)\]\(([^)]+)\)/g, (match, alt, imgPath) => {
    return `#image("${imgPath}")`;
  });

  // Convert markdown links: [text](url) -> #link("url")[text]
  result = result.replace(/\[([^\]]+)\]\(([^)]+)\)/g, (match, text, url) => {
    if (url.startsWith('http')) {
      return `#link("${url}")[${text}]`;
    }
    return `[${text}](${url})`; // leave non-http links alone
  });

  // Convert bold: **text** or __text__ -> *text*
  result = result.replace(/\*\*([^*]+)\*\*/g, '*$1*');
  result = result.replace(/__([^_]+)__/g, '*$1*');

  // Convert italic: *text* or _text_ (but not ** already handled above)
  // Skip — Typst uses * for bold and _ for italic

  // Convert headings: # Heading -> = Heading, ## Heading -> == Heading, etc.
  result = result.replace(/^#### (.+)$/gm, '==== $1');
  result = result.replace(/^### (.+)$/gm, '=== $1');
  result = result.replace(/^## (.+)$/gm, '== $1');
  result = result.replace(/^# (.+)$/gm, '= $1');

  // Convert unordered lists: - item -> - item
  // Typst uses the same syntax, but needs blank line before lists
  result = result.replace(/([^\n])\n- /g, '$1\n\n- ');

  // Convert horizontal rules: --- -> #line(length: 100%)
  result = result.replace(/^---$/gm, '#line(length: 100%)');

  // Convert bold-italic: ***text*** -> *_text_*
  result = result.replace(/\*\*\*([^*]+)\*\*\*/g, '*_$1_*');

  // Escape Typst special characters in non-code text
  // # $ are significant in Typst — skip for now, handle if issues arise

  // Wrap content in a section for include
  return result;
}

console.log('Conversion complete.');
```

- [ ] **Step 3: Implement build.typ**

```typst
// Mythic Crucible — BG3 Modlist PDF
// Generated by build.bat via scripts/convert.js

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2cm, left: 2cm, right: 2cm),
)

#set text(
  font: ("Linux Libertine", "Times New Roman", serif),
  size: 11pt,
  fill: rgb("#e8dcc8"),
)

#set page(fill: rgb("#1a1220"))

#set heading(
  fill: rgb("#d4a843"),
)

#show link: underline

// Cover page
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

// Table of Contents
#outline(
  title: [Table of Contents],
  depth: 2,
  fill: rgb("#e8dcc8"),
)

#pagebreak()

// Include all guide content
#include "guide/.typst-cache/00-cover-body.typ"
#include "guide/.typst-cache/01-installation.typ"
#pagebreak()
#include "guide/.typst-cache/02-wave-0-guide.typ"
#pagebreak()
#include "guide/.typst-cache/03-wave-0-modlist.typ"
#pagebreak()
#include "guide/.typst-cache/04-wave-1-guide.typ"
#pagebreak()
#include "guide/.typst-cache/05-wave-1-modlist.typ"
```

- [ ] **Step 4: Run build.bat and verify PDF generation**

Run: `build.bat`
Expected: PDF created at `output/mythic-crucible.pdf`
Check: PDF opens, all pages present, styling applies, TOC generated.
Fix any conversion or compilation errors.

- [ ] **Step 5: Commit**

```bash
git add baldurs-gate-3/scripts/convert.js baldurs-gate-3/build.typ baldurs-gate-3/build.bat baldurs-gate-3/guide/00-cover.md baldurs-gate-3/guide/00-toc.md
git commit -m "feat(bg3): implement PDF build pipeline with Typst"
```

---

### Task 13: Final Polish — Table of Contents, Cover, STATUS.md Cleanup

**Files:**
- Modify: `guide/00-cover.md` (finalize cover content)
- Modify: `guide/00-toc.md` (add outline note)
- Modify: `README.md` (finalize)
- Modify: `STATUS.md` (final review and cleanup)

- [ ] **Step 1: Finalize cover content**

Update `guide/00-cover.md` with final cover text matching the Typst cover page styling.

- [ ] **Step 2: Update TOC note**

Update `guide/00-toc.md` to note that Typst generates the real TOC:

```markdown
# Table of Contents

The table of contents is generated automatically by Typst during PDF build. See `build.typ` for the `#outline()` configuration.
```

- [ ] **Step 3: Finalize README.md**

Ensure README has:
- Modlist name and description
- Wave overview table
- Quick-start instructions
- Link to PDF
- Credit/author line

- [ ] **Step 4: Review and clean STATUS.md**

Verify all accepted mods are logged with dates and notes.
Verify all rejected mods are logged with reasons.
Ensure no TBD/TODO placeholders remain.

- [ ] **Step 5: Full build verification**

Run: `build.bat`
Verify: PDF renders without errors, all pages present, styling consistent, TOC correct, cover shows logo and title.
Open the PDF and do a visual spot-check: headings, links, images, mod entries format.

- [ ] **Step 6: Commit**

```bash
git add baldurs-gate-3/
git commit -m "feat(bg3): final polish — cover, TOC, README, STATUS cleanup"
```

---

### Task 14: Final Verification & Release Commit

**Files:**
- All project files (verification only)

- [ ] **Step 1: Verify all required files exist**

Run: `dir /s /b baldurs-gate-3\`
Confirm:
- `AGENTS.md` ✓
- `README.md` ✓
- `STATUS.md` ✓
- `mod-ideas.md` ✓
- `conflicts-mods.md` ✓
- `build.bat` ✓
- `build.typ` ✓
- `scripts/convert.js` ✓
- `guide/00-cover.md` ✓
- `guide/00-toc.md` ✓
- `guide/01-installation.md` ✓
- `guide/02-wave-0-guide.md` ✓
- `guide/03-wave-0-modlist.md` ✓
- `guide/04-wave-1-guide.md` ✓
- `guide/05-wave-1-modlist.md` ✓
- `output/mythic-crucible.pdf` ✓
- `assets/logo.jpg` ✓
- `.gitignore` ✓

- [ ] **Step 2: Verify mod counts**

Run a content check:
- Wave 0 modlist should have ~10-20 mod entries (check `guide/03-wave-0-modlist.md`)
- Wave 1 modlist should have 50+ mod entries (check `guide/05-wave-1-modlist.md`)

- [ ] **Step 3: Verify all mod URLs are real**

Spot-check 5 random mod URLs from each wave — open in browser to confirm they resolve.

- [ ] **Step 4: Verify no fabrication**

Review STATUS.md — every accepted mod should be traceable to research (date, decision notes).
If any mod lacks a STATUS.md entry, add it.

- [ ] **Step 5: Final commit**

```bash
git add baldurs-gate-3/
git commit -m "feat(bg3): Mythic Crucible — complete modlist and guide"
```
