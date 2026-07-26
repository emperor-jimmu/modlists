# AGENTS.md — Enhanced Liberty

This is a curated modlist and game guide for **GTA IV version 1.0.8.0** (November 29, 2016 patch).

## Project Rules

- **Mods must be compatible with GTA IV 1.0.8.0** — use patch date as heuristic if version unclear
- No cheating/overpowered/all-knowing mods
- No porn mods (adult/nude content is okay if relevant — ask the user if in doubt)
- No conflicting mods, no redundant mods
- **FusionFix** (latest, version-pinned) is the base compatibility framework

## Content Structure

- `guide/*.md` — authoritative source for all guide content
- `src/` — Typst PDF generation only (template, converter, chapters)
- `conflicts.txt` — internal, excluded from PDF
- `ideas.txt` — internal, excluded from PDF

## Waves

| Wave | Theme | Mod Scope |
|------|-------|-----------|
| 0 — Fresh Off the Boat | New immigrant, no rep | UI & QoL only, no mechanic changes |
| 1 — City of Dreams | Criminal underworld | Graphics, content, new mechanics |

Each wave = fresh save. No carry-over.

## Build

Run `build-pdf.bat` to regenerate the PDF.

## Mod Entry Format

In markdown files:

```markdown
### [Mod Name](url)
| Field | Value |
|-------|-------|
| **Version** | x.y.z |
| **Dependencies** | Mod A |
| **System Impact** | What it changes |

2-3 line description.

Installation notes specific to 1.0.8.0.
```

Mods are grouped by category within each wave file.
