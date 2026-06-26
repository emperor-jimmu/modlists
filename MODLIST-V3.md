# Mod List V3 — Minecraft 1.21.1 NeoForge

**Status: Finalized — all gaps resolved**

NeoForge version of the modpack. Core difference from V2 (Fabric): Wave 1 uses **Create + Mekanism + AE2** instead of Tech Reborn + Logistics + Powah. Wave 3 uses **Apotheosis** instead of Savaru's Affixology. Wave 4 uses **Farmer's Delight** instead of Let's Do ecosystem. Additional dimensions include **Twilight Forest**.

---

## Wave 0 — Foundation

### Performance & Rendering

| Mod | Role |
|-----|------|
| Embeddium | Rendering engine (Sodium port) |
| Iris | Shader loader (v1.8.14, has NeoForge build) |
| Radium | Server-side optimization (Lithium port) |
| Distant Horizons | LOD rendering |
| Continuity | Connected textures |
| ModernFix | All-in-one perf + bug fixes |
| ImmediatelyFast | Immediate-mode rendering |
| Entity Culling | Hide off-screen entities |
| Dynamic FPS | Background FPS reduction |
| Noisium | Worldgen optimization |

### Visual & Client QoL

| Mod | Role |
|-----|------|
| LambDynamicLights | Dynamic lighting |
| BetterF3 | Customizable debug HUD |
| Sound Physics Remastered | Realistic sound |
| AmbientSounds | Nature ambiance (birds, wind, water) |
| Constant Music | Continuous music (no silence gaps) |

### Inventory & UI

| Mod | Role |
|-----|------|
| JEI | Recipe viewer |
| Jade | Block info HUD |
| Jade Addons | Extra Jade info panels |
| Xaero's Minimap + World Map | Mapping and waypoints |
| AppleSkin | Food hunger/saturation overlay |
| Mouse Tweaks | Inventory management shortcuts |
| Chat Heads | Chat avatars |
| Right Click Harvest | Right-click crop harvest |

### Storage & Travel

| Mod | Role |
|-----|------|
| Sophisticated Storage | Upgradable barrels/chests |
| Sophisticated Backpacks | Portable inventory |
| Waystones | Fast travel between waypoints |
| GraveStone Mod | Keep inventory on death |

### New Dependencies

| Mod | Role |
|-----|------|
| Cloth Config | Config screen library |
| Architectury API | Cross-loader compatibility |
| YACL | Config library |
| Curios API | Accessory slots (replaces Trinkets) |
| CreativeCore | Library (AmbientSounds) |

### Shaderpack

| Shaderpack | Description |
|------------|-------------|
| Complementary Unbound | Two visual styles, Potato→Ultra profiles, block-specific effects |

---

## Wave 1 — Tech (Create + Mekanism + AE2)

The classic tech trio. Create handles mechanical automation, Mekanism handles industrial processing, AE2 handles digital storage and autocrafting.

### Core Tech

| Mod | Role |
|-----|------|
| **Create** 6.0.10 | Mechanical automation — rotational power, water wheels, windmills, gear trains, conveyor belts, deployers, sequenced crafters, trains |
| **Mekanism** 10.7.19.85 | Industrial processing — ore multiplication (2x→5x), digital miner, fusion reactor, superdense energy storage, MekaSuit (flight, invulnerability) |
| **AE2** 19.2.17 | Digital storage — ME drives, autocrafting, P2P tunnels, spatial storage. The storage backbone |

### How They Work Together

| Layer | Mod |
|-------|-----|
| Power generation | Create (water wheels, windmills, steam) + Mekanism (advanced generators, fusion reactor) |
| Ore processing | Mekanism — up to 5x ore multiplication with chemical processing |
| Factory automation | Create — conveyor belts, deployers, sequenced crafters |
| Storage | AE2 — ME drives, storage busses, crafting CPUs |
| Transport | Create trains + AE2 P2P tunnels |
| Endgame | Mekanism fusion reactor + MekaSuit + AE2 autocrafting |### Ores

| Mod | Role |
|-----|------|
| Create (built-in) | Zinc, brass, copper |
| Mekanism (built-in) | Osmium, tin, lead, uranium, fluorite |
| Skniro's Nether & End Ores | Additional ores in Nether and End dimensions |

---

## Wave 2 — Exploration (World & Dimensions)

### Overworld Worldgen

| Mod | Role |
|-----|------|
| Terralith | Overhauled Overworld biomes |
| Tectonic | Better terrain shape — deeper valleys, taller mountains, cliffs |
| Regions Unexplored | 65+ new Overworld biomes with unique trees and plants |

### Structures

| Mod | Role |
|-----|------|
| YUNG's Better Dungeons | Overhauled dungeons |
| YUNG's Better Mineshafts | Improved mineshafts |
| YUNG's Better Strongholds | Larger, more complex strongholds |
| YUNG's Better Desert Temples | Multi-room desert temples |
| YUNG's Better Jungle Temples | Jungle temples with traps |
| YUNG's Better Ocean Monuments | Redesigned ocean monuments |
| YUNG's Better Witch Huts | Expanded witch huts |
| YUNG's Better Nether Fortresses | Improved nether fortresses |
| YUNG's Better End Island | Better End island terrain |
| YUNG's Better Caves | Larger, more varied caves |
| Structory | New hand-crafted structures |
| Towns & Towers | Better village generation |
| Additional Structures | 200+ new structures |

### Dimensions

| Mod | Role |
|-----|------|
| The Aether | Sky dimension — safe islands, gear progression, dungeons with bosses |
| Deeper and Darker | The "Otherside" dimension — deep dark themed, warden gear |
| Twilight Forest | Classic dimension — 6+ bosses with progression gates, unique loot, enchanted forest biomes |

