# ETS2 Modlist Guide — Design Document

## Overview

A structured repository for an ETS2 (Euro Truck Simulator 2) modlist guide targeting game version **1.60**. The guide compiles curated mods across categories (maps, graphics, trucks, gameplay, trailers) into a professional **PDF** generated via **Typst** from markdown source files.

The modlist prioritizes: better graphics, more truck variety, more maps, more gameplay mechanics, and role-playing depth. It explicitly excludes overpowering/cheating mods. All non-map mods should match game version 1.60; map mods must be confirmed 1.60-compatible.

## Goals

- Generate a final PDF guide for installing and playing the modlist
- Include a getting-started section for new players
- Include a performance section with controlled benchmarks
- Include a missing-mods catalog for mod ideas to potentially build
- All mods sourced from user-specified sites (not Steam Workshop)
- Base resolution: 4K

## Repo Structure

```md
ets2-modlist/
├── README.md                           # Repo overview, links to PDF
├── sources/                            # Markdown source files (one per category)
│   ├── 00-introduction.md              # Purpose, game version, scope
│   ├── 01-getting-started.md           # Buying the game, DLCs, basic gameplay, role-playing (goals, who to be, company naming)
│   ├── 02-mod-manager.md               # Truck Mod Manager setup & usage
│   ├── 03-configuration.md             # Base config.cfg tweaks, mod configs, 4K graphics settings
│   ├── 04-maps.md                      # ProMods + ME + curated maps
│   ├── 05-graphics.md                  # Texture packs, lighting, Reshade
│   ├── 06-weather.md                   # Weather, skyboxes, seasons, environment
│   ├── 07-trucks.md                    # Truck models, dashboards
│   ├── 08-audio.md                     # Engine sounds, music, radio, ambient audio
│   ├── 09-gameplay.md                  # Traffic, economy, QoL, role-playing mechanics
│   ├── 10-trailers.md                  # Cargo packs, trailer skins
│   ├── 11-load-order.md                # Exact load order with priority levels
│   ├── 12-installation.md              # Step-by-step install guide with screenshots
│   ├── 13-performance.md               # Benchmark methodology & results
│   ├── 14-troubleshooting.md           # Known issues, crashes, conflicts
│   └── 15-missing-mods.md              # Catalog of desired mods that don't exist yet
├── screenshots/                        # Images for PDF
│   ├── installation/
│   ├── maps/
│   ├── graphics-compare/
│   └── benchmarks/
├── assets/                             # Fonts, logos
├── build.typ                           # Typst master file — imports all sources → PDF
├── build.ps1                           # Script to compile Typst → PDF
└── .gitignore
```

## Mod Manager

**Truck Mod Manager** (cortexstudiosinfo/ETS2-MOD-MANAGER-UI) — Python GUI app, updated June 2026. Features auto profile detection, drag & drop load order management, local + Workshop mod detection, cloud presets, crash reporting.

## PDF Table of Contents

1. **Introduction** — what this modlist is, goals, game version (1.60), mod sourcing philosophy
2. **Getting Started** — buying the game, required DLCs, basics of playing, controls overview, role-playing (defining your goals, who you want to be, company naming, role-playing prompts)
3. **Mod Manager** — Truck Mod Manager installation, setup, profile management
4. **Configuration** — base config.cfg tweaks (buffer/page sizes, console), mod-specific configs, recommended 4K graphics settings
5. **Modlist by Category:**
   - Maps (ProMods + Middle East + 2-3 curated maps)
   - Graphics (texture packs, lighting, Reshade)
   - Weather & Environment (weather, skyboxes, seasons, vegetation)
   - Trucks & Interiors (new truck models, dashboards)
   - Audio (engine sounds, music, radio, ambient)
   - Gameplay & Role-Playing (traffic, economy, company management, fatigue, realism)
   - Trailers & Cargo (cargo packs, trailer skins, oversized loads)
6. **Load Order Guide** — exact priority order per mod category, conflict resolution rules
7. **Installation Guide** — step-by-step with screenshots
8. **Performance & 4K Baseline** — benchmark methodology, results, charts, recommended settings
9. **Troubleshooting** — common crashes, fixes, known conflict resolutions
10. **Missing Mods Catalog** — desired mods that don't exist, design sketches for potential implementation

## Mod Entry Format

Each mod in the source markdown files follows a structured block:

```markdown
## Mod Name

- **Version:** 1.60
- **Source:** [ets2mods.lt](URL)
- **Category:** Maps

**Description:**
What the mod does.

**Compatibility:**
- Known conflicts with: [mod name]
- Required load order: Below map base

**Performance Impact:**
- FPS cost: 2-5 FPS on 4K ultra
- VRAM usage: +500 MB

**Configuration:**
Any in-mod settings or file edits needed.
```

## Load Order System

Load order is divided into priority tiers (1 = highest/first in manifest):

| Priority | Category                      | Notes           |
|----------|-------------------------------|-----------------|
| 1        | Map base (ProMods)            | Must be at top  |
| 2        | Map addons (ME, RusMap, etc.) | Below base maps |
| 3        | Graphics                      | Below maps      |
| 4        | Weather/Environment           | Below graphics  |
| 5        | Audio (sounds, music)         | Below weather   |
| 6        | Trucks/Interiors              | Below audio     |
| 7        | Gameplay/Economy              | Below trucks    |
| 8        | Trailers/Cargo                | Below gameplay  |
| 9        | Traffic packs                 | Bottom          |

## Performance Methodology

Controlled benchmarks: same route, same time-of-day, same weather conditions, logged with MSI Afterburner. FPS/1% lows recorded. Charts comparing:

- Vanilla (no mods)
- Full modlist
- Per-category impact (e.g., graphics mods only vs gameplay mods only)

## Missing Mods Catalog

Each entry in `13-missing-mods.md` includes:

- **Concept:** What the mod should do
- **Why it doesn't exist:** Research into why this gap exists
- **Design sketch:** Proposed implementation approach
- **Priority:** Low/Medium/High based on role-playing value

## Mod Sourcing

All mods sourced exclusively from:

- ets2world.com
- ets2mods.lt
- ets2.lt/en
- modland.net
- truckymods.io
- modhub.us
- terramaps.net
- Promods official site
- forum.scssoft.com (SCS Software official forums — mod releases, compatibility announcements)

No Steam Workshop sources.

## Tech Stack

- **Source format:** Markdown (one file per category)
- **PDF generation:** Typst
- **Mod management:** Truck Mod Manager
- **Benchmarking:** MSI Afterburner + manual logging
- **Screenshots:** In-game screenshot tools + image editing
