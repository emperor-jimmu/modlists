# STATUS — Primal Quarry

Living decision log. Holds design notes, open questions, and user instructions **only**. Per project rule, no mod-validation results are ever recorded here (the project performs none).

## Identity

| | |
|---|---|
| Modlist name | Primal Quarry |
| Game | Monster Hunter Rise + Sunbreak |
| Target version | 16.0.3.1 (latest 16.x on the platform) |
| Platform (assumed) | PC / Steam — Windows 11 x64 (this machine) |
| Mod organizer | Fluffy Manager 5000 (official download: fluffyquack.com) |
| Repo location | `monster-hunter-rise/` (modlists monorepo) |

## Decisions

- **2026-08-04 — Waves.** 3 waves (0, 1, 2). Each wave is a distinct, progressively harder *new-game setup* with its own RP background story. Wave 0 = vanilla + UI/QoL mods only; Waves 1–2 = more content + new mechanics, no pure power spikes. Assumed: one save slot per wave.
- **2026-08-04 — Content format.** All guide + modlist content is authored in Typst under `guide/` (one `.typ` file per section). Single source of truth = Typst; no Markdown-to-PDF conversion step. Mod entries use the `#modcard(...)` helper so the owner adds entries as one-line calls.
- **2026-08-04 — PDF pipeline.** `template.typ` (master: cover, TOC, theme, assembly) + `build.bat` → `typst compile template.typ output/primal-quarry.pdf`. Typst 0.15.1 installed on this machine via winget (target: 0.15 / 0.15.1).
- **2026-08-04 — Layout.** A4; cover page (logo, title, wave badges, version line) excluded from page numbering; page numbers "n / N" in the footer (bottom right); numbered headings + depth-2 table of contents; part dividers per wave.
- **2026-08-04 — Theme.** Palette: Kamura ember `#C6401E`, Elgado teal `#14707B`, quarry gold `#C98A1B` on warm paper `#FAF4E6`; dark charcoal cover `#1B130E`. Fonts: Bahnschrift (display), Georgia (body), Consolas (code).
- **2026-08-04 — Wave colors.** Wave 0 = ember, Wave 1 = teal, Wave 2 = gold; parts 1–2 and 6 use the default ember treatment.
- **2026-08-04 — Excluded files.** `conflicts-mods.md` and `mod-ideas.md` are user-owned, NOT included in the PDF.
- **2026-08-04 — Logo.** `assets/logo.jpg` exists (owner-provided, ~315 KB) and is used on the cover inside a white card (works with any logo background).
- **2026-08-04 — RP stories.** Drafted: Wave 0 "The Rookie's Oath" (Kamura), Wave 1 "The Expedition" (Elgado/Sunbreak), Wave 2 "Warden of the Quarry" (anomaly/endgame). Freely revisable by the owner.
- **2026-08-21 — Wave 0 populated (UI/UX + graphics).** The owner directed the project to research and add mods for Wave 0, focused on UI/UX and graphics. This supersedes the earlier "user-supplied only" stance *for this wave*: Wave 0 entries are now curated from verifiable sources (Nexus Mods pages, GitHub repos, official tools), with no-fabrication still absolute. Waves 1–2 remain pending owner direction.

## User instructions (mod handling)

- The mod list is supplied **exclusively by the user**. The project (and any agent working on it) must never research, search for, verify, validate, add, remove, or suggest mods; must never look up compatibility. Every user-supplied mod is authoritative.
- Missing entry fields stay blank / "User to provide" — never invented.
- Compatibility heuristic (owner's rule, documented in the guide): if a specific mod version is unknown, the owner may use its patch/release date as a heuristic against the 16.0.3.1 target. The project performs no such check itself.
- **2026-08-21 — supersession (Wave 0).** The owner directed the project to research and add Wave 0 mods (UI/UX + graphics). For those entries the project *did* research from verifiable sources, but the no-fabrication rule stayed in force: only real mods with real URLs were recorded, unverifiable fields were left blank, and no candidate with an unverifiable link was added. Waves 1–2 remain owner-supplied only until directed otherwise.

## Open questions

- Confirm platform/version: Steam PC build 16.0.3.1? (assumed; adjust any wording if the user is on another 16.x patch)
- Mod list Waves 1–2 — awaiting owner input (Wave 0 is filled; templates for 1–2 are in `guide/01-modlist/`)
- Are waves separate saves? (assumed yes — the guide says so; correct if not)
- RP story tone: drafted heroic-simple; happy to rewrite in any direction
- Page size A4 vs Letter (A4 assumed); font pairing OK? (Bahnschrift/Georgia/Consolas)
- Glossary scope: ~60 terms across categories — expand/trim on request

## Changelog

- 2026-08-04 — Initial scaffold: structure, template.typ, build.bat, guide sections (waves 0–2, glossary, FM5000 setup), meta docs. Modlist sections contain templates only.
- 2026-08-04 — Build verified: `build.bat` → `output/primal-quarry.pdf`, 30 physical pages (cover + 29 numbered), Typst 0.15.1. TOC/outline, part dividers, tables, callouts, story blocks, and mod-card/pending placeholders all render; footer numbering runs "n / 29" from the TOC page.
- 2026-08-04 — Layout note for future edits: guide files import helpers from `theme.typ` (`#import "../../theme.typ": *`); Typst `include` does not share the parent scope, so helpers must be imported per file. `modcard` takes the name positionally.
- 2026-08-21 — Filled Wave 0 modlist (UI/UX + graphics) at the owner's direction: REFramework, Custom In-Game Mod Menu API, Adjustable UI Scale, Better Matchmaking, Adjustable Damage Number Size, Alphabetized Skill Lists, Improved Skill Notifications, and ReShade. All entries verified against Nexus/GitHub/official sources; no fabrication. Updated AGENTS.md, README.md, modlist-rules.typ, and this file to reflect the owner-directed workflow.
