# Torque Ascension

A structured mod-list and comprehensive game guide for Automobilista 2 (V1.6+), using AMS2 Content Manager.

## Structure

| Directory | Purpose |
|-----------|---------|
| `guide/` | Markdown guide chapters (install, waves 0-3, appendix) |
| `templates/` | Typst style and guide template (`style.typ`, `guide.typ`) |
| `scripts/` | Build script (`generate-pdf.ps1`) |
| `output/` | Generated PDFs |
| `assets/` | Logo, screenshots, fonts |

## Generate PDF

```powershell
./scripts/generate-pdf.ps1
```

Output: `output/torque-ascension-v<VERSION>.pdf`

## Prerequisites

- Typst 0.15.1 or later (`typst --version`)
- Fonts (Montserrat, Inter, JetBrains Mono) — auto-downloaded by the build script if missing
- AMS2 Content Manager (for using the mod list; not required for PDF generation)
