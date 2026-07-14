# Mod List — Minecraft 1.21.1 NeoForge

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

Recommended JVM arguments (for Modrinth App → instance → Settings → Java & Memory → JVM Arguments, or Minecraft Launcher → Installation → Edit → More Options → JVM Arguments):

```
-XX:+UseZGC -XX:+ZGenerational -Xms8G -Xmx8G
```

| System RAM | Recommended allocation |
|------------|------------------------|
| 16 GB      | `-Xms10G -Xmx10G`      |
| 32 GB      | `-Xms22G -Xmx22G`      |
| 64 GB      | `-Xms48G -Xmx48G`      |

> **Note**: ZGC (Z Garbage Collector) with generational mode is the recommended GC for Java 21 with NeoForge. It provides consistently low latency (sub-millisecond pause times) and handles the large heap sizes common with modded Minecraft better than Shenandoah or G1GC. The Adoptium Temurin JDK 21 includes ZGC — no special Java build needed. If you encounter issues, you may also add `-XX:+AlwaysPreTouch` for pre-initialized memory pages.

### Modrinth App

| Tool                                     | Role                                     |
|------------------------------------------|------------------------------------------|
| [Modrinth App](https://modrinth.com/app) | Mod manager and launcher for the modpack |

The **Modrinth App** manages mod installation, updates, and launching for this modpack. It creates a separate instance per modpack, handles NeoForge installation automatically, and lets you install mods in one click from Modrinth's database. All Wave 0+ mods in this pack are available on Modrinth.

**Setup**:

1. Download and install the [Modrinth App](https://modrinth.com/app) for your OS.
2. Create a new **instance** (type: "Vanilla" → select version **1.21.1**).
3. Open the instance's settings → **Modloader** → select **NeoForge** (latest recommended for 1.21.1).
4. Click **Install** — the app downloads NeoForge automatically.
5. Launch the instance once to generate the `mods/` directory and configs.
6. Verify the main menu shows "NeoForge X.X.X" in the bottom-left corner.

From there, add mods through the app's **Browse** tab or by dropping `.jar` files into the instance's `mods/` folder. All mod links in this document link to their Modrinth pages — click to install directly.

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

NeoForge is the mod loader powering this modpack. If you're using the **Modrinth App**, it installs NeoForge automatically when you set the modloader in the instance settings (see [Modrinth App](#modrinth-app) above) — skip to step 5 to verify.

If installing manually:

1. Download the **NeoForge installer** for Minecraft 1.21.1 from [neoforged.net](https://neoforged.net/).
2. Run the installer: `java -jar neoforge-1.21.1-<version>-installer.jar`.
3. Select **"Install client"** and point it to your Minecraft directory (auto-detected on most systems).
4. Launch the new **neoforge** profile in the Minecraft Launcher once to generate the `mods/` directory and NeoForge configs.
5. Verify the main menu shows "NeoForge X.X.X" in the bottom-left corner.

**Important**: Do not add any mod `.jar` files yet. Wave -1 is complete when the vanilla 1.21.1 client runs under NeoForge with no mods installed.

---

## Wave 0 — Foundation

### Performance & Rendering

| Mod                                                              | Role                                     |
|------------------------------------------------------------------|------------------------------------------|
| [Sodium](https://modrinth.com/mod/sodium)                        | Rendering engine                         |
| [Iris](https://modrinth.com/mod/iris)                            | Shader loader (v1.8.14, NeoForge native) |
| [Lithium](https://modrinth.com/mod/lithium)                      | Server-side game logic optimization      |
| [Distant Horizons](https://modrinth.com/mod/distanthorizons)     | LOD rendering                            |
| [ModernFix](https://modrinth.com/mod/modernfix)                  | All-in-one perf + bug fixes              |
| [ImmediatelyFast](https://modrinth.com/mod/immediatelyfast)      | Immediate-mode rendering                 |
| [Entity Culling](https://modrinth.com/mod/entityculling)         | Hide off-screen entities                 |
| [Dynamic FPS](https://modrinth.com/mod/dynamicfps)               | Background FPS reduction                 |
| [NoisiumForked](https://modrinth.com/mod/noisiumforked) (v2.7.0) | Worldgen optimization (active fork)      |
| [FerriteCore](https://modrinth.com/mod/ferrite-core)             | Memory usage reduction                   |

### Visual & Client QoL

| Mod                                                                           | Role                                                                |
|-------------------------------------------------------------------------------|---------------------------------------------------------------------|
| [LambDynamicLights](https://modrinth.com/mod/lambdynamiclights)               | Dynamic lighting                                                    |
| [BetterF3](https://modrinth.com/mod/betterf3)                                 | Customizable debug HUD                                              |
| [Sound Physics Remastered](https://modrinth.com/mod/sound-physics-remastered) | Realistic sound                                                     |
| [AmbientSounds](https://modrinth.com/mod/ambientsounds)                       | Nature ambiance (birds, wind, water)                                |
| [The Immersive Music Mod](https://modrinth.com/mod/immersivemusicmod)         | 147 new biome/structure-based songs, vanilla silence gaps preserved |
| [Immersive UI](https://modrinth.com/mod/immersive-ui)                         | Animated UI, smooth hotbar, item particles                          |
| [Traveler's Titles](https://modrinth.com/mod/travelers-titles)                | RPG-style titles entering biomes/dimensions                         |
| [Better Modlist](https://modrinth.com/mod/better-modlist-neoforge)            | Enhanced mod list screen with badges/categories                     |
| [Better Third Person](https://modrinth.com/mod/better-third-person)           | Independent 360° camera rotation in third-person view               |
| [Tooltip Overhaul](https://modrinth.com/mod/tooltip-overhaul)                 | Modern, sharp tooltip rendering with equipment compare              |
| [Sounds](https://modrinth.com/mod/sound)                                      | 170+ new sound effects for UIs, items, blocks, actions              |
| [Tiny Item Animations](https://modrinth.com/mod/tiny-item-animations)         | Subtle float/pulse animations on inventory items                    |
| [Better Days](https://modrinth.com/mod/betterdays)                            | Customizable day/night cycle length, enhanced sleep                 |
| [Subtle Effects](https://modrinth.com/mod/subtle-effects)                    | Ambient particles, dust clouds, sparks, and subtle visual effects   |
| [Beautiful Enchanted Books](https://modrinth.com/mod/beautiful-enchanted-books-mod-edition) | Unique textures per enchantment book type                           |

### Inventory & UI

| Mod                                                                     | Role                                             |
|-------------------------------------------------------------------------|--------------------------------------------------|
| [JEI](https://modrinth.com/mod/jei)                                     | Recipe viewer                                    |
| [Jade](https://modrinth.com/mod/jade)                                   | Block info HUD                                   |
| [Jade Addons (Neo/Forge)](https://modrinth.com/mod/jade-addons-forge)   | Extra Jade info panels                           |
| [Xaero's Minimap](https://modrinth.com/mod/xaeros-minimap)              | Minimal map, entity radar, waypoints             |
| [Xaero's World Map](https://modrinth.com/mod/xaeros-world-map)          | Full-screen world map with explored area overlay |
| [AppleSkin](https://modrinth.com/mod/appleskin)                         | Food hunger/saturation overlay                   |
| [Mouse Tweaks](https://modrinth.com/mod/mouse-tweaks)                   | Inventory management shortcuts                   |
| [Fancy Toasts](https://modrinth.com/mod/fancy-toasts)                   | Beautiful animated advancement popups            |
| [Obscure Tooltips](https://modrinth.com/mod/obscure-tooltips)           | Animated tooltips with 3D models and particles   |
| [Loot Journal](https://modrinth.com/mod/loot-journal)                   | Animated item pickup notifications               |
| [Reliable Advancements](https://modrinth.com/mod/reliable-advancements) | Overhauled advancements UI with editor/pan/zoom  |
| [Polymorph](https://modrinth.com/mod/polymorph)                         | Choose crafting result when recipes conflict     |

### Storage & Travel

| Mod                                                                         | Role                          |
|-----------------------------------------------------------------------------|-------------------------------|
| [Sophisticated Storage](https://modrinth.com/mod/sophisticated-storage)     | Upgradable barrels/chests     |
| [Sophisticated Backpacks](https://modrinth.com/mod/sophisticated-backpacks) | Portable inventory            |
| [Waystones](https://modrinth.com/mod/waystones)                             | Fast travel between waypoints |
| [GraveStone Mod](https://modrinth.com/mod/gravestone-mod)                   | Keep inventory on death       |

### Infrastructure

| Mod                                                                                  | Role                                                                     |
|--------------------------------------------------------------------------------------|--------------------------------------------------------------------------|
| [Chunk Loaders](https://modrinth.com/mod/chunk-loaders)                              | Keep chunks loaded across dimensions — essential for Phase 2+ automation |
| [SuperMartijn642's Config Lib](https://modrinth.com/mod/supermartijn642s-config-lib) | Config library (Chunk Loaders dependency)                                |
| [SuperMartijn642's Core Lib](https://modrinth.com/mod/supermartijn642s-core-lib)     | Core library (Chunk Loaders dependency)                                  |

### New Dependencies

| Mod                                                           | Role                                            |
|---------------------------------------------------------------|-------------------------------------------------|
| [Cloth Config](https://modrinth.com/mod/cloth-config)         | Config screen library                           |
| [Architectury API](https://modrinth.com/mod/architectury-api) | Cross-loader compatibility                      |
| [YACL](https://modrinth.com/mod/yacl)                         | Config library                                  |
| [Curios API](https://modrinth.com/mod/curios)                 | Accessory slots (replaces Trinkets)             |
| [CreativeCore](https://modrinth.com/mod/creativecore)         | Library (AmbientSounds)                         |
| [OctoLib](https://modrinth.com/mod/shatterbyte-lib)           | Library (Immersive UI)                          |
| [Fragmentum](https://modrinth.com/mod/fragmentum)             | Library (Obscure Tooltips, Loot Journal)        |
| [M.R.U](https://modrinth.com/mod/mru)                         | Library (Sounds)                                |
| [YUNG's API](https://modrinth.com/mod/yungs-api)              | Library (Traveler's Titles, YUNG's Better mods) |

### Shaderpack

| Shaderpack                                                                 | Description                                                           |
|----------------------------------------------------------------------------|-----------------------------------------------------------------------|
| [Complementary Unbound](https://modrinth.com/shader/complementary-unbound) | Realistic visual style, Potato→Ultra profiles, block-specific effects |

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

| Pack                                                                     | Role                                                                                 |
|--------------------------------------------------------------------------|--------------------------------------------------------------------------------------|
| [Faithful 64x](https://modrinth.com/resourcepack/faithful-64x)           | 64x vanilla block textures — clean, sharp, PBR-compatible with Complementary Unbound |
| [Fresh Animations](https://modrinth.com/resourcepack/fresh-animations)   | Living entity animation overhaul — mobs blink, look around, show emotion             |
| [RAY's 3D Rails](https://modrinth.com/resourcepack/rays-3d-rails)        | 3D block & item textures for all rail types                                          |
| [3D Ladders](https://modrinth.com/resourcepack/3d-ladders)               | 3D model replacement for ladders                                                     |
| [Better Lanterns](https://modrinth.com/resourcepack/better-lanterns)     | Enhanced 3D look for lanterns and chains                                             |
| [Default Dark Mode](https://modrinth.com/resourcepack/default-dark-mode) | Dark UI theme for all vanilla screens, menus, and inventories                        |

**Faithful 64x** upscales vanilla blocks to 64x resolution while preserving the original look. Works with Complementary Unbound's Integrated PBR+ for realistic material response (metal shines, wool is soft, stone is rough). Modded blocks (Create, Mekanism, AE2) use their default textures, which are already well-designed and blend naturally at 64x. The RTX 4080 SUPER handles this with zero FPS impact at 4K.

**Fresh Animations** adds idle animations, directional looking, sleep/blink cycles, and emotional states to all vanilla mobs. It's a resource pack overlay (not a mod) — place it **above** Faithful 64x in the pack order. Works on any version with no mod dependencies.

**RAY's 3D Rails** replaces rail block and item textures with 3D models. Supports shaders since v3.0. Compatible with all rail types from Steam 'n' Rails and Create.

**3D Ladders** replaces the vanilla ladder model with a 3D version. Simple, lightweight, no conflicts.

**Better Lanterns** gives lanterns and chains an enhanced 3D look with connected chain models. Compatible with Arcane Lanterns and Thin Air mods.

**Default Dark Mode** applies a dark theme to all vanilla UI screens — menus, inventories, containers, the recipe book, and chat. It's a pure client-side overlay, requires no mods, and works alongside any shaderpack or texture pack. Place it high in the pack order so it overrides the default bright UI.

**Installation**: Install via Modrinth App. Load order (top = highest priority):

1. Default Dark Mode
2. Fresh Animations
3. Faithful 64x
4. RAY's 3D Rails
5. 3D Ladders
6. Better Lanterns

### Configuration — Wave 0

**Waystones** (`config/waystones-common.toml`):

- `inventoryButton` = `"any"` — Opens waystone menu from inventory without a keybind.
- `enableCosts` = `false` — Free teleportation.

**Loot Journal** (`config/obscuria/loot_journal-client.toml`):

- `trackItemPickups` = `true` — Logs all item pickups for per-session statistics.
- `trackXpPickups` = `true` — Logs all XP pickups for per-session statistics.

**Better Days** (`config/betterdays-common.toml`):

- `dayLengthMultiplier` = `2.0` — Days last 40 minutes (2x vanilla). Gives relaxed building time.
- `nightLengthMultiplier` = `1.0` — Nights remain 10 minutes. Sleep acceleration is natural.
- `enableSleepFeature` = `true` — Smooth time acceleration while in bed.
- `enableTimeEffects` = `false` — Disable time-synced crop/furnace speed to avoid confusing behavior with Serene Seasons crop cycles.

### Data Packs (Wave 0)

| Data Pack                                                                                                             | Role                                  |
|-----------------------------------------------------------------------------------------------------------------------|---------------------------------------|
| [BlazeandCave's Advancements Pack](https://modrinth.com/datapack/blazeandcaves-advancements-pack) (v2.3.0 for 1.21.x) | 1000+ new advancements across 16 tabs |

**BlazeandCave's Advancements Pack** adds 1000+ milestones across 16 themed tabs — mining, building, farming, combat, exploration, redstone, brewing, enchantments, and more. It tracks collecting every wood variant, killing every mob type, discovering every biome, and reaching tier milestones. Runs alongside Reliable Advancements (GUI overhaul) and Fancy Toasts (animated popups) without conflict.

**Installation**: Install via Modrinth App. In-game, run `/datapack enable "blazeandcave/advancements"`. The pack is per-world — enable it in each new world.

---

## Wave 1 — Tech (Create + Mekanism + AE2)

The classic tech trio. Create handles mechanical automation, Mekanism handles industrial processing, AE2 handles digital storage and autocrafting.

### Core Tech

| Mod                                                                                   | Role                                                                                                                                             |
|---------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------|
| [**Create**](https://modrinth.com/mod/create) 6.0.10              | Mechanical automation — rotational power, water wheels, windmills, gear trains, conveyor belts, deployers, sequenced crafters, trains            |
| [**Mekanism**](https://modrinth.com/mod/mekanism) 10.7.19.85      | Industrial processing — ore multiplication (2x→5x), digital miner, superdense energy storage, MekaSuit (flight, invulnerability) |
| [**Mekanism Generators**](https://modrinth.com/mod/mekanism-generators) 10.7.19.85 | Power generation — heat, wind, solar, gas-burning, bio generators, fission reactor, fusion reactor, turbine |
| [**AE2**](https://modrinth.com/mod/ae2) 19.2.17 | Digital storage — ME drives, autocrafting, P2P tunnels, spatial storage. The storage backbone                                                    |

**Note**: On Modrinth, Mekanism v10 is split into separate modules. **Mekanism** (core) provides machines, processing, cables, and armor. **Mekanism Generators** provides all power generation. On CurseForge these were bundled in one JAR — the split is the Modrinth distribution, not a new mod. Both must be installed.

### Create Addons

| Mod                                                                                                                      | Role                                                                                                                               |
|--------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------|
| [Create Crafts & Additions](https://modrinth.com/mod/createaddition) 1.6.0                           | Electric motors, alternators, rolling mill, wires/rods, silver/electrum — bridges kinetic SU and Forge Energy (FE)                 |
| [Steam \'n\' Rails NeoForge](https://modrinth.com/mod/create-steam-n-rails) 0.2.1                  | Expanded train system — new tracks (spruce, monorail), semaphores, conductor mob, coupling/decoupling blocks                       |
| [Create: The Factory Must Grow](https://modrinth.com/mod/create-tfmg) (TFMG)                     | Heavy engineering & oil — crude oil drilling, distillation, diesel/gasoline/LPG engines, steel, aluminum, electricity with voltage |
| [Mekanism TFMG Compatibility](https://modrinth.com/mod/mekanism-tfmg-compat) | 85+ recipe bridges — deduplicates lead/steel/sulfur, integrates aluminum/plastic into Mekanism chains                              |

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
| [**MineColonies**](https://modrinth.com/mod/minecolonies)     | Autonomous NPC colony — builders, miners, farmers, crafters, guards, research tree |
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
| [Terralith](https://modrinth.com/mod/terralith)                    | Overhauled Overworld biomes                                     |
| [Tectonic](https://modrinth.com/mod/tectonic)                      | Better terrain shape — deeper valleys, taller mountains, cliffs |

### Environment

| Mod                                                                     | Role                                                                        |
|-------------------------------------------------------------------------|-----------------------------------------------------------------------------|
| [Serene Seasons](https://modrinth.com/mod/serene-seasons)               | Seasonal foliage colors, temperature shifts, crop growth cycles             |

**Serene Seasons** adds four seasons (Spring, Summer, Autumn, Winter) with visual foliage changes, temperature shifts, and seasonal crop growth modifiers. Crop impact is enabled — planting in the wrong season reduces yield, encouraging greenhouse planning. Temperature damage is **disabled** — no freezing or heat damage, preserving the chill rule.

### Underground & Ocean

| Mod                                                                           | Role                                                                                   |
|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
| [Darker Depths](https://modrinth.com/mod/darker-depths)                       | Underground expansion — 3 new cave biomes, mobs, Forsaken Bronze, Living Crystals     |
| [Upgrade Aquatic](https://modrinth.com/mod/upgrade-aquatic)                   | Ocean expansion — Thrasher mob, Ocean Ravines, Prismarine Coral, renewable sand       |

**Interdependency note — Darker Depths + YUNG's Better Caves**: Darker Depths adds its own cave biomes (Molten Cavern, Sandy Catacombs, Crystal Cavern) that generate alongside YUNG's Better Caves' enlarged cave systems. Darker Depths biomes replace vanilla cave sections with themed variants, while YUNG's Better Caves changes the shape and connectivity of caves — they layer without direct conflict.

**Interdependency note — Upgrade Aquatic + YUNG's Better Ocean Monuments**: Upgrade Aquatic adds ocean mobs, coral variants, and ocean-floor features. It does not modify Ocean Monuments — YUNG's Better Ocean Monuments replaces monument structure generation without conflict. Upgrade Aquatic items (thrasher teeth, prismarine coral) integrate naturally with Ocean's Delight (Wave 4) for seafood recipes.

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
| [Structory](https://modrinth.com/datapack/structory)                                       | New hand-crafted structures      |
| [Towns & Towers](https://modrinth.com/datapack/towns-and-towers)                           | Better village generation        |

### Dimensions

| Mod                                                                                 | Role                                                                                       |
|-------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------|
| [The Aether](https://modrinth.com/mod/aether)                                       | Sky dimension — safe islands, gear progression, dungeons with bosses                       |
| [Deeper and Darker](https://modrinth.com/mod/deeperdarker)                          | The "Otherside" dimension — deep dark themed, warden gear                                  |
| [Twilight Forest](https://www.curseforge.com/minecraft/mc-mods/the-twilight-forest) | Classic dimension — 6+ bosses with progression gates, unique loot, enchanted forest biomes |

### End Overhaul

| Mod                                                                                                    | Role                                                         |
|--------------------------------------------------------------------------------------------------------|--------------------------------------------------------------|
| [**BetterEnd NeoForge**](https://modrinth.com/mod/betterend-neoforge) v21.0.25                         | Full End overhaul — 24+ biomes, new mobs, gear, custom music |
| [**Moog\'s End Structures**](https://www.curseforge.com/minecraft/mc-mods/moogs-end-structures) v2.0.3 | New structures to fill the End dimension                     |
| [Nullscape](https://modrinth.com/datapack/nullscape) (data pack)                                       | End terrain overhaul — surreal alien landscapes, new sky colors |

**Nullscape**: A data pack that transforms the End's terrain into alien shapes (floating islands, spires, arches, voids) with unique sky colors per biome. **Compatible with BetterEnd** — Nullscape's own documentation states it works with BetterEnd specifically (it is incompatible with most End worldgen mods, but BetterEnd is the documented exception). Nullscape handles terrain shape and sky; BetterEnd handles biomes, mobs, gear, and structures. Install as a data pack in the world's `datapacks/` folder.

### New Dependencies (End Overhaul)

| Mod                                                                     | Role                                        |
|-------------------------------------------------------------------------|---------------------------------------------|
| [BCLib NeoForge](https://modrinth.com/mod/bclib-neoforge)               | Core library — required by BetterEnd        |
| [WorldWeaver NeoForge](https://modrinth.com/mod/worldweaver-neoforge)   | Worldgen library — required by BetterEnd    |
| [WunderLib NeoForge](https://modrinth.com/mod/wunderlib-neoforge)       | Utility library — required by BetterEnd     |
| [Moog\'s Structure Lib](https://modrinth.com/mod/moogs-structure-lib)   | Library — required by Moog's End Structures |
| [Cristel Lib](https://www.curseforge.com/minecraft/mc-mods/cristel-lib) | Library — required by Towns & Towers        |
| [Blueprint](https://modrinth.com/mod/blueprint)                         | Library — required by Upgrade Aquatic       |

### Navigation

| Mod                                                                                   | Role                             |
|---------------------------------------------------------------------------------------|----------------------------------|
| [Explorer\'s Compass](https://www.curseforge.com/minecraft/mc-mods/explorers-compass) | Craftable structure/biome finder |

### Mobility

| Mod                                                                                         | Role                                                                                           |
|---------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------|
| [Immersive Aircraft](https://modrinth.com/mod/immersive-aircraft) 1.1.5                      | Flyable aircraft — biplane, airship, cargo airship, warship, gyrocopter. Upgradable, colorable |

### Configuration — Wave 2

**Aether** (`aether-common.toml`):

- `"Use default Curios' menu"` = `true` — Uses Curios API menu instead of Aether's separate accessories screen.
- `"Gives player Aether Portal Frame item"` = `false` — Player must build the portal manually.
- `"Gives starting loot on entry"` = `true` — Grants Book of Lore and Golden Parachutes on first entry.
- `"Show Patreon message"` = `false` — Removes Patreon nag screen.
- `"Add Temporary Freezing automatically"` = `false` — Disables Aether's temporary freezing datapack.
- `"Add Ruined Portals automatically"` = `false` — Disables ruined portal datapack.

**Interdependency note — Immersive Aircraft + Aether**: Aircraft can fly in the Aether dimension. An airship is a natural way to navigate Aether islands — it pairs well with the dimension's sky-island geography.

**Interdependency note — Twilight Forest + Apotheosis**: Apotheosis boss affixes (Wave 3) apply to Twilight Forest bosses. A Naga with the "Tough" affix is significantly harder. This is intended — it keeps dimension bosses relevant even with late-game gear. If a boss feels too strong, the player can return after better equipment or use Apotheosis gems/runes for the edge.

**Interdependency note — Towns & Towers + Cristel Lib**: Towns & Towers requires **Cristel Lib** (included in Wave 2 Dependencies above). Without it the game will crash at startup. Cristel Lib provides structure config and runtime datapack support that Towns & Towers relies on for its biome-specific village variants.

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

### New Dependencies (Wave 3)

| Mod                                                                 | Role                                                      |
|---------------------------------------------------------------------|-----------------------------------------------------------|
| [Placebo](https://www.curseforge.com/minecraft/mc-mods/placebo)     | Core library — required by Apotheosis                     |
| [Apothic Attributes](https://modrinth.com/mod/apothic-attributes)   | Attribute system module — required by Apotheosis          |
| [Apothic-Enchanting](https://modrinth.com/mod/apothic-enchanting)   | Enchanting module — required by Apotheosis                |
| [Apothic-Spawners](https://modrinth.com/mod/apothic-spawners)       | Spawner module — required by Apotheosis                   |
| [Patchouli](https://www.curseforge.com/minecraft/mc-mods/patchouli) | Guidebook library — required by Apotheosis                |
| [Simply Tooltips](https://modrinth.com/mod/simply-tooltips)         | Tooltip framework — required by Simply Swords             |
| [Fzzy Config](https://modrinth.com/mod/fzzy-config)                 | Config library — required by Simply Swords                |
| [Ranged Weapon API](https://modrinth.com/mod/ranged-weapon-api)     | Ranged combat API — required by Relics RPG and Skill Tree |
| [Spell Engine](https://modrinth.com/mod/spell-engine)               | Magic framework — required by Relics RPG and Skill Tree   |
| [Bundle API](https://modrinth.com/mod/bundle-api)                   | Bundle/container API — required by Runes                  |

### Interdependency notes for Wave 3

- **Spell Engine** is required by both Relics RPG and Skill Tree (RPG Series) — it was previously considered for removal but must be retained as a mandatory dependency of these core RPG mods.
- **Ranged Weapon API** is shared between Relics RPG and Skill Tree — install once, used by both.

---

## Wave 4 — Food, Farming & Comfort

| Mod                                                                               | Role                                                                  |
|-----------------------------------------------------------------------------------|-----------------------------------------------------------------------|
| [**Farmer's Delight**](https://modrinth.com/mod/farmers-delight) 1.3.2            | Cooking hub — cutting board, cooking pot, stove, new crops            |
| [**Brewin' And Chewin'**](https://modrinth.com/mod/brewin-and-chewin) 4.5.0       | Drinks and fermentation — beer, wine, mead, whiskey                   |
| [**Storage Delight**](https://modrinth.com/mod/storage-delight) 1.3.0             | Kitchen furniture — drawers, cabinets, shelves for ingredient storage |
| [**More Delight**](https://modrinth.com/mod/more-delight) 26.04.18a+1.21-neoforge | Extra meals, sandwiches, toasts, and knife variants                   |
| [**My Nether's Delight**](https://modrinth.com/mod/my-nethers-delight) 1.10.2     | Nether-themed food ingredients and recipes                            |
| [**Ocean's Delight**](https://modrinth.com/mod/oceans-delight) 1.0.4              | Ocean-themed seafood dishes                                           |
| [**Ender's Delight**](https://modrinth.com/mod/enders-delight) v1.3.0             | End-themed food for Farmer's Delight (moved from Wave 2)              |

### New Dependencies (Wave 4)

| Mod                                                                        | Role                                                                     |
|----------------------------------------------------------------------------|--------------------------------------------------------------------------|
| [Delight Lib](https://modrinth.com/mod/delight-lib) 26.05.18-1.21-neoforge | Library — required by More Delight v26.04.30+ for cross-loader addon dev |

**Interdependency notes for Wave 4:**

- Farmer's Delight meals provide status effects that stack with Brewin' And Chewin' drinks. Combined, a full meal + a vintage drink gives significant combat buffs — useful before boss fights (Wave 5).
- AE2's ME System can store Farmer's Delight ingredients and cooked meals. Set up an Export Bus on a cooking pot for automated ingredient delivery.
- Bountiful (Wave 4.5) can generate bounties that request Farmer's Delight meals as objectives, and reward cooking ingredients.
- My Nether's Delight, Ocean's Delight, and Ender's Delight unlock food sources from cross-dimensional ingredients (Nether, Overworld oceans, and End), giving reasons to explore every dimension beyond just combat.
- Storage Delight cabinets and drawers provide early-game kitchen storage that feeds into AE2 in Phase 2. They're designed as stepping stones, not replacements.
- More Delight v26.04.30+ requires **Delight Lib** as a hard dependency — install both or neither.
- **Serene Seasons** (Wave 2) affects crop growth rates seasonally — crops planted out-of-season grow slower. This adds depth to greenhouse planning with Farmer's Delight crops. Temperature damage is disabled, so crops are the only seasonal pressure.

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
| [Mutant Monsters](https://modrinth.com/mod/mutant-monsters)                                       | Mutant zombie, skeleton, creeper, enderman — unique drops                                       |
| [L_Ender\'s Cataclysm](https://modrinth.com/mod/l_enders-cataclysm)                               | Epic boss fights — Leviathan, Netherite Monstrosity, Ender Guardian (Modrinth, NeoForge 1.21.1) |
| [When Dungeons Arise](https://modrinth.com/mod/when-dungeons-arise)                               | Roguelike combat structures with loot                                                           |
| [Enchantment Descriptions](https://www.curseforge.com/minecraft/mc-mods/enchantment-descriptions) | Shows enchantment effects in tooltips                                                           |
| [Create Big Cannons](https://modrinth.com/mod/create-big-cannons)                                 | Artillery engineering — siege cannons for colony defense and spectacle                          |
| [Cut Through](https://modrinth.com/mod/cut-through)                                             | Combat QoL — swing through transparent blocks (tall grass, cobwebs) without breaking them        |

Apotheosis also adds boss modifiers and elite mob affixes — partially covers what Champions would have done.

### New Dependencies (Combat)

| Mod                                                          | Role                                                               |
|--------------------------------------------------------------|--------------------------------------------------------------------|
| [Ritchie's Projectile Library](https://modrinth.com/mod/rpl) | Library — custom projectiles and trajectories (Create Big Cannons) |
| [playerAnimator](https://modrinth.com/mod/playeranimator)    | Animation library — required by Better Combat                      |
| [Puzzles Lib](https://modrinth.com/mod/puzzles-lib)          | Library — required by Mutant Monsters                              |
| [Citadel](https://modrinth.com/mod/citadel)                  | Library — required by L_Ender's Cataclysm                          |
| [Lionfish-API](https://modrinth.com/mod/lionfish-api)        | Library — required by L_Ender's Cataclysm                          |
| [Bookshelf](https://modrinth.com/mod/bookshelf-lib)          | Library — required by Enchantment Descriptions                     |

**Better Combat + Simply Swords**: Simply Swords weapons have built-in Better Combat data files — each weapon category uses the correct attack animation, reach, and speed automatically.

**Cut Through**: Works alongside Better Combat — lets you swing through transparent blocks (tall grass, vines, cobwebs) without breaking them, keeping your attack chain uninterrupted. Client-side only, no conflicts with any combat mod.

---

## Wave 6 — Building & Decoration

### Core Decoration

| Mod                                                         | Role                                                          |
|-------------------------------------------------------------|---------------------------------------------------------------|
| [Rechiseled](https://modrinth.com/mod/rechiseled)           | 600+ decorative block variants with connected textures        |
| [Supplementaries](https://modrinth.com/mod/supplementaries) | Vanilla+ decoration — jars, signposts, faucets, weather vanes |
| [Macaw\'s Bridges](https://modrinth.com/mod/macaws-bridges) | Bridges in all wood types                                     |
| [Macaw\'s Doors](https://modrinth.com/mod/macaws-doors)     | Vanilla-style doors for every wood                            |
| [Macaw\'s Roofs](https://modrinth.com/mod/macaws-roofs)     | Roofing blocks                                                |
| [Macaw\'s Windows](https://modrinth.com/mod/macaws-windows) | Window variants                                               |
| [Building Wands](https://modrinth.com/mod/building-wands)   | Faster large-scale construction                               |
| [Handcrafted](https://modrinth.com/mod/handcrafted)         | Furniture — chairs, tables, shelves, curtains                 |

### Rechiseled Addons

| Mod                                                                                            | Role                                                                 |
|------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
| [Rechiseled: Create](https://modrinth.com/mod/rechiseled-create)                               | 100+ decorative variants of Create blocks + mechanical chisel        |
| [Rechiseled: Applied Energistics 2](https://modrinth.com/mod/rechiseled-applied-energistics-2) | AE2 autocrafting for Rechiseled blocks via Chiseling Pattern Encoder |

### New Dependencies (Wave 6)

| Mod                                                                               | Role                                        |
|-----------------------------------------------------------------------------------|---------------------------------------------|
| [Moonlight Library](https://modrinth.com/mod/moonlight)                           | Core library — required by Supplementaries  |
| [Resourceful Lib](https://modrinth.com/mod/resourceful-lib)                       | Core library — required by Handcrafted      |
| [Fusion (Connected Textures)](https://modrinth.com/mod/fusion-connected-textures) | Connected textures — required by Rechiseled |

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

| Wave                       | Mods    | Deps   | Total   | Notes                                                                                                                                                                                   |
|----------------------------|---------|--------|---------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Wave 0 — Foundation        | 52      | 8      | 60      | Performance, QoL, time control, storage, travel, graves, UI, chunk loading (+6 resource packs, 1 shaderpack, 1 data pack)                                                               |
| Wave 1 — Tech              | 8       | —      | 8       | Create + 4 addons, Mekanism + Generators, AE2 (TFMG-Stellaris compat listed in Wave 7 only)                                                                                             |
| Wave 1.5 — Colony          | 5       | —      | 5       | MineColonies (4 deps counted as mods — they're library mods; CurseForge-only)                                                                                                           |
| Wave 2 — Exploration       | 23      | 6      | 29      | YUNG's (9), Terralith/Tectonic, Serene Seasons, Darker Depths, Upgrade Aquatic, dimensions (3), End overhaul (2 + Nullscape dp + 6 deps), navigation, aircraft                          |
| Wave 3 — Equipment Magic   | 7       | 10     | 17      | Skill Tree, Simply Swords, Relics, Runes, Curios, Apotheosis + 10 deps (Placebo, Apothic modules, Patchouli, Simply Tooltips, Fzzy Config, Ranged Weapon API, Spell Engine, Bundle API) |
| Wave 4 — Food & Farming    | 7       | —      | 7       | Farmer's Delight + 6 addon mods (including Ender's Delight moved from Wave 2)                                                                                                           |
| Wave 4.5 — Quests          | 1       | —      | 1       | Bountiful                                                                                                                                                                               |
| Wave 5 — Combat            | 7       | 6      | 13      | Better Combat, Mutant Monsters, Cataclysm, Dungeons Arise, Big Cannons, Cut Through, Enchantment Descriptions + RPL lib, playerAnimator, Puzzles Lib, Citadel, Lionfish-API, Bookshelf |
| Wave 6 — Building          | 10      | 3      | 13      | Rechiseled, Supplementaries, Macaw's (4), Building Wands, Handcrafted + Rechiseled: Create, Rechiseled: AE2 + Moonlight Lib, Resourceful Lib, Fusion                                    |
| Wave 7 — Space Exploration | 2       | 1      | 3       | Stellaris, TFMG-Stellaris compat (moved from Wave 1), Potentials API                                                                                                                    |
| **Total**                  | **121** | **35** | **156** | All confirmed NeoForge 1.21.1                                                                                                                                                           |
