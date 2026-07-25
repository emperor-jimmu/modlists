# Beneath a Crimson Banner — Modlist & Guide Project Design

## Overview

A structured modlist and game guide for **Total War: Three Kingdoms v1.7.2**, organized into three progressive waves of difficulty and content. Generated as a colorful PDF via Typst 0.15.

## Project Structure

```
total-war-three-kingdoms-modlist/
├── AGENTS.md                     # AI workspace instructions
├── README.md                     # Project overview
├── assets/
│   └── logo.jpg                  # Cover logo
├── fonts/                        # Downloaded fonts (populated by install-fonts.bat)
├── guide/
│   ├── 00-wave0/
│   │   ├── mods.yaml             # Wave 0 mod list (structured data)
│   │   ├── 01-introduction.md    # Wave intro + roleplaying backstory
│   │   └── 02-how-to-play.md     # Complete how-to-play guide
│   ├── 01-wave1/
│   │   ├── mods.yaml
│   │   ├── 01-introduction.md    # Wave 1 roleplay + setup
│   │   └── 02-strategy.md        # Advanced strategy guide
│   └── 02-wave2/
│       ├── mods.yaml
│       ├── 01-introduction.md    # Wave 2 roleplay + setup
│       └── 02-strategy.md        # Expert strategy guide
├── output/                       # Generated PDFs
├── conflicts.yaml                # Known mod conflicts (NOT in PDF)
├── mod-ideas.yaml                # Future mod ideas (NOT in PDF)
├── template/
│   ├── main.typ                  # Typst entry point
│   ├── cover.typ                 # Cover page
│   ├── toc.typ                   # Table of contents
│   ├── wave-section.typ          # Wave renderer (YAML + markdown)
│   ├── mod-entry.typ             # Mod entry card renderer
│   └── styles.typ                # Colors, fonts, theme
├── setup-installation-guide.md   # TW Mod Manager setup + general mod installation
├── scripts/
│   └── install-fonts.bat         # Downloads and installs required fonts
└── build.bat                     # Batch file → typst compile
```

## Waves

| Wave | Difficulty | Roleplay Theme                              | Content Focus                                             |
|------|------------|---------------------------------------------|-----------------------------------------------------------|
| 0    | Normal     | Warlord rising from obscurity               | Vanilla + UI/QoL mods only. Complete how-to-play guide.   |
| 1    | Hard       | Established kingdom facing external threats | Graphics, more content, deeper mechanics. Strategy guide. |
| 2    | Legendary  | Empire at its breaking point                | Full overhaul suite, expert mechanics. Expert strategy.   |

## Mod Entry Schema (mods.yaml)

```yaml
mods:
  - name: "Mod Name"
    url: "https://nexusmods.com/..."
    author: "AuthorName"
    version: "1.2.3"
    category: "ui" | "graphics" | "mechanics" | "content" | "qol" | "audio"
    wave: 0
    description: "What the mod does"
    dependencies: ["Dependency Mod Name"]
    conflicts:
      - mod: "Conflicting Mod"
        resolution: "Load Order: X before Y" | "Choose one" | "Patch at URL"
    mechanic_impact: "Overhauls the spy system" | null
    adult: false
    notes: "Installation caveats if any"
```

## Mod Rules

- No conflicting mods
- No porn mods (adult/nude okay if relevant and in doubt → ask user)
- No redundant mods or mods incompatible with v1.7.2
- No cheating/overpower/all-knowing mods
- Graphics, content, mechanics mods for advanced waves only

## PDF Generation (Typst 0.15)

### Template File Structure

- `main.typ` — Entry point: page setup (`#set page(numbering: "1")` to enable page counter for TOC), fonts, includes sections
- `cover.typ` — Cover page: large logo (`image("logo.jpg", height: 45%)`), title, accent line
- `toc.typ` — Table of contents (level 1 headings only) via `query(heading.where(level: 1))`
- `wave-section.typ` — Renders wave intro markdown + loads `mods.yaml` via `yaml()`
- `mod-entry.typ` — Styled card per mod: name (linked), author, version, badges, description, dependencies, conflicts, mechanic_impact
- `styles.typ` — Color constants, font config, show rules

### Color Palette

| Role              | Color          | Hex       |
|-------------------|----------------|-----------|
| Primary / headers | Crimson        | `#8B0000` |
| Accent / links    | Gold           | `#C9A84C` |
| Body text         | Ink            | `#2C1810` |
| Page bg           | Warm parchment | `#FFF8F0` |
| Card bg           | Soft white     | `#FFFFFF` |

### Fonts

