# Mod List — NeoForge 1.21.1

**Status: Research phase — mapping Fabric mods to NeoForge equivalents**

This document outlines what a NeoForge version of this modpack would look like. The same 4 pillars apply (power fantasy, easy-to-standard difficulty, 200h+ content, chill living). The core difference is that NeoForge gives access to mods like Create, Mekanism, AE2, Ars Nouveau, Iron's Spells, and Apotheosis — mods that are unavailable on Fabric.

---

## Migration Summary

| Aspect | Fabric (Current) | NeoForge (Proposed) |
|--------|-----------------|---------------------|
| Performance | Sodium + Iris + Lithium | Sodium + Iris + Lithium |
| Recipe Viewer | EMI | JEI |
| Tech pillar | Tech Reborn + Logistics + Powah | **Create + Mekanism + AE2** |
| Magic pillar | Gear-based (Simply Swords + Affixology) | **Ars Nouveau + Apotheosis + Iron's Spells** |
| Equipment slots | Trinkets | Curios API |
| Food pillar | Let's Do ecosystem | **Farmer's Delight** + Brewin' And Chewin' + Delightful |
| Combat | Mutant Monsters + AdventureZ | Cataclysm + Mowzie's Mobs + Mutant Monsters |

---

## Wave 0 — Foundation

### Performance

| Mod | Fabric (Current) | NeoForge | Notes |
|-----|-----------------|----------|-------|
| Rendering | Sodium | **Embeddium** | Direct port of Sodium to NeoForge |
| Shaders | Iris | Iris | Iris v1.8.14 has NeoForge build for 1.21.1 |
| Server perf | Lithium | **Lithium** | Native NeoForge support (CaffeineMC) |
| LOD | Distant Horizons | Distant Horizons | Same mod, has NeoForge |
| Connected textures | Continuity | Continuity | Same mod, has NeoForge |
| All-in-one perf | ModernFix | ModernFix | Same mod, has NeoForge |
| Render speed | ImmediatelyFast | ImmediatelyFast | Same mod, has NeoForge |
| Entity culling | Entity Culling | Entity Culling | Same mod, has NeoForge |
| Memory | — | **FerriteCore** | Available on NeoForge (was missing on Fabric) |
| Networking | Krypton | — | Fabric-only. Alternative: **Connectivity** |
| Background FPS | Dynamic FPS | Dynamic FPS | Same mod |
| Worldgen perf | Noisium | Noisium | Same mod |

### Visual & Client QoL

| Mod | Fabric (Current) | NeoForge | Notes |
|-----|-----------------|----------|-------|
| Sodium UI | Reese's Sodium Options | Embeddium built-in | Embeddium has its own settings UI |
| Dynamic lights | LambDynamicLights | LambDynamicLights | Same mod, has NeoForge |
| Debug HUD | BetterF3 | BetterF3 | Same mod |
| Sound physics | Sound Physics Remastered | Sound Physics Remastered | Same mod |
| Nature sounds | AmbientSounds | AmbientSounds | Same mod |
| Music continuity | Constant Music | Constant Music | Same mod |
| Falling leaves | Ambient Leaves | — | Fabric-only. Alternative: **Falling Leaves** or Coroutils |
| Footsteps | Presence Footsteps | — | Fabric-only. Alternative: **Dynamic Surroundings** |
| Particles | — | **Effective** | Adds footsteps, water ripples, etc. (NeoForge) |

### Inventory & UI QoL

| Mod | Fabric (Current) | NeoForge | Notes |
|-----|-----------------|----------|-------|
| Recipe viewer | EMI | **JEI** | The original. More mods support JEI natively |
| Block info | Jade | Jade | Same mod |
| Mapping | Xaero's Minimap/World Map | Xaero's | Same mod, has NeoForge |
| Food info | AppleSkin | AppleSkin | Same mod |
| Mod list | Mod Menu | **Mods button** | NeoForge has a built-in mod list, or use **Configured** |
| Mouse shortcuts | Mouse Tweaks | Mouse Tweaks | Same mod |
| Chat avatars | Chat Heads | Chat Heads | Same mod |
| Crop harvest | Simple Harvest | **Right Click Harvest** | Alternative for NeoForge |

