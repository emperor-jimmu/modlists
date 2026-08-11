# Iron Valley — AGENTS.md

Curated modlist + game guide for **Derail Valley** (Steam app 588030) on the current live build (**B99.7**, the final B99 stability patch of 2025-08-02, plus the October 2025 Unity security patch — B100 is in development, targeted for late 2027, and is NOT released), running a curated **Unity Mod Manager (UMM)** modlist. Modlist name: **Iron Valley** — after the railroading heart of the game: diesels, grades, and night freight.

## Sources of truth (accuracy rules)

This is a knowledge-based guide: the user asked for a complete installation + modlist + how-to-play + personas guide. Content must stay grounded and current:

- **Game version**: Derail Valley is *Early Access*. The last released builds are **B99** (2024-11-21) with stability patches **B99.1–B99.7** (final patch 2025-08-02), followed by a Unity engine security patch (2025-10-04, no gameplay changes). The team's **B100** update is in development with a target around end of 2027. Do not invent version numbers beyond this. The guide targets the current live build (B99.7 line) and says so.
- **Mod manager**: **Unity Mod Manager (UMM)** (Nexus `site/mods/21`, newman55) is the community-standard loader for Derail Valley — CCL's own page and the community install guides name it as the required loader (DoorstopProxy method; in-game menu via Ctrl+F10). Pinned at guide time: v0.32.5 (2026-07-29). The game has NO official mod support and no Steam Workshop — Nexus Mods is the primary hub.
- **Mods**: each adopted mod must have a verifiable download source (a Nexus Mods page or an official GitHub repo) and must exist on it at guide time. Never invent mods, versions, authors, or mechanics. Where a version drifts, point to the mod's page rather than hard-coding.
- **Moderation policy (user directive, 2026-08-11)**: mods must *deepen / modernize* the experience — more trains, more cargo, better graphics, more detail. **No overpowered mods, nothing that makes the game easier.** Rejected candidates are recorded with reasons in STATUS.md, not in the guide's mod cards.
- **Personas**: Derail Valley has no character creator — the "game creation choices" in the personas chapter are the *career setup choices the game itself offers* (save name, starting region/station, locomotive purchase strategy, license order, self-imposed house rules, goals, mod emphasis). Keep every game-mechanic claim (licenses, jobs, debt) grounded in the wiki/steam pages, and mark house rules as player-imposed.

## Structure

```text
derail-valley/
├── AGENTS.md            # project agent rules (this file)
├── README.md            # overview, sources, build instructions
├── STATUS.md            # living decision log
├── guide/               # guide sources (Typst 0.15), organized by chapter
│   ├── main.typ         # assembly: theme import, cover, TOC, includes
│   ├── theme.typ        # dark "night freight" palette + helpers (tip/info/warn/mod/key)
│   ├── 10-installation.typ   # Steam B99.7 → Unity Mod Manager → mods
│   ├── 20-modlist.typ        # the curated modlist + rejected-with-reasons
│   ├── 30-how-to-play.typ    # field manual: career, jobs, driving, the modded game
│   └── 40-personas.typ       # player personas: background + career/creation choices
├── output/              # generated PDFs
├── build-pdf.bat        # regenerates the PDF
└── assets/logo.jpg      # cover emblem (night freight scene, generated)
```

## Build & regenerate

- `build-pdf.bat` compiles `guide/main.typ` → `output/Iron-Valley.pdf` (requires Typst 0.15+).
- Live preview: `typst watch guide/main.typ output/Iron-Valley.pdf`

## Guide conventions

- Guide sources are Typst 0.15 files in `guide/`, one file per chapter.
- Styling and helpers live in `guide/theme.typ`; content files use only headings, paragraphs, lists, tables, and the shared helpers (`#tip`, `#info`, `#warn`, `#mod`, `#key`).
- Dark "night freight" palette (indigo-slate background, warm bone text, headlight-amber + signal-green accents) matches the cover emblem.
- Keep install steps accurate to the real flow: Steam → UMM (DoorstopProxy) → drop mod zips into the UMM Mods tab → verify in-game with Ctrl+F10. Do not invent menu names or keybinds beyond what the mod pages and UMM documentation state.
- **Screenshots**: only real, user-provided captures (typically `assets/screenshots/*.png`) may be wired into the guide as figures — never fabricate or hotlink game imagery.
