# Wave 7 — World Expansion & Exploration

**Fabric 1.21.1** | **Phase 1–3** | Fills the already-expanded world with more to find

## Design Goal

Wave 2 (Terralith + Tectonic + YUNG's Better Dungeons) made the world larger and more dramatic. Wave 7 fills that larger world with more content: every vanilla structure type gets YUNG's overhaul treatment, new biome variants add discovery, and hundreds of new structures populate the landscape. The Bumblezone adds a new dimension.

## Mod Roles

### YUNG's Structure Collection

All share YUNG's API (already present). Zero new library deps.

| Mod | Version | What it overhauls | Downloads |
|-----|---------|-------------------|-----------|
| Better Nether Fortresses | 3.1.5 | Nether fortresses — better layouts, new rooms, improved loot | 18.8M |
| Better Ocean Monuments | 4.1.2 | Ocean monuments — redesigned interiors, better loot | 18.1M |
| Better Jungle Temples | 3.1.2 | Jungle temples — traps, puzzles, rewarding loot | 16.8M |
| Better Mineshafts | 5.1.1 | Mineshafts — varied designs, new minecart chests | 16.8M |
| Better End Island | 3.1.2 | End island — more interesting terrain and structures | 16.2M |
| Better Strongholds | 5.1.3 | Strongholds — larger, more complex, better End portal room | 15.1M |
| Better Witch Huts | 4.1.1 | Witch huts — expanded interiors, brewing-themed loot | 14.7M |
| Better Desert Temples | 4.1.5 | Desert temples — multi-room, more loot, new traps | 13.8M |
| Better Caves | 3.1.4 | Cave generation — larger caverns, more varied shapes | 810K |

### New Variants & Structures

| Mod | Version | Role | New Deps |
|-----|---------|------|----------|
| **Repurposed Structures** | 7.5.21 | Biome-variant versions of vanilla structures (desert villages, nether outposts, end fortresses). 10.8M dls | MidnightLib |
| **Additional Structures** | 5.1.0 | 200+ new structures — watchtowers, camps, ruins, shrines. No deps | none |
| **Regions Unexplored** | 0.6.1 | 65+ new Overworld biomes with unique trees, plants, and terrain. 8M dls | Lithostitched (present) |

### New Dimension

| Mod | Version | Role | New Deps |
|-----|---------|------|----------|
| **The Bumblezone** | 7.15.0 | A dimension of giant bees, honey blocks, wax caverns, and bee-themed puzzles. Enter via bee nest/hive. 7.4M dls | Resourceful Lib, MidnightLib |

### New Dependencies

| Mod | Required By | Notes |
|-----|-------------|-------|
| MidnightLib | Repurposed Structures, The Bumblezone | Lightweight config library. Only depends on Fabric API (present) |
| Resourceful Lib | The Bumblezone | Library used by many mods. Only depends on Fabric API (present) |

### Already Present

| Mod | Wave | Notes |
|-----|------|-------|
| YUNG's API | Wave 2 | Required by all YUNG's mods |
| Cloth Config | Wave 0 | Required by all YUNG's mods |
| Fabric API | Wave 0 | Required by all |
| Lithostitched | Wave 2 | Required by Regions Unexplored |
| Geckolib | Wave 2 | May be used by some structures for animations |

## Integration

| Wave | Integration |
|------|-------------|
| Wave 2 (Exploration) | YUNG's structures complement Terralith biomes. Regions Unexplored biomes generate alongside Terralith. Tectonic terrain shapes new biomes |
| Wave 3 (Equipment Magic) | New structure loot feeds into Affixology. Simply Swords weapons found in new structure chests. Champions can spawn in new structures |
| Wave 6 (Combat) | Mutant Monsters can spawn in new structures. AdventureZ nether mobs in Better Nether Fortresses. Champions in YUNG's structures |
| Wave 1 (Tech) | New structures contain ores and materials for Tech Reborn processing |
| Wave 5 (Logistics) | The Bumblezone honey/wax resources feed into processed material chains |

## Progression

### Phase 1 (hours 0–40)

- Better Caves, Better Mineshafts, Better Strongholds improve early exploration
- Additional Structures ruins and camps provide early-game loot
- Regions Unexplored biomes visible from spawn

### Phase 2 (hours 40–150)

- Better Desert Temples, Jungle Temples, and Ocean Monuments become accessible
- Repurposed Structures biome variants enrich mid-game exploration
- Nether fortresses and witch huts are relevant targets

### Phase 3 (hours 150+)

- The Bumblezone is accessible (enter via bee nest/hive)
- Better End Island improves the End dimension after dragon fight
- All structures fully explored with max gear

## Config Changes

- YUNG's mods: verify loot tables feed into Affixology and Simply Swords
- Regions Unexplored: ensure biome generation doesn't conflict with Terralith (Lithostitched handles this)
- Repurposed Structures: verify structure spawn rates are reasonable with YUNG's mods
- The Bumblezone: typical config for dimension entry (bee nest dimension access)