### Storage & Travel

| Mod | Fabric (Current) | NeoForge | Notes |
|-----|-----------------|----------|-------|
| Storage | Sophisticated Storage | Sophisticated Storage | Same mod, has NeoForge |
| Backpacks | Sophisticated Backpacks | Sophisticated Backpacks | Same mod, has NeoForge |
| Fast travel | Waystones | Waystones | Same mod, has NeoForge |
| Death | Universal Graves | **Corail Tombstone** or same | Graves mods available on NeoForge |

### New Dependencies (all available on NeoForge)

| Library | Role |
|---------|------|
| Cloth Config | Config GUI |
| Architectury API | Cross-loader compat |
| YACL | Config library |
| Curios API | **Replaces Trinkets** — accessory slots |

---

## Wave 1 — Tech (The Big Upgrade)

This is the biggest reason to switch to NeoForge. The Fabric tech pillar (Tech Reborn) is replaced by a **trio of industry-standard mods**:

### Core Tech Mods

| Mod | Version | Role |
|-----|---------|------|
| **Create** | 6.0.10 | Mechanical automation — rotational power, gear trains, conveyors, water wheels, steam, trains. The most popular tech mod in Minecraft |
| **Mekanism** | 10.7.19.85 | Industrial processing — ore quintupling, digital miner, fusion reactor, superdense energy storage, quantum armor. The definitive processing mod |
| **AE2** | 19.2.17 | Digital storage — ME networks, autocrafting, spatial storage, P2P tunnels. The storage backbone the pack needs |

### How They Work Together

| Layer | Mod | What it does |
|-------|-----|-------------|
| Power generation | Create + Mekanism | Create generates rotational power (water wheels, windmills, steam engines). Mekanism has advanced generators, fusion reactor |
| Ore processing | Mekanism | 2x → 3x → 4x → 5x ore multiplication. Chemical processing chain |
| Factory automation | Create | Conveyor belts, deployers, mechanical arms, sequenced crafters |
| Storage & autocrafting | AE2 | ME drives store items digitally. ME autocrafting queues automate crafting |
| Transport | Create + AE2 | Create trains move items between bases. AE2 P2P tunnels connect networks |
| Endgame | Mekanism | Fusion reactor (massive power), digital miner (automated mining), MekaSuit (flight, invulnerability, gear customization) |

### Comparison to Fabric Tech

| Fabric (Current) | NeoForge (Proposed) | Advantage |
|-----------------|---------------------|-----------|
| Tech Reborn | **Create + Mekanism** | Create's mechanical systems are unique. Mekanism has deeper processing |
| Logistics: Automation | **AE2** | AE2 is vastly more powerful for storage/autocrafting |
| Powah | Mekanism's generators | Mekanism has gas-burning, solar, wind, and fusion |

### Supporting Mods

| Mod | Role | NeoForge |
|-----|------|----------|
| Mythic Metals | New ores and metals | Check availability |
| Alloy Forgery | Alloy furnace | Check availability |

---

## Wave 2 — Exploration

Most Wave 2 mods carry over directly:

| Mod | Fabric | NeoForge | Notes |
|-----|--------|----------|-------|
| Terralith | ✅ | ✅ | Same mod |
| Tectonic | ✅ | ✅ | Same mod |
| YUNG's Better Dungeons | ✅ | ✅ | Same mod |
| YUNG's API | ✅ | ✅ | Same mod, all YUNG's work |
| YUNG's collection | ✅ | ✅ | All 9 structure mods available |
| The Aether | ✅ | ✅ | Same mod (1.5.10) |
| Deeper and Darker | ✅ | ✅ | Same mod (1.4.1) |
| Explorer's Compass | ✅ | ✅ | Same mod |
| BetterEnd + BCLib | ✅ | ❌ | Fabric-only. Replace with **Ender's Delight** or custom End content |
| Regions Unexplored | ✅ | ✅ | Same mod |
| Twilight Forest | ❌ | ✅ | **New!** — classic dimension with bosses, progression, unique loot |

