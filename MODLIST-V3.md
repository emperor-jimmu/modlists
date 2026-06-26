# Mod List V3 — Minecraft 1.21.1 NeoForge

## Wave 0 — Foundation

### Performance & Rendering

| Mod              | Role                                        |
|------------------|---------------------------------------------|
| Embeddium        | Rendering engine (Sodium port)              |
| Iris             | Shader loader (v1.8.14, has NeoForge build) |
| Radium           | Server-side optimization (Lithium port)     |
| Distant Horizons | LOD rendering                               |
| Continuity       | Connected textures                          |
| ModernFix        | All-in-one perf + bug fixes                 |
| ImmediatelyFast  | Immediate-mode rendering                    |
| Entity Culling   | Hide off-screen entities                    |
| Dynamic FPS      | Background FPS reduction                    |
| Noisium          | Worldgen optimization                       |

### Visual & Client QoL

| Mod                      | Role                                            |
|--------------------------|-------------------------------------------------|
| LambDynamicLights        | Dynamic lighting                                |
| BetterF3                 | Customizable debug HUD                          |
| Sound Physics Remastered | Realistic sound                                 |
| AmbientSounds            | Nature ambiance (birds, wind, water)            |
| Constant Music           | Continuous music (no silence gaps)              |
| Immersive UI             | Animated UI, smooth hotbar, item particles      |
| Traveler's Titles        | RPG-style titles entering biomes/dimensions     |
| Better Modlist           | Enhanced mod list screen with badges/categories |

### Inventory & UI

| Mod                         | Role                                           |
|-----------------------------|------------------------------------------------|
| JEI                         | Recipe viewer                                  |
| Jade                        | Block info HUD                                 |
| Jade Addons                 | Extra Jade info panels                         |
| Xaero's Minimap + World Map | Mapping and waypoints                          |
| AppleSkin                   | Food hunger/saturation overlay                 |
| Mouse Tweaks                | Inventory management shortcuts                 |
| Chat Heads                  | Chat avatars                                   |
| Right Click Harvest         | Right-click crop harvest                       |
| Fancy Toasts                | Beautiful animated advancement popups          |
| Obscure Tooltips            | Animated tooltips with 3D models and particles |
| Loot Journal                | Animated item pickup notifications             |
| Better Advancements         | Prettified advancements screen UI              |
| Polymorph                   | Choose crafting result when recipes conflict   |

### Storage & Travel

| Mod                     | Role                          |
|-------------------------|-------------------------------|
| Sophisticated Storage   | Upgradable barrels/chests     |
| Sophisticated Backpacks | Portable inventory            |
| Waystones               | Fast travel between waypoints |
| GraveStone Mod          | Keep inventory on death       |

### New Dependencies

| Mod              | Role                                     |
|------------------|------------------------------------------|
| Cloth Config     | Config screen library                    |
| Architectury API | Cross-loader compatibility               |
| YACL             | Config library                           |
| Curios API       | Accessory slots (replaces Trinkets)      |
| CreativeCore     | Library (AmbientSounds)                  |
| OctoLib          | Library (Immersive UI)                   |
| Obscure API      | Library (Obscure Tooltips, Loot Journal) |
| Fragmentum       | Library (Loot Journal)                   |

### Shaderpack

| Shaderpack            | Description                                                      |
|-----------------------|------------------------------------------------------------------|
| Complementary Unbound | Two visual styles, Potato→Ultra profiles, block-specific effects |

### Configuration — Wave 0

**Waystones** (`config/waystones-common.toml`):
- `inventoryButton` = `"any"` — Opens waystone menu from inventory without a keybind. Smooths exploration in all phases.
- `enableCosts` = `false` — Free teleportation. Supports chill rule.
- `enableCooldowns` = `false` — No cooldown. Teleport as often as needed.
- `spawnInVillages` = `"REGULAR"` — Default village waystone frequency. Rewards exploration.

**Tombstone (GraveStone Mod)** (`config/tombstone-common.toml`):
- `grave.keepExperience` = `true` — Keep all XP on death. Complements the Skill Tree (Wave 3) — losing XP would undermine RPG progression.
- `grave.protectionDuration` = `86400` — 24 hours of grave protection. Gives the player time to return without anxiety.

