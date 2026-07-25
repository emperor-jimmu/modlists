# Tenka Fubu Modlist Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Prerequisites:** [Typst 0.15+](https://github.com/typst/typst/releases) installed and on `PATH`. Verify: `typst --version`. Fonts downloaded into `fonts/` before final compilation (Task 19).

**Goal:** Scaffold the Tenka Fubu modlist project — directory structure, Typst PDF pipeline with styled output, 3 waves of guide content (without actual mod entries), supporting files, and a one-command build batch file.

**Architecture:** Guide content authored directly in Typst markup. A single `main.typ` file includes all wave sections with per-wave color theming. A PowerShell one-liner compiles the PDF.

**Tech Stack:** Typst 0.15, Crimson Pro + Noto Sans JP fonts, PowerShell

---

### Task 1: Create Directory Structure

**Files:**

- Create: directories for the project skeleton

- [ ] **Step 1: Create all directories**

```bash
mkdir -p guide/wave-0
mkdir -p guide/wave-1
mkdir -p guide/wave-2
mkdir -p typst
mkdir -p output
mkdir -p fonts
mkdir -p assets
```

- [ ] **Step 2: Create .gitignore**

Write `H:\Projects\modguides\total-war-shogun-2-modlist\.gitignore`:

```
output/
fonts/
*.pdf
.DS_Store
```

- [ ] **Step 3: Commit**

```bash
git add .gitignore
git commit -m "chore: add directory structure and gitignore"
```

---

### Task 2: Create AGENTS.md

**Files:**

- Create: `AGENTS.md`

- [ ] **Step 1: Write AGENTS.md**

Write `H:\Projects\modguides\total-war-shogun-2-modlist\AGENTS.md`:

```markdown
# Tenka Fubu — Agent Rules

## Project
Curated modlist & guide for Total War: SHOGUN 2 (Steam, latest version). Named **Tenka Fubu** ("All the World Under One Sword"). Uses the CA native Mod Manager.

## 3-Wave Structure
| Wave | Title               | Clan     | Difficulty   | Mod Profile                      |
|------|---------------------|----------|--------------|----------------------------------|
| 0    | The Shimazu Way     | Shimazu  | Beginner     | Vanilla + UI/QoL only            |
| 1    | Tenka Fubu          | Oda      | Intermediate | Graphics, units, faction unlocks |
| 2    | Sekigahara's Shadow | Tokugawa | Advanced     | Overhauls, expanded mechanics    |

## Mod Addition Rules
- No conflicting mods — cross-reference in `conflicts.md`
- No porn mods. Adult/nude only where thematically relevant — ask user if uncertain
- No redundant mods (same table, same change)
- Must pass validation: check last-updated date → scan recent Workshop comments for "broken"/"crash" → cross-reference TWC forums → manual test if possible
- No cheating/overpower/all-knowing mods
- Wave 0: UI/QoL only. No gameplay changes
- Later waves: Graphics → Units → Content → Mechanics (increasing impact order)

## Build Pipeline
```powershell
# Prerequisites: install fonts/ then:
typst compile typst/main.typ output/Tenka-Fubu-Modlist.pdf
# Or use the batch wrapper:
./generate-pdf.ps1
```

## Fonts

Bundled in `fonts/`: Crimson Pro (Regular, Bold) + Noto Sans JP (Regular, Bold). Required for PDF generation.

## Key Files

- `guide/wave-*/` — content in Typst markup, one subdir per wave
- `typst/theme.typ` — colors, font names, page constants
- `typst/cover.typ` — cover page layout
- `typst/main.typ` — assembly + styling
- `conflicts.md` — incompatibilities (NOT in PDF)
- `mod-ideas.md` — future mod concepts (NOT in PDF)

```

- [ ] **Step 2: Commit**

```bash
git add AGENTS.md
git commit -m "chore: add AGENTS.md with project rules"
```

---

### Task 3: Create README.md

**Files:**

- Create: `README.md`

- [ ] **Step 1: Write README.md**

Write `H:\Projects\modguides\total-war-shogun-2-modlist\README.md`:

```markdown
# Tenka Fubu — Total War: Shogun 2 Modlist & Guide

**Tenka Fubu** ("All the World Under One Sword") is a curated modlist and companion guide for **Total War: SHOGUN 2** (Steam, latest version — patch 1.1.0, build 5934).

Organized in three progressive waves, each with a historical roleplaying theme, increasing difficulty, and a curated mod profile.

## Waves at a Glance

| Wave | Title               | Clan     | Difficulty   | Mods                      |
|------|---------------------|----------|--------------|---------------------------|
| 0    | The Shimazu Way     | Shimazu  | Beginner     | Vanilla (UI/QoL only)     |
| 1    | Tenka Fubu          | Oda      | Intermediate | Graphics, units, factions |
| 2    | Sekigahara's Shadow | Tokugawa | Advanced     | Campaign overhauls        |

## How to Use This Guide

1. Start with **Wave 0** if you've never played Shogun 2 — it includes a complete how-to-play guide
2. Complete a campaign before advancing to the next wave
3. Each wave's `01-setup.typ` explains installation and mod manager configuration
4. The mod manager uses `user.script.txt` in `%appdata%/The Creative Assembly/Shogun2/scripts/`

## Building the PDF

### Prerequisites
- [Typst 0.15+](https://github.com/typst/typst/releases) — add to PATH
- Fonts: download and place in `fonts/`:
  - [Crimson Pro](https://fonts.google.com/specimen/Crimson+Pro) — Regular, Bold, TTF
  - [Noto Sans JP](https://fonts.google.com/specimen/Noto+Sans+JP) — Regular, Bold, TTF

### Build
```powershell
./generate-pdf.ps1
```

Output: `output/Tenka-Fubu-Modlist.pdf`

## Project Structure

```
guide/wave-0/       — beginner setup, mod list, guide
guide/wave-1/       — intermediate setup, mod list, guide
guide/wave-2/       — advanced setup, mod list, guide
typst/              — PDF source files (theme, cover, main)
conflicts.md        — mod conflict tracking (not in PDF)
mod-ideas.md        — future mod development ideas (not in PDF)
```

```

