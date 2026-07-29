# No One is Coming — Design Spec

**Project:** Project Zomboid B42 Modlist & Game Guide
**Game Version:** Build 42.12.3 (22 October 2025) — mods must be B42 compatible
**Date:** 2026-07-21
**Status:** Approved

---

## 1. Project Overview

A comprehensive modlist and survival guide for Project Zomboid Build 42. The guide is organized into three progressive "waves," each representing a new game with increasing difficulty, more mods, and a more complex roleplaying background. The final deliverable is a richly-styled PDF generated via Typst 0.15.

**Name:** "No One is Coming"

---

## 2. Project Structure

```
project-zomboid-modlist/
├── .gitignore                         # Matches: output/*.pdf, .DS_Store, Thumbs.db, *.tmp
├── AGENTS.md                          # AI agent instructions (see §10)
├── README.md                          # Project overview, usage, dependencies, versioning (see §10)
├── build.bat                          # Batch file to compile PDF via Typst
├── assets/
│   ├── logo.png                       # Cover page logo
│   └── fonts/                         # Typst-compatible font files (see §7)
├── guide/
│   ├── template.typ                   # Shared Typst styles (colors, fonts, layout, callouts)
│   ├── main.typ                       # Root Typst file — includes all sections in order
│   ├── preface.typ                    # Intro, how to use guide, mod manager setup & configuration
│   ├── installation.typ               # Mod installation, load order rules, troubleshooting
│   ├── wave-0/
│   │   ├── story.typ                  # Roleplaying background (short — 2 paragraphs)
│   │   ├── settings.typ               # Sandbox settings for this wave
│   │   ├── guide.typ                  # Complete how-to-play guide for new players
│   │   └── modlist.typ                # Mod entries for Wave 0 (≤5 mods, including Mod Manager)
│   ├── wave-1/
│   │   ├── story.typ
│   │   ├── settings.typ
│   │   ├── guide.typ                  # Strategy and intermediate topics
│   │   └── modlist.typ                # Mod entries for Wave 1 (20-40 mods)
│   └── wave-2/
│       ├── story.typ
│       ├── settings.typ
│       ├── guide.typ                  # Advanced/hardcore topics
│       └── modlist.typ                # Mod entries for Wave 2 (40+ mods)
├── output/
│   └── No-One-Is-Coming.pdf           # Generated PDF (gitignored via .gitignore)
├── mod-conflicts.md                   # Known mod conflicts — NOT included in PDF
└── mod-ideas.md                       # Ideas for future mods — NOT included in PDF
```

### Key Files

