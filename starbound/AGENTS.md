# Aetherbound — AGENTS.md

## Project Purpose

Aetherbound is a curated two-wave modlist guide for Starbound 1.4.4 (August 7, 2019). Each wave represents a different level of game experience, introduced by a roleplaying backstory. Outputs a professional PDF guide built with Typst.

## Project Structure

```
starbound/
├── AGENTS.md                    # This file
├── README.md                    # Project overview and quick start
├── STATUS.md                    # Development journal: decisions, rejected mods, notes
├── conflicts.md                 # Canonical mod conflict reference (NOT in PDF)
├── mod-ideas.md                 # Future mod development ideas (NOT in PDF)
├── assets/
│   ├── logo.jpg                 # Cover page logo
│   └── fonts/                   # Space Grotesk + Inter (SIL OFL)
├── guide/
│   ├── introduction.typ         # About this guide
│   ├── install.typ              # SBMM setup and game preparation
│   ├── wave-0/
│   │   ├── story.typ            # Roleplaying backstory
│   │   ├── how-to-play.typ      # Vanilla new-player guide
│   │   └── modlist/             # Wave 0 mod categories (H2 headings)
│   └── wave-1/
│       ├── story.typ            # Roleplaying backstory
│       ├── strategy.typ         # Advanced topics
│       └── modlist/             # Wave 1 mod categories (H2 headings)
├── templates/
│   └── aetherbound.typ          # Typst PDF template (entry point, all functions)
├── output/
│   └── aetherbound.pdf          # Generated PDF (gitignored)
└── tools/
    └── build.ps1                # PDF build script (font-path, version gate)
```

## Game Version

**Target: Starbound 1.4.4 (August 7, 2019)**

All mods must be compatible with Starbound 1.4.x. Use the patch release date (August 2019) as a heuristic: mods updated after 2019 are likely compatible; mods last updated before 2019 are suspicious.

## Mod Rules

- No conflicting mods within or across waves
- No porn mods (adult/nude is acceptable where relevant; ask user when in doubt)
- No redundant mods
- No mods incompatible with version 1.4.x
- No cheating, overpowered, or "all-knowing" mods
- Primary mod source: Steam Workshop. Fallbacks: Chucklefish Forums, GitHub, Nexus Mods.

## Content Format

All guide content is in **Typst markup** (`.typ` files). The template (`templates/aetherbound.typ`) defines reusable functions:

- `#mod-entry(...)` — styled mod information panel
- `#tip[content]` — amber left-border callout
- `#concept[content]` — indigo left-border callout
- `#warning[content]` — red left-border callout

Prose chapters use `= H1` (page break before). Mod category files use `== H2` (inline, no page break).

## Typst Quick Reference

| Element | Typst |
|---------|-------|
| H1 | `= Title` |
| H2 | `== Section` |
| H3 | `=== Subsection` |
| Bold | `*bold*` |
| Italic | `_italic_` |
| Link | `#link("url")[text]` |
| List | `- item` |
| Image | `#image("path")` |
| Page break | `#pagebreak()` |

## Adding a New Mod

1. Find the correct category file in `guide/wave-N/modlist/`
2. Add a `#mod-entry(...)` call (see format below)
3. Verify the URL via Playwright before committing
4. Check for conflicts; document in `conflicts.md`, note in `STATUS.md`

```typst
#mod-entry(
  name: "Mod Name",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=XXXXXXXXX",
  category: "QoL",
  version: "2024-03",
  dependencies: (),
  system-impact: none,
  description: [What the mod does.],
  install-notes: [SBMM group and load order notes.],
  wave: 0,
)
```

## Build Commands

```powershell
# From starbound/ root
typst compile --font-path assets/fonts templates/aetherbound.typ output/aetherbound.pdf

# Or use the build script
./tools/build.ps1
```

Requires: Typst 0.15.0+

## Research Workflow

- Use Playwright to browse Steam Workshop pages
- Cross-reference with Chucklefish Forums and r/starbound
- Prefer mods updated after August 2019 (post-1.4.4 release)
- Document every rejection in STATUS.md with reasoning