- [ ] **Step 2: Commit**

```bash
git add README.md
git commit -m "docs: add README.md"
```

---

### Task 4: Create Theme (typst/theme.typ)

**Files:**

- Create: `typst/theme.typ`

- [ ] **Step 1: Write theme.typ**

Write `H:\Projects\modguides\total-war-shogun-2-modlist\typst\theme.typ`:

```typst
// Tenka Fubu — Theme Constants

// ── Clan Colors ──
// Wave 0: Shimazu
#let shimazu-white = rgb("#FFFFFF")
#let shimazu-vermillion = rgb("#B22222")
#let shimazu-gold = rgb("#D4A017")

// Wave 1: Oda (overall document identity)
#let oda-crimson = rgb("#BA0020")
#let oda-gold = rgb("#C8A020")
#let oda-black = rgb("#1A1A1A")

// Wave 2: Tokugawa
#let tokugawa-navy = rgb("#0B1D3A")
#let tokugawa-gold = rgb("#B8960C")
#let tokugawa-ivory = rgb("#F5F0E8")

// ── Global Colors ──
#let body-dark = rgb("#2D2D2D")
#let page-bg = rgb("#FCFAF5")
#let code-bg = rgb("#1D2433")
#let code-fg = rgb("#A2AABC")

// ── Fonts ──
#let body-font = "Crimson Pro"
#let heading-font = "Crimson Pro"
#let cjk-font = "Noto Sans JP"
#let code-font = "Cascadia Code"

// ── Page Dimensions ──
#let page-width = "a4"
#let page-margin = (x: 2.54cm, y: 2.54cm)
```

- [ ] **Step 2: Commit**

```bash
git add typst/theme.typ
git commit -m "feat: add Typst theme constants"
```

---

### Task 5: Create Cover Page (typst/cover.typ)

**Files:**

- Create: `typst/cover.typ`

- [ ] **Step 1: Write cover.typ**

Write `H:\Projects\modguides\total-war-shogun-2-modlist\typst\cover.typ`:

```typst
#import "theme.typ": *

#set page(
  paper: page-width,
  margin: 0pt,
  fill: oda-black,
  numbering: none,
)

#align(center + horizon, text(
  font: (heading-font, cjk-font),
  size: 14pt,
  fill: oda-gold,
  weight: "regular",
)[
  #block(width: 60%)[
    #image("../assets/logo.jpg", width: 100%)
  ]

  #v(2cm)

  #set text(size: 48pt, weight: "bold", fill: oda-crimson)
  Tenka Fubu

  #v(0.5cm)

  #set text(size: 18pt, fill: rgb("#CCCCCC"), weight: "regular")
  Total War: Shogun 2

  #v(0.3cm)

  #set text(size: 14pt, fill: oda-gold)
  Modlist & Guide

  #v(3cm)

  #set text(size: 10pt, fill: rgb("#888888"))
  For the latest Steam version (patch 1.1.0, build 5934)

  Three waves — three campaigns — one sword
])
```

- [ ] **Step 2: Commit**

```bash
git add typst/cover.typ
git commit -m "feat: add cover page with logo and title"
```

---

### Task 6: Create Main Document (typst/main.typ)

**Files:**

- Create: `typst/main.typ`

- [ ] **Step 1: Write main.typ**

Write `H:\Projects\modguides\total-war-shogun-2-modlist\typst\main.typ`:

```typst
#import "theme.typ": *

// ── Cover Page ──
#include "cover.typ"

// ── Global Page Setup ──
#set page(
  paper: page-width,
  margin: page-margin,
  fill: page-bg,
  footer: context {
    align(center, counter(page).display("1 / 1", both: true))
  },
  numbering: "1",
)

// ── Global Text ──
#set text(font: (body-font, cjk-font), size: 11pt, fill: body-dark)
#set par(justify: true, leading: 0.65em)

// ── Global Heading Styles ──
#show heading.where(level: 1): it => block(
  width: 100%,
  inset: (top: 0.5em, bottom: 0.25em),
  fill: oda-crimson,
)[
  #set text(
    font: (heading-font, cjk-font),
    size: 22pt,
    fill: white,
    weight: "bold",
  )
  #it
]

#show heading.where(level: 2): it => [
  #set text(
    font: (heading-font, cjk-font),
    size: 16pt,
    fill: oda-crimson,
    weight: "bold",
  )
  #it
]

#show heading.where(level: 3): it => [
  #set text(
    font: (heading-font, cjk-font),
    size: 13pt,
    fill: oda-black,
    weight: "bold",
  )
  #it
]

// ── Link Styling ──
#show link: underline

// ── Code Block Styling ──
#show raw: it => block(
  fill: code-bg,
  inset: 8pt,
  radius: 4pt,
  width: 100%,
)[
  #set text(font: code-font, size: 9pt, fill: code-fg)
  #it
]

// ── Table of Contents ──
#pagebreak()

#outline(title: [
  #set text(fill: oda-crimson, size: 22pt, weight: "bold")
  Table of Contents
])

#pagebreak()

// ── Wave 0: The Shimazu Way ──
#show heading.where(level: 1): it => block(
  width: 100%,
  inset: (top: 0.5em, bottom: 0.25em),
  fill: shimazu-vermillion,
)[
  #set text(font: (heading-font, cjk-font), size: 22pt, fill: white, weight: "bold")
  #it
]
#show heading.where(level: 2): set text(fill: shimazu-vermillion)
#show heading.where(level: 3): set text(fill: rgb("#7A1717"))

#include "../guide/wave-0/01-setup.typ"
#pagebreak()
#include "../guide/wave-0/02-mods.typ"
#pagebreak()
#include "../guide/wave-0/03-guide.typ"

// ── Wave 1: Tenka Fubu ──
#pagebreak()
#show heading.where(level: 1): it => block(
  width: 100%,
  inset: (top: 0.5em, bottom: 0.25em),
  fill: oda-crimson,
)[
  #set text(font: (heading-font, cjk-font), size: 22pt, fill: white, weight: "bold")
  #it
]
#show heading.where(level: 2): set text(fill: oda-crimson)
#show heading.where(level: 3): set text(fill: oda-black)

#include "../guide/wave-1/01-setup.typ"
#pagebreak()
#include "../guide/wave-1/02-mods.typ"
#pagebreak()
#include "../guide/wave-1/03-guide.typ"

// ── Wave 2: Sekigahara's Shadow ──
#pagebreak()
#show heading.where(level: 1): it => block(
  width: 100%,
  inset: (top: 0.5em, bottom: 0.25em),
  fill: tokugawa-navy,
)[
  #set text(font: (heading-font, cjk-font), size: 22pt, fill: white, weight: "bold")
  #it
]
#show heading.where(level: 2): set text(fill: tokugawa-navy)
#show heading.where(level: 3): set text(fill: rgb("#070F1C"))

#include "../guide/wave-2/01-setup.typ"
#pagebreak()
#include "../guide/wave-2/02-mods.typ"
#pagebreak()
#include "../guide/wave-2/03-guide.typ"
```

