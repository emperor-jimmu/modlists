import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
import validate  # noqa: E402


def test_item_id_format():
    assert validate._bad_item("mekanism:heat_generator") is None
    assert validate._bad_item("Mekanism:Heat") is not None           # uppercase
    assert validate._bad_item("heat_generator") is not None          # no namespace
    assert validate._bad_item("unknownmod:thing") is not None        # unknown mod


def test_uniqueness_detects_dupes():
    chapters = [{
        "id": "50000000",
        "quests": [
            {"id": "50000001", "tasks": [{"id": "50000002"}], "rewards": []},
            {"id": "50000001", "tasks": [], "rewards": []},  # dupe quest id
        ],
    }]
    assert validate._check_uniqueness(chapters) != []


def test_closure_detects_dangling_dep():
    chapters = [{
        "id": "50000000",
        "quests": [
            {"id": "50000001", "dependencies": ["99999999"], "tasks": [], "rewards": []},
        ],
    }]
    assert validate._check_closure(chapters) != []


def test_completeness_detects_empty_tasks():
    chapters = [{
        "id": "50000000",
        "quests": [{"id": "50000001", "title": "Empty", "tasks": [], "rewards": []}],
    }]
    assert validate._check_completeness(chapters) != []
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
