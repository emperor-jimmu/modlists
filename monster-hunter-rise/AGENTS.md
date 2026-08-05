# Primal Quarry — Monster Hunter Rise: Sunbreak — Agent Instructions

Modlist + game guide for *Monster Hunter Rise* with the *Sunbreak* expansion.
Target game version: **16.0.3.1** (latest 16.x patch on PC/Steam).
Mod organizer: **Fluffy Manager 5000**.
Modlist name: **Primal Quarry**.

## Hard rules

- **The mod list is user-supplied only.**
- Document only the mods the user provides, using the user's stated fields: clickable name + URL, dependencies, system/mechanic impact, notes. Any field the user does not supply stays "User to provide" — never invent it.
- Never record mod-validation results anywhere, including `STATUS.md` (that file holds design decisions, open questions, and user instructions only).
- `conflicts-mods.md` and `mod-ideas.md` are user-owned note files, excluded from the PDF. Mod ideas must come from the user.
- Wave philosophy (user's rules, enforced in the modlist docs): Wave 0 = vanilla + UI/QoL only; Waves 1–2 = more content + new mechanics, but no pure power spikes.

## Structure

- `guide/` — Typst content sources, organized by category: `00-intro/` (welcome, Fluffy Manager 5000 setup), `01-modlist/` (modlist rules + one file per wave), `02-wave0/`, `03-wave1/`, `04-wave2/` (per-wave story + guides), `05-reference/` (glossary)
- `template.typ` — master template: cover, table of contents, theme (palette/fonts/callouts), page assembly
- `output/` — generated PDF (`primal-quarry.pdf`)
- `assets/logo.jpg` — cover logo (provided by the user)
- `build.bat` — one-click PDF regeneration
- `STATUS.md` — decision log (design notes, open questions, user instructions)
- `conflicts-mods.md`, `mod-ideas.md` — user-owned notes, NOT in the PDF

## Content conventions

- Each wave is a distinct, progressively harder new-game setup with its own roleplaying background story (`guide/0N-waveN/story.typ`).
- Mod entries live in `guide/01-modlist/wave-*-mods.typ` using the `#modcard(...)` helper (defined in `template.typ`). Only the user supplies them.
- Game facts must be accurate for 16.0.3.1. When a detail is uncertain, write it generically or point at the in-game Hunter's Notes — never fabricate numbers.

## PDF generation

Run `build.bat` (calls `typst compile template.typ output/primal-quarry.pdf`).
Typst 0.15/0.15.1 (installed via winget on this machine).
Fonts: Bahnschrift (display), Georgia (body), Consolas (code).
Palette: Kamura ember / Elgado teal / quarry gold on warm paper.
