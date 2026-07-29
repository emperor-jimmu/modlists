# Fields, Vines & Barrels Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Create the full project scaffold, research and list mods for all 3 waves, write the complete gameplay guides, and produce a buildable PDF.

**Architecture:** Content-driven markdown project. Each wave has a directory of category files containing mod tables. A LaTeX template + Pandoc compiles everything into a single PDF with cover, TOC, and styled chapters.

**Tech Stack:** Markdown, Pandoc, XeLaTeX, batch scripting

---

### Task 1: Project Scaffold

**Files:**

- Create: `AGENTS.md`
- Create: `README.md`
- Create: `guide/` (directory tree)
- Create: `output/` (directory)
- Create: `conflicts.md`
- Create: `mod-ideas.md`

- [ ] **Step 1: Create directory tree**

```powershell
@(
  "guide\wave-0",
  "guide\wave-1",
  "guide\wave-2",
  "output"
) | ForEach-Object { New-Item -ItemType Directory -Force -Path $_ | Out-Null }
Write-Host "[OK] Directory tree created"
```

- [ ] **Step 2: Create AGENTS.md**

Write to `AGENTS.md`:

```markdown
# opencode Instructions — Fields, Vines & Barrels

This project is a Farming Simulator 25 modlist and gameplay guide.

## Commands
- **Build PDF**: `.\build-pdf.bat` (requires Pandoc + XeLaTeX)
- **Research mods**: Use web search to find FS25 v1.20.0.0 compatible mods. Prioritize ModHub. Cross-check version compatibility before adding.

## Rules
- No adult/pornographic content for FS25
- All mods must be compatible with FS25 v1.20.0.0
- No cheating/overpowered/all-knowing mods
- Mods are cumulative: Wave 2 includes Wave 0 + Wave 1 mods

## File Conventions
- Each mod entry in tables uses format: | Name | Author | Source | Version | Notes |
- Category files list only mods ADDED in that wave
- Use `⚠ ` prefix in Notes for unverified mods
```

- [ ] **Step 3: Create README.md**

Write to `README.md`:

```markdown
# Fields, Vines & Barrels

A Farming Simulator 25 modlist and gameplay guide.

## Structure

Three progressive "waves," each a separate playthrough with a unique backstory:

- **Wave 0 — The Homestead**: Vanilla + QoL/UI/Visuals. Beginner guide.
- **Wave 1 — Fields, Vines & Barrels**: Mid-game. Winery/brewery focus on Le Mechet.
- **Wave 2 — Empire**: Late-game. Industrial-scale farming, max difficulty.

Mods are cumulative — each wave builds on the previous.

## Building the PDF

Requires [Pandoc](https://pandoc.org) and [XeLaTeX](https://tug.org/texlive/) (or TinyTeX).

```

.\build-pdf.bat

```

Output: `output/fields-vines-and-barrels.pdf`

## Project Layout

```

guide/
├── mod-manager.md          # Mod Manager V0.7.11 guide
├── reshade.md               # Reshade installation guide
├── wave-0/                  # The Homestead
├── wave-1/                  # Fields, Vines & Barrels
└── wave-2/                  # Empire
conflicts.md                 # Known mod conflicts
mod-ideas.md                 # Future mod ideas

```
```

- [ ] **Step 4: Create conflicts.md**

Write to `conflicts.md`:

```markdown
# Known Mod Conflicts

*No conflicts documented yet. Add entries as discovered during mod research.*

## Template

### [Mod A] + [Mod B]
- **Symptom**: What breaks
- **Cause**: Why they conflict
- **Resolution**: Which to keep, workaround, compatible versions
```

- [ ] **Step 5: Create mod-ideas.md**

Write to `mod-ideas.md`:

```markdown
# Mod Development Ideas

*Add ideas for custom mods to develop later.*

## Template

### [Idea Name]
- **Purpose**: What it would do
- **Wave**: Which wave it belongs in
- **Why it's missing**: No existing mod fills this niche
- **Notes**: Implementation thoughts, references
```

---

### Task 2: Mod Manager V0.7.11 Guide

**Files:**

- Create: `guide/mod-manager.md`

- [ ] **Step 1: Write Mod Manager guide**

**VERIFY:** The Mod Manager UI steps below (menu paths, button labels, profile workflow) are assumed based on typical mod managers. Before committing, fetch the actual documentation from <https://fs25.net/mod-manager-v0-7-11/> and correct any UI details that don't match.

Write to `guide/mod-manager.md`:

