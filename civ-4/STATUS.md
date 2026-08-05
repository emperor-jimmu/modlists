# STATUS — Throne of Titans (Civ 4: BTS 3.19)

Living decision log: design notes, open questions, and user instructions. No mod validation results live here.

## Project

- Game: Sid Meier's Civilization IV: Beyond the Sword, patch 3.19
- Modlist name: Throne of Titans
- Mod organizer: CIV 4 – All Mod Chooser (manual installation documented as fallback)
- Started: 2026-08-05

## Decisions

| Date | Decision |
|------|----------|
| 2026-08-05 | Mod policy: the mod list is supplied exclusively by the user. Tooling never adds, validates, filters, or researches mods. Missing fields are recorded as "user to provide". |
| 2026-08-05 | Guide sources authored as Typst 0.15 files in `guide/` (user chose Typst over Markdown + pandoc). |
| 2026-08-05 | All Mod Chooser instructions researched by tooling from community sources (user-approved). Scope limited to the launcher tool — never mods. |
| 2026-08-05 | Wave structure: 4 waves (0–3). Wave 0 = complete beginners, full how-to-play, vanilla + UI/QoL only. Waves 1–3 = progressively deeper strategy; mods add content/mechanics, never pure power spikes. |
| 2026-08-05 | Wave themes (adjustable): 0 "The First Flame", 1 "The Rising Realm", 2 "The Gilded Age", 3 "The Throne of Titans". |
| 2026-08-05 | PDF: A4, cream/bronze/gold theme, cover with `assets/logo.jpg`, clickable TOC, footer page numbers, built by `build-pdf.bat` → `output/Throne-of-Titans.pdf`. |
| 2026-08-05 | `conflicts-mods.md` and `mod-ideas.md` are user trackers, excluded from the PDF. |
| 2026-08-05 | Initial build verified: 16-page A4 PDF — cover (logo + title) + clickable TOC + installation (All Mod Chooser + manual) + modlist template + waves 0–3 + glossary. Regenerated cleanly via `build-pdf.bat`. |

## Open questions

- [ ] Mod chooser: confirm the exact download thread/version in use (guide references CivFanatics "Tool - CIV 4 - All Mod Chooser 2025"; v2.9+).
- [ ] Mods for all waves: user to provide (name + URL, dependencies, impact, notes, wave).
- [ ] Wave themes and per-wave game setups: confirm or adjust.
- [ ] Cover art: `assets/logo.jpg` in use — swap any time.

## User instructions log

- 2026-08-05: Initial spec — project structure, 4-wave system, mod policy (never touch the mod list), PDF requirements (Typst 0.15/0.15.1 + batch script), STATUS.md as decision log, conflicts-mods.md and mod-ideas.md excluded from the PDF.
- 2026-08-05: User request — modlist is empty, so no 4K font-size mod exists in the list; added the idea ("4K UI / font-size mod, larger fonts + alignment at 4K") to `mod-ideas.md`, Wave 0 (UI/QoL).
- 2026-08-05: User asked to verify whether a 4K UI/font mod exists for Civ 4 BTS 3.19. Verified (7 web searches EN+DE + archived CivFanatics thread "Civilization IV in 4k resolution, and higher"): **no packaged mod exists** — the UI is hard-coded bitmap art. Community solution: manual `Civ4Theme_Common.thm` font-size editing (~+4pt reported usable at 4K), negative CITY_BILLBOARDS `<fScale>`, Windows High-DPI override, or 1440p. `mod-ideas.md` updated with the finding.
- 2026-08-05: User approved adding the verification results to the guide — new "Playing at 4K: fonts and readability" section in `guide/10-installation.typ` (High-DPI override, `.thm` font edits, city billboard `<fScale>`, mod-theme caveat, resolution fallback). Game configuration, not mod content.
- 2026-08-05: First mod supplied by user — **Caveman 2 Cosmos** (https://forums.civfanatics.com/threads/caveman-2-cosmos.288570/). Placed in **Wave 3** (the latest wave, per "one of the latest waves"). Dependencies, impact, and notes left as "user to provide" per the mod policy.
