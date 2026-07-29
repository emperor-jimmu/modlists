# Stellaris Mod Migration Tool — Design Spec

**Date**: 2026-07-20
**Status**: Draft

## Overview

A Python CLI tool that migrates Stellaris mods from versions 4.0, 4.1, 4.2, and 4.3 to 4.4.x by applying version-to-version transformation rules. The tool parses Paradox script files into an AST, applies structural changes, and produces a migrated mod with an updated descriptor plus a human-readable report. Integrates with Mod Organizer 2 as an external executable.

## Architecture

The tool has two modes sharing a common core: `analyze` (maintainer-only, one-time) and `migrate` (end-user, production).

```bash
migrator/
├── __init__.py
├── __main__.py                 # entry point: python -m migrator
├── cli.py                      # typer CLI for analyze & migrate
├── parser.py                   # Paradox script tokenizer + recursive descent parser
├── ast.py                      # Node types: ScalarNode, BlockNode, ScopeNode, ListNode, CommentNode
├── matcher.py                  # analyze mode: structural AST matching between version pairs
├── differ.py                   # analyze mode: generates rules from matched AST diff
├── engine.py                   # migrate mode: chained rule application per file
├── reporter.py                 # migration_report.txt + .json generation
├── steamcmd.py                 # SteamCMD wrapper for --workshop-id downloads
├── rules_schema.py             # Pydantic models for migration_rules.json
└── migration_rules.json        # BUNDLED: pre-built rules (committed, ships with tool)
```

### Two Modes

| Mode      | Who        | Input                                                            | Output                                              |
|-----------|------------|------------------------------------------------------------------|-----------------------------------------------------|
| `analyze` | Maintainer | `stellaris_versions/` archive + `patches.json` (wiki dates)      | `migration_rules.json` (committed to repo)          |
| `migrate` | End user   | Mod folder or Steam Workshop ID + bundled `migration_rules.json` | Migrated mod folder + `migration_report.{txt,json}` |

The `stellaris_versions/` directory is gitignored. Raw game data never enters the repo. Only the generated `migration_rules.json` is committed.

### Chained Step Migration

A mod is migrated one version at a time through the full chain:

```
Source version detected → follow path to 4.4.6
Example: 4.2 → 4.3 → 4.4.0 → 4.4.6
```

Each step applies its own rule subset from the unified `migration_rules.json`. The parsed AST is loaded once, all applicable transitions are applied in order, and the file is serialized once.

## Paradox Script Parser

Paradox's scripting language is a key-value DSL. The parser is a hand-written recursive descent parser (no external dependencies).

### Syntax

```stellaris
ship_speed = 2.5                    # scalar
name = "Corvette"                   # string
ship_size = {                       # block (named scope)
    max_speed = 300
    modifier = { factor = 0.5 }     # nested block
}
```

### Tokenizer

Handles: identifiers, strings (double-quoted), numbers (int/float), operators (`=`, `{`, `}`), comments (`#` to EOL), and `@` variable references.

### AST Node Types

| Node          | Example                                                    |
|---------------|------------------------------------------------------------|
| `ScalarNode`  | `ship_speed = 2.5`                                         |
| `BlockNode`   | `resources = { category = planet_buildings }`              |
| `ScopeNode`   | `ship_size = { max_speed = 300 }` (preserves the name key) |
| `ListNode`    | `{ a b c }` (implicit comma-separated values)              |
| `CommentNode` | `# this is a comment`                                      |

### File Format & Fidelity

The parser makes best-effort round-trip fidelity:

- **Preserved**: Comments, key ordering, and explicit whitespace within blocks.
- **Preserved**: Original line endings (CRLF on Windows, LF on Unix — detected from the first line ending in the file).
- **Normalized**: BOM is stripped on input and re-added on output if it was present.
- **Not preserved**: Trailing whitespace, blank lines between blocks, indentation style (output uses consistent 4-space indentation).

This means diffing the source against the migrated output will show meaningful changes cleanly, but will not be byte-identical. This is documented in the tool's help text.

### Line Numbers

Each node stores its **original source line number** — line numbers in the report always reference the source file, never the transformed position.

## The `analyze` Mode

The hardest algorithmic problem in the tool is matching corresponding nodes between two versions of the same file to detect what changed. The process has four stages.

### Stage 1: Version Pair Detection

`analyze` reads the `stellaris_versions/` directory and identifies adjacent version pairs to process. It only produces rules for pairs where **both** versions exist. Missing versions produce no rules for that gap.

