# Primal Quarry — Monster Hunter Rise: Sunbreak

A structured modlist + game guide for **Monster Hunter Rise** with the **Sunbreak** expansion, targeting game version **16.0.3.1** (latest 16.x patch on PC/Steam).

- **Mod organizer:** Fluffy Manager 5000
- **Modlist name:** Primal Quarry
- **Structure:** 3 waves — each a distinct, progressively harder new-game setup with its own roleplaying background story

| Wave | Audience | Focus | Mod philosophy |
|------|----------|-------|----------------|
| 0 — The Rookie's Oath | Complete beginners | Full how-to-play guide | Vanilla + UI/QoL only |
| 1 — The Expedition | Hunters with some experience | Strategy, advanced topics, deeper systems | More content + new mechanics (no pure power spikes) |
| 2 — Warden of the Quarry | Experienced hunters | Endgame, builds, mastery | Further content + depth (no pure power spikes) |

## Status

- Guide, layout, and build pipeline: **done**
- Wave 0 modlist (UI/UX + graphics): **done** — populated with verifiable mods. Waves 1–2 modlists: **pending — owner's direction**.
- See `STATUS.md` for the decision log and open questions.

## Project layout

```
monster-hunter-rise/
├── AGENTS.md            # project rules (incl. mod-handling hard rules)
├── README.md            # this file
├── STATUS.md            # decision log: design notes, open questions, user instructions
├── conflicts-mods.md    # mod conflict notes (NOT in the PDF)
├── mod-ideas.md         # future ideas (NOT in the PDF)
├── template.typ         # Typst master template (cover, TOC, theme)
├── build.bat            # one-click PDF regeneration
├── guide/               # guide + modlist Typst sources, by category
│   ├── 00-intro/        # welcome + Fluffy Manager 5000 setup
│   ├── 01-modlist/      # modlist rules + one file per wave
│   ├── 02-wave0/        # Wave 0: complete beginner guide
│   ├── 03-wave1/        # Wave 1: strategy & advanced systems
│   ├── 04-wave2/        # Wave 2: endgame mastery
│   └── 05-reference/    # glossary
├── output/              # generated PDFs (primal-quarry.pdf)
└── assets/logo.jpg      # cover logo (provided by the owner)
```

## Regenerating the PDF

```bat
build.bat
```

Requires Typst 0.15 / 0.15.1 (`winget install Typst.Typst` or https://github.com/typst/typst/releases). Output: `output/primal-quarry.pdf` — cover page with logo, table of contents, full installation instructions, complete guide + modlist.

## Adding mods (owner action)

1. Open the wave file in `guide/01-modlist/` (e.g. `wave-0-mods.typ`).
2. Add one `#modcard(...)` per mod — name + URL, dependencies, system/mechanic impact, notes.
3. Record any mod conflicts in `conflicts-mods.md` and future ideas in `mod-ideas.md`.
4. Run `build.bat` to regenerate the PDF.
