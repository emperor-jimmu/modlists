# Northstar Redux Swap Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Replace Stellaris with Create: Northstar Redux 0.6.4 in the Driftwood modpack docs/quests/tooling, and remove CC:Tweaked entirely.

**Architecture:** (1) Swap the FTB Quests chapter in `tools/ftbquests/quest_data/` (stellaris.json → northstar.json) and regenerate via the proven `generate.py` pipeline; (2) replace the Stellaris section of `GUIDE.md` with a Northstar Redux section; (3) strip all CC:Tweaked content from `GUIDE.md` and delete its config + KubeJS script; (4) update counts/tables in GUIDE.md; (5) record the swap in STATUS.md + AGENTS.md; (6) regenerate the PDF and run final verification sweeps.

**Tech Stack:** Python 3 (quest pipeline), Typst (PDF), NeoForge 1.21.1 modpack docs.

## Global Constraints

- **No fabrication**: every `northstar:*` ID below is verified from the mod's `1.21.1/dev` branch source (github.com/Astronauts-of-Create/Northstar-Redux); any `[VERIFY]` item must be confirmed from source or in-game before the quest file is committed.
- **Clean cutover**: zero `stellaris` / `computercraft` references in live files (GUIDE.md, STATUS.md, AGENTS.md, config/, kubejs/, tools/). Historical docs under `docs/superpowers/plans|specs/` keep their references (dated snapshots).
- **Counts must reconcile**: mod totals `178/49/227 → 177/47/224`; quest total `211 → 213` (Stellaris 17 out, Northstar 19 in). Wave 7 = 1 mod / 0 new deps; Wave 8 removed.
- **Quest rewards**: XP levels + phase-scaled consumable materials only — never placement/utility blocks or gated items (per 2026-08-13 generation design).
- **Quest task types**: pipeline supports only `item` and `checkmark` — no `dimension` tasks (invalid output). Planet visits detect planet-exclusive block items.
- **Pipeline mechanics**: `generate.py` derives chapter/quest/task/reward IDs from the chapter id (`90000000` → quests `90000001`+), computes x/y from `phase`+`shape` (hexagon=milestone, square=breadcrumb), and rewrites `chapter_groups.snbt` + `data.snbt` from constants (safe to run for one chapter).
- **Working dir** for all git/python commands: `H:/Projects/modlists` (repo root) unless a `cwd` is noted.

---

### Task 1: Northstar quest data + tooling

**Files:**
- Create: `minecraft/tools/ftbquests/quest_data/northstar.json`
- Delete: `minecraft/tools/ftbquests/quest_data/stellaris.json`
- Modify: `minecraft/tools/ftbquests/validate.py` (KNOWN_MODS)
- Modify: `minecraft/tools/ftbquests/test_generate.py` / `test_validate.py` (only if they reference `stellaris`/`computercraft`)

**Interfaces:**
- Consumes: `generate.py` schema — `{chapter: {id, title, subtitle, icon, group, order_index}, quests: [{key, title, subtitle, description[], icon, shape, phase, dependencies[key], tasks[{type:"item", item, count} | {type:"checkmark"}], rewards[{type:"xp_levels", xp_levels} | {type:"item", item, count}]}]}`.
- Produces: `minecraft/config/ftbquests/quests/chapters/90000000.snbt` (Northstar chapter); KNOWN_MODS with `northstar` added, `stellaris`/`computercraft` removed.

- [ ] **Step 1: Confirm the [VERIFY] planet block IDs from source**

Fetch `NorthstarBlocks.java` from the mod's `1.21.1/dev` branch (`https://raw.githubusercontent.com/Astronauts-of-Create/Northstar-Redux/1.21.1/dev/src/main/java/com/lightning/northstar/content/NorthstarBlocks.java`) — or use this session's captured tree artifact — and confirm these are registered block names (`REGISTRATE.block("<name>", ...)`): `mercury_stone`, `venus_stone`, `mars_stone`, `moon_stone`, `launch_pad`. If any name differs (e.g. `launchpad`), use the actual name in the quest data below.

- [ ] **Step 2: Write `minecraft/tools/ftbquests/quest_data/northstar.json`**

