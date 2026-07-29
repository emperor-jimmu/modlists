# Santos Supreme — Design Document

## Overview

**Santos Supreme** is a curated modlist and game guide for **Grand Theft Auto V v1.73** (July 14, 2026). It uses **OpenIV** as the mod management tool and targets progressive waves of playthroughs, each with a distinct roleplaying backstory and increasing mod complexity.

---

## Project Structure

```
gta-v-modlist/
├── AGENTS.md                    # AI work instructions for this project
├── README.md                    # Project overview & quick-start
├── assets/
│   └── logo.jpg                 # Logo for PDF cover page
├── guide/
│   ├── wave0/                   # Wave 0: "Getting By" (vanilla+/first playthrough)
│   └── wave1/                   # Wave 1: "Untold Stories" (mod-heavy/post-story)
├── output/                      # Generated PDF output directory
├── conflicts.md                 # Known mod conflicts (NOT included in PDF)
├── mod-ideas.md                 # Ideas for future/undeveloped mods (NOT in PDF)
├── template.typ                 # Typst 0.15 template for PDF generation
└── generate.bat                 # Batch file to regenerate PDF
```

---

## Wave System

The modlist is organized into progressive waves. Readers are expected to complete Wave 0 before moving to Wave 1.

### Wave 0: "Getting By"

**Roleplay premise:** Survive and thrive in Los Santos. Learn the city, master the mechanics, build wealth from the ground up. The full vanilla sandbox experience.

Framed for all three protagonists: Franklin's economic climb out of the hood, Michael's midlife reckoning, Trevor's return to civilization from Blaine County. Each has their own version of "getting by."

**Mod scope:** UI, QoL, and bug-fix mods only. No content additions or mechanic overhauls.

**Guide files:** Authored in Typst markup (`.typ`) for direct `#include` in the PDF template. Syntax is markdown-like (`= Heading`, `*italic*`, `_bold_`, `- list items`), making them human-readable independently.

| File | Content |
|------|---------|
| `00-roleplay.typ` | Wave backstory, roleplay framing |
| `01-before-you-begin.typ` | OpenIV setup, game configuration, basic mod installation |
| `02-modlist.typ` | Mod list with entries (UI, QoL, bug fixes) |
| `03-gameplay-guide.typ` | Beginner controls, mechanics, money-making strategies, tips |

### Wave 1: "Untold Stories"

**Roleplay premise:** The story missions are done. Now explore what the world hides — mod-added content, hidden locations, new mechanics, total conversions of side activities.

**Mod scope:** Graphics, new content, economy/realism, gameplay overhauls, mechanics expansion. Adult mods where relevant and approved.

**Guide files:**

| File | Content |
|------|---------|
| `00-roleplay.typ` | Wave backstory, transition from Wave 0 |
| `01-migration-guide.typ` | Upgrading from Wave 0, additional setup |
| `02-modlist-graphics.typ` | Visual overhaul mods |
| `03-modlist-content.typ` | New content, map extensions, missions |
| `04-modlist-mechanics.typ` | Economy, realism, gang, gameplay overhaul mods |
| `05-modlist-adult.typ` | Adult mods (approved, relevant) |
| `06-advanced-guide.typ` | Strategy for new mechanics, hidden content |

---

## Mod Entry Format

Each mod follows a consistent template (in Typst syntax for `.typ` files):

```typst
== #link("full-url")[Mod Name]
- *Category:* [UI/Graphics/Content/Mechanics/QoL/Adult]
- *Version:* [version compatible with v1.73]
- *Dependencies:* [other required mods/tools]
- *Install path:* [/mods/ folder or specific .rpf path]
- *System Impact:* [what the mod changes mechanically]
- *Installation:* [special steps beyond copy-paste]
```

---

## Content Rules

