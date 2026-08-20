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

**Stellaris compat-mod audit (2026-08-20)**: no Stellaris compatibility/addon mods are installed. The only one ever considered — TFMG-Stellaris Compatibility — was already removed in an earlier session (STATUS.md). Apothic Compats does not include Stellaris (covers AE2, Aether, Cataclysm, Create, Curios, Deep Aether, Deeper and Darker, Farmer's Delight, Mekanism Tools, Supplementaries, Twilight Forest). Nothing further to remove.

**Mod count effect**: Wave 7 `1 mod / 2 deps` → `1 mod / 0 new deps`. Wave 8 (CC:Tweaked, 1 mod) removed. Totals `178/49/227` → **`177/47/224`**.

## 3. GUIDE.md changes

1. **Stellaris section** (≈lines 3151–3268): replace with a Northstar Redux section:
   - Rocket construction: Launch Pad blocks (player-built), Rocket Station (assembly + destination), Rocket Controls, Rocket Thruster, Rocket Waypoint (precise landing), superglue/Create contraption mechanics.
   - Science unlocks: Telescope produces Astronomical Readings → Astronomy Table spends them as science points → Space Atlas selects planets. Return Ticket for return trips.
   - Oxygen loop: Oxygen Separator (item) → Oxygen Filler (contraption-capable) + Oxygen Sealer (pressurize rooms) + Oxygen Detector; Atmospheric Concentrator; Temperature Regulator for heat/cold; heat shielding requirement scales with rocket size.
   - Suits: Iron Space Suit (base) → Martian Steel Space Suit (heat resistant). Broken suit variants repaired.
   - Planets: Moon (lunar sapphire, glowstone, Lunargrade/Snail/Eel mobs) → Mars (Martian Steel, Wilter/Argyre/Coiler flora, Mars Echo Worm/Toad/Cobra/Moth) → Mercury (tungsten, extreme heat, Raptor/Roach/Tortoise) → Venus (acid/plume hazards, Mimic/Scorpion/Stone Bull/Vulture). Each requires more science + better heat shielding.
   - Materials chain: Titanium (raw → ingot → sheet) for advanced crafting; Martian Steel (ingot/sheet/block); Tungsten; Lunar Sapphire (shard → polished).
   - **Integration with Tech Mods** table rewritten: Mekanism cables power machines; AE2 stores ores + autocrafts rocket parts; Create supplies rotational power and the rocket itself; TFMG fuel/diesel compatibility; Farmer's Delight meals edible in space with oxygen.
   - Dependencies note: no new deps (Create 6.0+ and GeckoLib already in pack); no worldgen structures; early-development caveat (0.6.x active development, breaking changes possible — back up worlds before updating).
2. **Wave 7 row**: `Stellaris, Potentials API, Sky Aesthetics` → `Northstar Redux (GeckoLib already in Wave 1)`.
3. **Totals row**: `178/49/227` → `177/47/224`; append changelog annotation `−Stellaris −Potentials API −Sky Aesthetics −CC:Tweaked +Northstar Redux, Aug 2026`.
4. **CC:Tweaked removal**: delete the Wave 8 section (mod table, source note, recipe gates table, config table, "Crafting Your First Computer", Lua tutorial ≈3306–3338 and ≈3602+, Integration Recipes section ≈4106+ incl. Stellaris Launch Sequencer, interdependency notes ≈4210–4215, Progression Placement ≈4217+, world-creation step at ≈4263, Wave 8 row, "Program your base" row ≈4365).
5. **Quest chapter list** (≈2714) and **quest counts** (≈2746–2749): Stellaris → Northstar; total 211 → **213** (17 out, 19 in).
6. **Phase tables** (≈4317–4318): "Stellaris Moon and early planets" → "Northstar Redux Moon and early planets"; "Mars and Glacio space bases" → "Mars and Venus space bases"; drop CC:Tweaked clauses ("CC:Tweaked turtles and wireless automation", "CC:Tweaked cross-mod automation networks").
7. **Tech-loop row** (≈4363): "Stellaris desh/ostranium → Mekanism 5x" → "Northstar titanium/martian steel → Mekanism 5x".

## 4. FTB Quests

- **New** `tools/ftbquests/quest_data/northstar.json` — 19 quests (16 milestones + 3 breadcrumbs), chapter id `90000000` (replaces Stellaris slot; Main group `20000001`, order_index 9). Item IDs verified from source:
  - Phase 1 milestones (x=0.0): Space Program (`northstar:rocket_station`), Rocket Parts (`northstar:rocket_thruster` + `northstar:rocket_combustion_chamber` + `northstar:rocket_controls`), Oxygen System (`northstar:oxygen_separator` + `northstar:oxygen_filler` + `northstar:oxygen_sealer`), Space Suit (`northstar:iron_space_suit_helmet` + `northstar:iron_space_suit_chestpiece`), Science Unlocked (`northstar:telescope` + `northstar:astronomical_reading`), First Launch (checkmark), Moon Landing (dimension task `northstar:moon` + fallback checkmark).
  - Phase 2 milestones (x=3.0): Martian Steel (`northstar:martian_steel_ingot`), Mars (item-detect `northstar:mars_stone`), Titanium (`northstar:titanium_ingot`), Mercury (item-detect `northstar:mercury_stone` — [VERIFY] exists, else `northstar:raw_tungsten_ore`), Tungsten (`northstar:tungsten_ingot`), Venus (item-detect `northstar:venus_stone`), Martian Steel Space Suit (`northstar:martian_steel_space_suit_chestpiece`).
  - Phase 3 milestones (x=6.0): Space Atlas (`northstar:space_atlas`), Interplanetary Empire (checkmark).
  - Breadcrumbs: Return Ticket (`northstar:return_ticket`), Rocket Waypoint (`northstar:rocket_waypoint`), Temperature Regulator (`northstar:temperature_regulator`).
  - **Planet-visit detection uses planet-exclusive items, not dimension tasks**: the 2026-08-13 generation pipeline (`generate.py` `build_task`) supports only `item` and `checkmark` task types — a `dimension` task would emit an invalid quest. Detecting a planet's native block item (e.g. `northstar:moon_stone`, only obtainable on the Moon) is the proven pipeline path and cannot brick. Exact planet block IDs confirmed from source during implementation.
- **Delete** `tools/ftbquests/quest_data/stellaris.json` and generated `config/ftbquests/quests/chapters/90000000.snbt`.
- **Regenerate**: `python tools/ftbquests/generate.py northstar` (pipeline proven 2026-08-13; per-chapter `<id>.snbt` + `chapter_groups.snbt` + `data.snbt`).
- **validate.py**: KNOWN_MODS − `stellaris`, − `computercraft`, + `northstar`. Run `pytest` (test_generate.py / test_validate.py) + `python tools/ftbquests/validate.py`.
- **Test fixtures**: if `test_generate.py` / `test_validate.py` fixtures reference `stellaris` or `computercraft` namespaces, update them to `northstar` (clean cutover — no stale namespace references in live tooling).
- Chapter layout convention preserved: milestones = hexagon, breadcrumbs = square; x columns per phase (0.0/1.5/3.0/4.5/6.0/7.5), y increments in dependency order; rewards = XP levels + phase-scaled consumables only.

## 5. File deletions

- `config/computercraft-server.toml` (CC:Tweaked override)
- `kubejs/server_scripts/wave8_cc_tweaked.js` (CC:Tweaked recipe gates)
- `tools/ftbquests/quest_data/stellaris.json`
- `config/ftbquests/quests/chapters/90000000.snbt` (replaced by Northstar chapter)

## 6. STATUS.md

- New entry under Added/Removed: Stellaris → Northstar Redux 0.6.4 (reason: worldgen), CC:Tweaked removed (user request), deps Potentials API + Sky Aesthetics removed, totals 178/49/227 → 177/47/224, quest total 211 → 213. Note the compat-mod audit result (no Stellaris addons/compat mods present; TFMG-Stellaris Compatibility already removed earlier).
- Update the "Dependency Audit (Aug 2026 — Stellaris × Sky Aesthetics)" block: mark superseded (Sky Aesthetics + Potentials removed with Stellaris).
- Update Wave 7 and Wave 8 sections; note the pending in-game verification item (Northstar quest detection + dimension IDs at next launch).

## 7. AGENTS.md

- Phase 2 paragraph: "Stellaris adds space exploration with rocket tiers, oxygen systems, and off-world colonies." → "Northstar Redux adds space exploration with Create-based rockets, oxygen systems, and off-world colonies."

## 8. PDF

- Regenerate `rendered/DRIFTWOOD-GUIDE.pdf` via `generate-pdf.ps1` (Typst, `templates/guide.typ`).

## 9. World / save migration note (documented in GUIDE.md)

Removing Stellaris from an existing save leaves already-generated dishes as inert blocks and removes its items (rockets, suits, desh ore) from inventories — recommend a fresh world for the swap, or accept the leftovers. Northstar installs cleanly onto the current pack; no worldgen leftovers.

## 10. Verification

- `generate.py` + `validate.py` + pytest pass.
- `grep -i stellaris` and `grep -i computercraft` clean across live docs (GUIDE.md, STATUS.md, AGENTS.md, config/, kubejs/, tools/) — historical files under `docs/superpowers/plans|specs/` intentionally retain references as dated snapshots.
- PDF regenerates.
- User in-game pass: quest detection, planet dimension IDs, Northstar recipes via EMI.

## 11. Out of scope

- Historical plan/spec docs (2026-07-27 ftb-quests, 2026-08-06 cc-tweaked-wave-8, 2026-08-13 ftb-quests-generation) — kept as-is.
- Adding "Create: Northstar - Structures" addon — explicitly not installed.
- Replacing `GETTING-STARTED.md` content unless a grep finds stale references during implementation.