Full quest list (19 quests). Dependencies are quest `key`s; layout is computed, do not set x/y. Chapter: `{"id":"90000000","title":"Northstar","subtitle":"Start with the Rocket Station and follow the chain","icon":"northstar:rocket_station","group":"20000001","order_index":9}`.

| key | title | shape | phase | detection items (icon = first) | reward | depends on |
|---|---|---|---|---|---|---|
| `space_program` | Space Program | hexagon | 1 | `northstar:rocket_station` | XP 20 + 8 `minecraft:iron_ingot` | — |
| `rocket_parts` | Rocket Parts | hexagon | 1 | `northstar:rocket_thruster`, `northstar:rocket_controls`, `northstar:rocket_combustion_chamber` | XP 24 + 8 `minecraft:iron_ingot` | `space_program` |
| `oxygen_system` | Oxygen System | hexagon | 1 | `northstar:oxygen_separator`, `northstar:oxygen_filler` | XP 24 + 8 `minecraft:copper_ingot` | `rocket_parts` |
| `space_suit` | Space Suit | hexagon | 1 | `northstar:iron_space_suit_helmet`, `northstar:iron_space_suit_chestpiece` | XP 24 + 8 `minecraft:iron_ingot` | `oxygen_system` |
| `science` | Science Unlocked | hexagon | 1 | `northstar:telescope`, `northstar:astronomical_reading` | XP 20 + 8 `minecraft:paper` | `space_suit` |
| `first_launch` | First Launch | hexagon | 1 | checkmark | XP 32 + 8 `create:brass_ingot` | `science` |
| `launch_pad` | Launch Pad | square | 1 | `northstar:launch_pad` | XP 12 | `space_program` |
| `moon_landing` | Moon Landing | hexagon | 1 | `northstar:moon_stone` | XP 36 + 8 `northstar:lunar_sapphire_shard` | `first_launch` |
| `martian_steel` | Martian Steel | hexagon | 2 | `northstar:martian_steel_ingot` | XP 40 + 8 `northstar:martian_steel_ingot` | `moon_landing` |
| `mars` | Mars | hexagon | 2 | `northstar:mars_stone` | XP 40 + 8 `minecraft:iron_ingot` | `martian_steel` |
| `titanium` | Titanium | hexagon | 2 | `northstar:titanium_ingot` | XP 40 + 8 `northstar:titanium_ingot` | `mars` |
| `mercury` | Mercury | hexagon | 2 | `northstar:mercury_stone` | XP 44 + 8 `northstar:raw_tungsten_ore` | `titanium` |
| `tungsten` | Tungsten | hexagon | 2 | `northstar:tungsten_ingot` | XP 44 + 8 `northstar:tungsten_ingot` | `mercury` |
| `venus` | Venus | hexagon | 2 | `northstar:venus_stone` | XP 48 + 8 `northstar:volcanic_ash_item` | `tungsten` |
| `martian_space_suit` | Martian Steel Space Suit | hexagon | 2 | `northstar:martian_steel_space_suit_chestpiece` | XP 48 + 8 `northstar:martian_steel_sheet` | `venus` |
| `temperature_regulator` | Temperature Regulator | square | 2 | `northstar:temperature_regulator` | XP 16 | `oxygen_system` |
| `space_atlas` | Space Atlas | hexagon | 3 | `northstar:space_atlas` | XP 56 + 8 `northstar:durable_fabric` | `martian_space_suit` |
| `rocket_waypoint` | Rocket Waypoint | square | 3 | `northstar:rocket_waypoint` | XP 16 | `space_atlas` |
| `interplanetary_empire` | Interplanetary Empire | hexagon | 3 | checkmark | XP 64 + 8 `northstar:polished_lunar_sapphire` | `space_atlas` |

Each quest gets a `description` array naming the next step (newbie-first), e.g. Space Program: "Craft the Rocket Station and Launch Pad blocks. Rockets are Create contraptions — assemble them from Create blocks and Northstar rocket parts, then superglue the assembly. Next: craft Rocket Controls and a Rocket Thruster." Write full descriptions inline (2-4 lines each) — no placeholders.

