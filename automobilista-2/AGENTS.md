# AGENTS.md — Torque Ascension

## Mission

Build a structured, progressive mod-list and comprehensive game guide for Automobilista 2 (V1.6+), using AMS2 Content Manager. The guide follows a career/discipline progression from karts through to Formula 1-class racing, with curated mods at each wave that enhance the experience without overwhelming new players.

## Design Pillars

1. **Career Progression** — Four waves (Rookie → National → International → World Championship) mirror real racing license tiers and AMS2's discipline range
2. **Quality Curation** — AMS2's mod ecosystem is ~70% skins, ~25% tools/apps, ~5% cars/tracks. A curated list of 20-35 hand-picked mods beats a dump of 200 skins
3. **Print-First** — The PDF is the primary artifact. All content is written in markdown, rendered via Typst + `cmarker`. Every table, callout, and mod panel must render correctly in the PDF
4. **No Fabrication** — Every mod URL must be verified and clickable. No placeholder URLs, no guessed version numbers, no speculative compatibility claims
5. **Beginner-Friendly** — Wave 0 assumes zero sim-racing experience. Each wave builds on the last. Terminology is defined in the glossary. Configuration steps are explicit

## File Layout

| File | Purpose |
|------|---------|
| `VERSION` | Single source of truth for version number (e.g. `1.0.0`) |
| `STATUS.md` | Decision log, mod approval/rejection log, conflict resolutions |
| `mod-ideas.md` | Future mod candidates (NOT in PDF); graduate to STATUS.md after verification |
| `conflicts-mods.md` | Mod conflict documentation (NOT in PDF) |
| `README.md` | Quick-start for users: structure, build command, prerequisites |
| `AGENTS.md` | This file — project instructions for agentic workers |
| `.gitignore` | Excludes `output/` and `*.pdf` |
| `assets/logo.jpg` | Cover page art |
| `assets/fonts/` | Montserrat, Inter, JetBrains Mono TTF files (auto-downloaded) |
| `assets/screenshots/` | Guide screenshots (AMS2CM UI, in-game, settings) |
| `guide/00-install.md` | AMS2CM setup, DLC table, game configuration |
| `guide/01-wave-0-rookie.md` | Rookie License: karts, Formula Trainer/Vee, first laps |
| `guide/02-wave-1-national.md` | National License: GT4, P4, Copa Classics, strategy basics |
| `guide/03-wave-2-international.md` | International License: GT3, F3, Group C, endurance, telemetry |
| `guide/04-wave-3-championship.md` | World Championship: F1-class, LMDh/GTP, setup engineering |
| `guide/appendix-mod-reference.md` | Master mod table, mods by wave, DLC reference |
| `guide/appendix-glossary.md` | A-Z racing terminology |
| `templates/style.typ` | Typst module: fonts, colors, page defaults, reusable components |
| `templates/guide.typ` | Main Typst template — imports style, renders each `.md` via cmarker |
| `scripts/generate-pdf.ps1` | Build script: font download, version read, typst compile |

## Wave Structure

| Wave | Name | Content Focus | Expected Mods |
|------|------|---------------|---------------|
| 0 | Rookie License | Full how-to-play: controls, assists, UI, first laps. Karts + Formula Trainer/Vee at short tracks | 3-6 (AMS2CM setup, essential HUD/UI mods) |
| 1 | National License | GT4, P4, Copa Classics. Mid-length tracks. Strategy basics | 5-10 (skin packs, first SimHub overlays) |
| 2 | International License | GT3, Stock Car Brasil, F3, Group C. Endurance. Telemetry intro | 8-15 (season skin packs, FFB mod, telemetry dashboards) |
| 3 | World Championship | F1-class, LMDh/GTP, historic F1. Full endurance. Setup engineering | 10-15 (career apps, pro dashboards, car mods, historic skins) |

Mods accumulate across waves. Total unique mods across all waves: ~20-35.

## Mod Entry Format

Every mod in a guide chapter uses this exact markdown template:

```markdown
### [Mod Name](https://verified-url.com) `vX.Y.Z`
**Source:** OverTake.gg
**Wave:** 0 | 1 | 2 | 3
**Category:** Skins/Liveries | Career App | Dashboard/Overlay | Custom FFB | Car Mod | AI Files
**Dependencies:** None | list
**AMS2CM Install:** (specific steps — copy to bootfiles folder, import skin, etc.)

**What it does:** One paragraph.

**Why:** How it serves this wave's experience.

**Notes:** Load order, configuration, known issues, alternatives.
```

Category color mapping (for Typst mod panels):
- Skins/Liveries → `#cc2936` (red)
- Career App → `#f4a261` (orange)
- Dashboard/Overlay → `#1d3557` (blue)
- Custom FFB → `#2a9d8f` (green)
- Car Mod → `#6a4c93` (purple)
- AI Files → `#6a4c93` (purple)

## Research Pipeline

Before any mod is added to the guide:

1. **Search** — OverTake.gg AMS2 categories (196=Cars, 197=Skins/Liveries, 198=Misc/Career/FFB/Dashboards). Sort by rating/downloads
2. **Verify** — Last update date against target version (V1.6.9.91, July 2026). Pre-V1.6 mods need compatibility check
3. **Evaluate** — Does it serve the wave's experience? Is quality sufficient?
4. **Approve or Reject** — Log decision in `STATUS.md` with rationale
5. **Add to Guide** — Only after approval. Include verified URL in the mod entry
6. **Unverifiable Mods** — Dead links, unknown versions, uncertain compatibility → `mod-ideas.md`

## Conventions

- **Mods placeholder until provided.** All guide chapters contain `<!-- MODS: Pending — (description) -->` stubs. Fill these in only with user-provided, verified mods
- **All decisions in STATUS.md.** Architectural choices, mod approvals/rejections, conflict resolutions — everything goes in STATUS.md
- **No fabrication.** Every URL must be verified and clickable. Every version number must be confirmed from the source. Every compatibility claim must be checked against AMS2 V1.6+
- **PDF after every change.** Run `./scripts/generate-pdf.ps1` after any guide content change. If it fails to compile, fix before continuing
- **Version from VERSION file.** Build script and template read version from `VERSION` — never hardcode version numbers elsewhere
- **Mods accumulate across waves.** A Wave 3 mod list includes all Wave 0-2 mods plus Wave 3 additions. The appendix mod reference table shows the full list
- **AMS2CM is the only supported mod organizer.** Installation steps in mod entries reference AMS2CM workflows (bootfiles, skins import, AI file management)
- **DLC is optional but recommended.** Each wave notes which DLC is relevant. Base game is always the default
