# When Gods Bleed

A Total War: Warhammer III modlist and game guide for version 8.1.1 (July 16, 2026).

## Overview

When Gods Bleed is a wave-based modlist and guide designed for Total War: Warhammer III. Each wave represents a different campaign setup with escalating difficulty, unique roleplaying backgrounds, and an increasing number of mods — from vanilla with QoL improvements in Wave 0 to full chaos in Wave 3.

## Waves

| Wave | Name | Focus |
|------|------|-------|
| 0 | The Old World | Vanilla + UI/QoL mods — beginner friendly |
| 1 | The Gathering Storm | + Content mods — intermediate strategy |
| 2 | The End Times | + Mechanics mods — advanced gameplay |
| 3 | When Gods Bleed | Full chaos — all mods active, maximum challenge |

## Installation

1. Install RPFM (see [RPFM.md](RPFM.md))
2. Set up your mod folder per the guide
3. Use the installation instructions in each wave's guide section
4. Generate this PDF by running `build.bat`

## Project Structure

```
totalwar-warhammer3-modlist/
├── guide/
│   ├── wave-0/     # Beginner guide & modlist
│   ├── wave-1/     # Intermediate guide & modlist
│   ├── wave-2/     # Advanced guide & modlist
│   └── wave-3/     # Expert guide & modlist
├── output/         # Generated PDF
├── assets/         # Logo and assets
├── build.bat       # PDF generation script
├── template.typ    # Typst template
├── RPFM.md         # RPFM setup guide
├── conflicts.conf  # Conflicting mods (excluded from PDF)
└── mod-ideas.md    # Future mod ideas (excluded from PDF)
```

## PDF Generation

Run `build.bat` to generate the PDF using Typst 0.15. The output will be placed in `output/when-gods-bleed.pdf`.