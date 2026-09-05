# Upscaled Mekanism 32x Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Add Upscaled Mekanism 32x v1.5 to the Driftwood GUIDE (table + blurb + load order + counts), log a STATUS decision entry, regenerate the PDF.

**Architecture:** Docs-only change to two files (`minecraft/GUIDE.md`, `minecraft/STATUS.md`) plus PDF regen via `minecraft/generate-pdf.ps1`. No mods, configs, or code. Pattern precedent: the RAY's 3D Ladders follow-up (STATUS entry format) and Tyz's texture-pack adoption (table + blurb + load-order renumber).

**Tech Stack:** Markdown tables, Modrinth-verified facts (v1.5, `4qeAalJ9`, ~1.9 MB, Aug 13 2026, 1.21.1 ✅, zero deps, CC-BY-NC-SA-4.0), Typst PDF pipeline.

## Global Constraints

- Minecraft 1.21.1, NeoForge, Java 21 — this change adds no jars, so loader constraints are unaffected.
- Every table row keeps a single leading `|` (house rule — verify with `grep '||'` returning nothing on touched ranges).
- Resource-pack counts must stay arithmetically consistent everywhere they appear (table rows, load-order numbers, Wave 0 Notes, Total changelog).
- Commit message prefix: `docs(driftwood):`.
- License class: link + XMCL install only, never redistribute the zip.

---

### Task 1: GUIDE.md Texture Packs table + blurbs

**Files:**
- Modify: `minecraft/GUIDE.md` (Texture Packs table ~line 216, blurbs ~lines 241/250)

**Interfaces:**
- Consumes: live GUIDE.md lines 215-216, 240-241, 250 (read before editing; line numbers shift).
- Produces: +1 table row, +1 blurb, 1 blurb touch-up for Task 2's count consistency.

- [ ] **Step 1: Add the table row after the Improved AE2 row**

Insert this exact row directly below the `Improved Applied Energistics 2` row:

```markdown
| [Upscaled Mekanism 32x](https://modrinth.com/resourcepack/upscaled-mekanism-32x) v1.5                                                        | Faithful-style 32x textures for Mekanism — blocks, items, GUIs; pairs with Faithful 32x like Improved Create/AE2 |
```

- [ ] **Step 2: Add the blurb after the Improved AE2 blurb**

Insert this exact bullet directly below the `- **Improved Applied Energistics 2** — ...` bullet:

```markdown
- **Upscaled Mekanism 32x** — Faithful-style 32x textures for Mekanism (blocks, items, GUIs, cables/pipes); covers Generators, Additions, Tools, and JEI Mekanism Multiblocks. v1.5 (Aug 13 2026) supports 1.21.1 (verified via Modrinth API). Zero deps. **Load in the 32x tier above the Faithful base**. Mekanism screens stay bright — neither this pack nor the Coffee packs darken them (see Modded Coffee GUI).
```

- [ ] **Step 3: Touch up the Modded Coffee GUI blurb**

In the `- **Modded Coffee GUI** — ...` bullet, replace this exact substring:

```markdown
**Not covered — stay bright vanilla**: Mekanism, AE2, MineColonies, dimension mods
```

with:

```markdown
**Not covered — stay bright vanilla**: Mekanism GUIs (blocks/items now 32x via Upscaled Mekanism 32x), AE2, MineColonies, dimension mods
```

- [ ] **Step 4: Verify Task 1**

Run:

```bash
grep -c 'Upscaled Mekanism' minecraft/GUIDE.md
```

Expected: `3` (table row + blurb + Coffee mention). Then run:

```bash
grep -n '||' minecraft/GUIDE.md | head -5
```

Expected: no output (no double-pipe — table syntax intact).


### Task 2: Load order renumber + Mod Count Summary

**Files:**
- Modify: `minecraft/GUIDE.md` (Resource Pack Load Order ~lines 275-296, Mod Count Summary ~lines 3150/3160)

**Interfaces:**
- Consumes: Task 1's +1 pack.
- Produces: 25-entry load order, consistent counts for Task 3's STATUS entry.

- [ ] **Step 1: Insert the load-order slot and renumber**

Insert this exact line after `4. Improved Applied Energistics 2 — author requires top placement; only overlaps the base pack`:

```markdown
5. Upscaled Mekanism 32x — Faithful-style Mekanism coverage; 32x tier, only overlaps the base pack
```

Then renumber every following entry +1 (old 5 `Armored Legacy` → 6, old 6 → 7, … old 24 `Faithful 32x` → 25). The final entry must read `25. Faithful 32x — base layer (overlays above win)` and the list must contain no duplicate or skipped numbers.

- [ ] **Step 2: Update the Wave 0 Notes cell**

In the `Wave 0 — Foundation` row's Notes cell, replace the exact substring `+24 resource packs` with `+25 resource packs`.

- [ ] **Step 3: Append to the Total changelog**

