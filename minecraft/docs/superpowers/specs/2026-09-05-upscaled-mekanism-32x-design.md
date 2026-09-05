# Upscaled Mekanism 32x Adoption — Design Spec

**Date**: 2026-09-05
**Session**: Add Upscaled Mekanism 32x to the Driftwood modpack (NeoForge 1.21.1) as the Mekanism 32x layer — closing the last gap in the 32x mod tier (Create and AE2 already covered, Mekanism untouched).

## 1. Motivation & role claim

The pack's 32x tier pairs Faithful 32x with per-mod extensions: Improved Create 32x, Improved AE2 32x. Mekanism — the pack's core tech mod (Wave 1: ore multiplication, digital miner, fission/fusion, MekaSuit) — has no 32x coverage, so its blocks/items/GUIs render at 16x against an otherwise uniform 32x world. Modded Coffee GUI explicitly leaves Mekanism screens bright vanilla, so there is no overlap and no ordering fight on either surface.

**Role (single sentence for GUIDE table)**: Faithful-style 32x textures for Mekanism — blocks, items, and GUIs; pairs with the Faithful 32x base the same way Improved Create/AE2 do.

**Non-goals**: not a GUI dark-mode pack (Mekanism screens stay bright — user-confirmed acceptable); not a base-pack change (Faithful 32x stays); no new mods or deps.

## 2. The pack (verified facts)

Modrinth: <https://modrinth.com/resourcepack/upscaled-mekanism-32x> (slug `upscaled-mekanism-32x`, project `IgkyqavG`). All facts verified via Modrinth API on 2026-09-05.

| Field | Value |
|---|---|
| Build | `Upscaled Mekanism 32x v1.5 - [1.20.1-1.21.1].zip` (version id `4qeAalJ9`) — **release**, ~1.9 MB, published **2026-08-13** |
| Game versions | 1.20.1 / 1.20.4 / **1.21.1** ✅ |
| Dependencies | **Zero** (`dependencies: []` on v1.5; older entries list a stale Modrinth-side reference, cleared in current) |
| Coverage | Mekanism core + Generators + Additions + Tools + JEI Mekanism Multiblocks (per project body; v1.2+ also ships GUI textures) |
| License | CC-BY-NC-SA-4.0 — acceptable: pack links/installs via XMCL, never redistributes zips |
| Traction | Niche (~1.5k project downloads) but a pure texture overlay — no code, nothing to break; updated within the last month |

**Pack-rule checks** (AGENTS.md): client-side resource pack, survival-compatible, single-player-irrelevant, no duplication (nothing else touches Mekanism textures), chill-rule clean.

## 3. Compatibility posture

| Pack element | Posture |
|---|---|
| Faithful 32x (base) | ✅ Positive — explicitly Faithful-style, designed to sit above the base |
| Improved Create 32x / Improved AE2 32x | ✅ Disjoint assets (Create/AE2 vs Mekanism); grouped in the same tier |
| Dark Coffee GUI + Modded Coffee GUI | ✅ No overlap — Coffee packs don't cover Mekanism screens (documented in the Modded Coffee blurb) |
| Solas shader / generated PBR | ✅ Neutral — flat 32x like the rest of the tier; no PBR maps claimed |

## 4. GUIDE.md changes

1. **Texture Packs table** (after the Improved AE2 row): add row `Upscaled Mekanism 32x v1.5` → role text from §1. Modrinth link.
2. **Blurb** after the Improved AE2 blurb: one paragraph — Faithful-style 32x for Mekanism blocks/items/GUIs; covers Generators/Additions/Tools; zero deps; sits above the Faithful base; Mekanism screens stay bright (Coffee doesn't cover them, this doesn't darken them either).
3. **Modded Coffee blurb touch-up**: extend the existing "Not covered — stay bright vanilla" clause to note Mekanism blocks/items are now 32x-covered by this pack (GUIs still bright). One sentence, no load-order change.
4. **Resource Pack Load Order**: new entry in the 32x tier beside Improved Create/AE2 (above Faithful base, below Coffee GUI) — 24 → **25** entries. **Verify exact arithmetic against the live table at implementation.**
5. **Mod Count Summary**: resource-pack count +1 with changelog annotation. **Verify against the live summary rows at implementation.**
6. No mod, config, keybinding, or datapack changes.

## 5. STATUS.md decision entry

New entry at the top of the register (newest-first), dated Sep 5, 2026:

- **User request** + fit rationale (closes the Mekanism 32x gap; pairs with Faithful base like Create/AE2).
- **Pinned v1.5** — filename, size, date, zero deps, Modrinth API verified; CC-BY-NC-SA-4.0 note.
- **[ ] Instance action (XMCL)**: add `Upscaled Mekanism 32x v1.5 - [1.20.1-1.21.1].zip` to the instance's `resourcepacks/`, enable in the 32x tier above Faithful 32x. [VERIFY] at next launch: Mekanism machines/cables render 32x; no resource-pack incompatibility warnings.
- [ ] DRIFTWOOD-GUIDE.pdf regenerated after GUIDE edits land.

## 6. PDF + commit

Regenerate `rendered/DRIFTWOOD-GUIDE.pdf` via the project's existing pipeline (only after GUIDE.md changes). Commit `docs(driftwood):`. Follow the house sequence: spec → implementation plan → implementation.

## 7. Verification

- **Static**: GUIDE.md row/blurb/load-order/counts present and arithmetically consistent; no other pack claims Mekanism coverage (grep).
- **In-game (user, next launch)**: the [VERIFY] checklist in §5 — textures are instance-side; the repo deliverable is docs + status.
- **PDF** regenerates without errors.

## 8. Out of scope / risks

- **Niche traction (~1.5k DL)**: accepted — pure overlay, no code risk; if upstream stalls, the pack degrades to vanilla Mekanism textures with zero breakage.
- **Mekanism Tools/Additions coverage is bonus**: neither is in the pack; harmless if present.
- **Bright Mekanism GUIs remain**: user-confirmed; revisit only if a dark-mode Mekanism GUI pack is requested later.