**Aether** (`config/aether-common.toml`):
- `"Use default Curios' menu"` = `true` — Uses the Curios API menu instead of Aether's separate accessories screen. Reduces UI fragmentation.
- `"Gives player Aether Portal Frame item"` = `false` — Player must build the portal manually (classic experience).
- `"Gives starting loot on entry"` = `true` — Grants a Book of Lore and Golden Parachutes on first entry. Gentle onboarding.
- `"Show Patreon message"` = `false` — Removes Patreon nag screen.
- `"Add Temporary Freezing automatically"` = `false` — Disables Aether's temporary freezing datapack. Avoids annoying mechanics in the sky dimension.
- `"Add Ruined Portals automatically"` = `false` — Disables ruined portal datapack.

**Guard Villagers** (`config/guardvillagers-common.toml`):
- `"How many guards should spawn in a village?"` = `6` — Enough guards for basic village defense without trivializing combat.
- `"Allow guards to teleport if following the player"` = `true` — Guards keep up with player movement across terrain.
- `"Mob Blacklist"` includes `"minecraft:creeper"` and `"minecraft:enderman"` — Prevent unnecessary guard aggro on creepers (explosion risk) and endermen (can't fight them safely).
- `"Guards attack all mobs?"` = `true` — Guards protect against all hostiles, not just zombies/illagers.
- `"Profession Whitelist for guard conversion"` = `["nitwit", "none"]` — Only nitwits and unemployed villagers can be converted to guards. Protects profession-locked villagers.

**Loot Journal** (`config/Obscuria/loot-journal.toml`):
- `writeSessionJson` = `true` — Saves per-session gain/loss data for player reference.
- `writeStatisticsJson` = `true` — Builds cumulative drop statistics over time.
- `showSummaryOnDisconnect` = `true` — Shows session summary on disconnect. Satisfying to see what you accomplished.

**No config changes needed for**: Embeddium, Iris, Radium, Distant Horizons, Continuity, ModernFix, ImmediatelyFast, Entity Culling, Dynamic FPS, Noisium, LambDynamicLights, BetterF3, Sound Physics Remastered, AmbientSounds, Constant Music, Immersive UI, Traveler's Titles, Better Modlist, JEI, Jade, Jade Addons, Xaero's Minimap & World Map, AppleSkin, Mouse Tweaks, Chat Heads, Right Click Harvest, Fancy Toasts, Obscure Tooltips, Loot Journal, Better Advancements, Polymorph, Sophisticated Storage, Sophisticated Backpacks, Cloth Config, YACL, Curios API, CreativeCore, OctoLib, Obscure API, Fragmentum, Complementary Unbound.

All of these work well out of the box. Their defaults align with the pack's vision. Any customization is cosmetic (shader quality, UI animation speed, map colors) and left to player preference.

---

## Wave 1 — Tech (Create + Mekanism + AE2)

## Wave 1 — Tech (Create + Mekanism + AE2)

The classic tech trio. Create handles mechanical automation, Mekanism handles industrial processing, AE2 handles digital storage and autocrafting.

### Core Tech

| Mod                     | Role                                                                                                                                             |
|-------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------|
| **Create** 6.0.10       | Mechanical automation — rotational power, water wheels, windmills, gear trains, conveyor belts, deployers, sequenced crafters, trains            |
| **Mekanism** 10.7.19.85 | Industrial processing — ore multiplication (2x→5x), digital miner, fusion reactor, superdense energy storage, MekaSuit (flight, invulnerability) |
| **AE2** 19.2.17         | Digital storage — ME drives, autocrafting, P2P tunnels, spatial storage. The storage backbone                                                    |

### How They Work Together

| Layer              | Mod                                                                                      |          |
|--------------------|------------------------------------------------------------------------------------------|----------|
| Power generation   | Create (water wheels, windmills, steam) + Mekanism (advanced generators, fusion reactor) |          |
| Ore processing     | Mekanism — up to 5x ore multiplication with chemical processing                          |          |
| Factory automation | Create — conveyor belts, deployers, sequenced crafters                                   |          |
| Storage            | AE2 — ME drives, storage busses, crafting CPUs                                           |          |
| Transport          | Create trains + AE2 P2P tunnels                                                          |          |
| Endgame            | Mekanism fusion reactor + MekaSuit + AE2 autocrafting                                    | ### Ores |

| Mod                        | Role                                         |
|----------------------------|----------------------------------------------|
| Create (built-in)          | Zinc, brass, copper                          |
| Mekanism (built-in)        | Osmium, tin, lead, uranium, fluorite         |
| Skniro's Nether & End Ores | Additional ores in Nether and End dimensions |

### Configuration — Wave 1

**AE2** (`config/ae2-common.toml` or `/ae2 channelmode` command):
- `channels` = `default` — Keep the channel system enabled. It adds interesting logistics puzzles in Phase 2. The challenge is part of the progression curve. Players who find it overwhelming can change to `x2` or `infinite` via the `/ae2 channelmode` command without a world restart.
- All other AE2 features remain default: meteorite generation, spatial storage, crystal growth, inscriber recipes, tools, and security systems.

**Why channels are kept on**: The AE2 channel system is a core design pillar. It forces thoughtful network layout, rewards planning, and gives meaning to dense cables and P2P tunnels. Turning it off removes a significant layer of the mod's depth. The command `/ae2 channelmode infinite` exists for players who disagree and want a simpler experience.

**Mekanism** (`config/Mekanism/general.toml`):
- `allowChunkloading` = `false` — Disable Mekanism's built-in chunk loading. If a dedicated chunk loader mod is added later, this prevents conflict. For now, players manage loaded chunks via other means.
- `easyMinerFilters` = `false` — Keep Digital Miner filter setup manual (drag items from JEI is disabled). Intentional friction — setting up the miner should feel like an accomplishment.
- `transmitterAlloyUpgrade` = `true` — Allow upgrading pipes/cables by right-clicking with alloys. Streamlines infrastructure upgrades.
- `aestheticWorldDamage` = `true` — Lasers can break blocks, flamethrowers set fires. Adds to the power fantasy.
- `maxUpgradeMultiplier` = `10` (default) — Machines get up to 10x performance with full upgrades. Balanced progression.
- `ticksPerMine` = `80` (default) — Digital miner mines one block every 4 seconds. Fast enough to feel powerful, slow enough to require multiple miners for serious throughput.

**Ore generation** (`config/Mekanism/world.toml`): All default rates. Osmium generates at iron-like frequency, tin and lead at moderate rates, uranium and fluorite are rarer. Default distribution aligns with the pack's progression curve.

**Create**: No configuration changes needed. Create's default config is well-balanced. Ponder system, stress units, speed/force ratios, and recipe defaults all align with the intended progression. Block configs (like fan range or water wheel output) are at standard values.

**Skniro's Nether & End Ores**: No configuration changes. Default ore distribution in Nether and End dimensions is balanced for mid-game expansion. Tune spawn rates in `orespawn_config.json` if playtesting shows ores too sparse or too dense.

**Interdependency notes for Wave 1:**
- Mekanism's universal cables can power AE2 controllers via the Energy Acceptor. No adapter mod needed.
- Create's Alternator converts rotational power (SU) to Joules, creating a power bridge between Create and Mekanism.
- Mekanism's 5x ore processing (Chemical Dissolution Chamber → Washer → Crystallizer) outclasses Create's Crushing Wheels (1.5x) and Millstone (1x) for ore multiplication. This is intentional — Create handles mechanical automation and component crafting, Mekanism handles industrial processing. Neither obsoletes the other.
- AE2's Storage Bus on a Sophisticated Storage barrel makes early-mid game storage migration seamless. Place a Storage Bus on your barrel wall, configure it to show contents in the ME terminal, and transition gradually to full digital storage.

---

## Wave 2 — Exploration (World & Dimensions)

## Wave 2 — Exploration (World & Dimensions)

### Overworld Worldgen

| Mod                | Role                                                            |
|--------------------|-----------------------------------------------------------------|
| Terralith          | Overhauled Overworld biomes                                     |
| Tectonic           | Better terrain shape — deeper valleys, taller mountains, cliffs |
| Regions Unexplored | 65+ new Overworld biomes with unique trees and plants           |

### Structures

| Mod                             | Role                             |
|---------------------------------|----------------------------------|
| YUNG's Better Dungeons          | Overhauled dungeons              |
| YUNG's Better Mineshafts        | Improved mineshafts              |
| YUNG's Better Strongholds       | Larger, more complex strongholds |
| YUNG's Better Desert Temples    | Multi-room desert temples        |
| YUNG's Better Jungle Temples    | Jungle temples with traps        |
| YUNG's Better Ocean Monuments   | Redesigned ocean monuments       |
| YUNG's Better Witch Huts        | Expanded witch huts              |
| YUNG's Better Nether Fortresses | Improved nether fortresses       |
| YUNG's Better End Island        | Better End island terrain        |
| YUNG's Better Caves             | Larger, more varied caves        |
| Structory                       | New hand-crafted structures      |
| Towns & Towers                  | Better village generation        |
| Additional Structures           | 200+ new structures              |

### Dimensions

| Mod               | Role                                                                                       |
|-------------------|--------------------------------------------------------------------------------------------|
| The Aether        | Sky dimension — safe islands, gear progression, dungeons with bosses                       |
| Deeper and Darker | The "Otherside" dimension — deep dark themed, warden gear                                  |
| Twilight Forest   | Classic dimension — 6+ bosses with progression gates, unique loot, enchanted forest biomes |

### End Overhaul

| Mod                              | Role                                                               |
|----------------------------------|--------------------------------------------------------------------|
| **BetterEnd NeoForge** v21.0.25  | Full End overhaul — 24+ biomes, new mobs, gear, custom music       |
| **Nullscape** v1.2.14            | End biome transformation — alien/void landscapes, floating islands |
| **Moog's End Structures** v2.0.3 | New structures to fill the End dimension                           |
| **Ender's Delight** v1.3.0       | End-themed food for Farmer's Delight                               |

### New Dependencies (End Overhaul)

| Mod                  | Role                                        |
|----------------------|---------------------------------------------|
| BCLib NeoForge       | Core library — required by BetterEnd        |
| WorldWeaver NeoForge | Worldgen library — required by BetterEnd    |
| WunderLib NeoForge   | Utility library — required by BetterEnd     |
| Moog's Structure Lib | Library — required by Moog's End Structures |

### Navigation

| Mod                | Role                             |
|--------------------|----------------------------------|
| Explorer's Compass | Craftable structure/biome finder |

### Configuration — Wave 2

**Twilight Forest** (`config/twilightforest-common.toml`):
- `PortalCreation` = `flower_pool` (default) — Classic portal recipe: flowers surrounding a 2×2 water pool, throw in a diamond. Keeps the dimension entry ritual intact.
- `DisableProgression` = `false` (default) — Boss progression gates remain active. They structure the dimension's content and give clear progression goals.

**YUNG's Better Caves**: No config changes. Default cave generation parameters work well with Tectonic's deeper terrain and Terralith's biome variety.

**Terralith, Tectonic, Regions Unexplored**: No config changes. Data-driven worldgen — no config files to override. Default generation is the intended experience.

**Structory, Towns & Towers, Additional Structures**: No config changes. Structure spawn rates at default. If testing shows too many or too few structures, YUNG's modules have separate structure frequency configs.

**The Aether**: Configuration covered in Wave 0 (Aether config lives in `config/aether-common.toml`).

**Deeper and Darker, BetterEnd, Nullscape, Moog's End Structures, Ender's Delight**: No config changes. Defaults are appropriate for the pack's difficulty curve.

**Explorer's Compass**: No config changes needed.

**Interdependency note — Twilight Forest + Apotheosis**: Apotheosis boss affixes (Wave 3) apply to Twilight Forest bosses. A Naga with the "Tough" affix is significantly harder. This is intended — it keeps dimension bosses relevant even with late-game gear. If a boss feels too strong, the player can return after better equipment or use Apotheosis gems/runes for the edge.

---

## Wave 3 — Equipment Magic & RPG

## Wave 3 — Equipment Magic & RPG

### RPG Progression

| Mod                     | Role                                                  |
|-------------------------|-------------------------------------------------------|
| Skill Tree (RPG Series) | XP leveling — spend points on attributes and passives |
| Pufferfish's Skills     | Underlying skill system framework                     |
| Spell Engine            | Magic casting framework                               |
| Spell Power             | Magic attribute system (spell damage, crit, haste)    |

### Equipment

| Mod           | Role                                                |
|---------------|-----------------------------------------------------|
| Simply Swords | 60+ unique weapons with passive/activated abilities |
| Relics RPG    | Legendary accessories with unique abilities         |
| Runes         | Socketable runes for weapons/tools                  |
| Curios API    | Accessory slots (rings, amulets, belts, gloves)     |

### Loot & Affixes

| Mod            | Role                                                                                                           |
|----------------|----------------------------------------------------------------------------------------------------------------|
| **Apotheosis** | Rarity tiers, random affixes, gem socketing, enchanting overhaul. Replaces Savaru's Affixology with more depth |

### Configuration — Wave 3

**Apotheosis** — the most config-heavy major mod. Apotheosis is split into modules, each with its own config:

**Adventure module** — affixes, gems, boss modifiers, rogue spawners:
- Keep all affix types enabled: Ruthless (crit), Arcane (spell), Sturdy (armor), Nimble (speed), Plentiful (mining), Titanic (HP). Each supports a different playstyle.
- Gem tiers enabled: Rough, Cut, Flawless. The gem progression (Rough → Cut → Flawless) provides a satisfying vertical upgrade path.
- Boss modifiers: all active. Apothic Invaders and Elites spawn naturally with random affixes. They always drop affix items — this is the primary source of mythic gear.
- Rogue Spawners: enabled. Underground spawner+chest combos. Risk vs reward.

**Enchanting module** — `config/apotheosis/enchanting.cfg`:
- Keep all enchantment overhauls enabled: higher level cap, tiered bookshelves, Library of Alexandria, new enchantments.
- The Library of Alexandria stores all enchanted books in one block — essential for enchanting organization at scale.

**Potion module**:
- Potion Charms enabled: craft a charm from blaze powder + potions, equip in offhand for passive effect. Reduces inventory clutter from potion bottles.

**Spawner module**:
- Spawner capture and modification enabled. Silk-touch a spawner with a pickaxe, then modify it (entity type, spawn delay, player range, min/max entities). Key for XP farms and mob-based automation.

**Village module**:
- Wandering trader improvements enabled.

**Deadly module**: **Disabled.** Apotheosis's Deadly module adds randomly generated death-traps to the world (sudden spikes, poison darts, instakill rooms, lava traps). These violate the chill rule — the player should never be punished for exploring without preparation. All other modules are active.

**Why the Deadly module is off**: The pack's combat challenge comes from opt-in content — Cataclysm bosses, Mutant Monsters, Twilight Forest progression, When Dungeons Arise structures. Random trap-generated deaths undermine the chill living pillar and frustrate exploration.

**Simply Swords** — no config changes. Default drop rates (2% from mobs, 15% from chests) are well-balanced for the pack. Weapons appear regularly enough to feel rewarding, rarely enough to keep each find exciting.

**Relics RPG** — no config changes. Relics are meant to be rare and exciting discoveries. Default drop rates from structure chests give a steady trickle across all phases.

**Runes** — no config changes. Default drop rates and socketing mechanics work as intended. Rune Pouch keybind should be set by the player (Controls → Rune Pouch).

**Skill Tree (RPG Series)** — no config changes. Default XP multiplier (1.0), skill points per level (1), and attribute scaling are balanced for a 100+ hour playthrough.

**Pufferfish's Skills, Spell Engine, Spell Power** — no config changes. These are framework mods that enable the skill tree and magic systems. Their defaults are appropriate.

**Curios API** — no config changes. Slot counts (2 rings, 1 amulet, 1 belt, 1 gloves, 1 back, 1 charm) are the standard configuration.

---

## Wave 4 — Food, Farming & Comfort

| Mod                           | Role                                                       |
|-------------------------------|------------------------------------------------------------|
| **Farmer's Delight** 1.3.2    | Cooking hub — cutting board, cooking pot, stove, new crops |
| **Brewin' And Chewin'** 4.5.0 | Drinks and fermentation — beer, wine, mead, whiskey        |

Further FD addons (Delightful, Storage Delight, Nether's Delight, End's Delight) — TBD, available on NeoForge.

### Configuration — Wave 4

**Farmer's Delight** — no config changes needed. Default cooking times, crop growth rates, and meal effects are well-tuned. The cutting board, cooking pot, stove, and cabinet all work at default values.

**Brewin' And Chewin'** — no config changes needed. Default fermentation and aging times (1 in-game day per stage) are appropriate. Drinks and their effects (Resistance from beer, Haste from wine, Speed from mead, Strength from whiskey) are balanced as-is.

**Interdependency notes for Wave 4:**
- Farmer's Delight meals provide status effects that stack with Brewin' And Chewin' drinks. Combined, a full meal + a vintage drink gives significant combat buffs — useful before boss fights (Wave 5).
- Right Click Harvest (Wave 0) works on all Farmer's Delight crops. Right-click to harvest, the plant stays for regrowth.
- AE2's ME System can store Farmer's Delight ingredients and cooked meals. Set up an Export Bus on a cooking pot for automated ingredient delivery.
- Bountiful (Wave 4.5) can generate bounties that request Farmer's Delight meals as objectives, and reward cooking ingredients.

---

## Wave 4.5 — Quests

Procedural bounty system that gives purpose to exploration and material collection without manual quest authoring.

| Mod                | Role                                                      |
|--------------------|-----------------------------------------------------------|
| **Bountiful** 8.0.0-beta.2 | Bounty boards in villages — procedurally generated fetch/kill/exploration quests with rewards |

Bountiful generates quests automatically based on items and mobs available in the world. No quest authoring needed — find a bounty board in any village, accept tasks, earn rewards. Fully optional — respects chill pacing.

### Configuration — Wave 4.5

**Bountiful** (data-driven via `config/bountiful/` config packs, no traditional config file):
- Decrees: All decree types are enabled by default (mining, smithing, farming, combat, exploration, armorsmithing, etc.). Players craft or find Decrees to control which quest types appear on their bounty boards. Up to 3 Decrees can be active per board.
- Decree mixing: Enabled by default. A board with a Farming Decree and an Armorsmithing Decree can generate quests like "deliver wheat for iron boots." Adds variety.
- Bounty tiers: Common → Uncommon → Rare → Epic. Higher reputation with a board unlocks rarer bounties with better rewards.
- No config file changes needed. Bountiful's procedural generation system handles balancing automatically — quest objectives and reward pools are drawn from items that exist in the world, scaling with what the player has access to.
- If custom bounty pools are desired later (e.g., adding specific mod items as rewards), bounty pool JSONs can be placed in `config/bountiful/bounty_pools/`.

**Interdependency note — Bountiful + Farmer's Delight + Simply Swords + Apotheosis**: Bountiful's procedural generation automatically includes items from installed mods in its quest objectives and reward pools. Farmer's Delight meals, Simply Swords weapons, and Apotheosis gems may appear as rewards. This is beneficial — more item variety creates more interesting and varied bounties.

---

## Wave 5 — Combat & Mobs

| Mod                      | Role                                                                                              |
|--------------------------|---------------------------------------------------------------------------------------------------|
| Better Combat            | Melee combat animations — weapon reach, sweeping, attack speed                                    |
| Mutant Monsters          | Mutant zombie, skeleton, creeper, enderman — unique drops                                         |
| L_Ender's Cataclysm      | Epic boss fights — Leviathan, Netherite Monstrosity, Ender Guardian (CurseForge, NeoForge 1.21.1) |
| When Dungeons Arise      | Roguelike combat structures with loot                                                             |
| Enchantment Descriptions | Shows enchantment effects in tooltips                                                             |

Apotheosis also adds boss modifiers and elite mob affixes — partially covers what Champions would have done.

### Configuration — Wave 5

**Better Combat** (`config/bettercombat/`):
- Server config: All weapon attributes at default. Reach, speed, and sweep radius per weapon type are balanced by the mod's built-in weapon presets.
- Fallback compatibility: If a mod adds a weapon that Better Combat doesn't recognize, it falls back to the default sword preset. All weapons in this pack are either vanilla, Simply Swords (which has native Better Combat support), or from mods with common naming conventions — no fallback issues expected.
- Client config (per-player preference): Attack indicator, hold-to-attack toggle, auto-attack mode, and sound settings are player-customizable via Mod Menu. No server-side override needed.
- **No config changes needed.** Better Combat's default configuration works with all weapons in this pack.

**Mutant Monsters** — no config changes. Default spawn weights (replacing a small percentage of vanilla mob spawns) add variety without overwhelming the player. If mutants are too frequent, adjust `spawn_weight` in Mod Menu → Mutant Monsters → Config after playtesting.

**L_Ender's Cataclysm** — no config changes. Boss HP, damage values, and summoning requirements are balanced for diamond-to-netherite geared players, which aligns with Phase 2 progression. Bosses are designed as opt-in encounters (build a summoning structure or find a specific location) — no unexpected difficulty spikes.

**When Dungeons Arise** — no config changes. Structure spawn rates are at default. If too many or too few structures generate, adjust in `config/when-dungeons-arise.toml` after world creation (structure frequency is set per-world, not per-save). Default rates provide good coverage without crowding.

**Enchantment Descriptions** — no config changes. It reads enchantment data and displays it inline in tooltips. Works automatically with Apotheosis's new enchantments.

**Interdependency note — Better Combat + Simply Swords**: Simply Swords weapons have built-in Better Combat data files — each weapon category (dagger, longsword, greathammer, spear, etc.) uses the correct attack animation, reach, and speed. This is automatic; no data pack or config needed.

---

## Wave 6 — Building & Decoration

| Mod             | Role                                                          |
|-----------------|---------------------------------------------------------------|
| Chipped         | Hundreds of decorative block variants for every material      |
| Supplementaries | Vanilla+ decoration — jars, signposts, faucets, weather vanes |
| Macaw's Bridges | Bridges in all wood types                                     |
| Macaw's Doors   | Vanilla-style doors for every wood                            |
| Macaw's Roofs   | Roofing blocks                                                |
| Macaw's Windows | Window variants                                               |
| Building Wands  | Faster large-scale construction                               |
| Handcrafted     | Furniture — chairs, tables, shelves, curtains                 |

### Configuration — Wave 6

**Building Wands** — no config changes. Default max distance (64 blocks) and undo levels (10) are sufficient for all building projects. Wand tiers (stone → iron → diamond → netherite) give a natural progression from basic to advanced building tools.

**Chipped** — no config changes. The sawmill is the only functional block — it reads data-driven block variant definitions automatically when placed. No configuration needed.

**Supplementaries, Macaw's Bridges, Macaw's Doors, Macaw's Roofs, Macaw's Windows, Handcrafted** — no config changes. All decoration and furniture mods work out of the box with default configs.

---

## Wave 7 — Space Exploration

### Core Space Mod

| Mod                  | Role                                                                                         |
|----------------------|----------------------------------------------------------------------------------------------|
| **Stellaris** 1.4.23 | Space exploration — rockets, Moon/Mars/Venus/Mercury/Glacio, oxygen system, machines, energy |

Stellaris (by ExodusTeam) is the successor to Beyond Earth and the premier space mod for NeoForge 1.21.1. It features 4 rocket tiers, a rover, oxygen management, custom gravity per planet, oil/water/fuel processing, radioactives, and alien mobs. Machines include the Oxygen Distributor, Water Separator, Solar Panel, Fuel Refinery, and Pump Jack. 250+ building blocks across planet-specific sets.

### Dependencies

| Mod              | Role                                     |
|------------------|------------------------------------------|
| Architectury API | Cross-loader library (already in Wave 0) |

Sky Aesthetics is embedded in Stellaris — no separate install needed.

Stellaris includes its own structures across all planets (ruins, temples, mines, crash sites, outposts) — no addon needed for content.

### Integration with Tech Mods

| Layer          | Stellaris ↔ Tech Mod Interaction                                                                        |
|----------------|---------------------------------------------------------------------------------------------------------|
| Power          | Mekanism cables can power Stellaris machines. Create rotational → Mekanism → Stellaris                  |
| Energy         | Mekanism universal cable connects to Stellaris machines (energy API compat)                             |
| Storage        | AE2 ME drives store Stellaris materials; autocrafting builds rocket components                          |
| Transport      | Create trains move space resources from landing pad to base. Sophisticated Backpacks carry oxygen tanks |
| Ore Processing | Mekanism 5x ore multiplication works on Stellaris ores (desh, ostranium, etc.)                          |
| Food           | Farmer's Delight meals eatable in space when oxygen is present (v1.2.1+)                                |
| Gear           | Apotheosis affixes may apply to Stellaris space suit (if item tags align)                               |

### Configuration — Wave 7

**Stellaris** (`config/stellaris/`):
- `oxygen_system` = `true` (default) — Oxygen management is a core mechanic. Players must craft space suits, fill them at the Oxygen Distributor, and manage oxygen on planets. Disabling it removes a key gameplay loop.
- `oxygen_consumption_rate` = `1.0` (default) — Default consumption gives enough exploration time (several minutes) per oxygen tank fill. Feels fair, not rushed.
- `fuel_consumption_rate` = `1.0` (default) — Default fuel burn rate for rockets. A full tank provides enough fuel for multiple trips to the Moon and back.
- `planet_difficulty_scaling` = `1.0` (default) — Planet difficulty scales with base values (Mercury is hotter, Glacio is colder, etc.). Default scaling is balanced for players with Mekanism-processed gear.
- `enable_structures` = `true` (default) — Ruins, crashed ships, and bases generate on all planets. Essential for exploration-driven gameplay.
- `enable_alien_mobs` = `true` (default) — Alien mobs (hostile and passive) spawn on planets. Adds atmosphere and combat variety.
- `radioactivity_check_interval` = default — Radioactive zones on certain planets apply effects at the default rate.

No config changes from defaults needed. Stellaris's default configuration is well-tuned for the pack's progression curve — oxygen, fuel, and difficulty values assume the player has Mekanism mid-game infrastructure and AE2 storage, which aligns with Phase 2 placement.

### Progression Placement

Phase 2 — Industrial Ascent (hours 40–200). Rockets require advanced materials that gate them behind Mekanism mid-game processing and AE2 infrastructure. Oxygen systems and fuel refining add a parallel supply-chain puzzle that rewards industrial automation.

---

## Mod Count Summary

| Wave                       | Count      | Notes                                                          |
|----------------------------|------------|----------------------------------------------------------------|
| Wave 0 — Foundation        | ~38        | Performance, QoL, storage, travel, graves, UI enhancements     |
| Wave 1 — Tech              | 3 (+2 ore) | Create, Mekanism, AE2                                          |
| Wave 2 — Exploration       | ~26        | YUNG's collection, regions, dimensions, End overhaul           |
| Wave 3 — Equipment Magic   | ~9         | Simply Swords, Apotheosis, Relics, Runes, Skill Tree           |
| Wave 4 — Food              | 2          | Farmer's Delight, Brewin' And Chewin'                          |
| Wave 4.5 — Quests          | 1          | Bountiful (procedural bounty boards in villages)               |
| Wave 5 — Combat            | 5          | Better Combat, Mutant Monsters, Cataclysm, Dungeons Arise      |
| Wave 6 — Building          | 8          | Chipped, Supplementaries, Macaw's, Handcrafted, Building Wands |
| Wave 7 — Space Exploration | ~1         | Stellaris (core)                                               |
| **Total**                | **~92**    | All confirmed NeoForge 1.21.1                                  |                                                              |

### What's New in V3

- Create (mechanical automation, trains)
- Mekanism (fusion reactor, MekaSuit, 5x ore)
- AE2 (digital storage, autocrafting)
- Apotheosis (affixes, gems, enchanting)
- Farmer's Delight (cooking hub)
- Twilight Forest (dimension with bosses)
- L_Ender's Cataclysm (epic boss fights)
- Chipped + Supplementaries + Macaw's + Handcrafted (building blocks)
- Stellaris (space exploration — rockets, planets, oxygen mechanics)
