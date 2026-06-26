# Getting Started V2 — Minecraft 1.21.1 Fabric

This guide walks you through the modpack **one Wave at a time**. Each wave introduces one new capability (or family of mods). Don't install the next wave until you're comfortable with the current one.

The four pillars remain the same: **serious power fantasy**, **easy-to-standard difficulty**, **200h+ content runway**, **chill living**.

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

Open your inventory (`E`). You'll see a 2×2 crafting grid in the top-right. Place 1 wood log in any slot → 4 wood planks appear on the right. Take them. Then fill all 4 crafting slots with planks (put 1 plank in each) → 1 crafting table appears. Take it.

**Quick tip**: In your inventory grid, you can also turn 2 planks into 4 sticks (plank on top, plank on bottom). Sticks are used for tool handles.

#### 3. Place your crafting table

Walk to where you want your base. Right-click the ground with the crafting table in your hand → it appears. **Right-click the table** to open its 3×3 crafting grid (the big one).

Now craft tools:

| Tool               | What it does          | Crafting (3×3 grid)                                      |
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

**The Nether**: A dangerous alternate dimension. Build a Nether Portal (10 obsidian blocks in a 4×5 rectangle, light with flint and steel). The Nether has unique resources (blaze rods, netherite) and is optional for most of this modpack.

**The End**: The dimension with the Ender Dragon. Beating the dragon is the "credits roll" of vanilla Minecraft. This modpack has many more things to do after that.

---

## Wave 0 — Foundation

This wave makes Minecraft run well, look great, and feel comfortable. No major gameplay changes yet — you're just setting up your world to be livable.

### Install

