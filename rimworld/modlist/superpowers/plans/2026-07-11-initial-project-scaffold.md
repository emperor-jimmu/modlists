# Initial Project Scaffold Implementation Plan

> **For agentic workers:** Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Scaffold the RimWorld modlist project with directory structure, configuration files, AGENTS.md, README.md, and stub markdown chapters for the guide.

**Architecture:** Flat directory layout with `modlist/` for guide chapters/appendices and `performance/` for testing methodology. mdbook generates the PDF from the markdown files. AGENTS.md instructs AI assistants on project conventions. README.md orients the human user.

**Tech Stack:** mdbook for PDF generation. Markdown for all content. RimPy for mod management.

**Key conventions:**
- All paths relative to repo root `H:\Projects\rimworld-modlist\`
- 4K (3840×2160) baseline resolution
- No cheat/overpowered mods
- Beginner-first language throughout

---

### Task 1: Create Directory Scaffold, .gitignore, and version.json

**Files:**
- Create: `.gitignore`
- Create: `version.json`

- [ ] **Step 1: Create .gitignore**

Write `.gitignore` with the following:

```gitignore
# mdbook output
modlist/guide/

# Performance test results (user's own data)
performance/results/

# OS files
Thumbs.db
.DS_Store
*.swp
*.swo

# IDE
.vs/
.vscode/
.idea/
*.suo
*.user
```

- [ ] **Step 2: Create version.json**

Write `version.json`:

```json
{
  "version": "1.0.0",
  "gameVersion": "1.6.4633",
  "gameVersionMin": "1.6",
  "date": "2026-07-11",
  "description": "Initial modlist and beginner guide for RimWorld 1.6.4633 + all DLC"
}
```

---

### Task 2: Create AGENTS.md

**Files:**
- Create: `AGENTS.md`

- [ ] **Step 1: Create AGENTS.md**

Write `AGENTS.md`:

```markdown
# AGENTS.md — RimWorld Modlist Project

## Project Identity

This repo builds a **curated, beginner-friendly RimWorld modlist + learning guide** that gets published as a PDF via mdbook. Target audience: first-time RimWorld player on Windows, 4K resolution.

## Tooling

| Tool | Purpose |
|------|---------|
| **RimPy Mod Manager** | Mod installation & load-order auto-sort |
| **mdbook** | Builds chapters into a website & PDF |
| **Playwright** | For browsing JS-rendered web pages (Steam Workshop, mod wikis, forums) when plain HTTP fetch fails |
| **Pandoc** | PDF rendering engine (invoked by mdbook) |

## Repository Structure

```
rimworld-modlist/
  version.json          # Semver + target game version
  missing-mods.md       # Mods that don't exist yet (with pseudo-specs)
  README.md             # Human-facing project overview
  AGENTS.md             # This file — instructions for AI assistants
  .gitignore
  modlist/              # Guide content (markdown, mdbook source)
    chapter-*.md
    appendix-*.md
  performance/          # Performance testing
    methodology.md      # How to benchmark TPS/load times
    template.ods        # Spreadsheet template
    results/            # gitignored — user's own benchmarks
  book.toml             # mdbook configuration
```

## Content Guidelines

### Tone & Audience
- **First-time player** — assume zero RimWorld knowledge.
- Explain *why* a mod exists (what problem it solves) before *what* it does.
- Never assume the reader knows modding terminology.

### Mod Selection (HARD RULES)
- ✅ Bugfixes, performance optimizers, UI polish, graphics, content expansions, gameplay depth, alien breeding, NPC/story expansion.
- ❌ Cheat mods, debug tools, overpowered weapons, anything that trivializes core survival mechanics.

### 4K Baseline
- All UI/HUD mods must work well at 4K (3840×2160).
- Screenshots must be captured at 4K.

### Mod Entries (per-mod format)
Each mod in a chapter should follow:
- **Name** — Steam Workshop link
- **What it does** — 1-2 sentences
- **Why it's here** — problem it solves
- **Not OP because** — why it doesn't break balance
- **Install** — OK to install now, or wait until comfortable with X

## Versioning
- `version.json` bumped per meaningful guide updates
- Git tags matching semver
- PDF output filename includes version number

