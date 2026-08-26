# Design — Remove Apotheosis + Apothic Compats, Replace with Easy Magic

**Date:** 2026-08-26
**Project:** Driftwood (NeoForge 1.21.1, `minecraft/`)
**Status:** Approved by user (Aug 26, 2026)

## Goal

Remove the Apotheosis gear-customization ecosystem (Apotheosis + Apothic Compats + the three Apothic module mods) and the Loot Beams: Refork rarity-beam mod from the Driftwood modpack, replacing Apotheosis's enchanting-overhaul role with **Easy Magic** (a light QoL enchantment mod). All pack documentation, quest data, config overrides, and the rendered guide PDF must reflect the change.

User decisions (Aug 26, 2026 session):
1. Remove Apotheosis and Apothic compats.
2. Replace the enchanting-overhaul role with a lighter mod → **Easy Magic** chosen (Approach A).
3. Also remove **Loot Beams: Refork** (rarity beams).
4. Config overrides already deleted from the user's instance by the user (`config/` handled) — the repo still tracks `config/apotheosis/`, which must be deleted here.
5. Easy Magic runs stock defaults — no config section, no overrides.

## Verified mod inventory (Modrinth API, Aug 26 2026)

### Removals — Wave 3 "Loot & Affixes"

| Mod | Version | Notes |
|---|---|---|
| Apotheosis | 1.21.1-8.7.0 | Rarity tiers, affixes, gems, enchanting overhaul. Core of the Wave 3 config block |
| Apothic Compats | 0.2.4.2 | Datapack bridges for 11 in-pack mods. Requires Apotheosis |
| Apothic Attributes | (module) | Cannot run without Apotheosis core |
| Apothic-Enchanting | (module) | Cannot run without Apotheosis core |
| Apothic-Spawners | (module) | Cannot run without Apotheosis core |

### Removals — Wave 0.5 "Visual & Client QoL"

| Mod | Version | Notes |
|---|---|---|
| Loot Beams: Refork | neoforge-1.21.1-3.4.7 | Rarity-tinted drop beams ("makes Apotheosis gear pop" — rationale gone with the user removal request) |
| Nirvana Library | 2.2.0 | Required by Loot Beams (verified `dependencies: required` on the 1.21.1 build `lsOrQAr5`). Clefal-specific lib; no other consumer in pack |
| Common Network | 1.0.21-1.21.1 | Required by Nirvana Library; no other consumer in pack |

Fzzy Config **stays** (required by Simply Swords).

### Addition — Wave 3 "Enchanting"

| Mod | Version | Notes |
|---|---|---|
| Easy Magic | v21.1.4-1.21.1-NeoForge | Items stay in the enchanting table, easy re-rolls, enchantment hints. Requires **Puzzles Lib** (already in pack, zero new deps). Optional Enchantment Descriptions integration (in pack — hints get descriptions free). MPL-2.0, 12.9M DLs |

### Dependencies that STAY (do not remove)

- **Placebo** — required by Toast Control + FastWorkbench (was "via Apotheosis" in docs; attribution must change)
- **Patchouli** — required by Mekanism Guide Book (was "via Apotheosis"; attribution must change)
- **Simply Tooltips** — required by Simply Swords; Apotheosis bridge is optional compat (verified deps: Fzzy Config + Architectury only)

## Mod-count impact (Mod Count Summary)

- Wave 3 — Equipment Magic: `10 mods / 12 deps / 23 total` → **`9 / 9 / 19`**
  (−Apotheosis −Apothic Compats = −2 mods; +Easy Magic = +1 mod; −Apothic Attributes −Apothic-Enchanting −Apothic-Spawners = −3 deps; row total follows the existing mods+deps+1 convention, 23 = 10+12+1)
- Wave 0/0.5 rows: **−Loot Beams: Refork** (−1 mod, Wave 0.5 Visual & Client QoL table) and **−Nirvana Library −Common Network** (−2 deps, Wave 0.5 dependency entries). Exact row numbers must be read from the current Mod Count Summary during implementation — the summary folds Player Experience mods into the Wave 0 row, so the plan locates these entries and applies the deltas there.
- Pack **Total**: `177 / 48 / 226` → **`175 / 43 / 219`** (mods −3 +1 = −2; deps −5; Total keeps its existing mods+deps+1 convention, 226 = 177+48+1)

