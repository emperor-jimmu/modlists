# Modlist File Reorganization

**Date:** 2026-07-05
**Status:** Design — pending user review

## Goals

- Split the bloated `modlist-02b.md` (817 lines, covering 7 sub-separators) into one file per existing MO2 separator (02b–02h)
- Move Modernized UI earlier (slot 03) since UI framework decisions affect the rest of the list
- Close numbering gaps so the file sequence is contiguous
- Update all cross-references (`modlist.md` index, `separators.md`, in-file links)

## Target Structure

### Graphics section (02a–02h) — split from current 02b

| File             | Title                  | Source                                                   | Est. size  |
|------------------|------------------------|----------------------------------------------------------|------------|
| `modlist-02a.md` | PGPatcher              | Current 02a, intro from 02b                              | ~40 lines  |
| `modlist-02b.md` | Community Shaders      | 02b sections: CS Core + Add-ons + Parallax + PBR         | ~250 lines |
| `modlist-02c.md` | Textures & Meshes      | 02c sections: mesh improvements, entity replacers, blood | ~120 lines |
| `modlist-02d.md` | Lighting               | 02d section: Lighting Overhaul Strategy                  | ~50 lines  |
| `modlist-02e.md` | Weather & Water        | 02e sections: weather, sky, stars, water                 | ~140 lines |
| `modlist-02f.md` | Terrain & Flora        | 02f sections: terrain, roads, snow, flora, trees         | ~200 lines |
| `modlist-02g.md` | Characters & Creatures | 02g sections: body, skin, creatures, hair, skeleton      | ~280 lines |
| `modlist-02h.md` | LOD & Distant Detail   | 02h section: LOD generation workflow                     | ~100 lines |

### Renumbered sections (moved slots)

| New slot | File            | Content                          | Moved from |
|----------|-----------------|----------------------------------|------------|
| 03       | `modlist-03.md` | Modernized UI                    | current 06 |
| 04       | `modlist-04.md` | Animations & Movement            | current 03 |
| 05       | `modlist-05.md` | Third-Person Gameplay            | current 04 |
| 06       | `modlist-06.md` | Expanded Systems                 | current 05 |
| 12       | `modlist-12.md` | Legacy of the Dragonborn         | current 13 |
| 13       | `modlist-13.md` | Modlist Curation & Testing       | current 14 |
| 14       | `modlist-14.md` | Performance & Technical Workflow | current 15 |
| 15       | `modlist-15.md` | Adult Content                    | current 16 |
| 16       | `modlist-16.md` | Main Character Voicing           | current 17 |

### Unchanged (no renumbering needed)

07 World Content, 08 NPCs & Creatures, 09 Audio, 10 Survival/Difficulty/Balance, 11 Immersive Scale — content and numbers stay as-is, only the directory entries change where they reference moved files.

## Execution Plan

### Phase 1: Split Graphics (02a+02b → 02a–02h)

1. Read `modlist-02b.md` in full
2. Write `modlist-02b.md` with only →02b-tagged sections (CS framework, PBR, parallax)
3. Write `modlist-02c.md` through `modlist-02h.md` with their respective →tagged sections
4. Update `modlist-02a.md` to add the shared "02 Graphics" separator header line

### Phase 2: Renumber content files

For the shift 06→03, 03→04, 04→05, 05→06:

1. Save content from current 05 (Expanded Systems) → staging
2. Save content from current 04 (Third-Person) → staging
3. Save content from current 03 (Animations) → staging
4. Write current 06 (UI) content to `modlist-03.md`
5. Write staged 03 (Animations) content to `modlist-04.md`
6. Write staged 04 (Third-Person) content to `modlist-05.md`
7. Write staged 05 (Expanded Systems) content to `modlist-06.md`

For the shift 13→12, 14→13, 15→14, 16→15, 17→16:

1. Read current 17 (Voicing) → write to `modlist-16.md`
2. Read current 16 (Adult Content) → write to `modlist-15.md`
3. Read current 15 (Performance) → write to `modlist-14.md`
4. Read current 14 (Curation) → write to `modlist-13.md`
5. Read current 13 (Legacy) → write to `modlist-12.md`

### Phase 3: Delete old files

Remove the old-numbered files that are now superseded:

- Delete `modlist-06.md` (old UI — content moved to new 03)
- Actually, the old 03–06 and 13–17 files still exist at their old paths — we need to delete the old-named ones

Wait, I need to think about this more carefully. The content moves between files, so:

- `modlist-03.md` old (Animations) → gets new content (UI from old 06). So old 03 is overwritten.
- `modlist-04.md` old (Third-Person) → gets new content (Animations from old 03). Overwritten.
- `modlist-05.md` old (Expanded Systems) → gets new content (Third-Person from old 04). Overwritten.
- `modlist-06.md` old (UI) → gets new content (Expanded Systems from old 05). Overwritten.

So actually all file paths already exist — we just overwrite them with shifted content. No delete needed for 03-06.

For 13-17:

- `modlist-12.md` exists (stub saying "moved to 01") → gets new content (Legacy from old 13)
- `modlist-13.md` → gets Curation content (from old 14)
- `modlist-14.md` → gets Performance content (from old 15)
- `modlist-15.md` → gets Adult Content (from old 16)
- `modlist-16.md` → gets Voicing (from old 17)
- Old `modlist-17.md` is orphaned → delete it

### Phase 4: Update cross-references

- `modlist.md` section index — remap all links and descriptions
- `separators.md` — update →link file references to new file paths
- Each moved/renamed file — update any internal `modlist-XX.md` cross-references to point at the new file numbers

### Phase 5: Verification

- Confirm all 22 files exist (01, 02a–02h, 03–16)
- Confirm each file opens with its correct title
- Confirm `modlist.md` index links resolve
- Confirm `separators.md` references resolve
- `git diff --stat` for a clean overview of changes

## Risks

- **Link rot**: Files that reference `modlist-02b.md` for non-02b topics (e.g., terrain, characters) will need updates. A grep for `modlist-02b` will catch all references.
- **Cross-section references**: Sections in 02c that reference PGPatcher in 02a still work since 02a's file name doesn't change. Sections in a moved file (e.g., UI in new 03) that reference old modlist-06 will break — grep needed.
- **Stale git history**: File content moves across paths will look like new files + deletes rather than renames from git's perspective. This is acceptable for markdown planning docs.
