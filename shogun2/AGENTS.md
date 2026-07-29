# Tenka Fubu — Agent Rules

## Project
Curated modlist & guide for Total War: SHOGUN 2 (Steam, latest version). Named **Tenka Fubu** ("All the World Under One Sword"). Uses the CA native Mod Manager.

## 3-Wave Structure
| Wave | Title | Clan | Difficulty | Mod Profile |
|------|-------|------|------------|-------------|
| 0 | The Shimazu Way | Shimazu | Beginner | Vanilla + UI/QoL only |
| 1 | Tenka Fubu | Oda | Intermediate | Graphics, units, faction unlocks |
| 2 | Sekigahara's Shadow | Tokugawa | Advanced | Overhauls, expanded mechanics |

## Mod Addition Rules
- No conflicting mods — cross-reference in `conflicts.md`
- No porn mods. Adult/nude only where thematically relevant — ask user if uncertain
- No redundant mods (same table, same change)
- Must pass validation: check last-updated date → scan recent Workshop comments for "broken"/"crash" → cross-reference TWC forums → manual test if possible
- No cheating/overpower/all-knowing mods
- Wave 0: UI/QoL only. No gameplay changes
- Later waves: Graphics → Units → Content → Mechanics (increasing impact order)

## Build Pipeline
```powershell
# Prerequisites: install fonts/ then:
typst compile --root . --font-path fonts typst/main.typ output/Tenka-Fubu-Modlist.pdf
# Or use the batch wrapper:
./generate-pdf.ps1
```

## Fonts
Bundled in `fonts/`: Crimson Pro (Regular, Bold) + Noto Sans JP (Regular, Bold). Required for PDF generation.

## Key Files
- `guide/wave-*/` — content in Typst markup, one subdir per wave
- `typst/theme.typ` — colors, font names, page constants
- `typst/cover.typ` — cover page layout
- `typst/main.typ` — assembly + styling
- `conflicts.md` — incompatibilities (NOT in PDF)
- `mod-ideas.md` — future mod concepts (NOT in PDF)
