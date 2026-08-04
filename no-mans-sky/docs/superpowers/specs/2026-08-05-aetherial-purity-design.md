# Aetherial Purity — No Man's Sky Modlist & Guide Design

- **Date:** 2026-08-05
- **Game:** No Man's Sky, version 6.45.1 (Steam)
- **Mod organizer:** Singularity
- **Modlist name:** Aetherial Purity
- **PDF:** Typst 0.15.1 (installed), generated via `build.bat`
- **Theme:** light ethereal (logo-derived teal/sage palette)

## Goal

A structured, wave-based modlist plus full game guide/tutorial and glossary for
No Man's Sky 6.45.1, rendered as a colorful, high-readability PDF. Mod curation
is **100% user-owned**: the guide ships with fillable mod-card scaffolds and no
mod is researched, validated, or added by this project.

## Decisions (resolved with user, 2026-08-05)

1. **Build now, mods later** — full scaffold + guide prose + PDF pipeline first;
   every mod card is a "user to provide" placeholder the user fills in per wave.
2. **Platform: Steam** — Singularity instructions target a Steam install.
3. **Waves: 0, 1, 2** — three distinct, progressively harder new-game setups,
   each with its own roleplaying backstory. Wave 0 = vanilla + UI/QoL only;
   waves 1–2 add content and mechanics with no pure power spikes.
4. **PDF theme: light ethereal** — ice-white backgrounds, teal headings, sage
   secondary, rust-red reserved for warnings, deep teal-navy body text.

## Project structure

```
no-mans-sky/
├── AGENTS.md                agent conventions (mods user-supplied only, no validation)
├── README.md                overview, per-wave table, how to add mods, how to build PDF
├── STATUS.md                living decision log: decisions, open questions, pending user inputs
├── guide/
│   ├── installation.typ     Singularity full install + config (Steam), version 6.45.1
│   ├── glossary.typ         NMS terms glossary
│   ├── wave-0/              how-to-play.typ · mechanics.typ · graphics.typ · modlist.typ
│   ├── wave-1/              strategy.typ · mechanics.typ · graphics.typ · content.typ · modlist.typ
│   └── wave-2/              strategy.typ · mechanics.typ · graphics.typ · content.typ · modlist.typ
├── template.typ             master template: cover, TOC, theme, fonts, mod-card helper
├── query.typ                structure-audit helper (heading pages) — reused from ONI pattern
├── build.bat                one-click `typst compile template.typ output/Aetherial-Purity.pdf`
├── output/                  generated PDF (gitignored)
├── conflicts-mods.md        known mod conflicts — NOT included in PDF (user-populated)
├── mod-ideas.md             future ideas — NOT included in PDF (user-populated)
├── assets/logo.jpg          cover art (present)
├── docs/superpowers/
│   ├── specs/2026-08-05-aetherial-purity-design.md
│   └── plans/2026-08-05-aetherial-purity.md
└── .gitignore               ignores output/
```

`guide/` files are included by `template.typ` in order: installation → waves 0→1→2 → glossary.

## Mod handling contract

- Only mods the user supplies are documented, using only information the user provides.
- Card fields (rendered by the shared `mod-entry` helper): **clickable name + URL**,
  **dependencies**, **system/mechanic impact**, **notes** (load order, config).
- Any field not supplied renders as *"user to provide"* — nothing invented or researched.
- The project never validates, verifies, searches for, adds, removes, or suggests mods —
  including in STATUS.md, which records decisions/open questions only.
- Wave 0 cards are UI/QoL-only by convention; waves 1–2 may carry content/mechanics with
  no pure power spikes. This is the user's stated philosophy, documented, not enforced.

## Content map

| File | Content |
|---|---|
| `AGENTS.md` | Modlist identity, structure, the no-mod-curation rule, Singularity + Steam, Typst build. |
| `README.md` | Overview; waves table (0 *First Light*, 1 *The Cartographer*, 2 *The Astral Architect*); how to add a mod (paste a card into the wave's `modlist.typ`); how to build the PDF. |
| `STATUS.md` | Audit trail, decisions, open questions, pending user inputs (incl. the mod supply itself). |
| `guide/installation.typ` | Game prep (Steam install, launch, confirm build 6.45.1); Singularity download/install; first-run config; game-folder detection; creating the *Aetherial Purity* modlist; adding/enabling mods; load order; backup/restore; version compatibility heuristics (patch/release dates); launch & verify; per-wave switching. Steps sourced from Singularity's official docs at implementation time. |
| `guide/wave-0/*` | Beginner how-to-play (first flight, survival loop, core quest lines, base basics), beginner mechanics, beginner graphics, UI/QoL-only modlist scaffold. RP backstory: *First Light*. |
| `guide/wave-1/*` | Intermediate strategy (economy, exploration, frigate fleet), content + mechanics sections, modlist scaffold. RP backstory: *The Cartographer*. |
| `guide/wave-2/*` | Advanced strategy (settlements, endgame systems), richest content/mechanics, modlist scaffold. RP backstory: *The Astral Architect*. |
| `guide/glossary.typ` | NMS terminology (game terms only; mod terms only as user supplies them). |

Guide prose is written from long-stable No Man's Sky systems; any 6.45.1-specific fact
that cannot be verified is logged as an open question in STATUS.md rather than asserted.

## PDF design

- **Palette (logo-derived):** teal `#2C9293` primary · deep navy `#2D4144` body text ·
  deep teal-green `#1F6F5E` wave-2 accent · sage `#4F7A6E` secondary · rust `#773E3E`
  warnings · ice `#F4F9F8` card fills · pale sage `#A6C6BD` tints.
- **Fonts:** Cinzel (cover title), Bahnschrift (headings), Georgia (body) — the same
  stack already proven on this machine by the ONI project.
- **Cover:** `assets/logo.jpg`, title "Aetherial Purity", subtitle "No Man's Sky —
  Modlist & Guide", version line "v6.45.1 · 2026"; page numbers "N / M" at bottom.
- **TOC:** `#outline(depth: 3)` after the cover.
- **Wave chapter headers** tinted per wave: Wave 0 teal, Wave 1 navy, Wave 2 deep teal-green.
- **Mod cards:** bordered blocks with teal stroke and pale fill; missing fields render
  as *"user to provide"* inside the card.
- **Callouts:** Note (sage), Tip (teal), Warning (rust).
- `query.typ` reused for a structural audit (heading → page) after each build.

## Open questions (tracked in STATUS.md)

- Exact 6.45.1-only mechanics — flagged for user confirmation while writing guide prose.
- Singularity current version and exact UI labels — confirmed from official docs at
  implementation time (this is organizer documentation, not mod content).
- User confirms the main-menu build number reads 6.45.1 before relying on the guide.

## Non-goals

- No mod research, validation, or addition by the project — ever.
- No visual assets beyond `assets/logo.jpg`.
- PDF only (no HTML/ePub).
