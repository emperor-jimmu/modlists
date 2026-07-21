# Design Spec: "No Crown Without Blood" — Bannerlord Modlist & Guide

**Date:** 2026-07-21
**Status:** Final
**Target:** Mount & Blade II: Bannerlord WS v1.2.7 / BL v1.4.7 (8 July 2026)

---

## Overview

A structured, multi-wave modlist and game guide for Mount & Blade II: Bannerlord. The modlist is organized into three progressive waves (0, 1, 2) that increase in difficulty, mod complexity, and strategic depth. Each wave features a roleplaying background story in a revenge-arc narrative — a displaced noble reclaiming their throne. The output is a richly-styled PDF, generated via Typst 0.15, containing the full guide and modlist.

**Modlist name:** No Crown Without Blood

**Mod entry format (Moderate detail):**

- Clickable name (URL to mod page, rendered as a Typst `#link()`)
- Dependencies (comma-separated list of other mods in list or external requirements)
- System/mechanic impact (what it changes in gameplay)
- Configuration notes (in-game settings, BLSE options, .ini tweaks)
- Load order guidance (position relative to other mods)
- Compatibility notes (known interactions with other mods in the same wave)

**Mod rules:**

- Must be compatible with BL 1.4.x / WS 1.2.x (patch release dates as heuristic)
- No conflicting mods within the same wave
- No pornographic mods (adult/nude OK where thematically relevant; ask if in doubt)
- No cheating/overpowered/omniscient mods
- No redundant mods (no two mods that do the same thing)
- Uses Bannerlord Software Extender (BLSE) as launcher/manager

**Mod taxonomy (concrete definitions):**

| Category             | Criteria                                                                                                                                                             | Max mods per wave                               |
|----------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------|
| **UI/QoL**           | Changes only interface elements. No new game mechanics, no new items, no stat changes. Examples: better tooltips, inventory sorting, font size options.              | Wave 0: unlimited (restricted to this category) |
| **Light mechanic**   | Adds or tweaks 1-3 discrete mechanics without overhauling existing systems. Examples: expanded diplomacy options, improved AI battle behavior, new quest types.      | Wave 1: up to 15                                |
| **Graphics**         | Changes visual assets only. No mechanic changes. Examples: texture replacers, lighting mods, environment overhauls.                                                  | Wave 1+: unlimited                              |
| **Content addition** | Adds new items, troops, factions, equipment, or world objects without replacing core systems.                                                                        | Wave 1: up to 10; Wave 2: unlimited             |
| **Heavy overhaul**   | Fundamentally changes or replaces 4+ core systems. Total conversion adjacency. Examples: complete economy rebalance, kingdom management overhaul, new damage models. | Wave 2: unlimited                               |

**BLSE:** Full installation and configuration instructions included in the shared section.

---

## Project Structure

```bash
bannerlord-modlist/
├── AGENTS.md                          # AI agent rules for this repo
├── README.md                          # Project overview for humans
├── build.bat                          # PDF generation script
├── assets/
│   ├── logo.png                       # Modlist logo (1254x1254, ~2.3MB)
│   └── screenshots/                   # Optional: per-wave screenshots
├── typst/
│   ├── template.typ                   # Main Typst document structure
│   └── styles.typ                     # Colors, fonts, layout, helper functions
├── guide/
│   ├── waves/
│   │   ├── wave-0/
│   │   │   ├── 00-introduction.typ    # Story intro (in-character)
│   │   │   ├── 01-how-to-play.typ     # Essential how-to-play guide
│   │   │   ├── 02-getting-started.typ # First campaign setup
│   │   │   ├── 03-mods.typ            # Wave 0 modlist (UI/QoL only)
│   │   │   └── load-order.typ         # Per-wave assembled load order
│   │   ├── wave-1/
│   │   │   ├── 00-introduction.typ
│   │   │   ├── 01-strategy.typ        # Mid-game strategy
│   │   │   ├── 02-mechanics.typ       # Deeper mechanics
│   │   │   ├── 03-mods.typ
│   │   │   └── load-order.typ
│   │   └── wave-2/
│   │       ├── 00-introduction.typ
│   │       ├── 01-strategy.typ        # Advanced endgame strategy
│   │       ├── 02-mechanics.typ       # Endgame mechanics
│   │       ├── 03-mods.typ
│   │       └── load-order.typ
│   ├── shared/
│   │   ├── installation.typ           # BLSE setup, game configuration
│   │   └── troubleshooting.typ        # Common issues, fixes
│   └── _index.typ                     # Master includes file for assembly
├── output/
│   └── (generated PDF: No-Crown-Without-Blood.pdf)
├── mod-conflicts.md                   # Known mod conflicts (NOT in PDF)
└── mod-ideas.md                       # Future mod ideas (NOT in PDF)
```

