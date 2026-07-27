# FTB Quests Design — Minecraft Modpack Quest Chapters

**Status**: Design — approved  
**Date**: 2026-07-27  
**Scope**: FTB Quests configuration files (SNBT) for 6 mods

## Decisions

| Area | Choice |
|------|--------|
| Philosophy | Hybrid — milestones + optional breadcrumbs |
| Chapter layout | One chapter per mod, Phase sections inside (Getting Started / Industrial Ascent / Endgame), cross-links for integration |
| Gating | Soft — sequential within chapter, no cross-chapter blocking |
| Milestone rewards | Phase 1-2: XP + scaled materials (alloys, circuits, energy tablets). Phase 3: advanced components (polonium pellets, refined obsidian, antimatter pellets). No finished machines or utility items. |
| Breadcrumb rewards | XP bottles + small materials (ingots, redstone). |
| Teaching style | Full tutorials — 2-5 sentences of context, tips, known pitfalls. First-use concepts get glossary-style explanations (256 SU explained, FE explained, channels explained). |
| Quest detection | Auto-detect via FTB Quests task system (item in inventory, dimension entry, kill). No manual turn-in required. |
| File output | `config/ftbquests/quests.snbt` + `config/ftbquests/rewards.snbt` |
| Game mode | Survival only. Single player. No creative-mode shortcuts. |

## Chapter Summary

| Chapter | Total Quests | Milestones | Breadcrumbs | Phase 1 | Phase 2 | Phase 3 |
|---------|-------------|------------|-------------|---------|---------|---------|
| Create | ~31 | 19 | 12 | 8+6 | 8+4 | 3+2 |
| Mekanism | ~33 | 20 | 13 | 8+7 | 9+4 | 3+2 |
| AE2 | ~23 | 13 | 10 | 4+7 | 8+3 | 1+0 |
| Apotheosis | ~17 | 11 | 6 | 4+3 | 5+2 | 2+1 |
| Stellaris | ~17 | 11 | 6 | 5+3 | 4+2 | 2+1 |
| MineColonies | ~40 | — | — | Pre-written by MineColonies Questline mod | — | — |
| **Total** | **~161** | **74** | **47** | 29+26 | 34+15 | 11+6 |

---

## Create Chapter

### Getting Started (Phase 1, hours 0-20)

**Milestones (8):**
1. Rotational Power — Water Wheel + Power explanation (SU — Stress Units)
2. Mechanical Processing — Millstone + Mechanical Press
3. Brass Age — Brass Ingots via Mixer + Blaze Burner
4. Precision Crafting — Mechanical Crafter + Sequenced Assembly
5. Air & Heat — Encased Fan (washing, smelting, haunting)
6. Logistics Layer — Belt + Chute + Funnel + Smart Chute
7. Automatic Harvesting — Mechanical Harvester + Drill
8. Rails & Trains — Assemble a Train (Casing + Bogey + Controls + Track)

**Breadcrumbs (6):**
- Andesite Alloy (fundamental material)
- Cogwheel & Gearbox (speed/rotation mechanics)
- Engineer's Goggles (essential diagnostic tool)
- Redstone Link (wireless redstone)
- Windmill Bearing (passive power alternative, SU range)
- Sequenced Assembly deep dive (multi-step processing)

**Fluid Systems** — moved to a Phase 1 milestone. Fluid Pump + Tank + Pipe.

### Industrial Ascent (Phase 2, hours 40-150)

**Milestones (8):**
9. Steam Power — Steam Engine (up to 16,384 SU)
10. Steel & Aluminum (TFMG) — Blast Furnace + Electrolysis
11. Contraptions — Gantry Carriage + Mechanical Piston + Bearing
12. Mechanical Arm — precise item placement
13. Oil Processing (TFMG) — Pump Jack + Distillation Tower
14. Distillation Tower (TFMG) — diesel, kerosene, lubricant
15. Programmable Contraptions — Sequence Gearshift + Linked Controller
16. Diesel Engine — massive SU from refined diesel

**Breadcrumbs (4):**
- Stockpile Switch (inventory threshold detection)
- Train Station + Signal (rail automation)
- Speed Controller (precise RPM)
- Content Observer (redstone threshold)

### Endgame (Phase 3, hours 150+)

