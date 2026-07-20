# Welcome to the Valley — AGENTS.md

## Project Purpose

A curated Stardew Valley modlist guide for first-time players. Teaches vanilla mechanics alongside the modded experience, outputs a polished PDF handbook via Pandoc.

## Project Structure

```
stardew-valley-modlist/
├── docs/
│   ├── assets/              # images, fonts
│   ├── guide/               # guide chapters + mod catalog
│   │   ├── 01-setup.md
│   │   ├── 02-vanilla-primer.md
│   │   ├── 03-mod-catalog/  # numbered mod category files
│   │   ├── 04-modded-gameplay.md
│   │   └── 05-mo2-separators.md
│   ├── performance/         # FPS/load time benchmarks
│   └── superpowers/         # specs, plans
├── scripts/
│   ├── build.ps1            # builds the PDF
│   └── template.html        # Pandoc HTML template
├── AGENTS.md
└── README.md
```

## Game Version

**Target: Stardew Valley 1.6.15** (verify at https://stardewvalleywiki.com/Version_History)

Every mod added to the catalog MUST be compatible with 1.6.15 (or at minimum 1.6). If a mod has not been updated for 1.6, do NOT add it under any circumstances.

## Adding a New Mod to the Catalog

1. Find the correct category file in `docs/guide/03-mod-catalog/`
2. Add the mod entry following the existing format:
   - Mod name with a download URL (NexusMods link, or note "Bundled with SMAPI" if applicable)
   - Brief description of what it does
   - Installation notes (if any)
   - Load order placement
   - Performance impact notes (if known)
   - **Every mod MUST include its download URL** — no exceptions
3. Update `docs/performance/03-mod-impact.md` if the mod has meaningful performance impact

## Build Commands

```powershell
# Build the full PDF guide
./scripts/build.ps1

# Output: welcome-to-the-valley-guide.pdf in project root
```

## PDF Styling

- Template: `scripts/template.html`
- Fonts: Open Sans (body), Lora (headings) in `docs/assets/fonts/`
- Dependencies: Pandoc + wkhtmltopdf

## Performance Testing

- Baseline: Vanilla SDV at 4K
- Test per mod category in isolation
- Metrics: FPS (avg/min), load times at key locations
- Results in `docs/performance/` as markdown tables

## MO2 Separators

- One top-level separator per mod category (15 total)
- Each with a distinct color; subcategory separators use gradient
- Documented in `docs/guide/05-mo2-separators.md`

## Web Browsing

If you need to browse web pages that don't work with standard tools, use Playwright (available as a tool in this environment).

## Conventions

- Markdown files use `##` for chapter headings, `###` for section headings
- File names are zero-padded numbers for ordering (e.g., `01-bugfixes.md`)
- Keep performance data factual — note "not tested" rather than guessing
- **No cheat/overpowered mods:** no mods that give free money, infinite stamina, god-mode tools, instant level-ups, time manipulation, or anything that bypasses core progression mechanics. Likewise no "knowledge mods" that reveal all NPC schedules, fish bite times, or Luck values without earning them in-game. If a mod eliminates the need to learn the game's systems, it doesn't belong here.
- **Adult mods** (expanded dialogue, seasonal outfits, dating expansion, suggestive but non-explicit content) are fine. Overtly pornographic/explicit mods are not.
- No multiplayer mods.
- **Version rule:** Every mod MUST be compatible with SDV 1.6.15 (or at minimum 1.6). Check the mod's Nexus page and SMAPI compatibility list before adding.
