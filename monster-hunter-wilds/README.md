# Forlorn Oath — Monster Hunter Wilds Modlist & Guide

A curated modlist and playing guide for **Monster Hunter Wilds** (PC/Steam, current build **1.042.00.01**, August 2026).

The list deepens and modernizes the game — quality of life, better information, a sharper image, and more detail — with **no** overpowered or difficulty-lowering mods. It ships with full installation instructions, a how-to-play chapter for the modded game, and six player personas with ready-made character-creation choices.

## Contents

- **18 verified mods** (17 required, 1 optional) across four pillars: quality of life (8), interface & information (3), visuals & clarity (4), plus the frameworks/tools everything runs on (3)
- **Mod manager**: Fluffy Mod Manager 5000 (the RE Engine community standard) + REFramework
- **How to play**: the hunt loop, Focus Mode & wounds, weather/seasons, camps, Support Hunters, the endgame, and multiplayer etiquette
- **Six personas**: The Warden of the Forlorn, The Storm's Edge, The Wildfire, The Skybound Warden, The Ember Artisan, The Horizon Keeper — each with a background and character-creation choices

## Sources

- Game version reference: Capcom's Monster Hunter Wilds update announcements; current build **1.042.00.01** (2026-08-07). Expansion *Ascendance* announced for 2027 — not yet released.
- Every mod entry links to its live Nexus Mods page; data (author, mod id, last-update date) was verified against Nexus at compile time (August 2026).

## Structure

```text
monster-hunter-wilds/
├── AGENTS.md          # project rules
├── README.md          # this file
├── STATUS.md          # living decision log
├── guide/             # Typst 0.15 sources (main, theme, chapters)
├── build-pdf.bat      # regenerates the PDF
├── output/            # Forlorn-Oath.pdf
└── assets/logo.jpg    # cover artwork (drop the file here)
```

## Build

Requires [Typst 0.15+](https://github.com/typst/typst/releases) on PATH.

```bat
build-pdf.bat
```

The cover embeds `assets/logo.jpg` automatically once the file is present; the bat passes `--input logo=yes` only when the artwork exists, so the PDF always compiles.