- [ ] **Step 3: Delete `minecraft/tools/ftbquests/quest_data/stellaris.json`**

- [ ] **Step 4: Update KNOWN_MODS in `minecraft/tools/ftbquests/validate.py`**

Remove `"stellaris"` and `"computercraft"`; add `"northstar"`.

- [ ] **Step 5: Fix stale test fixtures**

Grep `minecraft/tools/ftbquests/test_generate.py` and `test_validate.py` for `stellaris`/`computercraft`; if present, replace with `northstar` sample data.

- [ ] **Step 6: Run the test suite**

Run: `python -m pytest minecraft/tools/ftbquests/test_generate.py minecraft/tools/ftbquests/test_validate.py -v`
Expected: all pass.

- [ ] **Step 7: Generate the chapter**

Run: `python minecraft/tools/ftbquests/generate.py northstar`
Expected: `minecraft/config/ftbquests/quests/chapters/90000000.snbt` written; `chapter_groups.snbt`/`data.snbt` rewritten (unchanged content).

- [ ] **Step 8: Validate the generated quest book**

Run: `python minecraft/tools/ftbquests/validate.py`
Expected: `OK — all static checks passed`.

- [ ] **Step 9: Spot-check the chapter**

Read `minecraft/config/ftbquests/quests/chapters/90000000.snbt` — verify title "Northstar", first quest id `90000001` with title "Space Program", dependency closure (every `dependencies` id resolves to a quest in the file), and that no `stellaris:` string remains.

- [ ] **Step 10: Commit**

```bash
git add minecraft/tools/ftbquests/quest_data/northstar.json minecraft/tools/ftbquests/validate.py minecraft/config/ftbquests/quests/
git rm minecraft/tools/ftbquests/quest_data/stellaris.json
git commit -m "feat(quests): replace Stellaris chapter with Northstar Redux chapter"
```

---

### Task 2: GUIDE.md — swap Stellaris section for Northstar Redux

**Files:**
- Modify: `minecraft/GUIDE.md` (Stellaris section ≈ lines 3151–3268)

**Interfaces:**
- Consumes: spec §3.1 (Northstar content bullets).
- Produces: Northstar Redux section with identical structure to the old Stellaris section (mod row, dependencies note, integration table, mechanics walkthrough) so the guide's flow is preserved.

- [ ] **Step 1: Read the current region**

Read `minecraft/GUIDE.md:3140-3275` to confirm exact section boundaries (the `---` lines before/after the Stellaris section).

- [ ] **Step 2: Replace the section**

Replace the entire Stellaris section (mod table row through the "Interplanetary Travel" walkthrough) with the Northstar Redux section, keeping the section header style used by other waves. Content per spec §3.1:
- Mod row: `[**Northstar Redux**](https://www.curseforge.com/minecraft/mc-mods/northstar-redux) 0.6.4 | Create-based space exploration — player-built rockets, science unlocks, oxygen + temperature systems, Moon/Mars/Mercury/Venus`
- Intro: fork of Create: Northstar (Astronauts-of-Create), early-development caveat (0.6.x active, breaking changes possible — back up worlds before updating), **no worldgen structures** (the separate "Create: Northstar - Structures" addon is NOT installed).
- Dependencies: no new deps — Create 6.0+ and GeckoLib already in pack (Wave 1). No Potentials API / Sky Aesthetics needed (they shipped with Stellaris only).
- Rocket construction: Launch Pad blocks (player-built), Rocket Station (assembly + destination), Rocket Controls, Rocket Thruster, Rocket Waypoint (precise landing); rockets are superglued Create contraptions.
- Science unlocks: Telescope → Astronomical Readings → Astronomy Table (spend science points) → Space Atlas (select planets); Return Ticket for return trips.
- Oxygen & temperature: Oxygen Separator → Oxygen Filler (contraption-capable) + Oxygen Sealer (pressurized rooms) + Oxygen Detector; Atmospheric Concentrator; Temperature Regulator; heat shielding scales with rocket size.
- Suits: Iron Space Suit (base) → Martian Steel Space Suit (heat resistant); broken variants repaired.
- Planets: Moon (lunar sapphire, glowstone, Lunargrade/Snail/Eel) → Mars (Martian Steel, Wilter/Argyre/Coiler flora, Echo Worm/Toad/Cobra/Moth) → Mercury (tungsten, extreme heat, Raptor/Roach/Tortoise) → Venus (acid plumes, Mimic/Scorpion/Stone Bull/Vulture).
- Materials: Titanium → ingot/sheet; Martian Steel; Tungsten; Lunar Sapphire (shard → polished).
- **World/save migration note** (spec §9): removing Stellaris from an existing save leaves already-generated dishes as inert blocks and removes its items (rockets, suits, desh ore) from inventories — recommend a fresh world for the swap, or accept the leftovers. Northstar adds no worldgen, so a fresh world stays pristine.
- **Integration with Tech Mods** table (rewritten): Mekanism (cables power machines, 5x processing on Northstar ores), AE2 (ME drives store materials, autocraft rocket parts), Create (rotational power + the rocket itself), TFMG (fuel/diesel compat), Farmer's Delight (meals edible in space with oxygen).

