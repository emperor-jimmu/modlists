# Forlorn Oath — AGENTS.md

Structured modlist + game guide for **Monster Hunter Wilds** on the current PC build **1.042.00.01** (August 7, 2026). Modlist name: **Forlorn Oath**.

## Sources of truth (accuracy rules)

- **Game version**: Monster Hunter Wilds (PC/Steam), latest build **1.042.00.01** (released 2026-08-07; 1.042.00.00 on 2026-08-04 enabled all 26 Event Quests offline and Prologue Demo save transfer). The paid expansion *Ascendance* was announced 2026-06-05 for 2027 — **not yet released**; this list targets the current base game only.
- **Mod manager**: **Fluffy Mod Manager** (Nexus site mod 818, by FluffyQuack, v3.081 updated 2026-08-06) — the community-standard manager for RE Engine titles. Framework: **REFramework** (Nexus 93; always the GitHub nightly).
- **Mods**: every entry in `guide/20-modlist.typ` is curated and verified against its live Nexus Mods page (title, author, mod id, description, last-update date). Never add a mod without verifying its Nexus mod id and author. Entries record: name (linked), author, pillar, what it does, why it is in the list, compatibility notes.
- **Mod policy (user directive, 2026-08-11)**: mods must deepen / modernize the experience — QoL, UI/information, graphics, details. **NO overpowered mods and NO mods that make the game easier** (no damage/stat/drop/item-economy changes, no buff extenders, no cheat/trainer mods, no difficulty inflators). UI/information mods are welcome (clarity, not power). Excluded mods and reasons are recorded in STATUS.md and summarized at the end of the modlist chapter.
- **"More AI" honesty rule**: no stable monster/Palico AI overhaul exists for Wilds (RE Engine + multiplayer desync risk). Never fabricate or invent an "AI overhaul" mod. The guide documents the honest treatment: Support Hunters (in-game NPC party) + information mods that make monster behavior readable.
- Never fabricate mod data, mechanics, or numbers. When unsure about a game mechanic, prefer the in-game field guide / official patch notes and mark uncertain details generically.

## Structure

```text
monster-hunter-wilds/
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
├── output/              # generated PDFs (Forlorn-Oath.pdf)
├── build-pdf.bat        # regenerates the PDF
└── assets/logo.jpg      # cover artwork (user-provided; wired in when present)
```

## Build & regenerate

- `build-pdf.bat` compiles `guide/main.typ` → `output/Forlorn-Oath.pdf` (requires Typst 0.15+).
- The cover embeds `assets/logo.jpg` automatically once that file exists; until then the cover renders without artwork (the bat passes `--input logo=yes` only when the file is present).
- Live preview: `typst watch guide/main.typ output/Forlorn-Oath.pdf`

## Guide conventions

- Guide sources are Typst 0.15 files in `guide/`, one file per chapter.
- Styling and helpers live in `guide/theme.typ`; content files use only headings, paragraphs, lists, tables, and the shared helpers (`#tip`, `#info`, `#warn`, `#mod-entry`, `#persona`).
- Forbidden-Lands palette (warm parchment, deep scarlet banner, amber accents) matches the Wilds mood.
- Keep install steps accurate to the real flow: REFramework dinput8.dll → Fluffy Mod Manager → CatLib/D2D libraries → mods → in-game Script Generated UI. Do not invent menu names.
- Game-mechanic content must stay accurate to Wilds 1.042; when unsure, prefer generic phrasing over fabricated specifics.
