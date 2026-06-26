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

#### Step 2: Add Mekanism

Mekanism is about **industrial processing**. It uses its own power system (Joules) which is compatible with Create's rotational power through **Create's alternator**.

**First Mekanism machines:**
1. **Metallurgic Infuser** — combine osmium with coal/infusion materials
2. **Enrichment Chamber** — 2x ore processing (1 ore → 2 dust)
3. **Crusher** — alternative processing
4. **Rotary Condensentrator** — converts between gases and liquids
5. **Chemical machines** — unlocks 3x, 4x, and 5x ore processing

**The Mekanism pipeline**: Osmium → osmium ingots → basic machines → steel → advanced machines → atomic alloy → ultimate machines.

#### Step 3: Build AE2 Storage

AE2 is about **digital storage**. Once you have basic processing, build an ME system:

1. **Certus quartz** — find in worldgen. Process into **Certus quartz crystals**
2. **Charger** — charge Certus quartz (place on top of a Charger)
3. **ME drive** — stores digital items using **storage cells**
4. **Terminal** — access all stored items from one screen
5. **Cable** — connect everything together

**Basic AE2 setup:** ME Controller + ME Drive (with storage cells) + Terminal + Cables to your machines = everything in one inventory.

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

### Simply Swords

60+ unique weapons with passive/activated abilities. Drop from mobs (~2% rate) and chests. Each one feels different — scythes heal, rapiers shred armor, hammers knock back.

### Apotheosis (Replaces Savaru's Affixology)

Adds Diablo-style loot to all gear:

- **Rarity tiers**: Common → Uncommon → Rare → Epic → Mythic
- **Random affixes**: Every gear piece can roll with bonus stats (damage, speed, crit, resistances)
- **Gem socketing**: Find gems, socket into gear for extra effects
- **Enchanting overhaul**: Higher enchanting levels, new enchantments, better books

**What to do**: Identify every piece of gear you find. Socket gems into your favorites. Use the enchanting system to max out your gear.

### Relics RPG

Legendary accessories that go in your Curios slots (ring, amulet, belt, gloves). Each has a unique ability — double jump, damage shield, luck boost, entity pull.

### Runes

Socketable runes for weapons/tools. Each rune adds an effect — fire, ice, lightning, poison, lifesteal. Swappable between fights.

**Keybind**: Check Controls for Open Rune Pouch.

---

## Wave 4 — Food, Farming & Comfort

Farmer's Delight brings the cooking system you know from V1, now on NeoForge.

### Install

See [MODLIST-V3.md](./MODLIST-V3.md#wave-4--food-farming--comfort).

### Farmer's Delight

Craft a cutting board and cooking pot. Find new crops (tomatoes, rice, cabbage, onions). Cook meals with better saturation than vanilla steak.

**Progression**: Cutting board → Cooking pot → Stove → All cooking recipes visible in JEI.

### Brewin' And Chewin'

Fermentation and drinks. Grow hops, barley, grapes. Brew beer, wine, mead. Age in barrels for stronger effects.

---

## Wave 5 — Combat & Mobs

Your powerful gear finally has something worthy to fight.

### Install

See [MODLIST-V3.md](./MODLIST-V3.md#wave-5--combat--mobs).

### Better Combat

Makes every weapon feel unique — reach, sweeping, attack speed animations. Enhances Simply Swords weapons. Install and forget.

### Mutant Monsters

Mutant versions of vanilla mobs — Mutant Zombie, Skeleton, Creeper, Enderman. Each drops unique gear (Hulk Hammer, Mutant Skeleton Armor, Creeper Minion). Configurable spawn rate via Mod Menu.

### L_Ender's Cataclysm

Epic boss fights. Each boss has unique mechanics and drops powerful gear:
- **Leviathan**: Deep ocean boss
- **Netherite Monstrosity**: Nether boss
- **Ender Guardian**: End boss
- And more — each with custom animations and attack patterns

### When Dungeons Arise

Roguelike combat structures scattered across the world. Multi-room dungeons with increasing difficulty and loot.

---

## Wave 6 — Building & Decoration

Tools and blocks to build the base you deserve.

### Install

See [MODLIST-V3.md](./MODLIST-V3.md#wave-6--building--decoration).

- **Chipped**: Hundreds of block variants for every material (stone, wood, glass, etc.)
- **Supplementaries**: Vanilla+ decoration — jars, signposts, faucets, weather vanes, item shelves
- **Macaw's**: Bridges, doors, roofs, windows in every wood type
- **Building Wands**: Faster large-scale construction — place blocks in lines, walls, or fill areas
- **Handcrafted**: Furniture — chairs, tables, shelves, curtains, desks

---

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
