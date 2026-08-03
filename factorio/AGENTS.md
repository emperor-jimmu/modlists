# Synaptic Overproduction - Agent Instructions

Factorio 2.0.77 (May 21, 2026) modlist and game guide.

## Structure
- `guide/` - wave-based Typst sources (installation, per-wave files, glossary)
- `output/` - generated PDF (`synaptic-overproduction.pdf`)
- `assets/` - static assets (`logo.jpg`)
- `template.typ` - Typst master template (cover, TOC, page setup, fonts)
- `build.bat` - one-click PDF generator
- `STATUS.md` - live audit: decisions, accepted/rejected mods, conflicts, verifications
- `conflicts-mods.md` - known mod conflicts (excluded from PDF)
- `mod-ideas.md` - future/UNVERIFIED candidates (excluded from PDF)
- `docs/superpowers/` - specs and plans

## Key Rules
- Mods must be compatible with Factorio 2.0.77; every mod card needs a verified URL
  from the official Factorio Mod Portal (mods.factorio.com). Space Age is owned.
- Mod organizer = Factorio's built-in mod manager (main menu -> Mods); no third-party
  tool and no UI-flow verification needed.
- No meme/joke mods, explicit porn, redundant, or cheating/overpowered content.
- Power-spike test: mods raising output caps, throughput, or efficiency above vanilla
  caps, or lowering costs below vanilla, are rejected unless they add a proportionate
  challenge/cost.
- Every mod card: verified clickable name+URL, portal-listed factorio version +
  last-updated date, dependencies, system/mechanic impact, notes.
- Fact-check every structural game claim against official Factorio sources before it
  goes into a guide; log discrepancies in STATUS.md.
- Decision log maintained in `STATUS.md`.

## PDF Generation
Run `build.bat` -> `typst compile template.typ output/synaptic-overproduction.pdf` (Typst 0.15/0.15.1).
Fonts: Cinzel / Bahnschrift / Georgia. Target 40-60 pages.
