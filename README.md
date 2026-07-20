<p align="center">
  <img src="assets/logo.png" alt="Welcome to the Valley logo" width="200" />
</p>

# Welcome to the Valley

A curated, beginner-friendly modlist for **Stardew Valley** using **Stardrop**.

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
- **Stardrop** — [Download](https://www.nexusmods.com/stardewvalley/mods/10455)
- **SMAPI** — [Download](https://smapi.io/)
- **Pandoc** — `winget install Pandoc`
- **wkhtmltopdf** — [Download](https://wkhtmltopdf.org/downloads.html)

## Quick Start

1. Install SMAPI (run the installer, point it at your Stardew Valley install)
2. Download and extract Stardrop
3. Clone this repo: `git clone https://github.com/YOUR_USER/stardew-valley-modlist.git`
4. Follow `docs/guide/01-setup.md` for Stardrop configuration and mod installation order
5. Install mods per category in the order specified in `docs/guide/03-mod-catalog/`

## Building the PDF Guide

```powershell
./scripts/build.ps1
```

Output: `welcome-to-the-valley-guide.pdf`

## Guide Structure

The guide teaches Stardew Valley in three waves — each adds complexity on top of the last:

| Wave | Scope | Mod Categories |
|------|-------|----------------|
| **1** | Enhanced vanilla (foundations, bugfixes, UI) | 00–02 |
| **2** | Content expansion (graphics, world, items, NPCs) | 03–11, 15 |
| **3** | Gameplay overhaul (skills, farming, balance) | 12–14 |

| Chapter | File | Description |
|---------|------|-------------|
| 1 | `01-setup.md` | Stardrop + SMAPI installation walkthrough + wave structure |
| 2 | `02-vanilla-primer.md` | How to play Stardew Valley (Wave 1 — first-time friendly) |
| 3 | `03-mod-catalog/*` | Full mod catalog by category (16 categories across 3 waves) + alternates/conflicts |
| 4 | `04-modded-gameplay.md` | New mechanics from Waves 2 and 3, progression checklist |
| 5 | `05-mod-manager-setup.md` | Stardrop mod management: profiles, groups, and filtering |

## Performance

Benchmarks at 4K resolution, per category. See `docs/performance/`.

## License

Mods are property of their respective authors.