```markdown
# Mod Manager V0.7.11 Guide

## Overview

Mod Manager V0.7.11 is a standalone tool for managing Farming Simulator 25 mods outside the in-game mod hub. It allows creating mod profiles, managing load order, and bulk-installing mods.

## Installation

1. Download from [fs25.net/mod-manager-v0-7-11/](https://fs25.net/mod-manager-v0-7-11/)
2. Extract the archive to a permanent location (e.g., `C:\Program Files\FS25 Mod Manager\`)
3. Run `Mod Manager.exe`
4. On first launch, point it to your FS25 installation directory

## Configuration

1. **Game path**: Set to your FS25 install folder (e.g., `C:\Program Files\Farming Simulator 2025\`)
2. **Mod directory**: Defaults to `Documents\My Games\FarmingSimulator2025\mods\`
3. **Backup**: Enable automatic mod backup before updates
4. **Profiles**: Create one profile per wave for easy switching

## Creating a Wave Profile

1. Click **Profiles → New Profile**
2. Name it (e.g., "Fields Vines Barrels - Wave 0")
3. Click **Add Mods** and select the mod ZIP files
4. Arrange load order if needed
5. Click **Save Profile**
6. Click **Install All** to copy mods to the game mod directory

## Importing a Profile from File

(To be supplemented with JSON import instructions when the modlist is complete.)

## Troubleshooting

- **Mod not showing in-game**: Verify mod version matches FS25 v1.20.0.0. Check the game log at `Documents\My Games\FarmingSimulator2025\log.txt`
- **Load order issues**: Some mods require specific load order. Check `conflicts.md` for known ordering requirements.
- **Profile not loading**: Ensure the profile file has `.json` extension and is in the `profiles/` subfolder.
```

---

### Task 3: Reshade Guide

**Files:**

- Create: `guide/reshade.md`

- [ ] **Step 1: Write Reshade guide**

**VERIFY:** Reshade installation steps (Home key, "Skip tutorial" button, effects selection UI) are assumed from general Reshade knowledge. Before committing, test the installation flow on a real machine or cross-reference with the official Reshade guide at <https://reshade.me/guides>.

Write to `guide/reshade.md`:

```markdown
# Reshade for Farming Simulator 25

## What is Reshade?

Reshade is a post-processing injector that enhances the game's visuals — color grading, ambient light, depth of field, sharpening, and more.

## Installation

1. Download Reshade from [reshade.me](https://reshade.me)
2. Run the installer
3. Click **Select game** and browse to `FarmingSimulator2025.exe`
4. Select **DirectX 10/11/12** as the rendering API
5. Choose which effects to install (recommended: **Standard effects**)
6. On first game launch, press **Home** to open the Reshade overlay
7. Click **Skip tutorial** → **Continue**

## Recommended Presets for FS25

Presets are `.ini` files placed in the game folder next to the executable.

Popular preset sources:
- [Reshade Presets on Nexus Mods](https://www.nexusmods.com/farmingsimulator2025/mods/categories/5/) (search for "reshade")
- FarmingSimulator modding Discord communities

## Performance Tips

- Reduce render scale in the Reshade settings if FPS drops
- Turn off effects you don't use (Depth of Field, Bloom for screenshots only)
- Use performance mode for gameplay, full mode for screenshots

## Wave-Specific Presets

Reshade presets listed per wave are in each wave's `02-visuals-reshade.md` file. The same Reshade installation works for all waves; only the preset file changes.
```

---

### Task 4: Wave 0 — The Homestead

**Files:**

- Create: `guide/wave-0/story.md`
- Create: `guide/wave-0/getting-started.md`
- Create: `guide/wave-0/01-map.md`
- Create: `guide/wave-0/02-visuals-reshade.md`
- Create: `guide/wave-0/03-ui-qol.md`
- Create: `guide/wave-0/04-vehicles.md`
- Create: `guide/wave-0/05-implements.md`
- Create: `guide/wave-0/06-placeables.md`
- Create: `guide/wave-0/07-gameplay.md`

- [ ] **Step 1: Write story.md**

Write to `guide/wave-0/story.md`:

```markdown
# Wave 0: The Homestead

*The letter arrived on a rainy Tuesday. Solicitor Henderson's office, 2 PM sharp. You almost threw it out — another bill, another notice, another piece of your fractured life demanding attention you didn't have. But the return address caught your eye: a village name you hadn't thought of in fifteen years.*

*Your great-uncle Arthur had passed. The old family farm — sixty acres of overgrown pasture, a sagging barn, a cottage with a leaky roof — was yours now. No mortgage. No debt. Just the land, the silence, and a lifetime of neglect.*

*They told you to sell it. "The math doesn't work," they said. "Small farming is dead." But Arthur kept that place alive for fifty years with nothing but stubbornness and a rusted old tractor from an era when machines were built to be repaired. Maybe there's something to that.*

*You packed a bag. Took the train. Stepped off at a station that hadn't changed since the 1970s. The air smelled different here — wet earth, cut grass, woodsmoke from somewhere distant.*

*The farm was worse than you remembered. But the cottage had a working stove, the well had clean water, and in the barn, under a tarp, sat Arthur's tractor. Engine seized. Tires flat. But there.*

*You made tea. Sat on the porch. Watched the rain move across the valley.*

*Tomorrow, you'd find out if you could actually do this.*
```

- [ ] **Step 2: Write getting-started.md**

**IMPORTANT: The game mechanics details below (controls, crop seasons, economy, production chains) are written from general domain knowledge and MUST be verified against actual FS25 v1.20.0.0 behavior. Do NOT commit without confirming each section against in-game testing or official FS25 documentation.** Verify: keybind list (check FS25 in-game controls menu), crop seasons (check in-game calendar), production chain inputs/outputs (check in-game production menu). Cross-reference any mod-specific details with their source pages.

