# Fidelitas Suprema — Arma 3 Modlist & Guide Design

## Overview

A 5-wave progressive modlist and gameplay guide for Arma 3 (version 2.20, June 17, 2025). Each wave targets increasing player experience and difficulty, with a roleplaying narrative backstory and recommended campaign/mission. Output is a PDF with military-aesthetic styling.

## Project Structure

```bash
arma-3-modlist/
├── AGENTS.md                       — Instructions for AI agents: mod rules, build steps, conventions
├── README.md                       — What this project is, how to use guide, how to build PDF
├── .gitignore
├── assets/
│   └── logo.jpg
├── guide/
│   ├── meta/
│   │   ├── installation-setup.typ  — Official Launcher config, mod management
│   │   └── about.typ               — What is Fidelitas Suprema, wave overview
│   └── waves/
│       ├── 00-wave-0/
│       │   ├── narrative.typ       — Roleplaying backstory
│       │   ├── mods.typ            — Mod list for Wave 0
│       │   ├── gameplay-guide.typ  — Complete how-to-play for beginners
│       │   └── mission.typ         — Recommended campaign/mission
│       ├── 01-wave-1/
│       │   ├── narrative.typ
│       │   ├── mods.typ
│       │   ├── strategy-guide.typ  — Advanced combat tactics
│       │   └── mission.typ
│       ├── 02-wave-2/
│       │   ├── narrative.typ
│       │   ├── mods.typ
│       │   └── mission.typ
│       ├── 03-wave-3/
│       │   ├── narrative.typ
│       │   ├── mods.typ
│       │   └── mission.typ
│       └── 04-wave-4/
│           ├── narrative.typ
│           ├── mods.typ
│           └── mission.typ
├── conflicts-mods.md               — Known mod conflicts (NOT in PDF output)
├── mod-ideas.md                    — Future mod ideas to develop (NOT in PDF output)
├── template.typ                    — Typst 0.15 PDF template — imports all content files
├── generate-pdf.bat                — Batch script to compile PDF (includes dependency checks)
└── output/
    └── Fidelitas-Suprema.pdf       — Generated PDF (gitignored)
```

## Content Format

Guide files use **Typst native markup** (`.typ`), not Markdown. This avoids a conversion step — Typst `include`s them directly.

Typst markup is still human-readable for standalone reference. Key syntax differences from Markdown:

- `= Heading` instead of `# Heading`
- `== Subheading` instead of `## Subheading`
- `*bold*` and `_italic_` work the same
- Links: `[text](url)` works the same
- Bullet lists: `- item` works the same
- Typst uses `#keyword()` for functions instead of Markdown extensions

Since the `.typ` files are the guide content, there is no separate "preprocessing" step. The source IS the content.

## Mod Entry Format

Each mod entry in `mods.typ`:

```typst
== [Readable Mod Name](https://steamcommunity.com/workshop/filedetails/?id=WORKSHOP_ID)

- *Type:* Graphics
- *Mod ID:* `WORKSHOP_ID`
- *Dependencies:* [#link("https://steamcommunity.com/workshop/filedetails/?id=450814997")[@CBA_A3]]
- *Description:* One-two sentence summary of what this mod does.
- *System Impact:* What gameplay mechanics this mod changes or adds.
- *Verified:* 2025-06-17
```

### Mod Entry Fields

| Field          | Required | Description                                                         |
|----------------|----------|---------------------------------------------------------------------|
| Mod Name + URL | Yes      | Steam Workshop link, readable name as display text                  |
| Type           | Yes      | One of: Graphics, Content, Mechanics, UI/QoL                        |
| Mod ID         | Yes      | Steam Workshop numeric ID for version tracking                      |
| Dependencies   | If any   | Workshop links to required mods                                     |
| Description    | Yes      | What the mod does, 1-2 sentences                                    |
| System Impact  | If any   | Gameplay mechanics this mod changes (omit for purely cosmetic mods) |
| Verified       | Yes      | Date this mod was verified compatible with Arma 3 v2.20             |

## Wave Progression

| Wave | Name           | Latin      | Theme                      | Mod Tier                                  | Guide Focus                                          | Campaign                                          | Mod Count (est.) |
|------|----------------|------------|----------------------------|-------------------------------------------|------------------------------------------------------|---------------------------------------------------|------------------|
| 0    | Basic Training | Tirocinium | Recruit boot camp          | UI/QoL only                               | Full how-to-play (movement, controls, combat basics) | Vanilla boot camp + East Wind intro               | 3–6              |
| 1    | The Spark      | Ignis      | Green deployment           | Visual/immersion, weapon packs            | Advanced combat tactics, teamplay, comms             | East Wind continued                               | 8–15             |
| 2    | Steel          | Ferrum     | Mechanized infantry        | ACE, RHS/CUP, medical                     | Wounding, vehicle repair, logistics                  | Co-op community campaign (Liberation / Antistasi) | 15–25            |
| 3    | Sharp          | Acer       | Special forces             | TFAR/ACRE, environment, realism           | Radio comms, land nav, survival                      | Dynamic recon / special ops scenarios             | 20–35            |
| 4    | The Highest    | Suprema    | Joint task force commander | Full milsim, every compatible realism mod | ROE, JTAC, logistics chain                           | Full-scale combined arms                          | 30–50+           |

## Mod Rules

