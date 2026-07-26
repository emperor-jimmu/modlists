# Enhanced Liberty — GTA IV Modlist

A curated modlist and game guide for **GTA IV version 1.0.8.0** (November 29, 2016 patch).

## About

Enhanced Liberty organizes mods into two **waves** — each is a complete playthrough with its own roleplaying theme, difficulty curve, and mod setup.

- **Wave 0: Fresh Off the Boat** — UI & QoL mods, complete how-to-play guide
- **Wave 1: City of Dreams** — Graphics, content, and mechanics mods with advanced strategy

## Prerequisites

- GTA IV 1.0.8.0 (Steam or retail, downgraded if needed)
- FusionFix (see installation guide)

## Getting Started

See `guide/01-installation.md` for full setup instructions.

## Regenerating the PDF

Run `build-pdf.bat` to compile the PDF guide from source.

## Project Structure

| Path | Purpose |
|------|---------|
| `guide/` | Guide content in markdown (authoritative) |
| `src/` | Typst template, converter, and build artifacts |
| `conflicts.txt` | Mod conflict tracking (not in PDF) |
| `ideas.txt` | Future mod ideas (not in PDF) |
| `output/` | Generated PDF |

## License

Modlist structure and guide text are provided for reference. Mods are property of their respective authors.