Write to `guide/wave-0/getting-started.md` with these sections:

```markdown
# Getting Started — A Complete Beginner's Guide to FS25

## 1. First Launch

### Graphics Settings
- Resolution: Native monitor resolution
- FSR/DLSS: On if available (boosts FPS)
- Grass Draw Distance: Medium (high impact on performance)
- Shadows: High (big visual impact, moderate performance cost)
- Volumetric Fog: Off (high performance cost, minimal gameplay impact)

### Controls Basics
- **W/A/S/D**: Move vehicle
- **Space**: Brake / handbrake
- **B**: Toggle beacon
- **X**: Toggle cruise control
- **V**: Toggle reverse
- **Q/E**: Lower/raise implement
- **Left Shift + Q/E**: Lower/raise implement faster
- **Enter**: Confirm / interact
- **Esc**: Menu / pause
- **Tab**: Switch between owned vehicles
- **M**: Map overview
- **P**: Open store
- **I**: Inventory / production overview

## 2. The Farm Yard

Your farm starts with:
- A **farmhouse** (no function, just aesthetic)
- A **workshop** (repair vehicles — costs money)
- A **silo** (stores grain, grass, and chaff)
- A **manure pit** (stores manure from animals)
- Empty **animal pens** (buy animals later)

## 3. Basic Field Work

The core farming loop:

### Step 1: Plow / Cultivate
- **Plowing**: Required every 3 harvests (or if field has rocks/weeds). Creates new field edges.
- **Cultivating**: Prepares seedbed. Faster than plowing. Required between harvests.
- Which one? After harvest, cultivate (faster). After 3 harvests or when the field says "needs plowing," plow.

### Step 2: Seeding / Planting
- Use a seeder or planter
- Different crops require different seasons:
  - **Spring**: Wheat, barley, oats, canola, potatoes, sugar beets
  - **Summer**: Corn, sunflowers, soybeans
  - **Autumn**: Wheat (for next year), grass (anytime)
- The in-game calendar shows ideal planting windows

### Step 3: Fertilizing
- Two stages: fertilize after seeding, then again after crop sprouts
- Each stage gives +50% yield (at standard difficulty)
- Methods: fertilizer spreader (solid), sprayer (liquid), manure spreader, slurry tanker

### Step 4: Weeding
- Weeds appear after seeding (visible as small red plants on the field map)
- Use a weeder (mechanical, early stage) or sprayer with herbicide (any stage)
- Weeds reduce yield if ignored

### Step 5: Harvesting
- Crop is ready when the field turns the crop's color (e.g., wheat turns golden)
- Check the growth stage on the map (fully grown = harvestable)
- Use the correct header/attachment for each crop type
- **Direct cutting** for grains: combine + grain header
- **Forage harvesting** for grass/chaff: forage harvester + pickup header

### Step 6: Selling
- Drive harvested crop to a sell point (marked on map)
- Prices vary daily — check the price menu (P key) for best prices
- Store in your silo and wait for high prices

## 4. Crop Types

### Grains (wheat, barley, oats, canola)
- Easiest to start with
- Use a combine harvester with a grain header
- Can be sold directly or processed into flour, oil, etc.

### Root Crops (potatoes, sugar beets)
- Require specialized planters and harvesters
- Higher profit per acre but more expensive equipment
- Best for players with some experience

### Grass
- No replanting needed — grows back after cutting
- Use a mower, tedder (to dry into hay), windrower, and baler
- Feed for animals or sell as bales

### Corn & Sunflowers
- Tall crops, require front attachment for the combine (corn header, sunflower header)
- Corn can also be chopped for silage (high profit)

## 5. Animals

### Types
- **Chickens**: Cheapest entry. Produce eggs. Low maintenance.
- **Sheep**: Produce wool. Need grass/hay.
- **Cows**: Produce milk. Most profitable but most expensive. Need hay, straw, and TMR (Total Mixed Ration = hay + straw + silage).
- **Pigs**: Produce slurry. Eat almost anything (grain, root crops, leftovers).

### Daily Routine
1. Feed animals (fill troughs at the pen)
2. Collect water (if not automatic)
3. Clean pen (remove manure/slurry)
4. Collect produce (eggs, milk, wool)

### Profitability Note
Animals are a long-term investment. The upfront cost is high, and daily care is ongoing. But the passive income from milk/eggs/wool adds up significantly.

## 6. Contracts

Contracts appear at the bottom of the map screen. You can:
- **Do it yourself**: Use your own equipment, get full payment + bonus for completion
- **Rent equipment**: Cost deducted from payment, but equipment is provided
- **Lease out**: Pay AI to do it, get reduced profit

### Tips
- Accept contracts that match your existing equipment (no rental cost = max profit)
- Field work contracts (harvesting, fertilizing) are best early-game
- Transport contracts are fast and easy
- Contracts with the same NPC repeat frequently — good relationship = more contracts

## 7. Economy Basics

### Loans
- Maximum loan increases with farm value
- Interest accrues daily
- Best used for essential equipment purchases early on
- Pay down aggressively once you have steady income

### Leasing vs. Buying
- **Lease**: Pay hourly. Return anytime. Good for one-off jobs (specialized harvesters).
- **Buy**: Full cost upfront. Better for frequently used equipment (tractor, basic implements).

### Repairs
- Vehicles degrade with use
- Repair in the workshop (costs money) or at dealer (more expensive)
- Degraded vehicles lose power and speed

### Seasons (if enabled)
- Crops planted out of season won't grow
- Winter: fields are inactive. Focus on animals, contracts, and maintenance.
- Snow must be cleared if you want to drive on your farm.

## 8. Production Chains

Basic production chains available in vanilla:

- **Grain → Flour → Bread** (requires bakery building)
- **Canola → Oil** (requires oil mill)
- **Sugar Beets → Sugar** (requires sugar mill)
- **Milk → Cheese / Butter** (requires dairy)
- **Wood → Planks → Furniture** (requires sawmill + carpentry)

Production buildings are bought from the store and placed on your land. They accept raw materials and output processed goods for higher sale prices.

## 9. Mod Manager Setup

See the [Mod Manager guide](../mod-manager.md) for detailed instructions.

Quick steps:
1. Install Mod Manager V0.7.11
2. Create a new profile called "Fields Vines Barrels - Wave 0"
3. Add the mods listed in the following category files
4. Click **Install All** to activate

## 10. Reshade Setup

See the [Reshade guide](../reshade.md) for detailed installation.

Wave 0-specific preset recommendations are in the [Visuals & Reshade mod list](02-visuals-reshade.md).
```