```
stellaris_versions/
├── 4.0/       ✓ paired with 4.1
├── 4.1/       ✓ paired with 4.0 and 4.3 (4.2 missing — gap is intentional)
├── 4.3/       ✓ paired with 4.1 and 4.4.6 (4.4.0 missing — gap is intentional)
└── 4.4.6/
```

If the maintainer later adds `4.2/` and runs `analyze` again, it produces rules for 4.1→4.2, 4.2→4.3 to fill the gaps. The `migration_rules.json` supports non-contiguous version pairs in `transitions`.

### Stage 2: File-Level Matching

For each vanilla game data file in the old version, find the corresponding file in the new version:

1. **Direct match**: Same relative path exists in both trees → proceed to Stage 3.
2. **Moved file**: If a file disappeared, search the new tree for a file whose **top-level scope names** have significant overlap with the missing file's. If a single best candidate is found (Jaccard similarity > 0.7), record as `moved_to` / `moved_from`. If multiple candidates exist, record as `file_split` unresolvable event.
3. **Gone entirely**: If no corresponding content exists in the new version, record each top-level definition as an `object_removed` unresolvable event.
4. **New file**: If a file exists in the new version but not in the old, record as a candidate for new required content (flagged for manual review).

### Stage 3: Structural Node Matching

For each matched file pair, parse both into ASTs and match top-level scope nodes using a three-tier heuristic. **Matching is by name, not position** — scope ordering within a file is ignored because Paradox files are order-dependent and the matcher should not assume positions are stable across versions.

1. **Exact name match** — two scopes with the same name key → immediate match (score 0).
2. **Name similarity** — Levenshtein distance on the name, normalized by the **length of the longer name**. Example: `orbital_ring` (12 chars) vs `orbital_habitat` (15 chars). Common prefix `orbital_` (8 chars). Transform `ring` → `habitat`: 7 edits. Score = 7/15 ≈ 0.47.
   - **score < 0.4**: Names are similar. Flag as candidate rename. In `analyze --review`, maintainer confirms (y → INFO rename rule, n → WARNING if structurally similar else unresolvable_events).
   - **score >= 0.4**: Names differ significantly. If structural fingerprint (Stage 3.3) also matches → WARNING: object removed, structurally similar object appeared with unrelated name — may be a replacement, may be coincidence.
3. **Structural fingerprint** — For anonymous blocks and lists, hash the sorted set of first-level child key names into a fingerprint. If two nodes have identical fingerprints, they're a structural match. Applied to all nodes whose name match was inconclusive (score >= 0.4).

### Stage 4: Intra-Node Diff

For each matched scope pair, compare children recursively to detect specific changes:

**Keys in old but not new → potential deprecation.** For each unmatched old key:

1. Check all unmatched new keys (ones in new but not old) for a name match — compute Levenshtein similarity for each pair.
2. If a pair has score < 0.4 → candidate rename (presented in `--review`).
3. If a pair has score >= 0.4 but both have identical structural fingerprints → WARNING (potential replacement with different name and shape).
4. If no pair matches → deprecation with no replacement. Severity depends on the containing scope's fingerprint change: compute the Jaccard similarity between the old and new scope's first-level child key sets. If the similarity is **below 0.8** (more than 20% of child keys changed), the scope itself underwent significant restructuring — severity is `"showstopper"`. Otherwise, the key was simply removed — severity is `"warning"`.

**Keys in new but not old → candidate `new_required_keys`.** For each unmatched new key:

1. Check if the key's value is a fixed constant (same value in every instance of this scope across all files) or variable (different per instance).
2. If fixed → `requirement: "shape"` with `expected_shape` set to the constant value.
3. If variable → `requirement: "presence"` (key must exist but value is context-dependent).

**Scalar values that changed** — `value_changes` with `vanilla_before`/`vanilla_after`. If the key was renamed *and* the value changed, the rename and value change are separate rules.

### Stage 5: Output

All generated rules default to `"reviewed": false`. The migrate engine skips unreviewed rules entirely. The maintainer must run `analyze --review` to confirm each auto-generated rename/deprecation candidate, then set `"reviewed": true` before committing.

### `analyze --review` UX

Interactive terminal session using `rich` for formatted output. For each candidate rename:

```bash
─────────────────────── Candidate Rename #3/12 ───────────────────────
File: common/buildings/00_buildings.txt
  -old: orbital_ring         (line 42)
  +new: orbital_habitat      (line 47)
  Similarity: 0.47 (names differ significantly — structural fingerprint matches)

  Old scope shape:  { modifier, resources, category, base_buildtime }
  New scope shape:  { modifier, resources, category, base_buildtime, orbital_deposit }
  Fingerprint:      MATCH (4/5 keys identical, new key is additive)

  [A]ccept as rename    [R]eject (mark as WARNING)    [S]kip for now
  [E]dit rename target  [?] show full diff
```

