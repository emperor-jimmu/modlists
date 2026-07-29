# Only Monsters Remain Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Scaffold the "Only Monsters Remain" Witcher 3 modlist and game guide project with VitePress static site, Typst PDF generation, and the full wave-based content structure.

**Architecture:** Markdown-first with YAML frontmatter for mod metadata. VitePress generates the documentation site. Typst (0.15) generates the PDF from the same markdown source. A Windows batch file orchestrates both builds. Guide content is organized into 3 wave folders plus a reference folder.

**Tech Stack:** VitePress, Typst 0.15, Node.js, npm, Windows batch scripting

**Note:** Actual mod entries will be added later — this plan sets up the complete framework with representative placeholder data.

---

### Task 1: Project Scaffolding

**Files:**
- Create: `package.json`
- Create: `.gitignore`
- Create: `AGENTS.md`
- Create: `README.md`

- [ ] **Step 1: Create `package.json`**

```json
{
  "name": "only-monsters-remain",
  "version": "1.0.0",
  "description": "A curated Witcher 3 modlist and game guide — Only Monsters Remain",
  "scripts": {
    "dev": "vitepress dev",
    "build": "vitepress build && move .vitepress\\dist output\\site",
    "pdf": "typst compile typst\\main.typ output\\Only-Monsters-Remain.pdf",
    "build:all": "npm run build && npm run pdf"
  },
  "devDependencies": {
    "vitepress": "^1.3.0"
  }
}
```

- [ ] **Step 2: Create `.gitignore`**

```
node_modules/
.vitepress/dist/
.vitepress/cache/
output/site/
output/*.pdf
*.log
.DS_Store
```

- [ ] **Step 3: Create `AGENTS.md`**

```markdown
# Agent Instructions for Only Monsters Remain

## Project Structure
- `guide/` — All guide content organized by wave
- `output/` — Build artifacts (site + PDF)
- `conflicts/` — Mod conflict database (NOT in PDF)
- `mod-ideas/` — Future mod concepts (NOT in PDF)
- `typst/` — Typst PDF templates
- `assets/` — Images, logos

## Wave System
- Wave 0: Vanilla+QoL — Beginner guide, UI/QoL mods only
- Wave 1: Enhanced — +Graphics, +Content, strategy guide
- Wave 2: Mastery — +Mechanics/Overhauls, advanced guide
- Waves are cumulative (each includes previous wave mods)

## Build Commands
- `npm run dev` — VitePress dev server
- `npm run build` — Build static site
- `npm run pdf` — Build PDF with Typst
- `npm run build:all` — Build both
- `build.bat` — Windows batch for both

## Constraints
- All mods must be compatible with game version 4.04 (July 19, 2023)
- No porn mods (adult/nude okay where lore-relevant)
- No cheating/overpower mods
- No conflicting or redundant mods
- Mods use Witcher 3 Mod Manager (Nexus #2678)

## PDF Exclusion
Files in `conflicts/` and `mod-ideas/` must NOT be included in PDF output.
```

- [ ] **Step 4: Create `README.md`**

```markdown
# Only Monsters Remain

A curated modlist and game guide for **The Witcher 3: Wild Hunt** (v4.04, July 19, 2023).

## Contents

- **Wave 0: A Witcher's Apprentice** — Vanilla+QoL for new players
- **Wave 1: A Witcher's Journey** — Enhanced graphics & content for experienced players
- **Wave 2: Master Witcher** — Mechanics overhauls for veteran players

## Getting Started

1. Install The Witcher 3 (v4.04)
2. Install [Witcher 3 Mod Manager](https://www.nexusmods.com/witcher3/mods/2678)
3. Follow the wave guide in `guide/`

## Build

```bash
npm install
npm run build:all
```

## PDF Output

Run `build.bat` or `npm run pdf` to generate `output/Only-Monsters-Remain.pdf`.

## License

Mod list and guide content are free to share. Respect individual mod authors' licenses.
```

---

### Task 2: Create Directory Structure

**Files:**
- Create: all subdirectories

