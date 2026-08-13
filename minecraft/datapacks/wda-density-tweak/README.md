# WDA Density Tweak

Makes When Dungeons Arise's **minor structures 25% rarer** — the small builds (fishing huts, wishing wells, jungle tree houses, bathhouses, abandoned temples, lighthouses) — while leaving the `major_structures` set at default. Pairs with the `rarer-better-dungeons` datapack (YUNG's Better Dungeons rebalance).

## Verified against the real jar

Values were extracted from the shipped **`DungeonsArise-1.21.1-2.1.68-release.jar`** (`data/dungeons_arise/worldgen/structure_set/minor_structures.json`). A draft of this tweak based on older-version numbers was rejected during review — the 1.21.1 data differs substantially:

- The minor set on 1.21.1 contains only **6 structures** (fishing_hut, wishing_well, jungle_tree_house, bathhouse, abandoned_temple, lighthouse), not "campsites and huts" — those (illager_campsite, merchant_campsite, small_blimp, mushroom_house, greenwood_pub, …) live in the **major** set with high weights.
- Defaults are spacing **45** / separation **40** (salt 342415935), not 35/25.
- The minor set carries an **`exclusion_zone`** (minor structures never generate within 10 chunks of a major structure) — preserved here.

## Changes

| Field | Default (2.1.68) | +25% (applied) |
|-------|------------------|----------------|
| `spacing` | 45 | **56** (45 × 1.25 = 56.25, rounded) |
| `separation` | 40 | **50** (40 × 1.25) |
| `salt` | 342415935 | unchanged |
| `exclusion_zone` | 10 chunks vs `major_structures` | unchanged |
| structure weights | all 1 | unchanged |

`separation < spacing` still holds (50 < 56). Ratio preserved (89%), matching the mod's own default proportion.

## Not changed (deliberately)

The **major** set (spacing 50 / separation 45) stays at default per the pack decision — big landmarks (aviary, shiraz_palace, keep_kayra, plague_asylum, foundry, bandit_towers, …) keep their density. **Consequence**: the campsites / mushroom houses / blimps that ride in the major set remain at default density. If they should also be rarer, options are (a) scale the whole major set (+25% → 63/56) — big landmarks included, or (b) reduce the small structures' weights inside the major set (e.g., illager_campsite 3→2) — landmarks get relatively more common. Say the word and this pack grows a second file.

## Install

For all worlds: copy this folder (or zip it) into `%APPDATA%\.minecraft\datapacks\`.

For a single world: copy into `<world>\datapacks\`, then enable in World Options → Data Packs (reload / reopen the world).

**Note**: applies to newly generated regions only — existing chunks keep old placement. Pair with the Chunky pregeneration step on a fresh world.

**Verify at test launch**: `/locate structure dungeons_arise:fishing_hut` (or `abandoned_temple`) — finds should average ~56 chunks apart with the datapack active.
