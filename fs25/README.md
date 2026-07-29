# Fields, Vines & Barrels

A Farming Simulator 25 modlist and gameplay guide.

## Structure

Three progressive "waves," each a separate playthrough with a unique backstory:

- **Wave 0 — The Homestead**: Vanilla + QoL/UI/Visuals. Beginner guide.
- **Wave 1 — Fields, Vines & Barrels**: Mid-game. Winery/brewery focus on Le Mechet.
- **Wave 2 — Empire**: Late-game. Industrial-scale farming, max difficulty.

Mods are cumulative — each wave builds on the previous.

## Building the PDF

Requires [Pandoc](https://pandoc.org) and [XeLaTeX](https://tug.org/texlive/) (or TinyTeX).

```
.\build-pdf.bat
```

Output: `output/fields-vines-and-barrels.pdf`

## Project Layout

```
guide/
├── mod-manager.md          # Mod Manager V0.7.11 guide
├── reshade.md               # Reshade installation guide
├── wave-0/                  # The Homestead
├── wave-1/                  # Fields, Vines & Barrels
└── wave-2/                  # Empire
conflicts.md                 # Known mod conflicts
mod-ideas.md                 # Future mod ideas
```
