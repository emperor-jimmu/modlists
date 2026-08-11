# G.A.M.M.A Protocol — AGENTS.md

Structured modlist + game guide for **S.T.A.L.K.E.R. Anomaly 1.5.3** with the **GAMMA modpack** (Grok's / Grokitach's Automated Modular Modpack for Anomaly). Modlist name: **G.A.M.M.A Protocol**.

## Sources of truth (accuracy rules)

This is a knowledge-based guide: the user asked for a complete installation + how-to-play + addons guide for Anomaly + GAMMA. Content is researched and written from official material; claims must stay grounded and current:

- **Anomaly**: official ModDB page (moddb.com/mods/stalker-anomaly) — 1.5.3 is the supported release.
- **GAMMA**: the official GAMMA Discord (discord.com/invite/stalker-gamma) and GitHub wiki (github.com/Grokitach/Stalker_GAMMA) are the only sources of truth for installation, versions, and addon compatibility. GAMMA updates frequently (0.9.x line); exact version numbers drift — prefer "check the Discord" over hard-coding versions.
- Never invent addons, versions, mechanics, or install steps. Addon entries in `guide/40-addons.typ` are limited to community-documented addons with honest risk notes.
- **Moderation policy (user directive, 2026-08-11):** addons must be cosmetic / quality-of-life only — no overpower, no redundant (already included in GAMMA), no conflicting (excluded outright, not "installed with caution"), no adult or graphic themes. Every addon card must carry a verifiable download source: a ModDB page or the official GAMMA Discord.
- **Version freshness:** before stating a version number (GAMMA, Anomaly, addons), verify it online. Reference numbers in this guide: Anomaly 1.5.3; GAMMA 0.9.5 (May 2026).
- The pack's full ~400-mod list lives inside MO2 after install; the guide describes systems and categories, not a fabricated per-mod list. Where exact numbers/recipes are version-dependent, point to MCM/Discord.

## Structure

```text
stalker/
├── AGENTS.md            # project agent rules (this file)
├── README.md            # overview, sources, build instructions
├── STATUS.md            # living decision log
├── guide/               # guide sources (Typst 0.15), organized by chapter
│   ├── main.typ         # assembly: theme import, cover, TOC, includes
│   ├── theme.typ        # dark "Zone" palette + helpers (tip/info/warn/addon/key)
│   ├── 10-installation.typ   # Anomaly 1.5.3 → GAMMA install
│   ├── 20-modlist.typ        # the GAMMA pack overview
│   ├── 30-how-to-play.typ    # detailed game guide
│   └── 40-addons.typ         # community addons + install how-to
├── output/              # generated PDFs
├── build-pdf.bat        # regenerates the PDF
└── assets/logo.jpg      # cover artwork (GAMMA PROTOCOL emblem)
```

## Build & regenerate

- `build-pdf.bat` compiles `guide/main.typ` → `output/G.A.M.M.A-Protocol.pdf` (requires Typst 0.15+).
- Live preview: `typst watch guide/main.typ output/G.A.M.M.A-Protocol.pdf`

## Guide conventions

- Guide sources are Typst 0.15 files in `guide/`, one file per chapter.
- Styling and helpers live in `guide/theme.typ`; content files use only headings, paragraphs, lists, tables, and the shared helpers (`#tip`, `#info`, `#warn`, `#addon`, `#key`).
- Dark "Zone" palette (olive-black background, bone text, zone-gold/toxic-green accents) matches the cover emblem.
- Keep install steps accurate to the real launcher flow: Anomaly first (ModDB → extract → launcher), then GAMMA (installer/launcher from Discord → MO2). Do not invent menu names.
- **Screenshots**: only real, user-provided captures (typically `assets/screenshots/*.png`) may be wired into the guide as figures — never fabricate or hotlink game imagery. Wire them as `#figure(image("..."), caption: ...)` in the relevant chapter.
