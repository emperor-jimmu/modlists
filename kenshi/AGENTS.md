# Scars of the Horizon - Agent Instructions

Kenshi 1.0.68 (Apr 1, 2024) modlist and game guide.

## Structure
- `guide/` - wave-based Typst sources (installation, per-wave files, glossary)
- `output/` - generated PDF (`scars-of-the-horizon.pdf`)
- `assets/` - static assets (`logo.jpg`)
- `template.typ` - Typst master template (cover, TOC, page setup, fonts)
- `build.bat` - one-click PDF generator
- `STATUS.md` - live audit: decisions, accepted/rejected mods, conflicts, verifications
- `conflicts-mods.md` - known mod conflicts (excluded from PDF)
- `mod-ideas.md` - future/UNVERIFIED candidates (excluded from PDF)
- `docs/superpowers/` - specs and plans

## Key Rules
- Mods must be compatible with Kenshi 1.0.68; every mod card needs a verified URL.
- Mod organizer = KMM (Nexus 1765); verify behavior before writing install instructions.
- Mod sources: Steam Workshop (primary), Nexus (secondary).
- No meme/joke mods, explicit porn, redundant, or cheating/overpowered content.
- Power-spike test: mods raising stats/damage/armor above vanilla caps are rejected
  unless they add a proportionate challenge/cost.
- Every mod card: verified clickable name+URL, dependencies, system/mechanic impact, notes.
- Fact-check every structural game claim against the Kenshi wiki (kenshi.fandom.com)
  before it goes into a guide; log discrepancies in STATUS.md.
- Decision log maintained in `STATUS.md`.

## PDF Generation
Run `build.bat` -> `typst compile template.typ output/scars-of-the-horizon.pdf` (Typst 0.15/0.15.1).
Fonts: Cinzel / Bahnschrift / Georgia. Target 60-80 pages.