- [ ] **Step 2: Commit**

```bash
git add typst/main.typ
git commit -m "feat: add main document with wave-scoped styling"
```

---

### Task 7: Create Wave 0 Setup (guide/wave-0/01-setup.typ)

**Files:**

- Create: `guide/wave-0/01-setup.typ`

- [ ] **Step 1: Write Wave 0 setup**

Write `H:\Projects\modguides\total-war-shogun-2-modlist\guide\wave-0\01-setup.typ`:

```typst
= Wave 0: The Shimazu Way
== Installation & Setup

This guide assumes a clean installation of Total War: SHOGUN 2 via Steam with no previous modifications.

=== Verifying Your Game Version

Open your Steam Library, right-click *Total War: SHOGUN 2*, select *Properties*, go to the *Installed Files* tab. Verify the game is on the latest version (which is auto-updated by Steam). The final build is patch 1.1.0, build 5934 (September 2013).

=== No Mods Required

Wave 0 is played on a completely vanilla game. Do NOT subscribe to any mods before starting this wave. The purpose of this wave is to learn the game's core systems from a clean state.

If you already have mods subscribed, unsubscribe from all of them before proceeding:
1. Open Steam Workshop for Shogun 2
2. "Your Files" → "Subscribed Items"
3. Unsubscribe from everything
4. Verify `%appdata%/The Creative Assembly/Shogun2/scripts/user.script.txt` is empty or does not exist
5. Delete any `.pack` files in `steamapps/common/Total War Shogun 2/data/` that are not part of the base game

=== Launching the Game

1. Launch *Total War: SHOGUN 2* from Steam
2. The *Total War: Launcher* will appear
3. The mod list should be empty (no mods checked on)
4. Click *Play*

=== Starting a New Campaign

From the main menu:
1. Select *Single Player* → *New Campaign*
2. Select the *Shimazu* clan
3. Choose *Normal* difficulty (this is the intended experience for Wave 0)
4. Set Campaign length to *Short* for your first run
5. Leave all other settings at default
6. Click *Start*

=== First Loading Screen Tips

- Pay attention to the loading screen tips — they teach real mechanics
- The advisor (the floating face) can be toggled off with the top-left button, but keep it on for Wave 0
- Pause the game with `P` anytime during a battle

=== Saving and Loading

- The game auto-saves at the start of each turn
- Manual saves are recommended before any major battle (use `F5` for quick save)
- You can have multiple save files — rotate them so you can go back if needed
```

- [ ] **Step 2: Commit**

```bash
git add guide/wave-0/01-setup.typ
git commit -m "feat: add Wave 0 setup with install instructions"
```

---

### Task 8: Create Wave 0 Mods Template (guide/wave-0/02-mods.typ)

**Files:**

- Create: `guide/wave-0/02-mods.typ`

- [ ] **Step 1: Write Wave 0 mods template**

Write `H:\Projects\modguides\total-war-shogun-2-modlist\guide\wave-0\02-mods.typ`:

```typst
== Wave 0: Mod List

This wave uses no gameplay-altering mods. The following are approved UI and quality-of-life improvements that do not change game mechanics.

=== Recommended UI / QoL Mods

_None listed yet. Mods will be added when the modlist is finalized._

=== What NOT to Install

For Wave 0, avoid any mod that:
- Changes unit stats or recruitment
- Alters the campaign map
- Adds new units or buildings
- Modifies AI behavior
- Changes any game balance values

The purpose of Wave 0 is to learn the game as designed. Save the modifications for later waves.
```

- [ ] **Step 2: Commit**

```bash
git add guide/wave-0/02-mods.typ
git commit -m "feat: add Wave 0 mods template"
```

---

### Task 9: Create Wave 0 Guide (guide/wave-0/03-guide.typ)

**Files:**

- Create: `guide/wave-0/03-guide.typ`

- [ ] **Step 1: Write Wave 0 guide content**

