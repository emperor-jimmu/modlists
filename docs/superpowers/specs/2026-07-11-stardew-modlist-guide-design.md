# Welcome to the Valley — Design Spec

## Overview

A curated Stardew Valley modlist project for first-time players, organized as a markdown-based guide that compiles to a professional PDF via Pandoc. Uses Mod Organizer 2. The guide teaches vanilla mechanics alongside the modded experience.

## Goals

- Bugfixes, expanded content, improved UI/HUD, enhanced graphics, mature (but not sleazy/overpowered) content
- Teach a first-time player how to play Stardew Valley
- Produce a polished PDF handbook with custom styling

## Project Structure

```md
stardew-valley-modlist/
├── docs/
│   ├── assets/
│   │   ├── images/           # screenshots, diagrams
│   │   └── fonts/            # Open Sans + Lora (bundled)
│   ├── guide/
│   │   ├── 01-setup.md       # MO2 + SMAPI installation
│   │   ├── 02-vanilla-primer.md
│   │   ├── 03-mod-catalog/
│   │   │   ├── 01-dialogue.md
│   │   │   ├── 02-ui-hud.md
│   │   │   ├── 03-graphics-base.md
│   │   │   ├── 04-graphics-portraits.md
│   │   │   ├── 05-graphics-terrain.md
│   │   │   ├── 06-graphics-animals.md
│   │   │   ├── 07-world-expansion.md
│   │   │   ├── 08-monsters-combat.md
│   │   │   ├── 09-items-weapons.md
│   │   │   ├── 10-npc-interactions.md
│   │   │   ├── 11-grownuptown.md
│   │   │   ├── 12-gameplay-tweaks.md
│   │   │   ├── 13-skills-professions.md
│   │   │   ├── 14-farming-making.md
│   │   │   └── 15-music-audio.md
│   │   ├── 04-modded-gameplay.md
│   │   └── 05-mo2-separators.md
│   └── performance/
│       ├── 01-methodology.md
│       ├── 02-baseline.md
│       └── 03-mod-impact.md
├── scripts/
│   ├── build.ps1             # concatenates md → PDF via Pandoc
│   └── template.html         # Pandoc HTML template for PDF styling
├── AGENTS.md
└── README.md
```

## PDF Build System

- **Tool:** Pandoc + wkhtmltopdf
- **Command:** `scripts/build.ps1`
- **Process:** Read ordered markdown files → merge with chapter breaks → apply HTML template + CSS → output `welcome-to-the-valley-guide.pdf`
- **Dependencies verified at build time** with clear error messages

## PDF Styling

- **Fonts:** Open Sans (body), Lora or Playfair Display (headings) — embedded in `assets/fonts/`
- **Layout:** A4, comfortable margins, 10-11pt body
- **Chapter headers:** Colored bars matching MO2 separator category colors
- **Title page:** Project name, subtitle, version, date
- **Table of contents:** Auto-generated, clickable
- **Code blocks:** Monospace, subtle background for mod names/file paths
- **Page numbers:** Footer

## Mod Catalog Categories (in order)

| #  | Category             | Focus                              |
|----|----------------------|------------------------------------|
| 01 | Bugfixes             | Fix game bugs and issues           |
| 02 | UI/HUD               | Improved interface, tooltips, chat |
| 03 | Graphics Base        | Cohesive visual overhaul pack      |
| 04 | Graphics Portraits   | Character portrait upgrades        |
| 05 | Graphics Terrain     | Terrain, buildings, environment    |
| 06 | Graphics Animals     | Animals, crops, objects            |
| 07 | World Expansion      | New locations, world variety       |
| 08 | Monsters & Combat    | More enemies, combat balance       |
| 09 | Items & Weapons      | Expanded gear, tools, weapons      |
| 10 | NPC Interactions     | Deeper NPC content, dialogue       |
| 11 | Grownup Town         | Tasteful adult-oriented content    |
| 12 | Gameplay Tweaks      | QoL gameplay changes               |
| 13 | Skills & Professions | Expanded skill trees               |
| 14 | Farming & Making     | Crops, machines, crafting          |
| 15 | Music & Audio        | Soundtrack additions               |

## Performance Testing

- **Baseline:** Vanilla SDV at 4K resolution
- **Method:** Test per mod category in isolation
- **Metrics:** FPS (avg/min), load times, at key in-game locations
- **Results format:** Markdown tables per category
- **Stored in:** `docs/performance/`

## MO2 Separators

- One top-level separator per mod category
- Each with a distinct color and subcategory separators using a gradient
- Documented in `docs/guide/05-mo2-separators.md`

## AGENTS.md

Will instruct future coding sessions on:

- Project structure conventions
- How to add new mods to the catalog
- Build system usage
- Use Playwright for web browsing if needed

## Out of Scope

- Multiplayer mods
- Cheats/overpowered mods
- Overtly sexual/pornographic content
- Non-SMAPI mods (unless noted)
