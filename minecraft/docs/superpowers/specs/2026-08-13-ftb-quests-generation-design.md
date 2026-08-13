# FTB Quests Automated Generation — Design

**Status**: Design — approved (pending spec review)
**Date**: 2026-08-13
**Scope**: Automated generation of FTB Quests chapter files (SNBT); pilot = Mekanism chapter.

## Context

FTB Quests content in this pack was previously authored through the in-game editor. That content was removed (commit `e34de5e` "removed old FTB content") to be re-authored via automated generation.

The quest **content** — chapter layout, milestone/breadcrumb lists, per-quest titles/tasks/rewards/dependencies, and reward philosophy — is already fully specified in two prior docs and is reused as the **foundation**:

- `docs/superpowers/specs/2026-07-27-ftb-quests-design.md` — chapter layout, milestone/breadcrumb lists, reward philosophy.
- `docs/superpowers/plans/2026-07-27-ftb-quests-implementation.md` — per-quest titles, descriptions, task items, rewards, dependencies.

This spec defines the **generation pipeline** that converts that content into loadable files, plus the **verify loop** that satisfies the "generate → re-check → fix until certain" requirement.

One content change is in scope: the July pacing assumes a modded-Minecraft veteran. It is **re-granularized** here for a first-time player — see "Progression style" below.

## Decisions

| Area | Decision |
|---|---|
| Approach | Data-driven generator + validator script (not hand-typed SNBT, not in-game editor) |
| Content source | July design + implementation docs — reused as the foundation, re-granularized per "Progression style" |
| Progression style | **Newbie-first.** Each quest is one small, concrete step for a player who has never used the mod. The chapter forms a strict linear chain — every milestone depends on exactly the previous one, and each description names the next step. Multi-item processes are split into one-quest-per-step; no quest requires detecting several unfamiliar items at once. Breadcrumbs (optional side-quests) are gated behind the first milestone of their phase so exactly one quest is unlocked at start. |
| Output format | New per-chapter layout: `config/ftbquests/quests/chapters/<id>.snbt`, plus `chapter_groups.snbt` and `data.snbt`. The old `quests.snbt` / `rewards.snbt` format is superseded in this pack's FTB Quests version. |
| Format ground truth | `20008000.snbt` (CC:Tweaked chapter) recovered from git history, plus the MineColonies Questline mod's shipped `minecolonies.snbt` (authoritative task/reward shapes) |
| Reward philosophy | Unchanged from July spec: XP levels + phase-scaled consumable materials; no placement/utility blocks; no gated items. With slower pacing, each reward is usable in the **immediately next** quest. |
| Task types | `item` (obtain) as primary — use real item detection wherever a real item exists. `checkmark` only for pure-knowledge quests with no detectable item. |
| Reward types (pilot) | `xp_levels`, `item` |
| Scope | Pilot = Mekanism chapter only. Field Guide lore deferred (separate follow-up). MineColonies Questline untouched (the mod self-generates its chapters). |
| Rollout | Pilot one chapter → validate end-to-end → scale to Create, AE2, Apotheosis, Stellaris |

## SNBT format (proven ground truth)

From the recovered `20008000.snbt`. The pack's `.snbt` is JSON-compatible (double-quoted keys, commas, arrays/objects). Every `id` is an 8-character hex string.

**Chapter object:**

```json
{
  "id": "20008000",
  "group": "20000001",
  "order_index": 7,
  "title": "Programmable Computers",
  "subtitle": "Write Lua programs to automate your world",
  "icon": "computercraft:computer_normal",
  "default_quest_shape": "square",
  "quests": [ /* quest objects */ ]
}
```

**Quest object:**

```json
{
  "id": "20008001",
  "title": "Build a Computer",
  "subtitle": "Craft and boot your first computer",
  "description": [ "line one", "line two" ],
  "icon": "computercraft:computer_normal",
  "x": 0, "y": 0,
  "shape": "square",
  "dependencies": [ "20008001" ],
  "tasks": [ /* task objects */ ],
  "rewards": [ /* reward objects */ ],
  "optional": false
}
```

**Item task:**

```json
{ "id": "20008002", "type": "item", "item": { "count": 1, "id": "computercraft:computer_normal" } }
```

**Rewards:**

```json
{ "id": "20008003", "type": "xp_levels", "xp_levels": 3 }
{ "id": "20008006", "type": "item", "count": 16, "item": { "count": 1, "id": "minecraft:redstone" } }
```

**Group (`chapter_groups.snbt`):**

```json
{ "chapter_groups": [ { "id": "20000001", "title": "Main", "order_index": 0 } ] }
```

