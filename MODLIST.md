# Mod List — Minecraft 1.20.1 Forge

## Prerequisites

- **Minecraft: Java Edition** (not Bedrock, not Preview) — purchased and installed via the [official Minecraft Launcher](https://www.minecraft.net/download)
- **Java 17** (required by Minecraft 1.20.1 + Forge) — download from [Adoptium](https://adoptium.net/download/) (Temurin JDK 17)

---

## Step 1 — Install Minecraft 1.20.1

1. Open the Minecraft Launcher
2. Go to **Installations** tab → **New Installation**
3. Select version **1.20.1** (release)
4. Name it `Forge 1.20.1` (or whatever you prefer)
5. Click **Create**, then **Play** once to generate the game folder
6. Close Minecraft after the title screen loads

This creates your `.minecraft` folder with the 1.20.1 version profile.

---

## Step 2 — Install Forge

Download the **Forge 1.20.1 Installer**:

> [https://files.minecraftforge.net/net/minecraftforge/forge/index_1.20.1.html](https://files.minecraftforge.net/net/minecraftforge/forge/index_1.20.1.html)

Pick the **latest recommended** build (47.3.x — as of writing, this is the final stable branch for 1.20.1).

1. Run the downloaded `forge-1.20.1-47.3.x-installer.jar`
2. Select **Install client** → OK
3. The launcher will now have a `forge-1.20.1` profile
4. Launch it once, then close — this creates the `mods/` folder inside `.minecraft`

Your mod folder location (Windows):
```
%APPDATA%\.minecraft\mods\
```

---

## Step 3 — Download Mods

Place all downloaded `.jar` files directly into the `mods/` folder. **Do not unzip them.**

### Required Dependency Layer (install BEFORE core mods)

| Mod | Version | Filename | Download |
|-----|---------|----------|----------|
| Sophisticated Core | 1.20.1-1.3.56 | `sophisticatedcore-1.20.1-1.3.56.2042.jar` | [Modrinth](https://modrinth.com/mod/sophisticated-core/versions?g=1.20.1&l=forge) |

### Core Modpack

| Mod | Version | Filename | Download |
|-----|---------|----------|----------|
| Sophisticated Backpacks | 1.20.1-3.24.58 | `sophisticatedbackpacks-1.20.1-3.24.58.1917.jar` | [Modrinth](https://modrinth.com/mod/sophisticated-backpacks/versions?g=1.20.1&l=forge) |
| Sophisticated Storage | 1.20.1-1.4.59 | `sophisticatedstorage-1.20.1-1.4.59.1855.jar` | [Modrinth](https://modrinth.com/mod/sophisticated-storage/versions?g=1.20.1&l=forge) |
| Guard Villagers | 1.6.18 | `guardvillagers-1.20.1-1.6.18.jar` | [Modrinth](https://modrinth.com/mod/guard-villagers/versions?g=1.20.1&l=forge) |
| Create | 6.0.8 | `create-1.20.1-6.0.8.jar` | [Modrinth](https://modrinth.com/mod/create/versions?g=1.20.1&l=forge) |
| Create: Big Cannons | 5.11.4 | `createbigcannons-5.11.4-mc.1.20.1-forge.jar` | [Modrinth](https://modrinth.com/mod/create-big-cannons/versions?g=1.20.1&l=forge) |
| Mekanism | 10.4.16 | `Mekanism-1.20.1-10.4.16.80.jar` | [Modrinth](https://modrinth.com/mod/mekanism/versions?g=1.20.1&l=forge) |
| Mekanism Generators | 10.4.16 | `MekanismGenerators-1.20.1-10.4.16.80.jar` | [Modrinth](https://modrinth.com/mod/mekanism-generators/versions?g=1.20.1&l=forge) |
| Mekanism Tools | 10.4.16 | `MekanismTools-1.20.1-10.4.16.80.jar` | [Modrinth](https://modrinth.com/mod/mekanism-tools/versions?g=1.20.1&l=forge) |
| Mekanism Additions | 10.4.16 | `MekanismAdditions-1.20.1-10.4.16.80.jar` | [Modrinth](https://modrinth.com/mod/mekanism-additions/versions?g=1.20.1&l=forge) |
| Applied Energistics 2 | 15.4.10 | `appliedenergistics2-forge-15.4.10.jar` | [Modrinth](https://modrinth.com/mod/ae2/versions?g=1.20.1&l=forge) |
| Ars Nouveau | 4.12.7 | `ars_nouveau-1.20.1-4.12.7-all.jar` | [Modrinth](https://modrinth.com/mod/ars-nouveau/versions?g=1.20.1&l=forge) |

### MineColonies & Dependencies

MineColonies distributes primarily on CurseForge with several required dependencies. Follow the links — download the **1.20.1 Forge** version of each.

| Mod | Download |
|-----|----------|
| BlockUI | [CurseForge](https://www.curseforge.com/minecraft/mc-mods/blockui/files?version=1.20.1&gameVersionTypeId=1) |
| Domum Ornamentum | [CurseForge](https://www.curseforge.com/minecraft/mc-mods/domum-ornamentum/files?version=1.20.1&gameVersionTypeId=1) |
| Multi-Piston | [CurseForge](https://www.curseforge.com/minecraft/mc-mods/multi-piston/files?version=1.20.1&gameVersionTypeId=1) |
| Structurize | [CurseForge](https://www.curseforge.com/minecraft/mc-mods/structurize/files?version=1.20.1&gameVersionTypeId=1) |
| **MineColonies** | [CurseForge](https://www.curseforge.com/minecraft/mc-mods/minecolonies/files?version=1.20.1&gameVersionTypeId=1) |

> **Note:** Pick the latest stable/beta release for 1.20.1 Forge. As of Jun 24 2026, this is `minecolonies-1.20.1-1.1.1249-snapshot.jar`. However, MineColonies sometimes bundles recent Structurize/BlockUI versions — you can try launching without them first, and add only what Forge complains about.

### Recommended QoL / Performance (optional but strongly recommended)

| Mod | Version | Role | Download |
|-----|---------|------|----------|
| JEI | 15.20.0 | Recipe viewer — press R/U on any item | [Modrinth](https://modrinth.com/mod/jei/versions?g=1.20.1&l=forge) |
| Jade | 11.13.2 | Block info HUD — shows what you're looking at | [Modrinth](https://modrinth.com/mod/jade/versions?g=1.20.1&l=forge) |
| Embeddium | 0.3.31 | Performance — replaces vanilla rendering for better FPS | [Modrinth](https://modrinth.com/mod/embeddium/versions?g=1.20.1&l=forge) |
| JourneyMap | 5.10.3 | Minimap + full-screen world map | [Modrinth](https://modrinth.com/mod/journeymap/versions?g=1.20.1&l=forge) |
| AppleSkin | 2.5.1 | Food/saturation info on hover | [Modrinth](https://modrinth.com/mod/appleskin/versions?g=1.20.1&l=forge) |

### Graphics (shaders & visuals)

Shaderpacks are `.zip` files, not `.jar` mods. They are placed in `shaderpacks/` inside `.minecraft`, **not** in `mods/`. They run on Oculus (the Forge port of Iris) and are platform-agnostic — a shaderpack that works on Iris will work on Oculus.

**Required mods** (`.jar` files for `mods/`):

| Mod | Version | Role | Download |
|-----|---------|------|----------|
| Embeddium | 0.3.31 | Sodium rendering engine — required by Oculus | [Modrinth](https://modrinth.com/mod/embeddium/versions?g=1.20.1&l=forge) |
| Oculus | 1.8.0 | Shader loader — runs `.zip` shaderpacks | [Modrinth](https://modrinth.com/mod/oculus/versions?g=1.20.1&l=forge) |
| Distant Horizons | 3.1.2-b | LOD rendering — see terrain at extreme distances | [Modrinth](https://modrinth.com/mod/distant-horizons/versions?g=1.20.1&l=forge) |

> **Note:** Embeddium is already listed in the QoL section above. If you already installed it, skip the duplicate.

**Recommended shaderpacks** (`.zip` files for `shaderpacks/`):

| Shaderpack | Version | Style | Download |
|------------|---------|-------|----------|
| **Rethinking Voxels** (Recommended) | r0.1-beta9 | Volumetric lighting, coloured block light, sharp shadows — the closest thing to ray tracing without RT hardware | [Modrinth](https://modrinth.com/shader/rethinking-voxels) |
| Complementary Reimagined | Latest | Dreamy, vibrant, balanced — great fallback if Rethinking Voxels is too heavy | [Modrinth](https://modrinth.com/shader/complementary-reimagined) |

> **How shaderpacks work:** Download the `.zip` file and place it in `%APPDATA%\.minecraft\shaderpacks\`. In-game, go to **Options → Video Settings → Shader Packs** and select it. No modloader dependency — if Oculus is installed, any Iris-compatible shaderpack works.

---

## Step 4 — Install Order

Place `.jar` files in your `mods/` folder in this order (start small, test, then add more):

1. **Sophisticated Core** (needed by backpacks + storage)
2. **QoL + Graphics base** — JEI, Jade, Embeddium, JourneyMap, AppleSkin, Oculus, Distant Horizons
3. **Launch and test** — make sure Forge starts clean, shader pack screen appears
4. **Sophisticated Backpacks + Sophisticated Storage + Guard Villagers**
5. **Create + Create: Big Cannons** — launch, check Create's "Ponder" screen works
6. **Mekanism** (all 4 jars: base, Generators, Tools, Additions)
7. **Applied Energistics 2**
8. **Ars Nouveau**
9. **MineColonies + its dependencies** — add all 5 jars together
10. **Final launch test** — confirm all mods load without errors
11. **Install shaderpack** — download `rethinking-voxels_r0.1-beta9.zip` to `shaderpacks/`, activate in-game

Place `.jar` files in your `mods/` folder in this order (start small, test, then add more):

1. **Sophisticated Core** (needed by backpacks + storage)
2. **QoL mods** — JEI, Jade, Embeddium, JourneyMap, AppleSkin
3. **Launch and test** — make sure Forge starts clean with just these
4. **Sophisticated Backpacks + Sophisticated Storage + Guard Villagers**
5. **Create + Create: Big Cannons** — launch, check Create's "Ponder" screen works
6. **Mekanism** (all 4 jars: base, Generators, Tools, Additions)
7. **Applied Energistics 2**
8. **Ars Nouveau**
9. **MineColonies + its dependencies** — add all 5 jars together
10. **Final launch test** — confirm all mods load without errors

After each batch, launch the game and check: (a) no crash on startup, (b) no missing-dependency errors in the Forge mods screen, (c) creative-mode test: open inventory and verify you can see each mod's items/blocks.

---

## Step 5 — Config File Locations

Once all mods are installed and working, config files live in:

```
%APPDATA%\.minecraft\config\
```

Future config overrides will be tracked in this project's `config/` directory for version control.
