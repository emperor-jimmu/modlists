# FTB Quests Automated Generation — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build a Python generator + validator that turns structured quest data into the pack's per-chapter FTB Quests SNBT, and author the re-granularized Mekanism chapter as the pilot.

**Architecture:** Quest content lives as JSON (one file per chapter). A stdlib-only Python generator reads it, assigns unique 8-hex IDs, resolves dependency keys to IDs, computes grid x/y, and emits `config/ftbquests/quests/chapters/<id>.snbt` plus the static `chapter_groups.snbt` and `data.snbt`. A validator runs the static checks (parse, uniqueness, closure, completeness, item-ID format).

**Tech Stack:** Python 3.8+ (stdlib only — `json`, `re`, `pathlib`), FTB Quests (per-chapter SNBT format), NeoForge 1.21.1.

## Global Constraints

- Output format is the proven per-chapter layout — JSON-compatible SNBT (double-quoted keys, commas) exactly matching the recovered `20008000.snbt` (see spec).
- Every `id` is an 8-character uppercase hex string, globally unique across chapters/tasks/rewards.
- New IDs must NOT collide with regenerating MineColonies chapters (`20002099`, `200020E1`, `20000077`, `200000F5`, `2000205B`) or the removed CC:Tweaked block (`20008000`).
- Item IDs use `namespace:path`; the `namespace` must be a known pack mod.
- Rewards: XP levels + consumable materials only — never a placement/utility block or a gated item (see July spec reward-exclusion rules).
- Progression is newbie-first: single-step quests, strict linear milestone chain, each description names the next step.
- Milestones = `hexagon` shape; breadcrumbs = `square` shape.
- Survival-only, single-player; no creative-only assumptions in quest content.

---

## File Structure

```
minecraft/
├── tools/ftbquests/
│   ├── generate.py            ← generator (data → SNBT)
│   ├── validate.py            ← validator (static checks)
│   └── quest_data/
│       └── mekanism.json      ← re-granularized Mekanism quest content
└── config/ftbquests/quests/
    ├── chapters/<mekanism-id>.snbt   ← generated
    ├── chapter_groups.snbt           ← generated (static Main group)
    └── data.snbt                     ← generated (static settings)
```

---

## Task 1: Data schema + quest data directory

**Files:**
- Create: `minecraft/tools/ftbquests/quest_data/mekanism.json`

**Interfaces:**
- Produces: the JSON schema the generator (Task 2) consumes. Schema:

```json
{
  "chapter": {
    "id": "50000000",
    "title": "Mekanism",
    "subtitle": "Industrial power, ore processing, and energy",
    "icon": "mekanism:basic_energy_cube",
    "group": "20000001",
    "order_index": 1
  },
  "quests": [
    {
      "key": "heat_generator",
      "title": "Heat Generator",
      "subtitle": "Your first power source",
      "description": [
        "Every machine needs power. A Heat Generator turns lava or burnable fuel into Forge Energy (FE).",
        "Place it in a pool of lava for free, passive power. Next: use that FE to run a Metallurgic Infuser."
      ],
      "icon": "mekanism:heat_generator",
      "shape": "hexagon",
      "phase": 1,
      "dependencies": [],
      "tasks": [ { "type": "item", "item": "mekanism:heat_generator", "count": 1 } ],
      "rewards": [
        { "type": "xp_levels", "xp_levels": 8 },
        { "type": "item", "item": "minecraft:redstone", "count": 4 }
      ]
    }
  ]
}
```

- `key` is the stable identifier used in `dependencies` (resolved to hex IDs by the generator).
- `phase` is 1, 2, or 3. `shape` is `hexagon` (milestone) or `square` (breadcrumb).
- `tasks`: `{ "type": "item", "item": "<ns:path>", "count": N }` or `{ "type": "checkmark" }`.
- `rewards`: `{ "type": "xp_levels", "xp_levels": N }` or `{ "type": "item", "item": "<ns:path>", "count": N }`.

- [ ] **Step 1: Create the quest_data directory**

```bash
mkdir -p minecraft/tools/ftbquests/quest_data
```

