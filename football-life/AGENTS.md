# Apex Life 26 - Agent Instructions

SP Football Life 2026 (v2.2) modlist and game guide.

## Structure
- `guide/` - Typst sources (installation, sider-config, lets-play)
- `output/` - generated PDF (`apex-life-26.pdf`)
- `assets/` - cover art
- `template.typ` - Typst master template (cover, TOC, page setup, fonts)
- `build.bat` - one-click PDF generator
- `STATUS.md` - live audit: decisions, verified mods, compatibility notes
- `conflicts-mods.md` - known mod conflicts (excluded from PDF)
- `mod-ideas.md` - future/UNVERIFIED candidates (excluded from PDF)

## Key Rules
- NEVER fabricate or suggest mods. All mods must be verified real and FL26 v2.2 compatible.
- Mod sources: SmokePatch official (primary), EvoWeb (community), UML Patreon (paid).
- Decision log maintained in STATUS.md. Update incrementally.
- FL27 expected late 2026; note migration path in mod-ideas.md.

## PDF Generation
Run `build.bat` -> `typst compile template.typ output/apex-life-26.pdf` (Typst 0.15+).
Fonts: Bahnschrift / Georgia.
