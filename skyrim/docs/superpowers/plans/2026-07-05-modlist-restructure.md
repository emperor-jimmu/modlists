# Modlist Restructure Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use subagent-driven-development or executing-plans to implement this plan task-by-task.

**Goal:** Restructure the Elder Wilds modlist planning repo — rename files, flatten separator names, and rewrite internal section structure from academic template to modlist reference format.

**Architecture:** Mechanical changes first (file renames, separator reference replacements), then content rewrites (per-file, independent). Script the mechanical phase to minimize manual error.

**Tech Stack:** PowerShell (git mv, file I/O), markdown

**Reference:** [`modlist-restructure-design.md`](../../modlist-restructure-design.md)

---

### Task 1: Rename all modlist files

**Files:** 35 files in project root

- [ ] **Step 1: Execute git mv commands**

Run a script that renames each file per the mapping below. Use git mv so history is preserved.

Mapping:
```
modlist-foundations.md → modlist-foundations.md
modlist-graphics.md → modlist-graphics.md
modlist-graphics-pgpatcher.md → modlist-graphics-pgpatcher.md
modlist-graphics-shaders.md → modlist-graphics-shaders.md
modlist-graphics-textures.md → modlist-graphics-textures.md
modlist-graphics-lighting.md → modlist-graphics-lighting.md
modlist-graphics-weather.md → modlist-graphics-weather.md
modlist-graphics-terrain.md → modlist-graphics-terrain.md
modlist-graphics-characters.md → modlist-graphics-characters.md
modlist-graphics-lod.md → modlist-graphics-lod.md
modlist-ui.md → modlist-ui.md
modlist-animations.md → modlist-animations.md
modlist-third-person.md → modlist-third-person.md
modlist-expanded-systems.md → modlist-expanded-systems.md
modlist-expanded-character.md → modlist-expanded-character.md
modlist-expanded-magic.md → modlist-expanded-magic.md
modlist-expanded-survival.md → modlist-expanded-survival.md
modlist-expanded-crafting.md → modlist-expanded-crafting.md
modlist-expanded-followers.md → modlist-expanded-followers.md
modlist-world-feel.md → modlist-world-feel.md
modlist-world-content.md → modlist-world-content.md
modlist-npcs.md → modlist-npcs.md
modlist-audio.md → modlist-audio.md
modlist-survival-combat.md → modlist-survival-combat.md
modlist-lotd.md → modlist-lotd.md
modlist-curation.md → modlist-curation.md
modlist-performance.md → modlist-performance.md
modlist-performance-strategy.md → modlist-performance-strategy.md
modlist-performance-optimization.md → modlist-performance-optimization.md
modlist-performance-tools.md → modlist-performance-tools.md
modlist-performance-patches.md → modlist-performance-patches.md
modlist-performance-testing.md → modlist-performance-testing.md
modlist-adult.md → modlist-adult.md
modlist-voicing.md → modlist-voicing.md
```

- [ ] **Step 2: Commit**

```
git add .
git commit -m "refactor: rename modlist files from numbered to semantic slugs"
```

---

### Task 2: Build and run separator reference replacement script

**Files:** All `modlist-*.md`, `install.md`, `modlist.md`

Build a PowerShell script that performs the following replacements in every content file:

**Replacement rules (apply in order to avoid partial matches):**

1. **MO2 Separator headers:**
   Pattern: ``**MO2 Separator:** `NN Name` → `NNa Name`, ...``
   Replace with: ``**MO2 Separator:** `Flat Name` → `Flat – Child`, ...``

2. **Backtick separator references:**
   Pattern: ``→ `NNa` `` or ``→ `NN` ``
   Replace with: ``→ `Parent – Child` `` or ``→ `Parent` ``

3. **Section index links in modlist.md:**
   Pattern: `- ``NN`` → [Name](modlist-NN.md)`
   Replace with: `- ``Flat Name`` → [Name](modlist-flat-name.md)`
   Also update sub-indent entries (e.g., `  - ``Graphics - PGPatcher`` → [PGPatcher](modlist-graphics-pgpatcher.md)` → `  - ``PGPatcher`` → [PGPatcher](modlist-graphics-pgpatcher.md)`)

4. **File reference links:**
   Pattern: `(modlist-NN.md)` or `](modlist-NN.md)`
   Replace with: `(modlist-flat-name.md)` or `](modlist-flat-name.md)`

5. **Numbered section notes:**
   Pattern: `` (section `NN`) `` or `` section `NN` ``
   Replace with: flat separator name

