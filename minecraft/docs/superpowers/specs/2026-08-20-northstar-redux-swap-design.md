# Northstar Redux Swap — Design Spec

**Date**: 2026-08-20
**Session**: Replace Stellaris with Create: Northstar Redux in the Driftwood modpack (NeoForge 1.21.1); remove CC:Tweaked entirely.

## 1. Motivation

- **Stellaris is out.** The user dislikes Stellaris's additional world generation (satellite dish structures, operation bases) appearing in the Overworld. Verified: Stellaris 1.4.23 ships `earth_satellite` and `earth_operation_base` jigsaw structures that generate on the world surface in Overworld biomes (structure set spacing ~80 chunks, biomes tag = jungle/forest/taiga/desert/plains/savanna families).
- **CC:Tweaked is out.** The user does not want it in the modlist. Its quest chapter (`20008000`, "Programmable Computers") was already removed during the 2026-08-13 quest regeneration; what remains is the mod entry, docs, config, KubeJS gates, and tooling references.

## 2. Replacement: Create: Northstar - Redux 0.6.4

CurseForge: https://www.curseforge.com/minecraft/mc-mods/northstar-redux (fork of lightning2401/northstar, maintained by Astronauts-of-Create; MIT).

| | Stellaris 1.4.23 (out) | Northstar Redux 0.6.4 (in) |
|---|---|---|
| Identity | Standalone rockets + machines | **Create addon** — rockets are player-built/superglued Create contraptions |
| Overworld worldgen | Satellite dishes + operation bases | **None** (separate "Create: Northstar - Structures" addon exists; NOT installed) |
| Dependencies | Architectury API (stays), Potentials API (removed), Sky Aesthetics (removed) | Create 6.0+ (already in pack), GeckoLib (already in pack, Wave 1) |
| Progression | 4 rocket tiers, planet hoops | Rocket Station assembly → science system (Telescope → Astronomical Readings → Astronomy Table → Space Atlas) unlocks planets |
| Survival | Oxygen suit + distributor | Oxygen (Separator/Filler/Sealer/Detector, Atmospheric Concentrator) + temperature regulation (Temperature Regulator) |
| Materials | desh, ostranium, tharsite, glacio crystals | Titanium, Martian Steel, Tungsten, Lunar Sapphire (+ Moon/Mars/Mercury/Venus ores) |
| Compat | — | Create, Create Crafts & Additions, TFMG, Copycats+, Sable (TFMG + CCA already in pack) |

Version pin: **0.6.4** (2026-07-22), latest for 1.21.1 NeoForge. Item/block IDs verified from the `1.21.1/dev` branch source (`MOD_ID = "northstar"`).

