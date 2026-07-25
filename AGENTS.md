# Total War: Three Kingdoms — Beneath a Crimson Banner Modlist

## Project
A curated modlist and game guide for **Total War: Three Kingdoms v1.7.2**.
Organized into 3 progressive waves of difficulty. Named "Beneath a Crimson Banner".

## Game Version Constraint
ALL mods added must target game version 1.7.2 (or 1.7.x — use patch release dates as heuristic). Do NOT add mods for other versions.

## Mod Addition Rules
- No conflicting mods. Check conflicts.yaml before adding.
- No porn mods. Adult/nude content is okay where thematically relevant. If in doubt, ask the user.
- No redundant mods. Don't add two mods that do the same thing.
- No cheating/overpower/all-knowing mods.
- Graphics, content, and mechanic mods belong in Wave 1+ only. Wave 0 is UI/QoL only.

## File Organization
- `guide/00-wave0/` — Wave 0: intro, how-to-play, mods.yaml
- `guide/01-wave1/` — Wave 1: intro, strategy, mods.yaml
- `guide/02-wave2/` — Wave 2: intro, strategy, mods.yaml
- Each mods.yaml follows the schema in the spec doc.
- `template/` — Typst files for PDF generation
- `conflicts.yaml` — reference only, NOT in PDF
- `mod-ideas.yaml` — ideas for future mods, NOT in PDF

## PDF Build
Run `build.bat` from the repo root to compile the PDF.
Requires Typst 0.15+ installed and fonts in `fonts/`.

## Reference
See `docs/superpowers/specs/2026-07-25-beneath-a-crimson-banner-design.md` for full design spec.
