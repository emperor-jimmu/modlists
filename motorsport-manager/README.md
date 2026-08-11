# GRID Control — Motorsport Manager Modlist & Guide

A curated modlist and game guide for **Motorsport Manager** (Playsport Games), built for the game's final version — **Patch 1.6** (February 10, 2026).

## What's Inside

- **Part 1 — Setup:** game version, DLCs, mod tools (Steam Workshop + Unity Mod Manager).
- **Part 2 — The Modlist:** two verified profiles —
  - *Profile A "2026 Season"*: the real-world 2026 season (F1, F2, WEC, GT-Open, more) with modern car models, liveries and graphics.
  - *Profile B "Rebirth"*: Rebirth: Redux — a deeper, harder management challenge.
  - Shared graphics: Enhanced Graphics + Extended Camera.
- **Part 3 — How to Play:** full gameplay guide for the modded game — career start, race weekends, development, sponsors, politics, endurance.
- **Part 4 — Personas:** six playable manager archetypes with backgrounds and exact game-creation choices.

Every mod is real, verified, and checked for Patch 1.6 compatibility. Nothing in this list makes the game easier.

## Quick Start

1. Read the PDF: `output/GRID-CONTROL-GUIDE.pdf`
2. Make sure Motorsport Manager is on **Patch 1.6**
3. Follow Part 1, then pick a profile in Part 2

## Regenerate PDF

```powershell
.\generate-pdf.ps1
```

Requires Typst 0.15+: `winget install Typst.Typst`

## Structure

```
motorsport-manager/
├── guide/             # Guide + modlist sources
│   ├── part-1-setup.md
│   ├── part-2-modlist.md
│   ├── part-3-how-to-play.md
│   └── part-4-personas.md
├── templates/         # Typst PDF templates
├── output/            # Generated PDFs (deliverable)
├── GUIDE.md           # Compiled single-source markdown
├── STATUS.md          # Project decisions and progress
├── AGENTS.md          # Vision, constraints, conventions
├── conflicts-mods.md  # Known mod conflicts
└── mod-ideas.md       # Future mod ideas
```