## Files changed

### 1. Config (tracked in repo)
- Delete `config/apotheosis/apotheosis.cfg`, `config/apotheosis/spawner.cfg`, and the empty `config/apotheosis/` directory.
- No new config files (Easy Magic defaults; Puzzles Lib already present).

### 2. GUIDE.md
- **Wave 3 "Loot & Affixes" section**: delete the section header, both table rows (Apotheosis, Apothic Compats), and the section divider.
- **Add "Enchanting" row/section**: Easy Magic (link, version pin, role: enchanting-table QoL — items persist, easy re-rolls, hint tooltips; requires Puzzles Lib; integrates with Enchantment Descriptions). Placement: under Wave 3, after Equipment or as its own small section.
- **Configuration — Wave 3**: remove the entire Apotheosis block (Adventure module affixes/gems/sockets/bosses/rogue spawners, Enchanting module caps/shelves/Library of Alexandria, Potion module, Spawner module, Village module, World Tiers, Reforging costs). Replace with a one-line Easy Magic note (stock defaults; no overrides) — user confirmed no config discussion needed.
- **Interdependency notes**: remove "Affix coverage" bullet's Apotheosis references (rewrite: weapons are enchantable via vanilla + Easy Magic QoL; skill-tree synergy remains), delete the Apothic Compats bullet, fix Immersive Armors "Apotheosis affixes and gems apply" sentence, drop Simply Tooltips "bridges Apotheosis tooltips" phrase.
- **Scattered references** (each surgical edit):
  - Loot Beams row in Wave 0.5 Visual & Client QoL table (line 414) → delete row (mod removed)
  - Overflowing Bars bullet (line 528) "needed once Apotheosis bonuses stack" → reword (high-HP builds from skills/attributes)
  - Obscure Tooltips bullet (line 539) "⚠ Apotheosis watch" → delete watch clause
  - JEED bullet (line 560) "wiki for Apotheosis/Relics effects" → drop Apotheosis
  - Mekanism Guide Book row (line 628) "Patchouli (already in pack via Apotheosis)" → "Patchouli (in pack)"
  - Backpack/tooltip compat note (line 694) "Apotheosis affixes and gems should apply" → remove clause
  - Create: Protection Pixel (line 736) "Apotheosis spawner upgrades" → remove from blaze-farm options
  - Mekanism: Weapons integration (line 1010) "Apotheosis enchantments apply" → "vanilla enchantments apply (Easy Magic table QoL)"
  - Mekanism: Weapons config (line 1012) "outclassing Apotheosis-mythic gear" → "outclassing max-enchanted endgame gear"
  - Forgematica × Apotheosis (line 1134) → retitle to "Forgematica × Enchanting": schematic enchanting tables now serve the vanilla/Easy Magic enchanting setup
  - Twilight Forest integration (line 1718) "Apotheosis boss affixes apply" → remove integration claim (bosses remain vanilla-buffed)
  - Skills Mastery (line 2144) "attributes you won't find in vanilla or Apotheosis" → drop Apotheosis
  - Simply Swords version pin (line 2156) "Simply Tooltips also bridges Apotheosis affix/gem tooltips" → drop clause
  - Arsenal integration (line 2224) "Apotheosis affixes and gems apply natively" → enchantable via vanilla; drop loot-category claim
  - Big "### Apotheosis — Loot & Enchanting Overhaul" section (lines 2250–2323) → replace with an Easy Magic section (what it does, why it's light, Puzzles Lib)
  - Wave 5 note (line 2686) "Apotheosis also adds boss modifiers..." → remove
  - Fetzi's Displays tip (line 2976) "Apotheosis mythic gear" → "legendary gear"
  - Fetzi's Displays integration (line 2991) "Integration with Apotheosis" → rework to display legendary/unique drops
  - Northstar gear table row (line 3193) "Apotheosis affixes may apply to space suit" → reword (enchantability note)
  - Game Rules difficulty row (line 3239) "The real difficulty ramp is Apotheosis mobs" → reword (Wave 5 combat mods + dimension bosses)
  - Mod Count Summary Wave 3 row + Total row (lines 3262, 3267) → new counts + changelog note
  - Phase table rows (lines 3300–3301) "Apotheosis Rare/Epic gear", "Endgame Apotheosis Mythic gear with perfect gem sockets" → reword (unique weapon/armor drops + max-enchanted gear)
  - General Tips loot row (line 3341) "loot → Apotheosis Rare+ gear" → reword
- **Mod Count Summary**: Wave 3 row `10/12/23 → 9/9/19`; Total `177/48/226 → 175/43/219`; append changelog note to Total row. (Counts corrected to match §Mod-count impact — Aug 26 final review.)

### 3. AGENTS.md
- Line 19 combat doctrine: "Apotheosis-forged melee via Simply Swords / Simply More" → "Simply Swords / Simply More melee with Easy Magic enchantment QoL"
- Line 27 Phase 1: "First Apotheosis gear drops with affixes start appearing" → remove/replace with skill-tree + unique drops note
- Line 37 Phase 2: "Apotheosis gear customization (gems, affixes, enchanting overhaul) matures into the primary loot chase" → reword (unique weapon/armor passives + skill tree + enchanting)
- Line 47 Phase 3: "Apotheosis mythic gear with perfectly socketed gems, max-level enchantments" → reword (legendary drops + max-enchanted gear)
- Line 64 integration rule: "Apotheosis + Relics + Simply Swords fill the equipment-magic role" → "Relics + Simply Swords + the skill tree fill the equipment-magic role"
- Line 68: "they feed items into Apotheosis affix/gem system" → reword (feed the loot chase for unique gear + skill XP)
- Line 71: "Apotheosis gems and affixes work on Mekanism armor/tools" → remove/replace (Mekanism gear is enchantable; skill-tree attributes apply)

### 4. STATUS.md
- Append a new session entry documenting: removal + replacement decision, mod-count math, quest chapter removal, verification checklist for the instance (remove Apotheosis jars + Apothic modules + Loot Beams + Nirvana Library + Common Network; add Easy Magic v21.1.4; delete `config/apotheosis/` leftovers in instance if any).
- Historical entries referencing Apotheosis remain as history (do not rewrite the log).

### 5. TODO.md
- Remove/replace the Patchouli guidebook task (referenced "the Chronicle of Shadows (Apotheosis) ships with Patchouli" and "the Apotheosis gear system")
- Remove the pending Wave 3 config-capture task ("capture Apotheosis 8.x defaults")
- Update the FTB Quests task scope: drop Apotheosis chapter (~12 quests), note it was removed
- Update pending-work references to Wave 3 install (remove Apotheosis stack from the checklist)

### 6. Quest system (`tools/ftbquests/`)
- Delete `quest_data/apotheosis.json` (entire 12-quest chapter, group id `80000000`)
- `validate.py`: remove `"apotheosis"` from `KNOWN_MODS`
- `quest_data/mekanism.json` (line ~472): "Apotheosis affixes apply to it" → "enchantable via vanilla enchanting"
- Check other chapter files for Apotheosis references; fix any (northstar/combat were checked — clean)
- Historical plans/specs under `docs/superpowers/` are archival — left unchanged

### 7. Research doc
- `RESEARCH-NEOFORGE.md`: archival research doc — left unchanged (it documents the migration rationale at the time)

### 8. Rendering
- Regenerate `rendered/DRIFTWOOD-GUIDE.pdf` via `generate-pdf.ps1` (established flow)

## Verification

1. No `apoth` matches remain in GUIDE.md / AGENTS.md / TODO.md / quest data (except intentional STATUS.md history + archival docs)
2. `validate.py` runs clean (no unknown-mod errors from removed chapter)
3. Mod Count Summary arithmetic consistent (wave rows sum to new Total)
4. `rendered/DRIFTWOOD-GUIDE.pdf` regenerated
5. Instance checklist delivered in STATUS.md for the user's XMCL instance

## Out of scope

- No replacement for gems/affixes/rarity beyond Easy Magic's enchanting QoL (per user decision)
- No new enchanting mod research beyond the verified candidate (user chose Approach A)
- No changes to archival plans/specs/research docs
- No config overrides for Easy Magic (stock defaults)