**Milestones (3):**
17. Mega-Factory — all production lines interconnected
18. Kinetic Megastructure — 50+ machines on one rotational network
19. Self-Regulating Factory — demand-based auto-start/stop via AE2 Level Emitter + Redstone Link + Clutch

**Breadcrumbs (2):**
- Big Cannons Integration — automated artillery for colony defense
- Infinite Resource Loop — cobblestone→gravel→sand→glass chain

**Integration cross-links across chapter:**
- Farmer's Delight (flour→dough via Millstone)
- AE2 autocrafting preview (Sequenced Assembly future automation)
- Colony Logistics (feed builder huts via belts)
- Cross-link: Enriched Alloy needed for AE2 Inscriber
- Steam 'n' Rails (dispatcher, conductor)
- Create: TFMG Energy Converter (Create SU → FE)

---

## Mekanism Chapter

### Getting Started (Phase 1, hours 5-30)

**Milestones (8):**
1. Power Generation — Heat Generator + FE explanation (Forge Energy)
2. Basic Metallurgy — Metallurgic Infuser (infuse types: redstone/carbon/diamond)
3. Ore Doubling — Enrichment Chamber + Energized Smelter chain (1 ore → 2 ingots)
4. Atmospheric Suit — Scuba Mask + Tank + Free Runners
5. Material Tiers — Osmium tools/armor (Mekanism Tools progression)
6. Energy Storage — Basic Energy Cube (1.6 MFE, buffer concept)
7. Portable Power — Energy Tablet + Chargepad
8. Atomic Disassembler — ultimate multi-tool (pick, axe, shovel, hoe, sword, shears, vein mode)

**Breadcrumbs (7):**
- Steel Casing (mid-tier machine structural component)
- Configurator (Mekanism wrench — side configs)
- Gas-Burning Generator (ethylene power)
- Purification Chamber (3x ore processing)
- Teleporter (cross-base fast travel, FE cost)
- Machine Upgrade System (speed/energy/filter upgrades)
- Tiered Factories (Basic → Advanced → Elite → Ultimate)

### Industrial Ascent (Phase 2, hours 40-150)

**Milestones (9):**
9. Ore Tripling — Purification Chamber + Crusher chain
10. Ore Quintupling — full chemical processing chain: Dissolution → Washer → Crystallizer → Injection
11. Thermal Evaporation Plant — brine production (desert multiblock)
12. Digital Miner — automated teleportation-based mining
13. Chemical Factory — integrated chemical processing facility (full pipe tree)
14. Induction Matrix — megastorage FE (Induction Cells + Providers multiblock)
15. Seismic Surveying — Vibrator + Reader (underground mapping)
16. Pressurized Reaction Chamber — Ethylene + HDPE plastics
17. Fission Reactor — nuclear power (7 MFE/t), safety (coolant, containment, meltdown risk)

**Breadcrumbs (4):**
- Boiler (fission heat → steam → Industrial Turbine)
- Radiation safety (Nuclear Waste, Polonium, waste barrels)
- Chemical Processing Chain (full flowchart: Water→Hydrogen→HCl→Injection)
- Robit (companion, inventory, crafting)

### Endgame (Phase 3, hours 150+)

**Milestones (3):**
18. Fusion Reactor — laser-initiated D-T reaction, 200 MFE/t, zero waste
19. Quantum Entangloporter — instant wireless item/fluid/gas/FE across dimensions
20. SPS / MekaSuit — Supercritical Phase Shifter → Antimatter → Gravitational Modulating Unit (creative flight)

**Breadcrumbs (2):**
- Polonium Production — Nuclear Waste → Solar Neutron Activator → Polonium
- Antimatter Production — full chain: uranium → fissile fuel → reactor → waste → polonium → SPS → antimatter

**Integration cross-links:**
- Mekanism Tools gear progression (Osmium→Bronze→Refined Obsidian→MekaSuit)
- Apotheosis affixes on Mekanism Tools gear
- Create TFMG Energy Converter (Create SU → FE)
- AE2 Processing Pattern automation of chemical recipes
- Stellaris power: Mekanism cables power off-world machines

---

## AE2 Chapter

### Getting Started (Phase 1, hours 10-40)