- [ ] **Step 1: Create directory tree**

```bash
mkdir -p guide/00-getting-started
mkdir -p guide/01-enhanced
mkdir -p guide/02-mastery
mkdir -p guide/03-reference
mkdir -p output
mkdir -p conflicts
mkdir -p mod-ideas
mkdir -p typst
mkdir -p .vitepress
```

---

### Task 3: VitePress Configuration

**Files:**
- Create: `.vitepress/config.mjs`
- Create: `.vitepress/theme/index.mjs`
- Create: `.vitepress/theme/style.css`

- [ ] **Step 1: Create `.vitepress/config.mjs`**

```javascript
import { defineConfig } from 'vitepress'

export default defineConfig({
  title: 'Only Monsters Remain',
  description: 'A curated Witcher 3 modlist and game guide',
  lang: 'en-US',
  base: '/',
  srcDir: 'guide',
  outDir: '../.vitepress/dist',

  themeConfig: {
    logo: '/assets/logo.png',

    nav: [
      { text: 'Wave 0: Apprentice', link: '/00-getting-started/00-installation' },
      { text: 'Wave 1: Journey', link: '/01-enhanced/00-installation-wave1' },
      { text: 'Wave 2: Mastery', link: '/02-mastery/00-installation-wave2' },
      { text: 'Reference', link: '/03-reference/00-mod-reference' },
    ],

    sidebar: {
      '/00-getting-started/': [
        {
          text: 'Wave 0: A Witcher\'s Apprentice',
          items: [
            { text: 'Installation & Setup', link: '/00-getting-started/00-installation' },
            { text: 'Modlist — Wave 0', link: '/00-getting-started/01-modlist-wave0' },
            { text: 'Beginner\'s Guide', link: '/00-getting-started/02-beginner-guide' },
            { text: 'Controls & UI', link: '/00-getting-started/03-controls-basics' },
            { text: 'Combat Basics', link: '/00-getting-started/04-combat-basics' },
            { text: 'Progression Guide', link: '/00-getting-started/05-progression-guide' },
          ]
        }
      ],
      '/01-enhanced/': [
        {
          text: 'Wave 1: A Witcher\'s Journey',
          items: [
            { text: 'Upgrading to Wave 1', link: '/01-enhanced/00-installation-wave1' },
            { text: 'Modlist — Wave 1', link: '/01-enhanced/01-modlist-wave1' },
            { text: 'Advanced Strategy', link: '/01-enhanced/02-strategy-guide' },
            { text: 'Advanced Combat', link: '/01-enhanced/03-combat-advanced' },
            { text: 'Gear & Crafting', link: '/01-enhanced/04-gear-crafting' },
            { text: 'Gwent Guide', link: '/01-enhanced/05-gwent-guide' },
            { text: 'Exploration', link: '/01-enhanced/06-exploration' },
          ]
        }
      ],
      '/02-mastery/': [
        {
          text: 'Wave 2: Master Witcher',
          items: [
            { text: 'Upgrading to Wave 2', link: '/02-mastery/00-installation-wave2' },
            { text: 'Modlist — Wave 2', link: '/02-mastery/01-modlist-wave2' },
            { text: 'Roleplay Background', link: '/02-mastery/02-roleplay-background' },
            { text: 'Mastery Mechanics', link: '/02-mastery/03-mastery-mechanics' },
            { text: 'Specialized Builds', link: '/02-mastery/04-builds-specialized' },
            { text: 'Endgame & NG+', link: '/02-mastery/05-endgame-guide' },
          ]
        }
      ],
      '/03-reference/': [
        {
          text: 'Reference',
          items: [
            { text: 'Mod Reference', link: '/03-reference/00-mod-reference' },
            { text: 'Conflicts Matrix', link: '/03-reference/01-conflicts' },
            { text: 'Load Order Guide', link: '/03-reference/02-load-order' },
            { text: 'Mod Manager Guide', link: '/03-reference/03-mod-manager-guide' },
            { text: 'Troubleshooting', link: '/03-reference/04-troubleshooting' },
          ]
        }
      ],
    },

    socialLinks: [
      { icon: 'github', link: 'https://github.com/anomalyco/witcher-3-modlist' },
    ],
  },

  vite: {
    publicDir: '../guide/assets',
  },
})
```

