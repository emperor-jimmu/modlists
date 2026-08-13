#!/usr/bin/env python3
"""Generate FTB Quests chapter SNBT files from structured JSON data."""
import json
import sys
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
        qid = _hex(counter)
        counter += 1
        key_to_id[q["key"]] = qid
        q["_id"] = qid
        for t in q.get("tasks", []):
            t["id"] = _hex(counter)
            counter += 1
        for r in q.get("rewards", []):
            r["id"] = _hex(counter)
            counter += 1
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
        "optional": q.get("optional", False),
    }


def build_chapter_object(chapter):
    return {
        "id": chapter["id"], "group": chapter["group"],
        "order_index": chapter.get("order_index", 1), "title": chapter["title"],
        "subtitle": chapter.get("subtitle", ""), "icon": chapter["icon"],
        "default_quest_shape": "square",
        "quests": [build_quest(q) for q in chapter["quests"]],
    }


def generate(name):
    data = load_data(name)
    chapter = data["chapter"]
    chapter["quests"] = data["quests"]
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