### Hard Rules (never violated)

- **No conflicting mods** — check dependency trees and known compatibility
- **No porn mods** — cosmetic bikini/bathing suit skins allowed; no nudity textures, no sex animation packs, no adult-only workshop mods
- **No redundant mods** — if two mods do the same thing, pick the better one (or neither)
- **No cheat/overpower/all-knowing mods** — no "god mode," no "see-through-walls" radar, no infinite stamina, no damage hacks
- **Must be compatible with Arma 3 v2.20** — release date June 17, 2025. Use patch release date as heuristic if you can't determine specific mod version compatibility

### Wave 0 Litmus Test (UI/QoL Only)

A mod qualifies as UI/QoL for Wave 0 if it ONLY changes:

- Information display (HUD, map markers, unit tracking)
- Interface convenience (inventory sorting, keybinding enhancements)
- Visual clarity without adding new assets (crosshair improvements, color coding)

A mod is **NOT** UI/QoL if it:

- Alters core gameplay mechanics (damage, stamina, weapon handling)
- Changes AI behavior
- Adds new weapons, vehicles, or content
- Modifies the physics or ballistics engine

## PDF Specification (Typst 0.15)

### Cover Page

- Logo (assets/logo.jpg) centered top half, sized ~60% page width
- Title "Fidelitas Suprema" in 36pt bold sans-serif, gold (#c9a84c)
- Subtitle "Arma 3 Modlist & Guide — Version 2.20" in 14pt sans-serif, gold
- Tagline "A 5-Wave Progression from Recruit to Commander" in 11pt italic, white
- Dark navy (#1a2332) full-page background

### Document Structure

1. Cover page (no header/footer)
2. Table of Contents (auto-generated via `outline`)
3. About Fidelitas Suprema — what this project is
4. Installation & Setup — Official Launcher configuration, mod management
5. Wave 0–4 chapters — each gets a part divider page then includes narrative, mods, guide, mission
6. Appendices — full mod index by wave (collated)

### Styling

- **Paper:** A4 (210mm × 297mm)
- **Margins:** 2.5cm all sides (wider on binding edge if needed)
- **Page numbers:** Footer, center, with total count
- **Headings:** Sans-serif. Prefer Archivo Narrow (installable via Google Fonts). Fallback: Segoe UI Bold on Windows.
- **Body:** Serif. Prefer Source Serif (installable via Google Fonts). Fallback: Georgia on Windows.
- **Colors:**
    - Background: White (#ffffff) for body pages, dark navy (#1a2332) for cover and part dividers
    - Accent: Gold (#c9a84c) for headings, section markers, badges
    - Text: Charcoal (#2c3e50) for body, white (#ffffff) on dark backgrounds
    - Borders: Light slate (#b0b8c4)
- **Mod cards:** Light gray (#f5f5f5) block background, left border colored by mod type:
    - Green (#27ae60) = Content
    - Blue (#2980b9) = UI/QoL
    - Red (#e74c3c) = Mechanics
    - Purple (#8e44ad) = Graphics
- **Links:** Clickable, underlined in gold (#c9a84c)
- **Badges:** Colored inline label for mod type, rounded corners

### Font Strategy

- Sans-serif headings: Archivo Narrow (primary), Segoe UI Bold (fallback)
- Serif body: Source Serif (primary), Georgia (fallback)
- Install instructions for Archivo Narrow and Source Serif will be in generate-pdf.bat (wget or manual download)
- If fonts aren't installed, Typst silently falls back — so the fallback must look acceptable

## Build Process

### Dependency Check

`generate-pdf.bat` will:

1. Check if `typst` is in PATH (`where typst || exit /b 1`)
2. Check if `output\` directory exists, create if missing
3. Check if `assets\logo.jpg` exists
4. Run `typst compile template.typ output\Fidelitas-Suprema.pdf`
5. Exit with error code on failure

### Script

```batch
@echo off
where typst >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo Typst not found. Install from https://github.com/typst/typst/releases/tag/v0.15.0
    exit /b 1
)
if not exist output\ mkdir output
if not exist assets\logo.jpg (
    echo Missing logo file at assets\logo.jpg
    exit /b 1
)
typst compile template.typ output\Fidelitas-Suprema.pdf
if %ERRORLEVEL% equ 0 (
    echo PDF generated: output\Fidelitas-Suprema.pdf
) else (
    echo PDF generation failed
    exit /b %ERRORLEVEL%
)
```

### Gitignore

```
output/
*.pdf
```

## AGENTS.md Content

Instructions for AI agents working on this project:

- Mod rules (exact text from Mod Rules section above)
- Mod entry format (exact template)
- Wave structure overview
- PDF build command
- File naming conventions
- That `conflicts-mods.md` and `mod-ideas.md` are working documents, not for PDF output

## README.md Content

- Brief project description
- What each wave means
- Prerequisites (Arma 3 v2.20+, Steam Workshop access)
- How to use the guide files directly
- How to build the PDF (link to Typst 0.15 installer)
- Credits/license

## Non-PDF Files

### conflicts-mods.md

Running document of known mod incompatibilities. Each entry: conflicting mods, nature of conflict, resolution (which to drop).

### mod-ideas.md

Running document of candidate mods to evaluate later. Each entry: mod name, Workshop ID, rationale, wave it would fit, any concerns.
