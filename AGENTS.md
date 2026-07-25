# Agent Instructions for Only Monsters Remain

## Project Structure

- `guide/` — All guide content organized by wave
- `output/` — Build artifacts (site + PDF)
- `conflicts/` — Mod conflict database (NOT in PDF)
- `mod-ideas/` — Future mod concepts (NOT in PDF)
- `typst/` — Typst PDF templates
- `assets/` — Images, logos

## Wave System

- Wave 0: Vanilla+QoL — Beginner guide, UI/QoL mods only
- Wave 1: Enhanced — +Graphics, +Content, strategy guide
- Wave 2: Mastery — +Mechanics/Overhauls, advanced guide
- Waves are cumulative (each includes previous wave mods)

## Build Commands

- `npm run dev` — VitePress dev server
- `npm run build` — Build static site
- `npm run pdf` — Build PDF with Typst
- `npm run build:all` — Build both
- `build.bat` — Windows batch for both

## Constraints

- All mods must be compatible with game version 4.04 (July 19, 2023)
- No cheap porn mods (adult/sexual/nude okay where lore-relevant)
- No cheating/overpower mods
- No conflicting or redundant mods
- No lore breaking mods
- Mods use Witcher 3 Mod Manager (Nexus #2678)
- **Obsolete/Classic mods**: If a mod title says "obsolete" or "classic", it will NOT work with Next-Gen (4.04). Skip these versions.

## PDF Exclusion

Files in `conflicts/` and `mod-ideas/` must NOT be included in PDF output.
