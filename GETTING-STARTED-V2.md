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

---

## Wave 1 — Tech (Oritech)

This wave adds Oritech — a Fabric-native tech mod with animated multiblock machines, ore processing, pipes, drones, lasers, and cybernetic augmentation. Also adds Mythic Metals (~20 new ores), Clutter (biomes + ores), and Alloy Forgery.

### Install

See [MODLIST-V2.md](./MODLIST-V2.md#wave-1--tech-oritech) for the mod list. Install all Wave 1 mods at once — they're designed to work together.

### Keybindings

Oritech uses default keybinds that you can check in Options → Controls → Key Binds. Oritech entries appear under the `Oritech` category after installation.

### How to Use — Oritech

Oritech uses an **energy (RF) system**. Machines need power to run. You build generators, connect machines with pipes, and automate processing chains.

#### Step 1: Start with basic machines

Craft your first machines using the **EMI recipe browser** (`R` key). The early progression is:

1. **Manual generation** — Craft a **basic generator** (burns coal/charcoal) and a **basic furnace** to start processing
2. **Powered Furnace** — Animated multiblock furnace, your first real machine
3. **Pulverizer / Crusher** — Doubles ore output (1 ore → 2 dust, smelt dust → 2 ingots)
4. **Energy pipes** — Connect generators to machines

#### Step 2: Build a processing chain

Oritech has **multiple ore processing chains**. The simplest:

- Mine ore → Pulverizer → dust → Furnace → 2 ingots

Later chains add chemical processing, alloys, and higher yield multipliers.

#### Step 3: Expand power generation

| Generator           | Fuel                            | Notes                                  |
|---------------------|---------------------------------|----------------------------------------|
| Basic Generator     | Coal, charcoal, flammable items | Starting generator                     |
| Biofuel Generator   | Farmed biofuel                  | Renewable — pair with farming machines |
| Oil-based generator | Oil (find oil wells in-world)   | Higher output, requires exploration    |
| Solar Panel         | Sunlight                        | Passive, works best in deserts         |
| Big Solar Panel     | Sunlight                        | Late-game passive power                |

Find **oil wells** generating in the world — they're surface-visible. Build a pump over them for automated oil collection.

#### Step 4: Automate with pipes

Oritech has **1 tier of each pipe type** — no confusing tier upgrades:

| Pipe Type   | Color  | Transports                    |
|-------------|--------|-------------------------------|
| Item pipe   | Orange | Items between inventories     |
| Fluid pipe  | Blue   | Fluids between tanks/machines |
| Energy pipe | Yellow | RF power between machines     |

Pipes auto-connect to adjacent machines. Use a **wrench** to configure connections (shift-right-click to disconnect a face).

#### Step 5: Advanced machines

As you progress, unlock:

- **Automated farm machines** — plant, grow, and harvest crops automatically
- **Laser arm** — mines blocks in a radius (Oritech's version of a digital miner/quarry)
- **Drone** — fly items between distant bases
- **Machine addon blocks** — upgrades that attach to machines (speed, efficiency, yield)

#### Step 6: Late game

- **Bedrock Extractor** — produces renewable ores from resource nodes found in the world
- **Cybernetic augments** — permanent player upgrades (faster mining, more health, jump boost, etc.)
- **Particle Accelerator** — endgame processing, highest-tier materials

#### Key Design Philosophy

- **No roadblocks**: Multiple ways to get most materials (e.g., plastic from farming OR oil)
- **Multiple processing chains**: Experiment with different machine combinations
- **Colorable machines**: Right-click with a dye to change machine colour
- **Use EMI**: Press `R` on any Oritech item to see its recipe and what it produces

### How to Use — Supporting Mods

#### Mythic Metals

Adds ~20 new ores (adamantite, mythril, palladium, stormyx, etc.) spawning in the Overworld, Nether, and End. Mine them, process through Oritech machines, and craft into tools/armor. Check EMI (`R`) for recipes. Each metal has unique properties — some auto-repair, some mine faster, some have special abilities.

**Where ores spawn**:

- Most ores: Overworld at various Y-levels
- Some: Nether (e.g., banglum, mythril)
- Starrite: The End
- Some are biome-specific (aquarium in oceans, prometheum in warm biomes)

#### Clutter

Adds two new biomes (**Redwood Forest**, **Lupine Fields**), new mobs (capybaras, seahorses, manta rays), and ores (silver, sulphur, onyx). Silver and sulphur ores can be processed through Oritech machines.

#### Alloy Forgery

Adds a multiblock **Alloy Forge** for combining two metals into alloys. Build the structure, place the controller block, and use it to create alloys that Oritech and Mythic Metals need. Check EMI for alloy recipes.

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

> This is naturally gated behind killing the Warden, which requires full Netherite or Oritech endgame gear. By the time you get here, you'll be strong enough.

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

Each point you spend gives a tangible stat increase. The skill tree works alongside every other wave — Oritech crafting earns XP, exploration rewards XP, cooking gives XP. It's the universal progression layer.

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
| **Phase 2** (mid-game)    | Build an oven (Bakery), brewing station + barrels (Brewery), tea kettle (HerbalBrews). Start aging drinks. Automate crop harvesting with Oritech |
| **Phase 3** (endgame)     | Full kitchen with all stations. Stocked pantry, wine cellar, tea garden. Cook feasts for the spectacle. Buff yourself before major content       |

### Chill Note

Wave 4 is **entirely optional**. You never need to cook a single meal. But if you do, the food is better than vanilla, the farming is satisfying, and the decoration makes your base feel lived-in. No mechanics remove your ability to just eat steak — this is all upside, no pressure.

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
