# Beneath a Crimson Banner Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Scaffold the full project skeleton with placeholder mod entries, guide content, Typst PDF generation pipeline, and build tooling.

**Architecture:** Hybrid approach — markdown prose in `guide/` per wave, structured mod data in `mods.yaml` per wave, Typst template in `template/` that reads YAML and includes markdown to produce a single PDF. Batch file drives compilation.

**Tech Stack:** Typst 0.15, Markdown, YAML, PowerShell/batch

---

### Task 1: Create directory structure

**Files:**

- Create: `guide/00-wave0/`
- Create: `guide/01-wave1/`
- Create: `guide/02-wave2/`
- Create: `template/`
- Create: `output/`
- Create: `fonts/`
- Create: `scripts/`

- [ ] **Step 1: Create all directories**

```bash
mkdir -p guide/00-wave0 guide/01-wave1 guide/02-wave2 template output fonts scripts
```

- [ ] **Step 2: Verify tree**

Run: `Get-ChildItem -Directory -Recurse`
Expected: All 7 directories exist.

- [ ] **Step 3: Commit**

```bash
git add .
git commit -m "chore: scaffold project directory structure"
```

---

### Task 2: Create AGENTS.md

**Files:**

- Create: `AGENTS.md`

- [ ] **Step 1: Write AGENTS.md**

```markdown
# Total War: Three Kingdoms — Beneath a Crimson Banner Modlist

## Project
A curated modlist and game guide for **Total War: Three Kingdoms v1.7.2**.
Organized into 3 progressive waves of difficulty. Named "Beneath a Crimson Banner".

## Game Version Constraint
ALL mods added must target game version 1.7.2 (or 1.7.x — use patch release dates as heuristic). Do NOT add mods for other versions.

## Mod Addition Rules
- No conflicting mods. Check conflicts.yaml before adding.
- No porn mods. Adult/nude content is okay where thematically relevant. If in doubt, ask the user.
- No redundant mods. Don't add two mods that do the same thing.
- No cheating/overpower/all-knowing mods.
- Graphics, content, and mechanic mods belong in Wave 1+ only. Wave 0 is UI/QoL only.

## File Organization
- `guide/00-wave0/` — Wave 0: intro, how-to-play, mods.yaml
- `guide/01-wave1/` — Wave 1: intro, strategy, mods.yaml
- `guide/02-wave2/` — Wave 2: intro, strategy, mods.yaml
- Each mods.yaml follows the schema in the spec doc.
- `template/` — Typst files for PDF generation
- `conflicts.yaml` — reference only, NOT in PDF
- `mod-ideas.yaml` — ideas for future mods, NOT in PDF

## PDF Build
Run `build.bat` from the repo root to compile the PDF.
Requires Typst 0.15+ installed and fonts in `fonts/`.

## Reference
See `docs/superpowers/specs/2026-07-25-beneath-a-crimson-banner-design.md` for full design spec.
```

- [ ] **Step 2: Commit**

```bash
git add AGENTS.md
git commit -m "doc: add AGENTS.md with project rules and conventions"
```

---

### Task 3: Create README.md

**Files:**

- Create: `README.md`

- [ ] **Step 1: Write README.md**

```markdown
# Beneath a Crimson Banner

A curated modlist and game guide for **Total War: Three Kingdoms (v1.7.2)**.

Three progressive waves of gameplay — each with a unique roleplaying setup,
curated mods, and detailed strategy guidance. From vanilla+ QoL to full
overhaul, this guide grows with you.

## Quick Start

1. Install Typst 0.15+ — https://github.com/typst/typst/releases
2. Run `scripts/install-fonts.bat` to download required fonts
3. Run `build.bat` to generate the PDF guide
4. Open `output/Beneath-a-Crimson-Banner.pdf`

## Structure

| Path             | Contents                             |
|------------------|--------------------------------------|
| `guide/`         | Per-wave markdown guides + mod lists |
| `template/`      | Typst PDF generation templates       |
| `output/`        | Generated PDF                        |
| `conflicts.yaml` | Known mod conflicts reference        |
| `mod-ideas.yaml` | Future mod concepts                  |

## Requirements

- **Typst 0.15+** — PDF generation
- **Fonts:** Playfair Display, Source Serif 4, JetBrains Mono (auto-installed by script)
- **Total War: Three Kingdoms v1.7.2** — for playing the modlist
- **Total War Mod Manager** — for managing mods (see `setup-installation-guide.md`)
```

