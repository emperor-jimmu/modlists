# Glowing Horizon

A structured mod-list and comprehensive game guide for **Fallout 4**, version **1.11.221** (May 27, 2026), using **Mod Organizer 2.5**.

## Structure

| Directory | Purpose |
|-----------|---------|
| `guide/` | Markdown guide chapters (install, waves 0-1, appendix, glossary) |
| `templates/` | Typst style and guide template (`style.typ`, `guide.typ`) |
| `scripts/` | Build script (`generate-pdf.ps1`) |
| `output/` | Generated PDFs |
| `assets/` | Logo and other art |

## Generate PDF

```powershell
./scripts/generate-pdf.ps1
```

Output: `output/Glowing-Horizon-v<VERSION>.pdf`

## Prerequisites

- Typst 0.15.1 or later (`typst --version`)
- Mod Organizer 2.5 (for using the mod list; not required for PDF generation)

## Not Included in the PDF

- `conflicts-mods.md` — documented mod conflicts and resolutions
- `mod-ideas.md` — unverified/future mod candidates
- `STATUS.md` — decision log