Write `H:\Projects\modguides\total-war-shogun-2-modlist\guide\wave-0\03-guide.typ`:

```typst
== How to Play: Total War: SHOGUN 2

This guide covers everything a new player needs to survive their first campaign. It stops at turn 10 — agent management, advanced diplomacy, navy combat, and trade nodes are covered in later waves.

=== Your First Campaign

When you start as Shimazu, you control Satsuma (your home province) on the southern tip of Kyushu. The year is spring 1545. You have one army, one general, a few hundred ashigaru, and a castle that needs attention.

=== The Interface

The main screen shows your province on the campaign map. Key HUD elements:

*Top bar:* Your clan's treasury (koku), food surplus, honor level, realm divide meter (covered later), and end-turn button.

*Left panel:* Selected province or army details.

*Right mini-map:* Full map of Japan. Click to jump to a location.

*Bottom bar:* Army/agent cards. Shows what's selected and available actions.

*Shortcuts:* `Space` to pause, `Escape` for menu, `W/A/S/D` or arrow keys to scroll the map, mouse wheel to zoom, middle-mouse to rotate.

=== Economy Basics: Food, Wealth, and Growth

Every province produces three key resources:

- *Food:* Every castle consumes food. Armies consume food on the campaign map. Surplus food gives a happiness bonus to all provinces. Negative food causes unrest.

- *Wealth:* Tax income from provinces spent on recruiting, building, and bribing. Build markets and trade ports to increase wealth.

- *Growth:* Population growth. More population = more tax income. Farms increase growth; high taxes reduce it.

As Shimazu, your first builds should prioritize a *Farm* upgrade (growth) and a *Market* (wealth). Leave the castle for later.

=== Building Chains (Province Development)

Each province has 4-5 building slots. Key chains:

- *Castle:* Military recruitment and defense. Higher levels unlock samurai units.
- *Farm:* Food production and population growth.
- *Market:* Wealth and trade income.
- *Temple:* Happiness and religious conversion.
- *Port:* Trade and naval recruitment (coastal provinces only).
- *Road:* Faster army movement.

Golden rule for beginners: *build farms first, then markets, then castles.* Food feeds growth, growth feeds economy, economy feeds armies.

=== Recruitment: Ashigaru vs Samurai

- *Ashigaru:* Cheap, fast to recruit, weak but form the core of any army. A yari ashigaru wall is one of the best defensive formations in the game.

- *Samurai:* Expensive, slow to recruit, powerful but need upgraded castles. A katana samurai unit can cut through three ashigaru units.

- *Cavalry:* Fast, fragile, excellent for hitting the enemy's rear or chasing routers.

Early game: spam yari ashigaru with 2-3 bow ashigaru. This works for the first 20 turns easily.

=== Combat Basics

Right-click enemy to attack. Right-click ground to move. Select units and use the formation buttons (drag to set width). Deeper formations (more ranks) are more resilient. Wider formations cover more ground but break faster.

*Terrain:*
- High ground = combat bonus for attackers
- Trees block line of sight for ranged units
- Rivers slow movement. Crossing a river fatigues units
- Forests conceal units from enemy view

The Three Phases of Battle:
1. *Missile phase:* Bow units exchange fire. Keep yours behind your melee line.
2. *Clash:* Melee lines engage. Flank with cavalry if you have it.
3. *Pursuit:* The enemy routs. Chase them down with cavalry to prevent reorganization.

Press `Backspace` to disengage. Units fighting in melee will take casualties while retreating. Better to commit or retreat early.

=== Your First 10 Turns: Walkthrough

*Turn 1:*
- Build: Farm in Satsuma
- Recruit: 2 units of yari ashigaru
- Move: Your general's army toward the Ito border (northeast)
- End turn

*Turn 2:*
- Build: Market in Satsuma
- Recruit: 2 units of bow ashigaru
- Move: Army to the border with Ito province

*Turn 3:*
- The Ito may attack. If they do, fight the battle manually (auto-resolve penalizes the player early game)
- If they don't attack, move into Ito territory and besiege their castle

*Turn 4-5:*
- Siege the Ito castle. Build siege towers (2 turns)
- When ready, assault. Use yari ashigaru wall in the center, bow on the flanks

*Turn 6-8:*
- Take the Ito province. Build a farm and market
- Recruit more ashigaru
- Scout toward the Sagara (east)

*Turn 9-10:*
- Stabilize your two provinces
- Watch the food and happiness bars
- Save before your next war declaration

=== Victory Conditions

Short Campaign victory (Shimazu):
- Control 20 provinces (including Kyushu + southern Honshu)
- Survive Realm Divide (triggered when you approach 25-30 provinces)
- Eliminate the 2 main rival clans on your victory screen

=== When to Move to Wave 1

You are ready for Wave 1 when:
- You completed your first campaign on Normal difficulty
- You understand the building-revenue-recruitment loop
- You can win basic battles without heavy losses
- You have a general sense of what each building type does
```

- [ ] **Step 2: Verify compilation — Wave 0 only**

Typst will fail if all included files don't exist yet. Temporarily comment out Wave 1 and Wave 2 includes in `typst/main.typ`:

In `typst/main.typ`, wrap lines 325-348 in `/* */` block comments to exclude Wave 1 and Wave 2 sections.

Then run:

```bash
./generate-pdf.ps1
```

Expected: PDF compiles successfully with cover, TOC, and Wave 0 content only.

Restore the commented-out lines after verifying.

- [ ] **Step 3: Commit**

```bash
git add guide/wave-0/03-guide.typ
git commit -m "feat: add Wave 0 guide with first-10-turns walkthrough"
```

---

### Task 10: Create Wave 1 Setup (guide/wave-1/01-setup.typ)

**Files:**

