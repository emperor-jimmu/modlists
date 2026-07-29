# College of Winterhold Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Integrate the College of Winterhold sub-stack (Obscure's College, Immersive College NPCs, Quest Expansion) into the `World Content` section of the modlist and verify patch coverage.

**Architecture:** Three mods slotted into existing separators — architecture + population under `World Content - Overhauls`, questline under `World Content - Quests`. No new separators needed. Three patch unknowns (COTN, CS-native lighting, LOTD) require Nexus/Reddit research before locking.

**Tech Stack:** Markdown editing, Nexus Mods verification, Reddit community research, xEdit conflict checking (manual, not automated).

---

### Task 1: Verify patch coverage for the three unknowns

**Files researched (read-only):**

- Nexus Mods search for COTN Winterhold + Obscure's College patches
- Nexus Mods search for CS Light/True Light + Obscure's College patches
- LOTD Official Patch Hub (30980) FOMOD contents for Obscure's College

- [ ] **Step 1: Search for COTN Winterhold + Obscure's College patch**

Search Nexus Mods and r/skyrimmods for a patch connecting Cities of the North - Winterhold (40088) and Obscure's College of Winterhold (20514). Check whether the two mods' cell edits overlap (xEdit comparison). If no patch exists and cells are disjoint, document as "no patch needed — cells do not overlap." If cells overlap and no patch exists, flag as a blocker.

Record findings in Task 4's edit.

- [ ] **Step 2: Search for CS-native lighting + Obscure's College patch**

Search Nexus Mods for a CS Light, True Light, or WSU patch for Obscure's College. Also check for OCW Meshes Optimized and Merged for Community Shaders ([139165](https://www.nexusmods.com/skyrimspecialedition/mods/139165)). If no CS-native lighting patch exists, flag for manual xEdit light record verification (CS Light + True Light exterior bulbs, interior template forwarding, OCW CellSettings.esp compatibility).

Record findings in Task 4's edit.

- [ ] **Step 3: Search for LOTD + Obscure's College patch**

Check the LOTD Official Patch Hub (30980) FOMOD installer contents for an Obscure's College entry. Also search Nexus Mods for third-party "LOTD Obscure College" patches. If found, note the Nexus ID or the FOMOD toggle name. If not found, document that LOTD display integration gaps exist for Obscure's unique items (private collection key, room plaques).

Record findings in Task 4's edit.

- [ ] **Step 4: Check r/skyrimmods for community signal**

Search r/skyrimmods for threads discussing Obscure's College + Quest Expansion stack on 1.6.1170. Look for known issues with these three mods together. Document any discovered issues.

Record findings in Task 4's edit.

---

### Task 2: Add College of Winterhold subsection to modlist-world-content.md

**Files:**

- Modify: `modlist-world-content.md`

Insert a new subsection between `Cities, Towns, And Villages` and `Inns, Farms, And Small Settlements` (or after `Cities, Towns, And Villages` if more appropriate). The College is a faction overhaul, not a settlement, but it lives under `World Content - Overhauls` because it's a location/content overhaul.

Actually, the College is a distinct category from cities/towns — it's a faction location overhaul. Place it as its own subsection at the same heading level, after `Cities, Towns, And Villages` and before `Inns, Farms, And Small Settlements`.

- [ ] **Step 1: Insert the College of Winterhold subsection**

Insert after line 55 (after the Notes block of `Cities, Towns, And Villages`) and before line 57 (`Inns, Farms, And Small Settlements`):

