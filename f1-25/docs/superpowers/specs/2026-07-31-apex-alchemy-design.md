# Apex Alchemy — Design Spec

**Date:** 2026-07-31
**Game:** F1 25, version v1.24 (July 13, 2026)
**Mod Organizer:** Simplified Launcher (by Team Simplified)

## Core Vision

A structured modlist + game guide/tutorial for F1 25 that progressively introduces players to the game and its modding scene. Wave 0 teaches complete beginners how to play F1 25. Later waves introduce strategy, advanced systems, and content/mechanic mods.

## Wave Structure (3 waves)

| Wave | Audience | Content Focus | Mod Philosophy |
|------|----------|---------------|----------------|
| 0 | Complete beginners | Full how-to-play guide | Vanilla + UI/QoL only |
| 1 | Intermediate players | Strategy, advanced topics | Content mods + new mechanics |
| 2 | Advanced players | Deeper systems, rich content | More mechanics + full customization |

## Modding Scope

F1 25 modding (Codemasters/EA racing sim) includes: livery skins, physics/AI tweaks, telemetry dashboards, camera mods, UI/HUD mods, audio mods, and file-replacement tools.

## Project Structure

```
f1-25/
├── AGENTS.md           # Project vision, constraints, working conventions
├── README.md           # High-level project overview
├── STATUS.md           # Living decision log (accepted/rejected mods, conflicts, notes)
├── GUIDE.md            # All-in-one guide + modlist (waves, installation, tutorial)
├── templates/
│   ├── guide.typ       # Typst cover + TOC + body
│   └── style.typ       # F1-themed palette (carbon, red, white)
├── generate-pdf.ps1    # PowerShell script for PDF generation
├── output/             # Generated PDFs
├── conflicts-mods.md   # (Not in PDF) known conflicts
├── mod-ideas.md        # (Not in PDF) future ideas
└── assets/
    └── logo.jpg        # Apex Alchemy logo
```

## Mod Rules

- **Allowed:** Graphics/visuals, new content, new mechanics (Wave 1+), adult/nude if relevant
- **Forbidden:** Conflicting mods, meme/joke mods, explicit porn, redundant mods, cheats/overpowered mods, anything incompatible with v1.24
- **No fabrication** — only real, verified mods with working URLs
- **Primary source:** OverTake.gg

## PDF Requirements

- Single colorful PDF via Typst 0.15/0.15.1
- Cover page (name + logo.jpg), TOC, full content
- F1-themed palette (carbon fiber, racing red, white, dark grays)
- High contrast, readable fonts

## Mod Entry Format

Every mod entry: clickable name (verified URL), dependencies, system/mechanic impact, notes (load order, config, etc.)

## Technical

- Typst 0.15/0.15.1 for PDF generation
- Powershell script for regeneration (`generate-pdf.ps1`)
- GUIDE.md as single source of truth (markdown parsed by cmarker Typst package)

## Research Plan

1. Research Simplified Launcher — verify it exists, supports F1 25, document installation
2. Research OverTake.gg for F1 25 mods compatible with v1.24
3. Categorize mods by wave
4. Write GUIDE.md with full wave content
5. Create Typst templates with F1 theme
6. Generate PDF
7. Commit