- [ ] **Step 2: Create `.vitepress/theme/index.mjs`**

```javascript
import DefaultTheme from 'vitepress/theme'
import './style.css'

export default DefaultTheme
```

- [ ] **Step 3: Create `.vitepress/theme/style.css`**

```css
:root {
  --vp-c-brand-1: #b8860b;
  --vp-c-brand-2: #d4a017;
  --vp-c-brand-3: #8b6914;
  --vp-c-brand-soft: rgba(184, 134, 11, 0.14);

  --vp-home-hero-name-color: transparent;
  --vp-home-hero-name-background: linear-gradient(135deg, #b8860b 0%, #d4a017 50%, #8b0000 100%);

  --vp-custom-block-tip-border: #b8860b;
  --vp-custom-block-tip-text: #d4a017;
  --vp-custom-block-tip-bg: rgba(184, 134, 11, 0.1);

  --vp-button-brand-border: #b8860b;
  --vp-button-brand-text: #fff;
  --vp-button-brand-bg: #8b6914;
  --vp-button-brand-hover-border: #d4a017;
  --vp-button-brand-hover-text: #fff;
  --vp-button-brand-hover-bg: #b8860b;
}

.wave-badge {
  display: inline-block;
  padding: 2px 8px;
  border-radius: 4px;
  font-size: 0.75rem;
  font-weight: 600;
  text-transform: uppercase;
  margin-right: 6px;
}

.wave-badge.wave-0 { background: #2e7d32; color: #fff; }
.wave-badge.wave-1 { background: #1565c0; color: #fff; }
.wave-badge.wave-2 { background: #6a1b9a; color: #fff; }

.category-tag {
  display: inline-block;
  padding: 1px 6px;
  border-radius: 3px;
  font-size: 0.7rem;
  border: 1px solid var(--vp-c-brand-1);
  color: var(--vp-c-brand-1);
  margin-right: 4px;
}

.mod-card {
  border: 1px solid var(--vp-c-border);
  border-radius: 8px;
  padding: 16px;
  margin: 12px 0;
  background: var(--vp-c-bg-soft);
}

.mod-card h3 { margin-top: 0; }

.mod-meta {
  display: flex;
  gap: 12px;
  flex-wrap: wrap;
  font-size: 0.85rem;
  color: var(--vp-c-text-2);
  margin: 8px 0;
}

.mod-meta strong { color: var(--vp-c-text-1); }
```

---

### Task 4: Typst PDF Templates

**Files:**
- Create: `typst/main.typ`
- Create: `typst/theme.typ`
- Create: `typst/mod-entry.typ`

- [ ] **Step 1: Create `typst/theme.typ`**

