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

Recommended JVM arguments (for XMCL → instance settings → Java → JVM Arguments) — community consensus for Java 21 + NeoForge (AllTheMods guide, CleanroomMC, Distant Horizons' own FAQ):

```
-Xms12G -Xmx12G -XX:+UseZGC -XX:+ZGenerational -XX:+AlwaysPreTouch -XX:+PerfDisableSharedMem -XX:+DisableExplicitGC -XX:+UseDynamicNumberOfGCThreads
```

| System RAM | Recommended allocation |
|------------|------------------------|
| 16 GB      | `-Xms8G -Xmx8G`        |
| 32 GB      | `-Xms12G -Xmx12G`      |
| 64 GB      | `-Xms16G -Xmx16G`      |

> **Why ZGC**: Minecraft's default collector, G1GC, stops the world while collecting — that's the classic modpack stutter. ZGC's **generational** mode (JEP 439) collects concurrently with near-zero pauses and scales to large heaps; Distant Horizons' own FAQ recommends ZGC for Java 21+ and names G1GC as a stutter source. On Java 21 the generational mode must be enabled explicitly with `-XX:+ZGenerational` — newer JDKs (23+) have it on by default. Temurin JDK 21 includes it.
>
> **`-Xms` must equal `-Xmx`**: an equal initial/max heap stops the JVM from resizing the heap mid-game, which causes micro-stutters. `-XX:+AlwaysPreTouch` commits all heap pages at startup (slightly slower launch, no page-fault hitches later); `-XX:+PerfDisableSharedMem` skips `hsperfdata` writes; `-XX:+DisableExplicitGC` ignores `System.gc()` calls some mods make (with ZGC those force an expensive full collection); `-XX:+UseDynamicNumberOfGCThreads` lets GC threads scale with your CPU.
>
> **Memory sizing**: don't over-allocate — a bigger heap means longer GC cycles even with ZGC. For a 200+ mod pack with Distant Horizons, 12–16 GB is the sweet spot on a 10+ core CPU (Distant Horizons' guidance: 6–8 GB for 4–8 cores, 12–16 GB for 10+ cores). ZGC also needs a little extra RAM headroom because it doesn't use compressed object pointers. `-XX:SoftMaxHeapSize` is optional: it caps ZGC's *typical* usage while allowing bursts up to `-Xmx` (e.g. `-Xms12G -Xmx16G -XX:SoftMaxHeapSize=12G`) — most players won't need it.
>
> **Distant Horizons is CPU-bound, not RAM-bound** — if you see stutter while LODs generate, lower DH's CPU Load preset (Video Settings → DH menu) before raising the heap.

**Fallback — tuned G1GC** (if ZGC misbehaves on your hardware, e.g. an older CPU): keep the same `-Xms`/`-Xmx` from the table and swap the collector flags. G1GC is the safe default for 4–8 GB heaps but shouldn't be pushed past ~12 GB:

```
-XX:+UnlockExperimentalVMOptions -XX:+UseG1GC -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M
```