- [ ] **Step 2: Commit**

```bash
git add README.md
git commit -m "doc: add README.md with project overview"
```

---

### Task 4: Create Wave 0 guide files

**Files:**

- Create: `guide/00-wave0/mods.yaml`
- Create: `guide/00-wave0/01-introduction.md`
- Create: `guide/00-wave0/02-how-to-play.md`

- [ ] **Step 1: Write mods.yaml with placeholder entries**

```yaml
mods:
  - name: "Example UI Improvement Mod"
    url: "https://nexusmods.com/totalwarthreekingdoms/mods/1"
    author: "ExampleAuthor"
    version: "1.0.0"
    category: ["ui"]
    wave: 0
    description: "Improves the campaign map UI with better tooltips and information panels."
    dependencies: []
    conflicts: []
    mechanic_impact: null
    adult: false
    notes: "Load after any total conversion mods."

  - name: "Example QoL Fixes"
    url: "https://nexusmods.com/totalwarthreekingdoms/mods/2"
    author: "AnotherAuthor"
    version: "2.3.1"
    category: ["qol"]
    wave: 0
    description: "Fixes various quality-of-life issues including diplomatic feedback and recruitment sorting."
    dependencies: []
    conflicts:
      - mod: "Example UI Improvement Mod"
        resolution: "Load after Example UI Improvement Mod"
    mechanic_impact: null
    adult: false
    notes: ""
```

- [ ] **Step 2: Write 01-introduction.md**

```markdown
# Wave 0 — The Warlord's First Steps

## Roleplaying Background

The Han dynasty crumbles. Yellow Turban rebels burn the countryside, and
warlords across the land sharpen their blades. You are not yet among them — you
are a minor official, a displaced captain, or a wandering scholar. The world
is vast and dangerous. Every decision matters.

Your goal: survive. Learn the land. Build a following.

## Game Setup

| Setting           | Choice                                                             |
|-------------------|--------------------------------------------------------------------|
| Difficulty        | Normal                                                             |
| Campaign          | Mandate of Heaven / Rise of the Warlords (any)                     |
| Faction           | Any recommended starter faction (e.g., Cao Cao, Sun Jian, Liu Bei) |
| Turn Timer        | Unlimited                                                          |
| Battle Time Limit | 60 min                                                             |

## Mods in This Wave

This wave uses only UI improvements and quality-of-life mods. No gameplay
overhauls. This is the vanilla experience — polished.

## How to Use This Guide

Read `02-how-to-play.md` for a complete beginner's guide to the game's
systems. The mod list above is installed via TW Mod Manager — see
`setup-installation-guide.md` for instructions.
```

- [ ] **Step 3: Write 02-how-to-play.md**

```markdown
# A Complete Guide to Total War: Three Kingdoms

## The Campaign Map

### Settlements & Resources
- **Commanderies** are provinces containing multiple settlements
- **Counties** are individual towns; assign governors for bonuses
- **Resources** (copper, iron, horses, etc.) provide faction-wide bonuses
- Build orders: prioritize food, then income, then public order

### Characters & Court
- **Characters** are your generals, administrators, and family
- **Satisfaction** determines loyalty — low satisfaction leads to defection
- **Assignments** send characters on missions for bonuses
- **Court positions** grant satisfaction bonuses to holders
- **Marriage & adoption** expand your family tree

### Government & Reforms
- **Reforms** are a tech tree unlocked over time
- **Government type** affects court position availability and satisfaction
- **Corruption** increases with empire size — counter with buildings and reforms

## Diplomacy

- **Relations** affect treaty acceptance
- **Coalitions** are defensive alliances
- **Trade agreements** require a connected route
- **Marriage alliances** bind families together
- **Cooldowns** prevent repeated war declarations

## Battles

### Land Battles
- **Formations:** Shield wall, diamond, spear wall, etc.
- **Terrain:** High ground grants morale and missile damage bonuses
- **Weather:** Rain reduces missile accuracy, fire ammo
- **Morale:** Route units by flanking and general kills
- **Units:** Spear beats cavalry, cavalry beats ranged, ranged beats infantry

### Siege Battles
- **Siege engines** break walls and gates
- **Ladders** allow assault on walls
- **Towers** fire on attackers automatically
- **Attrition** wears down a garrison over time

## Espionage

- **Spies** can be embedded in enemy armies and courts
- **Reveal** enemy spy networks with your own administrators
- **Assassinations, sabotage, and incitement** are available actions

## Economy

- **Food surplus** keeps armies fed and public order high
- **Income** from commerce, industry, and taxation
- **Trade ports** generate significant wealth
- **Reforms** unlock economic bonuses

## Victory Conditions

- **Short campaign:** Own X territories, achieve Y prestige
- **Long campaign:** Control three of China's key commanderies
- **Kingdoms:** Become king, then emperor, then conquer all

## Tips for New Players

1. Focus on food first — starvation destroys public order
2. Don't overextend — one army per front, two max
3. Use spies liberally — information wins wars
4. Keep heirs and generals satisfied with court positions
5. Build roads — trade income depends on connections
6. Save before major battles — learn from defeats
7. Don't trust Sun Jian's peace offers (historical accuracy)
```

