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

| Mod                                  | Version | File                                       | Direct Download                                                                                               |
|--------------------------------------|---------|--------------------------------------------|---------------------------------------------------------------------------------------------------------------|
| Sophisticated Core                   | 1.3.56  | `sophisticatedcore-1.20.1-1.3.56.2042.jar` | [Download](https://cdn.modrinth.com/data/nmoqTijg/versions/XlE1jclJ/sophisticatedcore-1.20.1-1.3.56.2042.jar) |
| YUNG's API (required by YUNG mods)   | 4.0.6   | `YungsApi-1.20-Forge-4.0.6.jar`            | [Download](https://cdn.modrinth.com/data/Ua7DFN59/versions/PJOYAmAs/YungsApi-1.20-Forge-4.0.6.jar)            |
| Balm (required by Waystones)         | 7.3.38  | `balm-forge-1.20.1-7.3.38-all.jar`         | [Download](https://cdn.modrinth.com/data/MBAkmtvl/versions/8rz04Kha/balm-forge-1.20.1-7.3.38-all.jar)         |
| Lionfish API (required by Cataclysm) | 3.0     | `lionfishapi-3.0.jar`                      | [Download](https://cdn.modrinth.com/data/FoVacERa/versions/mWkKVbyd/lionfishapi-3.0.jar)                      |
| Curios API (required by Cataclysm & Aether) | 5.14.1 | `curios-forge-5.14.1+1.20.1.jar` | [Download](https://cdn.modrinth.com/data/vvuO3ImH/versions/IPQlZkz1/curios-forge-5.14.1%2B1.20.1.jar) |
| Fragmentum (required by Loot Journal)      | 1.3.0  | `fragmentum-forge-1.20.1-1.3.0.jar`           | [Download](https://cdn.modrinth.com/data/49C5QgTK/versions/5KD02RU4/fragmentum-forge-1.20.1-1.3.0.jar)       |
| Moonlight Library (required by Supplementaries) | 2.16.34 | `moonlight-1.20-2.16.34-forge.jar`             | [Download](https://cdn.modrinth.com/data/twkfQtEc/versions/43kjMXMx/moonlight-1.20-2.16.34-forge.jar)        |
| Iceberg (required by Item Highlighter)          | 1.1.25  | `Iceberg-1.20.1-forge-1.1.25.jar`             | [Download](https://cdn.modrinth.com/data/5faXoLqX/versions/BQ8rJPXV/Iceberg-1.20.1-forge-1.1.25.jar)        |
| Bookshelf (required by Dark Paintings)          | 20.2.15 | `Bookshelf-Forge-1.20.1-20.2.15.jar`          | [Download](https://cdn.modrinth.com/data/uy4Cnpcm/versions/7eS5OIHj/Bookshelf-Forge-1.20.1-20.2.15.jar)      |
| OctoLib (required by Immersive UI)              | 0.5.0.1 | `OctoLib-FORGE-0.5.0.1+1.20.1.jar`            | [Download](https://cdn.modrinth.com/data/RH2KUdKJ/versions/HZ7KmyXp/OctoLib-FORGE-0.5.0.1%2B1.20.1.jar)     |
| Architectury API (required by OctoLib)          | 9.2.14  | `architectury-9.2.14-forge.jar`                | [Download](https://cdn.modrinth.com/data/lhGA9TYQ/versions/1MKTLiiG/architectury-9.2.14-forge.jar)           |
| JAUML (required by RPG Attribute System)        | 2.1.0   | `jauml-forge-1.20.1-2.1.0.jar`                | [Download](https://cdn.modrinth.com/data/ihvBalM2/versions/K2R6paQY/jauml-forge-1.20.1-2.1.0.jar)            |
| GuideME (required by Applied Energistics 2)     | 20.1.14 | `guideme-20.1.14.jar`                          | [Download](https://cdn.modrinth.com/data/Ck4E7v7R/versions/9YGnKYDF/guideme-20.1.14.jar)                     |
| Ritchie's Projectile Library (required by Create: Big Cannons) | 2.1.1 | `ritchiesprojectilelib-2.1.1+mc.1.20.1-forge.jar` | [Download](https://cdn.modrinth.com/data/B3pb093D/versions/PdGBsNte/ritchiesprojectilelib-2.1.1%2Bmc.1.20.1-forge.jar) |
| Placebo (required by Apotheosis, Apothic Attributes)          | 8.6.3  | `Placebo-1.20.1-8.6.3.jar`                      | [Download](https://cdn.modrinth.com/data/tCkE8p2N/versions/6SkuAGoz/Placebo-1.20.1-8.6.3.jar)                     |
| Apothic Attributes (required by Apotheosis)                   | 1.3.7  | `ApothicAttributes-1.20.1-1.3.7.jar`            | [Download](https://cdn.modrinth.com/data/DGaH8Rh0/versions/fwL9CWGd/ApothicAttributes-1.20.1-1.3.7.jar)          |
| Patchouli (required by Apotheosis)                            | 1.20.1-85 | `Patchouli-1.20.1-85-FORGE.jar`              | [Download](https://cdn.modrinth.com/data/nU0bVIaL/versions/94dtOLgZ/Patchouli-1.20.1-85-FORGE.jar)               |
| SuperMartijn642's Core Lib (required by Chunk Loaders)        | 1.1.21 | `supermartijn642corelib-1.1.21-forge-mc1.20.1.jar` | [Download](https://cdn.modrinth.com/data/rOUBggPv/versions/2vPGeoPe/supermartijn642corelib-1.1.21-forge-mc1.20.1.jar) |
| SuperMartijn642's Config Lib (required by Chunk Loaders)      | 1.1.8  | `supermartijn642configlib-1.1.8-forge-mc1.20.jar` | [Download](https://cdn.modrinth.com/data/LN9BxssP/versions/ZKor79dR/supermartijn642configlib-1.1.8-forge-mc1.20.jar) |
| Cloth Config API (required by Artifacts)                      | 11.1.136 | `cloth-config-11.1.136-forge.jar`               | [Download](https://cdn.modrinth.com/data/9s6osm5g/versions/t8TXrZvZ/cloth-config-11.1.136-forge.jar)                |

### Core Modpack

| Mod                     | Version  | File                                             | Direct Download                                                                                                     |
|-------------------------|----------|--------------------------------------------------|---------------------------------------------------------------------------------------------------------------------|
| Sophisticated Backpacks | 3.24.58  | `sophisticatedbackpacks-1.20.1-3.24.58.1917.jar` | [Download](https://cdn.modrinth.com/data/TyCTlI4b/versions/cVkRU86a/sophisticatedbackpacks-1.20.1-3.24.58.1917.jar) |
| Sophisticated Storage   | 1.4.59   | `sophisticatedstorage-1.20.1-1.4.59.1855.jar`    | [Download](https://cdn.modrinth.com/data/hMlaZH8f/versions/Natz2wAO/sophisticatedstorage-1.20.1-1.4.59.1855.jar)    |
| Guard Villagers         | 1.6.18   | `guardvillagers-1.20.1-1.6.18.jar`               | [Download](https://cdn.modrinth.com/data/H1sntfo8/versions/jhuh3S9g/guardvillagers-1.20.1-1.6.18.jar)               |
| Create                  | 6.0.8    | `create-1.20.1-6.0.8.jar`                        | [Download](https://cdn.modrinth.com/data/LNytGWDc/versions/8amzvn9x/create-1.20.1-6.0.8.jar)                        |
| Create: Big Cannons     | 5.11.4   | `createbigcannons-5.11.4-mc.1.20.1-forge.jar`    | [Download](https://cdn.modrinth.com/data/GWp4jCJj/versions/ZRgu5o3x/createbigcannons-5.11.4-mc.1.20.1-forge.jar)    |
| Create: Steam 'n' Rails | 1.7.2    | `Steam_Rails-1.7.2+forge-mc1.20.1.jar`           | [Download](https://cdn.modrinth.com/data/ZzjhlDgM/versions/I6GhUCyk/Steam_Rails-1.7.2%2Bforge-mc1.20.1.jar)         |
| Mekanism                | 10.4.16  | `Mekanism-1.20.1-10.4.16.80.jar`                 | [Download](https://cdn.modrinth.com/data/Ce6I4WUE/versions/uxe1WQp4/Mekanism-1.20.1-10.4.16.80.jar)                 |
| Mekanism Generators     | 10.4.16  | `MekanismGenerators-1.20.1-10.4.16.80.jar`       | [Download](https://cdn.modrinth.com/data/OFVYKsAk/versions/Th4Czz4N/MekanismGenerators-1.20.1-10.4.16.80.jar)       |
| Mekanism Tools          | 10.4.16  | `MekanismTools-1.20.1-10.4.16.80.jar`            | [Download](https://cdn.modrinth.com/data/tqQpq1lt/versions/VzpFbUpF/MekanismTools-1.20.1-10.4.16.80.jar)            |
| Mekanism Additions      | 10.4.16  | `MekanismAdditions-1.20.1-10.4.16.80.jar`        | [Download](https://cdn.modrinth.com/data/a6F3uASn/versions/RFiZ24he/MekanismAdditions-1.20.1-10.4.16.80.jar)        |
| Applied Energistics 2   | 15.4.10  | `appliedenergistics2-forge-15.4.10.jar`          | [Download](https://cdn.modrinth.com/data/XxWD5pD3/versions/7KVs6HMQ/appliedenergistics2-forge-15.4.10.jar)          |
| Ars Nouveau             | 4.12.7   | `ars_nouveau-1.20.1-4.12.7-all.jar`              | [Download](https://cdn.modrinth.com/data/TKB6INcv/versions/Hw2aD01e/ars_nouveau-1.20.1-4.12.7-all.jar)              |
| Ars Elemental           | 0.6.7.9  | `Ars_Elemental 1.20.1-0.6.7.9.jar`               | [CurseForge](https://www.curseforge.com/minecraft/mc-mods/ars-elemental/files?version=1.20.1)                       |
| Apotheosis              | 7.4.8    | `Apotheosis-1.20.1-7.4.8.jar`                    | [Download](https://cdn.modrinth.com/data/rqFWfVlz/versions/tT3CLYvK/Apotheosis-1.20.1-7.4.8.jar)                   |
| Apotheotic Additions    | 2.2.2    | `ApotheoticAdditions-1.20.1-V2.2.2.jar`          | [CurseForge](https://www.curseforge.com/minecraft/mc-mods/apotheotic-additions/files?version=1.20.1)                |
| Farmer's Delight        | 1.3.2    | `FarmersDelight-1.20.1-1.3.2.jar`                | [Download](https://cdn.modrinth.com/data/R2OftAxM/versions/CsjS7EkP/FarmersDelight-1.20.1-1.3.2.jar)                |
| Brewin' And Chewin'     | 3.2.1    | `BrewinAndChewin-1.20.1-3.2.1.jar`               | [Download](https://cdn.modrinth.com/data/hIu9KJTT/versions/9myDFPCD/BrewinAndChewin-1.20.1-3.2.1.jar)               |
| Delightful              | 3.8.1    | `Delightful-1.20.1-3.8.1.jar`                    | [Download](https://cdn.modrinth.com/data/JtSnhtNJ/versions/HbEQIqIu/Delightful-1.20.1-3.8.1.jar)                    |
| Storage Delight         | 26.04.18 | `storagedelight-26.04.18+1.20-forge.jar`         | [Download](https://cdn.modrinth.com/data/LTTvOp5L/versions/qap5u6BM/storagedelight-26.04.18%2B1.20-forge.jar)       |
| Chunk Loaders           | 1.2.9    | `chunkloaders-1.2.9-forge-mc1.20.1.jar`          | [Download](https://cdn.modrinth.com/data/t1VgucWo/versions/hfQ3VSpz/chunkloaders-1.2.9-forge-mc1.20.1.jar)          |
| Waystones               | 14.1.20  | `waystones-forge-1.20.1-14.1.20.jar`             | [Download](https://cdn.modrinth.com/data/LOpKHB2A/versions/sKoHLGbK/waystones-forge-1.20.1-14.1.20.jar)             |
| Corail Tombstone        | 9.1.0    | `tombstone-1.20.1-9.1.0.jar`                     | [CurseForge](https://www.curseforge.com/minecraft/mc-mods/corail-tombstone/files/8257477)                           |
| Artifacts               | 9.5.19   | `artifacts-forge-9.5.19.jar`                     | [Download](https://cdn.modrinth.com/data/P0Mu4wcQ/versions/lrLPBSzq/artifacts-forge-9.5.19.jar)                     |
| Supplementaries         | 3.1.43   | `supplementaries-1.20-3.1.43-forge.jar`          | [Download](https://cdn.modrinth.com/data/fFEIiSDQ/versions/S0TIJ1hU/supplementaries-1.20-3.1.43-forge.jar)          |
| Dark Paintings          | 17.0.6   | `DarkPaintings-Forge-1.20.1-17.0.6.jar`          | [Download](https://cdn.modrinth.com/data/lFGQ4Hnk/versions/IGIHVEc9/DarkPaintings-Forge-1.20.1-17.0.6.jar)          |
| RPG Attribute System    | 3.4.1    | `rpg_attribute_system-forge-1.20.1-3.4.1.jar`    | [Download](https://cdn.modrinth.com/data/d85UTOuq/versions/w1mWQ3FK/rpg_attribute_system-forge-1.20.1-3.4.1.jar)   |

### World & Exploration

| Mod                           | Version  | File                                             | Direct Download                                                                                                         |
|-------------------------------|----------|--------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------|
| YUNG's Better Dungeons        | 4.0.4    | `YungsBetterDungeons-1.20-Forge-4.0.4.jar`       | [Download](https://cdn.modrinth.com/data/o1C1Dkj5/versions/kPiQ6v4q/YungsBetterDungeons-1.20-Forge-4.0.4.jar)           |
| YUNG's Better Mineshafts      | 4.0.4    | `YungsBetterMineshafts-1.20-Forge-4.0.4.jar`     | [Download](https://cdn.modrinth.com/data/HjmxVlSr/versions/kVO57zxB/YungsBetterMineshafts-1.20-Forge-4.0.4.jar)         |
| YUNG's Better Ocean Monuments | 3.0.4    | `YungsBetterOceanMonuments-1.20-Forge-3.0.4.jar` | [Download](https://cdn.modrinth.com/data/3dT9sgt4/versions/SN4iZ7wf/YungsBetterOceanMonuments-1.20-Forge-3.0.4.jar)     |
| The Twilight Forest           | 4.3.2508 | `Twilight Forest - MC 1.20.1 - 4.3.2508.jar`     | [CurseForge](https://www.curseforge.com/minecraft/mc-mods/the-twilight-forest/files?version=1.20.1&gameVersionTypeId=1) |
| The Aether                    | 1.5.2    | `aether-1.20.1-1.5.2-neoforge.jar`               | [Download](https://cdn.modrinth.com/data/YhmgMVyu/versions/2411kUqF/aether-1.20.1-1.5.2-neoforge.jar)                   |
| Deep Aether                   | 1.0.1    | `deep_aether-1.20.1-1.0.1.jar`                   | [CurseForge](https://www.curseforge.com/minecraft/mc-mods/deep-aether/files?version=1.20.1)                            |
| L_Ender's Cataclysm           | 3.31     | `L_Enders_Cataclysm-3.31.jar`                    | [Download](https://cdn.modrinth.com/data/46KJle7n/versions/C3H0azzB/L_Enders_Cataclysm-3.31.jar)                        |
| Aquamirae                     | 6.4.0    | `aquamirae-forge-1.20.1-6.4.0.jar`               | [Download](https://cdn.modrinth.com/data/k23mNPhZ/versions/A6aIqoJZ/aquamirae-forge-1.20.1-6.4.0.jar)                   |

> YUNG mods all require **YUNG's API** (listed in Dependency Layer). Install that first. The Twilight Forest is on CurseForge only — download the 1.20.1 Forge file.
>
> **Waystones** requires **Balm** (listed in Dependency Layer). **L_Ender's Cataclysm** requires **Lionfish API** and **Curios API**. **The Aether** embeds Curios API — no separate download needed, but Curios must be installed separately for Cataclysm to use it.
>
> **The Aether** files are tagged "neoforge" on Modrinth but are fully Forge-compatible (marked for both loader types).
>
> **Loot Journal: Pickup Notifier** requires **Fragmentum** (listed in Dependency Layer) — a lightweight framework mod from the Obscuria Collection.
>
> **Create: Big Cannons** requires **Ritchie's Projectile Library** (listed in Dependency Layer) — a library for better projectile handling.
>
> **Chunk Loaders** requires **SuperMartijn642's Core Lib** and **SuperMartijn642's Config Lib** (both listed in Dependency Layer).
>
> **Applied Energistics 2** requires **GuideME** (listed in Dependency Layer) — a guidebook toolkit from the AE2 team.
>
> **Brewin' And Chewin'** requires **Farmer's Delight**. **Delightful** and **Storage Delight** have no required dependencies but are designed as Farmer's Delight companions. All three work together and with each other — Brewin' adds fermentation and drinks, Delightful adds new meals, Storage Delight adds kitchen furniture.
>
> **Supplementaries** requires **Moonlight Library** (listed in Dependency Layer) — install Moonlight first. Supplementaries is highly configurable; the faucet and crank add minor automation that complements Create without overlapping.
>
> **Artifacts** requires **Curios API**, **Architectury API**, and **Cloth Config API** (all listed in Dependency Layer).
>
> **Aquamirae** is standalone. No additional dependencies.
>
> **Apotheosis** (by Shadows_of_Fire) is the core gear-customization mod — gems, affixes, enchanting overhaul, spawner modification, and boss mobs. It requires **Placebo**, **Apothic Attributes**, and **Patchouli** (all listed in Dependency Layer). **Apotheotic Additions** extends Apotheosis with additional gems, items, and bosses — install it after Apotheosis.
>
> **Item Highlighter** and **Equipment Compare** both require **Iceberg** (listed in Dependency Layer) — a client-side library providing GUI utilities. **Jade Addons** extends **Jade** (already in the pack) — no additional dependencies.
> **Deep Aether** is an addon for **The Aether** — it adds 5 new biomes, Skyjade tools/armor, new mobs, and dungeon loot to the Aether dimension. Install after The Aether (batch 12). The 1.20.1 Forge release (`1.0.1`) is older than the 1.21.1 NeoForge version but is stable.
> **Auroras** and **Rainboows** are standalone atmosphere mods by Verph. No additional dependencies. They pair well together — auroras at night, rainbows after rain.
>
> **Obscure Tooltips** requires **Fragmentum** (already in the pack for Loot Journal). **Dark Paintings** requires **Bookshelf** (listed in Dependency Layer). **Immersive UI** requires **OctoLib** which requires **Architectury API** (both listed in Dependency Layer). **Traveler's Titles** requires **YUNG's API** (already in the pack). **JourneyMap Integration** requires **JourneyMap** and optionally integrates with **Waystones** (both already in the pack). **JEED** is standalone — it optionally integrates with JEI (already in the pack). **Just Enough Mekanism Multiblocks** requires **JEI** and **Mekanism** (both already in the pack).
> **RPG Attribute System** requires **JAUML** (listed in Dependency Layer) — a lightweight config library. The mod auto-scales player attributes (health, damage, speed, etc.) as the player levels up. Compatible with all pack mods — no special integration needed.
> **Reactive Music** is client-side only — dynamic music system that plays fantasy/Celtic tracks based on context. **MAtmos** adds biome-specific environmental ambient sounds (wind, water, forests, caves). Both are standalone with no additional dependencies.

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

| Mod                              | Version | What it does                                                                                                                   | File                                            | Direct Download                                                                                                    |
|----------------------------------|---------|--------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------|--------------------------------------------------------------------------------------------------------------------|
| JEI                              | 15.20.0 | Recipe browser — press R on any item to see how to craft it, U to see its uses                                                 | `jei-1.20.1-forge-15.20.0.132.jar`              | [Download](https://cdn.modrinth.com/data/u6dRKJwZ/versions/p5mYHvjx/jei-1.20.1-forge-15.20.0.132.jar)              |
| JourneyMap                       | 5.10.3  | Minimap + full-screen map — auto-maps every chunk you visit, waypoints, death markers                                          | `journeymap-1.20.1-5.10.3-forge.jar`            | [Download](https://cdn.modrinth.com/data/lfHFW1mp/versions/r7FWVNCs/journeymap-1.20.1-5.10.3-forge.jar)            |
| AppleSkin                        | 2.5.1   | Food info overlay — shows exact hunger and saturation restored by each food item on hover                                      | `appleskin-forge-mc1.20.1-2.5.1.jar`            | [Download](https://cdn.modrinth.com/data/EsAfCjCV/versions/XdXDExVF/appleskin-forge-mc1.20.1-2.5.1.jar)            |
| Fancy Toasts                     | 1.4.7   | Fancy advancement toast popups — customizable animations, sounds, and textures (8 theme types)                                 | `fancytoasts-forge-1.20.1-1.4.7.jar`            | [Download](https://cdn.modrinth.com/data/eUziWqPC/versions/ZZLFzqe2/fancytoasts-forge-1.20.1-1.4.7.jar)            |
| Jade                             | 11.13.2 | Block/entity info HUD — shows what you're looking at, harvest tool, mod origin, storage contents                               | `Jade-1.20.1-Forge-11.13.2.jar`                 | [Download](https://cdn.modrinth.com/data/nvQzSEkH/versions/LecuGude/Jade-1.20.1-Forge-11.13.2.jar)                 |
| Loot Journal: Pickup Notifier    | 6.2.1   | Customizable item pickup notifications — animations, themes, filtering, and layout options                                     | `loot_journal-forge-1.20.1-6.2.1.jar`           | [Download](https://cdn.modrinth.com/data/OJ6ZYz5L/versions/tkx0bPOi/loot_journal-forge-1.20.1-6.2.1.jar)           |
| Item Highlighter                 | 1.1.9   | Highlights newly picked-up items in your inventory with a gold border — clears on hover or inventory close                     | `Highlighter-1.20.1-forge-1.1.9.jar`            | [Download](https://cdn.modrinth.com/data/cVNW5lr6/versions/rcQOLnyI/Highlighter-1.20.1-forge-1.1.9.jar)            |
| Equipment Compare                | 1.3.7   | Hold shift to compare hovered equipment against what you're wearing — shows real tooltips with mod stats (Apotheosis affixes, etc.) | `EquipmentCompare-1.20.1-forge-1.3.7.jar`       | [CurseForge](https://www.curseforge.com/minecraft/mc-mods/equipment-compare/files?version=1.20.1)                  |
| Jade Addons                      | 5.5.0   | Extended block info for Jade — adds Create stress/speed, Mekanism gas/progress, Ars source/mana, FD cooking progress, and more | `JadeAddons-1.20.1-Forge-5.5.0.jar`             | [Download](https://cdn.modrinth.com/data/xuDOzCLy/versions/AvIT9ADi/JadeAddons-1.20.1-Forge-5.5.0.jar)             |
| Obscure Tooltips                 | 3.10.0  | Stylized tooltips with beautiful animations, particle effects, and ornamental accent frames                                    | `obscure_tooltips-forge-1.20.1-3.10.0.jar`      | [Download](https://cdn.modrinth.com/data/5vetjDBY/versions/sFFZXXl8/obscure_tooltips-forge-1.20.1-3.10.0.jar)      |
| JourneyMap Integration           | 0.14-48 | Shows Waystones as JourneyMap markers, FTBChunks support, and more JourneyMap/QoL integrations                                 | `jmi-forge-1.20.1-0.14-48.jar`                  | [Download](https://cdn.modrinth.com/data/M1ZKbfkJ/versions/BBbIV2h1/jmi-forge-1.20.1-0.14-48.jar)                  |
| JEED                             | 2.2.5   | Adds detailed status effect descriptions to JEI — shows what each potion effect does                                           | `jeed-1.20-2.2.5.jar`                           | [Download](https://cdn.modrinth.com/data/EO27GKs1/versions/jHYonbva/jeed-1.20-2.2.5.jar)                           |
| Just Enough Mekanism Multiblocks | 4.10    | JEI page showing Mekanism multiblock structure costs and capabilities (tank capacity, turbine efficiency, reactor heat)        | `JustEnoughMekanismMultiblocks-1.20.1-4.10.jar` | [Download](https://cdn.modrinth.com/data/kRaE85yQ/versions/3BODBkqD/JustEnoughMekanismMultiblocks-1.20.1-4.10.jar) |
| Immersive UI                     | 0.3.0   | Animated UI components — smooth hotbar selector, item particles, screen shake, floating container matches                      | `ImmersiveUI-FORGE-0.3.0.jar`                   | [Download](https://cdn.modrinth.com/data/9wv7LuMc/versions/YbO8SNFq/ImmersiveUI-FORGE-0.3.0.jar)                   |
| Traveler's Titles                | 4.0.2   | RPG-like titles when entering biomes and dimensions — customizable, built-in support for modded dimensions and Waystones       | `TravelersTitles-1.20-Forge-4.0.2.jar`          | [Download](https://cdn.modrinth.com/data/JtifUr64/versions/oUSK4sOQ/TravelersTitles-1.20-Forge-4.0.2.jar)          |
| Auroras                          | 1.6.2   | Dynamic aurora borealis in the night sky — curtains, rays, spirals in multiple colors. Works without shaders, enhances with them. Aether dimension compatible | `Auroras-1.20.1-1.6.2.jar`                     | [CurseForge](https://www.curseforge.com/minecraft/mc-mods/auroras/files?version=1.20.1)                            |
| Rainboows (Rainbows!)            | 1.5     | Rainbows appear after rain — purely cosmetic, pairs with Auroras for a beautiful sky at all times                              | `Rainbows-1.20.1-1.5.jar`                      | [CurseForge](https://www.curseforge.com/minecraft/mc-mods/rainboows/files?version=1.20.1)                          |
| Reactive Music                    | 1.3.3   | Dynamic music system with fantasy and celtic tracks — plays based on context, no dead air, pairs with Constant Music          | `reactivemusic-forge-1.3.3+1.20.1.jar`         | [Download](https://cdn.modrinth.com/data/Bqnfeesx/versions/jLWO7OV9/reactivemusic-forge-1.3.3%2B1.20.1.jar)       |
| MAtmos                            | 7.4     | Environmental ambient sounds — wind, water, forests, caves, block interactions — makes the world feel alive and immersive        | `matmos_tct-7.4-forge-1.20.1.jar`              | [Download](https://cdn.modrinth.com/data/bTSEAgRY/versions/2SkVYbTz/matmos_tct-7.4-forge-1.20.1.jar)              |

### Shaderpacks

Shaderpacks are `.zip` files — place them in `%APPDATA%\.minecraft\shaderpacks\`, not in `mods/`. Activate in-game via **Options → Video Settings → Shader Packs**.

| Shaderpack | Version | File | Direct Download |
|------------|---------|------|-----------------|
| **Rethinking Voxels** | r0.1-beta9 | Volumetric lighting, coloured block light, sharp shadows — closest thing to ray tracing without RT hardware. **Install this one.** | `rethinking-voxels_r0.1-beta9.zip` | [Download](https://cdn.modrinth.com/data/kmwfVOoi/versions/cpD4esk9/rethinking-voxels_r0.1-beta9.zip) |
| Complementary Reimagined | — | (Fallback option if Rethinking Voxels doesn't perform well on your hardware) | (latest `.zip`) | [Modrinth](https://modrinth.com/shader/complementary-reimagined) |

> Shaderpacks are **platform-agnostic** — they work on Forge via Oculus just like they work on Fabric via Iris.

---

### Data Packs

Data packs are `.zip` files. Place them in `%APPDATA%\.minecraft\datapacks\` for global effect across all worlds, or in `saves/<world>/datapacks/` per-world. No modloader needed.

| Data Pack        | Version | What it does                                                  | File                                                | Direct Download                                                                                                        |
|------------------|---------|---------------------------------------------------------------|-----------------------------------------------------|------------------------------------------------------------------------------------------------------------------------|
| No Creeper Grief | V.2.0.3 | Creepers still damage entities but won't break blocks anymore | `PK_No_Creeper_Grief_V.2.0.3_MC_1.20_to_1.20.1.zip` | [Download](https://cdn.modrinth.com/data/WCR1qfos/versions/iJh3cNqS/PK_No_Creeper_Grief_V.2.0.3_MC_1.20_to_1.20.1.zip) |

> Unlike `gamerule mobGriefing false`, this only prevents creeper block destruction — villagers can still farm, sheep can still eat grass, and endermen can still pick up blocks. The most chill-compatible solution.

---

## Step 4 — Install Order

Add `.jar` files to `mods/` in batches, test-launching after each batch:

| Batch | Mods                                                                                                                                                                                                                                                                                                                                                                             | Check                                                                         |
|-------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------|
| 1     | Sophisticated Core, YUNG's API, Balm, Lionfish API, Curios API, Fragmentum, Moonlight Library, Iceberg, Bookshelf, OctoLib, Architectury API, JAUML, GuideME, Ritchie's Projectile Library, Placebo, Apothic Attributes, Patchouli, SuperMartijn642's Core Lib, SuperMartijn642's Config Lib, Cloth Config API, JEI, Jade, Jade Addons, Loot Journal: Pickup Notifier, Item Highlighter, Equipment Compare, Fancy Toasts, Embeddium, Oculus, Distant Horizons, JourneyMap, JourneyMap Integration, AppleSkin, Obscure Tooltips, JEED, Immersive UI, Traveler's Titles, Auroras, Rainboows, Reactive Music, MAtmos, RPG Attribute System | Game starts, shader packs screen appears, ambient sounds and music play, attribute scaling visible in HUD |
| 2     | Sophisticated Backpacks, Sophisticated Storage, Guard Villagers                                                                                                                                                                                                                                                                                                                  | Items appear in creative inventory                                            |
| 3     | Create, Create: Big Cannons, Create: Steam 'n' Rails                                                                                                                                                                                                                                                                                                                             | "Ponder" key (W) works on Create items                                        |
| 4     | Mekanism, Mekanism Generators, Mekanism Tools, Mekanism Additions, Just Enough Mekanism Multiblocks                                                                                                                                                                                                                                                                              | Mekanism items/blocks visible, multiblock JEI pages work                      |
| 5     | Applied Energistics 2                                                                                                                                                                                                                                                                                                                                                            | AE2 items visible, no dependency errors                                       |
| 6     | Ars Nouveau, Ars Elemental, Apotheosis, Apotheotic Additions                                                                                                                                                                                                                                                                                                                     | Spellbook items + elemental glyphs, Apotheosis gems and affixes visible       |
| 7     | Farmer's Delight, Brewin' And Chewin', Delightful, Storage Delight                                                                                                                                                                                                                                                                                                               | Cooking items, keg, glass jars visible                                        |
| 8     | YUNG's Better Dungeons, Better Mineshafts, Better Ocean Monuments                                                                                                                                                                                                                                                                                                                | World gen runs, no errors                                                     |
| 9     | MineColonies + BlockUI + Domum Ornamentum + Multi-Piston + Structurize                                                                                                                                                                                                                                                                                                           | Colony items visible, no crash                                                |
| 10    | Chunk Loaders                                                                                                                                                                                                                                                                                                                                                                    | Chunks stay loaded when you go exploring, no crash                            |
| 11    | Waystones, Corail Tombstone                                                                                                                                                                                                                                                                                                                                                      | Waystones craftable, graves appear on death                                   |
| 12    | The Aether, Deep Aether, L_Ender's Cataclysm                                                                                                                                                                                                                                                                    | Aether dimension + Deep Aether biomes accessible, no crash                    |
| 13    | Artifacts, Aquamirae, Supplementaries, Dark Paintings                                                                                                                                                                                                                                                                                                                            | Artifacts in chests, Aquamirae biome generates, new paintings in creative tab |

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

All MineColonies settings live in `minecolonies-server.toml` under two categories: `gameplay` (colony management) and `combat` (raids & guards).

**Category: gameplay**

| Setting                | Default | Recommended | Why                                                             |
|------------------------|---------|-------------|-----------------------------------------------------------------|
| `initialcitizenamount` | 4       | `5`         | Start with 5 citizens instead of 4 — gentler colony setup       |
| `foodmodifier`         | 1.0     | `0.8`       | Citizens eat 25% less — reduces food grind, supports chill play |
| `diseasemodifier`      | 5       | `10`        | Diseases half as common — less colony micromanagement           |

**Category: combat**

| Setting                             | Default | Recommended | Why                                                                           |
|-------------------------------------|---------|-------------|-------------------------------------------------------------------------------|
| `guardDamageMultiplier`             | 1.0     | `1.25`      | Guards deal more damage — colony defense is stronger, supports power fantasy  |
| `guardhealthmult`                   | 1.0     | `1.25`      | Guards are tougher — less replacement grind, better colony survival           |
| `barbarianhordedifficulty`          | 5       | `3`         | Easier raids (lower = easier) — aligns with easy-to-standard difficulty curve |
| `averagenumberofnightsbetweenraids` | 14      | `28`        | More time between raids — supports chill living, less base disruption         |

### Ars Nouveau — `config/ars_nouveau-server.toml`

Ars Nouveau server settings live in `ars_nouveau-server.toml` under the `mana` category.

| Setting      | Default | Recommended | Why                                                             |
|--------------|---------|-------------|-----------------------------------------------------------------|
| `baseMax`    | 100     | `125`       | More starting max mana — smoother early-game spellcasting       |
| `baseRegen`  | 5       | `3`         | Faster base mana regen (seconds) — less downtime, more casting  |
| `manaBoost`  | 25      | `30`        | More mana per Mana Boost level — supports power fantasy scaling |
| `glyphRegen` | 0.33    | `0.5`       | Faster regen bonus per glyph — rewards learning more spells     |

### Apotheosis — `config/apotheosis/`

Apotheosis generates its config files on first launch in `config/apotheosis/`. Default settings are well-balanced for this modpack. Key modules: **affix** (gems & affixes on gear), **enchantment** (enchanting overhaul), **spawner** (spawner modification), **potion** (potion effects), **village** (village trades), and **deadly** (boss mobs). The affix module is what provides the gear-customization pipeline that feeds the power fantasy — no config changes needed.

### Create — `config/create-common.toml`

| Setting          | Default | Recommended | Why                                                                   |
|------------------|---------|-------------|-----------------------------------------------------------------------|
| `maxStress`      | 256     | `512`       | Doubled stress capacity — allows bigger Contraption builds in Phase 3 |
| `waterWheelFlow` | 1.0     | `1.5`       | A bit more early power — smoothes the Phase 1→Phase 2 transition      |

### Distant Horizons — `config/distant_horizons.toml`

> ⚠️ This mod uses a **custom runtime-generated config format** (not standard Forge TOML). No default config file exists in the source repo (GitLab: `distant-horizons-team/distant-horizons`). The config is automatically created on first launch. The setting below is commonly recommended but its exact key name cannot be verified from source — adjust in-game via the mod's GUI.

| Setting             | In-Game Default | Recommended | Why                                                             |
|---------------------|-----------------|-------------|-----------------------------------------------------------------|
| LOD Render Distance | 512             | `1024`      | Extreme view distance — pairs with shaders for beautiful vistas |

Prefer configuring Distant Horizons via its in-game settings GUI (accessible from the mod list or keybind) rather than editing the TOML file directly.

### Guard Villagers — `config/guardvillagers-common.toml`

Verified from mod source (branch `1.20.1`, `GuardConfig.java`). Uses human-readable quoted config keys.

| Setting          | Default | Recommended | Why                                                                |
|------------------|---------|-------------|--------------------------------------------------------------------|
| `"Guard health"` | 20.0    | `25.0`      | Slightly tougher guards — colony defense is stronger, chill living |

### Corail Tombstone — `config/tombstone-common.toml`

Verified — the existing config in this project matches documented mod behavior.

| Setting                    | Default | Recommended | Why                                                            |
|----------------------------|---------|-------------|----------------------------------------------------------------|
| `grave.keepExperience`     | false   | `true`      | Keep XP on death — aligns with chill living, no grind recovery |
| `grave.protectionDuration` | 0       | `86400`     | 24h grave protection — gives time to return without panic      |

> Existing config was verified against the mod's CurseForge documentation. Both keys are correct. No changes needed.

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

> **How to apply these configs**: Config files with correct keys and modpack-aligned values are now tracked in `config/` in this project. For mods not yet tracked, launch the game once to generate the file, then edit accordingly. Most settings are clearly labeled with comments in the TOML format. If a setting doesn't exist, ensure the game has been launched at least once to generate the file.

> **The `config/` folder in this project**: Future overrides will be tracked here. You can copy your modified config files into this project's `config/` directory to version-control your changes.