See [MODLIST-V2.md](./MODLIST-V2.md#wave-0--foundation-qol-performance-storage-comfort) for the full mod list with download links.

### First Launch Settings

After installing Wave 0 mods, launch Minecraft once to generate config files, then adjust the following:

#### Video Settings (in-game: Options → Video Settings)

| Setting         | Recommended    | Notes                                                   |
|-----------------|----------------|---------------------------------------------------------|
| Graphics        | Fabulous       | Sodium makes this performant now                        |
| Render Distance | 16–32 chunks   | Tune to your hardware; Distant Horizons handles far LOD |
| Brightness      | Moody → Bright | Personal preference — Bright makes caves easier to see  |

#### Keybindings (in-game: Options → Controls → Key Binds)

After Wave 0, set these up immediately:

| Keybind             | Default       | Mod                     | Notes                                                       |
|---------------------|---------------|-------------------------|-------------------------------------------------------------|
| View Recipes        | `R`           | EMI                     | Hover over any item and press R                             |
| View Uses           | `U`           | EMI                     | Hover over any item and press U                             |
| Open Mod Menu       | **Not set**   | Mod Menu                | **Set this to `Ctrl+M`** — opens the mod list/config screen |
| Open Fullscreen Map | `J`           | Xaero's World Map       | Opens the big map                                           |
| Toggle Minimap      | `H` (default) | Xaero's Minimap         | Shows/hides the corner minimap                              |
| Open Waystone Menu  | **Not set**   | Waystones               | **Set this to `Ctrl+Shift+W`** — opens teleport list        |
| Open Backpack       | `B`           | Sophisticated Backpacks | Opens equipped backpack                                     |
| Zoom                | `C` (Sodium)  | Sodium                  | Hold to zoom in — very useful for scouting                  |
| Toggle BetterF3     | **Not set**   | BetterF3                | **Set this to `F3`** — replaces default debug screen        |
| Toggle LambDynamicLights | **Not set** | LambDynamicLights    | **Set this to `Ctrl+L`** — toggle dynamic lighting on/off   |

> **Pro tip**: Set Waystones, Mod Menu, and Zoom first — you'll use them constantly.

### Using Wave 0 Mods

#### EM! (Recipe Viewer) — Your Primary Learning Tool

EM! replaces JEI from V1. It works the same way:

- **R** over any item → shows how to craft it
- **U** over any item → shows what it's used in
- **Left-click** a recipe result → puts the ingredients in the crafting grid
- **Right-click** a recipe → cycles through available recipes (crafting, smelting, etc.)

Use EM! constantly. Every mod in future waves is learned through EM! first.

#### Sophisticated Storage

Your early-game storage solution. Better than vanilla chests in every way.

| Action           | How                                                                                  |
|------------------|--------------------------------------------------------------------------------------|
| Place a barrel   | Craft 1 chest + 8 planks → right-click to place                                      |
| Rename a barrel  | **Shift + right-click** with the barrel → type a name (e.g., "Ores", "Wood")         |
| Upgrade a barrel | Craft an iron barrel upgrade → shift-right-click the barrel to apply                 |
| Lock a barrel    | Shift-right-click with a stack of the item you want to lock → only that item goes in |
| Open a backpack  | Press `B` (keybind) or right-click in hand                                           |

Barrels hold more than chests, keep their named labels visible, and stack with hoppers/pipes from future waves. Use them now — they'll feed into automation later.

**Upgrade path**: Basic barrel → Iron barrel (double slots) → Gold barrel (more) → Diamond barrel (massive) → Netherite barrel (enormous). Apply upgrades by shift-right-clicking.

#### Sophisticated Backpacks

Craft a backpack early. It's your portable inventory that you can upgrade.

| Action       | How                                                        |
|--------------|------------------------------------------------------------|
| Equip        | Place in chest armor slot (or hotbar)                      |
| Open         | Press `B` or right-click in hand                           |
| Upgrade      | Same system as barrels — iron, gold, diamond, netherite    |
| Tool upgrade | Adds smelting, magnet, feeding, and other utility upgrades |

**Recommended first upgrade**: Iron tier → then a **Tool Swapper** upgrade (auto-swaps tools when breaking blocks).

#### Xaero's Minimap & World Map

| Action               | How                                                    |
|----------------------|--------------------------------------------------------|
| Toggle minimap       | `H`                                                    |
| Open world map       | `J`                                                    |
| Add waypoint         | Open world map (`J`) → left-click a location → name it |
| Teleport to waypoint | Only works with Waystones mod installed (next section) |

The minimap shows mobs around you (green dots = passive, red = hostile). The world map auto-saves every chunk you visit — great for exploration.

#### Waystones

Waystones spawn in villages. You can also craft them.

| Action             | How                                                                                              |
|--------------------|--------------------------------------------------------------------------------------------------|
| Craft a Waystone   | 3 stone + 1 ender pearl (in a T-shape)                                                           |
| Claim a waystone   | Right-click it → it's added to your teleport list                                                |
| Open teleport menu | `Ctrl+Shift+W` (if you set the keybind) or shift-right-click in hand with the Warp Stone         |
| Warp Stone         | Craft 1 ender pearl + 2 amethyst shards → keeps teleports on you without returning to a waystone |

**Config note**: Teleport costs are disabled (no XP drain). Waystones spawn regularly in villages. The **Warp Stone** is a portable item that opens the teleport menu from anywhere.

#### Grave Mod (Universal Graves / Corail Tombstone)

When you die, a grave spawns containing your items. No item despawning, no losing everything.

| Action           | How                                                |
|------------------|----------------------------------------------------|
| Retrieve items   | Interact with the grave (right-click)              |
| Grave protection | 24 real-time hours before the grave becomes public |
| Keep XP          | XP is preserved on death (configurable)            |

> **Wave 0 chill rule**: If you die, just walk back to your grave. No panic, no loss. This remains true across all future waves.

#### Distance Horizons

This mod renders LODs (Level of Detail) far beyond vanilla render distance.

| Setting             | Recommended | Notes                                                  |
|---------------------|-------------|--------------------------------------------------------|
| LOD Render Distance | 1024 blocks | Configurable in-game via Distant Horizons settings GUI |
| Quality preset      | High        | Tune down if performance dips                          |

Open **Mod Menu** (`Ctrl+M`) → Distant Horizons → Config to adjust. The mod generates LOD data as you explore — first visit to an area will have temporary pop-in.

#### Continuity

No interaction needed. It makes glass, sandstone, and bookshelves render with connected textures (no visible seams). It works automatically with any resource pack that supports OptiFine connected textures format.

#### ModernFix

Installed automatically — no config needed. It fixes dozens of Minecraft bugs, reduces memory usage by up to 30%, and speeds up game startup. If you see a strange crash, check ModernFix first — it logs detailed diagnostics to the latest.log.

#### ImmediatelyFast

No interaction needed. Improves immediate-mode rendering performance — noticeable when flying through dense areas (forests, caves, mob farms) where entity/block rendering lagged before.

#### C2ME (Concurrent Chunk Management)

No interaction needed. Speeds up world generation and chunk loading by running chunk tasks in parallel. Most noticeable when exploring new terrain or teleporting long distances.

#### LambDynamicLights

Equip a torch or glowstone block → it emits light around you. Works in the off-hand too. Configurable brightness in Mod Menu → LambDynamicLights. Toggle off if it affects FPS.

**Pro tip**: Hold a torch in your off-hand while mining — no more placing torches every 5 blocks. The light follows you.

#### BetterF3

Press `F3` to see the cleaner debug HUD. Customize what's shown in Mod Menu → BetterF3 → Config. You can toggle individual modules (FPS, coordinates, biome, light level, etc.) without the clutter.

#### Sound Physics Remastered

No interaction needed. Makes sound behave more realistically — muffled through walls, echo in caves, directional audio. Works with any sound pack.

#### Ambient Leaves

No interaction needed. Trees drop falling leaves — purely cosmetic. Configurable particle density in Mod Menu.

#### Mouse Tweaks

Inventory management shortcuts:
- **Left-click drag** across multiple slots → distributes items evenly
- **Right-click drag** → places one item per slot
- **Scroll wheel** on a stack → moves one item to another inventory
- **Left-click + shake** → tosses all items of that type

These work in every inventory screen (chests, machines, backpacks). Start using them immediately — they're faster than vanilla drag-and-drop.

#### Chat Heads

In multiplayer, shows the sender's head next to their chat message. In singleplayer, it shows your own skin. No config needed — works automatically with any chat mod.

#### Simple Harvest

Right-click a fully grown crop → it breaks and drops, then auto-replants. Works on vanilla crops and most modded ones. No keybind needed — just right-click.

#### Jade Addons

Extends Jade's block info panels. When looking at Tech Reborn machines, you'll see energy levels and processing progress. When looking at animals, you'll see breeding cooldown and health. Install and forget — it just adds more useful info to your HUD.

---

## Wave 1 — Tech (Tech Reborn)

This wave adds **Tech Reborn** — a Fabric-native tech mod with comprehensive ore processing, power generation, machines, tools, armor, and late-game quantum technology. Also adds Mythic Metals (~20 new ores), Clutter (biomes + ores), and Alloy Forgery.

### Install

See [MODLIST-V2.md](./MODLIST-V2.md#wave-1--tech-tech-reborn) for the mod list. Install all Wave 1 mods at once — they're designed to work together.

### Keybindings

Tech Reborn uses default keybinds that you can check in Options → Controls → Key Binds. Tech Reborn entries appear under the `TechReborn` category after installation.

### How to Use — Tech Reborn

Tech Reborn uses an **energy (RF/EU) system**. Machines need power to run. You build generators, connect machines with cables, and automate processing chains.

#### Step 1: Start with basic machines

Craft your first machines using the **EMI recipe browser** (`R` key). The early progression is:

1. **Manual generation** — Craft a **coal generator** (burns coal/charcoal) and a **basic furnace** to start
2. **Extractor** — Get rubber from sticky resin (needed for cables). Find sticky resin on trees
3. **Compressor** — Compresses materials into plates, circuits, and machine components
4. **Cables** — Connect generators to machines (tin cable starts, copper for mid-game)
5. **Macerator / Pulverizer** — Doubles ore output (1 ore → 2 dust, smelt dust → 2 ingots)

#### Step 2: Build a processing chain

Tech Reborn has **multiple ore processing chains**. The simplest:

- Mine ore → Macerator → 2 dust → Electric Furnace → 2 ingots

Later chains add chemical processing, industrial grinders, electrolyzers, and higher yield multipliers (up to 5x with full chemical processing).

#### Step 3: Expand power generation

| Generator | Fuel | Notes |
|-----------|------|-------|
| Coal Generator | Coal, charcoal | Starting generator |
| Solar Panel | Sunlight | Passive — works best in deserts, day only |
| Thermal Generator | Lava | Mid-game — reliable, requires lava transport |
| Gas Generator | Hydrogen | Mid-game — produced from electrolysis |
| Fusion Reactor | Deuterium + Tritium | Endgame — massive output, endgame material |

#### Step 4: Automate with cables

Tech Reborn cables have tiered power capacity:

| Cable | Max Transfer | Notes |
|-------|-------------|-------|
| Tin Cable | Low (32 EU/t) | Get rubber from sticky resin first |
| Copper Cable | Medium (128 EU/t) | Standard mid-game cable |
| Gold Cable | High (512 EU/t) | Late-game power transport |
| Superconductor | Unlimited | Endgame — very expensive |

Use a **wrench** to configure connections (shift-right-click to disconnect a face).

#### Step 5: Industrial machines

As you progress, unlock larger, faster versions:

- **Industrial machines** (Industrial Grinder, Industrial Electrolyzer, Industrial Sawmill) — process faster and unlock new recipes
- **Chemical Reactor** — advanced material synthesis
- **Implosion Compressor** — creates high-tier materials (needed for quantum armor)
- **Matter Fabricator** — generates UU-Matter for material replication
- **Quantum Armor / Quantum Suit** — endgame personal protection with flight, fire resistance, full invulnerability

#### Step 6: Late game

- **Fusion Reactor** — self-sustaining power (requires deuterium/tritium)
- **Quantum Suit** — creative-flight, extreme damage resistance, environmental protection
- **Ultimate machines** — max-speed processing (industrial blast furnace, industrial centrifuge)
- **Quantum Chest / Quantum Tank** — near-infinite single-item storage and fluid storage

#### Key Tips

- **Sticky Resin**: Find on tree trunks in worldgen — necessary for rubber. Extract in an Extractor
- **Circuits**: Start with basic circuits → advance to electronic circuits → advanced circuits
- **Rubber**: Smelt resin into rubber. Used in all cable crafting
- **Use EMI**: Press `R` on any Tech Reborn item to see its recipe
- **Guide Book**: Craft the Tech Reborn guide book for in-game documentation

#### Alloy Forgery#### Alloy Forgery

Adds a multiblock **Alloy Forge** for combining two metals into alloys. Build the structure, place the controller block, and use it to create alloys that Tech Reborn and Mythic Metals need. Check EMI for alloy recipes.

---

## Wave 2 — Exploration (World, Dimensions & Dungeons)

This wave makes the world worth exploring. The Overworld gets richer biomes and better terrain (Terralith + Tectonic), dungeons become proper loot targets (YUNG's), and three new dimensions open up — each at your own pace.

### Install

See [MODLIST-V2.md](./MODLIST-V2.md#wave-2--exploration-world-dimensions--dungeons) for the full mod list.

### How to Use

#### Terralith + Tectonic

These work **automatically** — install and a new world will have vastly more interesting biomes and terrain. Apply to existing worlds? They only affect *newly generated chunks*, so explore fresh territory to see the new content.

| Mod           | What it changes                                                                                                                                                               |
|---------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Terralith** | Hundreds of new biome variants — painted mountains, shattered savannahs, volcanic peaks, lush valleys, floating islands, and more. Vanilla-style but drastically more varied. |
| **Tectonic**  | Deeper oceans, taller mountains, steeper cliffs, wider caves. Terrain feels more dramatic without being unplayable.                                                           |

> **Tip**: Start a new world for Wave 2 to get the full worldgen experience. Or travel 1000+ blocks from your existing spawn to hit fresh chunks.

#### YUNG's Better Dungeons

Vanilla dungeons (the small cobblestone rooms with spawners) are replaced with multi-room structures with better architecture, varied loot tables, and thematic designs. Found at the same depths as vanilla dungeons. No special interaction needed — just explore caves and you'll find them.

**Loot includes**: enchanted gear, iron/gold blocks, saddles, and occasionally early Aether portal components.

#### The Aether

A sky dimension accessible via a **glowstone portal** (similar to a Nether portal, but with glowstone instead of obsidian).

**Getting there:**

1. Build a 4×5 frame of glowstone (like a Nether portal frame)
2. Fill a bucket with water and right-click the frame
3. Step through

**The Aether progression:**

- Start on safe sky islands with unique vegetation and passive mobs (aerwhales, moas)
- Collect **ambrosium** and **zanite** from the islands — these are your early-game Aether materials
- Find **gravitite ore** (floats upward when mined — catch it!)
- Explore gold dungeons and silver dungeons for better gear
- The Aether has its own tool/armor tiers that sit between iron and diamond in power

**Chill note**: The Aether is paced like vanilla — you can explore, build a home in the sky, or just enjoy the scenery. The difficult content (dungeons) is clearly marked and optional.

#### Deeper and Darker

Adds a new dimension called the **Otherside**, related to the Deep Dark. Unlike The Aether, this is late-game content.

**To enter:** Obtain a **Warden Heart** (drop from the Warden). Use it to craft a portal.

**Content in the Otherside:**

- 4 new biomes (Deeplands, Echoing Forest, Overcast Columns, Blooming Caverns)
- 8 new mobs + a miniboss (the Shattered)
- Ancient temple structures with loot
- **Sculk transmitter** — an Elytra upgrade
- New warden-themed armor and tools (very powerful — Phase 3 gear)

> This is naturally gated behind killing the Warden, which requires full Netherite or Tech Reborn endgame gear. By the time you get here, you'll be strong enough.

#### BetterEnd: Remastered

A complete overhaul of the End dimension.

**Content:**

- 24+ new biomes (glowing neon oasis, crystal mountains, shadow forests, etc.)
- New mobs — some passive, some hostile
- New trees, building blocks, and gear
- Custom fog, music, and ambiance per biome

Unlocked after defeating the Ender Dragon. Safe to ignore until you're ready.

#### Explorer's Compass

Craft an **Explorer's Compass** (check EMI for recipe).

| Action           | How                                             |
|------------------|-------------------------------------------------|
| Open GUI         | Right-click the compass                         |
| Select structure | Browse the list of all structures in your world |
| Navigate         | The compass points to the nearest one           |

Perfect for finding Aether portal ruins, new Terralith biomes, villages, or any structure. Works without a map.

---

## Wave 3 — Equipment Magic, Loot & RPG Progression

This wave is the magic pillar — but it manifests **through gear**, not spellbooks. You won't be casting fireballs or teleporting. Instead, every weapon that drops can have random affixes, every accessory provides a unique legendary-style ability, and runes socket into gear for tactical customization.

On top of all that, a **Skill Tree** gives every action meaning — earn XP from mining, fighting, crafting, and exploring, then spend points on attributes and passives.

The layers:

1. **Skill Tree** — RPG leveling, always active
2. **Simply Swords** — 60+ unique weapons, each with its own passive or activated ability
3. **Savaru's Affixology** — Diablo-style rarity tiers, random affixes, gem socketing, unidentified gear
4. **Relics RPG** — Legendary accessories that change how you play

### Install

See [MODLIST-V2.md](./MODLIST-V2.md#wave-3--equipment-magic-loot) for the full mod list with download links.

> **Wave 3 mods are content mods, not library mods.** They change what you find in chests and on mobs, not how the game runs. Install all of them at once.

### How to Use

#### Skill Tree (RPG Series) + Pufferfish's Skills

This is the RPG leveling system. Every action you take — mining ores, killing mobs, crafting items, exploring new biomes — earns **experience points**. When you accumulate enough XP, you **level up** and gain **skill points** to spend.

Open the skill tree GUI (check Controls → Skill Tree for the keybind). You'll see branches for different attributes:

| Skill Branch | What it improves |
|-------------|------------------|
| Strength | Melee damage, mining speed |
| Vitality | Max health, natural regeneration |
| Agility | Movement speed, jump height, fall damage reduction |
| Magic | Spell power, mana regen (synergy with Wave 3 gear) |
| Defense | Armor toughness, damage resistance |

Each point you spend gives a tangible stat increase. The skill tree works alongside every other wave — Tech Reborn crafting earns XP, exploration rewards XP, cooking gives XP. It's the universal progression layer.

> **Pro tip**: The skill tree is fully configurable. If a skill branch doesn't fit your playstyle, you can respec (check the config). Every action feeds progression, so there's no wrong way to play.

#### Simply Swords

The simplest mod in the wave — **go fight things**. Simply Swords weapons drop from mobs (hostile and passive, ~2% drop rate) and appear in loot chests. When you find one:

1. Pick it up — it's likely better than your current weapon
2. Hover over it and hold `Ctrl` to see the weapon's ability description (if Simply Tooltips is installed)
3. Use it — each weapon has a unique feel

There are 6 weapon categories and 60+ unique weapons:

| Category       | Example Weapons                   | Playstyle                                      |
|----------------|-----------------------------------|------------------------------------------------|
| Heavy weapons  | Greathammer, Greatsword, Claymore | Slow, high damage, knockback                   |
| Medium weapons | Longsword, Katana, Twinblade      | Balanced speed and damage                      |
| Light weapons  | Rapier, Dagger, Sai, Glaive       | Fast attacks with debuffs                      |
| Polearms       | Spear, Halberd, Pike              | Reach advantage, throwable                     |
| Ranged         | Chakram, Boomerang                | Enchantable throwables                         |
| Special        | Scythe, Soulrender, Lichblade     | Unique mechanics (healing, lifesteal, summons) |

Some weapons are "unique" (fixed name, fixed ability) — these are the special ones to hunt for. Others are "runic" (procedurally generated with random abilities).

> **Tip**: Make a weapon rack or item frame display for your collection of unique weapons. They're worth showing off.

#### Savaru's Affixology

This is the core loot chase. Every piece of equipment (weapons, tools, armor) can roll with:

**Rarity tiers**: Common → Uncommon → Rare → Epic → Legendary

Each tier adds more affix slots:

| Rarity    | Affixes | What to expect                                |
|-----------|---------|-----------------------------------------------|
| Common    | 0       | Base stats only                               |
| Uncommon  | 1       | One small bonus (+1 attack speed, +2% damage) |
| Rare      | 2       | Two bonuses, higher values                    |
| Epic      | 3       | Three strong bonuses                          |
| Legendary | 4       | Maximum bonuses — very rare                   |

**Affixes** are random stat bonuses that roll when gear drops or is crafted. Examples: bonus damage, attack speed, movement speed, crit chance, spell power, resistance, magic find.

**Gems** are items you can socket into gear for extra effects:

- Find gem items in loot
- Socket into equipment at an **Engraving Anvil** (crafted from blaze rod + echo shard or ender eye)
- Gems have quality tiers: Normal → Flawless → Unprecedented
- Unprecedented quality adds a new random affix!
- Flawless adds an extra base gem effect

**Unidentified gear**:

- Some items drop as "Unidentified" — you can't use them until you identify them
- Craft an **Identification Ticket** (paper + feather) and use it at an anvil to reveal the item
- This adds excitement to every drop — you never know if it'll roll Epic

**Mastery system**:

- Use gear → gain mastery in that equipment type
- Higher mastery → unlocked bonuses and better potential affixes
- Check mastery progress via the Affixology Guidebook

**Deconstruction Stone**:

- Salvage gear you don't want to extract its affixes
- Learn which affixes exist and expand your knowledge
- Craft at a crafting table (check the guidebook for recipe)

**Ash repair**:

- Heavily damaged gear can be repaired with Ash — costs 50 levels for +10% durability
- Alternative to anvil repair when you need to keep a good item alive

**Reference**: Press `R` (EMI) on any Affixology item, or read the **Patchouli guidebook** that comes with the mod.

#### Relics RPG

Relics are **legendary accessories** that go in your Trinkets slots (ring, amulet, belt, gloves, and more). Each relic has a unique ability:

| Relic            | Ability                     | Rarity   |
|------------------|-----------------------------|----------|
| Monkey Talisman  | Double jump                 | Common   |
| Holy Water       | Cleanses negative effects   | Common   |
| Lucky Coin       | Increases luck/loot quality | Uncommon |
| Captain's Hook   | Pulls entities toward you   | Uncommon |
| Etienne's Enigma | Creates a decoy             | Uncommon |
| Sacred Wardstone | Damage absorption shield    | Rare     |
| Ankh             | Cursed gear immunity        | Rare     |
| and more...      | (check EMI or Relics guide) | Various  |

**Where to find relics**:

- **Common relics**: drop from common mobs and basic chests
- **Uncommon relics**: dungeon chests, better loot tables
- **Rare relics**: YUNG's dungeons, Aether gold dungeons
- **Epic relics**: endgame content (Deeper and Darker, Aether silver dungeons, BetterEnd)

Each relic you find is a permanent power upgrade — they stack with weapon affixes and gems.

#### Runes

Runes are **socketable items** that you slot into weapons and tools to add enchantment-like effects:

| Rune           | Effect                  |
|----------------|-------------------------|
| Fire Rune      | Sets targets on fire    |
| Ice Rune       | Slows targets           |
| Lightning Rune | Chain lightning damage  |
| Poison Rune    | Poisons targets         |
| Life Rune      | Lifesteal on hit        |
| and more...    | Check EMI for full list |

**How to use runes**:

1. Find runes in loot or craft them at a **Rune Altar**
2. Use a **Rune Pouch** (craftable, holds all your runes) — enabled by Bundle API
3. Apply runes to weapons at the Rune Altar
4. Runes are swappable — you can change them between fights

### Keybindings

| Keybind               | Default       | Mod                             | Notes                             |
|-----------------------|---------------|---------------------------------|-----------------------------------|
| View Weapon Abilities | `Ctrl` (hold) | Simply Swords / Simply Tooltips | Hold while hovering over a weapon |
| Open Rune Pouch       | TBD           | Runes                           | Check Controls after installing   |

### Progression Through Wave 3

| Phase                                       | What you'll be doing                                                                                                                                            |
|---------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Phase 1** (first few hours after install) | Kill mobs and open chests → find your first Simply Swords unique weapon and first Relic. Identify an Uncommon Affixology item. Socket a basic gem.              |
| **Phase 2** (mid-game)                      | Hunt for Rare and Epic gear. Build a collection of relics. Experiment with rune combos on your favorite weapons. Use the Deconstruction Stone to learn affixes. |
| **Phase 3** (endgame)                       | Chase Legendary-tier affixes. Socket Unprecedented gems. Complete your relic collection. Max out mastery on your primary weapon type.                           |

### Chill Note

Wave 3 adds **chase content** — there's always a better weapon to find, a better relic to discover, a better affix to roll. But nothing in this wave makes the game harder or more punishing. The same gear you use for fighting works for exploring. The same graves protect your items. You can ignore the whole loot system and just build — none of this content comes to you uninvited.

---

## Wave 4 — Food, Farming & Comfort

This wave makes food meaningful, farming satisfying, and your home cozy. The **Let's Do** ecosystem replaces Farmer's Delight as the Fabric-native cooking hub — all Fabric-native, no porting layer.

Farm & Charm is the core; Bakery, Brewery, HerbalBrews, and Candlelight extend it. No hunger/thirst overhauls, no decay mechanics — just better food that's fun to grow, cook, and share.

### Install

See [MODLIST-V2.md](./MODLIST-V2.md#wave-4--food-farming--comfort) for the full mod list.

### How to Use

#### Farm & Charm — The Core

This is your cooking hub. Start by finding new crops in the wild:

| Crop     | Where to find      | What it makes       |
|----------|--------------------|---------------------|
| Tomato   | Warm biomes        | Tomato soup, sauces |
| Cucumber | Plains, forests    | Salads, pickles     |
| Corn     | Plains             | Cornbread, popcorn  |
| Lettuce  | Forests, plains    | Salads, sandwiches  |
| Rice     | Swamps, riversides | Rice dishes         |

Craft a **cutting board** (knife + planks) — your primary food prep tool. Use it to chop ingredients.

Build a **cooking pot** (check EMI for recipe) — place it over a heat source (campfire, stove). Right-click to open the cooking GUI. Add ingredients, wait for the progress bar, collect your meal.

Farm & Charm adds new **soil types**:

- **Loam**: Balanced, good for most crops
- **Silty soil**: Retains water longer
- **Sandy soil**: Drains faster, good for desert crops

Use a **hoe** on dirt blocks to create these soil types. They behave like farmland but offer different bonuses.

**Animals**: Goats spawn in mountain biomes — can be bred and milked. Bees (already in vanilla) interact with new flowers.

#### Bakery — Breads & Pastries

Build an **oven** (multi-block structure). Let's Do Bakery uses a brick oven for baking:

1. Craft dough from flour + water
2. Place dough in the oven
3. Wait for it to bake → bread, rolls, pastries

| Item    | Ingredients                 | Effect                      |
|---------|-----------------------------|-----------------------------|
| Bread   | Wheat flour + water         | Basic saturation            |
| Cake    | Flour + eggs + sugar + milk | High saturation, decorative |
| Pie     | Flour + fruit filling       | Buff: regeneration          |
| Cookies | Flour + chocolate           | Quick eat, small saturation |

Cakes and pies are **decorative** too — place them on a counter or table. Right-click to eat a slice.

#### Brewery — Drinks & Fermentation

Brewery adds fermentation-based drinks with real buffs:

| Drink   | Ingredients    | Effect                    |
|---------|----------------|---------------------------|
| Beer    | Barley + water | Resistance                |
| Wine    | Grapes + water | Haste                     |
| Mead    | Honey + water  | Speed                     |
| Whiskey | Wheat + water  | Strength (short duration) |

**Process:**

1. Grow the base crop (barley, grapes, hops)
2. Craft at a **brewing station**
3. Transfer to an **aging barrel** — the longer it ages, the stronger the effect
4. Drink from a **glass/mug** (craft from glass)

Aging takes real in-game time. Check your barrels periodically — fully aged drinks give the best buffs.

#### HerbalBrews — Teas & Herbal Drinks

The chill option. HerbalBrews adds restorative drinks without alcohol mechanics:

| Tea         | Ingredients       | Effect                            |
|-------------|-------------------|-----------------------------------|
| Green tea   | Tea leaves        | Health regen                      |
| Chamomile   | Chamomile flowers | Calming — reduces mob aggro range |
| Lavender    | Lavender          | Saturation + minor health         |
| Mixed herbs | Various herbs     | Multiple small buffs              |

**Process:**

1. Grow tea leaves, chamomile, lavender
2. Dry them in a **drying rack**
3. Brew in a **tea kettle** over a heat source
4. Drink from a **teacup**

Teas are excellent for exploration — the calming effect from chamomile makes caving safer.

#### Candlelight — Dining & Decoration

Candlelight is about **presentation**. It adds:

**Cooking tools:**

- **Frying pan**: Cook meat and vegetables
- **Cooking pot**: Larger batch meals
- **Saucepan**: Soups and sauces

**Dining decoration:**

- **Plates and bowls**: Place them on tables, put food on them
- **Glasses and mugs**: Drink from them (works with Brewery drinks)
- **Tablecloths**: Decorative, multiple colours
- **Candelabras**: Light sources with ambiance

**Feasts**: Cook a large meal in a pot, place it on a table, and it serves multiple portions. In multiplayer, everyone can eat from the same dish. In singleplayer, it's a satisfying presentation — you made a whole feast for yourself.

### Progression Through Wave 4

| Phase                     | What you'll be doing                                                                                                                             |
|---------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------|
| **Phase 1** (first hours) | Find wild crops, craft cutting board + cooking pot, make first meals. Discover goats in mountains                                                |
| **Phase 2** (mid-game)    | Build an oven (Bakery), brewing station + barrels (Brewery), tea kettle (HerbalBrews). Start aging drinks. Automate crop harvesting with Tech Reborn |
| **Phase 3** (endgame)     | Full kitchen with all stations. Stocked pantry, wine cellar, tea garden. Cook feasts for the spectacle. Buff yourself before major content       |

### Chill Note

Wave 4 is **entirely optional**. You never need to cook a single meal. But if you do, the food is better than vanilla, the farming is satisfying, and the decoration makes your base feel lived-in. No mechanics remove your ability to just eat steak — this is all upside, no pressure.

---

## Wave 5 — Tech Expansion

This wave builds on Tech Reborn (Wave 1) with two complementary mods: **Logistics: Automation** for smart item routing and autocrafting, and **Powah ReFabric** for additional power generation.

### Install

See [MODLIST-V2.md](./MODLIST-V2.md#wave-5--tech-expansion) for the full mod list.

### How to Use

#### Logistics: Automation — Smart Pipes & Autocrafting

Logistics adds a BuildCraft-inspired pipe system with three tiers:

**Tier 1 — Mechanical Pipes (early game):**
- **Stone Transport Pipe**: Slow, basic item transport
- **Copper Transport Pipe**: Faster backbone for item movement
- **Item Extractor Pipe**: Pulls items from adjacent inventories (requires power)
- **Item Merger Pipe**: Combines multiple inputs into one output
- **Golden Transport Pipe**: Speeds up when powered by redstone
- **Item Void Pipe**: Deletes unwanted items (overflow disposal)

Craft these pipes, connect them between chests and machines, and items flow through with **visible in-pipe animation** — you can see each item moving.

**Tier 2 — Smart Pipes (mid-game):**
- **Item Filter Pipe**: Route specific items to specific destinations
- **Item Insertion Pipe**: Prefer inventories with available space

**Tier 3 — Network Logistics (late-game):**
- **Basic Logistics Pipe**: Network backbone — accepts and delivers addressed items
- **Provider Logistics Pipe**: Advertises adjacent inventory contents to the network
- **Requester Logistics Pipe**: Requests specific items from the network
- **Supplier Logistics Pipe**: Keeps a target inventory stocked
- **Crafting Logistics Pipe**: Automates crafting — requests ingredients from the network, delivers the crafted result
- **Satellite Logistics Pipe**: Remote output point for items across long distances
- **Chassis Pipes (MkI-V)**: Modular pipes with swappable function modules

**Modules** slot into Chassis Pipes — provider, extractor, supplier, crafter, quicksort, and more.

**Power**: Logistics adds three engines (Redstone Engine, Stirling Engine, Creative Engine) that use RF (compatible with Tech Reborn's energy system).

**Machines:**
- **Macerator**: Grinds ores into dust (alternative to Tech Reborn's macerator)
- **Kiln**: RF-powered electric furnace
- **Laser Quarry**: Automated 16x16 mining with energy-scaled speed

#### Powah ReFabric — Power Generation

Powah adds additional power generation options to supplement Tech Reborn's energy grid:

| Generator | Fuel | Power Output | Notes |
|-----------|------|-------------|-------|
| Solar Panel (6 tiers) | Sunlight | Increases per tier | Best in deserts, day only |
| Thermoelectric | Heat differential | Medium | Place between hot/cold blocks |
| Lightning Generator | Lightning strikes | Burst | Build high for more strikes |
| Player Activator | Player movement | Low | Passive — free energy while you're near |

**Storage & Transport:**
- **Batteries** (8 tiers) — portable energy storage
- **Battery Box** — stationary energy storage for your base
- **Energy Cables** (6 tiers: Tin, Copper, Gold, Energized Copper, Energized Gold, Energized Crystal Matrix) — compatible with Tech Reborn's RF system
- **Minecart with Battery Box** — mobile energy transport

### Progression Through Wave 5

| Phase | What you'll be doing |
|-------|---------------------|
| **Phase 1** | Early Tech Reborn (coal gen, macerator, cables). First mechanical pipes from Logistics. Small Powah solar panel supplements power |
| **Phase 2** | Smart pipes and network logistics — provider/requester/crafting pipes automate your base. Mid-tier Powah generators. Tech Reborn industrial machines |
| **Phase 3** | Full autocrafting network — Logistics crafting pipes + satellite pipes across multiple bases. Powah max-tier solar + lightning generators. Tech Reborn fusion reactor + quantum armor |

---

## Wave 6 — Combat & Mobs

This wave gives your powerful gear something worth fighting. Better Combat makes every weapon feel unique, Mutant Monsters adds tough mob variants with unique drops, AdventureZ adds opt-in bosses, and Champions adds elite mobs with rare affixes.

### Install

See [MODLIST-V2.md](./MODLIST-V2.md#wave-6--combat-mobs) for the full mod list.

### Better Combat

Better Combat changes how melee combat feels — not how it works mechanically, just how it looks and sounds:

- **Weapon reach**: Different weapons have different ranges (daggers are short, spears are long)
- **Sweeping visuals**: Swords show an arc, axes show a heavy slash, spears show a thrust
- **Attack speed animation**: Faster weapons (daggers) swing quickly, slower ones (greatswords) have weight

It enhances **Simply Swords** perfectly — each of the 60+ unique weapons gets its own feel and animation. Install and forget; it just makes combat look and feel better.

**Config**: Mod Menu -> Better Combat. You can tweak reach, sweeping, and visual effects.

### Mutant Monsters

Mutant Monsters adds tougher variants of vanilla mobs that spawn in the Overworld:

| Mutant | What it does | Key drop |
|--------|-------------|----------|
| Mutant Zombie | Hulking brute with smash attacks | Hulk Hammer — ground-pound weapon |
| Mutant Skeleton | Deadly marksman with rapid fire | Mutant Skeleton Armor |
| Mutant Creeper | Chain explosions | Creeper Minion Egg — tameable exploding minion |
| Mutant Enderman | Teleporting terror | Endersoul Hand — teleportation power |

Mutants drop unique gear worth hunting. **Spawn rate is configurable** — open Mod Menu -> Mutant Monsters to reduce it.

### AdventureZ

Adds bosses and mobs across the Overworld and Nether — most are **opt-in** (you summon them):

| Mob | How to encounter |
|-----|-----------------|
| Blackstone Golem | **Ritual-summoned** — build a blackstone altar with Gilded Blackstone Shards |
| The Eye (dragon boss) | **Altar-summoned** — build the altar and wait |
| Summoner | Appears during thunderstorms — weather-specific, avoidable |
| Piglin Beast | Spawns when attacking piglins |
| Soul Reaper | Nether soul sand valley — area-specific, avoidable |
| Necromancer | Nether fortresses — area-specific |

You choose when to fight the bosses. Build the altar when ready.

### Champions

Every hostile mob has a small chance to spawn as a **champion** with special affixes:

| Affix | Effect |
|-------|--------|
| Hasty | Very fast movement |
| Molten | Fires fire projectiles |
| Lively | Regenerates health |
| Reflective | Reflects damage |
| Shielding | Periodic invulnerability |

Higher rank champions drop better loot. Fully configurable via Mod Menu -> Champions.

### Enchantment Descriptions

Hover over an enchanted item and it says what the enchantment actually does. No config needed, install and forget.

### Chill Note

Everything in this wave is **configurable or opt-in**. Mutant spawn rates can be reduced. Champions can be tuned down. AdventureZ bosses don't exist until you build their altars. The gear you already have is strong enough — this wave just gives it something worthy to test against.

---

## Wave 7 — World Expansion & Exploration

Wave 2 made the world larger (Terralith + Tectonic). Wave 7 fills it with more to find: every vanilla structure gets YUNG's overhaul, new biomes add variety, and hundreds of new structures populate the landscape. The Bumblezone adds a bee-themed dimension.

### Install

See [MODLIST-V2.md](./MODLIST-V2.md#wave-7--world-expansion--exploration) for the full mod list.

### YUNG's Structure Overhauls

These mods replace vanilla structures with improved versions. They install and work automatically — no interaction needed, just explore and find better versions of everything:

| Mod | What improves | What's better |
|-----|--------------|---------------|
| Better Nether Fortresses | Nether fortresses | More rooms, better layouts, improved loot |
| Better Ocean Monuments | Ocean monuments | Redesigned interiors, more interesting loot |
| Better Jungle Temples | Jungle temples | Traps, puzzles, rewarding treasure rooms |
| Better Mineshafts | Mineshafts | Varied designs, minecart chests with better loot |
| Better End Island | The End island | More interesting terrain and small structures |
| Better Strongholds | Strongholds | Larger, more complex, better End portal room |
| Better Witch Huts | Witch huts | Expanded interiors with brewing-themed loot |
| Better Desert Temples | Desert temples | Multi-room with new traps and loot |
| Better Caves | Cave generation | Larger caverns, more varied shapes |

These all use YUNG's API (already installed in Wave 2). Nothing to configure — they just make exploration more rewarding.

### Regions Unexplored

Adds 65+ new Overworld biomes alongside Terralith's existing biomes:

| Biome examples | Where | What's special |
|----------------|-------|----------------|
| Redwood Forest | Temperate | Giant redwood trees, new wood type |
| Steppe | Arid | Flat grasslands with scattered oaks |
| Willow Forest | Swampy | Willow trees over water |
| Boreal Forest | Cold | Pine and spruce with ferns |
| Ancient Plains | Warm | Giant boulders, unique grasses |
| Cherry Grove | Temperate | Already in vanilla, expanded with new variants |

Regions Unexplored biomes generate in new chunks alongside Terralith biomes. Use Explorer's Compass (Wave 2) to find specific biomes.

**Tip**: Start a new world or travel 2000+ blocks from spawn to see the new biomes.

### Repurposed Structures

Takes every vanilla structure and creates biome-variant versions:

| Vanilla structure | Variants |
|-------------------|----------|
| Villages | Desert, jungle, swamp, birch, taiga, snowy, dark forest |
| Fortresses | Nether, End |
| Temples | Desert, jungle, icy |
| Outposts | Overworld variants for each biome |
| Ships | End ships, nether ships |

Instead of just desert villages and plains villages, you'll find villages in every biome with appropriate building styles and loot.

### Additional Structures

200+ new hand-crafted structures scattered across the world:

- **Watchtowers** — stone towers with archer positions and loot at the top
- **Camps** — abandoned campsites with supplies
- **Ruins** — collapsed buildings with hidden basements
- **Shrines** — small temples themed to biomes
- **Monuments** — larger structures with boss-level loot
- **Graveyards** — small cemeteries with buried treasure

These structures fit the vanilla aesthetic — they look like they belong. No keybind or config needed.

### The Bumblezone

A dimension made entirely of bee content:

- **How to enter**: Right-click a bee nest or hive with certain items (check EMI for entry recipes)
- **Biomes**: Sugar Water Fields, Crystal Canyon, Hive Pillar, Sticky Honey Redstone, Floating Islands
- **Content**: Giant bees (some hostile, some neutral), honey blocks that slow you, wax blocks that melt near fire, honey-filled caverns with loot
- **Resources**: Honey, wax, honeycomb — useful for crafting and Tech Reborn processing
- **Exit**: Find a portal crystal or use a teleportation item

The Bumblezone is mid-game content. The bees are challenging but not punishing, and the honey/wax resources are worth the trip. It's entirely optional — explore when you want.

### Progression Through Wave 7

| Phase | What you'll be doing |
|-------|---------------------|
| **Phase 1** | Better Caves, Mineshafts, Strongholds improve early caving. Additional Structures ruins/camps provide early loot. Regions Unexplored biomes visible from spawn |
| **Phase 2** | Explore YUNG's Desert/Jungle Temples and Ocean Monuments. Repurposed Structures biome variants enrich mid-game exploration. Nether fortresses and witch huts are relevant targets |
| **Phase 3** | The Bumblezone is accessible. Better End Island improves the End dimension. All structures fully explored with max gear |

### Chill Note

Every mod in this wave is **additive** — they add things to find without making the world more dangerous. YUNG's structures have better loot but aren't harder to traverse. Regions Unexplored biomes are peaceful. The Bumblezone waits until you choose to enter. If you just want to keep building, none of this content comes to you — you go to it.

---

## General Tips

### Finding Help

- **EM! (`R`)** is always your first stop — hover an item and press R to see how it's made
- **Mod Menu (`Ctrl+M`)** shows every installed mod — click the config icon next to a mod to change its settings
- **Discord / Wikis**: Most mods link to their Discord or wiki from their Mod Menu entry

### Losing Progress

You won't. Graves preserve your items. XP is kept on death. No creeper craters. The pack is designed so you can walk away for a month and come back to exactly the world you left.

### Java & Performance

Minecraft 1.21.1 requires **Java 21**. Use Temurin JDK 21 from Adoptium.

Recommended JVM arguments (for Minecraft Launcher → Installation → Edit → More Options → JVM Arguments):

```
-Xms8g -Xmx8g -XX:+UseShenandoahGC -XX:+UnlockExperimentalVMOptions -XX:+AlwaysPreTouch -XX:+UseStringDeduplication -XX:-OmitStackTraceInFastThrow -XX:+OptimizeStringConcat
```

| System RAM | Recommended allocation |
|------------|------------------------|
| 16 GB      | `-Xms10g -Xmx10g`      |
| 32 GB      | `-Xms22g -Xmx22g`      |
| 64 GB      | `-Xms48g -Xmx48g`      |
