# Void Enhanced — Starfield Modlist & Guide Design

## Overview

A comprehensive modlist and game guide for Starfield version 1.16.244 (June 11, 2026), named "Void Enhanced." Organized in two difficulty waves with roleplaying backgrounds, using Mod Organizer 2. Delivered as a high-contrast dark-themed PDF with full installation instructions, mod catalog, and strategy guides.

## Project Structure

```bash
starfield-modlist/
├── AGENTS.md                  # AI assistant project instructions
├── README.md                  # Project overview
├── main.typ                   # Typst 0.15 source — imports all guide files
├── generate-pdf.bat           # Build script
├── assets/
│   └── logo.jpg               # Cover page logo
├── guide/
│   ├── setup/
│   │   ├── 00-mo2-installation.typ
│   │   ├── 01-sfse-and-script-extenders.typ
│   │   ├── 02-ini-and-configuration.typ
│   │   ├── 03-load-order-and-archive-invalidation.typ
│   │   └── 04-troubleshooting.typ
│   ├── wave-0/
│   │   ├── 00-background-story.typ
│   │   ├── 01-guide.typ
│   │   ├── 02-ui-mods.typ
│   │   ├── 03-graphics-mods.typ
│   │   └── 04-mod-installation.typ
│   └── wave-1/
│       ├── 00-background-story.typ
│       ├── 01-guide.typ
│       ├── 02-content-mods.typ
│       ├── 03-mechanics-mods.typ
│       ├── 04-graphics-mods.typ
│       └── 05-mod-installation.typ
├── output/                    # PDF output only
├── conflicts-mods.md          # Known conflicts (excluded from PDF)
└── mod-ideas.md               # Future mod ideas (excluded from PDF)
```

## Modlist Version Scheme

Format: `v<major>.<minor>`

- `v1.0` — Launch version of Void Enhanced
- `v1.1` — Mod updates, additions, or removals
- `v2.0` — Major game version update requiring re-testing

Displayed on cover as: `Void Enhanced v1.0 — Starfield 1.16.244`

## Document Preamble (First page after ToC)

A brief reader-facing intro explaining:

- What a modlist/guide is
- That this assumes MO2 as the mod manager
- How to read the document (waves, mod entries, installation order)
- That waves are independent MO2 profiles, not cumulative installs

## PDF Reader Introduction & How to Use This Document

A short section at the start of the PDF explaining:

- "This guide is organized in Waves — each wave is a separate playthrough with its own mod profile in MO2. You should complete Wave 0 before starting Wave 1."
- "Each mod entry lists: name (clickable), description, version, dependencies, and system impact."
- "Setup chapters cover shared tooling (MO2, SFSE). Each wave chapter contains its own mod installation instructions."

## Wave Structure

### General Wave Rules

- Each wave is a **separate MO2 profile** — mods do NOT carry over between waves
- Reader should start a new game for each wave
- Wave 0 is the complete beginner experience; Wave 1 assumes the player has finished Wave 0

### Wave 0 — "The Drifter"

- **Difficulty:** Beginner (vanilla+/QoL mods at most)
- **RP Background:** A retired explorer pulled back by a mysterious distress signal. Learning the galaxy from scratch.
- **Character Creation:** Specific background, traits, and skill recommendations to match the RP theme
- **Guide Content:**
  1. Character creation walkthrough (matching the RP)
  2. Core gameplay systems (combat, inventory, maps, fast travel)
  3. Ship basics (flight, docking, cargo)
  4. Outpost fundamentals
  5. Factions overview (how to approach them in-character)
- **Mod Categories:** UI/QoL, light graphics

### Wave 1 — "The Void Walker"

- **Difficulty:** Advanced (mechanics/content/graphics mods)
- **RP Background:** A spacer scarred by forbidden tech and old enemies. Walks the line between survival and obsession.
- **Character Creation:** Specific background, traits, and skill recommendations to match the RP theme
- **Guide Content:**
  1. Character creation walkthrough (matching the RP)
  2. Advanced combat tactics (with new mechanics from mods)
  3. Economy & smuggling (with mod-driven systems)
  4. Faction strategy (endgame, cross-faction dynamics)
  5. Ship specialization (with new parts/systems from mods)
  6. Endgame & NG+ considerations
- **Mod Categories:** Content (quests/locations), mechanics (new systems), graphics (enhanced)

## Setup Chapters (Shared)

