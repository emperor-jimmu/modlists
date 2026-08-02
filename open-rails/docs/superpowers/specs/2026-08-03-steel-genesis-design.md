# Steel Genesis — Open Rails 1.6.1 Modlist & Guide (Design)

Date: 2026-08-03 (revised)

## Overview

"Steel Genesis" is a curated modlist + game guide + glossary for **Open Rails 1.6.1**
(released 14 January 2026). Mods are routes, train sets, and enhancements.

### The "Content system" — role and limits

The **built-in Content system** (the "Content" form at OR startup) is the guide's
install manager for official catalogue content: browse Routes / Train cars / Train sets,
set Install Path, click Install — self-installing downloads (headline v1.6.x feature).

It is NOT a general mod organizer like Vortex: it only installs catalogue items.
Community content from Elvas Tower and other sources is installed manually
(download → extract into the Content folder → verify in the Content form).

**Organizing principle:** every wave's modlist is an install manifest executed through
the Content system — auto-install for catalogue items, manual install for community
items. The guide documents both paths in full.

### Sourcing & contingency

Primary source: **Elvas Tower Open Rails Download Library**. Supplemented by the
official OR content catalogue and other reputable freeware communities (TrainSim.com,
trainsimulations.net, and similar) when a wave role needs it.

**Contingency:** both the OR catalogue ("currently limited to self-contained routes")
and the Elvas Tower OR library ("Routes for Open Rails" subforum) are potentially thin.
Implementation step 0 audits both. If a wave role cannot be filled from the primary
sources, expand to other reputable freeware communities and log the substitution in
`STATUS.md`. All content is still verified for 1.6.1 before inclusion.

All mod entries MUST be verified against real, working URLs before inclusion.
No fabricated names, authors, versions, or links. Unverifiable candidates go to
`mod-ideas.md` and are logged in `STATUS.md`.

## Wave Structure

Waves escalate in **operational / route complexity** (Open Rails has no campaign).
Each wave is a distinct new-game setup with its own roleplay backstory. Four waves,
each one discipline, each era-flavored but complexity-driven.

| Wave | Working Title | Focus |
|------|---------------|-------|
| 0 | The Rookie | Install 1.6.1 + use built-in Content system to install "Demo Model 1" route. Full how-to-drive guide (HUD, F-keys, cameras, brakes). QoL = built-in settings/config. No external content. |
| 1 | The Road Freight | First real route (Elvas Tower) + a proper train set. Main-line diesel freight: signals, train handling, longer consists, basic timetables. |
| 2 | The Yard | Switching/shunting operations on a yard-centric route: coupler work, runaround moves, industries. |
| 3 | The Limited | Steam-era named passenger service: demanding timetable running, station stops, heavy AI traffic, complex consists. **No multiplayer.** |

Wave titles are provisional; final titles decided during implementation after content
verification. Wave 3 era is committed to steam-era passenger (widely available freeware
steam + passenger stock); if verification cannot fill this, fall back to modern diesel
passenger and log the substitution in `STATUS.md`.

Each wave includes: roleplay backstory, how-to-play/strategy, modlist, mechanics notes,
content notes, graphics notes.

## Mod Categories per Wave

- Routes
- Train sets (rolling stock)
- Enhancements (visual/sound/environment) — only when verifiable

## Dependency Model (Open Rails-specific)

Open Rails content has no mod-manager dependency graph. Dependencies are **files that
must also be installed for the content to load**, in four kinds:

- **Base assets** — some routes require MSTS default shapes/textures/sound or an Open
  Rails base content pack. Verified per route; noted in the entry.
- **Scenery / sound packs** — routes may require shared scenery packs (trees,
  buildings) or sound sets.
- **Rolling stock packs** — activities/consists may require specific train sets.
- **None** — self-contained content (the OR catalogue only lists self-contained routes).

The dependency kind is recorded per mod entry; the guide explains where to get each
dependency and how to install it.

## Compatibility Rule

Compatibility with OR 1.6.1 means **"loads and runs in 1.6.1 without errors,"** verified
by community reports / version notes. Route and rolling stock content is era-independent
(a 2004 MSTS route still runs on 1.6.1), so **release date is NOT a compatibility gate**.
The version field on an entry uses the file/release date as a heuristic only when the
content has no version number of its own.

## Conflict Definition (Open Rails-specific)

A conflict is **file-overwrite collision**: two mods writing the same shared
folder/file (scenery, textures, sound, shape packs), two mods claiming exclusive use of
the same asset, or incompatible dependency requirements. Mitigations: separate Content
folders per wave, documented overwrite awareness, and a recorded install order.
Tracked in `conflicts-mods.md`.

## Content Installation (the "Content system")

1. Install Open Rails 1.6.1 (Setup.exe from GitHub releases / openrails.org).
2. Start OR — the "Content" form opens (built-in content catalogue).
3. Browse: Routes / Train cars / Train sets; filters Free / Donation / Commercial.
4. Select item, set Install Path, click Install — self-installing download.
5. Manual install for community content (Elvas Tower etc.): download zip, extract into
   the Content folder, verify in the Content form / route list.
6. Configure settings (graphics, HUD, superelevation, controls) as QoL.

## Mod Entry Format

Every entry: clickable name (verified URL), version (release date when no version
exists), dependencies (per the OR dependency model above), system/mechanic impact,
load/config notes (install order, folder placement, conflicts).

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
├── assets/logo.jpg            # existing; verify usability during implementation
├── output/steel-genesis.pdf
└── guide/
    ├── installation.typ       # OR 1.6.1 install + Content system guide
    ├── glossary.typ           # OR + railroading terms glossary
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
  Modlist & Guide", "Version 1.6.1 · January 2026". If `assets/logo.jpg` is unusable
  after inspection, use a typographic cover with a steel-blue/rail motif and note it in
  `STATUS.md`.
- Page numbers at the bottom of every page (footer).
- Top-level TOC (`#outline`) after cover.
- Sections: Installation → Wave 0..3 (each: how-to-play/strategy, modlist, mechanics,
  content, graphics) → Glossary.
- Mod cards via `mod-entry()` shaded blocks (bold linked name, version, deps, impact).
- Body font: "New Computer Modern" (matches sibling projects); verify availability.

## Build

`build.bat` — checks `typst` on PATH, compiles `template.typ` →
`output/steel-genesis.pdf`.

## Implementation Step 0 — Audit & Risk Gates

1. Audit the OR 1.6.1 content catalogue and the Elvas Tower Open Rails Download
   Library for actual available content; record findings in `STATUS.md`.
2. Inspect `assets/logo.jpg` (size, content) — usable or typographic fallback.
3. Verify Typst 0.15 + "New Computer Modern" font availability.
4. Confirm Demo Model 1 install flow (Content form) against the v1.6.1 getting-started
   guide.

## Constraints & Rules

- Mods must be compatible with Open Rails 1.6.1 (loads/runs without errors).
- No conflicting mods in the same wave (per the conflict definition above).
- No meme/joke mods, explicit porn, redundant mods, cheating/overpowered mods.
- Adult/nude content only where thematically relevant (effectively N/A for train sims).
- **No multiplayer content or instructions anywhere in the guide.**
- PDF excludes `conflicts-mods.md` and `mod-ideas.md`.
- Decision traceability maintained in `STATUS.md`.