The maintainer types a single key. `[E]` opens an inline text input for the new name. `[S]` leaves the rule as `reviewed: false` for later. All decisions are written immediately — the session can be interrupted and resumed.

## Migration Database (`migration_rules.json`)

### Structure

```json
{
  "version_dates": {
    "4.0.0": "<from patches.json>",
    "4.1.0": "<from patches.json>",
    "4.2.0": "<from patches.json>",
    "4.3.0": "<from patches.json>",
    "4.4.0": "<from patches.json>",
    "4.4.6": "<from patches.json>"
  },
  "transitions": {
    "4.0→4.1": {
      "renames": {
        "orbital_ring": {
          "new_name": "orbital_habitat",
          "reviewed": true
        }
      },
      "new_required_keys": [
        {
          "path": "common/buildings/00_buildings.txt",
          "scope": "building_capital",
          "key": "economic_value",
          "requirement": "presence",
          "reviewed": true
        },
        {
          "path": "common/buildings/00_buildings.txt",
          "scope": "building_capital",
          "key": "construction_speed",
          "requirement": "shape",
          "expected_shape": "1.0",
          "reviewed": true
        }
      ],
      "deprecated_keys": [
        {
          "path": "common/component_templates/00_weapons.txt",
          "scope": "component_template",
          "key": "prerequisites",
          "replacement": "required_technology",
          "severity": "info",
          "reviewed": true
        }
      ],
      "value_changes": [
        {
          "path": "common/ship_sizes/00_ship_sizes.txt",
          "scope_path": [{"type": "scope", "name": "corvette"}],
          "key": "max_speed",
          "vanilla_before": 160,
          "vanilla_after": 200,
          "reviewed": true
        }
      ],
      "unresolvable_events": [
        {
          "path": "common/diplomatic_actions/00_actions.txt",
          "event": "file_split",
          "into": [
            "common/diplomatic_actions/01_federations.txt",
            "common/diplomatic_actions/02_galactic_community.txt"
          ],
          "reviewed": true
        },
        {
          "path": "common/buildings/00_buildings.txt",
          "scope": "building_super_fortress",
          "event": "object_removed",
          "reviewed": true
        }
      ]
    }
  }
}
```

### Key Design Decisions

