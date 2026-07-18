This guide walks you through the modpack **one Wave at a time**. Each wave introduces one new capability. Don't install the next wave until you're comfortable with the current one.

---

## Wave -1 — How to Play Minecraft

This section assumes you know nothing. If you've played Minecraft before, skip to Wave 0.

### The Goal

There isn't one. Minecraft is a sandbox. You punch trees, build things, explore, fight monsters, and eventually become very powerful. You make your own goals. This modpack adds even more things to do on top of the base game.

### Controls (Default)

| Action                       | Key                                                  |
|------------------------------|------------------------------------------------------|
| Move                         | `W A S D`                                            |
| Jump                         | `Space`                                              |
| Sneak                        | `Shift` (hold to walk off edges without falling)     |
| Sprint                       | `Ctrl` (hold while moving)                           |
| Attack / Break blocks        | **Left-click** (hold to keep breaking)               |
| Use item / Place block       | **Right-click**                                      |
| Open inventory               | `E`                                                  |
| Drop item                    | `Q` (while hovering over item in inventory)          |
| Select hotbar slot           | `1` through `9`                                      |
| Sneak + right-click on chest | Opens chest without placing the block you're holding |

> **Customize these**: Options → Controls → Key Binds. Set what feels natural. The most common change is swapping sprint to a toggle.

### Your First 10 Minutes

#### 1. Punch a tree

Look at a tree trunk. **Hold left-click** until the wood block breaks and drops. Pick it up by walking over it. Get at least 8 wood logs.

#### 2. Make a crafting table

Open your inventory (`E`). You'll see a 2x2 crafting grid in the top-right. Place 1 wood log in any slot → 4 wood planks appear on the right. Take them. Then fill all 4 crafting slots with planks (put 1 plank in each) → 1 crafting table appears. Take it.

**Quick tip**: In your inventory grid, you can also turn 2 planks into 4 sticks (plank on top, plank on bottom). Sticks are used for tool handles.

#### 3. Place your crafting table

Walk to where you want your base. Right-click the ground with the crafting table in your hand → it appears. **Right-click the table** to open its 3x3 crafting grid (the big one).

Now craft tools:

| Tool               | What it does          | Crafting (3x3 grid)                                      |
|--------------------|-----------------------|----------------------------------------------------------|
| **Wooden Pickaxe** | Breaks stone          | 3 planks across top row, 2 sticks down the middle column |
| **Wooden Axe**     | Faster tree chopping  | 3 planks in top-left corner, 2 sticks down               |
| **Wooden Shovel**  | Digs dirt/sand faster | 1 plank top-center, 2 sticks below                       |
| **Wooden Sword**   | Fights mobs           | 2 planks in middle column, 1 stick below                 |

#### 4. Gather stone

Find some grey stone on the ground (or cliffs). Use your **wooden pickaxe** to mine 8-12 stone blocks. Then craft **stone tools** — same patterns as wooden but replace planks with cobblestone. Stone tools last longer and mine faster.

#### 5. Build a shelter

Before night falls (about 10 minutes into the first day), build a small box:

- Walls: dirt, wood planks, or cobblestone — whatever you have
- Roof: same material
- Door: craft from 6 planks (2 columns of 3 in the crafting grid)
- Torches: 1 stick + 1 coal (or charcoal) = 4 torches. Place them inside so you can see.

> **No coal?** You can make **charcoal** by smelting wood logs in a furnace (see below). Same as coal but from wood.

#### 6. Craft a furnace

| Material      | Pattern                                   |
|---------------|-------------------------------------------|
| 8 cobblestone | All slots except the center one → furnace |

Place the furnace. Right-click it. Put wood logs in the top slot, planks/sticks in the bottom slot (fuel). Smelt logs into charcoal, cook raw meat, smelt iron ore.

#### 7. Survive the first night

Monsters spawn in darkness. Your shelter keeps them out. Stay inside. You can:

- Dig a small mine under your shelter
- Expand your crafting table base
- Smelt materials
- Sleep if you have a bed (3 wool + 3 planks)

> **If there's no bed**: Wool comes from killing sheep (don't kill all the sheep — breed them with wheat later). Different coloured sheep drop different wool. 3 of any colour + 3 planks in a row = bed.

#### 8. Day 2 and beyond

| Priority        | What to do                                                                                                                                           |
|-----------------|------------------------------------------------------------------------------------------------------------------------------------------------------|
| Find food       | Kill animals (cows, pigs, chickens). Cook the meat in your furnace. Plant wheat seeds (break grass) near water.                                      |
| Get iron        | Dig down (not straight down — staircase pattern) until you see brownish blocks with specks. Mine with stone pickaxe. Smelt in furnace → iron ingots. |
| Make iron tools | Iron pickaxe, iron sword, iron armour. This is the "I'm established" checkpoint.                                                                     |
| Find a village  | Walk around until you see buildings with paths. Villages have beds, food crops, and later — Waystones.                                               |
| Make a bed      | 3 wool + 3 planks. Sleep through the night. Respawn at bed if you die.                                                                               |

#### Navigating with F3

Press `F3` opens the debug screen. The useful parts:

| Value       | What it shows                                                 |
|-------------|---------------------------------------------------------------|
| `xyz`       | Your coordinates — write these down so you can find your base |
| `Biome`     | What biome you're in                                          |
| `Direction` | Which way you're facing (N/S/E/W)                             |
| `Light`     | Light level — mobs spawn at light level 0                     |

**Quick tip**: Write down your base coordinates before exploring. Or just place a Waystone (Wave 0) at your base.

### Dying

You lose some or all of your items (depends on difficulty settings) and respawn at your bed (or world spawn if no bed). With Wave 0's **grave mod**, your items stay in a grave you can retrieve.

### Key Minecraft Concepts

**Health & food**: You have 10 hearts (20 HP). Food restores hunger. When hunger is full, you slowly regenerate health. Don't let hunger drop to 0 — you'll start taking damage.

**Day/night cycle**: 20 minutes total. 10 minutes day, 1.5 minutes sunset, 7 minutes night, 1.5 minutes sunrise. Monsters spawn in darkness.

**Ore tiers**: Wood → Stone → Iron → Diamond → Netherite. Each tier mines faster and can mine the next tier's ores.

**The Nether**: A dangerous alternate dimension. Build a Nether Portal (10 obsidian blocks in a 4x5 rectangle, light with flint and steel). The Nether has unique resources (blaze rods, netherite) and is optional for most of this modpack.

**The End**: The dimension with the Ender Dragon. Beating the dragon is the "credits roll" of vanilla Minecraft. This modpack has many more things to do after that.

---

## Wave 0 — Foundation

This wave makes Minecraft run well, look great, and feel comfortable. No major gameplay changes — just setting up your world to be livable.

### Install