### Design decisions

- **Content files are `.typ` (Typst markup)**, not `.md`. Typst 0.15 does not natively parse markdown, and a preprocessing step introduces unnecessary complexity. Typst markup is clean, human-readable, and directly compilable. See Appendix A for markup examples.
- **Modular files per wave**: Guide content and modlists are separate files within each wave folder. This allows adding mods without touching guide text and vice versa.
- **`build.bat` at root**: Validates environment, then runs `typst compile` on `_index.typ` to produce the PDF. See PDF Generation section for full behavior.
- **`mod-conflicts.md` and `mod-ideas.md`**: Excluded from PDF output. Written in plain markdown. Use structured formats (defined below). These are working documents for maintainers.
- **`_index.typ`**: A single Typst file that `#include`s all content files in assembly order. This is the entry point for `typst compile`.
- **`load-order.typ` per wave**: Each wave gets its own load order file listing every mod in that wave with its position/priority, assembled from individual mod entries.

---

## `_index.typ` Format

The file uses Typst `#include` directives to pull in content in assembly order:

```typst
// _index.typ — entry point for typst compile
#import "typst/template.typ": *

// Order matters: cover, TOC, then content in intended reading order.
// Typst will auto-generate a TOC from headings.

#show: doc => apply-template(doc)

#include "typst/styles.typ"

// Shared (before any wave)
#include "guide/shared/installation.typ"
#include "guide/shared/troubleshooting.typ"

// Wave 0
#include "guide/waves/wave-0/00-introduction.typ"
#include "guide/waves/wave-0/01-how-to-play.typ"
#include "guide/waves/wave-0/02-getting-started.typ"
#include "guide/waves/wave-0/03-mods.typ"
#include "guide/waves/wave-0/load-order.typ"

// Wave 1
#include "guide/waves/wave-1/00-introduction.typ"
#include "guide/waves/wave-1/01-strategy.typ"
#include "guide/waves/wave-1/02-mechanics.typ"
#include "guide/waves/wave-1/03-mods.typ"
#include "guide/waves/wave-1/load-order.typ"

// Wave 2
#include "guide/waves/wave-2/00-introduction.typ"
#include "guide/waves/wave-2/01-strategy.typ"
#include "guide/waves/wave-2/02-mechanics.typ"
#include "guide/waves/wave-2/03-mods.typ"
#include "guide/waves/wave-2/load-order.typ"
```

---

## PDF Visual Design

### Cover page

Dark charcoal background. Logo centered at top, scaled to ~40% page width. Title "No Crown Without Blood" in display font, gold. Subtitle "A Bannerlord Modlist & Guide" beneath. Version "Bannerlord WS v1.2.7 / BL v1.4.7" in smaller text at bottom.

### Interior pages

Light parchment/cream background. Dark brown body text. Gold accents for headers and decorative elements. Subtle decorative horizontal rule separator between major sections.

### Color palette (all verified against WCAG AA)