- [ ] **Step 3: Verify no stale text**

Grep `minecraft/GUIDE.md` for `stellaris` — remaining hits must be ONLY the quest-chapter list, quest-counts table, and Wave 7/Phase tables (fixed in Task 4), plus the CC:Tweaked × Stellaris note (removed in Task 3).

- [ ] **Step 4: Commit**

```bash
git add minecraft/GUIDE.md
git commit -m "docs(guide): swap Stellaris section for Northstar Redux 0.6.4"
```

---

### Task 3: GUIDE.md — remove CC:Tweaked content

**Files:**
- Modify: `minecraft/GUIDE.md` (Wave 8 section ≈ 3300–3340, Lua tutorial ≈ 3600–3630+, Integration Recipes ≈ 4105–4234, Progression Placement ≈ 4217–4264, "Program your base" row ≈ 4365)

**Interfaces:**
- Consumes: spec §3.4.
- Produces: zero `computercraft`/`CC:Tweaked` mentions in GUIDE.md.

- [ ] **Step 1: Read and map the Wave 8 section extent**

Read `minecraft/GUIDE.md:3290-3345` to find the Wave 8 section header (before line 3306) and its true end. Also read `minecraft/GUIDE.md:3590-3640` (Lua tutorial start) and `minecraft/GUIDE.md:4100-4270` (Integration Recipes + Progression Placement + world-creation step) to mark exact boundaries.

- [ ] **Step 2: Remove the Wave 8 section**

Delete the CC:Tweaked mod row, source note, "No additional dependencies" line, Recipe Gates table, config table, and "Crafting Your First Computer" block — the whole section from its `### Wave 8 — Programmable Computers` header to the preceding `---` boundary.

- [ ] **Step 3: Remove the Lua tutorial**

Delete the CC:Tweaked Lua tutorial subsection(s) (shell, editor, syntax primer, event loop, peripherals, turtles, redstone, wireless networking) — from its header to its `---` boundary.

- [ ] **Step 4: Remove Integration Recipes + interdependency notes + Progression Placement**

Delete: the "Integration Recipes" section (incl. the Stellaris Launch Sequencer Lua block), all five `CC:Tweaked × …` interdependency notes (Create, Mekanism, AE2, Stellaris, FTB Quests, MineColonies — 4210–4215), the CC:Tweaked Progression Placement subsection, and the world-creation step referencing `config/computercraft-server.toml` (≈4263). Preserve any non-CC content in those regions (e.g. the other world-creation steps).

- [ ] **Step 5: Remove the "Program your base" row**

Delete the `Program your base | CC:Tweaked computer + Create clutch + AE2 ME Drive → custom Lua automation scripts` row from the tech-loop table (≈4365).

- [ ] **Step 6: Verify**

Grep `minecraft/GUIDE.md` for `computercraft|CC:Tweaked|CC-Tweaked` (case-insensitive). Expected: zero matches.

- [ ] **Step 7: Commit**

```bash
git add minecraft/GUIDE.md
git commit -m "docs(guide): remove CC:Tweaked Wave 8 content"
```

---

