# CK3 Modlist Guide

A curated, categorized modlist for **Crusader Kings 3** (latest version, all DLC), packaged as a learn-to-play guide with automatic PDF generation.

## What This Is

- **Curated modlist** — 100+ mods across 12 categories: bugfixes, UI, graphics, gameplay, culture/religion, events, map expansion, music, fantasy (optional), adult (separate), and performance tools
- **CK3 beginner's tutorial** — Teaches you the game from scratch, with deep dives on marriage, succession, religion, and vassal management
- **PDF guide** — One command builds a printable PDF via Typst
- **Performance benchmarks** — Empirical FPS testing per mod category

## Prerequisites

- **CK3** on Steam with all DLC
- **Vortex** (mod manager) — [Download](https://www.nexusmods.com/about/vortex/)
- **Typst** (PDF generation) — `winget install Typst.Typst` or [typst.app](https://typst.app/)
- **PowerShell 7** — Built into Windows 11 / [Download](https://github.com/PowerShell/PowerShell)

## Quick Start

```powershell
# Install mods via Vortex using the Steam Workshop links in modlist/*.md
# Build the PDF guide:
.\scripts\compile.ps1
# Output: output\ck3-modlist-guide-v1.0.0.pdf
```

## Project Structure

| Path | Purpose |
|------|---------|
| `modlist/` | Markdown files — one per category, the source of truth |
| `content/` | Typst chapter files — compiled into the PDF |
| `scripts/` | Build and benchmark PowerShell scripts |
| `data/` | Performance test results |
| `main.typ` | Typst entry point |
| `VERSION` | Controls the PDF version string |

## Modlist Categories

| Category | File |
|----------|------|
| Bugfixes | `modlist/01-bugfixes.md` |
| UI / HUD | `modlist/02-ui-hud.md` |
| Map & Environment | `modlist/03-map-environment.md` |
| Portraits & Models | `modlist/04-portraits-models.md` |
| Culture & Religion | `modlist/05-culture-religion.md` |
| Events & Decisions | `modlist/06-events-decisions.md` |
| Gameplay Mechanics | `modlist/07-gameplay-mechanics.md` |
| Map Expansion | `modlist/08-map-expansion.md` |
| Music & Sound | `modlist/09-music-sound.md` |
| Fantasy (Optional) | `modlist/10-fantasy-optional.md` |
| Adult (Separate) | `modlist/11-adult.md` |
| Performance Tools | `modlist/12-performance-tools.md` |
| Missing Mods | `modlist/missing-mods.md` |

## Version Compatibility

This guide targets CK3 **v1.15.x** (all DLC). CK3 auto-updates on Steam. To stay on the guide's version:

1. Steam -> Right-click CK3 -> Properties -> Betas
2. Select the version matching this guide
3. **Warning:** Updating CK3 will likely break mods until authors update

## Building the PDF

```powershell
.\scripts\compile.ps1
```

Requires Typst installed and in PATH. Output: `output\ck3-modlist-guide-v{VERSION}.pdf`

## Contributing Mod Entries

1. Add an entry to the appropriate `modlist/XX-category.md` file
2. Include: link, mod version, CK3 version, update date, load order, performance impact
3. Describe gameplay impact in plain language
4. Keep adult content in `11-adult.md` only
5. No cheat or overpower mods

## License

Mod list curated for personal and educational use. Individual mods retain their own licenses.
