# Streams Reflowing Adoption — Design Spec

**Date**: 2026-09-02
**Session**: Adopt Streams Reflowing into the Driftwood modpack (NeoForge 1.21.1) as the Wave 2 hydrology layer — the successor role to Dynamic Waters (removed Aug 27, 2026 for a world-breaking carve bug), restoring flowing rivers with current without resurrecting the faulting mod.

## 1. Motivation & role claim

Dynamic Waters was removed Aug 27, 2026 after it became the root cause of the user's **falling-off-the-world** bug (river carving). Its departure also removed the pack's only *water with current* — the mechanical hook that made Create water wheels turn on natural rivers. Wave 2's Overworld Worldgen is now just Terralith (biomes/terrain) + Tectonic (terrain shape): nothing provides hydrology.

**Streams Reflowing is not Dynamic Waters.** It is an independent project (explicitly *not* derived from delvr's Streams — new mechanisms), built for "compatibility first" with terrain mods, and its release history shows sustained, targeted fixes for exactly the failure families that killed Dynamic Waters in this pack (unsafe terrain reads, chunk-border artifacts, structure interference, multithreaded worldgen crashes). Adopting it restores the *capability* the pack deliberately lost — flowing rivers, boat-friendly currents, Create water-wheel power on stream water — under a codebase that is actively maintained against heavy terrain packs.

### Role claimed (single sentence for GUIDE table)

Terrain-following carved streams, elevation lakes, and directional river currents draining to oceans — hydrology with ambience (spray, whitewater, floating debris, bank flora) that feeds Create water wheels and boat travel.

**Non-goals / explicitly out of scope** (no duplication):
- Not a re-adoption of Dynamic Waters (its codebase stays removed).
- Not a biome/terrain overhaul — Terralith + Tectonic keep those lanes.
- Not a water-physics overhaul — vanilla water spreading behavior is preserved by default (`spillOnStreamsOnly` on); the mod's currents are an overworld-worldgen feature.
- No new mobs, items, structures, or dimensions.

## 2. The mod (verified facts)

Modrinth: <https://modrinth.com/mod/streams-reflowing> (slug `streams-reflowing`, project `oLS8HdJ1`). All facts below verified via Modrinth API on 2026-09-02.

| Field | Value |
|---|---|
| Build | `StreamsReflowing-1.21.1-neoforge-2.13.1.jar` (version id `5STkQGAk`) — **release**, 2.66 MB, published **2026-08-27** |
| Version span | One NeoForge jar covers 1.21.1–1.21.5 (version 2.13.1) |
| Loaders | fabric / forge / neoforge (neoforge build used) |
| Dependencies | **Zero** (`dependencies: []` verified) |
| Environment | Worldgen is server-side (`server_only_client_optional`); fine for this pack's strict single-player |
| License | All Rights Reserved — acceptable: pack links/installs via XMCL, never redistributes jars (same class as Improvable Skills, Tyz's Dark Theme) |
| Activity | Published 2026-07-12; updated 2026-08-27; ~2 releases/week through Jul–Aug; 160.8K project downloads, 533 followers |
| Categories | adventure, worldgen |
| Known incompatibles | Terrain Diffusion, Tellus (neither in pack); minor custom-bank issue with William Wyther's Overhauled Overworld (not in pack) |

### Feature surface (from project body + 2.13.x changelog)

- **Terrain-following streams**: carve organically by elevation/terrain shape; fully configurable, can be disabled.
- **Lakes/ponds at varying elevations**: dryness-scaled fill (arid biomes → shallow ponds/empty beds).
- **Rivers drain to oceans (optional)**: any river (vanilla or modded) gets directional current; boats/items bob downstream; configurable.
- **Organic water flow** (optional): water keeps momentum over source blocks → natural cascades.
- **Boat-friendly currents**: boats move against current, ascend small waterfalls.
- **Custom banks**: biome-aware bed/waterline/cut-bank materials — ships Terralith-aware defaults (raw stone on Terralith granite/basalt cliffs; Yellowstone blacklisted by default).
- **Bank flora + bank features** (2.13.0+): fallen logs, toppled trees, driftwood along banks, biome-native dressing.
- **Ambience**: whitewater/spray particles on falls + stream edges, distant-fall LOD, drifting leaves/twigs, stream audio (brook + roar layers).
- **Config**: quality presets (Potato→Max) + per-feature toggles split across a worldgen/gameplay file and a client rendering file.

## 3. Compatibility posture with the pack's actual stack

Evidence base: the mod's own changelog (2.9–2.13.1, read in full) plus the project body — not vendor copy:

| Pack element | Posture | Evidence |
|---|---|---|
| Terralith (2.4.6) | ✅ First-class | Yellowstone in default `streamBiomeBlacklist`; Terralith granite/basalt cliff banks; featured gallery "Streams Reflowing + Tectonic" (Tectonic also ships Terralith content) |
| Tectonic (v9.0+) | ✅ First-class | Featured gallery shot; fast-terrain path calibrated for Tectonic-class noise; deep-ocean/trench worlds handled (streams end at real outlet biomes) |
| Serene Seasons + Plus | ✅ Fixed | 2.12.1 fixed recurring stutter with per-block colour resolvers such as Serene Seasons' (Spark-profile fix); streams take local climate for freezing/snow |
| Create (Wave 1) | ✅ Positive integration | 2.13.1 fixed "Create water wheels stopped turning after every server restart"; 2.12.8 fixed hose pulley/fluid identity so machines receive ordinary water |
| YUNG's (11 mods, Wave 2) + Moog's | ✅ | Carve steps around placed structures (2.12.9); villages/temples never generate in lakes; structure compasses/locator maps agree with what actually generates |
| Small Ships / boats QoL | ✅ | Boat-friendly currents + drift-at-current-pace; vessels navigate upstream |
| Aquatic stack (Upgrade/Hybrid Aquatic, Starcatcher) | ✅ | Streams/lakes mark as river by default (`rebiomeStreams=1`) → fish/mob spawns + ambience read as river; `waterMobsIgnoreFlow` on by default keeps aquatic mobs swimming normally |
| YUNG's Better Caves / Darker Depths (below-surface) | ✅ | Rivers that dive underground keep flowing end-to-end (2.13.0); cave-riddled terrain lakes handled |
| Iris + DH + ModernFix rig | ⚠️ Budget, not conflict | Particle ceiling default lowered 3000→1000 in 2.13.1; per-feature particle toggles; quality preset is the perf dial (see §4) |

**Pack-rule checks** (AGENTS.md): no vehicles spawned (chill/vehicle rules clear) · no hostile mechanics (chill rule) · survival-only, no creative requirement · single-player only — server/client concerns irrelevant · no data-pack duplication · nothing hostile/decay (chill rule) · **no duplication** with any current Wave 2 mod.

**Risk framing (standard wave discipline, user-approved)**: same terrain-carve *category* as the mod that broke the world → treated as its own launch-tested unit with an up-front rollback path (remove jar + `config/streamsreflowing/`; carved terrain is baked into chunk data and survives removal, runtime currents simply stop; a fresh world is the clean rollback target — already the pack's testing norm).

## 4. Config override intent (curated)

The mod seeds its config on first launch into `config/streamsreflowing/` (worldgen/gameplay file + client file + `bank_features/` + README + examples). **I cannot author exact keys blind** — the override is intent-first, resolved against the actually generated files during the launch-test step, then committed to `config/streamsreflowing/` per the pack's config convention (override + documented rationale). Intended posture:

| Setting intent | Value | Rationale |
|---|---|---|
| Streams + lakes generation | **On** (default) | The feature; each independently toggleable |
| River currents (natural + carved) | **On** | Restores the Dynamic Waters-era Create water-wheel hook |
| `rebiomeStreams` | Keep default (1: mark as river, keep biome water colour) | Fish/mob spawns read as river for the aquatic stack |
| Terrain accuracy / quality preset | **Default or one notch down** (decide at launch test) | No Chunky in pack; preset is the exploration smoothness dial. Bump only if world pregen is ever adopted |
| Particle/ambience budget | Tune down from default if frames hurt under DH+Iris | Verify on the actual rig; don't assume |
| `streamBiomeBlacklist` | Confirm Yellowstone (Terralith) entry present | Ships by default; verify after first launch |
| Chat welcome message | **Off** | Pack disables chat feedback game rules; the one-time in-chat notice is noise |
| Structure carve-around + compass agreement | Defaults | Built in since 2.12.9 |

Anything not listed stays at default — the changelog's default direction (perf-friendly, biome-aware) already matches pack values.

## 5. GUIDE.md changes

1. **Wave 2 — Overworld Worldgen table** (after the Tectonic row, ~line 1258): add row `Streams Reflowing 2.13.1` → role text from §1. Modrinth link.
2. **Blurb** after the table (the Dynamic Waters blurb slot): short paragraph — terrain-following carved streams, elevation lakes, directional river currents draining to oceans, ambience; Terralith/Tectonic first-class; boats + Create water wheels ride the current; zero deps.
3. **⚠️ New-world note** (same slot style as Incendium's): hydrology is worldgen — best chosen *before* creating a world; existing explored terrain keeps what it has (streams appear only in newly generated chunks). Restores the note Dynamic Waters removal took out.
4. **After First Launch bullet** (line ~3137): add Streams Reflowing to the "first world load takes a few extra minutes" sentence + note the spawn-area height query can hold the loading bar at 0% for up to ~1 min on world creation (normal, per mod docs).
5. **Mod Count Summary**: Wave 2 `36/7/44 → 37/7/45`; Total `180/43/223 → 181/43/224` (mods +1, deps unchanged); changelog annotation appended to the Total row. **Verify exact arithmetic against the live table rows at implementation.**
6. No keybindings, resource packs, config-format doc, or cross-wave integration changes.

## 6. STATUS.md decision entry

New entry at the top of the register (newest-first), dated Sep 2, 2026, mirroring the Dynamic Waters removal entry format:

- **User request** + fit rationale (restores flowing-water capability; successor role, not DW re-adoption).
- **Pinned 2.13.1** — jar name, size, date, zero deps, Modrinth API verified; ARR license note.
- **Compatibility evidence** summary (§3 table condensed): Terralith/Tectonic/Serene Seasons/Create/YUNG's/aquatic stack; the crash-family fixes that address the DW failure mode.
- **Config override** committed to `config/streamsreflowing/` with rationale.
- **[ ] Instance action (XMCL)**: add `StreamsReflowing-1.21.1-neoforge-2.13.1.jar` from Modrinth (`streams-reflowing`); confirm no `dynamicwaters*.jar` remains (supersedes/clears the Aug 27 pending removal if still open). [VERIFY] at next launch (fresh world): no missing-dependency errors; streams/lakes generate following terrain; natural rivers flow one direction to the sea; Create water wheel placed in a stream turns; boat drifts with current and can move against it; no unsafe-terrain-read spam in the log; no chunk-border artifacts; Terralith Yellowstone has no carved streams.
- **Rollback path** (standard wave discipline): remove jar + delete `config/streamsreflowing/`; existing chunks keep carved terrain; fresh world for clean state.
- [ ] DRIFTWOOD-GUIDE.pdf regenerated after GUIDE edits land.

## 7. PDF + commit

Regenerate `rendered/DRIFTWOOD-GUIDE.pdf` via the project's existing pipeline (only after GUIDE.md changes). Commit `docs(driftwood): adopt Streams Reflowing (Wave 2 hydrology)`. Follow the house sequence: spec → implementation plan → implementation.

## 8. Verification

- **Static**: GUIDE.md row/blurb/note present; Mod Count Summary Wave 2 + Total consistent; no leftover Dynamic Waters guide references (grep); config override files match what first launch generated.
- **In-game (user, next launch)**: the [VERIFY] checklist in §6 — worldgen is instance-side; the repo deliverable is docs + config + status with the behavioral check documented for XMCL.
- **PDF** regenerates without errors.

## 9. Out of scope / risks

- **Very young, fast-moving mod** (2.13.x line, ~2 months of releases). Mitigation: pin exact version; standard wave discipline (own launch-tested unit); upstream churn absorbed by re-verification at each future update, not by unpinned floats. User accepted this risk posture.
- **Carve-category risk** remains nonzero despite the changelog evidence — this is why §6 carries a rollback path and a fresh-world VERIFY step rather than an assumption of safety.
- **Performance**: no Chunky in pack; the exploration smoothness dial is the quality preset + particle budget. If first launch shows hitches, lower preset first (documented decision, not a silent change).
- **`spillOnStreamsOnly` / organic flow**: left at defaults (streams-only scope) so player-built water behaves exactly as vanilla — no chill-rule or build-grief surprises.
- **License ARR**: link + XMCL install only, matching existing pack entries of the same class; no jar redistribution anywhere in this repo.
