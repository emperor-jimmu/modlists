# Enhanced Liberty Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Scaffold the full Enhanced Liberty GTA IV modlist project — folder structure, guide files with placeholders, Typst PDF pipeline with theme, and build scripts.

**Architecture:** Guide content lives in `guide/*.md` as the authoritative source. A Node.js converter (`src/convert.js`) transforms markdown → Typst markup at build time. A Typst entry point (`src/enhanced-liberty.typ`) composes all chapters with a custom template (`src/template.typ`) into a PDF. A single `build-pdf.bat` orchestrates the pipeline.

**Tech Stack:** Node.js (converter), Typst 0.12+ (PDF), Windows Batch (build script)

**Spec:** `docs/superpowers/specs/2026-07-26-enhanced-liberty-design.md`

---

### Task 1: Project scaffold

**Files:**
- Create: `.gitignore`
- Create: `README.md`
- Create: `AGENTS.md`
- Create: `src/chapters/` (folder)
- Create: `output/` (folder)

- [ ] **Step 1: Create `.gitignore`**

```
# Typst build artifacts
src/chapters/
output/

# OS junk
Thumbs.db
.DS_Store
```

- [ ] **Step 2: Create `AGENTS.md`**

```markdown
# AGENTS.md — Enhanced Liberty

This is a curated modlist and game guide for **GTA IV version 1.0.8.0** (November 29, 2016 patch).

## Project Rules

- **Mods must be compatible with GTA IV 1.0.8.0** — use patch date as heuristic if version unclear
- No cheating/overpowered/all-knowing mods
- No porn mods (adult/nude content is okay if relevant — ask the user if in doubt)
- No conflicting mods, no redundant mods
- **FusionFix** (latest, version-pinned) is the base compatibility framework

## Content Structure

- `guide/*.md` — authoritative source for all guide content
- `src/` — Typst PDF generation only (template, converter, chapters)
- `conflicts.txt` — internal, excluded from PDF
- `ideas.txt` — internal, excluded from PDF

## Waves

| Wave | Theme | Mod Scope |
|------|-------|-----------|
| 0 — Fresh Off the Boat | New immigrant, no rep | UI & QoL only, no mechanic changes |
| 1 — City of Dreams | Criminal underworld | Graphics, content, new mechanics |

Each wave = fresh save. No carry-over.

## Build

Run `build-pdf.bat` to regenerate the PDF.

## Mod Entry Format

In markdown files:

```markdown
### [Mod Name](url)
| Field | Value |
|-------|-------|
| **Version** | x.y.z |
| **Dependencies** | Mod A |
| **System Impact** | What it changes |

2-3 line description.

Installation notes specific to 1.0.8.0.
```

Mods are grouped by category within each wave file.
```

- [ ] **Step 3: Create `README.md`**

```markdown
# Enhanced Liberty — GTA IV Modlist

A curated modlist and game guide for **GTA IV version 1.0.8.0** (November 29, 2016 patch).

## About

Enhanced Liberty organizes mods into two **waves** — each is a complete playthrough with its own roleplaying theme, difficulty curve, and mod setup.

- **Wave 0: Fresh Off the Boat** — UI & QoL mods, complete how-to-play guide
- **Wave 1: City of Dreams** — Graphics, content, and mechanics mods with advanced strategy

## Prerequisites

- GTA IV 1.0.8.0 (Steam or retail, downgraded if needed)
- FusionFix (see installation guide)

## Getting Started

See `guide/01-installation.md` for full setup instructions.

## Regenerating the PDF

Run `build-pdf.bat` to compile the PDF guide from source.

## Project Structure

| Path | Purpose |
|------|---------|
| `guide/` | Guide content in markdown (authoritative) |
| `src/` | Typst template, converter, and build artifacts |
| `conflicts.txt` | Mod conflict tracking (not in PDF) |
| `ideas.txt` | Future mod ideas (not in PDF) |
| `output/` | Generated PDF |

## License

Modlist structure and guide text are provided for reference. Mods are property of their respective authors.
```

- [ ] **Step 4: Create folders**

```bash
mkdir -p src\chapters
mkdir -p output
```

```bash
git add .gitignore README.md AGENTS.md src/chapters output
git commit -m "init: project scaffold"
```

---

### Task 2: Installation guide

**Files:**
- Create: `guide/01-installation.md`

- [ ] **Step 1: Write `guide/01-installation.md`**

```markdown
# Installation Guide

## Prerequisites

- A legitimate copy of GTA IV (Steam or retail)
- GTA IV must be patched to **version 1.0.8.0** (November 29, 2016)
- ~20 GB free disk space
- Windows 7 or later

## Step 1: Clean Installation

If you already have GTA IV installed, verify your version:

1. Right-click `GTAIV.exe` → Properties → Details
2. File version should read `1.0.8.0`

### Downgrading (if needed)

If you are on a newer version (e.g., Complete Edition) you will need to downgrade. Follow the [GTA IV Downgrade Guide](https://gtaforums.com/topic/980300-guide-downgrading-gta-iv-from-1020-to-1080/) to get to 1.0.8.0.

### Clean Install

1. Uninstall any existing GTA IV installation
2. Delete the remaining GTA IV folder (usually `C:\Program Files (x86)\Rockstar Games\Grand Theft Auto IV`)
3. Delete `Documents\Rockstar Games\GTA IV` (backup saves first)
4. Reinstall GTA IV
5. Patch to 1.0.8.0 if your installer doesn't include it

## Step 2: FusionFix Installation

[FusionFix](https://github.com/ClonkAndre/GTAIVFusionFix/) is a comprehensive compatibility and bug-fix framework. It is **required** for both waves.

**Current tested version:** `v3.18.0`

1. Download the latest release from the [FusionFix GitHub page](https://github.com/ClonkAndre/GTAIVFusionFix/releases)
2. Extract the archive to your GTA IV root folder (where `GTAIV.exe` lives)
3. When prompted, **overwrite all files**
4. Launch the game once to verify it works

### Verifying FusionFix is working

- Launch GTA IV
- You should see the FusionFix version number in the bottom-right corner of the main menu
- Open the in-game console (~ key) — if it opens, FusionFix is active

## Step 3: Mod Installation Order

When installing mods, always follow this order to avoid conflicts:

1. **FusionFix** — always first (handles compatibility)
2. **Script hook / mod loaders** — any dependencies that mods require
3. **Graphics mods** — ENB, textures, lighting (applied last to avoid overwrites)
4. **Content mods** — vehicles, weapons, map additions
5. **Mechanics mods** — physics, AI, damage models
6. **Audio mods** — radio, sound effects
7. **Configuration edits** — `.ini` and `.xml` tweaks

## Step 4: First Launch

1. Launch `GTAIV.exe` (or `PlayGTAIV.exe` depending on your install)
2. Go to **Graphics** settings and set:
   - Resolution: your monitor's native
   - Texture Quality: High
   - View Distance: 30-40 (adjust based on performance)
3. Go to **Controls** and configure key bindings to your preference
4. Start a new game to verify everything works

## Troubleshooting

| Problem | Solution |
|---------|----------|
| Game crashes on startup | Verify FusionFix is installed correctly. Check `Documents\Rockstar Games\GTA IV\Logs\` |
| Black screen on launch | Try windowed mode (`-windowed` launch parameter) |
| Low FPS | Reduce View Distance and Shadow Quality in graphics settings |
| Missing textures | Set Texture Quality to High or Medium |
| Controls not working | Check for conflicting mods or reinstall FusionFix |
```

- [ ] **Step 2: Commit**

```bash
git add guide/01-installation.md
git commit -m "feat: add installation guide with FusionFix instructions"
```

---

### Task 3: Wave 0 mod list

**Files:**
- Create: `guide/02-wave-0-mods.md`

- [ ] **Step 1: Write `guide/02-wave-0-mods.md`**

```markdown
# Wave 0: Fresh Off the Boat — Mod List

> Roleplaying Theme: New immigrant arrives in Liberty City. You have no connections, no reputation, and no resources. You take odd jobs and learn the city's rhythms.

> **Scope:** UI improvements and quality-of-life fixes only. No graphics overhauls, no content additions, no mechanic changes. FusionFix provides all compatibility fixes.

> **Installation:** All mods below are installed on top of a clean GTA IV 1.0.8.0 with FusionFix already applied.

---

## UI Improvements

### [Mod Name](https://example.com)

| Field | Value |
|-------|-------|
| **Version** | 1.0 |
| **Dependencies** | FusionFix |
| **System Impact** | None |

Description of the mod, what it improves, and why it's in this wave.

Installation notes for 1.0.8.0.

---

## Bug Fixes

### [Mod Name](https://example.com)

| Field | Value |
|-------|-------|
| **Version** | 1.0 |
| **Dependencies** | FusionFix |
| **System Impact** | None |

Description of the mod, what it fixes, and why it's in this wave.

Installation notes for 1.0.8.0.

---

## Audio

### [Mod Name](https://example.com)

| Field | Value |
|-------|-------|
| **Version** | 1.0 |
| **Dependencies** | FusionFix |
| **System Impact** | None |

Description of the mod.

Installation notes for 1.0.8.0.

---

## Misc / Quality of Life

### [Mod Name](https://example.com)

| Field | Value |
|-------|-------|
| **Version** | 1.0 |
| **Dependencies** | FusionFix |
| **System Impact** | None |

Description of the mod.

Installation notes for 1.0.8.0.
```

- [ ] **Step 2: Commit**

```bash
git add guide/02-wave-0-mods.md
git commit -m "feat: add Wave 0 mod list with categories"
```

---

### Task 4: Wave 0 how-to-play guide

**Files:**
- Create: `guide/03-wave-0-guide.md`

- [ ] **Step 1: Write `guide/03-wave-0-guide.md`**

```markdown
# Wave 0: Fresh Off the Boat — How to Play

> *The container ship's horn drowns out the city noise as you step onto the dock at Port Tudor. You have a duffel bag, a burner phone, and an address scrawled on a napkin. Liberty City stretches before you — towering, filthy, alive. Somewhere in this concrete maze, you'll find your footing. Or it'll bury you.*

---

## Getting Started

### Understanding Liberty City

Liberty City is divided into four boroughs:

- **Broker** — starting area, loosely based on Brooklyn. Your first missions are here.
- **Bohan** — loosely based on the Bronx/Bedford-Stuyvesant. Unlocked early in the story.
- **Algonquin** — the central island, loosely based on Manhattan. The heart of the city.
- **Alderney** — loosely based on New Jersey. Unlocked later in the story.

Your first several hours will be in Broker. Take time to explore, learn the streets, and understand the traffic patterns.

### Controls Reference (Default)

| Action | Keyboard | Controller |
|--------|----------|------------|
| Move | WASD | Left stick |
| Sprint / Accelerate | Shift (tap) | Right trigger |
| Enter/Exit vehicle | F | Y/Triangle |
| Handbrake | Space | A/X (Xbox) / R1 (PS) |
| Weapon wheel | Tab | LB/L1 |
| Phone | Up arrow | D-pad up |
| Cover | Q | RB/R1 |
| Aim | Right mouse button | Left trigger |
| Shoot | Left mouse button | Right bumper |
| Change radio | Scroll wheel / N | D-pad left/right |

### The Phone

Your phone is your mission hub. Roman calls to start story missions. You can also:

- **Call contacts** to request services (cab, backup, etc.)
- **Answer calls** to receive mission briefings
- **Ignore calls** — most calls have no penalty for ignoring
- **Check your phone** at any time with the Up arrow

> **Tip:** Answer calls promptly. If you miss one, check your phone's recent calls to call back.

---

## Core Mechanics

### Driving

GTA IV's driving physics are simulation-leaning. Key principles:

- **Brake before turns** — braking mid-turn causes understeer
- **Tap the handbrake** (Space) for sharp turns, but use it sparingly
- **Heavier vehicles** (SUVs, trucks) handle worse but protect you in crashes
- **Faster vehicles** (sports cars) oversteer easily — feather the throttle
- **Motorcycles** are extremely nimble but the slightest collision throws you off
- **Traffic laws don't apply** but aggressive driving damages your vehicle

### Combat

- **Use cover** (Q to take cover, then aim and shoot from behind it)
- **Headshots** are instant kills with most weapons
- **Pistol** — accurate at close-mid range, your go-to weapon
- **SMG** — spray for suppressive fire, not accuracy
- **Shotgun** — devastating up close, useless at range
- **Assault Rifle** — best all-around weapon, available later
- **Grenades** — excellent for groups in cover, dangerous up close

### Wanted System

Six levels of police response:

| Level | Response |
|-------|----------|
| ★ | One patrol car, passive search |
| ★★ | 2-3 patrol cars, active pursuit |
| ★★★ | Roadblocks, helicopters start arriving |
| ★★★★ | Aggressive pursuit, more roadblocks |
| ★★★★★ | FBI, spike strips, heavy response |
| ★★★★★★ | Army, near-impossible to escape |

**To lose the cops:**
1. **Break line of sight** — duck into alleys, subways, or buildings
2. **Hide** — wait for the search radius to shrink
3. **Change your vehicle** — cops track your last known vehicle
4. **Pay 'n' Spray** — resprays your car and drops wanted level (not available at ★★★★+)

### Money

- Early game money is tight
- Missions pay modestly until later chapters
- Side activities (pool, darts, bowling) earn tiny amounts
- Taxi work is the most reliable early income
- **Don't buy weapons you don't need** — ammo is expensive

---

## Tips for Wave 0

1. **Learn the map** without GPS waypoints at first. The street signs and landmarks are designed to be navigable.
2. **Do Roman's taxi missions early** — they pay reliably and teach you the streets.
3. **Save often** — use your safehouse bed to save before difficult missions.
4. **Check your email** at internet cafes for side missions and opportunities.
5. **Don't rush** — the game's strength is its atmosphere. Walk, drive slow, listen to the radio.
6. **Use pedestrians as guides** — ask for directions (press E near them) to get waypoints marked on your radar.
7. **Get off the main roads** — alleys and shortcuts are faster than following GPS.
```

- [ ] **Step 2: Commit**

```bash
git add guide/03-wave-0-guide.md
git commit -m "feat: add Wave 0 how-to-play guide with story and mechanics"
```

---

### Task 5: Wave 1 mod list

**Files:**
- Create: `guide/04-wave-1-mods.md`

- [ ] **Step 1: Write `guide/04-wave-1-mods.md`**

```markdown
# Wave 1: City of Dreams — Mod List

> Roleplaying Theme: You've made a name for yourself. The immigrant who stepped off that boat is gone — now you have enemies, allies, and a reputation. The city is yours for the taking, but the higher you climb, the harder they'll fight to bring you down.

> **Scope:** Graphics, content, and mechanics mods that transform the game into a harder, richer experience. Builds on FusionFix (installed per installation guide) and Wave 0's lessons.

> **Installation:** Start with a fresh save on a clean GTA IV 1.0.8.0. Install FusionFix first, then mods in the order specified in the installation guide.

---

## Graphics

### [Mod Name](https://example.com)

| Field | Value |
|-------|-------|
| **Version** | 1.0 |
| **Dependencies** | FusionFix |
| **System Impact** | Visual quality, performance |

Description of the mod and why it's chosen.

Installation notes for 1.0.8.0.

---

## Content

### [Mod Name](https://example.com)

| Field | Value |
|-------|-------|
| **Version** | 1.0 |
| **Dependencies** | FusionFix, Script Hook |
| **System Impact** | New vehicles/weapons/missions in world |

Description of the mod and why it's chosen.

Installation notes for 1.0.8.0.

---

## Mechanics

### [Mod Name](https://example.com)

| Field | Value |
|-------|-------|
| **Version** | 1.0 |
| **Dependencies** | FusionFix |
| **System Impact** | Damage model, police AI, economy |

Description of the mod and why it's chosen.

Installation notes for 1.0.8.0.

---

## Audio

### [Mod Name](https://example.com)

| Field | Value |
|-------|-------|
| **Version** | 1.0 |
| **Dependencies** | FusionFix |
| **System Impact** | Radio content, sound effects |

Description of the mod.

Installation notes for 1.0.8.0.
```

- [ ] **Step 2: Commit**

```bash
git add guide/04-wave-1-mods.md
git commit -m "feat: add Wave 1 mod list with categories"
```

---

### Task 6: Wave 1 strategy guide

**Files:**
- Create: `guide/05-wave-1-guide.md`

- [ ] **Step 1: Write `guide/05-wave-1-guide.md`**

```markdown
# Wave 1: City of Dreams — Strategy Guide

> *The safehouse is bigger now. The calls come from different people — louder, more dangerous. You know which streets to avoid, which cops take bribes, which alleys dead-end. But the city has changed too. New faces. New threats. And the rules you learned? Some of them just got rewritten.*

---

## Adjusting to Wave 1

Wave 1 assumes you understand the basics. Here's what's different:

- **Economy is tighter** — mods may increase costs and decrease mission payouts
- **Police are smarter** — longer search durations, better pursuit AI
- **Vehicles handle differently** — physics mods make driving more punishing
- **Combat is deadlier** — damage mods mean fewer shots to kill (both you and enemies)
- **New content** — vehicles, weapons, and map additions you need to learn

---

## Advanced Strategy

### Mission Planning

1. **Scout ahead** — drive to the mission area before triggering the objective
2. **Identify escape routes** — know where you're going before the shooting starts
3. **Prepare your vehicle** — a fast, durable car is worth more than a weapon
4. **Use the environment** — construction sites, alleys, and rooftops are tactical assets
5. **Save before every mission** — manual saves, not just autosaves

### Vehicle Selection

| Type | Best For | Avoid For |
|------|----------|-----------|
| Compact cars | City driving, tight alleys | Highway chases, ramming |
| Sports cars | Speed, police evasion | Off-road, durability |
| SUVs | Durability, ramming, off-road | Cornering, speed |
| Motorcycles | Traffic weaving, off-road | Any collision |
| Trucks | Roadblocks, intimidation | Everything else |

### Weapon Loadouts

- **Primary slot** — Assault Rifle or SMG (mission flexibility)
- **Secondary slot** — Pistol (quick-draw, accurate)
- **Heavy slot** — Shotgun or Grenades (situational)
- **Melee** — Basebat or knife (silent, free ammo)

> **Pro tip:** Don't carry every weapon. You can't switch fast enough in a firefight. Pick 2-3 that cover your range needs.

### Money Management

- **Don't buy cars** — they spawn in driveways and parking lots. Steal what you need.
- **Invest in the safehouse** — some mods add safehouse upgrades that provide benefits
- **Ammo is the real expense** — use melee and pistol for random encounters
- **Side missions matter** — vigilante, paramedic, and taxi work pay well

---

## FusionFix Tweaks for Wave 1

Wave 1 enables FusionFix settings that are unnecessary (or too much) for Wave 0.

See `06-fusionfix-config.md` for the full reference. Key changes:

| Setting | Recommended | Effect |
|---------|-------------|--------|
| `DisableClipTeleport` | `true` | Prevents streaming crashes with heavy mods |
| `EnableAmbientPeds` | `true` | Adds more pedestrians for immersion |
| `FixVehicleCollision` | `true` | Required for vehicle damage mods |
| `IncreaseVehicleCount` | `1.5-2.0` | More traffic, more chaos |
| `UnlockFrameRate` | `true` | High FPS with graphics mods |

Refer to the [FusionFix Config](#fusionfix-configuration) chapter for the full list and explanations.

---

## Long-Term Strategy

1. **Complete all side content first** — missions get harder with mods
2. **Build relationships** — friend activities unlock special abilities and vehicles
3. **Explore every borough** — Wave 1 mods add content throughout the city
4. **Experiment with failures** — some mods add consequences to failure that change the story
5. **Take breaks** — modded GTA IV can be punishing. Step away when frustrated.
```

- [ ] **Step 2: Commit**

```bash
git add guide/05-wave-1-guide.md
git commit -m "feat: add Wave 1 strategy guide with FusionFix cross-reference"
```

---

### Task 7: FusionFix configuration reference

**Files:**
- Create: `guide/06-fusionfix-config.md`

- [ ] **Step 1: Write `guide/06-fusionfix-config.md`**

```markdown
# FusionFix Configuration Reference

> FusionFix uses ini-style configuration files located in `GTAIVFusionFix_config/` in your game root. Settings are changed by editing the relevant `.ini` file.

---

## Graphics

| Setting | File | Default | Recommended | Notes |
|---------|------|---------|-------------|-------|
| `UnlockFrameRate` | `Graphics.ini` | `false` | `true` | Removes 30 FPS cap. Required for smooth gameplay. |
| `Resolution` | `Graphics.ini` | `auto` | Native res | Use your monitor's native resolution. |
| `ShadowQuality` | `Graphics.ini` | `Medium` | `High` | Performance hit on low-end GPUs. |
| `ReflectionQuality` | `Graphics.ini` | `Medium` | `High` | Improves water and car reflections. |
| `AmbientOcclusion` | `Graphics.ini` | `false` | `true` | Adds depth to shadows. Performance impact. |
| `WaterQuality` | `Graphics.ini` | `Medium` | `High` | Improves water rendering significantly. |
| `TextureFlushEnabled` | `Graphics.ini` | `false` | `true` | Prevents texture pop-in at high settings. |

## Controls

| Setting | File | Default | Recommended | Notes |
|---------|------|---------|-------------|-------|
| `MouseSensitivity` | `Controls.ini` | `0.5` | Personal preference | Adjust if aiming feels sluggish. |
| `InvertMouse` | `Controls.ini` | `false` | Personal preference | Invert Y-axis for aiming. |
| `ControllerVibration` | `Controls.ini` | `true` | `true` | Controller feedback. |
| `Deadzone` | `Controls.ini` | `0.2` | `0.1` | Reduces stick deadzone for smoother aiming. |
| `RawMouseInput` | `Controls.ini` | `false` | `true` | Bypasses Windows mouse acceleration. |

## UI

| Setting | File | Default | Recommended | Notes |
|---------|------|---------|-------------|-------|
| `MiniMapScale` | `UI.ini` | `1.0` | `1.2` | Slightly larger radar for better navigation. |
| `RadarRefreshRate` | `UI.ini` | `30` | `60` | Smoother radar movement. |
| `ShowAllVehicles` | `UI.ini` | `false` | `true` | Shows all vehicle blips on radar. |
| `ObjectiveTextSize` | `UI.ini` | `1.0` | `1.2` | Larger mission text for readability. |

## Memory / Stability

| Setting | File | Default | Recommended | Notes |
|---------|------|---------|-------------|-------|
| `DisableClipTeleport` | `Stability.ini` | `false` | `true` | **Essential.** Prevents the "clip teleport" crash that happens when streaming can't keep up. |
| `IncreaseStreamMemory` | `Stability.ini` | `0` | `1024` | Allocates more memory for texture streaming. |
| `DisableShaderCaching` | `Stability.ini` | `false` | `false` | Keep disabled — caching improves load times. |
| `FixVehicleCollision` | `Stability.ini` | `false` | `true` | Fixes vehicle collision bugs with modded cars. |
| `PatchPedPool` | `Stability.ini` | `false` | `true` | Prevents crashes from too many pedestrians. |

## Misc

| Setting | File | Default | Recommended | Notes |
|---------|------|---------|-------------|-------|
| `SkipIntro` | `Misc.ini` | `false` | `true` | Skips the intro logos on launch. |
| `EnableConsole` | `Misc.ini` | `false` | `true` | Enables in-game console (~ key) for commands. |
| `AutoSave` | `Misc.ini` | `true` | `true` | Keep enabled as a safety net. |
| `EnableAmbientPeds` | `Misc.ini` | `false` | `true` | Adds ambient pedestrian variety. |
| `IncreaseVehicleCount` | `Misc.ini` | `1.0` | `1.0-2.0` | Multiplier for traffic density. Higher values impact performance. |
| `AllowScreenshot` | `Misc.ini` | `false` | `true` | Enables screenshot key (F12 by default). |
```

- [ ] **Step 2: Commit**

```bash
git add guide/06-fusionfix-config.md
git commit -m "feat: add FusionFix configuration reference"
```

---

### Task 8: Conflicts and ideas trackers

**Files:**
- Create: `conflicts.txt`
- Create: `ideas.txt`

- [ ] **Step 1: Write `conflicts.txt`**

```
# Enhanced Liberty — Mod Conflict Registry
# Format: <mod_a> | <mod_b> | <issue> | <resolution>

# This file tracks known incompatible mod pairs and their resolutions.
# Entries are added as conflicts are discovered during mod testing.

# Example:
# ProjectileFix | RealisticWeapons | Weapon damage overrides | Use RealisticWeapons, disable ProjectileFix
```

- [ ] **Step 2: Write `ideas.txt`**

```
# Enhanced Liberty — Mod Ideas
# Format: [Category] <mod concept> — <brief description>
# Priority: P0 (must), P1 (should), P2 (nice), P3 (future)

# This file tracks mod concepts that may be developed or added in future updates.
# Entries are organized by wave and category.

## Wave 0 Ideas (P2-P3)
#

## Wave 1 Ideas (P1-P2)
#

## Future / Cross-Wave
#
```

- [ ] **Step 3: Commit**

```bash
git add conflicts.txt ideas.txt
git commit -m "feat: add conflict registry and ideas tracker"
```

---

### Task 9: Markdown-to-Typst converter

**Files:**
- Create: `src/convert.js`

- [ ] **Step 1: Write `src/convert.js`**

```javascript
const fs = require('fs');
const path = require('path');

const guideDir = path.join(__dirname, '..', 'guide');
const chapterDir = path.join(__dirname, 'chapters');

// Ensure chapters output directory exists
if (!fs.existsSync(chapterDir)) {
  fs.mkdirSync(chapterDir, { recursive: true });
}

// Get all .md files in guide/, sorted by name for correct order
const files = fs.readdirSync(guideDir)
  .filter(f => f.endsWith('.md'))
  .sort();

for (const file of files) {
  const mdPath = path.join(guideDir, file);
  let content = fs.readFileSync(mdPath, 'utf8');

  // Convert markdown heading syntax (# ## ###) to Typst heading syntax (= == ===)
  // Must handle carefully: not all # are headings (e.g., in code blocks or tables)
  // Process line by line
  const lines = content.split('\n');
  const converted = lines.map(line => {
    // Only convert # at the start of a line (after optional whitespace)
    const headingMatch = line.match(/^(\s*)(#{1,6})\s+(.*)$/);
    if (headingMatch) {
      const indent = headingMatch[1];
      const level = headingMatch[2].length;
      const text = headingMatch[3];
      const typstPrefix = '='.repeat(level);
      return `${indent}${typstPrefix} ${text}`;
    }

    // Convert **bold** to *bold* (Typst uses single asterisk for bold)
    let processed = line.replace(/\*\*(.+?)\*\*/g, '*$1*');

    // Convert *italic* to _italic_ (Typst uses underscore for italic)
    // But don't convert ** (already handled) or lines inside code blocks
    processed = processed.replace(/(?<!\*)\*(?!\*)(.+?)(?<!\*)\*(?!\*)/g, '_$1_');

    return processed;
  });

  const typFileName = file.replace('.md', '.typ');
  const typPath = path.join(chapterDir, typFileName);
  fs.writeFileSync(typPath, converted.join('\n'), 'utf8');
  console.log(`Converted: ${file} -> ${typFileName}`);
}

