# Northstar Redux Swap Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Replace Stellaris with Create: Northstar Redux 0.6.4 in the Driftwood modpack (docs, quests, tooling) and remove CC:Tweaked entirely. This repo is a guide repository — the actual jar swap happens in the user's game instance via the checklist delivered in Task 2.

**Architecture:** (1) Extend the quest pipeline with `dimension`/`optional` task support (tested), swap `quest_data/stellaris.json` → `northstar.json` (fresh chapter id `82000000`, 18 quests, real detection — no checkmark milestones), regenerate; (2) replace the Stellaris GUIDE.md section with Northstar Redux incl. an instance-swap checklist; (3) strip all CC:Tweaked content from GUIDE.md and delete its config/KubeJS script/stale chapter; (4) reconcile counts to `177/47/224` and quests to `212`; (5) record the swap in STATUS.md (zero stale strings) + AGENTS.md; (6) regenerate the PDF and run final zero-tolerance sweeps.

**Tech Stack:** Python 3 (quest pipeline, pytest), Typst (PDF), NeoForge 1.21.1 modpack docs.

## Global Constraints

- **No fabrication**: every `northstar:*` ID in Task 1's JSON was verified this session against the mod's `1.21.1/dev` branch source (`NorthstarBlocks.java`, `NorthstarItems.java`). `northstar:launch_pad` is deliberately NOT used (LaunchPadBlock is unregistered WIP). Dimension IDs (`northstar:moon|mars|mercury|venus`) are datapack-registered at runtime and carry an optional item-task fallback (see Task 1 §cannot-brick).
- **Clean cutover, symmetric**: zero `stellaris` / `computercraft` strings in live files (GUIDE.md, STATUS.md, AGENTS.md, config/, kubejs/, tools/) — no exceptions for STATUS.md. Historical docs under `docs/superpowers/plans|specs/` keep their references (dated snapshots).
- **Counts must reconcile**: mod totals `178/49/227 → 177/47/224`; quest total `211 → 212` (Stellaris 17 out, Northstar 18 in). Wave 7 = 1 mod / 0 new deps; Wave 8 removed.
- **Quest rewards**: XP levels + phase-scaled consumable materials only — never placement/utility blocks or gated items; each reward feeds the next quest.
- **Content-addressed editing**: all GUIDE.md/STATUS.md steps locate text by exact header/string search, never by line number (line numbers shift as edits land).
- **Working dir** for git/python commands: `H:/Projects/modlists` unless a `cwd` is noted.

---

### Task 1: Pipeline extension + Northstar quest data

**Files:**
- Modify: `minecraft/tools/ftbquests/generate.py` (`build_task`)
- Modify: `minecraft/tools/ftbquests/test_generate.py` (add 2 tests)
- Create: `minecraft/tools/ftbquests/quest_data/northstar.json` (full content in Step 4)
- Delete: `minecraft/tools/ftbquests/quest_data/stellaris.json`
- Modify: `minecraft/tools/ftbquests/validate.py` (KNOWN_MODS)
- Produce: `minecraft/config/ftbquests/quests/chapters/82000000.snbt` (regenerated), delete `chapters/90000000.snbt`

**Interfaces:**
- Consumes: current `generate.py` schema (`{chapter: {...}, quests: [{key, title, subtitle, description[], icon, shape, phase, dependencies[key], tasks[], rewards[]}]}`); layout/ids derived from chapter id + phase/shape.
- Produces: `build_task` supporting `item`, `dimension`, `checkmark`, and task-level `optional`.

- [ ] **Step 1: Extend `build_task` in `generate.py`**

Current `build_task` (lines 70–75):
```python
def build_task(t):
    """Emit the proven FTB Quests task shape (item is a nested ItemStack)."""
    out = {"id": t["id"], "type": t["type"]}
    if t["type"] == "item":
        out["item"] = {"count": t.get("count", 1), "id": t["item"]}
    return out
```
Replace with:
```python
def build_task(t):
    """Emit the proven FTB Quests task shape (item is a nested ItemStack)."""
    out = {"id": t["id"], "type": t["type"]}
    if t["type"] == "item":
        out["item"] = {"count": t.get("count", 1), "id": t["item"]}
    elif t["type"] == "dimension":
        out["dimension"] = t["dimension"]
    if t.get("optional"):
        out["optional"] = True
    return out
```
Rationale: `dimension` is a standard FTB Quests task type ("enter a dimension") — this pack's FTB Quests version was smoke-tested with dimension tasks in the July Stellaris chapter. Task-level `optional` is a standard FTB Quests task flag; if a future version ignored it, both tasks would still complete naturally (see cannot-brick in Step 6).