- **Compatibility:** All mods must be compatible with GTA V v1.73 (July 14, 2026). Mod version or patch release date used as heuristic when exact version unknown.
- **No conflicts:** Two mods conflict if they modify the same `.rpf` archive or hook the same game function (ScriptHookV memory address overlap). Document known incompatibilities in `conflicts.md`.
- **No porn:** No pornographic mods. Adult/nude content allowed where contextually relevant and with user approval.
  - **Approval process:** Each adult/nude mod is listed in `05-modlist-adult.typ` with a note. The user reviews and explicitly approves per-mod before inclusion in the final PDF. Mods without approval are excluded or marked in the template.
- **No redundancy:** No duplicate-function mods.
- **No cheating:** No overpowered, all-knowing, or game-breaking mods.
- **Wave gating:** Wave 0 = UI/QoL only. Wave 1+ unlocks graphics, content, mechanics.
- **Singleplayer only:** All mods are for singleplayer. Warn users never to launch GTA Online with mods installed — ban risk.

---

## PDF Generation (Typst 0.15)

**Tool:** Typst 0.15.1 (installed)

**Batch file** (`generate.bat`):
```bat
@echo off
typst compile template.typ output/santos-supreme.pdf
```

**Template** (`template.typ`):
- Cover page: logo centered, title "Santos Supreme", wave subtitle, game version
- Table of contents via `#outline()`
- Color palette: GTA V inspired — dark backgrounds, gold/orange accents, high readability contrast
- Fonts: Serif body (readability), bold sans-serif headings
- Wave dividers: Separate cover/title pages between Wave 0 and Wave 1 so readers clearly see the transition
- Content: All guide `.typ` files included in wave order via `#include`
- Page numbering, section headers
- Print safety: Light/neutral background for body pages (ink-friendly); dark cover page only

**Excluded from PDF:** `conflicts.md`, `mod-ideas.md`

---

## Foundation Tools

All mod setups depend on the following scaffolding:

| Tool | Purpose | Notes |
|------|---------|-------|
| **OpenIV** | Mod management, `.rpf` editing | Free. Full install/config in Wave 0's `01-before-you-begin.typ` |
| **ScriptHookV** | Native mod hook | v1.73-compatible version required. Distinguish from ScripthookVDotNet |
| **ScriptHookVDotNet** | .NET mod bridge | Required by many C# mods |
| **OpenIV.asi** | ASI loader for OpenIV | Handles mod folder override system |
| **Gameconfig.xml** | Memory limits | Often needed by graphics/content-heavy mods in Wave 1 |

**OpenIV section covers:** download link, installation, mods folder setup, `.rpf` editing basics, backup procedures, disabling mods for Online.

**Singleplayer warning:** Prominent notice that launching GTA Online with mods installed will trigger a ban.

---

## Build Order

0. Initialize git repo (`git init`)
1. Create AGENTS.md with project instructions
2. Create README.md with project overview
3. Create `conflicts.md` (stub with structure)
4. Create `mod-ideas.md` (stub with structure)
5. Write Typst template (`template.typ`) with cover, TOC, wave dividers
6. Write batch file (`generate.bat`)
7. Create Wave 0 `.typ` stubs (each with section heading + placeholder content)
8. Create Wave 1 `.typ` stubs (each with section heading + placeholder content)
9. Generate initial PDF to validate template
10. Research mods for Wave 0 (v1.73-compatible UI/QoL/bugfix)
11. Populate Wave 0 modlist and guide content
12. Regenerate PDF
13. Research mods for Wave 1 (v1.73-compatible graphics/content/mechanics/adult)
14. Populate Wave 1 modlists and guide content
15. Regenerate final PDF

## Mod Research Pipeline

For each candidate mod:
1. Check compatibility with GTA V v1.73 (version number or patch date heuristic)
2. Verify no conflict with existing mods in same wave (same `.rpf` path or ScriptHookV hook)
3. Categorize (UI/Graphics/Content/Mechanics/QoL/Adult)
4. Record: name, URL, version, dependencies, install path, system impact, special install notes
5. For adult mods: flag for user approval before inclusion