```markdown
## College of Winterhold → `World Content - Overhauls` / `World Content - Quests`

This subsection owns the full College of Winterhold faction-location improvement: architecture and interiors, student-and-faculty population, and the questline/skill-gate layer that turns the College into an earned progression rather than a speedrun. It is a coordinated three-mod sub-stack designed to work together without inter-mod patches.

### Baseline

- **Obscure's College of Winterhold** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/20514)) — Architecture baseline. Rebuilds the Hall of the Elements as a lecture hall with practice stations and a spectral sparring partner. Adds a multi-story Arcanaeum with a rank-locked private collection. Configurable Arch-Mage quarters (laboratory, office, council chamber, archive, spa). Student rank progression tied to personal quests. FOMOD installer with ~50 built-in patches. Requires USSEP. → `World Content - Overhauls`
- **Immersive College NPCs** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/9252)) — Population companion. Adds students, guards, and Saarthal excavation workers with schedules, patrols, and idle markers. ESL-flagged, vanilla assets only, no cell edits. Co-authored by SomethingObscure (same author as Obscure's College). Integration patch included in Obscure's FOMOD. → `World Content - Overhauls`
- **College of Winterhold - Quest Expansion** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/66666)) — Questline baseline. Adds skill-gated entry (Faralda tests magic ability), 7 starter lessons/quests before Saarthal unlocks, branching dialogue with College NPCs, and an alternate main-quest route (access Saarthal without joining). ESL-flagged, by jayserpa. Explicitly compatible with Obscure's College and Immersive College NPCs — no patches needed. → `World Content - Quests`

### Alternatives

- **Magical College of Winterhold** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/1539)) — Cleaner fantasy aesthetic alternative. Lighter patch surface but less Nordic in tone — weaker fit for the grim-dark presentation pillar. → `World Content - Overhauls`
- **Immersive College of Winterhold** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/17004)) — Comprehensive alternative (architecture + NPCs + crafting + underground). Last updated December 2020 — unmaintained for 4+ years. Heavier patch debt with COTN and LOTD. → `World Content - Overhauls`
- Questline-only: skip architecture mods, use **College of Winterhold - Quest Expansion** alone. Lowest patch overhead, College interior stays vanilla. Valid fallback if patch unknowns become blockers. → `World Content - Quests`

### Risks & Compatibility

- **Obscure's College ↔ COTN Winterhold:** Obscure's FOMOD patches The Great City of Winterhold (17127), not COTN (40088). [PATCH STATUS TBD from Task 1]. If cells overlap at the bridge/cliff and no patch exists, manual navmesh reconciliation is needed.
- **Obscure's College ↔ CS-native lighting:** Obscure's compat guide predates CS Light/True Light/WSU. ELFX patch exists in FOMOD. [PATCH STATUS TBD from Task 1]. If no CS-native lighting patch exists, Obscure's CellSettings.esp light records will need manual xEdit verification. The OCW Meshes Optimized and Merged for CS patch ([139165](https://www.nexusmods.com/skyrimspecialedition/mods/139165)) handles mesh-level drawcall reduction.
- **Obscure's College ↔ LOTD:** [PATCH STATUS TBD from Task 1]. Obscure's unique items (private collection key, room plaque system) may lack museum display integration without a patch.
- **Immersive College NPCs ↔ NPC appearance overhaul:** ICN adds new NPCs with their own facegen. Load ICN after any broad NPC appearance mod (Northbourne, etc.) to avoid facegen/blackface issues on vanilla College NPCs.
- **Quest Expansion ↔ FDE Brelyna Maryon:** Both touch Brelyna's dialogue tree. Test for overlap during playtesting.
- Obscure's College last updated April 2020 — architecture mods age better than script-heavy ones (no SKSE dependency, USSEP only), but 1.6.1170 behavior should be verified during playtesting. Community testing is deep (102+ mods reference it).
- Obscure's CellSettings.esp must load late in the load order per author recommendation (before Realistic Water 2 / DynDOLOD).
```

- [ ] **Step 2: Commit**

```bash
git add modlist-world-content.md
git commit -m "feat: add College of Winterhold subsection (Obscure's + ICN + Quest Expansion)"
```

---

### Task 3: Add LOTD patch reference if patch exists

**Files:**

- Modify: `modlist-lotd.md`

Only if Task 1 Step 3 found a LOTD patch. If no patch exists, skip this task.

- [ ] **Step 1: Add Obscure's College to LOTD Supported Content list**

In `modlist-lotd.md`, under `## Supported Content → Quest Mods With Strong LoTD Integration`, append after the last entry (around line 60):

```markdown
- **Obscure's College of Winterhold** — [PATCH STATUS: if third-party patch found, note Nexus ID]. Display integration for the private collection and unique College items.
```

If the patch is in the official LOTD FOMOD, add to the `## Patch Strategy` subsection instead as a confirmed official patch:

```markdown
- Enable the **Obscure's College of Winterhold** patch from the official LOTD FOMOD. It resolves display records for the private collection and unique College items.
```

