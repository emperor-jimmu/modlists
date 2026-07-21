# The Long Ascent

A curated 3-wave modlist and comprehensive game guide for Kerbal Space Program 1.12.5.

## Quick Start

### Prerequisites

- **KSP 1.12.5** installed via Steam, GOG, or direct download
- **CKAN** — [Download](https://github.com/KSP-CKAN/CKAN/releases)
- **Breaking Ground** and **Making History** DLCs (recommended but not required)
- **Typst 0.13+** — [Install](https://github.com/typst/typst/releases) (only needed to regenerate the PDF)

### Install Mods — One Wave at a Time

Install each wave's `.ckan` file separately:

```
File → Install from .ckan → the-long-ascent-wave-0.ckan   (beginner)
File → Install from .ckan → the-long-ascent-wave-1.ckan   (intermediate, requires Wave 0)
File → Install from .ckan → the-long-ascent-wave-2.ckan   (advanced, requires Waves 0–1)
```

Each wave is cumulative — Wave 1 expects Wave 0 is installed, and Wave 2 expects Waves 0–1.

Alternatively, install everything at once with `the-long-ascent.ckan` (the combined file). Waves 0–1 appear as recommendations; Wave 2 mods appear as suggestions you can opt into.

### Read the Guide

Open `output/the-long-ascent.pdf` or regenerate it:

```bash
# Windows
scripts\build.bat

# Linux / macOS
bash scripts/build.sh
```

## Project Structure

```
├── guide/                      — Guide content (Typst markup)
├── template/                   — Typst PDF template and styling
├── scripts/                    — Build scripts and font downloader
├── output/                     — Generated PDF
├── assets/                     — Logo and bundled fonts
├── mod-ideas.md                — Personal mod dev backlog (not in PDF)
├── the-long-ascent.ckan        — Combined CKAN metapackage (all waves)
├── the-long-ascent-wave-0.ckan — Wave 0 CKAN metapackage
├── the-long-ascent-wave-1.ckan — Wave 1 CKAN metapackage
└── the-long-ascent-wave-2.ckan — Wave 2 CKAN metapackage
```

## Waves

| Wave | Name | Focus | Guide |
|------|------|-------|-------|
| 0 | First Steps | UI/QoL only | Quickstart: orbit, Mun, docking |
| 1 | Going Further | Graphics, parts | Full tutorial: interplanetary, ISRU, stations |
| 2 | The Long Ascent | Life support, colonization, interstellar | Strategy guide |

Waves are cumulative. Install one at a time in order.