- Create: `guide/wave-1/01-setup.typ`

- [ ] **Step 1: Write Wave 1 setup**

Write `H:\Projects\modguides\total-war-shogun-2-modlist\guide\wave-1\01-setup.typ`:

```typst
= Wave 1: Tenka Fubu
== Installation & Setup

Wave 1 introduces visual, unit, and faction mods. You must have completed at least one vanilla campaign before starting this wave.

=== Resetting user.script.txt

Before adding mods, clear your previous load order:

1. Navigate to `%appdata%/The Creative Assembly/Shogun2/scripts/`
2. Open `user.script.txt` in Notepad
3. Delete all lines or rename the file to `user.script.bak`
4. Save the blank file

=== Mod Installation (Steam Workshop)

1. Open the *Total War: SHOGUN 2* Workshop on Steam
2. For each mod listed in 02-mods.typ, click *Subscribe*
3. Steam will download the `.pack` files to your data directory
4. Launch the game — the launcher will show available mods

=== Configuring Load Order in user.script.txt

After subscribing to all Wave 1 mods:

1. Launch the game once via the launcher (this auto-generates `user.script.txt`)
2. *Alternatively:* manually create/edit `user.script.txt` in `%appdata%/The Creative Assembly/Shogun2/scripts/`
3. Each line should read:
   ```

   mod "filename.pack";

   ```
4. Mods load top-to-bottom — later entries override earlier ones.
5. Save the file.

=== Wave 1 Load Order

_NOTE: Specific mods TBD. Load order template will be filled when mods are selected._

=== Starting a New Campaign

From the main menu:
1. Select *Single Player* → *New Campaign*
2. Select the *Oda* clan
3. Difficulty: *Hard* (you have experience now — time to earn it)
4. Campaign length: *Long*
5. Enable the following mod-launcher checkboxes if available: _TBD_
6. Click *Start*

=== Verifying Mods Are Active

In-game indicators that mods are loaded:
- Different loading screen art
- New units visible in recruitment menu
- Faction-specific visual changes
- If nothing looks different, check `user.script.txt` and that pack files exist in the data directory
```

- [ ] **Step 2: Commit**

```bash
git add guide/wave-1/01-setup.typ
git commit -m "feat: add Wave 1 setup with load order instructions"
```

---

### Task 11: Create Wave 1 Mods Template (guide/wave-1/02-mods.typ)

**Files:**

- Create: `guide/wave-1/02-mods.typ`

- [ ] **Step 1: Write Wave 1 mods template**

Write `H:\Projects\modguides\total-war-shogun-2-modlist\guide\wave-1\02-mods.typ`:

```typst
== Wave 1: Mod List

Wave 1 adds graphics enhancements, new unit packs, and faction expansions. No total overhauls — the game remains recognizable.

=== Graphics Enhancements

_Entries pending._

=== Unit Packs

_Entries pending._

=== Faction Expansions

_Entries pending._

=== Compatibility Notes

All Wave 1 mods are selected for mutual compatibility. If you experience crashes, verify:
1. Load order matches 01-setup.typ
2. No Wave 2 mods are accidentally subscribed
3. No mod from Wave 0 that conflicts is still active
```

- [ ] **Step 2: Commit**

```bash
git add guide/wave-1/02-mods.typ
git commit -m "feat: add Wave 1 mods template"
```

---

### Task 12: Create Wave 1 Guide (guide/wave-1/03-guide.typ)

**Files:**

- Create: `guide/wave-1/03-guide.typ`

- [ ] **Step 1: Write Wave 1 guide content**

Write `H:\Projects\modguides\total-war-shogun-2-modlist\guide\wave-1\03-guide.typ`:

```typst
== Strategy & Tactics: Intermediate

This guide assumes you understand the basics covered in Wave 0. Here we dive into army composition, counter-play, agents, and the diplomacy game.

=== Army Composition: The Three Roles

A well-composed army has three layers:

- *Anvil:* Yari ashigaru in wall formation. They hold the line, absorb charges, and pin the enemy. 6-8 units.
- *Hammer:* Katana samurai or cavalry. They deliver the killing blow by flanking or charging the pinned enemy. 4-6 units.
- *Support:* Bow ashigaru or bow samurai. They soften the enemy before contact. 2-4 units. Keep them behind the anvil.

In mid-game, gradually replace ashigaru with samurai, but keep at least 4 yari ashigaru for their wall — samurai cannot form yari wall.

=== Counter-Unit Tactics

*The Triangle:*
- *Yari (spears) beat cavalry:* Yari wall negates charge bonus. Cavalry charging yari wall = dead cavalry.
- *Katana (swords) beat yari:* Katana samurai have high melee attack and armor, cutting through spear units.
- *Cavalry beat ranged and flank:* Cavalry excels at hitting bow units and hitting the rear of engaged units.

*Naginata:* (glaive) units are hybrid — good against cavalry and decent in melee. Use them as flexible reserves.

*Bow Micro:*
- Focus fire: select all bow units and right-click a single high-value target (general, samurai)
- Don't waste arrows on yari ashigaru — they have high defense against missiles
- Bow units are vulnerable in melee. Protect them.

=== Agent Management

*Metsuke (Overseer):*
- Place in provinces to root out enemy agents and increase tax income
- Assign to towns with high wealth for maximum bonus
- Level up via "Strengthen Town" and "Crackdown" actions

*Ninja:*
- Sabotage enemy buildings and armies
- Assassinate enemy generals and agents
- Scout enemy army composition before battle
- Hide in forests. Keep them out of line of sight

*Monks:*
- Convert provinces to your religion (changes happiness and public order)
- Inspire your armies (boost morale)
- Incite revolts in enemy provinces
- Counter enemy monks in theological debates

=== Trade and Diplomacy

*Trade Nodes:* The offshore trade nodes (shown on the naval map) are worth fighting for. Each provides thousands of koku per turn. Build a trade ship and send it to a vacant node. Protect it with a small navy.

*Marriage:* Marrying a daughter to another clan gives a temporary alliance. Use it to secure your back while you expand forward.

*Realm Divide — Preparation:* When you take 25 of the 65 provinces, Realm Divide triggers. All surviving clans turn against you. Prepare by:
- Stockpiling 20,000+ koku
- Maintaining 2-3 full armies
- Having your most exposed provinces fortified
- Making peace with as many clans as possible before crossing the threshold

=== Wave 1 Recommended Progression

1. Turn 1-15: Unify Owari and surrounding provinces
2. Turn 15-30: Strike east toward Kyoto. Use marriage to keep western clans neutral
3. Turn 30-50: Take Kyoto. Prepare for Takeda response from the north
4. Turn 50-80: Expand systematically. Build economy between wars
5. Turn 80+: Realm Divide should trigger. Survive and consolidate
```

