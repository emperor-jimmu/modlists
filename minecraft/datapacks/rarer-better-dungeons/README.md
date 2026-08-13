# Rarer Better Dungeons

Rebalances **YUNG's Better Dungeons** density so it stops competing with **When Dungeons Arise** (Wave 5) for Overworld exploration slots.

## Why this exists

The 1.21.1 NeoForge build of YUNG's Better Dungeons **removed the old `averageSeparation` config option** (verified against the mod's source: the NeoForge config spec only exposes skulls/heads, nether blocks, chest counts, and staircase length). Dungeon spacing is now set by the mod's structure-set data files. The only way to rebalance it is a datapack that overrides those files — which is what this is.

At default spacing, the classic small dungeons generate every ~10 chunks and feel common, crowding out WDA's roguelike structures as notable landmarks. Rarer finds make each dungeon feel earned and give both structure sets room.

## Changes

| Dungeon | Structure set file | Spacing (avg, chunks) | Separation (min, chunks) |
|---------|--------------------|----------------------|--------------------------|
| Small Dungeons | `small_dungeons.json` | 10 → **22** | 6 → 11 |
| Spider Caves | `spider_dungeons.json` | 44 → **58** | 22 → 29 |
| Undead Fortresses | `skeleton_dungeons.json` | 46 → **60** | 23 → 30 |
| Catacombs | `zombie_dungeons.json` | 48 → **60** | 24 → 30 |

- **Spacing** = the average distance between structures in chunks (this is what the old `averageSeparation` controlled). Values are the midpoints of the recommended ranges (20–24 / 55–60 / 55–65 / 55–65).
- **Separation** = the minimum distance guarantee. Raised to ~50% of spacing, matching the mod's own default ratio.
- Salts and weights are unchanged — placement pattern stays identical, just sparser.

## Install

For all worlds: copy this folder (or zip it) into `%APPDATA%\.minecraft\datapacks\`.

For a single world: copy into `<world>\datapacks\`, then select it in-game via World Options → Data Packs (world must be reloaded / reopened).

**Note**: structure placement is decided during world generation — the change applies to newly generated regions only. Existing chunks keep their old spacing. New world or Chunky pre-generation recommended for a full effect.

**Verify at test launch**: with the datapack active, small dungeons should appear ~22 chunks apart on average (F3 + `/locate structure betterdungeons:small_dungeon`).
