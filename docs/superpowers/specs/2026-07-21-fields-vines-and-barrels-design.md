# Fields, Vines & Barrels — Design Document

## Overview

A Farming Simulator 25 modlist and gameplay guide organized as three progressive "waves," each a separate playthrough with a unique roleplaying backstory. Mods are cumulative — each wave adds on top of the previous wave's modlist.

- **Game version**: Farming Simulator 25 v1.20.0.0 (June 23, 2026)
- **Mod Manager**: Mod Manager V0.7.11 (https://fs25.net/mod-manager-v0-7-11/)
- **Project name**: Fields, Vines & Barrels
- **Target audience**: New to experienced FS25 players

## Wave Structure

### Wave 0 — "The Homestead"
- **Map**: Calmsden Farm (small UK farm, tight lanes, limited land)
- **Backstory**: You've inherited a small, run-down family farm. Almost no equipment, no debt. Learn the basics, earn your first tractor.
- **Mod philosophy**: Vanilla gameplay. Only UI, QoL, and visual/graphics mods. Reshade is set up here and carries forward.
- **Guide content**: Complete how-to-play guide — plowing, seeding, fertilizing, harvesting, animals, contracts, leasing.

### Wave 1 — "Fields, Vines & Barrels"
- **Map**: Le Mechet (French vineyard map, winery/brewery gameplay)
- **Backstory**: After years of saving, you buy a neglected vineyard property. Restore the vines, build a winery, produce your first vintage.
- **Mod philosophy**: Adds mid-tier vehicles, implements, winery/brewery production chains, expanded placeables.
- **Guide content**: Intermediate strategy — wine/beer production chains, field management at scale, worker coordination.

### Wave 2 — "Empire"
- **Map**: TBD — to be researched during implementation. Candidate: American Falls (large US map, industrial scale, rail system, big fields). Must verify availability & compatibility with FS25 v1.20.0.0. Fallback: any large US/Canadian map available on modhub.
- **Backstory**: You're now a landed agricultural magnate. Expand into industrial-scale operations, complex supply chains, max-difficulty contracts.
- **Mod philosophy**: High-horsepower equipment, precision farming, advanced economy mods, supply chain expansions, difficulty increase.
- **Guide content**: Advanced economy — margins, contracts, leasing strategies, supply chain optimization, max-difficulty settings.

## Project Structure

```
fs25-modlist/
├── AGENTS.md               # opencode instructions for maintaining this project
├── README.md               # Project overview, usage, PDF rebuild instructions
├── build-pdf.bat           # Batch script to regenerate the PDF
├── assets/
│   └── logo.png            # Cover page logo
├── docs/
│   └── superpowers/
│       └── specs/
│           └── 2026-07-21-fields-vines-and-barrels-design.md
├── guide/
│   ├── mod-manager.md      # Mod Manager V0.7.11 install & config guide
│   ├── reshade.md           # Reshade installation, presets, configuration (standalone reference)
│   ├── wave-0/
│   │   ├── story.md
│   │   ├── getting-started.md
│   │   ├── 01-map.md
│   │   ├── 02-visuals-reshade.md   # Lists Reshade presets & visual mods for W0
│   │   ├── 03-ui-qol.md
│   │   ├── 04-vehicles.md
│   │   ├── 05-implements.md
│   │   ├── 06-placeables.md
│   │   └── 07-gameplay.md
│   ├── wave-1/
│   │   ├── story.md
│   │   ├── strategy.md
│   │   ├── 01-map.md
│   │   ├── 02-ui-qol.md
│   │   ├── 03-vehicles.md
│   │   ├── 04-implements.md
│   │   ├── 05-placeables.md
│   │   ├── 06-production-economy.md
│   │   └── 07-gameplay.md
│   └── wave-2/
│       ├── story.md
│       ├── strategy.md
│       ├── 01-map.md
│       ├── 02-ui-qol.md
│       ├── 03-vehicles.md
│       ├── 04-implements.md
│       ├── 05-placeables.md
│       ├── 06-production-economy.md
│       └── 07-gameplay.md
├── conflicts.md            # Known mod conflicts & incompatibilities
├── mod-ideas.md            # Future mod development ideas
└── output/                 # Generated PDF output
    └── fields-vines-and-barrels.pdf
```

### Reshade docs — which file does what

| File | Purpose |
|------|---------|
| `guide/reshade.md` | Standalone reference: how to install Reshade for FS25, recommended preset sources, performance tweaks, common issues. Read once, applies to all waves. |
| `guide/wave-0/02-visuals-reshade.md` | Wave-specific mod list: which Reshade preset, lighting mod, weather mod, and skybox mods to install for Wave 0. |

## Mod Categories

Each wave's mod files list only the mods *added* in that wave. Categories:

| # | Category | Includes |
|---|----------|----------|
| 1 | Map | The wave's map mod |
| 2 | Visuals & Reshade | Reshade presets, lighting, weather, skyboxes (Wave 0 only) |
| 3 | UI & Quality of Life | HUD enhancements, menu improvements, convenience tools |
| 4 | Vehicles | Tractors, trucks, harvesters, loaders |
| 5 | Implements & Attachments | Plows, seeders, cultivators, trailers, mowers |
| 6 | Placeables & Buildings | Sheds, greenhouses, animal pens, storage |
| 7 | Production & Economy | Production chains, winery/brewery, processing plants |
| 8 | Gameplay & Difficulty | Precision farming, contracts, worker AI, difficulty |

## Mod Entry Format

Every mod listed in a category file follows this schema:

```markdown
| Mod Name | Author | Source | Version | Notes |
|---|---|---|---|---|
| Example Tractor | Modder123 | ModHub | 1.2.0 | Replaces base-game X. Requires Y. |
```

- **Mod Name**: Exact name as displayed in-game or on source page
- **Author**: Creator name
- **Source**: Where to download (ModHub, GitHub, KingMods, direct URL)
- **Version**: Last tested version
- **Notes**: Dependencies, incompatibilities, special install steps

## Mod Sourcing & Verification

### Sources (priority order)
1. **Official ModHub** (in-game or farming-simulator.com) — preferred, auto-version-checked
2. **GitHub** — author's official release page
3. **KingMods / other aggregators** — cross-reference with ModHub for version compatibility
4. **Direct links** — only when no other source exists

### Verification process for each mod
1. Check source page for FS25 v1.20.0.0 compatibility
2. Note the version string
3. Cross-reference with conflicts list
4. Check for known issues in comments/reviews
5. Test: load wave's full modlist in-game, verify no script errors on startup
6. Test: interact with the mod in gameplay for 5 minutes (drive the vehicle, place the building, etc.)

### Fallback rule
If a mod is not verified for v1.20.0.0, mark it with a `⚠` prefix in the Notes column. If no verified alternative exists, record it in `mod-ideas.md`.

## Per-Wave Install Instructions

Each wave's output section in the PDF opens with:

1. **Prerequisites**: List of previous waves' mods you must have installed
2. **New mods**: All mods listed by category (cumulative list for that wave)
3. **Mod Manager import**: Instructions to import the wave's modlist JSON
4. **Load order**: Any specific ordering requirements
5. **First launch**: Settings to verify in-game (graphics, keybinds, Reshade)

## Mod Addition Rules

1. No conflicting mods
2. No adult/pornographic content for FS25
3. No redundant mods
4. All mods must be compatible with FS25 v1.20.0.0
5. No cheating, overpowered, or all-knowing mods

## PDF Generation

### Prerequisites
- Pandoc (>= 2.18)
- XeLaTeX (TinyTeX or full TeX Live)
- Install check: `build-pdf.bat` must verify both tools exist before attempting build

### Explicit file order
PDF page order is defined explicitly (not via glob) to prevent filesystem-dependent sorting:

```
pandoc ^
  guide/mod-manager.md ^
  guide/reshade.md ^
  guide/wave-0/story.md ^
  guide/wave-0/getting-started.md ^
  guide/wave-0/01-map.md ^
  guide/wave-0/02-visuals-reshade.md ^
  guide/wave-0/03-ui-qol.md ^
  guide/wave-0/04-vehicles.md ^
  guide/wave-0/05-implements.md ^
  guide/wave-0/06-placeables.md ^
  guide/wave-0/07-gameplay.md ^
  guide/wave-1/story.md ^
  guide/wave-1/strategy.md ^
  guide/wave-1/01-map.md ^
  guide/wave-1/02-ui-qol.md ^
  guide/wave-1/03-vehicles.md ^
  guide/wave-1/04-implements.md ^
  guide/wave-1/05-placeables.md ^
  guide/wave-1/06-production-economy.md ^
  guide/wave-1/07-gameplay.md ^
  guide/wave-2/story.md ^
  guide/wave-2/strategy.md ^
  guide/wave-2/01-map.md ^
  guide/wave-2/02-ui-qol.md ^
  guide/wave-2/03-vehicles.md ^
  guide/wave-2/04-implements.md ^
  guide/wave-2/05-placeables.md ^
  guide/wave-2/06-production-economy.md ^
  guide/wave-2/07-gameplay.md ^
  --pdf-engine=xelatex ^
  --template=template.tex ^
  -o output/fields-vines-and-barrels.pdf
```

### Tooling
- **Engine**: Pandoc + XeLaTeX (TinyTeX)
- **Template**: Custom LaTeX template
- **Cover**: Logo centered, title "Fields, Vines & Barrels", subtitle "A Farming Simulator 25 Modlist & Guide"
- **Colors**: Deep green (#2D5A27) headers, warm gold (#C8A84E) accents
- **Fonts**: Serif (Utopia / TeX Gyre Termes) body, sans-serif headings
- **Build script**: `build-pdf.bat`

### Fallback (no LaTeX)
If Pandoc is available but XeLaTeX is not, fall back to `--pdf-engine=pdfhtml` (HTML → PDF via browser engine). Quality is lower but still usable.

## Visual Style (PDF)

- Dark green (#2D5A27) for part/chapter headings
- Gold (#C8A84E) for accents, rules, and decorative elements
- Clean, readable layout suitable for both screen and print
- Story pages as chapter openers with atmospheric treatment
- Mod tables with clear columns: Name, Author, Source, Version, Notes

## Quality Gate

Before marking a wave complete:

1. **File audit**: All category files exist and have content (not just headers)
2. **Mod source audit**: Every mod entry has a valid source URL or known ModHub location
3. **Conflicts check**: Conflicts file reviewed; no mod conflicts in wave
4. **Dependency check**: Every mod dependency is either in the modlist or documented
5. **In-game test**:
   - Load wave modlist in Mod Manager
   - Start new game on the wave's map
   - Verify no script errors on load
   - Verify each mod interacts correctly (drive vehicle, place building, activate production)
6. **PDF build**: Run `build-pdf.bat` and verify the output opens correctly

## Conflicts File Schema (`conflicts.md`)

```markdown
# Known Mod Conflicts

## [Mod A] + [Mod B]
- **Symptom**: What breaks
- **Cause**: Why they conflict (e.g., both override same file)
- **Resolution**: Which to keep, workaround, or known compatible versions

## [Mod C] + [Mod D]
...
```

## Mod Ideas File Schema (`mod-ideas.md`)

```markdown
# Mod Development Ideas

## [Idea Name]
- **Purpose**: What it would do
- **Wave**: Which wave it belongs in
- **Why it's missing**: No existing mod fills this niche
- **Notes**: Implementation thoughts, references
```

## Getting-Started Guide Outline (`guide/wave-0/getting-started.md`)

The definitive beginner tutorial for FS25. Covers:

1. **First launch**: settings, controls, keybindings
2. **The farm yard**: buildings, silos, workshop, animal pens
3. **Basic field work**: plow → cultivate → seed → fertilize → weed → harvest
4. **Crop types**: grain, root crops, grass, special crops
5. **Animals**: buying, feeding, collecting products
6. **Contracts**: how they work, when to use them
7. **Economy basics**: loans, leasing vs. buying, repairs, seasons
8. **Production chains**: raw → processed → sell
9. **Mod Manager**: how to install, enable, and manage mods
10. **Reshade**: brief reference (links to guide/reshade.md for details)
