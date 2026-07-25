# Tenka Fubu — Total War: Shogun 2 Modlist & Guide

**Tenka Fubu** ("All the World Under One Sword") is a curated modlist and companion guide for **Total War: SHOGUN 2** (Steam, latest version — patch 1.1.0, build 5934).

Organized in three progressive waves, each with a historical roleplaying theme, increasing difficulty, and a curated mod profile.

## Waves at a Glance

| Wave | Title | Clan | Difficulty | Mods |
|------|-------|------|------------|------|
| 0 | The Shimazu Way | Shimazu | Beginner | Vanilla (UI/QoL only) |
| 1 | Tenka Fubu | Oda | Intermediate | Graphics, units, factions |
| 2 | Sekigahara's Shadow | Tokugawa | Advanced | Campaign overhauls |

## How to Use This Guide

1. Start with **Wave 0** if you've never played Shogun 2 — it includes a complete how-to-play guide
2. Complete a campaign before advancing to the next wave
3. Each wave's `01-setup.typ` explains installation and mod manager configuration
4. The mod manager uses `user.script.txt` in `%appdata%/The Creative Assembly/Shogun2/scripts/`

## Building the PDF

### Prerequisites
- [Typst 0.15+](https://github.com/typst/typst/releases) — add to PATH
- Fonts: download and place in `fonts/`:
  - [Crimson Pro](https://fonts.google.com/specimen/Crimson+Pro) — Regular, Bold, TTF
  - [Noto Sans JP](https://fonts.google.com/specimen/Noto+Sans+JP) — Regular, Bold, TTF

### Build
```powershell
./generate-pdf.ps1
```
Output: `output/Tenka-Fubu-Modlist.pdf`

## Project Structure
```
guide/wave-0/       — beginner setup, mod list, guide
guide/wave-1/       — intermediate setup, mod list, guide
guide/wave-2/       — advanced setup, mod list, guide
typst/              — PDF source files (theme, cover, main)
conflicts.md        — mod conflict tracking (not in PDF)
mod-ideas.md        — future mod development ideas (not in PDF)
```
