# Modlist Readability & Clarity Review

Scope: all 37 files matching `guide/modlist*.md` (excluding `install.md` and `separators.md`).
Baseline files: `modlist-animations.md`, `modlist-third-person.md`, `modlist-npcs.md`, `modlist-curation.md`.
Reference rules: `AGENTS.md` (content conventions, separator mapping, default subsection template).

Findings are grouped by severity. File:line references are clickable in most editors.

---

## Critical — Structural / Authority Issues

### 1. `modlist-creatures.md` claims the wrong separator
- `modlist-creatures.md:3` declares `**MO2 Separator:** \`NPCs - Enemies & Creatures\``
- `separators.md:72` (canonical ordered reference) lists this file under top-level `Enemies & Creatures` (no `NPCs -` parent prefix)
- `modlist.md:48` index also lists it at top level: `Enemies & Creatures → Creatures and Enemies`

Three sources disagree. The file's internal ownership line should match the canonical separator and the index. As written, the `→` cross-reference convention also breaks — readers cannot tell whether to write `\`Enemies & Creatures\`` or `\`NPCs - Enemies & Creatures\`` when citing this section.

Fix: pick one authority (AGENTS.md says `separators.md` is canonical) and align the other two.

### 2. Index / file title ordering mismatch
- `modlist.md:48` lists the section as `Enemies & Creatures`
- `modlist-creatures.md:1` file title is `Creatures and Enemies`
- `modlist-npcs.md:7` cross-reference says `Creature/enemy content moved to → [Creatures and Enemies]`

The index label and the file title are in different orders. Either rename the file to match the index label (preferred — indexes are the navigational hub) or update the index.

### 3. `modlist-restructure-design.md` status is undocumented
- AGENTS.md lists current files but does not mention this design doc
- The file is dated 2026-07-05, contains the canonical separator names now in use, and includes sample templates using both the old (`## Core Idea / ## Options` H2) and new (`### Baseline / ### Alternatives` H3) subsection styles
- A reader cannot tell whether this is active guidance, an archive, or a checklist
- It is also the only file using the AGENTS.md default H2 template, which makes it look like an outlier

Fix: either move it to `TODO.md` (which AGENTS.md already calls a scratch backlog) or note in AGENTS.md that it is the design rationale for the current structure.

---

## High — Template / Convention Drift

### 4. The `## Topic → separator: \`X\`` H2 pattern is applied inconsistently
Of the 27 non-parent sub-files, only 5 use the separator-suffix on every H2:
- Consistent: `modlist-animations.md`, `modlist-third-person.md`, `modlist-npcs.md`, `modlist-survival-combat.md`, `modlist-audio.md` (most), `modlist-graphics-pgpatcher.md` (N/A, single H2)
- Inconsistent or missing in: `modlist-foundations.md`, `modlist-creatures.md`, `modlist-curation.md`, `modlist-graphics-*.md` (most), `modlist-expanded-*.md` (all five), `modlist-lotd.md`, `modlist-performance-*.md` (all six), `modlist-voicing.md`, `modlist-adult.md`, `modlist-world-content.md` (partial)

When the pattern is missing, a reader has to scroll to a table to determine which separator a subsection contributes to. The whole point of the cross-reference convention is to make the separator mapping visible at the heading level.

Fix: walk each sub-file and append `→ separator: \`X\`` (or `→ separators: \`X\` / \`Y\``) to every H2 that owns content for a single separator. Skip H2s that are top-level or that legitimately span multiple separators (e.g. `modlist.md`, `modlist-graphics.md`, etc., and `College of Winterhold` in `modlist-world-content.md` which already does this).

### 5. `### Notes` appears 28+ times across the corpus
Sample of files: `modlist-animations.md` (4x), `modlist-audio.md` (5x), `modlist-expanded-crafting.md` (8x), `modlist-world-content.md` (7x), `modlist-world-feel.md` (2x), `modlist-ui.md` (multiple).

AGENTS.md explicitly says: *"Do not use boilerplate headings such as repeated `Why This Is The Right Baseline`, `Working Guidance For Elder Wilds`, or `What Elder Wilds Should Prioritize` blocks when that information can be folded into `Recommendation` or `Risks & Compatibility`."*

A `### Notes` heading that opens a bullet list of caveats is the same pattern in a different name. Two practical options:

a) **Fold the caveats into the rows of the table** the section is already using. Most `### Notes` blocks consist of 2–4 short observations that would sit naturally in a `Notes` column or as italicized tail-sentences in the mod row.
b) **Rename to a meaningful label** when the heading genuinely earns one (`Compatibility Notes`, `Performance Notes`, `Load-Order Notes`).

When `### Notes` carries unique procedural content (e.g. the install-order comment in `modlist-audio.md` L31–34, which discusses Synthesis music-merge), keep the heading but rename it to describe what the notes are *about*.

