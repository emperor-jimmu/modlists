# The 3rd Coming - Agent Instructions

XCOM 2 (War of the Chosen) modlist and game guide. Last official patch: Build 8270065 (24 February 2022 / branch update 28 March 2022). Mod source: Steam Workshop. Mod organizer: Alternative Mod Launcher (AML) - <https://github.com/X2CommunityCore/xcom2-launcher/releases>.

## Structure
- `guide/` - Typst sources (installation, overview, per-category modlist files)
- `output/` - generated PDF (`the-3rd-coming.pdf`)
- `assets/` - static assets (`logo.jpg`)
- `template.typ` - Typst master template (cover, TOC, page setup, fonts, dark neon theme)
- `build.bat` - one-click PDF generator
- `query.typ` - page-position structure audit (not part of the PDF)
- `STATUS.md` - live decision log: decisions, open questions, user instructions ONLY (never mod validation results)
- `conflicts-mods.md` - known mod conflicts (excluded from PDF)
- `mod-ideas.md` - future/UNVERIFIED candidates (excluded from PDF)

## Key Rules
- THIS PROJECT DOES NOT ADD, VALIDATE, OR FILTER MODS. The user supplies every mod. Document only the exact mods the user supplies, using only the information the user provides.
- Required mod-entry fields (user supplies all): clickable name + URL, dependencies, system/mechanic impact, other notes. A field the user did not supply stays blank or reads "user to provide" - never invent or research the missing data.
- No fabrication: no mod name or URL appears in guide files until the user supplies it.
- Mod source: Steam Workshop. Mod organizer: Alternative Mod Launcher (AML).
- STATUS.md records decisions, open questions, and user instructions only - never mod validation results.
- The game's last official patch is Build 8270065 (24 February 2022; branch update 28 March 2022); no further official content patches.

## PDF Generation
Run `build.bat` -> `typst compile template.typ output/the-3rd-coming.pdf` (Typst 0.15/0.15.1).
Theme: dark background, cyan/neon accents, red highlights (matches the logo).
Fonts: Bahnschrift (headings) / Segoe UI (body) / Cascadia Mono (mono accents) - Windows-shipped; Typst falls back gracefully if absent.