In the `**Total**` row's Notes cell, append this exact clause to the very end of the changelog (after the Streams Reflowing clause):

```markdown
; +Upscaled Mekanism 32x v1.5 (Sep 2026 — Mekanism 32x layer, zero deps, resource packs 24 → 25)
```

- [ ] **Step 4: Verify Task 2**

Run:

```bash
grep -c '^25\. Faithful 32x' minecraft/GUIDE.md && grep -c '+25 resource packs' minecraft/GUIDE.md && grep -c 'Upscaled Mekanism 32x v1.5 (Sep 2026' minecraft/GUIDE.md
```

Expected: `1`, `1`, `1`. Then confirm the load order is gap-free:

```bash
sed -n '/^#### Resource Pack Load Order/,/^### Infrastructure/p' minecraft/GUIDE.md | grep -E '^[0-9]+\. '
```

Expected: exactly the 25 sequential load-order entries (1–25, ending with `25. Faithful 32x`).

- [ ] **Step 5: Commit GUIDE.md**

```bash
git add minecraft/GUIDE.md
git commit -m "docs(driftwood): add Upscaled Mekanism 32x to GUIDE (table, blurb, load order, counts)"
```

### Task 3: STATUS.md entry + PDF regen + final commit

**Files:**
- Modify: `minecraft/STATUS.md` (prepend newest-first entry at line 1)
- Regenerate: `minecraft/rendered/DRIFTWOOD-GUIDE.pdf` via `minecraft/generate-pdf.ps1`

**Interfaces:**
- Consumes: Tasks 1–2 (GUIDE changes landed).
- Produces: decision register entry, fresh PDF, final commit. Nothing downstream.

- [ ] **Step 1: Prepend the STATUS.md entry**

Insert this exact block at the very top of `minecraft/STATUS.md` (line 1, above the Streams Reflowing entry):

```markdown
### Upscaled Mekanism 32x Added — Mekanism 32x Layer (Sep 5, 2026)

- [x] **User request**: add [Upscaled Mekanism 32x](https://modrinth.com/resourcepack/upscaled-mekanism-32x). Fit confirmed: closes the last gap in the 32x mod tier (Improved Create 32x + Improved AE2 32x already in; nothing covered Mekanism) — Faithful-style 32x for Mekanism blocks/items/GUIs above the Faithful 32x base. Modded Coffee GUI explicitly leaves Mekanism screens alone, so zero overlap on either surface. Bright Mekanism GUIs remain — user-confirmed acceptable.
- [x] **Pinned v1.5** (`Upscaled Mekanism 32x v1.5 - [1.20.1-1.21.1].zip`, ~1.9 MB, Aug 13 2026, release; Modrinth API verified — version id `4qeAalJ9`, `dependencies: []`, 1.21.1 ✅). Covers Mekanism core + Generators + Additions + Tools + JEI Mekanism Multiblocks (Tools/Additions coverage is bonus — neither is in the pack). CC-BY-NC-SA-4.0 — link + XMCL install only. Niche traction (~1.5k project DL) accepted: pure texture overlay, no code risk.
- [x] **GUIDE.md updated**: Texture Packs table (+row after Improved AE2), blurbs (+Upscaled Mekanism 32x blurb; Modded Coffee "not covered" clause now notes Mekanism blocks/items are 32x-covered, GUIs still bright), Resource Pack Load Order (new #5 in the 32x tier; renumbered to 25 entries, Faithful 32x base now #25). Mod Count Summary: Wave 0 note `+24 → +25 resource packs`; Total changelog appended. No mod/config/keybinding/datapack changes.
- [ ] **Instance action (XMCL)** — add `Upscaled Mekanism 32x v1.5 - [1.20.1-1.21.1].zip` to the instance's `resourcepacks/` and enable it in the 32x tier above Faithful 32x. [VERIFY] at next launch: Mekanism machines/cables/items render 32x; no resource-pack incompatibility warnings.
- [x] DRIFTWOOD-GUIDE.pdf regenerated
```

- [ ] **Step 2: Regenerate the PDF**

Run from the repo root:

```powershell
powershell -ExecutionPolicy Bypass -File minecraft/generate-pdf.ps1
```

Expected: script reports success and `minecraft/rendered/DRIFTWOOD-GUIDE.pdf` has a fresh timestamp.

- [ ] **Step 3: Final verification**

Run:

```bash
grep -c 'Upscaled Mekanism' minecraft/GUIDE.md minecraft/STATUS.md && grep -n '||' minecraft/GUIDE.md | head -5; ls minecraft/rendered/DRIFTWOOD-GUIDE.pdf
```

Expected: GUIDE count ≥ 4, STATUS count ≥ 4, no `||` output, PDF listed.

- [ ] **Step 4: Commit**

```bash
git add minecraft/STATUS.md minecraft/rendered/DRIFTWOOD-GUIDE.pdf
git commit -m "docs(driftwood): Upscaled Mekanism 32x status entry + regenerated PDF"
```