**Stellaris compat-mod audit (2026-08-20, reproducible)**: searched the full GUIDE.md mod tables (241 rows) and STATUS.md for any Stellaris/Beyond-Earth addon or compatibility mod (patterns: `stellaris`, `beyond.earth`, `beyond_earth`, `compat` rows referencing space mods). Result: **none installed.** The only one ever considered — TFMG-Stellaris Compatibility — was already removed in an earlier session (STATUS.md). Apothic Compats does not include Stellaris (covers AE2, Aether, Cataclysm, Create, Curios, Deep Aether, Deeper and Darker, Farmer's Delight, Mekanism Tools, Supplementaries, Twilight Forest). Nothing further to remove.

**Mod count effect**: Wave 7 `1 mod / 2 deps` → `1 mod / 0 new deps`. Wave 8 (CC:Tweaked, 1 mod) removed. Totals `178/49/227` → **`177/47/224`**.

## 3. GUIDE.md changes

1. **Stellaris section** (locate by heading `### Stellaris — Interplanetary Travel`): replace with a Northstar Redux section:
   - Rocket construction: Rocket Station (assembly + destination), Rocket Controls, Rocket Thruster, Rocket Combustion Chamber; rockets are superglued Create contraptions. Note: the `LaunchPadBlock` class exists in the 0.6.4 source but is **not registered** (WIP) — do not reference a "Launch Pad" item in the guide or quests.
   - Science unlocks: Telescope produces Astronomical Readings → Astronomy Table spends them as science points → Space Atlas selects planets. Return Ticket for return trips.
   - Oxygen loop: Oxygen Separator (item) → Oxygen Filler (contraption-capable) + Oxygen Sealer (pressurize rooms) + Oxygen Detector; Atmospheric Concentrator; Temperature Regulator for heat/cold; heat shielding requirement scales with rocket size.
   - Suits: Iron Space Suit (base) → Martian Steel Space Suit (heat resistant). Broken suit variants repaired.
   - Planets: Moon (lunar sapphire, glowstone, Lunargrade/Snail/Eel mobs) → Mars (Martian Steel, Wilter/Argyre/Coiler flora, Echo Worm/Toad/Cobra/Moth) → Mercury (tungsten, extreme heat, Raptor/Roach/Tortoise) → Venus (acid plumes, Mimic/Scorpion/Stone Bull/Vulture).
   - Materials chain: Titanium (raw → ingot → sheet); Martian Steel; Tungsten; Lunar Sapphire (shard → polished).
   - **Integration with Tech Mods** table (rewritten): Mekanism (cables power machines, 5x processing on Northstar ores), AE2 (ME drives store materials, autocraft rocket parts), Create (rotational power + the rocket itself), TFMG (fuel/diesel compat), Farmer's Delight (meals edible in space with oxygen).
   - **Instance swap checklist** (user-facing): in the mod instance — remove `stellaris` jar, `potentials` jar, `sky-aesthetics` jar; add `northstar-redux` 0.6.4 jar (Create 6.0+ and GeckoLib already present); do not install "Create: Northstar - Structures".
   - **Update policy**: Northstar is early-development (0.6.x active, breaking changes possible — updates may change item IDs and invalidate return tickets). Pin 0.6.4; before updating, back up the world and re-run the quest validation pipeline (`generate.py`/`validate.py`) so stale IDs surface immediately.
   - **World/save migration note**: removing Stellaris from an existing save leaves already-generated dishes as inert blocks and removes its items (rockets, suits, desh ore) from inventories — recommend a fresh world for the swap, or accept the leftovers. Northstar adds no worldgen, so a fresh world stays pristine.
2. **Wave 7 row**: `Stellaris, Potentials API, Sky Aesthetics` → `Northstar Redux (Create 6.0+ and GeckoLib already in pack — no new dependencies; no worldgen structures)`.
3. **Totals row**: `178/49/227` → `177/47/224`; append changelog annotation `−Stellaris −Potentials API −Sky Aesthetics −CC:Tweaked +Northstar Redux, Aug 2026`.
4. **CC:Tweaked removal**: delete the Wave 8 section (mod table, source note, recipe gates table, config table, "Crafting Your First Computer"), the Lua tutorial, the Integration Recipes section (incl. the Stellaris Launch Sequencer), all `CC:Tweaked × …` interdependency notes, the CC:Tweaked Progression Placement subsection, the world-creation step referencing `config/computercraft-server.toml`, and the "Program your base" tech-loop row.
5. **Quest chapter list** and **quest counts**: Stellaris → Northstar; total 211 → **212** (17 out, 18 in).
6. **Phase tables**: Phase 2 — drop the CC:Tweaked clause, `Stellaris Moon and early planets` → `Northstar Redux Moon and early planets`; Phase 3 — drop the CC:Tweaked clause, `Mars and Glacio space bases` → `Mars and Venus space bases`.
7. **Tech-loop row**: `Stellaris desh/ostranium → Mekanism 5x line → AE2 storage` → `Northstar titanium/martian steel → Mekanism 5x line → AE2 storage`.

## 4. FTB Quests

### 4.1 Pipeline extension (small, tested)

`generate.py` `build_task` currently emits only `item`/`checkmark` tasks. Extend it to support real detection:

```python
def build_task(t):
    out = {"id": t["id"], "type": t["type"]}
    if t["type"] == "item":
        out["item"] = {"count": t.get("count", 1), "id": t["item"]}
    elif t["type"] == "dimension":
        out["dimension"] = t["dimension"]
    if t.get("optional"):
        out["optional"] = True
    return out
```

- `dimension` is a standard FTB Quests task type ("enter a dimension"); this pack's FTB Quests version was smoke-tested with dimension tasks in the July Stellaris chapter.
- Task-level `optional` is a standard FTB Quests task flag. Design works even if a future version ignores it (see 4.3).
- Add pytest coverage for both (`test_generate.py`).

### 4.2 Quest chapter — single source of truth

**New** `tools/ftbquests/quest_data/northstar.json` — **18 quests** (15 milestones + 3 breadcrumbs), chapter id **`82000000`** (fresh slot — the retired `90000000` Stellaris id is deleted, not inherited), Main group `20000001`, order_index 9. Milestones = hexagon, breadcrumbs = square; x/y computed by the pipeline from `phase`/`shape`.

The complete quest table with descriptions lives in **`docs/superpowers/plans/2026-08-20-northstar-redux-swap.md` Task 1** (full JSON, verbatim). Item IDs below are all verified from the `1.21.1/dev` source this session:

| key | title | shape | phase | tasks (icon = first) | reward | depends on |
|---|---|---|---|---|---|---|
| `space_program` | Space Program | hexagon | 1 | item `northstar:rocket_station` | XP 20 + 8 `minecraft:iron_ingot` | — |
| `rocket_parts` | Rocket Parts | hexagon | 1 | item `northstar:rocket_thruster`, `northstar:rocket_controls`, `northstar:rocket_combustion_chamber` | XP 24 + 8 `minecraft:copper_ingot` | `space_program` |
| `oxygen_system` | Oxygen System | hexagon | 1 | item `northstar:oxygen_separator`, `northstar:oxygen_filler` | XP 24 + 8 `northstar:durable_fabric` | `rocket_parts` |
| `space_suit` | Space Suit | hexagon | 1 | item `northstar:iron_space_suit_helmet`, `northstar:iron_space_suit_chestpiece` | XP 24 + 8 `minecraft:paper` | `oxygen_system` |
| `science` | Science Unlocked | hexagon | 1 | item `northstar:telescope`, `northstar:astronomical_reading` | XP 20 + 8 `minecraft:iron_ingot` | `space_suit` |
| `moon_landing` | Moon Landing | hexagon | 1 | dimension `northstar:moon` + optional item `northstar:moon_stone` | XP 36 + 8 `northstar:lunar_sapphire_shard` | `science` |
| `oxygen_sealer` | Oxygen Sealer | square | 1 | item `northstar:oxygen_sealer` | XP 12 | `oxygen_system` |
| `martian_steel` | Martian Steel | hexagon | 2 | item `northstar:martian_steel_ingot` | XP 40 + 8 `northstar:martian_steel_ingot` | `moon_landing` |
| `mars` | Mars | hexagon | 2 | dimension `northstar:mars` + optional item `northstar:mars_stone` | XP 40 + 8 `northstar:raw_martian_iron_ore` | `martian_steel` |
| `titanium` | Titanium | hexagon | 2 | item `northstar:titanium_ingot` | XP 40 + 8 `northstar:titanium_ingot` | `mars` |
| `mercury` | Mercury | hexagon | 2 | dimension `northstar:mercury` + optional item `northstar:mercury_stone` | XP 44 + 8 `northstar:raw_tungsten_ore` | `titanium` |
| `tungsten` | Tungsten | hexagon | 2 | item `northstar:tungsten_ingot` | XP 44 + 8 `northstar:tungsten_ingot` | `mercury` |
| `venus` | Venus | hexagon | 2 | dimension `northstar:venus` + optional item `northstar:venus_stone` | XP 48 + 8 `northstar:volcanic_ash_item` | `tungsten` |
| `martian_space_suit` | Martian Steel Space Suit | hexagon | 2 | item `northstar:martian_steel_space_suit_chestpiece` | XP 48 + 8 `northstar:martian_steel_sheet` | `venus` |
| `temperature_regulator` | Temperature Regulator | square | 2 | item `northstar:temperature_regulator` | XP 16 | `oxygen_system` |
| `space_atlas` | Space Atlas | hexagon | 3 | item `northstar:space_atlas` | XP 56 + 8 `northstar:durable_fabric` | `martian_space_suit` |
| `rocket_waypoint` | Rocket Waypoint | square | 3 | item `northstar:rocket_waypoint` | XP 16 | `space_atlas` |
| `interplanetary_empire` | Interplanetary Empire | hexagon | 3 | item `northstar:return_ticket` | XP 64 + 8 `northstar:polished_lunar_sapphire` | `space_atlas` |

**No checkmark milestones.** Every milestone detects something real: items for crafts, `dimension` tasks for arrivals (with an optional planet-exclusive item task — e.g. `northstar:moon_stone`, only obtainable on the Moon — as a fallback that also verifies presence).

### 4.3 Cannot-brick guarantees

- **Item IDs**: every one verified from source this session (including `mercury_stone`, which exists at `NorthstarBlocks.java:2987`). `northstar:launch_pad` is deliberately NOT used (LaunchPadBlock is unregistered WIP in 0.6.4).
- **Dimension IDs**: `northstar:moon|mars|mercury|venus` are datapack-registered at runtime (not in the repo source — verified absent). Expected names match the mod's namespace convention. The optional item task means a visit completes the quest even if the dimension task is ignored; if a dimension ID is wrong, the quest shows an error and the **post-install checklist** catches it — escape hatch: swap the task to item-only (item IDs are verified), regenerate, done.
- **Rewards**: XP levels + phase-scaled consumable materials only, each chosen to feed the next quest (iron → rocket parts, copper → oxygen machines, fabric → suit, paper → science, shards → moon economy, raw ores → next metal). No placement/utility blocks, no gated items.

### 4.4 Files and tooling

- **Delete** `tools/ftbquests/quest_data/stellaris.json` and the generated `config/ftbquests/quests/chapters/90000000.snbt` (Stellaris chapter).
- **Modify** `tools/ftbquests/generate.py` (4.1) and `tools/ftbquests/validate.py` (KNOWN_MODS: − `stellaris`, − `computercraft`, + `northstar`).
- **Regenerate**: `python tools/ftbquests/generate.py northstar` → writes `chapters/82000000.snbt` + rewrites `chapter_groups.snbt`/`data.snbt` from constants (safe).
- **Tests**: `pytest` (test_generate.py / test_validate.py, fixtures updated to drop `stellaris`/`computercraft`) + `python tools/ftbquests/validate.py`.

## 5. File deletions

- `config/computercraft-server.toml` (CC:Tweaked override)
- `kubejs/server_scripts/wave8_cc_tweaked.js` (CC:Tweaked recipe gates)
- `tools/ftbquests/quest_data/stellaris.json`
- `config/ftbquests/quests/chapters/90000000.snbt` (Stellaris chapter; replaced by `82000000.snbt`)

## 6. STATUS.md

- New entry under Added/Removed: Stellaris → Northstar Redux 0.6.4 (reason: worldgen), CC:Tweaked removed (user request), deps Potentials API + Sky Aesthetics removed, totals 178/49/227 → 177/47/224, quest total 211 → 212. Compat-mod audit result recorded with the search terms used (no Stellaris addons/compat mods; TFMG-Stellaris Compatibility already removed earlier).
- Dependency-audit block (Stellaris × Sky Aesthetics): mark superseded — both deps removed with Stellaris.
- Wave 7 section: rewritten to Northstar Redux (no new deps, no worldgen). Wave 8 section: rewritten to a removal note.
- **Symmetric sweep**: after this task, STATUS.md contains zero `stellaris`/`computercraft` strings (the Wave 7 and audit sections are rewritten cleanly; historical strikethrough mentions are replaced, not kept).
- **Post-install verification checklist** (recorded, not just "test me"): after the user swaps jars in the instance — (1) launch; (2) open the quest book, verify the Northstar chapter renders and quests detect crafted items (`/ftbquests` if needed); (3) craft a Rocket Station and confirm the quest completes; (4) confirm planet dimension IDs by entering the Moon and checking Moon Landing completes (if the dimension task errors, report back — escape hatch in §4.3); (5) check EMI for Northstar recipes; (6) if updating Northstar later, re-run `generate.py`/`validate.py`.

## 7. AGENTS.md

- Phase 2 paragraph: "Stellaris adds space exploration with rocket tiers, oxygen systems, and off-world colonies." → "Northstar Redux adds space exploration with Create-based rockets, oxygen systems, and off-world colonies."

## 8. PDF

- Regenerate `rendered/DRIFTWOOD-GUIDE.pdf` via `generate-pdf.ps1` (Typst, `templates/guide.typ`), folded into final verification.

## 9. Out of scope

- Historical plan/spec docs (2026-07-27 ftb-quests, 2026-08-06 cc-tweaked-wave-8, 2026-08-13 ftb-quests-generation) — kept as-is.
- Adding "Create: Northstar - Structures" addon — explicitly not installed.
- The user's game instance (XMCL) — the jar swap happens outside this repo; the GUIDE.md Northstar section ships the instance-swap checklist.