- **`scope_path`**: Ordered list of path segments. `{"type": "scope", "name": "corvette"}` for named scopes, `{"type": "index", "index": 0}` for anonymous blocks and list positions. Fully addresses any nesting structure.
- **`requirement` on `new_required_keys`**:
    - `"presence"`: The key must exist in the scope, but its value is mod-specific. The engine inserts an empty block `{ }` in `.txt` files, preceded by a Paradox comment `# TODO: MIGRATED — verify this value`. Emits a WARNING in the report telling the user to fill the correct value. **Only emitted for `.txt` file rules** — `new_required_keys` do not apply to `.yml` localisation files (localisation doesn't use block syntax).
    - `"shape"`: The key must exist with a specific default value stored in `expected_shape`. The engine inserts this value directly with no warning.
- **`severity` on `deprecated_keys`**: `"info"` means a known replacement exists (auto-fix). `"warning"` means the key is deprecated but no replacement exists. `"showstopper"` means the key was removed as part of a larger structural change.
- **`unresolvable_events`**: Informational records the migrate engine uses to detect and flag SHOWSTOPPERs. They are not transformation rules — they exist solely for issue detection. Every event has a `reviewed` field so the maintainer can mark events as verified. Types: `file_split`, `file_merged`, `object_removed`, `structural_scope_change`.
- **`reviewed`**: Every entry — renames, new_required_keys, deprecated_keys, value_changes, and unresolvable_events — has a `reviewed` boolean. Auto-generated rules default to `false`. The migrate engine skips unreviewed entries entirely.

### Version Dates (`patches.json`)

A separate file checked into the repo, manually curated from the [Paradox Stellaris Patches wiki](https://stellaris.paradoxwikis.com/Patches). Format:

```json
{
  "4.0.0": "2023-05-09",
  "4.1.0": "2023-09-12",
  "4.2.0": "2024-01-23",
  "4.3.0": "2024-06-15",
  "4.4.0": "2025-01-20",
  "4.4.6": "2025-03-14"
}
```

The maintainer updates `patches.json` when a new Stellaris version is released. Fed to `analyze --patches patches.json`.

**Risk**: If the maintainer forgets to update `patches.json`, heuristic version detection (date-based) will be incorrect for mods released after the last known version date. The report includes a note: `dates.json last updated: YYYY-MM-DD` so users can see how stale the date data is.

## Change Categories & Severity Levels

| Level           | Meaning                                                                                                                                                                | Without flag       | With `--apply-dangerous-transformations` |
|-----------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------|------------------------------------------|
| **INFO**        | Deterministic transform (renames, new required keys with `"shape"`, descriptor update, deprecated key with known replacement)                                          | Always applied     | Always applied                           |
| **WARNING**     | Heuristic / requires judgment (value scaling, deprecated key with no replacement, new required key with `"presence"`, structurally similar object with unrelated name) | Advisory in report | Auto-applied                             |
| **SHOWSTOPPER** | Cannot resolve (object removed, file reorganized, structural scope change, unparseable syntax, binary asset incompatibility)                                           | Blocks migration   | Still blocks migration                   |

### WARNING: Semantic Value Changes

When a `value_change` rule exists with `vanilla_before` and `vanilla_after`:

1. **If the mod does NOT override this key**, the rule is silently skipped — no action and no report entry.
2. If the mod's value is a **numeric literal**, compute the ratio `mod_value / vanilla_before`.
2. Suggest updating to `mod_value * (vanilla_after / vanilla_before)`, rounded to 4 decimal places.
3. Report as WARNING (advisory) or auto-apply with `--apply-dangerous-transformations`.

**Not handled by the ratio heuristic**:

- **Variable references** (`@my_custom_speed`): Can't compute a ratio. WARNING: "Value is a variable reference. Cannot determine if scaling is needed. Manually verify."
- **Zero or negative values** (`max_speed = 0`): Ratio is zero, suggestion would be zero. WARNING: "Value is zero or negative. Cannot determine if scaling is needed. Manually verify."
- **Non-numeric values** (strings, blocks, lists): WARNING: "Value type changed in vanilla. Cannot mechanically transform. Manually verify."

In all three cases, the original value is preserved as-is and a WARNING is emitted. The `--apply-dangerous-transformations` flag does NOT auto-apply these.

### WARNING: Candidate Replacement with Unrelated Name

From the matcher: when an object disappears and a structurally similar object appears with a completely different name (score >= 0.4), the migrate engine flags it:

```
WARNING
  Object "building_super_fortress" was removed in 4.3→4.4.0.
  Object "building_mega_bastion" appeared with a structurally similar shape
  (matching fingerprint: 4/5 child keys identical) but an unrelated name
  (similarity: 0.47).
  This may be a rename or an unrelated replacement. Manually verify.
```

## SHOWSTOPPER Categories

1. **Object fully removed, no replacement** — Mod references a deleted game object. Detected via `unresolvable_events[event=object_removed]`.
2. **File reorganized with content overlap** — Vanilla file was split/merged. Detected via `unresolvable_events[event=file_split|file_merged]`.
3. **Structural scope change** — Data model changed in a way that can't be mechanically mapped. Detected via `unresolvable_events[event=structural_scope_change]`.
4. **Unrecognized deprecated key, hard error** — Key was deprecated with `severity: "showstopper"`.
5. **Dependency chain broken** — Mod's declared dependency has no known 4.4.x version.
6. **Unparseable syntax** — Parser encounters Paradox script it can't handle.
7. **Binary asset incompatibility** — Mod ships `.dds`, `.mesh`, `.anim`, or `.asset` files in formats the 4.4 engine rejects.

### Showstopper Behavior

By default, the first SHOWSTOPPER halts migration — no output folder is produced, but a **checkpoint file** (`migration_checkpoint.json`) is written:

```json
{
  "mod_path": "C:/MO2/mods/gigastructures",
  "workshop_id": "1121692237",
  "source_version": "4.2",
  "target_version": "4.4.6",
  "completed_files": [
    "common/buildings/00_buildings.txt",
    "common/megastructures/00_megastructures.txt"
  ],
  "current_transition": "4.3→4.4.0",
  "current_file": "common/scripted_variables/giga_variables.txt",
  "issues_found": [
    {"severity": "WARNING", "file": "...", "line": 15, "message": "..."}
  ]
}
```

Re-running with `--resume migration_checkpoint.json`:
- If `workshop_id` is set in the checkpoint, the tool re-downloads the mod from Steam Workshop before resuming (handles temp directory cleanup between runs).
- If `mod_path` is set with no `workshop_id`, the tool resumes from the local path.
- Resumes from the stored `current_transition` on the stored `current_file`. All `completed_files` are skipped.
- If any completed file or the current file has been modified since the checkpoint was written (mtime changed), that file is re-processed from scratch.

With `--continue-on-showstopper`, SHOWSTOPPERs are logged but the tool continues processing all remaining files. The report collects all issues at once. No migrated mod is produced until the user re-runs with all showstoppers resolved.

## CLI Interface

Built with `typer` + `rich` for colorful help text, progress bars during migration, and syntax-highlighted diffs.

```
stellaris-migrate analyze  [--source VERSIONS_DIR] [--patches PATCHES_JSON]
                           [--output RULES_FILE] [--review]

stellaris-migrate migrate   [--mod-path PATH | --workshop-id ID]
                            [--output-dir PATH]
                            [--target-version 4.4.6]
                            [--dry-run]
                            [--apply-dangerous-transformations]
                            [--continue-on-showstopper]
                            [--resume CHECKPOINT_FILE]
                            [--verbose | --quiet]
                            [--report-format text|json]
                            [--no-color]
```

### Common Flags

| Flag               | Description                                                                                                                                                                                |
|--------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `--verbose` / `-v` | TRACE-level output: per-file progress, AST node counts, rule matches                                                                                                                       |
| `--quiet` / `-q`   | Suppress all output except errors and the final summary                                                                                                                                    |
| `--no-color`       | Disable rich/typer terminal colors (for CI/piped output)                                                                                                                                   |
| `--report-format` | Output report format. `text` prints the human-readable report. `json` prints machine-readable JSON. Both stdout and the report file on disk use the specified format. Unless `--dry-run` is set, a report file is always written alongside the migrated mod. |

### `analyze`

Maintainer-only. Reads the `stellaris_versions/` archive directory, diffs adjacent version pairs using the AST differ, and writes `migration_rules.json`.

| Flag        | Description                                                                                           |
|-------------|-------------------------------------------------------------------------------------------------------|
| `--source`  | Path to `stellaris_versions/` directory (default: `./stellaris_versions`)                             |
| `--patches` | Path to `patches.json` with version release dates (default: `./patches.json`)                         |
| `--output`  | Path to write `migration_rules.json` (default: `./migrator/migration_rules.json`)                     |
| `--review`  | Interactive mode: present all candidate renames below the auto-match threshold for human confirmation |

### `migrate`

End-user mode. Patches a mod and produces a migrated copy.

| Flag                                | Description                                                                                                                                     |
|-------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| `--mod-path`                        | Path to a local MO2 mod folder (mutually exclusive with `--workshop-id`)                                                                        |
| `--workshop-id`                     | Steam Workshop ID. Downloads via SteamCMD to a temp directory, then migrates.                                                                   |
| `--output-dir`                      | Where to write the migrated mod (default: `%LOCALAPPDATA%/ModOrganizer/Stellaris/mods/`)                                                        |
| `--target-version`                  | Target Stellaris version (default: `4.4.6`)                                                                                                     |
| `--dry-run`                         | Parse and analyze only. Prints the report to stdout (format controlled by `--report-format`). No files written to disk, no mod folder produced. |
| `--apply-dangerous-transformations` | Auto-apply WARNING-level changes (except value_changes on variables, zero values, or non-numerics — those remain WARNINGs)                      |
| `--continue-on-showstopper`         | Log showstoppers but continue processing. No output mod produced; report + checkpoint only.                                                     |
| `--resume`                          | Resume from a previous migration checkpoint file. Skips completed files and resumes from the recorded transition + file.                        |

Output folder is named `<sanitized_name> MIGRATED <target_version>`, where `<sanitized_name>` is derived from the `name` field in `descriptor.mod` with invalid Windows path characters (`<`, `>`, `:`, `"`, `/`, `\`, `|`, `?`, `*`) replaced with underscores.

If the output folder already exists, the tool appends a version suffix (`v2`, `v3`, etc.) rather than overwriting. Example: `Gigastructural Engineering MIGRATED 4.4.6 v2`. The tool never overwrites an existing migrated mod.

### MO2 Integration

The tool is packaged as a PyInstaller executable (or `.bat` wrapper calling `python -m migrator`) so it can be added as an MO2 external tool. MO2 provides `%MOD_PATH%` as a variable to external tools, so the user configures the tool as:

```
stellaris-migrate.exe migrate --mod-path "%MOD_PATH%"
```

## Descriptor Update

The `.mod` descriptor is updated during migration:

```
name="Gigastructural Engineering MIGRATED 4.4.6"
supported_version="4.4.*"
```

The `name` field gains the `MIGRATED <version>` suffix to clearly distinguish machine-migrated mods from author-verified mods. The `supported_version` is set to the minor version wildcard of the target (e.g., `4.4.*` for 4.4.6).

If the mod already has `MIGRATED` in its name (re-migration), the suffix is replaced, not duplicated.

**Multiple descriptor files**: Only the root-level `descriptor.mod` is used. If nested `descriptor.mod` files exist (backups, sub-mods), they are ignored with a log message. The migrated mod's root `descriptor.mod` is updated; other descriptor files are copied verbatim.

## Heuristic Version Detection

If `supported_version` is missing from `descriptor.mod`:

1. Check the mod's last-modified timestamp:
   - `--mod-path`: filesystem `mtime` of the mod folder's newest file
   - `--workshop-id`: `time_updated` field from the Steam Workshop API
2. Find the latest Stellaris version released *before* that date using `version_dates`
3. Use that as the assumed source version

Report:

```
WARNING
  No supported_version in descriptor.mod.
  Mod last modified: YYYY-MM-DD.
  Assuming source version: X.Y.Z (released RELEASE_DATE).
  dates.json last updated: YYYY-MM-DD.
  If incorrect, manually set supported_version and re-run.
```

If the date heuristic can't produce a result (mod dated before the earliest known version, or no timestamp available), falls back to SHOWSTOPPER.

## Report System

Two output files are generated alongside the migrated mod (skipped in `--dry-run` mode, which prints to stdout only).

### `migration_report.txt` (human-readable)

```
STELLARIS MOD MIGRATION REPORT
==============================
Mod: Gigastructural Engineering (Workshop ID: 1121692237)
Source version: 4.2 → Target version: 4.4.6
Migration path: 4.2 → 4.3 → 4.4.0 → 4.4.6
Generated: 2026-07-20 14:32:01
Apply dangerous: No
Dry run: Yes

SUMMARY
-------
Applied:     12 changes (would apply)
Warnings:     6 issues
Showstoppers: 0

APPLIED [INFO]
--------------
  common/megastructures/00_megastructures.txt:15  [original source line]
    renamed: "orbital_ring" → "orbital_habitat" (4.3)

  common/megastructures/00_megastructures.txt:89  [original source line]
    added required key: "construction_cap = 1" (new in 4.4.0)

  descriptor.mod:1
    updated descriptor: supported_version "4.2.*" → "4.4.*", name → "Gigastructural Engineering MIGRATED 4.4.6"

WARNINGS
--------
  common/scripted_variables/giga_variables.txt:7  [original source line]
    @giga_construction_speed = 0.15
    Vanilla baseline changed from 0.10 → 0.12 (1.2x) in 4.4.0
    Mod value is 1.5x the old baseline.
    Consider updating to: @giga_construction_speed = 0.18

  common/buildings/giga_buildings.txt:142  [original source line]
    @giga_build_cost = @tier3_multiplier
    Value is a variable reference. Cannot determine if scaling is needed.
    Manually verify.

  common/buildings/giga_buildings.txt:201  [original source line]
    max_speed = 0
    Value is zero. Cannot determine if scaling is needed.
    Manually verify.

  common/buildings/giga_buildings.txt:315  [original source line]
    building_super_fortress was removed in 4.3→4.4.0.
    building_mega_bastion appeared with structurally similar shape
    (matching fingerprint: 4/5 child keys identical) but unrelated name
    (similarity: 0.47).
    This may be a rename or an unrelated replacement. Manually verify.

SHOWSTOPPERS
------------
  (none)
```

All line numbers reference the **original source file**, never the transformed position.

### `migration_report.json` (machine-readable)

Same data, structured. When `--report-format json` is passed, this is printed to stdout instead of the text report.

## Mod Already at Target Version

If the mod's `supported_version` is already at or above the target version, the tool does nothing and reports:

```
Mod is already at or above target version 4.4.6. No migration needed.
```

If `--target-version` specifies a version older than the mod's `supported_version` (downgrade), the tool rejects the operation with an error message. Migration is forward-only.

## Edge Cases

### Non-`.txt` Game Data Files

Stellaris mods contain several file types beyond Paradox `.txt` files. The tool handles them as follows:

| Extension | Directories | Format | Handling |
|-----------|-------------|--------|----------|
| `.txt` | `common/`, `events/`, `map/`, `prescripted_countries/`, root | Paradox key-value blocks | Full AST parsing and migration. All rename, deprecation, value_change rules apply. |
| `.yml` | `localisation/` | ` key:0 "value"` lines | **Rename-only**. The tokenizer skips localization syntax and only applies `renames` rules to quoted string values matching renamed object IDs. Example: ` building_super_fortress:0 "Super Fortress"` → ` building_mega_bastion:0 "Super Fortress"` (key prefix changes, description text preserved). No AST — line-by-line regex with rename table. |
| `.asset` | `gfx/`, `interface/` | Text-based asset definitions | **Not migrated, flagged as WARNING.** `.asset` files may reference renamed textures or shaders, but the format is too varied to safely auto-rename. A WARNING is emitted listing the file so the user can manually check. |
| `.gui`, `.gfx` | `interface/` | Interface layout files | **Not migrated, flagged as WARNING.** May reference renamed UI elements. Same rationale as `.asset`. |
| `.dds`, `.mesh`, `.anim`, `.dae` | any | Binary assets | **SHOWSTOPPER** (category 7). Flagged but not processed. |

`new_required_keys` and `value_changes` rules only apply to `.txt` files — they are not emitted for `.yml` files because localisation format has no block syntax or scalar values.

### Mods with No Game Data Files

If the mod directory contains only `descriptor.mod` and no `.txt` or `.yml` files to migrate, the tool:

1. Updates the descriptor (name + supported_version)
2. Reports: "No game data files to migrate. Descriptor updated."
3. Produces the migrated mod folder with just the updated descriptor.

If the mod has files only in non-standard locations (no `common/`, `events/`, etc.), the tool still processes any `.txt` or `.yml` file it can parse, regardless of directory structure. All `.txt` and `.yml` files in the mod folder are treated as candidates for migration. Unparseable files are skipped with a WARNING.

### Files with `@` variable references or non-numeric values in value_change paths

The ratio heuristic is skipped. Original value preserved. WARNING emitted (see WARNING: Semantic Value Changes section).

### Large files

Files are parsed in-memory. For mods with very large game data files (>50MB), the tool prints a performance warning and may be slow. The user is advised to run with `--verbose` to see per-file progress.

### Symbolic links and junctions

Symlinks and Windows junctions in the mod folder are not followed. They are flagged with a WARNING: "Symbolic link at <path> was not processed. If this file is needed, resolve the link before migrating."

### Encrypted or obfuscated files

If a file contents can't be tokenized (gibberish, binary in a `.txt` file), the parser fails with a SHOWSTOPPER for that file. The user must manually resolve.

## SteamCMD Integration

The `--workshop-id` flag triggers a SteamCMD download. The tool models all failure modes:

| Scenario                                             | Behavior                                                                                                               |
|------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------|
| SteamCMD not on PATH or in common install locations  | Error with install instructions. Exit code 2.                                                                          |
| Not logged in (no cached credentials)                | Error: "Run `steamcmd +login <username>` first to cache credentials, then retry." Exit code 3.                         |
| Workshop ID not found / private / deleted            | Error: "Workshop item not found or is private." Exit code 4.                                                           |
| Download succeeds but `descriptor.mod` is missing    | Error: "Download appeared to succeed but no mod descriptor found. The mod may use a non-standard layout." Exit code 5. |
| Rate limited (HTTP 429 or SteamCMD cooldown message) | Warn: "Steam is rate-limiting downloads. Wait N minutes and retry." Exit code 6.                                       |

SteamCMD is detected via `shutil.which("steamcmd")` on Windows, checking both `steamcmd.exe` on PATH and common install locations: `C:\steamcmd\steamcmd.exe`, `%PROGRAMFILES(X86)%\Steam\steamcmd\steamcmd.exe`.

The download uses `workshop_download_item 281990 <ID>` (281990 is the Stellaris Steam App ID). The tool polls SteamCMD's output to detect completion.

## Error Handling

- **Encoding**: Stellaris files are UTF-8 (sometimes with BOM). Parser handles BOM stripping, emits UTF-8 with BOM if the source had one. Non-UTF-8 files are flagged as SHOWSTOPPER.
- **Mod adds new files referencing renamed objects**: Rename rules are global, not scoped to vanilla-origin files. If `building_foo` is renamed in the rules and a mod's custom file references `building_foo`, the rename is applied.
- **Unknown mod descriptor format**: If `descriptor.mod` is unparseable, treated as SHOWSTOPPER.
- **Re-entrant safety**: `--dry-run` never mutates the source mod. Checkpoint resumes re-read source files if mtimes changed.

## Testing Strategy

Tests use `pytest`. Fixture files are hand-crafted Paradox script fragments.

```bash
tests/
├── fixtures/
│   ├── mod_4.0/                   # Small mod at version 4.0 (descriptor + data files)
│   │   ├── descriptor.mod
│   │   └── common/buildings/test_buildings.txt
│   ├── mod_4.2/                   # Same concept, version 4.2
│   ├── vanilla_4.2/               # Minimal vanilla game trees for differ & matcher tests
│   │   └── common/
│   │       ├── buildings/00_buildings.txt
│   │       ├── ship_sizes/00_ship_sizes.txt
│   │       └── component_templates/00_weapons.txt
│   └── vanilla_4.3/               # Same files, with known changes applied
├── test_parser.py                 # Tokenizer + AST round-trip fidelity
├── test_matcher.py                # Structural node matching (renames, splits, fingerprint)
├── test_differ.py                 # Full analyze pipeline: matched ASTs → correct rules
├── test_engine.py                 # Chained migration across all version jumps
├── test_engine_checkpoint.py      # Checkpoint/resume behavior
├── test_reporter.py               # Report format correctness (txt + json)
├── test_steamcmd.py               # SteamCMD detection, error paths (mocked subprocess)
├── test_cli.py                    # End-to-end CLI (dry-run, flags, exit codes)
└── test_edge_cases.py             # Variable references, zero values, no game data, symlinks
```

### Test Coverage

- **Parser**: Every syntax construct, round-trip fidelity within normalization bounds
- **Matcher**: Exact name matches (auto), fuzzy name matches (candidate), structural fingerprint matching, candidate replacement with unrelated name
- **Differ**: Full `analyze` pipeline on controlled fixture trees producing expected renames, deprecations, value changes, and unresolvable events
- **Engine**: Fixture mods at each version, migrated with and without `--apply-dangerous-transformations`, `--dry-run`, `--continue-on-showstopper`. Output mods and reports compared to expected files.
- **Checkpoint**: Interrupted migration produces valid JSON checkpoint; `--resume` correctly skips completed files with mtime validation
- **Edge cases**: Variable references in value paths, zero/negative values, mods with no game data files, multiple `descriptor.mod` files, symbolic links, non-standard directory layouts, missing `supported_version` with heuristic fallback
- **End-to-end**: Toy mod exercising all change categories through the full pipeline, both modes
- **SteamCMD**: Unit tests mock `subprocess.run` for all five error paths plus success path

No network, no Steam, no game install required for tests.

## Project Placement

The `migrator/` package lives inside this repository alongside the existing MkDocs site, scripts, and modlist documentation. The modlist guide is the primary consumer of this tool.

## Dependencies & Python Version

**Python 3.12+ required.** Uses modern typing syntax (`type Foo = ...`, `X | Y` unions), `pathlib` improvements, and `tomllib` (stdlib since 3.11).

### Runtime Dependencies

| Package    | Purpose                                                                                                                              |
|------------|--------------------------------------------------------------------------------------------------------------------------------------|
| `typer`    | CLI framework (built on `click`). Rich help text, colors, progress bars, shell completion.                                           |
| `rich`     | Terminal formatting: colored output, tables, progress bars, live-updating status, syntax-highlighted diffs. Integrated with `typer`. |
| `loguru`   | Structured logging with colors, file rotation, and `TRACE` level for parser debugging.                                               |
| `pydantic` | Schema validation for `migration_rules.json`. Catches malformed rules at load time.                                                  |

All pinned with exact versions in `requirements.txt`.

### Dev Dependencies

| Package       | Purpose                                     |
|---------------|---------------------------------------------|
| `pytest`      | Test runner                                 |
| `pytest-rich` | Rich-formatted test output                  |
| `pyinstaller` | Freeze into standalone `.exe` for MO2 users |

### Maintainer-Provided

| File                  | Purpose                                                                 |
|-----------------------|-------------------------------------------------------------------------|
| `patches.json`        | Curated version release dates from the Paradox Wiki. Checked into repo. |
| `stellaris_versions/` | Game data archive (gitignored). Staged before running `analyze`.        |

**Risk**: `patches.json` is a single point of failure for heuristic version detection. If not updated when a new version releases, date-based guessing will be wrong for newer mods. The report includes `dates.json last updated:` so users can gauge staleness.

### User-Provided

| Tool       | Purpose                                                                                       |
|------------|-----------------------------------------------------------------------------------------------|
| `SteamCMD` | Required only with `--workshop-id`. Detected on PATH or the tool prints install instructions. |