```typst
#let witcher-colors = (
  amber: rgb("#b8860b"),
  gold: rgb("#d4a017"),
  dark-amber: rgb("#8b6914"),
  deep-red: rgb("#8b0000"),
  cream: rgb("#f5f0e1"),
  dark-bg: rgb("#1a1a2e"),
  dark-text: rgb("#e0dcd0"),
  accent: rgb("#c49a3c"),
)

#let heading-font = "Georgia"
#let body-font = "Palatino Linotype"

#let witcher-heading(level, body) = {
  set text(font: heading-font, weight: "bold")
  text(fill: witcher-colors.amber)[#body]
}

#let title-page(title, subtitle, logo-path) = {
  page(size: "a4", margin: (top: 6cm, bottom: 3cm, left: 2.5cm, right: 2.5cm))[
    #align(center, image(logo-path, height: 5cm))
    #v(2cm)
    #align(center, text(size: 36pt, weight: "bold", fill: witcher-colors.amber)[#title])
    #v(0.5cm)
    #align(center, text(size: 18pt, fill: witcher-colors.gold)[#subtitle])
    #v(1cm)
    #align(center, text(size: 11pt, fill: witcher-colors.dark-amber)[A Witcher 3 Modlist & Game Guide])
    #v(2cm)
    #align(center, text(size: 10pt, fill: luma(120))[Generated #datetime.today().display("[day] [month repr:long] [year]")])
  ]
}

#let wave-header(number, title, subtitle) = {
  pagebreak(weak: true)
  set heading(numbering: "1.1")
  #block(stroke: 2pt + witcher-colors.amber, width: 100%)[#v(1cm)]
  #text(size: 8pt, fill: witcher-colors.dark-amber)[WAVE #number]
  #v(0.2cm)
  #text(size: 24pt, weight: "bold", fill: witcher-colors.amber)[#title]
  #v(0.3cm)
  #text(size: 12pt, fill: witcher-colors.gold)[#subtitle]
  #v(1cm)
}

#let mod-card(name, url, author, category, version, wave, dependencies: (), mechanic-impact: none, body: []) = {
  rect(stroke: 0.5pt + witcher-colors.amber, inset: 12pt, margin: (bottom: 8pt))[
    #text(size: 13pt, weight: "bold", fill: witcher-colors.amber)[#name]
    #h(4pt)
    #text(size: 9pt, fill: blue, link(url))[\[Link\]]
    #v(4pt)
    #grid(
      columns: (1fr, 1fr),
      [Author: #author],
      [Category: #category],
      [Version: #version],
      [Wave: #wave],
    )
    #if dependencies.len() > 0 [
      #v(2pt)
      Dependencies: #dependencies.join(", ")
    ]
    #if mechanic-impact != none [
      #v(2pt)
      *Mechanic Impact:* #mechanic-impact
    ]
    #v(4pt)
    #body
  ]
}
```

- [ ] **Step 2: Create `typst/main.typ`**

```typst
#import "theme.typ": *
#import "mod-entry.typ": *

#set page(
  size: "a4",
  margin: (top: 1.5cm, bottom: 1.5cm, left: 2cm, right: 2cm),
  header: align(right + top, text(size: 8pt, fill: luma(160))[Only Monsters Remain]),
  footer: align(center + bottom, text(size: 8pt, fill: luma(160))[#context( numbering("1"))]),
  numbering: "1",
)

#set text(font: body-font, size: 10pt, fill: witcher-colors.dark-text)
#set par(justify: true, leading: 0.65em)
#show heading: it => {
  set text(font: heading-font, weight: "bold", fill: witcher-colors.amber)
  it
}

#title-page(
  title: "Only Monsters Remain",
  subtitle: "A Curated Witcher 3 Modlist & Game Guide",
  logo-path: "../guide/assets/logo.png",
)

#pagebreak()
#set heading(numbering: "1.1")
#outline(
  title: [Table of Contents],
  indent: auto,
)

// ============================================================
// WAVE 0
// ============================================================
#wave-header(0, "A Witcher's Apprentice", "Vanilla + Quality of Life — For New Players")

= Installation & Setup
== Game Installation
Instructions for installing Witcher 3 v4.04...
== Mod Manager Setup
Instructions for Witcher 3 Mod Manager (Nexus #2678)...

= Modlist — Wave 0
#mod-card(
  name: "Placeholder Mod",
  url: "https://www.nexusmods.com/witcher3/mods/1",
  author: "AuthorName",
  category: "UI",
  version: "1.0",
  wave: "0",
)[
  Placeholder description for the mod.
]

= Beginner's Guide
== Getting Started
== Core Mechanics

= Controls & UI
== Keyboard & Mouse
== Controller

= Combat Basics
== Swordplay
== Signs
== Alchemy

= Progression Guide
== Leveling
== Skills & Perks
== Equipment

// ============================================================
// WAVE 1
// ============================================================
#wave-header(1, "A Witcher's Journey", "Enhanced Graphics & Content — For Experienced Players")

= Upgrading to Wave 1

= Modlist — Wave 1

= Advanced Strategy
== Build Theory
== Sign vs Combat vs Alchemy

= Advanced Combat
== Enemy Weaknesses
== Oils & Bombs
== Parrying & Dodging

= Gear & Crafting
== Witcher Gear Sets
== Grandmaster Diagrams
== Runewords & Glyphwords

= Gwent Guide
== Deck Building
== Card Locations
== Tournament Strategy

= Exploration
== Points of Interest
== Hidden Treasures
== ? Locations

// ============================================================
// WAVE 2
// ============================================================
#wave-header(2, "Master Witcher", "Mechanics Overhauls — For Veteran Players")

= Upgrading to Wave 2

= Modlist — Wave 2

= Roleplay Background

= Mastery Mechanics
== New Systems from Mods
== Difficulty Overhauls
== Survival Mechanics

= Specialized Builds
== Pure Signs
== Pure Alchemy
== Hybrid Builds
== Endgame Optimized

= Endgame & NG+
== New Game Plus Prep
== Blood and Wine Endgame
== Hearts of Stone Endgame

// ============================================================
// REFERENCE
// ============================================================
#pagebreak()
#set heading(numbering: "1.1")
= Reference
== Complete Mod Reference
== Load Order Guide
== Mod Manager Guide
== Troubleshooting
```

