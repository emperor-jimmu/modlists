# Primal Quarry — Monster Hunter Rise: Sunbreak — Agent Instructions

Modlist + game guide for *Monster Hunter Rise* with the *Sunbreak* expansion.
Target game version: **16.0.3.1** (latest 16.x patch on PC/Steam).
Mod organizer: **Fluffy Manager 5000**.
Modlist name: **Primal Quarry**.

## Hard rules

- **Mods are added only at the owner's direction.** When the owner asks the project to research and add mods (e.g. Wave 0's UI/UX + graphics focus), do so — but every entry must be a real, verifiable mod with a real URL, never invented.
- Record each mod with its verifiable fields: clickable name + URL, dependencies, system/mechanic impact, notes. Any field that cannot be verified stays blank — never invent it.
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
- Mod entries live in `guide/01-modlist/wave-*-mods.typ` using the `#modcard(...)` helper (defined in `theme.typ`). Entries are added at the owner's direction.
- Game facts must be accurate for 16.0.3.1. When a detail is uncertain, write it generically or point at the in-game Hunter's Notes — never fabricate numbers.

### Entry format (guide-writer reference — keep out of the PDF)

Each mod is one `#modcard(...)` call. Fields:

- `name` (positional) — the mod's name.
- `url` — clickable link to the mod's page.
- `version` — the specific release this entry refers to (optional).
- `deps` — mods/frameworks to install first (in FM5000, install these before the mod).
- `impact` — what the mod changes and how it affects play.
- `notes` — load order, configuration, quirks.

```typ
#modcard(
  "Mod name",
  url: "https://example.com/mod-page",
  version: "1.2.3 (optional)",
  deps: "REFramework — install first",
  impact: "What the mod changes in play.",
  notes: "Load order / config notes, or leave out.",
)
```

## PDF generation

Run `build.bat` (calls `typst compile template.typ output/primal-quarry.pdf`).
Typst 0.15/0.15.1 (installed via winget on this machine).
Fonts: Bahnschrift (display), Georgia (body), Consolas (code).
Palette: Kamura ember / Elgado teal / quarry gold on warm paper.