- [ ] **Step 4: Commit**

```bash
git add guide/00-wave0/
git commit -m "feat: add Wave 0 guide files with placeholder mods"
```

---

### Task 5: Create Wave 1 guide files

**Files:**

- Create: `guide/01-wave1/mods.yaml`
- Create: `guide/01-wave1/01-introduction.md`
- Create: `guide/01-wave1/02-strategy.md`

- [ ] **Step 1: Write mods.yaml with placeholder entries**

```yaml
mods:
  - name: "Example Graphics Overhaul"
    url: "https://nexusmods.com/totalwarthreekingdoms/mods/3"
    author: "GraphicsAuthor"
    version: "2.0.0"
    category: ["graphics"]
    wave: 1
    description: "High-resolution textures for units, buildings, and campaign map."
    dependencies: []
    conflicts: []
    mechanic_impact: null
    adult: false
    notes: "Requires high-end GPU."

  - name: "Example Content Expansion"
    url: "https://nexusmods.com/totalwarthreekingdoms/mods/4"
    author: "ContentAuthor"
    version: "1.5.0"
    category: ["content"]
    wave: 1
    description: "Adds new unique units, buildings, and events for several factions."
    dependencies: ["Example Graphics Overhaul"]
    conflicts:
      - mod: "Another Content Mod"
        resolution: "Load this one first, then Another Content Mod"
    mechanic_impact: "Adds unique faction buildings with new recruitment options"
    adult: false
    notes: "Start a new campaign after enabling."

  - name: "Example Audio Pack"
    url: "https://nexusmods.com/totalwarthreekingdoms/mods/5"
    author: "AudioAuthor"
    version: "1.0.0"
    category: ["audio"]
    wave: 1
    description: "Replaces battle music with traditional Chinese instruments."
    dependencies: []
    conflicts: []
    mechanic_impact: null
    adult: false
    notes: "Compatible with all overhauls."
```

- [ ] **Step 2: Write 01-introduction.md**

```markdown
# Wave 1 — The Kingdom Endures

## Roleplaying Background

Years have passed. Your warlord now commands a stable domain — a true kingdom
with borders, allies, and enemies. The world is no longer about survival but
about expansion. Trade routes stretch across your lands. Your generals are
seasoned veterans. But new threats gather at every border.

Your goal: secure your kingdom's future through diplomacy, strategy, and
well-placed force.

## Game Setup

| Setting           | Choice                                                            |
|-------------------|-------------------------------------------------------------------|
| Difficulty        | Hard                                                              |
| Campaign          | Rise of the Warlords                                              |
| Faction           | Any major regional power (e.g., Gongsun Zan, Yuan Shao, Liu Biao) |
| Turn Timer        | Unlimited                                                         |
| Battle Time Limit | 60 min                                                            |

## What's New

- **Graphics overhaul** — the world looks richer and more immersive
- **Content mods** — new units, buildings, and events
- **Audio pack** — thematic battle music
- **Mechanic mods** — deeper systems (may affect diplomacy, economy, or spies)

## Strategy Shift

On Hard difficulty, the AI is more aggressive and makes smarter decisions.
Read `02-strategy.md` for advanced tactics.
```

- [ ] **Step 3: Write 02-strategy.md**

