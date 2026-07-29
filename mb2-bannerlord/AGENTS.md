# AGENTS.md — AI Agent Rules for No Crown Without Blood

This file governs how AI agents should work within this repository.

## Project

"No Crown Without Blood" — a Bannerlord modlist and game guide.
**Target:** Mount & Blade II: Bannerlord WS v1.2.7 / BL v1.4.7 (8 July 2026)
**Launcher:** Bannerlord Software Extender (BLSE) — https://www.nexusmods.com/mountandblade2bannerlord/mods/1

## File conventions

- Guide content files: `.typ` (Typst markup) in `guide/`
- Working documents: `.md` in project root
- PDF output: `output/No-Crown-Without-Blood.pdf`
- Typst templates: `typst/` folder
- Assets: `assets/` folder

## Mod addition workflow

1. Find a placeholder block (marked with `// ---- MOD PLACEHOLDER ----`) in the target wave's `03-mods.typ`
2. Verify the candidate mod is compatible with BL 1.4.x / WS 1.2.x
3. Verify no conflicts with other mods in the same wave (check `mod-conflicts.md`)
4. Replace the placeholder `#block()` with a real `#mod-entry()` call using the exact fields: name, url, category, dependencies, impact, config, load-order, compat
5. Update `load-order.typ` in that wave with the new mod's position
6. Add any discovered conflicts to `mod-conflicts.md`
7. Run `build.bat` and verify PDF builds without errors

## Mod rules

- Must be compatible with BL 1.4.x / WS 1.2.x
- No conflicting mods within the same wave
- No pornographic mods (adult/nude OK where thematically relevant; ask if in doubt)
- No cheating/overpowered/omniscient mods
- No redundant mods (no two mods that do the same thing)
- New mods must fit the wave's allowed categories per the mod taxonomy

## Nexus Mods fetching

- **Adult content or 403-blocked mods**: Use Playwright browser to navigate to the mod page. The Playwright browser has a logged-in Nexus Mods session and can view adult content. Do NOT use `webfetch`, `ctx_fetch_and_index`, or `ctx_execute` with `fetch()` — these will return HTTP 403 or adult-content-blocked pages.
- **All other mods**: Use `ctx_fetch_and_index` with concurrency 6-8 for efficient parallel fetching, then `ctx_search` or `ctx_batch_execute` to extract details.
- After fetching a mod via Playwright, capture the page snapshot (`playwright_browser_snapshot`) and extract: mod name, description, dependencies/requirements, version compatibility, and category tags.

## Writing style

- **Wave introductions** (`00-introduction.typ`): In-character, second-person narrative, immersive
- **How-to-play / Strategy / Mechanics**: Direct, instructional, second-person, concise
- **Mod entries**: Factual, third-person, technical
- All content files use Typst markup (see Appendix A in spec)

## PDF regeneration

After any content change: run `build.bat` from project root.
Verify: PDF opens correctly, TOC is updated, no Typst compilation errors.

## Design constraints

Do not change colors, fonts, page layout, or template structure without updating the design spec.
Design spec: `docs/superpowers/specs/2026-07-21-no-crown-without-blood-design.md`

## Version pin

All mod discussions, recommendations, and compatibility checks must reference:
**Bannerlord WS v1.2.7 / BL v1.4.7 (8 July 2026)**
