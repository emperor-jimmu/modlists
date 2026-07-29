# College of Winterhold — Design Spec

**Date:** 2026-07-06
**Status:** Approved
**Sections:** `World Content` (08) — Overhauls + Quests

## Purpose

Give the College of Winterhold the depth it deserves in Elder Wilds. Vanilla Skyrim's College is the most criticized faction: 3 students, no meaningful entry requirements, and you can speedrun to Arch-Mage having cast two spells. A modlist built around "modern mechanics" and "lots of new content" needs the College to feel like an actual magical academy with earned progression.

## Current State

The modlist has almost no College coverage:

- **COTN Winterhold** — Owns the ruined town exterior, not the College interior or bridge
- **FDE - Brelyna Maryon** — Adds 400+ lines of College apprentice dialogue (NPC layer)
- **Mysticism + Adamant** — Magic/perk baseline, College-agnostic

This is a gap. The College questline is one of Elder Wilds' five main faction arcs and deserves a coordinated sub-stack.

## Design Decisions

| Decision          | Choice                                                              | Rationale                                                                                                |
|-------------------|---------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------|
| Scope             | Balanced split: architecture + questline + population               | Full coverage without monolithic patch debt                                                              |
| Quest philosophy  | Walled garden: magic-skill gates required for entry and advancement | Fits "modern mechanics" pillar; a warrior shouldn't become Arch-Mage                                     |
| Architecture tone | Vanilla-faithful Nordic expansion                                   | Obscure's design philosophy ("keep it Nordic, never contradict vanilla") fits the grim-dark presentation |
| NPCs              | Yes, additional students/guards                                     | Makes the College feel populated; share-author with architecture mod                                     |
| Curriculum mod    | Rejected                                                            | Quest Expansion's 7 built-in lessons already fill the "attend class" need                                |

## Core Stack

Three mods, two authors, zero known inter-mod conflicts:

### 1. Obscure's College of Winterhold — Architecture