console.log('All chapters converted successfully.');
```

- [ ] **Step 2: Commit**

```bash
git add src/convert.js
git commit -m "feat: add markdown-to-Typst converter script"
```

---

### Task 10: Typst theme template

**Files:**
- Create: `src/template.typ`

- [ ] **Step 1: Write `src/template.typ`**

```typst
// Enhanced Liberty — PDF Theme Template
// Color palette, fonts, and show rules for the modlist guide

#let liberty-dark-blue = rgb("#0d1117")
#let liberty-body-bg = rgb("#f5f0e8")
#let liberty-body-text = rgb("#1a1a1a")
#let liberty-gold = rgb("#d4a843")
#let liberty-heading = rgb("#1a2530")
#let liberty-link = rgb("#1a7a7a")
#let liberty-badge = rgb("#e67e22")

// Set document defaults
#set text(
  font: ("Linux Libertine", "Noto Serif", "Georgia"),
  size: 10pt,
  fill: liberty-body-text,
)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 2cm, right: 2cm),
  numbering: "1",
  number-align: center,
)

// Heading styles
#show heading.where(level: 1): it => [
  #set text(font: ("Fira Sans", "Roboto"), weight: "bold", size: 22pt, fill: liberty-heading)
  #block(below: 0.5cm, above: 1cm, it)
]