| File | Purpose |
|---|---|
| `.gitignore` | Excludes `output/*.pdf`, OS files, temp files |
| `build.bat` | Runs `typst compile guide/main.typ output/No-One-Is-Coming.pdf` |
| `guide/template.typ` | Centralized Typst styling: colors, fonts, heading styles, page layout, cover page, callout blocks (tip, warning, danger, info, note), wave divider pages |
| `guide/main.typ` | Root document — imports template, sets metadata, includes all sections in order |
| `guide/preface.typ` | Introduction to the modlist philosophy, [B42] Mod Manager full setup (download, install, enable, configure, load order), how waves work |
| `guide/installation.typ` | Step-by-step mod installation for each workshop mod, load order rules, wave-specific installation notes, common troubleshooting (game won't start, mods not loading, red error boxes, save corruption) |
| `guide/wave-N/story.typ` | 2-paragraph roleplaying background for the wave's character |
| `guide/wave-N/settings.typ` | Full sandbox configuration for the wave (see §4.1) |
| `guide/wave-N/guide.typ` | Wave-specific how-to-play or strategy content |
| `guide/wave-N/modlist.typ` | Wave-specific mod entries |
| `mod-conflicts.md` | Tracks known incompatible mod combinations |
| `mod-ideas.md` | Mod concepts to develop — none exist yet, tracked for future |

---

## 3. Wave Structure

Each wave represents a complete new game — different character, different backstory, different mods, different difficulty settings.

### Wave 0 — "The First Night"

| Aspect | Details |
|---|---|
| **Player Level** | Complete beginner — no previous PZ experience |
| **Mod Count** | ≤5 (including Mod Manager) |
| **Mod Categories** | Mod Manager, UI improvements only (better inventory, minimap toggle, crafting UI), zero gameplay changes |
| **Guide Depth** | Deep tutorials (~1-2 pages per topic). Teaches the game from zero. |
| **Guide Topics** | Game installation, controls/keybinds, UI walkthrough, character creation (traits explained one by one), skills overview, basic survival (food/water/sleep/shelter), combat basics (pushing, stomping, weapons, kiting), first day survival checklist, death & respawn system, zombie types & behaviors, moodles explained, TV/radio, looting basics, first night strategy |
| **Background Story** | Ordinary person (office worker, student, parent) — caught completely off guard |

### Wave 1 — "Scars and Lessons"

| Aspect | Details |
|---|---|
| **Player Level** | Intermediate — comfortable with basic survival |
| **Mod Count** | 20-40 mods |
| **Mod Categories** | Graphics (textures, models, animations), more items (weapons, clothing, food), vehicles, QoL expansions, mild mechanics (expanded professions, traits), mild content (new locations, events) |
| **Guide Depth** | Strategy-level (~1 page per topic). Assumes basic mechanics are known. |
| **Guide Topics** | Base building & fortification, farming & agriculture, trapping, fishing, foraging, mechanics skill (vehicle repair), electrical, metalworking, carpentry advanced, hotwiring, medical system deep dive, tailoring & armor, long-term survival (water/power shutoff), helicopter event strategy, horde management, winter survival, generator use, multiplayer/split-screen setup, character build optimization |
| **Background Story** | Tradesperson who lost family in the outbreak — skilled but haunted |

### Wave 2 — "No One is Coming"

| Aspect | Details |
|---|---|
| **Player Level** | Expert — experienced, wants the hardest challenge |
| **Mod Count** | 40+ mods |
| **Mod Categories** | Heavy mechanics (nutrition overhaul, temperature/hypothermia, hygiene, mental health, thirst), full gameplay overhauls, realism mods, expanded professions & traits, new maps/locations, harder zombies (sprinters, special infected), expanded crafting trees, immersive systems (bandaging rework, infection rework), endgame content |
| **Guide Depth** | Advanced (~0.5-1 page per topic). Assumes expert-level familiarity with vanilla. Focus on mod-specific systems. |
| **Guide Topics** | Mod-specific mechanic guides (each major system mod gets its own section), hardcore survival strategies, advanced combat (sprinters, horde clearing), community server setup, debug & admin tools, mod conflict management & debugging, endgame meta (sustainable bases, renewable resources), speedrun/optimization tips, permadeath mental approach |
| **Background Story** | Ex-military survivalist — everyone they trusted is dead, last stand |

---

## 4. Game Settings Per Wave

### 4.1 Sandbox Configuration

Each wave uses a specific sandbox preset as a starting point, with custom overrides defined in `settings.typ`.

#### Wave 0 — Survivor (Ez)
| Setting | Value |
|---|---|
| **Preset** | Survivor |
| **Zombie Count** | Low (0.5x) |
| **Zombie Speed** | Shamblers only |
| **Zombie Strength** | Weak |
| **Zombie Cognition** | Basic navigation only |
| **Loot Rarity** | Common (all categories) |
| **Power/Water Shutoff** | 14-30 days |
| **Infection Mortality** | Saliva only (bites) |
| **Multihit** | Enabled |
| **XP Multiplier** | 2.0x |
| **Rear Vulnerability** | Low |
| **Starter Kit** | Enabled |

#### Wave 1 — Apocalypse
| Setting | Value |
|---|---|
| **Preset** | Apocalypse |
| **Zombie Count** | Normal (1.0x) |
| **Zombie Speed** | Fast Shamblers |
| **Zombie Strength** | Normal |
| **Zombie Cognition** | Normal |
| **Loot Rarity** | Rare (all categories) |
| **Power/Water Shutoff** | 0-14 days |
| **Infection Mortality** | Saliva only |
| **Multihit** | Disabled |
| **XP Multiplier** | 1.0x |
| **Rear Vulnerability** | Normal |
| **Helicopter** | Sometimes |
| **Meta Events** | Sometimes |

#### Wave 2 — No Hope
| Setting | Value |
|---|---|
| **Preset** | Custom (harder than Apocalypse) |
| **Zombie Count** | High (2.0x) |
| **Zombie Speed** | Random (shamblers + fast shamblers + sprinters mixed) |
| **Zombie Strength** | Tough |
| **Zombie Cognition** | Navigate + Open Doors |
| **Loot Rarity** | Extremely Rare (all categories) |
| **Power/Water Shutoff** | Instant (0 days) |
| **Infection Mortality** | Blood + Saliva (scratches + lacerations + bites) |
| **Multihit** | Disabled |
| **XP Multiplier** | 0.75x |
| **Rear Vulnerability** | High |
| **Helicopter** | Often |
| **Meta Events** | Often |
| **House Alarms** | Frequent |
| **Locked Houses** | Frequent |
| **Zombie Respawn** | 0.1x (almost none — what you clear stays clear) |
| **Starting Month** | December (winter start) |

---

## 5. Mod Rules & Discovery

### 5.1 Inclusion Criteria
- **B42 Compatible:** Compatible with Build 42.12.3. Use October 2025 upload/last-update date as heuristic; verify via Steam Workshop description and comments.
- **No Conflicts:** Check for declared incompatibilities. If two mods conflict, pick the better one for the guide and document in `mod-conflicts.md`.
- **No Redundancy:** Don't include two mods doing the same thing. Prefer the more popular/maintained one.
- **No Cheat Mods:** No god-mode, infinite carry, omniscient map, infinite resources, skill-to-10 buttons.
- **No Explicit Porn:** Intimacy/romance/nudity-for-realism OK; pornographic acts, animations, or explicit sexual content NOT.
- **Not Abandoned:** Mod must have recent B42 activity or confirmed working status.

### 5.2 Discovery Method
Primary: Search Steam Workshop for Project Zomboid using Playwright browser automation — browse B42 tagged mods, most popular, most subscribed. Search specific keywords per category.
Fallback: Manual web search and community recommendations (Reddit r/projectzomboid, PZ Discord).

### 5.3 Verification Per Mod
1. Open Steam Workshop page via Playwright
2. Check description for "B42" or "Build 42" compatibility statement
3. Check last updated date (must be ≥ October 2025 or explicitly B42-compatible)
4. Check dependencies (listed on Workshop page)
5. Check comments for B42 bug reports
6. Document findings in the mod entry

### 5.4 Required Mod (All Waves)
- **[B42] Mod Manager** — Steam Workshop ID: 3567084868
  - Full setup: download, enable in main menu, configure load order
  - Load order rules: dependencies first, maps after, overrides last
  - Covered in `preface.typ`

---

## 6. Mod Entry Format

Each mod in `wave-N/modlist.typ`:

```typst
=== Mod Name
#link("https://steamcommunity.com/sharedfiles/filedetails/?id=XXXXX")[Steam Workshop]
- *Category:* UI / Graphics / Content / Mechanics / QoL / Map / Vehicle / Profession
- *Dependencies:* None, or list of required mod names + Workshop IDs
- *System Impact:* What game systems this mod touches or changes
- *Description:* 1-2 sentences on what the mod does
```

Mods are grouped by category with a subheading. Within a category, ordered by importance/dependency.

---

## 7. PDF Design

### 7.1 Engine
- **Typst 0.15** — compiled via `build.bat`
- **Page size:** A4 (210mm × 297mm) — standard for PDF guides, printable
- **Dark theme** for screen reading. Add a note on cover page: "Best viewed digitally. Print at your own toner expense."

### 7.2 Fonts (locked in)
| Role | Font | License |
|---|---|---|
| **Body text** | Atkinson Hyperlegible (Braille Institute, OFL) — high readability | Free / OFL |
| **Headings** | Special Elite (Google Fonts, Apache 2.0) — typewriter/survival feel | Free / Apache 2.0 |
| **Monospace/code** | JetBrains Mono (OFL) — for config snippets, keybinds | Free / OFL |

All fonts stored in `assets/fonts/` as `.ttf` or `.otf`. Typst `#text(font: "...")` references by family name.

### 7.3 Color Palette
| Role | Color | Hex | Usage |
|---|---|---|---|
| **Background** | Near-black Charcoal | `#1A1A1A` | Page background |
| **Body text** | Off-white Cream | `#F5F0E8` | All body copy |
| **Primary accent** | Dark Crimson | `#8B0000` | Heading text, divider lines |
| **Secondary accent** | Muted Orange | `#CC5500` | Links, highlights, wave subtitles |
| **Positive** | Muted Green | `#556B2F` | Survival tips, success notes |
| **Callout backgrounds** | Slightly lighter charcoal with colored left border | `#252525` | Tip/warning/danger boxes |

### 7.4 Callout Block Types
| Type | Border Color | Icon | Usage |
|---|---|---|---|
| **Tip** | Green (`#556B2F`) | Lightbulb / check | Helpful advice, pro tips |
| **Warning** | Orange (`#CC5500`) | Exclamation triangle | Things that can go wrong |
| **Danger** | Crimson (`#8B0000`) | Skull / X | Run-ending mistakes, critical issues |
| **Info** | Blue-gray | Info circle | Neutral information, context |
| **Note** | Gray | Pencil | Footnotes, asides |

Each implemented as a Typst `#block()` with colored left border, icon, and slightly lighter background than the page.

### 7.5 Page Layout
- **Margins:** 20mm all sides
- **Headers:** Wave name + page number (right-aligned)
- **Footers:** "No One is Coming — Project Zomboid B42 Modlist" (center)
- **Links:** Clickable in PDF, underlined, colored orange

### 7.6 Cover Page
Full dark background, centered vertically and horizontally:
1. `logo.png` (scaled to ~40% page width)
2. Title: "NO ONE IS COMING" — Special Elite, large (~36pt), crimson
3. Subtitle: "A Project Zomboid Build 42 Modlist & Survival Guide" — Atkinson Hyperlegible, ~14pt, cream
4. Badges line: "Build 42.12.3" | "3 Waves" | "For New & Veteran Survivors" — small, muted
5. Bottom: "Compiled July 2026" — small, gray

### 7.7 Wave Divider Pages
Full-page transition between waves. Dark background centered text:
- Wave number and name (large, crimson)
- Background story (medium, cream, italic)
- "Begin Wave N" footer

### 7.8 Sections (in order in `main.typ`)
1. Cover Page
2. Table of Contents (auto-generated by Typst `#outline`)
3. Preface — Intro, Mod Manager setup
4. Installation — Mod installation, load order, troubleshooting
5. Wave 0 Divider → Story → Settings → Guide → Modlist
6. Wave 1 Divider → Story → Settings → Guide → Modlist
7. Wave 2 Divider → Story → Settings → Guide → Modlist

---

## 8. Build System

### `build.bat`
```batch
@echo off
echo ========================================
echo   Building "No One is Coming" Guide
echo ========================================
echo.
typst compile guide/main.typ output/No-One-Is-Coming.pdf
if %ERRORLEVEL% EQU 0 (
    echo.
    echo SUCCESS: output/No-One-Is-Coming.pdf
) else (
    echo.
    echo BUILD FAILED! Check Typst errors above.
    exit /b 1
)
```

### Dependencies
- **Typst 0.15** installed and in PATH
- Font files present in `assets/fonts/`
- `logo.png` present in `assets/`

---

## 9. Non-PDF Files

### `mod-conflicts.md`
Structure:
```markdown
# Mod Conflicts

## Conflict: Mod A <> Mod B
- **Issue:** Both override foraging system
- **Resolution:** Use Mod A (more features). Mod B excluded.
- **Affected Waves:** Wave 1, Wave 2
```

### `mod-ideas.md`
Structure:
```markdown
# Mod Ideas (To Develop)

## Idea: Realistic Bandaging
- **Category:** Mechanics
- **Description:** Multi-stage wound treatment with infection risk
- **Target Wave:** 2
- **Priority:** High
```

Neither file is included in the generated PDF.

---

## 10. AGENTS.md & README.md

### AGENTS.md
- Project context: This is a modlist + guide for Project Zomboid B42
- File conventions: Typst `.typ` files, UTF-8, LF line endings
- Implementation order: scaffold project → fonts → template.typ → preface → installation → Wave 0 → Wave 1 → Wave 2 → build.bat → README
- Mod rules (from §5)
- Build command: `typst compile guide/main.typ output/No-One-Is-Coming.pdf`
- Typst 0.15 quirks and font loading notes
- Do not commit `output/*.pdf`
- Mod discovery workflow (Steam Workshop via Playwright)

### README.md
- Project title and description
- Dependencies (Typst 0.15)
- Quick start: `build.bat`
- Project structure reference
- Game version and compatibility note
- How to contribute / submit mod suggestions
- Versioning note (see §11)

---

## 11. Versioning & Updates

- **Initial version:** v1.0 — targets Build 42.12.3
- **Update triggers:** new game patch (e.g., B42.13), Typst breaking changes, mod updates that break compatibility
- **Patch process:** Update affected files, re-run `build.bat`, update date on cover page
- **Version tracking:** Git tags. `v1.0.0` for initial release, `v1.0.1` for fixes, `v1.1.0` for additions
- Version number shown on cover page and in PDF metadata

---

## 12. Out of Scope

- Hosting/distribution of mod files — Steam Workshop links only
- Steam Collection maintenance (could be future addition)
- Automated mod installation scripts
- Multi-language support (English only)
- Interactive/digital-only features (PDF is the sole output format)
- Auto-updating modlist (manual curation)