**Sources**: [AllTheMods — Java & Arguments](https://allthemods.github.io/alltheguides/help/java/), [CleanroomMC — JVM Arguments](https://cleanroommc.com/wiki/end-user-guide/args), [Distant Horizons FAQ — ZGC & stuttering](https://gitlab.com/distant-horizons-team/distant-horizons/-/wikis/1-user-guide/1-frequently-asked-questions/2-problems-and-solutions/Problems-and-Solutions)

### X Minecraft Launcher (XMCL)

| Tool                          | Role                                     |
|-------------------------------|------------------------------------------|
| [XMCL](https://www.xmcl.app/) | Mod manager and launcher for the modpack |

**XMCL** manages mod and modpack installation, updates, and launching for this modpack. It supports both **CurseForge** and **Modrinth** as mod sources in one launcher, handles NeoForge installation automatically, and manages Java versions per instance. Open source, free, with no premium tier.

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

The essentials that make the game run well. Performance, rendering, shaders, chunk loading, and texture packs. Install everything in this wave before launching.

### Performance & Rendering

| Mod                                                                               | Role                                                                           |
|-----------------------------------------------------------------------------------|--------------------------------------------------------------------------------|
| [Sodium](https://www.curseforge.com/minecraft/mc-mods/sodium) 0.8.12             | Rendering engine — pin 0.8.12+ (current 1.21.1 line; incompatible with the removed Sodium Options API chain — see STATUS). Fall back to 0.6.x only if DH/Entity Culling misbehave |
| [Iris](https://www.curseforge.com/minecraft/mc-mods/irisshaders)                  | Shader loader (v1.8.14, NeoForge native)                                       |
| [Lithium](https://www.curseforge.com/minecraft/mc-mods/lithium)                   | Server-side game logic optimization                                            |
| [FerriteCore](https://www.curseforge.com/minecraft/mc-mods/ferritecore)           | Memory usage reduction                                                         |
| [Distant Horizons](https://www.curseforge.com/minecraft/mc-mods/distant-horizons) | LOD rendering                                                                  |
| [ModernFix](https://www.curseforge.com/minecraft/mc-mods/modernfix)               | All-in-one perf + bug fixes                                                    |
| [ImmediatelyFast](https://www.curseforge.com/minecraft/mc-mods/immediatelyfast)   | Immediate-mode rendering                                                       |
| [Entity Culling](https://www.curseforge.com/minecraft/mc-mods/entityculling)      | Hide off-screen entities                                                       |
| [Dynamic FPS](https://www.curseforge.com/minecraft/mc-mods/dynamic-fps)           | Background FPS reduction                                                       |
| [FastWorkbench](https://modrinth.com/mod/fastworkbench) 1.21.1-9.1.3              | Caches crafting-table recipes — eliminates late-game crafting lag spikes       |
| [MoreCulling](https://modrinth.com/mod/moreculling) v1.0.9                        | Block-face culling — skips rendering hidden faces (complements Entity Culling). Leaf culling: keep at **default** — Cull Leaves (Wave 0.5) owns leaves; enabling MoreCulling's leaf modes would duplicate it |

**ModernFix** (configurable in-game via Mod List → ModernFix → Config, or `config/modernfix-mixins.properties`):

- `mixin.perf.dynamic_resources` = `true` — Load block/item models lazily instead of all at startup. **Biggest single launch-time speedup** in the pack. Reduces memory usage too. Disable if you see missing textures or broken models.

### Shaderpack

| Shaderpack | Description                                                                                                   |
|---------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
| [Solas Shader](https://modrinth.com/shader/solas-shader)                                           | Main shader — modern fantasy look by Septonious; colored lighting, ray-marched volumetrics, generated PBR + Distant Horizons support, iris-native |

**Solas Shader** is the pack's main shader (Septonious) — a modern fantasy-stylized look: smooth, saturated lighting, 3D volumetric clouds, volumetric light, colored block lighting, aurora/Milky Way skies, and an integrated generated-PBR system. Runs on Iris (NeoForge) with zero extra mods. Use **V3.7** — Distant Horizons support is native (dedicated LOD programs, no shader-side setup; V3.7 fixed DH/Voxy translucency blending). Quality profiles run Low → Medium → **High (default)** → Ultra; LabPBR/SEUS resourcepack PBR is supported alongside the internally generated PBR.

> **PBR note**: Faithful 32x (the base layer) ships no PBR maps, so Solas's **generated PBR** (on by default at High) provides the depth on vanilla blocks — the flat 32x look remains the intended baseline. Pack-provided maps (Fire Rekindled's Normal/Specular, RAY's 3D Rails' shader support) only apply when **PBR → Material → Advanced Materials** is enabled (Material Format: **LabPBR 1.3**, the default). If you enable it, also turn **Generated Specular** OFF — the shader's own warning says not to use it with an external PBR resourcepack (only a handful of blocks carry maps, so this is a small, optional win).

**Recommended baseline (NVIDIA RTX 4080 SUPER, 16GB VRAM, 4K — target stable 70-80 FPS)**: start with the **High** profile — the shader's own default — and keep its settings. If FPS dips below 70: reduce **Colored Lighting (Voxel Volume Size)** 192 → 128, then **Volumetric Light Samples** 8 → 7, then **Shadow Resolution** 2048 → 1024, then **Shadow Distance** 192 → 128 (see the table below).

#### Solas Shader Settings — Recommended

Start from the **High** profile (the shader's default), then apply the table below. All options are in the shader's own settings screen: Options → Video Settings → Shaderpacks → Solas Shader → **Shader Settings** (profile picker at the top; screens: Atmospherics, Water, PBR, Lighting, Colors, Cinematic Effects & Post Processing, Other). Values are tuned for the pack's target (RTX 4080 SUPER, 4K, 70–80 FPS, DH LODs at 128–256).

| Settings screen | Option | Recommended | Why |
|---|---|---|---|
| (shader settings top) | **Profile** | **High** (default) | Solas's shipped default — volumetric clouds, volumetric light, generated PBR, aurora. Ultra's extras (entity shadows, 4096 shadow maps) blow the 70–80 FPS 4K budget for little visible gain |
| Lighting | Colored Lighting (Voxel Volume Size) | 192 (default) → **128** if FPS < 70 | voxelization distance for colored lighting — the shader's own warning: "higher values greatly decrease performance". First lever |
| Lighting → Shadows Config | Shadow Resolution | 2048 (default) → **1024** if FPS < 70 | the classic first shadow lever (1024 = Medium profile's value) |
| Lighting → Shadows Config | Shadow Distance | 192 (default) → **128** if needed | DH shades the distance anyway (128 = Medium's value) |
| Lighting → Shadows Config | Entity Shadows | OFF (default) | Ultra-only feature; the player's own shadow always renders regardless |
| Lighting | Screen Space Shadows | **ON** (default) | ⚠ the DH-relevant one — shadows keep rendering past the realtime distance; the shader's own comment: "Very useful with Voxy and Distant Horizons" |
| Lighting | Screen Space AO (SSAO) | ON (default) | baseline occlusion; AO Strength 1.0 |
| Atmospherics → Volumetric Light Config | Volumetric Light | ON (default) | sun rays — Solas signature |
| Atmospherics → Volumetric Light Config | Samples | 8 (default) → **7** if FPS < 70 | ray samples per frame (7 = Medium's value) |
| Atmospherics → Volumetric Clouds Config | Volumetric Clouds | ON (default) | 3D clouds — the pack's sky. Last resort if FPS < 70: turn OFF, or drop Render Distance 400 → 200 |
| PBR → Integrated PBR | Generated Normals · Generated Specular · Generated Emission | ON (defaults) | procedural depth on Faithful's flat 32x — the intended baseline |
| Water | Water Reflections · Normals (Perlin-Worley) · Caustics · Light Refraction | ON (defaults) | Solas water look; all cheap at 4K |
| Cinematic Effects & Post Processing | TAA | ON (default) | temporal SSAO / screen-space-shadows cleaner |
| Cinematic Effects & Post Processing | FXAA | OFF (default) | TAA supersedes it |
| Cinematic Effects & Post Processing | Depth of Field · Motion Blur | OFF (defaults) | keep off — build & mine clarity, and both cost frames at 4K |
| Cinematic Effects & Post Processing | Bloom · Lens Flare | ON (defaults) | cheap; part of the signature glow |

> **Distant Horizons — no shader-side setup**: unlike Bliss, Solas has no DH settings screen — DH support is native (the shader ships dedicated `dh_terrain`/`dh_water` LOD programs, and V3.7 fixed DH/Voxy translucency blending). Two options interact with LODs: **Screen Space Shadows ON** (above — shades LOD terrain past the realtime shadow distance) and **PBR → Material → Specular & Reflections → LOD Reflection: Fancy (default)** — "determines the quality of DH and Voxy chunks in reflections". DH cloud rendering stays OFF (shader default) — Solas draws its own volumetric clouds. If you ever see dithering noise on LOD chunks, the DH settings screen's noise texture (NOISE_INTENSITY / NOISE_DROPOFF) still applies.

**General MC settings**: Graphics **Fancy**, Render Distance **10 chunks**, Simulation Distance **8 chunks**, Biome Blend **2 blocks**, Mipmap Levels **4x**, Entity Distance **100%**, Fullscreen ON, VSync OFF, Max Framerate **120**. Always Defer Chunk Updates **Enabled**, Use No Error Context **Enabled**.

Distant Horizons handles far rendering — keep vanilla render distance low. DH LODs render through the shader pipeline; start LOD distance at **128** and push to **256** if the FPS budget allows. Monitor VRAM usage (shaders + DH + high-res texture packs can peak past 12GB at 4K). If you experience dips below 70 FPS, first reduce Shadow Resolution to **1024**, then lower Shadow Distance to **8 chunks**.

### Texture Packs

| Pack                                                                                                                                         | Role                                                                                                                      |
|----------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------|
| [Improved Create 32x](https://www.curseforge.com/minecraft/texture-packs/improved-create-32x)                                                | 32x32 texture extension for Create — items, blocks, GUI; designed to pair with Faithful 32x                               |
| [Improved Applied Energistics 2](https://www.curseforge.com/minecraft/texture-packs/improved-applied-energistics-2)                          | 32x32 texture extension for AE2 — items, blocks, GUI; designed to pair with Faithful 32x                                  |
| [Armored Legacy](https://modrinth.com/resourcepack/armored-legacy)                                                                           | Custom armor models + working armor trims for vanilla sets (requires EMF + ETF mods)                                      |
| [Mod Descriptions](https://modrinth.com/resourcepack/mod-descriptions)                                                                       | Field Guide companion — lore descriptions for 200+ mods' entries (lang-only, order irrelevant)                            |
| [Fresh Animations](https://www.curseforge.com/minecraft/texture-packs/fresh-animations)                                                      | Living entity animation overhaul — mobs blink, look around, show emotion                                                  |
| [Enhanced Boss Bars](https://www.curseforge.com/minecraft/texture-packs/enhanced-boss-bars)                                                  | Redesigned boss bars with themed designs for vanilla and modded bosses                                                    |
| [Faithful 32x AppleSkin Addon](https://modrinth.com/resourcepack/faithful-32x-appleskin-addon)                                               | AppleSkin HUD icons (hunger, saturation) at 32x in Faithful style — syncs the food bar to the 32x base                    |
| [RAY's 3D Rails](https://www.curseforge.com/minecraft/texture-packs/rays-3d-rails)                                                           | 3D block & item textures for all rail types                                                                                |
| [RAY's 3D Ladders](https://www.curseforge.com/minecraft/texture-packs/rays-3d-ladders)                                                       | 3D block & item textures for ladders — vanilla + Create; separate pack from 3D Rails (same author)                         |
| [Better Lanterns](https://www.curseforge.com/minecraft/texture-packs/better-lanterns)                                                        | Enhanced 3D look for lanterns and chains                                                                                  |
| [(Bee's) Fancy Crops](https://modrinth.com/resourcepack/fancy-crops)                                                                         | Reworked crop models with texture variations — compatible with Farmer's Delight                                           |
| [Rekindled CTM](https://modrinth.com/resourcepack/rekindled-ctm)                                                                             | Connected textures for Fire/Soul Fire + moss carpet overhangs — official Fire Rekindled addon (needs Continuity)          |
| [Fire Rekindled](https://modrinth.com/resourcepack/fire-rekindled)                                                                           | Animated fire, lava, water, and portal textures — includes Create mod support                                             |
| [Motsch's Better Leaves](https://www.curseforge.com/minecraft/texture-packs/motschens-better-leaves)                                         | Bushier, denser leaves with explicit mod support — pair with Cull Leaves for FPS                                          |
| [Bushy Pink Petals, Wildflowers & Leaf Litter](https://www.curseforge.com/minecraft/texture-packs/bushy-pink-petals-wildflowers-leaf-litter) | 3D models for pink petals, wildflowers, and leaf litter on the ground                                                     |
| [Modded Omelet — Modern Spawn Eggs](https://modrinth.com/resourcepack/modded-omelet)                                                         | 1.21.5-style spawn eggs backported + restyled for 204 mods — matches pack mob lineup                                      |
| [Mace Fusion](https://modrinth.com/resourcepack/mace-fusion)                                                                                 | Cleaner 3D model + 32x texture for the vanilla mace                                                                       |
| [Fresh Waystones Texture](https://www.curseforge.com/minecraft/texture-packs/fresh-waystones-texture)                                        | Improved textures for the Waystones mod block + item                                                                      |
| [Overlay's](https://modrinth.com/resourcepack/overlays)                                                                                      | Dynamic CTM overlays — dirt moisture, cracks, smooth block transitions (requires Continuity + Connector)                  |
| [MissingSoundsFix](https://modrinth.com/resourcepack/missingsoundsfix)                                                                       | Suppresses vanilla empty-sound warnings (salmon.ambient, cod.ambient, etc.) — fixes log spam from MC-97521                |
| [Faithful 32x](https://modrinth.com/resourcepack/faithful-32x)                                                                               | Full 32x base pack — complete coverage, cohesive palette; load at bottom of pack order                                    |

- **Improved Create 32x** — 32x32 textures for Create (items, blocks, GUI); partly based on Faithful 32x assets — designed to pair with it. Coverage still incomplete; author requires top placement.
- **Improved Applied Energistics 2** — 32x32 textures for AE2 (items, blocks, GUI); same author + Faithful pairing as Improved Create 32x. Coverage still incomplete; author requires top placement.
- **Armored Legacy** — vanilla armor remodel with working armor trims (all styles/materials) and interchangeable helmet variants. Requires the [EMF](https://modrinth.com/mod/entity-model-features) + [ETF](https://modrinth.com/mod/entitytexturefeatures) mods (Wave 0.5). Place above other packs.
- **Mod Descriptions** — Field Guide companion (resource pack, lang-only): adds lore descriptions for modded entries in the catalog — 200+ mods, incl. full coverage for Farmer's Delight, Brewin' And Chewin', Supplementaries, Spice of Life: Carrot Edition, Explorer's Compass, Waystones and partial for Cataclysm, Simply Swords, Upgrade Aquatic. Requires the Item Descriptions mod (already in pack as a required Field Guide companion). Load position irrelevant.
- **Fresh Animations** — idle animations, directional looking, sleep/blink, emotions for all vanilla mobs. Resource pack overlay (not a mod) — place high in pack order.
- **Enhanced Boss Bars** — themed boss bar designs for vanilla + Twilight Forest. For Cataclysm/Aether bars (custom rendering), also install the companion [Enhanced Boss Bars mod](https://www.curseforge.com/minecraft/mc-mods/enhanced-boss-bars-mod). **On install, set Jade's boss-bar options** (Main Menu ➜ Mods ➜ Jade ➜ Config ➜ Mod Settings):
  - **Display Bosses** → **OFF** (Jade's vanilla boss-bar overlay would fight the pack's themed bars)
  - **Boss Bars Overlap** → **Push Down Tooltip** (Jade tooltips push below the bar instead of covering it)
- **Faithful 32x AppleSkin Addon** — AppleSkin's hunger/saturation HUD icons redrawn at 32x to match Faithful's style. AppleSkin ships 16x icons from the mod, so this keeps the food bar crisp on the 32x base. Zero deps; order-independent (only touches AppleSkin's own icons) — grouped with the UI tier.
- **RAY's 3D Rails** — 3D rail models; shader support since v3.0. Compatible with Steam 'n' Rails and Create rails. Rails only — ladders are covered by the separate **RAY's 3D Ladders** pack below.
- **RAY's 3D Ladders** — 3D ladder models (vanilla + Create); shader support (LabPBR) since v2.0. Same author as RAY's 3D Rails, but a separate pack — Rails does **not** cover ladders. Updated Aug 2026.
- **Better Lanterns** — 3D lanterns + connected chain models. Compatible with Arcane Lanterns and Thin Air.
- **(Bee's) Fancy Crops** — vanilla crop rework with texture variations; built to work with Farmer's Delight (Wave 4).
- **Rekindled CTM** — official Fire Rekindled addon: connected textures for fire and soul fire (plus moss-carpet overhangs). Requires Continuity — already in the pack (Wave 0.5, for Overlay's), so zero new mods. **Load above Fire Rekindled**. Pairs well with Incendium's Nether (connected soul fire across the transformed biomes). If fire textures look desynced from their neighbors, disable Sodium's **"Animate Only Visible Textures"**. Slime/honey connected textures live in a separate pack (Viscous CTM) — not added.
- **Fire Rekindled** — animated fire, lava, water, portal textures with Normal/Specular maps for PBR shaders; supports Create (honey, steam particles). CTM addon: Rekindled CTM (previous bullet).
- **Motsch's Better Leaves** — extra layers on leaf blocks for denser, bushier foliage; explicit mod support (Aether, Deep Aether, Twilight Forest, Deeper and Darker, Upgrade Aquatic). Pair with [Cull Leaves](https://www.curseforge.com/minecraft/mc-mods/cull-leaves) (Wave 0.5) for the FPS win. v9 ships static overlays — recompile the custom version if the 16x-on-32x leaf mismatch bothers you.
- **Bushy Pink Petals, Wildflowers & Leaf Litter** — 3D models for ground-cover flora; denser, more natural look.
- **Modded Omelet — Modern Spawn Eggs** — backports the 1.21.5-style spawn eggs to 1.21.1 and restyles modded eggs to match; 204 mods supported, incl. ~9 in this pack (Aether, Twilight Forest, Cataclysm, Hybrid Aquatic, Upgrade Aquatic, Darker Depths, MineColonies, Northstar Redux, Guard Villagers). Zero dependencies.
- **Mace Fusion** — refined 3D model + 32x texture for the vanilla mace; subtle, vanilla-like, no conflicts.
- **Fresh Waystones Texture** — improved textures for the Waystones block + item (Waystones is Wave 2); no conflicts, no dependencies.
- **Overlay's** — dynamic OptiFine-format CTM overlays: dirt moisture, cracks, smooth block transitions. Requires [Continuity](https://modrinth.com/mod/continuity) + [Sinytra Connector](https://modrinth.com/mod/connector) (Forgified Fabric API already in pack). Fills the CTM gap Patrix couldn't deliver under Iris.
- **MissingSoundsFix** — silences vanilla empty-sound log spam (`salmon.ambient`, etc. — MC-97521) with dummy sound mappings; no audio changed.
- **Faithful 32x** — full 32x base pack with complete coverage (blocks, items, mobs, GUI, fonts). Replaces Patrix 32x: no PBR normal/specular maps, but lighter, complete, and cohesive. Load at the **bottom** of pack order as the base layer. BetterGrassify samples the active pack at runtime — connected grass works at 32x automatically.

**Installation**: Install via XMCL — drop `.zip` files into the instance's Resource Packs tab, or copy them into the instance's `resourcepacks/` folder (access via instance settings).

#### Resource Pack Load Order

Top = highest priority. Packs only win where they have content, so packs touching different assets (armor vs. blocks vs. items vs. language files) are order-independent; the constraints that matter are called out per item. The 32x base pack sits at the **bottom** so every overlay above it wins.

1. Improved Create 32x — author requires top placement; only overlaps the base pack
2. Improved Applied Energistics 2 — author requires top placement; only overlaps the base pack
3. Armored Legacy — author requires top placement; needs EMF + ETF mods
4. Mod Descriptions — Field Guide companion, lang-only; any position works
5. Fresh Animations
6. Enhanced Boss Bars
7. Faithful 32x AppleSkin Addon (AppleSkin HUD icons — 32x Faithful style)
8. RAY's 3D Rails (3D rails)
9. RAY's 3D Ladders (3D ladders — pair with 3D Rails; disjoint assets)
10. Better Lanterns
11. (Bee's) Fancy Crops
12. Rekindled CTM (Fire Rekindled addon — load above it)
13. Fire Rekindled
14. Motsch's Better Leaves (pair with Cull Leaves mod)
15. Bushy Pink Petals, Wildflowers & Leaf Litter
16. Modded Omelet (spawn egg items)
17. Mace Fusion (mace item model)
18. Fresh Waystones Texture (Waystones block + item)
19. Overlay's — needs Continuity + Sinytra Connector mods
20. MissingSoundsFix — no visual impact, order irrelevant
21. Faithful 32x — base layer (overlays above win)

### Infrastructure

| Mod                                                                                                      | Role                                                                     |
|----------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------|
| [Chunk Loaders](https://www.curseforge.com/minecraft/mc-mods/chunk-loaders)                              | Keep chunks loaded across dimensions — essential for Phase 2+ automation |
| [SuperMartijn642's Config Lib](https://www.curseforge.com/minecraft/mc-mods/supermartijn642s-config-lib) | Config library (Chunk Loaders dependency)                                |
| [SuperMartijn642's Core Lib](https://www.curseforge.com/minecraft/mc-mods/supermartijn642s-core-lib)     | Core library (Chunk Loaders dependency)                                  |

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

#### 3. Shader Setup

Drop **Solas Shader** `.zip` into `shaderpacks/`. In-game: Options → Video Settings → Shaderpacks → select Solas Shader. Works with Iris on NeoForge. Use **V3.7** — current release with native Distant Horizons support and ColorWheel compatibility fixes.

Solas needs no add-on mods — it fully replaces the previous Complementary Unbound + Euphoria Patches setup.

Recommended baseline (RTX 4080 SUPER, 16GB VRAM): High profile, tune from there — see the [Solas Shader Settings](#solas-shader-settings--recommended) table in [Shaderpack](#shaderpack) above (incl. the **Screen Space Shadows ON** rule for DH). General MC: Graphics Fancy, Render Distance 10, Simulation 8, VSync OFF.

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

<!--raw-typst #pagebreak() -->

## Wave 0.5 — Player Experience

All the visual polish, UI improvements, inventory tools, storage, travel, trading, and quality-of-life features that make the game feel great.

### Visual & Client QoL

| Mod                                                                                                               | Role                                                                                                                      |
|-------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------|
| [LambDynamicLights](https://www.curseforge.com/minecraft/mc-mods/lambdynamiclights)                               | Dynamic lighting                                                                                                          |
| [BetterF3](https://www.curseforge.com/minecraft/mc-mods/betterf3)                                                 | Customizable debug HUD                                                                                                    |
| [Sound Physics Remastered](https://www.curseforge.com/minecraft/mc-mods/sound-physics-remastered)                 | Realistic sound                                                                                                           |
| [AmbientSounds](https://www.curseforge.com/minecraft/mc-mods/ambientsounds)                                       | Nature ambiance (birds, wind, water)                                                                                      |
| [The Immersive Music Mod](https://www.curseforge.com/minecraft/mc-mods/the-immersive-music-mod)                   | 147 new biome/structure-based songs, vanilla silence gaps preserved                                                       |
| [Modern UI](https://modrinth.com/mod/modern-ui)                                                                   | Full UI framework — modernized screens, own text engine, fancy tooltips, Gaussian blur                                    |
| [Immersive Hotbar](https://www.curseforge.com/minecraft/mc-mods/immersive-hotbar)                                 | Animated hotbar slot transitions on pickup/use/swap, XP bar + level-up effects, tooltip animations                        |
| [Mindful Darkness](https://modrinth.com/mod/mindful-darkness)                                                        | Automatic GUI dark mode — darkens every GUI without texture/shader changes, in-game toggle buttons, configurable intensity & algorithms (Fuzss; requires Puzzles Lib) |
| [Stylish Effects](https://www.curseforge.com/minecraft/mc-mods/stylish-effects)                                   | Status-effect HUD overhaul — compact icons with remaining-time timer + amplifier, in the HUD, inventory, and every container; requires Puzzles Lib |
| [Traveler's Titles](https://www.curseforge.com/minecraft/mc-mods/travelers-titles-neoforge)                       | RPG-style titles entering biomes/dimensions                                                                               |
| [Better Modlist](https://www.curseforge.com/minecraft/mc-mods/better-modlist-neoforge)                            | Enhanced mod list screen with badges/categories                                                                           |
| [Better Third Person](https://www.curseforge.com/minecraft/mc-mods/better-third-person)                           | Independent 360° camera rotation in third-person view                                                                     |
| [Countered's Smooth F5](https://modrinth.com/mod/countereds-smooth-f5)                                            | Smooth third-person camera transitions on F5 — cinematic, configurable                                                    |
| [3D Skin Layers](https://www.curseforge.com/minecraft/mc-mods/skin-layers-3d)                                     | Renders player skin layers (jackets, hats) with 3D depth                                                                  |
| [Presence Footsteps](https://www.curseforge.com/minecraft/mc-mods/presence-footsteps-neoforge)                    | Block-aware footstep sounds for every surface type                                                                        |
| [Particular Reforged](https://www.curseforge.com/minecraft/mc-mods/particular-reforged)                           | Ambient particles: 3D water splashes, fireflies, falling leaves, cave dust, waterfall cascades                            |
| [Particle Rain](https://www.curseforge.com/minecraft/mc-mods/particle-rain)                                       | Replaces default weather with particle effects: angled rain, desert sandstorms, fog, wind                                 |
| [Swinging Lanterns](https://www.curseforge.com/minecraft/mc-mods/swinging-lanterns)                               | Subtle swinging movement on lanterns and attached chains — makes builds feel alive                                        |
| [Wakes Reforged](https://www.curseforge.com/minecraft/mc-mods/wakes-reforged)                                     | Realistic water wakes and splashes when traveling on water                                                                |
| [Sounds](https://www.curseforge.com/minecraft/mc-mods/sound)                                                      | 170+ new sound effects for UIs, items, blocks, actions                                                                    |
| [Better Days](https://www.curseforge.com/minecraft/mc-mods/betterdays)                                            | Customizable day/night cycle length, enhanced sleep                                                                       |
| [Better Safe Bed](https://www.curseforge.com/minecraft/mc-mods/better-safe-bed)                                   | Prevents mobs that can't reach you from blocking sleep — chill-rule essential                                             |
| [Beautiful Enchanted Books [Mod Edition]](https://www.curseforge.com/minecraft/mc-mods/beautiful-enchanted-books) | Unique textures per enchantment book type — standalone mod, no resource pack needed                                       |
| [Overflowing Bars](https://www.curseforge.com/minecraft/mc-mods/overflowing-bars)                                 | Expanded health, armor, and toughness bars beyond vanilla limits                                                          |
| [Leave My Bars Alone](https://www.curseforge.com/minecraft/mc-mods/leave-my-bars-alone)                           | Keeps food/health/armor bars visible while riding mounts — requires Puzzles Lib                                           |
| [Cherished Worlds](https://www.curseforge.com/minecraft/mc-mods/cherished-worlds)                                 | Favorite/pin worlds to top of list, prevent accidental deletion                                                           |
| [Eating Animation](https://www.curseforge.com/minecraft/mc-mods/eating-animation-forge)                           | First-person eating/drinking animation — food moves to mouth and shrinks                                                  |
| [Camera Overhaul](https://www.curseforge.com/minecraft/mc-mods/cameraoverhaul)                                    | Camera tilting, screen shakes, mouselook roll, idle sway — satisfying movement feedback                                   |
| [Real Camera](https://www.curseforge.com/minecraft/mc-mods/real-camera)                                           | Realistic first-person camera — bind view to head/body part, FPV model rendering, configurable                            |
| [\[DLS\] Dark Loading Screen](https://www.curseforge.com/minecraft/mc-mods/dls-dark-loading-screen/files/7425971) | Replaces the default bright-red loading screen with a dark version — easier on the eyes                                   |
| [Cosy Critters & Creepy Crawlies](https://www.curseforge.com/minecraft/mc-mods/cosy-critters)                     | Ambient atmospheric animals — birds, bugs, and critters that bring the world to life                                      |
| [Foxified Dense Flowers](https://www.curseforge.com/minecraft/mc-mods/foxified-dense-flowers)                     | Renders multiple flowers per block in flower fields for denser, more natural-looking flora                                |
| [Effectual](https://www.curseforge.com/minecraft/mc-mods/effectual)                                               | Atmospheric effects and decorative particles — steam breath, footprints, cave dust, sparks                                |
| [BetterGrassify](https://modrinth.com/mod/bettergrassify)                                                         | OptiFine Fancy + Fast better grass — connected grass/podzol/path/nylium sides, better snow. Requires Forgified Fabric API |
| [Loot Beams: Refork](https://modrinth.com/mod/loot-beams-refork) neoforge-1.21.1-3.4.7                            | Colored rarity-tinted beams on item drops — makes Apotheosis rare gear visibly pop. Client-side                           |
| [Auto HUD](https://modrinth.com/mod/autohud) 8.11+1.21.1-neoforge                                                 | Auto-hides idle HUD elements (full health bar, status effects) for a cleaner screen; toggle the whole HUD with a keybind  |
| [[EMF] Entity Model Features](https://modrinth.com/mod/entity-model-features)                                     | OptiFine-format custom entity models — powers Armored Legacy's armor models; works with Fresh Animations; requires ETF    |
| [[ETF] Entity Texture Features](https://modrinth.com/mod/entitytexturefeatures)                                   | Emissive/random/custom entity textures — required by EMF         |
| [Continuity](https://modrinth.com/mod/continuity)                                                                 | CTM connected textures (OptiFine format) — enables Overlay's; runs on NeoForge via Connector + Forgified Fabric API       |
| [Cull Leaves](https://www.curseforge.com/minecraft/mc-mods/cull-leaves)                                           | Culls leaf interior faces — big FPS win in forests; recommended companion for Motsch's Better Leaves                      |

### Inventory & UI

| Mod                                                                                           | Role                                                                                                                                                   |
|-----------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------|
| [EMI](https://www.curseforge.com/minecraft/mc-mods/emi)                                       | Recipe viewer with recipe trees                                                                                                                        |
| [Jade](https://www.curseforge.com/minecraft/mc-mods/jade)                                     | Block info HUD                                                                                                                                         |
| [Jade Addons (Neo/Forge)](https://www.curseforge.com/minecraft/mc-mods/jade-addons-forge)     | Extra Jade info panels                                                                                                                                 |
| [JourneyMap](https://www.curseforge.com/minecraft/mc-mods/journeymap)                         | Real-time minimap + full-screen world map, waypoints, entity radar                                                                                     |
| [JourneyMap Integration](https://www.curseforge.com/minecraft/mc-mods/journeymap-integration) | Shows Waystones as icons on JourneyMap                                                                                                                 |
| [AppleSkin](https://www.curseforge.com/minecraft/mc-mods/appleskin)                           | Food hunger/saturation overlay                                                                                                                         |
| [Immersive Armor HUD](https://www.curseforge.com/minecraft/mc-mods/immersive-armor-hud)       | Armor type icons + durability above armor bar — shows what's about to break                                                                            |
| [Inventory Essentials](https://www.curseforge.com/minecraft/mc-mods/inventory-essentials)     | Drag-to-transfer, single-item moves, sorting                                                                                                           |
| [ClientSort](https://www.curseforge.com/minecraft/mc-mods/clientsort)                         | Sort (4 modes), Fill Stacks, Transfer Matching, customizable button positions — requires Cloth Config API                                              |
| [Advancement Plaques](https://www.curseforge.com/minecraft/mc-mods/advancement-plaques)       | Glowing plaque advancement popups with copper/silver/gold borders                                                                                      |
| [Shulker Box Tooltip](https://www.curseforge.com/minecraft/mc-mods/shulkerboxtooltip)         | Preview shulker box contents on hover                                                                                                                  |
| [Item Borders](https://www.curseforge.com/minecraft/mc-mods/item-borders)                     | Colored borders on items based on rarity                                                                                                               |
| [Obscure Tooltips](https://www.curseforge.com/minecraft/mc-mods/obscure-tooltips) 4.2.4      | Stylized tooltips — animated effects/particles, rarity emphasis, labels/shadows, scrolling, armor + tool previews. Owns the tooltip surface (Modern UI tooltips off, Aug 2026 swap) |
| [Loot Journal](https://www.curseforge.com/minecraft/mc-mods/loot-journal-neoforge)            | Animated item pickup notifications                                                                                                                     |
| [Better Advancements](https://www.curseforge.com/minecraft/mc-mods/better-advancements)       | Overhauled advancements UI with editor/pan/zoom                    |
| [Polymorph](https://www.curseforge.com/minecraft/mc-mods/polymorph)                           | Choose crafting result when recipes conflict                       |
| [JEED](https://www.curseforge.com/minecraft/mc-mods/just-enough-effect-descriptions-jeed)     | Status effects in EMI browser — descriptions, sources, colors for all modded effects |
| [MEED](https://www.curseforge.com/minecraft/mc-mods/moderately-enough-effect-descriptions-meed) | Curated descriptions + effect sources for 600+ effects across 100+ mods — JEED/EMIffect addon |

### Storage & Travel

| Mod                                                                                             | Role                                                           |
|-------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
| [Sophisticated Storage](https://www.curseforge.com/minecraft/mc-mods/sophisticated-storage)     | Upgradable barrels/chests                                      |
| [Sophisticated Backpacks](https://www.curseforge.com/minecraft/mc-mods/sophisticated-backpacks) | Portable inventory                                             |
| [Waystones](https://www.curseforge.com/minecraft/mc-mods/waystones)                             | Fast travel between waypoints                                  |
| [GraveStone Mod](https://www.curseforge.com/minecraft/mc-mods/gravestone-mod)                   | Keep inventory on death                                        |
| [Simple Recall Potion](https://www.curseforge.com/minecraft/mc-mods/simple-recall-potion)       | Drink to teleport back to your spawn point — simple, stackable |

### Village & Trading

| Mod                                                                                                                     | Role                                                                                                                               |
|-------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------|
| [Dynamic Villager Trades](https://www.curseforge.com/minecraft/mc-mods/dynamic-villager-trades) 1.4.0 (Fabric via Sinytra Connector) | Dynamically changing villager trades — villagers specialize in what you buy from them, reducing the need for massive trading halls |
| [Improved Village Placement](https://www.curseforge.com/minecraft/mc-mods/improved-village-placement)                   | Forces villages to spawn on flat terrain — prevents cliff-side and underwater villages                                             |

### Configuration — Wave 0.5

**Dynamic Villager Trades** (`config/dynamicvillagertrades.properties` — Fabric build runs via Sinytra Connector, already in pack):

- `global_randomness` = `0.7` (recommended, default 1.0) — Lower values make villagers settle on specific trades faster; higher values increase time to get desired trades. Multiplied by group randomness in the datapack.
- `refresh_delay` = `1` (recommended, default 0) — Number of restocks between trade changes. `1` means trades change every other restock, giving you time to use existing trades before they rotate. Trades always change on level-up regardless.
- `no_book_duplicates` = `true` — Prevents librarians from selling the same enchant at different levels simultaneously.
- `enchant_repair_compat` = `false` — Adds Curse of Vanishing to every book sold by librarians (for Enchant & Repair compatibility). Keep disabled unless that mod is added.

**Waystones** (`config/waystones-common.toml`):

- `inventoryButton` = `"any"` — Opens waystone menu from inventory without a keybind.
- `enableCosts` = `false` — Free teleportation.

**Loot Journal** (`config/obscuria/loot_journal-client.toml`):

- `trackItemPickups` = `true` — Logs all item pickups for per-session statistics.
- `trackXpPickups` = `true` — Logs all XP pickups for per-session statistics.

**Mindful Darkness** (`config/mindfuldarkness-client.toml` — tracked override, user-tuned Aug 2026):

| Key | Value | Effect |
|---|---|---|
| `texture_darkness` | `0.353102992` (default 0.5) | GUI texture brightness — ~35% of original, noticeably darker than the default half-brightness |
| `font_brightness` | `0.8043705985915491` (default 0.75) | Font brightness floor — text stays clearly readable on the darker surfaces |
| `darkening_algorithm` | `"GRAYSCALE_AND_HSL"` (default `GRAYSCALE_AND_HSP`) | HSL-based darkening (allowed: GRAYSCALE_AND_HSP / HSP / GRAYSCALE_AND_HSL / HSL / GRAYSCALE_AND_LINEAR / LINEAR) |
| `paths` | full 27-entry default list **+ `!minecraft:textures/gui/sprites/hud/*` + `!loot_journal:textures/gui/*` + `!minecraft:textures/gui/sprites/toast/*` + `!advancementplaques:textures/gui/*`** | Entire vanilla HUD exempt from darkening — hearts, food, experience bar, hotbar, armor, air. Toasts exempt too: vanilla toasts (recipe unlocks) + Advancement Plaques popups. Loot Journal's pickup-notification panels (`panel_*.png` etc.) exempt as well — they'd otherwise match the bare `textures/gui/` entry and render dark ("receipts" popup). The full default list is carried in the override because ModConfigSpec replaces `paths` wholesale (an exclusion-only list would wipe the defaults) |

The override carries only these keys — `hide_in_game_switcher`, `dark_mode_toggle_screens`, `menu_blacklist`, `font_color_blacklist` stay at defaults (toggle buttons on title/pause screens; chat/sign/book screens pre-excluded). NeoForge fills the rest on first save.

No shaders involved — unlike Dark Mode Everywhere (removed in the Aug 2026 swap), it recolors GUI rendering directly, so DME's shader quirks (double text on shadowed screens, `methodShaderDump`) don't exist here. If a specific screen ever looks wrong, add it to `menu_blacklist` or `font_color_blacklist`.

**Inventory Essentials** (`config/inventoryessentials-common.toml` — tracked override):

- `inventorySorting` = `"CONSOLIDATE_ONLY"` — IE's middle-click sort only merges partial stacks, never reorders. **ClientSort owns all reordering** (this is the "configured lower" resolution of the sort-feature overlap between the two mods). All transfer features stay at defaults (single transfer, bulk transfer, shift-drag, tool/stack refill). Value verified (enum name `CONSOLIDATE_ONLY` — Balm writes enum names to TOML; `consolidate_only` also parses case-insensitively).

**Effectual** (`config/effectual.json` — tracked override; JSON, not TOML — Effectual uses a Gson config file):

- `"caveDust"` = `false` — Cave dust is Particular Reforged's effect; disabling it here removes the only duplicate particle. Everything else stays at defaults (steam breath, bubbles, sand/gravel placement sparks, footprints, etc.).

**Modern UI + ImmediatelyFast** (`config/immediatelyfast.json` — tracked override):

Modern UI requires three ImmediatelyFast mixins disabled on 1.21.1 (Modern UI compat notes — otherwise random game crashes). The tracked `config/immediatelyfast.json` ships with these flipped; ImmediatelyFast's other options stay at defaults:

| Setting               | Value   | Why                                                                                 |
|-----------------------|---------|-------------------------------------------------------------------------------------|
| `hud_batching`        | `false` | Modern UI requirement — HUD text batching conflicts with its tooltip/text rendering |
| `font_atlas_resizing` | `false` | Modern UI requirement — font atlas resize conflicts with its text engine            |
| `fast_text_lookup`    | `false` | Modern UI requirement — fast glyph lookup conflicts with its text engine            |

**Tooltip surface (Aug 2026 swap)**: **Obscure Tooltips owns tooltip rendering** — Modern UI's tooltip feature is **disabled via the Action Center** (`Ctrl+K`) so the two don't fight (both replace the vanilla tooltip renderer; Modern UI's docs acknowledge the conflict). Don't re-enable Modern UI tooltips while Obscure Tooltips is installed. **Legendary Tooltips** (ver 1.16 ~ 1.21.4) would fight Obscure Tooltips the same way — if it's ever added, configure it lower or remove it. **Dark Mode Everywhere was replaced by Mindful Darkness** (Aug 2026 swap) — Mindful Darkness recolors GUI rendering without shaders, so the old DME/Modern UI shader-overlap watch item is resolved (both coexist in the pack's intended config; Mindful Darkness' default `paths` list includes Modern UI-rendered screens and darkens them cleanly).

Modern UI itself runs on defaults. Tune it in-game via **Action Center** (`Ctrl+K`): fonts (Preferences), disable its zoom (Sodium owns `C`), background blur/colors. Its configs write to `config/ModernUI/`.

### Visual & Client QoL — What to Expect

These mods change how the game looks and feels. All are client-side and work immediately.

- **LambDynamicLights** — held light sources emit light around you; off-hand works. Pro tip: torch in off-hand while mining. Toggle `Ctrl+L`.
- **BetterF3** — cleaner debug HUD; toggle FPS, coords, biome, light level. Customize in the Mods screen → BetterF3 → Config.
- **Sound Physics Remastered** — sound muffled by walls, echoes in caves, directional. Works automatically.
- **AmbientSounds** — biome-aware ambience (birds, wind, water). No config.
- **The Immersive Music Mod** — 147 biome/structure-aware songs with natural silence gaps.
- **Immersive Hotbar** — animated slot contents on pickup/use/swap, animated XP bar. Configurable via YACL.
- **Modern UI** — full UI framework: modernized screens, own text engine (fonts via Action Center `Ctrl+K` → Preferences), fancy rounded tooltips, Gaussian blur + fade-in backgrounds, borderless fullscreen, GUI-scale slider. Ships an OptiFine-style `C` zoom — disable it in the Action Center since Sodium owns `C`. Requires the ImmediatelyFast config override below.
- **Stylish Effects** — status-effect display overhaul (Fuzss): the vanilla HUD effect icons become compact icons with a remaining-time timer + amplifier, and the same display follows you into the inventory and every container (tooltip shows the effect name). Replaces Status Effect Bars Reforged (Aug 2026 swap — SEBR's duration bars are natively covered). ⚠ **Auto HUD watch**: both hook the effects HUD element — Auto HUD's idle-hide targets the vanilla display, so if it doesn't catch Stylish's compact icons, reposition/resize them via Stylish's config or accept the display staying. Requires Puzzles Lib.
- **Traveler's Titles** — RPG-style title cards entering biomes/dimensions. No config.
- **Better Modlist** — mod list with badges (library/core/addon), categories, search.
- **Better Third Person** — independent camera in third-person; bind a toggle key in Controls. ⚠ **Smooth F5 watch**: both mods hook the third-person camera — no reported conflict for this pair (the known Smooth F5 conflicts involve Leawind's Third Person, not in pack), but if the F5 transition ever looks doubled/janky, Smooth F5 owns the transition animation and BTP owns rotation — keep both at defaults unless it misbehaves.
- **3D Skin Layers** — renders player skin layers (jackets, hats) with 3D depth. ⚠ **EMF watch**: both touch player-model rendering; no official incompatibility, but if skin layers ever render broken/misaligned, 3D Skin Layers' config **Compatibility Mode** is the lever (the pack's CEM packs — Fresh Animations = mobs, Armored Legacy = armor — don't define player models, so the risk is low).
- **Presence Footsteps** — block-aware footstep sounds; works with Sound Physics.
- **Particular Reforged** — ambient particles (splashes, fireflies, leaves, cave dust, cascades). Toggle per-effect in `config/particular.json`.
- **Particle Rain** — particle-based weather (angled rain, sandstorms, fog). `/particlerain` or Mod List → Config.
- **Swinging Lanterns** — physics-based sway on lanterns and chains. No config.
- **Wakes Reforged** — water wakes and splashes; works with Small Ships and boats. ⚠ **Particular Reforged watch**: both spawn water-splash effects (Wakes = travel wakes, Particular = 3D fall/entry splashes) — harmless layering, but if splashes look doubled near water, disable Particular's splashes in `config/particular.json`.
- **Sounds** — 170+ UI/item/block sound effects. Customize in Mod List → Sounds or `config/sounds/`.

- **Better Safe Bed** — unreachable mobs no longer block sleep. Chill-rule essential.
- **Beautiful Enchanted Books [Mod Edition]** — unique texture per enchantment type. Standalone, no resource pack needed.
- **Overflowing Bars** — health/armor/toughness bars expand past vanilla limits — needed once Apotheosis bonuses stack.
- **Leave My Bars Alone** — keeps your bars visible while riding mounts. Requires Puzzles Lib (already in pack).
- **Cherished Worlds** — pin worlds to top, prevent accidental deletion. Right-click in world list.
- **Eating Animation** — first-person eating/drinking animation; works with Farmer's Delight foods.
- **Camera Overhaul** — camera tilt, screen shake, mouselook roll, idle sway. Config: `config/cameraoverhaul-client.toml`.
- **Real Camera** — first-person body view bound to your head; `F6` toggles. Version pin `0.7.8-beta`. Compatible with Better Combat, Camera Overhaul (verified — Real Camera's own compat list: "most camera mods"); GeckoLib-rendered armor incompatible — **none in pack** (verified: the pack's only custom-render armor, Protection Pixel, uses Kleiders Custom Renderer, not GeckoLib). [VERIFY] Protection Pixel armor with model binding after test launch.
- **[DLS] Dark Loading Screen** — dark loading screen. No config.
- **Cosy Critters & Creepy Crawlies** — ambient birds/bugs/critters; client-side, toggleable via `/cosycritters`. Zero perf impact.
- **Foxified Dense Flowers** — denser flower fields; client-side.
- **Effectual** — atmospheric particles (steam breath, bubbles, footprints, sparks, sand/gravel placement). **Cave dust is disabled** in `config/effectual.json` (`"caveDust": false` — duplicated by Particular Reforged's cave dust; tracked override, Aug 2026 review). Requires Architectury API, Cloth Config, TLib (all in pack).
- **Mindful Darkness** — automatic dark mode for every GUI (replaces Dark Mode Everywhere, Aug 2026). No shaders, no texture changes — recolors GUI rendering in place; toggle button in the title/pause screens; intensity + algorithm configurable. User-tuned override: darker textures (0.353), brighter fonts (0.804), HSL algorithm; **entire vanilla HUD** (hearts, food, XP bar, hotbar, armor), **toasts** (vanilla + Advancement Plaques) and Loot Journal notification panels excluded from darkening. The HUD level number is white font text — above the 0.804 font floor, so never darkened. Requires Puzzles Lib (already in pack).
- **Obscure Tooltips** — stylized tooltips: animated effects/particles, rarity-tinted flair, labels/shadows, auto-wrap, scrolling, armor + tool previews. **Owns the tooltip surface** — Modern UI's tooltip feature is off (Action Center `Ctrl+K`). Config: `config/obscuria/` (Fragmentum). ⚠ **Apotheosis watch**: OT emphasizes item rarity — verify Apotheosis custom rarities map onto its styling in-game (fallback: OT's per-item/mod filters can style Apotheosis gear explicitly).
- **BetterGrassify** — OptiFine-style connected grass: grass blocks, snowy grass, podzol, mycelium, dirt paths, farmland, and both nylium blend their side textures into surrounding terrain (Fancy, default) or use the top texture (Fast). Adds Better Snow + Better Snowy Grass for snowy biomes. Ships no textures — samples your active texture pack's sprites at runtime, so it works at any resolution; resource-pack compatibility mode is on by default. Set mode in config — YACL GUI (already in pack) or `config/bettergrass.json`. Requires Forgified Fabric API.

---

### Inventory & UI — Your Daily Tools

- **EMI** — your primary learning tool: hover any item, `R` for recipe, `U` for uses. Recipe trees break complex crafts (Create sequenced assembly, Mekanism ore chains) into every step.
- **Jade + Jade Addons** — block name, mod source, machine status, crop growth, chest contents; Addons adds Create (SU/RPM), Mekanism (energy/gas), AE2 (channel) panels. Keep enabled. Conflict fix: Jade → Config → Mod Settings → **Display Bosses** → OFF, **Boss Bars Overlap** → Push Down Tooltip (avoids Enhanced Boss Bars conflict).
- **JourneyMap + Integration** — minimap with entity dots, fullscreen map (`J`), waypoints (`B` to set), entity radar. Waystones appear as icons via the Integration mod. `J` → right-click sets a temporary waypoint.
- **AppleSkin** — hover food for exact hunger/saturation; dashed outlines preview a meal. No config.
- **Immersive Armor HUD** — armor icons + durability above the bar; works with modded armor. No config.
- **Inventory Essentials** — drag-to-transfer and single-item moves: `Ctrl+click` moves one item, `Shift+Ctrl+click` moves all of a type. ⚠ **Sorting overlap — configured lower**: IE ships its own middle-click sorting (modes: consolidate-only / retain-order / alphabetical / creative — default creative) which would duplicate ClientSort. The tracked override `config/inventoryessentials-common.toml` sets `inventorySorting = "CONSOLIDATE_ONLY"` — middle-click merges partial stacks without reordering, and **ClientSort owns all reordering** (4 modes + button).
- **ClientSort** — sorting with 4 modes (creative order, quantity, alphabetical, item ID) plus Fill Stacks, Transfer Matching, and a Button Editor. The pack's sort tool — IE's middle-click sort is set to consolidate-only so ClientSort owns reordering.
- **Shulker Box Tooltip** — hover a shulker for a contents preview. No config.
- **Item Borders** — rarity-colored borders (gray → gold) to spot drops instantly.
- **Loot Journal** — animated pickup notifications; session summary on disconnect. Config: `trackItemPickups`, `trackXpPickups`, `showSummaryOnDisconnect`.
- **Better Advancements** — overhauled advancements UI, open with `L`. Pairs with Advancement Plaques.
- **Advancement Plaques** — glowing plaques (copper/silver/gold per tier). Requires Iceberg (auto-installed).
- **Polymorph** — when recipes conflict, click the button next to the crafting output to cycle. Persists per ingredient combination.
- **JEED** — browse any status effect in EMI (description, source mod, colors) — a built-in wiki for Apotheosis/Relics/Runes effects. Complements Stylish Effects (EMI lookup vs HUD/container display; JEED also adds description tooltips to Stylish Effects' effect widgets).
- **MEED** — curated descriptions + effect providers (which items/mobs/blocks/fluids apply each effect) for 600+ effects across 100+ mods. Addon for JEED/EMIffect. Covers pack effect-heavy mods: Aether, Deep Aether, Cataclysm, Relics, Simply Swords, Too Many Bows, Deeper and Darker, Ranged Weapon API.

### Storage & Travel

#### Sophisticated Storage + Backpacks

- **Barrel** — craft: 1 chest + 8 planks. Upgrade with iron/gold/diamond/netherite upgrades for more slots, pickup, magnet, filter, composting
- **Backpack** — equip in chest armor slot, press `B` to open. Upgradable like barrels
- **Create Integration** (auto-installed) — Sophisticated barrels and backpacks work fully on Create contraptions: upgrades, automation, inventory settings all function while moving

#### Waystones

Craft a waystone → right-click to claim. Use a Warp Stone (ender pearl + amethyst) to teleport from anywhere. **No XP costs** (`enableCosts = false` in config). Set keybind to `Ctrl+Shift+W`.

#### GraveStone Mod

Die → grave spawns with all your items. Right-click the grave to retrieve. No item loss, no despawning, 24-hour protection. ⚠ [VERIFY] at next launch (Aug 2026 review watch item): die while wearing a Sophisticated Backpacks backpack — the backpack item (with contents) must sit inside the grave and restore intact. Both mods touch death handling; no issue confirmed for this GraveStone Mod (community reports of empty backpacks involve other grave mods), but verify once.

#### Simple Recall Potion

Drink to teleport straight back to your **spawn point** — the classic Terraria-style escape potion, no save points to manage. Works within your current dimension by default; enable the mod's interdimensional config option if you want it to work across the Aether, Twilight Forest, etc. Zero dependencies.

---

### Village & Trading

#### Dynamic Villager Trades

Villager trades change dynamically — villagers specialize in what you buy from them. No more massive trading halls. The actual mod by **orlouge** (3.3M DL); the 1.21.1 build is Fabric-only, so it runs via **Sinytra Connector** (already in pack).

**Config** (`config/dynamicvillagertrades.properties`):

- `global_randomness = 0.7` — faster specialization
- `refresh_delay = 1` — trades change every other restock
- `no_book_duplicates = true` — no duplicate enchantment books
- `enchant_repair_compat = false` — no Curse of Vanishing on librarian books (for Enchant & Repair compatibility; keep off unless that mod is added)

#### Improved Village Placement

Forces villages to spawn on flat terrain. No more cliff-side or underwater villages. No config.

---

### Session Plan — Wave 0.5

| Session                         | Goal                                                                                                                                                                                               |
|---------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Session 1 — Setup**           | Launch, set keybinds, configure Distant Horizons (LOD 128-256, Medium quality). Install Solas shader. Enable Fresh Animations texture pack. Walk around spawn to generate LOD data |
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
| [**Mekanism: Ponders**](https://modrinth.com/mod/mekanism-ponders) 1.0.3                    | Ponder scenes for Mekanism machines and multiblocks (fission/fusion reactors, turbine). Requires Mekanism                             |
| [**Mekanism Guide Book**](https://www.curseforge.com/minecraft/mc-mods/mekanism-guide-book) | Patchouli-based in-game guidebook for Mekanism. Requires Patchouli (already in pack via Apotheosis)                                   |
| [MekaJadeUpgrades](https://www.curseforge.com/minecraft/mc-mods/mekajadeupgrades) 1.3-21.1 | Jade tooltips for Mekanism — shows installed upgrades (speed/energy/etc.) on machines. Requires Mekanism + Jade                        |
| [**AE2**](https://www.curseforge.com/minecraft/mc-mods/applied-energistics-2) 19.2.17       | Digital storage — ME drives, autocrafting, P2P tunnels, spatial storage. The storage backbone                                         |
| [**Applied Mekanistics**](https://www.curseforge.com/minecraft/mc-mods/applied-mekanistics) | AE2-Mekanism integration — autocrafting for chemical/gas/fission/fusion recipes, ME chemical storage, P2P chemical tunnels            |

**Note**: Mekanism v10 for 1.21.1 NeoForge is split into separate modules. **Mekanism** (core) provides machines, processing, cables, and armor. **Mekanism Generators** provides all power generation. Both must be installed.

### Create Addons

| Mod                                                                                                                                   | Role                                                                                                                                                                                                   |
|---------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [Create Crafts & Additions](https://www.curseforge.com/minecraft/mc-mods/createaddition) 1.6.0                                        | Electric motors, alternators, rolling mill, wires/rods, silver/electrum — bridges kinetic SU and Forge Energy (FE)                                                                                     |
| [Create: Power Grid](https://www.curseforge.com/minecraft/mc-mods/power-grid) 0.5.5.1                                                 | Physics-based electricity simulation — Ohm's law, AC/DC, generators, motors, cables, FE conversion. Separates Create power from SU                                                                     |
| [Steam \'n\' Rails NeoForge](https://www.curseforge.com/minecraft/mc-mods/steam-n-rails-neoforge) 0.2.1                               | Expanded train system — new tracks (spruce, monorail), semaphores, conductor mob, coupling/decoupling blocks                                                                                           |
| [Create: The Factory Must Grow](https://www.curseforge.com/minecraft/mc-mods/create-industry) (TFMG)                                  | Heavy engineering & oil — crude oil drilling, distillation, diesel/gasoline/LPG engines, steel, aluminum, electricity with voltage                                                                     |
| [Mekanism TFMG Compatibility](https://www.curseforge.com/minecraft/mc-mods/mekanism-the-factory-must-grow-compatibility)              | 85+ recipe bridges — deduplicates lead/steel/sulfur, integrates aluminum/plastic into Mekanism chains                                                                                                  |
| [TFMG Energy Converter](https://modrinth.com/mod/tfmg-energy-converter) 26.03                                                         | Bidirectional TFMG electricity ↔ FE/AE2 bridge — lets TFMG diesel engines/generators power non-TFMG machines (Mekanism, AE2). Requires Kotlin for Forge                                                |
| [Create: Gunsmithing](https://www.curseforge.com/minecraft/mc-mods/cgs)                                                               | Steampunk firearms integrated with Create — craftable using Create machines. Animated guns, attachments, ammo types. Optional Better Combat compatibility                                              |
| [Create Ornithopter Glider](https://www.curseforge.com/minecraft/mc-mods/create-ornithopter-glider)                                   | Mechanical flapping glider with boost-assisted flight — integrates with Create rotational power                                                                                                        |
| [Sophisticated Storage Create Integration](https://www.curseforge.com/minecraft/mc-mods/sophisticated-storage-create-integration)     | Full-featured Sophisticated Storage on Create contraptions — upgrades, automation, inventory settings work while moving                                                                                |
| [Sophisticated Backpacks Create Integration](https://www.curseforge.com/minecraft/mc-mods/sophisticated-backpacks-create-integration) | Full-featured Sophisticated Backpacks on Create contraptions — upgrades, automation, inventory settings work while moving                                                                              |
| [Create: Train Utilities](https://www.curseforge.com/minecraft/mc-mods/create-trainutilities) 3.0.3                                   | Sliding doors with realistic sounds, platform blocks, station building blocks                                                                                                                          |
| [Create Railways Navigator](https://www.curseforge.com/minecraft/mc-mods/create-railways-navigator)                                   | Display boards, route navigation, new schedule entries — search routes and manage train networks                                                                                                       |
| [Create: Interiors](https://www.curseforge.com/minecraft/mc-mods/interiors) 0.6.1                                                     | Colored chairs with armrest toggles, tray tables, kelp seats — functional furniture for train cars                                                                                                     |
| [Create Train Parts](https://www.curseforge.com/minecraft/mc-mods/create-train-parts) 0.4.1                                           | Crossing gates, sliding windows, train steps, slides — decorative and functional blocks for trains and stations                                                                                        |
| [Create: Threaded Trains](https://www.curseforge.com/minecraft/mc-mods/create-threaded-trains)                                        | Performance — runs train pathfinding on a separate thread, prevents tick lag on complex rail networks                                                                                                  |
| [Create Better FPS](https://www.curseforge.com/minecraft/mc-mods/create-better-fps)                                                   | Create rendering optimization — up to 50% FPS gain with shaders. Handles addon models, speed controllers, factory gauges, and schematic previews                                                       |
| [ColorWheel](https://www.curseforge.com/minecraft/mc-mods/colorwheel)                                                                 | Flywheel + Iris compatibility — renders Create contraptions under shaders. Required for Create to work with Iris (shader-agnostic)   |
| [Create Slice & Dice](https://www.curseforge.com/minecraft/mc-mods/slice-and-dice)                                                    | Create + Farmer's Delight automation — Slicer (auto Cutting Board), automatic FD Cooking Pot via heated mixing, Sprinkler for fluid-based farming                                                      |
| [Create: Dragons Plus](https://www.curseforge.com/minecraft/mc-mods/create-dragons-plus) 1.11.2b                                      | Fan processing expansion — Bulk Coloring, Bulk Freezing, Bulk Ending, Bulk Sanding. Fluid Hatch for tanks. Adds Aether Bulk Enchanting. Library mod for Create addon devs                              |
| [Create: Protection Pixel](https://www.curseforge.com/minecraft/mc-mods/protection-pixel)                                             | Create-themed power armor — brass/alloy tiers, per-piece active abilities (AoE, debuff clear, speed→damage), combustion reactor (blaze rods + water). Bridges gear between Mekanism Tools and MekaSuit |
| [Create: Central Kitchen](https://modrinth.com/mod/create-central-kitchen) 2.6.0                                                      | Mechanical Arm integration for Farmer's Delight blocks — automate Cooking Pot, Cutting Board, Stove via Arms; extends to Brewin' And Chewin' kegs. Requires Create: Dragons Plus                       |

### Create Addon Details

- **Create Better FPS** — Create rendering optimization (addon models, speed controllers, gauges, schematic previews). Benchmarked 7→35 FPS with 512 waterwheels under shaders. Pairs with ColorWheel, which handles Flywheel–Iris compatibility.
- **ColorWheel** — required for Create contraptions to render under Iris shaders; install it before Create Better FPS.
- **Create Slice & Dice** — automates Farmer's Delight: Slicer (auto Cutting Board), FD Cooking Pot recipes as Create heated mixing, Sprinkler for fluid farming (water, lava, potions, Liquid Fertilizer). Meal production becomes fully pipeable in Phase 2.
- **Create: Dragons Plus** — fan-processing expansion (Bulk Coloring, Freezing, Ending, Sanding), Fluid Hatch for tank I/O, Aether Bulk Enchanting. Features toggleable in config; required by Create: Shimmer.
- **Create: Central Kitchen** — Mechanical Arms drive existing Farmer's Delight blocks directly (Cooking Pot, Cutting Board, Stove), plus Brewin' And Chewin' kegs and other Delight-ecosystem stations. Complements (not replaces) Create Slice & Dice: Slice & Dice converts recipes into new Create machines, Central Kitchen automates the FD blocks themselves. Requires Create: Dragons Plus (in pack).

#### Create: Protection Pixel

Steampunk power armor built with Create materials. Each armor piece has a unique active ability powered by a waist-slot Combustion Reactor (blaze rods + water as fuel).

**Armor pieces** (brass → alloy tier progression):

| Piece                  | Ability                                                                           | Best for                       |
|------------------------|-----------------------------------------------------------------------------------|--------------------------------|
| **Plague Helmet**      | Release steam to dispel blindness, darkness, weakness, slowness                   | Exploration, debuff-heavy mobs |
| **Lancer Helmet**      | Speed → damage scaling — the faster you move, the harder you hit                  | Mobility builds                |
| **Hunter Helmet**      | Sensors highlight nearby creatures while sneaking; +luck for finding treasure     | Dungeon crawling               |
| **Breaker Chestplate** | +damage +attack speed while maintaining protection                                | DPS builds                     |
| **Magnetic Storm**     | AoE magnetic burst when taking heavy damage or surrounded; pulls ranged attackers | Crowd control                  |
| **Float Shield**       | Energy shell around user when charged — absorbs incoming damage                   | Tank builds                    |

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

### Ores

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
- **Sophisticated Storage Create Integration** and **Sophisticated Backpacks Create Integration** (both by P3pp3rF1y) enable full backpack and barrel functionality on Create contraptions — upgrades, automation features (pickup, magnet, feeding), and inventory settings all work while the contraption is in motion. Without these addons, Sophisticated inventories on contraptions are limited to basic item transport.
- **Applied Mekanistics** bridges AE2 autocrafting with Mekanism's chemical processing — ME Chemical Output Buses, ME Chemical Import Buses, and P2P tunnels for chemicals/gases enable autocrafting of Mekanism recipes (including fission/fusion products) directly through the AE2 crafting CPU. Without this mod, Mekanism chemical steps are manual bottlenecks.
- **Create: The Factory Must Grow** adds oil drilling, distillation towers, blast furnaces, and diesel engines — expanding Create's mechanical toolkit into heavy industry. Its steel replaces Mekanism's steel (TFMG's blast furnace is the intended steel source; Mekanism's steel recipe is disabled by the Mekanism TFMG Compat mod). TFMG aluminum and plastic feed into Mekanism's advanced processing chains.
- **Mekanism TFMG Compatibility** resolves 85+ recipe overlaps between TFMG and Mekanism — lead, sulfur, and steel are unified under TFMG's production lines, while Mekanism retains its chemical processing advantage. Both EMI item blacklist config and per-recipe toggles are available for pack tuning.
- **Create: Protection Pixel** adds steampunk power armor that bridges Create's brass-tier infrastructure with the power fantasy of Mekanism's MekaSuit. Brass-tier armor requires Create brass (early Phase 2); alloy-tier requires additional Create alloy processing (mid-Phase 2). The Combustion Reactor's blaze rod fuel can be farmed via Mekanism spawner systems, Apotheosis spawner upgrades, or vanilla blaze grinders. Blaze automation is a natural Phase 2 milestone that unlocks full power armor capability. MekaSuit remains the Phase 3 ultimate upgrade — Protection Pixel fills the gap, it doesn't compete.

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

**Expansion path — NTGL gun packs**: Create: Gunsmithing runs on NTGL, and the library supports *gun packs* (datapack-style content packs that add new guns, stats, and models via a `registry.json`). In practice, **no curated NTGL gun pack ecosystem exists** for 1.21.1 — the only published items are micro-fixes (renewable lead, breakable framed-glass trapdoors, an Alloyed compat pack, each a few hundred downloads at most). Authoring a custom gun pack is a DIY datapack task (NTGL wiki), not a drop-in download. Do not reach for TACZ/Scorched Guns to fill this gap — that violates the pack's steampunk-only weapon rule.

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

| Mod                                                                     | Role                                                                                                                      |
|-------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------|
| [Forgematica](https://www.curseforge.com/minecraft/mc-mods/forgematica) | Client-side schematic mod — import `.litematic` blueprints, display holographic overlay, place layer-by-layer in survival |

**Forgematica** is the unofficial NeoForge port of Litematica. It lets you load schematics (`.litematic` files) and shows a translucent hologram of the build in-world, complete with material lists per layer. You place blocks manually while the overlay guides every position — no auto-build, fully survival-legal. Essential for mega-scale projects that would be impossible to freehand.

- **Version**: 0.4.3+mc1.21.11 (NeoForge, 1.8 MB)
- **Environment**: Client-side only
- **Dependencies**: None (standalone — no MaLiLib required)
- **License**: LGPLv3
- **Downloads**: 1.6M+ total

**Shader compatibility**: Forgematica rendering may conflict with shader packs. If the schematic overlay looks broken, toggle shaders off temporarily (`K` by default in Iris). On 1.21.1 (this pack's version), Iris compatibility is better than newer MC versions. Switch back when done placing.

**Keybinds** (set in Options → Controls → Key Binds after installing):

| Action                      | Suggested Key  | Purpose                                              |
|-----------------------------|----------------|------------------------------------------------------|
| Open Schematic Manager      | `M`            | Load, manage, and switch between schematics          |
| Execute Schematic Placement | `Ctrl+Enter`   | Locks in the current layer after verifying alignment |
| Toggle Schematic Rendering  | `Ctrl+M`       | Show/hide hologram (useful for screenshots)          |
| Toggle Material List        | `Ctrl+Shift+M` | Show/hide required materials HUD                     |

**How it works**:

1. Download `.litematic` schematics and place them in your instance's `schematics/` folder.
2. Open Schematic Manager (`M`), select a schematic, choose placement position and rotation.
3. The holographic overlay appears at the target location. Use the material list to gather blocks per layer.
4. Place blocks manually following the overlay. Cycle through layers as you build up.
5. When a layer is complete, press `Ctrl+Enter` to lock it in and show the next layer.

No blocks are placed automatically — Forgematica is a guide, not a world editor. Every block must be placed in survival. This respects the pack's survival-only constraint while enabling builds at a scale that would normally require creative mode.

### Schematic Recommendations

These schematics complement the Driftwood progression. All are free Litematica-format downloads from Abfielder.com — one of the largest schematic libraries (700+ schematics, all free). Each schematic is picked to serve a specific purpose in your journey from Cozy Roots through Industrial Ascent to Perpetual Ascent.

| #  | Schematic                                                                                                          | ID    | Phase | Purpose                                                            | Style                        |
|----|--------------------------------------------------------------------------------------------------------------------|-------|-------|--------------------------------------------------------------------|------------------------------|
| 1  | [Starter Home](https://abfielder.com/Products/ProductDetails.php?id=2818)                                          | 2818  | 1     | Cozy first shelter — compact, complete, no wasted space            | Oak & cobblestone cottage    |
| 2  | [Medieval Starter House](https://abfielder.com/Products/ProductDetails.php?id=6457)                                | 6457  | 1     | Early game base with living space and storage                      | Timber-framed medieval       |
| 3  | [Cozy Windmill](https://abfielder.com/Products/ProductDetails.php?id=5959)                                         | 5959  | 1     | Decorative windmill — pairs with Create water wheels               | Sails & stone tower          |
| 4  | [Simple Starter House](https://abfielder.com/Products/ProductDetails.php?id=13174)                                 | 13174 | 1     | Minimal starter — place in first 30 minutes                        | Spruce & stone               |
| 5  | [Windmill Farmhouse *(FURNISHED)*](https://abfielder.com/Products/ProductDetails.php?id=10955)                     | 10955 | 1–2   | Farmer's Delight hub with enclosed mill, kitchen, and crop plots   | Furnished medieval farm      |
| 6  | [Medieval Windmill](https://abfielder.com/Products/ProductDetails.php?id=4216)                                     | 4216  | 1–2   | Standing windmill — landmark and Create rotational power aesthetic | Tall stone & wood tower      |
| 7  | [Warehouse, Auto-sorting](https://abfielder.com/Products/ProductDetails.php?id=11682)                              | 11682 | 2     | Multi-chest sorting hall — pre-AE2 bulk storage                    | Industrial timber frame      |
| 8  | [Medieval Stone Factory](https://abfielder.com/Products/ProductDetails.php?id=13065)                               | 13065 | 2     | Factory shell for Create sequenced lines and Mekanism machines     | Stone & deepslate industrial |
| 9  | [Steampunk Factory](https://abfielder.com/Products/ProductDetails.php?id=10175)                                    | 10175 | 2     | Themed factory — fits Create brass-tier and TFMG oil refining      | Brass, copper & brick        |
| 10 | [Industrial Factory *(Blackstone/Nether Brick)*](https://abfielder.com/Products/ProductDetails.php?id=2899)        | 2899  | 2–3   | Late-game factory enclosure — Nether-themed Mekanism wing          | Blackstone & nether brick    |
| 11 | [Large Underground Base *(Full Interior + Netherhub)*](https://abfielder.com/Products/ProductDetails.php?id=12756) | 12756 | 2–3   | Massive underground complex with portal hub — ultimate tech bunker | Subterranean sprawl          |
| 12 | [Dark Fantasy Castle](https://abfielder.com/Products/ProductDetails.php?id=7162)                                   | 7162  | 3     | Endgame colony fortress — 62K+ DLs, fully detailed exterior        | Dark stone & spires          |
| 13 | [Skyreach Castle](https://abfielder.com/Products/ProductDetails.php?id=12188)                                      | 12188 | 3     | Skyborne castle — Phase 3 "I've earned this" megabuild             | Floating fantasy fortress    |
| 14 | [Wizard Watchtower](https://abfielder.com/Products/ProductDetails.php?id=12509)                                    | 12509 | 1–3   | RPG-themed tower — fits Apotheosis enchanting room                 | Mage spire                   |
| 15 | [Stone Bridge](https://abfielder.com/Products/ProductDetails.php?id=10587)                                         | 10587 | 1–3   | Decorated bridge — connect base sections or span colony rivers     | Arched stone bridge          |
| 16 | [Wall + Tower](https://abfielder.com/Products/ProductDetails.php?id=8559)                                          | 8559  | 2–3   | Colony perimeter wall segment with integrated guard tower          | Defensive medieval wall      |
| 17 | [Grand Dwarven Gate](https://abfielder.com/Products/ProductDetails.php?id=11546)                                   | 11546 | 3     | Epic mountain-face entrance — mega-scale statement piece           | Dwarven stonework            |
| 18 | [Minecraft Wooden Mansion](https://abfielder.com/Products/ProductDetails.php?id=12525)                             | 12525 | 2     | Large furnished mansion — Phase 2 upgrade from starter home        | Spruce & dark oak estate     |

**Download**: Visit `https://abfielder.com/Products/ProductDetails.php?id=<ID>` for each schematic. Click "Download" for the `.litematic` file. Place all `.litematic` files in your instance's `schematics/` folder.

**Finding more**: Browse `https://abfielder.com/Products/BrowseProducts.php?sort=trending&game=minecraft&type=Schematic` — filter by tag (House, Castle, Factory, Bridge, Mega Build, Farm, Medieval, Industrial) for additional options. Planet Minecraft (`planetminecraft.com/projects/tag/litematica/`) and MineMev (`minemev.com/explore/`) have thousands more schematics if you want alternatives. Search for tags: `medieval`, `survival`, `industrial`, `fantasy`, `steampunk`.

**Style guide**: When browsing additional schematics, stick to materials already present in the modpack — stone, deepslate, oak/spruce/dark oak, brick, terracotta, copper, iron, and Create decorative blocks. Avoid schematics that depend on mods not in this pack (looking for Quark, Chipped, or BYG blocks in the material list is a red flag). Medieval, steampunk, and dark fantasy styles all fit the Driftwood aesthetic. Modern, sci-fi, and glass-heavy builds don't.

### Interdependency Notes — Wave 1.1

- **Forgematica × Create**: Factory schematics are designed as shells — you install Create machinery and Mekanism lines inside them. They provide the structure; you wire the automation.
- **Forgematica × MineColonies**: Castle and wall schematics make excellent colony defense perimeters. Wall + Tower (ID:8559) segments can be tiled to enclose an entire colony. Rebuild colony buildings inside them for a unified architectural style.
- **Forgematica × AE2**: The Warehouse Auto-sorting schematic (ID:11682) is designed for pre-AE2 storage. Once you transition to ME drives, repurpose it as bulk item overflow or decorative archive hall.
- **Forgematica × Apotheosis**: The Wizard Watchtower (ID:12509) includes space for an enchanting setup — drop your Apotheosis enchanting table and bookshelves in the top room.
- **Shader caveat**: Forgematica hologram rendering may flicker with Solas shaders. Toggle shaders off (`K`) while placing schematics, then re-enable. The 1.21.1 compatibility is better than newer MC versions — distortion is usually minor.
- **Survival constraint**: Forgematica is purely a visual guide. No blocks are auto-placed. Every resource must be gathered and placed by the player in survival mode. This respects the pack's survival-only constraint.

**Install**: In XMCL, search `Forgematica` in the Mods tab, or download the `.jar` from CurseForge and drop into `mods/`. Create a `schematics/` folder in your instance directory, then drop downloaded `.litematic` files there. Forgematica will pick them up automatically on next launch.

---

### Session Plan — Wave 1.1

| Session                        | Focus                                                                                                                        | What to Build                                 |
|--------------------------------|------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------|
| **Session 1 — Pick a starter** | Download 3 Phase 1 schematics. Place Starter Home (ID:2818).                                                                 | First schematic build, learn Forgematica flow |
| **Session 2 — Farm hub**       | Place Windmill Farmhouse (ID:10955). Plant Farmer's Delight crops around it.                                                 | Farm-to-table setup next to base              |
| **Session 3 — Bridge it**      | Place Stone Bridge (ID:10587) between base areas or over a river.                                                            | Connect your growing compound                 |
| **Session 4+ — Factory prep**  | Download Phase 2 schematics. Scout a flat area for the factory district.                                                     | Site planning for industrial ascent           |
| **Ongoing**                    | As your tech tree advances, place larger schematics. Wall+Tower around colony. Underground base for AE2. Castle for endgame. | Megabuilding scales with progression          |

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

| Mod                                                                                                          | Role                                                                                                  |
|--------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------|
| [Byzantine Styles Pack](https://www.curseforge.com/minecraft/mc-mods/byzantine-styles-pack-for-minecolonies) | 3 build styles — Byzantine, Shogun, Nile. Visual variety for colony buildings                         |
| [Stylecolonies](https://www.curseforge.com/minecraft/mc-mods/stylecolonies)                                  | Official MineColonies blueprint addon — 10+ styles (Steampunk, Frontier, High Magic, FairyTale, etc.) |
| [Create: Colony Logistics](https://www.curseforge.com/minecraft/mc-mods/cclogistics)                         | Bridges MineColonies warehouses to Create logistics — belts, chutes, trains for colony supply         |
| [ColonyLink](https://www.curseforge.com/minecraft/mc-mods/colonylink)                                        | Connects MineColonies builders to AE2 — monitor resources, trigger autocrafting from ME terminal      |
| [JadeColonies](https://www.curseforge.com/minecraft/mc-mods/jadecolonies)                                    | Jade tooltips for MineColonies — worker stats, hut info, Domum Ornamentum blocks                      |

**Style packs coexist**: Byzantine and Stylecolonies cover completely different themes (Byzantine/Shogun/Nile vs Steampunk/Frontier/FairyTale/etc.) — no overlap. Both can be installed simultaneously. FairyTale style requires Twilight Forest + Create (both in pack) and Quark (not in pack — that style simply won't appear).

**Create: Colony Logistics** and **ColonyLink** serve complementary roles — Colony Logistics handles Create-based colony restocking (belts, trains), while ColonyLink handles AE2-based resource monitoring and autocrafting. Both integrate MineColonies into the tech loop.

### Interdependency notes for Wave 1.5

- MineColonies guards patrol your base perimeter; coverage scales with Guard Tower level and skill research — defense grows with the colony.
- Colony Research soft-gates Phase 2: "Industrial Revolution" (Colony level 3, 5000 points) signals you have the infrastructure to support Mekanism and AE2. Hard recipe gating is not implemented in this pack — playtesting determines if soft gating is sufficient.

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
| [Dynamic Waters](https://modrinth.com/mod/dynamic-waters-realistic-flowing-rivers) 11.1.2 | Realistic flowing rivers — true currents, fractal river networks, deltas, mountain streams |

**Dynamic Waters** replaces vanilla's static rivers with genuinely flowing water — visible current and direction, fractal networks that split into 1st–3rd degree branches, river deltas at the coast, and mountain streams that pathfind uphill from sea level to feed the main rivers. Tested against **Terralith + Tectonic** (both in pack; Tectonic from v9.0+) and **Create — water wheels placed in these rivers generate rotational power normally** (a natural Wave 1 synergy). Pin **11.1.2** (Modrinth; the 12.0 line is still test builds), zero dependencies, CC-BY-4.0.

> **⚠️ New world required**: Dynamic Waters is a worldgen mod. Do **not** add it to an existing world — already-generated terrain won't regenerate correctly. Plan it into a fresh world. First world load takes a bit longer (river layouts pre-generate asynchronously on a background thread pool).

### Environment

### Environment

| Mod                                                                                  | Role                                                                              |
|--------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------|
| [Serene Seasons](https://www.curseforge.com/minecraft/mc-mods/serene-seasons)        | Seasonal foliage colors, temperature shifts, crop growth cycles                   |
| [Serene Seasons Plus](https://modrinth.com/mod/serene-seasons-plus) v5.1.1           | Serene Seasons add-on — sub-season day/night speed + improved snow piling/melting |
| [GlitchCore](https://modrinth.com/mod/glitchcore) (NeoForge) v2.1.0.2 **— REQUIRED** | Library — required by Serene Seasons 10.1.0.3                                     |
| [The Great Outdoors](https://www.curseforge.com/minecraft/mc-mods/the-great-outdoors) V1.2.1 | Grand Geyser Fields biome — geysers, hot springs, wildlife (bears, pronghorn, marmots), Park Ranger villages |

**The Great Outdoors** adds the Grand Geyser Fields biome — geysers, hot springs, mud pots, and the Whitebark Pine woodset — plus 7 mobs (mostly passive/neutral: cinnamon bear, pronghorn, marmot, mountain bluebird, rubber boa; the seeper is a neutral creeper variant) and two light ground structures (Observation Tower, Visitor's Center) with a new Park Ranger villager profession. **Requires GeckoLib — already in the pack** (Wave 1), zero new deps. Tested with Tectonic + Terrablender (both in pack); Farmer's Delight / Brewin' N Chewin recipe cross-compat (pronghorn prime rib, bear-friendly sweets). ⚠ The puma is a biome-localized hostile apex predator (like vanilla bears — no global spawn pressure); MCreator-built, so verify mobs and geyser behavior at first launch. Pure chill-living pillar fit — wildlife, cozy structures, food tier, no progression gating.

### Underground & Ocean

### Underground & Ocean

| Mod                                                                                                          | Role                                                                              |
|--------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------|
| [TerraBlender](https://www.curseforge.com/minecraft/mc-mods/terrablender-neoforge) (NeoForge) **— REQUIRED** | Worldgen biome library — required by Darker Depths 2.1+ for biome placement       |
| [Darker Depths](https://www.curseforge.com/minecraft/mc-mods/darker-depths)                                  | Underground expansion — 3 new cave biomes, mobs, Forsaken Bronze, Living Crystals |
| [Upgrade Aquatic](https://www.curseforge.com/minecraft/mc-mods/upgrade-aquatic)                              | Ocean expansion — Thrasher mob, Ocean Ravines, Prismarine Coral, renewable sand   |
| [Hybrid Aquatic](https://www.curseforge.com/minecraft/mc-mods/hybrid-aquatic)                                | Marine creatures — sharks, crustaceans, otters, nautiluses, diving armor, corals  |

**Interdependency note — Hybrid Aquatic + Upgrade Aquatic**: Both expand oceans but cover different niches. Upgrade Aquatic adds mob mechanics (Thrasher) and ocean-floor features. Hybrid Aquatic adds creature variety (sharks, otters, crustaceans) and diving gear. They layer without conflict — more ocean life, more reasons to dive.

**Interdependency note — Darker Depths + TerraBlender**: Darker Depths 2.1+ requires a worldgen API to register its cave biomes. Either **TerraBlender** (NeoForge) or **Biolith** must be installed. TerraBlender NeoForge is the recommended choice (available for 1.21.1 on both CurseForge and Modrinth). Without it, Darker Depths crashes on startup with `Missing Worldgen API! Install TerraBlender or Biolith.`

**Interdependency note — Darker Depths + YUNG's Better Caves**: Darker Depths adds its own cave biomes (Molten Cavern, Sandy Catacombs, Crystal Cavern) that generate alongside YUNG's Better Caves' enlarged cave systems. Darker Depths biomes replace vanilla cave sections with themed variants, while YUNG's Better Caves changes the shape and connectivity of caves — they layer without direct conflict.

**Interdependency note — Upgrade Aquatic + YUNG's Better Ocean Monuments**: Upgrade Aquatic adds ocean mobs, coral variants, and ocean-floor features. It does not modify Ocean Monuments — YUNG's Better Ocean Monuments replaces monument structure generation without conflict. Upgrade Aquatic items (thrasher teeth, prismarine coral) integrate naturally with Ocean's Delight (Wave 4) for seafood recipes.

### Structures

| Mod                                                                                                             | Role                                   |
|-----------------------------------------------------------------------------------------------------------------|----------------------------------------|
| [YUNG\'s Better Dungeons](https://www.curseforge.com/minecraft/mc-mods/yungs-better-dungeons)                   | Overhauled dungeons                    |
| [YUNG\'s Better Mineshafts](https://www.curseforge.com/minecraft/mc-mods/yungs-better-mineshafts)               | Improved mineshafts                    |
| [YUNG\'s Better Strongholds](https://www.curseforge.com/minecraft/mc-mods/yungs-better-strongholds)             | Larger, more complex strongholds       |
| [YUNG\'s Better Desert Temples](https://www.curseforge.com/minecraft/mc-mods/yungs-better-desert-temples)       | Multi-room desert temples              |
| [YUNG\'s Better Jungle Temples](https://www.curseforge.com/minecraft/mc-mods/yungs-better-jungle-temples)       | Jungle temples with traps              |
| [YUNG\'s Better Ocean Monuments](https://www.curseforge.com/minecraft/mc-mods/yungs-better-ocean-monuments)     | Redesigned ocean monuments             |
| [YUNG\'s Better Witch Huts](https://www.curseforge.com/minecraft/mc-mods/yungs-better-witch-huts)               | Expanded witch huts                    |
| [YUNG\'s Better Nether Fortresses](https://www.curseforge.com/minecraft/mc-mods/yungs-better-nether-fortresses) | Improved nether fortresses             |
| [YUNG\'s Better Caves](https://www.curseforge.com/minecraft/mc-mods/yungs-better-caves)                         | Larger, more varied caves              |
| [Structory](https://www.curseforge.com/minecraft/data-packs/structory)                                          | New hand-crafted structures            |
| [YUNG\'s Bridges](https://modrinth.com/mod/yungs-bridges)                                                       | 15+ natural bridges across terrain     |
| [YUNG\'s Extras](https://modrinth.com/mod/yungs-extras)                                                         | Desert wells, obelisks, ruins, pillars |

### Nether Worldgen

| Mod                                                    | Role                                                                                                     |
|--------------------------------------------------------|----------------------------------------------------------------------------------------------------------|
| [Incendium](https://modrinth.com/mod/incendium) v5.4.4 | Nether biome and structure overhaul — 8 biomes, 9+ structures, 25+ custom weapons, Hovering Inferno boss |

**Incendium** is a server-side data pack (packaged as a NeoForge mod) by Starmute that completely revamps the Nether using only vanilla blocks. The Nether generation height is extended to 192. Eight new biomes (Quartz Flats, Withered Forest, Infernal Dunes, Ash Barrens, Toxic Heap, and more) replace vanilla Nether biomes with 3D terrain — jagged mountains, twisting caves, and themed landscapes. Nine new structures range from the massive Forbidden Castle (one of Minecraft's largest random structures) to the Sanctum (illager fortress), Nether Reactor, and Quartz Kitchen. Over 25 custom weapons and items (Trailblazer flame bow, Greatsword of Sacrifice, Hefty Pickaxe, Hazmat Suit) are rewarded from mobs and structures. New mobs include Toxic Slimes, Restless Spirits, a tamable Ghastling, and the summonable Hovering Inferno boss. The optional [Sparkles](https://modrinth.com/resourcepack/sparkles) resource pack gives Incendium items custom textures — without it, they use vanilla sprites with custom behavior and remain fully functional.

> **⚠️ New world or Nether reset required**: Incendium overhauls Nether terrain generation. Do not add to an existing world with an explored Nether — reset the Nether dimension or create a new world.

> **Note**: Incendium is listed as an alpha/unsupported port for 1.21.x while the Stardust Labs team works on a full rewrite. The mod is mature (34M+ downloads across all versions) and the featured v5.4.4 build is well-tested. The upcoming rewrite may require a Nether reset to upgrade — plan accordingly.

### Dimensions

| Mod                                                                                 | Role                                                                                                                       |
|-------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------|
| [The Aether](https://www.curseforge.com/minecraft/mc-mods/aether)                   | Sky dimension — safe islands, gear progression, dungeons with bosses                                                       |
| [Deep Aether](https://www.curseforge.com/minecraft/mc-mods/deep-aether)             | Aether addon — 5 new biomes, Skyjade/Stratus gear, new mobs, poison swamps. Gives the Aether the "Nether Update" treatment |
| [Umbral Skies](https://www.curseforge.com/minecraft/mc-mods/umbral-skies)           | Aether × Twilight Forest fusion — Aether-themed structures in TF, Aether boss trophies, TF-material gloves                 |
| [Deeper and Darker](https://www.curseforge.com/minecraft/mc-mods/deeperdarker)      | The "Otherside" dimension — deep dark themed, warden gear                                                                  |
| [Twilight Forest](https://www.curseforge.com/minecraft/mc-mods/the-twilight-forest) | Classic dimension — 6+ bosses with progression gates, unique loot, enchanted forest biomes                                 |
| [The Bumblezone](https://www.curseforge.com/minecraft/mc-mods/the-bumblezone-forge) | Bee dimension — honey/wax biomes, giant bees, cozy opt-in exploration; enter via bee nest/hive                             |

### End Access & Structures

| Mod                                                                                                    | Role                                                                                                                            |
|--------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------|
| [**End Remastered**](https://www.curseforge.com/minecraft/mc-mods/endremastered) v6.3.0                | Portal progression overhaul — 16 custom Ender Eyes hidden across vanilla structures and bosses. Find 12+ to open the End portal |
| [**Moog\'s End Structures**](https://www.curseforge.com/minecraft/mc-mods/moogs-end-structures) v2.0.3 | New structures to fill the End dimension                                                                                        |
| [**YUNG\'s Better End Island**](https://modrinth.com/mod/yungs-better-end-island)                      | Overhauled dragon island — redesigned pillars, gateways, bell-tower summoning, new portal structure                             |

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
| [Immersive Machinery](https://modrinth.com/mod/immersive-machinery) 0.2.0                   | Rustic utility machines — Copperfin submarine, Tunnel Digger, Redstone Sheep, Bamboo Bee item drone                    |
| [Vehicle Upgrade](https://www.curseforge.com/minecraft/mc-mods/vehicle-upgrade) v21.1.0    | Vanilla mount/boat QoL — mounts swim, no wandering, full mining speed + sprint + reach while riding, translucent mount view, fixed passenger collisions |

### Field Guide

| Mod                                                         | Role                                                                                              |
|-------------------------------------------------------------|---------------------------------------------------------------------------------------------------|
| [Field Guide](https://modrinth.com/mod/field-guide) v1.14.0 | Spyglass exploration catalog — scan plants, animals, and monsters to fill an in-game encyclopedia |

Opens a new way to experience the world. Craft a spyglass, then look at any plant, animal, or monster to catalog it in your Field Guide. Each entry you discover adds to your collection with lore about the creature or plant. Works with modded mobs and biomes — automatically discovers content from every mod in the pack.

**Companion mods** — Immersive Overlays and Item Descriptions are **required dependencies** of the NeoForge 1.21.1 build: install them alongside Field Guide. **Mod Descriptions is an optional resource pack** — not a mod: it's language data only (no textures); it's listed in the [Resource Pack Load Order](#resource-pack-load-order) (position irrelevant):

| Mod                                                                                    | Feature Added                                         |
|----------------------------------------------------------------------------------------|-------------------------------------------------------|
| [Immersive Overlays](https://modrinth.com/mod/immersive-overlays)                      | Biome displays — shows spawn details for entities     |
| [Item Descriptions](https://modrinth.com/mod/item-descriptions)                        | Entry descriptions — auto-fills entry lore            |
| [Mod Descriptions](https://modrinth.com/resourcepack/mod-descriptions) (resource pack) | Optional — lore descriptions for 200+ mods' entries   |

**Interdependency note — Field Guide + pack content**: Field Guide auto-discovers entities, plants, and biomes from every mod in the pack — Aether and Twilight Forest mobs, Hybrid Aquatic creatures, and Incendium's Nether life are all catalogable with zero configuration. The optional Cloth Config API dependency is already in the pack (Wave 0.5) — nothing extra to install.

### Configuration — Wave 2

**Aether** (`aether-common.toml`):

- `"Use default Curios' menu"` = `true` — Uses Curios API menu instead of Aether's separate accessories screen.
- `"Gives player Aether Portal Frame item"` = `false` — Player must build the portal manually.
- `"Gives starting loot on entry"` = `true` — Grants Book of Lore and Golden Parachutes on first entry.
- `"Show Patreon message"` = `false` — Removes Patreon nag screen.
- `"Add Temporary Freezing automatically"` = `false` — Disables Aether's temporary freezing datapack.
- `"Add Ruined Portals automatically"` = `false` — Disables ruined portal datapack.

**Interdependency note — Deep Aether + Aether**: Deep Aether is an addon that expands the Aether dimension with 5 new biomes, Skyjade/Stratus gear, and new mobs. It requires The Aether and Aeroblender (worldgen biome API) — Aeroblender comes **pre-bundled** with Deep Aether, no separate install needed. Aeroblender itself depends on TerraBlender (already in the pack). Stratus armor grants slow-fall and dash abilities, extending the Aether's power fantasy progression. All content is within the Aether dimension — no new dimension added.

**Interdependency note — Umbral Skies + Aether + Twilight Forest**: Umbral Skies connects Aether and Twilight Forest. Aether-styled Druid Huts and Wells generate in Twilight Forest. Aether boss trophies appear in TF's trophy display style. Gloves can be crafted from TF materials (ironwood, fiery, knightmetal, phantom). No config needed — install and both dimensions gain crossover content.

**Interdependency note — Immersive Aircraft + Aether**: Aircraft can fly in the Aether dimension. An airship is a natural way to navigate Aether islands — it pairs well with the dimension's sky-island geography.

**Interdependency note — Man of Many Planes + Immersive Aircraft**: Man of Many Planes is a direct addon for Immersive Aircraft that adds two Create-themed aircraft. It requires Immersive Aircraft to function. The addon planes share the same fuel, parking, and dimension traversal behavior as base Immersive Aircraft vehicles.

**Interdependency note — Hang Glider + Create Ornithopter Glider**: The Hang Glider provides simpler, earlier flight than the Create Ornithopter Glider (Wave 1). The Hang Glider requires only wood and leather (Phase 1 accessible, no power), while the Ornithopter Glider needs Create rotational power (Phase 1.5+). Both coexist as a natural progression: Hang Glider for early-Phase-1 exploration, Ornithopter Glider once Create infrastructure is online, Immersive Aircraft for powered mid-game flight.

**Interdependency note — Immersive Machinery + Immersive Aircraft**: Four Phase 1 utility machines that fill gaps before Create/Mekanism/AE2 arrive: Copperfin submarine (conduit-powered, independent of IA fuel), Bamboo Bee item drone, Redstone Sheep early farming automation, Tunnel Digger piloted mining vehicle.

**Interdependency note — Twilight Forest + Apotheosis**: Apotheosis boss affixes (Wave 3) apply to Twilight Forest bosses. A Naga with the "Tough" affix is significantly harder. This is intended — it keeps dimension bosses relevant even with late-game gear. If a boss feels too strong, the player can return after better equipment or use Apotheosis gems/runes for the edge.

**Interdependency note — Incendium + YUNG's Better Nether Fortresses**: Incendium replaces Nether biome terrain and adds its own structures; YUNG's Better Nether Fortresses overhauls the vanilla fortress structure generation. They don't conflict — Incendium handles biomes and new structures, YUNG's handles fortress interiors. Incendium fortresses will use YUNG's layout if the fortress is in an Incendium biome.

**Interdependency note — Incendium + Apotheosis**: Incendium's custom weapons (Trailblazer, Greatsword of Sacrifice, Hefty Pickaxe, etc.) are vanilla item variants — Apotheosis affixes, gems, and reforging apply to them. Incendium mobs and the Hovering Inferno boss also receive Apotheosis boss affixes (Wave 3), scaling their difficulty with player progression.

**Interdependency note — Incendium + My Nether's Delight**: Incendium's new Nether biomes introduce unique block palettes and mob drops — some may serve as My Nether's Delight ingredients. Check EMI for new recipes once both mods are installed.

**Interdependency note — Incendium + Cataclysm**: L_Ender's Cataclysm's Netherite Monstrosity and Ignite bosses spawn in the Nether. Incendium's biome overhaul changes where these bosses can appear — they'll spawn in Incendium biomes instead of vanilla Nether wastes/basalt deltas. Use the Explorer's Compass to locate them in the transformed Nether.

**Interdependency note — Incendium + Fire Rekindled**: Fire Rekindled's animated Nether textures (soul fire, lava, magma, nether portal) apply to Incendium's Nether terrain — the biome overhaul benefits from the enhanced visuals automatically.

**Interdependency note — Bumblezone + Neo Bee Fix + Farmer's Delight**: Bumblezone's bees are vanilla bees at heart, so Neo Bee Fix's AI repairs (leave hives, no fall-from-sky, no wander bias) apply inside the dimension too. Honey, royal jelly, and bee bread from the Bumblezone feed Farmer's Delight honey recipes (e.g., Honey Glazed Ham) — a cozy resource chain with no gating. Field Guide auto-catalogs its mobs and plants.

**Tectonic** (`config/tectonic.json`):

| Setting                   | Default | Recommended | Why                                                             |
|---------------------------|---------|-------------|-----------------------------------------------------------------|
| `oceans.ocean_depth`      | `-0.22` | **`-0.35`** | Standard ocean floor ~45 blocks deep (vs vanilla ~28)           |
| `oceans.deep_ocean_depth` | `-0.45` | **`-0.7`**  | Deep ocean trenches ~90 blocks deep — into deepslate at Y=-28   |
| `oceans.monument_offset`  | `-30`   | **`-55`**   | Ocean monuments sink to match deeper ocean floor                |
| `caves.ore_fix`           | `false` | **`true`**  | Redistributes ores when terrain extends below vanilla Y=-64     |
| `global_terrain.min_y`    | `-64`   | **`-96`**   | Lower bedrock to give 68 blocks of crust below the trench floor |

**How depths work**: The noise value maps linearly — `|value| / 0.5 × 64` = blocks below sea level (Y=62). With `deep_ocean_depth: -0.7`: $0.7 / 0.5 times 64 = 90$ blocks deep, trench floor at Y=-28 (solid deepslate). With `ocean_depth: -0.35`: $0.35 / 0.5 times 64 = 45$ blocks deep, floor at Y=17. `monument_offset: -55` places ocean monument bases at Y=-16, hovering 12 blocks above the trench floor.

**Ore generation with `min_y: -96` + `ore_fix: true`**: Lowering bedrock expands the vertical range ore must cover. `ore_fix` remaps ore distributions to the new depth envelope — diamond still clusters near the bottom, iron and coal fill the expanded crust. Without `ore_fix`, the extra stone between Y=-64 and Y=-96 would be barren.

> **⚠️ New world required**: These are worldgen changes. Existing chunks keep their old terrain — explore fresh areas to see the new depths.

**Quick verification**: Stand at ocean surface (Y=62), look down with F3 open. Deep oceans should show the floor at Y=-28 (±5). Standard oceans at Y=17 (±5). Monuments should have their base at Y=-16 (±5) — floating ~12 blocks above the trench floor. If values are off, adjust in-game via the Mods screen → Tectonic → Configure.

**YUNG's Better Dungeons — Rarer Dungeons** (`datapacks/rarer-better-dungeons/`):

Rebalances YUNG's Better Dungeons density for a desolate, vanilla+ Overworld. The 1.21.1 NeoForge build no longer exposes separation in its config — dungeon spacing is set by the mod's structure-set data files, so the override ships as a small datapack (pack_format 48).

| Dungeon           | Average separation (chunks)           | Default | Recommended | Applied |
|-------------------|---------------------------------------|---------|-------------|---------|
| Small Dungeons    | `spacing` in `small_dungeons.json`    | 10      | 20–24       | **22**  |
| Spider Caves      | `spacing` in `spider_dungeons.json`   | 44      | 55–60       | **58**  |
| Undead Fortresses | `spacing` in `skeleton_dungeons.json` | 46      | 55–65       | **60**  |
| Catacombs         | `spacing` in `zombie_dungeons.json`   | 48      | 55–65       | **60**  |

- **Spacing** = average distance between structures in chunks (the old `averageSeparation` value). **Separation** (minimum distance) is raised in step to ~50% of spacing, matching the mod's own default ratio.
- **Why**: at default spacing (10) the classic small dungeons feel common. Rarer finds make each dungeon feel earned and keep the Overworld desolate between landmarks.
- **Install**: copy `datapacks/rarer-better-dungeons/` (or its zip) into the world's `datapacks/` folder — or `%APPDATA%\.minecraft\datapacks\` for all worlds. Applies to newly generated regions only.
- **Verify**: `/locate structure betterdungeons:small_dungeon` should show ~22-chunk average spacing with the datapack active.

### Overworld

#### Terrain — Terralith + Tectonic

| Aspect    | What changed                                                                    | What to look for                                                |
|-----------|---------------------------------------------------------------------------------|-----------------------------------------------------------------|
| Mountains | Taller, steeper. Painted mountains (orange/white layers), volcanic peaks        | Build in mountain valleys                                       |
| Oceans    | 90-block abyssal trenches, 45-block ocean floor, monuments floating in the deep | Use Small Ships (below) to cross, dive with Hybrid Aquatic gear |
| Caves     | YUNG's Better Caves — wider tunnels, deeper chasms                              | Easier to navigate, more impressive                             |
| Rivers    | Deeper valleys from Tectonic, shattered savannahs                               | Follow rivers for scenic travel                                 |

**Pro tip**: These worldgen mods work best in newly generated chunks. Every direction has something different.

#### Environment — Serene Seasons

Four seasons with visual foliage changes and crop growth modifiers:

- **Spring/Summer/Autumn/Winter** — foliage colors shift realistically
- **Crop impact ON** — planting in wrong season reduces yield. Plan greenhouses for off-season crops
- **Temperature damage OFF** — no freezing or heat damage (chill rule preserved)

**Integration**: Farmer's Delight crops are affected by seasons. Build glass greenhouses or use Season Sensor blocks to track optimal planting times.

**Serene Seasons Plus** (add-on): refines snow piling/melting and adds sub-season day/night speed — drives Better Days via its `[seasonalDaylightCycle]` config (below). Requires Serene Seasons + Better Days + Gabou's Libs (all in pack).

**Serene Seasons Plus config** (`config/sereneseasonsplus-common.toml`):

Day/night length lives here, not in Better Days. For a fixed **40-minute cycle** (2× vanilla → ~20 min day + ~20 min night):

| Setting                             | Value   | Why                                                                             |
|-------------------------------------|---------|---------------------------------------------------------------------------------|
| `enableSeasonalDaylightCycle`       | `false` | Fixed length, not seasonal variation                                            |
| `enableBetterDaysDynamicTimeCompat` | `true`  | Let SSP write `daySpeed`/`nightSpeed` into Better Days (reflection)             |
| `customCycleLength`                 | `true`  | Use the custom day/night values below                                           |
| `customDayLength`                   | `0.5`   | Better Days day-speed ratio (1.0 = vanilla 10 min day) → 0.5 = 20 min day       |
| `customNightLength`                 | `0.5`   | Better Days night-speed ratio (1.0 = vanilla 10 min night) → 0.5 = 20 min night |

`customDayLength`/`customNightLength` are **speed ratios, not "ticks"** (the in-file comment is misleading): 1.0 = vanilla, lower = longer. Leave Better Days and Serene Seasons at their defaults — Serene Seasons Plus owns day/night length.

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

#### Structory & YUNG's Additions

- **Structory** — dozens of hand-crafted structures: camps, shrines, castles, towers, walled towns
- **YUNG's Bridges** — 15+ types of naturally generated bridges with biome-specific variants, spanning rivers and ravines
- **YUNG's Extras** — small vanilla+ additions: improved Desert Wells (rare Wishing Wells with treasure), Desert Obelisks, Flame Outposts, scattered ruins and pillars

All require **YUNG's API** (already in the pack). Structory is independent of the YUNG's mods.

**What to do**: Explore! Mark interesting structures on your JourneyMap (fullscreen map → right-click to set waypoint). Return with an Explorer's Compass.

#### Explorer's Compass — Navigation Tool

1. Craft: 1 compass + 4 iron ingots in a + pattern
2. Right-click → GUI opens
3. Search tab: type biome or structure name (partial matching — "cherry" finds all cherry biomes)
4. Select an entry → compass points to nearest instance, distance shown
5. Follow the arrow in real-time
6. When found, add a JourneyMap waypoint

**Configuration** (`config/explorerscompass-common.toml` → `[General]` section):

| Setting              | Default | Recommended | Why                                                                                                                                            |
|----------------------|---------|-------------|------------------------------------------------------------------------------------------------------------------------------------------------|
| `maxRadius`          | 10000   | **5000**    | Halve search radius — you must explore ~5K blocks before the compass finds a structure. Prevents instant discovery from spawn                  |
| `maxSamples`         | 100000  | **50000**   | Fewer search samples = lower search accuracy at range. Combined with reduced radius, structures won't be found until you're meaningfully close |
| `maxNextSearches`    | 100     | **10**      | Limit "find next" to 10 — once you've cleared the 10 nearest instances, explore further and search again                                       |
| `displayCoordinates` | true    | **true**    | Show X/Z coords and distance on HUD — essential QoL                                                                                            |
| `defaultXpLevels`    | 0       | **0**       | No XP cost for searching — chill pack, navigation shouldn't gate                                                                               |

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
- Requires **Puzzles Lib** (already in pack — Leave My Bars Alone)

**Progression**: The Hang Glider is the earliest flight option. It provides gentle gliding for early exploration before the player has Create power for the Ornithopter Glider (Wave 1) or fuel infrastructure for Immersive Aircraft. It cannot gain altitude — it's pure glide, not powered flight. Ideal for scouting Terralith biomes from mountain peaks.

**Config**: No changes needed — default behavior is ideal. Gliding is inherently chill (no fuel, no maintenance, no risk of crashing unless you fly into terrain).

#### Man of Many Planes — Immersive Aircraft Addon

Adds two Create-themed aircraft to Immersive Aircraft. **Phase 2 accessible** — requires Immersive Aircraft (iron + wool/leather) plus Create materials (andesite alloy, brass).

- **Two new aircraft** — brass-and-mechanical themed designs
- Uses the same fuel, parking, and controls as base Immersive Aircraft
- Works in the Aether dimension like all Immersive Aircraft
- Craft recipes available in EMI

**Integration**: These aircraft offer a visual and thematic bridge between Create (Wave 1) and Immersive Aircraft (Wave 2). A player deep in Create will appreciate aircraft that match their factory's aesthetic.


#### Vehicle Upgrade

QoL polish for **vanilla mounts and boats** (horses, donkeys, mules, camels, boats). Fully configurable.

- Saddled mounts stay put — no more wandering off when you dismount
- Mounts swim through water and ride through leaves without getting stuck
- Full mining speed, sprint, and an interaction-range bonus while mounted
- Translucent mount view when you look down; fixed passenger collisions (no more suffocating in ceilings)
- Open your inventory while riding; held items (maps) show while rowing

**Dependency**: Puzzles Lib (already in pack). Client + server required — a non-issue for single-player (the integrated server loads it automatically).

**Integration**: Pure vanilla-mount/boat QoL — no content, no worldgen. Pairs naturally with Small Ships for ocean travel. ⚠ **Small Ships watch**: Vehicle Upgrade's boat features (step height, held items, collisions) target *vanilla* boats; Small Ships' custom ships are a separate entity class and are unaffected — expect harmless layering, but verify once in-game if boat behavior ever looks doubled.

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

#### The Bumblezone — Bee Dimension

A cozy bee-themed dimension entered directly from any **bee nest or beehive** — no portal structure to hunt for or build.

**How to enter**: Right-click a bee nest/hive (vanilla or modded) to teleport in. Leaving returns you to the Overworld.

**What to expect**:

- Honeycomb caves, sugar-water seas, wax roads, and pollen fields — a warm, glowing, golden dimension
- Mobs: giant **Bumble Bees**, Honey Slime, Beehemoth, and bee-adjacent creatures
- Structures: Mite Fortress, Hanging Gardens, Candle Parkour, shrines and sanctums
- Key loot: **Royal Jelly**, bee bread, honey crystals, wax, the **Comb Cutter** enchantment (shear honeycombs from hives), and the **Crystalline Flower** (combine/transfer enchantments from books)
- A **Honey Compass** locates Bumblezone structures

**The bees' one rule**: they're peaceful until you take their honey — harvest and they turn hostile for a while, then calm down. Be a polite beekeeper.

**Integration**:

- **Neo Bee Fix** (Wave 4) — its vanilla bee AI repairs apply inside the dimension too (Bumblezone's bees are vanilla bees at heart)
- **Farmer's Delight** — honey, royal jelly, and bee bread feed FD honey recipes (e.g., Honey Glazed Ham)
- **Field Guide** — auto-catalogs Bumblezone mobs and plants
- **Bundled resource packs** (from the mod, enable in Resource Packs): **Bumblezone - Shader Emissive** for glowing blocks under Solas (works with ETF/Continuity now in the pack); **Bumblezone - Anti Tripophobia** replaces the trippy honey patterns with plain textures — enable if they bother you

**Chill fit**: fully opt-in, no gates, no structure hunting — enter any hive whenever you like. Honey/wax builds a cozy supply chain; deeper structures (Mite Fortress) reward mid-game gear.

**Difficulty**: gentle by default — the only real threat is provoking the bees. Visit any time from Phase 1 onward.

---

### End Access — End Remastered

The End portal now requires a scavenger hunt instead of a grind.

**Old method**: Kill Endermen → craft Ender Eyes → find stronghold → insert 12 eyes.

**New method**: Find 16 unique custom Ender Eyes scattered across the world:

| Eye               | Source            | Eye              | Source                                  |
|-------------------|-------------------|------------------|-----------------------------------------|
| **Old Eye**       | Desert Pyramids   | **Cursed Eye**   | Bastion treasure                        |
| **Nether Eye**    | Nether Fortresses | **Exotic Eye**   | Craft (aquatic items)                   |
| **Cold Eye**      | Igloos            | **Evil Eye**     | Master Cleric trade                     |
| **Rogue Eye**     | Jungle Pyramids   | **Undead Eye**   | Craft (Undead Soul from skeleton horse) |
| **Black Eye**     | Buried Chests     | **Cryptic Eye**  | Random chance when enchanting           |
| **Magical Eye**   | Evoker drop       | **Wither Eye**   | Wither drop                             |
| **Lost Eye**      | Mineshafts        | **Guardian Eye** | Elder Guardian drop                     |
| **Corrupted Eye** | Pillager Outposts | **Witch Eye**    | Craft (Witch Pupil)                     |

**How it works**: Find 12+ unique eyes. Hold one to locate the stronghold (like vanilla Ender Eyes). Insert all 12 into the portal frame to open it. If a vanilla eye is already in a frame, right-click with a custom eye to replace it.

**Tip**: This naturally paces your journey to the End — you'll need to explore deserts, swamps, nether fortresses, ocean monuments, woodland mansions, and bastions before you can fight the dragon. By the time you open the portal, you'll have gear, experience, and world knowledge that makes the End a natural next step rather than a rushed target.

### End Dimension

The End is now a layered destination — each mod handles a distinct piece:

| Mod                          | What it does                                                                        |
|------------------------------|-------------------------------------------------------------------------------------|
| **End Remastered**           | How you get here — 16 custom Ender Eyes scattered across the world                  |
| **YUNG's Better End Island** | The main island — redesigned dragon arena with bell-tower summoning                 |
| **Nullscape** (data pack)    | The outer islands — surreal floating terrain, spires, arches, unique sky colors     |
| **Moog's End Structures**    | Structures on outer islands — towers, ruins, dungeons with better-than-vanilla loot |

**Ender's Delight** (Wave 4) adds food cooked from End ingredients — useful status effects for End exploration.

**Progression**:

- Post-Dragon: Explore outer islands for new structures and loot
- Mid-End: Tackle Moog's structures for unique weapons
- Endgame: Build an End base — Nullscape terrain makes for dramatic architecture

**Tip**: Place a Waystone immediately. Build a small AE2 subnet with wireless terminal to access main base storage.

---

### Session Plan — Wave 2

| Session                           | Focus                                                                                                                                                                   | What to Do                        |
|-----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------|
| **Session 1 — Scout**             | Craft Explorer's Compass. Search for cherry grove or redwood forest. Mark waypoints on JourneyMap. Loot a YUNG's dungeon. Craft a Hang Glider for early aerial scouting | First taste of transformed world  |
| **Session 2 — Nether**            | Build Nether portal. Scout Incendium biomes. Find a fortress. Rescue a Ghastling from an Abandoned Tower. Mark a Waystone at your portal                                | Nether foothold, ally, blaze rods |
| **Session 3 — Aether**            | Gather glowstone. Build Aether portal. Explore first sky island, collect ambrosium and zanite                                                                           | Safe new dimension                |
| **Session 4 — Twilight Forest**   | Find 2×2 pool, surround with flowers, throw diamond. Enter, place Waystone. Defeat the Naga                                                                             | First Twilight boss               |
| **Session 5+ — Deep exploration** | Work through Twilight Forest bosses. Visit Deeper and Darker (find Ancient City). Explore End post-Dragon                                                               | Boss loot, dimension resources    |
| **Session 6 — Aircraft**          | Craft a biplane or airship (iron + wool). Explore Terralith biomes from the air. Craft Man of Many Planes aircraft for Create-themed flight                             | Fast travel, scenic views         |

**Pacing tip**: Explore between factory builds. Grab your compass and walk in a random direction when waiting for Mekanism to process or Create to assemble.

---

<!--raw-typst #pagebreak() -->

## Wave 2.5 — Building Your Home

Building is a core pillar of this modpack — at any point you can stop optimizing and just build something beautiful. This guide works at any stage: no creative mode or artistic talent required, just a few principles that separate a "dirt hut" from a home you want to come back to.

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

| Mod                                                                                                 | Role                                               |
|-----------------------------------------------------------------------------------------------------|----------------------------------------------------|
| [Skills Mastery Reimagined](https://www.curseforge.com/minecraft/mc-mods/skills-mastery-reimagined) | 71-node skill tree with unique tradeoff abilities  |
| [Pufferfish\'s Skills](https://www.curseforge.com/minecraft/mc-mods/skills)                         | Underlying skill system framework                  |
| [Pufferfish\'s Attributes](https://www.curseforge.com/minecraft/mc-mods/puffish-attributes)         | Custom attributes powering skill tree node effects |

### Equipment

| Mod                                                                               | Role                                                                                                  |
|-----------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------|
| [Simply Swords](https://www.curseforge.com/minecraft/mc-mods/simply-swords)       | 60+ unique melee weapons with passive/activated abilities                                             |
| [Simply More](https://www.curseforge.com/minecraft/mc-mods/simply-more)           | 10 new weapon types + 33 unique weapons — Simply Swords addon                                         |
| [Too Many Bows](https://www.curseforge.com/minecraft/mc-mods/too-many-bows)       | 30+ unique bows with special abilities and custom attributes                                          |
| [Relics (RPG Series)](https://www.curseforge.com/minecraft/mc-mods/relics-rpg)    | Legendary accessories with unique abilities — levels up with use                                      |
| [Enchanting Runes](https://www.curseforge.com/minecraft/mc-mods/runes)            | Socketable runes for weapons/tools — early-game enchanting alternative                                |
| [Immersive Armors](https://www.curseforge.com/minecraft/mc-mods/immersive-armors) | 40+ unique armor sets with custom effects — berserk, double jump, hostile radar, spikes, divine block |

### Loot & Affixes

| Mod                                                                                     | Role                                                                                                                                                                                                                                                                      |
|-----------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [**Apotheosis**](https://www.curseforge.com/minecraft/mc-mods/apotheosis)               | Rarity tiers, random affixes, gem socketing, enchanting overhaul. Replaces Savaru's Affixology with more depth                                                                                                                                                            |
| [Apothic Compats](https://www.curseforge.com/minecraft/mc-mods/apothic-compats) 0.2.4.2 | Datapack-driven Apotheosis bridges — affixed loot, gear sets, affixes, and invaders for 11 in-pack mods (AE2, Aether, Cataclysm, Create, Curios, Deep Aether, Deeper and Darker, Farmer's Delight, Mekanism Tools, Supplementaries, Twilight Forest). Requires Apotheosis |

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
- **Apothic Compats** extends the affix/gem/gear-set/invader system to other in-pack mods' gear and loot: AE2 (affixed loot + gear sets), The Aether (affixes, gear sets, invaders, affixable dart shooters), Cataclysm (affixed loot + gear sets + invaders), Create (affixable potato cannons), Curios (per-slot loot categories + special affixed curio chest loot), Deep Aether + Deeper and Darker + Twilight Forest (affixes, gear sets, invaders), Farmer's Delight (affixed loot), Mekanism Tools (affixed loot + gear sets), and Supplementaries (enchanting stats on candle holders). Each bridge is a datapack that activates only when its target mod is present — so only the 11 in-pack targets take effect; the rest stay inert. This widens the Apotheosis loot chase across tech, food, and exploration without adding any standalone content that conflicts with the pack's own progression.

**Immersive Armors** adds 40+ unique armor sets with custom effects: Wooden (arrow/explosion protection), Skeleton (speed, Wither variant, skeleton neutrality), Divine (dyeable, blocks 1 attack/min), Heavy (high armor, anti-knockback, slow), Slime (bounce attackers), Warrior (berserk — more damage at low HP), Robe (dyeable wool, fire thorns, fireproof), Steampunk (hostile radar, enhanced UI, double jump, no fall damage), and Prismarine (spikes, depth strider). All sets are enchantable, repairable, and dyeable where applicable. Recipes in vanilla recipe book and EMI. **Apotheosis affixes and gems apply to all Immersive Armors pieces.** Mekanism Tools fills the material-tier progression (Osmium→Bronze→Steel→MekaSuit); Immersive Armors fills the unique-effect side grade slot — different armor sets for different situations rather than linear upgrades.

### Skills Mastery Reimagined — Character Growth

71 nodes. 36 unlock slots. Every point is a commitment — you can't max everything, so you build a character, not a spreadsheet.

**Design philosophy**: Unlike simple "numbers go up" trees, Skills Mastery Reimagined uses tradeoff design. Some unique nodes carry **negative effects** alongside their power (e.g., more damage but less speed, higher HP but slower regen). Each unlock plays a unique sound effect, giving satisfying feedback. The tree pattern is wide and branching — no linear "must-take" paths.

**Getting started**:

1. Controls → Pufferfish's Skills → set a key (`K` recommended)
2. Press key → skill tree GUI opens
3. Browse the tree. Early nodes are cheap. Plan your path — you can only unlock 36 of 71 nodes.

**XP Sources** — XP comes from diverse activities, not just combat:

| Activity               | XP Value                  | Chill-friendly |
|------------------------|---------------------------|----------------|
| Killing mobs           | Standard                  |                |
| Mining ore blocks      | 2 per block               | ✅              |
| Catching fish          | 5 per catch               | ✅              |
| Enchanting books       | 2 × enchanting level cost | ✅              |
| Killing Evoker         | 100                       |                |
| Killing Ravager        | 150                       |                |
| Killing Elder Guardian | 200                       |                |
| Killing Wither         | 400                       |                |
| Killing Warden         | 500                       |                |
| Killing Ender Dragon   | 600                       |                |

**Unique attributes**: Skills Mastery Reimagined unlocks attributes you won't find in vanilla or Apotheosis — Gravity (lower = floaty jumps), Scale (character size), Burning Time, Sneak Speed, Water Efficiency, Oxygen Bonus, Crossbow Projectile Speed, and weapon-specific damage (Mace, Trident, Sword, Axe). These change *how you interact with the world*, not just how hard you hit.

**Weapon synergy**: Weapon-specific nodes (Sword Damage, Axe Damage, Mace Damage, Trident Damage) create a direct feedback loop with Simply Swords and Simply More drops. Find a cool unique sword? There's a node that amplifies it. The skill tree and your loot chase feed each other.

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

| Weapon Type        | Playstyle                                              |
|--------------------|--------------------------------------------------------|
| **Great Katana**   | Two-handed, wide sweeping arcs                         |
| **Grandsword**     | Massive two-hander — disables enemy shields on block   |
| **Backhand Blade** | Fast, dual-wield friendly, close-range                 |
| **Lance**          | Mounted combat specialist — massive boost while riding |
| **Khopesh**        | Curved blade — bonus against unarmored targets         |
| **Dagger**         | Fastest attack speed, backstab bonus                   |
| **Pernach**        | Armor-piercing mace — shreds tough enemies             |
| **Quarterstaff**   | Extended reach blunt weapon, knockback-focused         |
| **Great Spear**    | Longest reach in the game — hit from 4+ blocks         |
| **Deer Horns**     | Dual-wield fist weapons — rapid flurry strikes         |

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

| Mod                                                                                                                                | Role                                                                                                                                |
|------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------|
| [**Farmer's Delight**](https://www.curseforge.com/minecraft/mc-mods/farmers-delight) 1.3.2                                         | Cooking hub — cutting board, cooking pot, stove, new crops                                                                          |
| [**Extra Mod Integrations**](https://www.curseforge.com/minecraft/mc-mods/extra-mod-integrations)                                  | Adds compat recipes for 50+ mods — Farmer's Delight, Create, Mekanism, AE2                                                          |
| [**Brewin' And Chewin'**](https://www.curseforge.com/minecraft/mc-mods/brewin-and-chewin) 4.5.0                                    | Drinks and fermentation — beer, wine, mead, whiskey                                                                                 |
| [**Storage Delight**](https://www.curseforge.com/minecraft/mc-mods/storage-delight) 1.3.0                                          | Kitchen furniture — drawers, cabinets, shelves for ingredient storage                                                               |
| [**Crate Delight**](https://www.curseforge.com/minecraft/mc-mods/crate-delight-forge) v26.07.01                                    | Bulk ingredient storage — crates (apples, berries, eggs, fish) and bags (cocoa, sugar, gunpowder)                                   |
| [**More Delight**](https://www.curseforge.com/minecraft/mc-mods/more-delight) 26.04.18a+1.21-neoforge                              | Extra meals, sandwiches, toasts, and knife variants                                                                                 |
| [**My Nether's Delight**](https://www.curseforge.com/minecraft/mc-mods/my-nethers-delight) 1.10.2                                  | Nether-themed food ingredients and recipes                                                                                          |
| [**Ocean's Delight**](https://www.curseforge.com/minecraft/mc-mods/oceans-delight) 1.0.4                                           | Ocean-themed seafood dishes                                                                                                         |
| [**Ender's Delight**](https://www.curseforge.com/minecraft/mc-mods/enders-delight) v1.3.0                                          | End-themed food for Farmer's Delight (moved from Wave 2)                                                                            |
| [**Twilight's Flavors & Delight**](https://www.curseforge.com/minecraft/mc-mods/twilights-flavors-delight) 3.2.2                   | Twilight Forest × Farmer's Delight crossover — 35+ FD-style TF foods, 4 TF knives, maze stove, 5 potion effects, trophy dismantling |
| [Neo Bee Fix](https://modrinth.com/mod/neo-bee-fix)                                                                                | Fixes bee AI bugs — bees leave hives, don't fall from sky, no NW wander bias                                                        |
| [Comfortable Campfires](https://www.curseforge.com/minecraft/mc-mods/comfortable-campfires)                                        | Campfires grant configurable status effects — sit by the fire, get a buff                                                           |
| [Smarter Farmers](https://modrinth.com/mod/smarter-farmers-farmers-replant)                                                        | Farmer villagers replant correctly — incl. modded seeds (FD crops via tags)                                                         |
| [Crops Love Rain](https://www.curseforge.com/minecraft/mc-mods/crops-love-rain) 3.2.1                                            | Crops grow faster while raining — crops, bamboo, saplings, sugar cane, cocoa, berries, melon/pumpkin stems (rain-only bonus)        |
| [Create: Café](https://modrinth.com/mod/create-cafe)                                                                               | Coffee, tea & boba drinks via Create machines — roasting, grinding, brewing                                                         |
| [**Starcatcher**](https://www.curseforge.com/minecraft/mc-mods/starcatcher)                                                        | Fishing overhaul — 100+ fish, skill minigame, trophies, tournaments, catalogue                                                      |
| [**Starcatcher's Delight**](https://www.curseforge.com/minecraft/mc-mods/starcatchers-delight) v3.0.1                              | Starcatcher × Farmer's Delight crossover — fish fillets, seafood dishes, sushi                                                      |
| [**Better Fishtanks**](https://www.curseforge.com/minecraft/mc-mods/better-fishtanks)                                              | Functional aquariums — fish bags, decorations, feeding system, Create/AE2 compat                                                    |
| [Spice of Life: Carrot Edition](https://www.curseforge.com/minecraft/mc-mods/spice-of-life-carrot-edition) solcarrot-1.21.1-1.16.6 | Food-variety reward — eating new foods permanently raises max health up to a cap. No punishment, only reward                        |

**Interdependency note — Better Fishtanks + Hybrid Aquatic (Wave 2)**: Better Fishtanks can house any fish mod's creatures. Use Fish Bags to catch Hybrid Aquatic mobs and place them in tanks as living displays.

**Interdependency note — Twilight's Flavors & Delight + Twilight Forest (Wave 2) + Farmer's Delight**: Bridges TF and Farmer's Delight — TF mob drops and foraged items cook into 35+ FD-style meals, 4 TF-material knives with unique abilities, Maze Stove accelerates cooking in TF biomes, boss trophies dismantle into precious loot.

**Spice of Life: Carrot Edition** — the *gentle* variant of food variety: each distinct food eaten once permanently raises your max health (up to a configurable cap of hearts), and it never *reduces* nutrition for repeat meals (unlike the original Spice of Life). This pairs directly with the pack's Farmer's Delight ecosystem — 100+ distinct meals = steady, voluntary max-HP growth feeding the power-fantasy pillar, with zero chill penalty for eating the same thing. **Config lives in `saves/<world>/serverconfig/` (per-world), not the tracked global `config/` folder** — tune `solcarrot-server.toml` (milestone cap, heart counts) after first world launch; set the cap so the bonus stops short of feeling mandatory.

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

| Type       | Examples                                                                      | Capacity                 |
|------------|-------------------------------------------------------------------------------|--------------------------|
| **Crates** | Apples, Sweet Berries, Eggs, Raw Salmon, Raw Cod, Glow Berries, Golden Apples | Bulk single-item storage |
| **Bags**   | Cocoa Beans, Sugar, Gunpowder                                                 | Bulk single-item storage |

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

### Smarter Farmers — Villagers Replant

Fixes and upgrades villager farming: farmers replant the **correct** seed (no more wheat seeds on carrot rows) and can use **modded seeds** — Farmer's Delight crops included, via tag-based detection. A `harvest_blacklist` tag lets you exclude crops from auto-replanting.

**Integration**: Keeps village farms and FD crop plots self-sustaining — less manual replanting, more chill living. Works alongside MineColonies (separate villager system — no overlap). Requires Moonlight Lib (already in pack, Wave 6).

### Crops Love Rain — Rain-Powered Growth

Crops grow faster while it's raining — during rain, every random tick on any soil-based crop (vanilla + Farmer's Delight), bamboo, saplings, sugar cane, cocoa, sweet berry bushes, and melon/pumpkin stems gets a **1-in-10 chance of an extra growth stage** (`rain_growth_speed = 10`; lower = faster). Pure reward, zero maintenance — a chill-living garden bonus, nothing to set up or babysit.

**Config** (`config/cropsloverain.toml` — defaults are fine, no tracked override): `general.use_rain_growth_speed` (true), `general.rain_growth_speed` (10), plus per-type `individual.*` speeds (off by default). Native NeoForge file config — Mod Menu not required (the project page's "Requires Fabric API" banner applies to the Fabric build only; the NeoForge 1.21–1.21.5 build declares just `neoforge` + `minecraft`).

**Integration**: Rain harvests feed the kitchen — Farmer's Delight crops, Brewin' And Chewin' ingredients, and Spice of Life variety all benefit. Complements Serene Seasons (season-based growth modifiers — different axis, the bonus stacks). ⚠ Watch: Particle Rain replaces rain *rendering* only, not the weather state — the bonus still applies; verify once in-game.

### Create: Café — The Cozy Drinks Track

Coffee, tea, and boba milk tea made through **Create machines** — beans and leaves go through milling, crushing, and mixing processing (1.4.3, Jan 2026). Coffee is the one drink category Brewin' And Chewin' doesn't cover (B&C = fermentation/alcohol), so this is a second, non-overlapping drinks track that runs on Create power rather than the FD kitchen.

**Integration**: Feeds Create automation chains — roast/grind/brew as mechanical processing steps, pipeable and deployer-friendly. Phase 1 accessible (water wheel era). Drinks stack alongside FD meals and B&C drinks for buff-food variety. Only dependency is **Create** (already in pack) — zero new mods. [VERIFY] at test launch: drink effect strength (overpowered check), Create version compat, no runtime conflict with B&C.

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

| Food Type            | Ingredients                               | Notes                                                        |
|----------------------|-------------------------------------------|--------------------------------------------------------------|
| **Fish Fillets**     | Any Starcatcher fish → Cutting Board      | Fish quality (Common → Legendary) determines fillet quality  |
| **Sushi**            | Fish fillet + rice + seaweed              | Rice from Farmer's Delight, seaweed from oceans              |
| **Fish Stew**        | Fish fillet + FD vegetables + Cooking Pot | Hearty meal with saturation buff                             |
| **Fried Fish**       | Fish fillet + FD oil + stove              | Quick crispy meal                                            |
| **Legendary Dishes** | Legendary fillet only                     | Always grants absorption hearts — save these for boss fights |

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

| Mod                                                                             | Role                                                                            |
|---------------------------------------------------------------------------------|---------------------------------------------------------------------------------|
| [FTB Library](https://www.curseforge.com/minecraft/mc-mods/ftb-library-forge)   | Core library for all FTB mods — configuration, GUI framework, team management   |
| [**FTB Quests**](https://www.curseforge.com/minecraft/mc-mods/ftb-quests-forge) | Quest book framework — chapters, task types, rewards, in-game visual editor     |
| [FTB Teams](https://www.curseforge.com/minecraft/mc-mods/ftb-teams-forge)       | Quest progress tracker — in single-player, you're automatically a team of 1     |
| [KubeJS](https://www.curseforge.com/minecraft/mc-mods/kubejs)                   | JavaScript scripting engine — recipe modification, worldgen tweaks, event hooks |
| [FTB XMod Compat](https://www.curseforge.com/minecraft/mc-mods/ftb-xmod-compat) | Bridges FTB Quests with KubeJS, JEI/REI compat layer (works with EMI)           |

**KubeJS** requires **Rhino** — the JavaScript runtime library (KubeJS 1.21.1 build `2101.7.2-build.368` declares it required; verified via Modrinth API, Aug 2026 review). XMCL auto-installs it from the KubeJS page; if installing jars manually, add `rhino-*.jar`. (Dependency was undocumented before the Aug 2026 Wave 0.5 review.)

**Tip — hide the FTB Teams button** (single-player): the Teams/Chunks/Quests buttons on the inventory screen are rendered by **FTB Library**, not FTB Teams — and they're pure GUI shortcuts (quest progress tracks fine without them). To hide just the Teams buttons, edit `config/ftblibrary-client.toml`:

```toml
[sidebar.buttons]
"ftbteams:my_team" = { enabled = false, x = 0, y = 0 }
"ftbteams:team_lives" = { enabled = false, x = 0, y = 0 }
```

To remove the whole sidebar instead, set `[sidebar] enabled = false`. Either way the quest book still opens with the `-` key.

### Quest Addons

| Mod                                                                                               | Role                                                                               |
|---------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------|
| [**MineColonies Questline**](https://www.curseforge.com/minecraft/mc-mods/minecolonies-questline) | Pre-written 40+ quest chain covering MineColonies from Town Hall to endgame colony |

**MineColonies Questline** covers colony progression from first Town Hall through Industrial Revolution research. The pack's own quest book is pre-authored too — 10 chapters, 211 quests covering every major mod (see *Installing the Quest Book* below). No in-game editing required.

### How It Works

1. Press the quest key (configurable, default `-`) to open the quest book
2. Chapters organized by mod: **Mekanism**, **Create**, **Steam 'n' Rails**, **Electric Power**, **Combat**, **AE2**, **Apotheosis**, **Farmer's Delight**, **Northstar**, **MineColonies**
3. Quests auto-detect progress — craft an item, enter a dimension, kill a boss → quest completes
4. Rewards include items, XP, and knowledge — some powerful items are quest-gated to soft-enforce progression
5. The quest book is **always available** but **never mandatory** — ignore it when you want to chill

### Installing the Quest Book

The pre-authored quest book lives in the repo at `minecraft/config/ftbquests/quests/`. To load it in a Minecraft instance:

1. Copy the `quests` folder into your instance's `config/ftbquests/` folder (merge/overwrite the existing `quests` folder)
2. Start the game — or, if it's already running, run `/ftbquests reload`
3. Press the quest key (default `-`) to open the book

**Updating after a change**: re-copy the `quests` folder and run `/ftbquests reload`. The book is plain data files (SNBT) — there's nothing to edit in-game.

### Pillar Alignment

- **Power fantasy**: Quests celebrate milestones. "You built a fusion reactor!" with a meaningful reward feels earned.
- **Easy curve**: New players follow quest breadcrumbs. "Craft enrichment chamber → craft crusher → 2x ore processing" teaches Mekanism step by step.
- **200h+ content**: Quests surface hidden content. "Have you visited the Aether?" "Try sequenced crafting with Create." Players discover systems they might miss.
- **Chill living**: The quest book key is configurable. There's no on-screen HUD element. No time-limited quests. No penalties for ignoring it. The book waits for you — not the other way around.

### Chapter Coverage

| Chapter                        | Quests |
|--------------------------------|--------|
| **Mekanism**                   | 37     |
| **Create**                     | 35     |
| **Steam 'n' Rails**            | 9      |
| **Electric Power**             | 13     |
| **Combat**                     | 14     |
| **AE2**                        | 22     |
| **Apotheosis**                 | 12     |
| **Farmer's Delight**           | 52     |
| **Northstar**                  | 18     |
| **MineColonies** (pre-written) | ~40    |

**Total**: 212 authored quests + ~40 pre-written colony quests. The pack is fully playable without quests; they're enhancement, not foundation.

### Session Plan — Wave 4 & 4.5

| Session                           | Focus                                                                                              | What to Build           |
|-----------------------------------|----------------------------------------------------------------------------------------------------|-------------------------|
| **Session 1 — Kitchen tools**     | Cutting board + cooking pot + stove. Find wild crop seeds                                          | Functional kitchen      |
| **Session 2 — Farm**              | Plant tomato, cabbage, onion, rice. Cook first meal (tomato soup is easiest)                       | Sustainable ingredients |
| **Session 3 — Brewing**           | Find barley/grapes/honey. Build brewing station. Start first batch. Place aging barrel             | First drink fermenting  |
| **Session 4 — Kitchen expansion** | Storage Delight cabinets/drawers. Try More Delight recipes. Collect Nether ingredients             | Full kitchen            |
| **Session 5 — Questing**          | Open quest book (`-` key). Browse MineColonies questline. Complete "Town Hall" quest               | Questing unlocked       |
| **Ongoing**                       | Age drinks for boss buffs. Explore oceans for seafood. Stock AE2 with ingredients for autocrafting | Buff food always ready  |

---

<!--raw-typst #pagebreak() -->

## Wave 5 — Combat & Mobs

| Mod                                                                                                                                | Role                                                                                                                                     |
|------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------|
| [Better Combat](https://modrinth.com/mod/better-combat)                                                                            | Melee combat animations — weapon reach, sweeping, attack speed                                                                           |
| [L_Ender\'s Cataclysm](https://www.curseforge.com/minecraft/mc-mods/lendercataclysm)                                               | Epic boss fights — Leviathan, Netherite Monstrosity, Ender Guardian (CurseForge, NeoForge 1.21.1)                                        |
| [Enchantment Descriptions](https://www.curseforge.com/minecraft/mc-mods/enchantment-descriptions)                                  | Shows enchantment effects in tooltips                                                                                                    |
| [Create Big Cannons](https://www.curseforge.com/minecraft/mc-mods/create-big-cannons)                                              | Artillery engineering — siege cannons for colony defense and spectacle                                                                   |
| [Create Big Cannons: Advanced Technologies](https://www.curseforge.com/minecraft/mc-mods/create-big-cannons-advanced-technologies) | CBC addon — twin/heavy autocannons, rocket pods & rails, muzzle brakes, silencers, rifled barrels                                        |
| [Torchmaster](https://www.curseforge.com/minecraft/mc-mods/torchmaster)                                                            | Territory pacification — Mega Torch suppresses hostile spawns in a radius; each torch gated behind a Cataclysm boss conquest (see below) |

Apotheosis also adds boss modifiers and elite mob affixes — partially covers what Champions would have done.

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

**Config**: Mods screen → Better Combat → Config. Tweak reach, sweep radius, attack speed, visual effects per weapon type.

**Integration**: Simply Swords weapons have built-in Better Combat data files — each category uses correct animation, reach, and speed automatically. Too Many Bows and Simply More also integrate.

### Enchantment Descriptions

Hover over any enchantment in tooltip → detailed description of what it does. Works in enchanting table GUI, on items, and in books. No config.

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

### Create Big Cannons: Advanced Technologies — Bigger Guns

An addon for Create Big Cannons adding 110 new cannon blocks and new ammunition, using the same casting/assembly workflow as base CBC.

| Addition                 | What it does                                                                                                                                             |
|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------|
| Muzzle Brake             | Reduces cannon recoil                                                                                                                                    |
| Silencer / Suppressor    | Reduces noise and recoil                                                                                                                                 |
| Fume Extractor           | Hides the muzzle smoke cloud — good for concealed emplacements                                                                                           |
| Rifled Barrel            | Tighter spread than a normal barrel                                                                                                                      |
| Twin Autocannon          | Double-barreled rapid fire (vertical variant can be hidden in leaves)                                                                                    |
| Heavy Autocannon         | Bigger-caliber autocannon for heavier rounds                                                                                                             |
| Rocket Pod / Rocket Rail | Launches rockets; the medium rocket rail handles four medium rockets                                                                                     |
| New ammunition           | Autocannon & heavy autocannon cartridges/caseless rounds, rockets (AP / HE / HEI / Flak), medium rockets (AP / HE / HEAT / HEF), fluid shells, grapeshot |

All tiers (bronze → cast iron → steel → nethersteel) follow the standard CBC casting workflow with cast moulds. No config required.

**Dependency**: Create Big Cannons (above) + Create. Install the 1.21.1 NeoForge build (0.1.4c, CurseForge/Modrinth).

### Torchmaster — Conquering the Land

The **Mega Torch** suppresses hostile mob spawning in a 64-block radius — but each torch is **earned**: crafting requires an Ignitium Ingot from a Cataclysm boss (KubeJS gate, `kubejs/server_scripts/wave5_torchmaster.js`):

| Item       | Gated Recipe                                                              | Gate                                       |
|------------|---------------------------------------------------------------------------|--------------------------------------------|
| Mega Torch | Ignitium Ingot (Cataclysm Ignite drop) + Create brass ingots + blaze rods | Phase 2 — first Cataclysm boss + brass age |

**The conquest loop**: scout a hostile region by air/ship/train → clear its structures → defeat the Cataclysm boss for the Ignitium Ingot → craft the Mega Torch → plant it. The area is permanently peaceful. Conquest is renewable — Cataclysm arenas re-summon bosses (Eye item), so there's no world exhaustion.

**Config** (mod defaults — no override needed; `config/torchmaster-common.toml` is generated on first launch):

| Setting                  | Default | Notes                                                                               |
|--------------------------|---------|-------------------------------------------------------------------------------------|
| `megaTorchRadius`        | **64**  | Cube ±64 → 129×129×129 zone: village + farms + perimeter                            |
| `feralFlareRadius`       | **16**  | Cube ±16 → 32×32×32 zone, capped at 255 invisible lights                            |
| `blockOnlyNaturalSpawns` | `true`  | Spawner + structure spawns exempt — YUNG's dungeons and Cataclysm content untouched |

**Why these values, and why not bigger**:

- **Mega Torch 64** — the radius is a *cube* (each direction), so 64 covers a village plus its hinterland. Each torch costs one Cataclysm boss kill (KubeJS gate), and the conquest loop is designed to repeat (arenas re-summon bosses). A 96+ cube would let a single kill pacify an entire region and collapse the loop; the original 48 draft underpays the conquest.
- **Feral Flare 16** — it's a *clearing aid*, not a territory tool: it sprinkles invisible light (level 15) in its cube until it hits the 255-light hardcap. At 16 the lights sit ~5 blocks apart, keeping block light ≥ 10; at 24 they thin to ~7.5-block spacing and dark gaps reappear — worse than 16. Raising the hardcap to compensate trips the mod's own world-corruption warning (badly compressed packet errors).
- **Spawner exemption** — the Mega Torch never blocks `SPAWNER`/`STRUCTURE` spawns, so YUNG's dungeons and Cataclysm arenas keep their mobs at *any* radius. Torches pacify the surface, never the content.

---

### Session Plan — Wave 5

| Session                              | Focus                                                                                                                                                                     | What to Do               |
|--------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------|
| **Session 1 — Combat feel**          | Better Combat works automatically. Craft/find a Simply Swords weapon. Test daggers (fast stab) vs greatswords (wide sweep). Equip a rune                                  | Learn your weapon        |
| **Session 2 — First dungeon**        | Explorer's Compass → YUNG's Better Dungeons: clear a dungeon or spider cave                                                                                               | Dungeon complete         |
| **Session 3 — First Cataclysm boss** | Easiest = Leviathan (deep ocean) or Netherite Monstrosity (Nether). Prepare: good weapons, fire resistance, healing food                                                  | Epic boss beaten         |
| **Session 4 — Cannons**              | Craft bronze (zinc + copper in heated mixer). Build Small Cannon. Test fire. Mount near base entrance                                                                     | Artillery online         |
| **Session 5+ — Boss gauntlet**       | Remaining Cataclysm bosses. Each drops unique endgame materials. Revisit Twilight Forest bosses with Wave 5 gear                                                          | Full endgame gear        |
| **Session 6 — First conquest**       | Scout a region by plane, clear its structures with guns/artillery, defeat the Cataclysm boss, craft the Mega Torch from its Ignitium Ingot, plant it. The region is yours | First pacified territory |

**Tip**: Better Combat changes melee fundamentally. Don't skip Session 1 even as a ranged player.

---

<!--raw-typst #pagebreak() -->

## Wave 6 — Building & Decoration

### Core Decoration

| Mod                                                                                       | Role                                                                                                                          |
|-------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------|
| [Rechiseled](https://www.curseforge.com/minecraft/mc-mods/rechiseled)                     | 600+ decorative block variants with connected textures                                                                        |
| [Supplementaries](https://www.curseforge.com/minecraft/mc-mods/supplementaries)           | Vanilla+ decoration — jars, signposts, faucets, weather vanes                                                                 |
| [Macaw\'s Bridges](https://www.curseforge.com/minecraft/mc-mods/macaws-bridges)           | Bridges in all wood types                                                                                                     |
| [Macaw\'s Doors](https://www.curseforge.com/minecraft/mc-mods/macaws-doors)               | Vanilla-style doors for every wood                                                                                            |
| [Macaw\'s Roofs](https://www.curseforge.com/minecraft/mc-mods/macaws-roofs)               | Roofing blocks                                                                                                                |
| [Macaw\'s Windows](https://www.curseforge.com/minecraft/mc-mods/macaws-windows)           | Window variants                                                                                                               |
| [Building Wands](https://www.curseforge.com/minecraft/mc-mods/building-wands)             | Faster large-scale construction                                                                                               |
| [Handcrafted](https://www.curseforge.com/minecraft/mc-mods/handcrafted)                   | Furniture — chairs, tables, shelves, curtains                                                                                 |
| [Fetzi's Displays](https://www.curseforge.com/minecraft/mc-mods/fetzis-displays)          | Item displays — glass cloches, katana stands, wall holders, racks                                                             |
| [Laser Bridges & Doors](https://www.curseforge.com/minecraft/mc-mods/laser-bridges-doors) | Laser platforms, bridges, doors, and fences powered by redstone — length scales with signal strength, dye-customizable colors |
| [Diagonal Fences](https://modrinth.com/mod/diagonal-fences)                               | Connect vanilla fences, fence gates, and walls diagonally — seamless corners                                                  |

### Rechiseled Addons

| Mod                                                                                                                | Role                                                                 |
|--------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
| [Rechiseled: Create](https://www.curseforge.com/minecraft/mc-mods/rechiseled-create)                               | 100+ decorative variants of Create blocks + mechanical chisel        |
| [Rechiseled: Applied Energistics 2](https://www.curseforge.com/minecraft/mc-mods/rechiseled-applied-energistics-2) | AE2 autocrafting for Rechiseled blocks via Chiseling Pattern Encoder |

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

### Diagonal Fences — Seamless Corners

Connects vanilla fences, fence gates, and walls **diagonally** — the classic corner-post look without gaps. Client-side rendering, no config.

**Integration**: Complements Macaw's building set (Macaw's fences are separate blocks, unaffected) and Forgematica schematics — diagonal corners render correctly in-place. Requires Puzzles Lib (already in pack).

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

| Block                        | Function                                                    |
|------------------------------|-------------------------------------------------------------|
| **Laser Source Block**       | Projects a horizontal laser bridge when powered by redstone |
| **Laser Fence Source Block** | Projects a vertical laser barrier                           |

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

| Session                             | Focus                                                                                                                                                        | What to Build            |
|-------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------|
| **Session 1 — Rechiseled basics**   | Craft chisel. Convert stone, wood, glass into decorative variants. Try connected textures                                                                    | Decorative block library |
| **Session 2 — Structural elements** | Craft Macaw's roofs, windows, doors in your base wood type. Build a cohesive room                                                                            | Cohesive room aesthetic  |
| **Session 3 — Furniture**           | Handcrafted chairs, tables, shelves in kitchen and bedroom. Item shelves for loot display                                                                    | Functional interior      |
| **Session 4 — Large-scale**         | Building Wands — wall mode for perimeter, fill mode for foundation. Build a tower with circle mode                                                           | Rapid construction       |
| **Session 5 — Details**             | Supplementaries jars, signposts, weather vanes. Laser Bridges & Doors for energy barriers and decorative lighting. Rechiseled: Create for factory aesthetics | Decorative details       |

---

<!--raw-typst #pagebreak() -->

## Wave 7 — Space Exploration

### Core Space Mod

| Mod                                                                            | Role                                                                                         |
|--------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------|
|| [**Northstar Redux**](https://www.curseforge.com/minecraft/mc-mods/northstar-redux) 0.6.4 | Create-based space exploration — player-built rockets, science unlocks, oxygen + temperature systems, Moon/Mars/Mercury/Venus |

Northstar Redux (by Astronauts-of-Create) is the maintained continuation of Create: Northstar — space exploration built on the Create mod. Rockets are player-built, superglued Create contraptions; progression runs through a science system (Telescope → Astronomical Readings → Astronomy Table → Space Atlas) that unlocks planets. Oxygen and temperature management, Titanium/Martian Steel/Tungsten materials, and four reachable planets: Moon, Mars, Mercury, Venus.

**No worldgen**: Northstar generates no Overworld structures — the launch infrastructure is entirely player-built, and planets are separate dimensions. The "Create: Northstar - Structures" addon (planet-surface craters/dungeons) exists but is **not installed** in this pack.

**Dependencies**: none new — Create 6.0+ and GeckoLib are already in the pack (Wave 1). No Potentials API or Sky Aesthetics needed (those shipped with Stellaris only).

> **Update policy**: Northstar is in active early development (0.6.x). Updates may change item IDs and invalidate Return Tickets. Pin 0.6.4; back up worlds before updating; after an update, re-run the quest validation pipeline (`tools/ftbquests/generate.py` + `validate.py`) so stale item IDs surface immediately.

### Integration with Tech Mods

|| Layer          | Northstar Redux ↔ Tech Mod Interaction                                                     |
||----------------|------------------------------------------------------------------------------------------|
|| Power          | Mekanism cables can power Northstar machines. Create rotational → Mekanism → Northstar   |
|| Energy         | Mekanism universal cable connects to Northstar machines (energy API compat)              |
|| Storage        | AE2 ME drives store Northstar materials; autocrafting builds rocket components           |
|| Ore Processing | Mekanism 5x ore multiplication works on Northstar ores (titanium, martian iron, etc.)    |
|| Fuel           | TFMG diesel/gasoline compatibility for rocket fuel (native compat)                       |
|| Food           | Farmer's Delight meals eatable in space when oxygen is present                           |

### Northstar — Interplanetary Travel

Create-native space exploration. Build a rocket from Create blocks and Northstar parts, glue it together, fuel it, and fly.

**Core concepts**:

| Concept                | What it means                                                                              |
|------------------------|--------------------------------------------------------------------------------------------|
| **Rocket Station**     | Assembles the rocket and sets the destination (unlocked via science)                       |
| **Rocket Controls**    | Interface with the rocket's systems — also accepts redstone for launch automation          |
| **Science**            | Telescope → Astronomical Readings → Astronomy Table (spend as science points) → Space Atlas unlocks planets |
| **Oxygen**             | No atmosphere off-world. Separator + Filler + Sealer keep you and your base alive         |
| **Heat**               | Heat shielding scales with rocket size; Temperature Regulator + Martian Steel suit for hot planets |
| **Planets**            | Moon → Mars → Mercury → Venus. Each requires more science and better shielding             |

#### Phase 1: Getting to Space

**Step 1 — Gather resources**:

- Collect iron, copper, redstone, glass, and Create materials (andesite alloy, brass)
- Process **Titanium** (raw titanium ore → ingot) for advanced parts — check EMI for the chain

**Step 2 — Build the launch site**:

| Machine                  | Function                                              | Priority |
|--------------------------|-------------------------------------------------------|----------|
| **Rocket Station**       | Assembles the rocket and picks the destination       | First    |
| **Rocket Controls**      | Rocket system interface (redstone-controllable)      | Second   |
| **Oxygen Separator**     | Extracts breathable oxygen                            | Third    |
| **Oxygen Filler**        | Refills suits and contraptions with oxygen            | Fourth   |
| **Oxygen Sealer**        | Pressurizes sealed rooms                              | Fifth    |

**Step 3 — Build the rocket**:

1. Build the hull from Create blocks + **Rocket Thruster** + **Rocket Combustion Chamber**
2. Superglue the whole assembly into one contraption
3. Place **Rocket Controls** on board
4. Use the Rocket Station to assemble and set the destination

**Step 4 — Science unlocks**:

1. Craft a **Telescope** and take **Astronomical Readings**
2. Spend them at the **Astronomy Table** as science points
3. The **Space Atlas** shows unlocked planets — Moon is first

**Step 5 — Launch**:

1. Equip the **Iron Space Suit** (full set; fill oxygen at a Filler)
2. Enter the rocket, launch via the Rocket Controls
3. Land on the Moon — watch your oxygen

#### The Moon — First Destination

Safest first destination. No atmosphere, low gravity, no mobs.

**What to do**:

- Mine **moon stone** and **lunar sapphire** (shards → polished)
- Find **glowstone ore** and rich veins of standard ores
- Place a **Waystone** immediately; set up a sealed base (Oxygen Sealer + Filler + Temperature Regulator if needed)
- Return with a **Return Ticket** or by launching from the Moon

#### Other Planets

| Planet    | Hazards                          | Key Resource        | Notes                           |
|-----------|----------------------------------|---------------------|---------------------------------|
| **Moon**  | None (oxygen required)           | Lunar Sapphire      | First destination. Safe practice|
| **Mars**  | Worms, toads, cobras, moths      | Martian Steel, Iron | Best permanent off-world base  |
| **Mercury** | Extreme heat, raptors, roaches | Tungsten, Titanium  | Heat shielding required        |
| **Venus** | Acid plumes, mimics, scorpions   | Volcanic Ash, ores  | Hottest planet — endgame target|

#### Off-World Machines

| Machine                     | Function                       | Why you need it                          |
|-----------------------------|--------------------------------|------------------------------------------|
| **Oxygen Filler**           | Refills suits/contraptions     | Required on every planet                 |
| **Oxygen Sealer**           | Pressurizes sealed rooms       | Keeps bases breathable                   |
| **Oxygen Detector**         | Reads oxygen levels (redstone) | Automation for life support              |
| **Temperature Regulator**   | Regulates heat/cold            | Mercury, Venus, and any cold base        |
| **Atmospheric Concentrator**| Concentrates breathable air    | Denser life support for large bases      |
| **Rocket Waypoint**         | Precise landing coordinates    | Land at your base, not wherever          |

#### Instance swap checklist (Stellaris → Northstar Redux)

In the game instance:

1. Remove the `stellaris` jar, `potentials` jar, and `sky-aesthetics` jar (Stellaris-only dependencies)
2. Add the `northstar-redux` 0.6.4 jar (Create 6.0+ and GeckoLib are already installed)
3. Do **not** install "Create: Northstar - Structures"
4. Existing worlds: Stellaris structures remain as inert blocks and its items vanish from inventories — a fresh world is recommended for the swap

### Integration With Tech Base

|| System             | How it connects                                                                                                    |
||--------------------|--------------------------------------------------------------------------------------------------------------------|
|| **Power**          | Mekanism generators at Moon base. Universal cables power Northstar machines                                       |
|| **Ore processing** | Bring planet ores (titanium, martian iron, tungsten) back to Mekanism line. 5x works on Northstar ores             |
|| **Storage**        | AE2 ME drives store Northstar materials. Autocraft rocket components. Quantum link or P2P tunnel to off-world base |
|| **Transport**      | Create trains move rocket materials to the launch site. Conveyors feed the Rocket Station                          |
|| **Fuel**           | TFMG diesel/gasoline compatibility for Northstar rocket fuel (native compat)                                       |
|| **Backpacks**      | Netherite-upgraded backpacks carry oxygen tanks and supplies                                                       |
|| **Food**           | Farmer's Delight meals eatable in space with oxygen present                                                        |
|| **Gear**           | Apotheosis affixes may apply to space suit (if item tags align)                                                    |
|| **MekaSuit**       | Pending compat bridge — modules make the MekaSuit a space suit once it tracks Redux 0.6.4+                        |

### Progression Placement

Space belongs in **Phase 2** (hours 40–200). Prerequisites:

- Create rotational power (brass age — rockets and machines need it)
- Mekanism basic processing (Enrichment Chamber)
- Small AE2 network
- Good weapons/armor (Wave 3/5 gear helps with planet mobs)

Start with Moon missions and a sealed Moon base, then Mars. Mercury and Venus are late Phase 2.

---

### Session Plan — Wave 7

|| Session                      | Focus                                                                                                 | What to Build              |
||------------------------------|-------------------------------------------------------------------------------------------------------|----------------------------|
|| **Session 1 — Ground prep**  | Build Rocket Station + Rocket Controls. Process Titanium. Assemble and superglue the rocket            | Launch infrastructure      |
|| **Session 2 — First launch** | Craft Telescope, take Readings. Craft Iron Space Suit, fill oxygen. Launch to the Moon                 | First off-world base       |
|| **Session 3 — Moon base**    | Sealed base: Oxygen Sealer + Filler. Waystone. Mine lunar sapphire. Chunk Loader                       | Sustainable Moon operation |
|| **Session 4 — Mars**         | Smelt Martian Steel. Land on Mars, mine martian iron and titanium. Temp base + weapons for hostile mobs | New resources              |
|| **Session 5+ — Deep space**  | Mercury (tungsten, heat). Venus (endgame). Martian Steel Space Suit. Space Atlas + Return Tickets       | Interplanetary logistics   |

**Tip**: Space is the most resource-intensive activity. Don't rush it. Each planet should feel like a meaningful expansion. Note: the MekaSuit is **not** a Northstar space suit by default — you still need the Iron/Martian Steel suits for oxygen. The *Mekanism × Create: Northstar* compat mod adds MekaSuit space-suit modules; it's queued for the pack once it tracks Redux 0.6.4+.

---

<!--raw-typst #pagebreak() -->

## Create World

All mods installed and every wave configured — here's how to start a proper world. These settings keep the pack survival-pure, the chat clean, and the worldgen fully modded.

### Before Creating

1. **Install the quest book** — copy `config/ftbquests/quests/` into the instance's `config/ftbquests/` folder (merge/overwrite) so the pre-authored book is ready from world one (see *Installing the Quest Book* in Wave 4.5).
2. **Optional data packs** — for the structure-spacing tweak, place `rarer-better-dungeons/` in `saves/<world>/datapacks/` after creating the world (see `datapacks/README.md`).

### World Creation Settings (Singleplayer → Create New World)

| Setting                     | Value        | Why                                                                                                                                                                                        |
|-----------------------------|--------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Game Mode                   | **Survival** | The pack is survival-only — every block placed and item crafted must be earned                                                                                                             |
| Difficulty                  | **Normal**   | Easy-to-standard curve. The real difficulty ramp is Apotheosis mobs and boss fights, not vanilla mobs                                                                                      |
| **Allow Commands (Cheats)** | **OFF**      | Survival purity — no `/gamemode` escapes, no creative shortcuts; quest rewards stay earned. Cheats can't be enabled later without opening the world to LAN, so set everything you need now |
| World Type                  | **Default**  | Terralith + Tectonic overhaul the overworld automatically. Don't pick Superflat, Single Biome, or Amplified — they break modded worldgen                                                   |
| Seed                        | Leave empty  | Random is fine — worldgen mods guarantee interesting terrain either way                                                                                                                    |
| Structure Generation        | **ON**       | YUNG's collection, Waystones, and every dimension need it                                                                                                                                  |

**Game Rules → Chat → disable all options** (Command Feedback, Command Block Output, Reduced Debug Info, Show Death Messages, Show Recipe Messages, Announce Advancements). Keeps the chat clean — progression popups still appear via Advancement Plaques and the quest book still tracks everything.

### After First Launch

1. First world load takes a few extra minutes while Terralith, Tectonic, Dynamic Waters, and YUNG's generate the initial chunks — that's normal.

---

## Mod Count Summary

| Wave                            | Mods    | Deps   | Total   | Notes                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|---------------------------------|---------|--------|---------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Wave 0 — Foundation             | 8       | 12     | 20     | Dependencies (12), Performance & Rendering (12) + FastWorkbench −Sodium Extras −Sodium Options API (Aug 2026 — broken dep chain: sodiumoptionsapi→RSO→Sodium 0.8.12+→incompatible with sodiumoptionsapi), Infrastructure (3) + Simple Recall Potion (travel) — all the nuts & bolts that make the game run (+1 shaderpack, +21 resource packs). Wave 0.5 UI swap: −Immersive UI −Smooth GUI −Tooltip Overhaul −Controlling −First Person Model +Modern UI; Aug 2026 Wave 0.5 review: −Easy Anvils (hard conflict with Apotheosis anvil mixins) −Searchables (orphan library — does nothing standalone) +Prism (Item Borders required dep) +Puzzles Lib (dep documented — 5 consumers) +Dark Mode Everywhere→Mindful Darkness swap +Stylish Effects −Status Effect Bars Reforged (Aug 2026 swap — SEBR's duration bars natively covered) −Dynamic Crosshair (vanilla-coupled — context features unreliable on modded worlds), Aug 2026 −JadeColonies (moved to Wave 1.5), Aug 2026; −Traveler Tool Belt (removed per user request, Aug 2026); −EMIffect +JEED +MEED (effect-wiki swap + curated content, Aug 2026)                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| Wave 0.5 — Resource Packs       | 5       | 0      | 5       | EMF + ETF + Continuity + Sinytra Connector + Cull Leaves — client-side support mods for Armored Legacy (EMF/ETF), Overlay's (Continuity/Connector), Better Leaves perf (Cull Leaves); +11 resource packs −Patrix +Faithful −FA Extensions (Aug 2026 resource pack review; removed — Details addon corrupted animal models, user report)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| Wave 1 — Tech                   | 21      | 5      | 26      | Create + 14 addons (incl. Power Grid, Gunsmithing, Protection Pixel, Ornithopter Glider, Train Utilities, Railways Navigator, Interiors, Train Parts, Threaded Trains, Central Kitchen), Mekanism + Generators + MekaJadeUpgrades, AE2, Advanced Finders, Advanced Chimneys + NTGL, GeckoLib, Framework, ForgeEndertech, Kleiders deps                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| Wave 1.5 — Colony               | 10      | —      | 10      | MineColonies (4 deps counted as mods — they're library mods; CurseForge-only) + 5 addons: Byzantine Styles, Stylecolonies, Create: Colony Logistics, ColonyLink, JadeColonies                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| Wave 2 — Exploration            | 38      | 8      | 47      | YUNG's (12), Terralith/Tectonic, Serene Seasons + Serene Seasons Plus + GlitchCore + Gabou's Libs, Darker Depths, Upgrade Aquatic, dimensions (3), End overhaul (3 + Nullscape dp + 5 deps), Structory, navigation, aircraft, ships, hang glider, MoMP addon, Vehicle Upgrade (mount/boat QoL), Incendium (Nether biome overhaul), Immersive Machinery (utility machines), Field Guide + 2 required companions (Immersive Overlays, Item Descriptions), Bumblezone (bee dimension) + Resourceful Lib |
| Wave 3 — Equipment Magic        | 10      | 12     | 22      | Skills Mastery Reimagined, Pufferfish's Skills, Simply Swords, Simply More, Too Many Bows, Relics, Enchanting Runes, Immersive Armors, Apotheosis, Apothic Compats + 12 deps (Placebo, Apothic modules, Patchouli, Simply Tooltips, Fzzy Config, Ranged Weapon API, Spell Engine, Bundle API, Pufferfish's Attributes, Curios API)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| Wave 4 — Food & Farming         | 19      | —      | 19      | Farmer's Delight + 9 addon mods + Neo Bee Fix + Comfortable Campfires + Smarter Farmers + Create: Café + Starcatcher + Starcatcher's Delight + Better Fishtanks + Spice of Life: Carrot Edition + Crops Love Rain (Aug 2026 review; count corrected 14→18 — fishing trio + one Delight addon never reflected in summary)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| Wave 4.5 — Quests               | 6       | 1      | 7       | FTB Questing ecosystem: FTB Library + FTB Quests + FTB Teams + KubeJS + FTB XMod Compat + MineColonies Questline. Bountiful removed. ExtraQuests removed (Aug 2026 — quest book uses only standard FTB Quests types; its ExtraLib dependency was never in the pack). +Rhino (KubeJS required dep — documented Aug 2026 Wave 0.5 review)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| Wave 5 — Combat & Mobs          | 6       | 5      | 11      | Better Combat, L_Ender's Cataclysm, Enchantment Descriptions, Create Big Cannons + Advanced Technologies addon, Torchmaster                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| Wave 6 — Building               | 11      | 3      | 14      | Rechiseled, Supplementaries, Macaw's (4), Building Wands, Handcrafted, Fetzi's Displays, Lili's Pottery, Laser Bridges & Doors, Diagonal Fences + Rechiseled: Create, Rechiseled: AE2 + Moonlight, Resourceful, Fusion                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| Wave 7 — Space Exploration      | 1       | 0      | 1       | Northstar Redux (Create 6.0+ and GeckoLib already in pack — no new dependencies; no worldgen structures)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| **Total**                       | **185** | **50** | **235** | All confirmed NeoForge 1.21.1 (Aug 2026 Wave 0.5 review: −Easy Anvils −Searchables +Prism +Rhino; Dark Mode Everywhere→Mindful Darkness swap + Puzzles Lib dep documented, Aug 2026; −Stellaris −Potentials API −Sky Aesthetics −CC:Tweaked +Northstar Redux, Aug 2026; +Real Camera; Day Counter Plus reverted — Day Counter + Hud Texts restored; +BetterGrassify + Forgified Fabric API + Sky Aesthetics; +Serene Seasons Plus + GlitchCore + Gabou's Libs - Chunky - When Dungeons Arise - Structory: Towers, Aug 2026; +Smarter Farmers (Sodium Extras + Sodium Options API removed Aug 2026 — broken dep chain on NeoForge 1.21.1) + Diagonal Fences + Create: Café, Aug 2026 mod review; +FastWorkbench + MoreCulling + BadOptimizations + Searchables + Loot Beams Refork + Nirvana Library + Common Network + Auto HUD + Create Central Kitchen + Spice of Life Carrot + Apothic Compats + Bliss shader, Aug 2026 weapon-QoL review; -Create: Misc and Things, removed by user; +Modern UI -Smooth GUI -Tooltip Overhaul -Controlling -Immersive UI -Smooth Font texture pack -First Person Model, Aug 2026 Modern UI adoption; +EMF +ETF +Continuity +Sinytra Connector +Cull Leaves +9 resource packs −Patrix +Faithful, Aug 2026 resource pack review; −Complementary Unbound −Euphoria Patches −Bliss +Solas Shader as main shader, Aug 2026 shader swaps (CU+Euphoria → Bliss → Solas); +Rekindled CTM (Fire Rekindled CTM addon), Aug 2026; +Faithful 32x AppleSkin Addon, Aug 2026; +Mod Descriptions (Field Guide companion), Aug 2026; +Bumblezone +Resourceful Lib, Aug 2026; −The RCP (1.21.1 pack_format incompatible), Aug 2026) +Stylish Effects −Status Effect Bars Reforged (1:1 swap — count unchanged), Aug 2026 +Vehicle Upgrade (Wave 2 Mobility), Aug 2026 +Crops Love Rain (Wave 4, Aug 2026 review) + Wave 4 count corrected 14→18 (fishing trio + one Delight addon never reflected in summary), Aug 2026; −Dynamic Crosshair (vanilla-coupled), Aug 2026; −Day Counter −Hud Texts (user reads the day from JourneyMap minimap labels; Hud Texts orphaned — only consumer removed), Aug 2026; +Obscure Tooltips +Fragmentum (tooltip swap — Modern UI tooltips off; Fragmentum doc gap fix — Loot Journal already required it), Aug 2026; −Traveler Tool Belt (Wave 0.5 Inventory & UI — removed per user request); −EMIffect +JEED +MEED (effect-wiki upgrade, Aug 2026) |

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
| Open Action Center    | `Ctrl+K`              | Modern UI               | 0.5  |
| Toggle Dynamic Lights | `Ctrl+L`              | LambDynamicLights       | 0    |
| Open Curios Inventory | `Y`                   | Curios API              | 0    |
| Open Skill Tree       | `K`                   | Pufferfish's Skills     | 3    |
| View Weapon Ability   | `Ctrl` (hold)         | Simply Swords           | 3    |
| Open Rune Pouch       | **Set manually**      | Runes                   | 3    |
| Open Create Ponder    | `W` (hold over block) | Create                  | 1    |
| Open Town Hall GUI    | Right-click           | MineColonies            | 1.5  |

> **Pro tip**: Open **Options → Controls → Key Binds** and browse categories at the bottom. Every mod's binds are grouped under its name. Set the ones above first, then explore others as you install new waves.

> **Modern UI note**: it also binds zoom to `C` (OptiFine-style). Disable it in the Action Center (`Ctrl+K`) so Sodium's zoom keeps the key.

---

## Progression Through All Waves

| Phase                      | What you'll be doing                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
|----------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Phase 2** (hours 40–200) | Full Create factory (conveyors, deployers, sequenced crafters, trains). Mekanism 3x–5x ore processing. AE2 ME network with autocrafting. Explore Twilight Forest bosses. Apotheosis Rare/Epic gear. First Cataclysm boss. TFMG oil refining and diesel engines. Build with Rechiseled, Macaw's, Handcrafted. Small Ships for ocean travel. Immersive Aircraft for aerial exploration. Complete quest chapters. Northstar Redux Moon and early planets |
| **Phase 3** (hours 200+)   | Mekanism fusion reactor + MekaSuit. AE2 full autocrafting CPU chains. Endgame Apotheosis Mythic gear with perfect gem sockets. Twilight Forest final bosses. Cataclysm endgame bosses. End dimension exploration. Mars and Venus space bases. Monumental building projects. Create mega-factories. Perpetual optimization                                                                                                                        |

---

## General Tips

### Finding Help

- **EMI (`R`/`U`)** — always your first stop. Hover any item, press R for recipe, U for uses
- **Ponder (`W` over Create blocks)** — interactive animated tutorials. Better than any wiki
- **Mods screen** — every installed mod's config button (Better Modlist adds badges/search)
- Most mods link to their wiki or Discord from their Mods screen entry

### Losing Progress

You won't. GraveStone Mod preserves your items on death. No creeper grief data pack prevents base damage. The pack is designed so you can walk away for a month and come back to exactly the world you left.

### Java & Performance

Minecraft 1.21.1 requires **Java 21**. See [Wave -1](#wave--1--prerequisites) for JDK installation and JVM arguments.

**Performance tips**:

- ZGC garbage collector with generational mode (`-XX:+UseZGC -XX:+ZGenerational`, `-Xms` = `-Xmx`) — full argument set and RAM table in [Wave -1](#wave--1--prerequisites)
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
| Process space ores                | Northstar titanium/martian steel → Mekanism 5x line → AE2 storage                                     |
| Build a megabase                  | Building Wands (structure) + Rechiseled blocks (aesthetic) + Handcrafted furniture (interior) |
