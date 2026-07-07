# Graphics Pipeline

**MO2 Separator:** `Graphics`

## Overview

This section owns the full graphics rendering pipeline for `Elder Wilds`: from the post-process shader framework through textures, lighting, weather, water, terrain, characters, and distant detail. Each pillar of the pipeline lives in its own sub-file.

The pipeline is designed to be evaluated in order — each stage depends on the one before it. Do not jump ahead to textures or characters before the Community Shaders framework and its addon modules are locked.

## Pipeline Order

| Stage | File                                                                  | Category                                                     |
|-------|-----------------------------------------------------------------------|--------------------------------------------------------------|
| 1     | [`Graphics - PGPatcher`](modlist-graphics-pgpatcher.md)               | PGPatcher — parallax/PBR mesh generation                     |
| 2     | [`Graphics - Community Shaders`](modlist-graphics-shaders.md)         | Community Shaders — post-process framework and addon modules |
| 3     | [`Graphics - Textures & Meshes`](modlist-graphics-textures.md)        | Textures & Meshes — all surface-level asset replacement      |
| 4     | [`Graphics - Lighting`](modlist-graphics-lighting.md)                 | Lighting — interior, exterior, and effect lighting           |
| 5     | [`Graphics - Weather & Water`](modlist-graphics-weather.md)           | Weather & Water — atmospheric and liquid rendering           |
| 6     | [`Graphics - Terrain & Flora`](modlist-graphics-terrain.md)           | Terrain & Flora — ground surfaces, grass, trees              |
| 7     | [`Graphics - Characters & Creatures`](modlist-graphics-characters.md) | Characters & Creatures — body, skin, hair, creature textures |
| 8     | [`Graphics - LOD & Distant Detail`](modlist-graphics-lod.md)          | LOD & Distant Detail — far-field rendering                   |

## Key Principles

- PGPatcher runs after the texture and mesh stack is stable → `Graphics - PGPatcher`
- Community Shaders is the universal post-process baseline; no ENB is used → `Graphics - Community Shaders`
- All texture and shader choices must be evaluated for third-person readability at 4K
- Performance budgeting for the pipeline is owned by `modlist-performance.md` → `Performance`
- Visual coherence rules (no mixing low-res and high-res in the same category) are owned by `modlist-curation.md` → `Testing & Curation`
