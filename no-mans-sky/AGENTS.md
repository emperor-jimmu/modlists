# Aetherial Purity - Agent Instructions

No Man's Sky (Steam App 275850) modlist and game guide, targeting game version **6.45.1**.
Mod organizer: **Singularity**. Decisions and open questions live in `STATUS.md`.

## Structure

- `guide/` - wave-based Typst sources (installation, per-wave guides, glossary)
- `output/` - generated PDF (`Aetherial-Purity.pdf`)
- `assets/` - static assets (`logo.jpg`)
- `template.typ` - Typst master template (cover, TOC, page setup, fonts, mod-card helper)
- `build.bat` - one-click PDF generator
- `STATUS.md` - decision log: decisions, notes, open questions (no mod validation)
- `conflicts-mods.md` - known mod conflicts (excluded from PDF)
- `mod-ideas.md` - future mod ideas (excluded from PDF)
- `docs/superpowers/` - specs and plans

## Key Rules

- Every user-supplied mod becomes a mod card in its wave's guide files via the `mod-entry`
  helper: clickable name + URL, dependencies, system/mechanic impact, notes (load order,
  config). Missing fields render as *"user to provide"* - never invent or research missing data.
- Compatibility heuristic (the user's rule, documented in the guide, never applied by us):
  if a specific mod version is unknown, use the patch/release date.
- Three waves: **0 = First Light** (complete beginners; vanilla + UI/QoL only),
  **1 = The Cartographer** (intermediate; content + mechanics),
  **2 = The Astral Architect** (advanced; richest systems). Waves 1-2 add new mechanics but
  no pure power spikes. Each wave is its own new-game setup with an RP backstory.
- `STATUS.md` records decisions, notes, and open questions only - never mod validation results.
- No fabrication: content that cannot be verified goes to STATUS.md open questions, never into
  guide prose.

## PDF Generation

Run `build.bat` -> `typst compile template.typ output/Aetherial-Purity.pdf` (Typst 0.15.1).
Fonts: Cinzel / Bahnschrift / Georgia.
Theme: light ethereal - teal `#2C9293`, deep navy `#2D4144`, deep teal-green `#1F6F5E`,
sage `#4F7A6E`, rust `#773E3E`, ice `#F4F9F8`.
