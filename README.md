# No One is Coming

**A Project Zomboid Build 42 Modlist & Survival Guide**

Three progressively harder waves — from complete beginner to hardened survivor — each with curated mods, custom sandbox settings, and a roleplaying backstory.

## Quick Start

```
.\build.bat
```

Requires [Typst 0.15](https://github.com/typst/typst/releases) in your PATH.

Generated PDF: `output/No-One-Is-Coming.pdf`

## Project Structure

```
├── build.bat                  # Compile the PDF
├── assets/
│   ├── logo.png
│   └── fonts/                 # .ttf files (Atkinson Hyperlegible, Special Elite, JetBrains Mono)
├── guide/
│   ├── template.typ           # Shared styles
│   ├── main.typ               # Root document
│   ├── preface.typ            # Intro & Mod Manager setup
│   ├── installation.typ       # Installation & troubleshooting
│   ├── wave-0/                # "The First Night"
│   ├── wave-1/                # "Scars and Lessons"
│   └── wave-2/                # "No One is Coming"
├── output/
│   └── No-One-Is-Coming.pdf   # Generated PDF
├── mod-conflicts.md           # Known mod conflicts (not in PDF)
├── mod-ideas.md               # Future mod ideas (not in PDF)
└── README.md
```

## Target Game Version

Project Zomboid Build 42.12.3 (22 October 2025). All mods verified B42 compatible.

## Versioning

v1.0.0 for Build 42.12.3. Spec in `docs/superpowers/specs/`.
