# Peräjärvi '95 — AGENTS.md

Structured modlist + game guide for **My Summer Car 1.0** (the final release line, out of Early Access 2025-01-08) running a curated **MSCLoader** modlist. Modlist name: **Peräjärvi '95** — after the game's town and the summer the game is set in.

## Sources of truth (accuracy rules)

This is a knowledge-based guide: the user asked for a complete installation + modlist + how-to-play + personas guide. Content must stay grounded and current:

- **Game version**: My Summer Car (Steam app 516751) is a *finished product* — 1.0 shipped 2025-01-08 and Steam auto-updates to the final stable build; only maintenance patches are expected. Do not invent a "final version number" beyond "1.0 (current stable)".
- **Mod manager**: MSCLoader (Nexus `mysummercar/mods/147`, GitHub `piotrulos/MSCModLoader`) is the community-standard mod manager — it is the only loader in this guide. Its official GitHub README/wiki is the source of truth for install steps and the in-game mod menu. Pinned reference: v1.4.2 (June 2026) — re-verify before restating.
- **Mods**: each adopted mod must have a verifiable download source (a Nexus Mods page or an OverTake.gg page) and must exist on it at guide time. Never invent mods, versions, authors, or mechanics. Where a version drifts, point to the mod's page rather than hard-coding.
- **Moderation policy (user directive, 2026-08-11)**: mods must *deepen / modernize* the experience, *improve graphics*, and *add detail* — **no overpowered mods, nothing that makes the game easier**. Rejected candidates are recorded with reasons in STATUS.md, not in the guide's mod cards.
- **Personas**: My Summer Car has **no character creator** — the "game creation choices" in the personas chapter are the character *name* (edited via MSC Editor: `playerfirstname` / `playerlastname` in `defaultES2File.txt`), self-imposed house rules, goals, and mod emphasis. The community tradition of Finnish names / the "Kesseli" surname is documented, not invented.

## Structure

```text
my-summer-car/
├── AGENTS.md            # project agent rules (this file)
├── README.md            # overview, sources, build instructions
├── STATUS.md            # living decision log
├── guide/               # guide sources (Typst 0.15), organized by chapter
│   ├── main.typ         # assembly: theme import, cover, TOC, includes
│   ├── theme.typ        # dark "summer night garage" palette + helpers (tip/info/warn/mod/key)
│   ├── 10-installation.typ   # Steam 1.0 → MSCLoader → mods
│   ├── 20-modlist.typ        # the curated modlist + rejected-with-reasons
│   ├── 30-how-to-play.typ    # field manual: daily loop, build, inspection, modded play
│   └── 40-personas.typ       # player personas: background + game creation choices
├── output/              # generated PDFs
├── build-pdf.bat        # regenerates the PDF
└── assets/logo.jpg      # cover emblem (summer-night garage scene, generated)
```

## Build & regenerate

- `build-pdf.bat` compiles `guide/main.typ` → `output/Perajarvi-95.pdf` (requires Typst 0.15+).
- Live preview: `typst watch guide/main.typ output/Perajarvi-95.pdf`

## Guide conventions

- Guide sources are Typst 0.15 files in `guide/`, one file per chapter.
- Styling and helpers live in `guide/theme.typ`; content files use only headings, paragraphs, lists, tables, and the shared helpers (`#tip`, `#info`, `#warn`, `#mod`, `#key`).
- Dark "summer night garage" palette (charcoal background, warm bone text, headlight-amber + Satsuma-orange accents) matches the cover emblem.
- Keep install steps accurate to the real flow: Steam → MSCLInstaller.exe → Mods folder → per-mod dll/folder. Do not invent menu names or keybinds; where a key isn't certain, point to the in-game Settings / loader wiki.
- **Screenshots**: only real, user-provided captures (typically `assets/screenshots/*.png`) may be wired into the guide as figures — never fabricate or hotlink game imagery.
