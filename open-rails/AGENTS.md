# Steel Genesis — Agent Instructions

Open Rails 1.6.1 modlist and game guide (released 14 January 2026).

## Project Structure

- `guide/` — wave-based source content (installation, per-wave files, glossary)
- `output/` — generated PDF (`steel-genesis.pdf`)
- `assets/` — static assets (`logo.jpg`)
- `template.typ` — Typst master template (cover, TOC, page setup, fonts)
- `build.bat` — one-click PDF generator (Typst compile wrapper)
- `STATUS.md` — live audit, decisions, accepted/rejected mods, conflicts
- `conflicts-mods.md` — known mod conflicts (excluded from PDF until a real conflict exists)
- `mod-ideas.md` — future/eligible mod candidates (excluded from PDF)
- `docs/superpowers/` — specs and plans

## Key Rules

- Mods must load/run in Open Rails 1.6.1; only HTTP-200-verified URLs in mod cards.
- Mod organizer = the built-in Content system (install via the Content form / manual Content-folder install).
- Mod sources: official OR 1.6.1 content catalogue (primary), Elvas Tower Download Library (audited, thin), other reputable freeware (fallback).
- NO multiplayer anywhere in the guide.
- No meme/joke mods, porn, redundant, or cheating/overpowered content.
- Mod entries include: clickable verified name+URL, dependencies, system/mechanic impact, notes.
- Decision log maintained in `STATUS.md`.

## PDF Generation

Run `build.bat` → `typst compile template.typ output/steel-genesis.pdf` (Typst 0.15.1).
Fonts: Cinzel / Bahnschrift / Georgia.

## Wave Map

| Wave | Title | Content |
| --- | --- | --- |
| 0 | The Rookie | Demo Model 1 (BR-blue diesel express) |
| 1 | The Road Freight | BNSF Starter Route |
| 2 | The Yard | Craven Timber Railway |
| 3 | The Limited | Great Zig Zag Railway |