### 6. Two competing subsection templates are in circulation
- **AGENTS.md default** (rare in use): `Core Idea`, `Options`, `Recommendation`, `Risks & Compatibility`, `Acceptance Criteria`
- **In use across most files**: `### Baseline`, `### Alternatives`, `### Notes` (sometimes preceded by an intro paragraph)
- **Mixed**: `modlist-performance-patches.md` uses `## Core Idea` at H2 and then dives into the H3 Baseline/Alternatives/Notes pattern. `modlist-restructure-design.md` shows both patterns as sample templates.

The in-use template is good. The problem is the AGENTS.md default is rarely followed, so the default is misleading. Either:

a) Update AGENTS.md to declare the Baseline/Alternatives/Notes template as the actual default, with optional add-ons (`Load Order`, `Acceptance Criteria`) called out, OR
b) Convert the heavier sections (graphics, performance, expanded-systems sub-files) to the AGENTS.md default so the file's stated template matches reality.

### 7. `## Candidate TODO Additions` stub section repeats in 7+ files
- `modlist-animations.md:457`
- `modlist-third-person.md:120`
- `modlist-npcs.md:126`
- `modlist-graphics-shaders.md:177`
- `modlist-graphics-terrain.md` (similar)
- `modlist-ui.md:234`
- `modlist-world-feel.md:167`
- `modlist-creatures.md:103`

These are scratch-bucket headings for "things we might add later." They duplicate `TODO.md`, which AGENTS.md already designates as the scratch backlog.

Fix: remove the stub heading from each file; let authors push ideas into `TODO.md`. If a section genuinely has open research, name that explicitly (e.g. `## Open Research: Combat Reaction Mods`) instead of leaving a placeholder.

---

## Medium — Visual / Style Drift

### 8. Two files are missing the `---` separator under the ownership block
- `modlist-graphics-lighting.md` (between L5 and L7)
- `modlist-graphics-pgpatcher.md` (between L5 and L7)

Every other sub-file uses a `---` rule after the `All mods in this section belong to...` line. The two exceptions break the visual rhythm and make the file feel truncated. Add the rule.

### 9. `**MO2 Separator(s):**` plural form is used inconsistently
- Plural: `modlist-animations.md`, `modlist-third-person.md`, `modlist-npcs.md`, `modlist-ui.md`, `modlist-expanded-systems.md`, `modlist-world-content.md`, `modlist-survival-combat.md`, `modlist-lotd.md`, `modlist-voicing.md`, `modlist-creatures.md`, `modlist-audio.md`, `modlist-world-feel.md`, `modlist-adult.md`
- Singular: `modlist-foundations.md` (no `**MO2 Separator:**` line at all — first H2 just says `## Baseline`), `modlist-curation.md`, `modlist-graphics.md`, `modlist-graphics-pgpatcher.md`, `modlist-graphics-shaders.md`, `modlist-graphics-lighting.md`, `modlist-graphics-weather.md`, `modlist-graphics-terrain.md`, `modlist-graphics-textures.md`, `modlist-graphics-characters.md`, `modlist-graphics-lod.md`, `modlist-performance.md`, `modlist-performance-strategy.md`, `modlist-performance-optimization.md`, `modlist-performance-tools.md`, `modlist-performance-patches.md`, `modlist-performance-testing.md`

Singular is correct when a file owns exactly one separator; plural when it owns multiple. The current state is correct on most files but inverted on a few (e.g. `modlist-graphics-pgpatcher.md` uses singular even though it splits into "Graphics" parent and "Graphics - PGPatcher" sub — minor but worth normalizing). The bigger issue is that several files with multiple sub-separators do not list them on this line at all (e.g. `modlist-graphics-textures.md` shows only `Graphics - Textures & Meshes` even though the file may touch other separators — verify).

### 10. Self-doubt / WIP comments are visible in published content
- `modlist-world-content.md:15` — `Keep restrained until section 08 is clearer. First experiment:`
- `modlist-graphics-terrain.md:18` — `Landscape And Terrain (candidate list — test and narrow)`
- `modlist-foundations.md:5` — generic H2 `## Baseline` with no separator reference, used as a top-level divider but ambiguous

These are working notes that survived into the file. Either move them to `TODO.md` or recast them as research-task statements with acceptance criteria.

### 11. `modlist-foundations.md` has a unique H2 structure
The file starts with `## Baseline` (L5) as the first H2, before introducing the actual subsections (`### SKSE & Scripts`, `### Core Libraries`, etc.). Every other file in the corpus puts the descriptive intro before the H2 split, with the H2s being topical and separator-tagged. The current structure works but is unique to this one file.

### 12. Governance rules are restated in multiple files
- **Third-person-first / gamepad rule** restated in: `modlist.md` (L8), `modlist-animations.md` (4x), `modlist-curation.md` (L20), `modlist-third-person.md` (implicit throughout)
- **No ENB / CS-only graphics rule** restated in: `modlist-graphics-shaders.md`, `modlist-graphics-lighting.md` (multiple), `modlist.md`, `AGENTS.md`
- **LoTD as collection pillar** restated in: `modlist.md`, `modlist-expanded-systems.md`, `modlist-lotd.md`, `AGENTS.md`