```markdown
# Advanced Strategy for Wave 1

## Campaign Strategy on Hard

### Early Game (First 20 Turns)
1. **Secure your home commandery** — build the food chain first (farm > market > workshop)
2. **One army, one purpose** — don't split forces early; focus on one enemy at a time
3. **Diplomacy is defense** — use non-aggression pacts to protect flanks
4. **Spies in every court** — embed early, reap intelligence later

### Mid Game (Turns 20-60)
1. **Two-front planning** — by now you have two armies; they should push opposite directions
2. **Governor assignments** — assign characters to rich commanderies for bonuses
3. **Reform priorities** — unlock administrative reforms before military ones
4. **Coalitions** — join or form one to deter large aggressors

### Late Game (Turns 60+)
1. **Kingmaking** — once you become king, expect the "kingdom" diplomatic penalty
2. **Economic consolidation** — ensure every territory generates profit
3. **Elite armies** — replace militia with elite units as income allows
4. **The final push** — three kingdoms remain; choose your moment

## Battle Tactics for Hard

- **AI uses flanking** — always reserve cavalry for counter-flanking
- **Moral shocks** — focus fire on enemy general; loss of general = route cascade
- **Terrain denial** — capture high ground before engaging
- **Siege patience** — build siege engines rather than assaulting walls directly
- **Retreat is an option** — preserve armies, fight another day

## Mod-Aware Strategy

- New units from content mods have unique strengths — read their descriptions
- Audio mods give cues for battlefield events (listen for unique instrument cues)
- If a mechanic mod changes public order or corruption, adjust building priorities accordingly
```

- [ ] **Step 4: Commit**

```bash
git add guide/01-wave1/
git commit -m "feat: add Wave 1 guide files with placeholder mods"
```

---

### Task 6: Create Wave 2 guide files

**Files:**

- Create: `guide/02-wave2/mods.yaml`
- Create: `guide/02-wave2/01-introduction.md`
- Create: `guide/02-wave2/02-strategy.md`

- [ ] **Step 1: Write mods.yaml with placeholder entries**

```yaml
mods:
  - name: "Example Total Overhaul"
    url: "https://nexusmods.com/totalwarthreekingdoms/mods/6"
    author: "OverhaulAuthor"
    version: "3.0.0"
    category: ["mechanics"]
    wave: 2
    description: "Complete overhaul of diplomacy, economy, and character systems."
    dependencies: ["Example Graphics Overhaul"]
    conflicts:
      - mod: "Example Content Expansion"
        resolution: "Compatible only with patches from the mod page. Use the compatibility patch."
      - mod: "Vanilla Diplomacy Fix"
        resolution: "Incompatible — do not use together"
    mechanic_impact: "Replaces the entire diplomacy system with a deeper offer-and-demand negotiation model. Adds population mechanics to economy. Introduces general loyalty factions."
    adult: false
    notes: "Requires new campaign. Read the mod page carefully."

  - name: "Example Endgame Challenge"
    url: "https://nexusmods.com/totalwarthreekingdoms/mods/7"
    author: "ChallengeAuthor"
    version: "1.2.0"
    category: ["mechanics"]
    wave: 2
    description: "Adds late-game crisis events, horde armies, and empire-shattering dilemmas."
    dependencies: ["Example Total Overhaul"]
    conflicts: []
    mechanic_impact: "Adds scripted endgame scenarios that trigger when certain conditions are met (e.g., territory count, prestige level)"
    adult: false
    notes: "Can be toggled on/off mid-campaign."
```

- [ ] **Step 2: Write 01-introduction.md**

```markdown
# Wave 2 — Beneath a Crimson Banner

## Roleplaying Background

The empire burns. You are no longer a warlord or a king — you are the last
hope of a dying age. Your territories stretch across China, but every border
is contested. Generals scheme for your throne. The people grow restless.
Three kingdoms stand between you and ultimate dominion, and the world itself
seems to conspire against you.

This is the final wave. There is no backup plan. No retreat. Only victory or
annihilation.

Your goal: unite China under your banner — or watch it all burn.

## Game Setup

| Setting           | Choice                                                 |
|-------------------|--------------------------------------------------------|
| Difficulty        | Legendary                                              |
| Campaign          | Mandate of Heaven                                      |
| Faction           | Any (recommend a faction you know well from Waves 0-1) |
| Turn Timer        | Unlimited                                              |
| Battle Time Limit | 60 min                                                 |

## What's New

- **Full mechanical overhauls** — diplomacy, economy, and characters work differently
- **Endgame crisis events** — scripted challenges that test your empire
- **Maximum difficulty** — Legendary AI morale bonuses, no battle saves
- **Compatibility considerations** — some Wave 1 mods conflict; read carefully

## The Challenge

Wave 2 is designed for players who have mastered Waves 0-1. If you haven't
completed at least one campaign on Hard with Wave 1's modset, consider playing
more before starting this wave.
```

