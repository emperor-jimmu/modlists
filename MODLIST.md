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

Recommended JVM arguments (for CurseForge App → instance → Settings → Java & Memory → JVM Arguments, or Minecraft Launcher → Installation → Edit → More Options → JVM Arguments):

```
-XX:+UseZGC -XX:+ZGenerational -Xms8G -Xmx8G
```

| System RAM | Recommended allocation |
|------------|------------------------|
| 16 GB      | `-Xms10G -Xmx10G`      |
| 32 GB      | `-Xms22G -Xmx22G`      |
| 64 GB      | `-Xms48G -Xmx48G`      |

> **Note**: ZGC (Z Garbage Collector) with generational mode is the recommended GC for Java 21 with NeoForge. It provides consistently low latency (sub-millisecond pause times) and handles the large heap sizes common with modded Minecraft better than Shenandoah or G1GC. The Adoptium Temurin JDK 21 includes ZGC — no special Java build needed. If you encounter issues, you may also add `-XX:+AlwaysPreTouch` for pre-initialized memory pages.

### CurseForge App

| Tool                                                                           | Role                                     |
|--------------------------------------------------------------------------------|------------------------------------------|
| [CurseForge App](https://www.curseforge.com/app) | Mod manager and launcher for the modpack |

The **CurseForge App** manages mod installation, updates, and launching for this modpack. It creates a separate instance per modpack, handles NeoForge installation automatically, and lets you install mods in one click from CurseForge's database.

**Setup**:

1. Download and install the [CurseForge App](https://www.curseforge.com/app) for your OS.
2. Create a new **Custom Profile** → select version **1.21.1** and modloader **NeoForge** (latest recommended for 1.21.1).
3. Click **Create** — the app sets up NeoForge automatically.
4. Launch the instance once to generate the `mods/` directory and configs.
5. Verify the main menu shows "NeoForge X.X.X" in the bottom-left corner.

From there, add mods through the app's **Browse Mods** tab or by dropping `.jar` files into the instance's `mods/` folder. All mod links in this document link to their CurseForge pages — click to install directly.

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

NeoForge is the mod loader powering this modpack. If you're using the **CurseForge App**, it installs NeoForge automatically when you set the modloader in the instance settings (see [CurseForge App](#curseforge-app) above) — skip to step 5 to verify.

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
| [Sodium](https://www.curseforge.com/minecraft/mc-mods/sodium)                        | Rendering engine                         |
| [Iris](https://www.curseforge.com/minecraft/mc-mods/irisshaders)                            | Shader loader (v1.8.14, NeoForge native) |
| [Lithium](https://www.curseforge.com/minecraft/mc-mods/lithium)                      | Server-side game logic optimization      |
| [Distant Horizons](https://www.curseforge.com/minecraft/mc-mods/distant-horizons)     | LOD rendering                            |
| [ModernFix](https://www.curseforge.com/minecraft/mc-mods/modernfix)                  | All-in-one perf + bug fixes              |
| [ImmediatelyFast](https://www.curseforge.com/minecraft/mc-mods/immediatelyfast)      | Immediate-mode rendering                 |
| [Entity Culling](https://www.curseforge.com/minecraft/mc-mods/entityculling)         | Hide off-screen entities                 |
| [Dynamic FPS](https://www.curseforge.com/minecraft/mc-mods/dynamic-fps)               | Background FPS reduction                 |
| [NoisiumForked](https://www.curseforge.com/minecraft/mc-mods/noisiumforked) | Worldgen optimization (active fork)      |
| [FerriteCore](https://www.curseforge.com/minecraft/mc-mods/ferritecore)             | Memory usage reduction                   |

### Visual & Client QoL

| Mod                                                                                         | Role                                                                |
|---------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| [LambDynamicLights](https://www.curseforge.com/minecraft/mc-mods/lambdynamiclights)                             | Dynamic lighting                                                    |
| [BetterF3](https://www.curseforge.com/minecraft/mc-mods/betterf3)                                               | Customizable debug HUD                                              |
| [Sound Physics Remastered](https://www.curseforge.com/minecraft/mc-mods/sound-physics-remastered)               | Realistic sound                                                     |
| [AmbientSounds](https://www.curseforge.com/minecraft/mc-mods/ambientsounds)                                     | Nature ambiance (birds, wind, water)                                |
| [The Immersive Music Mod](https://www.curseforge.com/minecraft/mc-mods/the-immersive-music-mod)                       | 147 new biome/structure-based songs, vanilla silence gaps preserved |
| [Immersive UI](https://www.curseforge.com/minecraft/mc-mods/immersive-ui)                                       | Animated UI, smooth hotbar, item particles                          |
| [Traveler's Titles](https://www.curseforge.com/minecraft/mc-mods/travelers-titles-neoforge)                              | RPG-style titles entering biomes/dimensions                         |
| [Better Modlist](https://www.curseforge.com/minecraft/mc-mods/better-modlist-neoforge)                          | Enhanced mod list screen with badges/categories                     |
| [Better Third Person](https://www.curseforge.com/minecraft/mc-mods/better-third-person)                         | Independent 360° camera rotation in third-person view               |
| [Tooltip Overhaul](https://www.curseforge.com/minecraft/mc-mods/tooltip-overhaul)                               | Modern, sharp tooltip rendering with equipment compare              |
| [Sounds](https://www.curseforge.com/minecraft/mc-mods/sound)                                                    | 170+ new sound effects for UIs, items, blocks, actions              |
| ~~Tiny Item Animations~~ (removed from CurseForge — conflicts with Immersive UI item rendering) |
| [Better Days](https://www.curseforge.com/minecraft/mc-mods/betterdays)                                          | Customizable day/night cycle length, enhanced sleep                 |
| [Beautiful Enchanted Books [Mod Edition]](https://www.curseforge.com/minecraft/mc-mods/beautiful-enchanted-books) | Unique textures per enchantment book type — standalone mod, no resource pack needed |
| [Overflowing Bars](https://www.curseforge.com/minecraft/mc-mods/overflowing-bars)                               | Expanded health, armor, and toughness bars beyond vanilla limits    |

### Inventory & UI

| Mod                                                                     | Role                                             |
|-------------------------------------------------------------------------|--------------------------------------------------|
| [JEI](https://www.curseforge.com/minecraft/mc-mods/jei)                                     | Recipe viewer                                    |
| [Jade](https://www.curseforge.com/minecraft/mc-mods/jade)                                   | Block info HUD                                   |
| [Jade Addons (Neo/Forge)](https://www.curseforge.com/minecraft/mc-mods/jade-addons-forge)   | Extra Jade info panels                           |
| [Xaero's Minimap](https://www.curseforge.com/minecraft/mc-mods/xaeros-minimap)              | Minimal map, entity radar, waypoints             |
| [Xaero's World Map](https://www.curseforge.com/minecraft/mc-mods/xaeros-world-map)          | Full-screen world map with explored area overlay |
| [AppleSkin](https://www.curseforge.com/minecraft/mc-mods/appleskin)                         | Food hunger/saturation overlay                   |
| [Mouse Tweaks](https://www.curseforge.com/minecraft/mc-mods/mouse-tweaks)                   | Inventory management shortcuts                   |
| [Fancy Toasts](https://www.curseforge.com/minecraft/mc-mods/fancy-toasts)                   | Beautiful animated advancement popups            |
| [Obscure Tooltips](https://www.curseforge.com/minecraft/mc-mods/obscure-tooltips)           | Animated tooltips with 3D models and particles   |
| [Loot Journal](https://www.curseforge.com/minecraft/mc-mods/loot-journal-neoforge)                   | Animated item pickup notifications               |
| [Reliable Advancements](https://www.curseforge.com/minecraft/mc-mods/reliable-advancements) | Overhauled advancements UI with editor/pan/zoom  |
| [Polymorph](https://www.curseforge.com/minecraft/mc-mods/polymorph)                         | Choose crafting result when recipes conflict     |

### Storage & Travel

| Mod                                                                         | Role                          |
|-----------------------------------------------------------------------------|-------------------------------|
| [Sophisticated Storage](https://www.curseforge.com/minecraft/mc-mods/sophisticated-storage)     | Upgradable barrels/chests     |
| [Sophisticated Backpacks](https://www.curseforge.com/minecraft/mc-mods/sophisticated-backpacks) | Portable inventory            |
| [Waystones](https://www.curseforge.com/minecraft/mc-mods/waystones)                             | Fast travel between waypoints |
| [GraveStone Mod](https://www.curseforge.com/minecraft/mc-mods/gravestone-mod)                   | Keep inventory on death       |

### Infrastructure

| Mod                                                                                  | Role                                                                     |
|--------------------------------------------------------------------------------------|--------------------------------------------------------------------------|
| [Chunk Loaders](https://www.curseforge.com/minecraft/mc-mods/chunk-loaders)                              | Keep chunks loaded across dimensions — essential for Phase 2+ automation |
| [OpenLoader](https://www.curseforge.com/minecraft/mc-mods/open-loader)                                   | Load data packs and resource packs globally across all worlds            |
| [SuperMartijn642's Config Lib](https://www.curseforge.com/minecraft/mc-mods/supermartijn642s-config-lib) | Config library (Chunk Loaders dependency)                                |
| [SuperMartijn642's Core Lib](https://www.curseforge.com/minecraft/mc-mods/supermartijn642s-core-lib)     | Core library (Chunk Loaders dependency)                                  |

> **Note**: If using the CurseForge App, all dependencies listed below are **installed automatically** when you install the mod that requires them. You do not need to manually download or install any dependency entries in this document — just install the mods themselves through CurseForge.

### New Dependencies

| Mod                                                           | Role                                            |
|---------------------------------------------------------------|-------------------------------------------------|
| [Cloth Config](https://www.curseforge.com/minecraft/mc-mods/cloth-config)         | Config screen library                           |
| [Architectury API](https://www.curseforge.com/minecraft/mc-mods/architectury-api) | Cross-loader compatibility                      |
| [YACL](https://www.curseforge.com/minecraft/mc-mods/yacl)                         | Config library                                  |
| [Curios API](https://www.curseforge.com/minecraft/mc-mods/curios)                 | Accessory slots (replaces Trinkets)             |
| [CreativeCore](https://www.curseforge.com/minecraft/mc-mods/creativecore)         | Library (AmbientSounds)                         |
| [OctoLib](https://www.curseforge.com/minecraft/mc-mods/shatterbyte-lib)           | Library (Immersive UI)                          |
| [Fragmentum](https://www.curseforge.com/minecraft/mc-mods/fragmentum)             | Library (Obscure Tooltips, Loot Journal)        |
| [M.R.U](https://www.curseforge.com/minecraft/mc-mods/mru)                         | Library (Sounds)                                |
| [YUNG's API](https://www.curseforge.com/minecraft/mc-mods/yungs-api)              | Library (Traveler's Titles, YUNG's Better mods) |

### Shaderpack

| Shaderpack                                                                 | Description                                                           |
|----------------------------------------------------------------------------|-----------------------------------------------------------------------|
| [Complementary Unbound](https://www.curseforge.com/minecraft/customization/complementary-unbound) | Realistic visual style, Potato→Ultra profiles, block-specific effects |

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

**General MC settings**: Render Distance **10 chunks**, Simulation Distance **8 chunks**, Fullscreen ON, VSync OFF, Max Framerate uncapped. Distant Horizons handles far rendering — keep vanilla render distance low. Expected high FPS at 4K with Complementary Unbound. DH LODs still render through the shader pipeline, so push LOD distance gradually (256-384 recommended with shaders at 4K). Monitor VRAM usage (shaders + DH + high-res packs can peak past 12GB). Drop Complementary Unbound to High profile if chasing 144Hz+.

### Texture Packs

| Pack                                                                       | Role                                                                      |
|----------------------------------------------------------------------------|---------------------------------------------------------------------------|
| [Fresh Animations](https://www.curseforge.com/minecraft/texture-packs/fresh-animations)     | Living entity animation overhaul — mobs blink, look around, show emotion  |
| [Alacrity](https://www.curseforge.com/minecraft/texture-packs/alacrity)                     | Full 32x conversion — RPG-themed textures, GUI overhaul, custom 3D models |
| [Enhanced Boss Bars](https://www.curseforge.com/minecraft/texture-packs/enhanced-boss-bars) | Redesigned boss bars with themed designs for vanilla and modded bosses    |
| [RAY's 3D Rails](https://www.curseforge.com/minecraft/texture-packs/rays-3d-rails)          | 3D block & item textures for all rail types                               |
| [3D Ladders](https://www.curseforge.com/minecraft/texture-packs/nicos-3d-ladders)                 | 3D model replacement for ladders                                          |
| [Better Lanterns](https://www.curseforge.com/minecraft/texture-packs/better-lanterns)       | Enhanced 3D look for lanterns and chains                                  |


**Fresh Animations** adds idle animations, directional looking, sleep/blink cycles, and emotional states to all vanilla mobs. It's a resource pack overlay (not a mod) — place it high in the pack order. Works on any version with no mod dependencies.

**Alacrity** is a full 32x conversion with an RPG-inspired art style — all blocks, items, GUI elements, and mobs are redesigned with a cohesive fantasy look. Draws from Warcraft, Elder Scrolls, and Gothic for its aesthetic. Custom 3D models (CEM) require a mod like Entity Model Features but the base pack works with any setup.

**Enhanced Boss Bars** replaces boss bar textures with themed designs — covers vanilla bosses and has support for Twilight Forest bosses. For full compatibility with L_Ender's Cataclysm and The Aether (which use custom boss bar rendering), install the companion [Enhanced Boss Bars mod](https://www.curseforge.com/minecraft/mc-mods/enhanced-boss-bars-mod). Pure resource pack for vanilla/Twilight Forest bars.

**RAY's 3D Rails** replaces rail block and item textures with 3D models. Supports shaders since v3.0. Compatible with all rail types from Steam 'n' Rails and Create.

**3D Ladders** replaces the vanilla ladder model with a 3D version. Simple, lightweight, no conflicts.

**Better Lanterns** gives lanterns and chains an enhanced 3D look with connected chain models. Compatible with Arcane Lanterns and Thin Air mods.

**Installation**: Install via CurseForge App. Load order (top = highest priority):

1. Fresh Animations
2. Alacrity
3. Enhanced Boss Bars
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

Time speed can be set via three modes (`speedMethod`):

| Mode | How it works | Best for |
|------|-------------|----------|
| `MINUTES` (default) | Set `daySpeedMinutes` and `nightSpeedMinutes` in real minutes | Simple: 10 min day / 10 min night |
| `RATIO` | Multiplier relative to vanilla (1.0 = vanilla 20min cycle) | Fine control: 0.5 = 40 min, 2.0 = 10 min |
| `SEASON` | Day length varies by season using `seasonDayMinutes` and `seasonLatitude` | Immersive — day shortens in winter, lengthens in summer |

**Recommended settings for this pack** (`speedMethod = "MINUTES"`):

- `daySpeedMinutes` = `20` — Days last 20 minutes (2x vanilla). Gives relaxed building time.
- `nightSpeedMinutes` = `10` — Nights remain 10 minutes. Sleep acceleration keeps them short.
- `enableSleepFeature` = `true` — Smooth time acceleration while in bed.
- `dayStart` = `0` — Dawn at time 0. Night starts at 13000 (default, no change needed).
- `nightStart` = `13000` — Dusk starts at time 13000 (default).

**Time effects** — all disabled by default. Leave them off:

- `weatherEffect` = `"SLEEPING"` — Lets rain/storms finish faster when sleeping (safe — NeoForge handles this natively anyway).
- `potionEffect` = `"NEVER"` — Keep off. Speeding potion timers while sleeping is confusing.
- `hungerEffect` = `"NEVER"` — Keep off. Speeding hunger while sleeping is annoying.
- `blockEntityEffect` = `"NEVER"` — Keep off. Enabling this accelerates furnaces/hoppers during sleep, which can desync items and wastes fuel.
- `cropEffect` = `"NEVER"` — Keep off. Conflicts with Serene Seasons crop cycle timers.

**Regarding the SEASON mode**: Since this pack includes **Serene Seasons**, you may want to try `speedMethod = "SEASON"` (*not* `"SEASONS"` — the value is singular) for a more immersive cycle where summer days are long and winter days are short. However, this is experimental — Serene Seasons already handles seasonal crop growth and temperature; Better Days would only change day length visually. Test before committing.

The `seasonDayMinutes` and `seasonLatitude` fields exist in the default config but may not appear in the file until `speedMethod = "SEASON"` is set and the game reloads. If they're missing, add these lines manually under the `[time]` section:

```toml
speedMethod = "SEASON"
seasonDayMinutes = 20.0    # Total day+night length. 20 = vanilla.
seasonLatitude = 48.0       # Central Europe latitude. -90 (short days) to 90 (long days). Serene Seasons detects this automatically.
```

**ModernFix** (configurable in-game via Mod List → ModernFix → Config, or `config/modernfix-mixins.properties`):

- `mixin.perf.dynamic_resources` = `true` — Load block/item models lazily instead of all at startup. **Biggest single launch-time speedup** in the pack. Reduces memory usage too. Disable if you see missing textures or broken models.

### Data Packs (Wave 0)

| Data Pack                                                                                                             | Role                                  |
|-----------------------------------------------------------------------------------------------------------------------|---------------------------------------|
| [More Advancements 2.0](https://www.curseforge.com/minecraft/data-packs/more-advancements-2-0) (v2.0 for 1.21.x) | 100+ new advancements across organized tabs — bridges the gap between vanilla milestones |

**More Advancements 2.0** adds 100+ new advancements across organized tabs, designed to flesh out the survival experience and bridge gaps between major vanilla milestones. Runs alongside Reliable Advancements (GUI overhaul) and Fancy Toasts (animated popups) without conflict.

**Installation**: This data pack is loaded globally via **OpenLoader** (see Infrastructure section above). Place the `.zip` in `config/openloader/packs/` — no in-game `/datapack` command needed. OpenLoader applies it to every world automatically.

---

## Wave 1 — Tech (Create + Mekanism + AE2)

The classic tech trio. Create handles mechanical automation, Mekanism handles industrial processing, AE2 handles digital storage and autocrafting.

### Core Tech

| Mod                                                                                | Role                                                                                                                                  |
|------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------|
| [**Create**](https://www.curseforge.com/minecraft/mc-mods/create) | Mechanical automation — rotational power, water wheels, windmills, gear trains, conveyor belts, deployers, sequenced crafters, trains |
| [**Mekanism**](https://www.curseforge.com/minecraft/mc-mods/mekanism) | Industrial processing — ore multiplication (2x→5x), digital miner, superdense energy storage, MekaSuit (flight, invulnerability)      |
| [**Mekanism Generators**](https://www.curseforge.com/minecraft/mc-mods/mekanism-generators) | Power generation — heat, wind, solar, gas-burning, bio generators, fission reactor, fusion reactor, turbine                           |
| [**AE2**](https://www.curseforge.com/minecraft/mc-mods/applied-energistics-2) 19.2.17                                    | Digital storage — ME drives, autocrafting, P2P tunnels, spatial storage. The storage backbone                                         |

**Note**: Mekanism v10 for 1.21.1 NeoForge is split into separate modules. **Mekanism** (core) provides machines, processing, cables, and armor. **Mekanism Generators** provides all power generation. Both must be installed.

### Create Addons

| Mod                                                                               | Role                                                                                                                               |
|-----------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------|
| [Create Crafts & Additions](https://www.curseforge.com/minecraft/mc-mods/createaddition) 1.6.0        | Electric motors, alternators, rolling mill, wires/rods, silver/electrum — bridges kinetic SU and Forge Energy (FE)                 |
| [Steam \'n\' Rails NeoForge](https://www.curseforge.com/minecraft/mc-mods/create-steam-n-rails) 0.2.1 | Expanded train system — new tracks (spruce, monorail), semaphores, conductor mob, coupling/decoupling blocks                       |
| [Create: The Factory Must Grow](https://www.curseforge.com/minecraft/mc-mods/create-industry) (TFMG)      | Heavy engineering & oil — crude oil drilling, distillation, diesel/gasoline/LPG engines, steel, aluminum, electricity with voltage |
| [Mekanism TFMG Compatibility](https://www.curseforge.com/minecraft/mc-mods/mekanism-the-factory-must-grow-compatibility)      | 85+ recipe bridges — deduplicates lead/steel/sulfur, integrates aluminum/plastic into Mekanism chains                              |
| [Create: Gunsmithing](https://www.curseforge.com/minecraft/mc-mods/cgs)                            | Steampunk firearms integrated with Create — craftable using Create machines. Animated guns, attachments, ammo types. Optional Better Combat compatibility |
| [Create Ornithopter Glider](https://www.curseforge.com/minecraft/mc-mods/create-ornithopter-glider) | Mechanical flapping glider with boost-assisted flight — integrates with Create rotational power                                                        |

### Create: Gunsmithing Dependencies

The following library mods are required by Create: Gunsmithing:

| Mod                                                                                  | Role                                                                 |
|--------------------------------------------------------------------------------------|----------------------------------------------------------------------|
| [[NTGL] NukaTeam's Gun Lib](https://www.curseforge.com/minecraft/mc-mods/nukateams-gun-lib) | Gun framework — animated weapons, ammo, attachments, gun packs. Required by Create: Gunsmithing |
| [GeckoLib](https://www.curseforge.com/minecraft/mc-mods/geckolib)                             | 3D animation library — required by NTGL                              |
| [Framework](https://www.curseforge.com/minecraft/mc-mods/framework)                           | Utility library — required by NTGL                                   |

### Mekanism Addons

| Mod                                                                                   | Role                                                                                                    |
|---------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------|
| [Advanced Finders](https://www.curseforge.com/minecraft/mc-mods/advanced-finders)     | Ore detection devices — directional indicators for nearby ore veins, synchronized multiplayer support   |
| [Advanced Chimneys](https://www.curseforge.com/minecraft/mc-mods/advanced-chimneys)   | Smoke ventilation systems — redirect factory emissions outdoors, customizable appearance and behavior   |

**Dependencies**: Both Advanced Finders and Advanced Chimneys require [ForgeEndertech](https://www.curseforge.com/minecraft/mc-mods/forgeendertech) library.

### How They Work Together

| Layer              | Mod                                                                                      |          |
|--------------------|------------------------------------------------------------------------------------------|----------|
| Power generation   | Create (water wheels, windmills, steam) + Mekanism (advanced generators, fusion reactor) |          |
| Ore processing     | Mekanism — up to 5x ore multiplication with chemical processing                          |          |
| Factory automation | Create — conveyor belts, deployers, sequenced crafters                                   |          |
| Storage            | AE2 — ME drives, storage busses, crafting CPUs                                           |          |
| Transport          | Create trains + AE2 P2P tunnels                                                          |          |
| Endgame            | Mekanism fusion reactor + MekaSuit + AE2 autocrafting                                    | ### Ores |

| Mod                 | Role                                 |
|---------------------|--------------------------------------|
| Create (built-in)   | Zinc, brass, copper                  |
| Mekanism (built-in) | Osmium, tin, lead, uranium, fluorite |

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

| Mod                                             | Role                                                            |
|-------------------------------------------------|-----------------------------------------------------------------|
| [Terralith](https://www.curseforge.com/minecraft/mc-mods/terralith) | Overhauled Overworld biomes                                     |
| [Tectonic](https://www.curseforge.com/minecraft/mc-mods/tectonic)   | Better terrain shape — deeper valleys, taller mountains, cliffs |

### Environment

| Mod                                                       | Role                                                            |
|-----------------------------------------------------------|-----------------------------------------------------------------|
| [Serene Seasons](https://www.curseforge.com/minecraft/mc-mods/serene-seasons) | Seasonal foliage colors, temperature shifts, crop growth cycles |

**Serene Seasons** adds four seasons (Spring, Summer, Autumn, Winter) with visual foliage changes, temperature shifts, and seasonal crop growth modifiers. Crop impact is enabled — planting in the wrong season reduces yield, encouraging greenhouse planning. Temperature damage is **disabled** — no freezing or heat damage, preserving the chill rule.

### Underground & Ocean

| Mod                                                         | Role                                                                              |
|-------------------------------------------------------------|-----------------------------------------------------------------------------------|
| [Darker Depths](https://www.curseforge.com/minecraft/mc-mods/darker-depths)     | Underground expansion — 3 new cave biomes, mobs, Forsaken Bronze, Living Crystals |
| [Upgrade Aquatic](https://www.curseforge.com/minecraft/mc-mods/upgrade-aquatic) | Ocean expansion — Thrasher mob, Ocean Ravines, Prismarine Coral, renewable sand   |

**Interdependency note — Darker Depths + YUNG's Better Caves**: Darker Depths adds its own cave biomes (Molten Cavern, Sandy Catacombs, Crystal Cavern) that generate alongside YUNG's Better Caves' enlarged cave systems. Darker Depths biomes replace vanilla cave sections with themed variants, while YUNG's Better Caves changes the shape and connectivity of caves — they layer without direct conflict.

**Interdependency note — Upgrade Aquatic + YUNG's Better Ocean Monuments**: Upgrade Aquatic adds ocean mobs, coral variants, and ocean-floor features. It does not modify Ocean Monuments — YUNG's Better Ocean Monuments replaces monument structure generation without conflict. Upgrade Aquatic items (thrasher teeth, prismarine coral) integrate naturally with Ocean's Delight (Wave 4) for seafood recipes.

### Structures

| Mod                                                                                         | Role                             |
|---------------------------------------------------------------------------------------------|----------------------------------|
| [YUNG\'s Better Dungeons](https://www.curseforge.com/minecraft/mc-mods/yungs-better-dungeons)                   | Overhauled dungeons              |
| [YUNG\'s Better Mineshafts](https://www.curseforge.com/minecraft/mc-mods/yungs-better-mineshafts)               | Improved mineshafts              |
| [YUNG\'s Better Strongholds](https://www.curseforge.com/minecraft/mc-mods/yungs-better-strongholds)             | Larger, more complex strongholds |
| [YUNG\'s Better Desert Temples](https://www.curseforge.com/minecraft/mc-mods/yungs-better-desert-temples)       | Multi-room desert temples        |
| [YUNG\'s Better Jungle Temples](https://www.curseforge.com/minecraft/mc-mods/yungs-better-jungle-temples)       | Jungle temples with traps        |
| [YUNG\'s Better Ocean Monuments](https://www.curseforge.com/minecraft/mc-mods/yungs-better-ocean-monuments)     | Redesigned ocean monuments       |
| [YUNG\'s Better Witch Huts](https://www.curseforge.com/minecraft/mc-mods/yungs-better-witch-huts)               | Expanded witch huts              |
| [YUNG\'s Better Nether Fortresses](https://www.curseforge.com/minecraft/mc-mods/yungs-better-nether-fortresses) | Improved nether fortresses       |
| [YUNG\'s Better Caves](https://www.curseforge.com/minecraft/mc-mods/yungs-better-caves)                         | Larger, more varied caves        |
| [Structory](https://www.curseforge.com/minecraft/data-packs/structory)                                        | New hand-crafted structures      |
| [Towns & Towers](https://www.curseforge.com/minecraft/data-packs/towns-and-towers)                            | Better village generation        |

### Dimensions

| Mod                                                                                 | Role                                                                                       |
|-------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------|
| [The Aether](https://www.curseforge.com/minecraft/mc-mods/aether)                                       | Sky dimension — safe islands, gear progression, dungeons with bosses                       |
| [Deeper and Darker](https://www.curseforge.com/minecraft/mc-mods/deeperdarker)                          | The "Otherside" dimension — deep dark themed, warden gear                                  |
| [Twilight Forest](https://www.curseforge.com/minecraft/mc-mods/the-twilight-forest) | Classic dimension — 6+ bosses with progression gates, unique loot, enchanted forest biomes |

### End Overhaul

| Mod                                                                                                    | Role                                                            |
|--------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------|
| [**BetterEnd NeoForge**](https://www.curseforge.com/minecraft/mc-mods/betterend-neoforge) v21.0.25                         | Full End overhaul — 24+ biomes, new mobs, gear, custom music    |
| [**Moog\'s End Structures**](https://www.curseforge.com/minecraft/mc-mods/moogs-end-structures) v2.0.3 | New structures to fill the End dimension                        |
| [Nullscape](https://www.curseforge.com/minecraft/data-packs/nullscape) (data pack)                                       | End terrain overhaul — surreal alien landscapes, new sky colors |

**Nullscape**: A data pack that transforms the End's terrain into alien shapes (floating islands, spires, arches, voids) with unique sky colors per biome. **Compatible with BetterEnd** — Nullscape's own documentation states it works with BetterEnd specifically (it is incompatible with most End worldgen mods, but BetterEnd is the documented exception). Nullscape handles terrain shape and sky; BetterEnd handles biomes, mobs, gear, and structures. Install as a data pack in the world's `datapacks/` folder.

### New Dependencies (End Overhaul)

| Mod                                                                     | Role                                        |
|-------------------------------------------------------------------------|---------------------------------------------|
| [BCLib NeoForge](https://www.curseforge.com/minecraft/mc-mods/bclib-neoforge)               | Core library — required by BetterEnd        |
| [WorldWeaver NeoForge](https://www.curseforge.com/minecraft/mc-mods/worldweaver-neoforge)   | Worldgen library — required by BetterEnd    |
| [WunderLib NeoForge](https://www.curseforge.com/minecraft/mc-mods/wunderlib-neoforge)       | Utility library — required by BetterEnd     |
| [Moog\'s Structure Lib](https://www.curseforge.com/minecraft/mc-mods/moogs-structure-lib)   | Library — required by Moog's End Structures |
| [Cristel Lib](https://www.curseforge.com/minecraft/mc-mods/cristel-lib) | Library — required by Towns & Towers        |
| [Blueprint](https://www.curseforge.com/minecraft/mc-mods/blueprint)                         | Library — required by Upgrade Aquatic       |

### Navigation

| Mod                                                                                   | Role                             |
|---------------------------------------------------------------------------------------|----------------------------------|
| [Explorer\'s Compass](https://www.curseforge.com/minecraft/mc-mods/explorers-compass) | Craftable structure/biome finder |

### Mobility

| Mod                                                                     | Role                                                                                           |
|-------------------------------------------------------------------------|------------------------------------------------------------------------------------------------|
| [Immersive Aircraft](https://www.curseforge.com/minecraft/mc-mods/immersive-aircraft) 1.1.5 | Flyable aircraft — biplane, airship, cargo airship, warship, gyrocopter. Upgradable, colorable |

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

## Wave 2.5 — Schematic Building

Forgematica is the NeoForge/Forge port of Litematica — a client-side schematic mod that lets you load blueprints of structures (pyramids, skyscrapers, castles, factories) and tracks your building progress block-by-block.

### Schematic Mod

| Mod                                                                    | Role                                                                                                           |
|------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------|
| [**Forgematica**](https://www.curseforge.com/minecraft/mc-mods/forgematica) | Load schematics, holographic overlay showing missing/wrong/extra blocks, material list, schematic verifier      |
| [MaFgLib](https://www.curseforge.com/minecraft/mc-mods/mafglib)                     | Core library — required by Forgematica                                                                          |

### Where to Get Schematics

Forgematica does not ship with built-in blueprints — you source `.litematic` schematic files from:

- **[Planet Minecraft](https://www.planetminecraft.com/projects/?keywords=litematica+schematic)** — the main community hub. Search "litematica schematic [pyramid/skyscraper/castle]" to find thousands of uploads.
- **Create your own** — select an area in a test creative world, save it as a `.litematic` file via Forgematica's Area Selection tool.
- **Reddit** — r/9x9, r/litematica, r/MinecraftBuilds
- **CurseForge schematic packs** — some creators upload collections of schematics as data packs or resource packs
- **Discord communities** — Litematica's official Discord and build-sharing servers

Schematic files go in the `schematics/` folder in your Minecraft directory. Forgematica also reads legacy `.schematic` and `.schem` formats.

Browse more at: [Planet Minecraft — Litematica tag (Java, free only)](https://www.planetminecraft.com/projects/tag/litematica/?monetization=0&platform=1)

### Starter Schematic Library

These 15 schematics are pre-vetted free downloads from Planet Minecraft. Download the `.litematic` file from each page and place it in your `schematics/` folder.

| # | Schematic | Style | Complexity |
|---|-----------|-------|------------|
| 1 | [Stone House 1](https://www.planetminecraft.com/project/stone-house-1-litematica/) | Stone cottage | Low — starter home |
| 2 | [Stone House 2](https://www.planetminecraft.com/project/stone-house-2-litematica/) | Stone cottage | Low — starter home |
| 3 | [Stone House 3](https://www.planetminecraft.com/project/stone-house-3-litematica/) | Stone cottage | Low — starter home |
| 4 | [Observatory (Pale Garden)](https://www.planetminecraft.com/project/observatory-pale-garden-schematic-for-litematic-amp-world-edit/) | Fantasy observatory | Medium — Pale Garden biome |
| 5 | [Storage Silo](https://www.planetminecraft.com/project/storage-silo-schematic/) | Industrial silo | Medium — great for factory districts |
| 6 | [Modern House](https://www.planetminecraft.com/project/free-modern-house-java-bedrock-schematic/) | Modern | Medium — with interior |
| 7 | [Mossveil Cottage](https://www.planetminecraft.com/project/free-mossveil-cotttage-java-bedrock-schematic/) | Fantasy cottage | Medium — detailed interior |
| 8 | [Fantasy Gate](https://www.planetminecraft.com/project/fantasy-gate-structure/) | Fantasy gate | Medium — entrance/landmark |
| 9 | [Big Duo House](https://www.planetminecraft.com/project/big-duo-house/) | Large house | High — two-wing design |
| 10 | [Modern House 172](https://www.planetminecraft.com/project/modern-house-172-map-schematic/) | Modern | High — large glass facade |
| 11 | [Modern House (ID 4992361)](https://www.planetminecraft.com/project/modern-house-map-schematics-4992361/) | Modern | High — multi-level |
| 12 | [Meadow House](https://www.planetminecraft.com/project/meadow-house-download/) | Rustic | High — sprawling layout |
| 13 | [Deepslate Tower](https://www.planetminecraft.com/project/deepslate-tower-6804397/) | Dark fantasy tower | High — deepslate materials |
| 14 | [Medieval Ice Tower](https://www.planetminecraft.com/project/medieval-fantasy-ice-snow-tower-download/) | Fantasy tower | High — ice/snow theme |
| 15 | [White Modern House](https://www.planetminecraft.com/project/white-modern-house-litematic-with-interior/) | Modern | High — full interior |

### Interdependency Notes for Wave 2.5

- Forgematica is **client-side only** — it doesn't need to be on a server to work. If playing singleplayer, just install it client-side.
- The holographic overlay works with shaders (Complementary Unbound). If the overlay flickers, toggle the shader off temporarily while placing blocks, or set the rendering layer in Forgematica's config.
- Forgematica's **Easy Place Mode** (toggle with a keybind) auto-places blocks from your inventory matching the schematic — essential for large builds. Combine with Building Wands (Wave 6) for even faster placement.
- Schematics are stored per-world and can be shared between players on a server. The material list updates in real-time as you place blocks.

### Configuration — Wave 2.5

Forgematica defaults are correct for this pack. Key settings to know (accessible via `M + C` in-game):

| Setting              | Recommended | Notes                                                                                   |
|----------------------|-------------|-----------------------------------------------------------------------------------------|
| Easy Place Mode      | ON (toggle) | Auto-places correct blocks from your inventory. Bind a key to toggle it on/off          |
| Render Layers        | Single      | Render only one layer at a time for tall builds. Switch layers with PgUp/PgDn           |
| Overlay transparency | 0.7         | Default. Increase if the overlay is too faint against certain block textures            |
| Material List HUD    | ON          | Shows remaining items needed in a compact HUD. Toggle on/off via Material List GUI      |

**Keybindings to set** (Options → Controls → Forgematica):

| Action                  | Suggested Key | What it does                                                     |
|-------------------------|---------------|------------------------------------------------------------------|
| Open Configuration Menu | `M + C`       | Opens Forgematica's in-game config screen                        |
| Open Loaded Schematics  | `M + L`       | List all loaded schematics, select active placement              |
| Toggle Easy Place Mode  | `M + P`       | Auto-place blocks from inventory matching the schematic           |
| Open Material List      | `M + M`       | Shows block counts: total, placed, remaining, available          |
| Execute Operation       | `M + E`       | Run the selected operation (paste, fill, delete, etc.)           |

---

## Wave 3 — Equipment Magic & RPG

### RPG Progression

| Mod                                                            | Role                                                  |
|----------------------------------------------------------------|-------------------------------------------------------|
| [Skill Tree (RPG Series)](https://www.curseforge.com/minecraft/mc-mods/skill-tree) | XP leveling — spend points on attributes and passives |
| [Pufferfish\'s Skills](https://www.curseforge.com/minecraft/mc-mods/skills)        | Underlying skill system framework                     |

### Equipment

| Mod                                                                         | Role                                                |
|-----------------------------------------------------------------------------|-----------------------------------------------------|
| [Simply Swords](https://www.curseforge.com/minecraft/mc-mods/simply-swords) | 60+ unique melee weapons with passive/activated abilities |
| [Too Many Bows](https://www.curseforge.com/minecraft/mc-mods/too-many-bows) | 30+ unique bows with special abilities and custom attributes |
| [Spartan Weaponry Unofficial](https://www.curseforge.com/minecraft/mc-mods/spartan-weaponry-unofficial) | Spears, halberds, pikes, lances, throwing knives — fills the polearm gap |
| [Relics RPG](https://www.curseforge.com/minecraft/mc-mods/relics-rpg)                           | Legendary accessories with unique abilities         |
| [Runes](https://www.curseforge.com/minecraft/mc-mods/runes)                                     | Socketable runes for weapons/tools                  |
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
| [Apothic Attributes](https://www.curseforge.com/minecraft/mc-mods/apothic-attributes)   | Attribute system module — required by Apotheosis          |
| [Apothic-Enchanting](https://www.curseforge.com/minecraft/mc-mods/apothic-enchanting)   | Enchanting module — required by Apotheosis                |
| [Apothic-Spawners](https://www.curseforge.com/minecraft/mc-mods/apothic-spawners)       | Spawner module — required by Apotheosis                   |
| [Patchouli](https://www.curseforge.com/minecraft/mc-mods/patchouli) | Guidebook library — required by Apotheosis                |
| [Simply Tooltips](https://www.curseforge.com/minecraft/mc-mods/simply-tooltips)         | Tooltip framework — required by Simply Swords             |
| [Fzzy Config](https://www.curseforge.com/minecraft/mc-mods/fzzy-config)                 | Config library — required by Simply Swords                |
| [Ranged Weapon API](https://www.curseforge.com/minecraft/mc-mods/ranged-weapon-api)     | Ranged combat API — required by Relics RPG and Skill Tree |
| [Spell Engine](https://www.curseforge.com/minecraft/mc-mods/spell-engine)               | Magic framework — required by Relics RPG and Skill Tree   |
| [Bundle API](https://www.curseforge.com/minecraft/mc-mods/bundle-api)                   | Bundle/container API — required by Runes                  |

### Interdependency notes for Wave 3

- **Spell Engine** is required by both Relics RPG and Skill Tree (RPG Series) — it was previously considered for removal but must be retained as a mandatory dependency of these core RPG mods.
- **Ranged Weapon API** is shared between Relics RPG and Skill Tree — install once, used by both.

---

## Wave 4 — Food, Farming & Comfort

| Mod                                                                               | Role                                                                  |
|-----------------------------------------------------------------------------------|-----------------------------------------------------------------------|
| [**Farmer's Delight**](https://www.curseforge.com/minecraft/mc-mods/farmers-delight) 1.3.2            | Cooking hub — cutting board, cooking pot, stove, new crops            |
| [**Brewin' And Chewin'**](https://www.curseforge.com/minecraft/mc-mods/brewin-and-chewin) 4.5.0       | Drinks and fermentation — beer, wine, mead, whiskey                   |
| [**Storage Delight**](https://www.curseforge.com/minecraft/mc-mods/storage-delight) 1.3.0             | Kitchen furniture — drawers, cabinets, shelves for ingredient storage |
| [**More Delight**](https://www.curseforge.com/minecraft/mc-mods/more-delight) 26.04.18a+1.21-neoforge | Extra meals, sandwiches, toasts, and knife variants                   |
| [**My Nether's Delight**](https://www.curseforge.com/minecraft/mc-mods/my-nethers-delight) 1.10.2     | Nether-themed food ingredients and recipes                            |
| [**Ocean's Delight**](https://www.curseforge.com/minecraft/mc-mods/oceans-delight) 1.0.4              | Ocean-themed seafood dishes                                           |
| [**Ender's Delight**](https://www.curseforge.com/minecraft/mc-mods/enders-delight) v1.3.0             | End-themed food for Farmer's Delight (moved from Wave 2)              |

### New Dependencies (Wave 4)

| Mod                                                                        | Role                                                                     |
|----------------------------------------------------------------------------|--------------------------------------------------------------------------|
| [Delight Lib](https://www.curseforge.com/minecraft/mc-mods/delight-lib) 26.05.18-1.21-neoforge | Library — required by More Delight v26.04.30+ for cross-loader addon dev |

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
| [**Bountiful**](https://www.curseforge.com/minecraft/mc-mods/bountiful) 8.0.0-beta.2 | Bounty boards in villages — procedurally generated fetch/kill/exploration quests with rewards |

Bountiful generates quests automatically — find a bounty board in any village, accept tasks, earn rewards. Fully optional. Items from installed mods automatically appear in its reward pools.

---

## Wave 5 — Combat & Mobs

| Mod                                                                                               | Role                                                                                            |
|---------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------|
| [Better Combat](https://www.curseforge.com/minecraft/mc-mods/better-combat)                                           | Melee combat animations — weapon reach, sweeping, attack speed                                  |
| [Mutant Monsters](https://www.curseforge.com/minecraft/mc-mods/mutant-monsters)                                       | Mutant zombie, skeleton, creeper, enderman — unique drops                                       |
| [L_Ender\'s Cataclysm](https://www.curseforge.com/minecraft/mc-mods/lendercataclysm)                               | Epic boss fights — Leviathan, Netherite Monstrosity, Ender Guardian (CurseForge, NeoForge 1.21.1) |
| [When Dungeons Arise](https://www.curseforge.com/minecraft/mc-mods/when-dungeons-arise)                               | Roguelike combat structures with loot                                                           |
| [Enchantment Descriptions](https://www.curseforge.com/minecraft/mc-mods/enchantment-descriptions) | Shows enchantment effects in tooltips                                                           |
| [Create Big Cannons](https://www.curseforge.com/minecraft/mc-mods/create-big-cannons)                                 | Artillery engineering — siege cannons for colony defense and spectacle                          |
| [Cut Through](https://www.curseforge.com/minecraft/mc-mods/cut-through)                                               | Combat QoL — swing through transparent blocks (tall grass, cobwebs) without breaking them       |

Apotheosis also adds boss modifiers and elite mob affixes — partially covers what Champions would have done.

### New Dependencies (Combat)

| Mod                                                          | Role                                                               |
|--------------------------------------------------------------|--------------------------------------------------------------------|
| [Ritchie's Projectile Library](https://www.curseforge.com/minecraft/mc-mods/ritchies-projectile-library) | Library — custom projectiles and trajectories (Create Big Cannons) |
| [playerAnimator](https://www.curseforge.com/minecraft/mc-mods/playeranimator)    | Animation library — required by Better Combat                      |
| [Puzzles Lib](https://www.curseforge.com/minecraft/mc-mods/puzzles-lib)          | Library — required by Mutant Monsters                              |
| [Citadel](https://www.curseforge.com/minecraft/mc-mods/citadel)                  | Library — required by L_Ender's Cataclysm                          |
| [Lionfish-API](https://www.curseforge.com/minecraft/mc-mods/lionfish-api)        | Library — required by L_Ender's Cataclysm                          |
| [Bookshelf](https://www.curseforge.com/minecraft/mc-mods/bookshelf)          | Library — required by Enchantment Descriptions                     |

**Better Combat + Simply Swords**: Simply Swords weapons have built-in Better Combat data files — each weapon category uses the correct attack animation, reach, and speed automatically.

**Cut Through**: Works alongside Better Combat — lets you swing through transparent blocks (tall grass, vines, cobwebs) without breaking them, keeping your attack chain uninterrupted. Client-side only, no conflicts with any combat mod.

---

## Wave 6 — Building & Decoration

### Core Decoration

| Mod                                                         | Role                                                          |
|-------------------------------------------------------------|---------------------------------------------------------------|
| [Rechiseled](https://www.curseforge.com/minecraft/mc-mods/rechiseled)           | 600+ decorative block variants with connected textures        |
| [Supplementaries](https://www.curseforge.com/minecraft/mc-mods/supplementaries) | Vanilla+ decoration — jars, signposts, faucets, weather vanes |
| [Macaw\'s Bridges](https://www.curseforge.com/minecraft/mc-mods/macaws-bridges) | Bridges in all wood types                                     |
| [Macaw\'s Doors](https://www.curseforge.com/minecraft/mc-mods/macaws-doors)     | Vanilla-style doors for every wood                            |
| [Macaw\'s Roofs](https://www.curseforge.com/minecraft/mc-mods/macaws-roofs)     | Roofing blocks                                                |
| [Macaw\'s Windows](https://www.curseforge.com/minecraft/mc-mods/macaws-windows) | Window variants                                               |
| [Building Wands](https://www.curseforge.com/minecraft/mc-mods/building-wands)   | Faster large-scale construction                               |
| [Handcrafted](https://www.curseforge.com/minecraft/mc-mods/handcrafted)         | Furniture — chairs, tables, shelves, curtains                 |

### Rechiseled Addons

| Mod                                                                                            | Role                                                                 |
|------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
| [Rechiseled: Create](https://www.curseforge.com/minecraft/mc-mods/rechiseled-create)                               | 100+ decorative variants of Create blocks + mechanical chisel        |
| [Rechiseled: Applied Energistics 2](https://www.curseforge.com/minecraft/mc-mods/rechiseled-applied-energistics-2) | AE2 autocrafting for Rechiseled blocks via Chiseling Pattern Encoder |

### New Dependencies (Wave 6)

| Mod                                                                               | Role                                        |
|-----------------------------------------------------------------------------------|---------------------------------------------|
| [Moonlight Library](https://www.curseforge.com/minecraft/mc-mods/moonlight)                           | Core library — required by Supplementaries  |
| [Resourceful Lib](https://www.curseforge.com/minecraft/mc-mods/resourceful-lib)                       | Core library — required by Handcrafted      |
| [Fusion (Connected Textures)](https://www.curseforge.com/minecraft/mc-mods/fusion-connected-textures) | Connected textures — required by Rechiseled |

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
| Wave 0 — Foundation        | 53      | 8      | 62      | Performance, QoL, time control, storage, travel, graves, UI, chunk loading, datapack loader (+7 resource packs, 1 shaderpack, 1 data pack)                                                               |
| Wave 1 — Tech              | 12      | 4      | 16      | Create + 6 addons (incl. Gunsmithing, Ornithopter Glider), Mekanism + Generators, AE2, Advanced Finders, Advanced Chimneys + NTGL, GeckoLib, Framework, ForgeEndertech deps |
| Wave 1.5 — Colony          | 5       | —      | 5       | MineColonies (4 deps counted as mods — they're library mods; CurseForge-only)                                                                                                           |
| Wave 2 — Exploration       | 23      | 6      | 29      | YUNG's (9), Terralith/Tectonic, Serene Seasons, Darker Depths, Upgrade Aquatic, dimensions (3), End overhaul (2 + Nullscape dp + 6 deps), navigation, aircraft                          |
| Wave 2.5 — Schematic Build | 1       | 1      | 2       | Forgematica + MaFgLib dep                                                                                                                                                               |
| Wave 3 — Equipment Magic   | 9       | 10     | 19      | Skill Tree, Simply Swords, Too Many Bows, Spartan Weaponry, Relics, Runes, Curios, Apotheosis + 10 deps (Placebo, Apothic modules, Patchouli, Simply Tooltips, Fzzy Config, Ranged Weapon API, Spell Engine, Bundle API) |
| Wave 4 — Food & Farming    | 7       | —      | 7       | Farmer's Delight + 6 addon mods (including Ender's Delight moved from Wave 2)                                                                                                           |
| Wave 4.5 — Quests          | 1       | —      | 1       | Bountiful                                                                                                                                                                               |
| Wave 5 — Combat            | 7       | 6      | 13      | Better Combat, Mutant Monsters, Cataclysm, Dungeons Arise, Big Cannons, Cut Through, Enchantment Descriptions + RPL lib, playerAnimator, Puzzles Lib, Citadel, Lionfish-API, Bookshelf  |
| Wave 6 — Building          | 10      | 3      | 13      | Rechiseled, Supplementaries, Macaw's (4), Building Wands, Handcrafted + Rechiseled: Create, Rechiseled: AE2 + Moonlight Lib, Resourceful Lib, Fusion                                    |
| Wave 7 — Space Exploration | 1       | 1      | 2       | Stellaris, Potentials API                                                                                                                                                               |
| **Total**                  | **127** | **40** | **167** | All confirmed NeoForge 1.21.1                           |
