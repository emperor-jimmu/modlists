# Assetto Maximus — Project Guide for AI Assistants

## Project Overview

This is **Assetto Maximus**, a curated modlist and game guide for **Assetto Corsa (2014) v1.16.4 (August 2020)**.

## Structure

```bash
/
├── AGENTS.md              — This file: instructions for AI
├── README.md              — Project overview for humans
├── conflicts.md           — Known mod conflicts (NOT in PDF)
├── mod-ideas.md           — Future mod ideas (NOT in PDF)
├── generate-pdf.bat       — Batch file to compile PDF via Typst
├── assets/
│   └── logo.jpg           — Logo for PDF cover page
├── guide/                 — Guide content files (by category)
│   ├── 00-preamble.typ    — Cover page metadata, credits
│   ├── 01-introduction.typ — What is Assetto Maximus
│   ├── 02-installation.typ — Game + CM installation guide
│   ├── 03-wave-0.typ       — Wave 0: Phase 1 (Foundations)
│   ├── 04-wave-1.typ       — Wave 1: Phase 2+3 (Balance & Speed, Cornering Precision)
│   ├── 05-wave-2.typ       — Wave 2: Phase 4 (Race Craft & Mastery)
│   ├── 06-modlist-graphics.typ — Graphics mods
│   ├── 07-modlist-content.typ   — Content mods (cars, tracks)
│   ├── 08-modlist-mechanics.typ — Mechanics mods
│   ├── 09-modlist-ui-qol.typ    — UI & QoL mods
│   ├── 10-configuration.typ     — Configuration guides
│   └── 11-appendix.typ          — Troubleshooting, references
├── template/
│   └── main.typ           — Typst template for PDF generation
└── output/                — Generated PDF output directory
```

## Key Constraints

1. **Assetto Corsa v1.16.4 (August 2020)** — All mods MUST be compatible with this version. Use patch release date as a heuristic if version info is unavailable.
2. **Waves** — The modlist is structured as waves. Each wave builds on the previous one with a roleplaying narrative.
3. **Driving Curriculum** — Each wave maps to phases of a progressive driving curriculum inspired by professional coaching methods:
   - Wave 0: Phase 1 — Foundations (consistency, confidence, basic car control)
   - Wave 1: Phase 2 — Balance & Speed, Phase 3 — Cornering Precision
   - Wave 2: Phase 4 — Race Craft & Mastery
4. **Mod rules**:
   - No conflicting mods (when in doubt, ask the user)
   - No redundant mods
   - No cheating/overpower/all-knowing mods
   - Wave 0: UI/QoL and minimal visual mods only (no mechanics changes)
   - Later waves: Graphics, content, mechanics mods
5. **PDF Output** — The guide + modlist is compiled to a single PDF via Typst (v0.15).
6. **Excluded from PDF**: `conflicts.md` and `mod-ideas.md` are reference files only.

## Workflow

- Mod entries format: `[Name](URL)` — Dependencies, system/mechanic impact, notes
- Add mods ONLY to their category file in `guide/` — do NOT add mod listings to wave files (wave files are for the driving curriculum only)
- Every mod must appear in exactly ONE category file. Before adding a mod, grep the other category files to verify it is not already listed
- Check `conflicts.md` before adding any mod that changes the same system as an existing mod (FFB, AI, physics, weather, etc.)
- Update `conflicts.md` when a conflict is discovered
- Add new mod ideas to `mod-ideas.md`
- Run `generate-pdf.bat` to rebuild the PDF after content changes
- All guide files use Typst markup (`.typ` files)

## Content Manager

The guide uses **Content Manager** (<https://assettocorsa.club/content-manager.html>) as the mod management tool. Include full setup and configuration instructions.
