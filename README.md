# Beyond the Surface

A 3-wave Terraria modlist and game guide for Terraria 1.4.5 via tModLoader.

## Waves

| Wave | Title | Difficulty | Focus |
|------|-------|------------|-------|
| 0 | First Steps | Classic (Softcore) | Vanilla + UI/QoL mods, complete beginner guide |
| 1 | Digging Deeper | Expert (Softcore) | QoL + light content, strategy guide |
| 2 | Beyond the Surface | Expert (Softcore) | Content overhauls, expert guide + player challenges |

Each wave is a fresh playthrough with a connected narrative.

## Prerequisites

- Terraria (Steam)
- tModLoader (Steam, free)
- Typst 0.15 (for PDF generation)
- pandoc (for markdown conversion)

## Build

```powershell
.\build.bat
```

Output: `output/beyond-the-surface.pdf`

## Project Structure

- `guide/` — Source markdown content (human-edited)
- `data/` — Mod data in YAML (user-provided)
- `template/` — Typst template files
- `output/` — Generated PDF
- `assets/` — Logo and fonts

## License

Content © 2026. Terraria © Re-Logic.