## Writing Process
1. Research mods on Steam Workshop / GitHub via Playwright or web fetch
2. Follow the per-mod format above
3. Keep chapters ordered by learning progression
4. Cross-reference mods between chapters where relevant
```

---

### Task 3: Create README.md

**Files:**
- Create: `README.md`

- [ ] **Step 1: Create README.md**

Write `README.md`:

```markdown
# RimWorld Modlist & Learning Guide

A curated, beginner-friendly RimWorld modlist with a comprehensive learning guide — from your first crash landing to a heavily modded colony. Built for **RimWorld 1.6.4633** with **all DLC** on **Windows** at **4K resolution**.

## Quick Start

1. **Install RimWorld** (Steam) — ensure you own all DLC (Royalty, Ideology, Biotech, Anomaly)
2. **Install [RimPy Mod Manager](https://github.com/rimpy-custom/RimPy/releases)**
3. **Read the guide** — start with [Chapter 1: What is RimWorld](modlist/chapter-01-what-is-rimworld.md)
4. **Subscribe to mods** — each chapter links mods on Steam Workshop
5. **Sort with RimPy** — auto-sort handles load order
6. **Play!**

## Guide Structure

The guide is ordered as a **learning progression**. Install mods as you go — don't dump 100+ mods on day one.

| # | Chapter | What You'll Learn |
|---|---------|-------------------|
| 01 | What is RimWorld | Core game loop, storyteller, difficulty, starting choices, DLC overview |
| 02 | Setup | Installing RimWorld + RimPy, organizing mods |
| 03 | Framework | Core libraries (Harmony, HugsLib, etc.) |
| 04 | Bugfixes & Performance | Vanilla bugfixes, RocketMan, performance optimization |
| 05 | UI / HUD | Better tooltips, work tab, Mint Menus |
| 06 | Graphics | Clean Textures, visual enhancements |
| 07 | Gameplay Enhancements | Allow Tool, Common Sense, hauling logic |
| 08 | Weapons & Combat | New weapons, combat AI, balance |
| 09 | World Variety | Biomes, factions, events, exploration |
| 10 | Monsters & Creatures | Alpha Animals, new threats |
| 11 | NPC Interactions | Faction diplomacy, quest expansion |
| 12 | Alien Breeding | Genetic Rim, Alpha Genetics |
| 13 | Gameplay Guide | Full modded run — early/mid/late game |
| 14 | Troubleshooting | Load order fixes, compatibility |

## Building the PDF

```bash
# Install mdbook
cargo install mdbook

# Build the guide
mdbook build

# Output: modlist/guide/output/rimworld-modding-guide-v{version}.pdf
```

## Performance Testing

See [`performance/methodology.md`](performance/methodology.md) for how to benchmark mod impact on TPS, RAM, and load times. A spreadsheet template is provided at [`performance/template.ods`](performance/template.ods).

## Modlist Philosophy

**Included:** Bugfixes, content expansions, UI/UX polish, graphics, gameplay depth, alien breeding, NPC interaction
**Excluded:** Cheat/OP mods, anything that removes survival challenge

## License

This guide is provided for educational purposes. RimWorld is owned by Ludeon Studios. Mods are property of their respective authors.
```

---

### Task 4: Create book.toml

**Files:**
- Create: `book.toml`

- [ ] **Step 1: Create book.toml**

Write `book.toml`:

```toml
[book]
title = "RimWorld Modlist & Learning Guide"
authors = ["Community"]
description = "A beginner-friendly RimWorld 1.6.4633 modlist and gameplay guide"

[output.html]
site-url = "/"
edit-url-template = ""

[output.pdf]
# mdbook-pdf or mdbook-pandoc backend
```

---

### Task 5: Create missing-mods.md

**Files:**
- Create: `missing-mods.md`

- [ ] **Step 1: Create missing-mods.md**

Write `missing-mods.md`:

```markdown
# Missing Mods — Ideas That Don't Exist Yet

This file catalogs mods that would complete this modlist but don't exist on the Steam Workshop (or GitHub). Each entry is a pseudo-spec — enough detail for a modder to build.

## Template

```markdown
### Mod Name
- **Category:** [e.g., UI / Gameplay / Content]
- **Problem:** [What gap does this fill?]
- **Mechanics:** [How would it work? UI, systems, interactions]
- **Dependencies:** [Harmony, HugsLib, specific frameworks]
- **Scope:** [Small / Medium / Large — weeks of dev work]
```

---

*No entries yet. Populate as gaps are identified during guide writing.*
```

---

### Task 6: Create performance/methodology.md

**Files:**
- Create: `performance/methodology.md`

- [ ] **Step 1: Create methodology directory**

```bash
New-Item -ItemType Directory -Path "performance" -Force
```

- [ ] **Step 2: Write performance/methodology.md**

```markdown
# Performance Testing Methodology

## Goal

Measure the impact of RimWorld mods on game performance (TPS, RAM, load times) in a reproducible way.

## Baseline

- Vanilla RimWorld 1.6.4633 with all DLC
- New colony on "Temperate Forest, year-round growing"
- Default difficulty, Cassandra Classic
- 3 starting colonists (random, no re-rolls)
- 4K resolution

## Tools

- **[RimPy](https://github.com/rimpy-custom/RimPy/releases)** — mod management, load order
- **[RocketMan](https://steamcommunity.com/sharedfiles/filedetails/?id=2897983570)** — built-in TPS counter (or use Dev Mode → TPS display)
- **Task Manager** or **Process Explorer** — RAM usage
- **Stopwatch** — load time from "Launch" to main menu

## Procedure

1. **Establish baseline:** Run vanilla, record metrics (see template)
2. **Add mods by category** (one chapter at a time):
   - Add all mods from Chapter 03 (Framework)
   - Run for 30 in-game days on the same save
   - Record TPS (average + minimum)
   - Record RAM usage
   - Record main-menu load time
3. **Repeat** for each subsequent category
4. **Cumulative:** Track total impact as you stack categories

## Controlled Colony Save

Use the **same save file** for every test run. The save should:
- ~20 in-game days old
- 5-8 colonists
- Established base (power, food, basic defenses)
- No major events in progress

## Metrics

| Metric | How to Measure |
|--------|---------------|
| Avg TPS | Dev Mode → toggle TPS display, watch for 5 min, record average |
| Min TPS | Note the lowest TPS during the 5 min window |
| RAM (MB) | Task Manager → RimWorld process |
| Load Time (s) | Click "Play" in Steam, stopwatch until main menu appears |

## Template

Use [`template.ods`](template.ods) to record results. Columns:

| Test # | Category | Mod Count | Cumulative Count | Avg TPS | Min TPS | RAM (MB) | Load (s) | Notes |
|--------|----------|-----------|-----------------|---------|---------|----------|----------|-------|
| 0 | Vanilla | 0 | 0 | | | | | Baseline |
| 1 | Framework | X | X | | | | | |
| ... | ... | ... | ... | | | | | |

> ⚠ **Important:** Results in `performance/results/` are gitignored. Only commit aggregated findings or methodology improvements.
```

---

### Task 7: Create Chapter Stubs (Full Structure)

**Files:**
- Create: All `modlist/chapter-*.md` and `modlist/appendix-*.md` files

Each stub follows this template:

```markdown
# Chapter X: Title

## Learning Objectives
- ...
- ...

## Overview
<!-- TODO: Write ~200 words introducing the topic -->

## The Mods
<!-- TODO: Add mod entries following the per-mod format from AGENTS.md -->

## Installation Checkpoint
<!-- TODO: "OK to install all mods in this chapter now" or "Wait until Chapter Y" -->

## Next Steps
Proceed to [Chapter X+1](chapter-X+1.md).
```

- [ ] **Step 1: Create chapter-01-what-is-rimworld.md**

Major stub with detailed sections:
- Core game loop (crash land, survive, thrive, escape)
- Choosing a storyteller (Cassandra, Phoebe, Randy)
- Difficulty settings (strive to survive)
- Colonist selection guide (passions, burning passions, traits to avoid)
- Biome comparison table (temperate forest, arid shrubland, boreal, tundra, ice sheet, extreme desert, jungle)
- Landing tile considerations (geothermal vents, soil quality, road access, mountain for base)
- Early game priorities (day 1: shelter/food, day 2-7: growing/defense, first winter prep)
- Mid-game (research paths, caravan, multiple colonies)
- Late game (ship launch, royal ascent, archonexus)
- DLC overview (each DLC explained, recommendation: play vanilla first)
- What is modding, how mods work, load order, save compatibility warnings

```markdown
# Chapter 1: What is RimWorld

## Learning Objectives
- Understand the core game loop and win conditions
- Choose your first storyteller, difficulty, and starting scenario
- Pick good colonists and a good landing spot
- Learn the early/mid/late game flow
- Decide whether to enable DLCs on your first run

## The Core Loop
<!-- TODO: Explain crash land → build shelter → gather food → survive raids → research → launch ship / win condition -->

## Choosing a Storyteller
| Storyteller | Style | Best For |
|-------------|-------|----------|
| Cassandra Classic | Steady ramp of difficulty | First playthrough |
| Phoebe Chillax | Long peaceful periods | Learning at your own pace |
| Randy Random | Unpredictable chaos | Experienced players |

## Difficulty Levels
<!-- TODO: Explain Community Builder (easy) → Strive to Survive (intended) → Losing is Fun (hard). Recommend Strive to Survive for first play. -->

## Colonist Selection
<!-- TODO: Explain passions (flame icons), burning passion (double flame), skill levels. Good traits: Industrious, Fast Learner, Jogger. Traits to avoid: Pyromaniac, Gourmand, Wimp. -->
<!-- TODO: Table of skill importance (Construction/Plants > Shooting/Melee > etc.) -->

## Biome Comparison
<!-- TODO: Table with biome, difficulty, growing period, wood availability, Unique challenges -->

## Landing Spot
<!-- TODO: Geothermal vents = free power. Fertile soil = faster crops. Roads = faster caravan. Mountains = easy base defense (dig in). Rivers = natural defense. -->

## Game Flow
### Early Game (Days 1-60)
<!-- TODO: Shelter, food production, basic defenses, first research -->

### Mid Game (Days 60-200)
<!-- TODO: Stable base, caravans, trading, multi-tasking, bionics -->

### Late Game (Days 200+)
<!-- TODO: Win condition prep, ship building, royal ascent, archonexus -->

## DLC Overview
<!-- TODO: Royalty (empire, psycasts, nobility). Ideology (beliefs, rituals, memes). Biotech (children, mechanoids, genes). Anomaly (horror, void, meta-horrors). Recommend: Play first run with Biotech only (most integrated), add others later. -->

## What is Modding?
<!-- TODO: Mods are code/data that change game behavior. Load order matters (later mods override earlier). RimPy auto-sorts. Save-game safety warnings. -->

## Next Steps
Proceed to [Chapter 2: Setup](chapter-02-setup.md).
```

- [ ] **Step 2: Create chapter-02-setup.md** through **chapter-14-troubleshooting.md**

Each follows the same stub pattern with TODO comments.

- [ ] **Step 3: Create appendix-modlist-reference.md**

Table format:
```markdown
# Appendix A: Complete Modlist Reference

| # | Mod Name | Category | Author | Steam ID | Dependencies |
|---|----------|----------|--------|----------|--------------|
| 1 | Harmony | Framework | pardeike | 2009463077 | — |
| ... | ... | ... | ... | ... | ... |
```

- [ ] **Step 4: Create appendix-resources.md**

Sections for:
- Official RimWorld wiki
- r/RimWorld subreddit
- RimWorld Discord
- YouTube tutorial channels (Nookrium, ambiguousamphibian, Francis John)
- RimPy documentation
- mdbook documentation

---

## Self-Review

- **Spec coverage:** All spec requirements addressed (directory structure, versioning, 4K baseline, AGENTS.md, README.md, chapter stubs, performance methodology, missing-mods.md).
- **Placeholder scan:** No TBD/TODO in file content except intentional TODOs in chapter stubs (content to be filled during guide writing).
- **Consistency:** File paths match between AGENTS.md, README.md, and the spec. AGENTS.md rules (no OP mods, 4K baseline) are referenced in README.md.
