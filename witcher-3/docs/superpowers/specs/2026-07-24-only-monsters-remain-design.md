# Only Monsters Remain - Design Specification

## Project Overview

A comprehensive Witcher 3 modlist and game guide combining:
- **Three progressive waves** (cumulative: Wave 0 ⊂ Wave 1 ⊂ Wave 2)
- **Game guide** with beginner to advanced content
- **Static documentation site** (VitePress)
- **PDF output** (Typst) with cover page, full TOC, all content

---

## Architecture

### Tech Stack
- **Content**: Markdown with YAML frontmatter (single source of truth)
- **Static Site**: VitePress (Vue-based, excellent for documentation)
- **PDF Generation**: Typst 0.15 (modern, programmable, fast)
- **Build**: npm scripts + Windows batch file (`build.bat`)

### Project Structure

```
witcher-3-modlist/
├── guide/
│   ├── 00-getting-started/          # Wave 0: Vanilla+QoL + Beginner Guide
│   │   ├── 00-installation.md       # Game + Mod Manager setup
│   │   ├── 01-modlist-wave0.md      # Wave 0 modlist (UI/QoL mods only)
│   │   ├── 02-beginner-guide.md     # Complete how-to-play for beginners
│   │   ├── 03-controls-basics.md    # Controls, UI, basic mechanics
│   │   ├── 04-combat-basics.md      # Basic combat tutorial
│   │   └── 05-progression-guide.md  # Leveling, skills, builds for Wave 0
│   ├── 01-enhanced/                 # Wave 1: Graphics/Content + Strategy
│   │   ├── 00-installation-wave1.md # Upgrading from Wave 0
│   │   ├── 01-modlist-wave1.md      # Wave 1 modlist (+Graphics, Content)
│   │   ├── 02-strategy-guide.md     # Advanced strategies, builds
│   │   ├── 03-combat-advanced.md    # Advanced combat mechanics
│   │   ├── 04-gear-crafting.md      # Gear, crafting, diagrams
│   │   ├── 05-gwent-guide.md        # Gwent comprehensive guide
│   │   └── 06-exploration.md        # World exploration, POIs
│   ├── 02-mastery/                  # Wave 2: Mechanics/Overhauls + Roleplay
│   │   ├── 00-installation-wave2.md # Upgrading from Wave 1
│   │   ├── 01-modlist-wave2.md      # Wave 2 modlist (+Mechanics, Overhauls)
│   │   ├── 02-roleplay-background.md# Wave 2 unique roleplay story
│   │   ├── 03-mastery-mechanics.md  # Deep mechanics, overhauls
│   │   ├── 04-builds-specialized.md # Specialized builds
│   │   └── 05-endgame-guide.md      # NG+, DLCs, endgame
│   ├── 03-reference/                # Reference materials (all waves)
│   │   ├── 00-mod-reference.md      # Complete mod reference table
│   │   ├── 01-conflicts.md          # Conflicts & compatibility matrix
│   │   ├── 02-load-order.md         # Complete load order guide
│   │   ├── 03-mod-manager-guide.md  # Witcher 3 Mod Manager guide
│   │   └── 04-troubleshooting.md    # Common issues & fixes
│   └── assets/                      # Images, logos, assets
│       └── logo.png
├── output/
│   ├── site/                        # VitePress build output
│   └── Only-Monsters-Remain.pdf     # Typst PDF output
├── conflicts/                       # NOT in PDF output
│   └── conflicts.md                 # Conflicting mods database
├── mod-ideas/                       # NOT in PDF output
│   └── ideas.md                     # Future mod concepts
├── .vitepress/                      # VitePress config
├── typst/                           # Typst templates
├── package.json
├── build.bat
└── README.md
```

---

## Wave Design

### Wave 0: "A Witcher's Apprentice" (Vanilla+QoL)
- **Mods**: UI/QoL only (no gameplay changes)
- **Guide**: Complete beginner how-to-play
- **Roleplay**: New to the Path, learning basics at Kaer Morhen
- **Target**: First-time players