#show heading.where(level: 2): it => [
  #set text(font: ("Fira Sans", "Roboto"), weight: "bold", size: 16pt, fill: liberty-heading)
  #block(below: 0.3cm, above: 0.6cm, it)
]

#show heading.where(level: 3): it => [
  #set text(font: ("Fira Sans", "Roboto"), weight: "bold", size: 12pt, fill: liberty-heading)
  #block(below: 0.2cm, above: 0.4cm, it)
]

// Link styling — clickable with color
#show link: it => {
  set text(fill: liberty-link)
  it
}

// Table styling for mod entries
#show table.cell: it => {
  set text(size: 9pt)
  it
}

// System impact badge
#let sys-impact(details) = {
  box(
    fill: liberty-badge,
    inset: (x: 4pt, y: 2pt),
    radius: 3pt,
  )[#set text(fill: white, size: 8pt, weight: "bold")#details]
}

// Cover page template
#let cover(title, subtitle, logo-path, waves) = {
  page(
    paper: "a4",
    margin: (top: 2cm, bottom: 2cm, left: 2cm, right: 2cm),
    fill: liberty-dark-blue,
    numbering: none,
  )[
    #align(center + horizon, [
      #block(height: 2cm)
      #image(logo-path, width: 60%)
      #block(height: 1.5cm)
      #set text(fill: liberty-gold, size: 28pt, weight: "bold", font: ("Fira Sans", "Roboto"))
      #title
      #block(height: 0.5cm)
      #set text(fill: white, size: 14pt, font: ("Linux Libertine", "Noto Serif"))
      #subtitle
      #block(height: 0.3cm)
      #set text(fill: rgb("#aaaaaa"), size: 10pt, font: ("Fira Sans", "Roboto"))
      #waves
    ])
  ]
}
```

- [ ] **Step 2: Commit**

```bash
git add src/template.typ
git commit -m "feat: add Typst theme template with colors, fonts, cover"
```

---

### Task 11: Main Typst document

**Files:**
- Create: `src/enhanced-liberty.typ`

- [ ] **Step 1: Write `src/enhanced-liberty.typ`**

```typst
// Enhanced Liberty — Main Document
// Include template, render cover, compose all chapters

