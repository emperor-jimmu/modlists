# Stellaris Modlist Guide — Design Spec

## Overview

A structured, versioned guide for playing modded Stellaris (2026, all DLC) on Windows. The repo serves both as a personal reference and a publishable PDF guide. It teaches Stellaris fundamentals while providing a curated modlist spanning bugfixes, audio, UI/HUD, graphics, AI & diplomacy, economy & automation, warfare & ships, technology, events & story, origins & civics, species/genetics/portraits, and galaxy & setup — with explicit exclusion of cheating/overpower mods.

## Tools

- **Mod Manager:** Mod Organizer 2 (MO2) — version-locks mods, uses virtual filesystem, profiles separate from vanilla
- **Site + PDF:** MkDocs + Material theme + mkdocs-exporter — Playwright-based PDF with custom SCSS styling
- **Versioning:** Plain `VERSION` file at repo root, consumed by build scripts for PDF metadata

## Repo Structure

```
stellaris-modlist/
├── README.md                  # Project intro, badges, quick links
├── AGENTS.md                  # AI assistant instructions for this project
├── VERSION                    # Single-line version (e.g. "1.0")
├── mkdocs.yml                 # MkDocs config (Material theme + exporter plugin)
├── docs/
│   ├── index.md               # Guide overview + version badge
│   ├── getting-started.md     # Stellaris 101 — galaxy setup, basic mechanics
│   ├── modlist-setup.md       # MO2 install, configure, version-lock, handle game updates
│   ├── missing-mods.md        # Research/planning: mods that need custom development
│   ├── modlist/               # Modlist by category
│   │   ├── bugfixes.md
│   │   ├── audio.md
│   │   ├── ui-hud.md
│   │   ├── graphics.md
│   │   ├── ai-diplomacy.md
│   │   ├── economy-automation.md
│   │   ├── warfare-ships.md
│   │   ├── technology.md
│   │   ├── events-story.md
│   │   ├── origins-civics.md
│   │   ├── species-portraits.md
│   │   └── galaxy.md
│   ├── load-order.md          # Load order rules + MO2 separator reference
│   ├── starting-a-game.md     # New modded game walkthrough — origins, settings, balance
│   ├── performance.md         # Empirical benchmarks: FPS, load times, stutter
│   └── appendix.md            # Glossary, troubleshooting, mod credits
├── stylesheets/
│   └── pdf.scss               # PDF styles: fonts, page numbers, running headers
├── covers/
│   ├── front.html.j2          # Front cover template (reads VERSION)
│   └── back.html.j2           # Back cover template
├── mo2-separators.json        # 12 color-graded separator definitions
└── scripts/
    └── build.ps1              # One-command build: site + PDF, injects VERSION
```

## Design Decisions

### Why MO2

- Version-locks mods (auto-update doesn't break campaigns)
- Virtual filesystem keeps Stellaris install clean
- Profiles let you switch mod sets without re-subscribing
- Graphical separators with custom colors for category grouping

### Why mkdocs-exporter

- Playwright/Chromium on Windows — no LaTeX or WSL
- Full SCSS/CSS paged media control for beautiful PDF
- Cover page support, page numbers, running headers
- Single command produces both web site and PDF
- Screenshots render identically in both formats

### Versioning

- `VERSION` file at root — one line, semver-style (e.g. `1.0`)
- Build script reads it, injects into MkDocs config, PDF covers, and page footers
- Bump version when modlist changes significantly

## Content Outline

| Doc | Audience | Purpose |
|-----|----------|---------|
| `index.md` | Everyone | Guide overview, version, scope, table of contents |
| `getting-started.md` | True beginners | Galaxy setup, basic mechanics, diplomacy, war, economy |
| `modlist-setup.md` | Everyone | MO2 walkthrough, where to find mods, version locking, handling Stellaris updates |
| `modlist/*.md` | Everyone | Curated ~60-120 mods grouped by 12 categories |
| `missing-mods.md` | Planning | Wishlist for custom mod development |
| `load-order.md` | Everyone | MO2 load order rules + 12-separator system |
| `starting-a-game.md` | Beginners+ | Origin picks, galaxy settings, game rules for a balanced run |
| `performance.md` | Enthusiasts | FPS benchmarks, load time comparison, per-mod impact notes |
| `appendix.md` | Everyone | Glossary, troubleshooting, credits |

## 12 Mod Categories & Separators

| # | Category | Color | Description |
|---|----------|-------|-------------|
| 1 | Bugfixes | Red | Fix vanilla bugs and oversights |
| 2 | Audio | Brown | Music, ambience, sound effects |
| 3 | UI & HUD | Blue | Interface, tooltips, icons, menus |
| 4 | Graphics | Purple | Textures, lighting, map, portraits |
| 5 | AI & Diplomacy | Green | AI behavior, diplomacy, federations, GC |
| 6 | Economy & Automation | Dark Green | Resources, jobs, sectors, auto-management |
| 7 | Warfare & Ships | Orange | Combat, ship classes, fleet mechanics |
| 8 | Technology | Deep Blue | Tech tree, repeatables, rare techs |
| 9 | Events & Story | Yellow | Anomalies, archaeology, event chains |
| 10 | Origins & Civics | Dark Brown | Starting options, government types |
| 11 | Species, Genetics & Portraits | Pink | Traits, genetics, hybridization, portraits |
| 12 | Galaxy & Setup | Teal | Galaxy size, hyperlanes, planet diversity |

## Version Management

- Guide's `VERSION` file tracks the modlist version
- Stellaris version noted alongside (e.g., "3.12 - Andromeda")
- When Stellaris updates: guide documents how to revert via Steam Betas tab
- Most mods break on new versions — this is explicitly warned
- New MO2 profile recommended for version upgrades

## Non-Goals

- Cheating or overpowered mods (explicitly excluded)
- Total conversion overhauls (beyond scope of "more of everything")
- Multiplayer-focused tuning
- Linux/macOS support (Windows guide)

## Zero-Screenshot MVP

The guide is usable without any screenshots — markdown text is sufficient. Screenshots are additive polish for the PDF version, added when convenient.

## Implementation Order

1. Set up MkDocs + Material + exporter scaffolding (mkdocs.yml, build script)
2. Write `getting-started.md` (Stellaris tutorial)
3. Write `modlist-setup.md` (MO2 guide + version management)
4. Populate `modlist/` files (curate mods by 12 categories)
5. Write `load-order.md` + create `mo2-separators.json`
6. Write `starting-a-game.md`
7. Write `performance.md` (placeholder benchmarks)
8. Write `index.md`, `missing-mods.md`, and `appendix.md`
9. Style `pdf.scss`, design covers
10. Do a test PDF build and polish
