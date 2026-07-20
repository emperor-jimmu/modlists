# Stellaris Modlist Guide — AI Assistant Instructions

## Project Identity

This project builds a curated, beginner-friendly modlist guide for Stellaris version **4.4.6 "Nomads"** (all DLC) on Windows. It teaches Stellaris fundamentals while providing ~60-120 mods covering bugfixes, UI/HUD, graphics, gameplay, content expansion, galaxy diversity, and alien breeding — no cheating/overpower mods.

The output is a MkDocs website + a beautifully styled PDF guide.

## Tech Stack

| Component      | Choice                                           |
|----------------|--------------------------------------------------|
| Site generator | MkDocs with Material theme                       |
| PDF generator  | mkdocs-exporter (Playwright/Chromium on Windows) |
| PDF styling    | SCSS via CSS Paged Media                         |
| Mod manager    | Mod Organizer 2 (MO2)                            |
| Launcher       | Paradox Launcher (via Steam)                     |

## Repo Structure

```
stellaris-modlist/
├── README.md
├── AGENTS.md
├── VERSION
├── STELLARIS_VERSION
├── mkdocs.yml
├── docs/
│   ├── index.md
│   ├── getting-started.md
│   ├── modlist-setup.md
│   ├── missing-mods.md
│   ├── modlist/
│   │   ├── bugfixes.md
│   │   ├── audio.md
│   │   ├── ui-hud.md
│   │   ├── graphics.md
│   │   ├── ai-diplomacy.md
│   │   ├── economy-automation.md
│   │   ├── warfare-ships.md
│   │   ├── technology.md
│   │   ├── events-story.md
│   │   ├── origins-civics.md
│   │   ├── species-portraits.md
│   │   └── galaxy.md
│   ├── load-order.md
│   ├── starting-a-game.md
│   ├── performance.md
│   └── appendix.md
├── stylesheets/
│   └── pdf.scss
├── covers/
│   ├── front.html.j2
│   └── back.html.j2
├── mo2-separators.json
└── scripts/
    └── build.ps1
```

## Version Discipline (CRITICAL)

**Current Stellaris version: 4.4.6 "Nomads".** Always check [the Paradox Patches wiki](https://stellaris.paradoxwikis.com/Patches) before adding any mod to confirm the current version.

**Version matching rules:**

- A mod MUST be explicitly compatible with **4.4.6**, **4.4.x**, or **4.4.0** to be added.
- If the mod's Workshop page or description doesn't mention 4.4.x compatibility, check its last update date. If it hasn't been updated since before the 4.4 release, assume it's incompatible.
- Do NOT add mods tagged for 3.x, 3.12, 4.0, 4.1, 4.2, or 4.3 — they will likely break on 4.4.6.
- When Stellaris updates to a new major version (e.g., 4.5), update `STELLARIS_VERSION` and audit every mod in the list for compatibility.

**If unsure about compatibility, DO NOT ADD THE MOD.**

## Content Rules

- **No cheating/overpower mods.** If a mod adds a component that gives >20% advantage over vanilla equivalent, flag it for exclusion.
- **Beginner-first tone.** Assume the reader has never launched Stellaris. Explain terms, avoid acronyms without definition.
- **Version discipline.** Every `modlist/*.md` entry should note whether the mod is version-locked in MO2.
- **Performance notes.** Where known, annotate mods with performance impact (FPS cost, load time increase).
- **External links.** Link to Steam Workshop pages (or GitHub/Discord for non-Steam mods).
- **4K baseline.** All screenshots taken at 3840×2160. UI mod recommendations should note 4K compatibility. Screenshots go in `docs/assets/images/` and should be scaled for web (max 1920px wide) but full-res in the PDF.

## Web Research

When researching mods (Workshop pages, mod wikis, GitHub), the standard HTTP fetch may fail because Steam and some other sites block unauthenticated requests. If a page doesn't load, use **Playwright** (headless Chromium) to browse it. Playwright is already installed as a dependency of mkdocs-exporter:

```powershell
playwright install chrome
```

Use it to navigate Workshop pages, read mod descriptions, and extract information that regular HTTP fetch can't reach.

**Key Steam Workshop pages to check:**
- Main page: `https://steamcommunity.com/sharedfiles/filedetails/?id=XXXXX`
- Comments: `https://steamcommunity.com/sharedfiles/filedetails/comments/XXXXX`
- Change notes: `https://steamcommunity.com/sharedfiles/filedetails/changelog/XXXXX`

The **comments section** is the best place to verify actual 4.4 compatibility — users will report if the mod crashes/freezes at 80% loading, and community members often link to fix mods or updated forks there. Check the first page (most recent comments sorted by date) for compatibility reports.

## Build Commands

```powershell
# Full build (site + PDF)
python -m mkdocs build

```

## Mod Research Protocol

When verifying compatibility of candidate mods, do NOT rely on the title/description alone. Use this multi-step protocol:

1. **Start with web search** — search the mod name + Workshop ID + "4.4" + "comments" to find Steam Workshop comments pages and community discussions
2. **Check Steam Workshop comments** — look for recent user reports of 4.4 compatibility issues. If the original mod is deprecated, the comments section often contains links to updated forks or community fix patches
3. **Check change notes** — look for recent update dates on the mod's changelog. A mod updated after the 4.4 release date (June 15, 2026) is a strong compatibility signal
4. **Check for community fix mods** — search for "[version] [modname] Fix" — sometimes a third-party fix exists when the original author hasn't updated
5. **Cross-reference with skymods** — skymods.ru often lists the last revision date which may differ from Steam's display

Known compatibility patterns discovered through community comment research:

| Pattern | Example | Action |
|---------|---------|--------|
| Original mod deprecated, remastered fork exists | Light Borders (1506081421) → Aspct's [4.0+] fork (3477695569) | Use the fork, note the version claim discrepancy |
| Mod tagged for older version, community fix exists | Empires Expanded [4.2] (2717193796) → 4.4 Empires Expanded Fix (3688050585) | Flag as RISK — requires extra fix mod, not recommended for beginners. Comments confirm 80% loading freeze on 4.4 |
| Mod tagged for older version but actively maintained | Shrouded Regions (3483853399) | Still RISK — verify compatibility via comments/change notes before adding |
| Additive mods that don't overwrite same files | More Ascension Perks (3099975582) + Expanded Stellaris Ascension Perks (2976573664) | Usually compatible — ESAP is confirmed 4.4.* compatible (description says "Stellaris 4.4.*"), More AP has no 4.4 claim but doesn't overwrite files. Consider beginner overload from 57 total perks |
| Very popular mod with explicit version in title | Gigastructural Engineering & More (4.4) (1121692237) | Confirmed compatible; check for required compatibility patches (UIOD, Real Space, etc.) |

## Mod Assignment Notes

- **Ideal System Locator (3243319558)** — assign to Wave 3 (not Wave 2), as it's a utility/QoL mod that complements Planetary Diversity and Gigastructures in the Galaxy & Setup section
- **Ascension perk mods** — More Ascension Perks (3099975582) and Expanded Stellaris Ascension Perks (Delta) (2976573664) both go in **Wave 3** under the Technology section

## Convention Notes

- MkDocs nav order matches the `docs/` file prefix numbering (01-, 02-, etc.)
- Screenshots go in `docs/assets/images/` when added
- The build script reads `VERSION` for PDF metadata
