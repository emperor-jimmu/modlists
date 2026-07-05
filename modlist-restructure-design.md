# Modlist Restructure Design

Date: 2026-07-05

## Overview

Two structural changes to the Elder Wilds modlist planning repo:

1. **Separator naming & ordering** — drop numeric prefixes, use flat category labels, reorder UI earlier
2. **Section file internal structure** — replace academic template with modlist-style reference format

---

## Part 1: Separator Restructure

### Naming

Remove the `NN` and `NNa/b/c` numeric prefixes from all separator names in `separators.md` and all separator references in every `modlist-*.md` file.

Old: `01 Foundations`, `01a SKSE & Scripts`, `02 Graphics`, `02b Community Shaders`, etc.
New: `Foundations`, `Foundations – SKSE & Scripts`, `Graphics`, `Graphics – Community Shaders`, etc.

Sub-separators use an en-dash with parent prefix: `{Parent} – {Child}`. This preserves the hierarchy visually while keeping names flat in MO2.

### Ordering

Current MO2 load order (simplified):

```
Foundations → Graphics → Animations → Third-Person → Expanded Systems
→ UI → World Feel → World Content → NPCs → Audio → Survival & Combat
→ LotD → Testing → Performance → Adult Content → Voicing → Patches → Output
```

New MO2 load order (UI moved to after Graphics):

```
Foundations
Foundations – SKSE & Scripts
Foundations – Core Libraries
Foundations – Mesh & Texture Fixes
Foundations – Targeted Bugfixes
Graphics
Graphics – PGPatcher
Graphics – Community Shaders
Graphics – Textures & Meshes
Graphics – Lighting
Graphics – Weather & Water
Graphics – Terrain & Flora
Graphics – Characters & Creatures
Graphics – LOD & Distant Detail
UI
UI – Framework & HUD
UI – Inventory & Items
UI – Map, Dialogue, Menus
Animations
Animations – Framework
Animations – Movement & Idles
Animations – Combat
Animations – Interactions & Traversal
Animations – Creatures
Third-Person
Third-Person – Camera & Movement
Third-Person – Combat & Targeting
Third-Person – Mounted
Expanded Systems
Expanded Systems – Character & Progression
Expanded Systems – Magic & Perks
Expanded Systems – Survival & Needs
Expanded Systems – Crafting & Economy
Expanded Systems – Followers & Reputation
World Feel
World Feel – Timescale & Travel
World Feel – Soundscapes
World Feel – Nights & Wildlife
World Feel – Cities & Landmarks
World Content
World Content – Overhauls
World Content – Quests
World Content – Homes & Bases
World Content – Underwater
NPCs
NPCs – Appearance
NPCs – Enemies & Creatures
NPCs – Population
NPCs – Followers
Audio
Audio – Music
Audio – SFX & Ambience
Survival & Combat
Survival & Combat – Difficulty & Lethality
Survival & Combat – Enemy AI
Survival & Combat – Resources & Injuries
Legacy of the Dragonborn
Testing & Curation
Performance
Adult Content
Voicing
Patches
Output
```

### Changes needed

- `separators.md`: rewrite all entries with flat labels, new ordering
- `modlist.md`: remove the Separator Numbering Note table (no longer needed); update section index and file links
- Every `modlist-*.md`: update the MO2 Separator header line to drop numbers; update all `→ NN` / `→ NNa/b/c` cross-references to use flat separator names
- `install.md`: update separator references in build steps
- File renames: all `modlist-NN.md` → `modlist-{section-key}.md`, all `modlist-NNa.md` → `modlist-{parent-key}-{child-key}.md` (see mapping below)

### File rename mapping

| Current file | New file |
|---|---|
| `modlist-01.md` → | `modlist-foundations.md` |
| `modlist-02.md` → | `modlist-graphics.md` |
| `modlist-02a.md` → | `modlist-graphics-pgpatcher.md` |
| `modlist-02b.md` → | `modlist-graphics-shaders.md` |
| `modlist-02c.md` → | `modlist-graphics-textures.md` |
| `modlist-02d.md` → | `modlist-graphics-lighting.md` |
| `modlist-02e.md` → | `modlist-graphics-weather.md` |
| `modlist-02f.md` → | `modlist-graphics-terrain.md` |
| `modlist-02g.md` → | `modlist-graphics-characters.md` |
| `modlist-02h.md` → | `modlist-graphics-lod.md` |
| `modlist-03.md` → | `modlist-ui.md` |
| `modlist-04.md` → | `modlist-animations.md` |
| `modlist-05.md` → | `modlist-third-person.md` |
| `modlist-06.md` → | `modlist-expanded-systems.md` |
| `modlist-06a.md` → | `modlist-expanded-character.md` |
| `modlist-06b.md` → | `modlist-expanded-magic.md` |
| `modlist-06c.md` → | `modlist-expanded-survival.md` |
| `modlist-06d.md` → | `modlist-expanded-crafting.md` |
| `modlist-06e.md` → | `modlist-expanded-followers.md` |
| `modlist-07.md` → | `modlist-world-feel.md` |
| `modlist-08.md` → | `modlist-world-content.md` |
| `modlist-09.md` → | `modlist-npcs.md` |
| `modlist-10.md` → | `modlist-audio.md` |
| `modlist-11.md` → | `modlist-survival-combat.md` |
| `modlist-12.md` → | `modlist-lotd.md` |
| `modlist-13.md` → | `modlist-curation.md` |
| `modlist-14.md` → | `modlist-performance.md` |
| `modlist-14a.md` → | `modlist-performance-strategy.md` |
| `modlist-14b.md` → | `modlist-performance-optimization.md` |
| `modlist-14c.md` → | `modlist-performance-tools.md` |
| `modlist-14d.md` → | `modlist-performance-patches.md` |
| `modlist-14e.md` → | `modlist-performance-testing.md` |
| `modlist-15.md` → | `modlist-adult.md` |
| `modlist-16.md` → | `modlist-voicing.md` |