1. **MO2 Installation** — Download, install, configure MO2 for Starfield
2. **SFSE & Script Extenders** — Install Starfield Script Extender, Address Library, and other framework mods
3. **INI & Configuration** — Starfield.ini, StarfieldCustom.ini tweaks, recommended settings
4. **Load Order & Archive Invalidation** — Plugin sorting rules, archive invalidation setup
5. **Troubleshooting** — Common issues, conflicts, CTD solutions

## Mod Entry Format

```typst
### #link("https://nexusmods.com/starfield/mods/XXX")[*Mod Name*]

2-3 sentence description of what the mod does and why it's included.

- *Version:* 1.2.3
- *Dependencies:* SFSE, Console Util
- *System Impact:* Adds survival mechanics (hunger, sleep, temperature)
```

- Mod entries are sorted alphabetically within each category file
- All URLs are clickable in the PDF
- "System Impact" is omitted if the mod is purely cosmetic/QoL

## Writing Tone & Style

- **Tone:** Clear, direct, instructional. Second-person ("You should install...", "This mod replaces...").
- **No in-character prose** in the guide sections themselves — RP flavor is confined to the background-story files
- **Mod descriptions** explain what the mod does, why it's in the list, and what the player will notice
- **No flavor text, no jokes, no commentary** — the player needs clear instructions to get the list working

## Visual Design (PDF)

- **Page:** A4, 2cm top/bottom margins, 2.5cm left/right margins (for readability), single column
- **Background:** `#0d0d12` (near-black)
- **Body text:** White (`#ffffff`), 10pt
- **Font:** Inter (Google Font, free). If unavailable, falls back to system sans-serif. Font file should be bundled at `assets/Inter-Variable.ttf` and loaded via `#set text(font: "Inter")`. The README documents this dependency.
- **H1:** Cyan (`#00d4ff`), 18pt, bold
- **H2:** Orange (`#ff6b35`), 14pt
- **H3:** Light gray (`#c0c4cc`), 11pt
- **Links:** Orange (`#ff6b35`), underlined
- **Code / filenames:** Cyan (`#7fdbff`), inline monospace
- **Page numbers:** Centered at bottom via Typst page numbering
- **Section numbering:** Not manually numbered — relies on heading hierarchy. ToC uses outline with page numbers.
- **Cover page:** Centered logo, "VOID ENHANCED" title in cyan, "v1.0 — Starfield 1.16.244" subtitle, all on black background, no page number
- **Table of Contents:** Auto-generated via `#outline()`, shows headings with page numbers

## PDF Generation Pipeline

```
generate-pdf.bat
  └─ typst compile main.typ output/Void-Enhanced.pdf --font-path assets
```

The `--font-path assets` flag ensures the Inter font bundle at `assets/Inter-Variable.ttf` is discoverable.

All `.typ` source files are included into `main.typ` via `#include`. The batch file enables one-command regeneration.

## File Conventions

- Guide content files use `.typ` extension (Typst markup, syntactically similar to markdown)
- Modlist category files use `.typ` extension
- `conflicts-mods.md` and `mod-ideas.md` are NOT included in the PDF
- All mod URLs are clickable in the PDF
- Mod entries within category files are alphabetically sorted within each category

## conflicts-mods.md Format

```
# Known Mod Conflicts

This file tracks mod combinations known to conflict. Updated as conflicts are discovered.

## Conflict: [Mod A] + [Mod B]

- **Symptoms:** Crash on save, missing textures
- **Cause:** Both edit the same record
- **Resolution:** Load [Mod A] after [Mod B], or use a compatibility patch
```

Populated progressively as mods are added and tested.

## mod-ideas.md Format

```
# Mod Ideas (Future Development)

Mod concepts to develop for future waves or updates. Not yet implemented.

## [Mod Name]

- **Category:** Mechanics / Content / Graphics
- **Concept:** What the mod would do
- **Rationale:** Why it fits Void Enhanced
- **Status:** Idea / In design / In testing
```

## Mod Rules

1. Must be compatible with Starfield version 1.16.244 (June 2026)
2. No conflicting mods (tracked in conflicts-mods.md)
3. No porn mods (adult/nude okay where relevant — ask user if uncertain)
4. No redundant mods
5. No cheating/overpowered/all-knowing mods
6. Graphics, content, and mechanics mods allowed (advanced waves for mechanics)
7. If uncertain about a mod, ask the user
