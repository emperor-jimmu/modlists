# CK3 Modlist Guide — AI Instructions

## Project Overview

This project curates **A More Perfect Realm** — a Crusader Kings 3 modlist (2026, all DLC) — and generates a PDF guide via Typst. The repo serves as a source of truth for mods organized by category, a CK3 beginner's tutorial, and a PDF build pipeline.

## Mod Manager

Use **Vortex** (Nexus Mods) for mod organization, profiles, and load order management. Steam Workshop links are provided per mod. When suggesting installation instructions, reference Vortex's "Download with Manager" button for Steam Workshop mods or manual install for non-Steam mods.

## Modlist Categories (12 files in `modlist/`)

01-bugfixes, 02-ui-hud, 03-map-environment, 04-portraits-models, 05-culture-religion, 06-events-decisions, 07-gameplay-mechanics, 08-map-expansion, 09-music-sound, 10-fantasy-optional, 11-adult, 12-performance-tools

## Mod Entry Format

Each mod entry in modlist markdown files uses this format:

```markdown
## Mod Name

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=XXXX
- **Mod Version:** x.y.z
- **CK3 Version:** x.y.z
- **Updated:** YYYY-MM-DD
- **Load Order:** Early / Mid / Late
- **Essential:** Yes / No
- **Performance:** None / Minor / Moderate / Heavy

Description paragraph explaining what the mod does.

**Gameplay Impact:** How this mod changes gameplay.
```

Entries separated by `---`. See the design spec at `docs/superpowers/specs/2026-07-11-ck3-modlist-design.md` for details.

## PDF Generation

- Typst source files live in `content/`
- `main.typ` is the entry point
- `scripts/compile.ps1` builds the PDF
- Output goes to `output/ck3-modlist-guide-v{VERSION}.pdf`

## Content Rules

- Adult content only in `11-adult.md` and `content/03-modlist-adult.typ`
- No cheat/overpower mods
- Track CK3 version compatibility per mod
- Maintain `modlist/missing-mods.md` for desired but unavailable mods
- The VERSION file controls the PDF version string
- Performance data goes in `data/performance.yaml`

## CK3 Version

The current CK3 version is defined in `data/ck3-version` (e.g. `1.19.x`). All mods added to this project MUST work with this version. To determine the current CK3 version, check https://ck3.paradoxwikis.com/Patch or https://steamdb.info/app/1158310/. Update `data/ck3-version` when CK3 receives a new patch. When in doubt about a mod's compatibility with the target version, DO NOT add it.

## CK3 Tutorial

The tutorial in `content/01-tutorial.typ` teaches a beginner how to play CK3 (2026). Deep dives: Marriage & Land, Succession & Dynasties, Religion, Vassal Management.

## Commands

| Task | Command |
|------|---------|
| Full build | `.\scripts\compile.ps1` |
| Regenerate mod sections | `.\scripts\generate-mod-sections.ps1` |
| Typst compile only | `typst compile main.typ` |