- [ ] **Step 2: Add pipeline tests to `test_generate.py`**

Append, mirroring the existing `test_build_task_uses_nested_item` style (file imports `generate` at module top):
```python
def test_build_task_emits_dimension():
    task = {"id": "82000002", "type": "dimension", "dimension": "northstar:moon"}
    out = generate.build_task(task)
    assert out == {"id": "82000002", "type": "dimension", "dimension": "northstar:moon"}


def test_build_task_emits_optional_flag():
    task = {"id": "82000003", "type": "item", "item": "northstar:moon_stone", "count": 1, "optional": True}
    out = generate.build_task(task)
    assert out["optional"] is True
    assert out["item"] == {"count": 1, "id": "northstar:moon_stone"}
```

- [ ] **Step 3: Run the pipeline tests (new tests fail first)**

Run: `python -m pytest minecraft/tools/ftbquests/test_generate.py -v`
Expected after Step 1: both new tests PASS and the 4 existing tests still PASS.

- [ ] **Step 4: Write `minecraft/tools/ftbquests/quest_data/northstar.json`** — complete content:

```json
{
  "chapter": {
    "id": "82000000",
    "title": "Northstar",
    "subtitle": "Start with the Rocket Station and follow the chain",
    "icon": "northstar:rocket_station",
    "group": "20000001",
    "order_index": 9
  },
  "quests": [
    {
      "key": "space_program",
      "title": "Space Program",
      "subtitle": "Assemble the heart of your launch site",
      "description": [
        "Craft the Rocket Station and Rocket Controls. Rockets are Create contraptions - build the hull from Create blocks and Northstar rocket parts, then superglue the whole assembly.",
        "Next: craft a Rocket Thruster and a Rocket Combustion Chamber."
      ],
      "icon": "northstar:rocket_station",
      "shape": "hexagon",
      "phase": 1,
      "dependencies": [],
      "tasks": [{"type": "item", "item": "northstar:rocket_station", "count": 1}],
      "rewards": [
        {"type": "xp_levels", "xp_levels": 20},
        {"type": "item", "item": "minecraft:iron_ingot", "count": 8}
      ]
    },
    {
      "key": "rocket_parts",
      "title": "Rocket Parts",
      "subtitle": "Thrusters, controls, and a combustion chamber",
      "description": [
        "Thrusters, controls, and a combustion chamber turn a pile of blocks into a rocket. The Rocket Station assembles the rocket and sets its destination.",
        "Next: build the oxygen loop so you survive the trip."
      ],
      "icon": "northstar:rocket_thruster",
      "shape": "hexagon",
      "phase": 1,
      "dependencies": ["space_program"],
      "tasks": [
        {"type": "item", "item": "northstar:rocket_thruster", "count": 1},
        {"type": "item", "item": "northstar:rocket_controls", "count": 1},
        {"type": "item", "item": "northstar:rocket_combustion_chamber", "count": 1}
      ],
      "rewards": [
        {"type": "xp_levels", "xp_levels": 24},
        {"type": "item", "item": "minecraft:copper_ingot", "count": 8}
      ]
    },
    {
      "key": "oxygen_system",
      "title": "Oxygen System",
      "subtitle": "Life support before liftoff",
      "description": [
        "Space has no air. The Oxygen Separator extracts breathable oxygen; the Oxygen Filler refills suits and contraptions. Sealed rooms need an Oxygen Sealer.",
        "Next: craft the Iron Space Suit."
      ],
      "icon": "northstar:oxygen_separator",
      "shape": "hexagon",
      "phase": 1,
      "dependencies": ["rocket_parts"],
      "tasks": [
        {"type": "item", "item": "northstar:oxygen_separator", "count": 1},
        {"type": "item", "item": "northstar:oxygen_filler", "count": 1}
      ],
      "rewards": [
        {"type": "xp_levels", "xp_levels": 24},
        {"type": "item", "item": "northstar:durable_fabric", "count": 8}
      ]
    },
    {
      "key": "space_suit",
      "title": "Space Suit",
      "subtitle": "Sealed, warm, and breathing",
      "description": [
        "The Iron Space Suit seals you from vacuum and carries a small oxygen reserve. Wear the full set before launching.",
        "Next: build a telescope and start taking astronomical readings."
      ],
      "icon": "northstar:iron_space_suit_helmet",
      "shape": "hexagon",
      "phase": 1,
      "dependencies": ["oxygen_system"],
      "tasks": [
        {"type": "item", "item": "northstar:iron_space_suit_helmet", "count": 1},
        {"type": "item", "item": "northstar:iron_space_suit_chestpiece", "count": 1}
      ],
      "rewards": [
        {"type": "xp_levels", "xp_levels": 24},
        {"type": "item", "item": "minecraft:paper", "count": 8}
      ]
    },
    {
      "key": "science",
      "title": "Science Unlocked",
      "subtitle": "Telescopes unlock the sky",
      "description": [
        "Astronomical Readings earned with the Telescope are spent at the Astronomy Table as science points. Enough science unlocks new planets in the Space Atlas.",
        "Next: launch for the Moon."
      ],
      "icon": "northstar:telescope",
      "shape": "hexagon",
      "phase": 1,
      "dependencies": ["space_suit"],
      "tasks": [
        {"type": "item", "item": "northstar:telescope", "count": 1},
        {"type": "item", "item": "northstar:astronomical_reading", "count": 1}
      ],
      "rewards": [
        {"type": "xp_levels", "xp_levels": 20},
        {"type": "item", "item": "minecraft:iron_ingot", "count": 8}
      ]
    },
    {
      "key": "moon_landing",
      "title": "Moon Landing",
      "subtitle": "One small launch for a demigod",
      "description": [
        "Fuel the rocket at the station, climb in, and launch. The Moon has no atmosphere, low gravity, and no mobs - a safe first landing.",
        "Mine lunar sapphire and moon stone. Next: smelt martian iron into Martian Steel."
      ],
      "icon": "northstar:moon_stone",
      "shape": "hexagon",
      "phase": 1,
      "dependencies": ["science"],
      "tasks": [
        {"type": "dimension", "dimension": "northstar:moon"},
        {"type": "item", "item": "northstar:moon_stone", "count": 1, "optional": true}
      ],
      "rewards": [
        {"type": "xp_levels", "xp_levels": 36},
        {"type": "item", "item": "northstar:lunar_sapphire_shard", "count": 8}
      ]
    },
    {
      "key": "oxygen_sealer",
      "title": "Oxygen Sealer",
      "subtitle": "Pressurize your first base",
      "description": [
        "Sealed rooms hold their air: place an Oxygen Sealer and it pressurizes the enclosed space. Build a small sealed moon base with a filler."
      ],
      "icon": "northstar:oxygen_sealer",
      "shape": "square",
      "phase": 1,
      "dependencies": ["oxygen_system"],
      "tasks": [{"type": "item", "item": "northstar:oxygen_sealer", "count": 1}],
      "rewards": [{"type": "xp_levels", "xp_levels": 12}]
    },
    {
      "key": "martian_steel",
      "title": "Martian Steel",
      "subtitle": "The workhorse metal of the space age",
      "description": [
        "Martian Steel is tougher than iron and heat-resistant - the backbone of rockets and bases alike.",
        "Next: land on Mars and mine raw martian iron."
      ],
      "icon": "northstar:martian_steel_ingot",
      "shape": "hexagon",
      "phase": 2,
      "dependencies": ["moon_landing"],
      "tasks": [{"type": "item", "item": "northstar:martian_steel_ingot", "count": 1}],
      "rewards": [
        {"type": "xp_levels", "xp_levels": 40},
        {"type": "item", "item": "northstar:martian_steel_ingot", "count": 8}
      ]
    },
    {
      "key": "mars",
      "title": "Mars",
      "subtitle": "Red deserts and hungry worms",
      "description": [
        "Mars has a thin atmosphere, orange deserts, and hostile life - Echo Worms, Root Toads, Cobras, Devil Moths. Bring weapons.",
        "Next: mine titanium, which powers the next rocket tier."
      ],
      "icon": "northstar:mars_stone",
      "shape": "hexagon",
      "phase": 2,
      "dependencies": ["martian_steel"],
      "tasks": [
        {"type": "dimension", "dimension": "northstar:mars"},
        {"type": "item", "item": "northstar:mars_stone", "count": 1, "optional": true}
      ],
      "rewards": [
        {"type": "xp_levels", "xp_levels": 40},
        {"type": "item", "item": "northstar:raw_martian_iron_ore", "count": 8}
      ]
    },
    {
      "key": "titanium",
      "title": "Titanium",
      "subtitle": "Lighter, stronger, essential",
      "description": [
        "Titanium replaces iron sheets for advanced crafting and is mined on Mars and Mercury.",
        "Next: survive Mercury's heat and mine tungsten."
      ],
      "icon": "northstar:titanium_ingot",
      "shape": "hexagon",
      "phase": 2,
      "dependencies": ["mars"],
      "tasks": [{"type": "item", "item": "northstar:titanium_ingot", "count": 1}],
      "rewards": [
        {"type": "xp_levels", "xp_levels": 40},
        {"type": "item", "item": "northstar:titanium_ingot", "count": 8}
      ]
    },
    {
      "key": "mercury",
      "title": "Mercury",
      "subtitle": "Closest to the sun, and it shows",
      "description": [
        "Mercury is scorching - heat shielding scales with your rocket's size, and the Martian Steel suit helps. Tungsten ore is here.",
        "Next: smelt tungsten for harder alloys."
      ],
      "icon": "northstar:mercury_stone",
      "shape": "hexagon",
      "phase": 2,
      "dependencies": ["titanium"],
      "tasks": [
        {"type": "dimension", "dimension": "northstar:mercury"},
        {"type": "item", "item": "northstar:mercury_stone", "count": 1, "optional": true}
      ],
      "rewards": [
        {"type": "xp_levels", "xp_levels": 44},
        {"type": "item", "item": "northstar:raw_tungsten_ore", "count": 8}
      ]
    },
    {
      "key": "tungsten",
      "title": "Tungsten",
      "subtitle": "Holds up where everything else melts",
      "description": [
        "Tungsten alloys hold up where everything else melts.",
        "Next: Venus - acid plumes, searing heat, and stranger life."
      ],
      "icon": "northstar:tungsten_ingot",
      "shape": "hexagon",
      "phase": 2,
      "dependencies": ["mercury"],
      "tasks": [{"type": "item", "item": "northstar:tungsten_ingot", "count": 1}],
      "rewards": [
        {"type": "xp_levels", "xp_levels": 44},
        {"type": "item", "item": "northstar:tungsten_ingot", "count": 8}
      ]
    },
    {
      "key": "venus",
      "title": "Venus",
      "subtitle": "The gauntlet",
      "description": [
        "Venus is the gauntlet: volcanic ash, exhaust plumes, and mimics hiding among the rocks.",
        "Next: craft the Martian Steel Space Suit for the outer planets."
      ],
      "icon": "northstar:venus_stone",
      "shape": "hexagon",
      "phase": 2,
      "dependencies": ["tungsten"],
      "tasks": [
        {"type": "dimension", "dimension": "northstar:venus"},
        {"type": "item", "item": "northstar:venus_stone", "count": 1, "optional": true}
      ],
      "rewards": [
        {"type": "xp_levels", "xp_levels": 48},
        {"type": "item", "item": "northstar:volcanic_ash_item", "count": 8}
      ]
    },
    {
      "key": "martian_space_suit",
      "title": "Martian Steel Space Suit",
      "subtitle": "Heat-proof everything",
      "description": [
        "The Martian Steel suit resists heat far better than iron. With it, the inner planets become routine.",
        "Next: build the Space Atlas and plan your empire."
      ],
      "icon": "northstar:martian_steel_space_suit_chestpiece",
      "shape": "hexagon",
      "phase": 2,
      "dependencies": ["venus"],
      "tasks": [{"type": "item", "item": "northstar:martian_steel_space_suit_chestpiece", "count": 1}],
      "rewards": [
        {"type": "xp_levels", "xp_levels": 48},
        {"type": "item", "item": "northstar:martian_steel_sheet", "count": 8}
      ]
    },
    {
      "key": "temperature_regulator",
      "title": "Temperature Regulator",
      "subtitle": "Keep your bases habitable",
      "description": [
        "Regulate heat and cold in sealed bases - essential for Mercury, Venus, and any planet you want to call home."
      ],
      "icon": "northstar:temperature_regulator",
      "shape": "square",
      "phase": 2,
      "dependencies": ["oxygen_system"],
      "tasks": [{"type": "item", "item": "northstar:temperature_regulator", "count": 1}],
      "rewards": [{"type": "xp_levels", "xp_levels": 16}]
    },
    {
      "key": "space_atlas",
      "title": "Space Atlas",
      "subtitle": "The map of your empire",
      "description": [
        "The Space Atlas tracks every unlocked celestial body and coordinates precise return trips with Return Tickets.",
        "Next: connect your worlds into one empire."
      ],
      "icon": "northstar:space_atlas",
      "shape": "hexagon",
      "phase": 3,
      "dependencies": ["martian_space_suit"],
      "tasks": [{"type": "item", "item": "northstar:space_atlas", "count": 1}],
      "rewards": [
        {"type": "xp_levels", "xp_levels": 56},
        {"type": "item", "item": "northstar:durable_fabric", "count": 8}
      ]
    },
    {
      "key": "rocket_waypoint",
      "title": "Rocket Waypoint",
      "subtitle": "Land where you mean to",
      "description": [
        "Rocket Waypoints let you land exactly where you want instead of wherever the descent takes you. Mark your bases."
      ],
      "icon": "northstar:rocket_waypoint",
      "shape": "square",
      "phase": 3,
      "dependencies": ["space_atlas"],
      "tasks": [{"type": "item", "item": "northstar:rocket_waypoint", "count": 1}],
      "rewards": [{"type": "xp_levels", "xp_levels": 16}]
    },
    {
      "key": "interplanetary_empire",
      "title": "Interplanetary Empire",
      "subtitle": "The system is yours",
      "description": [
        "Bases on Earth, the Moon, Mars, Mercury, and Venus. Ores flow home through Mekanism, AE2 spans the system, and Return Tickets make every trip two-way.",
        "The system is yours."
      ],
      "icon": "northstar:return_ticket",
      "shape": "hexagon",
      "phase": 3,
      "dependencies": ["space_atlas"],
      "tasks": [{"type": "item", "item": "northstar:return_ticket", "count": 1}],
      "rewards": [
        {"type": "xp_levels", "xp_levels": 64},
        {"type": "item", "item": "northstar:polished_lunar_sapphire", "count": 8}
      ]
    }
  ]
}
```

