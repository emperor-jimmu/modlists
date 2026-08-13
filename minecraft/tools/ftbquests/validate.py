#!/usr/bin/env python3
"""Validate generated FTB Quests SNBT files (static checks)."""
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
QUESTS_DIR = ROOT / "config" / "ftbquests" / "quests"

KNOWN_MODS = {
    "minecraft", "mekanism", "mekanismgenerators", "mekanismtools",
    "computercraft", "create", "ae2", "stellaris", "tfmg",
    "createbigcannons", "apotheosis", "simplyswords",
}
ITEM_RE = re.compile(r"^[a-z0-9_]+:[a-z0-9_./]+$")


def _load_chapters():
    chapters = []
    d = QUESTS_DIR / "chapters"
    if d.is_dir():
        for p in sorted(d.glob("*.snbt")):
            with open(p, encoding="utf-8") as f:
                chapters.append(json.load(f))
    return chapters


def _item_id(item):
    """Resolve the item id from either a nested ItemStack or a flat string."""
    if isinstance(item, dict):
        return item.get("id")
    return item


def _bad_item(item):
    iid = _item_id(item)
    if not iid or not ITEM_RE.match(iid):
        return f"bad format: {iid}"
    if iid.split(":")[0] not in KNOWN_MODS:
        return f"unknown mod: {iid}"
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
                if "id" in t:
                    add(t["id"])
            for r in q.get("rewards", []):
                if "id" in r:
                    add(r["id"])
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
                if t.get("type") == "item" and not _item_id(t.get("item")):
                    errs.append(f"{q.get('title')}: item task missing 'item.id'")
    return errs


def _check_items(chapters):
    errs = []
    for c in chapters:
        for q in c.get("quests", []):
            for t in q.get("tasks", []):
                if t.get("type") == "item":
                    b = _bad_item(t.get("item"))
                    if b:
                        errs.append(f"{q.get('title')}: {b}")
            for r in q.get("rewards", []):
                if r.get("type") == "item":
                    b = _bad_item(r.get("item"))
                    if b:
                        errs.append(f"{q.get('title')}: reward {b}")
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
