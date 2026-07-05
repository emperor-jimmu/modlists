# Graphics Pipeline

**MO2 Separator:** `02 Graphics`

## Overview

This section owns the full graphics rendering pipeline for `Elder Wilds`: from the post-process shader framework through textures, lighting, weather, water, terrain, characters, and distant detail. Each pillar of the pipeline lives in its own numbered sub-file.

The pipeline is designed to be evaluated in order — each stage depends on the one before it. Do not jump ahead to textures or characters before the Community Shaders framework and its addon modules are locked.

## Pipeline Order

| Stage | File | Category |
|-------|------|----------|
| 1 | [`02a`](modlist-02a.md) | PGPatcher — parallax/PBR mesh generation |
| 2 | [`02b`](modlist-02b.md) | Community Shaders — post-process framework and addon modules |
| 3 | [`02c`](modlist-02c.md) | Textures & Meshes — all surface-level asset replacement |
| 4 | [`02d`](modlist-02d.md) | Lighting — interior, exterior, and effect lighting |
| 5 | [`02e`](modlist-02e.md) | Weather & Water — atmospheric and liquid rendering |
| 6 | [`02f`](modlist-02f.md) | Terrain & Flora — ground surfaces, grass, trees |
| 7 | [`02g`](modlist-02g.md) | Characters & Creatures — body, skin, hair, creature textures |
| 8 | [`02h`](modlist-02h.md) | LOD & Distant Detail — far-field rendering |

## Key Principles

- PGPatcher runs after the texture and mesh stack is stable → `02a`
- Community Shaders is the universal post-process baseline; no ENB is used → `02b`
- All texture and shader choices must be evaluated for third-person readability at 4K
- Performance budgeting for the pipeline is owned by `modlist-14.md` → `14`
- Visual coherence rules (no mixing low-res and high-res in the same category) are owned by `modlist-13.md` → `13`
