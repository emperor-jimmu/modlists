# Chunk-loader alternatives — Driftwood research (2026-09-16)

Goal: find whether any chunk-loader mod beats the incumbent (SuperMartijn642 Chunk Loaders) for Driftwood (NeoForge 1.21.1, single-player survival, chill, 200h+ automation, cross-dimension incl. modded dims). Non-goals: changing the pack pick, in-game benchmarking, editing GUIDE.md/STATUS.md/configs/PDF.

Method: Modrinth API search (`chunk loader`, `chunkloader`, `force load`, `project_type:mod`) + per-project `game_versions`/`loaders` checks + NeoForge-1.21.1 version queries + CurseForge project/files pages + repos/wikis. Every factual claim cites its source URL. Secondary claims are marked [UNVERIFIED].

---

## 1. Incumbent baseline: SuperMartijn642 Chunk Loaders

- Projects: https://modrinth.com/mod/chunk-loaders · https://www.curseforge.com/minecraft/mc-mods/chunk-loaders · source: https://github.com/SuperMartijn642/ChunkLoaders
- 1.21.1 NeoForge build EXISTS: version `1.2.9-neoforge-mc1.21`, published 2025-07-31, version id `lVVhQRyh`, file `chunkloaders-1.2.9-neoforge-mc1.21.jar`, `game_versions: ["1.21", "1.21.1"]`, `loaders: ["neoforge"]` (https://api.modrinth.com/v2/version/lVVhQRyh).
- Tiers/coverage: Single (1 chunk), Basic (3×3), Advanced (5×5), Ultimate (7×7); per-chunk on/off toggle through an in-block map GUI (https://www.curseforge.com/minecraft/mc-mods/chunk-loaders, FAQ + Content sections; https://github.com/SuperMartijn642/ChunkLoaders README).
- Mechanism: chunk-ticket force-loading (server-side capability `ServerChunkLoadingCapability` / `ChunkLoadingCapability` in https://github.com/SuperMartijn642/ChunkLoaders file tree). Auto-loads on world load: "chunk loaders will automatically load chunks when you load a world" (https://www.curseforge.com/minecraft/mc-mods/chunk-loaders FAQ). Ticket-vs-simulation internals [UNVERIFIED] beyond this.
- Random ticks: YES — "loaded chunks will also receive random ticks, so crops, sugar cane and trees will keep growing" (https://www.curseforge.com/minecraft/mc-mods/chunk-loaders FAQ; same in https://github.com/SuperMartijn642/ChunkLoaders README).
- Mob spawning: NO from tickets alone — "Mobs only spawn around players, not just when a chunk is loaded" (https://www.curseforge.com/minecraft/mc-mods/chunk-loaders FAQ). Matters for farm placement doctrine.
- Cross-dimension: works across dimensions in current pack doctrine ("Keep chunks loaded across dimensions", "keeps chunks loaded when you're far away or in another dimension" — `minecraft/GUIDE.md` Infrastructure/Wave 1.5/Wave 7 refs). Per-dimension behavior on modded dims (Aether, Twilight Forest, Bumblezone, Northstar planets) [UNVERIFIED] at source level.
- Survival model: craftable blocks (iron + redstone + ender pearl per `minecraft/GUIDE.md` §Chunk Loaders; EMI reference), place + right-click toggle, no fuel, no commands/OP.
- Deps (2, both already in pack Wave 1): SuperMartijn642's Config Lib (required, https://api.modrinth.com/v2/version/lVVhQRyh deps `LN9BxssP` → https://api.modrinth.com/v2/project/LN9BxssP) + SuperMartijn642's Core Lib (required, `rOUBggPv` → https://api.modrinth.com/v2/project/rOUBggPv). Pack refs: https://www.curseforge.com/minecraft/mc-mods/supermartijn642s-config-lib, https://www.curseforge.com/minecraft/mc-mods/supermartijn642s-core-lib.
- License: All Rights Reserved (Modrinth `license: LicenseRef-All-Rights-Reserved`, https://api.modrinth.com/v2/project/t1VgucWo); modpack use explicitly allowed: "Yes, feel free to use my mod in my modpack" (https://www.curseforge.com/minecraft/mc-mods/chunk-loaders FAQ). XMCL-installable (present on both CurseForge and Modrinth).
- Health: CurseForge 17.9M+ downloads (https://www.curseforge.com/minecraft/mc-mods/chunk-loaders header); Modrinth 1,576,641 downloads, 692 followers (https://api.modrinth.com/v2/project/t1VgucWo). Project updated 2026-09-15 (newer-MC builds) but the 1.21.1 build itself is 2025-07-31 — stable/stale, not abandoned.
- Pack integration (why it sticks): Mekanism `allowChunkloading = false` delegation (`minecraft/config/Mekanism/general.toml`, `minecraft/GUIDE.md` Wave 1 config); placement doctrine (Single/Spotloader/Multi table, `minecraft/GUIDE.md` §Chunk Loaders); colony + space-base refs (Wave 1.5, Wave 7).

---

## 2. Candidate table

| Candidate | 1.21.1 NeoForge build (evidence) | Mechanism | Random ticks | Cross-dim | Survival model | Deps (new vs in-pack) | License / XMCL | Verdict |
|---|---|---|---|---|---|---|---|---|
| **Chunk Loaders (incumbent)** | ✅ `1.2.9-neoforge-mc1.21`, 2025-07-31, id `lVVhQRyh` (https://api.modrinth.com/v2/version/lVVhQRyh) | Tickets, auto-load on world load | YES (FAQ) | Yes (pack doctrine); modded dims [UNVERIFIED] | Craftable, no fuel, no OP | 2 req libs, both in pack | ARR + modpack-OK / XMCL yes | KEEP |
| **Create: Power Loader** | ✅ `2.0.5-mc1.21.1`, 2026-05-22, id `3Y4r0ItR`, `game_versions: ["1.21.1"]`, `loaders: ["neoforge"]` (https://api.modrinth.com/v2/version/3Y4r0ItR) | Tickets; blocks + train/contraption + station attach (https://modrinth.com/mod/create-power-loader body; https://github.com/hlysine/create_power_loader/wiki) | [UNVERIFIED] (not stated on project page) | [UNVERIFIED] | Craftable (andesite/brass tiers, datapack-overridable recipes) | Required: Create (in pack); optional JEI — zero new deps | MIT (https://github.com/hlysine/create_power_loader/blob/main/LICENSE) / XMCL yes | Runner-up, see §3 |
| **Load My Chunks** | ✅ `1.2.5.1`, 2026-07-15, id `vDoabpZk`, NeoForge (https://api.modrinth.com/v2/version/vDoabpZk) | Tickets + lag governor (dormant state on slow ticks, grace period for multiblocks incl. Mekanism) (https://modrinth.com/mod/load-my-chunks body) | OFF by default; opt-in via Lifeforce Broadcaster block (same source) | Works player-online-or-not (same source); modded dims [UNVERIFIED] | Craftable blocks (loader, extension, chunkometer/lagometer) | Required: Architectury API (already in pack per `minecraft/GUIDE.md`: Effectual/Simply Swords refs); optional Sable/ComputerCraft/C2ME compat | MIT / XMCL yes | Reject, see §3 |
| **Chunk Loader (2mal3)** | ✅ `v3.0.2+mod`, 2024-08-29, id `hHrIHMiZ`, `loaders: [fabric, forge, neoforge, quilt]`, `gv: [1.21, 1.21.1]` (https://api.modrinth.com/v2/version/hHrIHMiZ) | Tickets (`TI`/`ET` ring diagram) (https://modrinth.com/mod/chunk-loader body) | NO — `ET` excludes plant growth; `TI` worse (same source) | [UNVERIFIED] | Craftable BUT 3 redstone/min fuel tax; also `/loot give` command path (same source) | Zero deps (same version record) | LGPL-3.0-only / XMCL yes | Reject, see §3 |
| **FTB Chunks (NeoForge)** | ✅ (CurseForge-only; absent from Modrinth: https://api.modrinth.com/v2/project/ftb-chunks → 404) — `[NEOFORGE][1.21.1] FTB Chunks 2101.1.22`, Sep 2 2026 (https://www.curseforge.com/minecraft/mc-mods/ftb-chunks-forge/files/all?page=1&pageSize=25&gameVersion=1.21.1) | Claim-map + shift-click forceload ("Shift-left or right-click on claimed chunks to toggle forceloading", https://www.curseforge.com/minecraft/mc-mods/ftb-chunks-forge) | [UNVERIFIED] | Claimed chunks per map incl. Nether/End [UNVERIFIED for modded dims] | Map GUI, no block/fuel; team-claim design for a solo pack | NEW: FTB Library NeoForge (`[NEOFORGE][1.21.1] 2101.1.36`, Sep 11 2026, https://www.curseforge.com/minecraft/mc-mods/ftb-library-forge/files/all?page=1&pageSize=10&gameVersion=1.21.1) + FTB Chunks itself | FTB licence (CF) / XMCL yes | Reject, see §3 |
| **Fakeplayer Chunkloader** | ❌ ABSENT — 1.21.1 version query returns NONE (https://api.modrinth.com/v2/project/fakeplayerchunkloader/version?game_versions=["1.21.1"]); `game_versions` tail is `1.21.10…26.2` (https://api.modrinth.com/v2/project/fakeplayerchunkloader); CF support table lists only 1.21.10/1.21.11/26.x (https://www.curseforge.com/minecraft/mc-mods/fakeplayer-chunkloader) | Fake-player OR ticket-only dual mode (same CF page) | [UNVERIFIED] (mode-dependent) | Overworld/Nether/End claimed (same CF page); modded dims [UNVERIFIED] | ❌ Command/OP-driven: `/fakeplayer add`, "Commands require OP rights" (same CF page) — fails survival-achievable rule | None needed (moot) | ARR / XMCL yes but no build | Disqualified |
| **ECL (Easy Chunk Loader)** | ❌ ABSENT — no 1.21.1-neoforge build; `game_versions` tail `1.21.6…1.21.11` (https://api.modrinth.com/v2/project/e1uESIFS) | [UNVERIFIED] | [UNVERIFIED] | [UNVERIFIED] | — | — | CC-BY-NC-ND-4.0 | Disqualified |
| **Pieced — Chunk Loaders** | ❌ ABSENT — no 1.21.1 build; tail `1.21.5…1.21.10` (https://api.modrinth.com/v2/project/zvDy7Rkx) | [UNVERIFIED] | [UNVERIFIED] | [UNVERIFIED] | — | — | MIT | Disqualified |
| **Copper Chunk Loader** | ❌ ABSENT for 1.21.1-NeoForge (no 1.21.1-neoforge build; tail `26.x`, https://api.modrinth.com/v2/project/Y6iamK6k); also datapack-first, and "CANNOT simulate player's chunk tick… mob spawning WON'T WORK" (https://modrinth.com/mod/copper-chunk-loader body) | Tickets w/o player-tick | NO (mob spawning) | [UNVERIFIED] | Craftable tiers | — | CC-BY-NC-SA-4.0 | Disqualified |
| **Script's Chunk Loaders** | ❌ Fabric-only (`loaders: ["fabric"]`, https://api.modrinth.com/v2/project/7ByWkIoP) | — | — | — | — | — | MIT | Disqualified |
| **Loadstone** | ❌ Fabric-only (`loaders: ["fabric"]`, https://api.modrinth.com/v2/project/2UT1ynXh) | — | — | — | — | — | Proprietary | Disqualified |
| **Chunk Loader Persistence** | ❌ Fabric-only (https://api.modrinth.com/v2/project/50IORdAx) | — | — | — | — | — | MIT | Disqualified |
| **Redstone Chunk Loader** | ❌ No 1.21.1 (`versions: 1.20/1.21`, https://api.modrinth.com/v2/project/FgMkLkj2) | — | — | — | — | — | MIT | Disqualified |
| **VS ChunkLoader** | ❌ 1.20.1 fabric/forge only (https://api.modrinth.com/v2/project/V4eP65JX); Valkyrie Skies addon — wrong role | — | — | — | — | — | GPL-3.0 | Disqualified |

Trust/activity (downloads are project totals, not 1.21.1-specific): incumbent 1.57M Modrinth / 17.9M CF; Power Loader 2.49M Modrinth, 427 followers; Load My Chunks 45.7k, 38 followers; 2mal3 22k, 42 followers; FTB Chunks 129.4M CF (project), 1.21.1 file 295.5k; Fakeplayer 11.2k Modrinth / 10.5k CF. Sources: https://api.modrinth.com/v2/project/t1VgucWo, https://api.modrinth.com/v2/project/wPQ6GgFE, https://api.modrinth.com/v2/project/OtbeKtn3, https://api.modrinth.com/v2/project/Eii02wjv, https://api.modrinth.com/v2/project/fakeplayerchunkloader, https://www.curseforge.com/minecraft/mc-mods/chunk-loaders, https://www.curseforge.com/minecraft/mc-mods/ftb-chunks-forge, https://www.curseforge.com/minecraft/mc-mods/fakeplayer-chunkloader.

Known-conflict notes (all [UNVERIFIED] in-game; from docs reasoning only): no candidate documents a conflict with Mekanism/Create/AE2/MineColonies/Distant Horizons/Iris. Positives: Load My Chunks explicitly handles Mekanism multiblock reinit via grace period (https://modrinth.com/mod/load-my-chunks body); Power Loader is Create-native (trains/contraptions/ponder, https://github.com/hlysine/create_power_loader/wiki) — the only candidate that extends Create instead of paralleling it. Distant Horizons/Iris are render-path; no loader interacts with them by design [UNVERIFIED].

---

## 3. Shortlist deep-dives (only candidates with a real 1.21.1 NeoForge build)

### 3a. Create: Power Loader — credible runner-up, still loses

- Build: `2.0.5-mc1.21.1` (2026-05-22, NeoForge, `game_versions: ["1.21.1"]`), MIT, 2.49M downloads — the healthiest alternative (https://api.modrinth.com/v2/version/3Y4r0ItR; https://api.modrinth.com/v2/project/wPQ6GgFE).
- What it is: Create add-on with andesite (1 chunk) + brass (1×1–5×5 configurable) loaders; works on ground, trains, contraptions; station attach; server configs; ponder scenes (https://modrinth.com/mod/create-power-loader body; https://github.com/hlysine/create_power_loader/wiki).
- Why it tempts: zero new deps (Create required, JEI optional — both in pack); thematic fit; train/contraption loading the incumbent can't do.
- Why it loses for Driftwood: (1) max 5×5 < incumbent 7×7 ultimate — colony/factory coverage per block drops; (2) brass-gating pushes chunk loading later than the incumbent's iron/redstone/pearl tier (pack places loaders at Phase 2 start); (3) random-tick behavior [UNVERIFIED] vs incumbent's confirmed YES — crop/farm doctrine depends on it; (4) adopting it *for trains* while keeping the incumbent duplicates the loader role (pack rule: one mod per role). As a full replacement it is a downgrade on coverage + certainty.

### 3b. Load My Chunks — best engineering, wrong defaults for chill solo

- Build: `1.2.5.1` (2026-07-15, NeoForge 1.21.1), MIT, 45.7k downloads (https://api.modrinth.com/v2/version/vDoabpZk; https://api.modrinth.com/v2/project/OtbeKtn3).
- What it is: server-safe loader with lag governor (dormant state, grace reinit — Mekanism-friendly), chunkometer/lagometer diagnostics, ComputerCraft peripheral, C2ME-compat optional dep (https://modrinth.com/mod/load-my-chunks body).
- Why it loses: (1) random ticks OFF by default (Lifeforce Broadcaster opt-in) — every farm/colony loader would need a second block placed + understood; (2) operational surface (dormant/grace diagnostics) is server-admin tooling for a solo chill pack; (3) required Architectury is already in pack (fine), but the mod's value (lag refusal) fights the pack's doctrine of just loading what placement doctrine prescribes. No adoption case.

### 3c. Chunk Loader (2mal3) — disqualified on ticks + fuel tax

- Build: `v3.0.2+mod` (2024-08-29; stale — 2 years old), zero deps, LGPL-3.0 (https://api.modrinth.com/v2/version/hHrIHMiZ).
- Killers: documented NO plant growth in loaded chunks (https://modrinth.com/mod/chunk-loader body) — breaks farm/forestry doctrine; 3-redstone/min perpetual fuel tax — anti-chill upkeep on every outpost; support statement covers "ONLY the latest datapack for Fabric and Vanilla 1.21.1" (same source) — the NeoForge jar is second-class. No adoption case.

### 3d. FTB Chunks (+FTB Library) — disqualified on role duplication + dep weight

- Builds exist (`2101.1.22` + Library `2101.1.36`, both Sep 2026, both 1.21.1 NeoForge) with massive health (129.4M/242.8M CF) — but: (1) claim-map + forceload duplicates JourneyMap's owned map surface (pack rule: no two mods owning one capability; JourneyMap owns minimap/world map per `minecraft/GUIDE.md`); (2) two NEW deps (FTB Library + FTB Chunks) vs incumbent's zero-new-dep footprint; (3) team-claim/ally machinery is dead weight in strictly single-player survival; (4) random-tick behavior [UNVERIFIED]. No adoption case. (Sources: https://www.curseforge.com/minecraft/mc-mods/ftb-chunks-forge, https://www.curseforge.com/minecraft/mc-mods/ftb-chunks-forge/files/all?page=1&pageSize=25&gameVersion=1.21.1, https://www.curseforge.com/minecraft/mc-mods/ftb-library-forge/files/all?page=1&pageSize=10&gameVersion=1.21.1.)

---

## 4. Recommendation: KEEP the incumbent

No candidate beats SuperMartijn642 Chunk Loaders for Driftwood. Keep it; change nothing.

Pack-specific reasoning:

1. It is the only candidate that simultaneously satisfies: real 1.21.1 NeoForge build + confirmed random ticks + craftable-no-fuel survival model + per-chunk map control + up-to-7×7 coverage + zero new deps + no role duplication.
2. Unified chunk management (Mekanism delegation) stays intact — every alternative keeps or complicates the `allowChunkloading = false` posture, none simplifies it.
3. Placement doctrine (Single/Spotloader/Multi → machine/farm vs explore vs factory/colony) maps 1:1 onto its tiers; Power Loader's 5×5 max and LMC's broadcaster-extra-block both break the mapping.
4. Cross-dimension + modded-dim spread (Aether/TF/Bumblezone/Northstar) is already documented against the incumbent in Wave 1.5/7; no alternative evidences modded-dim behavior either.

Migration notes (only if a future revisit reverses this):

- → Create: Power Loader: keep Mekanism delegation as-is; remap Multi (3×3) → brass configurable, Single → andesite, drop 7×7 outposts to 2 brass blocks; re-verify random ticks + station-attach perf before touching counts; train loading becomes a new capability (doctrine addition, not mapping).
- → Load My Chunks: add Lifeforce Broadcaster to every farm/colony placement (doctrine change); retrain dormant-state diagnostics; counts unchanged (loader + extension model).
- → FTB Chunks: do NOT migrate without also retiring JourneyMap's map role — out of scope for a loader swap.
- In all cases: update `minecraft/GUIDE.md` Infrastructure + Wave 1.5 + Wave 7 refs, STATUS counts, and PDF together (not this file's job).

---

## 5. Limitations (what could not be verified)

- Ticket-vs-simulation internals for every mod (incumbent's force-load path, Power Loader's ticket level, LMC's dormant wake path): source-reading only, no runtime proof; in-game benchmarking was out of scope.
- Random ticks for Power Loader / FTB Chunks / Fakeplayer modes: unstated in primary docs → [UNVERIFIED].
- Cross-dimension behavior specifically in modded dims (Aether, Twilight Forest, Bumblezone, Northstar planets) for all candidates: [UNVERIFIED].
- Concrete conflicts with Mekanism/Create/AE2/MineColonies/Distant Horizons/Iris: none documented for any candidate; the LMC–Mekanism grace note and Power Loader–Create nativity are the only doc-level signals.
- CurseForge 1.21.1 file evidence was read from the files-all page (FTB Chunks, FTB Library); per-file dependency manifests were not re-checked beyond the project pages.
- Search coverage: Modrinth `search?query=chunk loader|chunkloader|force load&facets=[["project_type:mod"]]&limit=25` (https://api.modrinth.com/v2/search?query=chunk%20loader&facets=[[%22project_type:mod%22]]&limit=25) plus CurseForge `chunkloaders` category (https://www.curseforge.com/minecraft/mc-mods/ftb-chunks-forge, https://www.curseforge.com/minecraft/mc-mods/chunk-loaders, https://www.curseforge.com/minecraft/mc-mods/fakeplayer-chunkloader). Obscure CF-only loaders outside the category may exist.