### Wave 1: "A Witcher's Journey" (Enhanced)
- **Mods**: Wave 0 + Graphics mods + Content mods (quests, gear, items)
- **Guide**: Strategy, advanced combat, gear, Gwent, exploration
- **Roleplay**: Experienced witcher taking contracts across the Continent
- **Target**: Players with some experience

### Wave 2: "Master Witcher" (Mastery)
- **Mods**: Wave 1 + Mechanics overhauls + Gameplay changes
- **Guide**: Deep mechanics, specialized builds, endgame, NG+
- **Roleplay**: Veteran witcher, legendary contracts, master of the craft
- **Target**: Experienced players seeking depth

---

## Mod Entry Schema (Markdown Frontmatter)

```yaml
---
nexus_id: 1234                 # Required: Nexus Mods ID
version: "1.2.3"               # Required: Mod version (for v4.04 compatibility)
author: "AuthorName"           # Required: Mod author
category: "Graphics"           # Required: UI | QoL | Graphics | Content | Mechanics | Overhaul
tags: ["hd", "textures"]       # Optional: Searchable tags
wave: 1                        # Required: 0 | 1 | 2 (wave when introduced)
dependencies: [1234, 5678]     # Optional: Nexus IDs of required mods
conflicts: [9999]              # Optional: Nexus IDs of conflicting mods
load_order: 100                # Optional: Load order priority (lower = earlier)
mechanic_impact: "Description" # Optional: Gameplay/mechanic changes
description: "Full description" # Required: What the mod does
download_url: "https://..."    # Required: Direct Nexus mod page URL
---
```

---

## Build Pipeline

| Command | Description |
|---------|-------------|
| `npm run dev` | VitePress dev server (localhost:5173) |
| `npm run build` | Build static site to `output/site/` |
| `npm run pdf` | Compile Typst to `output/Only-Monsters-Remain.pdf` |
| `build.bat` | Windows batch: runs both build + pdf |

---

## PDF Output (Typst)

- **Cover page**: logo.png + "Only Monsters Remain" title
- **Table of Contents**: Full hierarchical TOC
- **Content**: All waves with installation instructions
- **Mod Reference**: Tables with clickable Nexus links
- **Styling**: Witcher theme (amber/red), good contrast, readable fonts
- **Features**: Page numbers, headers/footers, chapter breaks

---

## Static Site (VitePress)

- **Theme**: Dark/light mode (Witcher themed colors)
- **Responsive**: Mobile-friendly
- **Search**: Full-text search across all content
- **Mod Tables**: Sortable, filterable by category/wave/tags
- **Navigation**: Sidebar per wave + reference section

---

## Non-PDF Output Files

These are for development/reference only, NOT included in PDF:
- `conflicts/conflicts.md` - Database of conflicting/incompatible mods
- `mod-ideas/ideas.md` - Future mod concepts to research/develop

---

## Mod Sourcing

- **Primary**: Nexus Mods (Witcher 3 Mod Manager compatible)
- **Secondary**: GitHub (open-source mods), ModDB
- **Version Target**: Game version 4.04 (July 19, 2023)
- **Compatibility**: All mods must work with v4.04

---

## Mod Manager

**Witcher 3 Mod Manager** (Nexus #2678) - Primary focus
- Installation instructions per wave
- Load order management
- Profile setup guidance

---

## Constraints & Rules

1. **No conflicting mods** - Verified via conflicts database
2. **No porn mods** - Adult/nude okay where lore-relevant
3. **No redundant mods** - One mod per function
4. **Version locked** - All mods compatible with 4.04
5. **No cheat/overpower mods** - Balanced gameplay only
6. **Cumulative waves** - Each wave includes previous

---

## Approval Status

- [x] Architecture approved
- [x] Wave structure approved
- [x] Content structure approved
- [x] Build pipeline approved
- [x] PDF/site features approved

---

*Design document created: 2026-07-24*
*Next step: Invoke writing-plans skill for implementation plan*