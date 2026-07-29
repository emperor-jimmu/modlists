# Wave 5 — Tech Expansion

**Fabric 1.21.1** | **Phase 1–3** | Also restructures Wave 1 (Oritech → Tech Reborn)

## Design Goal

Wave 5 shifts the tech pillar from Oritech to **Tech Reborn** (Fabric-native, 37M downloads, long-standing community standard) and adds two complementary mods:
- **Logistics: Automation** — BuildCraft-inspired pipes, provider/requester network, autocrafting
- **Powah ReFabric** — Additional high-tier power generation

Together they form a complete tech ecosystem: Tech Reborn handles machine progression and processing, Logistics handles smart item routing with autocrafting, and Powah provides endgame power.

## Mod Roles

| Mod | Version | Role | Dependencies |
|-----|---------|------|-------------|
| **Tech Reborn** | 5.11.19 | Main tech progression — ore processing (industrial grinder, implosion compressor, chemical reactor), power generation, machines, tools, armor, quantum armor/suit | Reborn Core (new), Fabric API (present) |
| **Logistics: Automation** | 0.7.4 | BuildCraft-style pipes with visible in-pipe item movement. Tiered progression: mechanical pipes → smart pipes → network logistics with provider/requester/crafting pipes. RF engines. Macerator, kiln, laser quarry | Fabric API (present) |
| **Powah ReFabric** | 5.1.0 | Additional power generation: solar panels (6 tiers), thermoelectric, lightning, player-activated. Energy storage, cables, batteries | Fabric API (present), Cloth Config (present) |

### New Dependencies

| Mod | Required By | Notes |
|-----|-------------|-------|
| Reborn Core | Tech Reborn | Core library — same author, updated alongside Tech Reborn |

### Already Present from Earlier Waves

| Mod | Present Since | Notes |
|-----|---------------|-------|
| Fabric API | Wave 0 | Required by all three |
| Cloth Config | Wave 0 | Required by Powah |
| Architectury API | Wave 0 | May be used by some addons |

## Restructuring — Wave 1 Changes

Oritech is replaced by Tech Reborn:

| Before (Oritech) | After (Tech Reborn) |
|-------------------|---------------------|
| Oritech 1.2.8 | Tech Reborn 5.11.19 |
| owo lib (GUI) | Reborn Core (library) |
| Athena (textures) | Removed — not needed |
| Geckolib (animation) | Removed — not needed |
| Mythic Metals, Clutter, Alloy Forgery | **Kept** — cross-process with Tech Reborn |

Mythic Metals, Clutter, and Alloy Forgery remain as cross-processing compat — Tech Reborn machines can process their ores.

## Integration Points

### Tech Reborn + Logistics: Automation

- Logistics' provider pipes connect to Tech Reborn machines — advertise machine inventories to the network
- Logistics' requester pipes pull materials for autocrafting from Tech Reborn storage
- Logistics' crafting logistics pipe fulfills crafting requests using Tech Reborn machine outputs
- Logistics' laser quarry feeds raw materials into Tech Reborn processing chains

### Tech Reborn + Powah

- Powah solar panels and generators provide RF power to Tech Reborn machines
- Powah energy cables and batteries store/transmit power across the base
- Tech Reborn's own power gen (fusion reactor, etc.) is late-game — Powah fills mid-game power needs

### With Other Waves

| Wave | Integration |
|------|-------------|
| Wave 0 (Foundation) | Sophisticated Storage barrels feed Tech Reborn processing. Waystones move between base and mining outposts |
| Wave 2 (Exploration) | Tech Reborn ores generate in Terralith/Tectonic biomes. Aether materials processed through Tech Reborn machines |
| Wave 3 (Equipment Magic) | Tech Reborn quantum armor stacks with Affixology affixes and Skill Tree passives |
| Wave 4 (Food & Farming) | Tech Reborn machines can process Let's Do crops into industrial materials |

## Progression Curve

### Phase 1 (hours 0–40) — Early Tech

- Manual generation (coal generator), basic machines (furnace, extractor, compressor)
- First ore processing — doubling output
- Mythic Metals ores enter the processing chain
- Logistics: basic mechanical pipes for item transport
- Powah: first solar panels supplement coal power

### Phase 2 (hours 40–150) — Industrial Age

- Tech Reborn: industrial machines (industrial grinder, chemical reactor, implosion compressor)
- Logistics: smart pipes and network logistics — provider/requester/crafting pipes online
- Powah: mid-tier solar arrays, thermoelectric generators
- Autocrafting via Logistics crafting pipes — first automated production lines

### Phase 3 (hours 150+) — Endgame Tech

- Tech Reborn: fusion reactor, quantum armor, ultimate solar panels
- Logistics: full autocrafting network with satellite pipes across multiple bases
- Powah: max-tier solar panels, lightning generators, massive battery banks
- Player is effectively in creative-mode automation — everything runs on its own

## Config Changes

- Tech Reborn: verify default ore generation doesn't clash with Terralith/Tectonic/Mythic Metals
- Logistics: ensure pipe energy consumption is balanced with Tech Reborn's RF system
- Powah: configure solar panel balance to match Tech Reborn's power curve
- Consider disabling some Tech Reborn machines that duplicate others (e.g., macerator vs Logistics' macerator)
