# Steel Genesis

An Open Rails 1.6.1 modlist & game guide.

A wave-based modlist and game guide for Open Rails 1.6.1 (released 14 January 2026), built around the built-in Content system. Four staged setups ("waves") take you from beginner driving through expert steam operations, bundled with a how-to-drive guide and glossary, styled from the project logo and rendered to a single PDF by Typst.

## Waves

| Wave | Title | Focus | Content |
| --- | --- | --- | --- |
| 0 | The Rookie | Learn to drive; config-as-QoL | Demo Model 1 (BR-blue diesel express) |
| 1 | The Road Freight | Main-line diesel freight, signals, consists | BNSF Starter Route |
| 2 | The Yard | Switching & industry ops | Craven Timber Railway |
| 3 | The Limited | Steam mastery, mountain ops | Great Zig Zag Railway |

## Installation

Install Open Rails 1.6.1, then use the built-in Content system (the Content form at Open Rails startup) to install each wave's route; community content can be installed manually into the Content folder. See the guide's Installation section for full steps.

## Build the PDF

Run `build.bat` to generate the PDF at `output/steel-genesis.pdf` (requires Typst 0.15.1).

## Project Structure

```
open-rails/
├── AGENTS.md
├── README.md
├── STATUS.md
├── conflicts-mods.md
├── mod-ideas.md
├── template.typ
├── build.bat
├── assets/logo.jpg
├── output/steel-genesis.pdf
└── guide/
    ├── installation.typ
    ├── glossary.typ
    └── wave-{0..3}/
```

## Design & Plan

- [Design spec](docs/superpowers/specs/2026-08-03-steel-genesis-design.md)
- [Implementation plan](docs/superpowers/plans/2026-08-03-steel-genesis.md)