- [ ] **Step 2: Verify compilation — Waves 0 + 1**

Comment out Wave 2 includes in `typst/main.typ` (lines 331-348). Then:

```bash
./generate-pdf.ps1
```

Expected: PDF compiles with cover, TOC, Wave 0 and Wave 1 content. Restore Wave 2 after verifying.

- [ ] **Step 3: Commit**

```bash
git add guide/wave-1/03-guide.typ
git commit -m "feat: add Wave 1 guide with strategy and agents"
```

---

### Task 13: Create Wave 2 Setup (guide/wave-2/01-setup.typ)

**Files:**

- Create: `guide/wave-2/01-setup.typ`

- [ ] **Step 1: Write Wave 2 setup**

Write `H:\Projects\modguides\total-war-shogun-2-modlist\guide\wave-2\01-setup.typ`:

```typst
= Wave 2: Sekigahara's Shadow
== Installation & Setup

Wave 2 introduces campaign overhauls, expanded mechanics, and deeper systems. This is the definitive Tenka Fubu experience. You must have completed at least one campaign on Hard difficulty.

=== Pre-Installation Cleanup

1. Open `%appdata%/The Creative Assembly/Shogun2/scripts/user.script.txt`
2. Back up your Wave 1 configuration: save a copy as `user.script.wave1.bak`
3. Clear the file for a fresh Wave 2 load order

=== Mod Installation

Follow the same procedure as Wave 1 (Steam Workshop subscription). For any mods hosted on Total War Center:
1. Download the `.pack` file(s) from the provided link
2. Place them in `steamapps/common/Total War Shogun 2/data/`
3. Add the filename to `user.script.txt` in the correct position

=== Wave 2 Load Order

_NOTE: Specific mods TBD. Load order template will be filled when mods are selected._

General principles for Wave 2 load order:
- *Gameplay overhauls first* (foundational changes to mechanics)
- *Expanded maps/map modifications second*
- *Unit packs third* (these override unit tables)
- *Visual/graphics mods last* (least likely to conflict)

=== Starting a New Campaign

1. Select *Single Player* → *New Campaign*
2. Select the *Tokugawa* clan
3. Difficulty: *Hard* or *Very Hard*
4. Campaign length: *Long*
5. Click *Start*

=== Troubleshooting Wave 2 Conflicts

If the game crashes on launch or campaign start:
1. Disable mods one at a time to isolate the conflict
2. Check `conflicts.md` for known incompatibilities
3. Verify every mod's Workshop page for update status
4. Post in the Tenka Fubu discussion thread if stuck
```

- [ ] **Step 2: Commit**

```bash
git add guide/wave-2/01-setup.typ
git commit -m "feat: add Wave 2 setup with conflict troubleshooting"
```

---

### Task 14: Create Wave 2 Mods Template (guide/wave-2/02-mods.typ)

**Files:**

- Create: `guide/wave-2/02-mods.typ`

- [ ] **Step 1: Write Wave 2 mods template**

Write `H:\Projects\modguides\total-war-shogun-2-modlist\guide\wave-2\02-mods.typ`:

```typst
== Wave 2: Mod List

Wave 2 introduces campaign overhauls, expanded maps, and deeper mechanics. These mods significantly change how the game plays.

=== Campaign Overhauls

_Entries pending._

=== Expanded Map / Mechanics

_Entries pending._

=== AI & Difficulty Mods

_Entries pending._

=== Compatibility Notes

Wave 2 mods have the highest potential for conflicts. Always:
1. Read the full Workshop description for known incompatibilities
2. Check the last-updated date
3. Review recent comments before subscribing
4. Test with a new campaign (not a saved game) after changing load order
```

- [ ] **Step 2: Commit**

```bash
git add guide/wave-2/02-mods.typ
git commit -m "feat: add Wave 2 mods template"
```

---

### Task 15: Create Wave 2 Guide (guide/wave-2/03-guide.typ)

**Files:**

- Create: `guide/wave-2/03-guide.typ`

- [ ] **Step 1: Write Wave 2 guide content**

Write `H:\Projects\modguides\total-war-shogun-2-modlist\guide\wave-2\03-guide.typ`:

```typst
== Advanced Play: Expert Mechanics

This guide covers the deeper systems that separate expert players from competent ones. Master these and you can win on Very Hard with any clan.

=== Advanced Economy: Province Specialization

Not all provinces are equal. Specialize them:

*Economic Provinces:*
- Build markets in every slot, roads, and a port (if coastal)
- Assign a metsuke for tax bonus
- Maximize wealth over military output
- Ideal for interior provinces far from the front

*Military Provinces:*
- Build castle to highest tier, recruitment buildings, armorer
- Focus on troop quality and recruitment speed
- Ideal for border provinces near enemy territory

*Food Provinces:*
- Build farms in every slot
- Use metsuke to root out corruption
- These provinces exist only to feed your empire

Compound growth means a province with high growth in the first 20 turns produces 3x the lifetime income of one developed in the last 20 turns. *Develop economy early, even when it feels slow.*

=== Navy Dominance

Naval power wins campaigns indirectly:

*Blockade:* Blockading an enemy port reduces their income by 50% and prevents them from recruiting naval units. A single medium bow ship can blockade indefinitely.

*Trade Route Interception:* Enemy trade ships are easy prey. Station a fleet near contested trade nodes. Destroying trade income destabilizes their economy in 5-10 turns.

*The Black Ship:* The Portuguese trade ship (appears late game near Kyushu) is the most powerful vessel in the game. Capture it by boarding (not sinking). Once yours, it dominates any naval engagement.

*Transport Interdiction:* Destroying enemy transports means their army drowns (90% casualties). A small navy can destroy a full enemy stack at sea with zero risk.

=== Siege Mastery

*Castle Tiers:*
- *Fortress* (tier 3): 2 walls, oil, 2 gates. Hard to assault.
- *Citadel* (tier 4): 3 walls, oil at every gate, multiple layers. Assault is suicide.
- *Fortress of the First Rank* (max tier): Legendary defense. Starve it or don't attack it.

*Siege Timing:* Build 2 siege towers and 1 ram. Attack on the same turn the towers complete — the AI repairs walls between turns. Focus towers on one section to create a breach.

*Starvation:* A besieged castle loses food each turn. Garrison dies of starvation in 4-8 turns depending on size. Starving is safer but gives the enemy time to reinforce.

=== Agent Synergies

High-level agents used together are exponentially more effective:

- *Ninja sabotages walls* (reduces defender bonus) → *Army assaults* → *Metsuke captures town* (prevents revolt)
- *Monk incites revolt* → *Enemy army moves to suppress* → *Your army attacks a depleted garrison*
- *Ninja assassinates general* → *Enemy army morale drops* → *Your cavalry routs them*

Level agents by specializing: one ninja for assassination, one for sabotage. A jack-of-all-trades agent levels half as fast.

=== Realm Divide Deep Dive

Realm Divide is the single most important event in any campaign:

*Trigger Conditions:* The divide triggers when your clan's power accumulates enough fame. Key triggers:
- Capturing 25+ provinces
- Becoming Shogun (capture Kyoto)
- A combination of military actions and diplomatic dominance

*Pre-Divide Checklist:*
- [ ] All armies at full strength, positioned defensively
- [ ] 20,000+ koku reserve
- [ ] Navy blockading your most exposed coastline
- [ ] All non-essential alliances broken (allied penalties reduce Realm Divide negative impact)
- [ ] Castle upgrades on all border provinces
- [ ] Agents positioned in your core provinces

*Post-Divide Strategy:*
- Play defensive for the first 10 turns after Divide. Let enemy armies smash against your fortifications.
- Pick off isolated armies with your best general.
- Target the strongest enemy first — others will sue for peace faster.
- Never split your main army. A stack of 20 units beats 2 stacks of 10 units in auto-resolve.

*The Minimal Province Strategy:*
An advanced trick: stay below 25 provinces by razing enemy castles instead of occupying them. Build maximum economic power in your core, then break the 25-province threshold in a single turn by rapidly occupying the weakest provinces. This gives you a single turn of Realm Divide penalties instead of a slow bleed.

=== Moving Beyond

After completing Wave 2, you have mastered Total War: SHOGUN 2. Consider:
- Multiplayer: The competitive scene is small but dedicated
- Modding: Create your own units, factions, or campaign changes
- Legendary difficulty: No saving, no pausing, the truest test
```

- [ ] **Step 2: Verify compilation — all 3 waves**

All includes are now uncommented. Run:

```bash
./generate-pdf.ps1
```

Expected: Full PDF with all three waves compiles successfully.

- [ ] **Step 3: Commit**

```bash
git add guide/wave-2/03-guide.typ
git commit -m "feat: add Wave 2 guide with advanced mechanics"
```

---

### Task 16: Create generate-pdf.ps1

**Files:**

- Create: `generate-pdf.ps1`

- [ ] **Step 1: Write the batch script**

Write `H:\Projects\modguides\total-war-shogun-2-modlist\generate-pdf.ps1`:

```powershell
<#
.SYNOPSIS
    Generate the Tenka Fubu Modlist PDF guide from Typst source.
.DESCRIPTION
    Compiles all guide content into a single PDF using Typst 0.15.
    Requires typst.exe to be in PATH or TYPST_PATH environment variable.
#>

$ErrorActionPreference = "Stop"

# Config
$TypstBin = if ($env:TYPST_PATH) { $env:TYPST_PATH } else { "typst" }
$MainSource = Join-Path $PSScriptRoot "typst" "main.typ"
$OutputDir = Join-Path $PSScriptRoot "output"
$OutputPdf = Join-Path $OutputDir "Tenka-Fubu-Modlist.pdf"

# Ensure output directory exists
if (-not (Test-Path -LiteralPath $OutputDir)) {
    New-Item -ItemType Directory -Path $OutputDir -Force | Out-Null
}

# Compile
Write-Host "Compiling Tenka Fubu Modlist PDF..." -ForegroundColor Cyan
& $TypstBin compile $MainSource $OutputPdf

if ($LASTEXITCODE -eq 0) {
    Write-Host "Done! PDF generated at: $OutputPdf" -ForegroundColor Green
}
else {
    Write-Host "Typst compilation failed with exit code: $LASTEXITCODE" -ForegroundColor Red
    exit $LASTEXITCODE
}
```