This pack uses **GDLauncher** as the mod manager and launcher. See [MODLIST.md](./MODLIST.md#gdlauncher) for setup instructions — create a 1.21.1 NeoForge instance and install all Wave 0 mods through GDLauncher's Addons tab. All mods in this pack are available on CurseForge (every link in MODLIST.md points to CurseForge), and GDLauncher installs from CurseForge directly.

See [MODLIST.md](./MODLIST.md#wave-0--foundation) for the full mod list.

### First Launch Settings

#### Video Settings

| Setting             | Recommended    | Notes                                                                   |
|---------------------|----------------|-------------------------------------------------------------------------|
| Graphics            | Fabulous       | Sodium makes this performant now                                        |
| Render Distance     | 10 chunks      | Keep low — Distant Horizons handles everything beyond this              |
| Simulation Distance | 8 chunks       | Controls entity ticking range; lower = less lag from distant mobs/farms |
| Brightness          | Moody → Bright | Personal preference — Bright makes caves easier to see                  |
| VSync               | OFF            |                                                                         |
| Max Framerate       | Uncapped       |                                                                         |

#### Distant Horizons Settings

Open **Video Settings → [colored tiles icon]** (next to FOV slider). With Complementary Unbound Ultra at 4K, the shader is already taxing the GPU — DH LOD geometry still goes through the full shader pipeline (lighting, shadows, AO). Recommended for RTX 4080 Super + AMD 9900X:

| Setting                    | Value       | Notes                                                                            |
|----------------------------|-------------|----------------------------------------------------------------------------------|
| Enable Rendering           | ON          |                                                                                  |
| Enable Distant Generation  | ON          |                                                                                  |
| LOD Render Distance Radius | **128-256** | Start at 128; try 256 if FPS stays comfortable. 384+ with shaders at 4K is heavy |
| Quality Preset             | **Medium**  | High adds geometry that the shader must process per-pixel — cost multiplies      |
| CPU Load                   | Aggressive  | 9900X has 24 threads; CPU isn't the bottleneck here                              |
| Enable Cloud Rendering     | OFF         | Let Complementary Unbound handle clouds — double-clouding wastes GPU             |
| Show LOD Gen Progress      | ON          | Helps confirm generation is working                                              |

DH auto-detects thread count — no need to set LOD Update Threads manually. The mod generates LOD data as you explore; first visit to an area will have temporary pop-in. Terralith + Tectonic complex terrain may take longer to generate initially. Monitor VRAM usage — shaders at 4K + DH LODs can push past 12GB on the 4080 Super's 16GB buffer.

#### Performance — Install and Forget

These mods work automatically with no configuration. Install them and they optimize rendering, chunk generation, and entity processing in the background:

| Mod                 | What it does                                                                             |
|---------------------|------------------------------------------------------------------------------------------|
| **Lithium**         | Server-side game logic optimization — faster entity AI, block updates, and chunk physics |
| **ModernFix**       | Fixes performance bugs and memory leaks from other mods. All-in-one optimization         |
| **ImmediatelyFast** | Speeds up block and item rendering by using immediate-mode rendering where possible      |
| **Entity Culling**  | Stops rendering entities that are behind walls or off-screen. Free FPS                   |
| **Dynamic FPS**     | Reduces frame rate when Minecraft is in the background — saves GPU power                 |
| **NoisiumForked**   | Accelerates world generation — faster chunk creation when exploring                      |
| **FerriteCore**     | Reduces memory usage — fewer out-of-memory crashes in long sessions                      |

**No config needed** for any of these. Install, launch, forget.

#### Shader Setup

Place **Complementary Unbound** `.zip` in the `shaderpacks/` folder. Launch Minecraft, go to Options → Video Settings → Shaderpacks, select Complementary Unbound. It works with Iris on NeoForge.

#### Texture Packs

Six optional resource packs enhance vanilla visuals and UI:

| Pack                                                                                        | Role                                                                      |
|---------------------------------------------------------------------------------------------|---------------------------------------------------------------------------|
| [Fresh Animations](https://www.curseforge.com/minecraft/texture-packs/fresh-animations)     | Living entity animation overhaul — mobs blink, look around, show emotion  |
| [Alacrity](https://www.curseforge.com/minecraft/texture-packs/alacrity)                     | Full 32x conversion — RPG-themed textures, GUI overhaul, custom 3D models |
| [Enhanced Boss Bars](https://www.curseforge.com/minecraft/texture-packs/enhanced-boss-bars) | Redesigned boss bars with themed designs for vanilla and modded bosses    |
| [RAY's 3D Rails](https://www.curseforge.com/minecraft/texture-packs/rays-3d-rails)          | 3D block & item textures for all rail types                               |
| [3D Ladders](https://www.curseforge.com/minecraft/texture-packs/nicos-3d-ladders)           | 3D model replacement for ladders                                          |
| [Better Lanterns](https://www.curseforge.com/minecraft/texture-packs/better-lanterns)       | Enhanced 3D look for lanterns and chains                                  |

**Installation**: Install via GDLauncher — drop `.zip` files into the instance's `resourcepacks/` folder. Load order (top = highest priority):

1. Fresh Animations
2. Alacrity
3. Alacrity — Just Enough Items Support
4. Alacrity — Shulker Box Tooltip Support
5. Enhanced Boss Bars
6. RAY's 3D Rails
7. 3D Ladders
8. Better Lanterns

Alacrity provides the base 32x textures and GUI overhaul. Place Fresh Animations above it so entity animations override correctly. Place the Alacrity support packs **below** the base Alacrity pack — putting them above causes corrupt JEI/Shulker graphics. The 3D model packs (Rails, Ladders, Lanterns) are pure model overrides with no resolution conflict — they work at any texture scale.

#### Keybindings (Set These Up First)

Many mods add their own keybinds. Open **Options → Controls → Key Binds** and browse the categories at the bottom — each mod's binds are grouped under its name. The most useful ones to set:

- **View Recipes** (`R`) and **View Uses** (`U`) — JEI
- **Open Backpack** (`B`) — Sophisticated Backpacks
- **Zoom** (`C`) — Sodium
- **Open Waystone Menu** — Waystones (unbound by default)
- **Open Fullscreen Map** (`J`) — JourneyMap

### Session Plan — Wave 0

Your first session is about getting comfortable. Don't rush — this wave has zero progression pressure.

| Session                         | Goal                                                                                                                                                                                                                             |
|---------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Session 1 — Setup**           | Launch the game. Set keybinds (Ctrl+Shift+W for Waystones, C for zoom). Open Mod Menu to confirm all mods loaded. Configure Distant Horizons (LOD 384-512, High quality, Aggressive CPU). Walk around spawn to generate LOD data |
| **Session 2 — Survival basics** | Punch trees, build a starter shack, find food, get iron. Place your first Waystone at your base. Craft a Sophisticated Storage barrel for organized storage. Craft a backpack, equip it, set hotkey                              |
| **Session 3 — Comfort**         | Explore nearby terrain. Find a village. Set up a bed. Install the Complementary Unbound shaderpack if desired. Make torches and light up your base perimeter                                                                     |
| **Ongoing**                     | LambDynamicLights lights your way as you hold a torch. AmbientSounds plays nature music automatically. Chunk Loaders wait until you have automation to protect — place one at your base and forget it                            |

### Using Wave 0 Mods

#### JEI (Recipe Viewer)

Your primary learning tool. Hover any item and press `R` to see how to craft it, `U` to see what it's used in. Every mod in future waves is learned through JEI first.

#### Jade + Jade Addons (Block Info)

Jade shows what block you're looking at and extra information about it — modded machine status, crop growth stage, chest contents, and more.

**How to use**:

- Look at any block. A HUD panel shows the block name, mod source, and relevant data
- Press the keybind (Controls → Jade → Open Config, or hold the key while looking at a block) to adjust what information is shown
- **Jade Addons** extends Jade with panels for Create (SU/RPM), Mekanism (energy/gas), AE2 (channel info), and other modded machines

**Pro tip**: Keep Jade enabled. It's the fastest way to check if a machine is running, a crop is ready, or a chest contains specific items.

**Enhanced Boss Bars**: To avoid conflicts with the custom boss bar display, turn off Jade's own boss bar:

> Main Menu → Mods → Jade → Config → Mod Settings → Display Bosses → OFF

#### AppleSkin (Food Info)

AppleSkin adds a visual overlay to your hunger bar showing exactly how much hunger and saturation food will restore before you eat it.

**What it shows**:

- **Hover over food** in your inventory or JEI — see exact hunger and saturation values
- **Pre-eat preview** — your hunger bar shows dashed outlines for what the food will fill
- **Saturation overlay** — a second layer on the hunger bar shows your hidden saturation stat

**No config needed** — install and forget.

#### Polymorph (Recipe Conflicts)

When two mods have different recipes for the same item (common in a 133-mod pack), Polymorph lets you choose which recipe to use at the crafting table.

**How it works**:

1. Place ingredients in the crafting grid as usual
2. If multiple recipes match, a small selection button appears next to the output slot
3. Click it to cycle through available recipes and pick the result you want
4. The selection persists for that ingredient combination until you change it

**No config needed** — works automatically. Most relevant when crafting basic materials like planks, ingots, or components that multiple mods define.

#### Sophisticated Storage & Backpacks

Craft a barrel (1 chest + 8 planks) for early storage. Upgrade with iron/gold/diamond/netherite upgrades. Backpack in your chest armor slot, press `B` to open.

#### Waystones

Craft a waystone and right-click to claim it. Use the Warp Stone (ender pearl + amethyst) to teleport from anywhere. No XP costs. Set keybind to `Ctrl+Shift+W`.

#### GraveStone Mod

When you die, a grave spawns with your items. No item loss, no despawning. Just walk back and right-click the grave.

#### AmbientSounds + The Immersive Music Mod

AmbientSounds adds nature sounds (birds, wind, water) based on your biome and time of day. [The Immersive Music Mod](https://www.curseforge.com/minecraft/mc-mods/the-immersive-music-mod) adds 147 new songs selected by biome and structure — plays like vanilla with natural silence gaps, no config needed.

#### BetterF3

Press `F3` to see the cleaner debug HUD. Customize what's shown in Mod Menu → BetterF3 → Config. Toggle individual modules (FPS, coordinates, biome, light level) without the clutter.

#### LambDynamicLights

Equip a torch or glowstone block → it emits light around you. Works in the off-hand too. Toggle via keybind `Ctrl+L`.

**Pro tip**: Hold a torch in your off-hand while mining — no more placing torches every 5 blocks.

#### Sound Physics Remastered

Makes sound behave more realistically — muffled through walls, echo in caves, directional audio. Works automatically with any sound pack.

#### JourneyMap

JourneyMap replaces the minimap and full-screen world map with a single mod. It automatically maps every chunk you visit and displays it on both a corner minimap and a full-screen map.

**Key features:**

- **Minimap** — top-right corner of the screen shows your immediate surroundings with entity dots and cardinal directions
- **Full-screen map** (`J`) — zoomable world map showing every explored chunk. Biome colors, terrain height, and structure markers
- **Waypoints** — press `B` at your location to drop a waypoint, or set one on the map. Custom icons, colors, and groups
- **Entity radar** — shows nearby mobs, animals, and players on the minimap
- **Auto-mapping** — every chunk you walk through is permanently mapped. No manual save needed

**JourneyMap Integration** shows your placed Waystones as icon markers on the JourneyMap, making them easy to locate from the full-screen view without placing manual waypoints.

**Pro tip**: Press `J` to open the full-screen map. Right-click to set a temporary waypoint. Double-click a waypoint name to edit it. Use the minimap corner buttons to toggle radar and zoom levels.

#### Mouse Tweaks

Inventory management shortcuts: left-click drag across slots → distributes evenly. Right-click drag → places one per slot. Scroll wheel on a stack → moves one to another inventory.

#### Inventory Essentials

Adds essential inventory control enhancements that work alongside Mouse Tweaks without overlap:

- **Ctrl+click** a single item from a stack — moves one item instead of the whole stack
- **Shift+Ctrl+click** — moves all items of that type from one inventory to another
- **Sort buttons** on chest and inventory GUIs — single-click sorting
- Works with any inventory type (chests, barrels, backpacks, ME terminals)

No config needed — install and forget. Pairs with Mouse Tweaks (drag-to-distribute) for complete inventory control.

#### Curios API (Accessory Slots)

Opens extra equipment slots on your character: ring, amulet, belt, gloves, charm, back, and more. Press the Curios keybind (check Controls) to open the Curios inventory. Relics RPG accessories and other Curios-compatible items go in these slots.

#### Reliable Advancements

Reliable Advancements overhauls the vanilla advancements screen — larger UI, pan/zoom controls, tab sorting, and a built-in advancement editor. Open it from the usual advancements key (`L` by default). Pairs well with Fancy Toasts (the animated popups you see when earning an advancement).

No configuration needed. Install and forget.

#### BlazeandCave's Advancements Pack (Data Pack)

This data pack adds **1000+ new advancements** across 16 tabs — mining, building, farming, combat, exploration, redstone, brewing, enchantments, and more. It tracks milestones like mining every ore type, collecting every wood variant, killing every mob, and discovering every biome.

**Installation**: Install via GDLauncher's Addons tab (from CurseForge), or download the `.zip` and place it in the world's `datapacks/` folder. In-game, run `/datapack enable "blazeandcave/advancements"`. Works alongside Reliable Advancements (UI) and Fancy Toasts (popups) without conflict.

**What it adds**: Thousands of hours of optional side goals. Everything is tracked through the vanilla advancement system — open with `L` to browse the 16 tabs and see what's available.

#### Loot Journal

Shows animated pickup notifications when items enter your inventory and tracks session statistics.

**What it does**:

- **Pickup popups** — items you pick up appear as animated icons near your hotbar with quantity counters
- **Session summary** — when you disconnect, a summary shows what you gained and lost during the session
- **Statistics** — cumulative drop tracking across all sessions

**Config** (via Mod Menu → Loot Journal):

- `writeSessionJson` = `true` — Saves per-session gain/loss data (default)
- `writeStatisticsJson` = `true` — Builds cumulative drop statistics (default)
- `showSummaryOnDisconnect` = `true` — Shows session summary on disconnect (default)

Default settings work well — no changes needed.

#### Immersive UI

Immersive UI adds subtle animation and polish to the game interface — the hotbar slides smoothly, items have gentle particle effects, and menus feel responsive rather than instant-teleport.

**What it changes**:

- Smooth hotbar selection sliding
- Item pickup particles in the UI
- Animated tooltips and menu transitions
- Crafting grid visual feedback

**No config needed** — install and forget.

#### Traveler's Titles

Displays an RPG-style title card when you enter a new biome or dimension — large text with a subtitle fades in, lingers, and fades out.

**What it shows**:

- **Biome entry** — name of the biome with a thematic subtitle
- **Dimension entry** — dimension name with an atmospheric description (e.g., "The Nether — A Hellish Landscape")
- **Height change** — entering deep caves or high mountains triggers a title

**No config needed**. If titles feel too frequent, adjust display time in Mod Menu → Traveler's Titles → Config.

#### Better Modlist

Overhauls the Mod Menu list screen with badges, categories, and search — makes finding and configuring mods much faster.

**What it adds**:

- **Badges** — visual tags showing mod type (library, core, addon, utility)
- **Categories** — mods grouped by role
- **Search** — type to filter the mod list
- **Improved layout** — more mods visible per page, cleaner scrolling

**No config needed** — install and forget.

#### Better Third Person

Better Third Person decouples your camera from your character in third-person view. You can look around independently while your character walks in any direction — essential for combat awareness and scenic building.

**How to use**:

- Press the toggle keybind (default: not set — bind it in Controls → Better Third Person)
- Once active, your character model moves independently of the camera
- Great for combat: look behind you while running away
- Great for building: orbit the camera around your build while placing blocks
- Your character model moves independently — useful for combat and building

**No config changes needed** — default settings work well.

#### Tooltip Overhaul

Tooltip Overhaul redesigns the tooltip appearance — rounded corners, smoother background, better text contrast, scrollable tooltips, text wrapping, and 3D item previews on hover. Frames can be styled with glint, static, or gradient borders.

**No config needed** — install and forget.

#### Eating Animations

Adds a first-person eating and drinking animation — food moves to the player's mouth and shrinks as it's consumed. Works in the inventory HUD too (configurable in `eatinganimation-client.toml`). Compatible with Farmer's Delight foods.

**No config needed** — install and forget.

#### Sounds

Adds 170+ new sound effects for UI interactions, menu clicks, item drops, eating, drinking, achievements, and block actions. Every vanilla action feels more tactile.

**Dependency**: Requires [M.R.U](https://www.curseforge.com/minecraft/mc-mods/mru) library (installed automatically as part of Wave 0).

**No config needed** — install and forget. If any sound feels off, customize individual sound events in Mod List → Sounds → Config, or directly in `config/sounds/`. All 170+ sound categories can be individually enabled/disabled and volume-adjusted.

**Suggestions**:

- **If a sound annoys you**: find its category in the config screen and disable it individually — you don't need to mute the whole mod
- **Adding sounds for modded content**: Sounds supports custom resource packs that define sound events for other mods' items, blocks, and screens. Check the [Sounds documentation](https://docs.imb11.dev/sounds/) for the definition format
- **Conflicts with Sound Physics Remastered**: None — Sounds handles UI and item feedback, Sound Physics handles environmental acoustics. They complement each other

~~#### Tiny Item Animations~~ — Removed. Conflicts with Immersive UI (both hook into inventory item rendering). Use Immersive UI's built-in item particles instead.

#### Status Effect Bars Reforged

Adds small customizable progress bars to status effect icons in the HUD and inventory, showing remaining duration at a glance. Features a config screen (via Cloth Config) to adjust colors and bar position. Bars auto-hide for beacon effects and very long durations to reduce clutter. No known conflicts with Immersive UI — Status Effect Bars targets the effects overlay, while Immersive UI animates the hotbar and menus.

#### Particular Reforged

Enhances Minecraft's ambience with hand-crafted visual effects: 3D water splashes, waterfall cascades, fireflies in warm biomes at dusk, falling leaves that ripple on water, cave dust proportional to depth, bubbles from underwater chests, rain ripples, and cake-eating particles. Every effect can be individually toggled in the config.

**All features are toggleable** — if any effect feels excessive, disable it in `config/particular.json`.

#### Beautiful Enchanted Books [Mod Edition]

Replaces the generic enchanted book texture with unique, themed textures per enchantment type — Protection books look different from Sharpness books, making your library visually informative.

**No config needed** — install and forget. Standalone mod; no resource pack required.

#### Chunk Loaders — Infrastructure

Chunk Loaders keep specific chunks loaded even when you're far away or in another dimension. Essential for keeping factories, farms, and your colony running.

**Types of Loaders:**

- **Single Chunk Loader** — keeps 1 chunk loaded forever. No fuel needed. Use to keep one machine or farm running
- **Spotloader** — handheld, temporarily loads an area while you explore nearby
- **Multi Chunk Loader** — loads a 3×3 chunk area. Use for your entire base or factory complex

**How to use:**

1. **Craft a Single Chunk Loader** (check JEI — requires iron, redstone, and ender pearl)
2. **Place it** at the center of the area you want to keep loaded
3. **Right-click** to toggle it on — a colored border shows the loaded chunk
4. **Done.** The chunk stays loaded across all dimensions

**Early game (Phase 1 — Cozy Roots):**

- You don't need chunk loaders yet. Your base is small, nothing is automated, and you're always nearby.
- **Wait until you have automation that runs without you.** Your first loader goes down when you build something that keeps working while you explore — a Create water wheel powering a millstone, a furnace array, or a small farm.
- **When you place one**: Put a **Single Chunk Loader** at your starter base covering your first Create setup (water wheel + millstone + mechanical press) and your Sophisticated Storage barrel wall. This keeps your early processing running while you gather resources.

**Late game (Phase 2+ — Industrial Ascent & Perpetual Ascent):**

- Multiple loaders are essential. Your base sprawls across dozens of chunks — Mekanism factories, AE2 networks, Create contraptions, MineColonies, and multi-dimension operations all need to tick when you're not there.
- **Upgrade to Multi Chunk Loaders** for factory complexes. A 3×3 area covers a Mekanism chemical plant or a Create factory wing. Single loaders are for isolated machines or outposts.
- **Where to place them:**

  | Priority | Location                                                                         | Loader type        | Why                                                                        |
  |----------|----------------------------------------------------------------------------------|--------------------|----------------------------------------------------------------------------|
  | 1        | **Main base** (ME drive room, Mek induction matrix, Create power core)           | Multi Chunk (3×3)  | Keeps everything running — autocrafting, power generation, ore processing  |
  | 2        | **MineColonies colony** (Town Hall center)                                       | Single or Multi    | Keeps workers active, guards patrolling, buildings constructing            |
  | 3        | **Mining outposts** (Digital Miner, quarry)                                      | Single             | Keeps the miner running while you're off exploring or in another dimension |
  | 4        | **Other dimensions** (Nether fortress farm, End island, Aether, Twilight Forest) | Single per outpost | Keeps farms and processes ticking across all dimensions                    |

- **Loaders work in any dimension**: Nether, The End, The Aether, Twilight Forest — a loader keeps that chunk ticking no matter where you are.
- **No performance concern**: You can place as many as you need. Each loaded chunk adds some CPU time, but a dozen loaders is negligible on a modern CPU like the 9900X. Only start worrying if you have 50+ loaders across a massive base.

**Config**: No changes needed. Default range (1 chunk per loader) and recipe costs are appropriate.

---

## Wave 1 — Tech (Create + Mekanism + AE2)

The biggest wave. Three industry-standard mods that together form a complete tech ecosystem. Wave 1.5 (Colony Management) runs alongside this — start your colony after you have basic Create power.

### Install

See [MODLIST.md](./MODLIST.md#wave-1--tech-create--mekanism--ae2). Install all three core mods at once.

### How They Fit Together

| Problem                 | Solution                                                      |
|-------------------------|---------------------------------------------------------------|
| Early power             | Create: water wheels, windmills                               |
| Ore processing          | Mekanism: from 2x to 5x ore multiplication                    |
| Item transport          | Create: conveyor belts, chutes, funnels                       |
| Factory automation      | Create: deployers, sequenced crafters, mechanical arms        |
| Digital storage         | AE2: ME drives store thousands of items in one block          |
| Autocrafting            | AE2: pattern-provider autocrafting                            |
| Mid-game power          | Mekanism: gas-burning generators, solar, wind                 |
| Endgame power           | Mekanism: fusion reactor                                      |
| Endgame armor           | Mekanism: MekaSuit (flight, invulnerability, fire resistance) |
| Long-distance transport | Create: trains                                                |

---

### Create — Mechanical Automation

Create is about **rotational power**. Every Create machine needs rotational force to work. You generate this force, transfer it through shafts and belts, and use it to power machines.

#### The Three Core Concepts

| Concept                   | What it means                                                                                     | Why it matters                                                                             |
|---------------------------|---------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------|
| **Rotational Power (SU)** | Every Create source generates Stress Units (SU). Machines consume SU to run                       | If total SU consumption exceeds generation, machines stop. Add more sources or reduce load |
| **Stress Capacity**       | Shafts and gearboxes can only handle so much SU before breaking                                   | Use reinforced shafts for high-stress networks. Spread load across multiple lines          |
| **Speed vs Force**        | Speed (RPM) determines how fast a machine processes. Force determines how much load it can handle | Gear ratios matter: small gear on large gear = slow + strong. Large on small = fast + weak |

#### Learning with Ponder

Create has a built-in interactive tutorial called the **Ponder system**. Hold `W` while hovering over any Create block or item in JEI or your inventory. An animated scene plays showing exactly how the block works, what it connects to, and what it does.

**Use Ponder constantly.** It is better than any written guide. Every Create player learns through Ponder first.

For deeper tutorials, watch **Simi Cats** on YouTube — the [Create playlists](https://www.youtube.com/channel/UCrKV2QTuyGcv4E3eSJpBiYA/playlists) cover everything from basic mechanical power to advanced factories and trains.

#### First Create Machines

Your goal: build a simple processing line for early materials.

**Step 1 — Gather basic components:**

- Mine **andesite** — the most important early resource. You need lots of it
- Craft **andesite casing** (andesite + wood nugget in JEI) — the basic building block of all Create machines
- Craft **cogwheel** and **large cogwheel** — transfer rotational power

**Step 2 — Build a hand-cranked system:**

1. Craft a **hand crank** — place it on the ground
2. Attach a **cogwheel** next to it — right-click the crank to spin it manually
3. Attach a **millstone** to the cogwheel — right-click the millstone, put wheat or ore in

This is your first Create setup. It's slow but it works without any power source.

**Step 3 — Build a water wheel:**

1. Place **water source blocks** flowing downhill (2-3 blocks drop)
2. Place a **water wheel** in the flowing water — it starts spinning
3. Attach a **shaft** to the wheel — rotational power flows through it
4. Use **gear boxes** to change direction or split power

A water wheel generates 256 SU when placed in flowing water. This is enough to power 2-3 basic machines.

**Step 4 — Automate processing:**

1. **Mechanical press** — press ingots into plates, press plates into mechanisms
2. **Millstone** — grind ores into dust (doubles output for smelting)
3. **Mechanical mixer** — mix ingredients into alloys and compounds

Connect each machine to your power line with cogwheels. Right-click with a **wrench** to adjust direction.

#### Mid-Game Create

Once you have brass (from zinc + copper in a heated mixer), you unlock:

| Machine               | What it does                                                              |
|-----------------------|---------------------------------------------------------------------------|
| **Deployer**          | Places blocks or uses items from its inventory. Automates crafting        |
| **Sequenced crafter** | Runs a multi-step crafting sequence automatically. Your first autocrafter |
| **Mechanical arm**    | Moves items between inventories. Replaces conveyor belts                  |
| **Chute & Funnel**    | Vertical item transport with filtering                                    |
| **Train station**     | Build tracks, assemble trains, transport bulk items between bases         |

**Brass progression**: Find zinc ore (generates in the world alongside copper) → Mix zinc + copper in a heated mixer → Brass ingots → Brass casing → Advanced machines.

**Blueprint system**: Craft a **blueprint and quill**. Select an area, save it as a blueprint. Place a **deployer** with the blueprint to automatically build it. This is how you replicate factory sections.

#### Create Keybindings

| Keybind               | Default                 | What it does                                  |
|-----------------------|-------------------------|-----------------------------------------------|
| Open Ponder           | `W` (hold over block)   | Shows interactive animation for Create blocks |
| Open Toolbox          | `T` (hold)              | Quick-access tool menu                        |
| Wrench functionality  | Right-click             | Configure machine direction, dismantle        |
| Goggles functionality | `G` (hold over machine) | Shows SU consumption, RPM, and stress info    |
| Open Blueprint        | **Not set**             | Opens the blueprint editor                    |

**Goggles** are essential. Craft a pair of engineers goggles early (check JEI). Hold `G` while looking at any Create machine to see its SU consumption, current RPM, and whether it's overstressed.

---

### Create: Power Grid — Physics-Based Electricity

Power Grid adds a separate electricity system to Create (beyond SU). Generators produce voltage, cables carry it with realistic loss (Ohm's law), and motors consume it. It bridges to Forge Energy (FE) so your Power Grid can power Mekanism and AE2 machines — and vice versa.

#### Key Concepts

- **Voltage vs Current**: Generators produce a voltage. Cables have resistance. Machines draw current (amperage). Power (watts) = voltage × current.
- **AC vs DC**: Power Grid simulates both. Most generators produce AC, which travels farther but needs rectification for DC machines.
- **Cable loss**: Longer cable runs lose voltage. Use transformers to step voltage up (for long runs) then step it back down locally.
- **FE bridge**: Power Grid includes built-in FE conversion — connect an FE Converter to pull energy from any FE source (Mekanism, AE2 energy acceptor) into the grid, or push grid power to FE machines.

#### When to Build

Power Grid is a **mid-Phase 2 addition** — start after you have basic Create rotational power and have outgrown SU. The diesel engines from TFMG (below) feed into Power Grid naturally.

#### Ponder

Power Grid has full Ponder support. Hold `W` over any Power Grid block (generator, motor, cable, transformer) for animated walkthroughs.

---

### Create: The Factory Must Grow (TFMG) — Industrial Oil & Steel

TFMG extends Create into the oil age. Drill for crude oil, refine it into fuels, and burn them in diesel engines for massive rotational power. Produce steel at industrial scale and generate electricity with voltage management.

#### Core Concept — Oil Processing

Oil is the central resource of TFMG. You find it in the world, extract it, refine it, and use the byproducts.

**Finding oil**:

- Oil generates as underground pools (similar to Mekanism's oil, but separate)
- Find surface seepage in desert and plains biomes — dark patches on the ground
- Dig down to find oil-bearing sand/stone
- Use a **Pumpjack** (crafted from Create brass and steel) to extract oil automatically

**Refining crude oil**:

| Step | Machine                | Input           | Output                                    |
|------|------------------------|-----------------|-------------------------------------------|
| 1    | **Distillation Tower** | Crude oil       | Diesel, gasoline, LPG, lubricant, asphalt |
| 2    | **Cracker**            | Heavy fractions | Lighter fuels                             |
| 3    | **Desulfurizer**       | Diesel/gasoline | Clean fuel (more efficient)               |

Build a **Distillation Tower** (multi-block structure — minimum 4 blocks tall). Feed crude oil into the bottom. Products come out at different heights — lighter products (LPG, gasoline) exit higher, heavier products (diesel, lubricant) exit lower.

#### Diesel Engines — Massive Rotational Power

Diesel engines burn TFMG fuels to generate rotational power. A single diesel engine running on diesel fuel produces significantly more SU than any Create water wheel or windmill — enough to power an entire factory complex.

| Engine                  | Fuel             | SU Output  | Best for                         |
|-------------------------|------------------|------------|----------------------------------|
| **Small Diesel Engine** | Diesel, gasoline | ~2,000 SU  | Early oil — single machine power |
| **Large Diesel Engine** | Diesel, gasoline | ~8,000 SU  | Factory-scale power              |
| **Gas Turbine**         | LPG              | ~16,000 SU | Endgame power generation         |

**Fuel comparison**:

| Fuel      | Efficiency | Engine type   | Byproduct use                        |
|-----------|------------|---------------|--------------------------------------|
| Diesel    | High       | Diesel engine | Most efficient general fuel          |
| Gasoline  | Medium     | Diesel engine | Good backup fuel, less efficient     |
| LPG       | Very High  | Gas turbine   | Best power density, limited quantity |
| Lubricant | —          | Not a fuel    | Used in steelmaking and machines     |
| Asphalt   | —          | Not a fuel    | Decorative building blocks           |

**Note**: TFMG diesel engines are separate from Create's own steam engines. They provide more power per block but require the oil processing chain to run. Plan your progression: water wheel → steam engine → diesel engine.

#### Steel Blast Furnace

TFMG adds a multi-block **Steel Blast Furnace** for industrial-scale steel production. Unlike Mekanism's Metallurgic Infuser (which produces steel slowly), the Blast Furnace produces steel in bulk.

**Setup**:

1. Build the multi-block structure (check JEI/Ponder for the exact pattern)
2. Feed iron ingots and coal/coke into the top
3. Power with a diesel engine or Create rotational power
4. Liquid steel pours out the bottom — cast it into steel ingots or blocks

**Why use it**: Once you're producing oil and running diesel engines, the Blast Furnace produces steel faster than the Metallurgic Infuser. Use it to mass-produce steel for Mekanism machines, Create trains, and Stellaris rocket components.

#### Aluminum

TFMG adds aluminum as a new metal. **Bauxite ore** generates in the Overworld (typically at mid-to-high Y-levels). Process it through a multi-block smelter to produce aluminum ingots.

**Uses**:

- Aluminum is used in advanced TFMG machines
- Feeds into Mekanism's advanced alloy processing

#### Progression Notes

- TFMG is a **Wave 1 addition** — start exploring oil after you have basic Create (water wheel + hand crank) and basic Mekanism (Enrichment Chamber)
- The Distillation Tower requires brass-tier Create components (brass casing, brass funnels)
- Diesel engines are a mid-to-late game power upgrade — they replace/supplement water wheels and windmills
- **TFMG Energy Converter** (installed alongside TFMG) bridges TFMG's voltage-based electricity to Forge Energy (FE) and AE2 energy — wire your diesel generators into your ME system or Mekanism induction matrix. Requires **Kotlin for Forge** (included in Wave 0 dependencies)
- Mekanism TFMG Compatibility (installed alongside TFMG) resolves overlapping recipes between TFMG and Mekanism — see the config section below for details

---

### Mekanism — Industrial Processing

Mekanism is about **processing materials at industrial scale**. Its power system (Joules) is separate from Create's rotational power, but you can bridge them — **Create Crafts & Additions** provides electric motors and alternators (convert between kinetic SU and Forge Energy FE), and Create's built-in alternator also works.

For a step-by-step walkthrough, see the [Mekanism Getting Started Tutorial](https://wiki.aidancbrady.com/wiki/Tutorials/Getting_Started) on the official wiki. It covers your first Heat Generator, ore doubling, and the Tier system.

#### Finding Osmium

Osmium is Mekanism's primary ore. It generates underground at all levels, similar rarity to iron. Mine it with a stone pickaxe or better. Smelt raw osmium into osmium ingots.

#### The Tier System

Every Mekanism machine comes in 4 tiers:

| Tier     | Color    | Processing Speed | Upgrade Recipe                   |
|----------|----------|------------------|----------------------------------|
| Basic    | Orange   | 1x               | Starting tier — crafted directly |
| Advanced | Red      | 2x               | Basic + osmium + redstone        |
| Elite    | Dark Red | 4x               | Advanced + diamond + obsidian    |
| Ultimate | Purple   | 8x               | Elite + refined obsidian + alloy |

Upgrade by shift-right-clicking a machine with the next tier's upgrade item.

#### Step 1: 2x Ore Processing

Your first Mekanism setup:

1. **Heat Generator** — place lava source below it for early power
2. **Metallurgic Infuser** — combine osmium with carbon (coal/charcoal) to make **steel ingots**
3. **Enrichment Chamber** — 1 ore → 2 dust. Smelt dust → 2 ingots. This is 2x processing

Chain: `Mine ore → Enrichment Chamber → 2 dust → Furnace → 2 ingots`

**Osmium processing**: Mine raw osmium → Enrichment Chamber → osmium dust → Furnace → osmium ingots. Then combine osmium ingots + carbon in the Metallurgic Infuser to make steel.

#### Advanced Processing Chains

Mekanism offers multiple ore processing multipliers:

| Multiplier | Machines needed                                  | Process                                                                                                  |
|------------|--------------------------------------------------|----------------------------------------------------------------------------------------------------------|
| 2x         | Enrichment Chamber                               | Ore → 2 dust → smelt → 2 ingots                                                                          |
| 3x         | Enrichment Chamber + Crusher                     | Ore → dust → dirty dust → 2x Enrichment → 3 dust → smelt → 3 ingots                                      |
| 5x         | Full chemical line (requires gas infrastructure) | Chemical Dissolution Chamber (sulfuric acid) → Washer (water) → Crystallizer → 5 dust → smelt → 5 ingots |

**Practical early setup**: Start with 2x using just an Enrichment Chamber. This is good enough for early game. Move to 5x processing when you have power to spare — the chemical line needs significant Joules to run.

**The 3x chain step by step:**

1. Enrichment Chamber: ore → dust
2. Crusher: dust → dirty dust  
3. Enrichment Chamber: dirty dust → dust (second pass = 3x total)
4. Furnace: dust → ingots

#### Gas Infrastructure

Mekanism adds gases as a resource type. You need them for high-tier processing:

| Gas           | Produced by                            | Used for                     |
|---------------|----------------------------------------|------------------------------|
| Hydrogen      | Electrolytic Separator (split water)   | Power generation, processing |
| Oxygen        | Electrolytic Separator (split water)   | Chemical processing          |
| Sulfuric Acid | Chemical Infuser (sulfur + oxygen)     | 5x ore processing            |
| Deuterium     | Electrolytic Separator (heavy water)   | Fusion reactor fuel          |
| Tritium       | Chemical Infuser (lithium + deuterium) | Fusion reactor fuel          |

**Gases move through pressurized tubes.** Craft **mechanical pipes** (basic) or **pressurized tubes** (for gas). Connect a **Rotary Condensentrator** to convert gas ↔ liquid for storage in standard tanks.

#### Digital Miner

The digital miner is Mekanism's automated mining machine. It's a mid-game goal.

**How to use:**

1. Craft the **Digital Miner** and place it
2. Right-click to open its GUI
3. Set a **radius** (default 32 blocks, increase up to 64)
4. Set a **filter** — by default it mines everything. Add whitelist/blacklist filters for specific ores
5. Supply power — the miner needs significant energy (4x the normal rate)
6. Press "Start" — it scans the area and begins mining

**Tip**: Set the miner to only mine ores (add an ore dictionary filter). This prevents it from filling with stone.

#### Fusion Reactor (Endgame)

The fusion reactor is Mekanism's endgame power source. It produces millions of Joules per tick — enough to power your entire base, charge a MekaSuit, and run every machine simultaneously.

**Fuel production chain:**

1. Pump water into an **Electrolytic Separator** → produces hydrogen + oxygen
2. Process hydrogen through a series of machines to produce **deuterium** (check JEI for the exact chain — involves Chemical Infuser with specific catalysts)
3. Combine deuterium + lithium in a **Chemical Infuser** → **tritium**  
4. Feed both deuterium and tritium into the **Fusion Reactor** using pressurized tubes
5. The reactor generates power once it reaches ignition temperature (right-click to start)

**Note**: The fusion reactor is expensive to build and requires significant infrastructure. It's a Phase 3 project. Work up through Mekanism's generator tiers (heat → gas-burning → bio-generator) first.

---

### AE2 — Applied Energistics 2

AE2 is about **digital item storage** and **autocrafting**. Instead of chests full of items, everything lives in an electronic network that you access from a single terminal.

#### Finding Certus Quartz

Certus quartz generates in two ways:

- **Meteorites** — Look for circular depressions on the surface. Dig down to find a meteorite containing certus quartz blocks and a **sky stone chest** with free AE2 components
- **Ore veins** — Certus quartz ore generates underground. Mine it with a pickaxe

**Processing certus quartz:**

1. Certus quartz block → mine → certus quartz item
2. Craft into **certus quartz dust** (use a crafting table or macerator)
3. Smelt dust → **certus quartz crystal**
4. Charge crystals in an **AE2 Charger** (requires power) → **charged certus quartz**

#### The Channel System

AE2 has a **channel system** that limits how many devices can connect through a single cable. This is the hardest concept for new players.

| Cable type           | Channels carried | Visual indicator                       |
|----------------------|------------------|----------------------------------------|
| ME Glass Cable       | 8                | No indicator                           |
| ME Smart Cable       | 8                | Colored lines show channel usage (1-8) |
| ME Dense Smart Cable | 32               | Thicker cable, colored lines           |
| ME Cover Cable       | 8                | Can be hidden in walls                 |

**Channel rules:**

- Each cable can carry 8 channels (32 for dense)
- Each ME Controller face provides 32 channels
- Each device (drive, terminal, bus) consumes 1 channel
- If you exceed channels, devices show "no power" (colorless cables)

**Managing channels:** Use **ME Smart Cable** everywhere — the colored lines instantly show you how many channels you're using (yellow = 1, green = 2, blue = 4, etc.).

#### Your First Network

**Step 1 — Set up power:**
AE2 devices need power (not Create or Mek power — AE2's own power system). Build a **vibration chamber** or **AE2 energy acceptor** and connect any power source (Create alternator or Mekanism generator).

**Step 2 — Build the controller:**
Craft an **ME Controller**. Place it. Connect power. Each face provides 32 channels — for your first network, one controller is enough.

**Step 3 — Add storage:**

1. Craft an **ME Drive** (holds up to 10 storage cells)
2. Craft **1k storage cells** (charged certus quartz + redstone + glass)
3. Place the drive next to the controller or connect via cable
4. Put cells in the drive

**Step 4 — Add a terminal:**
Craft an **ME Terminal** (or **ME Crafting Terminal** — essential, lets you craft from stored items). Place it anywhere on the network. Right-click to open — all your digital items in one screen.

#### Connecting to the World

| Device            | What it does                                                                     | Channel use |
|-------------------|----------------------------------------------------------------------------------|-------------|
| **ME Import Bus** | Pulls items from adjacent inventory into the ME network                          | 1           |
| **ME Export Bus** | Pushes items from the network into adjacent inventory                            | 1           |
| **Storage Bus**   | Treats an adjacent inventory as part of the ME network (no import/export needed) | 1           |
| **ME Interface**  | Exports items to the network AND accepts items for autocrafting                  | 1           |

**Practical setup:**

- Place an **Import Bus** on your furnace → smelted items go directly into ME storage
- Place a **Storage Bus** on a Sophisticated Storage barrel → the barrel's contents appear in your ME terminal
- Place an **Export Bus** on your Mekanism crusher → items flow from ME storage into the machine

#### Autocrafting

Once your network is running, set up autocrafting:

1. Craft **Patterns** (blank pattern + items in a crafting grid)
2. Put patterns in an **ME Pattern Provider**
3. Place the provider next to an **ME Molecular Assembler** (or use cables to connect them)
4. Request the crafted item from your terminal — AE2 pulls ingredients from storage, sends them to the assembler, and returns the result

**For Mekanism/Create machines:**
Use an **ME Interface** instead of pattern provider. Put the pattern in the interface, and the interface exports ingredients to the adjacent machine and accepts the result back.

#### Subnetworks (Advanced)

When your network grows beyond 32 channels, build a **subnetwork**:

1. Place a second **ME Controller** somewhere
2. Connect it to the main network via **ME P2P Tunnel** (or use **ME Quantum Link** for wireless)
3. The second controller provides 32 more channels
4. Run **ME Dense Smart Cable** between controllers

**Alternative**: Use **P2P tunnels** to compress 32 channels through a single cable.

#### AE2 Keybindings

| Keybind                | Default                          | What it does                               |
|------------------------|----------------------------------|--------------------------------------------|
| Open terminal          | Right-click on terminal          | Access all stored items                    |
| Open crafting terminal | Right-click on crafting terminal | Access + craft from storage                |
| View network status    | N/A                              | Right-click controller with a network tool |

---

### Mid-Game Integration

By mid-game, you should have all three mods working together:

| Layer                  | Mod                | What's happening                                                    |
|------------------------|--------------------|---------------------------------------------------------------------|
| **Power**              | Create             | Water wheels → windmills → steam engines power the base             |
| **Power supplement**   | Mekanism           | Heat generators → gas generators supplement Create power            |
| **Ore processing**     | Mekanism           | 3x processing chain (Enrichment Chamber + Crusher)                  |
| **Component crafting** | Create             | Mechanical press + deployers automate component crafting            |
| **Storage**            | AE2                | Import buses on all machines pull items into the ME network         |
| **Autocrafting**       | AE2                | Pattern providers + molecular assemblers craft on demand            |
| **Power bridge**       | Crafts & Additions | Electric motors/alternators convert kinetic SU ↔ FE (Mek/Stellaris) |
| **Rail transport**     | Steam 'n' Rails    | Expanded train system — new tracks, semaphores, coupling blocks     |
| **Transport**          | Create             | Conveyor belts move items between processing lines                  |
| **Oil processing**     | TFMG               | Distillation Tower → diesel, gasoline, LPG. Crack heavy fractions   |
| **Diesel power**       | TFMG               | Diesel engines produce 2,000–16,000 SU from refined oil             |
| **Steel production**   | TFMG               | Multi-block Blast Furnace produces steel in bulk                    |

### Mekanism TFMG Compatibility — Recipe Resolution

The **Mekanism TFMG Compatibility** mod resolves overlapping recipes between Mekanism and TFMG. Both mods add similar processes (steel production, oil processing, plastic/rubber), and this compatibility layer ensures they work together rather than redundantly.

**What changes**:

| Feature              | Resolution                                                                                                                                 |
|----------------------|--------------------------------------------------------------------------------------------------------------------------------------------|
| **Steel production** | Mekanism's steel recipe (Metallurgic Infuser) is disabled. Use TFMG's Blast Furnace instead — it's the intended steel source for this pack |
| **Oil processing**   | Both mods' oil types are unified. TFMG's Distillation Tower is the primary oil processor; Mekanism's oil chain feeds into it               |
| **Plastic / Rubber** | TFMG's plastic/rubber recipes take priority. Mekanism's polyethylene chain is disabled to avoid duplicate materials                        |
| **Circuitry**        | Mekanism's basic control circuit recipe uses TFMG's aluminum where applicable                                                              |

**Config**: All toggles are in `config/mekanismtfgmcompat-common.toml`. Default settings are correct for this pack — no changes needed unless you want to re-enable a specific Mekanism recipe.

### Late Game

- **AE2 autocrafting**: Set up pattern providers + molecular assemblers. Request any item, AE2 crafts it automatically from raw materials stored in the ME network
- **Mekanism digital miner**: Automated mining — place it, set radius and filters, it mines everything. Feed output directly into AE2 via import bus
- **Create trains**: Build tracks between bases. Assemble a train (engine + carriages). The train follows tracks automatically — use train stations to load/unload at each stop
- **Mekanism fusion reactor**: Endgame power. Requires deuterium + tritium from processed water

### Endgame

- **MekaSuit**: Mekanism's endgame armor. Full flight, extreme damage resistance, fire/lava immunity, underwater breathing, auto-feed. Powered wirelessly by your base's energy grid. This is the power fantasy goal
- **AE2 autocrafting CPU**: Complex multi-step autocrafting chains. Request advanced alloys and Mekanism components — AE2 crafts them from raw materials
- **Create mega-factory**: Massive conveyor networks, train stations at every mining outpost, automated farms for Mekanism biofuel. Build the factory you've always wanted

### Session Plan — Wave 1

Wave 1 is the largest and takes the most sessions. Pace yourself — each session adds one new capability.

| Session                                  | Focus                                                                                                                                                 | What to Build                                  |
|------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------|
| **Session 1 — Create basics**            | Mine andesite. Craft hand crank + millstone. Build a water wheel. Connect millstone → grind wheat and ore                                             | Power generation (256 SU), basic ore doubling  |
| **Session 2 — Mekanism start**           | Find osmium. Build Heat Generator + Enrichment Chamber + Metallurgic Infuser. 2x ore processing. Make steel                                           | Basic Mekanism line, steel for future projects |
| **Session 3 — AE2 discovery**            | Find a certus quartz meteorite. Mine it. Craft certus dust → smelt → charge. Build AE2 Charger                                                        | First certus quartz, charge infrastructure     |
| **Session 4 — AE2 network**              | Build ME Controller + ME Drive + 1k storage cells + ME Crafting Terminal. Place a Storage Bus on your Sophisticated Storage barrel                    | Your first digital storage network             |
| **Session 5 — Mid-game Create**          | Find zinc. Make brass. Build Deployer + Sequenced Crafter + Mechanical Arm. Automate a simple recipe                                                  | Component automation, brass-tier machines      |
| **Session 6 — Mekanism expansion**       | Add Crusher for 3x ore. Build Electrolytic Separator for gas processing. Upgrade machines to Advanced tier                                            | 3x ore multiplication, gas infrastructure      |
| **Session 7 — Integration**              | Place Import Bus on Enrichment Chamber → items flow into AE2. Place Export Bus to supply Create machines. Connect Create alternator to Mekanism power | Cross-mod automation bridge                    |
| **Session 8+ — Scaling up**              | Build Digital Miner. Expand AE2 drives. Add Create train between base and outpost. Work toward 5x ore processing                                      | Automated mining, bulk transport               |
| **Session 9 — TFMG start**               | Find oil (desert/plains surface pools). Craft Pumpjack + Distillation Tower. Build Small Diesel Engine. Process oil into diesel fuel                  | Oil refining online, massive SU upgrade        |
| **Session 10 — TFMG expansion**          | Build the multi-block Steel Blast Furnace. Mass-produce steel. Find bauxite for aluminum. Upgrade to Large Diesel Engine                              | Industrial steel, aluminum processing          |
| **Session 11+ — TFMG + Mek integration** | Wire diesel engines to power Mekanism processing. Use TFMG steel for Mekanism machines. Connect Mekanism TFMG Compatibility configs                   | Cross-mod fuel-to-processing pipeline          |

**Pacing tip**: You don't need to finish Wave 1 before starting Wave 1.5 (colony) or Wave 2 (exploration). Dip into exploration between factory sessions. The colony takes real-world days to grow, so start it early. TFMG oil is a mid-game addition — start it after you have brass Create components and basic Mekanism processing.

---

## Wave 1.5 — Colony Management

Your colony grows alongside your factory. MineColonies provides autonomous NPC workers that mine, farm, craft, and guard your base. Chunk Loaders (Wave 0) keep the colony running across dimensions.

### Install

See [MODLIST.md](./MODLIST.md#wave-1--tech-create--mekanism--ae2). These mods are listed in Wave 1's Colony Automation and Chunk Loading sections.

### MineColonies — Autonomous NPC Colony

MineColonies lets you build a functioning town of NPC workers. Each worker has a dedicated hut that you place, and they perform jobs autonomously — mining, farming, crafting, building, guarding.

#### Getting Started

1. **Craft the Town Hall** (check JEI) and place it on flat ground
2. **Right-click the Town Hall** — it opens the colony GUI
3. **Hire a Builder** — the Town Hall UI has a "Citizens" tab. Recruit a builder
4. **Place a Builder's Hut** near the Town Hall. The builder walks to it and claims it
5. **Supply materials** — put wood, cobblestone, and tools in the builder's chest (inside the hut)
6. The builder starts constructing buildings from blueprints

#### Core Worker Huts (build in this order)

| Hut             | Resource                 | What it does                                                           |
|-----------------|--------------------------|------------------------------------------------------------------------|
| **Mine**        | Coal, iron, stone        | Digs a shaft mine. Supplies your base with basic ores                  |
| **Lumberjack**  | Wood                     | Chops trees and replants saplings. Infinite wood                       |
| **Farmer**      | Wheat, carrots, potatoes | Plants, grows, harvests. Feeds your colony                             |
| **Guard Tower** | Defense                  | Guards patrol your base perimeter. Add more towers for larger bases    |
| **Crafter**     | Recipes                  | Crafts items from materials in storage. Set recipes in the crafter GUI |

#### Research Tree

Open the Town Hall → Research tab. Research points accumulate from worker activities. Key gates:

| Research              | Colony Level | Points | Unlocks                                |
|-----------------------|--------------|--------|----------------------------------------|
| Basic Industry        | 2            | 2000   | Better mine shafts, furnace automation |
| Advanced Smithing     | 3            | 4000   | Better tools for workers               |
| Industrial Revolution | 3            | 5000   | Mekanism Atomic Alloy recipe           |
| Logistics             | 4            | 8000   | Warehouse, courier delivery routes     |

**Tech gating**: The Atomic Alloy required for Mekanism's ultimate-tier machines can be set to require "Industrial Revolution" research. This ensures the player can't skip from Phase 1 straight to Phase 3 tech — the colony must grow alongside the factory.

#### Guard Scaling

The colony's defense scales with size:

- 1 Guard Tower → covers a 20-block radius
- Each additional tower adds coverage
- Guard equipment upgrades with your colony level (leather → iron → diamond)
- Guards from multiple towers patrol overlapping areas, creating a secure perimeter

#### Integrating With Your Tech

- **AE2 storage bus** on the colony warehouse chest → all colony resources accessible from your ME terminal
- **Create conveyor belts** can feed materials into the builder's chest for automated restocking
- **Farmer's Delight meals** can be supplied to the colony kitchen for worker happiness bonuses
- **Chunk Loaders** keep the colony running when you're exploring other dimensions

### Configuration — Wave 1.5

**MineColonies** — no config changes needed initially. Default colony settings (3-block worker range, normal build speed, 1-day child growth) are balanced. The mod's internal progression (builder→miner→farmer→crafter→guard, then research tree) naturally gates itself — you can't build a level 3 mine until you've leveled the builder and accumulated resources.

### Session Plan — Wave 1.5

The colony takes real-world time to grow. Sessions here are check-ins between other activities.

| Session                       | Focus                                                                                                                                                                     | What to Do                                                   |
|-------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------|
| **Session 1 — Foundation**    | Craft Town Hall, place it, hire Builder. Place Builder's Hut, supply materials (wood, cobble, tools). Start the first build                                               | Colony established, first building under construction        |
| **Session 2 — First workers** | Place Mine hut + Lumberjack hut. Supply tools and materials. Let them work while you explore or build factory                                                             | Passive resource income (wood, coal, iron)                   |
| **Session 3 — Farm + Guard**  | Place Farmer hut for food. Place Guard Tower for perimeter defense. Upgrade buildings to level 2                                                                          | Colony self-sufficient, base defended                        |
| **Session 4 — Research**      | Check Town Hall → Research tab. Spend accumulated research points on Basic Industry. Place Crafter hut                                                                    | First research unlocked, autocrafting in colony              |
| **Ongoing**                   | Check in every few sessions. Upgrade buildings, unlock more research, expand guard coverage. By Phase 2 your colony should be level 3 with Industrial Revolution research | Tech gate unlocked (Atomic Alloy), automated resource supply |

**Tip**: The colony is a long-term investment. Start it early (Session 1 of Wave 1.5), check on it periodically, and let it grow in the background. By the time you need Atomic Alloy for Mekanium, it'll be ready.

---

## Wave 2 — Exploration (World & Dimensions)

The world is larger, richer, and full of things to discover. Tectonic makes the terrain dramatic, Terralith adds overhauled biomes, YUNG's structures overhaul every vanilla structure, and three new dimensions open up at your own pace.

### Install

See [MODLIST.md](./MODLIST.md#wave-2--exploration-world--dimensions). Install all mods at once.

### Overworld

The Overworld is dramatically transformed. Every biome, structure, and cave system is overhauled.

#### Terrain Overhaul — Terralith + Tectonic

| Aspect               | What changed                                                                                                                            | What to look for                                                 |
|----------------------|-----------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------|
| **Mountains**        | Tectonic makes them taller and steeper. Terralith adds painted mountains (orange/white layers) and volcanic peaks                       | Build a base in a mountain valley with dramatic views            |
| **Oceans**           | Deeper and more varied — trench-like drops offshore                                                                                     | Use ships/boats to cross, lookout for ocean monuments            |
| **Biomes**           | Terralith adds 80+ overhauled biomes — redwood forests (200+ block trees), cherry groves, floating islands, painted mountains, and more | Cherry groves for vibes. Redwood forests for massive wood supply |
| **Caves**            | YUNG's Better Caves expands cave systems — wider tunnels, deeper chasms, more open spaces                                               | Caves are easier to navigate and more impressive. Bring torches  |
| **Rivers & Valleys** | Tectonic carves deeper river valleys. Terralith adds shattered savannahs (mesa-like)                                                    | Follow rivers for scenic travel. Build bridges with Create       |

**Pro tip**: Each of these worldgen mods works best in **newly generated chunks**. Load up a world and explore in any direction. The terrain variety means every direction has something different.

#### YUNG's Overhauled Structures

Every vanilla structure type is expanded:

| Structure                    | What's new                                                                                  | Loot expectation                                                           |
|------------------------------|---------------------------------------------------------------------------------------------|----------------------------------------------------------------------------|
| **Better Dungeons**          | Multi-room dungeons with spawners, traps, and treasure rooms                                | Good early loot — iron, gold, enchanted books                              |
| **Better Mineshafts**        | Larger, multi-level mineshafts with support beams and loot caches                           | Rail, minecarts, ore samples                                               |
| **Better Strongholds**       | End portal room is deeper. More libraries, prisons, and corridors                           | Enchanted books from libraries. Good mid-game exploration                  |
| **Better Desert Temples**    | Multi-room underground temple. Traps, puzzles, treasure vault                               | High-value loot in the vault room. Watch for pressure plates               |
| **Better Jungle Temples**    | Vertical temple with multiple challenge rooms. Redstone puzzles                             | Unique loot from solving puzzles. Opening the vault disarms the final trap |
| **Better Ocean Monuments**   | Redesigned with new rooms and challenges. More elder guardians                              | Better sponge room loot, treasure blocks                                   |
| **Better Witch Huts**        | Expanded hut on stilts with potion lab underneath                                           | Brewing supplies, potions, redstone                                        |
| **Better Nether Fortresses** | Larger, with distinct districts (blaze, wither skeleton, strider). Bridges connect sections | Nether wart, blaze rods, wither skeleton skulls                            |

#### Structory + Towns & Towers

Dozens of hand-crafted structures spawn across the Overworld. Some are small (camps, shrines), others are large (castles, towers, walled towns). Villages generate with unique architecture from Towns & Towers — each biome style gets its own building designs.

**What to do**: Explore! Mark interesting structures on your map (Xaero's: add waypoints with `Ctrl+Left Click` on the fullscreen map). Return to promising ones with an Explorer's Compass.

#### Explorer's Compass — Navigation Tool

The Explorer's Compass is essential for finding specific biomes and structures:

1. **Craft**: 1 compass + 4 iron ingots in a + pattern
2. **Right-click** to open the GUI
3. **Search tab**: Type a biome or structure name to filter. Supports partial matching — "cherry" finds all biomes with "cherry" in the name
4. **Select an entry**: The compass immediately points toward the nearest instance of that biome/structure. Distance in blocks is shown
5. **Follow the arrow**: Hold the compass in your main hand and walk. The arrow updates in real-time
6. **Waypoint sync**: When you find the target, add a waypoint in Xaero's map (fullscreen map → Ctrl+Left Click)

**Keybinding note**: The compass does not have its own keybind by default. Craft it, hold it, right-click. If right-click does nothing, check Controls → Explorer's Compass for a conflicting keybind.

### Underground & Ocean

Your exploration isn't limited to the surface. The underground has new cave biomes to discover, and the oceans are richer with life.

#### Darker Depths — Expanded Underground

Darker Depths adds 3 unique cave biomes that generate deep underground, each with its own atmosphere, resources, and threats:

| Biome               | Depth        | What to expect                                                 | Key resources                                                               |
|---------------------|--------------|----------------------------------------------------------------|-----------------------------------------------------------------------------|
| **Molten Cavern**   | Deep (Y < 0) | Lava pools, geysers, amber clusters, Dead Living Crystals      | Living Crystals (feed diamond to grow), Crystal Melons (temporary god-mode) |
| **Sandy Catacombs** | Mid (Y 0-20) | Petrified roots, aridrock, Void Soul mobs, Catacombs structure | Void Souls (bottle them), Forsaken Bronze (unique metal for tools/weapons)  |
| **Crystal Cavern**  | Any depth    | Growing crystals, crystal-infused blocks, glowing ambience     | Crystal materials for decorative and utility items                          |

**Key mechanic — Living Crystals**: Found as dead crystals in the Molten Cavern. Feed them a diamond to reawaken them. They grow over time and can spread to nearby diamond ore or transform melons into **Crystal Melons** — hold one in your off-hand to make any tool unbreakable with +20% speed and damage for 5 minutes (configurable).

**Key mechanic — Void Souls**: Found in the Sandy Catacombs. When a Void Soul mob is "killed," it transforms into an invulnerable orb that expires after 60 seconds. Capture it in a glass bottle. Use amber to prevent expiration. Forsaken Bronze crafted from void-touched materials has unique properties (death-related abilities).

**Compatibility**: Darker Depths' biomes generate inside YUNG's Better Caves' enlarged cave systems — they layer without conflict. Darker Depths replaces vanilla cave sections with themed biome variants.

#### Upgrade Aquatic — Richer Oceans

Upgrade Aquatic expands the ocean with new mobs, coral types, and ocean-floor features:

| Feature            | What it does                                                                                          |
|--------------------|-------------------------------------------------------------------------------------------------------|
| **Thrasher**       | A fantasy shark-like mob that uses sonar and thrashes prey. Drops thrasher teeth for trident crafting |
| **Ocean Ravines**  | Underwater ravines filled with Prismarine Coral — harvest for decorative blocks and materials         |
| **Nautilus**       | Passive mob that drops shells for conduit crafting                                                    |
| **Renewable sand** | Bubble columns below sandstone gradually convert stone to sand                                        |

**Integration**: Upgrade Aquatic items like thrasher teeth and prismarine coral are compatible with Ocean's Delight (Wave 4) for seafood recipes. YUNG's Better Ocean Monuments is compatible — Upgrade Aquatic doesn't modify monument structures.

---

### Immersive Aircraft — Flyable Vehicles

Immersive Aircraft adds vanilla-style aircraft that let you fly across the Overworld and between dimensions. Available in mid-game (requires iron and basic Create/Mek materials).

#### Aircraft Types

| Vehicle           | Fuel          | Seats | Cargo    | Best for                               |
|-------------------|---------------|-------|----------|----------------------------------------|
| **Biplane**       | Coal/charcoal | 1     | None     | Fast personal flight, combat strafing  |
| **Airship**       | Coal/charcoal | 3     | 9 slots  | Exploration with friends, cargo runs   |
| **Cargo Airship** | Coal/charcoal | 1     | 27 slots | Transporting materials between bases   |
| **Warship**       | Coal/charcoal | 3     | 9 slots  | Armed combat, colony defense support   |
| **Gyrocopter**    | Coal/charcoal | 1     | None     | Agile short-range flight, tight spaces |

#### How to Use

1. **Craft** an aircraft at a crafting table (check JEI — each requires iron, wool/leather, and basic components)
2. **Place** it on the ground — aircraft are placed blocks, not items
3. **Right-click** to enter. `W` to ascend, `S` to descend, `A/D` to rotate
4. **Fuel**: Any furnace fuel (coal, charcoal, lava buckets) goes in the aircraft's fuel slot
5. **Repair**: Craft with iron ingots to repair damage. Mobs can damage parked aircraft

**Keybinding**: Aircraft controls are bound to movement keys by default. Check Controls → Immersive Aircraft for custom bindings.

#### Progression Notes

- Aircraft are **mid-game** (Phase 2) — recipes require iron and basic Mekanism/Create components. They're not available on day one.
- An **airship** makes exploring Terralith's vast biomes, spotting YUNG'd structures, and reaching dimension portals dramatically faster.
- Aircraft work in the **Aether** — fly between sky islands without building bridges.
- Aircraft can be damaged by mobs and environmental hazards. Park them inside or on a high platform.
- **No config changes needed** — default fuel consumption and durability are balanced for the pack.

### Small Ships — Sailable Vessels

Small Ships adds buildable, sailable ships for ocean travel. Unlike aircraft, ships are **Phase 1 accessible** (require simple materials — wood, wool, iron) and serve as moveable water bases.

#### Ship Types

| Ship         | Crew | Cargo    | Best for                                  |
|--------------|------|----------|-------------------------------------------|
| **Brigantine** | 1    | 18 slots | All-purpose sailing, exploration          |
| **Cog**        | 2    | 27 slots | Cargo transport between coastal bases     |
| **Drakkar**    | 2    | 9 slots  | Fast travel, river navigation, combat     |
| **Galley**     | 1    | 9 slots  | Early-game personal vessel                |

#### How to Use

1. **Craft** a ship at a crafting table — each requires a hull (wood), mast (wood + wool for sail), and helm
2. **Right-click** water to place. Right-click the helm to board
3. **W/S** to move forward/backward, **A/D** to steer. Speed depends on wind direction (with wind = faster)
4. **Park** by dismounting — ships float where you leave them. Right-click with a lead to tow

#### Progression Notes

- Ships are **Phase 1** — craftable with basic materials (planks, wool, iron). Use them for early coastal exploration before you have aircraft.
- A **cog** can carry enough loot from ocean ruins/shipwrecks to stock a mid-game base.
- Ships work in any dimension with water — build a dock at your base and sail to distant islands in the Aether.
- This mod is in **beta** for NeoForge (2.0.0-b2.1). Core features work; expect minor bugs.

---

### The Aether — Sky Dimension

A sky dimension floating above the clouds. It's safe, beautiful, and offers a gentle adventure curve.

#### Portal Building

1. Gather **10-14 glowstone blocks** (found in the Nether, or from wandering traders)
2. Build a rectangular frame (4×5 minimum, like a Nether portal) using glowstone
3. Fill the inside with a **water bucket** (right-click with water inside the frame — one bucket is enough; unlike the Nether, it doesn't consume the source)
4. Step through. You'll ascend into the Aether

**Troubleshooting**: If the portal doesn't activate, check:

- The frame must be at least 4 blocks wide × 5 blocks tall (interior)
- Glowstone blocks only (not glowstone lamps or other light blocks)
- You must fill the frame with a water source block, not flowing water

#### What to Do

**Phase 1 — Arrival**: You spawn on a sky island. Your tools and weapons work fine — bring them from the Overworld. Explore surrounding islands. Key early resources:

- **Ambrosium** — Aether's coal equivalent. Shoots light, powers items
- **Zanite** — Aether's iron equivalent. Mining level increases with durability loss (weaker zanite tools mine higher tiers)
- **Aerwhales** — Passive floating whales. Fleece drops for decorative blocks

**Phase 2 — Gold Dungeon**: Find a bronze dungeon (tower with bronze block roof). Defeat the **Slider** (a moving block boss — hit it when it's blue, avoid when red). Loot the bronze treasure chest for **Golden Amber** and access to the next tier.

**Phase 3 — Silver Dungeon**: Deeper in the Aether. More dangerous mobs. Defeat the **Valkyrie Queen** for the **Valkyrie tools** — flight-enabled melee weapons. Key loot:

- **Gravitite** — floats upward when right-clicked, falls when sneak-right-clicked. Used for the best Aether gear
- **Valkyrie Lance** — long-reach throwing weapon
- **Aechor Petal** — poison source for arrows

**Phase 4 — Endgame**: The final Aether boss requires exploring the highest crystal islands. The **Sun Spirit** is the ultimate challenge — bring fire resistance.

**Tip**: The Aether isn't required for any other dimension or tech progression. Visit when you want a change of pace. Your Mekanism gear works fine here — with the MekaSuit, you can trivialize all Aether combat.

### Twilight Forest — Progression Dimension

A twilight-dimension with a strict boss progression system. Each boss kill unlocks the next area. The dimension is dark, enchanted, and full of maze-like structures.

#### Portal Building

1. Find a 2×2 pool of water (any depth, natural or player-dug)
2. Surround it with flowers (12 total — one per block on the perimeter of the 2×2. Any flowers work: dandelions, poppies, tulips, etc.)
3. Throw a **diamond** into the water pool
4. Lightning strikes the pool. Step into the water to descend into the Twilight Forest

**Note**: The portal is one-way down. To return, craft a **Twilight Portal** block or use a Waystone (place one in the Twilight Forest as soon as you arrive).

#### Boss Progression

The dimension locks areas behind boss kills. A status screen (accessible from your inventory) shows which bosses you've defeated and which areas are unlocked:

| Order | Boss             | Location                                          | Strategy                                                                                                                    | Key item unlock                                                                      |
|-------|------------------|---------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------|
| 1     | **Naga**         | Naga Courtyard (stone arena in the forest)        | Melee boss — strafe its charges, hit the tail segment                                                                       | Access to Lich Tower                                                                 |
| 2     | **Lich**         | Lich Tower (tall stone tower)                     | Ranged fight — dodge projectiles, hit during cooldown. His shield reflects projectiles                                      | Naga/Lich loot opens Twilight Swamp                                                  |
| 3     | **Minoshroom**   | Labyrinth (underground mushroom maze)             | Mob in a maze — find the minotaur room, kill it, grab the Meef Stroganoff                                                   | Meef Stroganoff is a food item. Opens Firefly Forest                                 |
| 4     | **Hydra**        | Hydra Lair (swamp arena, three heads)             | Three-headed fire-breathing dragon. Dodge fireballs, melee the heads. Hydra drops **Fiery Tears**                           | Fiery Tears enable Ur-Ghast fight                                                    |
| 5     | **Ur-Ghast**     | Dark Tower (tall dark brick tower in Dark Forest) | Flying ghost boss in a dark tower. Shoot its tentacles, then the main body. Dark Forest has a blindness effect — bring milk | Opens Snowy Forest + Highlands                                                       |
| 6     | **Snow Queen**   | Aurora Palace (ice castle in the Snowy Forest)    | Ice-themed arena with pillars. Push her into pillars to break her shield. Avoid ice arrows                                  | Opens Final Castle                                                                   |
| 7     | **Final Castle** | Castle (Highlands)                                | Multi-boss fight in the final castle. Requires weapons from all prior bosses                                                | Endgame Twilight loot, includes the **Giant's Pick** (diamond-tier, 5×3 mining area) |

#### Key Items to Craft/Find

- **Ironwood** gear — smelt ironwood ingots from iron + magic beans. Good starter armor
- **Fiery** gear — craft with fiery ingots (iron + blaze powder). Good mid-tier weapons
- **Knightmetal** — from the Lich Tower. Decent armor
- **Phantom** armor — allows creative flight for short bursts. Crafted from phantom membranes dropped by Ur-Ghast's tentacles
- **Giant's Pick** — mines a 5×3×5 area. From the Final Castle

#### Navigation Tips

- The Twilight Forest is **always twilight** — no sunlight, no day/night cycle. Mobs can spawn any time
- Place **Waystones** frequently — the dimension is large and you'll revisit areas
- The **Twilight Forest Maze Map** (crafted from paper + torch) reveals the layout of mazes and castles
- Bring **milk buckets** for the Dark Forest blindness effect
- Your AE2 wireless terminal, Mekanism gear, and Create tools all work in the dimension

### Deeper and Darker — The Otherside

A deep-dark-themed dimension accessed through the Deep Dark. It's ominous, quiet, and filled with sculk.

#### How to Enter

1. Find a **Deep Dark** biome in the Overworld (deep underground, usually at Y=-40 or below)
2. Locate an **Ancient City** (use the Explorer's Compass — search "ancient city" structure)
3. Find and kill the **Warden** (the blind, sound-seeking boss of the Deep Dark). It drops a **Warden Heart**
4. Craft: Warden Heart + 8 sculk blocks → **Otherside Portal Catalyst** (check JEI for exact recipe)
5. Build a frame of **reinforced deepslate** (at least 4×5 interior). Activate it by right-clicking the portal catalyst on the frame
6. Step through

**Warden strategy**: The Warden detects by sound. Use wool blocks to silence your footsteps. Sneak near sculk shriekers (don't trigger them). Throw snowballs or projectiles to distract it. Hit and run — it has 500 HP but slow attacks.

#### What to Expect

- **4 new biomes** — sculk forests, frozen deep, ancient cities expanded, new cave types
- **8 new mobs** — sculk-infected variants, stalker (ranged attacker), shriek worm (ambush), and the **Sculk Leech** (heals when dealing damage)
- **Miniboss**: The **Shattered Warden** — stronger Warden variant in the deepest areas. Drops **Sculk Transmitter** components
- **Key loot**: **Sculk Transmitter** — an Elytra upgrade that allows teleportation mid-flight. Combine with an Elytra at a smithing table

**Gear**: Warden-themed armor and tools are available. They're roughly equal to diamond but with unique abilities (sound-based attacks, silence fields). A viable alternative tech path if you're tired of strip-mining for diamonds.

**Difficulty**: Harder than the Aether, easier than Twilight Forest's Dark Forest. Come with at least iron-tier armor and a decent weapon. Bring blocks to pillar up and escape corners.

### End Overhaul

After you defeat the Ender Dragon, the End becomes a full dimension worth exploring.

#### What Changes

**BetterEnd NeoForge** adds 24+ new biomes to the End, transforming it from a barren void into a diverse alien landscape:

| Biome type           | Description                                               | Notable resources                |
|----------------------|-----------------------------------------------------------|----------------------------------|
| **Floating islands** | Large islands with unique vegetation. End lakes, end moss | New wood types, building blocks  |
| **Crystal caves**    | Underground caverns with glowing crystals                 | Crystal materials for tools/gear |
| **Mushroom fields**  | Giant end-themed mushrooms                                | Magic-related crafting materials |
| **Ice biomes**       | Frozen wastelands on the edge of the End                  | —                                |
| **Chorus forests**   | Dense chorus plant forests                                | Chorus flowers, new food         |

**Moog's End Structures** adds towers, ruins, and dungeons across the End — many with loot better than vanilla End cities.

**Nullscape** (data pack) overhauls the End's terrain into surreal alien shapes — floating islands, towering spires, natural arches, and void pits — with unique sky colors per biome. It is explicitly compatible with BetterEnd (per Nullscape's documentation, BetterEnd is the exception to its incompatibility with End worldgen mods). Nullscape handles terrain and sky; BetterEnd handles biomes, mobs, gear, and structures. Install as a data pack in the world's `datapacks/` folder.

**Ender's Delight** adds food that can be cooked from End ingredients — gives useful status effects for End exploration.

#### Progression

| Phase           | Activity                                                   | Reward                                     |
|-----------------|------------------------------------------------------------|--------------------------------------------|
| **Post-Dragon** | Explore the outer End islands. BetterEnd biomes spawn here | New materials, tier-appropriate gear       |
| **Mid-End**     | Tackle Moog's structures. Find hidden rooms and bosses     | Unique weapons and loot                    |
| **Endgame End** | Find the rarest biomes and build an End base               | All materials needed for top-tier End gear |

**Tip**: Set up a Waystone in the End as soon as you arrive. Build a small AE2 subnet with a wireless terminal to access your main base storage while exploring.

### Session Plan — Wave 2

Exploration is something you dip into between factory sessions. No need to binge it.

| Session                               | Focus                                                                                                                                                      | What to Do                                       |
|---------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------|
| **Session 1 — Scout**                 | Craft Explorer's Compass. Search for a cherry grove or redwood forest biome. Mark waypoints on your map. Find a YUNG's dungeon and loot it                 | First taste of the transformed world, early loot |
| **Session 2 — Aether visit**          | Gather glowstone (from the Nether or wandering traders). Build the Aether portal. Explore the first sky island, collect ambrosium and zanite               | A new dimension, safe change of pace             |
| **Session 3 — Twilight Forest entry** | Find a 2×2 water pool, surround with flowers, throw in a diamond. Enter the Twilight Forest. Place a Waystone immediately. Defeat the Naga                 | First Twilight Forest boss, door to progression  |
| **Session 4+ — Deep exploration**     | Work through Twilight Forest bosses at your own pace. Visit Deeper and Darker (requires finding an Ancient City). Explore the End after killing the dragon | Boss loot, dimension-specific resources          |

**Pacing tip**: Explore between factory builds. When you're waiting for Mekanism to process or Create to assemble, grab your compass and walk in a random direction. Every direction has something new.

---

## Wave 2.5 — Schematic Building (Forgematica)

Forgematica lets you load a blueprint of any structure and tracks your building progress block-by-block. It shows you exactly which blocks to place, which are missing, and how many materials you still need. This is how you build a pyramid, skyscraper, castle, or factory from a plan without guessing.

### Install

See [MODLIST.md](./MODLIST.md#wave-25--schematic-building). Install both Forgematica and its dependency MaFgLib. This is a **client-side only** mod — no server-side install needed for singleplayer.

### Getting a Schematic

Forgematica doesn't come with built-in blueprints. You source `.litematic` files from:

| Source               | How                                                                                                                                                          | Best for                                    |
|----------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------|
| **Planet Minecraft** | Search [planetminecraft.com](https://www.planetminecraft.com/projects/?keywords=litematica+schematic) for "litematica schematic [pyramid/skyscraper/castle]" | Pre-made megastructures, community builds   |
| **Create your own**  | Build a structure in a creative test world → use Forgematica's Area Selection tool (set keybind) → save as `.litematic`                                      | Custom designs, replicating your own builds |
| **Reddit**           | r/9x9, r/litematica, r/MinecraftBuilds                                                                                                                       | Niche builds, themed collections            |
| **Discord**          | Litematica's official Discord, build-sharing servers                                                                                                         | Active communities, help and tips           |

Place `.litematic` files in the `schematics/` folder in your Minecraft directory. Forgematica also reads older `.schematic` and `.schem` files.

### How to Use Forgematica

Forgematica works through a series of keybinds. Set these up first in **Options → Controls → Forgematica**:

| Action                  | Suggested Key | What it does                                                      |
|-------------------------|---------------|-------------------------------------------------------------------|
| Open Configuration Menu | `M + C`       | Opens Forgematica's in-game config screen                         |
| Open Loaded Schematics  | `M + L`       | Lists all loaded schematics, select one for placement             |
| Toggle Easy Place Mode  | `M + P`       | Auto-places the correct block from your inventory. **Essential.** |
| Open Material List      | `M + M`       | Shows block counts: total, placed, remaining, in inventory        |
| Execute Operation       | `M + E`       | Run paste/fill/delete operations (creative mode only)             |

#### Step-by-Step: Building from a Schematic

**1. Load a schematic into your world:**

- Press `M + L` → click "Load Schematic" → navigate to your `schematics/` folder → select the `.litematic` file.
- The schematic appears in your loaded list. Click it to select it, then click "Create Placement."
- A holographic ghost of the structure appears in-world. Walk to position it, then press `M + E` to confirm the placement location.

**2. View the materials you need:**

- Press `M + M` to open the Material List GUI.
- It shows four columns: **Total** (all blocks in the schematic), **Placed** (blocks you've already placed matching the schematic), **Missing** (blocks still needed — this is what you care about), **Available** (blocks you already have in your inventory).
- Toggle the **Material List HUD** on — it shows a compact overlay of what you're missing, so you don't need to reopen the GUI constantly.

**3. Place blocks with Easy Place Mode:**

- Toggle **Easy Place Mode** on (`M + P`).
- Look at a holographic block in the schematic. Right-click with the matching block in your hand — it auto-places in the correct orientation.
- **Pro tip**: Easy Place Mode also works from your hotbar. If the required block is anywhere in your inventory (not just your hand), it auto-switches to it. Fill your inventory with schematic materials and right-click away.

**4. Check your progress:**

- The Schematic Verifier (`M + V` by default, or accessible from the main menu) lists every mismatch between your built structure and the schematic. Find missing blocks, wrong block types, and blocks placed where they shouldn't be.
- Green = correct, Red = wrong block, Blue = missing. Walk around and fix the errors the verifier highlights.

#### Single-Layer Mode for Tall Builds

For skyscrapers, pyramids, and other tall structures, building one layer at a time is easier:

- Open the Configuration Menu (`M + C`).
- Go to the **Render Layers** tab.
- Set mode to **Single Layer**.
- Use `PgUp` / `PgDn` to move up and down through layers.
- Only the current layer's blocks are shown — no holographic clutter from blocks above or below.

### Tips

- **Pair with Building Wands (Wave 6)**: Easy Place Mode + a Building Wand = place entire rows or walls of blocks in one click.
- **Use a test world**: If you're designing your own schematic, build it in a creative superflat world first, save it, then load it in your survival world.
- **Shaders and the overlay**: If the holographic overlay flickers with shaders on, either toggle the shader off temporarily while building, or adjust the overlay render layer in Forgematica's config.
- **The Schematic Verifier is your QA tool**: Run it after completing a large build. It catches that one block you missed on the back side.

### Session Plan — Wave 2.5

| Session                               | Focus                                                                                                                                                                  | What to Do                                                  |
|---------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------|
| **Session 1 — Setup**                 | Set keybinds. Download a small schematic from Planet Minecraft (try a simple house or tower) to test. Load it, create a placement, open the material list              | Forgematica installed, keybinds set, first schematic loaded |
| **Session 2 — First schematic build** | Gather materials from the material list. Toggle Easy Place Mode on. Place blocks following the hologram. Run the verifier when done                                    | First structure built from schematic                        |
| **Session 3+ — Megaprojects**         | Find or design a megastructure schematic (pyramid, skyscraper, cathedral). Use single-layer mode. This is a long-term project — chip away at it between other sessions | Ongoing megaproject, material list tracking progress        |

**Pacing tip**: You can install Forgematica at any point after Wave 0 — it has zero dependencies on other waves. Start using it in Wave 2 when you've explored the world enough to pick a build site for your megaproject. Building a massive structure is a 40+ hour activity — let it run alongside everything else.

---

## Wave 3 — Equipment Magic & RPG

Every weapon can roll with random affixes, every accessory provides a unique ability, and a skill tree gives every action meaning. This wave makes you **feel** your character grow alongside your tech progression.

### Install

See [MODLIST.md](./MODLIST.md#wave-3--equipment-magic--rpg). Install all at once.

### Skill Tree (RPG Series) — Persistent Character Growth

Every action in the game earns XP. As you level up, you earn skill points to spend on permanent stat bonuses. This works alongside everything else — mining ore, killing mobs, crafting items, cooking food, exploring new biomes.

#### Getting Started

1. **Set the keybind**: Controls → Skill Tree → set a key you'll remember (e.g., `P` for "powers")
2. Press the key to open the skill tree GUI
3. You'll see attributes organized in a tree layout

#### Attribute Categories

| Attribute    | Effect                              | Who benefits                                                                    |
|--------------|-------------------------------------|---------------------------------------------------------------------------------|
| **Strength** | +melee damage, +mining speed        | Everyone — more damage and faster mining                                        |
| **Vitality** | +max HP, +natural regen             | All players — survival is always useful                                         |
| **Agility**  | +movement speed, +attack speed      | Combat-focused players, kiting bosses                                           |
| **Magic**    | +spell damage, +mana regen          | Less useful without a dedicated spell mod, but affects Ars Nouveau if installed |
| **Defense**  | +armor toughness, +damage reduction | Tank playstyle                                                                  |

**How XP works**: Every ore you mine, every mob you kill, every item you craft, every crop you harvest generates XP. The amount scales with the action's complexity. Smelting 100 iron ingots gives more XP than smelting 1.

**Dependency note**: **Pufferfish's Skills** is the underlying framework that powers the Skill Tree. It handles XP tracking, attribute modification, and skill point allocation behind the scenes. Install it alongside the Skill Tree mod — no separate configuration or interaction needed.

**Tip**: The skill tree is lowest-investment, highest-return mod in this wave. Set the keybind and start earning XP from minute 1.

### Simply Swords — Unique Weapons

60+ unique weapons with passive and activated abilities. Each weapon drops from mobs (~2% drop rate) and appears in chests. No two feel the same.

#### Weapon Categories

| Category     | Examples                                        | Playstyle                                                                                        |
|--------------|-------------------------------------------------|--------------------------------------------------------------------------------------------------|
| **Heavy**    | Greathammer, Greatsword, Glaive                 | Slow, high damage, knockback. Two-handed. Best for tanky builds                                  |
| **Medium**   | Longsword, Katana, Claymore                     | Balanced speed and damage. One-handed or two-handed. Versatile                                   |
| **Light**    | Rapier, Dagger, Sai, Cutlass                    | Fast attack speed, low damage per hit. Armor penetration on rapiers. Stacking debuffs on daggers |
| **Polearms** | Spear, Halberd, Pike                            | Extended reach. Can hit from 2-3 blocks away. Throwable (spears)                                 |
| **Special**  | Scythe (AoE sweep), Soul Harvester (soul-steal) | Unique mechanics — scythes hit all mobs in an arc                                                |

#### How to Find Weapons

- **Mob drops**: Every hostile mob has ~2% chance to drop a Simply Swords weapon. Zombies drop common, skeletons drop ranged-adjacent, creepers drop explosives-adjacent
- **Chests**: Dungeon chests, mineshaft chests, YUNG's structure chests all have higher roll chances
- **Trading**: Some weapons can be traded from weaponsmith villagers
- **Bosses**: Higher guaranteed drop chance from Twilight Forest bosses and Cataclysm bosses

#### Using Weapon Abilities

Hold `Ctrl` while hovering over a weapon in your inventory to see its ability description. Abilities include:

| Ability   | Effect                                        | Found on                |
|-----------|-----------------------------------------------|-------------------------|
| Whirlwind | Spin attack hitting all nearby enemies        | Greathammer, Greatsword |
| Impale    | Hold to charge, release for a piercing thrust | Spear, Pike             |
| Backstab  | +300% damage when attacking from behind       | Dagger, Sai             |
| Lifesteal | Heal for 10% of damage dealt                  | Soul Harvester, Scythe  |
| Execute   | +50% damage to targets below 30% HP           | Axe variants            |
| Slowness  | On-hit slow effect for 3 seconds              | Ice-themed weapons      |

**Tip**: The **Explorer's Compass** can find structures with higher weapon chest rates. Set up a weapon hunt route: find a YUNG's dungeon → loot it → compass to the next one.

### Apotheosis — Loot & Enchanting Overhaul

Apotheosis transforms every gear drop and enchantment in the game. This is the single largest change to how gear feels.

#### Rarity System

Every item that drops can roll with a rarity:

| Rarity   | Affix slots | Identifying color | Drop source                      |
|----------|-------------|-------------------|----------------------------------|
| Common   | 0           | White             | Basic mobs, mining               |
| Uncommon | 1           | Yellow            | Hostile mobs, basic chests       |
| Rare     | 2           | Cyan              | Dungeon chests, mini-bosses      |
| Epic     | 3           | Purple            | Bosses, late-game chests         |
| Mythic   | 4           | Gold/Magical      | Endgame bosses, Cataclysm bosses |

Higher rarities have more **gem sockets** and roll better **affixes** (bonus stats).

#### Affixes — Random Stats on Gear

Every armor piece, weapon, and tool can roll with bonus stats. Examples:

| Affix     | Effect                         | Gear type       |
|-----------|--------------------------------|-----------------|
| Ruthless  | +crit damage, +crit chance     | Melee weapons   |
| Arcane    | +spell damage, +mana           | All weapons     |
| Sturdy    | +armor, +knockback resistance  | Armor           |
| Nimble    | +movement speed, +attack speed | Boots, leggings |
| Plentiful | +mining speed, +fortune        | Tools           |
| Titanic   | +max HP, +natural regen        | Chestplate      |

**Tip**: Check every gear drop. A Common helmet with a good affix might be better than an Epic one with useless stats. Disenchant unwanted gear at a salvaging table for gem dust.

#### Gem System

Gems are socketable items that add permanent stats to your gear:

| Gem tier     | How to get                                    | Effect                               |
|--------------|-----------------------------------------------|--------------------------------------|
| **Rough**    | Drops from mobs and chests                    | Basic stat boost                     |
| **Cut**      | Rough gem + gem cutting station               | +50% stat value. Requires gem dust   |
| **Flawless** | 2 cut gems of same type + gem cutting station | +100% stat value. Requires more dust |

**Gem cutting station**: Craft a gem cutting station (check JEI). Place a rough gem in the left slot, gem dust in the center, collect a cut gem from the right. Gem dust comes from breaking unwanted cut gems in a crafting grid.

**Gem socketing table**: Craft a gem socketing table (check JEI). Place your item in the center, a gem in the socket slot. Each gear piece has limited sockets — expand with socketing tools.

#### Enchanting Overhaul

The vanilla enchanting table is replaced. New features:

- **Higher level cap**: Enchantments can go past vanilla limits. Sharpness VIII is possible
- **Better bookshelf scaling**: Bookshelves now have tiers. Higher-tier bookshelves enable higher enchantment levels
- **Library of Alexandria**: Craft one (expensive — requires diamonds, obsidian, and enchanted books). Stores all your enchanted books in one block-size inventory
- **New enchantments**: Apotheosis adds 30+ new enchantments. Check JEI for full list

#### Boss Affixes

Boss mobs can spawn with random modifiers displayed under their health bar:

| Modifier | Effect                        | Strategy                                    |
|----------|-------------------------------|---------------------------------------------|
| Tough    | +50% HP, damage reduction     | Bring high-damage weapons and Lifesteal     |
| Blinding | Blinds hit players            | Wear blindness-resistant gear or bring milk |
| Clumsy   | Disarms players on hit        | Use speed — don't get hit                   |
| Plagued  | Inflicts poison/wither on hit | Bring antidotes and regeneration            |
| Huge     | 2× size, more knockback       | Stay mobile. Don't get cornered             |
| Chaotic  | Random effects per hit        | Unpredictable — bring all potions           |

**Tip**: Boss affixes are the main source of Mythic gear. Hunt for affixed bosses when you need endgame upgrades.

### Relics RPG — Legendary Accessories

Relics are unique accessories that go in your **Curios slots**. You have 6 Curios slots by default: Ring (2), Amulet (1), Belt (1), Gloves (1), Back (1), Charm (1). Right-click to open your Curios inventory — default keybind set it to `Y`.

| Relic                 | Slot   | Ability                                         | Where to find                       |
|-----------------------|--------|-------------------------------------------------|-------------------------------------|
| **Monkey Talisman**   | Charm  | Double jump (press jump again mid-air)          | Vanilla dungeon chests              |
| **Holy Water**        | Charm  | Right-click to cleanse all negative effects     | Desert temples, churches            |
| **Lucky Coin**        | Charm  | +luck for better loot drops                     | Mineshaft chests, pillager outposts |
| **Captain's Hook**    | Gloves | Right-click to pull entities toward you         | Shipwrecks, ocean ruins             |
| **Sacred Wardstone**  | Amulet | Absorbs damage, breaks after absorbing X damage | Stronghold chests                   |
| **Magic Mirror**      | Back   | Right-click to teleport to spawn/home point     | End cities, libraries               |
| **Heart of the Void** | Ring   | +max HP, slow regen                             | Nether fortresses, bastions         |
| **Blazing Feather**   | Back   | +15% movement speed                             | Jungle temples, pagodas             |
| **Drowned Belt**      | Belt   | Underwater speed boost, +swim speed             | Ocean monuments, shipwrecks         |

**Stacking**: You can wear multiple relics of different types. Two rings = two ring relics. Find duplicates to trade or salvage.

**Finding relics by structure**: Use the Explorer's Compass → select a YUNG's structure → loot it → compass to the next. Relics have higher drop rates in YUNG's overhauled structures than vanilla ones.

### Runes — Socketable Weapon Modifiers

Runes are socketable modifications for weapons and tools. Unlike Apotheosis gems (permanent), runes are **swapable** — you can change them between fights.

#### How to Get Runes

- **Loot chests** in any structure
- **Craft at a Rune Altar** — place 4 cobblestone in a 2×2, top with a lapis block, right-click with a rune fragment. Check JEI for exact recipes
- **Mob drops**: Runes have a low chance to drop from any hostile mob

#### Rune Types

| Rune           | Effect                            | Best on                                           |
|----------------|-----------------------------------|---------------------------------------------------|
| Fire Rune      | On-hit fire damage (3 seconds)    | Fast weapons (daggers, rapiers) for stacking burn |
| Ice Rune       | On-hit slow (2 seconds)           | Kiting weapons (spears, scythes)                  |
| Lightning Rune | Chance on-hit to strike lightning | Heavy weapons (single big hits)                   |
| Poison Rune    | On-hit poison (5 seconds)         | Dot builds, boss kiting                           |
| Lifesteal Rune | Heal 5% of damage dealt           | Tank builds, slow weapons                         |
| Critical Rune  | +10% crit chance                  | Medium weapons (balanced speed/crit synergy)      |

#### Using Runes

1. Craft a **Rune Pouch** (leather + string + lapis) — stores all your runes. Set a keybind for it (Controls → Rune Pouch)
2. Place your weapon and a rune at a **Rune Altar** (craft: 4 stone + 1 lapis block)
3. The rune is applied. The weapon gains the rune's effect
4. To swap: place the weapon back at the Rune Altar with a different rune

**Tip**: Keep 2-3 different rune loadouts in your Rune Pouch. Switch between Fire (general combat), Lifesteal (boss fights), and Ice (kiting tough mobs).

### Session Plan — Wave 3

Gear upgrades happen naturally as you play. These sessions show you what to look for.

| Session                             | Focus                                                                                                                                                                                  | What to Do                                    |
|-------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------|
| **Session 1 — Skill tree**          | Set skill tree keybind (`P` recommended). Open it and spend your first points on Strength (mining speed/melee damage). This is passive — XP earns automatically from everything you do | Permanent character progression started       |
| **Session 2 — First affix loot**    | Check every gear drop. Look for Rare+ items with useful affixes (Ruthless for melee, Sturdy for armor). Don't salvage anything until you understand what's good                        | First taste of the loot system                |
| **Session 3 — Weapon hunt**         | Use Explorer's Compass to find a YUNG's dungeon. Loot it for Simply Swords weapons. Try out a Rapier (fast, shield-piercing) or Greathammer (AoE, knockback)                           | Your first unique weapon, learn its ability   |
| **Session 4 — Gem cutting**         | Collect rough gems from chests and mobs. Build a Gem Cutting Station. Cut your first Rough → Cut gem. Socket it into a weapon or armor piece                                           | Permanent gear upgrade, gem system understood |
| **Session 5 — Relic hunting**       | Explore different structure types for Relics RPG items. Monkey Talisman (double jump from vanilla dungeons) and Lucky Coin (better loot from mineshafts) are early priorities          | Accessory slots filled, unique abilities      |
| **Session 6+ — Boss affix hunting** | Search for affixed boss mobs (they have a colored name above their health bar). These are your best source of Mythic gear. Bring good weapons and food                                 | Endgame gear progression                      |

**Tip**: Wave 3 gear changes how every other wave feels. A Rare+ weapon with the right affix makes combat in Twilight Forest and Cataclysm dramatically easier. Invest in your gear before tackling tough bosses.

---

## Wave 4 — Food, Farming & Comfort

Farmer's Delight brings a full cooking system. This wave is entirely optional — you can survive on baked potatoes forever — but cooking gives powerful status effects, better healing, and a cozy kitchen to build around.

### Install

See [MODLIST.md](./MODLIST.md#wave-4--food-farming--comfort).

### Farmer's Delight — Cooking Hub

Farmer's Delight adds new crops, a cutting board for ingredient prep, a cooking pot for multi-ingredient meals, and kitchen storage.

#### New Crops & Farming

| Crop        | Grows on                                          | What it's for                     |
|-------------|---------------------------------------------------|-----------------------------------|
| **Tomato**  | Farmland. Bush grows, pick when red               | Soups, sandwiches, salads         |
| **Cabbage** | Farmland. Full head when ready                    | Coleslaw, cabbage wraps, ferments |
| **Onion**   | Farmland. Pick when shoots show                   | Savory dishes, soups              |
| **Rice**    | Grows in shallow water (1 block deep on dirt/mud) | Hearty meals, sushi (in addons)   |

**Wild crops**: Found in the wild — look for **wild tomatoes** (plains/forests), **wild cabbage** (beaches), **wild onions** (taiga), and **wild rice** (swamps). Breaking them gives the seed item.

#### Cutting Board — Ingredient Prep

Craft: 1 knife + 2 planks (horizontal row)

Place the cutting board on the ground. Right-click with the cutting board in hand after placing it to open the UI, or just right-click the placed cutting board.

**How it works**:

1. Place an ingredient in the left slot
2. The cutting board processes it (chops, slices, peels)
3. Collect the output from the right slot

**Essential recipes** (always check JEI — many ingredients have cutting board recipes):

| Input                 | Output         | Use                |
|-----------------------|----------------|--------------------|
| Any cooked meat       | Meat strips    | Sandwiches, salads |
| Cabbage               | Cabbage leaves | Wraps, coleslaw    |
| Bread                 | Bread slices   | Toast, sandwiches  |
| Carrot                | Carrot slices  | Salads, soups      |
| Apple                 | Apple slices   | Desserts, snacks   |
| Cheese (if available) | Cheese wedge   | Hearty meals       |

**Tip**: A knife in your off-hand while chopping lasts longer (the cutting board uses the knife's durability). An iron knife lasts for dozens of chops.

#### Cooking Pot — Meal Preparation

Craft: 2 iron ingots + 2 planks + 1 bowl (check JEI for exact shape)

Place the cooking pot over a **heat source**. Valid heat sources (from best to worst):

- **Stove** — fastest cooking. Craft: 4 bricks + 4 iron nuggets
- **Campfire** — medium speed. Craft: 3 logs + 3 sticks + 1 coal
- **Lava** — slowest. The pot must sit directly above the lava source block
- **Torch/Campfire block below** — does not work. Needs a proper heat block

**Cooking process**:

1. Right-click the pot to open the GUI
2. Fill the **water slot** (bucket or bottle on the left side)
3. Add ingredients (up to 6) in any order
4. Wait for the progress bar to fill
5. Collect your meal — most meals give **6 servings** with bowl stacking

**Meal categories** (check JEI for full list):

| Category       | Example                                   | Effect                            |
|----------------|-------------------------------------------|-----------------------------------|
| **Soups**      | Tomato soup, vegetable soup, beef stew    | Good saturation, easy ingredients |
| **Sandwiches** | Chicken sandwich, egg sandwich, BLT       | On-the-go eating, high saturation |
| **Salads**     | Mixed salad, coleslaw, fruit salad        | Refreshing, good for hot biomes   |
| **Pasta**      | Pasta with meat sauce, pasta with veggies | Filling, complex ingredients      |
| **Rice meals** | Rice pudding, fried rice                  | Requires rice farming             |

#### Kitchen Storage

Craft **oak/pantry cabinets** (check JEI for recipe — varies by wood type). These function like chests but match your kitchen aesthetic. They hold as much as a chest.

**Tip**: Set up your kitchen near your AE2 network. On the one hand, you can cook manually. On the other, your ME drive can stock ingredients and meals.

### Brewin' And Chewin' — Drinks & Fermentation

Adds alcohol brewing with aging mechanics. Grow hops, barley, and grapes on standard farmland.

#### Brewing Station — Fermenting Base

Craft: Check JEI (uses a barrel-like recipe)

1. Place the **brewing station** (function block, not decoration)
2. Right-click to open the GUI
3. Add **water** + your main ingredient:
   - **Barley** → beer base (wort)
   - **Grapes** → wine base (must)
   - **Honey** → mead base
   - **Potatoes** → spirits base (mash)
4. Wait for fermentation to complete (the station processes the mixture)
5. Collect the **fermented mixture** — it's now ready for aging

#### Aging Barrel — Flavor Development

Craft: Check JEI (wooden barrel)

1. Place the aged mixture in the **aging barrel**
2. Right-click to seal it
3. Every in-game day, the drink ages one stage:
   - **Young** → **Matured** → **Aged** → **Vintage** (4 stages)
4. Each stage increases the drink's **status effect potency and duration**
5. Break the barrel to collect the finished drink

**Optimal aging**: Let everything reach **Aged** (stage 3). Only push to Vintage (stage 4) for special occasions — the improvement is minor but the waiting is long.

#### Drink Effects

| Drink       | Effect at Matured    | Effect at Vintage                      |
|-------------|----------------------|----------------------------------------|
| **Beer**    | Resistance I (2 min) | Resistance II (5 min)                  |
| **Wine**    | Haste I (2 min)      | Haste II (4 min)                       |
| **Mead**    | Speed I (2 min)      | Speed II (4 min)                       |
| **Whiskey** | Strength I (30 sec)  | Strength II (1 min). Short but strong  |
| **Vodka**   | Night Vision (3 min) | Night Vision + Fire Resistance (5 min) |

**Practical use**: Brew a batch of each, age them all to Matured/Aged, and keep them in your Curios backpack or kitchen storage. Pop a drink before boss fights for free status effects. Mead stacks with Swiftness potions for even more speed.

#### Bottle Return

After drinking, you get an **empty bottle** back. Reuse it at the brewing station — no glass waste.

### Storage Delight — Kitchen Furniture

Storage Delight adds decorative kitchen storage blocks that work as functional inventories:

| Block   | Slots | Use                                               |
|---------|-------|---------------------------------------------------|
| Cabinet | 27    | Counter-height storage, matches kitchen aesthetic |
| Drawer  | 18    | Slimmer, fits under counters                      |
| Shelf   | 9     | Wall-mounted spice/ingredient display             |

**Tip**: Use cabinets and drawers in your kitchen for early-game ingredient storage before AE2 comes online. Later, place an ME Storage Bus on a cabinet to bridge it into your digital network.

### More Delight — Extra Meals & Knives

More Delight adds new recipes and tools that extend Farmer's Delight:

- **Extra meals**: Sandwiches (combine bread + any filling), toasts (bread + toppings), stuffed mushrooms, and more
- **Knife variants**: Diamond and netherite knives that last much longer than iron
- **New cooking pot recipes**: Stews, soups, and pasta dishes using new ingredient combinations

All recipes are visible in JEI. No special blocks needed — everything uses the existing cutting board and cooking pot.

### My Nether's Delight — Nether Food

Adds Nether-themed ingredients and recipes. Turns Nether exploration into a food-gathering expedition:

- **Nether crops**: Grow in soul sand or warped/crimson nylium
- **New ingredients**: Glowstone berries, soul berries, nether-root vegetables
- **Recipes**: Spicy stews that give Fire Resistance, soul-force snacks that give Night Vision

**Tip**: Set up a Nether farm for ingredients that give combat-relevant status effects. Glow berry pie gives Haste II — useful before a mining expedition.

### Ocean's Delight — Seafood

Adds seafood dishes using ocean mob drops and kelp:

- **Ocean ingredients**: Squid tentacles (squid drops), fish fillets, seaweed, turtle eggs
- **Recipes**: Seafood stew, grilled fish, kelp salads, sushi rolls
- **Status effects**: Seafood gives Water Breathing and Dolphin's Grace — perfect for ocean monument raids

**Tip**: Build a fish farm (breed fish near a fishing spot) or farm kelp for a steady supply of ocean ingredients. Combined with My Nether's Delight, you can prepare meals for any environment.

### Session Plan — Wave 4

Cooking is a side activity you build up gradually. Start small and expand as you find ingredients.

| Session                           | Focus                                                                                                                                                                           | What to Build                                 |
|-----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------|
| **Session 1 — Kitchen tools**     | Craft a cutting board (knife + planks) and cooking pot (iron + planks). Build a stove (bricks + iron nuggets) as heat source. Find wild tomato, cabbage, onion, rice seeds      | Functional kitchen, first ingredients         |
| **Session 2 — Farm**              | Plant tomato, cabbage, onion, rice near water. Harvest manually or with vanilla mechanics. Cook your first meal (tomato soup is the easiest)                                    | Sustainable ingredient supply                 |
| **Session 3 — Brewing**           | Find barley, grapes, honey. Build a brewing station. Start your first batch of beer/wine/mead. Place an aging barrel                                                            | First drink fermenting, waiting for it to age |
| **Session 4 — Kitchen expansion** | Craft Storage Delight cabinets and drawers for decorative ingredient storage. Try More Delight recipes (sandwiches, toasts). Collect Nether ingredients for My Nether's Delight | Full kitchen, all FD addons in use            |
| **Ongoing**                       | Age drinks to Matured/Aged for boss-fight buffs. Explore oceans for Ocean's Delight ingredients. Stock your AE2 system with ingredients for autocrafting meals on demand        | Buff food always available for combat         |

### Session Plan — Wave 4.5

Bounties are passive — check boards whenever you visit a village.

| Session         | Focus                                                                                                                                                                    | What to Do                     |
|-----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------|
| **Any session** | Visit any village. Find the bounty board (a lectern-like block). Check available quests. Complete gathering quests (deliver items from your AE2 system) for free rewards | Passive XP and loot            |
| **Ongoing**     | Boards regenerate quests periodically. Check back after a few play sessions. Hunting and exploration quests are good reasons to visit new biomes or fight new mobs       | Continuous passive progression |

---

## Wave 4.5 — Quests

Procedural bounty boards give you optional goals as you explore. No quest book, no authoring, no pressure.

### Install

See [MODLIST.md](./MODLIST.md#wave-45--quests).

### Bountiful — Bounty Boards in Villages

Bountiful places **bounty boards** in every village. Right-click a board to see available quests. Each quest asks for something:

| Quest Type      | Example                              | Reward                     |
|-----------------|--------------------------------------|----------------------------|
| **Gathering**   | Deliver 16 iron ingots               | Emeralds, XP, rare items   |
| **Hunting**     | Kill 8 creepers                      | Combat loot, XP            |
| **Exploration** | Find a specific biome/biome type     | Map items, navigation gear |
| **Crafting**    | Deliver crafted items (tools, armor) | Ingots, gems               |

Quests are **procedurally generated** — they pull from items and mobs that actually exist in your world. No manual quest creation needed. Bountiful also has a **Decree** system that lets you blacklist certain quest types if you don't enjoy them.

**How to use:**

1. Find any village
2. Locate the bounty board (a lectern-like block near the center)
3. Right-click to open the quest list
4. Select a quest you can complete
5. The required items appear in the board's slots — drop them in
6. Collect your reward
7. New quests regenerate periodically

**Tip**: The board shows multiple quests at once. Take gathering quests for materials you already have in your AE2 system — free rewards for zero extra work.

---

## Wave 5 — Combat & Mobs

Your powerful gear finally has something worthy to fight. This wave adds better combat mechanics, tougher mob variants, epic boss fights, and roguelike dungeon structures.

### Install

See [MODLIST.md](./MODLIST.md#wave-5--combat--mobs).

### Better Combat — Weapon Feel

Better Combat changes how every weapon **feels** in your hands. It replaces Minecraft's single-swing animation with weapon-specific movesets:

| Weapon type  | Speed     | Reach      | Animation               | Best for                          |
|--------------|-----------|------------|-------------------------|-----------------------------------|
| Daggers      | Very fast | 2 blocks   | Quick stab              | Debuff stacking, fast crit builds |
| Swords       | Fast      | 3 blocks   | Horizontal arc          | General combat, crowd control     |
| Rapiers      | Fast      | 3.5 blocks | Thrust (ignore shields) | Shield-breaking, precision        |
| Greatswords  | Slow      | 4 blocks   | Wide sweep              | Group clearing, knockback         |
| Axes         | Medium    | 3 blocks   | Overhead chop           | Armor penetration, single target  |
| Spears       | Medium    | 4.5 blocks | Forward thrust          | Kiting, reach advantage           |
| Hammers      | Slow      | 3.5 blocks | Overhead slam           | Knockback, stun                   |
| Greathammers | Very slow | 4 blocks   | Ground pound            | AoE knockback, crowd control      |

**Config**: Mod Menu → Better Combat. You can tweak:

- **Reach distance** per weapon type (longer = hit farther, easier to hit)
- **Sweep radius** (wider = hits more mobs)
- **Attack speed** scaling
- **Visual effects** (particles, trail colors)

#### Enchantment Descriptions

Hover over any enchantment in a tooltip (on an item, in a book, or in the enchanting table GUI) — a detailed description of what the enchantment does appears.

**No config needed** — install and forget.

**Dependency note**: **Ritchie's Projectile Library** is a library mod required by Create Big Cannons. It provides custom projectile trajectories and hit detection. Install it alongside Create Big Cannons — no separate configuration needed.

#### Cut Through — Clean Combat

Cut Through solves an annoyance: when fighting in tall grass, vines, or cobwebs, your weapon swings through them without breaking the block, letting you hit the mob behind it. No more accidentally breaking your grass farm or getting stuck swinging at cobwebs while a skeleton shoots you.

**No config needed** — install and forget. Works with Better Combat and all other combat mods.

### Mutant Monsters — Boss Variants

Mutant versions of vanilla mobs. Each is tougher than the original but drops unique gear. With your Epic+ Apotheosis gear, these are satisfying challenges rather than roadblocks.

| Mutant              | Where it spawns  | What to expect                                                                    | Drops                                                                 |
|---------------------|------------------|-----------------------------------------------------------------------------------|-----------------------------------------------------------------------|
| **Mutant Zombie**   | Overworld, night | Slower but tankier. Ground-pound AoE attack. Summons regular zombies              | Hulk Hammer (AoE knockback weapon)                                    |
| **Mutant Skeleton** | Overworld, night | Rapid-fire arrows that inflict weakness. Teleports to escape melee                | Mutant Skeleton Armor (projectile resistance)                         |
| **Mutant Creeper**  | Overworld, night | Explosion radius 2× larger. Drops mini-creepers on death that also explode        | Creeper Minion (craft a creeper that follows and explodes on command) |
| **Mutant Enderman** | The End          | Teleports more aggressively. Throws blocks. Takes reduced damage from projectiles | Enderman gear (teleportation-related items)                           |

**Spawn rate config**: If mutants are too frequent (or too rare), adjust in Mod Menu → Mutant Monsters → spawn weight.

**Strategy**: Mutants are vulnerable to the same tactics as their vanilla versions. Mutant Zombie → kite. Mutant Skeleton → close distance fast. Mutant Creeper → ranged attacks. Mutant Enderman → water buckets and fire resistance.

### L_Ender's Cataclysm — Epic Boss Fights

Epic, hand-animated boss fights with unique mechanics and powerful loot. Each boss is **opt-in** — you must build a summoning structure or find a specific location.

| Boss                      | Location               | How to Summon                                                                                                            | HP      | Recommended Gear                                                                |
|---------------------------|------------------------|--------------------------------------------------------------------------------------------------------------------------|---------|---------------------------------------------------------------------------------|
| **Leviathan**             | Deep ocean (Y < 40)    | Build a summoning altar from prismarine + sea lanterns in a deep ocean biome. Right-click with a **Prismarine Shard**    | ~200 HP | Diamond tier, Depth Strider boots, door trick (block line-of-sight projectiles) |
| **Netherite Monstrosity** | Nether wastes          | Find the lair structure (large nether brick building). Enter the central arena                                           | ~300 HP | Full diamond/netherite, fire resistance potion                                  |
| **Ender Guardian**        | End (outer islands)    | Defeat the Ender Dragon first. Find the summoning platform on an outer island. Place an **Eye of Ender** in the pedestal | ~400 HP | End-game gear. Elytra + Slow Falling for arena edge                             |
| **Ancient Remnant**       | Desert                 | Find the Remnant structure (large desert pyramid variant). Enter the summoning room. Insert a **Nether Star**            | ~350 HP | Blast protection enchantments. Bring blocks to pillar                           |
| **Ignite**                | Nether (basalt deltas) | Build a hollow obsidian sphere (5×5 interior). Place a **Blaze Rod** in the center. Wait 10 seconds                      | ~250 HP | Fire resistance required. Bring water buckets for arena                         |

**General boss strategy tips:**

1. **Scout the arena first** — know where the edges, pits, and hazards are
2. **Bring food buffs** — Farmer's Delight meals + Brewin' And Chewin' drinks stack
3. **Rune up** — apply Lifesteal or Ice runes for the fight
4. **Set a Waystone nearby** — if you die, your grave holds items (GraveStone Mod). Re-equip and re-engage
5. **AE2 wireless terminal** — call in materials mid-fight if you need blocks, potions, or replacement gear

#### Leviathan — Deep Ocean Boss

- **Phase 1**: Charges at you. Dodge sideways, attack the body. It thrashes — jump over the shockwave
- **Phase 2** (50% HP): Summons whirlpools. Stay out of them — they pull you under. Attack the head between whirlpool spawns
- **Drops**: Leviathan Blade (trident-like weapon with water affinity), Sea-themed gear materials

#### Netherite Monstrosity — Nether Boss

- **Phase 1**: Slow melee swings. Attack the legs to slow it down
- **Phase 2** (60% HP): Enrages — faster attacks, fire breath. Minecart rails on the floor? Not here. Sprint behind pillars to block line of sight
- **Drops**: Monstrosity tools (efficient mining on netherite-level), Netherite gear upgrades

#### Ender Guardian — End Boss

- **Phase 1**: Ranged energy bolts. Dodge them — they track slightly. Hit the crystals on the arena walls to stun it
- **Phase 2** (50% HP): Teleports around. Summons endermites. Break all crystals to lower its shield
- **Phase 3** (20% HP): Enraged — faster teleports, energy nova. Pillar up to avoid the ground AOEs
- **Drops**: Ender Guardian weapons (high damage), Teleportation gear

#### Ancient Remnant — Desert Boss

- **Phase 1**: Sandstorm attack — blinds you. Wear goggles or turn away. Attack during cooldown
- **Phase 2** (40% HP): Sinks into sand, pops up elsewhere. Shoot the exposed weak point
- **Drops**: Ancient tools with unique enchantability, Desert-themed gear

#### Ignite — Fire Boss

- **Phase 1**: Fireball barrage. Block with a shield or dodge behind pillars. Attack after each barrage
- **Phase 2** (40% HP): Absorbs lava from the arena — stay on high ground. Attack when it emerges
- **Drops**: Fire weapons (permanent fire aspect without enchantment), Blaze-themed gear

### When Dungeons Arise — Roguelike Structures

Large, multi-floor combat structures scattered across the Overworld. Each is a hand-built dungeon with increasing difficulty per floor.

#### Structure Types

| Structure            | Floors | Difficulty | Biome                    | Loot                        |
|----------------------|--------|------------|--------------------------|-----------------------------|
| **Abandoned Temple** | 3      | Easy       | Plains, forests          | Iron gear, early rare items |
| **Small Castle**     | 4      | Medium     | Plains, hills            | Rare weapons, gold          |
| **Large Castle**     | 6      | Hard       | Mountains, extreme hills | Epic gear, diamonds         |
| **Barracks**         | 2      | Easy       | Any                      | Armor, shields              |
| **Scorched Fort**    | 4      | Medium     | Desert, badlands         | Fire-related items          |
| **Warped Fortress**  | 5      | Hard       | Any (rare)               | End-game gear, unique loot  |
| **Foundry**          | 3      | Medium     | Any underground          | Ores, mining gear           |
| **Bandit Camp**      | 1      | Easy       | Forest, taiga            | Early weapons, food         |

**Finding structures**: Craft an Explorer's Compass → select "When Dungeons Arise" in the structure type filter → select the specific structure.

**Strategy**: Each floor has a mob spawner or boss spawn point. Clear floors systematically. Loot scales with floor depth — deeper floors in large castles have the best loot. Bring blocks to pillar up, torches to light hallways, and decent gear for the deeper floors.

**Tip**: Structures are finite per world — once looted, they don't respawn unless you're far enough away for chunks to reset. Use the compass to find unvisited structures. Mark looted ones on your map.

### Create Big Cannons — Artillery Engineering

Create Big Cannons adds functional cannons built from Create materials, using rotational power for assembly and gunpowder for ammunition.

#### Getting Started

1. **Craft cannon components**: Cannon barrel (bronze/steel), cannon mount (Create materials), cannon charger
2. **Build the cannon**: Place the mount, attach the barrel, connect the charger
3. **Arm it**: Insert powder charges and cannonballs into the cannon's GUI
4. **Fire**: Right-click the cannon or send a redstone signal

#### Ammunition Types

| Ammo             | Effect                                | Use case                     |
|------------------|---------------------------------------|------------------------------|
| Solid cannonball | High damage, block-breaking explosive | Siege, defense               |
| Canister shot    | Spread of small projectiles           | Anti-personnel, mob clearing |
| Grape shot       | Medium spread                         | Crowd control                |
| Incendiary       | Fire on impact + lingering fire       | Area denial                  |
| Smoke shell      | Smoke screen                          | Signalling, concealment      |

#### Integration

- Cannons are gated behind bronze/steel (Create's progression) and gunpowder (early game)
- Mount cannons on your colony's walls for defense — they fire at enemies within range
- Use cannonballs for large-scale terraforming (clearing areas for expansion)
- Redstone-controlled: hook up a pulse extender for automatic salvo fire

### Session Plan — Wave 5

Combat content is opt-in. Engage when you want a challenge, not before.

| Session                              | Focus                                                                                                                                                                                                                        | What to Do                                |
|--------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------|
| **Session 1 — Combat feel**          | Better Combat works automatically. Craft a Simply Swords weapon if you haven't already (or find one from dungeon loot). Test the attack patterns — daggers stab fast, greatswords sweep wide. Equip a Lifesteal or Fire rune | Learn your weapon, feel the combat change |
| **Session 2 — First mutant**         | Find a Mutant Zombie at night (listen for its distinctive roar). Kite it, learn its attack patterns. Collect its unique drop                                                                                                 | First mini-boss beaten, unique loot       |
| **Session 3 — First dungeon**        | Find a When Dungeons Arise small castle or abandoned temple. Clear floors systematically. Collect loot from each floor                                                                                                       | Rougelike dungeon completed, rare loot    |
| **Session 4 — First Cataclysm boss** | Choose the easiest boss (Leviathan — deep ocean) or the most accessible (Netherite Monstrosity — Nether fortress). Prepare: bring good weapons, fire resistance, healing food. Summon and fight                              | Epic boss beaten, endgame gear start      |
| **Session 5 — Cannons**              | Craft bronze (Create: zinc + copper in heated mixer). Build a Small Cannon. Test fire it at a target. Mount it near your base entrance                                                                                       | Artillery online, colony defense          |
| **Session 6+ — Boss gauntlet**       | Work through remaining Cataclysm bosses. Each drops unique materials for endgame gear. Twilight Forest bosses (Wave 2) also benefit from Wave 5 gear — revisit them now                                                      | Full endgame gear progression             |

**Tip**: Better Combat changes how melee works fundamentally. Don't skip Session 1 even if you're a ranged player — the weapon swing changes affect all melee combat, including tools.

---

## Wave 6 — Building & Decoration

Tools and blocks to build the base you deserve. Every base deserves to look good — these mods give you the materials and tools to build without creative mode.

### Install

See [MODLIST.md](./MODLIST.md#wave-6--building--decoration).

### Rechiseled — Decorative Block Variants

Rechiseled adds 600+ decorative block variants with connected textures. Craft a **chisel** (iron ingot + 2 sticks) and right-click to open the chiseling screen — browse all variants of any block, toggle connected textures, and switch between full blocks, stairs, and slabs.

#### How to Use — The Chisel

1. **Craft a chisel**: Check JEI for the recipe (iron + sticks in a tool-like pattern)
2. **Right-click with the chisel** to open the chiseling screen
3. Place a base block in the **input slot** — the screen shows all available decorative variants
4. Click a variant to preview it. The preview cycles between a single block, a row, and a 3×3 grid
5. Take the result from the output slot — the chisel consumes the input block and produces the variant
6. **Left-click** placed blocks with the chisel to cycle them through random variants in-world

**Key features**:

- **Connected textures** — most variants have a connected version (blocks of the same type visually merge). Toggle with the button in the bottom-right of the chiseling screen
- **Stairs & slabs** — every decorative variant also has stair and slab forms, available from the same chiseling screen
- **600+ variants** across stone, wood, glass, concrete, terracotta, wool, nether materials, and more
- **No durability** — the chisel never breaks

**Block types with many variants**:

- **Stone**: Bricks, tiles, carved, pillars, panels, runed, chiseled, mosaic — 30+ total
- **Glass**: All colors + connected clear glass, borders, panels — perfect for windows
- **Wood**: Planks with grain variants, carved panels, ornate borders
- **Wool & Carpet**: Woven, knitted, cross-stitched, patterned — for cozy floors
- **Concrete**: Smooth, paneled, tiles, with borders
- **Nether materials**: Glowstone, nether bricks, blackstone get many variants

**Pro tip**: Rechiseled blocks can be stored in your AE2 ME drive like any other block. Use the **Rechiseled: Applied Energistics 2** addon to autocraft specific variants on demand — build a Chiseling Pattern Encoder and encode chiseling patterns into AE2's molecular assemblers.

### Supplementaries — Vanilla+ Functional Decoration

Supplementaries adds decoration blocks that serve a purpose:

| Block            | Function                                        | How to use                                                                                                                                 |
|------------------|-------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------|
| **Jar**          | Stores 1 item visually (display)                | Right-click with an item to put it inside. Right-click empty to take it out. Shows the item floating inside                                |
| **Signpost**     | Directional sign pointing to a named location   | Right-click with a tag item to set the destination name. The signpost arm points toward that named Waystone or location                    |
| **Faucet**       | Fluid flow decoration. Connects to fluid tanks  | Place above a fluid container. Right-click to toggle flow. Decorative but functional with a fluid mod                                      |
| **Weather Vane** | Shows wind direction and speed                  | Place outside. The vane rotates in real-time based on weather. Purely decorative                                                           |
| **Item Shelf**   | Wall-mounted shelf for displaying up to 3 items | Right-click with an item to place it on the shelf. Sneak-right-click to remove. Items sit visibly on the shelf                             |
| **Rope**         | Climbable rope, can be placed in mid-air        | Right-click to place a rope knot. Add rope below by right-clicking with more rope. Climb like a ladder. Breaks when the top knot is broken |
| **Flute**        | Craftable instrument                            | Right-click to play a note. Decorative, but villagers react to it                                                                          |

**Practical builds**:

- Kitchen: Item shelves for ingredient display, jars for flour/sugar, faucet over sink
- Entrance: Signposts directing to "Mine", "Nether Portal", "Village"
- Garden: Weather vane for realism, rope swing from a tree branch
- Study: Jars with glowing items as lamps

### Macaw's — Complete Building Set

Macaw's adds structural building elements in every wood type. Five modules:

**Macaw's Bridges**:

- Craft: 6 slabs of the wood type + 1 stick in a bridge pattern
- Place: Right-click to extend. Shift-right-click to shorten. Supports railings, torches on the side
- Types: Straight bridge, rope bridge (no railings, more rustic)
- All wood types: oak, spruce, birch, jungle, acacia, dark oak, mangrove, cherry, crimson, warped

**Macaw's Doors**:

- Adds **special doors** per wood type: glass door, slatted door, stable door (top half opens independently), cottage door, shop door, paper door
- All crafted with matching wood + relevant materials (glass for glass doors, paper for paper doors)

**Macaw's Roofs**:

- Adds **roofing blocks** for every wood: roof slopes, ridge blocks, gutter blocks
- Craft: 3 slabs in a triangle pattern for a slope piece
- Place roofs by laying slope pieces side-by-side. The game auto-connects corners

**Macaw's Windows**:

- Window types: diamond pane, framed, barred, tropical, stained glass window
- All crafted with glass + wood type. Place like normal panes
- Can be combined with decorative glass from Rechiseled

**Macaw's Fences**:

- Variations beyond vanilla fences: picket fence, stockade fence, horse fence, wired fence, highley gate
- Each with a distinct look — picket for suburban, stockade for medieval, wired for industrial

**Building tip**: Use Macaw's roofs + Rechiseled stone variants + Macaw's windows for a cohesive base aesthetic. Create uses Macaw's trapdoors and fence gates for its kinetic builds, too.

### Building Wands — Large-Scale Construction

Building Wands lets you place many blocks at once. It's the closest thing to WorldEdit without a server plugin.

**Crafting**: Stick + 2 blocks of the same type in a + pattern (check JEI — the blocks determine the wand tier; stone = basic, iron = better, diamond = best)

**How to use**:

1. **Right-click** the wand in your hand to open the **mode GUI**
2. Select a mode from the menu:

| Mode               | What it does                                 | When to use                              |
|--------------------|----------------------------------------------|------------------------------------------|
| **Build Wall**     | Creates a wall between 2 clicked points      | Enclosing a room, building a perimeter   |
| **Build Line**     | Creates a 1-block-wide line between 2 points | Railings, borders, pathways              |
| **Fill Area**      | Fills a 3D cuboid between 2 corners          | Filling in a foundation, clearing a room |
| **Build Circle**   | Creates a ring of blocks                     | Towers, wells, circular rooms            |
| **Build Cylinder** | Fills a cylinder                             | Silos, water tanks, pillar bases         |
| **Build Sphere**   | Creates a hollow or filled sphere            | Domes, decorative globes                 |

1. **Left-click** to set the first corner/point (a green sparkle appears)
2. **Right-click** to set the second corner/point (the structure is built)
3. **The wand uses blocks from your inventory** — it only places blocks you're carrying

**Pro tips**:

- Shift+Right-click to undo the last placement
- The wand works with Create schematic cannon blueprints for precision
- Use the **Undo wand** (craft: stick + slimeball) to reverse recent wand actions without losing materials
- Combined with AE2's ME terminal, you can access your entire storage while building — set a wireless terminal hotkey

### Handcrafted — Furniture

Furniture blocks for building cozy interiors:

| Furniture     | What it does                                                                                                 |
|---------------|--------------------------------------------------------------------------------------------------------------|
| **Chairs**    | Right-click to sit. Looks different per wood type. Craft with slabs and planks                               |
| **Tables**    | Decorative surface. Right-click to place items on top for display. Dinner tables, coffee tables, nightstands |
| **Shelves**   | Wall-mounted. Right-click to place items. Books, potions, trophies                                           |
| **Curtains**  | Hanging window decoration. Right-click to open/close                                                         |
| **Desks**     | Table + shelf combo. Right-click drawer for item storage                                                     |
| **Cupboards** | Small cabinet for aesthetic item storage. Must be placed against a wall                                      |
| **Sofa**      | Multi-block seating. Right-click to sit. Craft with wool + wood                                              |
| **Dresser**   | Tall storage furniture. Right-click drawers for storage                                                      |

**How to craft**: Check JEI. Most furniture is crafted from wood + relevant material (wool for sofas, glass for cabinets). Different wood types give different styles.

**Tip**: Place Handcrafted furniture in the rooms you use most — kitchen, dining room, bedroom. Use Item Shelves for decorative displays of your favorite loot (Twilight Forest boss trophies, Apotheosis mythic gear, rare Simply Swords weapons).

---

## Wave 7 — Space Exploration

Space travel becomes real. Build rockets, manage oxygen, explore alien worlds, and bring back exotic resources to fuel your industrial empire.

### Install

See [MODLIST.md](./MODLIST.md#wave-7--space-exploration).

### Stellaris — Interplanetary Travel

Stellaris (by ExodusTeam) is a complete space exploration mod. Build rockets piece by piece, manage oxygen and fuel, and travel to 5 planets across 2 solar systems.

**Video Tutorial**: [Stellaris Getting Started Guide](https://www.youtube.com/watch?v=oZwi3zcYi7c) — visual walkthrough of the rocket building process, planet progression, and key mechanics.

#### Core Concepts

| Concept               | What it means                                                                                                                            |
|-----------------------|------------------------------------------------------------------------------------------------------------------------------------------|
| **Rocket Components** | Rockets aren't crafted in one slot. Build engines, fuel tanks, capsules, and fins separately, then assemble them at a **Rocket Station** |
| **Oxygen**            | Most planets have no atmosphere. You need a space suit with oxygen to survive. Oxygen runs out — refill at home before traveling         |
| **Fuel**              | Rockets need fuel (crafted from oil). Refine oil into fuel using Stellaris machines. Higher-tier rockets need more fuel                  |
| **Planet Tiers**      | Planets have tier requirements — a basic rocket can only reach the Moon. Upgraded rockets can reach Mercury, Venus, Mars, and Glacio     |
| **Gravity**           | Each planet has different gravity. Lower gravity = higher jumps, slower falls. Higher gravity = weighted movement                        |

#### Phase 1: Getting to Space

**Step 1 — Gather early Stellaris resources:**

- Find **oil** in the Overworld (generates as pools similar to water, often in deserts and plains)
- Mine **steel** — you already have this from Mekanism (Metallurgic Infuser)
- Collect **iron**, **copper**, **redstone**, and **glass** (all vanilla materials)

**Step 2 — Build basic machines:**

| Machine                | What it does                                                             | Priority |
|------------------------|--------------------------------------------------------------------------|----------|
| **Rocket Station**     | The assembly block. Place it, open the GUI, build rocket components here | First    |
| **Fuel Refinery**      | Converts oil into rocket fuel. Place near the Rocket Station             | Second   |
| **Oxygen Distributor** | Fills space suits with oxygen. Requires power                            | Third    |
| **Water Separator**    | Produces oxygen from water (for the Oxygen Distributor)                  | Fourth   |
| **Solar Panel**        | Generates power on planets with sun exposure                             | Fifth    |

**Step 3 — Build your first rocket:**

1. Open the **Rocket Station** GUI
2. Craft a **Tier 1 Rocket Engine**, **Tier 1 Fuel Tank**, **Rocket Capsule**, and **Rocket Fins** using the station's internal crafting
3. Each component uses materials you've gathered: steel, iron, copper, redstone
4. Once all components are built, the Rocket Station assembles them into a **Tier 1 Rocket**
5. Right-click the assembled rocket with the **Rocket Station** to create the launch pad

**Step 4 — Prepare for launch:**

1. Fill the fuel tank — pump fuel from the Refinery into the rocket (fluid pipes from a pipe mod, or use buckets)
2. Equip a **Space Suit** (craft: check JEI — requires steel, glass, and rubber/leather)
3. Fill the space suit with oxygen at the **Oxygen Distributor**
4. Stock supplies — food (Farmer's Delight meals work with oxygen present), building blocks, torches, weapons

**Step 5 — Launch:**

1. Enter the rocket (right-click the door)
2. Press the launch button inside the rocket GUI
3. Watch the ascent animation — you're going to space

#### The Moon — Your First Destination

The Moon is the safest first destination. Gravity is low (≈17% of Overworld), no atmosphere (needs oxygen), and has basic resources.

**What to do on the Moon:**

- **Mine moon stone** and **cheese ore** (yes, the moon is made of cheese — it smelts into cheese ingots)
- **Collect desh** — the Moon's primary rare resource. Desh is used for Tier 2 rocket components
- **Explore structures** — crashed spaceships, moon bases, landing pads (Stellaris generates these automatically)
- **Set up a base** — place a Waystone immediately. A solar panel + oxygen distributor + chest is enough for early visits
- **Look for rich ore veins** — the Moon has higher concentrations of certain Overworld ores

**Returning to Earth:** Enter the rocket on the Moon and launch. You'll fly back to your original launch pad.

#### Other Planets

| Planet      | Tier Required | Gravity | Hazards                           | Key Resource      | Notes                                                      |
|-------------|---------------|---------|-----------------------------------|-------------------|------------------------------------------------------------|
| **Moon**    | 1             | Low     | None (oxygen required)            | Desh              | First destination. Safe. Practice here                     |
| **Mercury** | 2             | Low     | Extreme heat, fire damage outside | Ostranium         | Closest to the sun. Bring fire resistance                  |
| **Venus**   | 2             | High    | Thick atmosphere, acid rain       | Tharsite          | Dense, heavy movement. Bring acid protection               |
| **Mars**    | 3             | Medium  | Cold, dust storms                 | Desh (rich veins) | Alien flora and fauna. Best for a permanent off-world base |
| **Glacio**  | 4             | Low     | Extreme cold, freezing damage     | Glacio crystals   | Ice planet. High-end resources. Endgame destination        |

#### Machines to Build Off-World

Once you have a foothold on another planet, set up automated resource extraction:

| Machine                | What it does                          | Why you need it                                                  |
|------------------------|---------------------------------------|------------------------------------------------------------------|
| **Solar Panel**        | Generates power from sunlight         | Most planets have more sun than Earth. Free energy               |
| **Oxygen Distributor** | Fills space suits with breathable air | Required for survival on every planet                            |
| **Water Separator**    | Produces oxygen from water            | Feed oxygen into the Distributor. Water pumps on some planets    |
| **Fuel Refinery**      | Processes oil into rocket fuel        | Fuel is heavy — refine on the destination planet if you find oil |
| **Pump Jack**          | Extracts oil from the ground          | Find oil pools on other planets for local fuel production        |

### Integration With Your Tech Base

| System                      | How it connects                                                                                                                                                                                         |
|-----------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Mekanism power**          | Run Mekanism generators at your Moon base. Use universal cables to power Stellaris machines. The MekaSuit's flight and environmental protection make spacewalks trivial                                 |
| **Mekanism ore processing** | Bring planet ores (desh, ostranium, tharsite) back to your main Mekanism processing line. 5x multiplication works on Stellaris ores                                                                     |
| **AE2 storage**             | Store Stellaris materials in your ME drive. Set up autocrafting for rocket components. Place an ME interface + storage bus at your off-world base with a quantum link or P2P tunnel to the main network |
| **Create transport**        | Use Create trains to move rocket materials from the launch pad area to your main base. Conveyor belts move components from storage to the Rocket Station                                                |
| **TFMG fuel**               | Refine diesel/gasoline in TFMG's Distillation Tower for industrial fuel. Stellaris uses its own fuel crafting system (oil → fuel refinery)                                                              |
| **Sophisticated Backpacks** | Backpacks with netherite upgrades carry enough oxygen tanks and supplies for extended planetary expeditions                                                                                             |
| **Farmer's Delight**        | Cooked meals are eatable in space (with oxygen present) — bring hearty stews and sandwiches instead of raw ingredients                                                                                  |

### Wave 7 Addons

#### Potentials API — Required Library

Potentials API is a mandatory dependency for Stellaris. Install it without reservation — it provides networking and capability code that Stellaris's rocket systems, oxygen management, and planetary mechanics rely on. No user-facing features, no config, no gameplay changes.

**No config needed** — library mod, install and forget.

### Progression Placement

Space exploration belongs in Phase 2 (Industrial Ascent, hours 40–200). You should have:

- Mekanism basic processing (Enrichment Chamber — Tier 1)
- A small AE2 network for storage
- Create power infrastructure
- Good weapons and armor (Wave 3/5 gear helps with planet mobs)

Start with moon missions, establish a Tier 1 base, then work toward Mercury and Venus. Mars and Glacio are solidly in late Phase 2 territory.

### Session Plan — Wave 7

Space is a Phase 2+ activity. Don't start until you have Mekanism basic processing, an AE2 network, and decent power infrastructure.

| Session                      | Focus                                                                                                                                                                    | What to Build                               |
|------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------|
| **Session 1 — Ground prep**  | Find oil (surface pools in deserts/plains). Build Fuel Refinery + Rocket Station. Craft Tier 1 rocket components (engine, fuel tank, capsule, fins). Assemble the rocket | Launch infrastructure complete              |
| **Session 2 — Moon landing** | Craft a Space Suit. Fill it with oxygen at the Oxygen Distributor. Stock supplies (food, blocks, torches, weapons). Enter the rocket and launch                          | First off-world base, desh collected        |
| **Session 3 — Moon base**    | Set up a solar panel + oxygen distributor on the Moon. Place a Waystone. Mine desh for Tier 2 rocket components. Place a Chunk Loader to keep it running                 | Sustainable Moon operation                  |
| **Session 4 — Next planets** | Upgrade to Tier 2 rocket. Fly to Mercury or Venus. Each has unique hazards (heat, acid rain) and resources (ostranium, tharsite). Set up a temporary base                | New planet resources, expanded capabilities |
| **Session 5+ — Deep space**  | Tier 3 rocket → Mars (permanent off-world base). Tier 4 rocket → Glacio (endgame crystals). Bring Mekanism digital miner for automated resource extraction               | Full interplanetary logistics               |

**Tip**: Space is the most resource-intensive activity in the pack. Don't rush it. Each planet should feel like a meaningful expansion of your industrial empire, not a checklist item. The MekaSuit trivializes spacewalks — jetpack flight + environmental protection = no oxygen worries.

---

## Keybindings Reference

| Keybind               | Default                   | Mod                     | Wave |
|-----------------------|---------------------------|-------------------------|------|
| View Recipes          | `R`                       | JEI                     | 0    |
| View Uses             | `U`                       | JEI                     | 0    |
| Open Mod Menu         | **Set to `Ctrl+M`**       | Mod Menu                | 0    |
| Open Fullscreen Map   | `J`                       | Xaero's World Map       | 0    |
| Toggle Minimap        | `H`                       | Xaero's Minimap         | 0    |
| Open Waystone Menu    | **Set to `Ctrl+Shift+W`** | Waystones               | 0    |
| Open Backpack         | `B`                       | Sophisticated Backpacks | 0    |
| Zoom                  | **Set to `C`**            | Sodium                  | 0    |
| Toggle Dynamic Lights | **Set to `Ctrl+L`**       | LambDynamicLights       | 0    |
| Open Curios Inventory | **Set to `Y`**            | Curios API              | 0    |
| Open Skill Tree       | **Set to `P`**            | Skill Tree              | 3    |
| View Weapon Ability   | `Ctrl` (hold)             | Simply Swords           | 3    |
| Open Rune Pouch       | **Set to `R`**            | Runes                   | 3    |
| Open Create Ponder    | `W` (hold over block)     | Create                  | 1    |
| Open Town Hall GUI    | Right-click Town Hall     | MineColonies            | 1.5  |

## Progression Through All Waves

| Phase                      | What you'll be doing                                                                                                                                                                                                                                                                                                                                     |
|----------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Phase 1** (hours 0-40)   | Wave 0 setup. Early Create (water wheel, mechanical press). Find certus quartz for AE2. Make first Mekanism machines (2x ore). Explore Terralith biomes. Skill Tree active from first action. Find your first Simply Swords weapon. Cook Farmer's Delight meals. Start MineColonies colony (builder hut, basic mines). Grab bounties from village boards |
| **Phase 2** (hours 40-150) | Full Create factory (conveyors, deployers, sequenced crafters). Mekanism 3x-5x ore processing. AE2 ME network with autocrafting. Explore Twilight Forest bosses. Apotheosis rare/epic gear. Mutant Monsters. First Cataclysm boss. Build with Rechiseled, Supplementaries, and Macaw's. Complete bounties for passive rewards as you explore             |
| **Phase 3** (hours 150+)   | Mekanism fusion reactor + MekaSuit. AE2 full autocrafting CPU chains. Endgame Apotheosis mythic gear. Twilight Forest final bosses. L_Ender's Cataclysm endgame bosses. BetterEnd End dimension. Monumental building projects with all decoration tools                                                                                                  |

## General Tips

### Finding Help

- **JEI (`R`)** is always your first stop — hover an item and press R to see how it's made
- **Mod Menu / Configured** shows every installed mod's config
- Most mods link to their wiki or Discord from their Mod Menu entry

### Losing Progress

You won't. Graves preserve your items. No creeper craters. The pack is designed so you can walk away for a month and come back to exactly the world you left.

### Java & Performance

Minecraft 1.21.1 requires **Java 21**. See [MODLIST.md](./MODLIST.md#wave--1--prerequisites) for JDK installation instructions and recommended JVM arguments.