### Task 4: GUIDE.md — counts, wave table, phases, tech loops

**Files:**
- Modify: `minecraft/GUIDE.md` (quest chapter list ≈2714, quest counts ≈2746–2751, wave table ≈4281–4283, phase tables ≈4317–4318, tech-loop row ≈4363)

**Interfaces:**
- Consumes: spec §3.5–3.7.
- Produces: reconciled totals `177/47/224` and quest total `213`.

- [ ] **Step 1: Update quest chapter list and counts**

Read `minecraft/GUIDE.md:2705-2755`. Change `**Stellaris**` → `**Northstar**` in the chapter list (line ≈2714); in the counts table change the Stellaris row to `**Northstar** | 19`; update the total `211` → `213`.

- [ ] **Step 2: Update the wave summary table**

Read `minecraft/GUIDE.md:4270-4290`. Wave 7 row: `1 | 2 | 3 | Stellaris, Potentials API, Sky Aesthetics (…)` → `1 | 0 | 1 | Northstar Redux (Create 6.0+ and GeckoLib already in pack — no new dependencies; no worldgen structures)`. Delete the Wave 8 row (`CC:Tweaked`). Totals row: `178 | 49 | 227` → `177 | 47 | 224`; append `−Stellaris −Potentials API −Sky Aesthetics −CC:Tweaked +Northstar Redux, Aug 2026` to the trailing changelog annotation.

- [ ] **Step 3: Update phase tables**

Read `minecraft/GUIDE.md:4310-4320`. Phase 2: replace `CC:Tweaked turtles and wireless automation. Stellaris Moon and early planets` → `Northstar Redux Moon and early planets` (drop the CC clause). Phase 3: drop `CC:Tweaked cross-mod automation networks.`; replace `Mars and Glacio space bases` → `Mars and Venus space bases`.

- [ ] **Step 4: Update the tech-loop row**

Read `minecraft/GUIDE.md:4355-4370`. Change `Process space ores | Stellaris desh/ostranium → Mekanism 5x line → AE2 storage` → `Process space ores | Northstar titanium/martian steel → Mekanism 5x line → AE2 storage`.

- [ ] **Step 5: Verify**

Grep `minecraft/GUIDE.md` for `stellaris` (case-insensitive). Expected: zero matches.

- [ ] **Step 6: Commit**

```bash
git add minecraft/GUIDE.md
git commit -m "docs(guide): update mod counts, wave table, and phase tables for space swap"
```

---

### Task 5: Delete CC:Tweaked files

**Files:**
- Delete: `minecraft/config/computercraft-server.toml`
- Delete: `minecraft/kubejs/server_scripts/wave8_cc_tweaked.js`

**Interfaces:**
- Consumes: spec §5.
- Produces: no CC:Tweaked artifacts in the repo.

- [ ] **Step 1: Remove both files**

```bash
git rm minecraft/config/computercraft-server.toml minecraft/kubejs/server_scripts/wave8_cc_tweaked.js
```

- [ ] **Step 2: Verify the kubejs directory is coherent**

Read `minecraft/kubejs/server_scripts/` — confirm remaining scripts (e.g. wave5_torchmaster.js) don't import/reference CC:Tweaked.

- [ ] **Step 3: Commit**

```bash
git commit -m "chore: remove CC:Tweaked config and KubeJS recipe gates"
```

---

### Task 6: STATUS.md + AGENTS.md

**Files:**
- Modify: `minecraft/STATUS.md` (Added/Removed log ≈70–130, dependency audit ≈88–94, Wave 7 section ≈217–222, Wave 8 section ≈223–229)
- Modify: `minecraft/AGENTS.md` (Phase 2 paragraph, line 37)

**Interfaces:**
- Consumes: spec §6–§7.
- Produces: decision record + pending in-game verification note.

- [ ] **Step 1: Read STATUS.md regions**

Read `minecraft/STATUS.md:60-130` and `minecraft/STATUS.md:210-245`.

- [ ] **Step 2: Add the swap entries**