- [ ] **Step 3: Research and write 01-map.md**

**Research queries:**

1. `"Calmsden Farm" FS25 modhub` — check <https://farming-simulator.com/mods> for official listing
2. `"Calmsden Farm" "FS25" download` — check KingMods, FS25.net
3. `"Calmsden Farm" author FS25` — identify the porter/author

**Expected outcome:** Page confirms Calmsden Farm exists for FS25 v1.20.0.0 OR finds it doesn't. If it exists: record Name, Author, Source URL, Version. If it doesn't exist: research alternative small UK maps (Courtenay Farms, Meadowgrove, Oak Bridge Farm) using same queries.

Write to `guide/wave-0/01-map.md` with actual verified data in the mod table format.

- [ ] **Step 4: Research and write 02-visuals-reshade.md**

**Research queries:**

1. `FS25 reshade preset realistic lighting` — check Nexus Mods, fs25.net
2. `"Relight" FS25 mod` — common lighting overhaul, check if ported
3. `FS25 weather mod v1.20` — check for weather/season visual mods
4. `FS25 skybox mod` or `FS25 better clouds` — visual atmosphere mods

**Fallback:** If no dedicated FS25 Reshade presets exist, look for FS22 presets that work cross-version (Reshade presets are often version-agnostic). Note any cross-version caveats in the Notes column.

Write to `guide/wave-0/02-visuals-reshade.md` with actual mod entries found.

- [ ] **Step 5: Research and write 03-ui-qol.md**

**Research queries:**

1. `FS25 "Enhanced Vehicle" HUD` or `FS25 vehicle hud mod` — vehicle operation info overlay
2. `FS25 "Follow Me" mod` — worker follows another vehicle
3. `FS25 "CoursePlay" mod v1.20` — advanced worker AI (likely not ported; check)
4. `FS25 autoload trailer mod` — check if any exist for v1.20.0.0
5. `FS25 UI mods quality of life` — general search for misc QoL mods

Try each query against: ModHub (farming-simulator.com/mods), KingMods, FS25.net. Only add mods confirmed for v1.20.0.0. Mark any unverified ones with ⚠ in Notes.

Write to `guide/wave-0/03-ui-qol.md` with actual mod entries found.

- [ ] **Step 6: Write remaining Wave 0 category files**

Write to `guide/wave-0/04-vehicles.md`:

```markdown
# Wave 0 — Vehicles

*No additional vehicle mods in Wave 0. The vanilla FS25 vehicle roster is sufficient for beginner gameplay.*
```

Write to `guide/wave-0/05-implements.md`:

```markdown
# Wave 0 — Implements & Attachments

*No additional implement mods in Wave 0. Vanilla FS25 implements cover all basic field work.*
```

Write to `guide/wave-0/06-placeables.md` (add any QoL placeable mods found during research if applicable, otherwise note none needed):

```markdown
# Wave 0 — Placeables & Buildings

*No additional placeable mods in Wave 0. Vanilla placeables cover all basic needs.*
```

Write to `guide/wave-0/07-gameplay.md`:

```markdown
# Wave 0 — Gameplay & Difficulty

*No gameplay-altering mods in Wave 0. This wave uses vanilla difficulty settings.*

## Recommended Settings
- **Economic Difficulty**: Normal
- **Plant Growth**: Normal (not fast — learn the rhythm)
- **Fuel Usage**: On
- **Traffic**: On
- **Auto-Repair**: Off (experience the cost of neglect)
- **Seasons**: On (learn crop timing from the start)
```

---

### Task 5: Wave 1 — Fields, Vines & Barrels