- [ ] **Step 3: Write 02-strategy.md**

```markdown
# Expert Strategy for Wave 2

## Campaign Strategy on Legendary

### The First 50 Turns (Survival)
1. **Legendary AI cheats** — AI gets public order and morale bonuses. Plan for it.
2. **No battle saves** — every battle matters. Auto-resolve is more punishing.
3. **Aggressive expansion in the first 20 turns** — cripple your nearest rival before they grow
4. **Accept that you will lose settlements** — plan to retake, not to hold everything

### Mod-Overhauled Systems

#### Diplomacy Overhaul
- The overhaul mod changes negotiation to a offer-demand system
- You must offer something of value for every request
- Trust is a resource — breaking treaties permanently damages relationships
- War declarations require casus belli or heavy diplomatic penalties

#### Economy Overhaul
- Population mechanics: larger cities drain food, generate wealth but require more public order
- Tax rate affects population growth — high taxes slow growth
- Trade route banditry: invest in road infrastructure to protect trade

#### Character Overhaul
- Generals have loyalty factions — they may rebel with their entire army
- Court politics matter: promote talented generals or risk defection
- Family tree management is critical — succession crises can end campaigns

### Endgame Crisis Events
- **Horde armies** spawn from unguarded borders — keep reserve forces
- **Economic collapses** trigger when corruption reaches thresholds — reform down
- **Dilemmas** force choices between short-term gain and long-term stability
- **Rival kingdoms** coordinate against the player — divide and conquer

### Battle Tactics for Legendary
- **Never autoresolve** against equal or greater forces — the calculator is ruthless
- **General sniping** is harder (AI protects generals better) — use cavalry traps
- **Morale management** is key — your units will break faster without your general nearby
- **Terrain is your only advantage** — always fight on favorable ground
- **Withdraw from unwinnable battles** — preserving armies is preserving campaign viability
```

- [ ] **Step 4: Commit**

```bash
git add guide/02-wave2/
git commit -m "feat: add Wave 2 guide files with placeholder mods"
```

---

### Task 7: Create setup-installation-guide.md

**Files:**

- Create: `setup-installation-guide.md`

- [ ] **Step 1: Write setup-installation-guide.md**

```markdown
# Setup & Installation Guide

## Total War Mod Manager (TWMM)

TW Mod Manager is the recommended tool for managing Total War: Three Kingdoms mods.

### Download & Install
1. Visit https://www.nexusmods.com/site/mods/1238
2. Download the latest version
3. Run the installer
4. On first launch, point TWMM to your Total War: Three Kingdoms installation folder (typically `steamapps/common/Total War THREE KINGDOMS`)

### Importing a Modlist
Each wave directory contains a `mods.yaml` file listing all mods and their sources.

1. Download each mod from its Nexus/Steam Workshop URL
2. Place `.pack` files in `Total War THREE KINGDOMS/data/`
3. Open TWMM — it scans the data folder and lists all detected mods
4. Check the mods you want to enable for your current wave
5. Arrange load order (see below)

### Load Order Rules
1. **Dependencies before dependents** — if Mod B needs Mod A, Mod A loads first
2. **UI mods load last** — UI changes should override everything else
3. **Audio mods load before content mods** — prevents conflicts
4. **Total overhauls load first** — they change the foundation everything else builds on

TWMM allows drag-and-drop reordering. Use the "Groups" feature to save load
order profiles for each wave.

### Verifying Compatibility
- TWMM checks for known conflicts and shows warnings
- Cross-reference with `conflicts.yaml` for tracked issues
- If TWMM shows a conflict, check the resolution field in the mod entry or
  conflicts.yaml

### Per-Wave Profiles
1. In TWMM, create a "Wave 0" group with those mods enabled and all others disabled
2. When moving to Wave 1, disable all Wave 0 mods first, then enable Wave 1 mods
3. This prevents cross-wave conflicts

## Manual Installation (Without TWMM)
1. Download mod `.pack` files
2. Place in `steamapps/common/Total War THREE KINGDOMS/data/`
3. Launch the game launcher
4. Go to "Mod Manager" tab
5. Enable mods in the correct order
6. Launch the game

> Note: The game's built-in mod manager is less capable than TWMM. TWMM is
> strongly recommended.
```