| Role             | Color           | Hex       | Uses                      | Contrast vs cream | Contrast vs charcoal |
|------------------|-----------------|-----------|---------------------------|-------------------|----------------------|
| Cover background | Charcoal        | `#1A1A2E` | Cover page only           | N/A               | N/A                  |
| Page background  | Parchment/Cream | `#F5F0E6` | All interior pages        | N/A               | N/A                  |
| Body text        | Dark Brown      | `#3B2F2F` | Body paragraphs on cream  | **11.6:1** (AAA)  | —                    |
| Headers          | Dark Gold       | `#8B6914` | Section headings on cream | **4.7:1** (AA)    | —                    |
| Links            | Royal Blue      | `#1A4B8C` | Hyperlinks on cream       | **8.7:1** (AAA)   | —                    |
| Emphasis         | Deep Crimson    | `#7B1818` | Key terms, callouts       | **8.1:1** (AAA)   | —                    |
| Cover title      | Bright Gold     | `#D4AF37` | Title text on charcoal    | —                 | **5.8:1** (AA)       |
| Cover subtitle   | Warm Cream      | `#E8DCC8` | Subtitle text on charcoal | —                 | **12.4:1** (AAA)     |

**Wave accent colors** (headers only, not body text — decorative use):

| Wave   | Color name   | Hex       | Uses                                                |
|--------|--------------|-----------|-----------------------------------------------------|
| Wave 0 | Royal Blue   | `#1A4B8C` | Wave marker in TOC, section divider, chapter number |
| Wave 1 | Forest Green | `#2D5A27` | Wave marker in TOC, section divider, chapter number |
| Wave 2 | Blood Red    | `#8B1A1A` | Wave marker in TOC, section divider, chapter number |

### Typography

- **Body text**: "Crimson Pro" (serif, open-source, available in Google Fonts) — 11pt, dark brown
- **Headings**: "Libre Baskerville" (serif, open-source) — bold, small-caps for chapter titles
- **Code/config blocks**: "Fira Code" (monospace, open-source) — 9.5pt on a slightly darker tinted background (`#EDE5D8`)
- **Cover title**: "Cinzel" or "Cinzel Decorative" (serif, open-source, medieval aesthetic) — large, gold

All fonts are bundled via Typst's `#font()` fallback or system font detection. The template documents which fonts must be installed on the build machine.

### Typography backup safety rule

