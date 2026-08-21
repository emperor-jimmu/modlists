# Throne of Titans — AGENTS.md

Structured modlist + game guide/tutorial (and glossary) for **Sid Meier's Civilization IV: Beyond the Sword**, patch **3.19**. Modlist name: **Throne of Titans**.

## CRITICAL — Mod policy (never violate)

- The mod list is supplied **exclusively by the user**.
- Treat every user-supplied mod as authoritative, exactly as the user stated it.
- If the user omits a field (URL, dependencies, system/mechanic impact, notes), write **"user to provide"** — never fill it in from knowledge, inference, or research, unless the user explicitly asks for it to be retrieved: then record it as sourced from the mod's own material, with the user as final authority.
- Mod entries are recorded verbatim in `guide/20-modlist.typ`, organized by wave.
- Compatibility statements about BTS 3.19 come from the user only — never assert compatibility ourselves. When the user asks, the mod's own stated requirements may be recorded with attribution to the mod's material.
- Applied carve-out (2026-08-21): the user explicitly asked tooling to fill the modlist (root TODO #31). Entries for waves 0–2 were researched from each mod's own material and recorded with the sourcing note in `guide/20-modlist.typ`. The user remains the final authority and may amend or remove any entry.
- Do not generate content for `conflicts-mods.md` or `mod-ideas.md` — those are the user's own tracking files.

## Structure

```text
civ-4/
├── AGENTS.md            # project agent rules (this file)
├── README.md            # overview, how to supply mods, build instructions
├── STATUS.md            # living decision log (design notes, open questions, user instructions)
├── guide/               # guide sources (Typst 0.15), organized by category
│   ├── main.typ         # assembly: theme import, cover page, TOC, includes
│   ├── theme.typ        # colors, fonts, helper functions (tip/info/warn/storybox/mod-entry)
│   ├── 10-installation.typ
│   ├── 20-modlist.typ
│   ├── 30-wave-0.typ    # Wave 0 — beginners, full how-to-play, vanilla + UI/QoL
│   ├── 40-wave-1.typ
│   ├── 50-wave-2.typ
│   ├── 60-wave-3.typ
│   └── 70-glossary.typ
├── output/              # generated PDFs
├── conflicts-mods.md    # user's conflict tracker — NOT included in the PDF
├── mod-ideas.md         # user's idea tracker — NOT included in the PDF
├── build-pdf.bat        # regenerates the PDF
└── assets/logo.jpg      # cover artwork
```

## Build & regenerate

- `build-pdf.bat` compiles `guide/main.typ` → `output/Throne-of-Titans.pdf` (requires Typst 0.15+).
- Live preview: `typst watch guide/main.typ output/Throne-of-Titans.pdf`
- `conflicts-mods.md` and `mod-ideas.md` are NOT included in the PDF.

## Guide conventions

- Guide sources are Typst 0.15 files in `guide/`, organized by category (installation, modlist, waves, glossary).
- 4 waves (0–3). Wave 0 = complete beginners, full how-to-play, vanilla + UI/QoL mods only. Waves 1–3 = progressively harder setups with more content and new mechanics (no pure power spikes).
- Styling and helper functions live in `guide/theme.typ`; content files use only headings, paragraphs, lists, and the shared helpers (`#tip`, `#info`, `#warn`, `#storybox`, `#mod-entry`).
- Game-mechanic content must stay accurate to Civ 4 BTS 3.19; when unsure, prefer the in-game Civilopedia as the source of truth.