**Mapping table for the script:**
```powershell
$map = @{
  '01'   = 'Foundations'
  '01a'  = 'Foundations – SKSE & Scripts'
  '01b'  = 'Foundations – Core Libraries'
  '01c'  = 'Foundations – Mesh & Texture Fixes'
  '01d'  = 'Foundations – Targeted Bugfixes'
  '02'   = 'Graphics'
  '02a'  = 'Graphics – PGPatcher'
  '02b'  = 'Graphics – Community Shaders'
  '02c'  = 'Graphics – Textures & Meshes'
  '02d'  = 'Graphics – Lighting'
  '02e'  = 'Graphics – Weather & Water'
  '02f'  = 'Graphics – Terrain & Flora'
  '02g'  = 'Graphics – Characters & Creatures'
  '02h'  = 'Graphics – LOD & Distant Detail'
  '03'   = 'Animations'
  '03a'  = 'Animations – Framework'
  '03b'  = 'Animations – Movement & Idles'
  '03c'  = 'Animations – Combat'
  '03d'  = 'Animations – Interactions & Traversal'
  '03e'  = 'Animations – Creatures'
  '04'   = 'Third-Person'
  '04a'  = 'Third-Person – Camera & Movement'
  '04b'  = 'Third-Person – Combat & Targeting'
  '04c'  = 'Third-Person – Mounted'
  '05'   = 'Expanded Systems'
  '05a'  = 'Expanded Systems – Character & Progression'
  '05b'  = 'Expanded Systems – Magic & Perks'
  '05c'  = 'Expanded Systems – Survival & Needs'
  '05d'  = 'Expanded Systems – Crafting & Economy'
  '05e'  = 'Expanded Systems – Followers & Reputation'
  '06'   = 'UI'
  '06a'  = 'UI – Framework & HUD'
  '06b'  = 'UI – Inventory & Items'
  '06c'  = 'UI – Map, Dialogue, Menus'
  '07'   = 'World Feel'
  '07a'  = 'World Feel – Timescale & Travel'
  '07b'  = 'World Feel – Soundscapes'
  '07c'  = 'World Feel – Nights & Wildlife'
  '07d'  = 'World Feel – Cities & Landmarks'
  '08'   = 'World Content'
  '08a'  = 'World Content – Overhauls'
  '08b'  = 'World Content – Quests'
  '08c'  = 'World Content – Homes & Bases'
  '08d'  = 'World Content – Underwater'
  '09'   = 'NPCs'
  '09a'  = 'NPCs – Appearance'
  '09b'  = 'NPCs – Enemies & Creatures'
  '09c'  = 'NPCs – Population'
  '09d'  = 'NPCs – Followers'
  '10'   = 'Audio'
  '10a'  = 'Audio – Music'
  '10b'  = 'Audio – SFX & Ambience'
  '11'   = 'Survival & Combat'
  '11a'  = 'Survival & Combat – Difficulty & Lethality'
  '11b'  = 'Survival & Combat – Enemy AI'
  '11c'  = 'Survival & Combat – Resources & Injuries'
  '12'   = 'Legacy of the Dragonborn'
  '13'   = 'Testing & Curation'
  '14'   = 'Performance'
  '15'   = 'Adult Content'
  '16'   = 'Voicing'
}
```

File-to-file mapping for links:
```
modlist-01 → modlist-foundations
modlist-02 → modlist-graphics
... (same as rename mapping above)
```

**Script logic:**
```
For each content file (modlist-*.md, install.md, modlist.md):
  For each entry in the mapping (longest keys first to avoid partial matches):
    Replace backtick-wrapped: `NN` → `Flat Name`
    Replace file refs: (modlist-NN.md) → (modlist-flat-name.md)
    Replace section index: [`NN`](modlist-NN.md) → [`Flat Name`](modlist-flat-name.md)
    Replace MO2 header: `NN Name` → `Flat Name`
```

**Important:** Run the replacement only on the content files that remain after the rename (the new file names). The script reads from the new file paths.

- [ ] **Step 1: Write the replacement script**
- [ ] **Step 2: Run it against all files**
- [ ] **Step 3: Spot-check 3-4 files for correctness**
- [ ] **Step 4: Commit**

```
git add .
git commit -m "refactor: replace numbered separator refs with flat names across all files"
```

---

### Task 3: Update modlist.md hub file

- [ ] **Step 1: Read modlist.md**

- [ ] **Step 2: Remove the Separator Numbering Note table** (lines 15-26)

- [ ] **Step 3: Update the section index** — replace all `[`NN`](modlist-NN.md)` with `[Flat Name](modlist-flat-name.md)`. Replace the numbered links and also update the descriptive text as needed.

- [ ] **Step 4: Commit**

---

### Task 4: Update install.md

