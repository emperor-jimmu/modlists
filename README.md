# Cyberpunk 2077 Modlist

A curated, performance-conscious modlist for **Cyberpunk 2077 v2.31**
(v2.3-compatible), organized via Mod Organizer 2.

## Goals

- Transform Cyberpunk 2077 into a **deep RPG**, not an action game
- **Living world** with daily activities, survival-lite features, NPC routines,
  and meaningful interactivity
- **Abundant collectibles** and exploration rewards
- **Meaningful relationships** -- expanded romance and companion systems
- **Adult content** -- mature romance, intimacy, and relationship content that
  serves narrative depth and character connection
- **Playable performance** -- detailed optimization guide included

## Requirements

- Cyberpunk 2077 v2.31 (with Phantom Liberty)
- All DLCs
- Mod Organizer 2 ([download](https://www.nexusmods.com/skyrimspecialedition/mods/6194))
- Windows 10/11 64-bit

## Hardware

See the [Performance & Optimization guide](modlist/19-performance-and-optimization.md)
for detailed hardware recommendations and benchmarks.

## Quick Start

1. Install [Mod Organizer 2](https://www.nexusmods.com/skyrimspecialedition/mods/6194)
2. Follow the category files in order: 01 through 19
3. Each category lists mods in recommended install order
4. Run the game through MO2

## Categories

| # | Category | Focus |
|---|----------|-------|
| 01 | [MO2 Setup & Tools](modlist/01-mo2-setup-and-tools.md) | Prerequisites, launch workflow |
| 02 | [Core Utilities](modlist/02-core-utilities.md) | Script extenders, frameworks, libraries |
| 03 | [Bug Fixes](modlist/03-bug-fixes.md) | Quest fixes, animation fixes, world holes |
| 04 | [UI & HUD](modlist/04-ui-and-hud.md) | Interface, menus, minimap, inventory |
| 05 | [Gameplay Overhaul](modlist/05-gameplay-overhaul.md) | RPG systems, combat, loot, crafting |
| 06 | [Living World](modlist/06-living-world.md) | Daily activities, survival, immersion |
| 07 | [Quests & Stories](modlist/07-quests-and-stories.md) | New quests, expanded storylines, gigs |
| 08 | [Relationships & Romance](modlist/08-relationships-and-romance.md) | Romance systems, companions |
| 09 | [Collectibles & Exploration](modlist/09-collectibles-and-exploration.md) | Hidden items, secrets |
| 10 | [Appearance & Character](modlist/10-appearance-and-character.md) | Body mods, skin, hair, cyberware visuals |
| 11 | [Clothing & Fashion](modlist/11-clothing-and-fashion.md) | Clothing pieces, sets, virtual ateliers |
| 12 | [Armor & Gear](modlist/12-armor-and-gear.md) | Armor pieces, gear sets, transmog |
| 13 | [Weapons](modlist/13-weapons.md) | New weapons, attachments, optics |
| 14 | [Apartments & Housing](modlist/14-apartments-and-housing.md) | New apartments, customization |
| 15 | [Vehicles & Transport](modlist/15-vehicles-and-transport.md) | Driving, new vehicles, customization |
| 16 | [Locations & World Expansion](modlist/16-locations-and-world-expansion.md) | New areas, open buildings |
| 17 | [Visuals & Atmosphere](modlist/17-visuals-and-atmosphere.md) | Lighting, weather, LUTs, textures |
| 18 | [Audio & Music](modlist/18-audio-and-music.md) | Sound overhaul, custom radio |
| 19 | [Performance & Optimization](modlist/19-performance-and-optimization.md) | Benchmarks, settings, tools |

## Design Philosophy

This modlist embraces:

- **RPG depth** -- mods must enhance systems, not bypass them
- **Adult content** -- mature romance and intimacy that deepens character
  relationships, with preference for PG/mature toggles

This modlist will **never** include:

- Cheat mods (free items, unlimited carry weight, price hacks)
- Mods that remove game mechanics rather than enhance them
- Paywalled mods or mods behind exclusive discords

## Contributing

Have a mod suggestion? Found a conflict? Open an issue with the mod's Nexus URL
and a brief explanation of why it fits the modlist goals.

## PDF

Generate a printable PDF:
```bash
python -m venv .venv
.venv\Scripts\activate
pip install -r scripts/requirements.txt
python scripts/generate-pdf.py
```

Output: `cyberpunk-2077-modlist.pdf`