- [ ] **Step 2: Commit**

```bash
git add generate-pdf.ps1
git commit -m "feat: add PDF generation batch script"
```

---

### Task 17: Create conflicts.md and mod-ideas.md

**Files:**

- Create: `conflicts.md`
- Create: `mod-ideas.md`

- [ ] **Step 1: Write conflicts.md**

Write `H:\Projects\modguides\total-war-shogun-2-modlist\conflicts.md`:

```markdown
# Tenka Fubu — Mod Conflicts

Known incompatibilities and conflicts between mods considered or selected for this modlist.

## How to Use

When adding a new mod, cross-reference its tables/files against existing entries. If a conflict is discovered (both mods modify the same game table in incompatible ways), document it here.

## Conflict Table

| Mod A | Mod B | Nature of Conflict | Severity | Resolution |
|-------|-------|--------------------|----------|------------|
|       |       |                    |          |            |

## Severity Key

- **Critical:** Game crashes or save corruption. Do not use both.
- **High:** Features break or become unusable.
- **Medium:** Visual/sound glitches without gameplay impact.
- **Low:** Minor overlap (both modify the same file, later load order wins).

## Notes

_To be populated as mods are added._
```

- [ ] **Step 2: Write mod-ideas.md**

Write `H:\Projects\modguides\total-war-shogun-2-modlist\mod-ideas.md`:

```markdown
# Tenka Fubu — Mod Ideas

Mod concepts that don't exist yet or could be improved. For development consideration.

## How to Use

Ideas are organized by wave. Each entry describes what the mod would do and why it's needed.

## Wave 0 Ideas (UI / QoL)

_Ideas pending._

## Wave 1 Ideas (Graphics / Units / Factions)

_Ideas pending._

## Wave 2 Ideas (Overhauls / Mechanics)

_Ideas pending._
```

- [ ] **Step 3: Commit**

```bash
git add conflicts.md mod-ideas.md
git commit -m "docs: add conflicts and mod-idea tracking files"
```

---

### Task 18: First Compilation & Verification

**Files:**

- Verify: All `.typ` files compile into a valid PDF

- [ ] **Step 1: Verify Typst is installed**

```bash
typst --version
```

Expected: Typst 0.15.x or later. If not installed, download from <https://github.com/typst/typst/releases> and add to PATH.

- [ ] **Step 3: Run the PDF generation**

```bash
./generate-pdf.ps1
```

Expected output:

```
Compiling Tenka Fubu Modlist PDF...
Done! PDF generated at: output\Tenka-Fubu-Modlist.pdf
```

- [ ] **Step 4: Verify PDF content**

Open `output/Tenka-Fubu-Modlist.pdf` and check:

- [ ] Cover page with logo and title
- [ ] Table of Contents with page numbers
- [ ] Wave 0 section in Shimazu color theme
- [ ] Wave 1 section in Oda color theme
- [ ] Wave 2 section in Tokugawa color theme
- [ ] All three guides present
- [ ] Page numbering works

- [ ] **Step 5: Final commit**

```bash
git add -A
git commit -m "feat: complete Tenka Fubu project scaffold"
```

---

### Task 19: Download Fonts

**Files:**

- Add: `fonts/CrimsonPro-Regular.ttf`
- Add: `fonts/CrimsonPro-Bold.ttf`
- Add: `fonts/NotoSansJP-Regular.ttf`
- Add: `fonts/NotoSansJP-Bold.ttf`

- [ ] **Step 1: Download Crimson Pro from Google Fonts**

```bash
# Visit: https://fonts.google.com/specimen/Crimson+Pro
# Click "Download family" → extract the zip
# Then copy CrimsonPro-Regular.ttf and CrimsonPro-Bold.ttf into fonts/

# Or use curl (may redirect — if it fails, download manually):
curl -L "https://fonts.google.com/download?family=Crimson+Pro" -o crimson-pro.zip
Expand-Archive -Path crimson-pro.zip -DestinationPath temp-cp
Move-Item -Path "temp-cp/static/CrimsonPro-Regular.ttf" -Destination "fonts/"
Move-Item -Path "temp-cp/static/CrimsonPro-Bold.ttf" -Destination "fonts/"
Remove-Item -Recurse -Path temp-cp, crimson-pro.zip
```

Verify: `fonts/CrimsonPro-Regular.ttf` and `fonts/CrimsonPro-Bold.ttf` exist.

- [ ] **Step 2: Download Noto Sans JP from Google Fonts**

```bash
# Visit: https://fonts.google.com/specimen/Noto+Sans+JP
# Click "Download family" → extract the zip

# Or use curl (may redirect — if it fails, download manually):
curl -L "https://fonts.google.com/download?family=Noto+Sans+JP" -o noto-sans-jp.zip
Expand-Archive -Path noto-sans-jp.zip -DestinationPath fonts/
Remove-Item noto-sans-jp.zip
```

Verify: `fonts/NotoSansJP-Regular.ttf` and `fonts/NotoSansJP-Bold.ttf` exist.

**Note:** If `curl` downloads fail, use the Google Fonts specimen pages in a browser and drop the TTF files into `fonts/`. The internal font names ("Crimson Pro", "Noto Sans JP") must match `typst/theme.typ`.

- [ ] **Step 3: Add fonts to .gitignore exception**

Update `.gitignore` to exclude font files from version control (they're large binaries):

```
output/
fonts/*.cache
*.pdf
.DS_Store
```

Fonts are not checked in. The README explains where to download them.

- [ ] **Step 4: Commit**

```bash
git add .gitignore
git commit -m "chore: update gitignore for fonts cache"
```