- [ ] **Step 5: Delete `minecraft/tools/ftbquests/quest_data/stellaris.json` and update `validate.py`**

KNOWN_MODS: remove `"stellaris"` and `"computercraft"`, add `"northstar"`.

- [ ] **Step 6: Fix stale test fixtures + cannot-brick check**

Grep `minecraft/tools/ftbquests/test_generate.py` and `test_validate.py` for `stellaris`/`computercraft`; replace any occurrences with `northstar` sample data.

Cannot-brick recap: all item IDs in Step 4 are source-verified. Dimension IDs are runtime-registered; each has an `optional` item task so a visit completes the quest, and if a dimension task ever errors the escape hatch is to drop that task and keep the item task (item IDs are verified). No checkmark milestones exist.

- [ ] **Step 7: Run the full test suite**

Run: `python -m pytest minecraft/tools/ftbquests/ -v`
Expected: all pass.

- [ ] **Step 8: Generate the chapter and delete the stale one**

```bash
python minecraft/tools/ftbquests/generate.py northstar
git rm minecraft/config/ftbquests/quests/chapters/90000000.snbt
```
Expected: `chapters/82000000.snbt` written; `chapter_groups.snbt`/`data.snbt` rewritten (unchanged content); Stellaris chapter gone.

- [ ] **Step 9: Validate and spot-check**