Under the current Added/Removed section (Aug 2026), add entries:
- Stellaris 1.4.23 removed — user dislike of Overworld worldgen (satellite dishes, operation bases); replaced by Northstar Redux 0.6.4.
- CC:Tweaked removed (user request) — Wave 8 section, config override, KubeJS recipe gates deleted; quest chapter `20008000` already absent since the 2026-08-13 regeneration.
- Dependencies removed with Stellaris: Potentials API, Sky Aesthetics (dependency audit below superseded).
- Compat audit: no Stellaris compat/addon mods present (TFMG-Stellaris Compatibility already removed earlier); Apothic Compats unaffected.
- Totals: 178/49/227 → 177/47/224; quests 211 → 213 (Northstar chapter 19).
- **Pending in-game verification**: Northstar quest detection + `[VERIFY]` planet item IDs + EMI recipe review at next launch.

- [ ] **Step 3: Update the dependency-audit block**

Mark the "Dependency Audit (Aug 2026 — Stellaris × Sky Aesthetics)" block as superseded (both deps removed with Stellaris; Northstar Redux needs no extra deps).

- [ ] **Step 4: Update Wave 7 / Wave 8 sections**

Wave 7: replace `Stellaris 1.4.23 as core space mod` / `Dependency: Potentials API` / TFMG-Stellaris strikethrough with `Northstar Redux 0.6.4 as core space mod (Create-based; no worldgen; no new deps — Create 6.0+ and GeckoLib already present)`. Wave 8: replace the CC:Tweaked entries with a removal note.

- [ ] **Step 5: Update AGENTS.md Phase 2**

Replace the sentence ending the Phase 2 paragraph (line 37): `Stellaris adds space exploration with rocket tiers, oxygen systems, and off-world colonies.` → `Northstar Redux adds space exploration with Create-based rockets, oxygen systems, and off-world colonies.`

- [ ] **Step 6: Verify + commit**

Grep STATUS.md + AGENTS.md for `stellaris|computercraft` (case-insensitive). Expected: only the historical/strikethrough mentions of already-removed TFMG-Stellaris Compatibility (fine — they document history), zero computercraft.

```bash
git add minecraft/STATUS.md minecraft/AGENTS.md
git commit -m "docs(status): record Stellaris→Northstar Redux swap and CC:Tweaked removal"
```

---

### Task 7: PDF regeneration + final verification

**Files:**
- Modify: `minecraft/rendered/DRIFTWOOD-GUIDE.pdf` (regenerated)

**Interfaces:**
- Consumes: all prior tasks.
- Produces: final verified state.

- [ ] **Step 1: Regenerate the PDF**

Run (cwd `H:/Projects/modlists/minecraft`): `powershell -ExecutionPolicy Bypass -File generate-pdf.ps1`
Expected: `[OK] DRIFTWOOD-GUIDE.pdf -> …\rendered\DRIFTWOOD-GUIDE.pdf (… KB)`.

- [ ] **Step 2: Final reference sweep**

Grep (case-insensitive) `stellaris|computercraft|cc-tweaked` across `minecraft/GUIDE.md`, `minecraft/STATUS.md`, `minecraft/AGENTS.md`, `minecraft/config`, `minecraft/kubejs`, `minecraft/tools`, `minecraft/datapacks`, `minecraft/templates`. Expected: zero matches in all live paths (historical hits only under `minecraft/docs/superpowers/`).

- [ ] **Step 3: Re-run quest validation**

Run: `python -m pytest minecraft/tools/ftbquests/ -v` and `python minecraft/tools/ftbquests/validate.py`
Expected: all pass; `OK — all static checks passed`.

- [ ] **Step 4: Commit**

```bash
git add minecraft/rendered/DRIFTWOOD-GUIDE.pdf
git commit -m "chore: regenerate DRIFTWOOD-GUIDE.pdf after space-mod swap"
```

---

## Out of Scope

- `docs/superpowers/plans|specs/` historical documents (2026-07-27 ftb-quests, 2026-08-06 cc-tweaked-wave-8, 2026-08-13 ftb-quests-generation, this swap spec) — unchanged.
- Installing the "Create: Northstar - Structures" addon — explicitly not wanted.
- The user's game instance (XMCL) — the actual jar swap happens outside this repo; GUIDE.md/STATUS.md record the pack state.
