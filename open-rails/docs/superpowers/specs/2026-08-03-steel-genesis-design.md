# Steel Genesis — Open Rails 1.6.1 Modlist & Guide (Design)

Date: 2026-08-03

## Overview

"Steel Genesis" is a curated modlist + game guide + glossary for **Open Rails 1.6.1**
(released 14 January 2026). Mods are routes, train sets, and enhancements installed via
Open Rails' **built-in Content system** (the "Content" form, which downloads and
self-installs content from the official catalogue — the headline feature of v1.6.x).

Content is primarily sourced from the **Elvas Tower Open Rails Download Library**,
supplemented by the official OR content catalogue and other reputable freeware
communities (TrainSim.com, trainsimulations.net) when a wave role needs it.

All mod entries MUST be verified against real, working URLs before inclusion.
No fabricated names, authors, versions, or links. Unverifiable candidates go to
`mod-ideas.md` and are logged in `STATUS.md`.

## Wave Structure

Waves escalate in **operational / route complexity** (Open Rails has no campaign).
Each wave is a distinct new-game setup with its own roleplay backstory.

| Wave | Working Title | Focus |
|------|---------------|-------|
| 0 | The Rookie | Install 1.6.1 + use built-in Content system to install "Demo Model 1" route. Full how-to-drive guide (HUD, F-keys, cameras, brakes). QoL = built-in settings/config. No external content. |
| 1 | The Road Freight | First real route (Elvas Tower) + a proper train set. Signals, train handling, longer consists, basic timetables. |
| 2 | The Yard & Passenger | Yard/shunting ops + passenger timetable running (steam or classic era). |
| 3 | The Network | Complex operations: heavy AI traffic, demanding schedules, multi-player server. |

Wave titles are provisional; final titles decided during implementation after content
verification. Each wave includes: roleplay backstory, how-to-play/strategy, modlist,
mechanics notes, content notes, graphics notes.

## Mod Categories per Wave

- Routes
- Train sets (rolling stock)
- Enhancements (visual/sound/environment) — only when verifiable

## Content Installation (the "Content system")

1. Install Open Rails 1.6.1 (Setup.exe from GitHub releases / openrails.org).
2. Start OR — the "Content" form opens (built-in content catalogue).
3. Browse: Routes / Train cars / Train sets; filters Free / Donation / Commercial.
4. Select item, set Install Path, click Install — self-installing download.
5. Manual install for Elvas Tower community content: download zip, extract into the
   Content folder, verify in the Content form / route list.
6. Configure settings (graphics, HUD, superelevation, controls) as QoL.

## Mod Entry Format

Every entry: clickable name (verified URL), version (release date heuristic when no
version exists), dependencies, system/mechanic impact, load/config notes.

## File Structure

```
open-rails/
├── AGENTS.md
├── README.md
├── STATUS.md                  # decisions, rejected mods, conflicts, notes
├── conflicts-mods.md          # NOT included in PDF
├── mod-ideas.md               # NOT included in PDF
├── template.typ               # Typst 0.15 template
├── build.bat                  # PDF regeneration script
├── assets/logo.jpg            # existing
├── output/steel-genesis.pdf
└── guide/
    ├── installation.typ       # OR 1.6.1 install + Content system guide
    └── wave-{0..3}/
        ├── how-to-play.typ | strategy.typ
        ├── modlist.typ        # mod-entry() cards
        ├── mechanics.typ
        ├── content.typ
        └── graphics.typ
```

## PDF Design

- Typst 0.15; steel-blue palette (headings `#3b6ea5`, dark slate `#2c3e50`, card fill
  `#f4f7fb`, white background, high-contrast dark text).
- Cover: `assets/logo.jpg` centered, title "Steel Genesis", "Open Rails 1.6.1 —
  Modlist & Guide", "Version 1.6.1 · January 2026".
- Page numbers at the bottom of every page (footer).
- Top-level TOC (`#outline`) after cover.
- Sections: Installation → Wave 0..3 (each: how-to-play/strategy, modlist,
  mechanics, content, graphics).
- Mod cards via `mod-entry()` shaded blocks (bold linked name, version, deps, impact).
- Body font: "New Computer Modern" (matches sibling projects); verify availability.

## Build

`build.bat` — checks `typst` on PATH, compiles `template.typ` →
`output/steel-genesis.pdf`.

## Constraints & Rules

- Mods must be compatible with Open Rails 1.6.1 (released ~14 Jan 2026).
- No conflicting mods in the same wave.
- No meme/joke mods, explicit porn, redundant mods, cheating/overpowered mods.
- Adult/nude content only where thematically relevant (rare in train sims).
- PDF excludes `conflicts-mods.md` and `mod-ideas.md`.
- Decision traceability maintained in `STATUS.md`.