### End Overhaul

| Mod | Role |
|-----|------|
| **BetterEnd NeoForge** v21.0.25 | Full End overhaul — 24+ biomes, new mobs, gear, custom music |
| **Nullscape** v1.2.14 | End biome transformation — alien/void landscapes, floating islands |
| **Moog's End Structures** v2.0.3 | New structures to fill the End dimension |
| **Ender's Delight** v1.3.0 | End-themed food for Farmer's Delight |

### New Dependencies (End Overhaul)

| Mod | Role |
|-----|------|
| BCLib NeoForge | Core library — required by BetterEnd |
| WorldWeaver NeoForge | Worldgen library — required by BetterEnd |
| WunderLib NeoForge | Utility library — required by BetterEnd |
| Moog's Structure Lib | Library — required by Moog's End Structures |

### Navigation

| Mod | Role |
|-----|------|
| Explorer's Compass | Craftable structure/biome finder |

---

## Wave 3 — Equipment Magic & RPG

### RPG Progression

| Mod | Role |
|-----|------|
| Skill Tree (RPG Series) | XP leveling — spend points on attributes and passives |
| Pufferfish's Skills | Underlying skill system framework |
| Spell Engine | Magic casting framework |
| Spell Power | Magic attribute system (spell damage, crit, haste) |

### Equipment

| Mod | Role |
|-----|------|
| Simply Swords | 60+ unique weapons with passive/activated abilities |
| Relics RPG | Legendary accessories with unique abilities |
| Runes | Socketable runes for weapons/tools |
| Curios API | Accessory slots (rings, amulets, belts, gloves) |

### Loot & Affixes

| Mod | Role |
|-----|------|
| **Apotheosis** | Rarity tiers, random affixes, gem socketing, enchanting overhaul. Replaces Savaru's Affixology with more depth |

---

## Wave 4 — Food, Farming & Comfort

| Mod | Role |
|-----|------|
| **Farmer's Delight** 1.3.2 | Cooking hub — cutting board, cooking pot, stove, new crops |
| **Brewin' And Chewin'** 4.5.0 | Drinks and fermentation — beer, wine, mead, whiskey |

Further FD addons (Delightful, Storage Delight, Nether's Delight, End's Delight) — TBD, available on NeoForge.

---

## Wave 5 — Combat & Mobs

| Mod | Role |
|-----|------|
| Better Combat | Melee combat animations — weapon reach, sweeping, attack speed |
| Mutant Monsters | Mutant zombie, skeleton, creeper, enderman — unique drops |
| L_Ender's Cataclysm | Epic boss fights — Leviathan, Netherite Monstrosity, Ender Guardian (CurseForge, NeoForge 1.21.1) |
| When Dungeons Arise | Roguelike combat structures with loot |
| Enchantment Descriptions | Shows enchantment effects in tooltips |

Apotheosis also adds boss modifiers and elite mob affixes — partially covers what Champions would have done.

---

## Wave 6 — Building & Decoration

| Mod | Role |
|-----|------|
| Chipped | Hundreds of decorative block variants for every material |
| Supplementaries | Vanilla+ decoration — jars, signposts, faucets, weather vanes |
| Macaw's Bridges | Bridges in all wood types |
| Macaw's Doors | Vanilla-style doors for every wood |
| Macaw's Roofs | Roofing blocks |
| Macaw's Windows | Window variants |
| Building Wands | Faster large-scale construction |
| Handcrafted | Furniture — chairs, tables, shelves, curtains |

---

## Wave 7 — Music & Ambiance

Already included in Wave 0: AmbientSounds + Constant Music.

---

## Mod Count Summary

| Wave | Count | Notes |
|------|-------|-------|
| Wave 0 — Foundation | ~30 | Performance, QoL, storage, travel, graves |
| Wave 1 — Tech | 3 (+2 ore) | Create, Mekanism, AE2 |
| Wave 2 — Exploration | ~26 | YUNG's collection, regions, dimensions, End overhaul |
| Wave 3 — Equipment Magic | ~9 | Simply Swords, Apotheosis, Relics, Runes, Skill Tree |
| Wave 4 — Food | 2 | Farmer's Delight, Brewin' And Chewin' |
| Wave 5 — Combat | 5 | Better Combat, Mutant Monsters, Cataclysm, Dungeons Arise |
| Wave 6 — Building | 8 | Chipped, Supplementaries, Macaw's, Handcrafted, Building Wands |
| **Total** | **~82** | All confirmed NeoForge 1.21.1 |

---

## Key Changes from V2 (Fabric)

| V2 (Fabric) | V3 (NeoForge) |
|-------------|---------------|
| Sodium | Embeddium |
| Lithium | Radium |
| EMI | JEI |
| Trinkets | Curios API |
| Tech Reborn + Logistics + Powah | Create + Mekanism + AE2 |
| Savaru's Affixology | Apotheosis |
| Let's Do ecosystem | Farmer's Delight + Brewin' And Chewin' |
| AdventureZ | L_Ender's Cataclysm |
| Champions | Apotheosis (partial coverage) |
| BetterEnd (End overhaul) | BetterEnd NeoForge + Nullscape + Moog's End Structures + Ender's Delight |
| Ambient Leaves (cosmetic) | Skipped |

### What's New in V3
- Create (mechanical automation, trains)
- Mekanism (fusion reactor, MekaSuit, 5x ore)
- AE2 (digital storage, autocrafting)
- Apotheosis (affixes, gems, enchanting)
- Farmer's Delight (cooking hub)
- Twilight Forest (dimension with bosses)
- L_Ender's Cataclysm (epic boss fights)
- Chipped + Supplementaries + Macaw's + Handcrafted (building blocks)