- [ ] **Step 3: Create `typst/mod-entry.typ`**

```typst
// Re-exported from theme.typ for organizational clarity
#let mod-card = theme.mod-card
```

---

### Task 5: Build Batch File

**Files:**
- Create: `build.bat`

- [ ] **Step 1: Create `build.bat`**

```batch
@echo off
title Only Monsters Remain — Build All

echo ====================================
echo  Only Monsters Remain
echo  Build: Site + PDF
echo ====================================
echo.

:: Check for Node.js
where node >nul 2>nul
if %ERRORLEVEL% neq 0 (
    echo ERROR: Node.js is not installed or not in PATH.
    echo Please install Node.js from https://nodejs.org/
    pause
    exit /b 1
)

:: Check for Typst
where typst >nul 2>nul
if %ERRORLEVEL% neq 0 (
    echo WARNING: Typst is not installed or not in PATH.
    echo PDF generation will be skipped.
    echo Install Typst from https://github.com/typst/typst/releases
    echo.
    set SKIP_PDF=1
)

:: Install dependencies if needed
if not exist "node_modules\" (
    echo Installing dependencies...
    call npm install
    if %ERRORLEVEL% neq 0 (
        echo ERROR: npm install failed.
        pause
        exit /b 1
    )
    echo.
)

:: Build VitePress site
echo [1/2] Building static site...
call npm run build
if %ERRORLEVEL% neq 0 (
    echo ERROR: Static site build failed.
    pause
    exit /b 1
)
echo.

:: Build PDF
if "%SKIP_PDF%"=="" (
    echo [2/2] Building PDF...
    call npm run pdf
    if %ERRORLEVEL% neq 0 (
        echo ERROR: PDF build failed.
        pause
        exit /b 1
    )
    echo.
) else (
    echo [2/2] SKIPPED — Typst not installed.
    echo.
)

echo ====================================
echo  Build complete!
echo  Site: output\site\index.html
if "%SKIP_PDF%"=="" (
    echo  PDF:  output\Only-Monsters-Remain.pdf
)
echo ====================================
echo.
pause
```

---

### Task 6: Guide Content — Wave 0 (Getting Started)

**Files:**
- Create: `guide/00-getting-started/00-installation.md`
- Create: `guide/00-getting-started/01-modlist-wave0.md`
- Create: `guide/00-getting-started/02-beginner-guide.md`
- Create: `guide/00-getting-started/03-controls-basics.md`
- Create: `guide/00-getting-started/04-combat-basics.md`
- Create: `guide/00-getting-started/05-progression-guide.md`

- [ ] **Step 1: Create `guide/00-getting-started/00-installation.md`**