**Files:**

- Create: `guide/wave-1/story.md`
- Create: `guide/wave-1/strategy.md`
- Create: `guide/wave-1/01-map.md`
- Create: `guide/wave-1/02-ui-qol.md`
- Create: `guide/wave-1/03-vehicles.md`
- Create: `guide/wave-1/04-implements.md`
- Create: `guide/wave-1/05-placeables.md`
- Create: `guide/wave-1/06-production-economy.md`
- Create: `guide/wave-1/07-gameplay.md`

- [ ] **Step 1: Write story.md**

Write to `guide/wave-1/story.md`:

```markdown
# Wave 1: Fields, Vines & Barrels

*You sold the homestead. Not because you wanted to, but because the offer was too good to refuse — a young couple with dreams and a bank loan, and you knew Arthur's farm would be in good hands. The money sat in your account for six months while you travelled, restless, looking for something that felt like yours.*

*You found it in a real estate listing for a French vineyard. "Domaine du Mechet — 12 hectares of vines, traditional farmhouse, stone cellar. Needs restoration."*

*The photos showed a wreck. Overgrown rows. A collapsed barn. A house with shutters hanging at desperate angles. But the land — rolling hills, a river bend, sunset colours you'd never seen anywhere else — that land was waiting.*

*You flew out the next week. Walked the property with an old viticulturist who'd worked there forty years ago. He pointed at the vines, at the soil, at the sky. "This place makes wine," he said. "It just needs someone to let it."*

*You bought it.*

*Now you're standing in a dusty cellar, surrounded by empty barrels older than you are, holding a bottle of wine from 1987 — the Domaine's last vintage before it closed. You don't know if you can do this. But you're going to try.*
```

- [ ] **Step 2: Write strategy.md**

Write to `guide/wave-1/strategy.md`:

```markdown
# Wave 1 Strategy Guide

## Winery & Brewery

The core gameplay loop for Wave 1 revolves around establishing a wine and beer production operation on Le Mechet.

### Wine Production Flow
1. **Prepare vineyard**: Plow → cultivate → plant grapevines
2. **Maintain vines**: Fertilize, weed between rows
3. **Harvest grapes**: Use a grape harvester (specialized attachment)
4. **Process grapes**: Take grapes to the winery building
5. **Age wine**: Wine must age in barrels (time-based)
6. **Bottle & sell**: Bottled wine sells for significantly more than raw grapes

### Brewery Production Flow
1. **Grow barley/hops**: Standard field work
2. **Harvest barley**: Combine with grain header
3. **Malt barley**: Processing step at the brewery
4. **Brew beer**: Combine malt + hops + water
5. **Age & bottle**: Beer ages faster than wine
6. **Sell**: Beer sells for good profit

### Production Management Tips
- Vertical integration increases profit margins
- Multiple parallel production lines stabilize income
- Focus on wine first (higher profit per unit), then expand to beer
- Storage capacity is critical — build additional silos and warehouses early

## Field Management at Scale

- GPS and steering assist tools reduce fatigue during long field sessions
- Larger implements mean fewer passes but require more horsepower
- Multiple workers can cover the same field if segmented properly
- Headland management: leave headland space for turning

## Worker Coordination

- Assign workers to different fields or tasks
- Use the map to plan multi-worker operations
- One worker harvests while another transports — efficient two-person operation
- Fuel management: ensure workers don't run dry mid-field

## Economy in Wave 1

- Upgrade equipment gradually — don't over-leverage
- Wine and beer production provides steady passive income
- Supplement with contracts during downtime
- Invest in storage before production expansions
```

- [ ] **Step 3: Research and write 01-map.md**

**Research queries:**

1. `"Le Mechet" FS25 modhub` — check official ModHub listing
2. `"Le Mechet" FS25 download` — check KingMods, FS25.net, GitHub
3. `"Le Mechet" FS25 vineyard map` — confirm it has vineyard functionality

**Fallback:** If Le Mechet is not ported to FS25, research: `Haut-Beyleron FS25` (built-in French map), `"Bordeneau" FS25 map`, or `FS25 French vineyard map`. Record why the fallback was chosen.

Write to `guide/wave-1/01-map.md` with actual verified data and "Why this map" section.

- [ ] **Step 4: Research and write 02-ui-qol.md**

**Research queries:** `FS25 "AutoDrive" mod v1.20`, `FS25 GPS steering guidance mod`, `FS25 crop manager mod` — tools that become useful at intermediate scale. Only list mods NOT already in Wave 0.

Write to `guide/wave-1/02-ui-qol.md` with actual mod entries.

- [ ] **Step 5: Research and write 03-vehicles.md**

**Research queries:** `FS25 tractor pack 150-250 HP`, `FS25 grape harvester mod`, `FS25 vineyard tractor mod`, `FS25 mid-size truck mod`, `FS25 wheel loader mod`. Target: 4-8 vehicle mods covering mid-tier operation. Every mod must be v1.20.0.0 compatible.

Write to `guide/wave-1/03-vehicles.md` with actual mod entries.

- [ ] **Step 6: Research and write 04-implements.md**

