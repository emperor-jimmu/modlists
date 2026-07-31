# Apex Alchemy — F1 25 Modlist & Guide

A structured modlist and game guide for **F1 25 v1.24** (July 13, 2026).

## What's Inside

- **Wave 0 — First Lap:** Complete beginner's tutorial. Learn to drive, race, and manage a career. Zero game knowledge required.
- **Wave 1 — Building Speed:** Intermediate strategy, telemetry dashboards, camera mods, livery customisation. Layer in your first mods.
- **Wave 2 — Apex Predator:** Advanced car setup, custom championships, physics tweaks, full visual overhaul. Become the complete driver.

## Quick Start

1. Read the PDF: `output/APEX-ALCHEMY-GUIDE.pdf`
2. Install F1 25 and update to v1.24
3. Follow the Wave 0 installation steps

## Regenerate PDF

```powershell
.\generate-pdf.ps1
```

Requires Typst 0.15.1: `winget install Typst.Typst`

## Structure

```
f1-25/
├── guide/             # Guide + modlist organised by wave
│   ├── wave-0/        # Beginner tutorial + tools
│   ├── wave-1/        # Intermediate strategy + mods
│   └── wave-2/        # Advanced guide + mods
├── templates/         # Typst PDF templates
├── output/            # Generated PDFs
├── GUIDE.md           # Compiled single-source markdown
├── STATUS.md          # Project decisions and progress
├── AGENTS.md          # Vision, constraints, conventions
├── conflicts-mods.md  # Known mod conflicts
└── mod-ideas.md       # Future mod ideas
```
