# The 3rd Coming - STATUS

**Game:** XCOM 2 (War of the Chosen).
**Last official patch:** Build 8270065 (24 February 2022; branch update 28 March 2022). No further official content patches.
**Mod source:** Steam Workshop. **Mod organizer:** Alternative Mod Launcher (AML).

## Audit Trail

- 2026-08-04: Verified release build. PDF = `output/the-3rd-coming.pdf`, 7 pages. Structure audit (`query.typ`) passed: Installation p3, Overview p5, The Modlist p6, categories p6-7, TOC p2. Theme verified via SVG fill audit of the cover: dark bg `#0b0f17`, cyan `#00e5ff`, red `#ff2d55`, ink `#e6edf3`; logo embedded (279x186 pt = 1248x832 px). Visual inspection via `inspect_image` unavailable (no vision-capable model configured) - cover verified via SVG fill audit + PDF text extraction instead. Mod cards pending user supply (per mod-handling rules).
- 2026-08-04: Project scaffolded. Guide structure, dark neon theme, and AML installation chapter written from the official README + wiki (Installation, Getting-started). PDF generated (`output/the-3rd-coming.pdf`). Mod cards pending user supply (per mod-handling rules).
- 2026-08-04: Project started (user brief: modlist name, game, AML as organizer, PDF requirements, mod-handling rules).

## Decisions

- **Mod curation ownership (2026-08-04):** per the mod-handling rules, THIS PROJECT DOES NOT ADD, VALIDATE, OR FILTER MODS. The user supplies every mod entry (clickable name + URL, dependencies, system/mechanic impact, other notes). Guide modlist sections ship as scaffolds with the `mod-entry` helper + category prose + placeholder card; the user drops in supplied mod cards. Missing fields stay blank or read "user to provide" - never invented or researched. No mod name/URL appears in guide files until the user supplies it.
- **Mod organizer (2026-08-04):** Alternative Mod Launcher (AML) - user-selected, community standard for XCOM 2. Download: <https://github.com/X2CommunityCore/xcom2-launcher/releases>. Installation chapter grounded on the official README + wiki pages (Installation, Getting-started), fetched 2026-08-04.
- **Game build target (2026-08-04):** Build 8270065 - user-supplied fact (patch 24 February 2022; branch update 28 March 2022). No further official content patches.
- **PDF theme (2026-08-04):** dark background, cyan/neon accents, red highlights (matches the logo style). Fonts: Bahnschrift (headings), Segoe UI (body), Cascadia Mono (mono accents) - Windows-shipped; Typst falls back gracefully if a font is absent.
- **PDF file name (2026-08-04):** `output/the-3rd-coming.pdf`.
- **Guide categories (2026-08-04, DRAFT):** core-framework, quality-of-life, ui-hud, classes-skills, enemies, weapons-gear, cosmetics-visuals, audio. Open to user confirmation/renaming; renaming now costs nothing because no cards exist yet.

## Open Questions

- Mods: user to supply mod entries (name + URL, dependencies, system/mechanic impact, notes) for each category.
- Category names/set: confirm the draft category list above or adjust.
- AML release to pin in the guide: latest stable (user to confirm the version they install).

## Notes

- STATUS.md records decisions, open questions, and user instructions only - no mod validation results (project rule).
- Typst detail (2026-08-04): `#include` scope does not share `#let` bindings into the included file. `callout` and `mod-entry` are therefore defined locally in each guide file (matches the oxygen-not-included sibling convention). `template.typ` ends with `#label("end")` so `query.typ` can report the final page.
- AML facts used in `guide/installation.typ` are grounded on the official repo README + wiki (fetched 2026-08-04): zip under Assets, extract to a write-access folder, run `XCOM2 Launcher.exe`, welcome dialog game selection is one-time, auto mod search on startup, `settings.json` holds config, requirements = Steam running + .NET Framework 4.7.2+ + 64-bit Windows.