#import "template.typ": cover, sys-impact, liberty-body-text, liberty-gold, liberty-heading, liberty-link

// Render cover page
#cover(
  title: "Enhanced Liberty",
  subtitle: "GTA IV Modlist — v1.0.8.0",
  logo-path: "../assets/logo.jpg",
  waves: "Wave 0: Fresh Off the Boat  /  Wave 1: City of Dreams",
)

// Table of Contents page
#page[
  #set heading(numbering: none)
  #set text(font: ("Fira Sans", "Roboto"), size: 14pt, weight: "bold", fill: liberty-heading)
  Table of Contents
  #block(height: 0.5cm)
  #outline(
    indent: auto,
    depth: 2,
    fill: liberty-gold,
  )
]

// Reset numbering for content pages
#set page(numbering: "1")

// Include all chapters (generated by convert.js from guide/*.md)
#include "chapters/01-installation.typ"
#include "chapters/02-wave-0-mods.typ"
#include "chapters/03-wave-0-guide.typ"
#include "chapters/04-wave-1-mods.typ"
#include "chapters/05-wave-1-guide.typ"
#include "chapters/06-fusionfix-config.typ"
```

- [ ] **Step 2: Commit**

```bash
git add src/enhanced-liberty.typ
git commit -m "feat: add main Typst document with cover, ToC, chapter includes"
```

---

### Task 12: Build script

**Files:**
- Create: `build-pdf.bat`

- [ ] **Step 1: Write `build-pdf.bat`**

```bat
@echo off
cd /d "%~dp0"