- [ ] **Step 2: Commit**

```bash
git add setup-installation-guide.md
git commit -m "feat: add TW Mod Manager setup and installation guide"
```

---

### Task 8: Create reference files (conflicts.yaml + mod-ideas.yaml)

**Files:**

- Create: `conflicts.yaml`
- Create: `mod-ideas.yaml`

- [ ] **Step 1: Write conflicts.yaml**

```yaml
conflicts:
  - mod_a: "Example Content Expansion"
    mod_b: "Another Content Mod"
    type: "direct"
    waves_affected: [1, 2]
    resolution: "Load Example Content Expansion before Another Content Mod, or use the compatibility patch from the main mod page."
    notes: "Verified on v1.7.2 — both work with load order adjustment."

  - mod_a: "Example Total Overhaul"
    mod_b: "Vanilla Diplomacy Fix"
    type: "incompatible"
    waves_affected: [2]
    resolution: "Do not use Vanilla Diplomacy Fix with Example Total Overhaul. The overhaul replaces the diplomacy system entirely."
    notes: "Vanilla Diplomacy Fix is unnecessary with the overhaul."
```

- [ ] **Step 2: Write mod-ideas.yaml**

```yaml
ideas:
  - name: "Unique Faction Intro Animations"
    description: "Custom campaign intro cutscenes for each faction, similar to the base game intros but with more variety."
    category: "content"
    target_wave: 2
    gap: "No existing mod provides this. Community has expressed interest."
    references: []

  - name: "Extended Ancillaries & Items"
    description: "Adds more unique weapons, armors, and accessories with lore-friendly names and backstories."
    category: "content"
    target_wave: 1
    gap: "Existing item mods are either outdated or overpowered."
    references: []
```

- [ ] **Step 3: Commit**

```bash
git add conflicts.yaml mod-ideas.yaml
git commit -m "feat: add conflicts and mod ideas reference files"
```

---

### Task 9: Create scripts/install-fonts.bat

**Files:**

- Create: `scripts/install-fonts.bat`

- [ ] **Step 1: Write install-fonts.bat**

```bat
@echo off
cd /d "%~dp0.."

set FONTS_DIR=%cd%\fonts
echo Installing fonts to %FONTS_DIR%...

if not exist "%FONTS_DIR%" mkdir "%FONTS_DIR%"

echo Downloading Playfair Display...
powershell -Command "& {Invoke-WebRequest -Uri 'https://github.com/google/fonts/raw/main/ofl/playfairdisplay/PlayfairDisplay%5Bwght%5D.ttf' -OutFile '%FONTS_DIR%\PlayfairDisplay[wght].ttf'}"

echo Downloading Source Serif 4...
powershell -Command "& {Invoke-WebRequest -Uri 'https://github.com/google/fonts/raw/main/ofl/sourceserif4/SourceSerif4%5Bwght%5D.ttf' -OutFile '%FONTS_DIR%\SourceSerif4[wght].ttf'}"

echo Downloading JetBrains Mono...
powershell -Command "& {Invoke-WebRequest -Uri 'https://github.com/google/fonts/raw/main/ofl/jetbrainsmono/JetBrainsMono%5Bwght%5D.ttf' -OutFile '%FONTS_DIR%\JetBrainsMono[wght].ttf'}"

echo Fonts installed to %FONTS_DIR%
echo.
echo Note: These are variable-weight fonts. Static versions can be
echo downloaded manually from Google Fonts if needed.
```

- [ ] **Step 2: Commit**

```bash
git add scripts/install-fonts.bat
git commit -m "feat: add font installation script"
```

---

### Task 10: Create build.bat

**Files:**

- Create: `build.bat`

- [ ] **Step 1: Write build.bat**

```bat
@echo off
cd /d "%~dp0"

if not exist output mkdir output

echo Compiling Beneath a Crimson Banner PDF...
typst compile --font-path fonts template\main.typ output\Beneath-a-Crimson-Banner.pdf

if %errorlevel% equ 0 (
    echo PDF generated: output\Beneath-a-Crimson-Banner.pdf
) else (
    echo Build failed with error code %errorlevel%
    echo Make sure Typst 0.15+ is installed and fonts are in the fonts/ directory.
    exit /b %errorlevel%
)
```