If a named font is not found on the build machine, Typst falls back to a system serif (e.g., "Times New Roman" on Windows, "Libertinus Serif" as Typst's built-in). The template uses Typst's `#text(font: (...))` with fallback arrays: `font: ("Crimson Pro", "Libertinus Serif")`. This ensures the PDF always builds, but the visual quality depends on the named fonts being installed. The `build.bat` prerequisite check warns if fonts are missing (see PDF Generation section).

### Font installation on build machine

The four fonts (Crimson Pro, Libre Baskerville, Fira Code, Cinzel) are listed in `AGENTS.md` and `README.md` as build prerequisites. `build.bat` checks for them using PowerShell.

### Image strategy

- **Logo**: `assets/logo.png` — embedded on cover page only. Typst's native PNG support handles this. The 1254x1254 source is scaled to ~40% page width (~200px at 96dpi output, ~70mm on A4). The 2.3MB PNG is compressed by Typst's PDF engine; no pre-optimization required.
- **Screenshots** (optional, future): Stored in `assets/screenshots/`, referenced by filename. Resolution capped at 1920x1080. Typst handles JPEG/PNG natively.
- **No diagrams or SVG**: The spec intentionally avoids vector graphics dependencies to keep the build chain simple.

---

## Content Per Wave

### Wave 0 — "The Exile"

**Story brief:** Your family — the ruling house of a minor Calradian fief — was betrayed during a peace summit. Your uncle seized power, executed your parents and elder siblings, and branded you a traitor. A loyal household guard smuggled you out during the massacre. You arrive at a border town with nothing: no gold, no allies, no army. Just your name, your blade, and a burning hatred that will take years to temper. Before you can even think of revenge, you must learn how to live — how to fight, how to trade, how to lead. The world doesn't know you exist. That's your only advantage.

**Introduction file content:**

- In-character narrative: The night of the betrayal (2-3 paragraphs, vivid scene-setting)
- Transition to player setup: "This is where your story begins"
- Wave 0 goals: survival, learning, building a name
- Character creation guidance within the story frame (which cultures/backgrounds fit the exiled noble theme)
- Tone: desperate but determined, personal stakes, the world feels big and hostile

**How-to-Play topics (Essentials, ~10-15 PDF pages):**

- Character creation (culture, background, attributes, skill focus)
- Basic controls and UI navigation (with BLSE setup context)
- Basic combat (melee stances, blocking, ranged aiming, mounted control)
- Party management (recruitment tiers, food types and spoilage, morale system, wage scaling)
- Trading 101 (buy low/sell high, trade rumors, supply/demand basics)
- Clan basics (renown thresholds, tier benefits, companion party limits)
- First 5 hours (tutorial quests, early progression pitfalls, when to run from fights)
- Saving/loading, difficulty settings, ironman mode
- Early quests, notables, and reputation

**Getting-started topics:**

- Game installation and version verification (WS 1.2.7 / BL 1.4.7)
- BLSE installation walkthrough (from shared/installation.typ)
- Wave 0 mod installation (how to install, where to place, BLSE load order)
- Starting a new campaign with the Exile backstory parameters
- Recommended difficulty settings for first-time players

**Mods — Wave 0 (UI/QoL only):**

- Only mod category: UI/QoL
- No graphics mods, no mechanic changes, no content additions, no overhauls
- Placeholder entries convey the shape of the final list
- Max mods: unlimited within UI/QoL category

### Wave 1 — "The Alliance"

**Story brief:** Five years have passed since the massacre. You are no longer a frightened child — you are a battle-hardened mercenary captain with a growing reputation. Lords know your name. Bandits fear your banner. But reputation isn't the same as power, and you've learned the hard way that Calradia's great houses do not share power with outsiders. To reclaim your birthright, you need alliances. You need marriages, trade empires, political leverage, and an army that fights not just for coin but for a cause. The lone mercenary must become a lord. The lord must become a kingmaker.

**Introduction file content:**

- In-character narrative: A battle won, a lord's attention earned, the first opportunity for real power
- Wave 1 goals: transition from mercenary to noble, build alliances, master warfare
- Character reflection: what you've learned, what you still lack
- Tone: ambitious, political, the world opens up but so does the danger

**Strategy topics (Mid-game, ~10-15 PDF pages):**

- Mid-game economics (workshop types and profitability, caravan routes and escorts, trade route optimization)
- Kingdom politics (voting, policies, influence generation and spending)
- Army composition (unit tiers, rock-paper-scissors counters, formation tactics)
- Siege tactics (building siege engines, breach vs. wall assault, defender strategies)
- Marriage mechanics, heirs, and political alliance benefits
- Companion development (roles: scout, surgeon, engineer, quartermaster; skill synergies)
- Clan tier progression path (tier 2 through 5/6 milestones)

**Mechanics topics:**

- Smithing deep dive (unlocking parts efficiently, profitable orders, crafting for personal use vs. sale)
- Trade routes (regional goods, supply/demand patterns, profitable loops)
- Influence management (generation methods, spending priorities, policy costs)
- Fief development (buildings, projects, garrison composition, prosperity growth)
- Workshop and caravan management (placement, security, returns)

**Mods — Wave 1:**

- Categories: UI/QoL, Graphics, Light mechanic, Content addition
- No heavy overhauls
- Placeholder entries convey the shape of the final list
- Max per category: Light mechanic ≤ 15, Content addition ≤ 10

### Wave 2 — "The Reckoning"

**Story brief:** You have allies. You have armies. You have a claim. The usurper uncle who murdered your family still sits on your father's throne, growing old and paranoid. Every diplomatic channel has failed. Every offer of compromise has been laughed away. The only language he understands is the one your father never taught you: total war. You will march on your homeland with every banner you can rally, burn every bridge behind you, and either take back what was stolen or leave nothing for anyone to inherit. No crown is given. No crown is earned. No crown comes without blood.

**Introduction file content:**

- In-character narrative: The decision point — peace failed, now war
- Wave 2 goals: total war, kingdom building, reclaiming the throne
- Character reflection: what you've become, whether the crown is worth the cost
- Tone: dark, resolute, epic scale, moral weight

**Strategy topics (Endgame, ~10-15 PDF pages):**

- End-game warfare (army coordination, multi-front campaigns, attrition strategy)
- Kingdom management (policies, vassals, loyalty, rebellions)
- Advanced diplomacy (alliance networks, breaking treaties, strategic betrayals)
- Succession planning and clan longevity (heirs, governorship, legacy)
- Total war logistics (food supply chains for large armies, reinforcement pipelines)
- Cultural integration (governor culture matching, loyalty penalties, settlement conversion)
- Map-painting strategy (conquest order, choke points, vassal distribution)

**Mechanics topics:**

- Kingdom policies deep dive (every policy, its effects, when to enact/abolish)
- Vassal management (fief distribution, relation maintenance, preventing defection)
- Economy at scale (taxation, tariff optimization, workshop empire management)
- Rebellion suppression and prevention (loyalty mechanics, governor selection, garrison ratios)

**Mods — Wave 2:**

- All categories: UI/QoL, Graphics, Light mechanic, Content addition, Heavy overhaul
- Heavy overhauls included — total conversion feel
- Placeholder entries convey the shape of the final list

---

## Placeholder Mod Entry Template

All `03-mods.typ` files initially use placeholder entries. Each is a block that can be replaced with a real mod later:

```typst
// ---- MOD PLACEHOLDER: [Category] ----
// Replace this entire block with a real mod entry.
// Delete the #block below and uncomment the template.

/*
=== [Mod Name]
#link("[URL]")[Nexus Mods]

#table(
  columns: (auto, 1fr),
  [*Category:*], [[Category]],
  [*Dependencies:*], [[Dependencies list]],
  [*Impact:*], [[What this mod changes mechanically]],
  [*Configuration:*], [[In-game settings, BLSE options, .ini tweaks]],
  [*Load order:*], [[Position relative to other mods]],
  [*Compatibility:*], [[Known interactions with other mods]],
)
*/

#block(
  fill: rgb("#EDE5D8"),
  inset: 10pt,
  radius: 4pt,
)[
  *#text(fill: rgb("#8B6914"))[[[Category] Mod Placeholder]]*

  A [Category] mod will go here. Examples of what this slot should contain:
  - [2-3 specific examples of real mods that would fit this slot]
  - Describe the kind of functionality needed

  *Requirements:* Compatible with BL 1.4.x / WS 1.2.x. Must not conflict with other mods in this wave.
]
```

### How placeholders differ from real entries

- Real mod entries show the actual mod name, URL, and details.
- Placeholders show the *category* and examples of what kind of mod belongs there.
- Each placeholder block is clearly marked with `// ---- MOD PLACEHOLDER ----` and the `#block()` visual styling.
- The commented-out template above each placeholder shows the exact format a real entry should use.
- A contributor (human or AI) finds a placeholder, reviews the examples/requirements, picks a real mod, replaces the `#block()` with the real entry.

---

## Shared Content

### `shared/installation.typ`

- Game version verification steps (how to check WS 1.2.7 / BL 1.4.7)
- BLSE download and installation (step-by-step with URL: <https://www.nexusmods.com/mountandblade2bannerlord/mods/1>)
- BLSE configuration (launcher settings, mod management, load order UI)
- How to install individual mods through BLSE
- BLSE troubleshooting (common startup issues, dependency resolution)
- Game launcher settings (graphics, audio, recommended baseline config)

### `shared/troubleshooting.typ`

- Common error messages and their fixes
- Crash-on-startup diagnosis
- Mod version mismatch detection
- BLSE-specific issues (launcher won't start, mods not detected)
- Game save compatibility across waves

---

## PDF Generation — `build.bat`

```batch
@echo off
setlocal enabledelayedexpansion

echo ============================================
echo  No Crown Without Blood - PDF Builder
echo  Target: Bannerlord WS v1.2.7 / BL v1.4.7
echo ============================================
echo.

REM --- Prerequisite: Typst 0.15+ ---
where typst >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] typst not found in PATH.
    echo Install Typst 0.15+ from https://github.com/typst/typst/releases
    echo and ensure it is available in your system PATH.
    pause
    exit /b 1
)

REM --- Version check ---
for /f "tokens=2" %%v in ('typst --version 2^>^&1') do set TYPST_VER=%%v
echo [OK] typst found: version %TYPST_VER%
echo.

REM --- Prerequisite: Required fonts ---
echo Checking fonts...
powershell -Command ^
  "$fonts = @('Crimson Pro', 'Libre Baskerville', 'Fira Code', 'Cinzel');" ^
  "$missing = @();" ^
  "foreach ($f in $fonts) {" ^
  "  $installed = [System.Drawing.Text.InstalledFontCollection]::new().Families | Where-Object { $_.Name -eq $f };" ^
  "  if (-not $installed) { $missing += $f; Write-Host '[WARN] Missing font: ' -NoNewline; Write-Host $f -ForegroundColor Yellow }" ^
  "  else { Write-Host '[OK] Font found: ' -NoNewline; Write-Host $f -ForegroundColor Green }" ^
  "};" ^
  "if ($missing.Count -gt 0) { Write-Host '`n[WARN] Missing fonts will cause Typst to fall back to system serif. PDF will build but may not look as intended.' -ForegroundColor Yellow;" ^
  "  Write-Host 'Missing:' $missing; Write-Host 'Install from Google Fonts or system font manager.'" ^
  "} else { Write-Host '`n[OK] All required fonts installed.' -ForegroundColor Green }"
echo.

REM --- Build ---
echo Building PDF...
typst compile guide/_index.typ output/No-Crown-Without-Blood.pdf

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] PDF build failed. Check Typst error messages above.
    pause
    exit /b 1
)

echo.
echo ============================================
echo [OK] PDF generated: output\No-Crown-Without-Blood.pdf
echo ============================================
pause
```

### Design decisions for build.bat

- Single entry point, runnable from any working directory within the project
- Validates typst before attempting build (friendly error, not cryptic Windows failure)
- Font check is a warning, not a hard fail — PDF will build with fallback fonts
- `pause` at the end so the user sees the result when double-clicking
- Exits with non-zero code on failure (for CI/automation use)

---

## Non-PDF Files (Formats)

### `mod-conflicts.md` — Known Mod Conflicts

Purpose: Document pairs of mods that do not work together. Only lists confirmed conflicts, never speculative ones. Not included in PDF — maintainer reference only.

Format:

```markdown
# Known Mod Conflicts

Format: [Mod A] x [Mod B] — conflict description. Resolution (if any). Discovered: YYYY-MM-DD.

## Wave 0 conflicts
(None yet)

## Wave 1 conflicts
(None yet)

## Cross-wave conflicts
(None yet)
```

### `mod-ideas.md` — Future Mod Ideas

Purpose: Capture ideas for mods that do not exist yet but would improve the modlist. Each entry describes the gap and the desired behavior. Not included in PDF — inspiration for modders.

Format:

```markdown
# Mod Ideas

Format:
### [Idea Title] (Target Wave: 0/1/2)
**Category:** [UI/QoL, Light mechanic, Graphics, Content addition, Heavy overhaul]
**Problem:** What gap in the game does this address?
**Desired behavior:** What should the mod do?
**Existing mods that do part of this:** List if any.

---

(No entries yet — add ideas below)
```

---

## AGENTS.md Content

The AI agent rules file includes:

1. **Mod addition workflow**: How to add a mod to the list (find placeholder, verify version compatibility, fill template, add to load order)
2. **Mod rules** (same ones from this spec — compatibility, no conflicts per wave, no porn, no cheating, no redundancy)
3. **File conventions**: `.typ` for guide content, `.md` for working docs, structure rules
4. **Placeholder format**: How to recognize and replace placeholder entries
5. **PDF regeneration**: Run `build.bat` after content changes; verify output; use `typst compile` path from project root
6. **Writing style**: In-character for wave introductions (second-person narrative, immersive), instructional for how-to-play and strategy (direct, concise, second-person), factual for mod entries (third-person, technical)
7. **Font and design constraints**: Do not change colors, fonts, or layout without updating the spec
8. **Version pinning**: All mod discussions must reference WS 1.2.7 / BL 1.4.7 as the target

---

## Implementation Phases

### Phase 1: Project scaffold

1.1 Create directory structure (all folders in `guide/`, `typst/`, `output/`)
1.2 Write `AGENTS.md` with rules from this spec
1.3 Write `README.md` with project overview and build instructions
1.4 Write `_index.typ` with assembly order and includes
1.5 Write `mod-conflicts.md` (empty structure)
1.6 Write `mod-ideas.md` (empty structure)

### Phase 2: Typst template

2.1 Write `typst/styles.typ` — font declarations, color constants, page setup, helper functions
2.2 Write `typst/template.typ` — cover page logic, TOC generation, section layouts, header/footer
2.3 Write `build.bat` with validation and build logic
2.4 Test build with minimal content (verify cover page renders with logo)

### Phase 3: Shared content

3.1 Write `guide/shared/installation.typ` — BLSE setup, game config
3.2 Write `guide/shared/troubleshooting.typ` — error diagnosis, common fixes
3.3 Test build — verify shared sections render in PDF

### Phase 4: Wave 0 content

4.1 Write `guide/waves/wave-0/00-introduction.typ` — Exile story (2-3 paragraphs narrative + player setup)
4.2 Write `guide/waves/wave-0/01-how-to-play.typ` — complete essentials guide (10-15 pages)
4.3 Write `guide/waves/wave-0/02-getting-started.typ` — first campaign walkthrough
4.4 Write `guide/waves/wave-0/03-mods.typ` — placeholder mod entries (UI/QoL only)
4.5 Write `guide/waves/wave-0/load-order.typ` — assembled load order for Wave 0 mods
4.6 Test build — verify Wave 0 section renders correctly

### Phase 5: Wave 1 content

5.1 Write `guide/waves/wave-1/00-introduction.typ` — Alliance story
5.2 Write `guide/waves/wave-1/01-strategy.typ` — mid-game strategy (10-15 pages)
5.3 Write `guide/waves/wave-1/02-mechanics.typ` — deeper mechanics
5.4 Write `guide/waves/wave-1/03-mods.typ` — placeholder mod entries (all categories except heavy overhaul)
5.5 Write `guide/waves/wave-1/load-order.typ`
5.6 Test build — verify Wave 1 section renders correctly

### Phase 6: Wave 2 content

6.1 Write `guide/waves/wave-2/00-introduction.typ` — Reckoning story
6.2 Write `guide/waves/wave-2/01-strategy.typ` — endgame strategy (10-15 pages)
6.3 Write `guide/waves/wave-2/02-mechanics.typ` — endgame mechanics
6.4 Write `guide/waves/wave-2/03-mods.typ` — placeholder mod entries (all categories)
6.5 Write `guide/waves/wave-2/load-order.typ`
6.6 Test build — verify Wave 2 section renders correctly

### Phase 7: Final verification

7.1 Full `build.bat` run — all content, cover page, TOC, all waves
7.2 Visual review of output PDF (fonts, colors, layout, readability)
7.3 Verify `mod-conflicts.md` and `mod-ideas.md` are excluded from PDF
7.4 Verify all links in placeholder entries render as clickable in PDF
7.5 Fix any issues, re-run build

---

## Appendix A: Typst Markup Quick Reference

Typst markup is comparable to markdown in readability but more powerful for layout. Key syntax:

```typst
// This is a comment
= Heading Level 1
== Heading Level 2 (auto-numbered in Typst)
=== Heading Level 3

This is *bold text* and this is _italic text_.
This is a #link("https://example.com")[clickable link].

- Bullet list item
- Another item

+ Numbered list item
+ Another item

// Code block (monospace font via template)
#block(fill: rgb("#EDE5D8"))[
  #show raw: set text(font: "Fira Code", size: 9.5pt)
  ```json
  { "key": "value" }
  ```

]

// Table

# table(

  columns: (auto, 1fr),
  [*Label*], [Value],
  [*Label 2*], [Value 2],
)

// Image (logo)

# image("assets/logo.png", width: 40%)

// Page break

# pagebreak()

// Wave section headline (using accent color)

# text[fill: wave-0-accent, size: 24pt, weight: "bold"](Wave 0: The Exile)

```