**Global settings (`data.snbt`):** `{ "version": 1, "default_reward_team": false, ... }` — emitted once, unchanged.

## Content authoring rules (learned from the pilot)

Discovered via in-game testing and study of the MineColonies Questline's shipped `minecolonies.snbt`. Treat as hard rules for every future chapter:

1. **Item tasks/rewards use a nested ItemStack** — `"item": { "count": N, "id": "modid:itemid" }`, never a flat `"item": "modid:itemid"` string. A flat string renders the quest *icon* but breaks item *detection*.
2. **Text must be ASCII-only.** Em dashes (`—`, U+2014) render as their codepoint `2014` in-game. Use plain hyphens; avoid smart quotes, arrows, and other non-ASCII characters.
3. **Prefer item detection over checkmark tasks.** A checkmark has no "real completion" and feels arbitrary. Use an `item` task wherever the goal is a real obtainable item; a checkmark is never used — its grey-checkmark icon reads as a broken quest.
4. **Verify every item ID against the mod's own registry** (its `en_us.json` lang file), not web-search summaries — the search confidently reported the wrong Speed Upgrade ID (`speed_upgrade` vs the real `upgrade_speed`).
5. **Ampersands are formatting-code markers.** `&` followed by whitespace throws "you must escape whitespace after & with \&". Write "and" instead of `&` in all quest text (titles, subtitles, descriptions).

## Generator design

- **Input**: quest definitions as structured data (one record per quest), sourced from the July implementation doc and **re-granularized per "Progression style"** — multi-item milestones split into single-step quests, descriptions rewritten to name the next step (title, subtitle, description lines, task item + count, rewards, dependencies, shape, grid x/y).
- **Emit**: `.snbt` files in the proven JSON-compatible style above — one chapter file per chapter, plus `chapter_groups.snbt` and `data.snbt`.
- **ID assignment**: the generator maintains a global registry. Each chapter gets a reserved 8-hex base ID; quests/tasks/rewards increment from it. The registry guarantees uniqueness and explicitly avoids the regenerating MineColonies chapter IDs (`20002099`, `200020E1`, `20000077`, `200000F5`, `2000205B`) and the removed CC:Tweaked block (`20008000`).
- **Layout**: x/y follow the July grid convention — Phase 1 milestones at x=0.0, Phase 1 breadcrumbs at x=1.5, Phase 2 milestones x=3.0, Phase 2 breadcrumbs x=4.5, Phase 3 milestones x=6.0, Phase 3 breadcrumbs x=7.5; y increments per quest in dependency order.
- **Shapes**: milestones = `hexagon`, breadcrumbs = `square` (per July spec).

## Validator + verify loop

The generator output must pass these checks in order, and any failure is fixed at source and regenerated:

1. **Parse** — output is valid JSON (and therefore loadable SNBT).
2. **Uniqueness** — every `id` (chapters, quests, tasks, rewards, groups) is globally unique.
3. **Reference closure** — every `dependencies[]` entry and every `group` resolves to an existing ID.
4. **Completeness** — every quest has the required fields; no empty `tasks`/`rewards` where the July spec requires them; `title`/`icon` present.
5. **Item IDs** — every `item` field matches a known item ID from the pack's mods (sourced from the July doc's item references + Mekanism registry). Any unresolved ID is surfaced and must be confirmed before the file is considered valid.
6. **In-game checkpoint (human, required)** — place the files, run `/ftbquests reload`, confirm zero parse errors, quests render with correct shape/icon/dependency arrows, and one quest is actually completable in survival. This is the final arbiter for item-ID correctness, which static validation cannot fully prove.

## Success criteria (pilot)

- Mekanism chapter loads with no parse errors after `/ftbquests reload`.
- All quests render with correct shapes, icons, and dependency arrows.
- A fresh survival world can complete the Power Generation → Basic Metallurgy → Ore Doubling chain through item detection alone.
- The chain is strictly linear for a newbie — each quest's description names the next step, and no milestone requires detecting more than one unfamiliar item at once.
- The validator passes checks 1–5 on the committed output.

## Out of scope

- Field Guide lore (separate follow-up).
- Non-Mekanism chapters (Create, AE2, Apotheosis, Stellaris) — after the pilot.
- Removing or replacing the MineColonies Questline mod.

## Chapter size

Resolved by "Progression style": the July 33 quests (20 milestones + 13 breadcrumbs) are re-granularized into smaller, linear steps. Multi-item milestones split into one-quest-per-step, so the Mekanism chapter will have **more than 33 quests**; the exact count emerges during planning when the July milestones are split. The pilot targets the **full re-granularized chapter**, not milestones-only.