- [ ] **Step 2: Commit**

```bash
git add build.bat
git commit -m "feat: add PDF build script"
```

---

### Task 11: Create Typst styles.typ

**Files:**

- Create: `template/styles.typ`

- [ ] **Step 1: Write styles.typ**

```typst
// Color palette
#let crimson = rgb("#8B0000")
#let gold = rgb("#C9A84C")
#let ink = rgb("#2C1810")
#let parchment = rgb("#FFF8F0")
#let card-white = rgb("#FFFFFF")
#let muted = rgb("#666666")
#let conflict-red = rgb("#CC3333")
#let mechanic-blue = rgb("#336699")
#let category-bg = rgb("#F0E6D3")

// Font configuration
#let body-font = "Source Serif 4"
#let heading-font = "Playfair Display"
#let mono-font = "JetBrains Mono"

// Page setup
#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 2.5cm, right: 2.5cm),
  background: [ #box(fill: parchment, width: 100%, height: 100%) ]
)

#set text(font: body-font, size: 10pt, fill: ink)
#set par(justify: true, leading: 0.6em)

// Heading styles
#show heading.where(level: 1): set text(font: heading-font, size: 18pt, weight: 700, fill: crimson)
#show heading.where(level: 2): set text(font: heading-font, size: 14pt, weight: 600, fill: crimson)
#show heading.where(level: 3): set text(font: heading-font, size: 11pt, weight: 600, fill: ink)

// Link styling
#show link: text.with(fill: gold)

// Page numbering
#set page(numbering: "1")
```

- [ ] **Step 2: Commit**

```bash
git add template/styles.typ
git commit -m "feat: add Typst styles with color palette and font config"
```

---

### Task 12: Create cover.typ and toc.typ

**Files:**

- Create: `template/cover.typ`
- Create: `template/toc.typ`

- [ ] **Step 1: Write cover.typ**

```typst
#import "styles.typ": *

#set page(
  margin: (top: 1cm, bottom: 1cm, left: 1cm, right: 1cm),
  background: [ #box(fill: parchment, width: 100%, height: 100%) ]
)

#align(center + middle, text(
  font: heading-font,
  weight: 700,
  size: 36pt,
  fill: crimson,
  [
    #image("../assets/logo.jpg", height: 45%)

    #v(1cm)

    Beneath a Crimson Banner

    #v(0.3cm)
    #line(length: 40%, stroke: 1pt + gold)
    #v(0.3cm)

    #text(size: 14pt, fill: ink, weight: 400)[
      A Total War: Three Kingdoms Modlist for v1.7.2
    ]

    #v(1.5cm)

    #text(size: 10pt, fill: muted)[
      Three Waves · Three Campaigns · One Destiny
    ]
  ]
))

#pagebreak()
```

- [ ] **Step 2: Write toc.typ**

```typst
#import "styles.typ": *

#set heading(outlined: false)

= Table of Contents

#v(0.5cm)

#context {
  let chapters = query(heading.where(level: 1, outlined: true))
  for chapter in chapters {
    let loc = chapter.location()
    let nr = counter(page).display(at: loc)
    [#text(font: heading-font, size: 11pt, fill: crimson)[#chapter.body] #h(1fr) #text(fill: muted)[#nr] \ ]
  }
}

#pagebreak()
```

- [ ] **Step 3: Commit**

```bash
git add template/cover.typ template/toc.typ
git commit -m "feat: add cover page and table of contents templates"
```

---

### Task 13: Create mod-entry.typ

**Files:**

- Create: `template/mod-entry.typ`

- [ ] **Step 1: Write mod-entry.typ**

