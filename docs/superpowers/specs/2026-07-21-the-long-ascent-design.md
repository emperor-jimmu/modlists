# The Long Ascent — Design Spec

**Date:** 2026-07-21  
**Project:** KSP Modlist & Game Guide  
**Target Game:** Kerbal Space Program 1.12.5 (Jan 11, 2023)

---

## Overview

"The Long Ascent" is a modlist and game guide for Kerbal Space Program. It is structured in 3 cumulative waves, each adding more mods and deeper tutorial/strategy content. A single PDF is generated from the guide files via Typst, with a CKAN metapackage for one-click installation.

## Prerequisites

- **Typst** 0.13+ installed and on PATH (for PDF generation)
- **CKAN** installed (for mod installation)
- **KSP 1.12.5** with both DLCs highly recommended (Breaking Ground, Making History)

## DLC Policy

Both DLCs (Breaking Ground and Making History) are **recommended but not required** for all waves. Specific mods may list a DLC as a hard dependency — those mods will be marked clearly and placed in an optional subsection of their wave. The guide content is written assuming DLCs are present; notes will indicate where DLC features are used so vanilla-only players can skip or work around.

## Project Structure

```bash
kerbal-space-program-modlist/
├── assets/
│   ├── logo.png                      # Cover page logo
│   └── fonts/                        # Bundled fonts (Orbitron, Inter, JetBrains Mono)
├── guide/
│   ├── wave-0-first-steps.md         # Focused quickstart + mods
│   ├── wave-1-going-further.md       # Intermediate tutorial + mods
│   ├── wave-2-the-long-ascent.md     # Advanced strategy + mods
│   ├── installation.md               # CKAN + Typst setup instructions
│   └── appendix.md                   # Troubleshooting, resources, acronym glossary
├── output/
│   └── the-long-ascent.pdf           # Generated PDF
├── scripts/
│   ├── build.bat                     # Windows PDF build
│   └── build.sh                      # Linux/macOS PDF build
├── the-long-ascent.ckan              # CKAN metapackage (all waves)
├── mod-ideas.md                      # Personal mod development backlog (NOT in PDF)
├── AGENTS.md                         # Project instructions for AI agents
└── README.md                         # Project overview + prerequisites
```

## Waves

Waves are cumulative. Wave 1 includes Wave 0 mods; Wave 2 includes all prior waves.

### Wave Boundaries — Concrete Criteria

| Criterion                             | Wave 0 | Wave 1                                        | Wave 2                                                           |
|---------------------------------------|--------|-----------------------------------------------|------------------------------------------------------------------|
| **Gameplay changed?**                 | No     | Yes — adds content, not difficulty            | Yes — adds complexity and difficulty                             |
| **Learning curve impact**             | None   | Adds parts/options                            | Adds entire new systems (life support, colonization)             |
| **Part count increase**               | Zero   | Moderate                                      | Significant                                                      |
| **New resource chains?**              | No     | No (or trivial, e.g. Community Resource Pack) | Yes (life support supplies, colony resources, interstellar fuel) |
| **Does it delete/penalize mistakes?** | No     | No                                            | Yes (life support failure = dead kerbals; realism failure = RUD) |
| **Save-breaking if removed?**         | No     | Unlikely                                      | Likely                                                           |

Decision flowchart for assigning a mod to a wave:

1. Does it change any game mechanic? No → Wave 0 candidate. Yes → continue.
2. Does it add a new failure condition, resource chain, or fundamentally alter physics? Yes → Wave 2.
3. Otherwise → Wave 1.

### Wave 0 — First Steps

- **Guide scope:** ~3-5 pages. Building your first rocket, reaching orbit, Mun landing (flyby at minimum), basic docking. Enough to feel accomplished.
- **Mods:** UI and QoL only. No new parts, no new mechanics, no graphics overhauls.
- **Examples of allowed mod types:** informational readouts (KER, RCS Build Aid), time warp control, editor tools (Editor Extensions), alarm clock.