```markdown
---
title: Installation & Setup
description: How to install The Witcher 3, set up the Mod Manager, and prepare for modding
---

# Installation & Setup

<span class="wave-badge wave-0">Wave 0</span>

## Game Installation

1. Install **The Witcher 3: Wild Hunt — Game of the Year Edition** via GOG, Steam, or Epic
2. Ensure your game is updated to **version 4.04** (released July 19, 2023)
   - GOG: Verify game executable properties
   - Steam: Properties → Betas → Select "4.04"
   - Epic: Auto-updates to latest
3. Run the game once to generate configuration files

## Witcher 3 Mod Manager

Download and install [Witcher 3 Mod Manager](https://www.nexusmods.com/witcher3/mods/2678) (Nexus #2678).

### Setup Steps

1. Launch the Mod Manager
2. Set your game directory (where `witcher3.exe` is located)
3. The Mod Manager will scan for existing mods
4. Create a profile named "Only Monsters Remain — Wave 0"

### Configuration

- Enable "Script Merger" integration
- Enable "Mod Deactivation" for profile switching
- Set mod staging folder to default

## Next Steps

After setup, proceed to the [Wave 0 Modlist](./01-modlist-wave0).
```

- [ ] **Step 2: Create `guide/00-getting-started/01-modlist-wave0.md`**

```markdown
---
title: Modlist — Wave 0
description: Vanilla+QoL mods for Wave 0: A Witcher's Apprentice
---

# Modlist — Wave 0

<span class="wave-badge wave-0">Wave 0</span>

**Roleplay**: *A Witcher's Apprentice* — You've just completed your trials at Kaer Morhen. The Path stretches before you, unfamiliar and dangerous. These mods help you see the world clearly without changing its nature.

## Installation Instructions

1. Open Witcher 3 Mod Manager
2. Select your "Wave 0" profile
3. Install each mod below in order
4. Run Script Merger if prompted
5. Launch the game

---

### Mods

<!-- Mod entries will be populated here with full metadata once the modlist is finalized. -->
```

- [ ] **Step 3: Create `guide/00-getting-started/02-beginner-guide.md`**

```markdown
---
title: Beginner's Guide
description: Complete how-to-play guide for new Witcher 3 players
---

# Beginner's Guide

<span class="wave-badge wave-0">Wave 0</span>

## Welcome to the Continent

The Witcher 3 is an open-world action RPG. You play as **Geralt of Rivia**, a monster hunter for hire. This guide covers everything you need to know to start your journey.

## Core Gameplay Loop

1. **Explore** the world — discover towns, forests, mountains, and seas
2. **Take contracts** — help people by slaying monsters
3. **Complete quests** — main story, side quests, witcher contracts
4. **Level up** — earn experience, unlock skills, improve gear
5. **Prepare** — craft potions, oils, bombs before fights

## HUD Overview

- **Health bar** (top-left) — your vitality
- **Stamina bar** (top-left, below health) — used for Signs and dodging
- **Quickslot menu** (bottom) — potions, bombs, crossbow
- **Minimap** (top-right) — shows nearby points of interest
- **Quest tracker** (top-left) — active quest objectives
- **Enemy health** (top-center) — appears in combat

## Basic Controls

### Keyboard & Mouse
| Action | Key |
|--------|-----|
| Move | W/A/S/D |
| Sprint | Shift + W |
| Light Attack | Left Click |
| Heavy Attack | Right Click (hold) |
| Cast Sign | Q |
| Draw/Sheathe Sword | Alt |
| Use Item | 1-4 |
| Open Inventory | I |
| Open Map | M |
| Journal | J |
| Meditation | Ctrl |

### Controller
| Action | Button |
|--------|--------|
| Move | Left Stick |
| Sprint | Left Stick (click) |
| Light Attack | RB |
| Heavy Attack | RT |
| Cast Sign | LB + Face Button |
| Draw/Sheathe | Y |
| Use Item | D-Pad |
| Open Inventory | Back/View |
| Open Map | Start/Menu |

## First Steps

1. **Follow the tutorial** in White Orchard
2. **Loot everything** — herbs, weapons, armor, monster parts
3. **Talk to everyone** with a quest marker
4. **Visit notice boards** — they reveal ? locations on the map
5. **Save often** — use manual saves before difficult fights
```

