# Routa — AGENTS.md

Structured modlist + game guide for **My Winter Car v.260516-01** (Steam Early Access, current build at guide time, August 2026) running a curated **MSCLoader (for My Winter Car)** modlist in two layers. Modlist name: **Routa** — Finnish for *ground frost*, the frozen earth that defines the game's January 1999 setting.

## Sources of truth (accuracy rules)

This is a knowledge-based guide: the user asked for a complete installation + modlist + how-to-play + personas guide. Content must stay grounded and current:

- **Game version**: My Winter Car (Steam app 4164420, Amistech Games) is in *active Early Access* (launched 2025-12-29) — it is NOT a finished product. Latest verified at build time: **v.260516-01 (2026-05-16)**, date-coded EA builds, Steam auto-updates. Do not invent a "final version"; pin "v.260516-01 (current at guide time, August 2026)" and expect drift. The Steam News Hub (`store.steampowered.com/news/app/4164420`) is the source of truth for versions.
- **Mod manager**: **MSCLoader (for My Winter Car)** — Nexus `mywintercar/mods/3`, GitHub `piotrulos/MSCModLoader` — is the community-standard mod manager and the only loader in this guide (497 mods on the hub depend on it). Pinned: **v1.4.2** (2026-06-21) — re-verify before restating. Its official GitHub wiki is the source of truth for installer flow and the in-game mod menu.
- **Mods**: each adopted mod must have a verifiable Nexus Mods page (`nexusmods.com/mywintercar/mods/<id>`), recorded with author, version and update date in STATUS.md. Never invent mods, versions, authors, or mechanics. Where a version drifts, point to the mod's page rather than hard-coding.
- **Two-layer structure (user directive)**: **Layer 1** = QoL + graphics only, for the fresh player. **Layer 2** = the full modded experience (detail/depth mods added on top), started once the player has experience. Because MSCLoader loads every mod at once, layers are managed with the loader's in-game mod menu: Layer 1 = the five QoL/graphics mods enabled; Layer 2 = add Rivett Revamp to that set once you know the ropes.
- **Moderation policy (user directive)**: mods must *deepen / modernize* the experience, *improve graphics*, *add detail* — **no overpowered mods, nothing that makes the game easier**. Rejected candidates are recorded with reasons in STATUS.md, not in the guide's mod cards.
- **Personas**: My Winter Car has **no character creator** — the player character is fixed. The "game creation choices" in the personas chapter are *starting strategy (Sorbet first vs. straight to the Rivett), job focus, house rules, endgame goal (ice track race / rally sprint / historic plates), and mod emphasis* — self-imposed, not character systems. Do not invent character systems that don't exist.
- **Mechanics facts**: engine assembly (200+ part build), the cold-start CarbChamber procedure, VIN/trim system, oil grades, jobs, taxi details, save paths etc. are documented from the My Winter Car Wiki (`my-winter-car.fandom.com`) and Amistech's official channels — not invented. Where a number is a community estimate (e.g. "200+ parts"), it is labeled as such.

## Structure

```text
my-winter-car/
├── AGENTS.md            # project agent rules (this file)
├── README.md            # overview, sources, build instructions
├── STATUS.md            # living decision log (verified mod IDs, verdicts)
├── guide/               # guide sources (Typst 0.15), organized by chapter
│   ├── main.typ         # assembly: theme import, cover, TOC, includes
│   ├── theme.typ        # dark "winter night garage" palette + helpers (tip/info/warn/mod/key)
│   ├── 10-installation.typ   # Steam v.260516-01 → MSCLoader → mods (two layers)
│   ├── 20-modlist.typ        # the two-layer curated modlist + rejected-with-reasons
│   ├── 30-how-to-play.typ    # field manual: daily loop, build, cold start, engineering, terms
│   └── 40-personas.typ       # player personas: background + game creation choices
├── output/              # generated PDFs
├── build-pdf.bat        # regenerates the PDF
├── tools/make-logo.py   # cover emblem generator (PIL)
└── assets/logo.jpg      # cover emblem (winter garage night scene, generated)
```

## Build & regenerate

- `build-pdf.bat` compiles `guide/main.typ` → `output/Routa.pdf` (requires Typst 0.15+).
- Live preview: `typst watch guide/main.typ output/Routa.pdf`

## Guide conventions

- Guide sources are Typst 0.15 files in `guide/`, one file per chapter.
- Styling and helpers live in `guide/theme.typ`; content files use only headings, paragraphs, lists, tables, and the shared helpers (`#tip`, `#info`, `#warn`, `#mod`, `#key`).
- Dark "winter night garage" palette (frozen midnight-blue background, ice-white text, garage-amber + frost-cyan accents) matches the cover emblem.
- Keep install steps accurate to the real flow: Steam → MSCLInstaller.exe → Mods folder → per-mod dll/folder → in-game mod menu. Do not invent menu names or keybinds; where a key isn't certain, point to the loader wiki or the mod's page.
- **Screenshots**: only real, user-provided captures (typically `assets/screenshots/*.png`) may be wired into the guide as figures — never fabricate or hotlink game imagery.
