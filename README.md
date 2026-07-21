# No Crown Without Blood

A structured, multi-wave modlist and game guide for Mount & Blade II: Bannerlord.

**Target:** Bannerlord WS v1.2.7 / BL v1.4.7 (8 July 2026)
**Launcher:** Bannerlord Software Extender (BLSE)

## What is this?

A progressive modlist and companion guide organized into three "waves" of increasing difficulty and mod complexity. Each wave features a roleplaying backstory in a revenge-arc narrative. The guide teaches you how to play Bannerlord from zero to total war.

## Waves

- **Wave 0 — The Exile**: Vanilla experience with UI/QoL mods. Complete how-to-play guide for new players.
- **Wave 1 — The Alliance**: Enhanced graphics, deeper mechanics, expanded content. Mid-game strategy and politics.
- **Wave 2 — The Reckoning**: Heavy overhaul mods, total conversion feel. Endgame warfare and kingdom management.

## Building the PDF

### Prerequisites

- [Typst 0.15+](https://github.com/typst/typst/releases) in system PATH
- Required fonts (installed system-wide):
  - [Crimson Pro](https://fonts.google.com/specimen/Crimson+Pro)
  - [Libre Baskerville](https://fonts.google.com/specimen/Libre+Baskerville)
  - [Fira Code](https://fonts.google.com/specimen/Fira+Code)
  - [Cinzel](https://fonts.google.com/specimen/Cinzel)

### Build

```
build.bat
```

Output: `output/No-Crown-Without-Blood.pdf`

## Project structure

```
bannerlord-modlist/
├── AGENTS.md              # AI agent rules
├── README.md              # This file
├── build.bat              # PDF generation script
├── assets/
│   ├── logo.png           # Modlist logo
│   └── screenshots/       # Per-wave screenshots (optional)
├── typst/
│   ├── template.typ       # Cover page, body setup, show rules
│   └── styles.typ         # Colors, fonts, helper functions
├── guide/
│   ├── _index.typ         # Entry point for typst compile
│   ├── shared/
│   │   ├── installation.typ
│   │   └── troubleshooting.typ
│   └── waves/
│       ├── wave-0/        # The Exile
│       ├── wave-1/        # The Alliance
│       └── wave-2/        # The Reckoning
├── output/                # Generated PDF
├── mod-conflicts.md       # Known mod incompatibilities (not in PDF)
└── mod-ideas.md           # Future mod ideas (not in PDF)
```

## License

This guide is for personal use. Mod copyrights belong to their respective authors.