**Milestones (4):**
1. Certus Quartz — mining + crystal growth (water seed method)
2. First Processor — Inscriber + Logic Press + 3 other presses (meteorites)
3. ME Network — Controller + Drive + Terminal (channel explanation: 32/face, cable types)
4. Storage Disks — 1K Storage Cell (bytes explanation: 1K=1024 item types)

**Breadcrumbs (7):**
- Channels explained (32/face controller, 8/32 cable, Smart Cable debugging)
- Cable types (Glass, Covered, Smart, Dense)
- Storage Bus (connect external inventories: barrels, Mekanism chests, colony warehouse)
- Facades (hide cables inside blocks)
- Cell Workbench (partition cells by item type)
- Formation & Annihilation Plane (block placer/breaker)
- Wireless Terminal (ME access from anywhere same dimension)

### Industrial Ascent (Phase 2, hours 40-150)

**Milestones (8):**
5. Autocrafting Setup — Crafting CPU + Molecular Assembler + Pattern Provider + Processing Pattern
6. Crafting Patterns — crafting vs processing vs smithing types, Pattern Encoding Terminal
7. Processing Automation — ME Interface + Mekanism machine via Import/Export Buses
8. Large Autocrafting — multiple CPUs, Co-Processors (parallel crafting)
9. ME Interface — bidirectional AE2↔world bridge (stock items, accept external automation)
10. Sub-Networks — channel-efficient subnet via Storage Bus→Interface
11. P2P Tunnels — 32 channels compressed into 1, Memory Card linking, 1024 channels on one Dense Cable

**Breadcrumbs (3):**
- Import/Export Bus (filtered auto-push/pull)
- Level Emitter (demand-based redstone — "if iron < 1000 → activate Mekanism factory")
- Matter Condenser (trash → Matter Balls → Singularities for Quantum Bridge)
- Wireless Universal Terminal (AE2 + QIO + fluids in one device)

### Endgame (Phase 3, hours 150+)

**Milestones (1):**
12. Quantum Network Bridge — cross-dimension network via Quantum Ring + Entangled Singularities

**Breadcrumbs (1):**
- Spatial Storage — entire rooms stored in cells, instant transport, massive FE cost

**Integration cross-links:**
- Enriched Alloy from Mekanism Infuser (Mekanism cross-link)
- Chunk Loaders for ME network uptime across dimensions
- ColonyLink: Storage Bus on MineColonies warehouse
- Create Interface: AE2 Interface → Belt for auto-providing items to contraptions
- Stellaris: Quantum Bridge connects Earth ↔ Moon ↔ Mars ↔ Glacio networks
- P2P tunnels for Mekanism mining outpost channel extension

---

## Apotheosis Chapter

### Getting Started (Phase 1, hours 0-30)

**Milestones (4):**
1. Affix Gear Drops — rarity system (Common→Mythic), affix types (Ruthless, Sturdy, Nimble, etc.), compatibility with Mekanism Tools + Simply Swords
2. Scrap to Upgrade — Salvaging Table + Gem Dust (currency of gem crafting)
3. First Gem — Rough gems → Gem Cutting Station → Cut gems (+50%), socketing via Socketing Table
4. Rarity Climb — full Uncommon+ set with one Cut gem per piece (Phase 1 goal)

**Breadcrumbs (3):**
- Rarity colors (White=Common, Yellow=Uncommon, Cyan=Rare, Purple=Epic, Gold=Mythic)
- Affix synergies (stack same-type affixes for exponential returns)
- Boss modifiers primer (hunt affixed bosses for Mythic gear — Phase 2 content)

### Industrial Ascent (Phase 2, hours 30-150)

**Milestones (5):**
5. Tiered Bookshelves — Hellshelf, Seashelf, Endshelf (enable Sharpness VIII, Protection VIII, Fortune V)
6. Library of Alexandria — infinite enchanted book storage, auto-combining (IV+IV=V)
7. Gem Mastery — socket a Flawless gem (+100% stat value, two Cut gems combined)
8. Affixed Boss Hunting — kill 3 affixed bosses (Tough, Blinding, Plagued, Chaotic modifiers), strategy tips per affix
9. Spawner Engineering — Silk Touch spawner, modify entity type + spawn delay + range, XP farm automation

**Breadcrumbs (2):**
- Enchantment Library combos (auto-merge, periodic check)
- Salvage automation (Mekanism pipe/Create funnel → Salvaging Table → Gem Dust to AE2)

