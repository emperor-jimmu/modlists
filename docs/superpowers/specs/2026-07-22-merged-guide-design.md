# Design: Merged Setup & Mod Guide

**Date**: 2026-07-22
**Status**: Approved

## Goal

Merge `GETTING-STARTED.md` (tutorials) and `MODLIST.md` (mod tables) into a single `GUIDE.md` source file, rendered as a polished Typst PDF.

## Design

### File Layout

```
GUIDE.md                 # NEW — single source file, hand-merged from the two originals
templates/guide.typ      # MODIFIED — cover page (logo + title), TOC, renders GUIDE.md
templates/style.typ      # MODIFIED — driftwood color palette, enhanced typography
templates/modlist.typ    # ARCHIVED — no longer used
generate-pdf.ps1         # MODIFIED — single compile step for the new guide
GETTING-STARTED.md       # KEPT as reference (no longer source for PDF)
MODLIST.md              # KEPT as reference (no longer source for PDF)
```

### GUIDE.md Structure

Single canonical file. Each wave has one `## Wave X — Name` header with subsections:
- `### Mods` — mod tables from MODLIST, with mod-name hyperlinks kept, dependency-only rows/tables stripped
- `### <Tutorial sections>` — content from GETTING-STARTED

Wave -1 has no mod table — prerequisites only.

### Cover Page (pure Typst)

White background, centered:
- `assets/driftwood-logo.png` — `width: 60%`
- "Driftwood" — 36pt bold, `#604020`
- "Setup & Mod Guide" — 18pt, `#5B7B8A`
- Version from `VERSION` file
- No page number

### Table of Contents

`#outline()` after cover, before first wave. Shows `## Wave` entries and their `###` children.

### Color Palette (from logo)

| Token | Hex | Usage |
|-------|-----|-------|
| driftwood-dark | `#403020` | H1 |
| driftwood-brown | `#604020` | H2, table headers, wave banners |
| driftwood-blue | `#5B7B8A` | Links, H3, inline code |
| driftwood-gold | `#C4A882` | Callout left border |
| driftwood-cream | `#F5EDE0` | Callout bg, table alt rows |
| driftwood-text | `#2C1810` | Body text |
| driftwood-code-bg | `#2C2418` | Code block bg |
| driftwood-code-text | `#E8D8C0` | Code block text |

### Fonts

Body: Cambria 11pt. Code: Consolas 9pt. H1: 20pt bold. H2: 15pt bold. Cover title: 36pt bold.

### Visual Enhancements

- Tables: brown header row with white text, cream alternating rows, thin horizontal strokes only
- Code blocks: dark bg with warm text, rounded corners
- Callouts: cream bg with gold left border
- Links: driftwood-blue

### PDF Generation

`generate-pdf.ps1`:
1. Check Typst
2. `typst compile templates/guide.typ rendered/DRIFTWOOD-GUIDE.pdf`
3. Report size + success

## Scope Verification

- Zero build-time merging — single source file
- Zero parsing edge cases — human-curated markdown
- Single PDF output
