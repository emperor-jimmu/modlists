# FTB Quests Design — Minecraft Modpack Quest Chapters

**Status**: Design — approved  
**Date**: 2026-07-27  
**Scope**: FTB Quests configuration files (SNBT) for 6 mods

## Decisions

| Area               | Choice                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
|--------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Philosophy         | Hybrid — milestones + optional breadcrumbs                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| Chapter layout     | One chapter per mod, Phase sections inside (Getting Started / Industrial Ascent / Endgame), cross-links for integration                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| Gating             | Soft — sequential within chapter, no cross-chapter blocking                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| Milestone rewards  | Phase 1: XP + starter materials (andesite alloy, enriched alloy, certus quartz, rough gems — items the player uses immediately). Phase 2: XP + mid-game materials (steel ingots, brass, basic control circuits, cut gems, HDPE sheets — consumable supplies, not infrastructure). Phase 3: XP + rare materials (flawless gems, nether stars, dragon's breath, glacio crystals — used for endgame crafting the player is actively pursuing). **Rule**: the reward must be usable within the next 2 quests. If the player doesn't have the machine to process it, don't give it. |
| Breadcrumb rewards | XP bottles + single-ingredient materials (iron ingots, redstone, lapis — consumables).                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |

**Reward exclusion rules:**

- No placement blocks (machines, generators, workstations, multiblock components).
- No utility items (waystones, chunk loaders, teleporters, building wands, chunk claimers).
- No creative-only items, spawn eggs, or command-block-adjacent rewards.
- No components the player can't process yet (no polonium without SPS, no antimatter without Phase Shifter).
- Energy Tablets and Mekanism Tools are **allowed** — consumable gear/tools, not production infrastructure.

| Teaching style     | Contextual — 1-2 sentences per quest explaining purpose and integration. First-use concepts get a single glossary sentence (SU, FE, channels). No multi-paragraph tutorials — the player has EMI and GUIDE.md for deep dives. |
| Quest detection    | Auto-detect via FTB Quests task system (item in inventory, dimension entry, kill). Every detection quest includes a **fallback checkmark task** — if auto-detect fails, the player can manually mark complete. |
| Quest hierarchy    | Milestones use **hexagon** quest shape; breadcrumbs use **square**. Visual distinction in the chapter grid — hexagons stand out, squares recede. |
| Auto-completion    | Endgame milestones auto-detect prerequisite infrastructure. If a player has a Fusion Reactor, all prior Mekanism Phase 2 milestones auto-complete on chapter open. Prevents quest book shame for players who progress without reading. |
| Chapter discovery   | All 5 chapters visible immediately. MineColonies chapter sorted first (pre-written, best onboarding). Remaining chapters ordered: Create, Mekanism, AE2, Apotheosis, Stellaris. Chapter descriptions include a single "Start when you..." sentence (e.g., "Start when you've found your first Certus Quartz crystal"). No gating on chapter visibility. |
| First-launch check  | **Before any quest authoring**: launch the game with FTB Quests installed. Create one test quest via `/ftbquests editing_mode` in each chapter. Export the resulting `quests.snbt`. Document the ACTUAL SNBT format. Verify MineColonies Questline chapter loads. Only then begin authoring. |
| Verification         | Smoke-test: 3 quests per chapter (first milestone, first breadcrumb, one Phase 2 milestone). Verify detection works, rewards appear, dependency arrows render. Full verification: one play session cycling through all chapters checking quest completions. |
| File output        | `config/ftbquests/quests.snbt` + `config/ftbquests/rewards.snbt`                                                                                                                                   |
| Game mode          | Survival only. Single player. No creative-mode shortcuts.                                                                                                                                          |

## Chapter Summary

| Chapter      | Total Quests | Milestones | Breadcrumbs | Phase 1                                   | Phase 2 | Phase 3 |
|--------------|--------------|------------|-------------|-------------------------------------------|---------|---------|
| Create       | ~31          | 19         | 12          | 8+6                                       | 8+4     | 3+2     |
| Mekanism     | ~33          | 20         | 13          | 8+7                                       | 9+4     | 3+2     |
| AE2          | ~23          | 13         | 10          | 4+4                                       | 7+3     | 2+3     |
| Apotheosis   | ~17          | 11         | 6           | 4+3                                       | 5+2     | 2+1     |
| Stellaris    | ~17          | 11         | 6           | 5+3                                       | 4+2     | 2+1     |
| MineColonies | ~40          | —          | —           | Pre-written by MineColonies Questline mod | —       | —       |
| **Total**    | **~161**     | **74**     | **47**      | 29+26                                     | 34+15   | 11+6    |

---

## Create Chapter

### Getting Started (Phase 1)

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

### Industrial Ascent (Phase 2)

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

### Endgame (Phase 3)

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

### Getting Started (Phase 1)

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

### Industrial Ascent (Phase 2)

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

### Endgame (Phase 3)

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

### Getting Started (Phase 1)

**Milestones (4):**

1. Certus Quartz — mining + crystal growth (water seed method)
2. First Processor — Inscriber + Logic Press + 3 other presses (meteorites)
3. ME Network — Controller + Drive + Terminal (channel explanation: 32/face, cable types)
4. Storage Disks — 1K Storage Cell (bytes explanation: 1K=1024 item types)

**Breadcrumbs (4):**

- Channels explained (32/face controller, 8/32 cable, Smart Cable debugging)
- Cable types (Glass, Covered, Smart, Dense)
- Storage Bus (connect external inventories: barrels, Mekanism chests, colony warehouse)
- Facades (hide cables inside blocks)

### Industrial Ascent (Phase 2)

**Milestones (7):**
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

### Endgame (Phase 3)

**Milestones (2):**
12. Quantum Network Bridge — cross-dimension network via Quantum Ring + Entangled Singularities
13. Spatial Storage — store entire rooms in cells, instant transport, massive FE cost. Use for moving factories across dimensions, backing up your base, or pocket-dimensioning mob farms.

**Breadcrumbs (3):**

- Wireless Terminal — ME access from anywhere same dimension. Upgrade path: Wireless → Wireless Universal (AE2 + QIO + fluids in one device).
- Cell Workbench — partition cells by item type (dedicated iron cell, gem cell, redstone cell). Prevent one item from flooding all storage.
- Formation & Annihilation Plane — block placer/breaker from ME network. Use with Level Emitter for auto-refilling building materials.

**Integration cross-links:**

- Enriched Alloy from Mekanism Infuser (Mekanism cross-link)
- Chunk Loaders for ME network uptime across dimensions
- ColonyLink: Storage Bus on MineColonies warehouse
- Create Interface: AE2 Interface → Belt for auto-providing items to contraptions
- Stellaris: Quantum Bridge connects Earth ↔ Moon ↔ Mars ↔ Glacio networks
- P2P tunnels for Mekanism mining outpost channel extension

---

## Apotheosis Chapter

### Getting Started (Phase 1)

**Milestones (4):**

1. Affix Gear Drops — rarity system (Common→Mythic), affix types (Ruthless, Sturdy, Nimble, etc.), compatibility with Mekanism Tools + Simply Swords
2. Scrap to Upgrade — Salvaging Table + Gem Dust (currency of gem crafting)
3. First Gem — Rough gems → Gem Cutting Station → Cut gems (+50%), socketing via Socketing Table
4. Rarity Climb — full Uncommon+ set with one Cut gem per piece (Phase 1 goal)

**Breadcrumbs (3):**

- Rarity colors (White=Common, Yellow=Uncommon, Cyan=Rare, Purple=Epic, Gold=Mythic)
- Affix synergies (stack same-type affixes for exponential returns)
- Boss modifiers primer (hunt affixed bosses for Mythic gear — Phase 2 content)

### Industrial Ascent (Phase 2)

**Milestones (5):**
5. Tiered Bookshelves — Hellshelf, Seashelf, Endshelf (enable Sharpness VIII, Protection VIII, Fortune V)
6. Library of Alexandria — infinite enchanted book storage, auto-combining (IV+IV=V)
7. Gem Mastery — socket a Flawless gem (+100% stat value, two Cut gems combined)
8. Affixed Boss Hunting — kill 3 affixed bosses (Tough, Blinding, Plagued, Chaotic modifiers), strategy tips per affix
9. Spawner Engineering — Silk Touch spawner, modify entity type + spawn delay + range, XP farm automation

**Breadcrumbs (2):**

- Enchantment Library combos (auto-merge, periodic check)
- Salvage automation (Mekanism pipe/Create funnel → Salvaging Table → Gem Dust to AE2)

### Endgame (Phase 3)

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

### Getting Started (Phase 1 / Phase 2)

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

### Industrial Ascent (Phase 2)

**Milestones (4):**
6. Tier 2 Rocket — Desh rocket, reaches Mercury (Ostranium, extreme heat) and Venus (Tharsite, acid rain, high gravity)
7. Planetary Resources — resource-to-tier mapping: Desh→T2, Ostranium→T3, Tharsite→T4. Process ores through Mekanism 5x on Earth
8. Mars Base — Tier 3 Rocket (Ostranium), permanent base: solar farm, Mekanism power, AE2 Quantum link, Chunk Loader, Digital Miner
9. Interplanetary Logistics — Waystones (free instant via config) + AE2 Quantum Bridge (storage across dimensions) + Create Trains (planet-side transport)

**Breadcrumbs (2):**

- Rover (planet surface vehicle, inventory, fuel)
- Alien Mobs (dust worms on Mars, ice golems on Glacio, combat gear recommendations)
- Space Suit upgrades (higher tiers, more oxygen, environmental protection)

### Endgame (Phase 3)

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

| Quest Type | Phase 1                                                                                 | Phase 2                                                                                              | Phase 3                                                                                                   |
|------------|-----------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------|
| Breadcrumb | XP bottles (8-12) + basic ingots (4-8 iron, copper, redstone)                           | Same as Phase 1                                                                                      | Same as Phase 1                                                                                           |
| Milestone  | XP (16-24 bottles) + scaled materials (alloys, steel, control circuits, energy tablets) | XP (32-48 bottles) + advanced materials (refined obsidian, HDPE sheets, certus quartz, fissile fuel) | Advanced components only (polonium pellets, antimatter pellets, refined obsidian blocks, glacio crystals) |

### Quest Ordering (chapter grid)

Quests are placed on a 2D grid (x/y coordinates). Layout convention:

- **Column 0 (x=0.0)**: Phase 1 milestones, top to bottom by dependency
- **Column 1 (x=1.5)**: Phase 1 breadcrumbs, top to bottom
- **Column 2 (x=3.0)**: Phase 2 milestones, top to bottom
- **Column 3 (x=4.5)**: Phase 2 breadcrumbs, top to bottom
- **Column 4 (x=6.0)**: Phase 3 milestones, top to bottom
- **Column 5 (x=7.5)**: Phase 3 breadcrumbs, top to bottom

Each column is self-contained. Phase columns are visually separated by a 1.5-unit gap. No cross-phase dependency arrows — each phase column is a fresh start.

**For chapters with many quests per phase** (Create/Mekanism Phase 1): split into sub-columns within the phase. Milestones at x=0.0, breadcrumbs at x=1.5. If breadcrumbs exceed 6, start a second breadcrumb sub-column at x=3.0 (reserving x=4.5 for Phase 2).

**Dependencies**: Quest below depends on quest above (arrow direction within same column). Breadcrumbs have no dependencies on each other or on milestones. Milestones don't depend on breadcrumbs.

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

Cross-links are **descriptive references** in quest text, not actual FTB Quests dependencies. They inform, never block.

**Phase 1 rule**: Every chapter's Phase 1 is fully self-contained. A player can start any chapter, complete all Phase 1 quests, and not need to visit another chapter. Example: AE2 Getting Started teaches "craft Enriched Alloy" by saying "use EMI to find the recipe — requires Mekanism's Metallurgic Infuser" rather than linking to the Mekanism chapter as a prerequisite.

**Phase 2+ rule**: Cross-links reference specific quests, but never as hard dependencies. A player who hasn't touched Create can still complete Mekanism's "Ore Quintupling" milestone — the quest text says "the full chemical chain. For automated item routing, see Create's Logistics Layer milestone" but the quest completes on detection alone.

**Cross-link format** (in quest descriptions):

- "This machine needs **Enriched Alloy** (check EMI — alloyed in a Mekanism Infuser)."
- "For automated item delivery, see **Create chapter: Logistics Layer** milestone. Not required to complete this quest."
- "After MC 'Industrial Revolution' research, return to this chapter for Phase 2 quests."

**No cross-link chain traps**: A player must never see quest text that requires visiting 3+ other chapters to understand. Maximum one cross-reference per quest.

### Building Integration

- Chunk Loaders: every quest involving off-world bases (Stellaris Moon/Mars/Glacio) explicitly mentions placing a Chunk Loader.
- Waystones: config set to free teleport (enableCosts=false). Every Stellaris planet base quest instructs placing a Waystone for instant return.
- GraveStone Mod: death is forgiving (keep XP, 24h grave protection). Affixed boss quests mention Gravestone safety net.

## Verification

### Pre-authoring (before writing any quests)

1. Launch game with FTB Quests + all dependencies installed
2. Run `/ftbquests editing_mode` — verify editor opens
3. Create one test quest per chapter (6 quests total). Export `quests.snbt`.
4. Document the ACTUAL SNBT format the mod uses (not the conceptual template)
5. Verify MineColonies Questline chapter loads and renders correctly
6. Kill server, confirm `config/ftbquests/quests.snbt` exists and is valid

### Smoke test (after authoring)

Test 3 quests per chapter, minimum 18 quests checked:

1. First milestone (Phase 1) — verify detection works, reward appears, dependency arrow renders
2. First breadcrumb — verify hexagonal/square visual distinction
3. One Phase 2 milestone — verify dependency chain from Phase 1 → Phase 2

Per-quest checks: item detection fires, fallback checkmark works, reward item matches spec, tutorial text renders, EMI `R`/`U` works from quest book.

### Full verification (after all quests authored)

One play session, fresh world, survival mode:

1. Open quest book — verify all 6 chapters visible, MineColonies first
2. Complete Create Phase 1 chain — verify sequential unlocks work
3. Switch to Mekanism — verify Phase 1 is self-contained (no Create dependency)
4. Craft a Phase 3 item without doing Phase 2 quests — verify auto-completion fires
5. Use fallback checkmark on a detection quest — verify manual completion works
6. Verify no reward includes: machines, waystones, chunk loaders, creative items
7. Complete one quest in each chapter — verify cross-references appear but don't block

## Constraints

- No creative-mode shortcuts. All quests completable in survival.
- No multiplayer-only features (FTB Teams runs transparently — team of 1).
- No time-limited quests. No penalties for ignoring the quest book.
- Quest book key is configurable. No on-screen HUD element.
- No finished machines as rewards. No utility items (waystones, chunk loaders) as rewards.
- Quest data lives in `config/ftbquests/` — no additional mods needed beyond what's in the pack.
