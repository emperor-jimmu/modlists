# Stellaris Modlist Guide — AI Assistant Instructions

## Project Identity

This project builds a curated, beginner-friendly modlist guide for Stellaris (2026, all DLC) on Windows. It teaches Stellaris fundamentals while providing ~60-120 mods covering bugfixes, UI/HUD, graphics, gameplay, content expansion, galaxy diversity, and alien breeding — no cheating/overpower mods.

The output is a MkDocs website + a beautifully styled PDF guide.

## Tech Stack

| Component | Choice |
|-----------|--------|
| Site generator | MkDocs with Material theme |
| PDF generator | mkdocs-exporter (Playwright/Chromium on Windows) |
| PDF styling | SCSS via CSS Paged Media |
| Mod manager | Mod Organizer 2 (MO2) |
| Launcher | Paradox Launcher (via Steam) |

## Repo Structure

```
stellaris-modlist/
├── README.md
├── AGENTS.md
├── VERSION
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

## Build Commands

```powershell
# Full build (site + PDF)
python -m mkdocs build

# Dev server with live reload
python -m mkdocs serve
```

## Convention Notes

- MkDocs nav order matches the `docs/` file prefix numbering (01-, 02-, etc.)
- Screenshots go in `docs/assets/images/` when added
- The build script reads `VERSION` for PDF metadata