**Research queries:** `FS25 vineyard cultivator`, `FS25 grape trailer`, `FS25 mid-size seeder 6-9m`, `FS25 sprayer mod`, `FS25 mower mod vineyard`. Target: 3-6 implement mods. Focus on vineyard-specific and mid-tier implements.

Write to `guide/wave-1/04-implements.md` with actual mod entries.

- [ ] **Step 7: Research and write 05-placeables.md**

**Research queries:** `FS25 winery building mod`, `FS25 wine cellar mod`, `FS25 barrel aging mod`, `FS25 storage shed`, `FS25 greenhouse mod`, `FS25 silo mod`. Target: 3-6 placeable mods supporting wine production infrastructure.

Write to `guide/wave-1/05-placeables.md` with actual mod entries.

- [ ] **Step 8: Research and write 06-production-economy.md**

**Research queries:** `FS25 wine production mod`, `FS25 brewery mod`, `FS25 grape processing mod`, `FS25 beer production mod`, `FS25 barrelling mod`, `FS25 economy mod production`. This is the core of Wave 1. Search both function-specific mods (adds wine as a product) and economy mods (adjusts sale prices, production rates). Target: 3-5 mods.

Write to `guide/wave-1/06-production-economy.md` with actual mod entries.

- [ ] **Step 9: Research and write 07-gameplay.md**

**Research queries:** `FS25 CoursePlay mod`, `FS25 AutoDrive mod` (if not in Wave 1 UI-QoL), `FS25 cooperative mode mod`, `FS25 seasons realism mod`. Target: 2-4 gameplay mods that enhance intermediate play without making it "cheaty."

Write to `guide/wave-1/07-gameplay.md` with actual mod entries.

---

### Task 6: Wave 2 — Empire

**Files:**

- Create: `guide/wave-2/story.md`
- Create: `guide/wave-2/strategy.md`
- Create: `guide/wave-2/01-map.md`
- Create: `guide/wave-2/02-ui-qol.md`
- Create: `guide/wave-2/03-vehicles.md`
- Create: `guide/wave-2/04-implements.md`
- Create: `guide/wave-2/05-placeables.md`
- Create: `guide/wave-2/06-production-economy.md`
- Create: `guide/wave-2/07-gameplay.md`

- [ ] **Step 1: Write story.md**

Write to `guide/wave-2/story.md`:

```markdown
# Wave 2: Empire

*The Domaine sold for a sum that made your accountant whistle. A decade of work — restoring the vines, perfecting the blend, building a name — had turned a wrecked vineyard into a trophy property. A hospitality group bought it for their luxury portfolio. You walked away with more money than you'd earned in your entire life.*

*But you weren't done. Farming wasn't a chapter in your life anymore. It was in your blood.*

*You looked at a map of America — the vast agricultural heartland where scale is measured in thousands of acres, not hectares. You found a place where the horizon stretches unbroken, where the nearest neighbour is a speck on the horizon, where the soil is measured in square miles instead of acres. Potato country. Wheat country. The kind of land that feeds nations.*

*The farm you bought there was the opposite of everything you'd known: flat fields that stretched to the curvature of the earth, irrigation pivots like enormous metal insects, equipment that cost more than your first house. This wasn't farming as craft. This was farming as industry.*

*You stood on the roof of the machine shed and looked out across your new empire. Somewhere behind you, the sun was setting on the French hills. Ahead of you, the horizon was flat and endless and full of possibility.*

*Time to find out how far you could go.*
```

- [ ] **Step 2: Write strategy.md**

Write to `guide/wave-2/strategy.md`:

```markdown
# Wave 2 Strategy Guide

## Advanced Economy

### Margin Analysis
- Track input costs (seed, fertilizer, herbicide) vs. output prices
- Some crops have better margin per acre than others
- Processed goods almost always beat raw sales, but require capital investment
- Seasonal price fluctuations: store in silo, sell at peak

### Leasing Strategies
- High-cost specialized equipment (forage harvesters, large combines) are often better leased
- Frequently used equipment (tractors, sprayers) should be owned
- Lease-to-own calculation: if you'd lease the same equipment for more than 30 hours in a season, buying is cheaper. For equipment used under 10 hours/season, leasing wins.

### Supply Chain Optimization
- Vertical integration: own every step from field to final product
- Minimize transport distance — place production buildings near fields
- Buffer stock: maintain 1 season's worth of raw materials in storage
- Bottleneck identification: track which production building caps your chain

## Max Difficulty Settings

| Setting             | Recommendation        |
|---------------------|-----------------------|
| Economic Difficulty | Hard                  |
| Plant Growth        | Slow (realistic)      |
| Fuel Usage          | On                    |
| Traffic Violations  | On (fines for damage) |
| Auto-Repair         | Off                   |
| Seasons             | On                    |
| Plowing Requirement | On (every 3 harvests) |
| Weeds               | On                    |
| Stones              | On                    |
| Lime                | On                    |

## Large-Scale Operation Tips

- Multiple AI workers on different fields simultaneously
- Dedicated transport workers (grain cart → silo) keep harvesters running
- Buffer tractor for road transport between farm and sell points
- Precision farming: soil sampling, variable-rate fertilization
- Fleet management: group similar equipment for maintenance cycles
```

