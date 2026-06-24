# Mod List — Minecraft 1.20.1 Forge

## Prerequisites

- **Minecraft: Java Edition** (not Bedrock, not Preview) — purchased and installed via the [official Minecraft Launcher](https://www.minecraft.net/download)
- **Java 17** (required by Minecraft 1.20.1 + Forge) — download from [Adoptium](https://adoptium.net/download/) (Temurin JDK 17)

> **Can mods be installed via the Forge installer?** No. The Forge installer only installs the modloader itself. Mod `.jar` files must be downloaded manually and placed in the `mods/` folder. Third-party launchers (Prism Launcher, Modrinth App, CurseForge App) can automate this, but vanilla Forge cannot.

---

## Step 1 — Install Minecraft 1.20.1

1. Open the Minecraft Launcher
2. Go to **Installations** tab → **New Installation**
3. Select version **release 1.20.1**
4. Name it `Forge 1.20.1` (or whatever you prefer)
5. Click **Create**, then **Play** once to generate the game folder
6. Close Minecraft after the title screen loads

This creates your `.minecraft` folder with the 1.20.1 version profile.

---

## Step 2 — Install Forge

Download and run the **Forge 1.20.1 Installer**:

> [https://files.minecraftforge.net/net/minecraftforge/forge/index_1.20.1.html](https://files.minecraftforge.net/net/minecraftforge/forge/index_1.20.1.html)

Pick the **latest recommended** build (47.3.x — the final stable branch for 1.20.1).

1. Run the downloaded `.jar` installer
2. Select **Install client** → OK
3. The launcher will now have a `forge-1.20.1` profile
4. Launch it once, then close — this creates the `mods/` folder

Your mod folder location (Windows):

```
%APPDATA%\.minecraft\mods\
```

---

## Step 3 — Download Mods

Place all `.jar` files directly into `mods/`. **Do not unzip them.**

### Dependency Layer

| Mod                                         | Version | File                                       | Direct Download                                                                                               |
|---------------------------------------------|---------|--------------------------------------------|---------------------------------------------------------------------------------------------------------------|
| Sophisticated Core                          | 1.3.56  | `sophisticatedcore-1.20.1-1.3.56.2042.jar` | [Download](https://cdn.modrinth.com/data/nmoqTijg/versions/XlE1jclJ/sophisticatedcore-1.20.1-1.3.56.2042.jar) |
| YUNG's API (required by YUNG mods)          | 4.0.6   | `YungsApi-1.20-Forge-4.0.6.jar`            | [Download](https://cdn.modrinth.com/data/Ua7DFN59/versions/PJOYAmAs/YungsApi-1.20-Forge-4.0.6.jar)            |
| Balm (required by Waystones)                | 7.3.38  | `balm-forge-1.20.1-7.3.38-all.jar`         | [Download](https://cdn.modrinth.com/data/MBAkmtvl/versions/8rz04Kha/balm-forge-1.20.1-7.3.38-all.jar)         |
| Lionfish API (required by Cataclysm)        | 3.0     | `lionfishapi-3.0.jar`                      | [Download](https://cdn.modrinth.com/data/FoVacERa/versions/mWkKVbyd/lionfishapi-3.0.jar)                      |
| Curios API (required by Cataclysm & Aether) | 5.14.1 | `curios-forge-5.14.1+1.20.1.jar` |
| Fragmentum (required by Loot Journal)      | 1.3.0  | `fragmentum-forge-1.20.1-1.3.0.jar`           | [Download](https://cdn.modrinth.com/data/vvuO3ImH/versions/IPQlZkz1/curios-forge-5.14.1%2B1.20.1.jar)         |

### Core Modpack

| Mod                     | Version | File                                             | Direct Download                                                                                                     |
|-------------------------|---------|--------------------------------------------------|---------------------------------------------------------------------------------------------------------------------|
| Sophisticated Backpacks | 3.24.58 | `sophisticatedbackpacks-1.20.1-3.24.58.1917.jar` | [Download](https://cdn.modrinth.com/data/TyCTlI4b/versions/cVkRU86a/sophisticatedbackpacks-1.20.1-3.24.58.1917.jar) |
| Sophisticated Storage   | 1.4.59  | `sophisticatedstorage-1.20.1-1.4.59.1855.jar`    | [Download](https://cdn.modrinth.com/data/hMlaZH8f/versions/Natz2wAO/sophisticatedstorage-1.20.1-1.4.59.1855.jar)    |
| Guard Villagers         | 1.6.18  | `guardvillagers-1.20.1-1.6.18.jar`               | [Download](https://cdn.modrinth.com/data/H1sntfo8/versions/jhuh3S9g/guardvillagers-1.20.1-1.6.18.jar)               |
| Create                  | 6.0.8   | `create-1.20.1-6.0.8.jar`                        | [Download](https://cdn.modrinth.com/data/LNytGWDc/versions/8amzvn9x/create-1.20.1-6.0.8.jar)                        |
| Create: Big Cannons     | 5.11.4  | `createbigcannons-5.11.4-mc.1.20.1-forge.jar`    | [Download](https://cdn.modrinth.com/data/GWp4jCJj/versions/ZRgu5o3x/createbigcannons-5.11.4-mc.1.20.1-forge.jar)    |
| Create: Steam 'n' Rails | 1.7.2   | `Steam_Rails-1.7.2+forge-mc1.20.1.jar`           | [Download](https://cdn.modrinth.com/data/ZzjhlDgM/versions/I6GhUCyk/Steam_Rails-1.7.2%2Bforge-mc1.20.1.jar)         |
| Mekanism                | 10.4.16 | `Mekanism-1.20.1-10.4.16.80.jar`                 | [Download](https://cdn.modrinth.com/data/Ce6I4WUE/versions/uxe1WQp4/Mekanism-1.20.1-10.4.16.80.jar)                 |
| Mekanism Generators     | 10.4.16 | `MekanismGenerators-1.20.1-10.4.16.80.jar`       | [Download](https://cdn.modrinth.com/data/OFVYKsAk/versions/Th4Czz4N/MekanismGenerators-1.20.1-10.4.16.80.jar)       |
| Mekanism Tools          | 10.4.16 | `MekanismTools-1.20.1-10.4.16.80.jar`            | [Download](https://cdn.modrinth.com/data/tqQpq1lt/versions/VzpFbUpF/MekanismTools-1.20.1-10.4.16.80.jar)            |
| Mekanism Additions      | 10.4.16 | `MekanismAdditions-1.20.1-10.4.16.80.jar`        | [Download](https://cdn.modrinth.com/data/a6F3uASn/versions/RFiZ24he/MekanismAdditions-1.20.1-10.4.16.80.jar)        |
| Applied Energistics 2   | 15.4.10 | `appliedenergistics2-forge-15.4.10.jar`          | [Download](https://cdn.modrinth.com/data/XxWD5pD3/versions/7KVs6HMQ/appliedenergistics2-forge-15.4.10.jar)          |
| Ars Nouveau             | 4.12.7  | `ars_nouveau-1.20.1-4.12.7-all.jar`              | [Download](https://cdn.modrinth.com/data/TKB6INcv/versions/Hw2aD01e/ars_nouveau-1.20.1-4.12.7-all.jar)              |
| Apotheosis Ascended     | 1.4.0   | `apotheosis-ascended-1.4.0.jar`                  | [Download](https://cdn.modrinth.com/data/uwCpk80h/versions/BudEWzNX/apotheosis-ascended-1.4.0.jar)                  |
| Farmer's Delight        | 1.3.2   | `FarmersDelight-1.20.1-1.3.2.jar`                | [Download](https://cdn.modrinth.com/data/R2OftAxM/versions/CsjS7EkP/FarmersDelight-1.20.1-1.3.2.jar)                |
| Brewin' And Chewin'     | 3.2.1   | `BrewinAndChewin-1.20.1-3.2.1.jar`               | [Download](https://cdn.modrinth.com/data/hIu9KJTT/versions/9myDFPCD/BrewinAndChewin-1.20.1-3.2.1.jar)               |
| Delightful              | 3.8.1   | `Delightful-1.20.1-3.8.1.jar`                    | [Download](https://cdn.modrinth.com/data/JtSnhtNJ/versions/HbEQIqIu/Delightful-1.20.1-3.8.1.jar)                    |
| Storage Delight         | 26.04.18 | `storagedelight-26.04.18+1.20-forge.jar`        | [Download](https://cdn.modrinth.com/data/LTTvOp5L/versions/qap5u6BM/storagedelight-26.04.18%2B1.20-forge.jar)       |
| Chunk Loaders           | 1.2.9   | `chunkloaders-1.2.9-forge-mc1.20.1.jar`          | [Download](https://cdn.modrinth.com/data/t1VgucWo/versions/hfQ3VSpz/chunkloaders-1.2.9-forge-mc1.20.1.jar)          |
| Waystones               | 14.1.20 | `waystones-forge-1.20.1-14.1.20.jar`             | [Download](https://cdn.modrinth.com/data/LOpKHB2A/versions/sKoHLGbK/waystones-forge-1.20.1-14.1.20.jar)             |
| Corail Tombstone        | 9.1.0   | `tombstone-1.20.1-9.1.0.jar`                     | [CurseForge](https://www.curseforge.com/minecraft/mc-mods/corail-tombstone/files/8257477)                           |

### World & Exploration

| Mod                           | Version  | File                                             | Direct Download                                                                                                         |
|-------------------------------|----------|--------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------|
| YUNG's Better Dungeons        | 4.0.4    | `YungsBetterDungeons-1.20-Forge-4.0.4.jar`       | [Download](https://cdn.modrinth.com/data/o1C1Dkj5/versions/kPiQ6v4q/YungsBetterDungeons-1.20-Forge-4.0.4.jar)           |
| YUNG's Better Mineshafts      | 4.0.4    | `YungsBetterMineshafts-1.20-Forge-4.0.4.jar`     | [Download](https://cdn.modrinth.com/data/HjmxVlSr/versions/kVO57zxB/YungsBetterMineshafts-1.20-Forge-4.0.4.jar)         |
| YUNG's Better Ocean Monuments | 3.0.4    | `YungsBetterOceanMonuments-1.20-Forge-3.0.4.jar` | [Download](https://cdn.modrinth.com/data/3dT9sgt4/versions/SN4iZ7wf/YungsBetterOceanMonuments-1.20-Forge-3.0.4.jar)     |
| The Twilight Forest           | 4.3.2508 | `Twilight Forest - MC 1.20.1 - 4.3.2508.jar`     | [CurseForge](https://www.curseforge.com/minecraft/mc-mods/the-twilight-forest/files?version=1.20.1&gameVersionTypeId=1) |
| The Aether                    | 1.5.2    | `aether-1.20.1-1.5.2-neoforge.jar`               | [Download](https://cdn.modrinth.com/data/YhmgMVyu/versions/2411kUqF/aether-1.20.1-1.5.2-neoforge.jar)                   |
| L_Ender's Cataclysm           | 3.31     | `L_Enders_Cataclysm-3.31.jar`                    | [Download](https://cdn.modrinth.com/data/46KJle7n/versions/C3H0azzB/L_Enders_Cataclysm-3.31.jar)                        |

> YUNG mods all require **YUNG's API** (listed in Dependency Layer). Install that first. The Twilight Forest is on CurseForge only — download the 1.20.1 Forge file.
>
> **Waystones** requires **Balm** (listed in Dependency Layer). **L_Ender's Cataclysm** requires **Lionfish API** and **Curios API**. **The Aether** embeds Curios API — no separate download needed, but Curios must be installed separately for Cataclysm to use it.
>
> **The Aether** files are tagged "neoforge" on Modrinth but are fully Forge-compatible (marked for both loader types).
>
> **Loot Journal: Pickup Notifier** requires **Fragmentum** (listed in Dependency Layer) — a lightweight framework mod from the Obscuria Collection.
>
> **Brewin' And Chewin'** requires **Farmer's Delight**. **Delightful** and **Storage Delight** have no required dependencies but are designed as Farmer's Delight companions. All three work together and with each other — Brewin' adds fermentation and drinks, Delightful adds new meals, Storage Delight adds kitchen furniture.

### Graphics

| Mod              | Version | File                                              | Direct Download                                                                                                      |
|------------------|---------|---------------------------------------------------|----------------------------------------------------------------------------------------------------------------------|
| Embeddium        | 0.3.31  | `embeddium-0.3.31+mc1.20.1.jar`                   | [Download](https://cdn.modrinth.com/data/sk9rgfiA/versions/UTbfe5d1/embeddium-0.3.31%2Bmc1.20.1.jar)                 |
| Oculus           | 1.8.0   | `oculus-mc1.20.1-1.8.0.jar`                       | [Download](https://cdn.modrinth.com/data/GchcoXML/versions/iQ1SwGc3/oculus-mc1.20.1-1.8.0.jar)                       |
| Distant Horizons | 3.1.2-b | `DistantHorizons-3.1.2-b-1.20.1-fabric-forge.jar` | [Download](https://cdn.modrinth.com/data/uCdwusMi/versions/4HFx4xGx/DistantHorizons-3.1.2-b-1.20.1-fabric-forge.jar) |

> **Embeddium** is required by Oculus — install it even if you don't care about performance.

### MineColonies & Dependencies

MineColonies distributes on CurseForge with required dependencies. CurseForge does not provide direct download links — use the project pages below and download the **1.20.1 Forge** file for each.

| Mod              | Project Page                                                                                                         |
|------------------|----------------------------------------------------------------------------------------------------------------------|
| BlockUI          | [CurseForge](https://www.curseforge.com/minecraft/mc-mods/blockui/files?version=1.20.1&gameVersionTypeId=1)          |
| Domum Ornamentum | [CurseForge](https://www.curseforge.com/minecraft/mc-mods/domum-ornamentum/files?version=1.20.1&gameVersionTypeId=1) |
| Multi-Piston     | [CurseForge](https://www.curseforge.com/minecraft/mc-mods/multi-piston/files?version=1.20.1&gameVersionTypeId=1)     |
| Structurize      | [CurseForge](https://www.curseforge.com/minecraft/mc-mods/structurize/files?version=1.20.1&gameVersionTypeId=1)      |
| **MineColonies** | [CurseForge](https://www.curseforge.com/minecraft/mc-mods/minecolonies/files?version=1.20.1&gameVersionTypeId=1)     |

> As of Jun 24 2026, the latest 1.20.1 Forge release is `minecolonies-1.20.1-1.1.1249-snapshot.jar`. MineColonies may bundle some of its dependencies — try launching with just MineColonies first, and add only what Forge complains is missing.

### QoL

| Mod        | Version | What it does                                                                                     | File                                 | Direct Download                                                                                         |
|------------|---------|--------------------------------------------------------------------------------------------------|--------------------------------------|---------------------------------------------------------------------------------------------------------|
| JEI        | 15.20.0 | Recipe browser — press R on any item to see how to craft it, U to see its uses                   | `jei-1.20.1-forge-15.20.0.132.jar`   | [Download](https://cdn.modrinth.com/data/u6dRKJwZ/versions/p5mYHvjx/jei-1.20.1-forge-15.20.0.132.jar)   |
| JourneyMap | 5.10.3  | Minimap + full-screen map — auto-maps every chunk you visit, waypoints, death markers            | `journeymap-1.20.1-5.10.3-forge.jar` | [Download](https://cdn.modrinth.com/data/lfHFW1mp/versions/r7FWVNCs/journeymap-1.20.1-5.10.3-forge.jar) |
| AppleSkin  | 2.5.1   | Food info overlay — shows exact hunger and saturation restored by each food item on hover        | `appleskin-forge-mc1.20.1-2.5.1.jar` | [Download](https://cdn.modrinth.com/data/EsAfCjCV/versions/XdXDExVF/appleskin-forge-mc1.20.1-2.5.1.jar) |
| Fancy Toasts | 1.4.7 | Fancy advancement toast popups — customizable animations, sounds, and textures (8 theme types) | `fancytoasts-forge-1.20.1-1.4.7.jar` | [Download](https://cdn.modrinth.com/data/eUziWqPC/versions/ZZLFzqe2/fancytoasts-forge-1.20.1-1.4.7.jar) |
| Jade       | 11.13.2 | Block/entity info HUD — shows what you're looking at, harvest tool, mod origin, storage contents | `Jade-1.20.1-Forge-11.13.2.jar`      | [Download](https://cdn.modrinth.com/data/nvQzSEkH/versions/LecuGude/Jade-1.20.1-Forge-11.13.2.jar)      |
| Loot Journal: Pickup Notifier | 6.2.1 | Customizable item pickup notifications — animations, themes, filtering, and layout options | `loot_journal-forge-1.20.1-6.2.1.jar` | [Download](https://cdn.modrinth.com/data/OJ6ZYz5L/versions/tkx0bPOi/loot_journal-forge-1.20.1-6.2.1.jar) |

### Shaderpacks

Shaderpacks are `.zip` files — place them in `%APPDATA%\.minecraft\shaderpacks\`, not in `mods/`. Activate in-game via **Options → Video Settings → Shader Packs**.

| Shaderpack | Version | File | Direct Download |
|------------|---------|------|-----------------|
| **Rethinking Voxels** | r0.1-beta9 | Volumetric lighting, coloured block light, sharp shadows — closest thing to ray tracing without RT hardware. **Install this one.** | `rethinking-voxels_r0.1-beta9.zip` | [Download](https://cdn.modrinth.com/data/kmwfVOoi/versions/cpD4esk9/rethinking-voxels_r0.1-beta9.zip) |
| Complementary Reimagined | — | (Fallback option if Rethinking Voxels doesn't perform well on your hardware) | (latest `.zip`) | [Modrinth](https://modrinth.com/shader/complementary-reimagined) |

> Shaderpacks are **platform-agnostic** — they work on Forge via Oculus just like they work on Fabric via Iris.

---

## Step 4 — Install Order

Add `.jar` files to `mods/` in batches, test-launching after each batch:

| Batch | Mods                                                                                                                                  | Check                                              |
|-------|---------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------|
| 1     | Sophisticated Core, YUNG's API, Balm, Lionfish API, Curios API, Fragmentum, JEI, Jade, Loot Journal: Pickup Notifier, Fancy Toasts, Embeddium, Oculus, Distant Horizons, JourneyMap, AppleSkin | Game starts, shader packs screen appears           |
| 2     | Sophisticated Backpacks, Sophisticated Storage, Guard Villagers                                                                       | Items appear in creative inventory                 |
| 3     | Create, Create: Big Cannons, Create: Steam 'n' Rails                                                                                  | "Ponder" key (W) works on Create items             |
| 4     | Mekanism, Mekanism Generators, Mekanism Tools, Mekanism Additions                                                                     | Mekanism items/blocks visible                      |
| 5     | Applied Energistics 2                                                                                                                 | AE2 items visible, no dependency errors            |
| 6     | Ars Nouveau, Apotheosis Ascended                                                                                                      | Spellbook items + enchanting/gear items visible    |
| 7     | Farmer's Delight, Brewin' And Chewin', Delightful, Storage Delight                                                                     | Cooking items, keg, glass jars visible             |
| 8     | YUNG's Better Dungeons, Better Mineshafts, Better Ocean Monuments                                                                     | World gen runs, no errors                          |
| 9     | MineColonies + BlockUI + Domum Ornamentum + Multi-Piston + Structurize                                                                | Colony items visible, no crash                     |
| 10    | Chunk Loaders                                                                                                                         | Chunks stay loaded when you go exploring, no crash |
| 11    | Waystones, Corail Tombstone                                                                                                           | Waystones craftable, graves appear on death        |
| 12    | The Aether, L_Ender's Cataclysm                                                                                                       | Both dimensions accessible, no crash               |

After each batch: (a) no crash on startup, (b) no missing-dependency errors in Forge mods screen, (c) creative inventory shows new items.

After all mods are installed, add `rethinking-voxels_r0.1-beta9.zip` to `shaderpacks/` and activate in-game.

---

## Step 5 — Launch

Launch the `forge-1.20.1` profile from the Minecraft Launcher. First startup with all mods may take 2-5 minutes while Forge processes everything. Subsequent launches will be faster.

---

## Step 6 — Recommended Config Changes

Mod config files are auto-generated in `%APPDATA%\.minecraft\config\` on first launch. Open them in any text editor. The changes below tune the pack toward the four pillars (power fantasy, smooth curve, 200h+ content, chill living).

### Mekanism — `config/mekanism/config.toml`

| Setting                 | Default | Recommended             | Why                                                                |
|-------------------------|---------|-------------------------|--------------------------------------------------------------------|
| `fission_recipe`        | default | `"standard"`            | Keep default — fission is a Phase 3 fuel checkpoint                |
| `mekaDosimeterDamage`   | true    | `false`                 | Less punishing — removes radiation hearing damage for chill living |
| `cardboardBoxBlacklist` | \[]     | `["minecraft:spawner"]` | Keep spawner blacklist — prevents cheesing Apotheosis spawners     |

**Ore generation** — `config/mekanism/ore-generation.toml`

Leave at default. Mekanism's ore gen is balanced for the digital miner phase.

### MineColonies — `config/minecolonies-server.toml`

| Setting                   | Default | Recommended | Why                                                                  |
|---------------------------|---------|-------------|----------------------------------------------------------------------|
| `citizenDamageMultiplier` | 1.0     | `0.75`      | Slightly easier citizen survival — keeps colony alive for chill play |
| `builderSpeed`            | 1.0     | `1.25`      | Buildings complete a bit faster — less waiting, more doing           |
| `workerSpeed`             | 1.0     | `1.2`       | Workers produce slightly faster — reduces grind in Phase 2           |

**Raid difficulty** — `config/minecolonies-raid.toml`

| Setting          | Default    | Recommended | Why                                                                               |
|------------------|------------|-------------|-----------------------------------------------------------------------------------|
| `raidDifficulty` | `"MEDIUM"` | `"NORMAL"`  | Keeps raids interesting but not punishing — aligned with "easy-to-standard" curve |
| `raidFrequency`  | 7          | `12`        | More time between raids — supports chill living, less base disruption             |

### Ars Nouveau — `config/ars_nouveau-common.toml`

| Setting                | Default | Recommended | Why                                                         |
|------------------------|---------|-------------|-------------------------------------------------------------|
| `mana_boost_per_level` | 0.1     | `0.15`      | Slightly faster mana scaling — smoother power fantasy curve |
| `glyph_recharge_speed` | 1.0     | `1.25`      | Spellbooks recharge faster — less downtime, more fun        |

### Apotheosis — `config/apotheosis/affix.toml`

| Setting          | Default | Recommended | Why                                                                           |
|------------------|---------|-------------|-------------------------------------------------------------------------------|
| `maxUniqueGems`  | 3       | `5`         | More gem slots — feeds power fantasy, gives more gear customization           |
| `bossItemChance` | 0.5     | `0.6`       | Slightly better boss loot — incentivizes boss hunting without trivializing it |

### Create — `config/create-common.toml`

| Setting          | Default | Recommended | Why                                                                   |
|------------------|---------|-------------|-----------------------------------------------------------------------|
| `maxStress`      | 256     | `512`       | Doubled stress capacity — allows bigger Contraption builds in Phase 3 |
| `waterWheelFlow` | 1.0     | `1.5`       | A bit more early power — smoothes the Phase 1→Phase 2 transition      |

### YUNG's Better Dungeons — `config/yungsbetterdungeons-forge-1_20-common.toml`

| Setting                | Default | Recommended | Why                                                                              |
|------------------------|---------|-------------|----------------------------------------------------------------------------------|
| `dungeonCountPerChunk` | 0       | `1`         | Generate one dungeon per chunk in eligible areas — increases exploration density |

Other YUNG mods don't need changes — their default spawn rates are well-balanced.

### Twilight Forest — `config/twilightforest-common.toml`

| Setting                | Default | Recommended | Why                                                             |
|------------------------|---------|-------------|-----------------------------------------------------------------|
| `disableTFPortal`      | false   | `false`     | Keep portal enabled (default) — player enters TF whenever ready |
| `bossDamageMultiplier` | 1.0     | `1.0`       | Keep default — boss difficulty is part of the progression curve |

### Farmer's Delight — `config/farmersdelight-common.toml`

| Setting            | Default | Recommended | Why                                            |
|--------------------|---------|-------------|------------------------------------------------|
| `enableRichSoil`   | true    | `true`      | Keep — rich soil accelerates crops, very chill |
| `enableCookingPot` | true    | `true`      | Keep — cooking pot is the core mechanic        |

### Distant Horizons — `config/distant_horizons.toml`

| Setting                | Default | Recommended | Why                                                             |
|------------------------|---------|-------------|-----------------------------------------------------------------|
| `maxLodRenderDistance` | 512     | `1024`      | Extreme view distance — pairs with shaders for beautiful vistas |

### Guard Villagers — `config/guardvillagers-common.toml`

| Setting                 | Default | Recommended | Why                                                                    |
|-------------------------|---------|-------------|------------------------------------------------------------------------|
| `guardDamageMultiplier` | 1.0     | `1.25`      | Guards are stronger — colony defense works well, supports chill living |

### Corail Tombstone — `config/tombstone-common.toml`

| Setting                    | Default | Recommended | Why                                                            |
|----------------------------|---------|-------------|----------------------------------------------------------------|
| `grave.keepExperience`     | false   | `true`      | Keep XP on death — aligns with chill living, no grind recovery |
| `grave.protectionDuration` | 0       | `86400`     | 24h grave protection — gives time to return without panic      |

### Waystones — `config/waystones-common.toml`

| Setting           | Default     | Recommended | Why                                                          |
|-------------------|-------------|-------------|--------------------------------------------------------------|
| `inventoryButton` | `""` (none) | `"ANY"`     | Opens waystone selection menu from inventory — smooth travel |
| `enableCosts`     | true        | `false`     | No XP or item costs for teleporting — frictionless QoL       |
| `spawnInVillages` | `"REGULAR"` | `"REGULAR"` | Keep default — village waystones reward exploration          |

### The Aether — `config/aether-common.toml`

| Setting                                   | Default | Recommended | Why                                                        |
|-------------------------------------------|---------|-------------|------------------------------------------------------------|
| `"Use default Curios' menu"`              | true    | `true`      | Keep — we have Curios API, use its menu for accessories    |
| `"Gives starting loot on entry"`          | true    | `true`      | Keep — Book of Lore + Golden Parachutes help new players   |
| `"Gives player Aether Portal Frame item"` | false   | `false`     | Keep default — player builds the glowstone portal normally |
| `"Show Patreon message"`                  | true    | `false`     | Hide Patreon nag — cleaner experience for modpack users    |

> **How to apply these configs**: After first launch (which generates all config files), edit each file listed above. The file paths are relative to `config/`. Most settings are clearly labeled with comments in the TOML format. If a setting doesn't exist, ensure the game has been launched at least once to generate the file.

> **The `config/` folder in this project**: Future overrides will be tracked here. You can copy your modified config files into this project's `config/` directory to version-control your changes.