AGENTS.md says: *"Keep file-wide governance rules in one owning subsection instead of repeating them everywhere."* These are file-wide. The hub should own them and other files should cross-reference.

---

## Low — Minor Clarity Wins

### 13. Empty Description cells in tables
Many tables have rows where the `Description` column is blank. Examples:
- `modlist-graphics-terrain.md` — multiple rows in the Landscapes and Snow sections
- `modlist-graphics-weather.md` — most rows in the water and sky alternatives tables
- `modlist-graphics-textures.md` — several rows in the Mesh Replacer Series and Snazzy City series
- `modlist-creatures.md:65` — `[Morrowind Creatures SE]` with no description

If a row has no description, either the row is non-load-bearing (drop it from the table and put it in `TODO.md`), or the description is missing (write one). Empty cells waste reading time and signal that the mod was added without analysis.

### 14. `modlist-graphics-pgpatcher.md` uses italicized mod names instead of links
Other files consistently link mod titles: `[**Mod Name**](URL)`. `modlist-graphics-pgpatcher.md` italicizes some names without a link (e.g. L21: `**Steel Armor Redone - PBR and Complex Material**`). Add the Nexus URL or drop the formatting.

### 15. `modlist-graphics-characters.md:35` uses a Google Drive mirror as the canonical link
`High Poly Head 1.4 SE` uses a Google Drive link because the original distribution is on a third-party host. This is correctly flagged in the surrounding text (L44–47), but a reader skimming tables will not see the rationale. Consider adding a one-line `Distribution: Google Drive mirror` column or moving the rationale to a row note.

### 16. `modlist-creatures.md:5` says "NPCs - Enemies & Creatures" but modlist.md index places the section between NPCs and Audio as a top-level section
Either the file should be moved into a `Creatures` sub-section of NPCs, or the file's separator claim is wrong (see Critical #1). Until that's resolved, the cross-reference convention can't work for this file.

### 17. `modlist-world-content.md:76` is the only H2 in the corpus that splits its separator across two values inline
`## College of Winterhold → separators: \`World Content - Overhauls\` / \`World Content - Quests\``

This is correct and well-handled. It's a good model for the rare case when a single subsection legitimately contributes to multiple separators.

### 18. `modlist-animations.md:457` and `modlist-third-person.md:120` end with `## Candidate TODO Additions` immediately under the last `---`
The structure is `---` → `## Candidate TODO Additions` → `---`. Visually, the trailing dashes look like they wrap an empty section. Either drop the trailing `---` or fill the section.

---

## Summary Table — Files Needing the Most Attention

| File | Top Issue |
|------|-----------|
| `modlist-creatures.md` | Wrong separator claim; conflicts with `separators.md` and `modlist.md` index |
| `modlist-restructure-design.md` | Status unclear; only file using AGENTS.md default H2 template |
| `modlist-foundations.md` | No `**MO2 Separator:**` line; unique H2 structure; generic `## Baseline` |
| `modlist-graphics-lighting.md` | Missing `---` separator under ownership block |
| `modlist-graphics-pgpatcher.md` | Missing `---`; unlinked mod names; redundant separator line |
| `modlist-graphics-terrain.md` | WIP comment visible; many empty table cells |
| `modlist-graphics-textures.md` | Empty table cells; large candidate list without filtering |
| `modlist-graphics-weather.md` | Empty table cells; alternatives table lacks guidance |
| `modlist-world-content.md` | WIP comment at L15; 8x `### Alternatives` headings |
| `modlist-expanded-crafting.md` | 8x `### Notes`; long file, could fold notes into table |
| `modlist-performance-patches.md` | Mixes H2 and H3 templates; lone `## Core Idea` user |
| `modlist-ui.md`, `modlist-world-feel.md` | 7–8x `### Baseline` / `### Alternatives` repetition |

---

## Suggested Order of Operations

1. **Resolve `modlist-creatures.md` separator authority** (Critical #1, #2) — pick `separators.md` as the source of truth and update the other two files.
2. **Decide on `modlist-restructure-design.md`** (Critical #3) — either archive it or document it as active design rationale in AGENTS.md.
3. **Add the `## Topic → separator:` suffix to every H2** in the 15+ sub-files that lack it (High #4). This is the single biggest readability win.
4. **Eliminate or repurpose `### Notes`** in 28+ places (High #5). Fold short caveat lists into table cells; rename when the notes have a specific topic.
5. **Pick one subsection template** in AGENTS.md and align the corpus (High #6).
6. **Remove `## Candidate TODO Additions` stubs** (High #7) and centralize in `TODO.md`.
7. **Add the missing `---` separators** in the two graphics files (Medium #8).
8. **Normalize `**MO2 Separator(s):**` plural usage** based on actual sub-separator count (Medium #9).
9. **Move governance-rule restatements** to a single owner (Medium #12). Cross-reference from other files.
10. **Sweep empty Description cells** and WIP comments (Low #10, #13).
