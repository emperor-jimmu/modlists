# CK3 Modlist Guide — Design Spec

**Version:** 1.0  
**Date:** 2026-07-11  
**Status:** Design (pre-implementation)

## Project Overview

A curated modlist and learning guide for Crusader Kings 3 (2026, all DLC). The project serves three purposes:

1. **Curated modlist** — bugfixes, gameplay, graphics, content, and adult mods organized by category with download links, version tracking, and performance notes
2. **CK3 tutorial** — teaches a new player how to play the game
3. **PDF guide** — auto-generated via Typst from markdown source files

## Tools & Platform

- **Mod Organizer:** Vortex (Nexus Mods)
- **PDF Generation:** Typst
- **Platform:** Windows
- **Game:** CK3 (Steam), latest version with all DLC

## Project Structure

```md
ck3-modlist/
├── modlist/
│   ├── 01-bugfixes.md
│   ├── 02-ui-hud.md
│   ├── 03-map-environment.md
│   ├── 04-portraits-models.md
│   ├── 05-culture-religion.md
│   ├── 06-events-decisions.md
│   ├── 07-gameplay-mechanics.md
│   ├── 08-map-expansion.md
│   ├── 09-music-sound.md
│   ├── 10-fantasy-optional.md
│   ├── 11-adult.md
│   ├── 12-performance-tools.md
│   └── missing-mods.md
├── content/
│   ├── 01-tutorial.typ
│   ├── 02-modlist-core.typ
│   ├── 03-modlist-adult.typ
│   ├── 04-performance.typ
│   └── 05-new-game-guide.typ
├── scripts/
│   ├── generate-mod-sections.ps1
│   ├── compile.ps1
│   └── benchmark-runner.ps1
├── data/
│   └── performance.yaml
├── VERSION
├── main.typ
├── README.md
└── AGENTS.md
```

## Mod Category Files (`modlist/*.md`)

Each category is a markdown file. Mod entries separated by `---`:

```markdown
# Category Name

## Mod Name

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=XXXX
- **Mod Version:** 1.19.x
- **CK3 Version:** 1.19.x (also note min patch if known, e.g. "1.19.0+")
- **Updated:** 2026-06-20
- **Load Order:** Early / Mid / Late
- **Essential:** Yes / No
- **Performance:** None / Minor / Moderate / Heavy

Description paragraph explaining what the mod does.

**Gameplay Impact:** How this mod changes gameplay mechanics.

---

## Next Mod...
```

### Mod Categories

| #  | File                       | Category           | Notes                              |
|----|----------------------------|--------------------|------------------------------------|
| 01 | `01-bugfixes.md`           | Bugfixes           | Patch supplements, hotfixes        |
| 02 | `02-ui-hud.md`             | UI / HUD           | Interface, tooltips, scaling       |
| 03 | `03-map-environment.md`    | Map & Environment  | Terrain, water, tiles              |
| 04 | `04-portraits-models.md`   | Portraits & Models | Character appearance, equipment    |
| 05 | `05-culture-religion.md`   | Culture & Religion | New cultures, faiths, flavor       |
| 06 | `06-events-decisions.md`   | Events & Decisions | New events, decision trees         |
| 07 | `07-gameplay-mechanics.md` | Gameplay Mechanics | Laws, council, warfare, succession |
| 08 | `08-map-expansion.md`      | Map Expansion      | New regions, dejure changes        |
| 09 | `09-music-sound.md`        | Music & Sound      | Soundtracks, ambient               |
| 10 | `10-fantasy-optional.md`   | Fantasy (Optional) | Non-realistic, magic, supernatural |
| 11 | `11-adult.md`              | Adult              | NSFW content                       |
| 12 | `12-performance-tools.md`  | Performance Tools  | Optimizers, pop control            |

### Missing Mods (`missing-mods.md`)

Lists mods that the user would need to create to complete the vision. Each entry:

```markdown
## Desired Mod Name

- **Priority:** High / Medium / Low
- **Category:** Which category it belongs to
- **Concept:** What it would do
- **Why no existing mod works:** Gap analysis
```

## CK3 Tutorial Chapter (`content/01-tutorial.typ`)

1. What is CK3?
2. Choosing Your First Ruler
3. The Interface
4. Core Loop
5. Setting Goals
6. Marriage & Land (deep dive)
7. Succession & Dynasties (deep dive)
8. Religion (deep dive)
9. Culture
10. Warfare
11. Vassal Management (deep dive)
12. The Endgame
13. Staying on the Right CK3 Version
14. Common Mistakes & How to Avoid Them

The **Staying on the Right CK3 Version** section covers:

- Steam → Properties → Betas → select the guide's version
- Warning: "CK3 updates frequently. Most mods in this list target vX.Y.Z. Updating the game will likely break the modlist. Bookmark this guide's version tag."

## Performance Benchmarks (`content/04-performance.typ`)

Reads from `data/performance.yaml`:

```yaml
methodology:
  hardware: "CPU, GPU, RAM, SSD, OS"
  tool: "CapFrameX"
  scenario: "1066 start, speed 5, 10 minutes"
  baseline_fps: [min, avg, max]

tests:
  - category: bugfixes
    enabled: true
    fps: [min, avg, max]
  - category: ui-hud
    enabled: true
    fps: [min, avg, max]
  ...
  - full_modlist:
    fps: [min, avg, max]

notes:
  - "Some mod description about performance"
```

## New Game Guide (`content/05-new-game-guide.typ`)

- Which mods to enable for first modded run
- Game rules setup
- Ruler selection in modded world
- What's different from vanilla (per-category)
- Recommended difficulty and goals

## PDF Build & Versioning

- `VERSION` file in root: `1.0.0`
- `scripts/compile.ps1` runs: generate-mod-sections → typst compile main.typ
- Output: `output/ck3-modlist-guide-v1.0.0.pdf`
- PDF footer: "CK3 Modlist Guide v{version} — {date} — CK3 v{ck3-version}"

## AGENTS.md

Instructs AI assistants to:

- Use Vortex as the mod manager
- Generate Typst-compatible output
- Follow the category structure
- Track mod versions and update dates
- Maintain the missing-mods list
- Keep adult content in its own section
- Reference the design spec

## README.md

Project overview covering:

- What this project is
- Prerequisites (CK3 + all DLC, Steam, Vortex, Typst)
- Quick start guide
- How to contribute mod entries
- How to build the PDF
- Version compatibility notes

## What's NOT Included

- Cheat mods / overpowered content
- Anything that removes game challenge
- "Satan's daughters" type adult content