- **Nexus:** [20514](https://www.nexusmods.com/skyrimspecialedition/mods/20514)
- **Author:** SomethingObscure
- **Version:** 1.6.1 (last updated April 2020)
- **Endorsements:** 16K+
- **Requirements:** USSEP only
- **What it does:** Rebuilds Hall of the Elements as a lecture hall with practice stations and spectral sparring partner. Multi-story Arcanaeum with rank-locked private collection. Configurable Arch-Mage quarters (laboratory, office, council chamber, secret archive, spa). NPC tracking via room plaques. Student rank progression tied to personal quests. Arch-Mage garden with transformable room. FOMOD installer with ~50 built-in patches.

### 2. Immersive College NPCs — Population

- **Nexus:** [9252](https://www.nexusmods.com/skyrimspecialedition/mods/9252)
- **Author:** grantyboy050 / SomethingObscure (co-author)
- **Version:** 1.1.02, ESL-flagged
- **Endorsements:** 14K+
- **Requirements:** None (vanilla assets only)
- **What it does:** Adds students, guards, and Saarthal excavation workers to the College. All have schedules, patrols, and idle markers. No cell edits, no navmesh edits, no script overhead. Explicitly designed to pair with Obscure's College (integration patch included in Obscure's FOMOD).

### 3. College of Winterhold - Quest Expansion — Questline

- **Nexus:** [66666](https://www.nexusmods.com/skyrimspecialedition/mods/66666)
- **Author:** jayserpa
- **Version:** 1.15 (last updated April 2025), ESL-flagged
- **Endorsements:** 14K+
- **Requirements:** AE fishing addon (included in 1.6.1170)
- **What it does:** Faralda tests your magic ability before entry (skill-gated). 7 starter lessons/quests before Saarthal unlocks. Alternate main-quest route (access Saarthal without joining the College). Branching dialogue with Tolfdir, Mirabelle, Ancano, and others. Explicitly compatible with Obscure's College and Immersive College NPCs — no patches needed.

## Compatibility & Patch Surface

### Verified Compatible (no patches needed)

- Obscure's College ↔ Quest Expansion (jayserpa confirms)
- Obscure's College ↔ Immersive College NPCs (integration patch in Obscure's FOMOD, same co-author)
- Immersive College NPCs ↔ Quest Expansion (NPC-add mod with no cell edits)
- Quest Expansion ↔ nearly everything (ESL-flagged, touches minimal records)

### Patches Needed (3 items to verify before locking)

| Conflict                                | Status                                                                                                                                                                                                                                                                   |
|-----------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Obscure's College ↔ COTN Winterhold** | Obscure's FOMOD includes patches for The Great City of Winterhold (17127), not COTN (40088). The bridge approach and cliff exterior cells may overlap. Verify whether a third-party COTN patch exists or whether the cell edits are disjoint enough to load without one. |
| **Obscure's College ↔ CS-native lighting** | Obscure's compat guide predates CS Light/True Light/WSU. ELFX and ELE patches exist in the FOMOD but CS-native template/light records may conflict. OCW Meshes Optimized and Merged for CS ([139165](https://www.nexusmods.com/skyrimspecialedition/mods/139165)) merges architecture meshes for Light Limit Fix. Verify CS Light + True Light bulb placement works correctly in OCW cells. |
| **Obscure's College ↔ LOTD**            | Not in the LOTD official patch hub (30980) FOMOD list. Verify whether a third-party patch exists for museum display integration around Obscure's unique items (private collection key, room plaques, etc.).                                                              |

### Anticipated But Low-Risk

| Conflict                                             | Mitigation                                                                                                                                                                                                                                             |
|------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Immersive College NPCs ↔ NPC appearance overhaul** | Facegen records. ICN adds new NPCs with their own face data. Load ICN after Northbourne NPCs / any appearance mod. Blackface risk is limited to the new NPCs ICN introduces, and ICN's v1.1.0+ regenerated facegen at 512 resolution — modern quality. |
| **Obscure's College ↔ AI Overhaul SSE**              | AI Overhaul edits College NPC schedules. Obscure's edits ranking and some AI packages. Load order matters — Obscure's CellSettings.esp loads late per author recommendation.                                                                           |
| **Quest Expansion ↔ FDE Brelyna Maryon**             | Brelyna is a key Quest Expansion NPC. FDE Brelyna adds dialogue. Both are ESL-flagged. Test for dialogue overlap (both mods touch Brelyna's conversation tree).                                                                                        |

## Ownership & Load Order Placement

### Section Placement

All three mods belong under `World Content` (section 08):

- Obscure's College + Immersive College NPCs → `World Content - Overhauls`
- Quest Expansion → `World Content - Quests`

### Recommended Load Order Block

```md
[World Content - Overhauls]
  ...
  Obscure's College of Winterhold (20514)
  OCW patches (from FOMOD)
  Immersive College NPCs (9252)
  ...

[World Content - Quests]
  ...
  College of Winterhold - Quest Expansion (66666)
  ...
```

Obscure's author recommends: main plugin early, patches after mods they patch, CellSettings.esp near the bottom (before Realistic Water 2 / DynDOLOD).

### Plugin Count

- Obscure's College: 1 main ESP + 1 CellSettings ESP + FOMOD patches (ESL-flagged) = ~3-4 plugins
- Immersive College NPCs: 1 ESP-FE
- Quest Expansion: 1 ESL-flagged ESP
- **Total:** ~5-6 plugins, all light

## Acceptance Criteria

- [ ] Faralda's entry test gates College access behind actual magic skill — non-mage characters are turned away
- [ ] 7 starter lessons fire correctly and Saarthal only unlocks after completion
- [ ] Obscure's rebuilt interiors (Hall of the Elements, Arcanaeum, Arch-Mage quarters) render without navmesh issues
- [ ] Spectral sparring partner works and NPCs watch from a safe distance
- [ ] Immersive College NPCs students/guards patrol and use idle markers without stacking on top of vanilla NPCs
- [ ] Rank progression gates work: Arch-Mage is earned, not rushed
- [ ] COTN Winterhold town exterior and Obscure's College bridge/cliff cells do not visibly conflict (seams, floating objects, broken navmesh)
- [ ] CS-native lighting (CS Light + True Light + WSU) in Obscure's interior cells does not produce black faces, missing light sources, or blown-out rooms
- [ ] LOTD museum displays correctly handle any unique items introduced by this stack
- [ ] All three mods function correctly in third-person with gamepad — no interaction requires first-person or keyboard/mouse

## Risks

1. **Obscure's age** — Last updated April 2020. Architecture mods age better than script-heavy ones (no SKSE dependency, just USSEP), but 1.6.1170 may expose dormant issues. Mitigation: Obscure's is in 102+ other mods and actively used in major modlists — community testing is deep.
2. **COTN bridge overlap** — If COTN Winterhold and Obscure's College touch the same cells near the bridge and cliff, a patch is mandatory. If they don't overlap (COTN stays in the ruined town, Obscure's stays on the College rock), no patch needed. Verify in xEdit.
3. **CS-native lighting patch gap** — No CS Light/True Light/WSU patches exist in Obscure's FOMOD. OCW's CellSettings.esp will need xEdit verification to ensure CS Light + True Light's exterior bulbs and interior templates apply correctly. The OCW Meshes Optimized and Merged for CS patch ([139165](https://www.nexusmods.com/skyrimspecialedition/mods/139165)) handles mesh-level drawcall reduction for Light Limit Fix.
4. **Quest Expansion + FDE Brelyna** — Both touch Brelyna's dialogue tree. Overlap may cause dialogue skipping or doubled lines. Test during playtesting.

## Deferred Decisions

- **Bibliophile's Arcanaeum** (26772) — Library borrowing system. Designed to pair with Obscure's. Evaluate after core stack is stable.
- **Choose Your Own Arch-Mage** (30887) — Let another NPC become Arch-Mage. Niche feature; evaluate if playtesters request non-mage College paths.
- **Finding Velehk Sain** (19815) — Obscure's companion quest expansion. Evaluate with other quest additions.
- **Misc. College of Winterhold Tweaks** (22653) — Obscure's companion QoL mod. Evaluate after core stack settles.

## Research Tasks

- [ ] Verify Obscure's ↔ COTN Winterhold patch exists or cells are disjoint (xEdit check)
- [ ] Verify Obscure's ↔ CS-native lighting compatibility (CS Light + True Light + WSU) and OCW Meshes Optimized and Merged for CS patch
- [ ] Verify Obscure's ↔ LOTD patch exists (third-party or via LOTD patch hub)
- [ ] Check r/skyrimmods for current community sentiment on Obscure's College + Quest Expansion stack on 1.6.1170
- [ ] Test Quest Expansion + FDE Brelyna Maryon for dialogue overlap
