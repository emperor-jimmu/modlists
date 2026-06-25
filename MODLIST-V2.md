# Mod List V2 — Minecraft 1.21.1 Fabric

**Status: Wave 0 (Foundation) settled — Wave 1 (Oritech tech) drafted — Waves 2+ open**

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

| Mod           | Role                                             |
|---------------|--------------------------------------------------|
| YUNG's API    | Required by YUNG's Better Dungeons (Fabric)      |
| TerraBlender  | Required by some worldgen mods (check Fabric)    |
| Geckolib      | Required by animating mobs in dimension mods     |

### Overworld Worldgen

| Mod       | Role                                                             |
|-----------|------------------------------------------------------------------|
| Terralith | Overhauled Overworld biomes — dramatically more variety           |
| Tectonic  | Better terrain shape — deeper valleys, taller mountains, cliffs  |

### Structures & Navigation

| Mod                | Role                                                  |
|--------------------|-------------------------------------------------------|
| YUNG's Better Dungeons | Overhauled dungeons with better loot and architecture |
| Explorer's Compass | Craftable compass that finds any structure or biome   |

### Dimensions

| Mod                 | Role                                                                                       |
|---------------------|--------------------------------------------------------------------------------------------|
| The Aether          | Sky dimension — safe islands, gear progression, silver/gold dungeons with bosses           |
| Deeper and Darker   | The "Otherside" dimension — deep dark themed, 8 new mobs, miniboss, warden gear            |
| BetterEnd: Remastered | Complete End overhaul — 24+ biomes, new mobs, gear. Unlocked after Ender Dragon falls    |

### Keybindings

| Keybind           | Default | Mod        | Notes                            |
|-------------------|---------|------------|----------------------------------|
| Open Aether menu | TBD     | The Aether | Access Aether progression screen |
| Explorer's Compass GUI | TBD | Explorer's Compass | Open structure finder |

---

## Wave 3 (TBD — Magic Pillar)

*Ars Nouveau Fabric? Hex Casting? To be determined.*

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
| Rethinking Voxels        | Volumetric lighting, coloured block light, sharp shadows |
| Complementary Reimagined | Fallback if RV doesn't perform well                      |

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
| Terrain mod     | Lithosphere considered | Skipped — keep worldgen flexible |

---

## Next Up

Wave 1 (Oritech tech pillar) drafted. Next decisions:
- Wave 2 — Magic pillar (Ars Nouveau Fabric? Hex Casting?)
- Wave 3 — Exploration pillar (The Aether? YUNG's dungeons?)
- Data packs and config tuning
