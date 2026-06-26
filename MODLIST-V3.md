# Mod List V3 — Minecraft 1.21.1 NeoForge

**Status: Draft — gaps flagged for your input**

Everything is confirmed NeoForge 1.21.1 unless tagged **[NEED CHECK]**.

---

## Wave 0 — Foundation

### Performance & Rendering

| Mod | Role | Status |
|-----|------|--------|
| Embeddium | Rendering engine (Sodium port) | ✅ |
| Iris | Shader loader | ✅ v1.8.14 |
| Radium | Server-side optimization (Lithium port) | ✅ |
| Distant Horizons | LOD rendering | ✅ |
| Continuity | Connected textures | ✅ |
| ModernFix | All-in-one perf + bug fixes | ✅ |
| ImmediatelyFast | Immediate-mode rendering | ✅ |
| Entity Culling | Hide off-screen entities | ✅ |
| FerriteCore | Memory optimization | ✅ [NEED CHECK] |
| Dynamic FPS | Background FPS reduction | ✅ |
| Noisium | Worldgen optimization | ✅ |

### Visual & Client QoL

| Mod | Role | Status |
|-----|------|--------|
| LambDynamicLights | Dynamic lighting | ✅ |
| BetterF3 | Customizable debug HUD | ✅ |
| Sound Physics Remastered | Realistic sound | ✅ |
| AmbientSounds | Nature ambiance | ✅ |
| Constant Music | Continuous music | ✅ |
| Effective | Footstep particles, water ripples | [NEED CHECK — NeoForge?] |
| Ambient Leaves | Falling leaves | ❌ Fabric-only, pick alternative |

### Inventory & UI

| Mod | Role | Status |
|-----|------|--------|
| JEI | Recipe viewer (replaces EMI) | ✅ |
| Jade | Block info HUD | ✅ |
| Jade Addons | Extra Jade info | ✅ |
| Xaero's Minimap + World Map | Mapping | ✅ |
| AppleSkin | Food info | ✅ |
| Mouse Tweaks | Inventory shortcuts | ✅ |
| Chat Heads | Chat avatars | ✅ |
| Right Click Harvest | Crop harvest | ✅ |

### Storage & Travel

| Mod | Role | Status |
|-----|------|--------|
| Sophisticated Storage | Upgradable barrels/chests | ✅ |
| Sophisticated Backpacks | Portable inventory | ✅ |
| Waystones | Fast travel | ✅ |
| Grave mod | Keep inventory on death | **[NEED CHECK]** — Fabric grave mods don't carry over. Options: **Corail Tombstone**, **GraveStone Mod**, or keep **Universal Graves** if NeoForge version exists |

### New Dependencies

| Mod | Role | Status |
|-----|------|--------|
| Cloth Config | Config GUI | ✅ |
| Architectury API | Cross-loader compat | ✅ |
| YACL | Config library | ✅ (slug: `yacl` v3.8.2) |
| Curios API | Accessory slots (replaces Trinkets) | ✅ |
| CreativeCore | Library (needed by AmbientSounds) | ✅ |

### Deps Already Present

Fabric API → **NeoForge API** (built into NeoForge loader — no separate mod needed)

---

## Wave 1 — Tech (Create + Mekanism)

This is your tech pillar. Three layers:

| Mod | Role | Status |
|-----|------|--------|
| **Create** 6.0.10 | Mechanical automation — rotational power, conveyors, trains | ✅ |
| **Mekanism** 10.7.19.85 | Industrial processing — ore multiplication, fusion reactor, MekaSuit | ✅ |
| **AE2** 19.2.17 | Digital storage and autocrafting | ✅ — include? It's the natural storage backbone |

### Supporting Ores

| Mod | Role | Status |
|-----|------|--------|
| Mythic Metals | ~20 new ores with tools/armor | ❌ Fabric-only. **Need NeoForge ore mod replacement** |
| Clutter | Biomes, silver/sulphur ores | ❌ Fabric-only |

