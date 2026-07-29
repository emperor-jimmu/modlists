# Void Enhanced — Starfield Modlist & Guide

A curated modlist and game guide for **Starfield version 1.16.244 (June 2026)**.

## Overview

Void Enhanced organizes mods into two waves:
- **Wave 0 — The Drifter:** Beginner-friendly, vanilla+/QoL mods, complete how-to-play guide
- **Wave 1 — The Void Walker:** Advanced mods, new mechanics, strategy guide

Each wave has its own roleplaying background and MO2 profile.

## Requirements

- Starfield 1.16.244 (Steam)
- Mod Organizer 2 (latest)
- Typst 0.15 (for PDF regeneration)
- Inter font (bundled in `assets/`)

## Files

| Path | Description |
|---|---|
| `main.typ` | Typst source — builds the PDF |
| `generate-pdf.bat` | One-click PDF regeneration |
| `guide/` | Guide content organized by category |
| `output/` | Generated PDF |
| `conflicts-mods.md` | Known mod conflicts (not in PDF) |
| `mod-ideas.md` | Future mod ideas (not in PDF) |

## Regenerating the PDF

```
.\generate-pdf.bat
```

Output: `output/Void-Enhanced.pdf`