- [ ] **Step 3: Research and write 01-map.md**

**Research queries:** `"American Falls" FS25 mod`, `FS25 "American Falls" map download`. Verify on ModHub and KingMods. **Fallback chain:** American Falls → `"Elk Mountain" FS25` → `"Flatlands" FS25` → `"Saskatchewan" FS25` → any large US/Canadian map on ModHub with 50+ fields and rail/large infrastructure. Record which was selected and why.

Write to `guide/wave-2/01-map.md` with actual verified data.

- [ ] **Step 4: Research and write 02-ui-qol.md**

**Research queries:** `FS25 fleet manager mod`, `FS25 production chain overview mod`, `FS25 advanced map mod`, `FS25 finance tracker mod`. Target: 2-3 mods for industrial-scale UI needs not covered by Wave 0/1.

Write to `guide/wave-2/02-ui-qol.md` with actual mod entries.

- [ ] **Step 5: Research and write 03-vehicles.md**

**Research queries:** `FS25 tractor 400HP+ mod`, `FS25 large combine mod`, `FS25 articulated tractor mod`, `FS25 semi truck mod`, `FS25 large wheel loader mod`. Target: 4-6 high-horsepower/large-capacity vehicle mods. All must be v1.20.0.0 compatible.

Write to `guide/wave-2/03-vehicles.md` with actual mod entries.

- [ ] **Step 6: Research and write 04-implements.md**

**Research queries:** `FS25 18m seeder mod`, `FS25 large sprayer mod`, `FS25 big baler mod`, `FS25 forage harvester mod`, `FS25 large cultivator mod`, `FS25 slurry tanker large`. Target: 4-6 large-scale implements.

Write to `guide/wave-2/04-implements.md` with actual mod entries.

- [ ] **Step 7: Research and write 05-placeables.md**

**Research queries:** `FS25 large silo mod 500k capacity`, `FS25 rail loading station mod`, `FS25 mega shed mod`, `FS25 industrial workshop mod`, `FS25 BGA plant mod`. Target: 3-5 industrial-scale placeables.

Write to `guide/wave-2/05-placeables.md` with actual mod entries.

- [ ] **Step 8: Research and write 06-production-economy.md**

**Research queries:** `FS25 precision farming mod`, `FS25 advanced economy mod`, `FS25 supply chain expansion mod`, `FS25 price fluctuation mod`, `FS25 contract expansion mod`. Target: 3-5 economy/gameplay mods that make the game harder and more rewarding at scale.

Write to `guide/wave-2/06-production-economy.md` with actual mod entries.

- [ ] **Step 9: Research and write 07-gameplay.md**

**Research queries:** `FS25 hard mode mod`, `FS25 realistic maintenance mod`, `FS25 AI worker expansion mod`, `FS25 loan interest mod`, `FS25 increase difficulty mod`. Target: 3-5 mods that add challenge without being "cheaty" or overpowered.

Write to `guide/wave-2/07-gameplay.md` with actual mod entries.

---

### Task 7: Cross-Reference & Finalize

**Files:** Modify: `conflicts.md`, `mod-ideas.md` across all waves

- [ ] **Step 1: Cross-reference conflicts**

Read every category file across all waves. Check for known incompatibilities between selected mods. Update `conflicts.md` with any findings.

- [ ] **Step 2: Document mod ideas**

Update `mod-ideas.md` with gaps found during research — mods that would be useful but don't exist yet.

---

### Task 8: PDF Generation

**Files:**

- Create: `pandoc-template.tex`
- Create: `build-pdf.bat`

- [ ] **Step 1: Create LaTeX template**

Write to `pandoc-template.tex`:

```latex
\documentclass[11pt,a4paper]{book}

\usepackage{fontspec}
\usepackage{xcolor}
\usepackage{titling}
\usepackage{graphicx}
\usepackage{hyperref}
\usepackage{titlesec}
\usepackage{fancyhdr}
\usepackage{bookmark}
\usepackage{longtable}
\usepackage{array}

% Colors
\definecolor{deepgreen}{HTML}{2D5A27}
\definecolor{warmgold}{HTML}{C8A84E}

% Fonts
\setmainfont{TeX Gyre Termes}
\setsansfont{TeX Gyre Heros}

% Headings
\titleformat{\chapter}{\Huge\bfseries\color{deepgreen}}{}{0em}{}
\titleformat{\section}{\Large\bfseries\color{deepgreen}}{}{0em}{}
\titleformat{\subsection}{\large\bfseries\color{deepgreen}}{}{0em}{}

% Header/Footer
\pagestyle{fancy}
\fancyhf{}
\fancyhead[LE,RO]{\color{deepgreen}Fields, Vines \& Barrels}
\fancyfoot[CE,CO]{\thepage}

% Cover page
\title{\Huge\textcolor{deepgreen}{Fields, Vines \& Barrels}\\[0.5em]
\Large A Farming Simulator 25 Modlist \& Guide}
\author{}
\date{\today}

\begin{document}

% Cover
\begin{titlepage}
\centering
\vspace*{3cm}
\includegraphics[width=0.6\textwidth]{assets/logo.png}\\[2cm]
{\Huge\bfseries\color{deepgreen} Fields, Vines \& Barrels}\\[0.5cm]
{\Large A Farming Simulator 25 Modlist \& Guide}\\[1cm]
{\large Build date: \today}
\vfill
\end{titlepage}

% TOC
\tableofcontents
\newpage

$body$

\end{document}
```