### Endgame (Phase 3, hours 150+)

**Milestones (2):**
10. Mythic Arsenal — full Mythic set + 4 Flawless gems per piece + max enchantments
11. Perfect Roll — Mythic weapon with ideal affix combination (Ruthless+Titanic+Nimble)

**Breadcrumb (1):**
- Deadly Module traps (telegraphed dungeon hazards, high risk = high loot, GraveStone safety net)

**Integration cross-links:**
- Mekanism Tools + Simply Swords weapons all roll Apotheosis affixes
- Relics + Runes (Wave 3) synergize with affix builds
- AE2: Storage Bus on salvage chest for mass processing
- Boss affixes are the primary Mythic gear source — ties to Wave 5 combat mods

---

## Stellaris Chapter

### Getting Started (Phase 1 late / Phase 2 early, hours 35-60)

**Milestones (5):**
1. Space Program — Rocket Station + Fuel Refinery (oil→rocket fuel)
2. Space Suit — full suit (steel+glass+rubber/leather), oxygen meter explanation
3. Oxygen System — Solar Panel + Oxygen Distributor + Water Separator (life support loop)
4. First Rocket — Tier 1 assembly (nose cone, body, engine, fins), Moon destination
5. Moon Landing — place Waystone + Solar Panel + Oxygen Distributor, mine Desh

**Breadcrumbs (3):**
- Oxygen management (blue bar, 10 min duration, Distributor refill range)
- Launch Pad mechanics (return ticket, multiple pads = fast planet-hopping)
- Chunk loading in space (planets are dimensions — Chunk Loaders mandatory)

### Industrial Ascent (Phase 2, hours 60-150)

**Milestones (4):**
6. Tier 2 Rocket — Desh rocket, reaches Mercury (Ostranium, extreme heat) and Venus (Tharsite, acid rain, high gravity)
7. Planetary Resources — resource-to-tier mapping: Desh→T2, Ostranium→T3, Tharsite→T4. Process ores through Mekanism 5x on Earth
8. Mars Base — Tier 3 Rocket (Ostranium), permanent base: solar farm, Mekanism power, AE2 Quantum link, Chunk Loader, Digital Miner
9. Interplanetary Logistics — Waystones (free instant via config) + AE2 Quantum Bridge (storage across dimensions) + Create Trains (planet-side transport)

**Breadcrumbs (2):**
- Rover (planet surface vehicle, inventory, fuel)
- Alien Mobs (dust worms on Mars, ice golems on Glacio, combat gear recommendations)
- Space Suit upgrades (higher tiers, more oxygen, environmental protection)

### Endgame (Phase 3, hours 150+)

**Milestones (2):**
10. Glacio — Tier 4 Rocket (Tharsite), ice planet, endgame crystals, extreme cold, toughest mobs
11. Interplanetary Empire — automated bases on Earth/Moon/Mars/Glacio, AE2 across dimensions, Chunk Loaders everywhere, resources flow automatically

**Breadcrumb (1):**
- Stellaris↔Mekanism integration: planet ores → Entangloporter → Earth 5x line → AE2 → autocraft rockets

**Integration cross-links:**
- Mekanism: power (cables), ore processing (5x on planet ores), Digital Miner (auto-extraction on Mars), Entangloporter (instant planet-to-Earth transport)
- AE2: storage, autocrafting rocket components, Quantum Bridge (cross-dimension network), P2P (channel extension)
- Create: trains (planet-side logistics), Pump Jack (oil extraction)
- Farmer's Delight: meals edible in space with oxygen
- Apotheosis: affixes on space suit (if tags align)

---

## Config Implementation Notes

### File Location
```
config/ftbquests/
├── quests.snbt          ← All chapters, quests, tasks, dependencies, tutorial text
├── rewards.snbt         ← XP tables, material tables, scaled by phase
└── quest_icons/         ← Optional custom 32x32 PNG icons per quest (if desired)
```

