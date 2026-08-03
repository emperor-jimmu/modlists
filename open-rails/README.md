# Steel Genesis

A curated Open Rails 1.6.1 modlist and game guide: four staged new-game setups ("waves") that escalate in route and operational complexity, bundled with a how-to-drive guide and glossary, styled from a selected logo and rendered to a single PDF by Typst.

## Waves

| Wave | Title | Content |
| --- | --- | --- |
| 0 | The Rookie | Demo Model 1 (BR-blue diesel express) |
| 1 | The Road Freight | BNSF Starter Route |
| 2 | The Yard | Craven Timber Railway |
| 3 | The Limited | Great Zig Zag Railway |

## Installation

Install mods via the built-in Content system (the Content form at Open Rails startup, or manual install into the Content folder).

## Build

Run `build.bat` to generate the PDF.

## Project Structure

```
open-rails/
├── guide/                 # wave-based source content
├── output/                # generated PDF (steel-genesis.pdf)
├── assets/                # static assets (logo.jpg)
├── template.typ           # Typst master template
├── build.bat              # one-click PDF generator
├── STATUS.md              # audit, decisions, mod log
├── conflicts-mods.md      # known mod conflicts (excluded from PDF)
├── mod-ideas.md           # future mod ideas (excluded from PDF)
└── docs/superpowers/      # specs and plans
```