**[GAP]** Mythic Metals + Clutter are Fabric-only. What should replace them? Options:
- Keep vanilla ore gen (Create + Mekanism already have extensive material chains)
- Add **a different ore mod** (e.g., Infernal Expansion for Nether ores)
- Add **Just Enough Resources** (JER) to find ore clusters

---

## Wave 2 — Exploration

Most carries over:

| Mod | Role | Status |
|-----|------|--------|
| Terralith | Overworld biome overhaul | ✅ |
| Tectonic | Terrain shaping | ✅ |
| YUNG's Better Dungeons | Dungeon overhaul | ✅ |
| YUNG's API | Required by YUNG's mods | ✅ |
| YUNG's collection (9 mods) | All structure overhauls | ✅ — add all? |
| The Aether | Sky dimension | ✅ |
| Deeper and Darker | Deep dark dimension | ✅ |
| Explorer's Compass | Structure finder | ✅ |
| Regions Unexplored | 65+ new biomes | ✅ |
| Twilight Forest | Classic dimension with bosses | **[NEED CHECK]** — on CurseForge for NeoForge 1.21.1, confirmed by earlier research |
| Structory | New structures | ✅ (3.5M dls) |
| Towns & Towers | Better villages | ✅ (6.5M dls) |
| Additional Structures | 200+ structures | ✅ |

**[LOSS]** BetterEnd + BCLib are Fabric-only. End dimension is vanilla unless replaced.

---

## Wave 3 — Equipment Magic

### Carry-over Mods

| Mod | Role | Status |
|-----|------|--------|
| Simply Swords | 60+ unique weapons | ✅ v1.63.0 |
| Skill Tree (RPG Series) | XP leveling + attribute points | ✅ |
| Pufferfish's Skills | Skill system framework | ✅ |
| Spell Engine | Casting framework | ✅ |
| Spell Power | Magic attributes | ✅ |
| Relics RPG | Legendary accessories | ✅ v1.3.0 |
| Runes | Socketable runes | ✅ v1.2.1 |

### Replacements Needed

| Fabric Mod | NeoForge Replacement | Status |
|-----------|---------------------|--------|
| Trinkets | **Curios API** | ✅ v9.5.1 — standard NeoForge slot API |
| Savaru's Affixology | **Apotheosis** | ✅ v8.5.4 — adds affixes, gems, rarity tiers, enchanting overhaul. More features than Affixology |

### New Magic Options

| Mod | What it adds | Include? |
|-----|-------------|----------|
| **Ars Nouveau** v5.12.0 | Full spellbook magic — glyph crafting, spell customization, apparatus building | Want it? |
| **Iron's Spells 'n Spellbooks** v3.16.1 | 80+ spells across 8 schools, school-specific gear | Want it? |

---

## Wave 4 — Food & Farming

### Farmer's Delight Path (your interest)

| Mod | Role | Status |
|-----|------|--------|
| **Farmer's Delight** 1.3.2 | Cooking hub — cutting board, cooking pot, stove | ✅ 18.4M dls |
| **Brewin' And Chewin'** 4.5.0 | Drinks, fermentation | ✅ |
| Delightful | New meals | **[NEED CHECK]** — was Forge 1.20.1, may have NeoForge now |
| Storage Delight | Kitchen furniture | **[NEED CHECK]** |
| Nether's Delight | Nether food | **[NEED CHECK]** |
| End's Delight | End food | ✅ — all loaders inc. NeoForge |

### Let's Do Path (alternative)

Farm & Charm and HerbalBrews have NeoForge. Bakery, Brewery, Candlelight don't have NeoForge 1.21.1. So the Let's Do ecosystem is **partial** on NeoForge.

**Recommendation**: Farmer's Delight route since you specifically mentioned interest, and it's the complete ecosystem on NeoForge.

---

## Wave 5 — Combat & Mobs