### Quest Template Structure (SNBT concept)
Each quest entry in `quests.snbt` follows:
```
quest_id: {
    title: "Rotational Power"
    subtitle: "Harness water to spin shafts"
    description: ["Create's power system is rotational..." "..."]
    icon: "create:water_wheel"
    x: 0.5, y: 0.0              // Position in chapter grid
    dependencies: []             // Prerequisite quest IDs
    tasks: [{
        id: "..."
        type: "item"             // item, dimension, kill, checkmark, etc.
        item: "create:water_wheel"
        count: 1L
    }]
    rewards: [{
        id: "..."
        type: "item"
        item: "minecraft:experience_bottle"
        count: 8
    }]
}
```

### Reward Scaling

| Quest Type | Phase 1 | Phase 2 | Phase 3 |
|-----------|---------|---------|---------|
| Breadcrumb | XP bottles (8-12) + basic ingots (4-8 iron, copper, redstone) | Same as Phase 1 | Same as Phase 1 |
| Milestone | XP (16-24 bottles) + scaled materials (alloys, steel, control circuits, energy tablets) | XP (32-48 bottles) + advanced materials (refined obsidian, HDPE sheets, certus quartz, fissile fuel) | Advanced components only (polonium pellets, antimatter pellets, refined obsidian blocks, glacio crystals) |

### Quest Ordering (chapter grid)

Quests are placed on a 2D grid (x/y coordinates). Layout convention:
- **Left column (x=0.0)**: Milestones, vertically stacked by dependency
- **Right column (x=1.0)**: Breadcrumbs, vertically stacked
- **Dependencies**: Quest below depends on quest above (arrow direction). No cross-branch dependencies.

### Tutorial Text Standards

Every quest description follows this pattern:
1. **Concept introduction** — What is this thing? (1-2 sentences)
2. **How it works** — Mechanics, connections, dependencies (1-2 sentences)
3. **Pro tip** — Optimization, pitfall avoidance, integration note (1 sentence)

First-use glossary entries (included inline in descriptions):
- **SU** (Stress Units): "Create's power measurement. One water wheel = ~256 SU. Machines list SU usage in their tooltip. Engineers Goggles show live stress."
- **FE** (Forge Energy): "Universal power unit. 1 FE = 1 RF = 1 IF. Generators produce FE, machines consume FE, Energy Cubes buffer it."
- **Channels** (AE2): "Every AE2 device uses 1 channel. Controller provides 32/face. Dense Cable carries 32, regular 8. Smart Cable shows usage visually."
- **Affixes** (Apotheosis): "Random stat bonuses on gear. Rarity = gem sockets. Affix types apply to specific gear slots."
- **Oxygen** (Stellaris): "Blue bar lower-left. Full suit = ~10 min. Distributor refills within range."

### Cross-Link Implementation

Cross-links are implemented as **descriptive text references** in quest descriptions, not as actual FTB Quests dependencies (soft gating). Example:
- "This requires **Enriched Alloy** — see the Mekanism chapter's Basic Metallurgy milestone if you haven't crafted it yet."
- "Once you have a functioning AE2 network (see AE2 chapter), attach a Storage Bus to..."

MineColonies Questline integration: the pre-written colony quests are in the MineColonies chapter automatically. Cross-links from other chapters reference specific MC milestones ("After MC 'Industrial Revolution' research...").

### Building Integration

- Chunk Loaders: every quest involving off-world bases (Stellaris Moon/Mars/Glacio) explicitly mentions placing a Chunk Loader.
- Waystones: config set to free teleport (enableCosts=false). Every Stellaris planet base quest instructs placing a Waystone for instant return.
- GraveStone Mod: death is forgiving (keep XP, 24h grave protection). Affixed boss quests mention Gravestone safety net.

## Verification

After all quests authored:
1. Launch Minecraft, open quest book (`-` key)
2. Verify all chapters appear with correct quest counts
3. Complete one quest → verify dependency chain unlocks next
4. Verify no cross-chapter hard dependencies block progression
5. Verify rewards scale by phase as designed
6. Verify MineColonies Questline chapter loads correctly
7. Verify EMI works from quest book (click quest item → `R`/`U`)

## Constraints

- No creative-mode shortcuts. All quests completable in survival.
- No multiplayer-only features (FTB Teams runs transparently — team of 1).
- No time-limited quests. No penalties for ignoring the quest book.
- Quest book key is configurable. No on-screen HUD element.
- No finished machines as rewards. No utility items (waystones, chunk loaders) as rewards.
- Quest data lives in `config/ftbquests/` — no additional mods needed beyond what's in the pack.
