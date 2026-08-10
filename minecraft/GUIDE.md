# Driftwood — Setup & Mod Guide

<!-- Cover page and TOC are handled in the Typst template. -->

## Wave -1 — Prerequisites

### JDK 21

| Tool                                                                              | Role                                                  |
|-----------------------------------------------------------------------------------|-------------------------------------------------------|
| [Eclipse Temurin JDK 21](https://adoptium.net/temurin/releases/?version=21) (LTS) | Java runtime and development kit for Minecraft 1.21.1 |

Install the **JDK** (not just JRE) — the JDK includes `javac` and `jlink` needed by NeoForge. Minimum version 21.0.0, any LTS build. On Windows, use the MSI installer and ensure `JAVA_HOME` is set to the install path (e.g., `C:\Program Files\Eclipse Adoptium\jdk-21.0.6.13-hotspot`). On Linux/macOS, use your package manager (`apt install temurin-21-jdk`, `brew install temurin21`).

Verify installation:

```bash
java -version
# Expected: openjdk version "21.0.x" ...
```

#### Performance Tuning

Recommended JVM arguments (for XMCL → instance settings → Java → JVM Arguments):

```
-XX:+UseZGC -XX:+ZGenerational -XX:+AlwaysPreTouch -XX:+PerfDisableSharedMem -XX:SoftMaxHeapSize=12G -Xms8G -Xmx8G
```

| System RAM | Recommended allocation                    |
|------------|-------------------------------------------|
| 16 GB      | `-Xms6G -Xmx10G -XX:SoftMaxHeapSize=8G`   |
| 32 GB      | `-Xms12G -Xmx22G -XX:SoftMaxHeapSize=12G` |
| 64 GB      | `-Xms12G -Xmx32G -XX:SoftMaxHeapSize=12G` |

> **Note**: ZGC (Z Garbage Collector) with generational mode is the recommended GC for Java 21 with NeoForge. It provides consistently low latency (sub-millisecond pause times) and handles the large heap sizes common with modded Minecraft better than Shenandoah or G1GC. The Adoptium Temurin JDK 21 includes ZGC — no special Java build needed. `-XX:+AlwaysPreTouch` pre-initializes all memory pages at startup, preventing runtime page-fault stalls. `-XX:+PerfDisableSharedMem` disables synchronous `hsperfdata` file writes, removing a minor source of I/O-induced latency. `-XX:SoftMaxHeapSize=12G` tells ZGC to target ~12G heap usage and GC more aggressively to stay near that level, while allowing bursts above it up to `-Xmx`. For this to take effect, `-Xmx` must be set higher than `-Xms`. The baseline uses equal values for simplicity; on a 64 GB machine you may want e.g. `-Xms12G -Xmx24G` instead to let SoftMaxHeapSize work.

### X Minecraft Launcher (XMCL)

| Tool                          | Role                                     |
|-------------------------------|------------------------------------------|
| [XMCL](https://www.xmcl.app/) | Mod manager and launcher for the modpack |

**XMCL** manages mod and modpack installation, updates, and launching for this modpack. It supports both **CurseForge** and **Modrinth** as mod sources in one launcher, handles NeoForge installation automatically, manages Java versions per instance, and uses hard links to avoid duplicate mod storage. Open source, free, with no premium tier.

**Setup**:

1. Download and install **XMCL** from [xmcl.app](https://www.xmcl.app/) for your OS.
   - Windows: App Installer, AppX, or Zip (x64)
   - macOS: DMG (Intel or Apple Silicon)
   - Linux: Deb, RPM, AppImage, Flathub
   - Or via winget: `winget install CI010.XMinecraftLauncher`
2. Open XMCL and follow the [NeoForge](#neoforge) instructions below to create your instance.

Once the instance is running, install mods through the **Mods** tab from either CurseForge or Modrinth, or by dropping `.jar` files into the instance's `mods/` folder. XMCL uses hard links — mods are stored once globally and linked per instance, avoiding duplicates. All mod links in this document link to their CurseForge pages — XMCL can install from CurseForge directly via the Mods tab.

For texture packs, drop `.zip` files into the instance's **Resource Packs** tab or folder. For shaderpacks, drop `.zip` files into the instance's **Shader Packs** tab or folder. Access the instance folder from the instance settings.

### NeoForge

| Tool                               | Role                            |
|------------------------------------|---------------------------------|
| [NeoForge](https://neoforged.net/) | Mod loader for Minecraft 1.21.1 |

NeoForge is the mod loader powering this modpack. **XMCL installs NeoForge and Minecraft 1.21.1 automatically** when you create a NeoForge instance (see [XMCL](#x-minecraft-launcher-xmcl) above). Follow the XMCL steps — it handles the Minecraft version, mod loader, and Java runtime in one step.

If you prefer the official launcher:

1. Run **Minecraft 1.21.1** vanilla at least once from the official launcher to generate the game directory.
2. Download the **NeoForge installer** for 1.21.1 from [neoforged.net](https://neoforged.net/).
3. Run it: `java -jar neoforge-1.21.1-<version>-installer.jar` → select "Install client".
4. Launch the new **neoforge** profile once to generate the `mods/` directory.
5. Verify the main menu shows "NeoForge X.X.X" in the bottom-left corner.
   - Your Minecraft directory: Windows `%APPDATA%\.minecraft`, Linux `~/.minecraft`, macOS `~/Library/Application Support/minecraft`

**Important**: Do not add any mod `.jar` files yet. Wave -1 is complete when the vanilla 1.21.1 client runs under NeoForge with no mods installed.

Skip this if you've played Minecraft before.

### Controls (Default)

| Action         | Key             |
|----------------|-----------------|
| Move           | `W A S D`       |
| Jump           | `Space`         |
| Sneak          | `Shift`         |
| Sprint         | `Ctrl`          |
| Attack / Break | **Left-click**  |
| Use / Place    | **Right-click** |
| Inventory      | `E`             |
| Drop           | `Q`             |
| Hotbar slots   | `1`–`9`         |

### Your First 10 Minutes

1. **Punch a tree** — Hold left-click on a tree trunk until it breaks. Get 8+ logs.
2. **Make a crafting table** — Open inventory (`E`), place 1 log → 4 planks. Fill all 4 crafting slots with planks → crafting table.
3. **Craft tools** at the crafting table (3×3 grid):

| Tool           | Pattern                                  |
|----------------|------------------------------------------|
| Wooden Pickaxe | 3 planks top row, 2 sticks middle column |
| Wooden Axe     | 3 planks top-left, 2 sticks down         |
| Wooden Sword   | 2 planks middle column, 1 stick below    |

1. **Gather stone** — Find grey stone, mine 8–12 blocks with your pickaxe.
2. **Build a shelter** — Dirt/wood walls + door (6 planks, 2 columns of 3) + torches (stick + coal/charcoal).
3. **Craft a furnace** — 8 cobblestone in a ring (center empty). Use it to smelt ore, cook meat, make charcoal.
4. **Survive the night** — Stay inside. Dig, expand, or sleep if you have a bed (3 wool + 3 planks).
5. **Day 2 priorities**: Find food, get iron (dig staircase-down until you see brown speckled blocks), find a village, make a bed.

### Keybind to Set Immediately

Open **Options → Controls → Key Binds** and set these before anything else:

| Action                | Suggested Key  | Why                              |
|-----------------------|----------------|----------------------------------|
| Open Waystone Menu    | `Ctrl+Shift+W` | Fast travel anywhere             |
| Zoom                  | `C`            | Sodium zoom                      |
| Toggle Dynamic Lights | `Ctrl+L`       | Torch in off-hand = mobile light |
| Open Backpack         | `B`            | Sophisticated Backpacks          |
| Open Fullscreen Map   | `J`            | JourneyMap                       |

---

<!--raw-typst #pagebreak() -->

## Wave 0 — Foundation

The essentials that make the game run well. Dependencies, performance, rendering, shaders, chunk loading, and texture packs. Install everything in this wave before launching.

### Performance & Rendering

| Mod                                                                               | Role                                     |
|-----------------------------------------------------------------------------------|------------------------------------------|
| [Sodium](https://www.curseforge.com/minecraft/mc-mods/sodium)                     | Rendering engine                         |
| [Iris](https://www.curseforge.com/minecraft/mc-mods/irisshaders)                  | Shader loader (v1.8.14, NeoForge native) |
| [Lithium](https://www.curseforge.com/minecraft/mc-mods/lithium)                   | Server-side game logic optimization      |
| [FerriteCore](https://www.curseforge.com/minecraft/mc-mods/ferritecore)           | Memory usage reduction                   |
| [Distant Horizons](https://www.curseforge.com/minecraft/mc-mods/distant-horizons) | LOD rendering                            |
| [ModernFix](https://www.curseforge.com/minecraft/mc-mods/modernfix)               | All-in-one perf + bug fixes              |
| [ImmediatelyFast](https://www.curseforge.com/minecraft/mc-mods/immediatelyfast)   | Immediate-mode rendering                 |
| [Entity Culling](https://www.curseforge.com/minecraft/mc-mods/entityculling)      | Hide off-screen entities                 |
| [Dynamic FPS](https://www.curseforge.com/minecraft/mc-mods/dynamic-fps)           | Background FPS reduction                 |
| [NoisiumForked](https://www.curseforge.com/minecraft/mc-mods/noisiumforked)       | Worldgen optimization (active fork)      |

**ModernFix** (configurable in-game via Mod List → ModernFix → Config, or `config/modernfix-mixins.properties`):

- `mixin.perf.dynamic_resources` = `true` — Load block/item models lazily instead of all at startup. **Biggest single launch-time speedup** in the pack. Reduces memory usage too. Disable if you see missing textures or broken models.

### Shaderpack

| Shaderpack                                                                                        | Description                                                                                            |
|---------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------|
| [Complementary Unbound](https://www.curseforge.com/minecraft/customization/complementary-unbound) | Realistic visual style, Potato→Ultra profiles, block-specific effects                                  |
| [Euphoria Patches](https://www.curseforge.com/minecraft/mc-mods/euphoria-patches)                 | Optional add-on for Complementary Shaders — extends with handcrafted features, all disabled by default |

**Euphoria Patches** is a shader add-on, not a standalone shaderpack. It patches Complementary Shaders (Reimagined or Unbound) with additional visual options. Install via its patcher mod (requires NeoForge, no additional mod dependencies). All features are disabled by default and can be individually enabled from the shader options menu.

**Recommended Euphoria Patches settings to enable** (Shader Options → Popular Settings tab, then apply the preset):

Performance impact is rated for the RTX 4080 SUPER (16GB VRAM, 4K, High profile) targeting 70-80 FPS. The base Complementary settings already leave headroom (no Entity Shadows, Shadow Res 2048, DH LOD 128-256 chunks), so Euphoria's overhead should be absorbed without dropping below the target. If FPS dips occur, disable the Heavy-impact features first.

| Category    | Setting                          | Value  | Perf      | Why                                                                  |
|-------------|----------------------------------|--------|-----------|----------------------------------------------------------------------|
| World       | Colored Lighting                 | ON     | Moderate  | Dynamic block light colors — glowstone, redstone, sea lanterns       |
| World       | Seasons                          | ON     | None      | Leaves/grass shift colors with Serene Seasons calendar               |
| World       | Darkness Desaturation            | ON     | None      | Colors desaturate in darkness for more atmospheric nights            |
| World       | Better Bedrock Noise             | ON     | None      | Smoother, more natural bedrock layer pattern                         |
| Atmosphere  | Better Clouds                    | ON     | **Heavy** | Volumetric cloud improvements over base Complementary (High quality) |
| Atmosphere  | No Rain Above Clouds             | ON     | None      | Rain only falls below cloud layer (Iris-only)                        |
| Atmosphere  | Aurora Colors                    | Custom | None      | Fine-tune aurora hue/saturation for personal taste                   |
| Water       | Better Water                     | ON     | **Heavy** | Improved water reflections and wave animation                        |
| Effects     | Lava Edge Effect                 | ON     | Low       | Glowing edge on lava blocks for depth (Iris-only)                    |
| Effects     | End Portal Rays                  | ON     | Low       | Light rays emanate from End portal frames (Iris-only)                |
| Effects     | Epic Thunderstorm                | ON     | Moderate  | More dramatic lightning visuals (Iris-only); cost only during storms |
| Effects     | Soul Sand Valley Overhaul        | ON     | Moderate  | Richer fog and particle atmosphere in soul sand valleys              |
| Effects     | Dragon Death Effect              | ON     | Low       | Spectacular visual during Ender Dragon death                         |
| Entities    | Better Waving Vines/Sugar Cane   | ON     | None      | Smoother plant waving animation (Iris-only)                          |
| Entities    | Third-Person Interactive Foliage | ON     | Low       | Foliage reacts to player in third person (Iris-only)                 |
| Entities    | Third-Person Soul Sand Eyes      | ON     | Low       | Soul sand valley eyes track player in third person (Iris-only)       |
| Mod Support | Better Modded SSBL               | ON     | Moderate  | Auto-emissive modded light sources at correct light levels           |

> **Tip**: The Popular Settings preset applies the most impactful options in one click. Browse individual categories afterward to fine-tune. Features marked "Iris-only" require Iris (not Oculus) — this pack uses Iris on NeoForge, so all features work.

**Settings for NVIDIA RTX 4080 SUPER (16GB VRAM, 4K) — target: stable 70-80 FPS**:

| Setting                    | Value           |
|----------------------------|-----------------|
| Visual Style               | Unbound         |
| Profile                    | High            |
| RP Support                 | Integrated PBR+ |
| Shadow Resolution          | 2048            |
| Shadow Distance            | 12 chunks       |
| Real-Time Shadows          | High            |
| Light Shaft Quality        | Medium          |
| Entity Shadows             | OFF             |
| Detail Quality             | High            |
| Cloud Quality              | High            |
| Water Reflection Quality   | Medium (max)    |
| Block Reflection Quality   | Medium          |
| Anti-Aliasing (FXAA)       | ON              |
| Edge Shadow (SSAO) Quality | Medium          |
| Advanced Colored Lighting  | 8 chunks        |
| Texture Filtering          | 8x              |

**General MC settings**: Graphics **Fancy**, Render Distance **10 chunks**, Simulation Distance **8 chunks**, Biome Blend **2 blocks**, Mipmap Levels **4x**, Entity Distance **100%**, Fullscreen ON, VSync OFF, Max Framerate **120**. Always Defer Chunk Updates **Enabled**, Use No Error Context **Enabled**.

Distant Horizons handles far rendering — keep vanilla render distance low. DH LODs render through the shader pipeline; start LOD distance at **128** and push to **256** if the FPS budget allows. Monitor VRAM usage (shaders + DH + high-res texture packs can peak past 12GB at 4K). If you experience dips below 70 FPS, first reduce Shadow Resolution to **1024**, then lower Shadow Distance to **8 chunks**.

### Texture Packs

| Pack                                                                                                                                         | Role                                                                            |
|----------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------|
| [Smooth Font](https://www.curseforge.com/minecraft/texture-packs/smooth-font)                                                                | 32x smooth font — clean modern typeface, Faithful 32x-based                     |
| [Fresh Animations](https://www.curseforge.com/minecraft/texture-packs/fresh-animations)                                                      | Living entity animation overhaul — mobs blink, look around, show emotion        |
| [Enhanced Boss Bars](https://www.curseforge.com/minecraft/texture-packs/enhanced-boss-bars)                                                  | Redesigned boss bars with themed designs for vanilla and modded bosses          |
| [RAY's 3D Rails](https://www.curseforge.com/minecraft/texture-packs/rays-3d-rails)                                                           | 3D block & item textures for all rail types                                     |
| [Better Lanterns](https://www.curseforge.com/minecraft/texture-packs/better-lanterns)                                                        | Enhanced 3D look for lanterns and chains                                        |
| [(Bee's) Fancy Crops](https://modrinth.com/resourcepack/fancy-crops)                                                                         | Reworked crop models with texture variations — compatible with Farmer's Delight |
| [Fire Rekindled](https://modrinth.com/resourcepack/fire-rekindled)                                                                           | Animated fire, lava, water, and portal textures — includes Create mod support   |
| [Bushy Pink Petals, Wildflowers & Leaf Litter](https://www.curseforge.com/minecraft/texture-packs/bushy-pink-petals-wildflowers-leaf-litter) | 3D models for pink petals, wildflowers, and leaf litter on the ground           |
| [Fresh Animations: Extensions](https://www.curseforge.com/minecraft/texture-packs/fresh-animations-extensions)                               | Official FA extension bundle — 8 addons: Objects, Details, Emissive, Creepers, Spiders, Quivers, Classic Horses, Slamacow |
| [MissingSoundsFix](https://modrinth.com/resourcepack/missingsoundsfix)                                                                 | Suppresses vanilla empty-sound warnings (salmon.ambient, cod.ambient, etc.) — fixes log spam from MC-97521 |

**Smooth Font** replaces Minecraft's pixelated default font with a clean, smooth 32x typeface based on Faithful 32x. Improves readability across menus, chat, and UI while keeping a vanilla-friendly look. Only overrides font textures — safe to use alongside any 16x resource packs. By apt9002. [Source (CurseForge)](https://www.curseforge.com/minecraft/texture-packs/smooth-font)

**Fresh Animations** adds idle animations, directional looking, sleep/blink cycles, and emotional states to all vanilla mobs. It's a resource pack overlay (not a mod) — place it high in the pack order. Works on any version with no mod dependencies.

**Enhanced Boss Bars** replaces boss bar textures with themed designs — covers vanilla bosses and has support for Twilight Forest bosses. For full compatibility with L_Ender's Cataclysm and The Aether (which use custom boss bar rendering), install the companion [Enhanced Boss Bars mod](https://www.curseforge.com/minecraft/mc-mods/enhanced-boss-bars-mod). Pure resource pack for vanilla/Twilight Forest bars.

**RAY's 3D Rails** replaces rail block and item textures with 3D models. Supports shaders since v3.0. Compatible with all rail types from Steam 'n' Rails and Create.

**Better Lanterns** gives lanterns and chains an enhanced 3D look with connected chain models. Compatible with Arcane Lanterns and Thin Air mods.

**(Bee's) Fancy Crops** reworks vanilla crop models with texture variations and a fluffier look. Built to work with **Farmer's Delight** (Wave 4) and compatible with any mod that adds crops. 16x, vanilla-friendly. No mods required — pure resource pack. By EverLoste. 6.5M downloads. [Source (Modrinth)](https://modrinth.com/resourcepack/fancy-crops)

**Fire Rekindled** overhauls almost all animated textures in the game: fire, soul fire, campfires, torches, lanterns, water, lava, magma, nether portal, slime, sculk, and more. Animations are 32-64 frames, loop seamlessly, and stay close to vanilla artstyle. Supports **Create** mod (honey, steam jet particles). All textures include Normal and Specular maps (LabPBR standard) for PBR-compatible shaders. 1.3M downloads, MIT license. By Tectato. [Source (Modrinth)](https://modrinth.com/resourcepack/fire-rekindled) — Optional CTM addon pack available.

**Bushy Pink Petals, Wildflowers & Leaf Litter** replaces flat pink petals, wildflowers, and leaf litter with 3D models. Makes ground cover look thicker and more natural — petals and leaves pile up with visible depth. Apache 2.0 licensed, actively maintained. By godhusk. 178K downloads. [Source (CurseForge)](https://www.curseforge.com/minecraft/texture-packs/bushy-pink-petals-wildflowers-leaf-litter)

**Fresh Animations: Extensions** is the all-in-one bundle of official FA extensions by FreshLX. Contains all 8 addons in a single download: **Objects** (animated chests/boats/minecarts/shulker boxes), **Details** (extra model details + texture variations for farm animals), **Emissive** (glowing mob eyes/features for shaders — works with Complementary Unbound), **Creepers** (custom creeper textures + rare model variants), **Spiders** (more detailed/realistic spider models), **Quivers** (quiver models on skeletons/strays/bogged), **Classic Horses** (1.12-era horse look with modern animations), and **Slamacow** (character variants). Load above Fresh Animations in the pack order. All 16x, vanilla-friendly. By FreshLX. 20.5M downloads. [Source (CurseForge)](https://www.curseforge.com/minecraft/texture-packs/fresh-animations-extensions)


**MissingSoundsFix** suppresses vanilla empty-sound warnings (`salmon.ambient`, `cod.ambient`, `pufferfish.ambient`, `tropical_fish.ambient`) that spam the log. This is a vanilla Minecraft bug (MC-97521) — Mojang registered ambient sound events for fish but never shipped audio files. The resource pack provides dummy sound mappings that silence the warnings. No sound is actually changed. Pure resource pack, works on any version. By Tilera. 144K downloads. [Source (Modrinth)](https://modrinth.com/resourcepack/missingsoundsfix)

**Installation**: Install via XMCL — drop `.zip` files into the instance's Resource Packs tab, or copy them into the instance's `resourcepacks/` folder (access via instance settings). Load order (top = highest priority):

1. Smooth Font
2. Fresh Animations
3. Enhanced Boss Bars
4. RAY's 3D Rails
5. Better Lanterns
6. (Bee's) Fancy Crops
7. Fire Rekindled
8. Bushy Pink Petals, Wildflowers & Leaf Litter
9. Fresh Animations: Extensions
10. MissingSoundsFix

### Infrastructure

| Mod                                                                                                      | Role                                                                     |
|----------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------|
| [Chunk Loaders](https://www.curseforge.com/minecraft/mc-mods/chunk-loaders)                              | Keep chunks loaded across dimensions — essential for Phase 2+ automation |
| [SuperMartijn642's Config Lib](https://www.curseforge.com/minecraft/mc-mods/supermartijn642s-config-lib) | Config library (Chunk Loaders dependency)                                |
| [SuperMartijn642's Core Lib](https://www.curseforge.com/minecraft/mc-mods/supermartijn642s-core-lib)     | Core library (Chunk Loaders dependency)                                  |
| [Chunky](https://www.curseforge.com/minecraft/mc-mods/chunky)                                            | World pregenerator — generates chunks preemptively to eliminate stutter  |

The essentials that make the game run well. Dependencies, performance, rendering, shaders, chunk loading, and texture packs. Install everything here before launching.

### Install

Use **XMCL** — create a 1.21.1 NeoForge instance, install all Wave 0 mods via the Mods tab. See [Wave 0](#wave-0--foundation) for the full list.

Wave 0.5 (Player Experience) can be installed at the same time — they're independent mods that don't conflict.

### First Launch Checklist

#### 1. Video Settings

| Setting             | Recommended | Notes                                                                                        |
|---------------------|-------------|----------------------------------------------------------------------------------------------|
| Graphics            | Fancy       | Sodium makes this fast; Fancy (not Fabulous) avoids transparency conflicts with Iris shaders |
| Render Distance     | 10 chunks   | Distant Horizons handles the rest                                                            |
| Simulation Distance | 8 chunks    | Fewer distant mobs ticking = better FPS                                                      |
| VSync               | OFF         |                                                                                              |
| Max Framerate       | Uncapped    |                                                                                              |

#### 2. Distant Horizons (LOD Mod)

Open **Video Settings → [colored tiles icon]** next to the FOV slider.

| Setting                    | Value      |
|----------------------------|------------|
| Enable Rendering           | ON         |
| Enable Distant Generation  | ON         |
| LOD Render Distance Radius | 128–256    |
| Quality Preset             | Medium     |
| CPU Load                   | Aggressive |
| Enable Cloud Rendering     | OFF        |
|| Show LOD Gen Progress      | ON         |

> **Tip**: DH generates LOD data as you explore, in new chunks only. First visit to an area has temporary pop-in. Terralith + Tectonic terrain takes longer than vanilla. Monitor VRAM — shaders + DH at 4K can push past 12GB.
>
> **During Chunky pre-generation**, switch Distant Generator Mode to `PRE_EXISTING_ONLY` and drop CPU Load to Low/Balanced so DH converts Chunky's freshly generated chunks into LODs instead of racing it — see [Chunky — World Pregeneration](#5-chunky--world-pregeneration). Switch back to the default mode and raise CPU Load once pre-generation is done.

#### 3. Shader Setup

Drop **Complementary Unbound** `.zip` into `shaderpacks/`. In-game: Options → Video Settings → Shaderpacks → select Complementary Unbound. Works with Iris on NeoForge.

**Euphoria Patches** (optional add-on): Install the patcher mod, it auto-detects Complementary and applies additional visual options. All features disabled by default. Open Shader Options → Popular Settings tab → apply the Popular Settings preset, then browse individual categories to fine-tune.

**Settings for RTX 4080 SUPER (16GB VRAM, 4K)**:

- Visual Style: Unbound, Profile: High, RP Support: Integrated PBR+
- Shadow Resolution: 2048, Shadow Distance: 12 chunks
- Real-Time Shadows: High, Light Shaft Quality: Medium
- Entity Shadows: OFF, Cloud Quality: High, Water Reflection: Medium

General MC: Graphics Fancy, Render Distance 10, Simulation 8, Biome Blend 2, Mipmap 4x, Entity Distance 100%, VSync OFF, Max Framerate 120.

#### 4. Texture Pack Load Order (top = highest priority)

1. Smooth Font
2. Fresh Animations
3. Enhanced Boss Bars
4. RAY's 3D Rails
5. Better Lanterns
6. (Bee's) Fancy Crops
7. Fire Rekindled
8. Bushy Pink Petals, Wildflowers & Leaf Litter

#### 5. Chunky — World Pregeneration

Run before exploring beyond your spawn area to avoid exploration stutter.

```
/chunky radius 5000
/chunky start
```

Let it finish (~15-30 minutes). Check progress with `/chunky status`. The world border expands as chunks generate. Set `"continue-on-restart": true` in `config/chunky/config.json` before you start — this auto-resumes the task every time you load the world, so you can close the game and it picks up where it left off.

**Distant Horizons + Chunky — practical setup** (so DH turns the pre-generated world into LODs while Chunky runs):

- **Distant Generation**: ON — DH converts Chunky's newly generated chunks into LODs as Chunky progresses.
- **Distant Generator Mode**: `PRE_EXISTING_ONLY` — DH builds LODs only from chunks Chunky has already generated, rather than generating terrain itself.
- **DH CPU Load**: Low/Balanced during Chunky, especially with a big modpack; increase it afterward if you want to rapidly finish the LOD conversion.
- **Never** switch the mode to `SURFACE` or `FEATURES` while Chunky is active — unless you specifically want DH generating terrain too.

When Chunky finishes, switch Distant Generator Mode back to the default and raise CPU Load back up so DH keeps generating LODs for newly explored chunks.

---

### Performance Mods — Install and Forget

These mods optimize automatically. No config needed.

| Mod                  | What it does                                              |
|----------------------|-----------------------------------------------------------|
| **Sodium**           | Modern rendering engine — massive FPS boost               |
| **Iris**             | Shader loader (Complementary Unbound)                     |
| **Lithium**          | Server-side logic optimization — faster AI, block updates |
| **Distant Horizons** | LOD rendering — see 256+ chunks away                      |
| **ModernFix**        | All-in-one performance + bug fixes                        |
| **ImmediatelyFast**  | Immediate-mode rendering for blocks/items                 |
| **Entity Culling**   | Skip rendering off-screen entities                        |
| **Dynamic FPS**      | Lower FPS when Minecraft is backgrounded                  |
| **NoisiumForked**    | Faster world generation when exploring                    |
| **FerriteCore**      | Lower memory usage — fewer OOM crashes                    |

**ModernFix critical setting**: `mixin.perf.dynamic_resources = true` in `config/modernfix-mixins.properties` — biggest single launch-time speedup. Disable only if you see missing textures.

---

### Infrastructure

#### Chunk Loaders

Keeps chunks loaded when you're far away or in another dimension.

| Type                | Coverage            | Use                       |
|---------------------|---------------------|---------------------------|
| Single Chunk Loader | 1 chunk             | One machine or farm       |
| Spotloader          | Handheld, temporary | Explore nearby            |
| Multi Chunk Loader  | 3×3 chunks          | Factory complex or colony |

**How**: Craft (check EMI — iron + redstone + ender pearl), place, right-click to toggle. Colored border shows loaded area.

**Placement priority** (late game):

1. Main base (ME drive, Mekanism induction matrix, Create power core) — Multi Chunk
2. MineColonies colony — Single or Multi
3. Mining outposts (Digital Miner) — Single
4. Other dimensions — Single per outpost

No performance concern with a dozen loaders on a modern CPU.

---

#### Chunky — World Pregenerator

Chunky pregenerates chunks so your world has no exploration stutter, lag spikes from new terrain, or Distant Horizons LOD gaps. Run once per world before serious play.

**First world setup**:

Open chat (`T`) and run:

```
/chunky radius 5000
/chunky start
```

This generates a 5000-block radius circle around your spawn point. On a modern CPU with NoisiumForked, this takes ~15-30 minutes. The world border expands as it works — you'll see chunk count progress in chat. Let it finish before exploring far from spawn.

**Checking status**: `/chunky status` shows progress, speed, estimated time remaining.

**Pausing/resuming**: `/chunky pause` and `/chunky continue`.

**Continue on Restart**: If you pause or leave a generation task running, Chunky can resume automatically every time you load the world. To enable this, edit `config/chunky/config.json`:

```
"continue-on-restart": false → true
```

Any active task will now resume by itself whenever you open the world. This is the recommended approach for single-player — the task resumes the moment you load the world, no manual `/chunky continue` needed.

**Distant Horizons + Chunky**: while pre-generating, set DH to Distant Generation ON, Distant Generator Mode `PRE_EXISTING_ONLY`, and CPU Load Low/Balanced so DH converts Chunky's chunks into LODs as they generate. Switch back to the default generator mode and raise CPU Load when Chunky finishes. Full workflow in [First Launch Checklist §5](#5-chunky--world-pregeneration).


---

<!--raw-typst #pagebreak() -->

## Wave 0.5 — Player Experience

All the visual polish, UI improvements, inventory tools, storage, travel, trading, and quality-of-life features that make the game feel great.

### Visual & Client QoL

| Mod                                                                                                               | Role                                                                                           |
|-------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------|
| [LambDynamicLights](https://www.curseforge.com/minecraft/mc-mods/lambdynamiclights)                               | Dynamic lighting                                                                               |
| [BetterF3](https://www.curseforge.com/minecraft/mc-mods/betterf3)                                                 | Customizable debug HUD                                                                         |
| [Sound Physics Remastered](https://www.curseforge.com/minecraft/mc-mods/sound-physics-remastered)                 | Realistic sound                                                                                |
| [AmbientSounds](https://www.curseforge.com/minecraft/mc-mods/ambientsounds)                                       | Nature ambiance (birds, wind, water)                                                           |
| [The Immersive Music Mod](https://www.curseforge.com/minecraft/mc-mods/the-immersive-music-mod)                   | 147 new biome/structure-based songs, vanilla silence gaps preserved                            |
| [Immersive UI](https://www.curseforge.com/minecraft/mc-mods/immersive-ui)                                         | Animated UI, smooth hotbar, item particles                                                     |
| [Immersive Hotbar](https://www.curseforge.com/minecraft/mc-mods/immersive-hotbar)                                 | Animated hotbar slot transitions on pickup/use/swap, XP bar + level-up effects, tooltip animations |
| [Smooth GUI](https://www.curseforge.com/minecraft/mc-mods/smooth-gui)                                             | Slide-in animation when opening GUIs, fade-in background overlay + blur                        |
| [Dark Mode Everywhere](https://www.curseforge.com/minecraft/mc-mods/dark-mode-everywhere)                         | Shader-based dark mode for all GUIs — 3 darkness levels, toggleable in-game                    |
| [Status Effect Bars Reforged](https://www.curseforge.com/minecraft/mc-mods/status-effect-bars-reforged)           | Duration bars on status effect icons in HUD and inventory                                      |
| [Traveler's Titles](https://www.curseforge.com/minecraft/mc-mods/travelers-titles-neoforge)                       | RPG-style titles entering biomes/dimensions                                                    |
| [Better Modlist](https://www.curseforge.com/minecraft/mc-mods/better-modlist-neoforge)                            | Enhanced mod list screen with badges/categories                                                |
| [Better Third Person](https://www.curseforge.com/minecraft/mc-mods/better-third-person)                           | Independent 360° camera rotation in third-person view                                          |
| [Countered's Smooth F5](https://modrinth.com/mod/countereds-smooth-f5)                                           | Smooth third-person camera transitions on F5 — cinematic, configurable                         |
| [Tooltip Overhaul](https://www.curseforge.com/minecraft/mc-mods/tooltip-overhaul)                                 | Modern, sharp tooltip rendering with equipment compare                                         |
| [First Person Model](https://www.curseforge.com/minecraft/mc-mods/first-person-model)                             | Full body rendering in first-person view (requires Not Enough Animations)                      |
| [3D Skin Layers](https://www.curseforge.com/minecraft/mc-mods/skin-layers-3d)                                     | Renders player skin layers (jackets, hats) with 3D depth                                       |
| [Presence Footsteps](https://www.curseforge.com/minecraft/mc-mods/presence-footsteps-neoforge)                    | Block-aware footstep sounds for every surface type                                             |
| [Particular Reforged](https://www.curseforge.com/minecraft/mc-mods/particular-reforged)                           | Ambient particles: 3D water splashes, fireflies, falling leaves, cave dust, waterfall cascades |
| [Particle Rain](https://www.curseforge.com/minecraft/mc-mods/particle-rain)                                       | Replaces default weather with particle effects: angled rain, desert sandstorms, fog, wind      |
| [Swinging Lanterns](https://www.curseforge.com/minecraft/mc-mods/swinging-lanterns)                               | Subtle swinging movement on lanterns and attached chains — makes builds feel alive             |
| [Wakes Reforged](https://www.curseforge.com/minecraft/mc-mods/wakes-reforged)                                     | Realistic water wakes and splashes when traveling on water                                     |
| [Sounds](https://www.curseforge.com/minecraft/mc-mods/sound)                                                      | 170+ new sound effects for UIs, items, blocks, actions                                         |
| [Better Days](https://www.curseforge.com/minecraft/mc-mods/betterdays)                                            | Customizable day/night cycle length, enhanced sleep                                            |
| [Better Safe Bed](https://www.curseforge.com/minecraft/mc-mods/better-safe-bed)                                   | Prevents mobs that can't reach you from blocking sleep — chill-rule essential                  |
| [Beautiful Enchanted Books [Mod Edition]](https://www.curseforge.com/minecraft/mc-mods/beautiful-enchanted-books) | Unique textures per enchantment book type — standalone mod, no resource pack needed            |
| [Overflowing Bars](https://www.curseforge.com/minecraft/mc-mods/overflowing-bars)                                 | Expanded health, armor, and toughness bars beyond vanilla limits                               |
| [Leave My Bars Alone](https://www.curseforge.com/minecraft/mc-mods/leave-my-bars-alone)                           | Keeps food/health/armor bars visible while riding mounts — requires Puzzles Lib                |
| [Cherished Worlds](https://www.curseforge.com/minecraft/mc-mods/cherished-worlds)                                 | Favorite/pin worlds to top of list, prevent accidental deletion                                |
| [Eating Animation](https://www.curseforge.com/minecraft/mc-mods/eating-animation-forge)                           | First-person eating/drinking animation — food moves to mouth and shrinks                       |
| [Camera Overhaul](https://www.curseforge.com/minecraft/mc-mods/cameraoverhaul)                                    | Camera tilting, screen shakes, mouselook roll, idle sway — satisfying movement feedback        |
| [Real Camera](https://www.curseforge.com/minecraft/mc-mods/real-camera)                                          | Realistic first-person camera — bind view to head/body part, FPV model rendering, configurable |
| [Dynamic Crosshair](https://www.curseforge.com/minecraft/mc-mods/dynamic-crosshair)                               | Context-aware crosshair — hides/shows/changes style based on what you're looking at or holding |
| [\[DLS\] Dark Loading Screen](https://www.curseforge.com/minecraft/mc-mods/dls-dark-loading-screen/files/7425971) | Replaces the default bright-red loading screen with a dark version — easier on the eyes        |
| [Cosy Critters & Creepy Crawlies](https://www.curseforge.com/minecraft/mc-mods/cosy-critters)                     | Ambient atmospheric animals — birds, bugs, and critters that bring the world to life           |
| [Foxified Dense Flowers](https://www.curseforge.com/minecraft/mc-mods/foxified-dense-flowers)                     | Renders multiple flowers per block in flower fields for denser, more natural-looking flora     |
| [Effectual](https://www.curseforge.com/minecraft/mc-mods/effectual)                                               | Atmospheric effects and decorative particles — steam breath, footprints, cave dust, sparks     |

### Inventory & UI

| Mod                                                                                           | Role                                                               |
|-----------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
| [EMI](https://www.curseforge.com/minecraft/mc-mods/emi)                                       | Recipe viewer with recipe trees                                    |
| [Jade](https://www.curseforge.com/minecraft/mc-mods/jade)                                     | Block info HUD                                                     |
| [Jade Addons (Neo/Forge)](https://www.curseforge.com/minecraft/mc-mods/jade-addons-forge)     | Extra Jade info panels                                             |
| [JadeColonies](https://www.curseforge.com/minecraft/mc-mods/jadecolonies)                     | Jade tooltips for MineColonies — worker stats, hut info, DO blocks |
| [JourneyMap](https://www.curseforge.com/minecraft/mc-mods/journeymap)                         | Real-time minimap + full-screen world map, waypoints, entity radar |
| [JourneyMap Integration](https://www.curseforge.com/minecraft/mc-mods/journeymap-integration) | Shows Waystones as icons on JourneyMap                             |
| [AppleSkin](https://www.curseforge.com/minecraft/mc-mods/appleskin)                           | Food hunger/saturation overlay                                     |
| [Immersive Armor HUD](https://www.curseforge.com/minecraft/mc-mods/immersive-armor-hud)       | Armor type icons + durability above armor bar — shows what's about to break                   |
| [Inventory Essentials](https://www.curseforge.com/minecraft/mc-mods/inventory-essentials)     | Drag-to-transfer, single-item moves, sorting                       |
| [ClientSort](https://www.curseforge.com/minecraft/mc-mods/clientsort)                         | Sort (4 modes), Fill Stacks, Transfer Matching, customizable button positions — requires Cloth Config API |
| [Advancement Plaques](https://www.curseforge.com/minecraft/mc-mods/advancement-plaques)       | Glowing plaque advancement popups with copper/silver/gold borders  |
| [Shulker Box Tooltip](https://www.curseforge.com/minecraft/mc-mods/shulkerboxtooltip)         | Preview shulker box contents on hover                              |
| [Item Borders](https://www.curseforge.com/minecraft/mc-mods/item-borders)                     | Colored borders on items based on rarity                           |
| [Loot Journal](https://www.curseforge.com/minecraft/mc-mods/loot-journal-neoforge)            | Animated item pickup notifications                                 |
| [Day Counter](https://www.curseforge.com/minecraft/mc-mods/day-counter)                       | Day counter HUD — displays at dawn via ActionBar, fades after. Also supports Title/Subtitle/Chat display. Calendar block and reward system available but fully optional. |
| [Hud Texts](https://www.curseforge.com/minecraft/mc-mods/hud-texts)                           | HUD text framework — dependency for Day Counter (from V3.4)       |

**Day Counter config** (config/ags_day_counter.toml — tracked override):

| Setting                               | Value      | Why                                                     |
|---------------------------------------|------------|---------------------------------------------------------|
| `[UI."New Day Text"]` Display         | `actionbar` | New-day message appears and auto-fades after ~3s       |
| `[Sound]` Enabled                     | `false`    | No sound notification — just the text                   |
| `[Rewards.*]`                         | zeroed     | No day-based rewards — too gamey                        |
| `[UI.Scoreboard]` / `[UI.Playerlist]` / `[UI.Name]` Enabled | `false` | No persistent HUD or nametag element — only the flash |
| `[Date]` Enabled                      | `false`    | No calendar date — just day count                       |
| `[Block]` / `[Item]` Enabled          | `false`    | No calendar block or item                               |
| `[UI."Disabled Feature Text"]` Enabled | `false`   | No "feature is disabled" nag text                       |

This gives you exactly: a brief "Day 42" (or similar) on the ActionBar at dawn that appears and fades. No HUD element, no sounds, no rewards, no calendar block. Days count in the background.

| [Better Advancements](https://www.curseforge.com/minecraft/mc-mods/better-advancements)       | Overhauled advancements UI with editor/pan/zoom                    |
| [Polymorph+](https://www.curseforge.com/minecraft/mc-mods/polymorph-plus)                     | Choose crafting result when recipes conflict                       |
| [Traveler Tool Belt](https://www.curseforge.com/minecraft/mc-mods/traveler-tool-belt)         | Tool radial menu — hold R for quick-swap, 2→9 slots via upgrades   |
| [Controlling](https://www.curseforge.com/minecraft/mc-mods/controlling)                       | Search keybinds by name, show only conflicting binds, list available keys — no dependencies   |
| [EMIffect](https://www.curseforge.com/minecraft/mc-mods/emiffect)                             | Status effects in EMI browser — descriptions, sources, colors for all modded effects |

### Storage & Travel

| Mod                                                                                             | Role                          |
|-------------------------------------------------------------------------------------------------|-------------------------------|
| [Sophisticated Storage](https://www.curseforge.com/minecraft/mc-mods/sophisticated-storage)     | Upgradable barrels/chests     |
| [Sophisticated Backpacks](https://www.curseforge.com/minecraft/mc-mods/sophisticated-backpacks) | Portable inventory            |
| [Waystones](https://www.curseforge.com/minecraft/mc-mods/waystones)                             | Fast travel between waypoints |
| [GraveStone Mod](https://www.curseforge.com/minecraft/mc-mods/gravestone-mod)                   | Keep inventory on death       |

### Utility & QoL

| Mod                                                                     | Role                                                                                                  |
|-------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------|
| [Easy Anvils](https://www.curseforge.com/minecraft/mc-mods/easy-anvils) | Overhauled anvils — persistent items, reduced prior work penalties, free renaming, repair with blocks |

**Easy Anvils** requires **Puzzles Lib** — already in Wave 5 as a Mutant Monsters dependency. No additional mods needed.

### Village & Trading

| Mod                                                                                                                     | Role                                                                                                                               |
|-------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------|
| [Dynamic Villager Trades Neoforge](https://www.curseforge.com/minecraft/mc-mods/dynamic-villager-trades-neoforge) 1.0.0 | Dynamically changing villager trades — villagers specialize in what you buy from them, reducing the need for massive trading halls |
| [Improved Village Placement](https://www.curseforge.com/minecraft/mc-mods/improved-village-placement)                   | Forces villages to spawn on flat terrain — prevents cliff-side and underwater villages                                             |

### Configuration — Village & Trading

**Dynamic Villager Trades** (`config/dynamicvillagertraders.properties`):

- `global_randomness` = `0.7` (recommended, default 1.0) — Lower values make villagers settle on specific trades faster; higher values increase time to get desired trades. Multiplied by group randomness in the datapack.
- `refresh_delay` = `1` (recommended, default 0) — Number of restocks between trade changes. `1` means trades change every other restock, giving you time to use existing trades before they rotate. Trades always change on level-up regardless.
- `no_book_duplicates` = `true` — Prevents librarians from selling the same enchant at different levels simultaneously.
- `enchant_repair_compat` = `false` — Adds Curse of Vanishing to every book sold by librarians (for Enchant & Repair compatibility). Keep disabled unless that mod is added.

### Dependencies — Wave 0.5

| Mod                                                                               | Role                                                                                      | Required By                                                              |
|-----------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------|--------------------------------------------------------------------------|
| [Architectury API](https://www.curseforge.com/minecraft/mc-mods/architectury-api) | Cross-loader compatibility — lets Fabric mods run on NeoForge                             | First Person Model, Eating Animation, Effectual, multiple Wave 1-3+ mods |
| [Iceberg](https://www.curseforge.com/minecraft/mc-mods/iceberg)                   | Library for config-driven UI mods                                                         | Advancement Plaques                                                      |
| [Polytone](https://www.curseforge.com/minecraft/mc-mods/polytone)                 | Custom block colors, lightmaps, biome colors — Optifine format support for resource packs | — (dependency orphaned — Rainbow's Foliage removed)                      |
| [Lithostitched](https://www.curseforge.com/minecraft/mc-mods/lithostitched)       | Worldgen modifier API — handles village placement hooks                                   | Improved Village Placement                                               |
| [TLib (Take's Lib)](https://www.curseforge.com/minecraft/mc-mods/tlib)            | Library for atmospheric effects                                                           | Effectual                                                                |

**Lithostitched** is a worldgen library that Improved Village Placement uses to hook into the village generation system. Without it, IVP crashes at startup with a `NoClassDefFoundError` for `AddWorldgenModifiersEvent`. This mod was not declared as a dependency in IVP's metadata — install it manually.

**Architectury API** is a lightweight library with no user-visible features — install once and forget. It provides the abstraction layer that lets Fabric-origin client QoL mods (First Person Model, Eating Animation) run seamlessly on NeoForge. Without it, these mods crash at startup with a missing-dependency error.

**Install**: In XMCL, search `Architectury API` in the Mods tab and add it. Alternatively, download from CurseForge and drop the `.jar` into `mods/`. No config needed. The game loads it silently — you'll never see it in-game, but EMI's mod list confirms it's present.

### Configuration — Wave 0.5

**Waystones** (`config/waystones-common.toml`):

- `inventoryButton` = `"any"` — Opens waystone menu from inventory without a keybind.
- `enableCosts` = `false` — Free teleportation.

**Loot Journal** (`config/obscuria/loot_journal-client.toml`):

- `trackItemPickups` = `true` — Logs all item pickups for per-session statistics.
- `trackXpPickups` = `true` — Logs all XP pickups for per-session statistics.

**Better Days** (`config/betterdays-common.toml`):

Time speed can be set via three modes (`speedMethod`):

| Mode                | How it works                                                              | Best for                                                |
|---------------------|---------------------------------------------------------------------------|---------------------------------------------------------|
| `MINUTES` (default) | Set `daySpeedMinutes` and `nightSpeedMinutes` in real minutes             | Simple: 10 min day / 10 min night                       |
| `RATIO`             | Multiplier relative to vanilla (1.0 = vanilla 20min cycle)                | Fine control: 0.5 = 40 min, 2.0 = 10 min                |
| `SEASON`            | Day length varies by season using `seasonDayMinutes` and `seasonLatitude` | Immersive — day shortens in winter, lengthens in summer |

**Recommended settings** (`speedMethod = "SEASON"`):

> **⚠ CRITICAL**: These settings MUST be edited directly in `config/betterdays-common.toml`. The in-game config screen (Mod List → Better Days → Config) does not support the `SEASON` mode and **will silently overwrite** your config back to `MINUTES` mode if opened. **Do not open Better Days' in-game config.**

- `speedMethod = "SEASON"` — Day length varies by Serene Seasons sub-season. Summer days are longer, winter days shorter.
- `seasonDayMinutes = 20.0` — Total day+night cycle in real minutes (vanilla baseline). 20 = same average length as vanilla.
- `seasonLatitude = 48.0` — Central Europe latitude. Higher values = more extreme day-length swings between seasons.
- `dayStart = 23500` — Dawn at time 23500 (default, correct range 22300–24000).
- `nightStart = 13000` — Dusk at time 13000 (default).

**Sleep** — smooth time acceleration:

- `enableSleepFeature = true` — Smooth acceleration while in bed.

**Time effects** — all disabled. Leave them off:

- `weatherEffect = "SLEEPING"` — Lets rain/storms finish faster when sleeping.
- `potionEffect = "NEVER"` — Keep off. Speeding potion timers is confusing.
- `hungerEffect = "NEVER"` — Keep off. Speeding hunger is annoying.
- `blockEntityEffect = "NEVER"` — Keep off. Speeding furnaces/hoppers desyncs items and wastes fuel.
- `cropEffect = "NEVER"` — Keep off. Conflicts with Serene Seasons crop cycle timers.
- `randomTickEffect = "NEVER"` — Keep off. Avoids crop desync and random tick inconsistencies.

**Dynamic Crosshair** (configurable in-game via Mod List → Dynamic Crosshair → Config, or `config/dynamiccrosshair.json`):

Dynamic Crosshair uses **YACL** (already in the pack) for its in-game config screen. Recommended settings:

| Setting                        | Value            | Effect                                                                                          |
|--------------------------------|------------------|-------------------------------------------------------------------------------------------------|
| `hideWhenNotLookingAtAnything` | `true`           | Hides crosshair when pointing at sky/air — clean UI during building/exploration                 |
| `showWhenLookingAtBlock`       | `true`           | Reappears when looking at a block — signals interactability                                     |
| `showWhenLookingAtEntity`      | `true`           | Reappears when looking at mobs/players — signals combat target                                  |
| `showWhenHoldingTool`          | `true`           | Shows crosshair when mining with pickaxe/axe/shovel — shows exact breaking target               |
| `showWhenHoldingWeapon`        | `true`           | Shows crosshair in combat with any weapon                                                       |
| `crosshairStyle`               | `"CONTEXTUAL"`   | Changes crosshair shape per context (default dot, block outline for mining, reticle for combat) |
| `crosshairColor`               | `"ENTITY_BASED"` | White for neutral/block, red for hostile entities, green for interactable entities              |

No keybind changes needed — the mod works fully through context detection. YACL provides a searchable settings screen.

**Dark Mode Everywhere** (`config/darkmodeeverywhere-client.toml`):

- `darkModeLevel` = `1` — Darkness level: 0 (light), 1 (medium, default), 2 (full dark). Change in-game via the button in the bottom-left corner of any GUI.
- `methodShaderDump` = `false` — Set to `true` temporarily if a GUI looks broken, to log which methods the shader is targeting.

**Known issue — double text**: Some mods render text shadows that get doubled by the dark shader. Fix: edit `darkmodeeverywhereshaders.json` (create in `config/` or via a resource pack) and change `darkColorRecplacement` from `16777215` to `4868682` (all 3 occurrences). Only needed if you see doubled text on specific screens.

All the visual polish, UI improvements, inventory tools, storage, travel, trading, and quality-of-life features that make the game feel great. Install alongside Wave 0.

### Visual & Client QoL — What to Expect

These mods change how the game looks and feels. All are client-side and work immediately.

#### LambDynamicLights

Hold a torch, glowstone, or lantern → it emits light around you. Works in off-hand.
**Pro tip**: Hold torch in off-hand while mining. No more placing torches every 5 blocks. Toggle with `Ctrl+L`.

#### BetterF3

Press `F3` for a cleaner debug HUD. Customize in Mod Menu → BetterF3 → Config. Toggle FPS, coords, biome, light level without clutter.

#### Sound Physics Remastered

Sound behaves realistically — muffled through walls, echo in caves, directional audio. Works automatically.

#### AmbientSounds

Biome-aware ambient audio — birds in forests, wind in mountains, water near rivers. Automatic, no config.

#### The Immersive Music Mod

147 new biome/structure-aware songs with natural silence gaps (unlike Constant Music which forces a 2-minute fade). Plays like vanilla but with much more variety.

#### Immersive UI

Smooth hotbar sliding, item pickup particles, animated tooltips, menu transitions. Pure polish.

#### Immersive Hotbar

Animated hotbar item slots bounce/shrink on pickup, use, and swap. Animated tooltip on item switch or hover. Animated XP bar and level-up effects make RPG progression feel impactful. Configurable animations via Mod Menu (YACL, already in pack). Complements Immersive UI — IUI animates the hotbar *selector bar*; Immersive Hotbar animates the *slot contents*.

#### Smooth GUI

Smooth slide-in animation when opening any GUI, with fade-in background overlay and blur. Pure cosmetic — makes inventory/chest/crafting screens feel polished. No dependencies, no config needed.

#### Status Effect Bars Reforged

Small progress bars on status effect icons showing remaining duration. Config via Cloth Config. Auto-hides for beacon effects.

#### Traveler's Titles

RPG-style title cards when entering biomes, dimensions, or deep caves/high peaks. No config needed.

#### Better Modlist

Enhanced mod list screen with badges (library/core/addon), categories, and search.

#### Better Third Person

Decouples camera from character in third-person. Look around independently while walking any direction. Essential for combat awareness and scenic building.
**How**: Bind a toggle key in Controls → Better Third Person. Once active, character moves independently of camera.

#### Tooltip Overhaul

Rounded corners, sharper text, scrollable tooltips, 3D item previews on hover. No config.

#### First Person Model + 3D Skin Layers

Shows your full body in first-person view, with 3D depth on skin layers (jackets, hats). Requires Not Enough Animations (auto-installed dependency).

#### Presence Footsteps

Block-aware footstep sounds for every surface — wood creaks, gravel crunches, stone clacks. Works with Sound Physics for realistic acoustics.

#### Particular Reforged

Ambient visual effects: 3D water splashes, waterfall cascades, fireflies at dusk, falling leaves, cave dust, underwater bubbles, rain ripples. Toggle individual effects in `config/particular.json` if any feel excessive.

#### Particle Rain

Replaces vanilla rain and snow with angled particle effects (wind-blown during storms), adds sandstorms to deserts and dry biomes (including modded), plus atmospheric fog and wind. Client-side only, no gameplay impact — purely cosmetic weather enhancement. Configurable via `/particlerain` in-game menu or Mod List → Config. By PigCart, same author as Cosy Critters (already in this wave).

#### Swinging Lanterns

Adds subtle physics-based swaying to hanging lanterns and their chains. Makes builds feel alive and dynamic — lanterns gently rock as if stirred by a breeze. Client-side only, works on vanilla servers. No dependencies, no config needed.

#### Wakes Reforged

Realistic water wakes and splashes when traveling on water. Works with Small Ships (Wave 2) and vanilla boats.

#### Sounds

170+ new sound effects for UI clicks, item drops, eating, achievements, block actions. Every vanilla action feels tactile. Customize individually in Mod List → Sounds → Config or `config/sounds/`. Conflicts with nothing — complements Sound Physics (environment) perfectly.

#### Better Safe Bed

Mobs that can't reach you no longer block sleep. Chill-rule essential.

#### Beautiful Enchanted Books [Mod Edition]

Unique textures per enchantment type — Protection books look different from Sharpness books. Standalone mod, no resource pack needed.

#### Overflowing Bars

Health, armor, and toughness bars expand beyond vanilla limits. Essential once you stack Apotheosis bonuses and skill tree HP.

#### Leave My Bars Alone

Keeps your food, health, and armor bars visible while riding mounts. Vanilla replaces your bars with the mount's health — this fixes that. Essential for exploration on horses, aircraft, ships. Requires Puzzles Lib (already in pack). No config needed.

#### Cherished Worlds

Favorite/pin worlds to the top of your list, prevent accidental deletion. Right-click a world in the list to favorite it.

#### Day Counter

Brief "Day N" ActionBar message at dawn that appears and auto-fades. Pack config (`config/ags_day_counter.toml`) keeps only the new-day notification — no sound, HUD elements, rewards, or calendar block.

#### Eating Animation

First-person eating/drinking animation — food moves to your mouth and shrinks. Works with Farmer's Delight foods.

#### Camera Overhaul

Camera tilting on movement, screen shakes on explosions, mouselook roll, idle sway. Satisfying feedback. Configurable in `config/cameraoverhaul-client.toml`.

#### Real Camera

Realistic first-person camera: the view binds to your head (or another body part) with configurable position/rotation, and your player model renders in first-person — you see your body below you instead of a floating camera. `F6` toggles the effect; the Model View Screen (bind a key in Controls → Real Camera) binds the camera, hides obstructing model parts, and previews the result. Requires Cloth Config (already in pack). **Version pin**: `realcamera-1.21.1-neoforge-0.7.8-beta` (2026-06-28, client-only, no required deps).

- **Compatible** (all already in pack): First Person Model, Not Enough Animations, Better Combat, Camera Overhaul. Works with Iris + Complementary shaders.
- **Caveat**: GeckoLib-rendered armor is incompatible — none in the pack (GeckoLib is present only for Create: Gunsmithing items; Protection Pixel armor uses Kleiders Custom Renderer API). [VERIFY] Protection Pixel armor renders correctly with model binding after test launch.

#### [DLS] Dark Loading Screen

Replaces the bright-red loading screen with a dark version. No config.

#### Cosy Critters & Creepy Crawlies

Adds ambient atmospheric creatures: birds flock in the sky and land on elevated blocks, bugs scuttle through grass, and other critters bring the world to life. Birds scatter when you or a vehicle approach. **Client-side only** — no server install needed. All effects individually toggleable via `/cosycritters` command or the mod list config menu. Zero performance impact (97KB).

#### Foxified Dense Flowers

Renders multiple flowers per block in flower fields — the more flowers adjacent to each other, the denser the display. Makes flower forests and plains feel lush and overgrown without adding new flowers or changing worldgen. **Client-side only**. Works with existing vanilla and modded flowers.

#### Effectual

Atmospheric particle effects that make the world feel more alive: steam breath in cold biomes, bubbles underwater, drips when surfacing, fire sparks and lamp glows, footprints in snow, cave dust, steam columns where water meets lava, minecart sparks, and more. **Compatible with Particular Reforged** — any overlapping effects (e.g., cave dust) can be disabled individually via `config/effectual-client.toml`. Requires **Architectury API** (already in pack), **Cloth Config API** (already in pack), and **TLib** (auto-installed Wave 0.5 dependency). Client-side only, MIT license. By iMeeTake. 1.6M downloads.

---

### Inventory & UI — Your Daily Tools

#### EMI

Your primary learning tool. **Hover any item, press `R`** to see how to craft it. **Press `U`** to see what it's used in. Every mod in future waves is learned through EMI first. EMI also shows recipe trees — break down complex crafts (Create sequenced assembly, Mekanism ore processing chains) into every step, showing base ingredients and leftovers.

#### Jade + Jade Addons

Look at any block → HUD shows block name, mod source, machine status, crop growth, chest contents. **Jade Addons** extends this with panels for Create (SU/RPM), Mekanism (energy/gas), AE2 (channel info).

**Pro tip**: Keep Jade enabled. Fastest way to check if a machine is running or a crop is ready.

**Conflict fix**: Main Menu → Mods → Jade → Config → Mod Settings → Display Bosses → OFF (avoids conflict with Enhanced Boss Bars).

#### JourneyMap + JourneyMap Integration

- **Minimap** — top-right corner, auto-maps, shows entity dots
- **Fullscreen map** (`J`) — zoomable world map with biome colors, terrain height, waypoints
- **Waypoints** — `B` at your location, or set on the map. Custom icons, colors, groups
- **Entity radar** — shows nearby mobs/animals on minimap
- **Integration** — your placed Waystones appear as icons on JourneyMap automatically

**Pro tip**: `J` → right-click to set temporary waypoint. Double-click a waypoint name to edit it.

#### AppleSkin

Hover over food → see exact hunger and saturation values. Pre-eat preview shows dashed outlines on your hunger bar. Saturation overlay shows the hidden second layer. No config.

#### Immersive Armor HUD

Miniaturized armor type icons above the armor bar with durability indicators — shows which pieces are about to break at a glance without opening inventory. Vanilla-friendly 7×7 pixel icons. Works with modded armor (Mekanism, Apotheosis gear). No dependencies, no config needed.

#### Inventory Essentials

Drag-to-transfer, single-item moves, sorting:

- `Ctrl+click` a stack → moves one item
- `Shift+Ctrl+click` → moves all items of that type
- Sort buttons on chest/inventory GUIs

**Note**: ClientSort (below) handles sorting with 4 sort modes, Fill Stacks, and Transfer Matching. Inventory Essentials remains for drag-to-transfer and single-item moves — its sorting is superseded but not conflicting.

#### ClientSort

Versatile inventory sorting with 4 sort modes:

- **Sort** (default): creative inventory tab order — middle-click to trigger
- **Shift+Sort**: descending order of quantity
- **Ctrl+Sort**: alphabetical order
- **Alt+Sort**: ascending order of item ID

Additional operations:

- **Fill Stacks**: top up partial stacks in the other inventory using items from this one
- **Transfer Matching**: move all matching items between inventories in one click
- **Button Editor**: right-click any trigger button to reposition or enable/disable

All operations can be triggered via buttons (shown on inventory/crafting GUIs) or keybinds. Requires **Cloth Config API** (already in pack for config). No overlap conflict with Inventory Essentials — IE handles drag-to-transfer and single-item moves; ClientSort handles sorting and bulk operations.

#### Shulker Box Tooltip

Hover over a shulker box in inventory → preview its contents. No config.

#### Item Borders

Colored rarity borders on items. Common = gray, Uncommon = green, Rare = blue, Epic = purple, Mythic = gold. Helps spot good drops instantly.

#### Loot Journal

Animated pickup notifications near your hotbar. Session summary on disconnect shows what you gained/lost. Config in Mod Menu → Loot Journal:

- `trackItemPickups = true`
- `trackXpPickups = true`
- `showSummaryOnDisconnect = true`

#### Better Advancements

Overhauled advancements UI — larger screen, pan/zoom, tab sorting, search. Open with `L`. Pairs with Advancement Plaques (glowing popup banners).

#### Advancement Plaques

Glowing advancement plaques replace vanilla popups — copper for Tasks, silver for Goals, gold for Challenges. Requires **Iceberg** (auto-installed). Configurable position, distance, and whitelist filter.

#### Polymorph+

When two mods have conflicting recipes for the same item, a small button appears next to the crafting output. Click to cycle recipes. Persists per ingredient combination.

#### Traveler Tool Belt

Quick-swap tool access without opening your inventory. Hold **R** (configurable in Controls) to open a radial menu, then select the tool you need. The belt renders as a subtle layer on your player model.

- Starts with **2 slots**, expandable to **9** by upgrading at a crafting table
- Holds any non-stackable item by default (tools, weapons, weapons)
- Integrates with Curios API belt slot (already in pack) — equip from Curios menu or inventory
- Equip in the belt slot, or keep it in your inventory if Curios is unavailable

#### Controlling

Search keybinds by name in the Controls menu. "Show Conflicts" button highlights only conflicting binds so you can fix them fast. Lists all available (unbound) keys. Essential for a 150+ mod pack — the vanilla keybind menu without Controlling is a wall of unsortable text. No dependencies, no config needed.

---

#### EMIffect

Status effects are browsable in EMI — search any effect name to see its description, what mod adds it, and its icon colors. Works like a built-in wiki for status effects from Apotheosis, Relics, Simply Swords, Runes, Brewin' And Chewin', and any mod that ships JEED-format descriptions. Complements Status Effect Bars Reforged — SEBR shows active effects on your HUD; EMIffect lets you look up any effect in EMI whether you have it or not. Client-side only, no dependencies beyond EMI, no config needed.

### Storage & Travel

#### Sophisticated Storage + Backpacks

- **Barrel** — craft: 1 chest + 8 planks. Upgrade with iron/gold/diamond/netherite upgrades for more slots, pickup, magnet, filter, composting
- **Backpack** — equip in chest armor slot, press `B` to open. Upgradable like barrels
- **Create Integration** (auto-installed) — Sophisticated barrels and backpacks work fully on Create contraptions: upgrades, automation, inventory settings all function while moving

#### Waystones

Craft a waystone → right-click to claim. Use a Warp Stone (ender pearl + amethyst) to teleport from anywhere. **No XP costs** (`enableCosts = false` in config). Set keybind to `Ctrl+Shift+W`.

#### GraveStone Mod

Die → grave spawns with all your items. Right-click the grave to retrieve. No item loss, no despawning, 24-hour protection.

---

### Village & Trading

#### Dynamic Villager Trades

Villager trades change dynamically — villagers specialize in what you buy from them. No more massive trading halls.

**Config** (`config/dynamicvillagertraders.properties`):

- `global_randomness = 0.7` — faster specialization
- `refresh_delay = 1` — trades change every other restock
- `no_book_duplicates = true` — no duplicate enchantment books

#### Improved Village Placement

Forces villages to spawn on flat terrain. No more cliff-side or underwater villages. No config.

---

### Session Plan — Wave 0.5

| Session                         | Goal                                                                                                                                                                                               |
|---------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Session 1 — Setup**           | Launch, set keybinds, configure Distant Horizons (LOD 128-256, Medium quality). Install Complementary Unbound shader. Enable Fresh Animations texture pack. Walk around spawn to generate LOD data |
| **Session 2 — Survival basics** | Punch trees, build a starter shack, find food, get iron. Place your first Waystone. Craft a Sophisticated Storage barrel. Craft a backpack                                                         |
| **Session 3 — Comfort**         | Explore nearby terrain. Find a village. Set up a bed. Light up your base perimeter. Start noticing Traveler's Titles when entering new biomes                                                      |

---

<!--raw-typst #pagebreak() -->

## Wave 1 — Tech (Create + Mekanism + AE2)

The classic tech trio. Create handles mechanical automation, Mekanism handles industrial processing, AE2 handles digital storage and autocrafting.

### Core Tech

| Mod                                                                                         | Role                                                                                                                                  |
|---------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------|
| [**Create**](https://www.curseforge.com/minecraft/mc-mods/create)                           | Mechanical automation — rotational power, water wheels, windmills, gear trains, conveyor belts, deployers, sequenced crafters, trains |
| [**Mekanism**](https://www.curseforge.com/minecraft/mc-mods/mekanism)                       | Industrial processing — ore multiplication (2x→5x), digital miner, superdense energy storage, MekaSuit (flight, invulnerability)      |
| [**Mekanism Generators**](https://www.curseforge.com/minecraft/mc-mods/mekanism-generators) | Power generation — heat, wind, solar, gas-burning, bio generators, fission reactor, fusion reactor, turbine                           |
| [**AE2**](https://www.curseforge.com/minecraft/mc-mods/applied-energistics-2) 19.2.17       | Digital storage — ME drives, autocrafting, P2P tunnels, spatial storage. The storage backbone                                         |
| [**Applied Mekanistics**](https://www.curseforge.com/minecraft/mc-mods/applied-mekanistics) | AE2-Mekanism integration — autocrafting for chemical/gas/fission/fusion recipes, ME chemical storage, P2P chemical tunnels            |

**Note**: Mekanism v10 for 1.21.1 NeoForge is split into separate modules. **Mekanism** (core) provides machines, processing, cables, and armor. **Mekanism Generators** provides all power generation. Both must be installed.

### Create Addons

| Mod                                                                                                                                   | Role                                                                                                                                                                                    |
|---------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [Create Crafts & Additions](https://www.curseforge.com/minecraft/mc-mods/createaddition) 1.6.0                                        | Electric motors, alternators, rolling mill, wires/rods, silver/electrum — bridges kinetic SU and Forge Energy (FE)                                                                      |
| [Create: Power Grid](https://www.curseforge.com/minecraft/mc-mods/power-grid) 0.5.5.1                                                 | Physics-based electricity simulation — Ohm's law, AC/DC, generators, motors, cables, FE conversion. Separates Create power from SU                                                      |
| [Steam \'n\' Rails NeoForge](https://www.curseforge.com/minecraft/mc-mods/steam-n-rails-neoforge) 0.2.1                               | Expanded train system — new tracks (spruce, monorail), semaphores, conductor mob, coupling/decoupling blocks                                                                            |
| [Create: The Factory Must Grow](https://www.curseforge.com/minecraft/mc-mods/create-industry) (TFMG)                                  | Heavy engineering & oil — crude oil drilling, distillation, diesel/gasoline/LPG engines, steel, aluminum, electricity with voltage                                                      |
| [Mekanism TFMG Compatibility](https://www.curseforge.com/minecraft/mc-mods/mekanism-the-factory-must-grow-compatibility)              | 85+ recipe bridges — deduplicates lead/steel/sulfur, integrates aluminum/plastic into Mekanism chains                                                                                   |
| [TFMG Energy Converter](https://modrinth.com/mod/tfmg-energy-converter) 26.03                                                         | Bidirectional TFMG electricity ↔ FE/AE2 bridge — lets TFMG diesel engines/generators power non-TFMG machines (Mekanism, AE2). Requires Kotlin for Forge                                 |
| [Create: Gunsmithing](https://www.curseforge.com/minecraft/mc-mods/cgs)                                                               | Steampunk firearms integrated with Create — craftable using Create machines. Animated guns, attachments, ammo types. Optional Better Combat compatibility                               |
| [Create Ornithopter Glider](https://www.curseforge.com/minecraft/mc-mods/create-ornithopter-glider)                                   | Mechanical flapping glider with boost-assisted flight — integrates with Create rotational power                                                                                         |
| [Sophisticated Storage Create Integration](https://www.curseforge.com/minecraft/mc-mods/sophisticated-storage-create-integration)     | Full-featured Sophisticated Storage on Create contraptions — upgrades, automation, inventory settings work while moving                                                                 |
| [Sophisticated Backpacks Create Integration](https://www.curseforge.com/minecraft/mc-mods/sophisticated-backpacks-create-integration) | Full-featured Sophisticated Backpacks on Create contraptions — upgrades, automation, inventory settings work while moving                                                               |
| [Create: Train Utilities](https://www.curseforge.com/minecraft/mc-mods/create-trainutilities) 3.0.3                                   | Sliding doors with realistic sounds, platform blocks, station building blocks                                                                                                           |
| [Create Railways Navigator](https://www.curseforge.com/minecraft/mc-mods/create-railways-navigator)                                   | Display boards, route navigation, new schedule entries — search routes and manage train networks                                                                                        |
| [Create: Interiors](https://www.curseforge.com/minecraft/mc-mods/interiors) 0.6.1                                                     | Colored chairs with armrest toggles, tray tables, kelp seats — functional furniture for train cars                                                                                      |
| [Create Train Parts](https://www.curseforge.com/minecraft/mc-mods/create-train-parts) 0.4.1                                           | Crossing gates, sliding windows, train steps, slides — decorative and functional blocks for trains and stations                                                                         |
| [Create: Threaded Trains](https://www.curseforge.com/minecraft/mc-mods/create-threaded-trains)                                        | Performance — runs train pathfinding on a separate thread, prevents tick lag on complex rail networks                                                                                   |
| [Create Better FPS](https://www.curseforge.com/minecraft/mc-mods/create-better-fps)                                                   | Create rendering optimization — up to 50% FPS gain with shaders. Handles addon models, speed controllers, factory gauges, and schematic previews                                        |
| [ColorWheel](https://www.curseforge.com/minecraft/mc-mods/colorwheel)                                                                 | Flywheel + Iris compatibility — renders Create contraptions under shaders. Required for Create to work with Iris. Both Complementary Unbound and Euphoria Patches have official support |
| [Create Slice & Dice](https://www.curseforge.com/minecraft/mc-mods/slice-and-dice)                                                    | Create + Farmer's Delight automation — Slicer (auto Cutting Board), automatic FD Cooking Pot via heated mixing, Sprinkler for fluid-based farming                                       |
| [Create: Dragons Plus](https://www.curseforge.com/minecraft/mc-mods/create-dragons-plus) 1.11.2b                                      | Fan processing expansion — Bulk Coloring, Bulk Freezing, Bulk Ending, Bulk Sanding. Fluid Hatch for tanks. Adds Aether Bulk Enchanting. Library mod for Create addon devs                |
| [Create: Protection Pixel](https://www.curseforge.com/minecraft/mc-mods/protection-pixel)                                           | Create-themed power armor — brass/alloy tiers, per-piece active abilities (AoE, debuff clear, speed→damage), combustion reactor (blaze rods + water). Bridges gear between Mekanism Tools and MekaSuit |
### Create Addon Details

**Create Better FPS** optimizes Create's rendering pipeline — handles addon models (e.g., blaze with straw from Create Crafts & Additions), speed controllers, factory gauges, and schematic previews. Benchmarked 7→35 FPS with 512 waterwheels under shaders. Works alongside ColorWheel: ColorWheel handles Flywheel instance compatibility; Create Better FPS handles everything else.

**ColorWheel** makes Flywheel (Create's rendering engine) compatible with Iris shaders. Without it, Create contraptions either don't render or tank performance under shaders. ColorWheel is the higher-priority install between the two — Create Better FPS is additional optimization on top.

**Create Slice & Dice** automates Farmer's Delight through Create. The **Slicer** acts as an automatic Cutting Board — place a knife or axe inside (right-click), and it registers all FD cutting recipes as mechanical processing. **Automatic cooking** converts FD Cooking Pot recipes into Create heated mixing recipes, so you can pipe ingredients in and collect meals. The **Sprinkler** distributes fluids below it: water for hydration, lava for damage, potions for effects, and Liquid Fertilizer (new fluid) for automatic bonemeal. This bridges Phase 1's food focus with Phase 2's automation — by the time you have Create infrastructure, meal production becomes fully pipeable.

**Create: Dragons Plus** is a library that expands Create's fan processing with Bulk Coloring (dye items via Encased Fan + dye fluid), Bulk Freezing (Powder Snow), Bulk Ending (Dragon's Breath / Dragon Head), and Bulk Sanding (quicksand). Also adds a Fluid Hatch for convenient tank I/O and Aether Bulk Enchanting (enchanting recipes, repair, Moa Egg incubation in the Aether). All features can be toggled individually in config. Required dependency for Create: Shimmer.


#### Create: Protection Pixel

Steampunk power armor built with Create materials. Each armor piece has a unique active ability powered by a waist-slot Combustion Reactor (blaze rods + water as fuel).

**Armor pieces** (brass → alloy tier progression):

| Piece                   | Ability                                                                             | Best for                       |
|-------------------------|-------------------------------------------------------------------------------------|--------------------------------|
| **Plague Helmet**       | Release steam to dispel blindness, darkness, weakness, slowness                    | Exploration, debuff-heavy mobs |
| **Lancer Helmet**       | Speed → damage scaling — the faster you move, the harder you hit                   | Mobility builds                |
| **Hunter Helmet**       | Sensors highlight nearby creatures while sneaking; +luck for finding treasure      | Dungeon crawling               |
| **Breaker Chestplate**  | +damage +attack speed while maintaining protection                                 | DPS builds                     |
| **Magnetic Storm**      | AoE magnetic burst when taking heavy damage or surrounded; pulls ranged attackers  | Crowd control                  |
| **Float Shield**        | Energy shell around user when charged — absorbs incoming damage                    | Tank builds                    |

**How it works**:

1. Craft armor pieces at Create machines (check EMI — requires brass-tier Create infrastructure)
2. Craft a **Combustion Reactor** (waist slot, check EMI) — this powers all equipped armor
3. Feed the reactor **blaze rods + water** (displayed in minutes in the GUI). More blaze rods = longer runtime
4. If reactor runs out: slowness + mining fatigue + weakness. Keep it fueled!

**Armor plates**: Stand on an **Armor Load Platform** (requires lava piped in — 100mB per assembly/disassembly). Right-click while sneaking to install/remove armor plates with different stat values. Plates also provide a repair method — no anvil needed.

**External devices**: Additional Create-themed accessories (back-mounted) that provide utility without consuming armor slots.

**Compatibility**: Works with Better Combat, Epic Fight, and backpacks (visual space reserved for backpack rendering). Apotheosis affixes and gems should apply — verify after test launch.

**Dependencies**: [Create](https://www.curseforge.com/minecraft/mc-mods/create) (already in pack) + [Kleiders Custom Renderer API](https://www.curseforge.com/minecraft/mc-mods/kleiders-custom-renderer-api). For versions below 1.9.0, requires [Curios API](https://www.curseforge.com/minecraft/mc-mods/curios) instead (already in pack). Currently on v2.1.9+ using Kleiders.

**Progression placement**: Brass-tier armor is early Phase 2 (requires Create brass). Alloy-tier is mid-Phase 2 (requires Create alloy infrastructure). MekaSuit remains the Phase 3 endgame upgrade. This fills the Phase 2 power-armor gap between basic Mekanism Tools and the MekaSuit.

### Mekanism Addons

| Mod                                                                                 | Role                                                                                                                                                                  |
|-------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [Mekanism Tools](https://www.curseforge.com/minecraft/mc-mods/mekanism-tools)       | Armor, shields, tools, and paxels for Mekanism materials — Osmium, Bronze, Refined Obsidian, Refined Glowstone, Steel. Fills gear gap between netherite and MekaSuit. |
| [Advanced Finders](https://www.curseforge.com/minecraft/mc-mods/advanced-finders)   | Ore detection devices — directional indicators for nearby ore veins, synchronized multiplayer support                                                                 |
| [Advanced Chimneys](https://www.curseforge.com/minecraft/mc-mods/advanced-chimneys) | Smoke ventilation systems — redirect factory emissions outdoors, customizable appearance and behavior                                                                 |

**Dependencies**: Both Advanced Finders and Advanced Chimneys require [ForgeEndertech](https://www.curseforge.com/minecraft/mc-mods/forgeendertech) library.

### How They Work Together

| Layer              | Mod                                                                                      |          |
|--------------------|------------------------------------------------------------------------------------------|----------|
| Power generation   | Create (water wheels, windmills, steam) + Mekanism (advanced generators, fusion reactor) |          |
| Gear progression   | Mekanism Tools — Osmium → Bronze → Refined Obsidian → MekaSuit                           |          |
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
- **Create train ecosystem**: SnR provides track types (monorail, wooden, wide gauge), semaphores, and the conductor mob. **Train Utilities** adds station architecture (sliding doors, platform blocks). **Railways Navigator** adds display boards and route management. **Interiors** makes train cars usable with seats and tray tables. **Train Parts** adds crossing gates, windows, and steps for detailing. **Threaded Trains** keeps the whole network performant by running pathfinding on a separate thread. Together they cover tracks → stations → navigation → interiors → detailing → performance without overlap.
- Mekanism's 5x ore processing (Chemical Dissolution Chamber → Washer → Crystallizer) outclasses Create's Crushing Wheels (1.5x) and Millstone (1x) for ore multiplication. This is intentional — Create handles mechanical automation and component crafting, Mekanism handles industrial processing. Neither obsoletes the other.
- AE2's Storage Bus on a Sophisticated Storage barrel makes early-mid game storage migration seamless. Place a Storage Bus on your barrel wall, configure it to show contents in the ME terminal, and transition gradually to full digital storage.
- **Sophisticated Storage Create Integration** and **Sophisticated Backpacks Create Integration** (both by P3pp3rF1y) enable full backpack and barrel functionality on Create contraptions — upgrades, automation features (pickup, magnet, feeding), and inventory settings all work while the contraption is in motion. Without these addons, Sophisticated inventories on contraptions are limited to basic item transport.
- **Applied Mekanistics** bridges AE2 autocrafting with Mekanism's chemical processing — ME Chemical Output Buses, ME Chemical Import Buses, and P2P tunnels for chemicals/gases enable autocrafting of Mekanism recipes (including fission/fusion products) directly through the AE2 crafting CPU. Without this mod, Mekanism chemical steps are manual bottlenecks.
- **Create: The Factory Must Grow** adds oil drilling, distillation towers, blast furnaces, and diesel engines — expanding Create's mechanical toolkit into heavy industry. Its steel replaces Mekanism's steel (TFMG's blast furnace is the intended steel source; Mekanism's steel recipe is disabled by the Mekanism TFMG Compat mod). TFMG aluminum and plastic feed into Mekanism's advanced processing chains.
- **Mekanism TFMG Compatibility** resolves 85+ recipe overlaps between TFMG and Mekanism — lead, sulfur, and steel are unified under TFMG's production lines, while Mekanism retains its chemical processing advantage. Both EMI item blacklist config and per-recipe toggles are available for pack tuning.
- **Create: Protection Pixel** adds steampunk power armor that bridges Create's brass-tier infrastructure with the power fantasy of Mekanism's MekaSuit. Brass-tier armor requires Create brass (early Phase 2); alloy-tier requires additional Create alloy processing (mid-Phase 2). The Combustion Reactor's blaze rod fuel can be farmed via Mekanism spawner systems, Apotheosis spawner upgrades, or vanilla blaze grinders. Blaze automation is a natural Phase 2 milestone that unlocks full power armor capability. MekaSuit remains the Phase 3 ultimate upgrade — Protection Pixel fills the gap, it doesn't compete.

The core tech trio. Create handles mechanical automation, Mekanism handles industrial processing, AE2 handles digital storage and autocrafting. Install all three core mods plus addons at once.

### Core Tech

#### Create — Mechanical Automation

Create is about **rotational power (SU)**. Machines consume SU to run. If consumption exceeds generation, machines stop.

**Learning with Ponder**: Hold `W` while hovering over any Create block/item in EMI. An animated tutorial plays showing exactly how it works. **Use Ponder constantly** — it's better than any written guide.

**First Create setup**:

1. Mine **andesite** — the most important early resource
2. Craft **andesite casing** (andesite + wood nugget in EMI)
3. Craft **cogwheel** and **large cogwheel** — transfer rotational power
4. Place a **hand crank** → attach cogwheel → attach **millstone** → right-click crank to grind wheat/ore manually
5. Build a **water wheel** in flowing water (2–3 block drop) → attach shaft → power 2–3 basic machines (256 SU)

**Brass progression** (mid-Create): Find zinc ore → mix zinc + copper in a **heated mixer** → brass ingots → brass casing → unlock:

- **Deployer** — places blocks/uses items from inventory. Automates crafting
- **Sequenced Crafter** — multi-step autocrafting sequence
- **Mechanical Arm** — moves items between inventories
- **Chute & Funnel** — vertical item transport with filtering
- **Train Station** — build tracks, assemble trains

**Blueprint system**: Craft **Blueprint and Quill**. Select an area, save as a blueprint. Place a **Deployer** with the blueprint to auto-build it. Or use the **Schematicannon** — load a blueprint, feed it materials from chests, and it builds the structure for you automatically. This is your "here's a blueprint → build it" tool.

**Keybinds**:

- Ponder: `W` (hold over block)
- Wrench: right-click
- Goggles: `G` (hold over machine) — shows SU, RPM, stress info
- Toolbox: `T` (hold)

**Goggles** are essential — craft early, check EMI.

#### Mekanism — Industrial Processing

Mekanism v10 for 1.21.1 is split into two required modules:

- **Mekanism** (core) — machines, processing, cables, armor
- **Mekanism Generators** — all power generation (heat, wind, solar, gas-burning, bio, fission, fusion)

**Finding Osmium**: Generates at all underground levels, similar rarity to iron. Mine with stone pickaxe or better.

**Tier system**: Every machine has 4 tiers. Upgrade by shift-right-clicking with the tier upgrade item.

| Tier     | Color    | Speed | Upgrade                          |
|----------|----------|-------|----------------------------------|
| Basic    | Orange   | 1x    | Starting                         |
| Advanced | Red      | 2x    | Basic + osmium + redstone        |
| Elite    | Dark Red | 4x    | Advanced + diamond + obsidian    |
| Ultimate | Purple   | 8x    | Elite + refined obsidian + alloy |

**First Mekanism setup**:

1. **Heat Generator** — place lava source below it for early power
2. **Metallurgic Infuser** — combine osmium + carbon (coal) → **steel ingots**
3. **Enrichment Chamber** — 1 ore → 2 dust → smelt → 2 ingots (2x processing)

**Processing multipliers**:

- **2x**: Enrichment Chamber only
- **3x**: Enrichment Chamber → Crusher → Enrichment Chamber again
- **5x**: Full chemical line — Chemical Dissolution Chamber (sulfuric acid) → Washer → Crystallizer → 5 dust

**Gas infrastructure** (for 5x processing):

- Hydrogen/Oxygen: Electrolytic Separator (split water)
- Sulfuric Acid: Chemical Infuser (sulfur + oxygen)
- Deuterium/Tritium: Fusion reactor fuel (late game)

Gases move through **pressurized tubes**. Use a **Rotary Condensentrator** to convert gas ↔ liquid.

**Digital Miner** (mid-game): Automated mining machine. Set radius (up to 64 blocks) and filters (whitelist ores). Needs significant power. Tip: set to mine only ores to avoid filling with stone.

**Fusion Reactor** (endgame): Millions of Joules per tick. Fuel chain: water → Electrolytic Separator → hydrogen → deuterium → tritium → feed both into reactor. Requires significant infrastructure — a Phase 3 project.

**Config**: `config/Mekanism/general.toml` → `allowChunkloading = false` (delegated to Chunk Loaders mod).

#### AE2 — Applied Energistics 2

Digital item storage and autocrafting. Everything lives in an electronic network accessed from a single terminal.

**Finding Certus Quartz**:

- **Meteorites** — circular surface depressions. Dig down to find certus quartz blocks + sky stone chest with free AE2 components
- **Ore veins** — certus quartz ore underground

**Processing**: certus quartz block → mine → item → craft into dust → smelt → crystal → charge in **AE2 Charger** → charged certus quartz

**Channel system**: AE2 limits devices per cable. This is the hardest concept for new players.

| Cable type           | Channels | Notes                    |
|----------------------|----------|--------------------------|
| ME Glass Cable       | 8        | No indicator             |
| ME Smart Cable       | 8        | Colored lines show usage |
| ME Dense Smart Cable | 32       | Thicker, for backbone    |

- Each ME Controller face provides 32 channels
- Each device (drive, terminal, bus) consumes 1 channel
- Exceed channels → devices show "no power"

**Use ME Smart Cable everywhere** — colored lines instantly show usage.

**First network**:

1. **Power**: Build a **vibration chamber** or **energy acceptor**, connect any power source (Mekanism generator works)
2. **Controller**: Craft ME Controller, place it, connect power. One controller = 32 channels
3. **Storage**: Craft **ME Drive** + **1k storage cells** (charged certus + redstone + glass), place next to controller
4. **Terminal**: Craft **ME Crafting Terminal** — essential, lets you craft from stored items

**Connecting to the world**:

- **ME Import Bus** — pulls items from adjacent inventory into network
- **ME Export Bus** — pushes items from network into adjacent inventory
- **Storage Bus** — treats adjacent inventory as part of network (no import/export needed)
- **ME Interface** — exports AND accepts items for autocrafting

**Autocrafting**:

1. Craft **Patterns** (blank pattern + items in grid)
2. Put patterns in **ME Pattern Provider**
3. Place provider next to **ME Molecular Assembler**
4. Request item from terminal — AE2 pulls ingredients, crafts, returns result

For Mekanism/Create machines: use **ME Interface** instead of pattern provider. Put pattern in interface, it exports ingredients to adjacent machine and accepts the result.

**Subnetworks** (advanced): When you exceed 32 channels, add a second controller connected via **ME P2P Tunnel** or **ME Quantum Link** for wireless.

#### Applied Mekanistics

Bridges AE2 autocrafting with Mekanism's chemical processing. Adds:

- ME Chemical Output Buses / Import Buses
- P2P tunnels for chemicals/gases
- Autocraft Mekanism recipes (including fission/fusion products) through AE2 crafting CPU

Without this mod, Mekanism chemical steps are manual bottlenecks.

---

### Create Addons

#### Create Crafts & Additions

Electric motors and alternators create a direct **kinetic SU ↔ Forge Energy (FE)** bridge. Also adds:

- **Rolling mill** — processes metal into wires/rods
- **Silver and electrum** — new material tiers that integrate with Mekanism ore processing

**Use**: Connect an electric motor to your Create network to power it with FE from Mekanism. Or connect an alternator to generate FE from Create rotational power.

#### Create: Power Grid

Physics-based electricity simulation — Ohm's law, AC/DC, cable loss, transformers. Bridges to FE so Power Grid can power Mekanism/AE2 and vice versa.

**Key concepts**:

- Generators produce voltage, cables have resistance, machines draw current
- AC travels farther but needs rectification for DC machines
- Use transformers to step voltage up for long runs, then step down locally
- Built-in FE conversion via FE Converter block

**When to build**: Mid-Phase 2, after you have basic Create power and have outgrown SU. Diesel engines from TFMG feed into Power Grid naturally.

#### Steam 'n' Rails

Expanded train system:

- New track types: spruce, monorail, wide gauge
- Semaphores for signal control
- Conductor mob (rides trains, interacts with stations)
- Coupling/decoupling blocks

Essential for moving resources between MineColonies, Mekanism factories, and AE2 storage across a sprawling base.

#### Create: The Factory Must Grow (TFMG)

Heavy engineering and oil processing. Drill for crude oil, refine it, burn fuels in diesel engines.

**Oil processing chain**:

1. Find oil — surface seepage in desert/plains biomes, or underground pools
2. **Pumpjack** — extracts oil automatically (crafted from brass and steel)
3. **Distillation Tower** (multi-block, 4+ blocks tall) — refines crude oil into diesel, gasoline, LPG, lubricant, asphalt
4. **Cracker** — breaks heavy fractions into lighter fuels
5. **Desulfurizer** — cleans fuel for more efficiency

**Diesel engines**:

| Engine       | Fuel            | SU Output  |
|--------------|-----------------|------------|
| Small Diesel | Diesel/gasoline | ~2,000 SU  |
| Large Diesel | Diesel/gasoline | ~8,000 SU  |
| Gas Turbine  | LPG             | ~16,000 SU |

Progression: water wheel → steam engine → diesel engine.

**Steel Blast Furnace**: Multi-block structure for industrial-scale steel. Faster than Mekanism's Metallurgic Infuser once you have oil power.

**Aluminum**: Bauxite ore (mid-to-high Y-levels) → multi-block smelter → aluminum ingots. Used in advanced TFMG machines and feeds into Mekanism alloy processing.

**TFMG Energy Converter**: Bidirectional bridge between TFMG electricity ↔ FE/AE2. Wire diesel generators into your ME system or Mekanism induction matrix. Requires Kotlin for Forge (auto-installed Wave 0 dep).

**Mekanism TFMG Compatibility**: Resolves 85+ recipe overlaps between TFMG and Mekanism. Steel, lead, sulfur unified under TFMG. Mekanism's steel recipe disabled — use TFMG Blast Furnace instead. Config in `config/mekanismtfgmcompat-common.toml`.

#### Create: Gunsmithing

Steampunk firearms crafted using Create machines. Animated guns with attachments and ammo types.

**Getting started**:

1. Build a **Gunsmithing Table** (check EMI — uses Create brass + wood)
2. Craft **gun frames** — pistol, rifle, shotgun, each with different stats
3. Craft **barrels, grips, magazines** at the mechanical press
4. Assemble at the Gunsmithing Table
5. Craft **ammo** — each gun type uses different ammo (pistol rounds, rifle cartridges, shotgun shells)

**Attachments**: Scopes, extended magazines, suppressors, bayonets. Attach at the Gunsmithing Table.

**Compatibility**: Built-in Better Combat support — guns use appropriate animations.

**Dependencies**: NTGL (gun framework), GeckoLib (3D animation), Framework (utility library) — all auto-installed.

#### Create Ornithopter Glider

Mechanical flapping glider powered by Create rotational power.

**How**: Craft the glider (check EMI — brass + leather + feathers). Equip in chest slot. Hold jump to flap (consumes SU from a connected power source or internal buffer). Boost-assisted flight for short bursts.

**Use**: Early flight before MekaSuit. Pairs with Create windmills or water wheels for power.

#### Create Train Ecosystem

Six mods work together for a complete train network:

| Mod                    | Role                                                  |
|------------------------|-------------------------------------------------------|
| **Steam 'n' Rails**    | Track types, semaphores, conductor, coupling          |
| **Train Utilities**    | Station architecture — sliding doors, platform blocks |
| **Railways Navigator** | Display boards, route management, schedule entries    |
| **Interiors**          | Train car furniture — chairs, tray tables, kelp seats |
| **Train Parts**        | Crossing gates, sliding windows, train steps, slides  |
| **Threaded Trains**    | Performance — train pathfinding on separate thread    |

Together: tracks → stations → navigation → interiors → detailing → performance, with no overlap.

---

### Mekanism Addons

#### Advanced Finders

Ore detection devices with directional indicators for nearby ore veins.

**How**: Craft a finder (check EMI — tiers for different ores). Hold it — arrows point toward nearest vein, distance shown on HUD. Synchronized in multiplayer.

#### Advanced Chimneys

Smoke ventilation systems for factories. Redirect emissions outdoors.

**How**: Craft chimney blocks, place above furnaces/generators. Smoke renders realistically and vents upward. Customizable appearance.

**Dependencies**: Both require ForgeEndertech library (auto-installed).

---

### How Wave 1 Mods Work Together

| Layer              | Mod                                           | What's Happening                                                     |
|--------------------|-----------------------------------------------|----------------------------------------------------------------------|
| Power generation   | Create + Mekanism Generators                  | Water wheels → windmills → steam → heat/gas/solar → fission → fusion |
| Ore processing     | Mekanism                                      | 2x→3x→5x ore multiplication                                          |
| Factory automation | Create                                        | Conveyors, deployers, sequenced crafters, mechanical arms            |
| Storage            | AE2                                           | ME drives, storage busses, crafting CPUs                             |
| Transport          | Create trains + AE2 P2P tunnels               | Bulk item movement across bases                                      |
| Endgame            | Mekanism fusion + MekaSuit + AE2 autocrafting | God-tier power and automation                                        |
| Oil/steel          | TFMG                                          | Distillation → diesel engines → blast furnace steel                  |
| Power bridge       | Crafts & Additions + TFMG Energy Converter    | Kinetic ↔ FE ↔ TFMG voltage                                          |
| Rail expansion     | Steam 'n' Rails + train ecosystem             | Full train network with stations and interiors                       |
| Colony defense     | Create Big Cannons (Wave 5)                   | Artillery for base perimeter                                         |

**Integration highlights**:

- Mekanism universal cables power AE2 controllers via Energy Acceptor
- AE2 Storage Bus on Sophisticated Storage barrel = seamless early-mid storage migration
- Sophisticated Storage/Backpacks Create Integration = full backpack/barrel functionality on moving contraptions
- Applied Mekanistics bridges AE2 autocrafting with Mekanism chemical processing
- TFMG steel replaces Mekanism steel (blast furnace is the intended source)

---

### Session Plan — Wave 1

| Session                         | Focus                                                                                                  | What to Build                         |
|---------------------------------|--------------------------------------------------------------------------------------------------------|---------------------------------------|
| **Session 1 — Create basics**   | Mine andesite. Hand crank + millstone. Water wheel. Grind wheat and ore                                | 256 SU power, basic ore doubling      |
| **Session 2 — Mekanism start**  | Find osmium. Heat Generator + Enrichment Chamber + Metallurgic Infuser. 2x ore processing              | Basic Mekanism line, first steel      |
| **Session 3 — AE2 discovery**   | Find certus quartz meteorite. Mine it. Craft dust → crystal → charge. Build AE2 Charger                | First certus, charge infrastructure   |
| **Session 4 — AE2 network**     | ME Controller + ME Drive + 1k cells + ME Crafting Terminal. Storage Bus on Sophisticated barrel        | First digital storage network         |
| **Session 5 — Mid Create**      | Find zinc. Make brass. Deployer + Sequenced Crafter + Mechanical Arm. Automate a simple recipe         | Component automation, brass-tier      |
| **Session 6 — Mekanism expand** | Add Crusher for 3x ore. Electrolytic Separator for gas. Upgrade to Advanced tier                       | 3x multiplication, gas infrastructure |
| **Session 7 — Integration**     | Import Bus on Enrichment Chamber → AE2. Export Bus to Create machines. Connect alternator to Mek power | Cross-mod automation bridge           |
| **Session 8 — TFMG start**      | Find oil (desert/plains pools). Pumpjack + Distillation Tower. Small Diesel Engine                     | Oil refining, massive SU upgrade      |
| **Session 9 — TFMG expand**     | Build Steel Blast Furnace. Mass-produce steel. Find bauxite for aluminum                               | Industrial steel, aluminum            |
| **Session 10+ — Scaling**       | Digital Miner. Expand AE2 drives. Add Create train between base and outpost. Work toward 5x processing | Automated mining, bulk transport      |

**Pacing tip**: You don't need to finish Wave 1 before starting Wave 1.1 (megabuilding), Wave 1.5 (colony), or Wave 2 (exploration). Dip into exploration between factory sessions. The colony takes real-world days to grow — start it early. TFMG is mid-game — start after you have brass Create and basic Mekanism.

---

<!--raw-typst #pagebreak() -->

## Wave 1.1 — Megabuilding

Schematics and blueprint tools for building at scale in survival. Import community-made structures, place them layer-by-layer with Forgematica's holographic overlay, and construct anything from starter homes to mega-factories without creative mode or guesswork. This wave unlocks the Phase 3 megabuild fantasy early — you can plan and start placing mega-structures from day one, even if the resources take weeks to gather.

### Megabuilding Mod

| Mod                                                                    | Role                                                                                     |
|------------------------------------------------------------------------|------------------------------------------------------------------------------------------|
| [Forgematica](https://www.curseforge.com/minecraft/mc-mods/forgematica) | Client-side schematic mod — import `.litematic` blueprints, display holographic overlay, place layer-by-layer in survival |

**Forgematica** is the unofficial NeoForge port of Litematica. It lets you load schematics (`.litematic` files) and shows a translucent hologram of the build in-world, complete with material lists per layer. You place blocks manually while the overlay guides every position — no auto-build, fully survival-legal. Essential for mega-scale projects that would be impossible to freehand.

- **Version**: 0.4.3+mc1.21.11 (NeoForge, 1.8 MB)
- **Environment**: Client-side only
- **Dependencies**: None (standalone — no MaLiLib required)
- **License**: LGPLv3
- **Downloads**: 1.6M+ total

**Shader compatibility**: Forgematica rendering may conflict with shader packs. If the schematic overlay looks broken, toggle shaders off temporarily (`K` by default in Iris). On 1.21.1 (this pack's version), Iris compatibility is better than newer MC versions. Switch back when done placing.

**Keybinds** (set in Options → Controls → Key Binds after installing):

| Action                       | Suggested Key | Purpose                                         |
|------------------------------|---------------|-------------------------------------------------|
| Open Schematic Manager       | `M`           | Load, manage, and switch between schematics     |
| Execute Schematic Placement  | `Ctrl+Enter`  | Locks in the current layer after verifying alignment |
| Toggle Schematic Rendering   | `Ctrl+M`      | Show/hide hologram (useful for screenshots)     |
| Toggle Material List         | `Ctrl+Shift+M`| Show/hide required materials HUD                |

**How it works**:

1. Download `.litematic` schematics and place them in your instance's `schematics/` folder.
2. Open Schematic Manager (`M`), select a schematic, choose placement position and rotation.
3. The holographic overlay appears at the target location. Use the material list to gather blocks per layer.
4. Place blocks manually following the overlay. Cycle through layers as you build up.
5. When a layer is complete, press `Ctrl+Enter` to lock it in and show the next layer.

No blocks are placed automatically — Forgematica is a guide, not a world editor. Every block must be placed in survival. This respects the pack's survival-only constraint while enabling builds at a scale that would normally require creative mode.

### Schematic Recommendations

These schematics complement the Driftwood progression. All are free Litematica-format downloads from Abfielder.com — one of the largest schematic libraries (700+ schematics, all free). Each schematic is picked to serve a specific purpose in your journey from Cozy Roots through Industrial Ascent to Perpetual Ascent.

| #  | Schematic                                                                                                   | ID    | Phase  | Purpose                                                              | Style                       |
|----|-------------------------------------------------------------------------------------------------------------|-------|--------|----------------------------------------------------------------------|-----------------------------|
| 1  | [Starter Home](https://abfielder.com/Products/ProductDetails.php?id=2818)                                   | 2818  | 1      | Cozy first shelter — compact, complete, no wasted space              | Oak & cobblestone cottage   |
| 2  | [Medieval Starter House](https://abfielder.com/Products/ProductDetails.php?id=6457)                         | 6457  | 1      | Early game base with living space and storage                        | Timber-framed medieval      |
| 3  | [Cozy Windmill](https://abfielder.com/Products/ProductDetails.php?id=5959)                                  | 5959  | 1      | Decorative windmill — pairs with Create water wheels                 | Sails & stone tower         |
| 4  | [Simple Starter House](https://abfielder.com/Products/ProductDetails.php?id=13174)                          | 13174 | 1      | Minimal starter — place in first 30 minutes                          | Spruce & stone              |
| 5  | [Windmill Farmhouse *(FURNISHED)*](https://abfielder.com/Products/ProductDetails.php?id=10955)              | 10955 | 1–2    | Farmer's Delight hub with enclosed mill, kitchen, and crop plots     | Furnished medieval farm     |
| 6  | [Medieval Windmill](https://abfielder.com/Products/ProductDetails.php?id=4216)                              | 4216  | 1–2    | Standing windmill — landmark and Create rotational power aesthetic   | Tall stone & wood tower     |
| 7  | [Warehouse, Auto-sorting](https://abfielder.com/Products/ProductDetails.php?id=11682)                       | 11682 | 2      | Multi-chest sorting hall — pre-AE2 bulk storage                      | Industrial timber frame     |
| 8  | [Medieval Stone Factory](https://abfielder.com/Products/ProductDetails.php?id=13065)                        | 13065 | 2      | Factory shell for Create sequenced lines and Mekanism machines       | Stone & deepslate industrial|
| 9  | [Steampunk Factory](https://abfielder.com/Products/ProductDetails.php?id=10175)                             | 10175 | 2      | Themed factory — fits Create brass-tier and TFMG oil refining        | Brass, copper & brick       |
| 10 | [Industrial Factory *(Blackstone/Nether Brick)*](https://abfielder.com/Products/ProductDetails.php?id=2899) | 2899  | 2–3    | Late-game factory enclosure — Nether-themed Mekanism wing            | Blackstone & nether brick   |
| 11 | [Large Underground Base *(Full Interior + Netherhub)*](https://abfielder.com/Products/ProductDetails.php?id=12756) | 12756 | 2–3 | Massive underground complex with portal hub — ultimate tech bunker   | Subterranean sprawl         |
| 12 | [Dark Fantasy Castle](https://abfielder.com/Products/ProductDetails.php?id=7162)                            | 7162  | 3      | Endgame colony fortress — 62K+ DLs, fully detailed exterior          | Dark stone & spires         |
| 13 | [Skyreach Castle](https://abfielder.com/Products/ProductDetails.php?id=12188)                               | 12188 | 3      | Skyborne castle — Phase 3 "I've earned this" megabuild               | Floating fantasy fortress   |
| 14 | [Wizard Watchtower](https://abfielder.com/Products/ProductDetails.php?id=12509)                             | 12509 | 1–3    | RPG-themed tower — fits Apotheosis enchanting room                   | Mage spire                  |
| 15 | [Stone Bridge](https://abfielder.com/Products/ProductDetails.php?id=10587)                                  | 10587 | 1–3    | Decorated bridge — connect base sections or span colony rivers       | Arched stone bridge         |
| 16 | [Wall + Tower](https://abfielder.com/Products/ProductDetails.php?id=8559)                                   | 8559  | 2–3    | Colony perimeter wall segment with integrated guard tower            | Defensive medieval wall     |
| 17 | [Grand Dwarven Gate](https://abfielder.com/Products/ProductDetails.php?id=11546)                            | 11546 | 3      | Epic mountain-face entrance — mega-scale statement piece             | Dwarven stonework           |
| 18 | [Minecraft Wooden Mansion](https://abfielder.com/Products/ProductDetails.php?id=12525)                      | 12525 | 2      | Large furnished mansion — Phase 2 upgrade from starter home          | Spruce & dark oak estate    |

**Download**: Visit `https://abfielder.com/Products/ProductDetails.php?id=<ID>` for each schematic. Click "Download" for the `.litematic` file. Place all `.litematic` files in your instance's `schematics/` folder.

**Finding more**: Browse `https://abfielder.com/Products/BrowseProducts.php?sort=trending&game=minecraft&type=Schematic` — filter by tag (House, Castle, Factory, Bridge, Mega Build, Farm, Medieval, Industrial) for additional options. Planet Minecraft (`planetminecraft.com/projects/tag/litematica/`) and MineMev (`minemev.com/explore/`) have thousands more schematics if you want alternatives. Search for tags: `medieval`, `survival`, `industrial`, `fantasy`, `steampunk`.

**Style guide**: When browsing additional schematics, stick to materials already present in the modpack — stone, deepslate, oak/spruce/dark oak, brick, terracotta, copper, iron, and Create decorative blocks. Avoid schematics that depend on mods not in this pack (looking for Quark, Chipped, or BYG blocks in the material list is a red flag). Medieval, steampunk, and dark fantasy styles all fit the Driftwood aesthetic. Modern, sci-fi, and glass-heavy builds don't.

### Interdependency Notes — Wave 1.1

- **Forgematica × Create**: Factory schematics are designed as shells — you install Create machinery and Mekanism lines inside them. They provide the structure; you wire the automation.
- **Forgematica × MineColonies**: Castle and wall schematics make excellent colony defense perimeters. Wall + Tower (ID:8559) segments can be tiled to enclose an entire colony. Rebuild colony buildings inside them for a unified architectural style.
- **Forgematica × AE2**: The Warehouse Auto-sorting schematic (ID:11682) is designed for pre-AE2 storage. Once you transition to ME drives, repurpose it as bulk item overflow or decorative archive hall.
- **Forgematica × Apotheosis**: The Wizard Watchtower (ID:12509) includes space for an enchanting setup — drop your Apotheosis enchanting table and bookshelves in the top room.
- **Shader caveat**: Forgematica hologram rendering may flicker with complementary shaders. Toggle shaders off (`K`) while placing schematics, then re-enable. The 1.21.1 compatibility is better than newer MC versions — distortion is usually minor.
- **Survival constraint**: Forgematica is purely a visual guide. No blocks are auto-placed. Every resource must be gathered and placed by the player in survival mode. This respects the pack's survival-only constraint.

**Install**: In XMCL, search `Forgematica` in the Mods tab, or download the `.jar` from CurseForge and drop into `mods/`. Create a `schematics/` folder in your instance directory, then drop downloaded `.litematic` files there. Forgematica will pick them up automatically on next launch.

---

### Session Plan — Wave 1.1

| Session                          | Focus                                                          | What to Build                                 |
|----------------------------------|----------------------------------------------------------------|-----------------------------------------------|
| **Session 1 — Pick a starter**   | Download 3 Phase 1 schematics. Place Starter Home (ID:2818).   | First schematic build, learn Forgematica flow |
| **Session 2 — Farm hub**         | Place Windmill Farmhouse (ID:10955). Plant Farmer's Delight crops around it. | Farm-to-table setup next to base     |
| **Session 3 — Bridge it**        | Place Stone Bridge (ID:10587) between base areas or over a river. | Connect your growing compound            |
| **Session 4+ — Factory prep**    | Download Phase 2 schematics. Scout a flat area for the factory district. | Site planning for industrial ascent     |
| **Ongoing**                      | As your tech tree advances, place larger schematics. Wall+Tower around colony. Underground base for AE2. Castle for endgame. | Megabuilding scales with progression |

**Tip**: Schematics eat materials fast. The Windmill Farmhouse alone needs several stacks of spruce and stone. Set up a Create tree farm and cobblestone generator early — you'll need them. Treat schematic building as a multi-session project, not a speedrun.

---

<!--raw-typst #pagebreak() -->

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

### Colony Addons

| Mod                                                                                                      | Role                                                                                                |
|----------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------|
| [Byzantine Styles Pack](https://www.curseforge.com/minecraft/mc-mods/byzantine-styles-pack-for-minecolonies) | 3 build styles — Byzantine, Shogun, Nile. Visual variety for colony buildings          |
| [Stylecolonies](https://www.curseforge.com/minecraft/mc-mods/stylecolonies)                              | Official MineColonies blueprint addon — 10+ styles (Steampunk, Frontier, High Magic, FairyTale, etc.) |
| [Create: Colony Logistics](https://www.curseforge.com/minecraft/mc-mods/cclogistics)                     | Bridges MineColonies warehouses to Create logistics — belts, chutes, trains for colony supply       |
| [ColonyLink](https://www.curseforge.com/minecraft/mc-mods/colonylink)                                   | Connects MineColonies builders to AE2 — monitor resources, trigger autocrafting from ME terminal    |

**Style packs coexist**: Byzantine and Stylecolonies cover completely different themes (Byzantine/Shogun/Nile vs Steampunk/Frontier/FairyTale/etc.) — no overlap. Both can be installed simultaneously. FairyTale style requires Twilight Forest + Create (both in pack) and Quark (not in pack — that style simply won't appear).

**Create: Colony Logistics** and **ColonyLink** serve complementary roles — Colony Logistics handles Create-based colony restocking (belts, trains), while ColonyLink handles AE2-based resource monitoring and autocrafting. Both integrate MineColonies into the tech loop.

### Interdependency notes for Wave 1.5

- MineColonies guards (deployed via the Town Hall's "Guard Tower" building) patrol your base perimeter, reducing the need to secure every wall gap manually. Their effectiveness scales with the Guard Tower level and the colony's skill research. This creates a natural progression — automated base defense grows as your colony does.
- MineColonies Colony Research milestones signal Phase 2 progression readiness. For example, the "Industrial Revolution" research (Colony level 3, 5000 research points) serves as a soft gate — by the time you reach it, you have the colony infrastructure to support Mekanism and AE2. Hard recipe gating (e.g., Atomic Alloy locked behind research) requires a data pack or scripting mod and is not implemented in this pack — the progression pillars in AGENTS.md define the intent, and playtesting determines if soft gating is sufficient.
- Chunk Loaders (Wave 0) are essential for MineColonies — they keep workers active while you explore other dimensions. Place at least one at your colony after setting up your base.
- Create: Colony Logistics lets Create's logistic network (belts, chutes, depots, trains) interact directly with MineColonies warehouses. Automate material delivery to builder huts without manual restocking.
- ColonyLink lets you monitor colony resource needs from your AE2 terminal. When a builder runs out of materials, ColonyLink triggers AE2 autocrafting — the loop closes: AE2 crafts → Create delivers → MineColonies builds. This is the Phase 2+ integration sweet spot.
- Byzantine Styles and Stylecolonies are purely visual — pick a style pack, apply to a hut, and the build theme changes. No gameplay impact. Mix and match across different huts in the same colony.

MineColonies provides autonomous NPC workers that mine, farm, craft, and guard your base. Grows alongside your factory.

### Getting Started

1. Craft the **Town Hall** and place it on flat ground
2. Right-click → colony GUI opens
3. Hire a **Builder** from the Citizens tab
4. Place a **Builder's Hut** near the Town Hall
5. Put wood, cobblestone, and tools in the builder's chest
6. The builder starts constructing from blueprints

### Core Worker Huts (build in this order)

| Hut             | Resource                 | What it does                                    |
|-----------------|--------------------------|-------------------------------------------------|
| **Mine**        | Coal, iron, stone        | Digs shaft mine. Passive ore supply             |
| **Lumberjack**  | Wood                     | Chops trees, replants. Infinite wood            |
| **Farmer**      | Wheat, carrots, potatoes | Plants, grows, harvests. Feeds colony           |
| **Guard Tower** | Defense                  | Patrols base perimeter. Scales with colony size |
| **Crafter**     | Recipes                  | Crafts items from storage materials             |

### Research Tree

| Research              | Colony Level | Points | Unlocks                             |
|-----------------------|--------------|--------|-------------------------------------|
| Basic Industry        | 2            | 2000   | Better mines, furnace automation    |
| Advanced Smithing     | 3            | 4000   | Better worker tools                 |
| Industrial Revolution | 3            | 5000   | Atomic Alloy recipe (Mekanism gate) |
| Logistics             | 4            | 8000   | Warehouse, courier routes           |

**Tech gating**: Atomic Alloy (Mekanism ultimate-tier) requires "Industrial Revolution" research. This prevents skipping from Phase 1 straight to Phase 3.

### Guard Scaling

- 1 Guard Tower = 20-block radius coverage
- Each additional tower adds overlapping coverage
- Guard equipment upgrades with colony level (leather → iron → diamond)

### Integration With Your Tech Base

- **AE2 Storage Bus** on colony warehouse → all colony resources in your ME terminal
- **ColonyLink** on AE2 network → monitor builder resource needs, trigger autocrafting when supplies run low
- **Create belts/trains via Colony Logistics** → automated material delivery to builder huts and worker chests
- **Create: Colony Logistics** on colony warehouse → colony resources flow through Create's logistic network (belts, depots, trains, stockpile switches)
- **Farmer's Delight meals** supply colony kitchen for worker happiness bonuses
- **Chunk Loaders** keep colony running when you're in other dimensions

### Session Plan — Wave 1.5

| Session                       | Focus                                                                          | What to Do                              |
|-------------------------------|--------------------------------------------------------------------------------|-----------------------------------------|
| **Session 1 — Foundation**    | Town Hall, Builder's Hut, supply materials                                     | Colony established, first build started |
| **Session 2 — First workers** | Mine hut + Lumberjack hut                                                      | Passive coal/iron/wood income           |
| **Session 3 — Farm + Guard**  | Farmer hut + Guard Tower                                                       | Colony self-sufficient, base defended   |
| **Session 4 — Research**      | Basic Industry research, Crafter hut                                           | First tech unlocked                     |
| **Ongoing**                   | Check in every few sessions. Upgrade buildings, expand guards, unlock research | Atomic Alloy ready by Phase 2           |

**Tip**: The colony is a long-term background investment. Start it early, check periodically, let it grow.

---

<!--raw-typst #pagebreak() -->

## Wave 2 — Exploration (World & Dimensions)

### Overworld Worldgen

| Mod                                                                 | Role                                                            |
|---------------------------------------------------------------------|-----------------------------------------------------------------|
| [Terralith](https://www.curseforge.com/minecraft/mc-mods/terralith) | Overhauled Overworld biomes                                     |
| [Tectonic](https://www.curseforge.com/minecraft/mc-mods/tectonic)   | Better terrain shape — deeper valleys, taller mountains, cliffs |

### Environment

| Mod                                                                           | Role                                                            |
|-------------------------------------------------------------------------------|-----------------------------------------------------------------|
| [Serene Seasons](https://www.curseforge.com/minecraft/mc-mods/serene-seasons) | Seasonal foliage colors, temperature shifts, crop growth cycles |

**Serene Seasons** adds four seasons (Spring, Summer, Autumn, Winter) with visual foliage changes, temperature shifts, and seasonal crop growth modifiers. Crop impact is enabled — planting in the wrong season reduces yield, encouraging greenhouse planning. Temperature damage is **disabled** — no freezing or heat damage, preserving the chill rule.

### Underground & Ocean

| Mod                                                                                                          | Role                                                                              |
|--------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------|
| [TerraBlender](https://www.curseforge.com/minecraft/mc-mods/terrablender-neoforge) (NeoForge) **— REQUIRED** | Worldgen biome library — required by Darker Depths 2.1+ for biome placement       |
| [Darker Depths](https://www.curseforge.com/minecraft/mc-mods/darker-depths)                                  | Underground expansion — 3 new cave biomes, mobs, Forsaken Bronze, Living Crystals |
| [Upgrade Aquatic](https://www.curseforge.com/minecraft/mc-mods/upgrade-aquatic)                              | Ocean expansion — Thrasher mob, Ocean Ravines, Prismarine Coral, renewable sand   |
| [Hybrid Aquatic](https://www.curseforge.com/minecraft/mc-mods/hybrid-aquatic)                                | Marine creatures — sharks, crustaceans, otters, nautiluses, diving armor, corals  |

**Interdependency note — Hybrid Aquatic + Upgrade Aquatic**: Both expand oceans but cover different niches. Upgrade Aquatic adds mob mechanics (Thrasher) and ocean-floor features. Hybrid Aquatic adds creature variety (sharks, otters, crustaceans) and diving gear. They layer without conflict — more ocean life, more reasons to dive.

**Interdependency note — Hybrid Aquatic + Starcatcher (Wave 4)**: Starcatcher has built-in compatibility with Hybrid Aquatic. Hybrid Aquatic fish are automatically added as catchable entries with the corresponding entity and bucketed fish versions. No config needed.

**Interdependency note — Hybrid Aquatic + Better Fishtanks (Wave 4)**: Better Fishtanks can house Hybrid Aquatic creatures in its aquariums. Use Fish Bags to catch Hybrid Aquatic mobs and place them in tanks.

**Interdependency note — Darker Depths + TerraBlender**: Darker Depths 2.1+ requires a worldgen API to register its cave biomes. Either **TerraBlender** (NeoForge) or **Biolith** must be installed. TerraBlender NeoForge is the recommended choice (available for 1.21.1 on both CurseForge and Modrinth). Without it, Darker Depths crashes on startup with `Missing Worldgen API! Install TerraBlender or Biolith.`

**Interdependency note — Darker Depths + YUNG's Better Caves**: Darker Depths adds its own cave biomes (Molten Cavern, Sandy Catacombs, Crystal Cavern) that generate alongside YUNG's Better Caves' enlarged cave systems. Darker Depths biomes replace vanilla cave sections with themed variants, while YUNG's Better Caves changes the shape and connectivity of caves — they layer without direct conflict.

**Interdependency note — Upgrade Aquatic + YUNG's Better Ocean Monuments**: Upgrade Aquatic adds ocean mobs, coral variants, and ocean-floor features. It does not modify Ocean Monuments — YUNG's Better Ocean Monuments replaces monument structure generation without conflict. Upgrade Aquatic items (thrasher teeth, prismarine coral) integrate naturally with Ocean's Delight (Wave 4) for seafood recipes.

### Structures

| Mod                                                                                                             | Role                             |
|-----------------------------------------------------------------------------------------------------------------|----------------------------------|
| [YUNG\'s Better Dungeons](https://www.curseforge.com/minecraft/mc-mods/yungs-better-dungeons)                   | Overhauled dungeons              |
| [YUNG\'s Better Mineshafts](https://www.curseforge.com/minecraft/mc-mods/yungs-better-mineshafts)               | Improved mineshafts              |
| [YUNG\'s Better Strongholds](https://www.curseforge.com/minecraft/mc-mods/yungs-better-strongholds)             | Larger, more complex strongholds |
| [YUNG\'s Better Desert Temples](https://www.curseforge.com/minecraft/mc-mods/yungs-better-desert-temples)       | Multi-room desert temples        |
| [YUNG\'s Better Jungle Temples](https://www.curseforge.com/minecraft/mc-mods/yungs-better-jungle-temples)       | Jungle temples with traps        |
| [YUNG\'s Better Ocean Monuments](https://www.curseforge.com/minecraft/mc-mods/yungs-better-ocean-monuments)     | Redesigned ocean monuments       |
| [YUNG\'s Better Witch Huts](https://www.curseforge.com/minecraft/mc-mods/yungs-better-witch-huts)               | Expanded witch huts              |
| [YUNG\'s Better Nether Fortresses](https://www.curseforge.com/minecraft/mc-mods/yungs-better-nether-fortresses) | Improved nether fortresses       |
| [YUNG\'s Better Caves](https://www.curseforge.com/minecraft/mc-mods/yungs-better-caves)                         | Larger, more varied caves        |
| [Structory](https://www.curseforge.com/minecraft/data-packs/structory)                                          | New hand-crafted structures      |
| [Structory: Towers](https://www.curseforge.com/minecraft/mc-mods/structory-towers) v1.0.16                    | Biome-themed towers and outposts — **use v1.0.16** (v1.0.17 crashes on NeoForge) |
| [YUNG\'s Bridges](https://modrinth.com/mod/yungs-bridges)                                                       | 15+ natural bridges across terrain |
| [YUNG\'s Extras](https://modrinth.com/mod/yungs-extras)                                                         | Desert wells, obelisks, ruins, pillars |


### Nether Worldgen

| Mod                                                              | Role                                                                                |
|------------------------------------------------------------------|-------------------------------------------------------------------------------------|
| [Incendium](https://modrinth.com/mod/incendium) v5.4.4           | Nether biome and structure overhaul — 8 biomes, 9+ structures, 25+ custom weapons, Hovering Inferno boss |

**Incendium** is a server-side data pack (packaged as a NeoForge mod) by Starmute that completely revamps the Nether using only vanilla blocks. The Nether generation height is extended to 192. Eight new biomes (Quartz Flats, Withered Forest, Infernal Dunes, Ash Barrens, Toxic Heap, and more) replace vanilla Nether biomes with 3D terrain — jagged mountains, twisting caves, and themed landscapes. Nine new structures range from the massive Forbidden Castle (one of Minecraft's largest random structures) to the Sanctum (illager fortress), Nether Reactor, and Quartz Kitchen. Over 25 custom weapons and items (Trailblazer flame bow, Greatsword of Sacrifice, Hefty Pickaxe, Hazmat Suit) are rewarded from mobs and structures. New mobs include Toxic Slimes, Restless Spirits, a tamable Ghastling, and the summonable Hovering Inferno boss. The optional [Sparkles](https://modrinth.com/resourcepack/sparkles) resource pack gives Incendium items custom textures — without it, they use vanilla sprites with custom behavior and remain fully functional.

> **⚠️ New world or Nether reset required**: Incendium overhauls Nether terrain generation. Do not add to an existing world with an explored Nether — reset the Nether dimension or create a new world. Pre-generate Nether chunks with Chunky: enter the Nether → `/chunky radius 300` → `/chunky start`.

> **Note**: Incendium is listed as an alpha/unsupported port for 1.21.x while the Stardust Labs team works on a full rewrite. The mod is mature (34M+ downloads across all versions) and the featured v5.4.4 build is well-tested. The upcoming rewrite may require a Nether reset to upgrade — plan accordingly.

### Dimensions

| Mod                                                                                 | Role                                                                                       |
|-------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------|
| [The Aether](https://www.curseforge.com/minecraft/mc-mods/aether)                   | Sky dimension — safe islands, gear progression, dungeons with bosses                       |
| [Deep Aether](https://www.curseforge.com/minecraft/mc-mods/deep-aether)             | Aether addon — 5 new biomes, Skyjade/Stratus gear, new mobs, poison swamps. Gives the Aether the "Nether Update" treatment |
| [Umbral Skies](https://www.curseforge.com/minecraft/mc-mods/umbral-skies)           | Aether × Twilight Forest fusion — Aether-themed structures in TF, Aether boss trophies, TF-material gloves |
| [Deeper and Darker](https://www.curseforge.com/minecraft/mc-mods/deeperdarker)      | The "Otherside" dimension — deep dark themed, warden gear                                  |
| [Twilight Forest](https://www.curseforge.com/minecraft/mc-mods/the-twilight-forest) | Classic dimension — 6+ bosses with progression gates, unique loot, enchanted forest biomes |

### End Access & Structures

| Mod                                                                                                    | Role                                                                              |
|--------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------|
| [**End Remastered**](https://www.curseforge.com/minecraft/mc-mods/endremastered) v6.3.0                | Portal progression overhaul — 16 custom Ender Eyes hidden across vanilla structures and bosses. Find 12+ to open the End portal |
| [**Moog\'s End Structures**](https://www.curseforge.com/minecraft/mc-mods/moogs-end-structures) v2.0.3 | New structures to fill the End dimension                                          |
| [**YUNG\'s Better End Island**](https://modrinth.com/mod/yungs-better-end-island)                      | Overhauled dragon island — redesigned pillars, gateways, bell-tower summoning, new portal structure |

**End Remastered** replaces vanilla Ender Eyes with 16 custom eyes scattered across vanilla structures and bosses. The Cryptic Eye comes from enchanting, the Evil Eye from master clerics, the Wither Eye from the Wither — each eye has a unique source. Once you have 12+, follow them to a stronghold and insert all 12 to open the portal. This turns reaching the End from a grind (kill Endermen for pearls) into an exploration-driven scavenger hunt.

**Nullscape**: A data pack that transforms the End's terrain into alien shapes (floating islands, spires, arches, voids) with unique sky colors per biome. Nullscape handles terrain shape and sky only — it does not add biomes. Install as a data pack in the world's `datapacks/` folder.

**YUNG's Better End Island**: Overhauls the main End island where the dragon fight takes place. Redesigned obsidian pillars, End gateways, spawn platform, and central portal structure. The dragon no longer spawns automatically — approach the bell tower in the center to begin the fight. Resummoning uses crystals on four bedrock blocks in the tower wings (vanilla positions also work). Dragon AI and difficulty are unchanged — this is a visual and atmospheric upgrade only. Requires YUNG's API.

### Navigation

| Mod                                                                                   | Role                             |
|---------------------------------------------------------------------------------------|----------------------------------|
| [Explorer\'s Compass](https://www.curseforge.com/minecraft/mc-mods/explorers-compass) | Craftable structure/biome finder |

### Mobility

| Mod                                                                                         | Role                                                                                                                   |
|---------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------|
| [Immersive Aircraft](https://www.curseforge.com/minecraft/mc-mods/immersive-aircraft) 1.1.5 | Flyable aircraft — biplane, airship, cargo airship, warship, gyrocopter. Upgradable, colorable                         |
| [Small Ships](https://www.curseforge.com/minecraft/mc-mods/small-ships) 2.0.0-b2.1          | Sailable ships — brigantine, cog, drakkar, galley. Build, crew, and navigate; moveable bases on water. Beta (NeoForge) |
| [Hang Glider](https://www.curseforge.com/minecraft/mc-mods/hang-glider) v21.1.0             | Craftable hang glider — glide from any height. No fuel, no power. Phase 1 accessible exploration aid                   |
| [Man of Many Planes](https://www.curseforge.com/minecraft/mc-mods/man-of-many-planes) 0.2.1 | Immersive Aircraft addon — two Create-themed aircraft. Requires Immersive Aircraft                                     |
| [Immersive Machinery](https://modrinth.com/mod/immersive-machinery) 0.2.0       | Rustic utility machines — Copperfin submarine, Tunnel Digger, Redstone Sheep, Bamboo Bee item drone   |

### Field Guide

Opens a new way to experience the world. Craft a spyglass, then look at any plant, animal, or monster to catalog it in your Field Guide. Each entry you discover adds to your collection with lore about the creature or plant. Works with modded mobs and biomes — automatically discovers content from every mod in the pack.

Recommended companion mods:

| Mod                                                                                                                      | Feature Added              |
|--------------------------------------------------------------------------------------------------------------------------|----------------------------|
| [Immersive Overlays](https://modrinth.com/mod/immersive-overlays)                                                        | Biome displays — shows spawn details for entities |
| [Item Descriptions](https://modrinth.com/mod/item-descriptions)                                                          | Entry descriptions — auto-fills entry lore        |
| [Mod Descriptions](https://modrinth.com/resourcepack/mod-descriptions) (resource pack)                                   | Modded support — adds descriptions for modded entries |

### Configuration — Wave 2

**Aether** (`aether-common.toml`):

- `"Use default Curios' menu"` = `true` — Uses Curios API menu instead of Aether's separate accessories screen.
- `"Gives player Aether Portal Frame item"` = `false` — Player must build the portal manually.
- `"Gives starting loot on entry"` = `true` — Grants Book of Lore and Golden Parachutes on first entry.
- `"Show Patreon message"` = `false` — Removes Patreon nag screen.
- `"Add Temporary Freezing automatically"` = `false` — Disables Aether's temporary freezing datapack.
- `"Add Ruined Portals automatically"` = `false` — Disables ruined portal datapack.

**Interdependency note — Deep Aether + Aether**: Deep Aether is an addon that expands the Aether dimension with 5 new biomes, Skyjade/Stratus gear, and new mobs. It requires The Aether and Aeroblender (worldgen biome API) — Aeroblender comes **pre-bundled** with Deep Aether, no separate install needed. Aeroblender itself depends on TerraBlender (already in Wave 0.5 dependencies). Stratus armor grants slow-fall and dash abilities, extending the Aether's power fantasy progression. All content is within the Aether dimension — no new dimension added.

**Interdependency note — Umbral Skies + Aether + Twilight Forest**: Umbral Skies connects Aether and Twilight Forest. Aether-styled Druid Huts and Wells generate in Twilight Forest. Aether boss trophies appear in TF's trophy display style. Gloves can be crafted from TF materials (ironwood, fiery, knightmetal, phantom). No config needed — install and both dimensions gain crossover content.

**Interdependency note — Immersive Aircraft + Aether**: Aircraft can fly in the Aether dimension. An airship is a natural way to navigate Aether islands — it pairs well with the dimension's sky-island geography.

**Interdependency note — Man of Many Planes + Immersive Aircraft**: Man of Many Planes is a direct addon for Immersive Aircraft that adds two Create-themed aircraft. It requires Immersive Aircraft to function. The addon planes share the same fuel, parking, and dimension traversal behavior as base Immersive Aircraft vehicles.

**Interdependency note — Hang Glider + Create Ornithopter Glider**: The Hang Glider provides simpler, earlier flight than the Create Ornithopter Glider (Wave 1). The Hang Glider requires only wood and leather (Phase 1 accessible, no power), while the Ornithopter Glider needs Create rotational power (Phase 1.5+). Both coexist as a natural progression: Hang Glider for early-Phase-1 exploration, Ornithopter Glider once Create infrastructure is online, Immersive Aircraft for powered mid-game flight.

**Interdependency note — Immersive Machinery + Immersive Aircraft**: Immersive Machinery is ported to Immersive Aircraft 1.2.0+ and integrates with its fuel/vehicle system. The Copperfin submarine uses a conduit for power rather than IA fuel, so it works independently. The Bamboo Bee is a simple item transport drone — complementary to but simpler than Create belts or AE2. The Redstone Sheep provides early-game farming automation before Create harvesters come online. The Tunnel Digger is a piloted alternative to Create's mining contraptions — less scalable but more hands-on. All four machines are Phase 1 accessible, filling gaps before Create/Mekanism/AE2 infrastructure comes online in Phase 2.

**Interdependency note — Twilight Forest + Apotheosis**: Apotheosis boss affixes (Wave 3) apply to Twilight Forest bosses. A Naga with the "Tough" affix is significantly harder. This is intended — it keeps dimension bosses relevant even with late-game gear. If a boss feels too strong, the player can return after better equipment or use Apotheosis gems/runes for the edge.

**Interdependency note — Incendium + YUNG's Better Nether Fortresses**: Incendium replaces Nether biome terrain and adds its own structures; YUNG's Better Nether Fortresses overhauls the vanilla fortress structure generation. They don't conflict — Incendium handles biomes and new structures, YUNG's handles fortress interiors. Incendium fortresses will use YUNG's layout if the fortress is in an Incendium biome.

**Interdependency note — Incendium + Apotheosis**: Incendium's custom weapons (Trailblazer, Greatsword of Sacrifice, Hefty Pickaxe, etc.) are vanilla item variants — Apotheosis affixes, gems, and reforging apply to them. Incendium mobs and the Hovering Inferno boss also receive Apotheosis boss affixes (Wave 3), scaling their difficulty with player progression.

**Interdependency note — Incendium + My Nether's Delight**: Incendium's new Nether biomes introduce unique block palettes and mob drops — some may serve as My Nether's Delight ingredients. Check EMI for new recipes once both mods are installed.

**Interdependency note — Incendium + Cataclysm**: L_Ender's Cataclysm's Netherite Monstrosity and Ignite bosses spawn in the Nether. Incendium's biome overhaul changes where these bosses can appear — they'll spawn in Incendium biomes instead of vanilla Nether wastes/basalt deltas. Use the Explorer's Compass to locate them in the transformed Nether.

**Interdependency note — Incendium + Fire Rekindled**: Fire Rekindled's animated Nether textures (soul fire, lava, magma, nether portal) apply to Incendium's Nether terrain — the biome overhaul benefits from the enhanced visuals automatically.


**Tectonic** (`config/tectonic.json`):

| Setting | Default | Recommended | Why |
|---------|---------|-------------|-----|
| `oceans.ocean_depth` | `-0.22` | **`-0.35`** | Standard ocean floor ~45 blocks deep (vs vanilla ~28) |
| `oceans.deep_ocean_depth` | `-0.45` | **`-0.7`** | Deep ocean trenches ~90 blocks deep — into deepslate at Y=-28 |
| `oceans.monument_offset` | `-30` | **`-55`** | Ocean monuments sink to match deeper ocean floor |
| `caves.ore_fix` | `false` | **`true`** | Redistributes ores when terrain extends below vanilla Y=-64 |
| `global_terrain.min_y` | `-64` | **`-96`** | Lower bedrock to give 68 blocks of crust below the trench floor |

**How depths work**: The noise value maps linearly — `|value| / 0.5 × 64` = blocks below sea level (Y=62). With `deep_ocean_depth: -0.7`: $0.7 / 0.5 times 64 = 90$ blocks deep, trench floor at Y=-28 (solid deepslate). With `ocean_depth: -0.35`: $0.35 / 0.5 times 64 = 45$ blocks deep, floor at Y=17. `monument_offset: -55` places ocean monument bases at Y=-16, hovering 12 blocks above the trench floor.

**Ore generation with `min_y: -96` + `ore_fix: true`**: Lowering bedrock expands the vertical range ore must cover. `ore_fix` remaps ore distributions to the new depth envelope — diamond still clusters near the bottom, iron and coal fill the expanded crust. Without `ore_fix`, the extra stone between Y=-64 and Y=-96 would be barren.

> **⚠️ New world required**: These are worldgen changes. Existing chunks keep their old terrain. Pre-generate with Chunky: fly to ocean → `/chunky radius 300` → `/chunky start`.

**Quick verification**: Stand at ocean surface (Y=62), look down with F3 open. Deep oceans should show the floor at Y=-28 (±5). Standard oceans at Y=17 (±5). Monuments should have their base at Y=-16 (±5) — floating ~12 blocks above the trench floor. If values are off, adjust in-game via Mod Menu → Tectonic → Configure.

The world is dramatically transformed. Terralith overhauls biomes, Tectonic reshapes terrain, YUNG's expands every structure, and three new dimensions open up.

### Overworld

#### Terrain — Terralith + Tectonic

| Aspect    | What changed                                                                         | What to look for                           |
|-----------|--------------------------------------------------------------------------------------|--------------------------------------------|
| Mountains | Taller, steeper. Painted mountains (orange/white layers), volcanic peaks             | Build in mountain valleys                  |
| Oceans    | 90-block abyssal trenches, 45-block ocean floor, monuments floating in the deep | Use Small Ships (below) to cross, dive with Hybrid Aquatic gear |
| Caves     | YUNG's Better Caves — wider tunnels, deeper chasms                                   | Easier to navigate, more impressive        |
| Rivers    | Deeper valleys from Tectonic, shattered savannahs                                    | Follow rivers for scenic travel            |

**Pro tip**: These worldgen mods work best in newly generated chunks. Every direction has something different.

#### Environment — Serene Seasons

Four seasons with visual foliage changes and crop growth modifiers:

- **Spring/Summer/Autumn/Winter** — foliage colors shift realistically
- **Crop impact ON** — planting in wrong season reduces yield. Plan greenhouses for off-season crops
- **Temperature damage OFF** — no freezing or heat damage (chill rule preserved)

**Integration**: Farmer's Delight crops are affected by seasons. Build glass greenhouses or use Season Sensor blocks to track optimal planting times.

#### YUNG's Overhauled Structures

Every vanilla structure is expanded:

| Structure                | What's new                                  | Loot                                  |
|--------------------------|---------------------------------------------|---------------------------------------|
| Better Dungeons          | Multi-room with spawners, traps, treasure   | Early iron, gold, enchanted books     |
| Better Mineshafts        | Multi-level with support beams, loot caches | Rails, minecarts, ore samples         |
| Better Strongholds       | Deeper portal room, more libraries/prisons  | Enchanted books, mid-game exploration |
| Better Desert Temples    | Multi-room underground, traps, vault        | High-value vault loot                 |
| Better Jungle Temples    | Vertical temple, redstone puzzles           | Puzzle-solving loot                   |
| Better Ocean Monuments   | New rooms, more elder guardians             | Better sponge room loot               |
| Better Witch Huts        | Expanded hut with potion lab                | Brewing supplies, potions             |
| Better Nether Fortresses | Districts (blaze, wither skeleton, strider) | Nether wart, blaze rods, skulls       |
| Better End Island        | Redesigned pillars, bell tower, new portal  | Dragon egg, gateway access            |

#### Structory, Structory Towers & YUNG's Additions

- **Structory** — dozens of hand-crafted structures: camps, shrines, castles, towers, walled towns
- **Structory: Towers** — biome-themed towers, outposts, and landmarks with custom loot. Integrates with Waystones — towers often have a Waystone nearby. **Use v1.0.16** — v1.0.17 crashes on NeoForge with a config-loading race condition (`Cannot get config value before config is loaded`)
- **YUNG's Bridges** — 15+ types of naturally generated bridges with biome-specific variants, spanning rivers and ravines
- **YUNG's Extras** — small vanilla+ additions: improved Desert Wells (rare Wishing Wells with treasure), Desert Obelisks, Flame Outposts, scattered ruins and pillars

All require **YUNG's API** (already in Wave 0.5 Dependencies). Structory and Structory: Towers are independent — install both for maximum structure variety.

**What to do**: Explore! Mark interesting structures on your JourneyMap (fullscreen map → right-click to set waypoint). Return with an Explorer's Compass.

#### Explorer's Compass — Navigation Tool

1. Craft: 1 compass + 4 iron ingots in a + pattern
2. Right-click → GUI opens
3. Search tab: type biome or structure name (partial matching — "cherry" finds all cherry biomes)
4. Select an entry → compass points to nearest instance, distance shown
5. Follow the arrow in real-time
6. When found, add a JourneyMap waypoint

**Configuration** (`config/explorerscompass-common.toml` → `[General]` section):

| Setting | Default | Recommended | Why |
|---|---|---|---|
| `maxRadius` | 10000 | **5000** | Halve search radius — you must explore ~5K blocks before the compass finds a structure. Prevents instant discovery from spawn |
| `maxSamples` | 100000 | **50000** | Fewer search samples = lower search accuracy at range. Combined with reduced radius, structures won't be found until you're meaningfully close |
| `maxNextSearches` | 100 | **10** | Limit "find next" to 10 — once you've cleared the 10 nearest instances, explore further and search again |
| `displayCoordinates` | true | **true** | Show X/Z coords and distance on HUD — essential QoL |
| `defaultXpLevels` | 0 | **0** | No XP cost for searching — chill pack, navigation shouldn't gate |

**Effect**: With `maxRadius = 5000`, the compass scans a ~10K×10K area centered on you instead of 20K×20K. You'll need to explore new regions to find new structures — no more "find the nearest End City from spawn."

---

### Underground & Ocean

#### Darker Depths — Expanded Underground

3 unique cave biomes deep underground:

| Biome               | Depth        | What to expect                            | Key resources                                          |
|---------------------|--------------|-------------------------------------------|--------------------------------------------------------|
| **Molten Cavern**   | Deep (Y < 0) | Lava pools, geysers, amber clusters       | Living Crystals (feed diamond to grow), Crystal Melons |
| **Sandy Catacombs** | Mid (Y 0-20) | Petrified roots, aridrock, Void Soul mobs | Void Souls (bottle them), Forsaken Bronze              |
| **Crystal Cavern**  | Any depth    | Growing crystals, glowing ambience        | Crystal materials for decorative/utility               |

**Living Crystals**: Found dead in Molten Cavern. Feed a diamond → reawakens, grows, spreads to nearby diamond ore. Crystal Melons (off-hand) = unbreakable tools with +20% speed/damage for 5 minutes.

**Void Souls**: Kill a Void Soul mob → becomes invulnerable orb (60 seconds). Capture in glass bottle. Use amber to prevent expiration. Forsaken Bronze from void-touched materials has death-related abilities.

**Compatibility**: Darker Depths biomes generate inside YUNG's Better Caves systems — they layer without conflict.

**Required dependency**: TerraBlender NeoForge (auto-installed). Darker Depths 2.1+ crashes without it.

#### Upgrade Aquatic — Richer Oceans

| Feature            | What it does                                                                                 |
|--------------------|----------------------------------------------------------------------------------------------|
| **Thrasher**       | Fantasy shark-like mob. Uses sonar, thrashes prey. Drops thrasher teeth for trident crafting |
| **Ocean Ravines**  | Underwater ravines with Prismarine Coral — harvest for decorative blocks                     |
| **Nautilus**       | Passive mob. Drops shells for conduit crafting                                               |
| **Renewable sand** | Bubble columns below sandstone convert stone to sand                                         |

**Integration**: Thrasher teeth and prismarine coral integrate with Ocean's Delight (Wave 4) for seafood recipes. Compatible with YUNG's Better Ocean Monuments.

#### Hybrid Aquatic — Marine Creatures

Expands underwater life with realistic marine creatures and diving equipment.

**Creatures added**:

| Category        | Examples                                         |
|-----------------|--------------------------------------------------|
| **Fish**        | Reef fish, clownfish, groupers, puffers          |
| **Sharks**      | Hammerhead, great white — neutral until provoked |
| **Crustaceans** | Crabs, lobsters, shrimp — drop food ingredients  |
| **Critters**    | Otters (tameable!), nautiluses, seahorses        |
| **Mini-boss**   | Deep sea guardian — found in ocean caves         |

**Blocks & items**:

| Item              | Use                                                         |
|-------------------|-------------------------------------------------------------|
| **Diving Armor**  | Full set — extended underwater breathing, faster swim speed |
| **Sea Sponges**   | Absorb water, decorative blocks                             |
| **Fishing Hooks** | Specialty hooks for better catches                          |
| **Crates**        | Storage blocks with ocean aesthetic                         |
| **Anemones**      | Decorative coral-like blocks                                |
| **New Corals**    | Additional coral variants for ocean decoration              |

**Getting started**:

1. Explore oceans — creatures spawn naturally in rivers, swamps, and oceans
2. Kill crustaceans → food ingredients for Farmer's Delight recipes
3. Find deep sea guardian in ocean caves → challenging mini-boss fight
4. Collect coral and anemones → decorate your underwater base
5. Craft diving armor → extended ocean exploration becomes viable

**Integration with Starcatcher (Wave 4)**: Starcatcher automatically adds Hybrid Aquatic fish as catchable entries. No config needed — more fish to catch, more variety in your catalogue.

**Integration with Better Fishtanks (Wave 4)**: Use Fish Bags to catch Hybrid Aquatic creatures and place them in aquariums. Otters, nautiluses, and reef fish make excellent tank inhabitants.

**Integration with Ocean's Delight (Wave 4)**: Hybrid Aquatic crustacean drops (crab meat, lobster tail) integrate as seafood ingredients.

---

### Mobility

#### Immersive Aircraft

Vanilla-style flyable aircraft. Mid-game (requires iron + basic Create/Mek materials).

| Vehicle       | Fuel          | Seats | Cargo    | Best for                     |
|---------------|---------------|-------|----------|------------------------------|
| Biplane       | Coal/charcoal | 1     | None     | Fast personal flight, combat |
| Airship       | Coal/charcoal | 3     | 9 slots  | Exploration with friends     |
| Cargo Airship | Coal/charcoal | 1     | 27 slots | Material transport           |
| Warship       | Coal/charcoal | 3     | 9 slots  | Armed combat, defense        |
| Gyrocopter    | Coal/charcoal | 1     | None     | Agile short-range flight     |

**How**: Craft at table (check EMI — iron + wool/leather), place on ground, right-click to enter. `W` to ascend, `S` to descend, `A/D` to rotate. Any furnace fuel works.

**Integration**: Aircraft work in the **Aether** — fly between sky islands without bridges. Park indoors or on high platforms (mobs damage parked aircraft).

#### Small Ships

Buildable, sailable ships. **Phase 1 accessible** — requires wood, wool, iron.

| Ship       | Crew | Cargo    | Best for              |
|------------|------|----------|-----------------------|
| Brigantine | 1    | 18 slots | All-purpose sailing   |
| Cog        | 2    | 27 slots | Cargo transport       |
| Drakkar    | 2    | 9 slots  | Fast travel, combat   |
| Galley     | 1    | 9 slots  | Early personal vessel |

**How**: Craft hull (wood) + mast (wood + wool) + helm. Right-click water to place. Right-click helm to board. `W/S` to move, `A/D` to steer. Speed depends on wind direction. Dismount to park — ships float where left. Right-click with lead to tow.

**Note**: Beta for NeoForge (2.0.0-b2.1). Core features work; minor bugs expected.

#### Hang Glider

Simple fabric-and-wood glider. **Phase 1 accessible** — requires only wood and leather, no fuel or power.

- Craft the glider (check EMI — wood + leather + string)
- Equip in your hand and jump off any height to glide
- Hold forward to maintain speed, steer with mouse
- Dismount by pressing sneak — you'll drop safely to the ground
- Requires **Puzzles Lib** (already in pack from Wave 5 / Easy Anvils)

**Progression**: The Hang Glider is the earliest flight option. It provides gentle gliding for early exploration before the player has Create power for the Ornithopter Glider (Wave 1) or fuel infrastructure for Immersive Aircraft. It cannot gain altitude — it's pure glide, not powered flight. Ideal for scouting Terralith biomes from mountain peaks.

**Config**: No changes needed — default behavior is ideal. Gliding is inherently chill (no fuel, no maintenance, no risk of crashing unless you fly into terrain).

#### Man of Many Planes — Immersive Aircraft Addon

Adds two Create-themed aircraft to Immersive Aircraft. **Phase 2 accessible** — requires Immersive Aircraft (iron + wool/leather) plus Create materials (andesite alloy, brass).

- **Two new aircraft** — brass-and-mechanical themed designs
- Uses the same fuel, parking, and controls as base Immersive Aircraft
- Works in the Aether dimension like all Immersive Aircraft
- Craft recipes available in EMI

**Integration**: These aircraft offer a visual and thematic bridge between Create (Wave 1) and Immersive Aircraft (Wave 2). A player deep in Create will appreciate aircraft that match their factory's aesthetic.

---

### Dimensions

#### The Aether — Sky Dimension

Safe, beautiful sky islands. Gentle adventure curve.

**Portal**: 4×5 glowstone frame (like Nether portal) → fill with water bucket → step through.

**Progression**:

- **Phase 1**: Spawn on sky island. Collect **ambrosium** (Aether coal) and **zanite** (Aether iron — mining level increases as durability drops)
- **Phase 2**: Bronze dungeon → defeat **Slider** (hit when blue, avoid when red) → Golden Amber
- **Phase 3**: Silver dungeon → defeat **Valkyrie Queen** → Valkyrie tools (flight-enabled weapons), **Gravitite** (floats upward when right-clicked)
- **Phase 4**: Highest crystal islands → **Sun Spirit** — bring fire resistance

**Tip**: Not required for any tech progression. Visit when you want a change of pace. MekaSuit trivializes all Aether combat.

**Deep Aether expansion**: Installed alongside — it adds 5 new biomes (Aerglow Forest, Aerlavender Fields, Yagroot Swamp, Golden Heights) that generate organically in the Aether. **Skyjade** tools/armor (stronger at full durability) appear in holystone. **Stratus** armor (slow-fall + dash — press R with full set) is crafted from Sterling Aerclouds found above Y=200. The Yagroot Swamp biome introduces poison liquid, Virulent Quicksand, and the Spooky Ring (night damage bonus). All content is purely additive — the base Aether progression is unchanged.

**Config** (`aether-common.toml`):

- `"Use default Curios' menu"` = `true` — uses Curios API menu
- `"Gives player Aether Portal Frame item"` = `false` — build portal manually
- `"Gives starting loot on entry"` = `true` — Book of Lore + Golden Parachutes on first entry
- `"Show Patreon message"` = `false`
- `"Add Temporary Freezing automatically"` = `false`
- `"Add Ruined Portals automatically"` = `false`

#### Twilight Forest — Progression Dimension

Dark, enchanted dimension with strict boss progression. Each boss kill unlocks the next area.

**Portal**: Find a 2×2 water pool → surround with 12 flowers (any type) → throw a **diamond** into the pool → lightning strikes → step into the water.

**Note**: One-way down. To return, craft a **Twilight Portal** block or use a Waystone (place one immediately on arrival).

**Boss progression**:

| Order | Boss             | Location       | Strategy                                                                | Unlock                             |
|-------|------------------|----------------|-------------------------------------------------------------------------|------------------------------------|
| 1     | **Naga**         | Naga Courtyard | Strafe charges, hit tail segment                                        | Lich Tower                         |
| 2     | **Lich**         | Lich Tower     | Dodge projectiles, hit during cooldown. Shield reflects projectiles     | Twilight Swamp                     |
| 3     | **Minoshroom**   | Labyrinth      | Find minotaur room, kill it, grab Meef Stroganoff                       | Firefly Forest                     |
| 4     | **Hydra**        | Hydra Lair     | Dodge fireballs, melee heads. Drops **Fiery Tears**                     | Ur-Ghast fight                     |
| 5     | **Ur-Ghast**     | Dark Tower     | Shoot tentacles, then main body. Dark Forest has blindness — bring milk | Snowy Forest + Highlands           |
| 6     | **Snow Queen**   | Aurora Palace  | Push into pillars to break shield. Avoid ice arrows                     | Final Castle                       |
| 7     | **Final Castle** | Highlands      | Multi-boss fight. Needs weapons from all prior bosses                   | **Giant's Pick** (5×3 mining area) |

**Key items**:

- **Ironwood** gear — smelt ironwood ingots from iron + magic beans. Good starter armor
- **Fiery** gear — iron + blaze powder. Mid-tier weapons
- **Knightmetal** — from Lich Tower
- **Phantom armor** — creative flight for short bursts. From Ur-Ghast tentacles
- **Giant's Pick** — 5×3×5 mining area. From Final Castle

**Tips**:

- Always twilight — no day/night cycle. Mobs spawn any time
- Place **Waystones** frequently
- **Twilight Forest Maze Map** (paper + torch) reveals maze/castle layouts
- Bring **milk buckets** for Dark Forest blindness
- Your AE2 wireless terminal, Mekanism gear, and Create tools all work here

**Integration**: Apotheosis boss affixes apply to Twilight Forest bosses. A Naga with "Tough" affix is significantly harder — intended to keep dimension bosses relevant even with late-game gear.

#### Deeper and Darker — The Otherside

Deep-dark-themed dimension accessed through the Deep Dark.

**How to enter**:

1. Find a **Deep Dark** biome (Y=-40 or below)
2. Locate an **Ancient City** (Explorer's Compass → search "ancient city")
3. Kill the **Warden** — drops a **Warden Heart**
4. Craft: Warden Heart + 8 sculk → **Otherside Portal Catalyst**
5. Build a 4×5 frame of **reinforced deepslate** → right-click catalyst on frame → step through

**Warden strategy**: Detects by sound. Use wool to silence footsteps. Sneak near sculk shriekers. Throw snowballs to distract. 500 HP, slow attacks — hit and run.

**What to expect**:

- 4 new biomes — sculk forests, frozen deep, expanded ancient cities
- 8 new mobs — sculk variants, stalker (ranged), shriek worm (ambush), **Sculk Leech** (heals on damage)
- **Miniboss**: Shattered Warden — drops **Sculk Transmitter** components
- **Key loot**: **Sculk Transmitter** — Elytra upgrade for mid-flight teleportation. Combine at smithing table

**Gear**: Warden-themed armor/tools ≈ diamond tier with unique abilities (sound-based attacks, silence fields).

**Difficulty**: Harder than Aether, easier than Twilight Forest's Dark Forest. Come with iron-tier armor + decent weapon.

---

### End Access — End Remastered

The End portal now requires a scavenger hunt instead of a grind.

**Old method**: Kill Endermen → craft Ender Eyes → find stronghold → insert 12 eyes.

**New method**: Find 16 unique custom Ender Eyes scattered across the world:

| Eye | Source | Eye | Source |
|---|---|---|---|
| **Old Eye** | Desert Pyramids | **Cursed Eye** | Bastion treasure |
| **Nether Eye** | Nether Fortresses | **Exotic Eye** | Craft (aquatic items) |
| **Cold Eye** | Igloos | **Evil Eye** | Master Cleric trade |
| **Rogue Eye** | Jungle Pyramids | **Undead Eye** | Craft (Undead Soul from skeleton horse) |
| **Black Eye** | Buried Chests | **Cryptic Eye** | Random chance when enchanting |
| **Magical Eye** | Evoker drop | **Wither Eye** | Wither drop |
| **Lost Eye** | Mineshafts | **Guardian Eye** | Elder Guardian drop |
| **Corrupted Eye** | Pillager Outposts | **Witch Eye** | Craft (Witch Pupil) |

**How it works**: Find 12+ unique eyes. Hold one to locate the stronghold (like vanilla Ender Eyes). Insert all 12 into the portal frame to open it. If a vanilla eye is already in a frame, right-click with a custom eye to replace it.

**Tip**: This naturally paces your journey to the End — you'll need to explore deserts, swamps, nether fortresses, ocean monuments, woodland mansions, and bastions before you can fight the dragon. By the time you open the portal, you'll have gear, experience, and world knowledge that makes the End a natural next step rather than a rushed target.

### End Dimension

The End is now a layered destination — each mod handles a distinct piece:

| Mod | What it does |
|-----|-------------|
| **End Remastered** | How you get here — 16 custom Ender Eyes scattered across the world |
| **YUNG's Better End Island** | The main island — redesigned dragon arena with bell-tower summoning |
| **Nullscape** (data pack) | The outer islands — surreal floating terrain, spires, arches, unique sky colors |
| **Moog's End Structures** | Structures on outer islands — towers, ruins, dungeons with better-than-vanilla loot |

**Ender's Delight** (Wave 4) adds food cooked from End ingredients — useful status effects for End exploration.

**Progression**:

- Post-Dragon: Explore outer islands for new structures and loot
- Mid-End: Tackle Moog's structures for unique weapons
- Endgame: Build an End base — Nullscape terrain makes for dramatic architecture

**Tip**: Place a Waystone immediately. Build a small AE2 subnet with wireless terminal to access main base storage.

---

### Session Plan — Wave 2

| Session                           | Focus                                                                                                                                                                   | What to Do                       |
|-----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------|
| **Session 1 — Scout**             | Craft Explorer's Compass. Search for cherry grove or redwood forest. Mark waypoints on JourneyMap. Loot a YUNG's dungeon. Craft a Hang Glider for early aerial scouting | First taste of transformed world |
| **Session 2 — Nether**            | Build Nether portal. Scout Incendium biomes. Find a fortress. Rescue a Ghastling from an Abandoned Tower. Mark a Waystone at your portal                                     | Nether foothold, ally, blaze rods |
| **Session 3 — Aether**            | Gather glowstone. Build Aether portal. Explore first sky island, collect ambrosium and zanite                                                                           | Safe new dimension               |
| **Session 4 — Twilight Forest**   | Find 2×2 pool, surround with flowers, throw diamond. Enter, place Waystone. Defeat the Naga                                                                             | First Twilight boss              |
| **Session 5+ — Deep exploration** | Work through Twilight Forest bosses. Visit Deeper and Darker (find Ancient City). Explore End post-Dragon                                                               | Boss loot, dimension resources   |
| **Session 6 — Aircraft**          | Craft a biplane or airship (iron + wool). Explore Terralith biomes from the air. Craft Man of Many Planes aircraft for Create-themed flight                             | Fast travel, scenic views        |

**Pacing tip**: Explore between factory builds. Grab your compass and walk in a random direction when waiting for Mekanism to process or Create to assemble.

---

<!--raw-typst #pagebreak() -->

## Wave 2.5 — Building Your Home

You've explored the world, found stunning biomes, and gathered materials. Now it's time to stop surviving and start **living**. This section covers how to build a home you're proud of — no creative mode required, no artistic talent assumed. Just a few principles that separate "dirt hut" from "place I actually want to come back to."

Building is a core pillar of this modpack. At any point you can stop optimizing factories and just build something beautiful. This guide works at any stage — but it's especially satisfying now, when you have enough materials to be selective but haven't yet automated everything.

### Finding Your Build Site

Before placing a single block, find a location that inspires you. You have tools for this:

| Tool                   | How                                                                                      | Why                                                |
|------------------------|------------------------------------------------------------------------------------------|----------------------------------------------------|
| **Explorer's Compass** | Craft: 1 compass + 4 iron (+pattern). Right-click → search "cherry", "redwood", "meadow" | Find specific biomes by name                       |
| **JourneyMap**         | Press `J` → explore the fullscreen map                                                   | See terrain, biomes, and your marked waypoints     |
| **Small Ship**         | Sail along coastlines                                                                    | Discover waterfronts you'd miss on foot            |
| **Biplane**            | Fly low over terrain                                                                     | Spot valley builds, mountain perches, river mouths |

**What to look for**:

- **Waterfront** — river banks, ocean cliffs, lake shores. Water reflects builds beautifully with shaders
- **Mountain valleys** — enclosed, dramatic, defensible. Terralith makes these spectacular
- **Forest clearings** — surrounded by trees feels cozy and sheltered
- **Cliff faces** — cut into the hillside for a build that looks permanent, not placed
- **Cherry groves** — pink petals + mountain backdrop = instant atmosphere

**Pro tip**: Place a **Waystone** at your chosen site before you start building. You'll want to teleport back with materials.

### The Block Palette Rule

The single biggest upgrade from "meh" to "wow" is using **3–5 complementary blocks** instead of one. Every great build you've ever seen uses a palette. Here's the formula:

| Role          | Percentage | Purpose                                                    |
|---------------|------------|------------------------------------------------------------|
| **Primary**   | ~50%       | Dominant wall material — defines the build                 |
| **Secondary** | ~30%       | Complementary texture — similar tone, different surface    |
| **Accent**    | ~20%       | Detail material — corners, trim, highlights, pops of color |

#### Finding Palettes: BlockPalettes.com

**[BlockPalettes.com](https://www.blockpalettes.com)** — the single best resource for block combination inspiration. Browse hundreds of community-created palettes, each showing exactly which blocks work together. Filter by style, color, or mood.

**How to use it**:

1. Open [blockpalettes.com/palettes](https://www.blockpalettes.com/palettes)
2. Browse featured palettes or filter by color/theme
3. Click a palette to see all blocks in the combination
4. Test it: place a 5×5 section in a flat area, step back, see if it works
5. If any block fights the others, swap it out

#### Starter Palettes for This Modpack

These palettes use blocks you can gather in Waves 0–2. Each fits a different biome and vibe:

**Medieval Stone** — stone brick + cracked stone brick + mossy stone brick + cobblestone (corners/base)

**Cozy Cottage** — oak planks + spruce planks + cobblestone (chimney/base) + oak leaves (roofline trim)

**Desert Sandstone** — sandstone + smooth sandstone + cut sandstone + terracotta accents

**Nordic Cabin** — spruce planks + stripped spruce log + stone + dark oak stairs (roof)

**Cherry Zen** — cherry planks + cherry log + stone brick + pink petals (garden)

**Mountain Fortress** — stone brick + deepslate tiles + tuff bricks + copper (accents/patina)

**Tropical** — jungle planks + bamboo mosaic + mangrove propagules + sand

**Endstone Palace** — purpur block + purpur pillar + end stone bricks + chorus flower (End builds)

**Tip**: Open BlockPalettes.com in your browser while you build. When you're stuck on what goes together, browse palettes until something clicks.

### Depth and Layering

Flat walls are the second most common beginner mistake (after single-block builds). A flat wall looks like a placeholder. A layered wall looks **built**.

#### Five Techniques That Transform Flat Walls

| Technique                | How to do it                                                                               | Why it works                                                        |
|--------------------------|--------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| **Inset windows**        | Push glass back one block into the wall instead of flush with the surface                  | Creates shadow lines that frame windows                             |
| **Outcropped corners**   | Extend corner blocks one block forward from the main wall plane                            | Breaks up 90-degree edges, adds structural feel                     |
| **Alternating depth**    | Every 3–4 blocks along a wall, push one column back or pull one forward                    | Wall reads as textured rather than uniform                          |
| **Stair/slab detailing** | Upside-down stairs under windowsills, stairs as roofline trim, slabs as half-height ledges | Catches light and shadow in ways full blocks can't                  |
| **Overhanging roofline** | Always extend the roof 1–2 blocks past the wall on all sides                               | Creates shadow line that defines where building ends and sky begins |

**Fastest single improvement**: Add vertical **log pillars** every 3–5 blocks along exterior walls. Logs imply structural support and instantly break up flat surfaces. Works with every style.

### Roof Design

A bad roof ruins a good build. A good roof makes even a simple box look intentional.

#### Three Roof Styles (Pick One)

| Style                 | Shape                           | Best for                   | How                                                                               |
|-----------------------|---------------------------------|----------------------------|-----------------------------------------------------------------------------------|
| **A-frame (pitched)** | Triangle cross-section          | Cottages, cabins, medieval | Stairs ascending from each wall meeting at a ridge. Overhang 1 block on all sides |
| **Flat with parapet** | Flat top, raised edges          | Modern, desert, fortress   | Slabs or full blocks, 1-block wall around perimeter                               |
| **Stepped pyramid**   | Layered squares getting smaller | Asian, temples, fantasy    | Each layer 2 blocks smaller than the one below                                    |

**Material rule**: Roof material should **contrast** with wall material. Dark roof on light walls, or vice versa. Spruce stairs on oak walls. Deepslate on stone brick. Blackstone on sandstone.

**Common mistake**: Roof too small. The roof should be wider and taller than feels "necessary." An oversized roof looks dramatic; an undersized one looks like a hat that doesn't fit.

### Interior Design

An empty interior is as bad as a bad exterior. Minecraft has no furniture mod yet (Wave 6 adds Handcrafted), but vanilla blocks create convincing rooms.

#### Lighting (Critical)

**Never place torches on interior walls.** They look improvised. Better options:

| Light source        | Look                 | How                                                         |
|---------------------|----------------------|-------------------------------------------------------------|
| **Lanterns**        | Warm, architectural  | Hang from ceiling via fence post                            |
| **Glow berries**    | Organic, trailing    | Place on ceiling, let vines trail down                      |
| **Sea lanterns**    | Clean, neutral       | Modern or sci-fi builds                                     |
| **Jack o'lanterns** | Hidden under carpets | Floor lighting without visible sources                      |
| **Froglights**      | Subtle, colorful     | Pearlescent/verdant/ochre variants from Aether or Overworld |

#### Functional Rooms

| Room         | Key blocks                              | Details                                                                           |
|--------------|-----------------------------------------|-----------------------------------------------------------------------------------|
| **Kitchen**  | Smoker, campfire, barrels, chests       | Barrel = cabinets. Chest with food item frame = pantry. Cooking pot over campfire |
| **Bedroom**  | Bed, crafting table, bookshelf, lantern | Banner on wall above bed as headboard. Carpet at foot of bed                      |
| **Library**  | Bookshelves, lectern, quill             | Cover walls with bookshelves for instant warmth                                   |
| **Storage**  | Sophisticated Storage barrels, chests   | Organized rows. Sign labels on each barrel                                        |
| **Workshop** | Crafting table, furnace, anvil          | Industrial feel — stone walls, iron accents                                       |

**Pro tip**: Place **item frames** on walls with maps, banners, or shields inside. They function as paintings with more variety.

### Blending Into the Landscape

A build that looks dropped from the sky is unfinished, no matter how detailed the structure itself is.

**Key principles**:

- **Use biome-appropriate materials** — spruce in cold biomes, sandstone in desert, dark oak near jungle edges. The build should look like it was built from local materials, not imported
- **Never leave flat grass at the base** — add a slight slope toward the entrance, gravel/cobblestone paths leading away, small dirt mounds or rock outcroppings at corners
- **Plant trees near the build** — a cluster of 2–3 trees on one side breaks the silhouette and gives context. Use the biome's native trees
- **Cut into hillsides** — a build emerging from a hillside looks permanent; one sitting on top looks temporary
- **Paths and surroundings** — gravel paths, stone brick walkways, and lantern posts leading away from the entrance sell the idea that people live here
- **Never run more than 7 blocks in a straight line** when shaping terrain — curves look natural, straight lines look artificial

### Modpack-Specific Building Tools

You have tools that vanilla players don't. Use them:

| Tool                          | What it does for building                                                                                                                              |
|-------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Waystones**                 | Place one at your build site. Teleport home for materials, teleport back. No more carrying 3 inventories of blocks across 500 blocks                   |
| **Sophisticated Storage**     | Barrels near your build site hold materials organized by type. Label with signs                                                                        |
| **Backpack**                  | Carry your palette blocks in your backpack while building. Press `B` to swap materials on the go                                                       |
| **Create Blueprint**          | Craft Blueprint and Quill. Select your finished build → save as blueprint → use Schematicannon to auto-rebuild it elsewhere with materials from chests |
| **Building Wands** (Wave 6)   | Place walls, fill areas, build circles/cylinders in bulk. Wait for Wave 6 for this one                                                                 |
| **JourneyMap waypoints**      | Mark your build site, mark material locations, mark inspiration you find while exploring                                                               |
| **Dynamic Lights** (`Ctrl+L`) | Hold a lantern while building at night. No more stopping to place torches                                                                              |

### Quick-Start: Your First Real House

If you've never built anything beyond a dirt hut, follow these steps for your first proper home:

1. **Pick a palette** — Open [BlockPalettes.com](https://www.blockpalettes.com), find 4 blocks you like. Test in a 5×5 section
2. **Lay the foundation** — Cobblestone or stone brick ring, 7×9 interior minimum (small but not cramped)
3. **Raise the walls** — Use your primary block. Leave gaps for windows (2-block wide minimum)
4. **Add depth** — Push windows back 1 block. Add log pillars at corners and every 4 blocks
5. **Build the roof** — A-frame with stairs. Overhang 1 block. Use a contrasting material
6. **Add the door** — Center of one wall. Stairs as a small porch step in front
7. **Light it up** — Lanterns from ceiling, not torches on walls
8. **Furnish basics** — Bed, crafting table, furnace, 2–4 barrels for storage
9. **Blend the exterior** — Paths leading away, trees nearby, flowers at the entrance, leaves around the roofline
10. **Step back and admire** — You just built something worth coming home to

### Community Resources

| Resource                      | URL                                                                              | What it's for                                             |
|-------------------------------|----------------------------------------------------------------------------------|-----------------------------------------------------------|
| **BlockPalettes**             | [blockpalettes.com](https://www.blockpalettes.com)                               | Block color combinations and palette inspiration          |
| **Building Guide App**        | [buildingguide.app](https://buildingguide.app)                                   | Step-by-step tutorials with materials lists (128+ builds) |
| **r/MinecraftBuilds**         | [reddit.com/r/MinecraftBuilds](https://www.reddit.com/r/MinecraftBuilds)         | Community showcase, inspiration, feedback                 |
| **r/MinecraftHouses**         | [reddit.com/r/MinecraftHouses](https://www.reddit.com/r/MinecraftHouses)         | House-specific builds and ideas                           |
| **r/MinecraftTutorials**      | [reddit.com/r/MinecraftTutorials](https://www.reddit.com/r/MinecraftTutorials)   | How-to guides for specific techniques                     |
| **Minecraft Wiki — Building** | [minecraft.fandom.com/wiki/Building](https://minecraft.fandom.com/wiki/Building) | Official guides on terraforming, furniture, layout        |

### Session Plan — Wave 2.5

| Session                              | Focus                                                                                          | What to Build                  |
|--------------------------------------|------------------------------------------------------------------------------------------------|--------------------------------|
| **Session 1 — Site selection**       | Explore with Explorer's Compass. Find a biome you love. Place Waystone. Mark on JourneyMap     | Your future home location      |
| **Session 2 — Palette + foundation** | Browse BlockPalettes.com. Pick 4 blocks. Lay foundation ring. Raise walls to 4 blocks high     | Shell of your first real house |
| **Session 3 — Roof + depth**         | Build A-frame roof. Add log pillars. Inset windows. Add door                                   | Recognizable house shape       |
| **Session 4 — Interior**             | Lanterns from ceiling. Bed, crafting table, furnace. Barrels for storage. Item frames on walls | Livable interior               |
| **Session 5 — Landscaping**          | Paths, trees, flowers, leaf trim around roofline. Step back and see the difference             | Home in a world                |

**Tip**: Don't aim for perfection on your first build. Aim for "better than a dirt hut." You can always expand, renovate, or rebuild later. The skills transfer — your second build will be twice as good.

---

<!--raw-typst #pagebreak() -->

## Wave 3 — Equipment Magic & RPG

### RPG Progression

| Mod                                                                                         | Role                                                  |
|---------------------------------------------------------------------------------------------|-------------------------------------------------------|
| [Skills Mastery Reimagined](https://www.curseforge.com/minecraft/mc-mods/skills-mastery-reimagined) | 71-node skill tree with unique tradeoff abilities     |
| [Pufferfish\'s Skills](https://www.curseforge.com/minecraft/mc-mods/skills)                 | Underlying skill system framework                     |
| [Pufferfish\'s Attributes](https://www.curseforge.com/minecraft/mc-mods/puffish-attributes) | Custom attributes powering skill tree node effects    |

### Equipment

| Mod                                                                                                     | Role                                                                     |
|---------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------|
| [Simply Swords](https://www.curseforge.com/minecraft/mc-mods/simply-swords)                             | 60+ unique melee weapons with passive/activated abilities                |
| [Simply More](https://www.curseforge.com/minecraft/mc-mods/simply-more)                                 | 10 new weapon types + 33 unique weapons — Simply Swords addon            |
| [Too Many Bows](https://www.curseforge.com/minecraft/mc-mods/too-many-bows)                             | 30+ unique bows with special abilities and custom attributes             |
| [Relics (RPG Series)](https://www.curseforge.com/minecraft/mc-mods/relics-rpg)                           | Legendary accessories with unique abilities — levels up with use         |
| [Enchanting Runes](https://www.curseforge.com/minecraft/mc-mods/runes)                                  | Socketable runes for weapons/tools — early-game enchanting alternative   |
| [Immersive Armors](https://www.curseforge.com/minecraft/mc-mods/immersive-armors)                      | 40+ unique armor sets with custom effects — berserk, double jump, hostile radar, spikes, divine block |

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

- Rare→Epic: moderate (dust + some ingots)
- Epic→Mythic: expensive (dust + rare materials like netherite scrap/echo shards)

This cost curve encourages the player to settle for "good enough" gear until they're ready to invest in perfect rolls.

### Interdependency notes for Wave 3
- **Spell Engine** is required by Relics (RPG Series) — it was previously considered for removal but must be retained as a mandatory dependency of this core RPG mod.
- **Ranged Weapon API** is shared between Relics (RPG Series) and Pufferfish's Skills ecosystem — install once, used by both.
- **Curios API** provides the accessory slot system used by Relics (RPG Series) and Immersive Armors. Adds an equipment GUI (keybind `Y`) with ring, amulet, belt, gloves, back, and charm slots. Auto-installed dependency — no separate config needed.

**Immersive Armors** adds 40+ unique armor sets with custom effects: Wooden (arrow/explosion protection), Skeleton (speed, Wither variant, skeleton neutrality), Divine (dyeable, blocks 1 attack/min), Heavy (high armor, anti-knockback, slow), Slime (bounce attackers), Warrior (berserk — more damage at low HP), Robe (dyeable wool, fire thorns, fireproof), Steampunk (hostile radar, enhanced UI, double jump, no fall damage), and Prismarine (spikes, depth strider). All sets are enchantable, repairable, and dyeable where applicable. Recipes in vanilla recipe book and EMI. **Apotheosis affixes and gems apply to all Immersive Armors pieces.** Mekanism Tools fills the material-tier progression (Osmium→Bronze→Steel→MekaSuit); Immersive Armors fills the unique-effect side grade slot — different armor sets for different situations rather than linear upgrades.

Every weapon rolls with random affixes, every accessory provides a unique ability, and a skill tree with real tradeoffs gives every action meaning. This wave makes you **feel** your character grow alongside your tech.

### Skills Mastery Reimagined — Character Growth

71 nodes. 36 unlock slots. Every point is a commitment — you can't max everything, so you build a character, not a spreadsheet.

**Design philosophy**: Unlike simple "numbers go up" trees, Skills Mastery Reimagined uses tradeoff design. Some unique nodes carry **negative effects** alongside their power (e.g., more damage but less speed, higher HP but slower regen). Each unlock plays a unique sound effect, giving satisfying feedback. The tree pattern is wide and branching — no linear "must-take" paths.

**Getting started**:

1. Controls → Pufferfish's Skills → set a key (`K` recommended)
2. Press key → skill tree GUI opens
3. Browse the tree. Early nodes are cheap. Plan your path — you can only unlock 36 of 71 nodes.

**XP Sources** — XP comes from diverse activities, not just combat:

| Activity             | XP Value                        | Chill-friendly |
|----------------------|---------------------------------|----------------|
| Killing mobs         | Standard                        |                |
| Mining ore blocks    | 2 per block                     | ✅              |
| Catching fish        | 5 per catch                     | ✅              |
| Enchanting books     | 2 × enchanting level cost       | ✅              |
| Killing Evoker       | 100                             |                |
| Killing Ravager      | 150                             |                |
| Killing Elder Guardian | 200                           |                |
| Killing Wither       | 400                             |                |
| Killing Warden       | 500                             |                |
| Killing Ender Dragon | 600                             |                |

**Unique attributes**: Skills Mastery Reimagined unlocks attributes you won't find in vanilla or Apotheosis — Gravity (lower = floaty jumps), Scale (character size), Burning Time, Sneak Speed, Water Efficiency, Oxygen Bonus, Crossbow Projectile Speed, and weapon-specific damage (Mace, Trident, Sword, Axe). These change *how you interact with the world*, not just how hard you hit.

**Weapon synergy**: Weapon-specific nodes (Sword Damage, Axe Damage, Mace Damage, Trident Damage) create a direct feedback loop with Simply Swords and Spartan Weaponry drops. Find a cool unique sword? There's a node that amplifies it. The skill tree and your loot chase feed each other.

**Pufferfish's Skills**: The framework powering the tree — handles XP tracking and attribute modification behind the scenes. Auto-installed dependency.

**Pufferfish's Attributes**: Custom attribute registry required by Skills Mastery Reimagined. Adds 35+ dynamic attributes (Stamina, Fortune, Melee/Ranged/Magic Damage, Life Steal, Stealth, Jump, Mining Speed, Sprinting Speed, etc.). Auto-installed dependency — no separate config needed.

**Tip**: Set the keybind and start earning XP from minute 1. Fishing and enchanting reward chill sessions — you progress even when you're just relaxing at home.

### Simply Swords — Unique Weapons

60+ unique weapons with passive and activated abilities. Drop from mobs (~2% chance), chests, and bosses.

| Category     | Examples                                 | Playstyle                                              |
|--------------|------------------------------------------|--------------------------------------------------------|
| **Heavy**    | Greathammer, Greatsword, Glaive          | Slow, high damage, knockback. Two-handed               |
| **Medium**   | Longsword, Katana, Claymore              | Balanced speed/damage. Versatile                       |
| **Light**    | Rapier, Dagger, Sai, Cutlass             | Fast, low damage per hit. Armor penetration on rapiers |
| **Polearms** | Spear, Halberd, Pike                     | Extended reach (2-3 blocks). Throwable spears          |
| **Special**  | Scythe (AoE), Soul Harvester (lifesteal) | Unique mechanics                                       |

**Weapon abilities** (hold `Ctrl` while hovering to see):

| Ability   | Effect                               | Found on                |
|-----------|--------------------------------------|-------------------------|
| Whirlwind | Spin attack, hits all nearby         | Greathammer, Greatsword |
| Impale    | Charge + release for piercing thrust | Spear, Pike             |
| Backstab  | +300% damage from behind             | Dagger, Sai             |
| Lifesteal | Heal 10% of damage dealt             | Soul Harvester, Scythe  |
| Execute   | +50% damage to targets below 30% HP  | Axe variants            |

**Finding weapons**:

- Mob drops: ~2% chance. Zombies = common, skeletons = ranged-adjacent
- Chests: Dungeon/mineshaft/YUNG's structure chests have higher rates
- Trading: Some from weaponsmith villagers
- Bosses: Higher guaranteed drops from Twilight Forest and Cataclysm bosses

### Too Many Bows — Unique Ranged Weapons

30+ unique bows with special abilities and custom attributes.

**How they work**: Each bow has a unique passive or activated ability. Check EMI for recipes and stats. Some shoot multiple arrows, some inflict status effects, some have special draw mechanics.

**Finding them**: Dungeon chests, mob drops, and boss loot. Combine with Apotheosis gem socketing for even more damage.

**Integration**: Simply Swords + Simply More covers melee (60+ unique weapons across 20+ types). Too Many Bows covers ranged. Better Combat (Wave 5) provides appropriate animations for all three.

### Simply More — Exotic Weapon Types

A Simply Swords addon that adds 10 new weapon types — not just more swords, but entirely new combat styles. Weapons are balanced around Better Combat (Wave 5) for full animation support.

| Weapon Type      | Playstyle                                                  |
|------------------|------------------------------------------------------------|
| **Great Katana** | Two-handed, wide sweeping arcs                             |
| **Grandsword**   | Massive two-hander — disables enemy shields on block       |
| **Backhand Blade** | Fast, dual-wield friendly, close-range                   |
| **Lance**        | Mounted combat specialist — massive boost while riding     |
| **Khopesh**      | Curved blade — bonus against unarmored targets             |
| **Dagger**       | Fastest attack speed, backstab bonus                       |
| **Pernach**      | Armor-piercing mace — shreds tough enemies                 |
| **Quarterstaff** | Extended reach blunt weapon, knockback-focused             |
| **Great Spear**  | Longest reach in the game — hit from 4+ blocks             |
| **Deer Horns**   | Dual-wield fist weapons — rapid flurry strikes             |

Plus 33 unique weapons with special abilities. All weapons use Simply Swords' unique drop system — loot from mobs, chests, and bosses.

**Dependencies**: Simply Swords (already in pack). Cloth Config API and Architectury API are already installed from Wave 0.5 — no new mods needed.

**Finding them**: Same as Simply Swords — mob drops (~2% chance), structure chests, boss loot. EMI shows all recipes and drop sources.

### Relics (RPG Series) — Legendary Accessories

Unique accessories for **Curios slots**. You have 6 slots: Ring (2), Amulet (1), Belt (1), Gloves (1), Back (1), Charm (1). Press Curios keybind (`Y` recommended) to open inventory.

| Relic                 | Slot   | Ability                               | Where to find               |
|-----------------------|--------|---------------------------------------|-----------------------------|
| **Monkey Talisman**   | Charm  | Double jump                           | Vanilla dungeon chests      |
| **Holy Water**        | Charm  | Right-click cleanses negative effects | Desert temples, churches    |
| **Lucky Coin**        | Charm  | +luck for better loot                 | Mineshafts, outposts        |
| **Captain's Hook**    | Gloves | Pull entities toward you              | Shipwrecks, ocean ruins     |
| **Sacred Wardstone**  | Amulet | Absorbs X damage then breaks          | Stronghold chests           |
| **Magic Mirror**      | Back   | Teleport to spawn/home                | End cities, libraries       |
| **Heart of the Void** | Ring   | +max HP, slow regen                   | Nether fortresses, bastions |
| **Blazing Feather**   | Back   | +15% movement speed                   | Jungle temples, pagodas     |
| **Drowned Belt**      | Belt   | Underwater speed boost                | Ocean monuments, shipwrecks |

**Stacking**: Two rings = two ring relics. Wear multiple different types.

**Finding strategy**: Use Explorer's Compass → find YUNG's structures → loot them. Relics have higher drop rates in YUNG's structures than vanilla ones.

### Enchanting Runes — Socketable Weapon Modifiers

Swapable modifications for weapons/tools. Change them between fights.

**How to get**:

- Loot chests in any structure
- Craft at **Rune Altar** (4 cobblestone 2×2 + lapis block on top, right-click with rune fragment)
- Low drop chance from hostile mobs

| Rune      | Effect                     | Best on                          |
|-----------|----------------------------|----------------------------------|
| Fire      | On-hit fire damage (3 sec) | Fast weapons (daggers, rapiers)  |
| Ice       | On-hit slow (2 sec)        | Kiting weapons (spears, scythes) |
| Lightning | Chance to strike lightning | Heavy weapons (single big hits)  |
| Poison    | On-hit poison (5 sec)      | DoT builds, boss kiting          |
| Lifesteal | Heal 5% of damage dealt    | Tank builds, slow weapons        |
| Critical  | +10% crit chance           | Medium weapons                   |

**Using runes**:

1. Craft **Rune Pouch** (leather + string + lapis) — stores all runes
2. Place weapon + rune at **Rune Altar** (4 stone + 1 lapis block)
3. Rune applied. To swap: place weapon back with different rune

**Tip**: Keep 2-3 loadouts. Fire for general combat, Lifesteal for bosses, Ice for kiting.

### Apotheosis — Loot & Enchanting Overhaul

The single largest change to how gear feels.

#### Rarity System

Every item drop rolls with rarity:

| Rarity   | Affix slots | Color  | Source                      |
|----------|-------------|--------|-----------------------------|
| Common   | 0           | White  | Basic mobs, mining          |
| Uncommon | 1           | Yellow | Hostile mobs, basic chests  |
| Rare     | 2           | Cyan   | Dungeon chests, mini-bosses |
| Epic     | 3           | Purple | Bosses, late-game chests    |
| Mythic   | 4           | Gold   | Endgame bosses, Cataclysm   |

Higher rarities = more gem sockets + better affixes.

#### Affixes — Random Stats

| Affix     | Effect                         | Gear type       |
|-----------|--------------------------------|-----------------|
| Ruthless  | +crit damage, +crit chance     | Melee weapons   |
| Arcane    | +spell damage, +mana           | All weapons     |
| Sturdy    | +armor, +knockback resist      | Armor           |
| Nimble    | +movement speed, +attack speed | Boots, leggings |
| Plentiful | +mining speed, +fortune        | Tools           |
| Titanic   | +max HP, +natural regen        | Chestplate      |

**Tip**: Check every drop. A Common helmet with a good affix can beat an Epic with useless stats. Salvage unwanted gear at a salvaging table for gem dust.

#### Gem System

Socketable permanent stat boosts:

| Tier         | How                                | Effect           |
|--------------|------------------------------------|------------------|
| **Rough**    | Mob/chest drops                    | Basic stat boost |
| **Cut**      | Rough + Gem Cutting Station + dust | +50% stat value  |
| **Flawless** | 2 Cut gems of same type + station  | +100% stat value |

**Gem Cutting Station**: Craft (check EMI), place rough gem + dust → cut gem. Dust from breaking unwanted cut gems.

**Gem Socketing Table**: Craft (check EMI), place item + gem in socket slot. Limited sockets per gear piece — expand with socketing tools.

#### Enchanting Overhaul

- **Higher level cap**: Sharpness VIII, Protection VIII, Fortune V, Looting V possible
- **Tiered bookshelves**: Hell, Seashelf, Endshelf enable higher enchantment levels
- **Library of Alexandria**: Stores all enchanted books in one block
- **30+ new enchantments**: Check EMI for full list

#### Boss Affixes

Boss mobs spawn with modifiers under their health bar:

| Modifier | Effect                    | Strategy                          |
|----------|---------------------------|-----------------------------------|
| Tough    | +50% HP, damage reduction | High-damage weapons + Lifesteal   |
| Blinding | Blinds on hit             | Blindness-resistant gear or milk  |
| Clumsy   | Disarms on hit            | Speed — don't get hit             |
| Plagued  | Poison/wither on hit      | Antidotes, regeneration           |
| Huge     | 2× size, more knockback   | Stay mobile                       |
| Chaotic  | Random effects per hit    | Unpredictable — bring all potions |

**Tip**: Boss affixes are the main source of Mythic gear. Hunt affixed bosses for endgame upgrades.

#### Spawner Module

Silk-touch a spawner with a pickaxe → modify it (entity type, spawn delay, player range, min/max entities). Right-click placed spawner with empty hand to fine-tune. Essential for XP farms and mob automation.

#### Deadly Module

Enabled. Adds telegraphed death-traps to the world (spikes, poison darts, instakill rooms, lava traps). Deadliest rooms hold the best loot. Traps are avoidable with caution. GraveStone Mod preserves your items if you trigger one.

### Session Plan — Wave 3

| Session                          | Focus                                                                                                       | What to Do                    |
|----------------------------------|-------------------------------------------------------------------------------------------------------------|-------------------------------|
| **Session 1 — Skill tree**       | Set keybind (`P`). Spend first points on Strength or Vitality                                               | Permanent progression started |
| **Session 2 — First affix loot** | Check every gear drop. Look for Rare+ with useful affixes                                                   | Learn the loot system         |
| **Session 3 — Weapon hunt**      | Explorer's Compass → YUNG's dungeon → loot for Simply Swords weapon. Try Rapier (fast) or Greathammer (AoE) | First unique weapon           |
| **Session 4 — Gem cutting**      | Collect rough gems. Build Gem Cutting Station. Cut Rough → Cut. Socket into gear                            | Permanent gear upgrade        |
| **Session 5 — Relic hunting**    | Monkey Talisman (dungeons) + Lucky Coin (mineshafts)                                                        | Accessory slots filled        |
| **Session 6 — Boss affixes**     | Search for affixed bosses (colored name above health bar). Best source of Mythic gear                       | Endgame gear progression      |
| **Session 7 — Rune loadout**     | Craft Rune Pouch + Rune Altar. Apply Fire rune to fast weapon, Lifesteal to slow weapon                     | Swappable combat modifiers    |

**Tip**: Wave 3 gear changes how every other wave feels. A Rare+ weapon with the right affix makes Twilight Forest and Cataclysm bosses dramatically easier. Invest in gear before tackling tough content.

---

<!--raw-typst #pagebreak() -->

## Wave 4 — Food, Farming & Comfort

| Mod                                                                                                   | Role                                                                             |
|-------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------|
| [**Farmer's Delight**](https://www.curseforge.com/minecraft/mc-mods/farmers-delight) 1.3.2            | Cooking hub — cutting board, cooking pot, stove, new crops                       |
| [**Extra Mod Integrations**](https://www.curseforge.com/minecraft/mc-mods/extra-mod-integrations)     | Adds compat recipes for 50+ mods — Farmer's Delight, Create, Mekanism, AE2       |
| [**Brewin' And Chewin'**](https://www.curseforge.com/minecraft/mc-mods/brewin-and-chewin) 4.5.0       | Drinks and fermentation — beer, wine, mead, whiskey                              |
| [**Storage Delight**](https://www.curseforge.com/minecraft/mc-mods/storage-delight) 1.3.0             | Kitchen furniture — drawers, cabinets, shelves for ingredient storage            |
| [**Crate Delight**](https://www.curseforge.com/minecraft/mc-mods/crate-delight-forge) v26.07.01      | Bulk ingredient storage — crates (apples, berries, eggs, fish) and bags (cocoa, sugar, gunpowder) |
| [**More Delight**](https://www.curseforge.com/minecraft/mc-mods/more-delight) 26.04.18a+1.21-neoforge | Extra meals, sandwiches, toasts, and knife variants                              |
| [**My Nether's Delight**](https://www.curseforge.com/minecraft/mc-mods/my-nethers-delight) 1.10.2     | Nether-themed food ingredients and recipes                                       |
| [**Ocean's Delight**](https://www.curseforge.com/minecraft/mc-mods/oceans-delight) 1.0.4              | Ocean-themed seafood dishes                                                      |
| [**Ender's Delight**](https://www.curseforge.com/minecraft/mc-mods/enders-delight) v1.3.0             | End-themed food for Farmer's Delight (moved from Wave 2)                         |
| [**Twilight's Flavors & Delight**](https://www.curseforge.com/minecraft/mc-mods/twilights-flavors-delight) 3.2.2 | Twilight Forest × Farmer's Delight crossover — 35+ FD-style TF foods, 4 TF knives, maze stove, 5 potion effects, trophy dismantling |
| [Neo Bee Fix](https://modrinth.com/mod/neo-bee-fix)                                                   | Fixes bee AI bugs — bees leave hives, don't fall from sky, no NW wander bias     |
| [Comfortable Campfires](https://www.curseforge.com/minecraft/mc-mods/comfortable-campfires)           | Campfires grant configurable status effects — sit by the fire, get a buff        |
| [**Starcatcher**](https://www.curseforge.com/minecraft/mc-mods/starcatcher)                           | Fishing overhaul — 100+ fish, skill minigame, trophies, tournaments, catalogue   |
| [**Starcatcher's Delight**](https://www.curseforge.com/minecraft/mc-mods/starcatchers-delight) v3.0.1 | Starcatcher × Farmer's Delight crossover — fish fillets, seafood dishes, sushi |
| [**Better Fishtanks**](https://www.curseforge.com/minecraft/mc-mods/better-fishtanks)                 | Functional aquariums — fish bags, decorations, feeding system, Create/AE2 compat |

**Interdependency note — Starcatcher's Delight + Farmer's Delight**: Starcatcher's Delight is installed — fish caught via Starcatcher are cut into fillets and cooked into Farmer's Delight meals. Fish-specific dishes (sushi, stews, fried fish) and generic dishes with quality tiers (rarity of fish → quality of food). Legendary fish produce legendary meals with absorption hearts. All recipes visible in EMI. Same author as Starcatcher — seamless integration.

**Interdependency note — Starcatcher + Hybrid Aquatic (Wave 2)**: Starcatcher automatically adds Hybrid Aquatic fish as catchable entries with biome/weather/time restrictions. Hybrid Aquatic baits attract Hybrid Aquatic fish. No config needed.

**Interdependency note — Better Fishtanks + Create (Wave 1)**: Better Fishtanks is designed for tech mod automation. The Fish Tank and Aquarist Table inventories are fully accessible via Create pipes. Use fluid pipes to fill tanks with water. Automate fish feeding with Create's mechanical systems.

**Interdependency note — Better Fishtanks + Hybrid Aquatic (Wave 2)**: Better Fishtanks can house any fish mod's creatures. Use Fish Bags to catch Hybrid Aquatic mobs and place them in tanks as living displays.

**Interdependency note — Twilight's Flavors & Delight + Twilight Forest (Wave 2) + Farmer's Delight**: This mod bridges Twilight Forest and Farmer's Delight. TF mob drops and foraged items become cookable into 35+ FD-style meals. The Maze Stove (crafted from maze ooze) accelerates cooking in TF biomes. 4 TF-material knives (ironwood, fiery, knightmetal, phantom) have unique abilities. Boss trophies can be dismantled for precious loot — giving each TF boss run lasting value beyond the first kill. Optional Neapolitan compat adds 19 more food types (Neapolitan not in pack — 35+ FD meals still available without it).

Farmer's Delight brings a full cooking ecosystem. Optional — you can survive on baked potatoes — but cooking gives powerful status effects, better healing, and a cozy kitchen to build around.

### Farmer's Delight — Cooking Hub

#### New Crops

| Crop        | Grows on                                 | Use                       |
|-------------|------------------------------------------|---------------------------|
| **Tomato**  | Farmland. Bush grows, pick when red      | Soups, sandwiches, salads |
| **Cabbage** | Farmland. Full head when ready           | Coleslaw, cabbage wraps   |
| **Onion**   | Farmland. Pick when shoots show          | Savory dishes, soups      |
| **Rice**    | Shallow water (1 block deep on dirt/mud) | Hearty meals, sushi       |

**Wild crops**: Break wild variants in the world for seeds:

- Wild tomatoes — plains/forests
- Wild cabbage — beaches
- Wild onions — taiga
- Wild rice — swamps

#### Cutting Board

Craft: 1 knife + 2 planks (horizontal row). Place on ground, right-click to open GUI.

Place ingredient in left slot → processed output in right slot.

| Input       | Output         | Use                |
|-------------|----------------|--------------------|
| Cooked meat | Meat strips    | Sandwiches, salads |
| Cabbage     | Cabbage leaves | Wraps, coleslaw    |
| Bread       | Bread slices   | Toast, sandwiches  |
| Carrot      | Carrot slices  | Salads, soups      |
| Apple       | Apple slices   | Desserts, snacks   |

**Tip**: Knife in off-hand while chopping lasts longer (uses knife durability). Iron knife = dozens of chops.

#### Cooking Pot

Craft: 2 iron + 2 planks + 1 bowl. Place over a heat source:

- **Stove** (fastest) — 4 bricks + 4 iron nuggets
- **Campfire** (medium) — 3 logs + 3 sticks + 1 coal
- **Lava** (slowest) — pot must sit directly above lava source

**Cooking process**:

1. Right-click pot → open GUI
2. Fill water slot (bucket or bottle)
3. Add up to 6 ingredients in any order
4. Wait for progress bar
5. Collect meal — most give **6 servings** with bowl stacking

**Meal categories**:

- **Soups** — Tomato soup, beef stew. Good saturation, easy ingredients
- **Sandwiches** — Chicken sandwich, BLT. On-the-go eating
- **Salads** — Mixed salad, fruit salad. Good for hot biomes
- **Pasta** — Pasta with meat sauce. Filling, complex ingredients
- **Rice meals** — Fried rice. Requires rice farming

#### Kitchen Storage

Craft **oak/pantry cabinets** (check EMI — varies by wood). Function as chests with kitchen aesthetics.

**Tip**: Set up kitchen near your AE2 network. Cook manually or stock ingredients in ME drives for autocrafting.

### Brewin' And Chewin' — Drinks & Fermentation

Alcohol brewing with aging mechanics. Grow hops, barley, grapes on farmland.

#### Brewing Station

Craft (check EMI — barrel-like recipe). Right-click to open GUI.

1. Add **water** + main ingredient:
   - Barley → beer base (wort)
   - Grapes → wine base (must)
   - Honey → mead base
   - Potatoes → spirits base (mash)
2. Wait for fermentation
3. Collect **fermented mixture**

#### Aging Barrel

Craft (check EMI — wooden barrel). Place fermented mixture inside, right-click to seal.

Ages one stage per in-game day: Young → Matured → Aged → Vintage (4 stages). Each stage increases status effect potency and duration.

**Optimal**: Let everything reach **Aged** (stage 3). Push to Vintage (stage 4) only for special occasions.

| Drink   | Matured effect       | Vintage effect                     |
|---------|----------------------|------------------------------------|
| Beer    | Resistance I (2 min) | Resistance II (5 min)              |
| Wine    | Haste I (2 min)      | Haste II (4 min)                   |
| Mead    | Speed I (2 min)      | Speed II (4 min)                   |
| Whiskey | Strength I (30 sec)  | Strength II (1 min)                |
| Vodka   | Night Vision (3 min) | Night Vision + Fire Resist (5 min) |

**Practical use**: Brew a batch of each, age to Matured/Aged, store in kitchen. Pop a drink before boss fights for free buffs. Mead stacks with Swiftness potions.

**Bottle return**: Empty bottles are returned after drinking. Reuse at brewing station.

### Storage Delight — Kitchen Furniture

Decorative kitchen storage that works as functional inventory:

| Block   | Slots | Use                        |
|---------|-------|----------------------------|
| Cabinet | 27    | Counter-height storage     |
| Drawer  | 18    | Fits under counters        |
| Shelf   | 9     | Wall-mounted spice display |

**Tip**: Use for early-game ingredient storage before AE2. Later, place an ME Storage Bus on a cabinet to bridge into your digital network.


### Crate Delight — Ingredient Storage

Bulk storage for Farmer's Delight ingredients by axperty (same author as Storage Delight). Crates and bags keep your kitchen organized and look great.

| Type | Examples | Capacity |
|---|---|---|
| **Crates** | Apples, Sweet Berries, Eggs, Raw Salmon, Raw Cod, Glow Berries, Golden Apples | Bulk single-item storage |
| **Bags** | Cocoa Beans, Sugar, Gunpowder | Bulk single-item storage |

**Why it's useful**: Instead of a barrel full of mixed ingredients, you have a Crate of Apples next to your cooking station and a Bag of Sugar near your brewing setup. Thematic, organized, and satisfying to look at.

**Integration**: Same author as Storage Delight — identical art style, zero compatibility issues. All crates and bags are accessible via Create pipes and AE2 Storage Bus. Complements Storage Delight's furniture (cabinets/drawers/shelves) — Crate Delight handles bulk ingredient storage, Storage Delight handles kitchen furniture. Both are intentionally outclassed by AE2 in Phase 2 but remain useful for localized micro-storage near cooking and brewing stations.

### More Delight — Extra Meals & Knives

- **Extra meals**: Sandwiches, toasts, stuffed mushrooms
- **Knife variants**: Diamond and netherite knives (much longer lasting than iron)
- **New cooking pot recipes**: Stews, soups, pasta dishes

All recipes visible in EMI. Uses existing cutting board and cooking pot.

### My Nether's Delight — Nether Food

Nether-themed ingredients and recipes:

- **Nether crops**: Grow in soul sand or warped/crimson nylium
- **Ingredients**: Glowstone berries, soul berries, nether-root vegetables
- **Recipes**: Spicy stews (Fire Resistance), soul-force snacks (Night Vision)

**Tip**: Set up a Nether farm for combat-relevant status effects. Glow berry pie gives Haste II — useful before mining expeditions.

### Ocean's Delight — Seafood

Seafood dishes using ocean mob drops:

- **Ingredients**: Squid tentacles, fish fillets, seaweed, turtle eggs
- **Recipes**: Seafood stew, grilled fish, kelp salads, sushi rolls
- **Effects**: Water Breathing + Dolphin's Grace — perfect for ocean monument raids

**Tip**: Build a fish farm or farm kelp for steady supply. Combined with My Nether's Delight, prepare meals for any environment.

### Ender's Delight — End Food

End-themed food for post-Dragon exploration:

- **Ingredients**: Chorus fruit variants, end-themed crops
- **Recipes**: End stews and snacks
- **Effects**: Status boosts useful for End dimension exploration

**Integration**: End ingredients cook into Ender's Delight meals. Plan an End farming outpost with Farmer's Delight crops.

### Neo Bee Fix

Fixes bee AI — bees properly leave hives, don't fall from sky, no northwest wander bias. No config. Install and forget.

**Integration**: Bees produce honey for Brewin' And Chewin' mead. Farm bees near your kitchen for renewable brewing ingredients.

### Starcatcher — Fishing Overhaul

A complete fishing overhaul with 100+ fish, skill-based minigame, progression system, and tournaments.

**Core mechanics**:

| Feature              | What it does                                                             |
|----------------------|--------------------------------------------------------------------------|
| **Fishing Minigame** | Skill-based reel-in — timing matters, not just patience                  |
| **Catalogue**        | Records every catch — biome, weather, time conditions documented         |
| **Trophies**         | Mount your best catches as wall decorations                              |
| **Tackle Box**       | Store hooks, bobbers, baits, and fish — portable fishing station         |
| **Aquariums**        | Multi-block fish tanks — place caught fish inside, scaled by size/weight |
| **Tournaments**      | Compete against friends for biggest catch                                |
| **Selling Bin**      | Sell fish for emeralds — price based on size, weight, rarity             |
| **Cosmetics**        | Fisherman hats, rod skins — found in shipwrecks and treasure             |

**Getting started**:

1. Craft a **fishing rod** (3 sticks + 2 string) — Starcatcher replaces vanilla fishing
2. Cast near water → minigame triggers on bite
3. Complete the minigame → fish caught, added to catalogue
4. Craft a **Tackle Box** (check EMI) → store fish and accessories
5. Find **baits** in loot chests or craft them → attract specific fish types

**Fish conditions**: Each fish has specific requirements:

| Condition       | Examples                           |
|-----------------|------------------------------------|
| **Biome**       | Ocean fish, river fish, swamp fish |
| **Weather**     | Rain-only, clear-only, storm-only  |
| **Time of day** | Day fish, night fish, dawn/dusk    |
| **Elevation**   | Surface vs. deep water             |

**Golden Fish**: Rare variants of every fish — higher value, trophy-worthy. Hunt these for the ultimate collection.

**Integration with Starcatcher's Delight**: Starcatcher's Delight is installed — fish caught via Starcatcher are cut into fillets and cooked into Farmer's Delight meals. Fish quality (Common→Legendary) determines dish quality. Legendary meals always grant absorption hearts. See the Starcatcher's Delight section below for details.

**Configuration**: In `config/starcatcher-server.toml`, set `giveGuideOnFirstJoin = false` to prevent the fishing guide book from being handed to the player on first login. The guide is still craftable (check EMI for recipe) — just not auto-given.

**Integration with Hybrid Aquatic (Wave 2)**: Starcatcher automatically adds Hybrid Aquatic fish as catchable entries. No config needed — more fish to catch, more variety in your catalogue.

### Better Fishtanks — Aquariums

Functional aquariums for displaying your catches. Build the tank of your dreams.

**Core blocks**:

| Block              | Function                                                                        |
|--------------------|---------------------------------------------------------------------------------|
| **Fishtank**       | Glass tank — house fish, configurable water levels                              |
| **Aquarist Table** | Crafting station for tanks, decorations, and supplies                           |
| **Fish Bag**       | Catch and transport fish — right-click fish in world, right-click tank to place |
| **Food Container** | Store fish food in bulk — flakes, kelp, shrimp, pellets                         |
| **Decorations**    | Coral, shipwrecks, stones, branches, towers, kelp — 30+ variants                |

**Getting started**:

1. Craft an **Aquarist Table** (check EMI — iron + glass + planks)
2. Craft a **Fishtank** (glass + iron ingots) — place it down
3. Craft a **Fish Bag** (leather + string) → right-click any fish in the world to catch it
4. Right-click the Fishtank with a filled Fish Bag → fish placed inside
5. Add **decorations** from the Aquarist Table → customize the tank

**Fish Eggs**: Tanks passively produce fish eggs in 6 rarity tiers (Common → Legendary). Crack them in the Aquarist Table for loot.

**Aquarist Villager**: A new villager profession. Trades fish supplies and rare eggs. Assign by placing an Aquarist Table near an unemployed villager.

**Tech integration (Create, AE2)**:

- Fishtank and Aquarist Table inventories are **fully accessible** via Create pipes
- Use fluid pipes to fill tanks with water automatically
- Automate fish feeding with Create mechanical systems
- Connect to AE2 network for remote inventory access

**Config options**:

| Setting               | Default              | What it does                                               |
|-----------------------|----------------------|------------------------------------------------------------|
| **Require Food**      | ON                   | Fish need feeding to survive — disable for pure aesthetics |
| **Fish Bag Captures** | Normal fish only     | Enable to capture Guardians, Drowned, Whales               |
| **Rendering Mode**    | Vanilla Waterlogging | Toggle experimental entity rendering for water             |

**Integration with Starcatcher**: Better Fishtanks displays what Starcatcher catches. Starcatcher provides the fishing gameplay; Better Fishtanks provides the aquarium showcase. Different systems, complementary purposes.

### Starcatcher's Delight — Seafood Cooking

Starcatcher × Farmer's Delight crossover by wdiscute (same author as Starcatcher). Every fish you catch becomes a cooking ingredient.

| Food Type | Ingredients | Notes |
|---|---|---|
| **Fish Fillets** | Any Starcatcher fish → Cutting Board | Fish quality (Common → Legendary) determines fillet quality |
| **Sushi** | Fish fillet + rice + seaweed | Rice from Farmer's Delight, seaweed from oceans |
| **Fish Stew** | Fish fillet + FD vegetables + Cooking Pot | Hearty meal with saturation buff |
| **Fried Fish** | Fish fillet + FD oil + stove | Quick crispy meal |
| **Legendary Dishes** | Legendary fillet only | Always grants absorption hearts — save these for boss fights |

**Quality system**: The rarity of the fish you use determines the quality of the food. A legendary fish is cut into legendary fillets, which cook into legendary dishes. Each food has unique hand-written descriptions that change based on quality tier.

**Getting started**:

1. Catch any fish via Starcatcher's minigame
2. Use a Farmer's Delight Cutting Board with a knife to produce fillets
3. Combine fillets with FD ingredients for meals
4. Hunt for legendary fish → legendary dishes with absorption hearts → boss fight food

**Integration**: All Starcatcher's Delight recipes appear in EMI. Fillets and dishes can be stored in AE2. Quality-based dishes stack separately (Common Sushi ≠ Legendary Sushi). Zero config needed — install and fish.


---

<!--raw-typst #pagebreak() -->

## Wave 4.5 — Quests

Authored quest book with chapters covering every major mod in the pack. Guides progression without forcing it — quests are optional breadcrumbs, not mandatory checklists.

### Questing Foundation

| Mod                                                                               | Role                                                                           |
|-----------------------------------------------------------------------------------|--------------------------------------------------------------------------------|
| [FTB Library](https://www.curseforge.com/minecraft/mc-mods/ftb-library-forge)     | Core library for all FTB mods — configuration, GUI framework, team management  |
| [**FTB Quests**](https://www.curseforge.com/minecraft/mc-mods/ftb-quests-forge)   | Quest book framework — chapters, task types, rewards, in-game visual editor    |
| [FTB Teams](https://www.curseforge.com/minecraft/mc-mods/ftb-teams-forge)         | Quest progress tracker — in single-player, you're automatically a team of 1    |
| [KubeJS](https://www.curseforge.com/minecraft/mc-mods/kubejs)                     | JavaScript scripting engine — recipe modification, worldgen tweaks, event hooks |
| [FTB XMod Compat](https://www.curseforge.com/minecraft/mc-mods/ftb-xmod-compat)   | Bridges FTB Quests with KubeJS, JEI/REI compat layer (works with EMI)          |

### Quest Addons

| Mod                                                                                      | Role                                                                                             |
|------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------|
| [**MineColonies Questline**](https://www.curseforge.com/minecraft/mc-mods/minecolonies-questline) | Pre-written 40+ quest chain covering MineColonies from Town Hall to endgame colony    |
| [ExtraQuests](https://modrinth.com/mod/extraquests)                                      | Additional task/reward types — key-value tracking, progressive tasks, daily/weekly quests, console command rewards |

**MineColonies Questline** is the only pre-written content — it covers colony progression from first Town Hall through Industrial Revolution research. All other quests (Create, Mekanism, AE2, Apotheosis, combat, dimensions, food) must be authored using FTB Quests' in-game editor (`/ftbquests editing_mode`).

### How It Works

1. Press the quest key (configurable, default `-`) to open the quest book
2. Chapters organized by mod: **Create**, **Mekanism**, **AE2**, **MineColonies**, **Apotheosis**, **Combat**, **Exploration**, **Food & Farming**
3. Quests auto-detect progress — craft an item, enter a dimension, kill a boss → quest completes
4. Rewards include items, XP, and knowledge — some powerful items are quest-gated to soft-enforce progression
5. The quest book is **always available** but **never mandatory** — ignore it when you want to chill

### Pillar Alignment

- **Power fantasy**: Quests celebrate milestones. "You built a fusion reactor!" with a meaningful reward feels earned.
- **Easy curve**: New players follow quest breadcrumbs. "Craft enrichment chamber → craft crusher → 2x ore processing" teaches Mekanism step by step.
- **200h+ content**: Quests surface hidden content. "Have you visited the Aether?" "Try sequenced crafting with Create." Players discover systems they might miss.
- **Chill living**: The quest book key is configurable. There's no on-screen HUD element. No time-limited quests. No penalties for ignoring it. The book waits for you — not the other way around.

### Authoring Plan

| Phase | Quests to Write | Effort |
|-------|----------------|--------|
| **MineColonies** | Pre-written (MineColonies Questline) | 0 hours — included |
| **Create** | Water wheel → brass → sequenced crafting → trains | ~15 quests |
| **Mekanism** | Ore doubling → tripling → quintupling → digital miner → fission → fusion | ~20 quests |
| **AE2** | Certus quartz → ME drive → autocrafting → quantum network | ~15 quests |
| **Apotheosis** | Affix gear → gems → enchanting → mythic tier | ~10 quests |
| **Combat & Exploration** | Bosses (Cataclysm, Aether, Twilight Forest), dungeons, dimensions | ~15 quests |
| **Food & Farming** | Farmer's Delight meals, brewing, fishing, animal husbandry | ~10 quests |

**Total**: ~85 authored quests + ~40 pre-written colony quests = ~125 quests. Author gradually — one chapter at a time. The pack is fully playable without quests; they're enhancement, not foundation.

### Session Plan — Wave 4 & 4.5

| Session                           | Focus                                                                                              | What to Build           |
|-----------------------------------|----------------------------------------------------------------------------------------------------|-------------------------|
| **Session 1 — Kitchen tools**     | Cutting board + cooking pot + stove. Find wild crop seeds                                          | Functional kitchen      |
| **Session 2 — Farm**              | Plant tomato, cabbage, onion, rice. Cook first meal (tomato soup is easiest)                       | Sustainable ingredients |
| **Session 3 — Brewing**           | Find barley/grapes/honey. Build brewing station. Start first batch. Place aging barrel             | First drink fermenting  |
| **Session 4 — Kitchen expansion** | Storage Delight cabinets/drawers. Try More Delight recipes. Collect Nether ingredients             | Full kitchen            |
| **Session 5 — Questing**          | Open quest book (`-` key). Browse MineColonies questline. Complete "Town Hall" quest               | Questing unlocked        |
| **Ongoing**                       | Age drinks for boss buffs. Explore oceans for seafood. Stock AE2 with ingredients for autocrafting | Buff food always ready  |

---

<!--raw-typst #pagebreak() -->

## Wave 5 — Combat & Mobs

| Mod                                                                                               | Role                                                                                              |
|---------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------|
| [Better Combat](https://www.curseforge.com/minecraft/mc-mods/better-combat)                       | Melee combat animations — weapon reach, sweeping, attack speed                                    |
| [Mutant Monsters](https://www.curseforge.com/minecraft/mc-mods/mutant-monsters)                   | Mutant zombie, skeleton, creeper, enderman — unique drops                                         |
| [L_Ender\'s Cataclysm](https://www.curseforge.com/minecraft/mc-mods/lendercataclysm)              | Epic boss fights — Leviathan, Netherite Monstrosity, Ender Guardian (CurseForge, NeoForge 1.21.1) |
| [When Dungeons Arise](https://www.curseforge.com/minecraft/mc-mods/when-dungeons-arise)           | Roguelike combat structures with loot                                                             |
| [Enchantment Descriptions](https://www.curseforge.com/minecraft/mc-mods/enchantment-descriptions) | Shows enchantment effects in tooltips                                                             |
| [Create Big Cannons](https://www.curseforge.com/minecraft/mc-mods/create-big-cannons)             | Artillery engineering — siege cannons for colony defense and spectacle                            |
| [Cut Through](https://www.curseforge.com/minecraft/mc-mods/cut-through)                           | Combat QoL — swing through transparent blocks (tall grass, cobwebs) without breaking them         |
| [Torchmaster](https://www.curseforge.com/minecraft/mc-mods/torchmaster)                           | Territory pacification — Mega Torch suppresses hostile spawns in a radius; each torch gated behind a Cataclysm boss conquest (see below) |

Apotheosis also adds boss modifiers and elite mob affixes — partially covers what Champions would have done.

Your powerful gear finally has worthy opponents. Better combat mechanics, tougher mobs, epic boss fights, roguelike dungeons.

### Better Combat — Weapon Feel

Replaces Minecraft's single swing with weapon-specific movesets:

| Weapon       | Speed     | Reach      | Animation               | Best for                   |
|--------------|-----------|------------|-------------------------|----------------------------|
| Daggers      | Very fast | 2 blocks   | Quick stab              | Debuff stacking, fast crit |
| Swords       | Fast      | 3 blocks   | Horizontal arc          | General combat             |
| Rapiers      | Fast      | 3.5 blocks | Thrust (ignore shields) | Shield-breaking            |
| Greatswords  | Slow      | 4 blocks   | Wide sweep              | Group clearing             |
| Axes         | Medium    | 3 blocks   | Overhead chop           | Armor penetration          |
| Spears       | Medium    | 4.5 blocks | Forward thrust          | Kiting                     |
| Hammers      | Slow      | 3.5 blocks | Overhead slam           | Knockback, stun            |
| Greathammers | Very slow | 4 blocks   | Ground pound            | AoE knockback              |

**Config**: Mod Menu → Better Combat. Tweak reach, sweep radius, attack speed, visual effects per weapon type.

**Integration**: Simply Swords weapons have built-in Better Combat data files — each category uses correct animation, reach, and speed automatically. Too Many Bows and Spartan Weaponry also integrate.

### Enchantment Descriptions

Hover over any enchantment in tooltip → detailed description of what it does. Works in enchanting table GUI, on items, and in books. No config.

### Cut Through — Clean Combat

Swing through transparent blocks (tall grass, vines, cobwebs) without breaking them. Hit the mob behind. No more breaking your grass farm or getting stuck on cobwebs while skeletons shoot you.

No config. Client-side only. Works with Better Combat and all other combat mods.

### Mutant Monsters — Boss Variants

Tougher versions of vanilla mobs. Drop unique gear.

| Mutant              | Spawns           | What to expect                                           | Drops                                         |
|---------------------|------------------|----------------------------------------------------------|-----------------------------------------------|
| **Mutant Zombie**   | Overworld, night | Tankier, ground-pound AoE, summons zombies               | Hulk Hammer (AoE knockback)                   |
| **Mutant Skeleton** | Overworld, night | Rapid-fire weakness arrows, teleports                    | Mutant Skeleton Armor (projectile resist)     |
| **Mutant Creeper**  | Overworld, night | 2× explosion radius, drops mini-creepers on death        | Creeper Minion (follows, explodes on command) |
| **Mutant Enderman** | The End          | Aggressive teleporting, throws blocks, projectile resist | Enderman gear (teleportation items)           |

**Spawn rate**: Adjust in Mod Menu → Mutant Monsters → spawn weight if too frequent/rare.

**Strategy**: Same as vanilla but more extreme. Zombie → kite. Skeleton → close fast. Creeper → ranged. Enderman → water + fire resistance.

### L_Ender's Cataclysm — Epic Boss Fights

Hand-animated bosses with unique mechanics. **Opt-in** — you must build a summoning structure or find a specific location.

| Boss                      | Location               | How to Summon                                              | HP   | Recommended Gear                        |
|---------------------------|------------------------|------------------------------------------------------------|------|-----------------------------------------|
| **Leviathan**             | Deep ocean (Y<40)      | Prismarine + sea lantern altar + Prismarine Shard          | ~200 | Diamond, Depth Strider, door trick      |
| **Netherite Monstrosity** | Nether wastes          | Enter central arena in nether brick lair                   | ~300 | Full diamond/netherite, fire resistance |
| **Ender Guardian**        | End (outer islands)    | Eye of Ender on pedestal after Dragon                      | ~400 | Endgame gear, Elytra + Slow Falling     |
| **Ancient Remnant**       | Desert                 | Enter summoning room in large pyramid, insert Nether Star  | ~350 | Blast protection, blocks to pillar      |
| **Ignite**                | Nether (basalt deltas) | 5×5 hollow obsidian sphere + Blaze Rod center, wait 10 sec | ~250 | Fire resistance, water buckets          |

**General strategy**:

1. Scout the arena first
2. Bring food buffs (Farmer's Delight + Brewin' And Chewin' stack)
3. Apply runes (Lifesteal or Ice)
4. Set a Waystone nearby
5. AE2 wireless terminal for mid-fight resupply

**Leviathan**: Phase 1 — dodge charges, attack body, jump shockwaves. Phase 2 (50%) — avoid whirlpools, attack head between spawns. Drops Leviathan Blade (trident-like water weapon).

**Netherite Monstrosity**: Phase 1 — attack legs to slow. Phase 2 (60%) — enrages, faster attacks + fire breath. Sprint behind pillars. Drops Monstrosity tools (efficient netherite-level mining).

**Ender Guardian**: Phase 1 — dodge tracking energy bolts, hit wall crystals to stun. Phase 2 (50%) — teleports, summons endermites, break all crystals to lower shield. Phase 3 (20%) — energy nova, pillar up to avoid ground AOEs. Drops high-damage weapons + teleportation gear.

**Ancient Remnant**: Phase 1 — sandstorm blinds, attack during cooldown. Phase 2 (40%) — sinks into sand, pops up elsewhere, shoot exposed weak point. Drops tools with unique enchantability.

**Ignite**: Phase 1 — fireball barrage, block with shield or dodge behind pillars. Phase 2 (40%) — absorbs lava from arena, stay on high ground, attack when emerging. Drops fire weapons (permanent fire aspect).

### When Dungeons Arise — Roguelike Structures

Large multi-floor combat structures across the Overworld.

| Structure        | Floors | Difficulty | Biome            | Loot                        |
|------------------|--------|------------|------------------|-----------------------------|
| Abandoned Temple | 3      | Easy       | Plains, forests  | Iron gear, early rare items |
| Small Castle     | 4      | Medium     | Plains, hills    | Rare weapons, gold          |
| Large Castle     | 6      | Hard       | Mountains        | Epic gear, diamonds         |
| Barracks         | 2      | Easy       | Any              | Armor, shields              |
| Scorched Fort    | 4      | Medium     | Desert, badlands | Fire-related items          |
| Warped Fortress  | 5      | Hard       | Any (rare)       | Endgame gear, unique loot   |
| Foundry          | 3      | Medium     | Underground      | Ores, mining gear           |
| Bandit Camp      | 1      | Easy       | Forest, taiga    | Early weapons, food         |

**Finding**: Explorer's Compass → "When Dungeons Arise" filter → select structure.

**Strategy**: Clear floors systematically. Loot scales with depth. Bring blocks to pillar, torches to light hallways, decent gear for deep floors.

**Note**: Structures are finite — once looted, they don't respawn unless chunks reset. Mark looted ones on JourneyMap.

### Create Big Cannons — Artillery Engineering

Functional cannons built from Create materials, using rotational power for assembly and gunpowder for ammo.

**Getting started**:

1. Craft cannon components: barrel (bronze/steel), mount (Create materials), charger
2. Build: place mount, attach barrel, connect charger
3. Arm: insert powder charges + cannonballs into GUI
4. Fire: right-click or redstone signal

| Ammo             | Effect                                | Use            |
|------------------|---------------------------------------|----------------|
| Solid cannonball | High damage, block-breaking explosive | Siege, defense |
| Canister shot    | Spread of small projectiles           | Anti-personnel |
| Grape shot       | Medium spread                         | Crowd control  |
| Incendiary       | Fire on impact + lingering fire       | Area denial    |
| Smoke shell      | Smoke screen                          | Concealment    |

**Integration**: Gated behind bronze/steel (Create progression) + gunpowder. Mount on colony walls for defense. Redstone-controlled pulse extender for automatic salvo fire.

**Dependency**: Ritchie's Projectile Library (auto-installed) — provides custom trajectories and hit detection. No separate config.

### Torchmaster — Conquering the Land

Torchmaster makes **peace a reward, not a default**. Its Mega Torch suppresses hostile mob spawning in a 48-block radius — but the torch itself requires a **Cataclysm boss conquest** to craft (KubeJS gate, `kubejs/server_scripts/wave5_torchmaster.js`):

| Item | Gated Recipe | Gate |
|---|---|---|
| Mega Torch | Ignitium Ingot (Cataclysm Ignite drop) + Create brass ingots + blaze rods | Phase 2 — first Cataclysm boss + brass age |

**The conquest loop** — each torch is one earned region:

1. **Scout** — fly your plane (Immersive Aircraft / Man of Many Planes) or roll out (Create train, Small Ships) to a hostile region
2. **Clear** — fight through the structures with your guns (Create: Gunsmithing), artillery (Create Big Cannons), and gear
3. **Harvest** — defeat the Cataclysm boss, collect the Ignitium Ingot
4. **Craft** — return home, craft the Mega Torch in your factory (Create brass)
5. **Plant** — place it at the region's center. The area is now *yours* — permanently peaceful, safe to build in

**Why it's gated**: Cataclysm bosses are re-fightable (arena respawner blocks accept an Eye item to re-summon), so conquest is **renewable** — no torch farming loophole, no world exhaustion. Every peaceful biome is an earned trophy, and the 200h+ content runway survives because you can always find another arena to conquer.

**Config** (`config/torchmaster-common.toml`): Mega Torch radius 48 blocks (village-sized zone). Feral Flare Lantern (radius 24) suppresses only dark-spawned mobs — useful for cave/ruin clearing without full pacification. Mega Torch blocks natural spawning only, not spawners.

**Chill Rule check**: Conquered land is permanent — you can log off, ignore progression, or decorate for a session without a single mob interrupting. This is the *payoff* of the pack's chill pillar, earned through the power fantasy.

---

### Session Plan — Wave 5

| Session                              | Focus                                                                                                                                    | What to Do                 |
|--------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------|----------------------------|
| **Session 1 — Combat feel**          | Better Combat works automatically. Craft/find a Simply Swords weapon. Test daggers (fast stab) vs greatswords (wide sweep). Equip a rune | Learn your weapon          |
| **Session 2 — First mutant**         | Find Mutant Zombie at night (listen for roar). Kite it, learn patterns. Collect unique drop                                              | First mini-boss            |
| **Session 3 — First dungeon**        | Explorer's Compass → When Dungeons Arise small castle/abandoned temple. Clear floors                                                     | Roguelike dungeon complete |
| **Session 4 — First Cataclysm boss** | Easiest = Leviathan (deep ocean) or Netherite Monstrosity (Nether). Prepare: good weapons, fire resistance, healing food                 | Epic boss beaten           |
| **Session 5 — Cannons**              | Craft bronze (zinc + copper in heated mixer). Build Small Cannon. Test fire. Mount near base entrance                                    | Artillery online           |
| **Session 6+ — Boss gauntlet**       | Remaining Cataclysm bosses. Each drops unique endgame materials. Revisit Twilight Forest bosses with Wave 5 gear                         | Full endgame gear          |
| **Session 7 — First conquest**       | Scout a region by plane, clear its structures with guns/artillery, defeat the Cataclysm boss, craft the Mega Torch from its Ignitium Ingot, plant it. The region is yours                           | First pacified territory   |

**Tip**: Better Combat changes melee fundamentally. Don't skip Session 1 even as a ranged player.

---

<!--raw-typst #pagebreak() -->

## Wave 6 — Building & Decoration

### Core Decoration

| Mod                                                                                                                     | Role                                                                  |
|-------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
| [Rechiseled](https://www.curseforge.com/minecraft/mc-mods/rechiseled)                                                   | 600+ decorative block variants with connected textures                |
| [Supplementaries](https://www.curseforge.com/minecraft/mc-mods/supplementaries)                                         | Vanilla+ decoration — jars, signposts, faucets, weather vanes         |
| [Macaw\'s Bridges](https://www.curseforge.com/minecraft/mc-mods/macaws-bridges)                                         | Bridges in all wood types                                             |
| [Macaw\'s Doors](https://www.curseforge.com/minecraft/mc-mods/macaws-doors)                                             | Vanilla-style doors for every wood                                    |
| [Macaw\'s Roofs](https://www.curseforge.com/minecraft/mc-mods/macaws-roofs)                                             | Roofing blocks                                                        |
| [Macaw\'s Windows](https://www.curseforge.com/minecraft/mc-mods/macaws-windows)                                         | Window variants                                                       |
| [Building Wands](https://www.curseforge.com/minecraft/mc-mods/building-wands)                                           | Faster large-scale construction                                       |
| [\[Reforged\] Accurate Block Placement](https://www.curseforge.com/minecraft/mc-mods/reforged-accurate-block-placement) | Precision block placement — place on the exact face you're looking at |
| [Handcrafted](https://www.curseforge.com/minecraft/mc-mods/handcrafted)                                                 | Furniture — chairs, tables, shelves, curtains                         |
| [The Magic Mirror](https://www.curseforge.com/minecraft/mc-mods/the-magic-mirror)                                       | Reflective mirror block that shows the nearest player's reflection    |
| [Fetzi's Displays](https://www.curseforge.com/minecraft/mc-mods/fetzis-displays)                                        | Item displays — glass cloches, katana stands, wall holders, racks     |
| [Laser Bridges & Doors](https://www.curseforge.com/minecraft/mc-mods/laser-bridges-doors)                                     | Laser platforms, bridges, doors, and fences powered by redstone — length scales with signal strength, dye-customizable colors |

**Interdependency note — Laser Bridges & Doors + AE2 (Wave 1)**: Laser sources require an End Crystal (post-End-dragon). Redstone control pairs naturally with AE2 level emitters and Create redstone circuits — automate laser gates that open when your ME system detects specific conditions.

**Interdependency note — Fetzi's Displays + Apotheosis (Wave 3)**: Fetzi's Displays is ideal for showcasing Apotheosis gear. Glass cloches and katana stands let you display mythic drops and perfect gem rolls as trophies. Wall holders with plaques let you name your legendary weapons.

**Interdependency note — Lili's Pottery + Handcrafted**: Both add decorative blocks but cover different aesthetics. Handcrafted is rustic furniture (chairs, tables, shelves). Lili's Pottery is earthenware (pots, vases, urns). Together they provide a full interior decoration toolkit.

### Rechiseled Addons

| Mod                                                                                                                | Role                                                                 |
|--------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
| [Rechiseled: Create](https://www.curseforge.com/minecraft/mc-mods/rechiseled-create)                               | 100+ decorative variants of Create blocks + mechanical chisel        |
| [Rechiseled: Applied Energistics 2](https://www.curseforge.com/minecraft/mc-mods/rechiseled-applied-energistics-2) | AE2 autocrafting for Rechiseled blocks via Chiseling Pattern Encoder |

Tools and blocks to build the base you deserve.

### Rechiseled — Decorative Block Variants

600+ decorative block variants with connected textures.

**How**:

1. Craft **chisel** (iron + 2 sticks, check EMI)
2. Right-click with chisel → chiseling screen
3. Place base block in input slot → browse all variants
4. Click variant to preview (cycles through single block, row, 3×3 grid)
5. Take result from output slot
6. **Left-click** placed blocks with chisel to cycle through random variants in-world

**Key features**:

- **Connected textures** — toggle with bottom-right button
- **Stairs & slabs** — every variant has stair/slab forms
- **No durability** — chisel never breaks

**Block types** (30+ variants each):

- Stone (bricks, tiles, carved, pillars, panels, runed, mosaic)
- Glass (all colors + connected clear, borders, panels)
- Wood (grain variants, carved panels, ornate borders)
- Wool & Carpet (woven, knitted, cross-stitched)
- Concrete (smooth, paneled, tiles, bordered)
- Nether materials (glowstone, nether bricks, blackstone)

**Addons**:

- **Rechiseled: Create** — 100+ decorative Create block variants + mechanical chisel
- **Rechiseled: AE2** — autocraft Rechiseled blocks via AE2's Chiseling Pattern Encoder

### Supplementaries — Vanilla+ Functional Decoration

Decoration blocks that serve a purpose:

| Block            | Function                                    | How                                                                           |
|------------------|---------------------------------------------|-------------------------------------------------------------------------------|
| **Jar**          | Stores 1 item visually                      | Right-click with item to put in, empty hand to take out                       |
| **Signpost**     | Directional sign pointing to named location | Right-click with tag item to set destination name. Arm points toward Waystone |
| **Faucet**       | Fluid flow decoration                       | Place above fluid tank. Right-click to toggle flow                            |
| **Weather Vane** | Shows wind direction/speed                  | Place outside. Rotates in real-time                                           |
| **Item Shelf**   | Wall-mounted display (3 items)              | Right-click with item to place, sneak-right-click to remove                   |
| **Rope**         | Climbable, place in mid-air                 | Right-click to place knot, add more rope below. Breaks when top knot broken   |
| **Flute**        | Craftable instrument                        | Right-click to play note. Villagers react                                     |

**Practical builds**:

- Kitchen: Item shelves for ingredients, jars for flour/sugar, faucet over sink
- Entrance: Signposts to "Mine", "Nether Portal", "Village"
- Garden: Weather vane, rope swing from tree
- Study: Jars with glowing items as lamps

### Macaw's — Complete Building Set

Five modules covering structural elements in every wood type.

**Bridges**: 6 slabs + 1 stick in bridge pattern. Right-click to extend, shift-right-click to shorten. Straight or rope variants. All 10+ wood types.

**Doors**: Special doors per wood — glass, slatted, stable (top half opens independently), cottage, shop, paper. Craft with matching wood + relevant material.

**Roofs**: Roofing blocks — slopes, ridges, gutters. 3 slabs in triangle pattern for slope piece. Auto-connects corners.

**Windows**: Diamond pane, framed, barred, tropical, stained glass. Craft with glass + wood.

**Fences**: Picket, stockade, horse, wired, highley gate. Each distinct look.

**Building tip**: Macaw's roofs + Rechiseled stone + Macaw's windows = cohesive aesthetic.

### Building Wands — Large-Scale Construction

Place many blocks at once. Closest thing to WorldEdit without a server plugin.

**Craft**: Stick + 2 blocks of same type in + pattern. Block type determines tier (stone = basic, iron = better, diamond = best).

**Modes** (right-click wand to open GUI):

| Mode           | Does                          | When to use                 |
|----------------|-------------------------------|-----------------------------|
| Build Wall     | Wall between 2 clicked points | Enclosing rooms, perimeters |
| Build Line     | 1-block-wide line             | Railings, borders, paths    |
| Fill Area      | 3D cuboid between 2 corners   | Foundations, clearing rooms |
| Build Circle   | Ring of blocks                | Towers, wells               |
| Build Cylinder | Filled cylinder               | Silos, water tanks          |
| Build Sphere   | Hollow or filled sphere       | Domes, decorative globes    |

**How**: Left-click to set first corner (green sparkle). Right-click to set second corner (structure builds). Uses blocks from your inventory.

**Tips**:

- Shift+Right-click to undo last placement
- Use **Undo wand** (stick + slimeball) to reverse recent actions
- Combine with AE2 wireless terminal for inventory access while building

### Handcrafted — Furniture

| Furniture     | Function                          | Craft                    |
|---------------|-----------------------------------|--------------------------|
| **Chairs**    | Right-click to sit                | Slabs + planks           |
| **Tables**    | Right-click to place items on top | Varies by type           |
| **Shelves**   | Wall-mounted item display         | Wood + relevant material |
| **Curtains**  | Right-click to open/close         | Wool + stick             |
| **Desks**     | Table + drawer storage            | Slabs + planks           |
| **Cupboards** | Wall-mounted aesthetic storage    | Wood + glass             |
| **Sofa**      | Multi-block seating               | Wool + wood              |
| **Dresser**   | Tall drawer storage               | Wood + relevant material |

**Tip**: Place in your most-used rooms — kitchen, dining, bedroom. Use shelves to display favorite loot (Twilight Forest trophies, Apotheosis mythic gear, rare Simply Swords weapons).

### The Magic Mirror

Reflective mirror block showing the nearest player's reflection.

**How**: Craft (check EMI — glass + frame materials). Place on wall. Shows your character model in real-time, including armor and held items.

**Use**: Decorative vanity mirrors in bedrooms and dressing rooms. Purely aesthetic — no functional gameplay effect.

### Fetzi's Displays — Item Showcases

Display your hard-earned items in style. Craft a **Workbench** (check EMI) to make all display types.

| Display Type               | What it does                       | Best for                              |
|----------------------------|------------------------------------|---------------------------------------|
| **Glass Cloches**          | Glass dome on pedestal — 16 colors | Trophy items, rare drops, gems        |
| **Katana Stands**          | Vertical weapon rack               | Simply Swords weapons, boss drops     |
| **Wall Holders + Plaques** | Wall-mounted display with name tag | Named weapons, "GOD SWORD" vibes      |
| **Racks** (4 types)        | Horizontal/vertical item holders   | Tool organization, collection display |

**Scale, rotation, position**: Items in displays can be scaled, rotated, and repositioned. Check the [Wiki](https://github.com/NotFetzi/FetzisDisplays/wiki) for exact controls.

**Integration with Apotheosis (Wave 3)**: Glass cloches and katana stands are ideal for showcasing mythic drops. Mount your perfect gem rolls and affix-rolled weapons as trophies. Wall holders with plaques let you name your legendary weapons — "Flamebane, Bane of the Ender Dragon."

### Lili's Pottery — Decorative Earthenware

Part of the [Let's Do](https://www.curseforge.com/minecraft/mc-mods?class=mc-mods&search=let%27s+do) cozy mod series. Adds pottery blocks for interior decoration.

**What it adds**:

| Category          | Variants                                   |
|-------------------|--------------------------------------------|
| **Clay**          | 6 new clay types found in various biomes   |
| **Pots & Vases**  | 7 variants in old and new clay styles      |
| **Urn & Amphore** | Functional storage — save items from death |

**How**:

1. Find **new clay types** in world (beaches, rivers, various biomes)
2. **Knead** clay at crafting table → raw pot forms
3. **Bake** in furnace → hardened pottery
4. **Paint** patterns → finished decorated pottery

**Integration with Handcrafted**: Both add decorative blocks but cover different aesthetics. Handcrafted is rustic furniture (chairs, tables, shelves). Lili's Pottery is earthenware (pots, vases, urns). Together they provide a full interior decoration toolkit.

### Laser Bridges & Doors — Energy Barriers

Futuristic laser barriers created by powering Laser Source blocks with redstone.

**What it adds**:

| Block                       | Function                                                       |
|-----------------------------|----------------------------------------------------------------|
| **Laser Source Block**      | Projects a horizontal laser bridge when powered by redstone    |
| **Laser Fence Source Block**| Projects a vertical laser barrier                              |

**How it works**:

1. Craft a **Laser Source Block** — End Crystal + 7 iron ingots + glass (check EMI)
2. Power with **redstone** — laser length scales with signal strength (max 15 blocks by default, configurable)
3. **Dye** with right-click to customize color — any dye works, dispenser-compatible too
4. Convert between laser bridge ↔ laser fence in a crafting grid

**Key features**:

- **Dynamic length** — changes in real-time as redstone signal strength varies (use comparators, levers at different levels)
- **Blocks cut through** — configurable list of blocks lasers can replace. Default: air only. Tune in `config/laserbridges.json`
- **Dispenser dyeing** — automate color changes with redstone and dispensers

**Recipe gate**: Requires an End Crystal — this is post-End-dragon content. Appropriate for Phase 2+ base building.

**Integration with Redstone & Tech**:

- **AE2 level emitters** — emit redstone when item quantities hit thresholds → auto-close laser gates when storage is low or auto-open when conditions are met
- **Create redstone links** — wireless redstone across your base to control laser arrays from a central panel
- **Comparators** — use container fullness to control bridge length dynamically

**Chill living fit**: Purely decorative/functional — no combat interaction, no progression pressure. Dye-customizable to match base aesthetics (warm amber lasers for cozy builds, cool blue for tech areas).
---

### Session Plan — Wave 6

| Session                             | Focus                                                                                                                  | What to Build            |
|-------------------------------------|------------------------------------------------------------------------------------------------------------------------|--------------------------|
| **Session 1 — Rechiseled basics**   | Craft chisel. Convert stone, wood, glass into decorative variants. Try connected textures                              | Decorative block library |
| **Session 2 — Structural elements** | Craft Macaw's roofs, windows, doors in your base wood type. Build a cohesive room                                      | Cohesive room aesthetic  |
| **Session 3 — Furniture**           | Handcrafted chairs, tables, shelves in kitchen and bedroom. Item shelves for loot display                              | Functional interior      |
| **Session 4 — Large-scale**         | Building Wands — wall mode for perimeter, fill mode for foundation. Build a tower with circle mode                     | Rapid construction       |
| **Session 5 — Details**             | Supplementaries jars, signposts, weather vanes. Laser Bridges & Doors for energy barriers and decorative lighting. Rechiseled: Create for factory aesthetics | Decorative details       |

---

<!--raw-typst #pagebreak() -->

## Wave 7 — Space Exploration

### Core Space Mod

| Mod                                                                            | Role                                                                                         |
|--------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------|
| [**Stellaris**](https://www.curseforge.com/minecraft/mc-mods/stellaris) 1.4.23 | Space exploration — rockets, Moon/Mars/Venus/Mercury/Glacio, oxygen system, machines, energy |

Stellaris (by ExodusTeam) is the successor to Beyond Earth and the premier space mod for NeoForge 1.21.1. It features 4 rocket tiers, a rover, oxygen management, custom gravity per planet, oil/water/fuel processing, radioactives, and alien mobs. Machines include the Oxygen Distributor, Water Separator, Solar Panel, Fuel Refinery, and Pump Jack. 250+ building blocks across planet-specific sets.

### Integration with Tech Mods
| Layer          | Stellaris ↔ Tech Mod Interaction                                                                        |
|----------------|---------------------------------------------------------------------------------------------------------|
| Power          | Mekanism cables can power Stellaris machines. Create rotational → Mekanism → Stellaris                  |
| Energy         | Mekanism universal cable connects to Stellaris machines (energy API compat)                             |
| Storage        | AE2 ME drives store Stellaris materials; autocrafting builds rocket components                          |
| Ore Processing | Mekanism 5x ore multiplication works on Stellaris ores (desh, ostranium, etc.)                          |
| Food           | Farmer's Delight meals eatable in space when oxygen is present (v1.2.1+)                                |

### Progression Placement


## Mod Count Summary
| Wave                         | Mods    | Deps   | Total   | Notes                                                                                                                                                                                                                                                                  |
|------------------------------|---------|--------|---------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Wave 0 — Foundation          | 14      | 10     | 24      | Dependencies (12), Performance & Rendering (10), Shaderpack (1 mod: Euphoria Patches), Infrastructure (3) — all the nuts & bolts that make the game run (+1 shaderpack, +11 resource packs)                                                                            |
| Wave 1 — Tech                | 19      | 5      | 24      | Create + 13 addons (incl. Power Grid, Gunsmithing, Protection Pixel, Ornithopter Glider, Train Utilities, Railways Navigator, Interiors, Train Parts, Threaded Trains), Mekanism + Generators, AE2, Advanced Finders, Advanced Chimneys + NTGL, GeckoLib, Framework, ForgeEndertech, Kleiders deps |
| Wave 1.5 — Colony            | 9       | —      | 9       | MineColonies (4 deps counted as mods — they're library mods; CurseForge-only) + 4 addons: Byzantine Styles, Stylecolonies, Create: Colony Logistics, ColonyLink                                                                                                           |
| Wave 2 — Exploration         | 32      | 6      | 38      | YUNG's (12), Terralith/Tectonic, Serene Seasons, Darker Depths, Upgrade Aquatic, dimensions (3), End overhaul (3 + Nullscape dp + 5 deps), Structory + Structory Towers, navigation, aircraft, ships, hang glider, IaA + MoMP + IA Engines addons, Incendium (Nether biome overhaul), Immersive Machinery (utility machines)                                                                          |
| Wave 3 — Equipment Magic     | 9       | 12     | 21      | Skills Mastery Reimagined, Pufferfish's Skills, Simply Swords, Simply More, Too Many Bows, Relics, Enchanting Runes, Immersive Armors, Apotheosis + 12 deps (Placebo, Apothic modules, Patchouli, Simply Tooltips, Fzzy Config, Ranged Weapon API, Spell Engine, Bundle API, Pufferfish's Attributes, Curios API)                                               |
| Wave 4 — Food & Farming      | 11      | —      | 11      | Farmer's Delight + 8 addon mods + Neo Bee Fix + Comfortable Campfires                                                                                                                                                                                                  |
| Wave 4.5 — Quests            | 6       | 1      | 7       | FTB Questing ecosystem: FTB Library + FTB Quests + FTB Teams + KubeJS + FTB XMod Compat + MineColonies Questline + ExtraQuests (Modrinth). Bountiful removed.                                                                                                                                                                           |
| Wave 2 — Exploration         | 31      | 5      | 36      | YUNG's (12), Terralith/Tectonic, Serene Seasons, Darker Depths, Upgrade Aquatic, dimensions (3), End overhaul (3 + Nullscape dp + 5 deps), Structory + Structory Towers, navigation, aircraft, ships, hang glider, MoMP addon, Incendium (Nether biome overhaul), Immersive Machinery (utility machines)                                                                          |
| Wave 6 — Building            | 12      | 3      | 15      | Rechiseled, Supplementaries, Macaw's (4), Building Wands, Reforged: Accurate Block Placement, Handcrafted, The Magic Mirror, Fetzi's Displays, Lili's Pottery, Laser Bridges & Doors + Rechiseled: Create, Rechiseled: AE2 + Moonlight, Resourceful, Fusion |
| Wave 7 — Space Exploration   | 1       | 1      | 2       | Stellaris, Potentials API                                                                                                                                                                                                                                              |
| Wave 8 — Programmable Computers | 1       | 0      | 1       | CC:Tweaked                                                                                                                                                                                                                                                             |
| **Total**                    | **170** | **43** | **213** | All confirmed NeoForge 1.21.1 (+Real Camera; Day Counter Plus reverted — Day Counter + Hud Texts restored)                                                                                              |

Space travel becomes real. Build rockets, manage oxygen, explore alien worlds, bring back exotic resources.

### Stellaris — Interplanetary Travel

Complete space exploration mod. Build rockets piece by piece, manage oxygen and fuel, travel to 5 planets.

**Video tutorial**: [Stellaris Getting Started Guide](https://www.youtube.com/watch?v=oZwi3zcYi7c)

**Core concepts**:

| Concept               | What it means                                                                         |
|-----------------------|---------------------------------------------------------------------------------------|
| **Rocket Components** | Build engines, fuel tanks, capsules, fins separately → assemble at **Rocket Station** |
| **Oxygen**            | Most planets have no atmosphere. Space suit + oxygen required                         |
| **Fuel**              | Rockets need fuel (oil → refinery). Higher-tier rockets need more fuel                |
| **Planet Tiers**      | Basic rocket = Moon only. Upgraded rockets reach Mercury, Venus, Mars, Glacio         |
| **Gravity**           | Each planet has different gravity. Low = higher jumps. High = weighted movement       |

#### Phase 1: Getting to Space

**Step 1 — Gather resources**:

- Find **oil** in Overworld (pools in deserts/plains)
- Mine **steel** (from Mekanism Metallurgic Infuser or TFMG Blast Furnace)
- Collect iron, copper, redstone, glass

**Step 2 — Build basic machines**:

| Machine                | Function                               | Priority |
|------------------------|----------------------------------------|----------|
| **Rocket Station**     | Assembly block — build components here | First    |
| **Fuel Refinery**      | Oil → rocket fuel                      | Second   |
| **Oxygen Distributor** | Fills space suits with oxygen          | Third    |
| **Water Separator**    | Water → oxygen (for Distributor)       | Fourth   |
| **Solar Panel**        | Power generation on planets            | Fifth    |

**Step 3 — Build first rocket**:

1. Open Rocket Station GUI
2. Craft **Tier 1 Engine**, **Tier 1 Fuel Tank**, **Capsule**, **Fins**
3. Rocket Station assembles them into **Tier 1 Rocket**
4. Right-click assembled rocket to create launch pad

**Step 4 — Prepare for launch**:

1. Fill fuel tank from Refinery (fluid pipes or buckets)
2. Equip **Space Suit** (check EMI — steel + glass + rubber/leather)
3. Fill suit with oxygen at Oxygen Distributor
4. Stock supplies: food (Farmer's Delight meals work with oxygen), blocks, torches, weapons

**Step 5 — Launch**:

1. Enter rocket (right-click door)
2. Press launch button in GUI
3. Watch ascent animation

#### The Moon — First Destination

Safest first destination. Low gravity (~17% Overworld), no atmosphere, basic resources.

**What to do**:

- Mine **moon stone** and **cheese ore** (smelts into cheese ingots)
- Collect **desh** — Moon's primary rare resource. Used for Tier 2 rocket components
- Explore structures — crashed spaceships, moon bases, landing pads
- Place a **Waystone** immediately
- Set up base: solar panel + oxygen distributor + chest
- Look for rich ore veins — higher concentrations of certain Overworld ores

**Returning**: Enter rocket on Moon → launch → returns to original launch pad.

#### Other Planets

| Planet      | Tier | Gravity | Hazards                   | Key Resource    | Notes                             |
|-------------|------|---------|---------------------------|-----------------|-----------------------------------|
| **Moon**    | 1    | Low     | None (oxygen required)    | Desh            | First destination. Safe practice  |
| **Mercury** | 2    | Low     | Extreme heat, fire damage | Ostranium       | Bring fire resistance             |
| **Venus**   | 2    | High    | Acid rain                 | Tharsite        | Dense, heavy movement             |
| **Mars**    | 3    | Medium  | Cold, dust storms         | Desh (rich)     | Best for permanent off-world base |
| **Glacio**  | 4    | Low     | Extreme cold              | Glacio crystals | Ice planet. Endgame destination   |

#### Off-World Machines

| Machine                | Function            | Why you need it                           |
|------------------------|---------------------|-------------------------------------------|
| **Solar Panel**        | Power from sunlight | Most planets have more sun than Earth     |
| **Oxygen Distributor** | Breachable air      | Required on every planet                  |
| **Water Separator**    | Water → oxygen      | Feed oxygen into Distributor              |
| **Fuel Refinery**      | Oil → rocket fuel   | Refine on destination planet if oil found |
| **Pump Jack**          | Extracts oil        | Find oil pools on other planets           |

### Integration With Tech Base

| System             | How it connects                                                                                                    |
|--------------------|--------------------------------------------------------------------------------------------------------------------|
| **Power**          | Mekanism generators at Moon base. Universal cables power Stellaris machines                                        |
| **Ore processing** | Bring planet ores (desh, ostranium, tharsite) back to Mekanism line. 5x works on Stellaris ores                    |
| **Storage**        | AE2 ME drives store Stellaris materials. Autocraft rocket components. Quantum link or P2P tunnel to off-world base |
| **Transport**      | Create trains move rocket materials from launch pad to base. Conveyors feed Rocket Station                         |
| **Fuel**           | TFMG diesel/gasoline for industrial use. Stellaris uses its own fuel crafting (oil → refinery)                     |
| **Backpacks**      | Netherite-upgraded backpacks carry oxygen tanks and supplies                                                       |
| **Food**           | Farmer's Delight meals eatable in space with oxygen present                                                        |
| **Gear**           | Apotheosis affixes may apply to space suit (if item tags align)                                                    |

### Progression Placement

Space belongs in **Phase 2** (hours 40–200). Prerequisites:

- Mekanism basic processing (Enrichment Chamber)
- Small AE2 network
- Create power infrastructure
- Good weapons/armor (Wave 3/5 gear helps with planet mobs)

Start with Moon missions, establish Tier 1 base, then Mercury/Venus. Mars and Glacio are late Phase 2.

---

### Session Plan — Wave 7

| Session                      | Focus                                                                                                 | What to Build              |
|------------------------------|-------------------------------------------------------------------------------------------------------|----------------------------|
| **Session 1 — Ground prep**  | Find oil. Build Fuel Refinery + Rocket Station. Craft Tier 1 components. Assemble rocket              | Launch infrastructure      |
| **Session 2 — Moon landing** | Craft Space Suit. Fill with oxygen. Stock supplies. Launch                                            | First off-world base, desh |
| **Session 3 — Moon base**    | Solar panel + oxygen distributor. Waystone. Mine desh for Tier 2. Chunk Loader                        | Sustainable Moon operation |
| **Session 4 — Next planets** | Tier 2 rocket → Mercury or Venus. Unique hazards (heat/acid). Temporary base                          | New resources              |
| **Session 5+ — Deep space**  | Tier 3 → Mars (permanent base). Tier 4 → Glacio (endgame crystals). Digital Miner for auto-extraction | Interplanetary logistics   |

**Tip**: Space is the most resource-intensive activity. Don't rush it. Each planet should feel like a meaningful expansion. MekaSuit trivializes spacewalks — jetpack flight + environmental protection = no oxygen worries.

---

<!--raw-typst #pagebreak() -->

## Wave 8 — Programmable Computers

Programmable computers, autonomous turtles, and Lua scripting. Write programs to automate your base in ways Create and Mekanism can't — custom logic, conditional automation, self-optimizing systems.

### Mod

| Mod | Role |
|---|---|
| [**CC: Tweaked**](https://modrinth.com/mod/cc-tweaked) | Programmable computers, turtles, and Lua scripting. Wireless networking, peripheral API for block interaction, redstone integration |

> **Source note**: CC:Tweaked's devs recommend Modrinth for the latest NeoForge builds. If CurseForge has an equivalent version, either source works.

**No additional dependencies** — CC:Tweaked is self-contained.

### Recipe Gates

CC:Tweaked's default recipes use vanilla materials and would be craftable in Phase 1. To enforce the Phase 2 progression gate, a KubeJS script (`kubejs/server_scripts/wave8_cc_tweaked.js`) overrides the following:

| Item | Gated Recipe | Gate |
|---|---|---|
| Advanced Computer | Basic Computer + Enriched Alloy (Mekanism) + Redstone Block | Phase 2 — Metallurgic Infuser |
| Turtle (all variants) | TFMG Steel ingots + Computer + Chest | Phase 2 — Blast Furnace |
| Wireless Modem | Create Brass casings + Computer + Ender Pearl | Phase 1.5–2 — Brass age |
| Basic Computer | Stone + Redstone + Glass Pane (vanilla, unchanged) | Phase 1 — harmless without peripherals |
| Wired Modem | Stone + Redstone (vanilla, unchanged) | Phase 1 — local only |

### Configuration

CC:Tweaked's config is world-specific (`<world>/serverconfig/computercraft-server.toml`). Tracked override at `config/computercraft-server.toml`:

| Setting | Value | Why |
|---|---|---|
| `[http].enabled` | `false` | Single-player only — no web API needed |
| `command_computers` | `false` | Survival-only constraint |
| `[turtles].need_fuel` | `true` | Keeps turtles balanced — coal/lava are abundant |
| `[turtles].fuel_limit` | `200000` | Generous but finite. A lava bucket (1000 moves) fits 200 times |

Copy `config/computercraft-server.toml` to `<world>/serverconfig/` after first world creation.

### Crafting Your First Computer

#### Step 1: Materials

| Item | Recipe | Phase |
|---|---|---|
| **Basic Computer** | 4 stone + 1 redstone + 1 glass pane (crafting table, 3×3) | Phase 1 |
| **Advanced Computer** | 1 Basic Computer + 4 Enriched Alloy + 1 redstone block (see Recipe Gates above) | Phase 2 |
| **Monitor** | 3 stone + 1 glass pane (top row) | Phase 1 |

#### Step 2: Place it

Place the computer block on the ground. Right-click it to open the interface. You'll see a black screen with a prompt:

```
CraftOS 1.9
>
```

This is the **shell** — your command-line interface to the computer. Type `help` and press Enter to see available commands.

#### Step 3: Attach a monitor (optional)

Place a **Monitor** adjacent to the computer. Wrap it in a Lua program with `peripheral.wrap("right")` (or whichever side it's on). More on peripherals later.

### The Shell

The shell is where you type commands. Here are the essential ones:

| Command | What it does |
|---|---|
| `help` | List all commands |
| `help <command>` | Show help for a specific command |
| `ls` | List files in current directory |
| `cd <dir>` | Change directory. `cd ..` = up one level |
| `mkdir <name>` | Create a new directory |
| `rm <file>` | Delete a file |
| `cp <src> <dst>` | Copy a file |
| `mv <src> <dst>` | Move/rename a file |
| `edit <file>` | Open the built-in text editor |
| `pastebin get <code> <file>` | Download a program from pastebin |
| `reboot` | Restart the computer |
| `shutdown` | Turn off the computer |
| `id` | Show this computer's ID number |
| `programs` | List available built-in programs |
| `clear` | Clear the screen |

**Tab completion**: Start typing a filename or command, press Tab to autocomplete.

**Ctrl+T**: Terminates any running program immediately. If you're stuck in a loop, Ctrl+T is your escape hatch.

### The Editor

The built-in editor opens when you run `edit <filename>`.

| Key | Action |
|---|---|
| `Ctrl+S` | Save file |
| `Ctrl+E` | Exit editor (back to shell) |
| `Ctrl+P` | Print file to screen |
| Arrow keys | Move cursor |
| `Ctrl+A` | Select all |
| `Ctrl+C` / `Ctrl+V` | Copy / Paste |
| `Page Up` / `Page Down` | Scroll |

Write your code, Ctrl+S to save, Ctrl+E to exit, then type the filename (without `.lua`) to run it.

> **Tip**: Create a `programs/` directory for your scripts with `mkdir programs`. Keep the root clean — put test scripts and experiments in folders.

### Your First Program

Let's write "Hello, world!":

```
> edit hello
```

This opens a blank editor. Type:

```lua
print("Hello, world!")
```

Press **Ctrl+S** to save, then **Ctrl+E** to exit. Now run it:

```
> hello
Hello, world!
```

**Congratulations — you just wrote and ran your first Lua program!**

#### How programs run

- Type the filename (without `.lua`) and press Enter
- The computer creates a `.lua` file when you save from the editor
- To stop a running program: **Ctrl+T**
- Programs run in the `/` (root) directory. Use `cd programs` to switch to your programs folder
- The startup program is `/startup.lua` — create it to run code automatically when the computer boots

#### A slightly bigger program

```lua
-- greeting.lua
local name = "Adventurer"
print("Welcome, " .. name .. "!")
print("It is day " .. os.day() .. " of your journey.")

if os.day() < 10 then
    print("Early days — build your shelter!")
else
    print("You've been here a while. Time for industry!")
end
```

Save as `greeting`, run with `greeting`. The `..` operator concatenates strings. `os.day()` returns the Minecraft day number.

### Lua Syntax Primer

Lua is a small, simple language. Here's everything you need to write useful programs:

#### Variables

```lua
local x = 10          -- local variable (preferred — stays in scope)
y = 20                -- global variable (accessible everywhere — use sparingly)
```

#### Types

```lua
local a = nil         -- nothing (unset variable = nil)
local b = true        -- boolean
local c = 42          -- number (no integer/float distinction)
local d = "hello"     -- string
local e = {1, 2, 3}  -- table (arrays and dictionaries)
local f = function() end  -- function
```

Check a type with `type(value)`: `type(42)` → `"number"`.

#### Conditionals

```lua
if fuel < 100 then
    turtle.refuel()
elseif fuel > 10000 then
    print("Fuel is full!")
else
    print("Fuel level: " .. fuel)
end
```

Comparisons: `==` (equal), `~=` (not equal), `<`, `>`, `<=`, `>=`. Combine with `and`, `or`, `not`.

#### Loops

```lua
-- Numeric for (counted)
for i = 1, 10 do
    print("Iteration " .. i)
end

-- While (condition)
local n = 10
while n > 0 do
    print(n)
    n = n - 1
end

-- Repeat-until (always runs at least once)
repeat
    turtle.dig()
until turtle.detect() == false

-- Generic for (iterate over a table)
local items = {"stone", "dirt", "iron"}
for _, name in ipairs(items) do
    print(name)
end

-- Break out early
for i = 1, 100 do
    if turtle.getFuelLevel() < 10 then break end
    turtle.forward()
end
```

#### Functions

```lua
-- Define a function
local function greet(name)
    return "Hello, " .. name .. "!"
end

-- Call it
print(greet("Steve"))    -- "Hello, Steve!"

-- Functions are values — store in tables
local commands = {
    dig = function() turtle.dig() end,
    place = function() turtle.place() end,
}
commands.dig()
```

#### Strings

```lua
local s = "Minecraft"
print(string.len(s))          -- 9
print(string.sub(s, 1, 4))   -- "Mine"
print(s:len())                -- 9 (method syntax)
print(s:sub(1, 4))            -- "Mine"

-- Concatenation
local msg = "Day " .. os.day()   -- "Day 42"

-- Convert
print(tonumber("42"))         -- 42
print(tostring(42))           -- "42"
```

#### Tables

Tables are Lua's only data structure. They work as arrays, dictionaries, or both:

```lua
-- Array (indexed from 1, not 0)
local ores = {"iron", "gold", "diamond"}
print(ores[1])                -- "iron"
print(#ores)                  -- 3 (length)
table.insert(ores, "emerald") -- append

-- Dictionary
local config = {
    depth = 64,
    width = 3,
    fuelThreshold = 100,
}
print(config.depth)           -- 64 (dot syntax)
print(config["depth"])        -- 64 (bracket syntax)
config.height = 5             -- add new key

-- Iterate
for k, v in pairs(config) do
    print(k .. " = " .. v)
end
```

#### Math

```lua
print(math.random(1, 100))   -- random 1-100
print(math.random())          -- random 0-1
print(math.floor(3.7))       -- 3 (round down)
print(math.ceil(3.2))        -- 4 (round up)
print(math.max(2, 8, 5))     -- 8
print(math.min(2, 8, 5))     -- 2
print(math.abs(-5))          -- 5
```

### The Event Loop

Computers in CC:Tweaked are event-driven. Programs don't just run from top to bottom and exit — they wait for things to happen.

#### Pulling events

```lua
-- Block until ANY event happens
local event, param1, param2 = os.pullEvent()
print("Event: " .. event)

-- Wait for a specific event type
local event, key = os.pullEvent("key")
print("You pressed: " .. key)

-- Wait for a timer
os.startTimer(5)                     -- fire timer in 5 seconds
local event, timerID = os.pullEvent("timer")
print("5 seconds passed!")
```

#### Event types

| Event | Parameters | Fires when... |
|---|---|---|
| `key` | key code (number) | A key is pressed |
| `char` | character (string) | A text character is typed |
| `timer` | timer ID (number) | A timer expires |
| `redstone` | — | Any redstone input changes |
| `peripheral` | side (string) | A peripheral is attached |
| `peripheral_detach` | side (string) | A peripheral is removed |
| `turtle_inventory` | — | Turtle inventory changes |

#### Running multiple things at once

```lua
-- Run two functions, stop when EITHER finishes
parallel.waitForAny(
    function() while true do print("A") sleep(1) end end,
    function() sleep(5) print("B done!") end
)

-- Run two functions concurrently until BOTH finish
parallel.waitForAll(
    function() while true do print("Tick") sleep(1) end end,
    function() sleep(10) print("Timer done!") end
)
```

#### A practical event loop

```lua
-- watchdog.lua — monitor a redstone signal, print when it changes
local lastState = rs.getInput("back")
print("Monitoring redstone on back. Ctrl+T to stop.")

while true do
    local event = os.pullEvent("redstone")
    local current = rs.getInput("back")
    if current ~= lastState then
        print("Redstone changed: " .. (current and "ON" or "OFF"))
        lastState = current
    end
end
```

`sleep(n)` is shorthand for `os.startTimer(n); os.pullEvent("timer")`.

### Peripherals & Wrapping

Peripherals are external blocks connected to your computer via **Wired Modems**. They let your computer interact with inventories, tanks, and machines.

#### Connecting a peripheral

1. Craft a **Wired Modem** (stone + redstone, vanilla recipe)
2. Place it on the side of a block (e.g., a chest, a Mekanism tank)
3. Place your computer adjacent to the modem
4. Right-click the modem — you'll see "Peripheral: <name> connected"

#### Wrapping in code

```lua
-- Find a modem on a specific side
local modem = peripheral.wrap("right")

-- Find ANY peripheral of a given type
local chest = peripheral.find("minecraft:chest")

-- List all connected peripherals
local names = peripheral.getNames()
for _, name in ipairs(names) do
    print(name, peripheral.getType(name))
end
```

#### Working with inventories

```lua
local chest = peripheral.wrap("right")

-- List contents
local items = chest.list()
for slot, item in pairs(items) do
    print("Slot " .. slot .. ": " .. item.name .. " x" .. item.count)
end

-- Move items
chest.pushItems("left", 1)       -- push slot 1 to left inventory
chest.pullItems("bottom", 1, 2)  -- pull slots 1-2 from bottom

-- Check item count
local count = chest.getItemDetail(1)
if count then
    print("Slot 1 has " .. count.count .. " " .. count.name)
end
```

#### Working with fluid tanks

```lua
local tank = peripheral.wrap("back")
local tanks = tank.tanks()

for _, t in ipairs(tanks) do
    print(t.name .. ": " .. t.amount .. "/" .. t.capacity .. " mB")
end

-- Push fluid to adjacent tank
tank.pushFluid("left")
```

### Turtles

Turtles are mobile computers — programmable robots that can move, mine, build, farm, and fight.

#### Crafting a turtle

You need a Basic or Advanced Computer, a Chest, and **7 TFMG Steel Ingots** (gated — see Recipe Gates above). Place them in a crafting table:

```
SSS
SCS
SXS
```
- S = TFMG Steel Ingot
- C = Basic/Advanced Computer
- X = Chest

#### Tool turtles

Right-click a turtle with a tool to equip it:

| Tool | Turtle type | What it does |
|---|---|---|
| Diamond Pickaxe | Mining Turtle | Mines blocks, drops items |
| Diamond Axe | Felling Turtle | Chops wood faster |
| Diamond Shovel | Digging Turtle | Digs soft blocks faster |
| Diamond Hoe | Farming Turtle | Tills soil |
| Diamond Sword | Melee Turtle | Attacks mobs |
| (nothing) | Normal Turtle | Places blocks, moves inventory |

#### Fuel

Turtles need fuel to move. Refuel by placing fuel items in the selected slot and running `turtle.refuel()`:

```lua
turtle.select(1)              -- select slot 1 (where your coal is)
turtle.refuel()               -- consume 1 fuel item
print(turtle.getFuelLevel())  -- fuel remaining (each coal = 80 moves)
```

Fuel values: Coal/Charcoal (80), Block of Coal (800), Lava Bucket (1000), Blaze Rod (120).

#### Movement

```lua
turtle.forward()    -- move forward 1 block
turtle.back()       -- move backward 1 block
turtle.up()         -- move up 1 block
turtle.down()       -- move down 1 block
turtle.turnLeft()   -- rotate 90° left
turtle.turnRight()  -- rotate 90° right
```

Each movement returns `true` if successful, `false` if blocked.

#### Inventory

Turtles have 16 inventory slots. Access them with:

```lua
turtle.select(3)               -- switch to slot 3
turtle.suck()                  -- pick up items from front
turtle.drop()                  -- drop selected slot in front
turtle.getItemCount(3)         -- count items in slot 3
turtle.getItemSpace(3)         -- free space in slot 3
turtle.transferTo(4)           -- move from selected to slot 4
```

#### Block interaction

```lua
turtle.dig()         -- mine block in front
turtle.digUp()       -- mine block above
turtle.digDown()     -- mine block below
turtle.place()       -- place block from selected slot in front
turtle.placeUp()     -- place block above
turtle.placeDown()   -- place block below
turtle.inspect()     -- get info about block in front
turtle.detect()      -- is there a block in front? (true/false)
turtle.compare()     -- does block in front match selected slot?
```

#### Example: Simple strip miner

Save this as `miner`:

```lua
-- 3-wide strip miner, 64 blocks deep
local depth = 64
local width = 3

-- Refuel first
turtle.select(1)
turtle.refuel()
print("Fuel: " .. turtle.getFuelLevel())

-- Check if we have a chest behind us to deposit into
print("Place a chest behind the turtle, then press Enter")
read()

for d = 1, depth do
    for w = 1, width do
        while turtle.detect() do
            turtle.dig()
            sleep(0.5)
        end
        turtle.forward()

        -- Deposit if inventory is getting full
        if turtle.getItemCount(16) > 0 then
            -- Save position and return to chest
            for _ = 1, d do turtle.down() end
            for _ = 1, w do turtle.back() end
            -- Deposit all
            for slot = 1, 16 do
                turtle.select(slot)
                turtle.drop()
            end
            -- Return to mining position
            turtle.select(1)
            turtle.refuel()
            for _ = 1, w do turtle.forward() end
            for _ = 1, d do turtle.up() end
        end
    end

    -- Move to next row: back to start, down 1
    for _ = 1, width do turtle.back() end
    turtle.digDown()
    turtle.down()
end

print("Mining complete! " .. depth * width .. " blocks mined.")
```

Run with `miner`. Place a chest behind the turtle, place fuel in slot 1.

### Redstone

Computers can read and output redstone signals on all six sides:

```lua
-- Output (power a side)
rs.setOutput("left", true)          -- full power on left
rs.setOutput("right", false)        -- off
rs.setAnalogOutput("top", 7)        -- signal strength 7 (0-15)
rs.setOutput("bottom", true)        -- full power

-- Input (read a side)
local signal = rs.getInput("back")   -- true if powered, false if not
local strength = rs.getAnalogInput("back")  -- 0-15 signal strength

-- Bundled output (colored cables, 16 channels per side)
rs.setBundledOutput("left", colors.red + colors.green)
```

#### Practical redstone pattern: Create clutch control

```lua
-- toggle.lua — toggle a Create clutch on keypress
local powered = false
rs.setOutput("back", false)

print("Press Space to toggle clutch. Ctrl+T to stop.")
while true do
    local event, key = os.pullEvent("key")
    if key == keys.space then
        powered = not powered
        rs.setOutput("back", powered)
        print("Clutch: " .. (powered and "ENGAGED" or "DISENGAGED"))
    end
end
```

Place the computer so its "back" faces a Create Clutch. Run `toggle`, press Space to engage/disengage.

### Wireless Networking

Wireless Modems let computers communicate across any distance — even across dimensions.

#### Crafting a Wireless Modem

The recipe is gated behind Create Brass (see Recipe Gates). Craft one, place it on a computer, right-click to open.

#### Sending and receiving

**Computer A (sender):**
```lua
rednet.open("left")                    -- open modem on left side
local targetID = 5                     -- Computer B's ID (use `id` command)
rednet.send(targetID, "Hello, base!")
print("Message sent!")
rednet.close("left")
```

**Computer B (receiver):**
```lua
rednet.open("left")
local senderID, message = rednet.receive()  -- wait for any message
print("Message from #" .. senderID .. ": " .. message)
rednet.close("left")
```

#### Broadcast to all computers

```lua
rednet.open("left")
rednet.broadcast("Fission reactor: CRITICAL")
rednet.close("left")
```

#### Practical intercom pattern

```lua
-- chat.lua — simple two-way chat between computers
rednet.open("left")
print("Chat open. Type messages. Ctrl+T to quit.")

parallel.waitForAny(
    -- Sender: type messages
    function()
        while true do
            local msg = read()
            rednet.broadcast(msg)
        end
    end,
    -- Receiver: print incoming messages
    function()
        while true do
            local id, msg = rednet.receive()
            print("[#" .. id .. "] " .. msg)
        end
    end
)

rednet.close("left")
```

**Finding a computer's ID**: Open the shell and type `id`. The computer's ID appears on the label or in the shell output.

### Integration Recipes — Copy-Paste Scripts

#### AE2 Level Monitor

```lua
-- ae2monitor.lua — display ME drive capacity on a monitor
-- Attach a wired modem to an ME Interface or ME Drive

local monitor = peripheral.wrap("top")  -- monitor on top
local me = peripheral.find("ae2:me_interface") or peripheral.find("ae2:me_drive")

if not me then
    print("No AE2 peripheral found!")
    return
end

monitor.clear()
monitor.setTextScale(2)

while true do
    local items = me.listItems() or {}
    local total = 0
    for _, item in pairs(items) do
        total = total + item.count
    end

    monitor.setCursorPos(1, 1)
    monitor.write(" AE2 Storage")
    monitor.setCursorPos(1, 3)
    monitor.write(" Items: " .. total)
    monitor.setCursorPos(1, 5)
    monitor.write(" Types: " .. #items)

    -- Redstone warning if getting full
    if total > 100000 then
        rs.setOutput("back", true)
        monitor.setCursorPos(1, 7)
        monitor.write(" WARNING: NEAR CAPACITY")
    else
        rs.setOutput("back", false)
    end

    sleep(5)
end
```

#### Mekanism Fission Watchdog

```lua
-- reactor-watchdog.lua — scram Mekanism fission reactor if temperature > 1200K
-- Place computer adjacent to reactor logic port (comparator reads temperature)
-- Wire redstone output to Scram button or redstone-controlled safety switch

local temp = 0
local scrammed = false

print("Reactor Watchdog active. Ctrl+T to stop.")

while true do
    temp = rs.getAnalogInput("back") * 100  -- signal 0-15 → 0-1500K approx

    if temp > 1200 and not scrammed then
        print("!!! SCRAM: Temperature " .. temp .. "K exceeds 1200K !!!")
        rs.setOutput("left", true)     -- trigger scram
        rednet.broadcast("REACTOR SCRAM — temp " .. temp .. "K")
        scrammed = true
        sleep(1)
        rs.setOutput("left", false)    -- pulse complete
    end

    sleep(1)
end
```

> **Note**: The signal-to-temperature mapping depends on your reactor's configuration. Calibrate by checking in-game reactor temperature against the analog signal value.

#### Turtle Strip-Miner

```lua
-- stripmine.lua — 3-wide tunnel, 64 deep, auto-deposit, self-refuel
-- Place turtle facing the wall to mine. Fuel in slot 1. Chest behind.

local DEPTH = 64
local WIDTH = 3

-- Refuel
turtle.select(1)
turtle.refuel()
local startFuel = turtle.getFuelLevel()
print("Starting fuel: " .. startFuel)

for d = 1, DEPTH do
    for w = 1, WIDTH do
        -- Dig until clear
        while turtle.detect() do
            turtle.dig()
            sleep(0.3)
        end
        turtle.forward()

        -- Auto-deposit when slot 16 fills
        if turtle.getItemCount(16) > 0 then
            print("Depositing at depth " .. d .. "...")
            local currentDepth = d
            for _ = 1, currentDepth do turtle.down() end
            for _ = 1, w do turtle.back() end
            -- Drop everything except slot 1 (fuel)
            for slot = 2, 16 do
                turtle.select(slot)
                turtle.drop()
            end
            -- Refuel and return
            turtle.select(1)
            turtle.refuel()
            for _ = 1, w do turtle.forward() end
            for _ = 1, currentDepth do turtle.up() end
        end
    end

    -- Return to row start, dig down for next row
    for _ = 1, WIDTH do turtle.back() end
    turtle.digDown()
    turtle.down()
    turtle.select(1)
    turtle.refuel()
end

print("Done! Mined " .. (DEPTH * WIDTH) .. " blocks.")
print("Fuel used: " .. (startFuel - turtle.getFuelLevel()))
```

#### Stellaris Launch Sequencer

```lua
-- launch.lua — countdown + redstone pulse for Stellaris rocket
-- Redstone output (left) → Rocket Station
-- Monitor (top) for countdown display

local monitor = peripheral.wrap("top")
if monitor then
    monitor.clear()
    monitor.setTextScale(3)
end

local function countdown(n)
    for i = n, 1, -1 do
        if monitor then
            monitor.setCursorPos(1, 1)
            monitor.clearLine()
            monitor.write("  " .. i)
        end
        print("T-" .. i)
        sleep(1)
    end
end

print("Press Enter to initiate launch sequence")
read()

if monitor then
    monitor.clear()
    monitor.setTextScale(2)
    monitor.setCursorPos(1, 1)
    monitor.write(" IGNITION")
    monitor.setCursorPos(1, 3)
    monitor.write(" SEQUENCE")
end

countdown(10)

-- Fire!
rs.setOutput("left", true)
if monitor then
    monitor.setCursorPos(1, 5)
    monitor.write("  LIFTOFF!")
end
print("LIFTOFF!")
sleep(2)
rs.setOutput("left", false)
print("Sequence complete.")
```

#### Base Status Dashboard

```lua
-- dashboard.lua — cycles through power, storage, time displays
-- Monitors on multiple sides

local monitors = {}
for _, side in ipairs({"top", "left", "right", "front"}) do
    local m = peripheral.wrap(side)
    if m then
        m.clear()
        m.setTextScale(1)
        table.insert(monitors, m)
    end
end

local page = 1

while true do
    local m = monitors[page]
    if m then
        m.clear()
        m.setCursorPos(1, 1)

        if page == 1 then
            m.write("=== POWER ===")
            m.setCursorPos(1, 2)
            m.write("Mekanism Induction:")
            m.setCursorPos(1, 3)
            m.write("  Check comparator")
        elseif page == 2 then
            m.write("=== STORAGE ===")
            m.setCursorPos(1, 2)
            m.write("AE2 ME System:")
            m.setCursorPos(1, 3)
            m.write("  Check ME Drive")
        elseif page == 3 then
            m.write("=== WORLD ===")
            m.setCursorPos(1, 2)
            m.write("Day: " .. os.day())
            m.setCursorPos(1, 3)
            m.write("Time: " .. textutils.formatTime(os.time()))
        end
    end

    page = page + 1
    if page > #monitors then page = 1 end
    sleep(5)
end
```

### Interdependency Notes

- **CC:Tweaked × Create**: Redstone output → Create clutch/gearshift for sequenced automation. Wired modems on Create basins for recipe monitoring. Computers can pulse gearshifts, toggle deployers, and read tank levels.
- **CC:Tweaked × Mekanism**: Reactor monitoring via redstone comparators on logic ports. Tank monitoring via wired modems on dynamic tanks. Enriched Alloy gates the Advanced Computer recipe.
- **CC:Tweaked × AE2**: ME Interface peripheral for inventory listing. Redstone comparator on ME Drive for capacity monitoring. Turtle inventory automation for bulk crafting requests. Applied Mekanistics (already in pack) bridges AE2 chemical storage with potential peripheral access.
- **CC:Tweaked × Stellaris**: Launch sequencer — countdown + redstone trigger to Rocket Station. Turtles can automate rocket component loading and fuel transfer.
- **CC:Tweaked × FTB Quests**: A dedicated "Programmable Computers" quest chapter (6 quests) guides progression from first computer to cross-mod automation.
- **CC:Tweaked × MineColonies**: Turtles can supply builder hut inventories. Monitors can display colony stats if accessible via peripheral API.

### Progression Placement

- **Phase 2 (hours 40–200)**: After basic Mekanism processing (Metallurgic Infuser for Enriched Alloy), Create Brass (Mixer), and TFMG steel production (Blast Furnace).
- The Basic Computer is craftable in Phase 1 for shell tinkering — harmless without peripherals or turtles.
- Turtles and wireless networking are Phase 2 proper, requiring steel and brass respectively.

### Session Plan

| Session | Duration | Activity | Unlocks |
|---|---|---|---|
| 1 — Hello World | 30 min | Craft Basic Computer. Boot it. Explore shell commands. Write `hello` program. Use `pastebin get` to download scripts. | Shell basics, editor, running programs |
| 2 — Lua Basics | 1 hour | Write small programs: number guessing game, timer display, Minecraft day counter. Experiment with `os.pullEvent` and the event loop. | Lua syntax, event-driven programming |
| 3 — Turtles | 1.5 hours | Craft Mining Turtle (needs TFMG steel). Write 3-wide strip miner from the integration recipes. Fuel it with coal. Watch it dig. Write return-to-home script. | Turtle API, autonomous mining |
| 4 — Redstone Control | 30 min | Computer + redstone output → Create clutch. Toggle factory on/off from terminal. Timer-based automation pulses. Read Mekanism tank level via comparator. | Redstone API, Create cross-mod control |
| 5 — Peripherals & Monitoring | 1 hour | Attach wired modems to Mekanism tanks + AE2 ME Drive. Print fuel levels and item counts to monitors. Build the base status dashboard script. | Peripheral API, modded block integration |
| 6 — Networking | 1 hour | Craft Wireless Modem (needs Create brass). Two computers chatting via `rednet`. Remote base monitor at mining outpost. Alert system for automated alerts. | Wireless networking, multi-computer systems |
| 7 — Integration Deep Dive | 2 hours | Write Mekanism fission watchdog. Stellaris launch sequencer. AE2 capacity monitor. Complete FTB Quests chapter. Experiment with custom automation ideas. | Cross-mod automation scripts, full ecosystem |

---

## Keybindings Reference

| Keybind               | Suggested             | Mod                     | Wave |
|-----------------------|-----------------------|-------------------------|------|
| View Recipes          | `R`                   | EMI                     | 0    |
| View Uses             | `U`                   | EMI                     | 0    |
| Open Fullscreen Map   | `J`                   | JourneyMap              | 0    |
| Toggle Minimap        | **Check default**     | JourneyMap              | 0    |
| Open Waystone Menu    | `Ctrl+Shift+W`        | Waystones               | 0    |
| Open Backpack         | `B`                   | Sophisticated Backpacks | 0    |
| Zoom                  | `C`                   | Sodium                  | 0    |
| Toggle Dynamic Lights | `Ctrl+L`              | LambDynamicLights       | 0    |
| Open Curios Inventory | `Y`                   | Curios API              | 0    |
| Open Skill Tree       | `K`                   | Pufferfish's Skills     | 3    |
| View Weapon Ability   | `Ctrl` (hold)         | Simply Swords           | 3    |
| Open Rune Pouch       | **Set manually**      | Runes                   | 3    |
| Open Create Ponder    | `W` (hold over block) | Create                  | 1    |
| Open Town Hall GUI    | Right-click           | MineColonies            | 1.5  |

> **Pro tip**: Open **Options → Controls → Key Binds** and browse categories at the bottom. Every mod's binds are grouped under its name. Set the ones above first, then explore others as you install new waves.

---

## Progression Through All Waves

| Phase                      | What you'll be doing                                                                                                                                                                                                                                                                                                                                                                                                                                       |
|----------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Phase 2** (hours 40–200) | Full Create factory (conveyors, deployers, sequenced crafters, trains). Mekanism 3x–5x ore processing. AE2 ME network with autocrafting. Explore Twilight Forest bosses. Apotheosis Rare/Epic gear. Mutant Monsters. First Cataclysm boss. TFMG oil refining and diesel engines. Build with Rechiseled, Macaw's, Handcrafted. Small Ships for ocean travel. Immersive Aircraft for aerial exploration. Complete quest chapters. CC:Tweaked turtles and wireless automation. Stellaris Moon and early planets |
| **Phase 3** (hours 200+)   | Mekanism fusion reactor + MekaSuit. AE2 full autocrafting CPU chains. Endgame Apotheosis Mythic gear with perfect gem sockets. Twilight Forest final bosses. Cataclysm endgame bosses. End dimension exploration. Mars and Glacio space bases. CC:Tweaked cross-mod automation networks. Monumental building projects. Create mega-factories. Perpetual optimization                                                                                                                           |

---

## General Tips

### Finding Help

- **EMI (`R`/`U`)** — always your first stop. Hover any item, press R for recipe, U for uses
- **Ponder (`W` over Create blocks)** — interactive animated tutorials. Better than any wiki
- **Mod Menu / Configured** — every installed mod's config screen
- Most mods link to their wiki or Discord from Mod Menu entry

### Losing Progress

You won't. GraveStone Mod preserves your items on death. No creeper grief data pack prevents base damage. The pack is designed so you can walk away for a month and come back to exactly the world you left.

### Java & Performance

Minecraft 1.21.1 requires **Java 21**. See [Wave -1](#wave--1--prerequisites) for JDK installation and JVM arguments.

**Performance tips**:

- ZGC garbage collector with generational mode (`-XX:+UseZGC -XX:+ZGenerational`)
- Distant Horizons handles far rendering — keep vanilla render distance at 10
- ModernFix `dynamic_resources = true` for fastest startup
- If you see missing textures, disable `dynamic_resources` temporarily

### Cross-Wave Integration Cheat Sheet

| If you want to...                 | Combine these mods                                                                            |
|-----------------------------------|-----------------------------------------------------------------------------------------------|
| Auto-build a blueprint            | Create Schematicannon + Blueprint and Quill                                                   |
| Power Create from Mekanism        | Create Crafts & Additions electric motor/alternator                                           |
| Bridge TFMG oil to AE2            | TFMG Energy Converter + Mekanism universal cable                                              |
| Store colony resources digitally  | AE2 Storage Bus on MineColonies warehouse                                                     |
| Feed colony kitchen automatically | Create conveyor → builder's chest + Farmer's Delight meals                                    |
| Autocraft Mekanism chemicals      | Applied Mekanistics + AE2 Pattern Provider                                                    |
| Cook from your ME network         | AE2 Export Bus on Farmer's Delight cooking pot                                                |
| Get combat buffs before bosses    | Farmer's Delight meal + Brewin' And Chewin' drink (effects stack)                             |
| Find the best loot                | Explorer's Compass → YUNG's structure → loot → Apotheosis Rare+ gear                          |
| Build a train network             | Steam 'n' Rails tracks → Train Utilities stations → Railways Navigator boards                 |
| Fly between Aether islands        | Immersive Aircraft airship + Aether portal                                                    |
| Defend colony perimeter           | Create Big Cannons on walls + Guard Towers                                                    |
| Explore oceans efficiently        | Small Ships cog → Ocean's Delight ingredients → YUNG's Ocean Monuments                        |
| Process space ores                | Stellaris desh/ostranium → Mekanism 5x line → AE2 storage                                     |
| Build a megabase                  | Building Wands (structure) + Rechiseled blocks (aesthetic) + Handcrafted furniture (interior) |
| Program your base                  | CC:Tweaked computer + Create clutch + AE2 ME Drive → custom Lua automation scripts            |
