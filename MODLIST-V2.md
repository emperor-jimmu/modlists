# Mod List V2 — Minecraft 1.21.1 Fabric

**Status: Waves 0–7 (Foundation, Tech, Exploration, Equipment Magic & RPG, Food, Tech Expansion, Combat & Mobs, World Expansion) drafted**

This document defines the mod set for the V2 version of this modpack, targeting **Minecraft 1.21.1** on the **Fabric** modloader. The four pillars (power fantasy, easy-to-standard difficulty, 200h+ content, chill living) remain unchanged — see [AGENTS.md](./AGENTS.md) for the full vision.

> This is a **living document**. Mods will be added, removed, and version-pinned as the pack develops. Each mod entry tracks its role, integration points, and configuration status.

---

## Prerequisites

- **Minecraft: Java Edition** (not Bedrock, not Preview) — purchased and installed via the [official Minecraft Launcher](https://www.minecraft.net/download)
- **Java 21** (required by Minecraft 1.21.1) — download from [Adoptium](https://adoptium.net/download/) (Temurin JDK 21)
- **Fabric Loader** — [Installation Guide](https://fabricmc.net/wiki/install)
- **Fabric API** — [Modrinth](https://modrinth.com/mod/fabric-api)

---

## Wave 0 — Foundation (QoL, Performance, Storage, Comfort)

This wave makes the game run well, look nice, and feel forgiving. No major gameplay mods yet — just the bedrock the rest builds on.

### Dependency Layer

| Mod                           | Role                                               |
|-------------------------------|----------------------------------------------------|
| Fabric API                    | Core Fabric library — required by almost every mod |
| Cloth Config API              | Config screen library                              |
| Architectury API              | Cross-loader compatibility layer                   |
| Yet Another Config Lib (YACL) | Config library used by many Fabric mods            |

### Storage & Inventory

| Mod                              | Role                                                                      |
|----------------------------------|---------------------------------------------------------------------------|
| Sophisticated Storage (Fabric)   | Upgradable barrels, chests, limited barrels — early game storage backbone |
| Sophisticated Backpacks (Fabric) | Portable inventory with upgrades — backpacks, tool belts, quivers         |

### Performance & Rendering

| Mod              | Role                                                               |
|------------------|--------------------------------------------------------------------|
| Sodium           | Rendering engine replacement — huge FPS gains                      |
| Iris             | Shader loader (Oculus equivalent) — enables shaderpacks            |
| Lithium          | Server-side physics/AI/tick optimization                           |
| Distant Horizons | LOD rendering — extreme render distance                            |
| Continuity       | Connected textures for glass, sandstone, bookshelves (client-side) |
| ModernFix        | All-in-one performance + bug fixes — reduces memory, faster startup, replaces LazyDFU |
| ImmediatelyFast  | Speeds up immediate-mode rendering — reduces lag with many entities |
| C2ME Fabric      | Concurrent chunk management — major worldgen and chunk loading performance boost |
| Krypton         | Networking optimization — reduces server-to-client packet overhead |
| Entity Culling   | Hides off-screen block/entity rendering — free FPS in dense areas |
| Dynamic FPS      | Reduces resource usage while Minecraft is in the background, on battery, or idle |
| Noisium          | Optimises worldgen noise generation — faster terrain generation |

### Visual & Client QoL

| Mod                    | Role                                               |
|------------------------|----------------------------------------------------|
| Reese's Sodium Options | Improved Sodium settings UI — searchable, categorized, more intuitive |
| LambDynamicLights      | Dynamic lighting from held items (torches, glowstone, etc.) — client-side, no entity lag |
| BetterF3               | Replaces the debug HUD with a customizable, human-readable layout |
| Sound Physics Remastered | Realistic sound attenuation, reverberation, and absorption through blocks |
| Ambient Leaves         | Falling leaf particles beneath trees — cosmetic, configurable density |
| AmbientSounds          | Dynamic nature ambiance — birds, wind, water, crickets based on biome and time of day. 30M downloads |
| Constant Music         | Removes silence gaps between music tracks — music plays continuously without dead air |

### Travel & Death

| Mod                                 | Role                                      |
|-------------------------------------|-------------------------------------------|
| Waystones (Fabric)                  | Fast travel between discovered waystones  |
| Universal Graves / Corail Tombstone | Keep inventory on death, grave protection |

### Core QoL

| Mod                                 | Role                                     |
|-------------------------------------|------------------------------------------|
| EMI (or REI)                        | Recipe viewer (Fabric equivalent of JEI) |
| Jade                                | Block/entity info HUD                    |
| Xaero's Minimap + Xaero's World Map | Mapping and waypoints                    |
| AppleSkin                           | Food hunger/saturation overlay           |
| Mod Menu                            | Mod list and config GUI                  |

### Inventory & UI QoL

| Mod                    | Role                                               |
|------------------------|----------------------------------------------------|
| Mouse Tweaks           | Inventory management shortcuts — drag to split, scroll to move, LMB+shake to toss |
| Chat Heads             | Shows player heads next to chat messages — useful in multiplayer, unobtrusive in singleplayer |
| Simple Harvest         | Right-click to harvest crops and replant automatically — configurable |
| Jade Addons (Fabric)   | Extra block info panels for Jade — shows more data about machines, animals, crops |

---

## Wave 1 — Tech (Tech Reborn)

The first major gameplay pillar. Tech Reborn is a Fabric-native tech mod with comprehensive ore processing, power generation, machines, tools, armor, and late-game quantum technology. Originally a classic tech mod for Fabric, actively maintained with 37M+ total downloads.

### Dependencies

| Mod          | Role                                           |
|--------------|------------------------------------------------|
| Reborn Core  | Core library required by Tech Reborn           |

### Core Mod

| Mod         | Role                                                                                              |
|-------------|---------------------------------------------------------------------------------------------------|
| Tech Reborn | Tech pillar — ore processing (pulverizer, industrial grinder, chemical reactor), power gen, machines, tools, armor, quantum armor/suit, implosion compressor, fusion reactor |

### Supporting Mods (Cross-Processing Compat)

These mods add ores and materials that Tech Reborn machines can process. No machine overlap — they just expand the content pool.

| Mod           | Role                                                                      |
|---------------|---------------------------------------------------------------------------|
| Mythic Metals | ~20 new ores/metal types with tools & armor — feeds Tech Reborn processing |
| Clutter       | Biomes (Redwood Forest, Lupine Fields), mobs, silver/sulphur ores, decor   |
| Alloy Forgery | Multiblock alloy furnace — complementary processing method                 |

### Keybindings (Set These Up)

| Keybind | Default | Mod       | Notes                            |
|---------|---------|-----------|----------------------------------|
| Open Tech Reborn Guide | TBD | Tech Reborn | Opens in-game documentation     |
| Open Backpack | `B`     | Sophisticated Backpacks | Already set in Wave 0 |

### Config Changes

*To be populated after test launch.* Tech Reborn has extensive config via Mod Menu. Key areas:
- Verify ore generation doesn't clash with Terralith/Tectonic/Mythic Metals
- Adjust Tech Reborn power values to match progression curve
- Consider disabling Logistics: Automation's macerator if Tech Reborn's is preferred

---

## Wave 2 — Exploration (World, Dimensions & Dungeons)

Adds exploration content across the Overworld, new dimensions, and overhauled structures. Gated so you engage when you're ready — nothing forces you into hard content.

### Dependencies

| Mod               | Version                   | Download | Role |
|-------------------|---------------------------|----------|------|
| Lithostitched     | 1.7.11-fabric-21.1        | [Modrinth](https://modrinth.com/mod/lithostitched) | Required by Terralith v2.6.2+ and Tectonic v3+ |
| YUNG's API        | 1.21.1-Fabric-5.1.6       | [Modrinth](https://modrinth.com/mod/yungs-api) | Required by YUNG's Better Dungeons |

TerraBlender is no longer required — Terralith v2.6.2 and Tectonic v3+ use **Lithostitched** instead.

### Overworld Worldgen

| Mod       | Version                   | Download | Role |
|-----------|---------------------------|----------|------|
| Terralith | 2.6.2                     | [Modrinth](https://modrinth.com/mod/terralith) | Overhauled Overworld biomes — dramatically more variety |
| Tectonic  | 3.0.22-fabric-21.1        | [Modrinth](https://modrinth.com/mod/tectonic) | Better terrain shape — deeper valleys, taller mountains, cliffs |

### Structures & Navigation

| Mod                 | Version                   | Download | Role |
|---------------------|---------------------------|----------|------|
| YUNG's Better Dungeons | 1.21.1-Fabric-5.1.4    | [Modrinth](https://modrinth.com/mod/yungs-better-dungeons) | Overhauled dungeons with better loot and architecture |
| Explorer's Compass  | 1.21.1-2.6.0-fabric       | [Modrinth](https://modrinth.com/mod/explorers-compass) | Craftable compass that finds any structure or biome |

### Dimensions

| Mod                 | Version                   | Download | Role |
|---------------------|---------------------------|----------|------|
| The Aether          | 1.21.1-1.5.11-fabric      | [Modrinth](https://modrinth.com/mod/aether) | Sky dimension — safe islands, gear progression, silver/gold dungeons with bosses |
| Deeper and Darker   | 1.3.3-plus-b-fabric+1.21  | [Modrinth](https://modrinth.com/mod/deeperdarker) | The "Otherside" dimension — deep dark themed, 8 new mobs, miniboss, warden gear |
| BetterEnd: Remastered | 21.0.11                 | [Modrinth](https://modrinth.com/mod/betterend) | Complete End overhaul — 24+ biomes, new mobs, gear. Unlocked after Ender Dragon falls |

### Additional Libraries

| Mod    | Version | Download | Required By |
|--------|---------|----------|-------------|
| BCLib  | 21.0.13 | [Modrinth](https://modrinth.com/mod/bclib) | BetterEnd: Remastered — core library for End dimension mods |
| owo lib | latest | [Modrinth](https://modrinth.com/mod/owo-lib) | The Aether, Deeper and Darker — GUI library |
| Geckolib | latest | [Modrinth](https://modrinth.com/mod/geckolib) | The Aether — animation library for models |

### Keybindings

| Keybind           | Default | Mod        | Notes                            |
|-------------------|---------|------------|----------------------------------|
| Open Aether menu | TBD     | The Aether | Access Aether progression screen |
| Explorer's Compass GUI | TBD | Explorer's Compass | Open structure finder |

---

## Wave 3 — Equipment Magic, Loot & RPG Progression

The magic pillar manifests through **gear**, not spellbooks. Every weapon drop can roll with random affixes, every accessory provides a unique legendary-style ability, and runes socket into gear for customization. Three layers build on each other: Simply Swords (weapons that feel special), Savaru's Affixology (Diablo-style loot), and Relics RPG (accessories that change how you play).

Above all of it: a **Skill Tree** that gives every action meaning. Earn XP from mining, fighting, crafting, and exploring → level up → spend points on attributes (strength, health, speed, spell power) and unlock passive abilities. The same XP system works alongside every other wave.

### Core Mods

| Mod                    | Version                    | Download | Role |
|------------------------|----------------------------|----------|------|
| Skill Tree (RPG Series) | 1.4.4+1.21.1-fabric       | [Modrinth](https://modrinth.com/mod/skill-tree) | RPG leveling and skill tree — earn XP, spend points on attributes and passives |
| Simply Swords          | 1.63.0-1.21.1              | [Modrinth](https://modrinth.com/mod/simply-swords) | 60+ unique weapons, each with a passive/activated ability |
| Savaru's Affixology    | 2.1.6                      | [Modrinth](https://modrinth.com/mod/savaru-affixes) | Diablo-style loot: rarity tiers, random affixes, gem socketing, unidentified gear, inscriptions |
| Relics RPG             | 1.3.0+1.21.1-fabric        | [Modrinth](https://modrinth.com/mod/relics-rpg) | Legendary-style accessories with unique passive/active abilities |
| Runes                  | 1.2.1+1.21.1-fabric        | [Modrinth](https://modrinth.com/mod/runes) | Socketable runes for weapons/tools — swappable tactical effects |

### Magic Framework (Library Layer)

| Mod              | Version                    | Download | Role |
|------------------|----------------------------|----------|------|
| Spell Engine     | 1.9.9+1.21.1-fabric        | [Modrinth](https://modrinth.com/mod/spell-engine) | Casting framework and magic attribute API |
| Spell Power      | 1.4.6+1.21.1-fabric        | [Modrinth](https://modrinth.com/mod/spell-power) | Magic attribute system: spell damage, crit, haste, resistance |
| Trinkets         | 3.10.0                     | [Modrinth](https://modrinth.com/mod/trinkets) | Accessory slot API — rings, amulets, belts, gloves |

### New Dependencies

| Mod               | Version | Download | Required By |
|-------------------|---------|----------|-------------|
| Pufferfish's Skills | 0.18.0  | [Modrinth](https://modrinth.com/mod/skills) | Skill Tree (RPG Series) — underlying skill system framework |
| Simply Tooltips   | latest  | [Modrinth](https://modrinth.com/mod/simply-tooltips) | Simply Swords — dynamic tooltips with ability descriptions |
| Fzzy Config       | latest  | [Modrinth](https://modrinth.com/mod/fzzy-config) | Simply Swords — config library |
| More RPG Library  | latest  | [Modrinth](https://modrinth.com/mod/more-rpg-library) | Savaru's Affixology — library mod |
| Patchouli         | latest  | [Modrinth](https://modrinth.com/mod/patchouli) | Savaru's Affixology — in-game guidebook |
| Bundle API        | latest  | [Modrinth](https://modrinth.com/mod/bundle-api) | Runes — rune pouch implementation |

> **Note**: Architectury API (Wave 0), Fabric API (Wave 0), Cloth Config (Wave 0) are already present and used by Wave 3 mods. owo lib and Geckolib (added in Wave 2) are also used.

### How the Layers Stack

| Layer | What it adds | Progression Gate |
|-------|-------------|------------------|
| **Skill Tree** | RPG leveling — earn XP from any action, spend points on attributes and passives | Phase 1 — starts immediately, every action earns XP |
| **Simply Swords** | 60+ unique weapons dropping from mobs and chests | Phase 1 — starts at common mob kills (~2% drop rate) |
| **Savaru's Affixology** | Rarity tiers on all gear, random affixes, gems, unidentified gear | Phase 1 — identification accessible early (paper + feather) |
| **Relics RPG** | Legendary accessories with unique abilities | Phase 2 — mid-tier relics from dungeon loot, epic from endgame |
| **Runes** | Socketable runes for weapons/tools | Phase 2 — rune pouch craftable, runes found in loot |

### Keybindings

| Keybind                 | Default | Mod             | Notes |
|-------------------------|---------|-----------------|-------|
| View Unique Weapon Abilities | `Ctrl` (hold) | Simply Swords | Shows tooltip info about equipped weapon |
| Open Rune Pouch         | TBD     | Runes           | Opens the rune pouch inventory |

### Config Changes

*To be populated after test launch.* Key areas to check:
- Savaru's Affixology: verify identification recipe, XP cost for ash repair
- Simply Swords: verify unique weapon drop rates
- Relics RPG: verify loot injection into YUNG's and Terralith structures

---

## Wave 4 — Food, Farming & Comfort

The Let's Do ecosystem replaces Farmer's Delight as the Fabric-native cooking hub. No hunger/thirst overhauls, no decay mechanics — just better food that's fun to grow, cook, and share.

Farm & Charm is the core; Bakery, Brewery, HerbalBrews, and Candlelight extend it without overlapping. All dependencies (Cloth Config, Architectury API) already present from earlier waves.

### Core Mods

| Mod                | Version | Download | Role |
|--------------------|---------|----------|------|
| Farm & Charm       | 1.1.22  | [Modrinth](https://modrinth.com/mod/lets-do-farm-charm) | Core cooking/farming hub — new crops, soil types, cutting board, cooking pot, stove, animals |
| Bakery             | 2.1.6   | [Modrinth](https://modrinth.com/mod/lets-do-bakery) | Breads, cakes, pies, pastries — multi-block oven, dough crafting, decorative cakes |
| Brewery            | 2.1.9   | [Modrinth](https://modrinth.com/mod/lets-do-brewery) | Fermentation, alcoholic drinks — brewing station, aging barrels, drink effects (haste, resistance) |
| HerbalBrews        | 1.1.3   | [Modrinth](https://modrinth.com/mod/lets-do-herbalbrews) | Teas and herbal drinks — tea leaves, chamomile, lavender, restorative effects |
| Candlelight        | 2.1.12  | [Modrinth](https://modrinth.com/mod/lets-do-candlelight) | Dining decoration and feasts — cooking pots, pans, plates, glasses, tablecloths, candelabras |

### Dependencies

All required libraries already present from earlier waves:

| Library | Present Since | Required By |
|---------|---------------|-------------|
| Cloth Config API  | Wave 0 | Farm & Charm, Bakery, Brewery, Candlelight |
| Architectury API  | Wave 0 | All Let's Do mods |

### Integration with Other Waves

| Wave | Integration |
|------|-------------|
| Wave 1 (Tech Reborn) | Tech Reborn machines can process Let's Do crops. Logistics pipes feed ingredients into cooking machines |
| Wave 2 (Exploration) | New crops spawn naturally in Terralith/Tectonic biomes. Saturation meals make exploration safer |
| Wave 3 (Equipment Magic) | Food buffs stack with gear affixes — fully fed + Epic-geared player is significantly stronger |

### Keybindings

| Keybind | Default | Mod | Notes |
|---------|---------|-----|-------|
| Open Cooking Pot | Right-click | Farm & Charm | Opens the cooking GUI |
| Open Oven | Right-click | Bakery | Multi-block oven interface |

### Config Changes

- Farm & Charm: verify crop spawn rates in Terralith biomes
- Brewery: ensure drink buffs are balanced for the power curve
- All mods: verify no hunger drain or decay mechanics are enabled by default

---

## Wave 5 — Tech Expansion

Builds on Wave 1's Tech Reborn foundation with two complementary mods: Logistics: Automation (smart pipes, provider/requester network, autocrafting) and Powah ReFabric (additional high-tier power generation).

Together they form a complete tech ecosystem: Tech Reborn handles machine progression and processing, Logistics handles smart item routing with autocrafting, and Powah provides endgame power.

### Core Mods

| Mod                    | Version | Download | Role |
|------------------------|---------|----------|------|
| Logistics: Automation  | 0.7.4+mc1.21.1.fabric | [Modrinth](https://modrinth.com/mod/logistics) | BuildCraft-inspired pipes — mechanical → smart → network logistics. Visible in-pipe item movement, provider/requester/crafting pipes, laser quarry |
| Powah ReFabric         | 5.1.0   | [Modrinth](https://modrinth.com/mod/powah-refabric) | Additional power generation — 6-tier solar panels, thermoelectric, lightning, batteries, energy cables |

### Dependencies

All required libraries already present from earlier waves:

| Library | Present Since | Required By |
|---------|---------------|-------------|
| Fabric API  | Wave 0 | Both mods |
| Cloth Config | Wave 0 | Powah ReFabric |

### Integration

| Wave | Integration |
|------|-------------|
| Wave 1 (Tech Reborn) | Logistics provider pipes connect to Tech Reborn machines for network inventory. Logistics crafting pipes autocraft from Tech Reborn outputs. Powah generators power Tech Reborn machines |
| Wave 3 (Equipment Magic) | Powah batteries store power for charging Tech Reborn quantum armor (which stacks with Affixology affixes) |
| Wave 4 (Food & Farming) | Tech Reborn + Logistics automation processes Let's Do crops industrially |

### Keybindings

| Keybind | Default | Mod | Notes |
|---------|---------|-----|-------|
| Wrench configure | Right-click with wrench | Logistics | Configure pipe connections and machine facing |

### Config Changes

- Tech Reborn: verify ore gen doesn't clash with Mythic Metals, Terralith, or Tectonic
- Logistics: ensure pipe power consumption is compatible with Tech Reborn's RF
- Powah: balance solar panel output to match Tech Reborn's power curve
- Consider disabling one macerator if both Tech Reborn and Logistics provide one

---

## Wave 6 — Combat & Mobs

Gives the player's powerful gear something to fight. Better Combat makes every weapon feel distinct. Mutant Monsters and AdventureZ add genuinely threatening enemies. Champions adds elite mob affixes for loot chases. Everything is configurable or opt-in.

### Core Mods

| Mod                    | Version | Download | Role |
|------------------------|---------|----------|------|
| Better Combat          | 2.3.2+1.21.1-fabric | [Modrinth](https://modrinth.com/mod/better-combat) | Melee combat animations — weapon reach, sweeping, attack speed visuals. Makes Simply Swords weapons shine |
| Mutant Monsters        | 21.1.1-1.21.1-Fabric | [Modrinth](https://modrinth.com/mod/mutant-monsters) | Mutant zombie, skeleton, creeper, enderman — each drops unique gear (Hulk Hammer, Mutant Skeleton Armor). Configurable spawn rate |
| AdventureZ             | 1.5.0+1.21.1 | [Modrinth](https://modrinth.com/mod/adventurez) | New endboss (Blackstone Golem, ritual-summoned), dragon boss (The Eye, altar-summoned), overworld/nether mobs. Opt-in content |
| Champions              | 1.0.6v-1.21.1 | [Modrinth](https://modrinth.com/mod/champions-fabric) | Elite mob affixes — rare/epic mobs with special abilities (hasty, molten, reflective, etc.). Better loot at higher ranks |
| Enchantment Descriptions | 21.1.10 | [Modrinth](https://modrinth.com/mod/enchantment-descriptions) | Shows what enchantments do in tooltips — essential QoL, 30M downloads |

### New Dependencies

| Mod                | Required By | Notes |
|--------------------|-------------|-------|
| PlayerAnimator     | Better Combat | Animation library — 22M downloads |
| Puzzles Lib        | Mutant Monsters | Library by same author (Fuzs) |
| Forge Config API Port | Mutant Monsters | Fabric port of Forge config API |
| Bookshelf Lib      | Enchantment Descriptions | Library by Darkhax |
| Prickle            | Enchantment Descriptions | Config library |

All other dependencies (Fabric API, Cloth Config, Mod Menu) already present from earlier waves.

### Integration

| Wave | Integration |
|------|-------------|
| Wave 3 (Equipment Magic) | Better Combat animations enhance Simply Swords unique weapons. Champions drop higher-rarity gear. Mutant gear socketable with Affixology gems |
| Wave 1 (Tech Reborn) | Mutant drops processed through Tech Reborn machines. Quantum armor + Better Combat = satisfying combat |
| Wave 2 (Exploration) | Mutants spawn in Terralith/Tectonic biomes. AdventureZ bosses are optional endgame targets |

### Keybindings

| Keybind | Default | Mod | Notes |
|---------|---------|-----|-------|
| Better Combat config | TBD | Better Combat | Access via Mod Menu → Better Combat |

### Config Changes

- Mutant Monsters: reduce spawn rate to ~50% of default for chill-friendly pacing
- Champions: adjust rank distribution to favor common over elite spawns
- AdventureZ: no changes needed — bosses are already opt-in (ritual/altar-summoned)

---

## Wave 7 — World Expansion & Exploration

Wave 2 made the world larger (Terralith + Tectonic + YUNG's Better Dungeons). Wave 7 fills that world with more to find: all remaining vanilla structures get YUNG's overhaul, new biome variants add discovery, and hundreds of new structures populate the landscape. The Bumblezone adds a bee-themed dimension.

### YUNG's Structure Overhauls

All use YUNG's API (already in Wave 2). Zero new library deps.

| Mod                         | Version                    | Download | Role |
|-----------------------------|----------------------------|----------|------|
| YUNG's Better Nether Fortresses | 1.21.1-Fabric-3.1.5    | [Modrinth](https://modrinth.com/mod/yungs-better-nether-fortresses) | Overhauled nether fortresses — better layouts, new rooms, improved loot |
| YUNG's Better Ocean Monuments  | 1.21.1-Fabric-4.1.2    | [Modrinth](https://modrinth.com/mod/yungs-better-ocean-monuments) | Redesigned ocean monument interiors with better loot |
| YUNG's Better Jungle Temples   | 1.21.1-Fabric-3.1.2    | [Modrinth](https://modrinth.com/mod/yungs-better-jungle-temples) | Jungle temples with traps, puzzles, and rewarding loot |
| YUNG's Better Mineshafts       | 1.21.1-Fabric-5.1.1    | [Modrinth](https://modrinth.com/mod/yungs-better-mineshafts) | Mineshafts with varied designs and new minecart chests |
| YUNG's Better End Island       | 1.21.1-Fabric-3.1.2    | [Modrinth](https://modrinth.com/mod/yungs-better-end-island) | Improved End island terrain and structures |
| YUNG's Better Strongholds      | 1.21.1-Fabric-5.1.3    | [Modrinth](https://modrinth.com/mod/yungs-better-strongholds) | Larger, more complex strongholds with better End portal rooms |
| YUNG's Better Witch Huts       | 1.21.1-Fabric-4.1.1    | [Modrinth](https://modrinth.com/mod/yungs-better-witch-huts) | Expanded witch huts with brewing-themed loot |
| YUNG's Better Desert Temples   | 1.21.1-Fabric-4.1.5    | [Modrinth](https://modrinth.com/mod/yungs-better-desert-temples) | Multi-room desert temples with new traps and loot |
| YUNG's Better Caves            | 1.21.1-Fabric-3.1.4    | [Modrinth](https://modrinth.com/mod/yungs-better-caves) | Larger, more varied cave generation |

### New Biomes, Structures & Dimension

| Mod                    | Version | Download | Role | New Deps |
|------------------------|---------|----------|------|----------|
| Regions Unexplored     | 0.6.1-fabric-21.1 | [Modrinth](https://modrinth.com/mod/regions-unexplored) | 65+ new Overworld biomes with unique trees, plants, and terrain | Lithostitched (present) |
| Repurposed Structures  | 7.5.21+1.21.1-fabric | [Modrinth](https://modrinth.com/mod/repurposed-structures) | Biome-variant versions of every vanilla structure — desert villages, nether outposts, end fortresses, and more | MidnightLib (new) |
| Additional Structures  | 5.1.0 | [Modrinth](https://modrinth.com/mod/additional-structures) | 200+ new structures: watchtowers, camps, ruins, shrines, monuments | none |
| The Bumblezone         | 7.15.0+1.21.1-fabric | [Modrinth](https://modrinth.com/mod/the-bumblezone-fabric) | A bee-themed dimension — giant bees, honey/wax blocks, bee puzzles, new resources. Enter via bee nest/hive | Resourceful Lib (new), MidnightLib (new) |

### New Dependencies

| Mod             | Required By | Notes |
|-----------------|-------------|-------|
| MidnightLib     | Repurposed Structures, The Bumblezone | Lightweight config library — only depends on Fabric API |
| Resourceful Lib | The Bumblezone | Library used by many mods — only depends on Fabric API |

### Integration

| Wave | Integration |
|------|-------------|
| Wave 2 (Terralith) | Regions Unexplored biomes generate alongside Terralith. Tectonic terrain shapes new biomes. YUNG's structures spawn in Terralith biomes |
| Wave 3 (Equipment Magic) | New structure loot feeds into Affixology. Simply Swords weapons found in new chests |
| Wave 6 (Combat) | Mutants and Champions can spawn in new structures. AdventureZ nether mobs in Better Nether Fortresses |

---

## Data Packs

| Data Pack        | Purpose                                                       | Status |
|------------------|---------------------------------------------------------------|--------|
| No Creeper Grief | Prevent creeper block damage (same as V1 — platform-agnostic) | TBD    |

---

## Shaderpacks

Shaderpacks are `.zip` files in `shaderpacks/`, not `mods/`. Platform-agnostic (work via Iris on Fabric just like Oculus on Forge).

| Shaderpack               | Description                                              |
|--------------------------|----------------------------------------------------------|
| Complementary Unbound    | Two visual styles (realistic + vanilla+), Potato→Ultra profiles, custom effects for almost every block, 34.5M downloads |
| Complementary Reimagined | The vanilla+ style preset of Complementary — fallback if you prefer the look |

---

## Key Changes from V1 (Forge 1.20.1)

| Aspect          | V1                     | V2                               |
|-----------------|------------------------|----------------------------------|
| Minecraft       | 1.20.1                 | 1.21.1                           |
| Modloader       | Forge                  | Fabric                           |
| Performance     | Embeddium + Oculus     | Sodium + Iris                    |
| Recipe Viewer   | JEI                    | EMI                              |
| Java            | 17                     | 21                               |
| Colonies pillar | MineColonies           | Dropped (Forge-only)             |
| Tech pillar     | Create + Mekanism      | Tech Reborn + Logistics: Automation + Powah ReFabric |
| Magic pillar    | Ars Nouveau, Apotheosis, Iron's Spells | Equipment magic: Simply Swords + Savaru's Affixology + Relics RPG + Runes |
| Food pillar     | Farmer's Delight + Brewin' And Chewin' | Let's Do ecosystem (Farm & Charm + Bakery + Brewery + HerbalBrews + Candlelight) |
| Terrain mod     | Lithosphere considered | Skipped — keep worldgen flexible |

---

## Next Up

All waves 0–7 drafted, version pins populated. Next:
- First test launch with Waves 0–7
- Data packs and config tuning for all waves
- Cross-wave integration testing