- [ ] **Step 4: Create `guide/00-getting-started/03-controls-basics.md`**

```markdown
---
title: Controls & UI Basics
description: Understanding the Witcher 3 user interface and control schemes
---

# Controls & UI Basics

<span class="wave-badge wave-0">Wave 0</span>

## User Interface Walkthrough

### Main Menu Bars

- **Inventory Screen (I)** — equipment, consumables, crafting materials, books
- **Character Screen (C)** — skill tree, attributes, character stats
- **Map Screen (M)** — world map, fast travel, quest markers
- **Journal (J)** — quest log, bestiary, glossary, characters
- **Alchemy Screen (B)** — potions, bombs, oils formulas
- **Meditation** — advances time, consumes alcohol to refill potions

## Movement & Navigation

### Roach (Your Horse)
- Summon: Hold Whistle key
- Gallop: Hold sprint
- Roach automatically follows roads
- Combat on horseback: attack with sword, use crossbow

### Fast Travel
- Unlock signposts by interacting with them once
- Open world map and click any unlocked signpost
- Some areas are inaccessible until story progression
```

- [ ] **Step 5: Create `guide/00-getting-started/04-combat-basics.md`**

```markdown
---
title: Combat Basics
description: Essential combat mechanics, Signs, and enemy tactics
---

# Combat Basics

<span class="wave-badge wave-0">Wave 0</span>

## Core Combat Mechanics

### Attacks
- **Light Attack** — fast, low stamina cost, chains into combos
- **Heavy Attack** — slow, high damage, breaks guards
- **Parry** — blocks incoming attacks (humanoids only)
- **Counter** — parry at the right moment to stagger enemies
- **Dodge** — quick sidestep, low stamina cost
- **Roll** — longer distance, higher stamina cost, invincibility frames

### Signs (Witcher Magic)

| Sign | Effect | Best Against |
|------|--------|--------------|
| **Aard** | Telekinetic blast, knocks back/stuns | Shielded enemies, groups |
| **Igni** | Fire damage, burning status | Monsters weak to fire, hives |
| **Yrden** | Magic trap, slows enemies | Wraiths, fast enemies |
| **Quen** | Protective shield, absorbs damage | All situations (defensive) |
| **Axii** | Mind control, stuns | Humans, dialog options |

### Combat Tips
1. **Quen is your best friend** — always keep it active
2. **Dodge, don't roll** — rolling costs more stamina
3. **Use the Bestiary** — learn enemy weaknesses
4. **Apply oils** before combat for bonus damage
5. **Bombs** for groups, **crossbow** for flying enemies
```

- [ ] **Step 6: Create `guide/00-getting-started/05-progression-guide.md`**

```markdown
---
title: Progression Guide
description: Leveling, skills, gear progression, and character development
---

# Progression Guide

<span class="wave-badge wave-0">Wave 0</span>

## Leveling

Experience comes from:
- **Main quests** — biggest XP rewards
- **Side quests** — significant XP
- **Monster contracts** — good XP + coin
- **Discovering locations** — small XP
- **Killing enemies** — minimal XP

## Skill Trees

| Tree | Focus |
|------|-------|
| **Combat** | Sword damage, critical hits, melee prowess |
| **Signs** | Magic intensity, alternate sign modes |
| **Alchemy** | Potion duration, toxicity, bomb effectiveness |
| **General** | Utility perks, cross-then bonuses |

### Build Recommendations

**Beginner-Friendly Build (Levels 1-20):**
- Spend points in Combat (fast attack)

### Gear Progression

1. **Starting gear** — complete White Orchard
2. **Witcher gear diagrams** — found via scavenger hunts
3. **Relic items** — looted from chests and bosses
4. **Crafted gear** — best in slot at each level

### Mutagens
- Red — attack power
- Green — alchemy
- Blue — sign intensity
- Place in mutagen slots for bonuses
- Greater versions provide stronger effects
```

