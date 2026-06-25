# Mod List V2 — Minecraft 1.21.1 Fabric

**Status: Waves 0–4 (Foundation, Tech, Exploration, Equipment Magic, Food & Farming) drafted — Wave 5 open**

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

### Travel & Death

| Mod                                 | Role                                      |
|-------------------------------------|-------------------------------------------|
| Waystones (Fabric)                  | Fast travel between discovered waystones  |
| Universal Graves / Corail Tombstone | Keep inventory on death, grave protection |

### QoL

| Mod                                 | Role                                     |
|-------------------------------------|------------------------------------------|
| EMI (or REI)                        | Recipe viewer (Fabric equivalent of JEI) |
| Jade                                | Block/entity info HUD                    |
| Xaero's Minimap + Xaero's World Map | Mapping and waypoints                    |
| AppleSkin                           | Food hunger/saturation overlay           |
| Mod Menu                            | Mod list and config GUI                  |

---

## Wave 1 — Tech (Oritech)

**Version**: Oritech 1.2.8 (rearth, Jun 21, 2026)

The first major gameplay pillar. Oritech is a Fabric-native tech mod with animated multiblock machines, ore processing chains, electric tools/armor, pipes, drones, laser mining, and cybernetic augmentation.

### Dependencies

| Mod                          | Role                                   |
|------------------------------|----------------------------------------|
| oωo lib                      | GUI library required by Oritech        |
| Athena                       | Connected textures library             |
| Geckolib                     | Animation library for models           |

### Core Mod

| Mod     | Role                                                                                                                              |
|---------|-----------------------------------------------------------------------------------------------------------------------------------|
| Oritech | Tech pillar — ore processing chains, automated farming, pipes, electric tools/armor, drones, lasers, cybernetics, particle accelerators |

### Supporting Mods (Cross-Processing Compat)

These mods add ores and materials that Oritech machines can process. No machine overlap — they just expand the content pool.

| Mod           | Role                                                                      |
|---------------|---------------------------------------------------------------------------|
| Mythic Metals | ~20 new ores/metal types with tools & armor — feeds Oritech processing     |
| Clutter       | Biomes (Redwood Forest, Lupine Fields), mobs, silver/sulphur ores, decor   |
| Alloy Forgery | Multiblock alloy furnace — complementary processing method                 |

### Keybindings (Set These Up)

| Keybind | Default | Mod       | Notes                            |
|---------|---------|-----------|----------------------------------|
| Open Oritech Guide | TBD | Oritech | Opens in-game documentation     |
| Toggle Drone View | TBD | Oritech | View from drone perspective     |
| Open Backpack | `B`     | Sophisticated Backpacks | Already set in Wave 0 |

### Config Changes

*To be populated after test launch.* Oritech has Mod Menu integration for in-game config.

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

Note: oωo lib (Wave 1) is also required by The Aether and Deeper and Darker.

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

> **Note**: Architectury API (Wave 0), Fabric API (Wave 0), Cloth Config (Wave 0), owo lib (Wave 1), and Geckolib (Wave 1) are already present and used by Wave 3 mods.

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
| Wave 1 (Oritech) | Automated farm machines can grow/harvest Let's Do crops. Item pipes feed ingredients into cooking machines |
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
| Tech pillar     | Create + Mekanism      | Oritech (Fabric-native)          |
| Magic pillar    | Ars Nouveau, Apotheosis, Iron's Spells | Equipment magic: Simply Swords + Savaru's Affixology + Relics RPG + Runes |
| Food pillar     | Farmer's Delight + Brewin' And Chewin' | Let's Do ecosystem (Farm & Charm + Bakery + Brewery + HerbalBrews + Candlelight) |
| Terrain mod     | Lithosphere considered | Skipped — keep worldgen flexible |

---

## Next Up

Waves 0–4 drafted, version pins populated. Next:
- Wave 5 — TBD (Combat & Mob Variety? Performance polish? QoL pass?)
- Data packs and config tuning for all waves
- Cross-wave loot integration testing
- First test launch with Waves 0–4