### Wave 1 — Going Further

- **Guide scope:** ~8-12 pages. Interplanetary transfer windows, ISRU/mining basics, space station assembly, SSTO spaceplane design, relay network setup.
- **Mods:** Graphics overhauls (EVE, Scatterer), parts packs (Near Future, Stockalike Station Parts), convenience mechanics that don't add failure conditions (Kerbal Attachment System).
- **Excluded from Wave 1:** Life support, full-scale colonization, modified physics/aerodynamics, part failures, interstellar drives.

### Wave 2 — The Long Ascent

- **Guide scope:** ~6-10 pages. Strategy focused — how the new systems interact. Colonization workflows (supply chains, base building), life support management, interstellar mission planning. Not a step-by-step tutorial; assumes the player can fly.
- **Mods:** Life support (USI-LS or TAC-LS), colonization (MKS, Extraplanetary Launchpads), interstellar (KSP Interstellar Extended or similar), realism overhaul (FAR, RealFuels, etc.).

## Mod Entry Schema

Each mod entry in the guide files must include:

- **Name** — link to the mod's forum thread, SpaceDock, or GitHub page
- **CKAN identifier** — the exact `identifier` field used in CKAN metadata
- **Short description** — one paragraph
- **Dependencies** — CKAN will resolve these automatically, but list them for transparency
- **Impact type** — one or more of: `UI`, `Parts`, `Graphics`, `Mechanics`, `Gameplay`
- **Impact description** — what specific game systems it affects and how
- **Conflicts** — known incompatibilities with other mods *in this modlist*
- **Version pin** — minimum KSP version, and CKAN version constraint if the mod must be pinned (see Version Strategy below)

## Mod Rules

1. Must be compatible with KSP 1.12.5 (or 1.12.x as a minimum — patch release date Jan 2023 or earlier as heuristic)
2. No conflicting mods within a wave; any cross-wave conflicts must be documented in the mod entry itself (no separate conflicts.md file)
3. No redundant mods — two mods that cover the same functionality must not both be included in the same wave
4. No cheating, overpowered, or omniscient mods (e.g., HyperEdit, MechJeb auto-everything, debug-menu-in-career mods)
5. Porn/NSFW mods: not allowed

## CKAN Metapackage

A single `.ckan` file (`the-long-ascent.ckan`) with this structure:

```json
{
    "spec_version": "v1.34",
    "identifier": "TheLongAscent",
    "name": "The Long Ascent",
    "abstract": "A curated 3-wave modlist and guide for KSP 1.12.5",
    "author": "Nimrod Perez",
    "license": "CC-BY-4.0",
    "version": "1.0.0",
    "depends": [
        { "name": "ModuleManager" }
    ],
    "recommends": [
        // Wave 0 mods
        // Wave 1 mods
    ],
    "suggests": [
        // Wave 2 mods — suggested rather than recommended because some are heavy
    ],
    "supports": [
        { "name": "BreakingGround-DLC" },
        { "name": "MakingHistory-DLC" }
    ]
}
```