| Mod | Role | Status |
|-----|------|--------|
| Better Combat | Combat animations | ✅ |
| Mutant Monsters | Mutant mob variants | ✅ |
| Enchantment Descriptions | Enchant tooltips | ✅ |
| AdventureZ | Combat bosses | ❌ Fabric-only |
| Champions | Elite mob affixes | ❌ Fabric port, original is Forge |

**[GAP]** AdventureZ and Champions don't carry over. Replacements:
- **L_Ender's Cataclysm** — epic boss fights (CurseForge, NeoForge 1.21.1)
- **When Dungeons Arise** — combat-focused structures (check NeoForge)
- **Mowzie's Mobs** — fantasy creatures with unique fights (check 1.21.1)

---

## Wave 6 — Building & Decoration (New)

You mentioned wanting to build monumental constructs. While there's no dedicated space elevator mod on NeoForge either, these building mods are available:

| Mod | Role | Status |
|-----|------|--------|
| Chipped | Hundreds of decorative block variants | ✅ |
| Supplementaries | Vanilla+ decoration (jars, signposts, faucets) | ✅ |
| Macaw's Bridges | Bridges in every wood type | ✅ |
| Macaw's Doors | Vanilla-style doors | ✅ |
| Macaw's Roofs | Roofing blocks | **[NEED CHECK]** |
| Macaw's Windows | Window variants | **[NEED CHECK]** |
| Building Wands | Faster large-scale building | ✅ (as building-wands) |
| Handcrafted | Furniture: chairs, tables, shelves | ✅ (20M dls) |

---

## Key Gaps Summary

| # | Gap | What we lost | Options |
|---|-----|-------------|---------|
| 1 | **Ore mod** | Mythic Metals + Clutter (Fabric-only) | Skip ores (Create+Mek have their own materials), or find NeoForge ore mod |
| 2 | **End overhaul** | BetterEnd + BCLib (Fabric-only) | Vanilla End, or add Ender's Delight for End food, or find End structure mod |
| 3 | **Grave mod** | No confirmed NeoForge grave mod | Corail Tombstone? GraveStone Mod? |
| 4 | **Combat bosses** | AdventureZ (Fabric-only) | L_Ender's Cataclysm? Mowzie's Mobs? |
| 5 | **Elite mobs** | Champions (Fabric port) | Original Champions is Forge — check NeoForge compat |
| 6 | **Affixology** | Savaru's Affixology (Fabric-only) | Apotheosis is the natural replacement — more features |
| 7 | **Building blocks** | Missing if you want them | Chipped + Supplementaries + Macaw's + Building Wands |
| 8 | **Delightful** | May not have NeoForge 1.21.1 | Check or skip — Farmer's Delight + Brewin' And Chewin' is already solid |
| 9 | **Storage Delight** | May not have NeoForge 1.21.1 | Skip or find alternative kitchen storage |
| 10 | **AE2** | Available but you didn't ask for it | Include it as storage backbone, or skip? |

---

## Your Decisions Needed

1. **Wave 1**: AE2 — include as storage backbone for Create + Mek?
2. **Wave 1**: Ore mod — need a replacement for Mythic Metals + Clutter?
3. **Wave 3**: Apotheosis — include to replace Affixology with a stronger system?
4. **Wave 3**: Ars Nouveau + Iron's Spells — add full spellcasting magic?
5. **Wave 3**: Simply Swords, Relics RPG, Runes — these all carry over. Keep them?
6. **Wave 4**: Farmer's Delight route confirmed? (vs partial Let's Do)
7. **Wave 4**: Delightful + Storage Delight — skip if unavailable?
8. **Wave 5**: AdventureZ replacement — Cataclysm? Mowzie's? Or skip?
9. **Wave 5**: Champions replacement — needed?
10. **Wave 6**: Building blocks (Chipped, Supplementaries, Macaw's, Building Wands) — include a decoration wave?
11. **Wave 2**: Twilight Forest — include the classic dimension?
12. **Wave 0**: Grave mod preference?
