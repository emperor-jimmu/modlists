# The Netrunner's Shadow — Design Spec

**Date:** 2026-07-11
**Game version:** Cyberpunk 2077 v2.31 (v2.3-compatible)

## Overview

A curated, performance-conscious modlist and guide for Cyberpunk 2077, organized
via Mod Organizer 2. The guide documents mods across 19 categories, with a
research pipeline for evaluating candidates and a separate tracker for original
mod ideas.

## Goals

1. Transform Cyberpunk 2077 into a deep RPG, not an action game
2. Living world with daily activities, survival-lite features, NPC routines
3. Abundant collectibles and exploration rewards
4. Meaningful relationships (M/F and F/F romance options)
5. Playable performance with a detailed optimization section

## Design Philosophy

- No "cheat" mods: no free items, vendor price hacks, unlimited carry weight, or
  mechanics removal
- Mods must enhance depth, not remove friction
- When a mod offers both cheat and balanced options, only the balanced config is used

## Repository Structure

```
cyberpunk-2077-modlist/
├── README.md
├── AGENTS.md
├── modlist/
│   ├── 01-mo2-setup-and-tools.md
│   ├── 02-core-utilities.md
│   ├── 03-bug-fixes.md
│   ├── 04-ui-and-hud.md
│   ├── 05-gameplay-overhaul.md
│   ├── 06-living-world.md
│   ├── 07-quests-and-stories.md
│   ├── 08-relationships-and-romance.md
│   ├── 09-collectibles-and-exploration.md
│   ├── 10-appearance-and-character.md
│   ├── 11-clothing-and-fashion.md
│   ├── 12-armor-and-gear.md
│   ├── 13-weapons.md
│   ├── 14-apartments-and-housing.md
│   ├── 15-vehicles-and-transport.md
│   ├── 16-locations-and-world-expansion.md
│   ├── 17-visuals-and-atmosphere.md
│   ├── 18-audio-and-music.md
│   └── 19-performance-and-optimization.md
├── research/
│   └── mods-to-investigate.md
├── mods-to-develop.md
├── scripts/
│   └── generate-pdf.py
└── .gitignore
```

## Category Files

Each category file is a Markdown document with:

- A header summarizing the category's goal and how it serves the modlist vision
- Mods listed in recommended install order
- Each mod uses the canonical entry template

### Mod Entry Template

```markdown
### Mod Name
- **Nexus:** URL
- **Version:** x.y.z
- **Released:** YYYY-MM-DD
- **Summary:** One-line description
- **Why:** How it serves the modlist goals
- **Conflicts:** Known conflicts
- **Dependencies:** Required mods and load-order position
- **MO2 Notes:** Install instructions, FOMOD choices, merge guidance
- **Performance:** None | Light | Moderate | Heavy
```

## Performance Strategy

Per-mod performance tags in each category file, with a **centralized
performance guide** in section 19 covering:

- Minimum, recommended, and ultra hardware specs
- Benchmark methodology
- Optimization tools (frame pacing, draw-call analysis, texture streaming)
- Engine and driver settings
- Load-order impact summary

## Research Pipeline

1. Mods discovered on Nexus Mods are added to `research/mods-to-investigate.md`
2. Each research entry includes pros, cons, alternatives, and open questions
3. `Status` field: `candidate` → `testing` → `approved` → `rejected`
4. Approved mods are added to the appropriate category file
5. Rejected mods stay in the research file with a rejection reason (never deleted)

### Research Entry Template

```markdown
## Mod Name
- **Nexus:** URL
- **Status:** candidate | testing | approved | rejected
- **Category:** Which section it belongs to
- **Pros:** What it adds
- **Cons:** Stability issues, bloat, design mismatch
- **Alternatives:** Other mods doing similar things
- **Notes:** Open questions, compatibility findings
```

## Mods to Develop

Original ideas for mods that don't exist yet.

### Entry Template

```markdown
## Idea: Short Title
- **Category:** Which section it fits
- **Problem:** What gap does it fill?
- **Proposal:** What would the mod do?
- **Design:**
  - **UI:** Wireframe/flow descriptions, HUD elements, menus
  - **Technical:** RED4ext/CET/ArchiveXL approach, hooks, data structures
  - **Game Design:** Balance philosophy, integration with vanilla systems
- **Scope:** simple | moderate | large
- **Dependencies:** Required frameworks/APIs
- **Status:** idea | scoping | in-progress | released
```

## PDF Generator

A Python script in `scripts/generate-pdf.py` that:

- Reads all Markdown files in `modlist/`
- Renders them into a single PDF with:
    - Nice, readable fonts (e.g., Inter or Source Serif)
    - Table of contents
    - Category separators
    - Proper typography (hyphenation, ligatures, page numbers)
- Produces `cyberpunk-2077-modlist.pdf` at the repo root

## README.md

- Project overview and goals
- System requirements
- Quick-start: install MO2, follow categories 01–19
- Category index table
- Link to performance guide

## AGENTS.md

Instructions for AI assistants, covering:

- Project purpose
- File structure explanation
- Mod entry rules (all fields required, Nexus search before adding, cross-reference)
- Core terminology (MO2, CET, REDmod, ArchiveXL, RED4ext)
- Design philosophy (no cheats, depth over convenience)
- Workflow: research before adding, approved mods to categories, rejected stay with reason

## .gitignore

```
# Windows
Thumbs.db
Desktop.ini

# Temp files
*.tmp
*.bak
~$*

# Python
__pycache__/
*.pyc

# PDF output (generated artifact)
*.pdf
```