```typst
#import "styles.typ": *

#let category-label(cat) = {
  let label = {
    box(fill: category-bg, inset: (x: 4pt, y: 2pt), radius: 2pt,
      text(size: 7pt, font: mono-font, fill: ink, str(cat).upper())
    )
  }
  label
}

#let mod-card(mod) = {
  let has-conflicts = mod.conflicts != () and mod.conflicts.len() > 0
  let has-mechanic = mod.mechanic_impact != none

  block(
    width: 100%,
    fill: card-white,
    stroke: (left: 3pt + crimson, bottom: 0.5pt + rgb("#DDDDDD"), right: 0.5pt + rgb("#DDDDDD"), top: 0.5pt + rgb("#DDDDDD")),
    radius: 2pt,
    inset: 12pt,
    [
      #grid(
        columns: (1fr, auto),
        [
          #text(font: heading-font, size: 13pt, weight: 600, fill: crimson, link(mod.url)[#mod.name])
          #h(4pt)
          #text(size: 8pt, fill: muted)[by #mod.author]
        ],
        [
          #text(size: 8pt, font: mono-font, fill: muted)[v#mod.version]
        ]
      )

      #v(4pt)

      #hstack(spacing: 4pt)[
        #for cat in mod.category {
          category-label(cat)
        }
      ]

      #v(6pt)
      #text(size: 9.5pt, fill: ink)[#mod.description]

      #if mod.dependencies != () and mod.dependencies.len() > 0 {
        #v(4pt)
        #text(size: 8pt, fill: muted)[
          *Dependencies:* #mod.dependencies.join(", ")
        ]
      }

      #if has-conflicts {
        #v(4pt)
        #for conflict in mod.conflicts {
          #text(size: 8pt, fill: conflict-red)[
            ⚠ *Conflict:* #conflict.mod → #conflict.resolution
          ]
          #v(2pt)
        }
      }

      #if has-mechanic {
        #v(4pt)
        #text(size: 8pt, fill: mechanic-blue)[
          ⚙ #mod.mechanic_impact
        ]
      }

      #if mod.notes != "" {
        #v(4pt)
        #text(size: 7.5pt, fill: muted, style: "italic")[#mod.notes]
      }
    ]
  )
}
```

- [ ] **Step 2: Commit**

```bash
git add template/mod-entry.typ
git commit -m "feat: add mod entry card renderer component"
```

---

### Task 14: Create wave-section.typ

**Files:**

- Create: `template/wave-section.typ`

- [ ] **Step 1: Write wave-section.typ**

```typst
#import "styles.typ": *
#import "mod-entry.typ": mod-card

#let wave-section(wave-num, intro-path, yaml-path) = {
  // Load the mod data
  let data = yaml(yaml-path)

  // Include the introduction markdown
  include intro-path

  // Mod list heading
  = Mod List

  #v(0.3cm)

  // Render each mod card
  #for mod in data.mods {
    mod-card(mod)
    #v(8pt)
  }

  #pagebreak()
}
```

- [ ] **Step 2: Commit**

```bash
git add template/wave-section.typ
git commit -m "feat: add wave section renderer that loads YAML and markdown"
```

---

### Task 15: Create main.typ and test the build

**Files:**

- Create: `template/main.typ`

- [ ] **Step 1: Write main.typ**

```typst
#import "styles.typ": *
#import "cover.typ"
#import "toc.typ"
#import "wave-section.typ": wave-section

// Cover page
#include "cover.typ"

// Table of Contents
#include "toc.typ"

// Wave 0
#wave-section(
  wave-num: 0,
  intro-path: "../guide/00-wave0/01-introduction.md",
  yaml-path: "../guide/00-wave0/mods.yaml"
)

// Wave 1
#wave-section(
  wave-num: 1,
  intro-path: "../guide/01-wave1/01-introduction.md",
  yaml-path: "../guide/01-wave1/mods.yaml"
)

// Wave 2
#wave-section(
  wave-num: 2,
  intro-path: "../guide/02-wave2/01-introduction.md",
  yaml-path: "../guide/02-wave2/mods.yaml"
)

// Appendices
= Appendices

== Game Installation Guide

#include "../setup-installation-guide.md"
```

- [ ] **Step 2: Run the build**

```bash
.\build.bat
```

Expected: PDF generated at `output/Beneath-a-Crimson-Banner.pdf` with cover page, TOC, all three waves, and setup guide appendix.

- [ ] **Step 3: Verify PDF output**

Run: `Test-Path output/Beneath-a-Crimson-Banner.pdf`
Expected: `True` — file exists and has reasonable size (>10KB).

- [ ] **Step 4: Commit**

```bash
git add template/main.typ output/Beneath-a-Crimson-Banner.pdf
git commit -m "feat: add main Typst entry point and initial PDF build"
```
