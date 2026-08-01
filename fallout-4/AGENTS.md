# AGENTS.md — Glowing Horizon

## Mission

Build a structured mod-list and comprehensive game guide for **Fallout 4**, targeting version **1.11.221** (released May 27, 2026 — the Anniversary Edition/"AE" runtime branch, F4SE-compatible). Mod management uses **Mod Organizer 2.5**. The guide follows a 2-wave progression: Wave 0 for complete beginners (vanilla + UI/QoL only), Wave 1 for players ready for deeper systems and new content/mechanics.

## Design Pillars

1. **Version Lock** — 1.11.221 is the only supported game version. Every mod must be confirmed compatible with the AE runtime (1.11.137–1.11.221) or explicitly confirmed still functional post-Next-Gen-update by its Nexus page/changelog. If a mod's last update predates the Next-Gen update (April 2024) and there's no confirmation of AE compatibility, treat it as unverified and log it in `mod-ideas.md` instead of the guide.
2. **No Fabrication** — Every mod entry requires a real, verified, clickable Nexus Mods URL (nexusmods.com/fallout4). Never invent names, authors, version numbers, or URLs. If a mod cannot be verified, it goes to `mod-ideas.md` or gets flagged to the user — never into the guide.
3. **Two Waves, Accumulating** — Wave 1 includes Wave 0's mods plus new additions. Wave 0 = vanilla difficulty curve + UI/QoL/bugfix mods only (no new content, no mechanic changes). Wave 1 = new content and mechanics allowed, but no pure power spikes, no cheating/overpowered/all-knowing mods.
4. **Print-First** — The PDF is the primary artifact, built with Typst 0.15/0.15.1 using only built-in features (no `@preview` packages), matching the rest of the monorepo's convention. Colorful, high-contrast, Fallout-themed (retro-terminal green/amber + Vault-Tec blue/yellow).
5. **Decision Traceability** — Every mod approval, rejection, and conflict resolution is logged in `STATUS.md`.

## File Layout

| File | Purpose |
|------|---------|
| `VERSION` | Single source of truth for guide version number |
| `STATUS.md` | Decision log, mod approval/rejection log, conflict resolutions |
| `mod-ideas.md` | Unverified/future mod candidates (NOT in PDF) |
| `conflicts-mods.md` | Mod conflict documentation (NOT in PDF) |
| `README.md` | Quick-start for users |
| `AGENTS.md` | This file |
| `assets/logo.jpg` | Cover page art |
| `guide/00-installation.md` | Fallout 4 + F4SE + MO2 2.5 setup and configuration |
| `guide/01-wave-0.md` | Wave 0: beginner roleplay intro, how-to-play, vanilla+UI/QoL mods |
| `guide/02-wave-1.md` | Wave 1: roleplay intro, strategy/advanced topics, new content/mechanics mods |
| `guide/03-appendix-mod-reference.md` | Master mod table by wave |
| `guide/04-glossary.md` | A-Z Fallout 4 / modding terminology |
| `templates/style.typ` | Typst module: fonts, colors, page defaults, reusable components (mod-panel, cover-page, callouts) |
| `templates/guide.typ` | Main Typst template — cover, TOC, includes all guide chapters |
| `scripts/generate-pdf.ps1` | Build script: checks Typst, compiles PDF |

## Wave Structure

| Wave | Audience | Content Focus | Mod Philosophy |
|------|----------|---------------|-----------------|
| 0 | Complete beginners | Full how-to-play guide (controls, SPECIAL, perks, crafting basics, survival basics) | Vanilla + UI/QoL only — no new content, no mechanic changes |
| 1 | Players who finished Wave 0 or have some experience | Strategy, advanced systems (settlement building, weapon/armor crafting depth, faction strategy) | New content + new mechanics allowed; no pure power spikes; adult/nude content only if thematically relevant |

## Mod Entry Format

Every mod in a guide chapter uses this template (rendered via the `mod-panel` Typst function):

```
### [Mod Name](https://www.nexusmods.com/fallout4/mods/XXXXX)
**Wave:** 0 | 1
**Category:** UI/QoL | Bugfix | Graphics | Content | Mechanics | Framework
**Dependencies:** None | list (with links)
**MO2 Install:** install notes — plugin load order position, FOMOD choices, INI edits
**What it does:** one paragraph
**Why:** how it serves this wave
**Notes:** load order, config, known issues, conflicts
```

## Research Pipeline

1. **Search** — nexusmods.com/fallout4, sorted by endorsements/last updated. Use `web_fetch` or Playwright (for rate-limited/adult content pages) to confirm the mod page is real and live.
2. **Verify Version** — Check the mod's "Compatibility" section / changelog / file history against AE runtime 1.11.137–1.11.221. Mods that are pure ESP/content edits with no scripts/F4SE dependency are generally version-agnostic; F4SE plugins and script-heavy mods need explicit AE support confirmation.
3. **Evaluate** — Does it fit the wave's philosophy? Is it redundant with an already-approved mod? Does it conflict with anything already approved (check `conflicts-mods.md`)?
4. **Approve or Reject** — Log the decision with rationale in `STATUS.md`.
5. **Add to Guide** — Only after approval, with the verified URL.
6. **Unverifiable** — Dead links, unclear compatibility, or uncertain relevance → `mod-ideas.md`, or ask the user.

## Conventions

- **No fabrication, ever.** Every URL must resolve to a real Nexus page. If a web search/fetch cannot confirm a mod's existence, do not add it.
- **All decisions in STATUS.md.**
- **PDF after every content change.** Run `./scripts/generate-pdf.ps1`; fix compile errors before continuing.
- **Version from VERSION file** — never hardcode the guide version number elsewhere.
- **F4SE is a baseline requirement** for most QoL/UI mods (e.g. menu/HUD frameworks) — document its install alongside MO2 setup.
- **Adult/nude content** is allowed only where thematically relevant (e.g. immersive settlement life, romance mods) and never explicit pornography. When in doubt, ask the user before adding.
