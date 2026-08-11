# The Grand Chronicle — Civilization VI Modlist & Guide

A curated modlist and playing guide for **Sid Meier's Civilization VI** (Complete Edition, final build **1.0.12.68**, July 2024).

The list deepens and modernizes the game — smarter AI, richer information, more detail, and better visuals — with **no** overpowered or difficulty-lowering mods. It ships with full installation instructions, a how-to-play chapter for the modded game, and six player personas with ready-made game-creation choices.

## Contents

- **26 verified mods** across four categories: AI & Strategy · Interface & Information · Graphics & Immersion · World & Content
- **Mod manager**: Steam Workshop + Enhanced Mod Manager + the in-game Additional Content screen
- **How to play**: game setup, game modes, era-by-era play with the mods' new lenses
- **Six personas**: The Architect of Wonders, The Iron Chancellor, The Cradle of Science, The Merchant Republic, The Faithful Pilgrim, The Chronicler of Eras

## Sources

- Game version reference: [civilization.fandom.com/wiki/Updates_(Civ6)](https://civilization.fandom.com/wiki/Updates_(Civ6))
- Every mod entry links to its live Steam Workshop page; data (author, update date, subscribers) was verified against Steam at compile time (August 2026).

## Structure

```text
civilization-6/
├── AGENTS.md          # project rules
├── README.md          # this file
├── STATUS.md          # living decision log
├── guide/             # Typst 0.15 sources (main, theme, chapters)
├── build-pdf.bat      # regenerates the PDF
├── output/            # The-Grand-Chronicle.pdf
└── assets/logo.jpg    # cover artwork (drop the file here)
```

## Build

Requires [Typst 0.15+](https://github.com/typst/typst/releases) on PATH.

```bat
build-pdf.bat
```

The cover embeds `assets/logo.jpg` automatically once the file is present; the bat passes `--input logo=yes` only when the artwork exists, so the PDF always compiles.
