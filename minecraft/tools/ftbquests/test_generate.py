import json
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
import generate  # noqa: E402

SAMPLE = {
    "id": "50000000", "title": "Test", "subtitle": "", "icon": "minecraft:paper",
    "group": "20000001", "order_index": 1,
    "quests": [{
        "key": "q1", "title": "One", "subtitle": "", "description": ["a", "b"],
        "icon": "minecraft:paper", "shape": "hexagon", "phase": 1,
        "dependencies": [], "tasks": [{"type": "item", "item": "minecraft:stone", "count": 1}],
        "rewards": [{"type": "xp_levels", "xp_levels": 5}],
    }],
}


def test_assign_ids_are_unique_hex():
    data = json.loads(json.dumps(SAMPLE))
    key_to_id = generate.assign_ids(data)
    ids = [data["id"]] + [q["_id"] for q in data["quests"]]
    ids += [t["id"] for q in data["quests"] for t in q["tasks"]]
    ids += [r["id"] for q in data["quests"] for r in q["rewards"]]
    assert len(ids) == len(set(ids)), "duplicate ids"
    assert all(len(i) == 8 for i in ids)
    assert key_to_id["q1"] == data["quests"][0]["_id"]


def test_dependency_resolves_by_key():
    data = json.loads(json.dumps(SAMPLE))
    data["quests"].append({
        "key": "q2", "title": "Two", "subtitle": "", "description": ["x"],
        "icon": "minecraft:paper", "shape": "hexagon", "phase": 1,
        "dependencies": ["q1"], "tasks": [{"type": "item", "item": "minecraft:dirt", "count": 1}],
        "rewards": [],
    })
    key_to_id = generate.assign_ids(data)
    generate.resolve_dependencies(data, key_to_id)
    q2 = data["quests"][1]
    assert q2["dependencies"] == [key_to_id["q1"]]


def test_layout_assigns_columns():
    data = json.loads(json.dumps(SAMPLE))
    data["quests"].append({
        "key": "b1", "title": "Bread", "subtitle": "", "description": ["y"],
        "icon": "minecraft:paper", "shape": "square", "phase": 1,
        "dependencies": [], "tasks": [{"type": "item", "item": "minecraft:dirt", "count": 1}],
        "rewards": [],
    })
    generate.assign_ids(data)
    generate.assign_layout(data)
    milestone = data["quests"][0]
    breadcrumb = data["quests"][1]
    assert milestone["x"] == 0.0
    assert breadcrumb["x"] == 1.5
    assert milestone["y"] == 0
    assert breadcrumb["y"] == 0
if __name__ == "__main__":
    import traceback
    _tests = [v for k, v in sorted(globals().items()) if k.startswith("test_") and callable(v)]
    _failed = 0
    for _t in _tests:
        try:
            _t()
            print(f"PASS {_t.__name__}")
        except Exception:
            _failed += 1
            print(f"FAIL {_t.__name__}")
            traceback.print_exc()
    print(f"{len(_tests) - _failed}/{len(_tests)} passed")
    sys.exit(1 if _failed else 0)
