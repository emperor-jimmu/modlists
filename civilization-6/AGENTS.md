# The Grand Chronicle — AGENTS.md

Structured modlist + game guide for **Sid Meier's Civilization VI** (Complete Edition) on the final PC build **1.0.12.68**. Modlist name: **The Grand Chronicle**.

## Sources of truth (accuracy rules)

- **Game version**: Civ 6 Complete Edition — base game + Rise and Fall + Gathering Storm + New Frontier Pass + Leader Pass — patched to **1.0.12.68**, the last game update (July 15, 2024). The content roadmap ended with the Leader Pass (final pack: *Rulers of England*, March 29, 2023). Version reference: civilization.fandom.com/wiki/Updates_(Civ6).
- **Mods**: every entry in `guide/20-modlist.typ` is curated and verified against its live Steam Workshop page (title, author, item ID, last-update date, subscription count). Never add a mod to the list without verifying its Workshop item ID and author. Entries record: name (linked), author, what it does, why it is in the list, compatibility notes.
- **Mod policy (user directive, 2026-08-11)**: mods must deepen / modernize the experience — more AI, more tech, more detail, better graphics, more information. NO overpowered mods and NO mods that make the game easier. UI / information mods are welcome (they add clarity, not power). Exactly one AI overhaul (Real Strategy) — never stack AI overhauls (AI+, RHAI, Better Balanced Game).
- **Mod manager**: Steam Workshop + Enhanced Mod Manager (a Workshop mod) + the in-game Additional Content screen. Conflicts are resolved with `.modinfo` `<LoadOrder>` values. Civ 6 has no community-standard external mod manager; do not recommend Vortex or dead third-party tools.
- Never fabricate mod data, mechanics, or numbers. When unsure about a game mechanic, prefer the in-game Civilopedia and the official patch notes.

## Structure

```text
civilization-6/
├── AGENTS.md            # project agent rules (this file)
├── README.md            # overview, sources, build instructions
├── STATUS.md            # living decision log (design notes, verdicts, open items)
├── guide/               # guide sources (Typst 0.15), one file per chapter
│   ├── main.typ         # assembly: theme import, cover, TOC, includes
│   ├── theme.typ        # palette + helpers (tip/info/warn/mod-entry/persona)
│   ├── 10-installation.typ
│   ├── 20-modlist.typ
│   ├── 30-how-to-play.typ
│   └── 40-personas.typ
├── output/              # generated PDFs
├── build-pdf.bat        # regenerates the PDF
└── assets/logo.jpg      # cover artwork (user-provided; wired in when present)
```

## Build & regenerate

- `build-pdf.bat` compiles `guide/main.typ` → `output/The-Grand-Chronicle.pdf` (requires Typst 0.15+).
- The cover embeds `assets/logo.jpg` automatically once that file exists; until then the cover renders without artwork (the bat passes `--input logo=yes` only when the file is present).
- Live preview: `typst watch guide/main.typ output/The-Grand-Chronicle.pdf`

## Guide conventions

- Guide sources are Typst 0.15 files in `guide/`, one file per chapter.
- Styling and helpers live in `guide/theme.typ`; content files use only headings, paragraphs, lists, tables, and the shared helpers (`#tip`, `#info`, `#warn`, `#mod-entry`, `#persona`).
- Parchment + imperial-gold palette (warm cream background, indigo ink, gold accents) matches the Civ VI paper-map aesthetic.
- Keep install steps accurate to the real flow: Steam Workshop subscription → Enhanced Mod Manager → Additional Content → launch. Do not invent menu names.
- Game-mechanic content must stay accurate to Civ 6 Gathering Storm ruleset; when unsure, prefer the in-game Civilopedia.
