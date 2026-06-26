# Getting Started V3 — Minecraft 1.21.1 NeoForge

This guide walks you through the modpack **one Wave at a time**. Each wave introduces one new capability. Don't install the next wave until you're comfortable with the current one.

---

## Wave -1 — How to Play Minecraft

This section assumes you know nothing. If you've played Minecraft before, skip to Wave 0.

### The Goal

There isn't one. Minecraft is a sandbox. You punch trees, build things, explore, fight monsters, and eventually become very powerful. You make your own goals. This modpack adds even more things to do on top of the base game.

### Controls (Default)

| Action | Key |
|--------|-----|
| Move | `W A S D` |
| Jump | `Space` |
| Sneak | `Shift` (hold to walk off edges without falling) |
| Sprint | `Ctrl` (hold while moving) |
| Attack / Break blocks | **Left-click** (hold to keep breaking) |
| Use item / Place block | **Right-click** |
| Open inventory | `E` |
| Drop item | `Q` (while hovering over item in inventory) |
| Select hotbar slot | `1` through `9` |
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

| Tool | What it does | Crafting (3x3 grid) |
|------|-------------|---------------------|
| **Wooden Pickaxe** | Breaks stone | 3 planks across top row, 2 sticks down the middle column |
| **Wooden Axe** | Faster tree chopping | 3 planks in top-left corner, 2 sticks down |
| **Wooden Shovel** | Digs dirt/sand faster | 1 plank top-center, 2 sticks below |
| **Wooden Sword** | Fights mobs | 2 planks in middle column, 1 stick below |

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

| Material | Pattern |
|----------|---------|
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

| Priority | What to do |
|----------|------------|
| Find food | Kill animals (cows, pigs, chickens). Cook the meat in your furnace. Plant wheat seeds (break grass) near water. |
| Get iron | Dig down (not straight down — staircase pattern) until you see brownish blocks with specks. Mine with stone pickaxe. Smelt in furnace → iron ingots. |
| Make iron tools | Iron pickaxe, iron sword, iron armour. This is the "I'm established" checkpoint. |
| Find a village | Walk around until you see buildings with paths. Villages have beds, food crops, and later — Waystones. |
| Make a bed | 3 wool + 3 planks. Sleep through the night. Respawn at bed if you die. |

#### Navigating with F3

Press `F3` opens the debug screen. The useful parts:

| Value | What it shows |
|-------|---------------|
| `xyz` | Your coordinates — write these down so you can find your base |
| `Biome` | What biome you're in |
| `Direction` | Which way you're facing (N/S/E/W) |
| `Light` | Light level — mobs spawn at light level 0 |

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

