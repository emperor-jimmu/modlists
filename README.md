# Stardew Valley Modlist Guide

A curated, beginner-friendly modlist for **Stardew Valley** using **Mod Organizer 2**.

## Philosophy

This guide is built for **first-time players** who want a richer, more polished Stardew Valley experience without losing the soul of the original game.  

**Target version: 1.6.15** — every mod in this list is verified compatible.

### What's Included

- Bugfixes to smooth out rough edges
- Expanded content — more weapons, monsters, locations, NPC interactions, crops, and items
- Improved UI/HUD for better usability
- Enhanced graphics (cohesive base overhaul + piecemeal upgrades)
- Tasteful mature content that grows with the player
- Performance benchmarks to show real impact

### What's NOT Included

- Cheats or overpowered mods
- Overtly pornographic content
- Multiplayer mods

## Prerequisites

- **Stardew Valley** (latest version, from Steam/GOG)
- **Mod Organizer 2** — [Download](https://github.com/ModOrganizer2/modorganizer/releases)
- **SMAPI** — [Download](https://smapi.io/)
- **Pandoc** — `winget install Pandoc`
- **wkhtmltopdf** — [Download](https://wkhtmltopdf.org/downloads.html)

## Quick Start

1. Install SMAPI (run the installer, point it at your Stardew Valley install)
2. Install Mod Organizer 2
3. Clone this repo: `git clone https://github.com/YOUR_USER/stardew-valley-modlist.git`
4. Follow `docs/guide/01-setup.md` for MO2 configuration and mod installation order
5. Install mods per category in the order specified in `docs/guide/03-mod-catalog/`

## Building the PDF Guide

```powershell
./scripts/build.ps1
```

Output: `stardew-valley-modlist-guide.pdf`

## Guide Structure

| Chapter | File | Description |
|---------|------|-------------|
| 1 | `01-setup.md` | MO2 + SMAPI installation walkthrough |
| 2 | `02-vanilla-primer.md` | How to play Stardew Valley (first-time friendly) |
| 3 | `03-mod-catalog/*` | Full mod catalog by category (15 categories) |
| 4 | `04-modded-gameplay.md` | How the game changes with the modlist |
| 5 | `05-mo2-separators.md` | MO2 separator list with colors and gradients |

## Performance

Benchmarks at 4K resolution, per category. See `docs/performance/`.

## License

Mods are property of their respective authors.