- [ ] **Step 2: Commit**

```bash
git add modlist-lotd.md
git commit -m "feat: add Obscure's College LOTD patch reference"
```

---

### Task 4: Update patch status placeholders with research findings

**Files:**

- Modify: `modlist-world-content.md`

After Task 1 research is complete, update the three `[PATCH STATUS TBD from Task 1]` placeholders in the College subsection with actual findings.

- [ ] **Step 1: Replace COTN patch placeholder**

Find the line:

```
- **Obscure's College ↔ COTN Winterhold:** Obscure's FOMOD patches The Great City of Winterhold (17127), not COTN (40088). [PATCH STATUS TBD from Task 1]. If cells overlap at the bridge/cliff and no patch exists, manual navmesh reconciliation is needed.
```

Replace with the actual finding. Example formats:

If patch exists: `→ Patch: [Nexus ID](URL). Installs via Obscure's FOMOD / standalone.`

If no patch needed: `→ Cells do not overlap — COTN Winterhold stops at the ruined town, Obscure's College starts at the bridge. No patch needed.`

If blocker: `→ ⚠️ Cells overlap at the bridge approach and no patch exists. Flagged as pre-lock blocker — manual navmesh fix required.`

- [ ] **Step 2: Replace CS-native lighting patch placeholder**

Find the line:

```
- **Obscure's College ↔ CS-native lighting:** Obscure's compat guide predates CS Light/True Light/WSU. ELFX patch exists in FOMOD. [PATCH STATUS TBD from Task 1]. If no CS-native lighting patch exists, Obscure's CellSettings.esp light records will need manual xEdit verification. The OCW Meshes Optimized and Merged for CS patch ([139165](https://www.nexusmods.com/skyrimspecialedition/mods/139165)) handles mesh-level drawcall reduction.
```

Replace with actual finding.

- [ ] **Step 3: Replace LOTD patch placeholder**

Find the line:

```
- **Obscure's College ↔ LOTD:** [PATCH STATUS TBD from Task 1]. Obscure's unique items (private collection key, room plaque system) may lack museum display integration without a patch.
```

Replace with actual finding.

- [ ] **Step 4: Add community signal note if relevant**

If Task 1 Step 4 found relevant community discussion, append a note:

```markdown
### Notes

- r/skyrimmods community signal as of [DATE]: [summary of findings — known issues, praise, load order tips].
```

- [ ] **Step 5: Commit**

```bash
git add modlist-world-content.md
git commit -m "feat: update College of Winterhold patch status with research findings"
```

---

### Task 5: Final review and cross-section consistency check

**Files reviewed (read-only):**

- `modlist-world-content.md` — verify College subsection is complete
- `modlist-lotd.md` — verify LOTD reference if patch was added
- `modlist-npcs.md` — verify FDE Brelyna interaction note is present
- `separators.md` — confirm no new separator needed (College slots into existing `World Content – Overhauls` / `World Content – Quests`)

- [ ] **Step 1: Verify no separator changes needed**

Open `separators.md` and confirm that `World Content – Overhauls` and `World Content – Quests` are the correct destinations. No new separator is required.

- [ ] **Step 2: Cross-check NPC file for Brelyna interaction**

Open `modlist-npcs.md` and verify the `FDE - Brelyna Maryon` entry (line 84) already exists under `NPC Dialogue Expansions`. The Quest Expansion ↔ FDE overlap note in the College subsection is sufficient — no edit to the NPC file is needed unless a conflict is confirmed during playtesting.

- [ ] **Step 3: Verify xEdit load order plan**

The College mods' load order within `World Content` should be:

1. Obscure's College of Winterhold (main ESP)
2. Obscure's College FOMOD patches (after the mods they patch)
3. Immersive College NPCs
4. (later, in Quests block) College of Winterhold - Quest Expansion
5. Obscure's CellSettings.esp (late load order, before RW2/DynDOLOD)

Confirm this is documented clearly in the Risks & Compatibility section.

- [ ] **Step 4: Commit if any corrections made**

```bash
git add modlist-world-content.md modlist-lotd.md modlist-npcs.md
git commit -m "chore: cross-section consistency pass for College of Winterhold stack"
```
