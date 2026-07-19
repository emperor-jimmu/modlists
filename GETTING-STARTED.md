This guide walks you through the modpack **one Wave at a time**. Each wave introduces one new capability. Don't install the next wave until you're comfortable with the current one.

---

## Wave -1 — How to Play Minecraft

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

## Wave 0 — Foundation

The essentials that make the game run well. Dependencies, performance, rendering, shaders, chunk loading, and texture packs. Install everything here before launching.

### Install

Use **GDLauncher** — create a 1.21.1 NeoForge instance, install all Wave 0 mods via the Addons tab. See [MODLIST.md](./MODLIST.md#wave-0--foundation) for the full list.

Wave 0.5 (Player Experience) can be installed at the same time — they're independent mods that don't conflict.

### First Launch Checklist

#### 1. Video Settings

| Setting             | Recommended | Notes                                   |
|---------------------|-------------|-----------------------------------------|
| Graphics            | Fabulous    | Sodium makes this fast                  |
| Render Distance     | 10 chunks   | Distant Horizons handles the rest       |
| Simulation Distance | 8 chunks    | Fewer distant mobs ticking = better FPS |
| VSync               | OFF         |                                         |
| Max Framerate       | Uncapped    |                                         |

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
| Show LOD Gen Progress      | ON         |

> **Tip**: DH generates LOD data as you explore. First visit to an area has temporary pop-in. Terralith + Tectonic terrain takes longer initially. Monitor VRAM — shaders + DH at 4K can push past 12GB.

#### 3. Shader Setup

Drop **Complementary Unbound** `.zip` into `shaderpacks/`. In-game: Options → Video Settings → Shaderpacks → select Complementary Unbound. Works with Iris on NeoForge.

**Euphoria Patches** (optional add-on): Install the patcher mod, it auto-detects Complementary and applies additional visual options. All features disabled by default.

**Settings for RTX 4080 SUPER (16GB VRAM, 4K)**:

- Visual Style: Unbound, Profile: High, RP Support: Integrated PBR+
- Shadow Resolution: 2048, Shadow Distance: 12 chunks
- Real-Time Shadows: High, Light Shaft Quality: Medium
- Entity Shadows: OFF, Cloud Quality: High, Water Reflection: Medium
- Bloom: OFF

General MC: Graphics Fancy, Render Distance 10, Simulation 8, Biome Blend 2, Mipmap 4x, Entity Distance 100%, VSync OFF, Max Framerate 120.

#### 4. Texture Pack Load Order (top = highest priority)

1. Fresh Animations
2. Alacrity
3. Alacrity — JEI Support
4. Alacrity — Shulker Box Tooltip Support
5. Enhanced Boss Bars
6. RAY's 3D Rails
7. 3D Ladders
8. Better Lanterns
9. Smooth Font 32x
10. Vervada's 3D Plants

**Alacrity support packs go BELOW the base Alacrity pack** — putting them above corrupts JEI graphics.

#### 5. JVM Arguments (GDLauncher → Instance Settings → Java & Memory)

```
-XX:+UseZGC -XX:+ZGenerational -XX:+AlwaysPreTouch -XX:+PerfDisableSharedMem -XX:SoftMaxHeapSize=12G -Xms8G -Xmx8G
```

| System RAM | Allocation        |
|------------|-------------------|
| 16 GB      | `-Xms10G -Xmx10G` |
| 32 GB      | `-Xms22G -Xmx22G` |
| 64 GB      | `-Xms48G -Xmx48G` |

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

**How**: Craft (check JEI — iron + redstone + ender pearl), place, right-click to toggle. Colored border shows loaded area.

**Placement priority** (late game):

1. Main base (ME drive, Mekanism induction matrix, Create power core) — Multi Chunk
2. MineColonies colony — Single or Multi
3. Mining outposts (Digital Miner) — Single
4. Other dimensions — Single per outpost

No performance concern with a dozen loaders on a modern CPU.

---

## Wave 0.5 — Player Experience

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

#### Wakes Reforged

Realistic water wakes and splashes when traveling on water. Works with Small Ships (Wave 2) and vanilla boats.

#### Sounds

170+ new sound effects for UI clicks, item drops, eating, achievements, block actions. Every vanilla action feels tactile. Customize individually in Mod List → Sounds → Config or `config/sounds/`. Conflicts with nothing — complements Sound Physics (environment) perfectly.

#### Better Days

Controls day/night cycle length. Default is 20-minute day / 10-minute night (2× day length). Config in `config/betterdays-common.toml`:

- `speedMethod = "MINUTES"`
- `daySpeedMinutes = 20`, `nightSpeedMinutes = 10`
- `enableSleepFeature = true`
- All time effects OFF (`potionEffect = "NEVER"`, `hungerEffect = "NEVER"`, `blockEntityEffect = "NEVER"`, `cropEffect = "NEVER"` — conflicts with Serene Seasons)

**SEASON mode**: Since this pack includes **Serene Seasons**, you can try `speedMethod = "SEASON"` for immersive day-length variation by season. Experimental — test before committing.

#### Better Safe Bed

Mobs that can't reach you no longer block sleep. Chill-rule essential.

#### Beautiful Enchanted Books [Mod Edition]

Unique textures per enchantment type — Protection books look different from Sharpness books. Standalone mod, no resource pack needed.

#### Overflowing Bars

Health, armor, and toughness bars expand beyond vanilla limits. Essential once you stack Apotheosis bonuses and skill tree HP.

#### Cherished Worlds

Favorite/pin worlds to the top of your list, prevent accidental deletion. Right-click a world in the list to favorite it.

#### Day Counter

Day counter title overlay at dawn with milestone celebrations (Day 10, 50, 100...). Appears automatically — no config.

#### Eating Animation

First-person eating/drinking animation — food moves to your mouth and shrinks. Works with Farmer's Delight foods.

#### Camera Overhaul

Camera tilting on movement, screen shakes on explosions, mouselook roll, idle sway. Satisfying feedback. Configurable in `config/cameraoverhaul-client.toml`.

#### [DLS] Dark Loading Screen

Replaces the bright-red loading screen with a dark version. No config.

---

### Inventory & UI — Your Daily Tools

#### JEI (Just Enough Items)

Your primary learning tool. **Hover any item, press `R`** to see how to craft it. **Press `U`** to see what it's used in. Every mod in future waves is learned through JEI first.

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

#### Mouse Tweaks

Inventory shortcuts: left-click drag → distribute evenly across slots. Right-click drag → place one per slot. Scroll wheel on stack → move one item. No config.

#### Inventory Essentials

Works alongside Mouse Tweaks:

- `Ctrl+click` a stack → moves one item
- `Shift+Ctrl+click` → moves all items of that type
- Sort buttons on chest/inventory GUIs

#### Shulker Box Tooltip

Hover over a shulker box in inventory → preview its contents. No config.

#### Item Borders

Colored rarity borders on items. Common = gray, Uncommon = green, Rare = blue, Epic = purple, Mythic = gold. Helps spot good drops instantly.

#### Loot Journal

Animated pickup notifications near your hotbar. Session summary on disconnect shows what you gained/lost. Config in Mod Menu → Loot Journal:

- `trackItemPickups = true`
- `trackXpPickups = true`
- `showSummaryOnDisconnect = true`

#### Reliable Advancements

Overhauled advancements UI — larger screen, pan/zoom, tab sorting, search. Open with `L`. Pairs with Fancy Toasts (animated popups).

#### Fancy Toasts

Beautiful animated advancement popups. No config.

#### Polymorph

When two mods have conflicting recipes for the same item, a small button appears next to the crafting output. Click to cycle recipes. Persists per ingredient combination.

---

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

| Session                         | Goal                                                                                                                                                                                                           |
|---------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Session 1 — Setup**           | Launch, set keybinds, configure Distant Horizons (LOD 128-256, Medium quality). Install Complementary Unbound shader. Enable Alacrity + Fresh Animations texture packs. Walk around spawn to generate LOD data |
| **Session 2 — Survival basics** | Punch trees, build a starter shack, find food, get iron. Place your first Waystone. Craft a Sophisticated Storage barrel. Craft a backpack                                                                     |
| **Session 3 — Comfort**         | Explore nearby terrain. Find a village. Set up a bed. Light up your base perimeter. Start noticing Traveler's Titles when entering new biomes                                                                  |

---

## Wave 1 — Tech (Create + Mekanism + AE2)

The core tech trio. Create handles mechanical automation, Mekanism handles industrial processing, AE2 handles digital storage and autocrafting. Install all three core mods plus addons at once.

### Core Tech

#### Create — Mechanical Automation

Create is about **rotational power (SU)**. Machines consume SU to run. If consumption exceeds generation, machines stop.

**Learning with Ponder**: Hold `W` while hovering over any Create block/item in JEI. An animated tutorial plays showing exactly how it works. **Use Ponder constantly** — it's better than any written guide.

**First Create setup**:

1. Mine **andesite** — the most important early resource
2. Craft **andesite casing** (andesite + wood nugget in JEI)
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

**Goggles** are essential — craft early, check JEI.

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

1. Build a **Gunsmithing Table** (check JEI — uses Create brass + wood)
2. Craft **gun frames** — pistol, rifle, shotgun, each with different stats
3. Craft **barrels, grips, magazines** at the mechanical press
4. Assemble at the Gunsmithing Table
5. Craft **ammo** — each gun type uses different ammo (pistol rounds, rifle cartridges, shotgun shells)

**Attachments**: Scopes, extended magazines, suppressors, bayonets. Attach at the Gunsmithing Table.

**Compatibility**: Built-in Better Combat support — guns use appropriate animations.

**Dependencies**: NTGL (gun framework), GeckoLib (3D animation), Framework (utility library) — all auto-installed.

#### Create Ornithopter Glider

Mechanical flapping glider powered by Create rotational power.

**How**: Craft the glider (check JEI — brass + leather + feathers). Equip in chest slot. Hold jump to flap (consumes SU from a connected power source or internal buffer). Boost-assisted flight for short bursts.

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

**How**: Craft a finder (check JEI — tiers for different ores). Hold it — arrows point toward nearest vein, distance shown on HUD. Synchronized in multiplayer.

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

**Pacing tip**: You don't need to finish Wave 1 before starting Wave 1.5 (colony) or Wave 2 (exploration). Dip into exploration between factory sessions. The colony takes real-world days to grow — start it early. TFMG is mid-game — start after you have brass Create and basic Mekanism.

---

## Wave 1.5 — Colony Management

MineColonies provides autonomous NPC workers that mine, farm, craft, and guard your base. Grows alongside your factory.

### Install

See [MODLIST.md](./MODLIST.md#wave-15--colony-management). MineColonies + 4 dependencies (Structurize, MultiPiston, BlockUI, Domum Ornamentum).

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
- **Create conveyors** feed materials into builder's chest for automated restocking
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

## Wave 2 — Exploration (World & Dimensions)

The world is dramatically transformed. Terralith overhauls biomes, Tectonic reshapes terrain, YUNG's expands every structure, and three new dimensions open up.

### Install

See [MODLIST.md](./MODLIST.md#wave-2--exploration-world--dimensions). Install all at once.

### Overworld

#### Terrain — Terralith + Tectonic

| Aspect    | What changed                                                                         | What to look for                           |
|-----------|--------------------------------------------------------------------------------------|--------------------------------------------|
| Mountains | Taller, steeper. Painted mountains (orange/white layers), volcanic peaks             | Build in mountain valleys                  |
| Oceans    | Deeper, trench-like drops offshore                                                   | Use Small Ships (below) to cross           |
| Biomes    | 80+ overhauled — redwood forests (200+ block trees), cherry groves, floating islands | Cherry groves for vibes, redwoods for wood |
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

#### Structory + Towns & Towers

- **Structory** — dozens of hand-crafted structures: camps, shrines, castles, towers, walled towns
- **Towns & Towers** — villages generate with unique architecture per biome style. Each biome gets its own building designs

**What to do**: Explore! Mark interesting structures on your JourneyMap (fullscreen map → right-click to set waypoint). Return with an Explorer's Compass.

#### Explorer's Compass — Navigation Tool

1. Craft: 1 compass + 4 iron ingots in a + pattern
2. Right-click → GUI opens
3. Search tab: type biome or structure name (partial matching — "cherry" finds all cherry biomes)
4. Select an entry → compass points to nearest instance, distance shown
5. Follow the arrow in real-time
6. When found, add a JourneyMap waypoint

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

**How**: Craft at table (check JEI — iron + wool/leather), place on ground, right-click to enter. `W` to ascend, `S` to descend, `A/D` to rotate. Any furnace fuel works.

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

### End Overhaul

After defeating the Ender Dragon, the End becomes a full dimension.

**BetterEnd NeoForge** adds 24+ biomes:

| Biome type       | Description                                     | Resources                       |
|------------------|-------------------------------------------------|---------------------------------|
| Floating islands | Large islands with unique vegetation, end lakes | New wood types, building blocks |
| Crystal caves    | Underground caverns with glowing crystals       | Crystal materials               |
| Mushroom fields  | Giant end-themed mushrooms                      | Magic crafting materials        |
| Ice biomes       | Frozen wastelands                               | —                               |
| Chorus forests   | Dense chorus plant forests                      | Chorus flowers, new food        |

**Moog's End Structures** adds towers, ruins, and dungeons with loot better than vanilla End cities.

**Nullscape** (data pack) overhauls End terrain into surreal alien shapes — floating islands, spires, arches, void pits, unique sky colors per biome. **Compatible with BetterEnd** (Nullscape's documented exception). Install in `datapacks/` folder.

- Nullscape handles terrain and sky
- BetterEnd handles biomes, mobs, gear, and structures

**Ender's Delight** (Wave 4) adds food cooked from End ingredients — useful status effects for End exploration.

**Progression**:

- Post-Dragon: Explore outer islands for new materials and tier-appropriate gear
- Mid-End: Tackle Moog's structures for unique weapons
- Endgame: Build an End base with rarest biomes

**Tip**: Place a Waystone immediately. Build a small AE2 subnet with wireless terminal to access main base storage.

---

### Session Plan — Wave 2

| Session                           | Focus                                                                                                                    | What to Do                       |
|-----------------------------------|--------------------------------------------------------------------------------------------------------------------------|----------------------------------|
| **Session 1 — Scout**             | Craft Explorer's Compass. Search for cherry grove or redwood forest. Mark waypoints on JourneyMap. Loot a YUNG's dungeon | First taste of transformed world |
| **Session 2 — Aether**            | Gather glowstone. Build Aether portal. Explore first sky island, collect ambrosium and zanite                            | Safe new dimension               |
| **Session 3 — Twilight Forest**   | Find 2×2 pool, surround with flowers, throw diamond. Enter, place Waystone. Defeat the Naga                              | First Twilight boss              |
| **Session 4+ — Deep exploration** | Work through Twilight Forest bosses. Visit Deeper and Darker (find Ancient City). Explore End post-Dragon                | Boss loot, dimension resources   |
| **Session 5 — Aircraft**          | Craft a biplane or airship (iron + wool). Explore Terralith biomes from the air                                          | Fast travel, scenic views        |

**Pacing tip**: Explore between factory builds. Grab your compass and walk in a random direction when waiting for Mekanism to process or Create to assemble.

---

## Wave 2.5 — Building Your Home

You've explored the world, found stunning biomes, and gathered materials. Now it's time to stop surviving and start **living**. This section covers how to build a home you're proud of — no creative mode required, no artistic talent assumed. Just a few principles that separate "dirt hut" from "place I actually want to come back to."

Building is a core pillar of this modpack. At any point you can stop optimizing factories and just build something beautiful. This guide works at any stage — but it's especially satisfying now, when you have enough materials to be selective but haven't yet automated everything.

### Finding Your Build Site

Before placing a single block, find a location that inspires you. You have tools for this:

| Tool | How | Why |
|------|-----|-----|
| **Explorer's Compass** | Craft: 1 compass + 4 iron (+pattern). Right-click → search "cherry", "redwood", "meadow" | Find specific biomes by name |
| **JourneyMap** | Press `J` → explore the fullscreen map | See terrain, biomes, and your marked waypoints |
| **Small Ship** | Sail along coastlines | Discover waterfronts you'd miss on foot |
| **Biplane** | Fly low over terrain | Spot valley builds, mountain perches, river mouths |

**What to look for**:

- **Waterfront** — river banks, ocean cliffs, lake shores. Water reflects builds beautifully with shaders
- **Mountain valleys** — enclosed, dramatic, defensible. Terralith makes these spectacular
- **Forest clearings** — surrounded by trees feels cozy and sheltered
- **Cliff faces** — cut into the hillside for a build that looks permanent, not placed
- **Cherry groves** — pink petals + mountain backdrop = instant atmosphere

**Pro tip**: Place a **Waystone** at your chosen site before you start building. You'll want to teleport back with materials.

### The Block Palette Rule

The single biggest upgrade from "meh" to "wow" is using **3–5 complementary blocks** instead of one. Every great build you've ever seen uses a palette. Here's the formula:

| Role | Percentage | Purpose |
|------|-----------|---------|
| **Primary** | ~50% | Dominant wall material — defines the build |
| **Secondary** | ~30% | Complementary texture — similar tone, different surface |
| **Accent** | ~20% | Detail material — corners, trim, highlights, pops of color |

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

| Technique | How to do it | Why it works |
|-----------|-------------|--------------|
| **Inset windows** | Push glass back one block into the wall instead of flush with the surface | Creates shadow lines that frame windows |
| **Outcropped corners** | Extend corner blocks one block forward from the main wall plane | Breaks up 90-degree edges, adds structural feel |
| **Alternating depth** | Every 3–4 blocks along a wall, push one column back or pull one forward | Wall reads as textured rather than uniform |
| **Stair/slab detailing** | Upside-down stairs under windowsills, stairs as roofline trim, slabs as half-height ledges | Catches light and shadow in ways full blocks can't |
| **Overhanging roofline** | Always extend the roof 1–2 blocks past the wall on all sides | Creates shadow line that defines where building ends and sky begins |

**Fastest single improvement**: Add vertical **log pillars** every 3–5 blocks along exterior walls. Logs imply structural support and instantly break up flat surfaces. Works with every style.

### Roof Design

A bad roof ruins a good build. A good roof makes even a simple box look intentional.

#### Three Roof Styles (Pick One)

| Style | Shape | Best for | How |
|-------|-------|----------|-----|
| **A-frame (pitched)** | Triangle cross-section | Cottages, cabins, medieval | Stairs ascending from each wall meeting at a ridge. Overhang 1 block on all sides |
| **Flat with parapet** | Flat top, raised edges | Modern, desert, fortress | Slabs or full blocks, 1-block wall around perimeter |
| **Stepped pyramid** | Layered squares getting smaller | Asian, temples, fantasy | Each layer 2 blocks smaller than the one below |

**Material rule**: Roof material should **contrast** with wall material. Dark roof on light walls, or vice versa. Spruce stairs on oak walls. Deepslate on stone brick. Blackstone on sandstone.

**Common mistake**: Roof too small. The roof should be wider and taller than feels "necessary." An oversized roof looks dramatic; an undersized one looks like a hat that doesn't fit.

### Interior Design

An empty interior is as bad as a bad exterior. Minecraft has no furniture mod yet (Wave 6 adds Handcrafted), but vanilla blocks create convincing rooms.

#### Lighting (Critical)

**Never place torches on interior walls.** They look improvised. Better options:

| Light source | Look | How |
|-------------|------|-----|
| **Lanterns** | Warm, architectural | Hang from ceiling via fence post |
| **Glow berries** | Organic, trailing | Place on ceiling, let vines trail down |
| **Sea lanterns** | Clean, neutral | Modern or sci-fi builds |
| **Jack o'lanterns** | Hidden under carpets | Floor lighting without visible sources |
| **Froglights** | Subtle, colorful | Pearlescent/verdant/ochre variants from Aether or Overworld |

#### Functional Rooms

| Room | Key blocks | Details |
|------|-----------|---------|
| **Kitchen** | Smoker, campfire, barrels, chests | Barrel = cabinets. Chest with food item frame = pantry. Cooking pot over campfire |
| **Bedroom** | Bed, crafting table, bookshelf, lantern | Banner on wall above bed as headboard. Carpet at foot of bed |
| **Library** | Bookshelves, lectern, quill | Cover walls with bookshelves for instant warmth |
| **Storage** | Sophisticated Storage barrels, chests | Organized rows. Sign labels on each barrel |
| **Workshop** | Crafting table, furnace, anvil | Industrial feel — stone walls, iron accents |

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

| Tool | What it does for building |
|------|--------------------------|
| **Waystones** | Place one at your build site. Teleport home for materials, teleport back. No more carrying 3 inventories of blocks across 500 blocks |
| **Sophisticated Storage** | Barrels near your build site hold materials organized by type. Label with signs |
| **Backpack** | Carry your palette blocks in your backpack while building. Press `B` to swap materials on the go |
| **Create Blueprint** | Craft Blueprint and Quill. Select your finished build → save as blueprint → use Schematicannon to auto-rebuild it elsewhere with materials from chests |
| **Building Wands** (Wave 6) | Place walls, fill areas, build circles/cylinders in bulk. Wait for Wave 6 for this one |
| **JourneyMap waypoints** | Mark your build site, mark material locations, mark inspiration you find while exploring |
| **Dynamic Lights** (`Ctrl+L`) | Hold a lantern while building at night. No more stopping to place torches |

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

| Resource | URL | What it's for |
|----------|-----|---------------|
| **BlockPalettes** | [blockpalettes.com](https://www.blockpalettes.com) | Block color combinations and palette inspiration |
| **Building Guide App** | [buildingguide.app](https://buildingguide.app) | Step-by-step tutorials with materials lists (128+ builds) |
| **r/MinecraftBuilds** | [reddit.com/r/MinecraftBuilds](https://www.reddit.com/r/MinecraftBuilds) | Community showcase, inspiration, feedback |
| **r/MinecraftHouses** | [reddit.com/r/MinecraftHouses](https://www.reddit.com/r/MinecraftHouses) | House-specific builds and ideas |
| **r/MinecraftTutorials** | [reddit.com/r/MinecraftTutorials](https://www.reddit.com/r/MinecraftTutorials) | How-to guides for specific techniques |
| **Minecraft Wiki — Building** | [minecraft.fandom.com/wiki/Building](https://minecraft.fandom.com/wiki/Building) | Official guides on terraforming, furniture, layout |

### Session Plan — Wave 2.5

| Session | Focus | What to Build |
|---------|-------|---------------|
| **Session 1 — Site selection** | Explore with Explorer's Compass. Find a biome you love. Place Waystone. Mark on JourneyMap | Your future home location |
| **Session 2 — Palette + foundation** | Browse BlockPalettes.com. Pick 4 blocks. Lay foundation ring. Raise walls to 4 blocks high | Shell of your first real house |
| **Session 3 — Roof + depth** | Build A-frame roof. Add log pillars. Inset windows. Add door | Recognizable house shape |
| **Session 4 — Interior** | Lanterns from ceiling. Bed, crafting table, furnace. Barrels for storage. Item frames on walls | Livable interior |
| **Session 5 — Landscaping** | Paths, trees, flowers, leaf trim around roofline. Step back and see the difference | Home in a world |

**Tip**: Don't aim for perfection on your first build. Aim for "better than a dirt hut." You can always expand, renovate, or rebuild later. The skills transfer — your second build will be twice as good.

---

## Wave 3 — Equipment Magic & RPG

Every weapon rolls with random affixes, every accessory provides a unique ability, and a skill tree gives every action meaning. This wave makes you **feel** your character grow alongside your tech.

### Install

See [MODLIST.md](./MODLIST.md#wave-3--equipment-magic--rpg). Install all at once.

### Skill Tree (RPG Series) — Character Growth

Every action earns XP. Spend points on permanent stat bonuses.

**Getting started**:

1. Controls → Skill Tree → set a key (`P` recommended)
2. Press key → skill tree GUI opens
3. Spend first points on **Strength** (+melee damage, +mining speed) or **Vitality** (+max HP, +regen)

| Attribute    | Effect                              | Best for            |
|--------------|-------------------------------------|---------------------|
| **Strength** | +melee damage, +mining speed        | Everyone            |
| **Vitality** | +max HP, +natural regen             | Everyone            |
| **Agility**  | +movement speed, +attack speed      | Combat, kiting      |
| **Magic**    | +spell damage, +mana regen          | If using spell mods |
| **Defense**  | +armor toughness, +damage reduction | Tank builds         |

**How XP works**: Every ore mined, mob killed, item crafted, crop harvested generates XP. Scales with action complexity.

**Pufferfish's Skills**: The underlying framework powering Skill Tree. Handles XP tracking and attribute modification behind the scenes. Auto-installed dependency — no separate config needed.

**Tip**: Set the keybind and start earning XP from minute 1. Lowest-investment, highest-return mod in this wave.

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

**How they work**: Each bow has a unique passive or activated ability. Check JEI for recipes and stats. Some shoot multiple arrows, some inflict status effects, some have special draw mechanics.

**Finding them**: Dungeon chests, mob drops, and boss loot. Combine with Apotheosis gem socketing for even more damage.

**Integration**: Simply Swords + Too Many Bows covers melee and ranged. Better Combat (Wave 5) provides appropriate animations for both.

### Spartan Weaponry Unofficial — Polearms & Throwing

Spears, halberds, pikes, lances, throwing knives — fills the polearm gap that Simply Swords doesn't fully cover.

**Key feature**: Extended reach on all polearms (hit from 2-4 blocks away). Throwing weapons return after being thrown.

**Finding them**: Crafted at table (check JEI — wood/stone/iron/gold/diamond/netherite tiers). Lower tiers craftable early; higher tiers gate behind material progression.

### Relics RPG — Legendary Accessories

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

### Runes — Socketable Weapon Modifiers

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

**Gem Cutting Station**: Craft (check JEI), place rough gem + dust → cut gem. Dust from breaking unwanted cut gems.

**Gem Socketing Table**: Craft (check JEI), place item + gem in socket slot. Limited sockets per gear piece — expand with socketing tools.

#### Enchanting Overhaul

- **Higher level cap**: Sharpness VIII, Protection VIII, Fortune V, Looting V possible
- **Tiered bookshelves**: Hell, Seashelf, Endshelf enable higher enchantment levels
- **Library of Alexandria**: Stores all enchanted books in one block
- **30+ new enchantments**: Check JEI for full list

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

## Wave 4 — Food, Farming & Comfort

Farmer's Delight brings a full cooking ecosystem. Optional — you can survive on baked potatoes — but cooking gives powerful status effects, better healing, and a cozy kitchen to build around.

### Install

See [MODLIST.md](./MODLIST.md#wave-4--food-farming--comfort). Install all at once.

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

Craft **oak/pantry cabinets** (check JEI — varies by wood). Function as chests with kitchen aesthetics.

**Tip**: Set up kitchen near your AE2 network. Cook manually or stock ingredients in ME drives for autocrafting.

### Brewin' And Chewin' — Drinks & Fermentation

Alcohol brewing with aging mechanics. Grow hops, barley, grapes on farmland.

#### Brewing Station

Craft (check JEI — barrel-like recipe). Right-click to open GUI.

1. Add **water** + main ingredient:
   - Barley → beer base (wort)
   - Grapes → wine base (must)
   - Honey → mead base
   - Potatoes → spirits base (mash)
2. Wait for fermentation
3. Collect **fermented mixture**

#### Aging Barrel

Craft (check JEI — wooden barrel). Place fermented mixture inside, right-click to seal.

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

### More Delight — Extra Meals & Knives

- **Extra meals**: Sandwiches, toasts, stuffed mushrooms
- **Knife variants**: Diamond and netherite knives (much longer lasting than iron)
- **New cooking pot recipes**: Stews, soups, pasta dishes

All recipes visible in JEI. Uses existing cutting board and cooking pot.

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

- **Ingredients**: Chorus fruit variants, end-themed crops from BetterEnd
- **Recipes**: End stews and snacks
- **Effects**: Status boosts useful for End dimension exploration

**Integration**: End ingredients from BetterEnd biomes (Wave 2) cook into Ender's Delight meals. Plan an End farming outpost with Farmer's Delight crops.

### Neo Bee Fix

Fixes bee AI — bees properly leave hives, don't fall from sky, no northwest wander bias. No config. Install and forget.

**Integration**: Bees produce honey for Brewin' And Chewin' mead. Farm bees near your kitchen for renewable brewing ingredients.

---

## Wave 4.5 — Quests

Procedural bounty boards give you optional goals as you explore. No quest book, no authoring, no pressure.

### Bountiful — Bounty Boards

Find **bounty boards** in every village (lectern-like block near center). Right-click → quest list.

| Quest Type      | Example                     | Reward                     |
|-----------------|-----------------------------|----------------------------|
| **Gathering**   | Deliver 16 iron ingots      | Emeralds, XP, rare items   |
| **Hunting**     | Kill 8 creepers             | Combat loot, XP            |
| **Exploration** | Find a specific biome       | Map items, navigation gear |
| **Crafting**    | Deliver crafted tools/armor | Ingots, gems               |

**How**:

1. Find any village
2. Locate bounty board
3. Right-click → select a quest
4. Required items appear in board's slots — drop them in
5. Collect reward
6. New quests regenerate periodically

**Decree system**: Blacklist quest types you don't enjoy.

**Tip**: Take gathering quests for materials you already have in your AE2 system — free rewards for zero extra work.

---

### Session Plan — Wave 4 & 4.5

| Session                           | Focus                                                                                              | What to Build           |
|-----------------------------------|----------------------------------------------------------------------------------------------------|-------------------------|
| **Session 1 — Kitchen tools**     | Cutting board + cooking pot + stove. Find wild crop seeds                                          | Functional kitchen      |
| **Session 2 — Farm**              | Plant tomato, cabbage, onion, rice. Cook first meal (tomato soup is easiest)                       | Sustainable ingredients |
| **Session 3 — Brewing**           | Find barley/grapes/honey. Build brewing station. Start first batch. Place aging barrel             | First drink fermenting  |
| **Session 4 — Kitchen expansion** | Storage Delight cabinets/drawers. Try More Delight recipes. Collect Nether ingredients             | Full kitchen            |
| **Session 5 — Bounties**          | Visit village, find bounty board, complete a gathering quest for free rewards                      | Passive XP and loot     |
| **Ongoing**                       | Age drinks for boss buffs. Explore oceans for seafood. Stock AE2 with ingredients for autocrafting | Buff food always ready  |

---

## Wave 5 — Combat & Mobs

Your powerful gear finally has worthy opponents. Better combat mechanics, tougher mobs, epic boss fights, roguelike dungeons.

### Install

See [MODLIST.md](./MODLIST.md#wave-5--combat--mobs).

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

**Tip**: Better Combat changes melee fundamentally. Don't skip Session 1 even as a ranged player.

---

## Wave 6 — Building & Decoration

Tools and blocks to build the base you deserve.

### Install

See [MODLIST.md](./MODLIST.md#wave-6--building--decoration).

### Rechiseled — Decorative Block Variants

600+ decorative block variants with connected textures.

**How**:

1. Craft **chisel** (iron + 2 sticks, check JEI)
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

**How**: Craft (check JEI — glass + frame materials). Place on wall. Shows your character model in real-time, including armor and held items.

**Use**: Decorative vanity mirrors in bedrooms and dressing rooms. Purely aesthetic — no functional gameplay effect.

---

### Session Plan — Wave 6

| Session                             | Focus                                                                                                                  | What to Build            |
|-------------------------------------|------------------------------------------------------------------------------------------------------------------------|--------------------------|
| **Session 1 — Rechiseled basics**   | Craft chisel. Convert stone, wood, glass into decorative variants. Try connected textures                              | Decorative block library |
| **Session 2 — Structural elements** | Craft Macaw's roofs, windows, doors in your base wood type. Build a cohesive room                                      | Cohesive room aesthetic  |
| **Session 3 — Furniture**           | Handcrafted chairs, tables, shelves in kitchen and bedroom. Item shelves for loot display                              | Functional interior      |
| **Session 4 — Large-scale**         | Building Wands — wall mode for perimeter, fill mode for foundation. Build a tower with circle mode                     | Rapid construction       |
| **Session 5 — Details**             | Supplementaries jars, signposts, weather vanes. The Magic Mirror in bedroom. Rechiseled: Create for factory aesthetics | Decorative details       |

---

## Wave 7 — Space Exploration

Space travel becomes real. Build rockets, manage oxygen, explore alien worlds, bring back exotic resources.

### Install

See [MODLIST.md](./MODLIST.md#wave-7--space-exploration). Stellaris + Potentials API (auto-installed dependency).

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
2. Equip **Space Suit** (check JEI — steel + glass + rubber/leather)
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

## Keybindings Reference

| Keybind               | Suggested             | Mod                     | Wave |
|-----------------------|-----------------------|-------------------------|------|
| View Recipes          | `R`                   | JEI                     | 0    |
| View Uses             | `U`                   | JEI                     | 0    |
| Open Fullscreen Map   | `J`                   | JourneyMap              | 0    |
| Toggle Minimap        | **Check default**     | JourneyMap              | 0    |
| Open Waystone Menu    | `Ctrl+Shift+W`        | Waystones               | 0    |
| Open Backpack         | `B`                   | Sophisticated Backpacks | 0    |
| Zoom                  | `C`                   | Sodium                  | 0    |
| Toggle Dynamic Lights | `Ctrl+L`              | LambDynamicLights       | 0    |
| Open Curios Inventory | `Y`                   | Curios API              | 0    |
| Open Skill Tree       | `P`                   | Skill Tree              | 3    |
| View Weapon Ability   | `Ctrl` (hold)         | Simply Swords           | 3    |
| Open Rune Pouch       | **Set manually**      | Runes                   | 3    |
| Open Create Ponder    | `W` (hold over block) | Create                  | 1    |
| Open Town Hall GUI    | Right-click           | MineColonies            | 1.5  |

> **Pro tip**: Open **Options → Controls → Key Binds** and browse categories at the bottom. Every mod's binds are grouped under its name. Set the ones above first, then explore others as you install new waves.

---

## Progression Through All Waves

| Phase                      | What you'll be doing                                                                                                                                                                                                                                                                                                                                                                                                                                       |
|----------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Phase 1** (hours 0–40)   | Wave 0 setup. Early Create (water wheel, millstone). Find certus quartz for AE2. First Mekanism machines (2x ore). Explore Terralith biomes. Skill Tree earning XP from first action. First Simply Swords weapon from dungeon. Cook first Farmer's Delight meal. Start MineColonies (Town Hall, Builder, Mine). Grab bounties from village boards                                                                                                          |
| **Phase 2** (hours 40–200) | Full Create factory (conveyors, deployers, sequenced crafters, trains). Mekanism 3x–5x ore processing. AE2 ME network with autocrafting. Explore Twilight Forest bosses. Apotheosis Rare/Epic gear. Mutant Monsters. First Cataclysm boss. TFMG oil refining and diesel engines. Build with Rechiseled, Macaw's, Handcrafted. Small Ships for ocean travel. Immersive Aircraft for aerial exploration. Complete bounties. Stellaris Moon and early planets |
| **Phase 3** (hours 200+)   | Mekanism fusion reactor + MekaSuit. AE2 full autocrafting CPU chains. Endgame Apotheosis Mythic gear with perfect gem sockets. Twilight Forest final bosses. Cataclysm endgame bosses. BetterEnd dimension exploration. Mars and Glacio space bases. Monumental building projects. Create mega-factories. Perpetual optimization                                                                                                                           |

---

## General Tips

### Finding Help

- **JEI (`R`/`U`)** — always your first stop. Hover any item, press R for recipe, U for uses
- **Ponder (`W` over Create blocks)** — interactive animated tutorials. Better than any wiki
- **Mod Menu / Configured** — every installed mod's config screen
- Most mods link to their wiki or Discord from Mod Menu entry

### Losing Progress

You won't. GraveStone Mod preserves your items on death. No creeper grief data pack prevents base damage. The pack is designed so you can walk away for a month and come back to exactly the world you left.

### Java & Performance

Minecraft 1.21.1 requires **Java 21**. See [MODLIST.md](./MODLIST.md#wave--1--prerequisites) for JDK installation and JVM arguments.

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