Run: `python minecraft/tools/ftbquests/validate.py` → `OK — all static checks passed`.
Read `minecraft/config/ftbquests/quests/chapters/82000000.snbt`: title "Northstar", first quest id `82000001` "Space Program", dependency closure resolves, `"dimension": "northstar:moon"` present on Moon Landing, `"optional": true` present on the moon-stone task, zero `stellaris:` strings.

- [ ] **Step 10: Commit**

```bash
git add minecraft/tools/ftbquests/quest_data/northstar.json minecraft/tools/ftbquests/generate.py minecraft/tools/ftbquests/test_generate.py minecraft/tools/ftbquests/validate.py minecraft/config/ftbquests/quests/
git rm minecraft/tools/ftbquests/quest_data/stellaris.json
git commit -m "feat(quests): replace Stellaris chapter with Northstar Redux chapter (18 quests, dimension tasks)"
```

---

### Task 2: GUIDE.md — swap Stellaris section for Northstar Redux

**Files:**
- Modify: `minecraft/GUIDE.md` (Stellaris section — locate by heading)

**Interfaces:**
- Consumes: spec §3.1 content bullets.
- Produces: Northstar Redux section with the pack's standard section structure + instance-swap checklist.

- [ ] **Step 1: Locate the section**

Search `minecraft/GUIDE.md` for the heading `### Stellaris — Interplanetary Travel` (and the mod-table row `[**Stellaris**]`). Read from the `---` above the table row through the `---` after the section's last table (the "Gear / Apotheosis" row).

