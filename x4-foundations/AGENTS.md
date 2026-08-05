# Stellar Dominion — X4 Foundations Modlist

## Project

A curated modlist and game guide for X4 Foundations v9.0, organized in 4 progressive waves (0–3). Uses Mod Organizer 2. Produces a PDF via Typst.

## Structure

- `guide/mod-data/wave-N.yaml` — mod entries per wave (cumulative: wave N includes waves 0–N)
- `guide/*.typ` — guide prose written in Typst
- `typst/template.typ` — main PDF template
- `generate-pdf.bat` — builds the PDF (Node.js preprocessing + Typst compile)
- `scripts/convert-data.js` — YAML → JSON for Typst consumption

## Wave System

Waves are cumulative. Each YAML file only lists mods INTRODUCED in that wave. The template merges waves 0 through N.

## Mod Addition Rules

- No conflicting or redundant mods
- Must be X4 v9.0 compatible
- No cheating/overpower mods
- No porn (adult/nude OK where relevant — ask user if in doubt)
- Wave 0: UI/QoL only, no mechanics changes
- Category taxonomy: total-conversion, overhaul, standalone, utility, visual, audio, ui

## Build

```
.\generate-pdf.bat "Author Name"
```

## Related

- `conflicts.md` — mod conflicts reference (not in PDF)
- `mod-ideas.md` — future mods to develop (not in PDF)
