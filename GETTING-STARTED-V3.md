# Getting Started V3 — Minecraft 1.21.1 NeoForge

This guide walks you through the modpack **one Wave at a time**. Each wave introduces one new capability. Don't install the next wave until you're comfortable with the current one.

---

## Wave -1 — How to Play Minecraft

*(Same as V2 — see GETTING-STARTED-V2.md for the full tutorial)*

Basic controls: WASD to move, left-click to attack/break, right-click to use/place, E for inventory. Punch trees, make a crafting table, build a shelter before night.

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

#### Step 1: Start with Create

Create is about **rotational power**. Build a **water wheel** or **windmill** to generate rotational force (SU — stress units). Use **shafts**, **gear boxes**, and **belts** to transfer power to machines.

**First Create machines:**
1. **Crafting table** + **andesite** → **andesite casing** (basic component)
2. **Cranks** — hand-crank for manual power (before you build a wheel)
3. **Water wheel** — place over flowing water for passive power
4. **Mechanical press** — presses ingots into plates
5. **Millstone** — grinds wheat into flour, ores into dust

**Tip**: Press `W` while holding a wrench to see Create's tooltips. JEI (`R`) shows all Create recipes.

**Create's Ponder system**: Hold `W` while hovering over any Create block or item in JEI or your inventory. This opens an interactive animation explaining how the block works. Use this constantly — it's Create's built-in tutorial and better than any written guide.

#### Step 2: Add Mekanism

Mekanism is about **industrial processing**. It uses its own power system (Joules) which is compatible with Create's rotational power through **Create's alternator**.

**Osmium**: Mekanism's primary ore. Find it underground (similar rarity to iron). Mine it with a stone pickaxe or better.

**Mekanism machines tier system**: Machines come in 4 tiers — Basic, Advanced, Elite, Ultimate. Higher tiers process faster and can handle more simultaneous operations.

**First Mekanism machines:**
1. **Metallurgic Infuser** — combine osmium with coal/infusion materials to create steel components
2. **Enrichment Chamber** — 2x ore processing (1 ore → 2 dust). Your first and most important machine
3. **Crusher** — alternative processing path, also 2x
4. **Rotary Condensentrator** — converts between gases and liquids. Needed for chemical processing
5. **Chemical Injection Chamber** + **Chemical Washer** + **Chemical Dissolution Chamber** — unlocks 3x, 4x, and 5x ore multiplication

**The Mekanism pipeline**: Osmium → osmium ingots → Basic machines → Steel → Advanced machines → Atomic Alloy → Elite machines → Ultimate machines → MekaSuit.

**Energy**: Mekanism machines need power. Early game: heat generator (lava) or wind generator. Mid-game: gas-burning generator. Late-game: fusion reactor.

#### Step 3: Build AE2 Storage

AE2 is about **digital storage** and **autocrafting**. Once you have basic Create or Mekanism processing, build an ME system:

**Finding Certus Quartz**: Certus quartz grows in meteorites. Look for circular depressions on the surface — dig down to find a meteorite with certus quartz blocks. You can also find certus quartz ore underground. Process certus quartz in a stonecutter to get **certus quartz dust**, then smelt into **certus quartz crystals**.

**First AE2 setup:**
1. **Charger** — place certus quartz on top to charge it (power required)
2. **ME Controller** — the brain of your network. Connect power to it
3. **ME Drive** — holds storage cells. Connect to controller with **ME cable**
4. **Storage Cell** — crafted from charged certus quartz + redstone. Put in the ME Drive
5. **ME Terminal** — connect to the network. Right-click to open — all stored items in one screen

**Channels**: AE2 has a channel system. Each cable can carry 8 channels. A controller gives you 32 channels per face. Plan your network — use **ME smart cables** (show channel usage with colored lines) to see your channel count.

**Import & Export**:
- **ME Import Bus** — place on a chest/machine, pulls items into your ME network
- **ME Export Bus** — places items from your network into a machine
- **Storage Bus** — treats an attached inventory as part of your ME network

**Basic AE2 setup:** ME Controller + ME Drive (with cells) + Terminal + Import/Export buses on your machines → everything accessible from one terminal.

**Progression tip**: Start with 1k or 4k storage cells. Upgrade to 16k, 64k, and 256k as you accumulate more items.

#### Step 4: Mid-Game Integration

| Task | Which mod | How |
|------|-----------|-----|
| Power your base | Create + Mekanism | Create wheels power Mekanism machines via alternator |
| Process ores | Mekanism | 3x processing chain (Enrichment Chamber + Crusher + etc.) |
| Craft components | Create | Mechanical press, mixer, deployer |
| Store everything | AE2 | ME system with import busses on your machines |
| Move items | Create | Conveyor belts between machine groups |

#### Step 5: Late Game

- **AE2 autocrafting**: Set up pattern providers + molecular assemblers. Request an item, AE2 crafts it automatically
- **Mekanism digital miner**: Automated mining — place it, configure filters, it mines everything in range
- **Create trains**: Build tracks between bases for bulk item transport
- **Mekanism fusion reactor**: Endgame power — requires deuterium + tritium (produced from water via electrolysis)

#### Step 6: Endgame

- **MekaSuit**: Mekanism's endgame armor. Flight, extreme damage resistance, fire/lava immunity, underwater breathing. Powered by your base's energy grid
- **AE2 autocrafting CPU**: Complex autocrafting chains that craft anything from raw materials
- **Create mega-factory**: Massive conveyor networks, train stations, automated farms

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

Recommended JVM arguments:
```
-Xms8g -Xmx8g -XX:+UseShenandoahGC -XX:+UnlockExperimentalVMOptions -XX:+AlwaysPreTouch
```