- Wave 0 mods go in `recommends`. Wave 1 mods go in `recommends`. Wave 2 mods go in `suggests` (they're heavy and may not suit all players).
- Mods that require a DLC are marked with `"supports"` and noted in their guide entry.
- CKAN dependency resolution is trusted for transitive deps — we only list top-level mods.

## Version Strategy

KSP 1.12.5 is frozen, but mods on CKAN continue to receive updates that may introduce incompatibilities with older mods or KSP 1.12.x itself. Strategy:

1. **Default:** Trust CKAN compatibility metadata. If a mod lists 1.12 as compatible, include it at whatever latest version CKAN resolves.
2. **Pin when necessary:** If a known bad version exists, pin to a specific version in the CKAN file using `"version"` or `"min_version"` / `"max_version"` constraints.
3. **Snap date:** The modlist is authored against the CKAN state as of **2026-07-21**. If CKAN later removes a mod or marks it incompatible, the guide entry must note the last known good version.
4. **CKAN clients repository:** Users should add `https://github.com/KSP-CKAN/CKAN-meta/archive/main.tar.gz` as a CKAN repository if not already present (standard setup).

## PDF Generation

- **Engine:** Typst 0.13+
- **Sections (in order):** Cover page (logo + title), Table of Contents, Installation chapter, Wave 0, Wave 1, Wave 2, Appendix
- **Build:** `scripts/build.bat` (Windows) and `scripts/build.sh` (Linux/macOS). Both call `typst compile` with the same arguments.
- **Cover page:** `assets/logo.png` centered, "The Long Ascent" title, "A Kerbal Space Program Modlist & Guide" subtitle, version/date line.

### Fonts

| Role                    | Font               | Weight            | Fallback          |
|-------------------------|--------------------|-------------------|-------------------|
| Headings (H1–H3)        | **Orbitron**       | Bold / SemiBold   | System sans-serif |
| Body text               | **Inter**          | Regular (400)     | System sans-serif |
| Code / CKAN identifiers | **JetBrains Mono** | Regular           | System monospace  |
| Cover title             | **Orbitron**       | Black / ExtraBold | System sans-serif |

All three fonts are open-source (SIL OFL) and must be bundled in `assets/fonts/` so the PDF builds reproducibly on any machine without system font dependencies.

### Color Palette

Inspired by KSP's visual identity — deep space, retro-futurism, and the Kerbal palette.

| Token          | Hex       | Usage                                                         |
|----------------|-----------|---------------------------------------------------------------|
| `space-dark`   | `#0B1D3A` | Page backgrounds, cover, headers                              |
| `space-mid`    | `#162D50` | Sidebars, callout boxes, code block backgrounds               |
| `space-light`  | `#1E3A5F` | Table headers, accent bands                                   |
| `ksp-orange`   | `#F4982B` | Primary accent — links, buttons, highlights, section dividers |
| `ksp-teal`     | `#1BA1E2` | Secondary accent — wave badges, ToC numbers, info callouts    |
| `kerbin-green` | `#8BC34A` | Success / positive callouts, Kerbal reference                 |
| `mun-gray`     | `#B0B8C4` | Secondary text, captions, muted elements                      |
| `white`        | `#F5F7FA` | Primary text on dark backgrounds                              |
| `warning-red`  | `#EF5350` | Conflicts, warnings, breaking changes — use sparingly         |

### Page Layout

- Page size: A4, portrait
- Margins: generous (2.5cm) for comfortable reading
- Two-column layout for mod entries (name/metadata left, description right)
- Section dividers between waves using `ksp-orange` accent rule
- Running header with current wave name
- Page numbers

### Typographic Hierarchy

- Wave title pages: full `space-dark` background, wave number badge in `ksp-teal`, title in white Orbitron
- Chapter headings (H1): Orbitron Bold, `ksp-orange`, with horizontal rule beneath
- Mod name headings (H2): Orbitron SemiBold, `space-dark`, with CKAN identifier in JetBrains Mono inline
- Body text: Inter 10pt, 1.4× line height, `white` on `space-dark` or `#1A1A2E` on light pages
- Callout boxes: rounded corners, `space-mid` background, left border in accent color based on type (orange=warning, teal=info, green=tip)

## Files NOT in PDF

- `mod-ideas.md` — personal mod development backlog. Not included in the guide or PDF.
- `AGENTS.md` — AI agent instructions.
- `README.md` — project readme.

## Non-Goals

- Automated mod downloading (CKAN handles this)
- Real-time mod compatibility checking (handled manually during authoring)
- Hosting the CKAN file on CKAN's repository (user provides the local file)
- Game save files or craft files
- In-game configuration of individual mods (handled by CKAN defaults; notable config changes documented in mod entries)
