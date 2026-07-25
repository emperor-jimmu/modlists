# Void Enhanced — Starfield Modlist

**Game Version:** 1.16.244 (June 11, 2026)
**Mod Manager:** Mod Organizer 2
**PDF Engine:** Typst 0.15

## Project Rules

- Two waves: Wave 0 "The Drifter" (beginner, vanilla+/QoL), Wave 1 "The Void Walker" (advanced, mechanics/content/graphics)
- Each wave is a separate MO2 profile — mods do NOT carry over between waves
- Mods must be compatible with game version 1.16.244
- No porn mods (adult/nude OK where relevant — ask user if uncertain)
- No cheating, overpowered, or all-knowing mods
- No redundant or conflicting mods
- Graphics, content, mechanics allowed (mechanics for Wave 1+)

## File Conventions

- Guide content: `.typ` files under `guide/`
- PDF source: `main.typ` at repo root
- Output: `output/Void-Enhanced.pdf`
- `conflicts-mods.md` and `mod-ideas.md` are NOT included in the PDF

## Regenerating the PDF

```
.\generate-pdf.bat
```

## Build Pipeline

`main.typ` includes all guide files via `#include`. `generate-pdf.bat` runs `typst compile main.typ output/Void-Enhanced.pdf --font-path assets`.