---

### Task 7: Guide Content — Wave 1 (Enhanced)

**Files:**
- Create: `guide/01-enhanced/00-installation-wave1.md`
- Create: `guide/01-enhanced/01-modlist-wave1.md`
- Create: `guide/01-enhanced/02-strategy-guide.md`
- Create: `guide/01-enhanced/03-combat-advanced.md`
- Create: `guide/01-enhanced/04-gear-crafting.md`
- Create: `guide/01-enhanced/05-gwent-guide.md`
- Create: `guide/01-enhanced/06-exploration.md`

- [ ] **Step 1: Create all Wave 1 guide files**

Each file follows the same pattern as Wave 0 files with Wave 1 badge, roleplay introduction, and appropriate content. The modlist file uses placeholder entries.

---

### Task 8: Guide Content — Wave 2 (Mastery)

**Files:**
- Create: `guide/02-mastery/00-installation-wave2.md`
- Create: `guide/02-mastery/01-modlist-wave2.md`
- Create: `guide/02-mastery/02-roleplay-background.md`
- Create: `guide/02-mastery/03-mastery-mechanics.md`
- Create: `guide/02-mastery/04-builds-specialized.md`
- Create: `guide/02-mastery/05-endgame-guide.md`

- [ ] **Step 1: Create all Wave 2 guide files**

---

### Task 9: Guide Content — Reference Section

**Files:**
- Create: `guide/03-reference/00-mod-reference.md`
- Create: `guide/03-reference/01-conflicts.md`
- Create: `guide/03-reference/02-load-order.md`
- Create: `guide/03-reference/03-mod-manager-guide.md`
- Create: `guide/03-reference/04-troubleshooting.md`

- [ ] **Step 1: Create reference files**

---

### Task 10: Conflicts & Mod Ideas (Non-PDF)

**Files:**
- Create: `conflicts/conflicts.md`
- Create: `mod-ideas/ideas.md`

- [ ] **Step 1: Create `conflicts/conflicts.md`**

```markdown
# Mod Conflicts & Incompatibilities

> ⚠️ This file is NOT included in the PDF output.

This document tracks known conflicts between mods in this modlist.

## Conflict Categories

- **High** — Will crash the game or break functionality
- **Medium** — May cause visual bugs or minor issues
- **Low** — Minor overlapping edits that can be merged

## Conflict Entries

<!-- Populate as mods are added -->
```

- [ ] **Step 2: Create `mod-ideas/ideas.md`**

```markdown
# Mod Ideas for Future Development

> ⚠️ This file is NOT included in the PDF output.

This document collects ideas for custom mods that don't exist yet but would enhance this modlist.

## Categories

- **New Mechanics** — Combat, survival, crafting overhauls
- **Content** — New quests, gear, locations
- **Quality of Life** — UI improvements, convenience features
- **Integration** — Patches and compatibility between existing mods

## Idea Entries

<!-- Populate as ideas are generated -->
```

---

### Task 11: npm Install & Verify

**Files:**
- N/A (verification step)

- [ ] **Step 1: Install dependencies**

```bash
npm install
```

Expected output: `node_modules/` created with VitePress installed.

- [ ] **Step 2: Verify VitePress builds**

```bash
npm run build
```

Expected output: `output/site/` directory created with `index.html` and all guide pages.

- [ ] **Step 3: Verify Typst compiles (if available)**

```bash
npm run pdf
```

Expected output: `output/Only-Monsters-Remain.pdf` created.

---

### Task 12: First Commit

**Files:**
- Commit all project files

- [ ] **Step 1: Stage and commit**

```bash
git add .
git commit -m "feat: initial scaffold — Only Monsters Remain modlist and guide framework

- VitePress static site with wave-based content structure
- Typst PDF templates with Witcher-themed styling
- 3 cumulative waves (Apprentice, Journey, Mastery)
- Beginner, strategy, and mastery guide content
- Mod reference, conflicts, and load order documentation
- Windows batch file for site + PDF build"
```