See [MODLIST-V3.md](./MODLIST-V3.md#wave-0--foundation) for the full mod list with download links. This is a **NeoForge** loader pack — install NeoForge, not Fabric.

### First Launch Settings

#### Video Settings

| Setting | Recommended | Notes |
|---------|-------------|-------|
| Graphics | Fabulous | Embeddium makes this performant now |
| Render Distance | 16-32 chunks | Tune to your hardware; Distant Horizons handles far LOD |
| Brightness | Moody → Bright | Personal preference — Bright makes caves easier to see |

#### Distant Horizons Settings

Open **Mod Menu → Distant Horizons → Config** after first launch. Set LOD Render Distance to 1024 blocks. The mod generates LOD data as you explore — first visit to an area will have temporary pop-in.

#### Shader Setup

Place **Complementary Unbound** `.zip` in the `shaderpacks/` folder. Launch Minecraft, go to Options → Video Settings → Shaderpacks, select Complementary Unbound. It works with Iris on NeoForge.

#### Keybindings (Set These Up First)

| Keybind | Default | Mod | Notes |
|---------|---------|-----|-------|
| View Recipes | `R` | JEI | Hover over any item and press R |
| View Uses | `U` | JEI | Hover over any item and press U |
| Open Fullscreen Map | `J` | Xaero's World Map | Opens the big map |
| Toggle Minimap | `H` (default) | Xaero's Minimap | Shows/hides the corner minimap |
| Open Waystone Menu | **Not set** | Waystones | Set to `Ctrl+Shift+W` |
| Open Backpack | `B` | Sophisticated Backpacks | Opens equipped backpack |
| Zoom | **Not set** | Embeddium | Set to `C` — hold to zoom in |

### Using Wave 0 Mods

#### JEI (Recipe Viewer)

Your primary learning tool. Hover any item and press `R` to see how to craft it, `U` to see what it's used in. Every mod in future waves is learned through JEI first.

#### Sophisticated Storage & Backpacks

Craft a barrel (1 chest + 8 planks) for early storage. Upgrade with iron/gold/diamond/netherite upgrades. Backpack in your chest armor slot, press `B` to open.

#### Waystones

Craft a waystone and right-click to claim it. Use the Warp Stone (ender pearl + amethyst) to teleport from anywhere. No XP costs. Set keybind to `Ctrl+Shift+W`.

#### GraveStone Mod

When you die, a grave spawns with your items. No item loss, no despawning. Just walk back and right-click the grave.

#### AmbientSounds + Constant Music

AmbientSounds adds nature sounds (birds, wind, water) based on your biome and time of day. Constant Music removes the silence gaps between music tracks. Both work automatically — no config needed.

#### BetterF3

Press `F3` to see the cleaner debug HUD. Customize what's shown in Mod Menu → BetterF3 → Config. Toggle individual modules (FPS, coordinates, biome, light level) without the clutter.

#### LambDynamicLights

Equip a torch or glowstone block → it emits light around you. Works in the off-hand too. Toggle via keybind `Ctrl+L`.

**Pro tip**: Hold a torch in your off-hand while mining — no more placing torches every 5 blocks.

#### Sound Physics Remastered

Makes sound behave more realistically — muffled through walls, echo in caves, directional audio. Works automatically with any sound pack.

#### Mouse Tweaks

Inventory management shortcuts: left-click drag across slots → distributes evenly. Right-click drag → places one per slot. Scroll wheel on a stack → moves one to another inventory.

#### Chat Heads

Shows the sender's head next to their chat message. Works automatically.

#### Curios API (Accessory Slots)

Opens extra equipment slots on your character: ring, amulet, belt, gloves, charm, back, and more. Press the Curios keybind (check Controls) to open the Curios inventory. This replaces Trinkets from V2 — Relics RPG accessories and other Curios-compatible items go in these slots.

#### Right Click Harvest

Right-click a fully grown crop → it breaks and drops, then auto-replants. Works on vanilla crops and most modded ones.

---

## Wave 1 — Tech (Create + Mekanism + AE2)

The biggest wave. Three industry-standard mods that together form a complete tech ecosystem.

### Install

See [MODLIST-V3.md](./MODLIST-V3.md#wave-1--tech-create--mekanism--ae2). Install all three core mods at once.

### How They Fit Together

| Problem | Solution |
|---------|----------|
| Early power | Create: water wheels, windmills |
| Ore processing | Mekanism: from 2x to 5x ore multiplication |
| Item transport | Create: conveyor belts, chutes, funnels |
| Factory automation | Create: deployers, sequenced crafters, mechanical arms |
| Digital storage | AE2: ME drives store thousands of items in one block |
| Autocrafting | AE2: pattern-provider autocrafting |
| Mid-game power | Mekanism: gas-burning generators, solar, wind |
| Endgame power | Mekanism: fusion reactor |
| Endgame armor | Mekanism: MekaSuit (flight, invulnerability, fire resistance) |
| Long-distance transport | Create: trains |

---

### Create — Mechanical Automation

Create is about **rotational power**. Every Create machine needs rotational force to work. You generate this force, transfer it through shafts and belts, and use it to power machines.

#### The Three Core Concepts

| Concept | What it means | Why it matters |
|---------|--------------|----------------|
| **Rotational Power (SU)** | Every Create source generates Stress Units (SU). Machines consume SU to run | If total SU consumption exceeds generation, machines stop. Add more sources or reduce load |
| **Stress Capacity** | Shafts and gearboxes can only handle so much SU before breaking | Use reinforced shafts for high-stress networks. Spread load across multiple lines |
| **Speed vs Force** | Speed (RPM) determines how fast a machine processes. Force determines how much load it can handle | Gear ratios matter: small gear on large gear = slow + strong. Large on small = fast + weak |

#### Learning with Ponder

Create has a built-in interactive tutorial called the **Ponder system**. Hold `W` while hovering over any Create block or item in JEI or your inventory. An animated scene plays showing exactly how the block works, what it connects to, and what it does.

**Use Ponder constantly.** It is better than any written guide. Every Create player learns through Ponder first.

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

| Machine | What it does |
|---------|-------------|
| **Deployer** | Places blocks or uses items from its inventory. Automates crafting |
| **Sequenced crafter** | Runs a multi-step crafting sequence automatically. Your first autocrafter |
| **Mechanical arm** | Moves items between inventories. Replaces conveyor belts |
| **Chute & Funnel** | Vertical item transport with filtering |
| **Train station** | Build tracks, assemble trains, transport bulk items between bases |

**Brass progression**: Find zinc ore (generates in the world alongside copper) → Mix zinc + copper in a heated mixer → Brass ingots → Brass casing → Advanced machines.

**Blueprint system**: Craft a **blueprint and quill**. Select an area, save it as a blueprint. Place a **deployer** with the blueprint to automatically build it. This is how you replicate factory sections.

#### Create Keybindings

| Keybind | Default | What it does |
|---------|---------|-------------|
| Open Ponder | `W` (hold over block) | Shows interactive animation for Create blocks |
| Open Toolbox | `T` (hold) | Quick-access tool menu |
| Wrench functionality | Right-click | Configure machine direction, dismantle |
| Goggles functionality | `G` (hold over machine) | Shows SU consumption, RPM, and stress info |
| Open Blueprint | **Not set** | Opens the blueprint editor |

**Goggles** are essential. Craft a pair of engineers goggles early (check JEI). Hold `G` while looking at any Create machine to see its SU consumption, current RPM, and whether it's overstressed.

---

### Mekanism — Industrial Processing

Mekanism is about **processing materials at industrial scale**. Its power system (Joules) is separate from Create's rotational power, but you can connect them with **Create's alternator** (converts rotational power to Joules).

#### Finding Osmium

Osmium is Mekanism's primary ore. It generates underground at all levels, similar rarity to iron. Mine it with a stone pickaxe or better. Smelt raw osmium into osmium ingots.

#### The Tier System

Every Mekanism machine comes in 4 tiers:

| Tier | Color | Processing Speed | Upgrade Recipe |
|------|-------|-----------------|----------------|
| Basic | Orange | 1x | Starting tier — crafted directly |
| Advanced | Red | 2x | Basic + osmium + redstone |
| Elite | Dark Red | 4x | Advanced + diamond + obsidian |
| Ultimate | Purple | 8x | Elite + refined obsidian + alloy |

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

| Multiplier | Machines needed | Process |
|------------|----------------|---------|
| 2x | Enrichment Chamber | Ore → 2 dust → smelt → 2 ingots |
| 3x | Enrichment Chamber + Crusher | Ore → dust → dirty dust → 2x Enrichment → 3 dust → smelt → 3 ingots |
| 5x | Full chemical line (requires gas infrastructure) | Chemical Dissolution Chamber (sulfuric acid) → Washer (water) → Crystallizer → 5 dust → smelt → 5 ingots |

**Practical early setup**: Start with 2x using just an Enrichment Chamber. This is good enough for early game. Move to 5x processing when you have power to spare — the chemical line needs significant Joules to run.

**The 3x chain step by step:**
1. Enrichment Chamber: ore → dust
2. Crusher: dust → dirty dust  
3. Enrichment Chamber: dirty dust → dust (second pass = 3x total)
4. Furnace: dust → ingots

#### Gas Infrastructure

Mekanism adds gases as a resource type. You need them for high-tier processing:

| Gas | Produced by | Used for |
|-----|------------|----------|
| Hydrogen | Electrolytic Separator (split water) | Power generation, processing |
| Oxygen | Electrolytic Separator (split water) | Chemical processing |
| Sulfuric Acid | Chemical Infuser (sulfur + oxygen) | 5x ore processing |
| Deuterium | Electrolytic Separator (heavy water) | Fusion reactor fuel |
| Tritium | Chemical Infuser (lithium + deuterium) | Fusion reactor fuel |

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

| Cable type | Channels carried | Visual indicator |
|-----------|-----------------|-----------------|
| ME Glass Cable | 8 | No indicator |
| ME Smart Cable | 8 | Colored lines show channel usage (1-8) |
| ME Dense Smart Cable | 32 | Thicker cable, colored lines |
| ME Cover Cable | 8 | Can be hidden in walls |

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

| Device | What it does | Channel use |
|--------|-------------|-------------|
| **ME Import Bus** | Pulls items from adjacent inventory into the ME network | 1 |
| **ME Export Bus** | Pushes items from the network into adjacent inventory | 1 |
| **Storage Bus** | Treats an adjacent inventory as part of the ME network (no import/export needed) | 1 |
| **ME Interface** | Exports items to the network AND accepts items for autocrafting | 1 |

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

| Keybind | Default | What it does |
|---------|---------|-------------|
| Open terminal | Right-click on terminal | Access all stored items |
| Open crafting terminal | Right-click on crafting terminal | Access + craft from storage |
| View network status | N/A | Right-click controller with a network tool |

---

### Mid-Game Integration

By mid-game, you should have all three mods working together:

| Layer | Mod | What's happening |
|-------|-----|-----------------|
| **Power** | Create | Water wheels → windmills → steam engines power the base |
| **Power supplement** | Mekanism | Heat generators → gas generators supplement Create power |
| **Ore processing** | Mekanism | 3x processing chain (Enrichment Chamber + Crusher) |
| **Component crafting** | Create | Mechanical press + deployers automate component crafting |
| **Storage** | AE2 | Import buses on all machines pull items into the ME network |
| **Autocrafting** | AE2 | Pattern providers + molecular assemblers craft on demand |
| **Transport** | Create | Conveyor belts move items between processing lines |
| **Ore finding** | Skniro's Ores | New ore types generate in the Nether and End for mid-game expansion |

### Nether & End Ores (Skniro's)

Skniro's Nether and End Ores adds new ore types to both dimensions. These ores are processed through Mekanism machines and feed into Create/Mek material chains.

**Nether ores**: Generate in the Nether at various Y-levels. Check JEI (`R`) to see exactly which ores are added and their required mining levels. Most can be processed through Mekanism's Enrichment Chamber for 2x output.

**End ores**: Generate on the End islands after defeating the Ender Dragon. These are higher-tier materials used in advanced Mekanism machines and Create components.

**Tip**: Use the Explorer's Compass (Wave 2) to find specific biomes where certain ores generate. Some ores are biome-specific.

### Late Game

- **AE2 autocrafting**: Set up pattern providers + molecular assemblers. Request any item, AE2 crafts it automatically from raw materials stored in the ME network
- **Mekanism digital miner**: Automated mining — place it, set radius and filters, it mines everything. Feed output directly into AE2 via import bus
- **Create trains**: Build tracks between bases. Assemble a train (engine + carriages). The train follows tracks automatically — use train stations to load/unload at each stop
- **Mekanism fusion reactor**: Endgame power. Requires deuterium + tritium from processed water

### Endgame

- **MekaSuit**: Mekanism's endgame armor. Full flight, extreme damage resistance, fire/lava immunity, underwater breathing, auto-feed. Powered wirelessly by your base's energy grid. This is the power fantasy goal
- **AE2 autocrafting CPU**: Complex multi-step autocrafting chains. Request advanced alloys and Mekanism components — AE2 crafts them from raw materials
- **Create mega-factory**: Massive conveyor networks, train stations at every mining outpost, automated farms for Mekanism biofuel. Build the factory you've always wanted

---

## Wave 2 — Exploration (World & Dimensions)

The world is larger, richer, and full of things to discover. Tectonic makes the terrain dramatic, Terralith and Regions Unexplored add hundreds of biomes, YUNG's structures overhaul every vanilla structure, and three new dimensions open up at your own pace.

### Install

See [MODLIST-V3.md](./MODLIST-V3.md#wave-2--exploration-world--dimensions). Install all mods at once.

### Overworld

- **Terralith**: Hundreds of new biome variants — painted mountains, shattered savannahs, volcanic peaks
- **Tectonic**: Deeper oceans, taller mountains, steeper cliffs
- **Regions Unexplored**: 65+ new biomes (redwood forests, steppes, willow forests, cherry groves)
- **YUNG's structures**: Every vanilla structure type gets an overhaul — dungeons, mineshafts, strongholds, temples, monuments, witch huts, nether fortresses
- **Structory + Towns & Towers + Additional Structures**: Hundreds more new structures to discover

**Finding biomes**: Craft an Explorer's Compass and right-click to open its GUI. Browse the biome list and select one — the compass points to the nearest instance. Use this to find specific Regions Unexplored or Terralith biomes.

**New world recommendation**: Terralith, Tectonic, and Regions Unexplored generate best in a new world. If joining an existing world, explore chunks you haven't visited yet (1000+ blocks from spawn).

### The Aether

A sky dimension. Build a glowstone portal (like a Nether portal with glowstone), fill with water, step through.

- **Early**: Safe sky islands, ambrosium, zanite, aerwhales
- **Mid**: Gold dungeons for better gear
- **Late**: Silver dungeons for endgame loot

### Twilight Forest

A twilight dimension. Build a portal in a 2x2 pool of water surrounded by flowers and throw a diamond in.

- **Progression**: Each boss unlocks the next area — Naga → Lich → Minoshroom → Hydra → Ur-Ghast → Snow Queen → Final Castle
- **Loot**: Unique weapons, tools, and armor from each boss
- **Biomes**: Enchanted forest, firefly forest, twilight swamp, dark forest, snowy forest, highlands

### Deeper and Darker

The "Otherside" dimension. Requires a Warden Heart (Warden drop) to enter:
- 4 new biomes, 8 new mobs, miniboss
- Sculk transmitter (Elytra upgrade)
- Warden-themed armor and tools

### End Overhaul

After defeating the Ender Dragon, the End becomes a full dimension:

- **BetterEnd NeoForge**: 24+ new biomes, new mobs, gear, tools, building blocks
- **Nullscape**: Alien/void landscapes — floating islands, purple skies, void fog
- **Moog's End Structures**: Towers, ruins, dungeons throughout the End
- **Ender's Delight**: New food from End ingredients

---

## Wave 3 — Equipment Magic & RPG

Every weapon can roll with random affixes, every accessory provides a unique ability, and a skill tree gives every action meaning.

### Install

See [MODLIST-V3.md](./MODLIST-V3.md#wave-3--equipment-magic--rpg). Install all at once.

### Skill Tree

Every action earns XP. Level up, spend points on attributes (strength, vitality, agility, magic, defense). Works alongside every other wave.

**Keybind**: Check Controls → Skill Tree for the skill tree GUI keybind. Set it to something convenient (e.g., `P`).

### Simply Swords

60+ unique weapons with passive/activated abilities. Drop from mobs (~2% rate) and chests. Each one feels different — scythes heal on kill, rapiers shred armor, hammers knock back entire groups, spears reach further.

**Weapon categories**: Heavy weapons (greathammer, greatsword) → slow, high damage. Medium weapons (longsword, katana) → balanced. Light weapons (rapier, dagger) → fast with debuffs. Polearms (spear, halberd) → reach advantage, throwable.

**Pro tip**: Hold `Ctrl` while hovering over a weapon to see its ability description.

### Apotheosis

Adds Diablo-style loot to all gear:

- **Rarity tiers**: Common → Uncommon → Rare → Epic → Mythic. Higher rarities have more affix slots
- **Random affixes**: Every gear piece can roll with bonus stats — damage, attack speed, movement speed, crit chance, resistance, spell power
- **Gem socketing**: Find rough gems as drops. Use a **gem cutting station** to cut them into socketable gems. Apply to gear at a **gem socketing table**
- **Enchanting overhaul**: The vanilla enchanting table is replaced with a more powerful version. Higher levels, new enchantments, better books from the library
- **Boss modifiers**: Boss mobs can spawn with random modifiers, making them harder but dropping better loot

**What to do early**: Check every gear drop for rarity. Socket rough gems into your tools. Explore the new enchanting system.

**What to do late**: Hunt for Mythic rarity items. Socket flawless gems. Apply end-game affixes.

### Relics RPG

Legendary accessories that go in your Curios slots (ring, amulet, belt, gloves, back, charm). Each has a unique ability:

| Relic | Ability |
|-------|---------|
| Monkey Talisman | Double jump |
| Holy Water | Cleanses negative effects |
| Lucky Coin | Increases luck/loot quality |
| Captain's Hook | Pulls entities toward you |
| Sacred Wardstone | Damage absorption shield |

**Where to find**: Common relics from mobs and basic chests. Uncommon from dungeon chests. Rare from YUNG's structures. Epic from endgame content.

### Runes

Socketable runes for weapons/tools. Each rune adds an effect — fire, ice, lightning, poison, lifesteal. Swappable between fights.

**How to use**: Find runes in loot or craft at a **Rune Altar**. Use a **Rune Pouch** (craftable) to store them all. Apply runes to weapons at the Rune Altar.

**Keybind**: Check Controls for Open Rune Pouch.

---

## Wave 4 — Food, Farming & Comfort

Farmer's Delight brings the cooking system you know from V1, now on NeoForge.

### Install

See [MODLIST-V3.md](./MODLIST-V3.md#wave-4--food-farming--comfort).

### Farmer's Delight

Craft a **cutting board** (knife + planks) — your primary food prep tool. Use it to chop ingredients. Craft a **cooking pot** — place over a heat source (campfire, stove). Right-click to open the GUI, add ingredients, wait for the progress bar, collect your meal.

**Early meals**: Tomato soup (tomato + bowl), chicken sandwich (cooked chicken + bread), mixed salad (lettuce + tomato + cucumber).

**Stove**: Craft a stove (bricks + iron). Place the cooking pot on top — it cooks faster than over a campfire.

**Kitchen storage**: Craft cabinets and drawers (check JEI for recipes) to organize your ingredients.

**Progression**: Cutting board → Cooking pot → Stove → All recipes visible in JEI.

### Brewin' And Chewin'

Fermentation and drinks. Grow hops, barley, grapes.

**Brewing process:**
1. Craft a **brewing station** — place it, add water and ingredients
2. Create your base mixture (wort, must, mash)
3. Transfer to an **aging barrel** — the longer it ages, the stronger the effect
4. Bottle the finished drink

**Drink effects**: Beer (resistance), wine (haste), mead (speed), whiskey (short strength boost).

**Aging tip**: Check your barrels every few in-game days. Fully aged drinks give the best buffs.

---

## Wave 5 — Combat & Mobs

Your powerful gear finally has something worthy to fight.

### Install

See [MODLIST-V3.md](./MODLIST-V3.md#wave-5--combat--mobs).

### Better Combat

Makes every weapon feel unique — different weapons have different reach (daggers short, spears long), sweeping animations (swords arc, axes slash, spears thrust), and attack speed (daggers fast, greatswords slow). Enhances Simply Swords weapons perfectly.

**Config**: Mod Menu → Better Combat. Tweak reach, sweeping, and visual effects.

### Mutant Monsters

Mutant versions of vanilla mobs — Mutant Zombie, Skeleton, Creeper, Enderman. Each drops unique gear (Hulk Hammer, Mutant Skeleton Armor, Creeper Minion). Slightly tougher than vanilla but beatable with iron-tier gear. With your Epic Apotheosis gear, they're a satisfying challenge.

**Config**: Mod Menu → Mutant Monsters → reduce spawn rate if they're too frequent.

### L_Ender's Cataclysm

Epic boss fights. Each boss has unique mechanics and drops powerful gear. Bosses are **opt-in** — you summon them:

| Boss | Location | How to summon | Drops |
|------|----------|---------------|-------|
| Leviathan | Deep ocean | Build a summoning altar in deep ocean biomes | Leviathan blade, sea-themed gear |
| Netherite Monstrosity | Nether | Find its lair in the Nether wastes | Monstrosity tools, netherite gear |
| Ender Guardian | End | Summon after defeating the Ender Dragon | Guardian weapons, ender armor |
| Ignite | Nether fire area | Build a summoning structure | Fire-themed weapons |
| Ancient Remnant | Desert pyramids | Find the summoning room | Ancient tools and relics |

Each boss has custom animations and attack phases. Bring your best gear, food buffs, and potions.

### When Dungeons Arise

Roguelike combat structures scattered across the world — towers, castles, barracks, temples. Each has multiple floors with increasing difficulty. Loot scales with floor depth. Use the Explorer's Compass to find specific structures (select "Dungeons Arise" in the structure list).

---

## Wave 6 — Building & Decoration

Tools and blocks to build the base you deserve.

### Install

See [MODLIST-V3.md](./MODLIST-V3.md#wave-6--building--decoration).

- **Chipped**: Hundreds of block variants for every material. Use a **sawmill** (craft from any wood + iron) to create decorative variants. Different blocks have different sawmill recipes — experiment with JEI
- **Supplementaries**: Vanilla+ decoration — jars for item storage display, signposts for directional signs, faucets for fluid flow, weather vanes for wind direction, item shelves for shelf display
- **Macaw's**: Bridges, doors, roofs, windows, fences in every wood type. Each is crafted like the vanilla version but with the specific wood type
- **Building Wands**: Right-click to open the wand GUI. Select a mode — **build wall** (creates a wall between two points), **build line** (creates a line), **fill area** (fills a 3D area). Left-click the first corner, right-click the second corner. Works with any block in your inventory
- **Handcrafted**: Furniture — chairs, tables, shelves, desks, curtains, and more. Right-click to sit in chairs. Place items on tables and shelves for display

---

## Keybindings Reference

| Keybind | Default | Mod | Wave |
|---------|---------|-----|------|
| View Recipes | `R` | JEI | 0 |
| View Uses | `U` | JEI | 0 |
| Open Mod Menu | **Set to `Ctrl+M`** | Mod Menu | 0 |
| Open Fullscreen Map | `J` | Xaero's World Map | 0 |
| Toggle Minimap | `H` | Xaero's Minimap | 0 |
| Open Waystone Menu | **Set to `Ctrl+Shift+W`** | Waystones | 0 |
| Open Backpack | `B` | Sophisticated Backpacks | 0 |
| Zoom | **Set to `C`** | Embeddium | 0 |
| Toggle Dynamic Lights | **Set to `Ctrl+L`** | LambDynamicLights | 0 |
| Open Curios Inventory | **Set to `Y`** | Curios API | 0 |
| Open Skill Tree | **Set to `P`** | Skill Tree | 3 |
| View Weapon Ability | `Ctrl` (hold) | Simply Swords | 3 |
| Open Rune Pouch | **Set to `R`** | Runes | 3 |
| Open Create Ponder | `W` (hold over block) | Create | 1 |

## Progression Through All Waves

| Phase | What you'll be doing |
|-------|---------------------|
| **Phase 1** (hours 0-40) | Wave 0 setup. Early Create (water wheel, mechanical press). Find certus quartz for AE2. Make first Mekanism machines (2x ore). Explore Terralith/Regions biomes. Skill Tree active from first action. Find your first Simply Swords weapon. Cook Farmer's Delight meals |
| **Phase 2** (hours 40-150) | Full Create factory (conveyors, deployers, sequenced crafters). Mekanism 3x-5x ore processing. AE2 ME network with autocrafting. Explore Twilight Forest bosses. Apotheosis rare/epic gear. Mutant Monsters. First Cataclysm boss. Build with Chipped and Macaw's |
| **Phase 3** (hours 150+) | Mekanism fusion reactor + MekaSuit. AE2 full autocrafting CPU chains. Endgame Apotheosis mythic gear. Twilight Forest final bosses. L_Ender's Cataclysm endgame bosses. BetterEnd/Nullscape End dimension. Monumental building projects with all decoration tools |

## General Tips

### Finding Help
- **JEI (`R`)** is always your first stop — hover an item and press R to see how it's made
- **Mod Menu / Configured** shows every installed mod's config
- Most mods link to their wiki or Discord from their Mod Menu entry

### Losing Progress
You won't. Graves preserve your items. No creeper craters. The pack is designed so you can walk away for a month and come back to exactly the world you left.

### Java & Performance
Minecraft 1.21.1 requires **Java 21**. Use Temurin JDK 21 from Adoptium.

Recommended JVM arguments (for Minecraft Launcher → Installation → Edit → More Options → JVM Arguments):

```
-Xms8g -Xmx8g -XX:+UseShenandoahGC -XX:+UnlockExperimentalVMOptions -XX:+AlwaysPreTouch -XX:+UseStringDeduplication -XX:-OmitStackTraceInFastThrow -XX:+OptimizeStringConcat
```

| System RAM | Recommended allocation |
|------------|------------------------|
| 16 GB | `-Xms10g -Xmx10g` |
| 32 GB | `-Xms22g -Xmx22g` |
| 64 GB | `-Xms48g -Xmx48g` |
