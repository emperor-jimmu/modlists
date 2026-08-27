# Project MMO + Farmer's Delight Compat Adoption — Design

**Date:** Aug 27, 2026
**Status:** Approved (user)
**Scope:** Adopt Project MMO (Wave 3 — RPG Progression) with the Project MMO: Farmer's Delight Compat addon, replacing the removed skill-stack slot with a reward-first XP system.

## Context

The skill tree (Skills Mastery Reimagined + Pufferfish's stack) was removed Aug 27, 2026 after user review. A four-way discussion (Reskillable Reimagined / JustLeveling Fork / Project MMO / Improvable Skills) led to **Project MMO** as the choice: reward-first design (no item gating — respects the pack's chill rule and no-hard-gating stance), zero dependencies, the most mature NeoForge 1.21.1 line of the four, and vein mining + skill fortune that feed the Create/Mekanism/AE2 ore loop. User additionally requested **Project MMO: Farmer's Delight Compat** so FD cooking feeds PMMO XP.

## Mods (verified via CurseForge + Modrinth APIs, Aug 27 2026)

| Mod | Version | Loader | Notes |
|-----|---------|--------|-------|
| Project MMO | `pmmo-1.21.1-2.10.46.jar` (release, Jul 11 2026) | NeoForge 1.21.1 | **Zero dependencies** (Modrinth API verified). 13.1M DL project; 1.21.1 line active Feb–Jul 2026. ARR license — free in non-commercial packs with link-back. |
| PMMO × Farmer's Delight Compat | `pmmo_farmers_compat-1.21.1-1.2.2.jar` (release, Apr 29 2026) | NeoForge 1.21.1 | Requires PMMO + Farmer's Delight 1.3.2 (both in pack). FD cooking blocks (Stove, Cooking Pot, Skillet, Cutting Board) emit PMMO SMELTED/CRAFT events → XP from finished food items. Mixin into FD flagged in mod docs (pack pins FD 1.3.2 — low risk). |

## Placement

- **Wave 3 — Equipment Magic & RPG**, restoring the "### RPG Progression" subsection (removed with the skill stack).
- New "### Project MMO — Skills & Stats" section in Wave 3 (replaces the old skill-tree section slot).
- Keybinding Reference: Open PMMO Glossary → `P` (free key).

## Config stance (chill-rule driven)

- Existing world → **Default Project MMO Pack** auto-enables (docs-confirmed).
- **Stock defaults first.** No config overrides authored blind — PMMO generates `pmmo-client.toml` / `pmmo-common.toml` at first launch and behavior lives in datapack JSON (`data/<ns>/pmmo/…`).
- **[Post-launch] mob-scaling check** — PMMO's mobs-scale-with-player-strength feature would violate the pack's easy-curve/chill pillars. At first launch: verify in-game; if active, tame via a tracked datapack override under `datapacks/` (README-documented, per pack convention).
- Vein mining + skill fortune: **stock** — reward-first, and directly serve the pack's ore-hungry tech loop (Create/Mekanism/AE2).

## Docs

- `GUIDE.md`: RPG Progression table (PMMO + compat rows); "Project MMO — Skills & Stats" section (XP-by-doing, perks incl. vein mining/fortune, glossary `P`, chill stance, mob-scaling note, FD compat); Configuration — Wave 3 note; Mod Count Summary (Wave 3 `7/8/16 → 9/8/18`, Total `174/42/217 → 176/42/219`); keybind row.
- `AGENTS.md`: pillar 1 reinstates "every action earns XP" (PMMO is the engine); Phase 1 paragraph + Phase 1/2 bullets; equipment-magic role unchanged (Relics + Simply Swords — PMMO is horizontal progression, not equipment).
- `STATUS.md`: session entry at top.
- `rendered/DRIFTWOOD-GUIDE.pdf`: regenerate via `generate-pdf.ps1`.

## Instance action (XMCL)

Add `pmmo-1.21.1-2.10.46.jar` + `pmmo_farmers_compat-1.21.1-1.2.2.jar` to `mods/`.
Verify: no missing-dependency errors; glossary opens with `P`; XP accrues from mining/crafting/FD cooking; mob scaling absent or tamed; no conflict with FastWorkbench / Better Combat / Curios (PMMO's known conflict is FastFurnace — not in pack).

## Verification

- Mod Count Summary arithmetic: Wave 3 `9+8+1=18`; Total `176+42+1=219`.
- grep sweep: PMMO references consistent across GUIDE.md / AGENTS.md; no stale skill-stack references resurface.
- PDF regenerated and text-verified.