- [ ] **Step 2: Write `mekanism.json`** with the full re-granularized chapter (the complete quest list is in Task 4 — do this after Task 4 defines it, or fold Task 4's content here). For the TDD flow below, create the file with the single `heat_generator` example quest first, then complete it in Task 4.

- [ ] **Step 3: Commit the directory scaffold**

```bash
git add minecraft/tools/ftbquests/quest_data/mekanism.json
git commit -m "feat(quests): quest data schema + Mekanism scaffold"
```

---

## Task 2: Generator script

**Files:**
- Create: `minecraft/tools/ftbquests/generate.py`
- Test: `minecraft/tools/ftbquests/test_generate.py`

**Interfaces:**
- Produces `generate(name)` → writes `config/ftbquests/quests/chapters/<chapter.id>.snbt`, `chapter_groups.snbt`, `data.snbt`.
- Produces internal helpers consumed by tests: `assign_ids(chapter) -> dict(key -> id)`, `build_chapter_object(chapter) -> dict`.

- [ ] **Step 1: Write the failing test**

```python
# test_generate.py
import json, sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).parent))
import generate

SAMPLE = {
    "id": "50000000", "title": "Test", "subtitle": "", "icon": "minecraft:paper",
    "group": "20000001", "order_index": 1,
    "quests": [{
        "key": "q1", "title": "One", "subtitle": "", "description": ["a", "b"],
        "icon": "minecraft:paper", "shape": "hexagon", "phase": 1,
        "dependencies": [], "tasks": [{"type": "item", "item": "minecraft:stone", "count": 1}],
        "rewards": [{"type": "xp_levels", "xp_levels": 5}]
    }]
}

def test_assign_ids_are_unique_hex():
    key_to_id = generate.assign_ids(SAMPLE)
    ids = [SAMPLE["id"]] + [q["_id"] for q in SAMPLE["quests"]]
    ids += [t["id"] for q in SAMPLE["quests"] for t in q["tasks"]]
    ids += [r["id"] for q in SAMPLE["quests"] for r in q["rewards"]]
    assert len(ids) == len(set(ids)), "duplicate ids"
    assert all(len(i) == 8 for i in ids)

def test_dependency_resolves_by_key():
    key_to_id = generate.assign_ids(SAMPLE)
    # add a second quest depending on q1
    data = json.loads(json.dumps(SAMPLE))
    data["quests"].append({
        "key": "q2", "title": "Two", "subtitle": "", "description": ["x"],
        "icon": "minecraft:paper", "shape": "hexagon", "phase": 1,
        "dependencies": ["q1"], "tasks": [{"type": "item", "item": "minecraft:dirt", "count": 1}],
        "rewards": []
    })
    key_to_id = generate.assign_ids(data)
    generate.resolve_dependencies(data, key_to_id)
    q2 = data["quests"][1]
    assert q2["dependencies"] == [key_to_id["q1"]]
```

- [ ] **Step 2: Run tests to verify they fail**

Run: `python minecraft/tools/ftbquests/test_generate.py -v`
Expected: FAIL with `ModuleNotFoundError` / `AttributeError` (functions not yet defined).

- [ ] **Step 3: Write the generator**

```python
#!/usr/bin/env python3
"""Generate FTB Quests chapter SNBT files from structured JSON data."""
import json, sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent          # minecraft/
QUEST_DATA_DIR = ROOT / "tools" / "ftbquests" / "quest_data"
OUT_DIR = ROOT / "config" / "ftbquests" / "quests"

PHASE_X = {1: 0.0, 2: 3.0, 3: 6.0}        # milestone x per phase
BREADCRUMB_X = {1: 1.5, 2: 4.5, 3: 7.5}  # breadcrumb x per phase

GROUP_FILE = {
    "chapter_groups": [{"id": "20000001", "title": "Main", "order_index": 0}]
}
DATA_FILE = {
    "version": 1, "default_reward_team": False, "default_consume_items": False,
    "default_autoclaim_rewards": "disabled", "default_quest_shape": "hexagon",
    "default_quest_disable_jei": False, "emergency_items_cooldown": 300,
    "drop_loot_crates": False
}

def _hex(n):
    return format(n, "08X")

def load_data(name):
    with open(QUEST_DATA_DIR / f"{name}.json", encoding="utf-8") as f:
        return json.load(f)

def assign_ids(chapter):
    """Assign sequential 8-hex ids to every quest/task/reward; return key->id map."""
    counter = int(chapter["id"], 16) + 1
    key_to_id = {}
    for q in chapter["quests"]:
        qid = _hex(counter); counter += 1
        key_to_id[q["key"]] = qid
        q["_id"] = qid
        for t in q.get("tasks", []):
            t["id"] = _hex(counter); counter += 1
        for r in q.get("rewards", []):
            r["id"] = _hex(counter); counter += 1
    return key_to_id

def resolve_dependencies(chapter, key_to_id):
    for q in chapter["quests"]:
        q["dependencies"] = [key_to_id[k] for k in q.get("dependencies", [])]

def assign_layout(chapter):
    counters = {}
    for q in chapter["quests"]:
        shape = q.get("shape", "square")
        phase = q.get("phase", 1)
        x = PHASE_X[phase] if shape == "hexagon" else BREADCRUMB_X[phase]
        ckey = (phase, shape)
        y = counters.get(ckey, 0)
        counters[ckey] = y + 1
        q["x"] = x
        q["y"] = y

def build_quest(q):
    return {
        "id": q["_id"], "title": q["title"], "subtitle": q.get("subtitle", ""),
        "description": q.get("description", []), "icon": q.get("icon", "minecraft:paper"),
        "x": q["x"], "y": q["y"], "shape": q.get("shape", "square"),
        "dependencies": q.get("dependencies", []),
        "tasks": [t for t in q.get("tasks", []) if "id" in t],
        "rewards": [r for r in q.get("rewards", []) if "id" in r],
        "optional": q.get("optional", False)
    }

def build_chapter_object(chapter):
    return {
        "id": chapter["id"], "group": chapter["group"],
        "order_index": chapter.get("order_index", 1), "title": chapter["title"],
        "subtitle": chapter.get("subtitle", ""), "icon": chapter["icon"],
        "default_quest_shape": "square",
        "quests": [build_quest(q) for q in chapter["quests"]]
    }

def generate(name):
    chapter = load_data(name)
    key_to_id = assign_ids(chapter)
    resolve_dependencies(chapter, key_to_id)
    assign_layout(chapter)
    obj = build_chapter_object(chapter)

    chapters_dir = OUT_DIR / "chapters"
    chapters_dir.mkdir(parents=True, exist_ok=True)
    (chapters_dir / f"{chapter['id']}.snbt").write_text(
        json.dumps(obj, indent=2) + "\n", encoding="utf-8")
    (OUT_DIR / "chapter_groups.snbt").write_text(
        json.dumps(GROUP_FILE, indent=2) + "\n", encoding="utf-8")
    (OUT_DIR / "data.snbt").write_text(
        json.dumps(DATA_FILE, indent=2) + "\n", encoding="utf-8")

if __name__ == "__main__":
    generate(sys.argv[1] if len(sys.argv) > 1 else "mekanism")
```

- [ ] **Step 4: Run tests to verify they pass**

Run: `python minecraft/tools/ftbquests/test_generate.py -v`
Expected: PASS.

- [ ] **Step 5: Commit**

```bash
git add minecraft/tools/ftbquests/generate.py minecraft/tools/ftbquests/test_generate.py
git commit -m "feat(quests): FTB Quests SNBT generator"
```

---

## Task 3: Validator script

**Files:**
- Create: `minecraft/tools/ftbquests/validate.py`
- Test: `minecraft/tools/ftbquests/test_validate.py`

**Interfaces:**
- Produces `validate_all() -> list[str]` (list of error strings; empty = pass).

- [ ] **Step 1: Write the failing test**

```python
# test_validate.py
import json, sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).parent))
import validate

def test_item_id_format():
    assert validate._bad_item("mekanism:heat_generator") is None
    assert validate._bad_item("Mekanism:Heat") is not None          # uppercase
    assert validate._bad_item("heat_generator") is not None         # no namespace
    assert validate._bad_item("unknownmod:thing") is not None       # unknown mod

def test_uniqueness_detects_dupes():
    chapters = [{"id": "50000000", "quests": [
        {"id": "50000001", "tasks": [{"id": "50000002"}], "rewards": []},
        {"id": "50000001", "tasks": [], "rewards": []}  # dupe quest id
    ]}]
    assert validate._check_uniqueness(chapters) != []

def test_closure_detects_dangling_dep():
    chapters = [{"id": "50000000", "quests": [
        {"id": "50000001", "dependencies": ["99999999"], "tasks": [], "rewards": []}
    ]}]
    assert validate._check_closure(chapters) != []
```

- [ ] **Step 2: Run tests to verify they fail**

Run: `python minecraft/tools/ftbquests/test_validate.py -v`
Expected: FAIL with `ModuleNotFoundError` / `AttributeError`.

- [ ] **Step 3: Write the validator**

```python
#!/usr/bin/env python3
"""Validate generated FTB Quests SNBT files (static checks)."""
import json, re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
QUESTS_DIR = ROOT / "config" / "ftbquests" / "quests"

KNOWN_MODS = {"minecraft", "mekanism", "mekanismgenerators", "mekanismtools",
              "computercraft", "create", "ae2", "stellaris", "tfmg",
              "createbigcannons", "apotheosis", "simplyswords"}
ITEM_RE = re.compile(r"^[a-z0-9_]+:[a-z0-9_./]+$")

def _load_chapters():
    chapters = []
    d = QUESTS_DIR / "chapters"
    if d.is_dir():
        for p in sorted(d.glob("*.snbt")):
            with open(p, encoding="utf-8") as f:
                chapters.append(json.load(f))
    return chapters

def _bad_item(item):
    if not ITEM_RE.match(item):
        return f"bad format: {item}"
    if item.split(":")[0] not in KNOWN_MODS:
        return f"unknown mod: {item}"
    return None

def _check_uniqueness(chapters):
    seen, errs = {}, []
    def add(i):
        if i in seen:
            errs.append(f"duplicate id {i} ({seen[i]} and another)")
        seen[i] = True
    for c in chapters:
        add(c["id"])
        for q in c.get("quests", []):
            add(q["id"])
            for t in q.get("tasks", []):
                if "id" in t: add(t["id"])
            for r in q.get("rewards", []):
                if "id" in r: add(r["id"])
    return errs

def _check_closure(chapters):
    quest_ids = {q["id"] for c in chapters for q in c.get("quests", [])}
    errs = []
    for c in chapters:
        for q in c.get("quests", []):
            for dep in q.get("dependencies", []):
                if dep not in quest_ids:
                    errs.append(f"{q.get('title', q['id'])}: dangling dep {dep}")
    return errs

def _check_completeness(chapters):
    errs = []
    for c in chapters:
        for q in c.get("quests", []):
            for f in ("id", "title", "tasks"):
                if f not in q:
                    errs.append(f"quest missing {f}")
            if not q.get("tasks"):
                errs.append(f"{q.get('title', q.get('id'))}: no tasks")
            for t in q.get("tasks", []):
                if t.get("type") == "item" and "item" not in t:
                    errs.append(f"{q.get('title')}: item task missing 'item'")
    return errs

def _check_items(chapters):
    errs = []
    for c in chapters:
        for q in c.get("quests", []):
            for t in q.get("tasks", []):
                if t.get("type") == "item":
                    b = _bad_item(t["item"])
                    if b: errs.append(f"{q.get('title')}: {b}")
            for r in q.get("rewards", []):
                if r.get("type") == "item":
                    b = _bad_item(r["item"])
                    if b: errs.append(f"{q.get('title')}: reward {b}")
    return errs

def validate_all():
    chapters = _load_chapters()
    if not chapters:
        return ["no chapters found — run generate.py first"]
    errs = []
    errs += _check_uniqueness(chapters)
    errs += _check_closure(chapters)
    errs += _check_completeness(chapters)
    errs += _check_items(chapters)
    return errs

if __name__ == "__main__":
    errs = validate_all()
    if errs:
        print("FAIL")
        for e in errs:
            print("  -", e)
        raise SystemExit(1)
    print("OK — all static checks passed")
```

- [ ] **Step 4: Run tests to verify they pass**

Run: `python minecraft/tools/ftbquests/test_validate.py -v`
Expected: PASS.

- [ ] **Step 5: Commit**

```bash
git add minecraft/tools/ftbquests/validate.py minecraft/tools/ftbquests/test_validate.py
git commit -m "feat(quests): FTB Quests SNBT validator"
```

---

## Task 4: Author the re-granularized Mekanism quest data

**Files:**
- Modify: `minecraft/tools/ftbquests/quest_data/mekanism.json`

**Spec reference:** `docs/superpowers/specs/2026-08-13-ftb-quests-generation-design.md` ("Progression style") and the July content in `docs/superpowers/plans/2026-07-27-ftb-quests-implementation.md` lines 229–337.

**Re-granularization rules applied (from spec):**
1. Multi-item milestones split into single-item quests.
2. Core progression forms ONE linear milestone chain (no branching for the newbie).
3. Gear/environmental branches moved to breadcrumbs (optional).
4. "Confirm the chain works" steps become `checkmark` milestones.
5. Each description is 1–2 sentences and ends naming the next step.

Write `mekanism.json` with the chapter header (id `50000000`) and the following quests. `dependencies` use `key` references. Milestones are `hexagon`, breadcrumbs are `square`.

### Phase 1 — Milestones (linear chain)

| key | title | task item | depends | reward |
|---|---|---|---|---|
| heat_generator | Heat Generator | mekanism:heat_generator | — | XP 8 + 4 minecraft:redstone |
| metallurgic_infuser | Metallurgic Infuser | mekanism:metallurgic_infuser | heat_generator | XP 8 + 4 mekanism:enriched_alloy |
| enrichment_chamber | Enrichment Chamber | mekanism:enrichment_chamber | metallurgic_infuser | XP 8 + 4 minecraft:iron_ingot |
| energized_smelter | Energized Smelter | mekanism:energized_smelter | enrichment_chamber | XP 8 + 4 minecraft:iron_ingot |
| double_first_ore | Double Your First Ore | checkmark | energized_smelter | XP 12 |
| basic_energy_cube | Basic Energy Cube | mekanism:basic_energy_cube | double_first_ore | XP 8 |
| energy_tablet | Energy Tablet | mekanism:energy_tablet | basic_energy_cube | XP 8 + 1 mekanism:energy_tablet |
| chargepad | Chargepad | mekanism:chargepad | energy_tablet | XP 8 |
| atomic_disassembler | Atomic Disassembler | mekanism:atomic_disassembler | chargepad | XP 12 + 1 mekanism:energy_tablet |

### Phase 1 — Breadcrumbs (square, no dependencies)

| key | title | task item | reward |
|---|---|---|---|
| steel_casing | Steel Casing | 8× mekanism:steel_casing | XP 8 + 8 mekanism:steel_casing |
| configurator | Configurator | mekanism:configurator | XP 8 |
| gas_burning_generator | Gas-Burning Generator | mekanism:gas_burning_generator | XP 12 |
| teleporter | Teleporter | mekanism:teleporter | XP 12 |
| machine_upgrades | Machine Upgrades | mekanism:speed_upgrade | XP 8 + 4 mekanism:speed_upgrade |
| tiered_factories | Tiered Factories | mekanism:ultimate_control_circuit | XP 16 + 4 mekanism:basic_control_circuit |
| atmospheric_suit | Atmospheric Suit | mekanism:scuba_mask | XP 16 |
| osmium_gear | Osmium Gear | mekanismtools:osmium_pickaxe | XP 16 + 4 mekanism:ingot_osmium |

### Phase 2 — Milestones (linear chain)

| key | title | task item | depends | reward |
|---|---|---|---|---|
| ore_tripling | Purification Chamber | mekanism:purification_chamber | atomic_disassembler | XP 16 |
| thermal_evaporation | Thermal Evaporation Plant | mekanism:thermal_evaporation_controller | ore_tripling | XP 16 + 8 mekanism:steel_casing |
| electrolytic_separator | Electrolytic Separator | mekanism:electrolytic_separator | thermal_evaporation | XP 16 |
| chemical_infuser | Chemical Infuser | mekanism:chemical_infuser | electrolytic_separator | XP 16 |
| chemical_injection | Chemical Injection Chamber | mekanism:chemical_injection_chamber | chemical_infuser | XP 16 |
| dissolution_chamber | Chemical Dissolution Chamber | mekanism:chemical_dissolution_chamber | chemical_injection | XP 20 |
| chemical_washer | Chemical Washer | mekanism:chemical_washer | dissolution_chamber | XP 20 |
| chemical_crystallizer | Chemical Crystallizer | mekanism:chemical_crystallizer | chemical_washer | XP 20 |
| ore_quintupling | Five-Times Ore Processing | checkmark | chemical_crystallizer | XP 24 + 8 mekanism:dust_refined_obsidian |
| digital_miner | Digital Miner | mekanism:digital_miner | ore_quintupling | XP 24 + 8 mekanism:ingot_osmium |
| pressurized_reaction | Pressurized Reaction Chamber | mekanism:pressurized_reaction_chamber | digital_miner | XP 24 + 8 mekanism:hdpe_sheet |
| induction_matrix | Induction Matrix | mekanism:induction_casing | pressurized_reaction | XP 24 + 8 mekanism:steel_casing |
| seismic_surveying | Seismic Surveying | mekanism:seismic_vibrator | induction_matrix | XP 16 |
| fission_reactor | Fission Reactor | mekanism:fission_reactor_controller | seismic_surveying | XP 24 + 8 mekanism:fissile_fuel |

### Phase 2 — Breadcrumbs (square, no dependencies)

| key | title | task item | reward |
|---|---|---|---|
| boiler | Boiler | mekanism:boiler_casing | XP 16 |
| radiation_safety | Radiation Safety | checkmark | XP 16 |
| chemical_chain | Chemical Processing Map | checkmark | XP 24 |
| robit | Robit | mekanism:robit | XP 8 |

### Phase 3 — Milestones (linear chain)

| key | title | task item | depends | reward |
|---|---|---|---|---|
| fusion_reactor | Fusion Reactor | mekanism:fusion_reactor_controller | fission_reactor | XP 32 + 8 mekanism:block_refined_obsidian |
| quantum_entangloporter | Quantum Entangloporter | mekanism:quantum_entangloporter | fusion_reactor | XP 32 |
| mekasuit | SPS & MekaSuit | mekanism:mekasuit_bodyarmor | quantum_entangloporter | XP 32 + 1 minecraft:dragon_breath |

### Phase 3 — Breadcrumbs (square, no dependencies)

| key | title | task item | reward |
|---|---|---|---|
| polonium | Polonium Production | checkmark | XP 24 |
| antimatter | Antimatter Chain | checkmark | XP 32 |

- [ ] **Step 1: Write the full `mekanism.json`** transcribing every table above into the schema from Task 1. Descriptions: 1–2 sentences each — the first states what the item does (use the July implementation doc's text as the concept source), the second names the next step (e.g. `"Next: use that FE to run a Metallurgic Infuser."`). Every milestone's last description line must point to the next milestone in the chain.

- [ ] **Step 2: Sanity-check the data against the rules**

Run: `python minecraft/tools/ftbquests/generate.py mekanism` then `python minecraft/tools/ftbquests/validate.py`
Expected: generator writes the 3 output files; validator prints `OK — all static checks passed`.

- [ ] **Step 3: Commit the data + generated output**

```bash
git add minecraft/tools/ftbquests/quest_data/mekanism.json minecraft/config/ftbquests/
git commit -m "feat(quests): re-granularized Mekanism chapter (newbie-first)"
```

---

## Task 5: In-game verification (human checkpoint)

**Files:** none (verification only).

- [ ] **Step 1:** Copy `minecraft/config/ftbquests/quests/` into the live instance's `config/ftbquests/quests/`.
- [ ] **Step 2:** Launch the pack (NeoForge 1.21.1), open a survival world, run `/ftbquests reload`.
- [ ] **Step 3:** Confirm zero parse errors in chat/log.
- [ ] **Step 4:** Open the quest book → Mekanism chapter visible; milestones show as hexagons, breadcrumbs as squares; dependency arrows render.
- [ ] **Step 5:** Complete the chain Heat Generator → Metallurgic Infuser → Enrichment Chamber → Energized Smelter → Double Your First Ore by item detection alone (no manual checkmarking).
- [ ] **Step 6:** Confirm each item reward appears and every detected item ID is real (fix any wrong ID in `mekanism.json`, regenerate, re-validate, repeat).
- [ ] **Step 7:** Confirm the chapter has no dependency on other chapters (Phase 1 self-contained).

---

## Self-Review Notes

- Spec coverage: generator (Task 2) implements "Generator design"; validator (Task 3) implements verify-loop checks 1–5; Task 4 implements the re-granularized content; Task 5 implements verify-loop check 6 (in-game). Checkmark task type (`{"type": "checkmark"}`) is used per spec with the caveat that its exact on-disk field shape is confirmed during Task 5's in-game pass — if FTB Quests requires a `title` field on checkmark tasks, add it in Task 4's data and regenerate.
- Item-ID correctness: static validation checks format + known modid only; the in-game pass (Task 5 Step 6) is the final arbiter for exact item IDs.
