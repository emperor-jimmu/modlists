# Whitecap — AGENTS.md

Structured modlist + game guide for **Stormworks: Build and Rescue v1.15.18** (the current stable build, "The Airburst Update", June 2026) running a curated **Steam Workshop** modlist in two layers. Modlist name: **Whitecap** — after the breaking wave crests that mark the game's stormy rescue waters.

## Sources of truth (accuracy rules)

This is a knowledge-based guide: the user asked for a complete installation + modlist + how-to-play + personas guide. Content must stay grounded and current:

- **Game version**: Stormworks (Steam app 573090, Geometa) is in *active development* — it is NOT a finished product. Latest verified at build time: **v1.15.18 (The Airburst Update, 2026-06-24)**, with SteamDB activity through July 2026. Do not invent a "final version"; pin "v1.15.18 (current stable at guide time, August 2026)" and expect drift. The Steam News Hub (`store.steampowered.com/news/app/573090`) is the source of truth for versions.
- **Required DLC (user directive, 2026-08-12)**: the guide states that *all three* DLCs are required — Search and Destroy (app 1542360, weapons), Industrial Frontier (app 2124750, industry), Space (app 2383250, space) — the "Complete Collection" bundle covers them. Keep this requirement in the installation "What you need" table and the modlist glance table; do not drop it.
- **Mod manager**: Stormworks has **official asset modding since v1.13.0** — mods are distributed via the Steam Workshop and enabled **per save** through the in-game **Mod Manager** ("Enabled Mods" at New Game). There is NO third-party manager in this guide; legacy external tools (Stormloader) are obsolete. The in-game flow (New Game → Enabled Mods → Workshop tab) is documented from the R.A.M.B.O. author's install instructions.
- **Mods**: every adopted mod must have a verified Steam Workshop page (item ID recorded in STATUS.md) that existed at guide time. Never invent mods, versions, authors, or mechanics. Mods carry a game-version tag (e.g. `v1.15.18`) — check the *Last updated* date on each page; versions drift faster than any printed guide.
- **Two-layer structure (user directive)**: **Layer 1** = QoL + graphics only, for the fresh player. **Layer 2** = the full modded experience, started once the player has experience (a new save with all mods enabled). Layers map to separate saves because mods are chosen at world creation.
- **Moderation policy (user directive)**: mods must *deepen / modernize* the experience, *improve graphics*, and *add detail* — **no overpowered mods, nothing that makes the game easier**. Rejected candidates are recorded with reasons in STATUS.md, not in the guide's mod cards.
- **Personas**: Stormworks has **no character creator** — the "game creation choices" in the personas chapter are the *world-creation settings* (Career vs Custom mode, survival difficulty toggles, starting options), *self-imposed house rules*, *goals*, and *mod emphasis*. Do not invent character systems that don't exist.
- **Engineering facts**: Stormworks' physics (buoyancy/displacement, modular engines, power grid, logic/Lua microcontrollers, fuel/fluid systems) and its known engine quirks (e.g. R.A.M.B.O.'s documented "load the save twice" game-constants bug) are described from the game's mechanics and the mods' own documentation — not invented.

## Structure

```text
stormworks-build-and-rescue/
├── AGENTS.md            # project agent rules (this file)
├── README.md            # overview, sources, build instructions
├── STATUS.md            # living decision log (verified mod IDs, verdicts)
├── guide/               # guide sources (Typst 0.15), organized by chapter
│   ├── main.typ         # assembly: theme import, cover, TOC, includes
│   ├── theme.typ        # dark "storm at sea" palette + helpers (tip/info/warn/mod/key)
│   ├── 10-installation.typ   # Steam v1.15.18 → Workshop mods → per-save enable
│   ├── 20-modlist.typ        # the two-layer curated modlist + rejected-with-reasons
│   ├── 30-how-to-play.typ    # field manual: modes, missions, engineering, terms
│   └── 40-personas.typ       # player personas: background + game creation choices
├── output/              # generated PDFs
├── build-pdf.bat        # regenerates the PDF
├── tools/make-logo.py   # cover emblem generator (PIL)
└── assets/logo.jpg      # cover emblem (storm-sea rescue scene, generated)
```

## Build & regenerate

- `build-pdf.bat` compiles `guide/main.typ` → `output/Whitecap.pdf` (requires Typst 0.15+).
- Live preview: `typst watch guide/main.typ output/Whitecap.pdf`

## Guide conventions

- Guide sources are Typst 0.15 files in `guide/`, one file per chapter.
- Styling and helpers live in `guide/theme.typ`; content files use only headings, paragraphs, lists, tables, and the shared helpers (`#tip`, `#info`, `#warn`, `#mod`, `#key`).
- Dark "storm at sea" palette (deep ocean-navy background, foam-white text, rescue-orange + sea-foam accents) matches the cover emblem.
- Keep install steps accurate to the real flow: Steam → Workshop subscriptions → New Game → Enabled Mods → Workshop tab → confirm. Do not invent menu names; where a step isn't certain, point to the mod's page or the official Geometa wiki (geometa.co.uk/wiki/stormworks).
- **Screenshots**: only real, user-provided captures (typically `assets/screenshots/*.png`) may be wired into the guide as figures — never fabricate or hotlink game imagery.
