# WDA Density Tweak

Rebalances When Dungeons Arise density against YUNG's Better Dungeons (the `rarer-better-dungeons` datapack is the other half):

1. **Minor structures +25% rarer** — spacing 45 → 56 for the small builds (fishing huts, wishing wells, jungle tree houses, bathhouses, abandoned temples, lighthouses).
2. **Most common major structures ~25% rarer** — the three weight-3 structures in the major set (illager_campsite, merchant_campsite, small_blimp) drop to weight 2 (~28% relative reduction ≈ the 25% target). The big landmarks keep their density.

## Verified against the real jar

Values were extracted from the shipped **`DungeonsArise-1.21.1-2.1.68-release.jar`** (`data/dungeons_arise/worldgen/structure_set/`). A draft of this tweak based on older-version numbers was rejected during review — the 1.21.1 data differs substantially:

- The minor set on 1.21.1 contains only **6 structures** (fishing_hut, wishing_well, jungle_tree_house, bathhouse, abandoned_temple, lighthouse), not "campsites and huts" — those (illager_campsite, merchant_campsite, small_blimp, mushroom_house, greenwood_pub, …) live in the **major** set with high weights.
- Defaults are minor spacing **45** / separation **40** (salt 342415935), major spacing **50** / separation **45** (salt 88371663) — not 35/25 / 40/30.
- The minor set carries an **`exclusion_zone`** (minor structures never generate within 10 chunks of a major structure) — preserved here.
- `giant_mushroom` and `mining_system` have structure files but are **not referenced by either set** in 2.1.68 — they do not generate.

## Changes

### `minor_structures.json` (+25% spacing)

| Field | Default (2.1.68) | +25% (applied) |
|-------|------------------|----------------|
| `spacing` | 45 | **56** (45 × 1.25 = 56.25, rounded) |
| `separation` | 40 | **50** (40 × 1.25) |
| `salt` | 342415935 | unchanged |
| `exclusion_zone` | 10 chunks vs `major_structures` | unchanged |
| structure weights | all 1 | unchanged |

`separation < spacing` still holds (50 < 56). Ratio preserved (89%), matching the mod's own default proportion.

### `major_structures.json` (common-structure weight trim)

| Structure | Weight (default) | Weight (applied) |
|-----------|------------------|------------------|
| Illager Campsite | 3 | **2** |
| Merchant Campsite | 3 | **2** |
| Small Blimp | 3 | **2** |

Pick probability per major-set roll: 3/43 (6.98%) → 2/40 (5.00%) — **~28% rarer** for each. All other 29 structures, weights, spacing 50 / separation 45, and salt 88371663 unchanged — big landmarks (Shiraz Palace, Keep Kayra, Aviary, Plague Asylum, Foundry, …) keep their density.

**Why weights, not spacing**: scaling the whole major set (+25% → 63/56) would have made the big landmarks rarer too, which contradicts the pack goal. Weight trims hit only the common smalls.

## Not changed (deliberately)

The remaining weight-2 commons (greenwood_pub, illager_corsair, illager_galley, mushroom_house) stay at weight 2 — medium-common, outside the "most common" target. Say the word if they should drop to 1 as well.

## Install

For all worlds: copy this folder (or zip it) into `%APPDATA%\.minecraft\datapacks\`.

For a single world: copy into `<world>\datapacks\`, then enable in World Options → Data Packs (reload / reopen the world).

**Note**: applies to newly generated regions only — existing chunks keep old placement. Pair with the Chunky pregeneration step on a fresh world.

**Verify at test launch**: `/locate structure dungeons_arise:fishing_hut` (or `abandoned_temple`) — finds should average ~56 chunks apart with the datapack active. If a WDA update changes the structure sets, re-verify this folder against the new jar (structure-set overrides mask any structures the mod adds).