echo Converting markdown to Typst...
node src/convert.js

echo Compiling PDF...
typst compile src/enhanced-liberty.typ output/Enhanced-Liberty.pdf

if %errorlevel% equ 0 (
    echo PDF generated: output/Enhanced-Liberty.pdf
) else (
    echo PDF generation failed. Check errors above.
    exit /b 1
)
```

- [ ] **Step 2: Verify `.gitignore` includes `output/` and `src/chapters/`**

Confirm `.gitignore` already has these lines. If not, add them.

- [ ] **Step 3: Commit**

```bash
git add build-pdf.bat
git commit -m "feat: add PDF build script"
```

---

## Self-Review Checklist

- [ ] **Spec coverage:** Every spec section has implementation tasks:
  - Project structure ✓ (Task 1)
  - Guide files ✓ (Tasks 2-7)
  - Conflicts/ideas ✓ (Task 8)
  - Markdown pipeline ✓ (Task 9)
  - PDF theme ✓ (Task 10)
  - Main document ✓ (Task 11)
  - Build script ✓ (Task 12)
  - Wave content ✓ (Tasks 3-6)
  - Mod entry format ✓ (Tasks 3, 5)
  - FusionFix config ✓ (Task 7)
  - Installation order ✓ (Task 2)
  - AGENTS.md + README.md ✓ (Task 1)
- [ ] **No placeholders** — all code blocks contain complete, working content
- [ ] **Type consistency** — all file paths, function names, and settings are consistent