- [ ] **Step 1: Read install.md** and verify the separator reference replacements are correct (the script in Task 2 should have handled this, but needs verification)

- [ ] **Step 2: Fix any remaining numbered references**

- [ ] **Step 3: Commit**

---

### Task 5: Update AGENTS.md and modlist-restructure-design.md

- [ ] **Step 1: Check AGENTS.md** for any numbered separator references and update to flat names

- [ ] **Step 2: Update modlist-restructure-design.md** — the spec itself may reference old file names in examples

- [ ] **Step 3: Commit**

---

### Tasks 6-33: Rewrite each section file to Baseline/Alternatives/Notes

Each file gets its own task. The rewrite pattern for each subsection is:

1. Remove `### Core Idea` heading and its paragraph
2. Remove `### Options` heading and bullet list
3. Remove `### Recommendation` heading and paragraphs
4. Remove `### Risks & Compatibility` heading and bullet list
5. Remove `### Acceptance Criteria` heading and bullet list
6. Write new structure:
   - `### Baseline` — list chosen mods with inline rationale
   - `### Alternatives` — list serious alternatives not chosen
   - `### Notes` — specific/actionable compatibility and testing notes

Files that have already been rewritten (modlist-npcs.md, modlist-graphics-shaders.md) only need separator reference updates — they already use the new Baseline/Alternatives/Notes structure based on the AGENTS.md guidance.

Parent overview files (modlist-graphics.md, modlist-expanded-systems.md, modlist-performance.md) keep their current format.

**File priority order (highest impact first):**
1. modlist-foundations.md (modlist-foundations.md) — 336 lines, foundational
2. modlist-animations.md (modlist-animations.md) — 420 lines, major section
3. modlist-third-person.md (modlist-third-person.md) — 316 lines, major section
4. modlist-ui.md (modlist-ui.md) — 481 lines, locked baseline
5. modlist-world-content.md (modlist-world-content.md) — 496 lines, active dev
6. modlist-world-feel.md (modlist-world-feel.md) — 398 lines, open research
7. modlist-npcs.md (modlist-npcs.md) — 362 lines, already restyled, just refs
8. modlist-expanded-character.md (modlist-expanded-character.md) — 204 lines
9. modlist-expanded-magic.md (modlist-expanded-magic.md) — 115 lines
10. modlist-expanded-survival.md (modlist-expanded-survival.md) — 102 lines
11. modlist-expanded-crafting.md (modlist-expanded-crafting.md) — 335 lines
12. modlist-expanded-followers.md (modlist-expanded-followers.md) — 120 lines
13. modlist-graphics-shaders.md (modlist-graphics-shaders.md) — 273 lines, already restyled
14. modlist-graphics-textures.md (modlist-graphics-textures.md) — 146 lines
15. modlist-graphics-characters.md (modlist-graphics-characters.md) — 243 lines
16. modlist-graphics-terrain.md (modlist-graphics-terrain.md) — 150 lines
17. modlist-graphics-lighting.md (modlist-graphics-lighting.md) — 72 lines
18. modlist-graphics-weather.md (modlist-graphics-weather.md) — 119 lines
19. modlist-graphics-lod.md (modlist-graphics-lod.md) — 134 lines
20. modlist-graphics-pgpatcher.md (modlist-graphics-pgpatcher.md) — 39 lines
21. modlist-audio.md (modlist-audio.md) — 150 lines
22. modlist-survival-combat.md (modlist-survival-combat.md) — 204 lines
23. modlist-lotd.md (modlist-lotd.md) — 180 lines
24. modlist-performance-strategy.md (modlist-performance-strategy.md) — 105 lines
25. modlist-performance-optimization.md (modlist-performance-optimization.md) — 176 lines
26. modlist-performance-tools.md (modlist-performance-tools.md) — 146 lines
27. modlist-adult.md (modlist-adult.md) — 164 lines
28. modlist-voicing.md (modlist-voicing.md) — 124 lines

For each task:
- [ ] Read current file content
- [ ] Rewrite subsections to Baseline/Alternatives/Notes
- [ ] Update MO2 Separator header to flat names
- [ ] Write file
- [ ] Commit

---

### Task 33: Final verification

- [ ] **Step 1: Run a grep for remaining numbered separator patterns** — search ``→ `\d`` and `**MO2 Separator:**` to catch any missed references

- [ ] **Step 2: Run a grep for remaining academic headings** — search `### Core Idea|### Options|### Recommendation|### Risks & Compatibility|### Acceptance Criteria`

- [ ] **Step 3: Verify all files are renamed** — check there are no `modlist-*.md` files with numeric names still present

- [ ] **Step 4: Final commit** if any fixes were needed
