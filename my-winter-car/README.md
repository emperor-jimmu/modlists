# Routa — README

Curated modlist and game guide for **My Winter Car** (Steam Early Access, build **v.260516-01** at guide time), built on the community-standard **MSCLoader (for My Winter Car)** mod manager. The guide covers installing the loader and mods in two layers, the curated modlist itself (with the deliberate omissions), a how-to-play field manual for the modded winter, and five player personas.

## What's inside

| File | Content |
|---|---|
| `guide/10-installation.typ` | Steam v.260516-01 → MSCLoader (the mod manager) → the mods, layer by layer |
| `guide/20-modlist.typ` | The curated modlist: pillars, mod cards, rejected mods with reasons |
| `guide/30-how-to-play.typ` | Field manual: daily loop, jobs, building the Corris Rivett, cold starts, winter driving, engineering terms, the modded experience |
| `guide/40-personas.typ` | Five personas: background + game creation choices (strategy, jobs, house rules, goals) |

## Build the PDF

- `build-pdf.bat` → compiles to `output/Routa.pdf`
- Requires Typst 0.15+ (`winget install Typst.Typst`)
- Cover emblem: `tools/make-logo.py` → `assets/logo.jpg` (PIL; regenerate with `python tools/make-logo.py assets/logo.jpg`)

## Sources

- My Winter Car (Steam): <https://store.steampowered.com/app/4164420> — Early Access since 2025-12-29; latest verified build v.260516-01 (2026-05-16); Steam News Hub: <https://store.steampowered.com/news/app/4164420>
- MSCLoader (for My Winter Car — the mod manager): <https://www.nexusmods.com/mywintercar/mods/3> · <https://github.com/piotrulos/MSCModLoader>
- Nexus Mods — My Winter Car hub: <https://www.nexusmods.com/mywintercar>
- My Winter Car Wiki (mechanics facts): <https://my-winter-car.fandom.com>

Game, loader and mod versions drift; the guide pins what was verified at build time (August 2026) and points to each mod's page for the current version.