---

## Part 2: Section File Internal Structure

### Current template (academic)

```
## Subsection Title → separator

### Core Idea
paragraph explaining the decision space

### Options
bullet list of candidates

### Recommendation
paragraph stating the pick and rationale

### Risks & Compatibility
bullet list of generic risks

### Acceptance Criteria
bullet list of testing criteria
```

### New template (modlist)

```
## Subsection Title → separator

### Baseline
- **Mod Name** — inline rationale, role, and relevance. → separator
- **Mod Name** — same pattern for each baseline pick.

### Alternatives
- *Mod Name* — what it offers and why it's not the baseline. → separator

### Notes
- Compatibility concerns, testing notes, or risks specific to this subsection.
```

### Rules

- **Baseline** lists chosen mods. Each entry: bold mod name, dash, one-to-two-sentence rationale. Arrow with flat separator name at end if the mod belongs to a sub-separator.
- **Alternatives** lists mods that were seriously considered but not chosen. Brief context on trade-off. Only include when there's a real alternative worth tracking.
- **Notes** covers compatibility, risks, testing specifics that don't belong inline. Only write notes that are specific and actionable for this subsection. No generic "test before locking" or "check for updates" boilerplate. If a risk applies to every subsection in the file, it belongs at the file level, not duplicated in every Notes block.
- No Core Idea heading — the subsection heading itself states the topic.
- No Acceptance Criteria heading — testing specifics go in Notes when needed.
- No Risks & Compatibility heading — risks live inline in Baseline/Alternatives or in Notes.
- Pure-procedure subsections (e.g., "Official Masters Cleanup") keep their guide format. They already read like a modlist procedure, not academic text.
- Subsections that are purely a mod list (e.g., "Candidate Baseline To Research" in foundations) should just be a flat list with inline rationale — no Baseline/Alternatives/Notes scaffolding needed.
- Parent overview files (graphics, expanded-systems, performance) keep their current overview/pipeline-table/principles format — just update separator references and file links.

### Example rewrite

#### Before (modlist-09.md, NPC Appearance)
```
## NPC Appearance Overhauls → `09a`

### Core Idea
This subsection owns the face, hair, and presentation direction...
### Options
- Grounded route: Northbourne NPCs...
- Beauty-forward route: Pandorable's NPCs...
### Recommendation
Start with the grounded route: Northbourne NPCs...
### Risks & Compatibility
- Choosing an overhaul because screenshots look impressive...
### Acceptance Criteria
- One preferred grounded baseline...
```

#### After
```
## NPC Appearance → 09a

### Baseline
- **Northbourne NPCs** — grounded face overhaul best matching Elder Wilds tone. Hold-by-hold coverage. → 09a
- **The Men of Winter SSE** — male coverage to balance Northbourne's female focus. → 09a
- **AI Overhaul SSE** — behavior/schedule layer on top of appearance baseline. → 09a

### Alternatives
- *Pandorable's NPCs* — beauty-forward, heavier patch burden. Keep as reference if tone shifts.
- *High Poly True to Vanilla* — vanilla-faithful fallback if Northbourne drifts too far.
- *DIbella's Blessing* — modular female pass on top of broader baseline, not a replacement.

### Notes
- Blackface/facegen conflicts between overlapping replacers; test each layer combo before locking.
- Children of the First / Children of the Ash stack on baseline — race-specific, modular, low risk. → 09a
- Confirm AI Overhaul SSE compatibility with quest mods that move NPC schedules.
```

### Scope

Every `modlist-*.md` file with subsection content structured as Core Idea/Options/Recommendation/Risks/Acceptance needs rewriting. Procedure-only sections and flat mod lists are left as-is.

---

## Acceptance Criteria

1. `separators.md` uses flat labels, new ordering, no numeric prefixes
2. Every `modlist-*.md` references flat separator names, not numbered ones
3. Every subsection uses Baseline/Alternatives/Notes structure (or procedural/flat where appropriate)
4. No remaining Core Idea / Options / Recommendation / Risks & Compatibility / Acceptance Criteria headings
5. `modlist.md` separator note removed