### New Dimension Options (NeoForge Only)

| Mod | Description |
|-----|-------------|
| **Twilight Forest** | A twilight-dimension with 6+ bosses, unique biomes, progression gates. A Fabric limitation resolved |
| **Blue Skies** | Two new dimensions accessible via portals. (Check 1.21.1 NeoForge status) |

---

## Wave 3 — Magic & Equipment

This is the second-biggest upgrade. NeoForge has actual spellcasting mods:

### Magic Framework

| Fabric (Current) | NeoForge (Proposed) | Notes |
|-----------------|---------------------|-------|
| Simply Swords | Simply Swords | Same mod, has NeoForge |
| Skill Tree + Pufferfish's Skills | Skill Tree + Pufferfish's Skills | Same, both on NeoForge |
| Spell Engine + Spell Power | Spell Engine + Spell Power | Same, both on NeoForge |
| Trinkets | **Curios API** | Standard NeoForge accessory slot mod |
| Runes | Runes | Check NeoForge availability |
| Relics RPG | Relics RPG | Check NeoForge availability |

### New Magic Mods

| Mod | Version | What it adds |
|-----|---------|-------------|
| **Ars Nouveau** | 5.12.0 | Complete spellbook magic — craft glyphs, customize spells, build an Enchanting Apparatus. Has equipment, armor, and boss fights. The definitive magic mod |
| **Apotheosis** | 8.5.4 | Gear affixes, rarity system, gem socketing, enchanting overhaul, boss modifiers. **Directly replaces Savaru's Affixology** with more depth and mod compatibility |
| **Iron's Spells 'n Spellbooks** | 3.16.1 | 80+ spells across 8 schools (fire, ice, lightning, holy, blood, etc.). Spellbooks with progression, unique gear per school |

### How the Magic Layer Works

| Layer | Mod | What it adds |
|-------|-----|-------------|
| Spellcasting | Ars Nouveau + Iron's Spells | Two complete magic systems — Ars for customizable glyph-crafted spells, Iron's for school-based spellbook progression |
| Gear affixes | Apotheosis | Rarity tiers, random affixes, gem socketing on all gear. Better loot scaling |
| Weapons | Simply Swords | 60+ unique weapons with passive abilities |
| Skill tree | Skill Tree (RPG Series) | XP-based leveling, attribute point spending |
| Accessories | Curios API | Back, belt, bracelet, charm, necklace, ring slots |

---

## Wave 4 — Food & Farming

### Option A: Farmer's Delight (Classic)

| Mod | Role | NeoForge |
|-----|------|----------|
| **Farmer's Delight** 1.3.2 | Cooking hub — cutting board, cooking pot, stove, new crops | ✅ 18.4M downloads |
| **Brewin' And Chewin'** 4.5.0 | Drinks and fermentation | ✅ |
| **Delightful** | New meals and recipes | Check 1.21.1 NeoForge |
| **Storage Delight** | Kitchen furniture | Check NeoForge |
| **Nether's Delight** | Nether-based food | Check NeoForge |
| **End's Delight** | End-based food | Check NeoForge |

### Option B: Let's Do Ecosystem (Hybrid)

Farm & Charm, Bakery, Brewery, and Candlelight all have NeoForge versions. HerbalBrews does too. Only Ambient Leaves doesn't carry over from the Let's Do ecosystem.

### Recommended: Farmer's Delight (since it's the original V1 mod)

---

## Wave 5 — Combat & Mobs

