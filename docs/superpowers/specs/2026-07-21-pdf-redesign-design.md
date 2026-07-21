# PDF Redesign — Light Mode Clean Modern Guidebook

## Goal

Rebuild `guide/template.typ` (and minimally `guide/main.typ`) to produce a colorful, readable, light-mode PDF suitable as a printed game guidebook. Keep all content files unchanged.

## Color Palette

Zomboid-inspired accent colors on a white canvas.

| Role | Color | Hex |
|---|---|---|
| Page background | White | `#FFFFFF` |
| Body text | Near-black | `#1A1A1A` |
| Headings | Dark charcoal | `#2D2D2D` |
| Tips, section rules (green) | Zomboid olive-green | `#6B8E23` |
| Warnings, cautions (amber) | Moodle-amber | `#CC5500` |
| Danger, critical (red) | Blood-red | `#8B0000` |
| Info callouts (blue) | Muted blue-gray | `#5B7B9A` |
| Notes, metadata | Gray | `#888888` |
| Callout / mod entry bg | Light tinted | `#F5F5F5` etc. |
| Links | Amber | `#CC5500` |
| Table zebra stripe | Off-white | `#F8F8F8` |
| Table borders | Light gray | `#E0E0E0` |
| Footer rule line | Light gray | `#E0E0E0` |

## Typography

| Role | Font | Size | Style |
|---|---|---|---|
| Body | Atkinson Hyperlegible | 11pt | Regular |
| H1 | Special Elite | 22pt | Regular, charcoal, bottom rule line |
| H2 | Special Elite | 17pt | Regular, charcoal |
| H3 | Special Elite | 14pt | Regular, amber |
| Code / mono | JetBrains Mono | 10pt | Regular |
| Cover title | Special Elite | 40pt | Regular, charcoal |
| Cover subtitle | Atkinson Hyperlegible | 14pt | Regular, gray |
| Cover metadata | Atkinson Hyperlegible | 10pt | Regular, gray |
| Header (page) | Atkinson Hyperlegible | 8pt | Regular, gray, left-aligned |
| Footer (page) | Atkinson Hyperlegible | 9pt | Regular, gray, centered |
| Links | Atkinson Hyperlegible | inherit | Amber fill |

## Page Layout

- A4 paper (210mm x 297mm)
- Margins: ~22mm all sides (uneven if needed)
- Header: left-aligned section/chapter name in gray 8pt
- Footer: thin `#E0E0E0` rule line across page width, then centered "Page N" in 9pt gray below
- No colored fills in headers/footers

## Cover Page

- White background
- Logo (`assets/logo.png`) centered, ~50% width
- Title "NO ONE IS COMING" in 40pt Special Elite, charcoal
- Subtitle "A Project Zomboid Build 42 Modlist & Survival Guide" in 14pt Atkinson Hyperlegible, gray
- Bottom: build version, compilation date, and "Compiled July 2026" in 10pt gray
- No borders or colored blocks
- Page break after

## Table of Contents

- Heading "Contents" in 22pt Special Elite, charcoal
- `#outline()` with depth 2, indented, dotted leaders to page numbers
- Page numbers in amber
- Page break after

## Callout Blocks

Five types. All share: 3px colored left border, light tinted background, dark body text.

| Type | Background | Left Border | Icon/prefix |
|---|---|---|---|
| Tip | `#F0F7E6` | `#6B8E23` | `Tip:` (green) |
| Warning | `#FFF5E6` | `#CC5500` | `Warning:` (amber) |
| Danger | `#FDE8E8` | `#8B0000` | `Danger:` (red) |
| Info | `#EBF0F5` | `#5B7B9A` | `Info:` (blue) |
| Note | `#F5F5F5` | `#888888` | `Note:` (gray) |

## Mod Entries

- White card / `#F5F5F5` light fill block, slight padding
- Mod name in Special Elite, amber, bold
- Workshop link clickable in amber
- Metadata (category, dependencies, system-impact) in 9pt gray
- Description in standard body text

## Settings Tables

- Clean alternating-row table
- White and `#F8F8F8` zebra stripes
- Left column (key): bold, right column (value): normal
- Thin `#E0E0E0` grid lines
- No colored fills or backgrounds

## Wave Dividers

- Full-page centered block on white background
- "WAVE N" in 28pt Special Elite, charcoal
- Olive-green horizontal rule line below
- Wave name in 36pt Special Elite, amber
- Flavor/story text in 12pt italic, gray
- "Begin Wave N" at bottom in small gray
- Page break after

## Page Numbering

- Centered in footer
- Thin rule line above the number
- Format: "Page N"
- Resets per page, unique across document
- Simple `#counter(page).display()` or `#numbering` approach

## Content Structure (unchanged)

```
Cover → TOC → Preface → Installation → Wave 0 → Wave 1 → Wave 2
```

Each wave: `divider → story → settings → guide → modlist`

## Implementation Scope

| File | Action |
|---|---|
| `guide/template.typ` | Full rewrite — all styles, macros, cover page, callouts, tables, headers/footers |
| `guide/main.typ` | Minimal — may need header content adjustments, verify includes still compile |
| All wave content files | No changes needed |

## Non-Goals

- Changing any content in preface, installation, story, settings, guide, or modlist files
- Adding or removing fonts
- Changing the build command
- Adding new Typst features not in 0.15