- [ ] **Step 2: Create build-pdf.bat**

Write to `build-pdf.bat`:

```batch
@echo off
title Fields, Vines & Barrels - PDF Builder

echo ============================================
echo  Fields, Vines ^& Barrels - PDF Builder
echo ============================================
echo.

REM Check prerequisites
where pandoc >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Pandoc not found. Install from https://pandoc.org
    goto :end
)

REM Ensure output directory exists
if not exist "output\" New-Item -ItemType Directory -Force -Path "output" >nul

REM Detect XeLaTeX by looking for it directly
for /f "delims=" %%i in ('where xelatex 2^>nul') do set XELATEX_PATH=%%i
if defined XELATEX_PATH (
    set "ENGINE=--pdf-engine=xelatex --template=pandoc-template.tex"
    set "LABEL=XeLaTeX"
) else (
    set "ENGINE=--pdf-engine=pdfhtml"
    set "LABEL=HTML fallback (XeLaTeX not found)"
)

echo [OK] Building PDF with %LABEL%...
echo.

REM Build using a temp file list to avoid batch variable size limits
(
    echo guide/mod-manager.md
    echo guide/reshade.md
    echo guide/wave-0/story.md
    echo guide/wave-0/getting-started.md
    echo guide/wave-0/01-map.md
    echo guide/wave-0/02-visuals-reshade.md
    echo guide/wave-0/03-ui-qol.md
    echo guide/wave-0/04-vehicles.md
    echo guide/wave-0/05-implements.md
    echo guide/wave-0/06-placeables.md
    echo guide/wave-0/07-gameplay.md
    echo guide/wave-1/story.md
    echo guide/wave-1/strategy.md
    echo guide/wave-1/01-map.md
    echo guide/wave-1/02-ui-qol.md
    echo guide/wave-1/03-vehicles.md
    echo guide/wave-1/04-implements.md
    echo guide/wave-1/05-placeables.md
    echo guide/wave-1/06-production-economy.md
    echo guide/wave-1/07-gameplay.md
    echo guide/wave-2/story.md
    echo guide/wave-2/strategy.md
    echo guide/wave-2/01-map.md
    echo guide/wave-2/02-ui-qol.md
    echo guide/wave-2/03-vehicles.md
    echo guide/wave-2/04-implements.md
    echo guide/wave-2/05-placeables.md
    echo guide/wave-2/06-production-economy.md
    echo guide/wave-2/07-gameplay.md
    echo conflicts.md
    echo mod-ideas.md
) > build-files.txt

pandoc @build-files.txt ^
    --from=markdown+pipe_tables+grid_tables ^
    --toc ^
    --toc-depth=3 ^
    %ENGINE% ^
    -o output/fields-vines-and-barrels.pdf

del build-files.txt 2>nul

if errorlevel 1 (
    echo.
    echo [ERROR] PDF build failed
) else (
    echo.
    echo [OK] PDF created: output\fields-vines-and-barrels.pdf
)

:end
REM Only pause if running interactively (no /Q flag)
if not "%1"=="/Q" pause
exit /b 0
```

- [ ] **Step 3: Test the build**

Run: `.\build-pdf.bat /Q`

Expected: Exits with code 0. `output/fields-vines-and-barrels.pdf` exists and is > 10KB. If Pandoc or XeLaTeX are not installed, install them or skip (the HTML fallback still produces a valid PDF).

---

### Task 9: Quality Gate & Commit

- [ ] **Step 1: File audit**

Verify every file from the project structure exists and has content (not just headers).

Run: `Get-ChildItem -Recurse -File guide/ | ForEach-Object { Write-Host "$($_.FullName): $((Get-Content $_.FullName | Measure-Object -Line).Lines) lines" }`

Expected: All 28+ guide files present. Each has at least 3 lines of substantive content.

- [ ] **Step 2: Mod source audit**

Verify every mod table entry has a valid source. Check: no entry has a blank Source column. No placeholder text like "(To research)" remains.

- [ ] **Step 3: Conflicts check**

Read `conflicts.md`. Verify no two mods listed in the same wave category are known to conflict. If any found, mark one with `⚠` and add to conflicts.md.

- [ ] **Step 4: Dependency check**

Read every category file. For each mod with a dependency note, verify the dependency is also in the modlist (same wave or earlier wave).

- [ ] **Step 5: PDF build test**

Run: `.\build-pdf.bat /Q`

Expected: Exits with code 0. File `output/fields-vines-and-barrels.pdf` exists and is > 10KB. Verify it opens correctly in a PDF reader.

- [ ] **Step 6: Initial commit**

```bash
git add -A
git commit -m "feat: initial Fields, Vines & Barrels modlist and guide"
```