| Mod | Fabric | NeoForge | Notes |
|-----|--------|----------|-------|
| Better Combat | ✅ | ✅ | Same mod |
| Mutant Monsters | ✅ | ✅ | Same mod |
| AdventureZ | ✅ | ❌ | Fabric-only. Replace with **L_Ender's Cataclysm** or **Mowzie's Mobs** |
| Champions | ✅ | ❌ | Fabric-only port. Original is Forge, check NeoForge compat |
| Enchantment Descriptions | ✅ | ✅ | Same mod |

### New Combat Mods (NeoForge Only)

| Mod | Description |
|-----|-------------|
| **L_Ender's Cataclysm** | Epic boss fights — Leviathan, Netherite Monstrosity, Ender Guardian. Boss-specific gear and weapons. Fabric limitation resolved |
| **Mowzie's Mobs** | Fantasy creatures — Barakoan, Frostmaw, Ferrous Wroughtnaut. Unique boss mechanics and gear |
| **When Dungeons Arise** | Check NeoForge 1.21.1 |

---

## Wave 6 — World Expansion (NeoForge)

| Mod | Fabric | NeoForge | Notes |
|-----|--------|----------|-------|
| YUNG's structure collection (9 mods) | ✅ | ✅ | All available |
| Regions Unexplored | ✅ | ✅ | Same mod |
| Repurposed Structures | ✅ | ✅ | Has NeoForge version? Check |
| Additional Structures | ✅ | ✅ | Same mod |
| The Bumblezone | ✅ | ❌ | Fabric port. Original is Forge |
| Structory | ❌ | ✅ | New! Structure variety |
| Towns & Towers | ❌ | ✅ | New! Better villages |

---

## Key Mods Unlocked by Switching to NeoForge

These are the most significant additions unavailable on Fabric:

| Mod | Category | Why it matters |
|-----|----------|----------------|
| **Create** | Tech | Mechanical automation, trains, rotational power. Unique gameplay not replicable on Fabric |
| **Mekanism** | Tech | Ore quintupling, fusion reactor, digital miner, MekaSuit. Endgame benchmark |
| **AE2** | Tech | Digital storage, autocrafting, ME networks. Industry standard |
| **Ars Nouveau** | Magic | Full spellbook magic with progression. The magic pillar V1 wanted |
| **Apotheosis** | Magic | Gear affixes, gems, enchanting overhaul. Replaces Savaru's Affixology |
| **Iron's Spells** | Magic | 80+ spells across 8 schools. Complete spellcasting |
| **Twilight Forest** | Exploration | Classic dimension with bosses and progression |
| **L_Ender's Cataclysm** | Combat | Epic boss fights with unique drops |
| **Farmer's Delight** | Food | The original cooking mod. Familiar from V1 |

---

## Summary: What Changes

| Mod | Fabric → NeoForge |
|-----|-------------------|
| ~62 mods total | ~44 carry over directly (71%) |
| ~16 Fabric-only | Replace with NeoForge equivalents or drop |
| +10 new | Available only on NeoForge (Create, Mek, AE2, Ars, Iron's, etc.) |
| Net result | ~70 mods, significantly more content depth |

### What You Gain
- Create (mechanical automation, trains)
- Mekanism (5x ore, fusion reactor, quantum armor)
- AE2 (digital storage backbone)
- Ars Nouveau (full spellcasting magic)
- Apotheosis (affixes, gems, enchanting)
- Iron's Spells (80+ spells)
- Twilight Forest (dimension)
- Cataclysm (epic bosses)
- Farmer's Delight (classic cooking)
- And more

### What You Lose
- BetterEnd + BCLib (End overhaul)
- AdventureZ (some combat bosses)
- Bumblezone (bee dimension)
- Repurposed Structures (biome variants)
- Clutter (some biomes/ores)
- Some Fabric-specific performance mods (most have NeoForge alternatives)
