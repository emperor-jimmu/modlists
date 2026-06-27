# Mod List V3 — Minecraft 1.21.1 NeoForge

## Wave -1 — Prerequisites

### JDK 21

| Tool                                                                              | Role                                                  |
|-----------------------------------------------------------------------------------|-------------------------------------------------------|
| [Eclipse Temurin JDK 21](https://adoptium.net/temurin/releases/?version=21) (LTS) | Java runtime and development kit for Minecraft 1.21.1 |

Install the **JDK** (not just JRE) — the JDK includes `javac` and `jlink` needed by NeoForge. Minimum version 21.0.0, any LTS build. On Windows, use the MSI installer and ensure `JAVA_HOME` is set to the install path (e.g., `C:\Program Files\Eclipse Adoptium\jdk-21.0.6.13-hotspot`). On Linux/macOS, use your package manager (`apt install temurin-21-jdk`, `brew install temurin21`).

Verify installation:

```
java -version
# Expected: openjdk version "21.0.x" ...
```

#### Performance Tuning

Recommended JVM arguments (for Minecraft Launcher → Installation → Edit → More Options → JVM Arguments):

```
-Xms8g -Xmx8g -XX:+UseShenandoahGC -XX:+UnlockExperimentalVMOptions -XX:+AlwaysPreTouch -XX:+UseStringDeduplication -XX:-OmitStackTraceInFastThrow
```

| System RAM | Recommended allocation |
|------------|------------------------|
| 16 GB      | `-Xms10g -Xmx10g`      |
| 32 GB      | `-Xms22g -Xmx22g`      |
| 64 GB      | `-Xms48g -Xmx48g`      |

> **Note**: `-XX:+OptimizeStringConcat` was removed in JDK 20 (JEP 427) — do not use it with Java 21. String optimization is enabled by default in JDK 21 via `invokedynamic`. The Adoptium Temurin JDK 21 includes Shenandoah GC — no special Java build needed.

### Minecraft 1.21.1

Install the **Minecraft 1.21.1** vanilla client from the official launcher:

1. Open the [Minecraft Launcher](https://www.minecraft.net/download).
2. Create a new installation with version **release 1.21.1**.
3. Run it once to generate the vanilla `versions/` and `libraries/` directories, then close.
4. Locate your Minecraft directory:
   - Windows: `%APPDATA%\.minecraft`
   - Linux: `~/.minecraft`
   - macOS: `~/Library/Application Support/minecraft`

### NeoForge

| Tool                               | Role                            |
|------------------------------------|---------------------------------|
| [NeoForge](https://neoforged.net/) | Mod loader for Minecraft 1.21.1 |

Install NeoForge for **1.21.1** (latest recommended release):

1. Download the **NeoForge installer** for Minecraft 1.21.1 from [neoforged.net](https://neoforged.net/).
2. Run the installer: `java -jar neoforge-1.21.1-<version>-installer.jar`.
3. Select **"Install client"** and point it to your Minecraft directory (auto-detected on most systems).
4. Launch the new **neoforge** profile in the Minecraft Launcher once to generate the `mods/` directory and NeoForge configs.
5. Verify the main menu shows "NeoForge X.X.X" in the bottom-left corner.

**Important**: Do not add any mod `.jar` files yet. Wave -1 is complete when the vanilla 1.21.1 client runs under NeoForge with no mods installed.

---

## Wave 0 — Foundation

### Performance & Rendering

| Mod                                                                               | Role                                     |
|-----------------------------------------------------------------------------------|------------------------------------------|
| [Sodium](https://modrinth.com/mod/sodium)                                         | Rendering engine                         |
| [Iris](https://www.curseforge.com/minecraft/mc-mods/irisshaders)                  | Shader loader (v1.8.14, NeoForge native) |
| [Lithium](https://modrinth.com/mod/lithium)                                         | Server-side game logic optimization      |
| [Distant Horizons](https://www.curseforge.com/minecraft/mc-mods/distant-horizons) | LOD rendering                            |
| [Continuity](https://www.curseforge.com/minecraft/mc-mods/continuity)             | Connected textures                       |
| [ModernFix](https://www.curseforge.com/minecraft/mc-mods/modernfix)               | All-in-one perf + bug fixes              |
| [ImmediatelyFast](https://www.curseforge.com/minecraft/mc-mods/immediatelyfast)   | Immediate-mode rendering                 |
| [Entity Culling](https://www.curseforge.com/minecraft/mc-mods/entityculling)      | Hide off-screen entities                 |
| [Dynamic FPS](https://www.curseforge.com/minecraft/mc-mods/dynamic-fps)           | Background FPS reduction                 |
| [NoisiumForked](https://modrinth.com/mod/noisiumforked) (v2.7.0)                  | Worldgen optimization (active fork)      |

### Visual & Client QoL

| Mod                                                                                               | Role                                                                |
|---------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| [LambDynamicLights](https://www.curseforge.com/minecraft/mc-mods/lambdynamiclights)               | Dynamic lighting                                                    |
| [BetterF3](https://www.curseforge.com/minecraft/mc-mods/betterf3)                                 | Customizable debug HUD                                              |
| [Sound Physics Remastered](https://www.curseforge.com/minecraft/mc-mods/sound-physics-remastered) | Realistic sound                                                     |
| [AmbientSounds](https://www.curseforge.com/minecraft/mc-mods/ambientsounds)                       | Nature ambiance (birds, wind, water)                                |
| [The Immersive Music Mod](https://modrinth.com/mod/immersivemusicmod)                             | 147 new biome/structure-based songs, vanilla silence gaps preserved |
| [Immersive UI](https://www.curseforge.com/minecraft/mc-mods/immersive-ui)                         | Animated UI, smooth hotbar, item particles                          |
| [Traveler\'s Titles](https://modrinth.com/mod/travelers-titles)                                   | RPG-style titles entering biomes/dimensions                         |
| [Better Modlist](https://www.curseforge.com/minecraft/mc-mods/better-modlist-neoforge)            | Enhanced mod list screen with badges/categories                     |
| [Better Third Person](https://www.curseforge.com/minecraft/mc-mods/better-third-person)           | Independent 360° camera rotation in third-person view               |
| [Tooltip Overhaul](https://www.curseforge.com/minecraft/mc-mods/tooltip-overhaul)                 | Modern, sharp tooltip rendering with equipment compare              |
| [Eating Animation](https://www.curseforge.com/minecraft/mc-mods/eating-animation-forge)           | First-person food/drink shrinking animation, visible in 3rd person  |
| [Durability Tooltip](https://modrinth.com/mod/durability-tooltip)                                 | Durability info on tooltips — configurable bar/text/both style      |
| [Sounds](https://modrinth.com/mod/sound)                                                          | 170+ new sound effects for UIs, items, blocks, actions              |
| [Tiny Item Animations](https://modrinth.com/mod/tiny-item-animations)                             | Subtle float/pulse animations on inventory items                    |

### Inventory & UI

| Mod                                                                                         | Role                                            |
|---------------------------------------------------------------------------------------------|-------------------------------------------------|
| [JEI](https://www.curseforge.com/minecraft/mc-mods/jei)                                     | Recipe viewer                                   |
| [Jade](https://www.curseforge.com/minecraft/mc-mods/jade)                                   | Block info HUD                                  |
| [Jade Addons](https://www.curseforge.com/minecraft/mc-mods/jade-addons)                     | Extra Jade info panels                          |
| [Xaero\'s Minimap + World Map](https://www.curseforge.com/minecraft/mc-mods/xaeros-minimap) | Mapping and waypoints                           |
| [AppleSkin](https://www.curseforge.com/minecraft/mc-mods/appleskin)                         | Food hunger/saturation overlay                  |
| [Mouse Tweaks](https://www.curseforge.com/minecraft/mc-mods/mouse-tweaks)                   | Inventory management shortcuts                  |
| [Harvest With Ease](https://www.curseforge.com/minecraft/mc-mods/harvest-with-ease)         | Right-click crop harvest & replant              |
| [Fancy Toasts](https://www.curseforge.com/minecraft/mc-mods/fancy-toasts)                   | Beautiful animated advancement popups           |
| [Obscure Tooltips](https://www.curseforge.com/minecraft/mc-mods/obscure-tooltips)           | Animated tooltips with 3D models and particles  |
| [Loot Journal](https://www.curseforge.com/minecraft/mc-mods/loot-journal-neoforge)          | Animated item pickup notifications              |
| [Reliable Advancements](https://modrinth.com/mod/reliable-advancements)                     | Overhauled advancements UI with editor/pan/zoom |
| [Polymorph](https://www.curseforge.com/minecraft/mc-mods/polymorph)                         | Choose crafting result when recipes conflict    |
| [Mod Name Tooltip](https://www.curseforge.com/minecraft/mc-mods/mod-name-tooltip)           | Shows which mod an item comes from in tooltip   |

### Storage & Travel

| Mod                                                                                             | Role                          |
|-------------------------------------------------------------------------------------------------|-------------------------------|
| [Sophisticated Storage](https://www.curseforge.com/minecraft/mc-mods/sophisticated-storage)     | Upgradable barrels/chests     |
| [Sophisticated Backpacks](https://www.curseforge.com/minecraft/mc-mods/sophisticated-backpacks) | Portable inventory            |
| [Waystones](https://www.curseforge.com/minecraft/mc-mods/waystones)                             | Fast travel between waypoints |
| [GraveStone Mod](https://www.curseforge.com/minecraft/mc-mods/gravestone-mod)                   | Keep inventory on death       |

### Infrastructure

| Mod                                                                                                      | Role                                                                     |
|----------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------|
| [Chunk Loaders](https://www.curseforge.com/minecraft/mc-mods/chunk-loaders)                              | Keep chunks loaded across dimensions — essential for Phase 2+ automation |
| [SuperMartijn642's Config Lib](https://www.curseforge.com/minecraft/mc-mods/supermartijn642s-config-lib) | Config library (Chunk Loaders dependency)                                |
| [SuperMartijn642's Core Lib](https://www.curseforge.com/minecraft/mc-mods/supermartijn642s-core-lib)     | Core library (Chunk Loaders dependency)                                  |

### New Dependencies

| Mod                                                                               | Role                                     |
|-----------------------------------------------------------------------------------|------------------------------------------|
| [Cloth Config](https://www.curseforge.com/minecraft/mc-mods/cloth-config)         | Config screen library                    |
| [Architectury API](https://www.curseforge.com/minecraft/mc-mods/architectury-api) | Cross-loader compatibility               |
| [YACL](https://modrinth.com/mod/yacl)                                             | Config library                           |
| [Curios API](https://www.curseforge.com/minecraft/mc-mods/curios)                 | Accessory slots (replaces Trinkets)      |
| [CreativeCore](https://www.curseforge.com/minecraft/mc-mods/creativecore)         | Library (AmbientSounds)                  |
| [OctoLib](https://modrinth.com/mod/shatterbyte-lib)                               | Library (Immersive UI)                   |
| [Fragmentum](https://modrinth.com/mod/fragmentum)                                 | Library (Obscure Tooltips, Loot Journal) |
| [M.R.U](https://modrinth.com/mod/mru)                                             | Library (Sounds)                         |
| [Cobweb](https://modrinth.com/mod/cobweb)                                         | Library (Harvest With Ease)              |
| [Sinytra Connector](https://modrinth.com/mod/connector)                           | Fabric→NeoForge compatibility (Continuity) |
| [Forgified Fabric API](https://modrinth.com/mod/forgified-fabric-api)             | Fabric API bridge (Continuity)           |
| [YUNG's API](https://modrinth.com/mod/yungs-api)                                  | Library (Traveler's Titles, YUNG's Better mods) |

### Shaderpack

| Shaderpack                                                                                        | Description                                                           |
|---------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
| [Complementary Unbound](https://www.curseforge.com/minecraft/customization/complementary-shaders) | Realistic visual style, Potato→Ultra profiles, block-specific effects |

**Optimal settings for NVIDIA RTX 4080 SUPER (16GB VRAM, 4K target)**:

| Setting                    | Value           |
|----------------------------|-----------------|
| Visual Style               | Unbound         |
| Profile                    | Ultra           |
| RP Support                 | Integrated PBR+ |
| Real-Time Shadows          | Very High       |
| Shadow Distance            | 20 chunks       |
| Light Shaft Quality        | High            |
| Entity Shadows             | OFF             |
| Detail Quality             | High            |
| Cloud Quality              | High            |
| Water Reflection Quality   | Medium (max)    |
| Block Reflection Quality   | High            |
| Anti-Aliasing (FXAA)       | ON              |
| Edge Shadow (SSAO) Quality | High (max)      |
| Advanced Colored Lighting  | 16 chunks       |
| Texture Filtering          | 16x             |

**General MC settings**: Render Distance 20–24 chunks, Fullscreen ON, VSync OFF, Max Framerate uncapped. Expected ~100+ FPS at 4K with Faithful 64 texture pack. With 128x+ texture packs, monitor VRAM usage (peaks at ~14GB). Drop to High profile if targeting 144Hz+.

### Texture Packs

| Pack                                                                            | Role                                                                                 |
|---------------------------------------------------------------------------------|--------------------------------------------------------------------------------------|
| [Faithful 64x](https://www.curseforge.com/minecraft/texture-packs/faithful-64x) | 64x vanilla block textures — clean, sharp, PBR-compatible with Complementary Unbound |
| [Fresh Animations](https://modrinth.com/resourcepack/fresh-animations)          | Living entity animation overhaul — mobs blink, look around, show emotion             |
| [RAY's 3D Rails](https://modrinth.com/resourcepack/rays-3d-rails)               | 3D block & item textures for all rail types                                          |
| [3D Ladders](https://modrinth.com/resourcepack/3d-ladders)                      | 3D model replacement for ladders                                                     |
| [Better Lanterns](https://modrinth.com/resourcepack/better-lanterns)            | Enhanced 3D look for lanterns and chains                                             |

**Faithful 64x** upscales vanilla blocks to 64x resolution while preserving the original look. Works with Complementary Unbound's Integrated PBR+ for realistic material response (metal shines, wool is soft, stone is rough). Modded blocks (Create, Mekanism, AE2) use their default textures, which are already well-designed and blend naturally at 64x. The RTX 4080 SUPER handles this with zero FPS impact at 4K.

**Fresh Animations** adds idle animations, directional looking, sleep/blink cycles, and emotional states to all vanilla mobs. It's a resource pack overlay (not a mod) — place it **above** Faithful 64x in the pack order. Works on any version with no mod dependencies.

**RAY's 3D Rails** replaces rail block and item textures with 3D models. Supports shaders since v3.0. Compatible with all rail types from Steam 'n' Rails and Create.

**3D Ladders** replaces the vanilla ladder model with a 3D version. Simple, lightweight, no conflicts.

**Better Lanterns** gives lanterns and chains an enhanced 3D look with connected chain models. Compatible with Arcane Lanterns and Thin Air mods.

**Installation**: Download each `.zip` above, place in `.minecraft/resourcepacks/`, then enable them in Options → Resource Packs. Suggested load order (top = highest priority):

1. Faithful 64x
2. Fresh Animations
3. RAY's 3D Rails
4. 3D Ladders
5. Better Lanterns

### Configuration — Wave 0

**Waystones**:

- `inventoryButton` = `"any"` — Opens waystone menu from inventory without a keybind.
- `enableCosts` = `false` — Free teleportation.
- `enableCooldowns` = `false` — No teleport cooldown.

**Tombstone (GraveStone Mod)**:

- `grave.keepExperience` = `true` — Keep all XP on death. Complements the Skill Tree (Wave 3).
- `grave.protectionDuration` = `86400` — 24 hours of grave protection.

**Aether**:

- `"Use default Curios' menu"` = `true` — Uses Curios API menu instead of Aether's separate accessories screen.
- `"Gives player Aether Portal Frame item"` = `false` — Player must build the portal manually.
- `"Gives starting loot on entry"` = `true` — Grants Book of Lore and Golden Parachutes on first entry.
- `"Show Patreon message"` = `false` — Removes Patreon nag screen.
- `"Add Temporary Freezing automatically"` = `false` — Disables Aether's temporary freezing datapack.
- `"Add Ruined Portals automatically"` = `false` — Disables ruined portal datapack.

**Loot Journal**:

- `writeSessionJson` = `true` — Saves per-session gain/loss data.
- `writeStatisticsJson` = `true` — Builds cumulative drop statistics.
- `showSummaryOnDisconnect` = `true` — Shows session summary on disconnect.

**Durability Tooltip**:

- Config file `config/durabilitytooltip.json`:
    - `"style"`: `"BAR"` — Shows durability as a visual bar instead of text.
    - Set to `"TEXT"` or `"BOTH"` for alternative display styles.

### Data Packs (Wave 0)

| Data Pack                                                                                                             | Role                                  |
|-----------------------------------------------------------------------------------------------------------------------|---------------------------------------|
| [BlazeandCave's Advancements Pack](https://modrinth.com/datapack/blazeandcaves-advancements-pack) (v2.3.0 for 1.21.x) | 1000+ new advancements across 16 tabs |

**BlazeandCave's Advancements Pack** adds 1000+ milestones across 16 themed tabs — mining, building, farming, combat, exploration, redstone, brewing, enchantments, and more. It tracks collecting every wood variant, killing every mob type, discovering every biome, and reaching tier milestones. Runs alongside Reliable Advancements (GUI overhaul) and Fancy Toasts (animated popups) without conflict.

**Installation**: Drop the `.zip` into your world's `datapacks/` folder (`saves/<world>/datapacks/`), then run `/datapack enable "blazeandcave/advancements"`. The pack is per-world — enable it in each new world.

---

## Wave 1 — Tech (Create + Mekanism + AE2)

The classic tech trio. Create handles mechanical automation, Mekanism handles industrial processing, AE2 handles digital storage and autocrafting.

### Core Tech

| Mod                                                                                   | Role                                                                                                                                             |
|---------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------|
| [**Create**](https://www.curseforge.com/minecraft/mc-mods/create) 6.0.10              | Mechanical automation — rotational power, water wheels, windmills, gear trains, conveyor belts, deployers, sequenced crafters, trains            |
| [**Mekanism**](https://www.curseforge.com/minecraft/mc-mods/mekanism) 10.7.19.85      | Industrial processing — ore multiplication (2x→5x), digital miner, fusion reactor, superdense energy storage, MekaSuit (flight, invulnerability) |
| [**AE2**](https://www.curseforge.com/minecraft/mc-mods/applied-energistics-2) 19.2.17 | Digital storage — ME drives, autocrafting, P2P tunnels, spatial storage. The storage backbone                                                    |

### Create Addons

| Mod                                                                                                                      | Role                                                                                                                               |
|--------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------|
| [Create Crafts & Additions](https://www.curseforge.com/minecraft/mc-mods/createaddition) 1.6.0                           | Electric motors, alternators, rolling mill, wires/rods, silver/electrum — bridges kinetic SU and Forge Energy (FE)                 |
| [Steam \'n\' Rails NeoForge](https://www.curseforge.com/minecraft/mc-mods/steam-n-rails-neoforge) 0.2.1                  | Expanded train system — new tracks (spruce, monorail), semaphores, conductor mob, coupling/decoupling blocks                       |
| [Create: The Factory Must Grow](https://www.curseforge.com/minecraft/mc-mods/create-industry) (TFMG)                     | Heavy engineering & oil — crude oil drilling, distillation, diesel/gasoline/LPG engines, steel, aluminum, electricity with voltage |
| [Mekanism TFMG Compatibility](https://www.curseforge.com/minecraft/mc-mods/mekanism-the-factory-must-grow-compatibility) | 85+ recipe bridges — deduplicates lead/steel/sulfur, integrates aluminum/plastic into Mekanism chains                              |

### How They Work Together

| Layer              | Mod                                                                                      |          |
|--------------------|------------------------------------------------------------------------------------------|----------|
| Power generation   | Create (water wheels, windmills, steam) + Mekanism (advanced generators, fusion reactor) |          |
| Ore processing     | Mekanism — up to 5x ore multiplication with chemical processing                          |          |
| Factory automation | Create — conveyor belts, deployers, sequenced crafters                                   |          |
| Storage            | AE2 — ME drives, storage busses, crafting CPUs                                           |          |
| Transport          | Create trains + AE2 P2P tunnels                                                          |          |
| Endgame            | Mekanism fusion reactor + MekaSuit + AE2 autocrafting                                    | ### Ores |

| Mod                                                                             | Role                                         |
|---------------------------------------------------------------------------------|----------------------------------------------|
| Create (built-in)                                                               | Zinc, brass, copper                          |
| Mekanism (built-in)                                                             | Osmium, tin, lead, uranium, fluorite         |
| [Skniro\'s Nether & End Ores](https://modrinth.com/mod/skniros-nether-end-ores) | Additional ores in Nether and End dimensions |

### Configuration — Wave 1

**Mekanism** (`config/Mekanism/general.toml`):

- `allowChunkloading` = `false` — Disable Mekanism's built-in chunk loading. Prevents conflict with the dedicated Chunk Loaders mod and keeps chunk management unified.

**Ore generation**: All default rates. Osmium at iron-like frequency, tin/lead moderate, uranium/fluorite rarer. Default distribution aligns with the pack's progression curve.

**Interdependency notes for Wave 1:**

- Mekanism's universal cables can power AE2 controllers via the Energy Acceptor. No adapter mod needed.
- **Create Crafts & Additions** electric motors and alternators create a direct kinetic↔FE bridge, replacing the Create Alternator workaround. Silver and electrum add new material tiers that integrate with Mekanism's ore processing line.
- **Steam 'n' Rails** expands Create's train system with new tracks, semaphores, conductor mobs, and coupling blocks. Essential for moving resources between MineColonies, Mekanism factories, and AE2 storage across a sprawling base.
- Mekanism's 5x ore processing (Chemical Dissolution Chamber → Washer → Crystallizer) outclasses Create's Crushing Wheels (1.5x) and Millstone (1x) for ore multiplication. This is intentional — Create handles mechanical automation and component crafting, Mekanism handles industrial processing. Neither obsoletes the other.
- AE2's Storage Bus on a Sophisticated Storage barrel makes early-mid game storage migration seamless. Place a Storage Bus on your barrel wall, configure it to show contents in the ME terminal, and transition gradually to full digital storage.
- **Create: The Factory Must Grow** adds oil drilling, distillation towers, blast furnaces, and diesel engines — expanding Create's mechanical toolkit into heavy industry. Its steel replaces Mekanism's steel (TFMG's blast furnace is the intended steel source; Mekanism's steel recipe is disabled by the Mekanism TFMG Compat mod). TFMG aluminum and plastic feed into Mekanism's advanced processing chains.
- **Mekanism TFMG Compatibility** resolves 85+ recipe overlaps between TFMG and Mekanism — lead, sulfur, and steel are unified under TFMG's production lines, while Mekanism retains its chemical processing advantage. Both JEI item blacklist config and per-recipe toggles are available for pack tuning.
- **Create: TFMG — Stellaris Compat** (listed in Wave 7) allows TFMG diesel and gasoline to fuel Stellaris rockets, creating a direct fuel-production pipeline from TFMG refineries to space launch. This bridges Wave 1 heavy industry with Wave 7 space exploration.

---

## Wave 1.5 — Colony Management

MineColonies provides autonomous NPC workers that mine, farm, craft, and guard your base.

### Colony Automation

| Mod                                                                               | Role                                                                               |
|-----------------------------------------------------------------------------------|------------------------------------------------------------------------------------|
| [**MineColonies**](https://www.curseforge.com/minecraft/mc-mods/minecolonies)     | Autonomous NPC colony — builders, miners, farmers, crafters, guards, research tree |
| [Structurize](https://www.curseforge.com/minecraft/mc-mods/structurize)           | Structure building/placement library (MineColonies dependency)                     |
| [MultiPiston](https://www.curseforge.com/minecraft/mc-mods/multi-piston)          | Multi-block piston library (MineColonies dependency)                               |
| [BlockUI](https://www.curseforge.com/minecraft/mc-mods/blockui)                   | UI library (MineColonies dependency)                                               |
| [Domum Ornamentum](https://www.curseforge.com/minecraft/mc-mods/domum-ornamentum) | Decorative block library (MineColonies dependency)                                 |

### Interdependency notes for Wave 1.5

- MineColonies guards (deployed via the Town Hall's "Guard Tower" building) patrol your base perimeter, reducing the need to secure every wall gap manually. Their effectiveness scales with the Guard Tower level and the colony's skill research. This creates a natural progression — automated base defense grows as your colony does.
- MineColonies Colony Research milestones signal Phase 2 progression readiness. For example, the "Industrial Revolution" research (Colony level 3, 5000 research points) serves as a soft gate — by the time you reach it, you have the colony infrastructure to support Mekanism and AE2. Hard recipe gating (e.g., Atomic Alloy locked behind research) requires a data pack or scripting mod and is not implemented in this pack — the progression pillars in AGENTS.md define the intent, and playtesting determines if soft gating is sufficient.
- Chunk Loaders (Wave 0) are essential for MineColonies — they keep workers active while you explore other dimensions. Place at least one at your colony after setting up your base.

---

## Wave 2 — Exploration (World & Dimensions)

### Overworld Worldgen

| Mod                                                                 | Role                                                            |
|---------------------------------------------------------------------|-----------------------------------------------------------------|
| [Terralith](https://www.curseforge.com/minecraft/mc-mods/terralith) | Overhauled Overworld biomes                                     |
| [Tectonic](https://www.curseforge.com/minecraft/mc-mods/tectonic)   | Better terrain shape — deeper valleys, taller mountains, cliffs |

### Structures

| Mod                                                                                         | Role                             |
|---------------------------------------------------------------------------------------------|----------------------------------|
| [YUNG\'s Better Dungeons](https://modrinth.com/mod/yungs-better-dungeons)                   | Overhauled dungeons              |
| [YUNG\'s Better Mineshafts](https://modrinth.com/mod/yungs-better-mineshafts)               | Improved mineshafts              |
| [YUNG\'s Better Strongholds](https://modrinth.com/mod/yungs-better-strongholds)             | Larger, more complex strongholds |
| [YUNG\'s Better Desert Temples](https://modrinth.com/mod/yungs-better-desert-temples)       | Multi-room desert temples        |
| [YUNG\'s Better Jungle Temples](https://modrinth.com/mod/yungs-better-jungle-temples)       | Jungle temples with traps        |
| [YUNG\'s Better Ocean Monuments](https://modrinth.com/mod/yungs-better-ocean-monuments)     | Redesigned ocean monuments       |
| [YUNG\'s Better Witch Huts](https://modrinth.com/mod/yungs-better-witch-huts)               | Expanded witch huts              |
| [YUNG\'s Better Nether Fortresses](https://modrinth.com/mod/yungs-better-nether-fortresses) | Improved nether fortresses       |
| [YUNG\'s Better Caves](https://modrinth.com/mod/yungs-better-caves)                         | Larger, more varied caves        |
| [Structory](https://www.curseforge.com/minecraft/mc-mods/structory)                         | New hand-crafted structures      |
| [Towns & Towers](https://www.curseforge.com/minecraft/mc-mods/towns-and-towers)             | Better village generation        |

### Dimensions

| Mod                                                                                 | Role                                                                                       |
|-------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------|
| [The Aether](https://www.curseforge.com/minecraft/mc-mods/aether)                   | Sky dimension — safe islands, gear progression, dungeons with bosses                       |
| [Deeper and Darker](https://modrinth.com/mod/deeperdarker)                          | The "Otherside" dimension — deep dark themed, warden gear                                  |
| [Twilight Forest](https://www.curseforge.com/minecraft/mc-mods/the-twilight-forest) | Classic dimension — 6+ bosses with progression gates, unique loot, enchanted forest biomes |

### End Overhaul

| Mod                                                                                                    | Role                                                         |
|--------------------------------------------------------------------------------------------------------|--------------------------------------------------------------|
| [**BetterEnd NeoForge**](https://modrinth.com/mod/betterend-neoforge) v21.0.25                         | Full End overhaul — 24+ biomes, new mobs, gear, custom music |
| [**Moog\'s End Structures**](https://www.curseforge.com/minecraft/mc-mods/moogs-end-structures) v2.0.3 | New structures to fill the End dimension                     |
| [**Ender\'s Delight**](https://www.curseforge.com/minecraft/mc-mods/enders-delight) v1.3.0             | End-themed food for Farmer's Delight                         |

### New Dependencies (End Overhaul)

| Mod                                                                   | Role                                        |
|-----------------------------------------------------------------------|---------------------------------------------|
| [BCLib NeoForge](https://modrinth.com/mod/bclib-neoforge)             | Core library — required by BetterEnd        |
| [WorldWeaver NeoForge](https://modrinth.com/mod/worldweaver-neoforge) | Worldgen library — required by BetterEnd    |
| [WunderLib NeoForge](https://modrinth.com/mod/wunderlib-neoforge)     | Utility library — required by BetterEnd     |
| [Moog\'s Structure Lib](https://modrinth.com/mod/moogs-structure-lib) | Library — required by Moog's End Structures |

### Navigation

| Mod                                                                                   | Role                             |
|---------------------------------------------------------------------------------------|----------------------------------|
| [Explorer\'s Compass](https://www.curseforge.com/minecraft/mc-mods/explorers-compass) | Craftable structure/biome finder |

### Mobility

| Mod                                                                                         | Role                                                                                           |
|---------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------|
| [Immersive Aircraft](https://www.curseforge.com/minecraft/mc-mods/immersive-aircraft) 1.1.5 | Flyable aircraft — biplane, airship, cargo airship, warship, gyrocopter. Upgradable, colorable |

**The Aether**: Configuration covered in Wave 0.

**Interdependency note — Immersive Aircraft + Aether**: Aircraft can fly in the Aether dimension. An airship is a natural way to navigate Aether islands — it pairs well with the dimension's sky-island geography.

**Interdependency note — Twilight Forest + Apotheosis**: Apotheosis boss affixes (Wave 3) apply to Twilight Forest bosses. A Naga with the "Tough" affix is significantly harder. This is intended — it keeps dimension bosses relevant even with late-game gear. If a boss feels too strong, the player can return after better equipment or use Apotheosis gems/runes for the edge.

---

## Wave 3 — Equipment Magic & RPG

### RPG Progression

| Mod                                                            | Role                                                  |
|----------------------------------------------------------------|-------------------------------------------------------|
| [Skill Tree (RPG Series)](https://modrinth.com/mod/skill-tree) | XP leveling — spend points on attributes and passives |
| [Pufferfish\'s Skills](https://modrinth.com/mod/skills)        | Underlying skill system framework                     |

### Equipment

| Mod                                                                         | Role                                                |
|-----------------------------------------------------------------------------|-----------------------------------------------------|
| [Simply Swords](https://www.curseforge.com/minecraft/mc-mods/simply-swords) | 60+ unique weapons with passive/activated abilities |
| [Relics RPG](https://modrinth.com/mod/relics-rpg)                           | Legendary accessories with unique abilities         |
| [Runes](https://modrinth.com/mod/runes)                                     | Socketable runes for weapons/tools                  |
| [Curios API](https://www.curseforge.com/minecraft/mc-mods/curios)           | Accessory slots (rings, amulets, belts, gloves)     |

### Loot & Affixes

| Mod                                                                       | Role                                                                                                           |
|---------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------|
| [**Apotheosis**](https://www.curseforge.com/minecraft/mc-mods/apotheosis) | Rarity tiers, random affixes, gem socketing, enchanting overhaul. Replaces Savaru's Affixology with more depth |

### Configuration — Wave 3

**Apotheosis** — the most config-heavy major mod. Apotheosis is split into modules, each with its own config:

**Adventure module** — affixes, gems, boss modifiers, rogue spawners:

- Keep all affix types enabled: Ruthless (crit), Arcane (spell), Sturdy (armor), Nimble (speed), Plentiful (mining), Titanic (HP). Each supports a different playstyle.
- Gem tiers enabled: Rough, Cut, Flawless. The gem progression (Rough → Cut → Flawless) provides a satisfying vertical upgrade path. Each tier unlockable through Apotheosis's reforging mechanic.
- Gem types cover all primary stats: melee damage, projectile damage, magic damage, armor, max HP, mining speed, movement speed, luck. This ensures every build archetype benefits from gem-socketed gear.
- Socket count: Gear drops with 1-2 sockets by default. Reforging at the Smithing Table can add a 3rd socket at high rarity (Mythic+). This prevents socket overload while keeping the system meaningful.
- Boss modifiers: all active. Apothic Invaders and Elites spawn naturally with random affixes. They always drop affix items — this is the primary source of mythic gear.
- Rogue Spawners: enabled. Underground spawner+chest combos. Risk vs reward.
- Affix item probability: default rates (~5% base for rare+, scaling with luck and difficulty). Common-enough to feel rewarding, rare-enough to keep each upgrade exciting.

**Enchanting module** — `config/apotheosis/enchanting.cfg`:

- Keep all enchantment overhauls enabled: higher level cap (up to level 150+), tiered bookshelves (Hell, Seashelf, Endshelf), Library of Alexandria, new enchantments (Chromatic, Mounting, Stable Footing, etc.).
- The Library of Alexandria stores all enchanted books in one block — essential for enchanting organization at scale.
- Enchantment max levels increased for many vanilla enchantments: Protection can reach level 8, Sharpness level 6, Fortune level 5, Looting level 5, etc. These higher caps match the power fantasy curve — gear enchanted at max level should feel mythic.

**Potion module**:

- Potion Charms enabled: craft a charm from blaze powder + potions, equip in offhand for passive effect. Reduces inventory clutter from potion bottles.
- Potion augmentation allowed: glowing, brewing, changing base type into splash/lingering at standard ratios. Augmented potions can have higher level caps (e.g., Potion of Strength III).

**Spawner module**:

- Spawner capture and modification enabled. Silk-touch a spawner with a pickaxe, then modify it (entity type, spawn delay, player range, min/max entities). Key for XP farms and mob-based automation.
- Spawner stats are fully configurable after placement through the spawner's GUI (right-click with an empty hand). Players can fine-tune delay, count, range, and conditions per spawner — no external tool needed.

**Village module**:

- Wandering trader improvements enabled. Traders can sell Apotheosis items (gems, affix gear, enchanted books) at elevated prices. Adds a secondary acquisition path for players who prefer trading over combat.

**Deadly module**: **Enabled.** Apotheosis's Deadly module adds randomly generated death-traps to the world (sudden spikes, poison darts, instakill rooms, lava traps). This adds risk-reward tension to structure exploration — the deadliest rooms hold the best loot. The Deadly module's traps are telegraphed and avoidable with caution, and GraveStone Mod keeps your items safe if you do trigger one, so the chill rule is preserved.

**Reforging costs** — Apotheosis's reforging mechanic (reroll affixes with gem dust) uses default material costs. As the player progresses, reforging costs scale:

- Common→Uncommon: cheap (a few gem dust)
- Rare→Epic: moderate (dust + some ingots)
- Epic→Mythic: expensive (dust + rare materials like netherite scrap/echo shards)

This cost curve encourages the player to settle for "good enough" gear until they're ready to invest in perfect rolls.

---

## Wave 4 — Food, Farming & Comfort

| Mod                                                                                               | Role                                                                  |
|---------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
| [**Farmer\'s Delight**](https://www.curseforge.com/minecraft/mc-mods/farmers-delight) 1.3.2       | Cooking hub — cutting board, cooking pot, stove, new crops            |
| [**Brewin\' And Chewin\'**](https://www.curseforge.com/minecraft/mc-mods/brewin-and-chewin) 4.5.0 | Drinks and fermentation — beer, wine, mead, whiskey                   |
| [**Storage Delight**](https://www.curseforge.com/minecraft/mc-mods/storage-delight-forge) 1.3.0   | Kitchen furniture — drawers, cabinets, shelves for ingredient storage |
| [**More Delight**](https://modrinth.com/mod/more-delight) 3.5.0                                   | Extra meals, sandwiches, toasts, and knife variants                   |
| [**My Nether\'s Delight**](https://www.curseforge.com/minecraft/mc-mods/my-nethers-delight) 2.1.1 | Nether-themed food ingredients and recipes                            |
| [**Ocean\'s Delight**](https://modrinth.com/mod/oceans-delight) 2.1.0                             | Ocean-themed seafood dishes                                           |

**Interdependency notes for Wave 4:**

- Farmer's Delight meals provide status effects that stack with Brewin' And Chewin' drinks. Combined, a full meal + a vintage drink gives significant combat buffs — useful before boss fights (Wave 5).
- Harvest With Ease (Wave 0) works on all Farmer's Delight crops. Right-click to harvest, the plant stays for regrowth.
- AE2's ME System can store Farmer's Delight ingredients and cooked meals. Set up an Export Bus on a cooking pot for automated ingredient delivery.
- Bountiful (Wave 4.5) can generate bounties that request Farmer's Delight meals as objectives, and reward cooking ingredients.
- My Nether's Delight and Ocean's Delight unlock food sources from cross-dimensional ingredients, giving reasons to explore the Nether and oceans beyond combat. End's Delight (Wave 2) completes the set — journeying to the End yields unique recipes.
- Storage Delight cabinets and drawers provide early-game kitchen storage that feeds into AE2 in Phase 2. They're designed as stepping stones, not replacements.

---

## Wave 4.5 — Quests

Procedural bounty system that gives purpose to exploration and material collection without manual quest authoring.

| Mod                                                              | Role                                                                                          |
|------------------------------------------------------------------|-----------------------------------------------------------------------------------------------|
| [**Bountiful**](https://modrinth.com/mod/bountiful) 8.0.0-beta.2 | Bounty boards in villages — procedurally generated fetch/kill/exploration quests with rewards |

Bountiful generates quests automatically — find a bounty board in any village, accept tasks, earn rewards. Fully optional. Items from installed mods automatically appear in its reward pools.

---

## Wave 5 — Combat & Mobs

| Mod                                                                                               | Role                                                                                            |
|---------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------|
| [Better Combat](https://modrinth.com/mod/better-combat)                                           | Melee combat animations — weapon reach, sweeping, attack speed                                  |
| [Mutant Monsters](https://www.curseforge.com/minecraft/mc-mods/mutant-monsters)                   | Mutant zombie, skeleton, creeper, enderman — unique drops                                       |
| [L_Ender\'s Cataclysm](https://modrinth.com/mod/l_enders-cataclysm)                               | Epic boss fights — Leviathan, Netherite Monstrosity, Ender Guardian (Modrinth, NeoForge 1.21.1) |
| [When Dungeons Arise](https://www.curseforge.com/minecraft/mc-mods/when-dungeons-arise)           | Roguelike combat structures with loot                                                           |
| [Enchantment Descriptions](https://www.curseforge.com/minecraft/mc-mods/enchantment-descriptions) | Shows enchantment effects in tooltips                                                           |
| [Create Big Cannons](https://modrinth.com/mod/create-big-cannons)                                 | Artillery engineering — siege cannons for colony defense and spectacle                          |

Apotheosis also adds boss modifiers and elite mob affixes — partially covers what Champions would have done.

### New Dependencies (Combat)

| Mod                                                          | Role                                                               |
|--------------------------------------------------------------|--------------------------------------------------------------------|
| [Ritchie's Projectile Library](https://modrinth.com/mod/rpl) | Library — custom projectiles and trajectories (Create Big Cannons) |

**Better Combat + Simply Swords**: Simply Swords weapons have built-in Better Combat data files — each weapon category uses the correct attack animation, reach, and speed automatically.

---

## Wave 6 — Building & Decoration

| Mod                                                                             | Role                                                          |
|---------------------------------------------------------------------------------|---------------------------------------------------------------|
| [Chipped](https://www.curseforge.com/minecraft/mc-mods/chipped)                 | Hundreds of decorative block variants for every material      |
| [Supplementaries](https://www.curseforge.com/minecraft/mc-mods/supplementaries) | Vanilla+ decoration — jars, signposts, faucets, weather vanes |
| [Macaw\'s Bridges](https://www.curseforge.com/minecraft/mc-mods/macaws-bridges) | Bridges in all wood types                                     |
| [Macaw\'s Doors](https://www.curseforge.com/minecraft/mc-mods/macaws-doors)     | Vanilla-style doors for every wood                            |
| [Macaw\'s Roofs](https://www.curseforge.com/minecraft/mc-mods/macaws-roofs)     | Roofing blocks                                                |
| [Macaw\'s Windows](https://www.curseforge.com/minecraft/mc-mods/macaws-windows) | Window variants                                               |
| [Building Wands](https://www.curseforge.com/minecraft/mc-mods/building-wands)   | Faster large-scale construction                               |
| [Handcrafted](https://www.curseforge.com/minecraft/mc-mods/handcrafted)         | Furniture — chairs, tables, shelves, curtains                 |

---

## Wave 7 — Space Exploration

### Core Space Mod

| Mod                                                                            | Role                                                                                         |
|--------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------|
| [**Stellaris**](https://www.curseforge.com/minecraft/mc-mods/stellaris) 1.4.23 | Space exploration — rockets, Moon/Mars/Venus/Mercury/Glacio, oxygen system, machines, energy |

Stellaris (by ExodusTeam) is the successor to Beyond Earth and the premier space mod for NeoForge 1.21.1. It features 4 rocket tiers, a rover, oxygen management, custom gravity per planet, oil/water/fuel processing, radioactives, and alien mobs. Machines include the Oxygen Distributor, Water Separator, Solar Panel, Fuel Refinery, and Pump Jack. 250+ building blocks across planet-specific sets.

### Dependencies

| Mod                                                                               | Role                                     |
|-----------------------------------------------------------------------------------|------------------------------------------|
| [Architectury API](https://www.curseforge.com/minecraft/mc-mods/architectury-api) | Cross-loader library (already in Wave 0) |
| [Potentials API](https://www.curseforge.com/minecraft/mc-mods/potentials)         | Required library (Stellaris dependency)  |

Sky Aesthetics is embedded in Stellaris — no separate install needed.

### Addons

| Mod                                                                               | Role                                                                               |
|-----------------------------------------------------------------------------------|------------------------------------------------------------------------------------|
| [Create: TFMG — Stellaris Compat](https://modrinth.com/mod/tfmg-stellaris-compat) | Bridges TFMG diesel/gasoline into Stellaris rocket fuel (listed in Wave 1 as well) |

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

### Progression Placement

Phase 2 — Industrial Ascent (hours 40–200). Rockets require advanced materials that gate them behind Mekanism mid-game processing and AE2 infrastructure. Oxygen systems and fuel refining add a parallel supply-chain puzzle that rewards industrial automation.

---

## Mod Count Summary

| Wave                       | Mods    | Deps   | Total   | Notes                                                                                                       |
|----------------------------|---------|--------|---------|-------------------------------------------------------------------------------------------------------------|
| Wave 0 — Foundation        | 49      | 10     | 59      | Performance, QoL, storage, travel, graves, UI, chunk loading (+6 resource packs, 1 shaderpack, 1 data pack) |
| Wave 1 — Tech              | 8    | —    | 8     | Create + 4 addons, Mekanism, AE2, Nether & End Ores (TFMG-Stellaris compat listed in Wave 7 only)                          |
| Wave 1.5 — Colony          | 5       | —      | 5       | MineColonies (4 deps counted as mods — they're library mods)                                                |
| Wave 2 — Exploration       | 21      | 4      | 25      | YUNG's (9), Terralith/Tectonic, dimensions (3), End overhaul (3 + 4 deps), navigation, aircraft             |
| Wave 3 — Equipment Magic   | 7       | —      | 7       | Skill Tree, Simply Swords, Relics, Runes, Curios, Apotheosis                                                |
| Wave 4 — Food & Farming    | 6       | —      | 6       | Farmer's Delight + 5 addon mods                                                                             |
| Wave 4.5 — Quests          | 1       | —      | 1       | Bountiful                                                                                                   |
| Wave 5 — Combat            | 6       | 1      | 7       | Better Combat, Mutant Monsters, Cataclysm, Dungeons Arise, Big Cannons, Enchantment Descriptions + RPL lib  |
| Wave 6 — Building          | 8       | —      | 8       | Chipped, Supplementaries, Macaw's (4), Building Wands, Handcrafted                                          |
| Wave 7 — Space Exploration | 2    | 1    | 3     | Stellaris, TFMG-Stellaris compat (moved from Wave 1), Potentials API                                               |
| **Total**                  | **112** | **17** | **129** | All confirmed NeoForge 1.21.1                                                                                          |
