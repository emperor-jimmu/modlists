# Primordial Outpost Reborn - Agent Instructions

Oxygen Not Included (Steam App 457140) modlist and game guide. Target build resolved in STATUS.md (build gate, spec §6.1); DLCs owned: Spaced Out! + Bionic Booster Pack.

## Structure
- `guide/` - wave-based Typst sources (installation, per-wave files, glossary)
- `output/` - generated PDF (`primordial-outpost-reborn.pdf`)
- `assets/` - static assets (`logo.jpg`)
- `template.typ` - Typst master template (cover, TOC, page setup, fonts)
- `build.bat` - one-click PDF generator
- `STATUS.md` - live audit: decisions, accepted/rejected mods, conflicts, verifications
- `conflicts-mods.md` - known mod conflicts (excluded from PDF)
- `mod-ideas.md` - future/UNVERIFIED candidates (excluded from PDF)
- `docs/superpowers/` - specs and plans

## Key Rules
- Mods must be verified against the Steam Workshop (app 457140); every card needs a verified URL + page-visible metadata. Target build + DLCs: see STATUS.md.
- Mod organizer = Mod Updater (workshop 2018291283; project brief names Peter Han, page shows creator "Stephen" — see STATUS.md), else the native Steam Workshop flow; see STATUS.md and installation.typ.
- No meme/joke mods, explicit porn, redundant, or cheating/overpowered/all-knowing content.
- ONI-native power-spike gate (spec §4): no ex-nihilo resources, no free heat deletion, no tech/labor bypass, no morale/skill breaks, no all-knowing info — unless a proportionate cost exists.
- Classification: CLIENT-ONLY and BEHAVIORAL-NEUTRAL allowed in Wave 0; STAT-CHANGING is Wave 1+ only and must pass the gate.
- Every mod card: verified clickable name+URL, workshop last-updated date + classification, dependencies (incl. DLC), system/mechanic impact, notes.
- No fabrication: unverifiable mods go to mod-ideas.md + STATUS.md, never into guide cards.
- Decision log maintained in `STATUS.md`.

## PDF Generation
Run `build.bat` -> `typst compile template.typ output/primordial-outpost-reborn.pdf` (Typst 0.15/0.15.1).
Fonts: Cinzel / Bahnschrift / Georgia.