- [ ] **Step 2: Replace the section**

Replace the mod-table row and all following content with the Northstar Redux section per spec §3.1: mod row (`[**Northstar Redux**](https://www.curseforge.com/minecraft/mc-mods/northstar-redux) 0.6.4`), intro (fork, early-development caveat, **no worldgen structures**, Structures addon NOT installed), dependencies (no new deps — Create 6.0+ and GeckoLib already in pack), rocket construction (Rocket Station/Controls/Thruster/Combustion Chamber, superglued Create contraptions; no "Launch Pad" item — unregistered in 0.6.4), science unlocks (Telescope → Readings → Astronomy Table → Space Atlas, Return Ticket), oxygen & temperature (Separator/Filler/Sealer/Detector, Atmospheric Concentrator, Temperature Regulator, heat shielding scaling), suits (Iron → Martian Steel), planets (Moon → Mars → Mercury → Venus with hazards/mobs), materials chain (Titanium/Martian Steel/Tungsten/Lunar Sapphire), rewritten **Integration with Tech Mods** table (Mekanism/AE2/Create/TFMG/Farmer's Delight), **instance swap checklist** (remove `stellaris`/`potentials`/`sky-aesthetics` jars; add `northstar-redux` 0.6.4; do NOT install Structures addon), **update policy** (pin 0.6.4; back up worlds; re-run quest validation after updates), and the **world/save migration note** (fresh world recommended or accept inert leftovers).

- [ ] **Step 3: Verify no stale text**

Grep `minecraft/GUIDE.md` for `stellaris` (case-insensitive). Remaining hits MUST be only the quest-chapter list, quest-counts table, Wave 7 row, phase tables, tech-loop row, and the CC:Tweaked × Stellaris note — all fixed in Tasks 3–4.

- [ ] **Step 4: Commit**

```bash
git add minecraft/GUIDE.md
git commit -m "docs(guide): swap Stellaris section for Northstar Redux 0.6.4"
```

---

### Task 3: GUIDE.md — remove CC:Tweaked content

**Files:**
- Modify: `minecraft/GUIDE.md` (Wave 8 section, Lua tutorial, Integration Recipes, interdependency notes, Progression Placement, world-creation step, "Program your base" row)

**Interfaces:**
- Consumes: spec §3.4.
- Produces: zero `computercraft`/`CC:Tweaked` mentions in GUIDE.md.

- [ ] **Step 1: Locate all regions by content**

Search for these anchors in `minecraft/GUIDE.md` and read each region to confirm boundaries:
- `### Wave 8 — Programmable Computers` (section start; ends at the next `---` before `## Progression Overview`)
- Lua tutorial heading (e.g. `#### Crafting Your First Computer` / the Lua syntax primer — everything between the Wave 8 section and the next wave heading that belongs to CC:Tweaked)
- `#### Stellaris Launch Sequencer` (inside Integration Recipes)
- `- **CC:Tweaked ×` (six interdependency bullets)
- `CC:Tweaked's config is world-specific` and the world-creation step `Copy \`config/computercraft-server.toml\` into \`<world>/serverconfig/\``
- `| Program your base` row in the tech-loop table

- [ ] **Step 2: Remove each region**

Delete: the whole Wave 8 section (mod row, source note, recipe-gates table, config table, crafting guide); the Lua tutorial subsection(s); the Integration Recipes section incl. the Stellaris Launch Sequencer Lua block (preserving any non-CC neighboring content); the six `CC:Tweaked × …` interdependency bullets; the CC:Tweaked Progression Placement subsection; the world-creation step referencing the serverconfig copy; and the `Program your base` tech-loop row.

- [ ] **Step 3: Verify**

Grep `minecraft/GUIDE.md` for `computercraft|CC:Tweaked|CC-Tweaked|CC Tweaked` (case-insensitive). Expected: zero matches.

- [ ] **Step 4: Commit**

```bash
git add minecraft/GUIDE.md
git commit -m "docs(guide): remove CC:Tweaked Wave 8 content"
```

---

### Task 4: GUIDE.md — counts, wave table, phases, tech loops

**Files:**
- Modify: `minecraft/GUIDE.md` (quest chapter list, quest counts, wave summary, phase tables, tech-loop row)

**Interfaces:**
- Consumes: spec §3.5–3.7.
- Produces: reconciled totals `177/47/224`, quest total `212`.

- [ ] **Step 1: Quest chapter list + counts**

Search for `Chapters organized by mod:` — change `**Stellaris**` → `**Northstar**`. Search the quest-counts table for the `**Stellaris** | 17` row → `**Northstar** | 18`; update the `Total` line `211` → `212`.

- [ ] **Step 2: Wave summary table**

Search for the row containing `Stellaris, Potentials API, Sky Aesthetics` — replace with `1 | 0 | 1 | Northstar Redux (Create 6.0+ and GeckoLib already in pack — no new dependencies; no worldgen structures)`. Delete the Wave 8 row (contains `CC:Tweaked`). In the totals row, change `178 | 49 | 227` → `177 | 47 | 224` and append `−Stellaris −Potentials API −Sky Aesthetics −CC:Tweaked +Northstar Redux, Aug 2026` to the trailing changelog annotation.

- [ ] **Step 3: Phase tables**

Search for `CC:Tweaked turtles and wireless automation. Stellaris Moon and early planets` → `Northstar Redux Moon and early planets`. Search for `CC:Tweaked cross-mod automation networks` → delete the clause; `Mars and Glacio space bases` → `Mars and Venus space bases`.

- [ ] **Step 4: Tech-loop row**

Search for `Stellaris desh/ostranium → Mekanism 5x line → AE2 storage` → `Northstar titanium/martian steel → Mekanism 5x line → AE2 storage`.

- [ ] **Step 5: Verify**

Grep `minecraft/GUIDE.md` for `stellaris` (case-insensitive). Expected: zero matches.

- [ ] **Step 6: Commit**

```bash
git add minecraft/GUIDE.md
git commit -m "docs(guide): update mod counts, wave table, and phase tables for space swap"
```

---

### Task 5: Delete CC:Tweaked + stale Stellaris artifacts

**Files:**
- Delete: `minecraft/config/computercraft-server.toml`
- Delete: `minecraft/kubejs/server_scripts/wave8_cc_tweaked.js`
- (Stellaris chapter `90000000.snbt` deleted in Task 1 Step 8)

**Interfaces:**
- Consumes: spec §5.
- Produces: no CC:Tweaked or Stellaris artifacts in the repo.

- [ ] **Step 1: Remove both files**

```bash
git rm minecraft/config/computercraft-server.toml minecraft/kubejs/server_scripts/wave8_cc_tweaked.js
```

- [ ] **Step 2: Verify kubejs coherence**

Read `minecraft/kubejs/server_scripts/` — confirm remaining scripts don't reference `computercraft`.

- [ ] **Step 3: Commit**

```bash
git commit -m "chore: remove CC:Tweaked config and KubeJS recipe gates"
```

---

### Task 6: STATUS.md + AGENTS.md

**Files:**
- Modify: `minecraft/STATUS.md` (Added/Removed log, dependency-audit block, Wave 7 section, Wave 8 section)
- Modify: `minecraft/AGENTS.md` (Phase 2 paragraph)

**Interfaces:**
- Consumes: spec §6–§7.
- Produces: decision record with zero stale strings + post-install verification checklist.

- [ ] **Step 1: Read STATUS.md regions**

Read `minecraft/STATUS.md` around the "Added Mods / Removed Mods (Aug 2026)" entries, the `### Dependency Audit (Aug 2026 — Stellaris × Sky Aesthetics)` block, and the `### Wave 7 — Space Exploration` / `### Wave 8 — Programmable Computers` sections.

- [ ] **Step 2: Add swap entries**

Under the current Aug 2026 section, add:
- Stellaris 1.4.23 removed — user dislike of Overworld worldgen (satellite dishes, operation bases); replaced by Northstar Redux 0.6.4 (Create-based, no worldgen).
- CC:Tweaked removed (user request) — Wave 8 docs, config override, KubeJS recipe gates deleted; quest chapter `20008000` already absent since the 2026-08-13 regeneration.
- Dependencies removed with Stellaris: Potentials API, Sky Aesthetics (dependency audit superseded).
- Compat-mod audit (patterns: `stellaris`, `beyond.earth`, space-mod `compat` rows): no Stellaris addons/compat mods installed; TFMG fuel compat is native; Apothic Compats unaffected.
- Totals: 178/49/227 → 177/47/224; quests 211 → 212 (Northstar chapter 18, id `82000000`).
- **Post-install verification checklist** (for the user's instance swap): (1) launch; (2) quest book — Northstar chapter renders, crafted items detect; (3) craft a Rocket Station → quest completes; (4) reach the Moon → Moon Landing completes (if the dimension task errors, report back — escape hatch: item-only task); (5) EMI recipe review; (6) after any Northstar update, re-run `generate.py`/`validate.py`.

- [ ] **Step 3: Rewrite the dependency-audit block and Wave 7/8 sections**

Replace the "Stellaris × Sky Aesthetics" audit block with a short "superseded" note that does NOT contain the word Stellaris (e.g. "Dependency audit superseded 2026-08-20 — both audited deps were removed with the mod they served; replacement requires no extra deps"). Rewrite Wave 7 to Northstar Redux (no new deps, no worldgen) and Wave 8 to a removal note. Remove the old strikethrough `~~TFMG-Stellaris Compatibility~~` lines (fold the fact into the compat-audit entry without the string).

- [ ] **Step 4: Update AGENTS.md Phase 2**

Search `AGENTS.md` for `Stellaris adds space exploration` — replace with `Northstar Redux adds space exploration with Create-based rockets, oxygen systems, and off-world colonies.`

- [ ] **Step 5: Symmetric verification**

Grep `minecraft/STATUS.md` and `minecraft/AGENTS.md` for `stellaris|computercraft` (case-insensitive). Expected: **zero matches** in both.

- [ ] **Step 6: Commit**

```bash
git add minecraft/STATUS.md minecraft/AGENTS.md
git commit -m "docs(status): record Stellaris→Northstar Redux swap and CC:Tweaked removal"
```

---

### Task 7: PDF regeneration + final zero-tolerance verification

**Files:**
- Modify: `minecraft/rendered/DRIFTWOOD-GUIDE.pdf` (regenerated)

**Interfaces:**
- Consumes: all prior tasks.
- Produces: final verified state.

- [ ] **Step 1: Regenerate the PDF**

Run (cwd `H:/Projects/modlists/minecraft`): `powershell -ExecutionPolicy Bypass -File generate-pdf.ps1`
Expected: `[OK] DRIFTWOOD-GUIDE.pdf -> …\rendered\DRIFTWOOD-GUIDE.pdf (… KB)`.

- [ ] **Step 2: Final reference sweep (symmetric, zero-tolerance)**

Grep (case-insensitive) `stellaris|computercraft|cc-tweaked` across `minecraft/GUIDE.md`, `minecraft/STATUS.md`, `minecraft/AGENTS.md`, `minecraft/config`, `minecraft/kubejs`, `minecraft/tools`, `minecraft/datapacks`, `minecraft/templates`. Expected: **zero matches in every live path** (historical hits only under `minecraft/docs/superpowers/`).

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
- The user's game instance (XMCL) — the jar swap happens outside this repo; the GUIDE.md Northstar section + STATUS.md checklist carry the user-facing steps.