| Role             | Font             | Weight / Size  |
|------------------|------------------|----------------|
| Cover title      | Playfair Display | Bold, 36pt     |
| Section headings | Playfair Display | SemiBold, 18pt |
| Mod entry names  | Playfair Display | Medium, 13pt   |
| Body text        | Source Serif 4   | Regular, 10pt  |
| Code/metadata    | JetBrains Mono   | Regular, 8pt   |

Rationale: Playfair Display has beautiful, imperial-feeling Latin glyphs that
suit an English-language title about ancient kingdoms, while Source Serif 4
provides excellent body readability. Noto Serif SC is omitted here because its
Latin glyphs are mediocre; if Chinese text/quotes are added later it can be
included as a supplemental font.

All fonts free via Google Fonts. The `scripts/install-fonts.bat` script uses
a font downloader (e.g., `fonts.googleapis.com` via curl or a helper tool) to
fetch and place font files into a local `fonts/` directory in the project root.
Typst's `--font-path fonts` flag points to this directory at compile time.

### Cover Page

- Full-page warm parchment background
- Large logo centered, proportional to page height (`image("logo.jpg", height: 45%)` — 45% of page content area, leaving room for title below without crowding)
- Title "Beneath a Crimson Banner" in crimson
- Gold accent separator line
- Subtitle: "A Total War: Three Kingdoms Modlist for v1.7.2"

### Mod Entry Card

```
┌──────────────────────────────────────┐
│ Mod Name (crimson, linked)    v1.2.3 │
│ by Author               [UI] [QoL]   │
│ Description in body font...           │
│ Dependencies: Dependency Name         │
│ ⚠ Conflicts: Other Mod → resolution  │
│ ⚙ Overhauls the spy system            │
└──────────────────────────────────────┘
```

## Conflicts & Mod Ideas Files

### conflicts.yaml

Reference file for cross-wave conflict tracking (NOT included in PDF).

```yaml
# Keyed by mod name for quick lookup
conflicts:
  - mod_a: "Mod A Name"
    mod_b: "Mod B Name"
    type: "direct" | "load_order" | "incompatible"
    waves_affected: [0, 1, 2]
    resolution: "Load Mod A before Mod B. If using Mod C instead, choose one."
    notes: "Verified on v1.7.2"
```

### mod-ideas.yaml

Catalogue of desired mods that don't exist yet (NOT included in PDF).

```yaml
ideas:
  - name: "Proposed Mod Name"
    description: "What it would do"
    category: "mechanics" | "content" | "graphics"
    target_wave: 2
    gap: "Why existing mods don't cover this"
    references: ["URL to similar mods or inspiration"]
```

## Files Excluded from PDF

- `conflicts.yaml` — reference for mod conflict management
- `mod-ideas.yaml` — future development ideas

## Build Command

```bat
@echo off
cd /d "%~dp0"
if not exist output mkdir output
typst compile --font-path fonts template\main.typ output\Beneath-a-Crimson-Banner.pdf
echo PDF generated: output\Beneath-a-Crimson-Banner.pdf
```

The `cd /d "%~dp0"` ensures the script works from any CWD (double-click in
Explorer, run from terminal, etc.). Font path points to a local `fonts/`
directory (populated by `scripts/install-fonts.bat`).

## Mod Installation & TW Mod Manager Guide

`setup-installation-guide.md` lives at the repo root and is included in the PDF as an appendix. It covers:

1. **What is TW Mod Manager?** — Overview, download link (Nexus Mods site mod 1238)
2. **Initial setup** — Installation, first launch, pointing it to the Total War: Three Kingdoms data folder
3. **Importing the modlist** — How to load mods from each wave's configuration
4. **Load order management** — How to arrange mods (dependencies must load before dependents), how TWMM handles this
5. **Verifying compatibility** — Checking for conflicts in TWMM, reading the conflicts.yaml reference
6. **Installing mods manually** — Downloading from Nexus/Steam Workshop, placing in `data/` folder
7. **Per-wave activation** — Instructions to disable all mods from previous wave before enabling the next (clean profile per wave)

## AGENTS.md

Configures AI coding sessions on this repo. Contains:

- Project overview and purpose
- Game version constraint (1.7.2) — all mods must target this
- Mod addition rules (no conflicts, no porn, no cheats, etc.)
- File organization conventions (guide/ structure, YAML schemas)
- Wave system explanation
- PDF build instructions
- Reference to this spec document

## Non-Goals

- Actual mod research and addition (done in a later phase)
- Implementation of missing mods (captured in mod-ideas.yaml)
- HTML/web output
