# Remove Apotheosis + Apothic Compats + Loot Beams, Add Easy Magic — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Remove the Apotheosis ecosystem (Apotheosis, Apothic Compats, Apothic Attributes/Enchanting/Spawners) and Loot Beams: Refork (with its Nirvana Library + Common Network deps) from the Driftwood modpack docs/quests/config, and replace the enchanting-overhaul role with Easy Magic v21.1.4.

**Architecture:** Documentation-first removal. Five file groups change: `config/apotheosis/` (tracked overrides deleted), `GUIDE.md` (Wave 3 tables + config block + ~20 scattered references + Mod Count Summary), `AGENTS.md` (pillar/phase/integration philosophy), `tools/ftbquests/` (chapter JSON deleted + validator whitelist), and STATUS.md/TODO.md (session log + backlog). The rendered PDF is regenerated last. No new config files — Easy Magic runs stock defaults.

**Tech Stack:** Markdown docs, Python (quest validator), PowerShell (PDF generation via generate-pdf.ps1), git.

## Global Constraints

- All edits are markdown/text — preserve markdown table formatting and existing line endings (files use LF in git; Windows checkout may show CRLF — use the edit tool, not raw writes, for in-place edits).
- `config/apotheosis/` files are git-tracked: remove with `git rm`.
- No new config overrides for Easy Magic (user decision: stock defaults).
- Do NOT edit archival docs: `docs/superpowers/plans/*.md`, `docs/superpowers/specs/*.md` (except this plan and the new spec, already committed), `RESEARCH-NEOFORGE.md`.
- STATUS.md is a session log: append new entries at the top (newest first); never rewrite historical entries.
- Mod Count Summary uses a `mods + deps + 1 = total` convention per row (e.g. 226 = 177+48+1). Preserve that convention when updating counts.
- Commit messages follow repo convention: `docs(driftwood): <summary>`.
- Final verification: `grep -ri apoth` on GUIDE.md / AGENTS.md / TODO.md / tools/ftbquests must return zero hits (except intentional STATUS.md history and archival docs); `python tools/ftbquests/validate.py` must pass.

---

## File Structure

- `config/apotheosis/apotheosis.cfg` — DELETE (tracked override for removed mod)
- `config/apotheosis/spawner.cfg` — DELETE (tracked override for removed mod)
- `GUIDE.md` — MODIFY (Wave 3 tables, config block, ~20 scattered references, Mod Count Summary)
- `AGENTS.md` — MODIFY (combat doctrine, 3 phase paragraphs, 2 integration rules)
- `STATUS.md` — MODIFY (append new session entry at top)
- `TODO.md` — MODIFY (drop Apotheosis tasks, reword FTB Quests scope)
- `tools/ftbquests/quest_data/apotheosis.json` — DELETE (12-quest chapter, group `80000000`)
- `tools/ftbquests/validate.py` — MODIFY (remove `"apotheosis"` from `KNOWN_MODS`)
- `tools/ftbquests/quest_data/mekanism.json` — MODIFY (remove "Apotheosis affixes apply to it" line)
- `rendered/DRIFTWOOD-GUIDE.pdf` — REGENERATE (via generate-pdf.ps1)

---

### Task 1: Delete tracked Apotheosis config overrides

**Files:**
- Delete: `config/apotheosis/apotheosis.cfg`
- Delete: `config/apotheosis/spawner.cfg`

- [ ] **Step 1: Remove the files**

```bash
cd H:/Projects/modlists/minecraft
git rm config/apotheosis/apotheosis.cfg config/apotheosis/spawner.cfg
rmdir config/apotheosis
```

- [ ] **Step 2: Verify removal**

Run: `git status --short`
Expected: both files staged as deleted; `config/apotheosis/` directory gone.

- [ ] **Step 3: Commit**

```bash
git commit -m "chore(driftwood): remove tracked config/apotheosis overrides (mods removed)"
```

---

### Task 2: Delete Apotheosis quest chapter + fix quest validator + mekanism chapter

**Files:**
- Delete: `tools/ftbquests/quest_data/apotheosis.json`
- Modify: `tools/ftbquests/validate.py:13` (KNOWN_MODS set)
- Modify: `tools/ftbquests/quest_data/mekanism.json` (line ~472)

- [ ] **Step 1: Delete the quest chapter**

```bash
cd H:/Projects/modlists/minecraft
git rm tools/ftbquests/quest_data/apotheosis.json
```

- [ ] **Step 2: Remove `"apotheosis"` from validate.py KNOWN_MODS**

Edit `tools/ftbquests/validate.py`. The set currently reads:

```python
    "createbigcannons", "apotheosis", "simplyswords",
```

Change to:

```python
    "createbigcannons", "simplyswords",
```

- [ ] **Step 3: Fix the mekanism.json Apotheosis reference**

Edit `tools/ftbquests/quest_data/mekanism.json`. The description line currently reads:

```json
        "Osmium gear beats iron. Progression: Osmium -> Bronze -> Refined Obsidian -> MekaSuit. Apotheosis affixes apply to it."
```

Change to:

```json
        "Osmium gear beats iron. Progression: Osmium -> Bronze -> Refined Obsidian -> MekaSuit. Enchantable via vanilla enchanting."
```

- [ ] **Step 4: Verify no Apotheosis references remain in quest tooling**

Run: `grep -ri apoth tools/ftbquests/`
Expected: no matches.

- [ ] **Step 5: Commit**

```bash
git add -A tools/ftbquests/
git commit -m "docs(driftwood): drop Apotheosis quest chapter (12 quests) + validator whitelist + mekanism chapter affix note"
```

---

### Task 3: GUIDE.md — Wave 3 Loot & Affixes table → Enchanting (Easy Magic)

**Files:**
- Modify: `GUIDE.md:2056-2062` (Loot & Affixes table)

- [ ] **Step 1: Replace the "Loot & Affixes" table with an "Enchanting" table**

Current block (verbatim):

```markdown
### Loot & Affixes

| Mod                                                                                     | Role                                                                                                                                                                                                                                                                      |
|-----------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [**Apotheosis**](https://www.curseforge.com/minecraft/mc-mods/apotheosis)               | Rarity tiers, random affixes, gem socketing, enchanting overhaul. Replaces Savaru's Affixology with more depth                                                                                                                                                            |
| [Apothic Compats](https://www.curseforge.com/minecraft/mc-mods/apothic-compats) 0.2.4.2 | Datapack-driven Apotheosis bridges — affixed loot, gear sets, affixes, and invaders for 11 in-pack mods (AE2, Aether, Cataclysm, Create, Curios, Deep Aether, Deeper and Darker, Farmer's Delight, Mekanism Tools, Supplementaries, Twilight Forest). Requires Apotheosis |
```

Replace with:

```markdown
### Enchanting

| Mod                                                                               | Role                                                                                                                                                                              |
|-----------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [Easy Magic](https://modrinth.com/mod/easy-magic) v21.1.4                         | Enchanting-table QoL — items stay in the table after closing, easy re-rolls, enchantment hints in tooltips. Requires Puzzles Lib (in pack). Optional Enchantment Descriptions integration |
```

- [ ] **Step 2: Verify the table renders correctly**

Read `GUIDE.md:2056-2063`. Expected: three-row table with `### Enchanting` header, no Apotheosis/Apothic text.

- [ ] **Step 3: Commit**

```bash
git add GUIDE.md
git commit -m "docs(driftwood): Wave 3 table — swap Loot & Affixes (Apotheosis + Apothic Compats) for Enchanting (Easy Magic)"
```

---

### Task 4: GUIDE.md — replace the Apotheosis Configuration block with a one-line Easy Magic note

**Files:**
- Modify: `GUIDE.md:2063-2104` (Configuration — Wave 3, Apotheosis block)

- [ ] **Step 1: Replace the entire Apotheosis config block**

The block spans from `### Configuration — Wave 3` through the end of the "Reforging costs" bullet (lines 2063-2104), which currently contains **Apotheosis** module descriptions (Adventure, Enchanting, Potion, Spawner, Village, World Tiers, Reforging costs).

Replace the whole block with:

```markdown
### Configuration — Wave 3

**Easy Magic** — stock defaults. No overrides. (Puzzles Lib already in pack; Enchantment Descriptions integration is automatic.)
```

- [ ] **Step 2: Verify**

Read `GUIDE.md:2063-2070`. Expected: the two lines above; no module headings, no "Apotheosis" anywhere in the section.

- [ ] **Step 3: Commit**

```bash
git add GUIDE.md
git commit -m "docs(driftwood): Wave 3 config — drop Apotheosis module block, Easy Magic stock defaults"
```

---

### Task 5: GUIDE.md — replace the big "Apotheosis — Loot & Enchanting Overhaul" section with an Easy Magic section

**Files:**
- Modify: `GUIDE.md:2250-2336` (section + Session Plan)

- [ ] **Step 1: Replace section content (lines 2250-2323)**

The section `### Apotheosis — Loot & Enchanting Overhaul` runs from line 2250 through the World Tiers paragraph ending at line 2323. Replace it entirely with:

```markdown
### Easy Magic — Enchanting Table QoL

The enchanting table keeps vanilla behavior but loses the friction:

- **Items stay in the table** after closing the GUI — no re-inserting your sword every time.
- **Easy re-rolls** — cycle the offered enchantments without burning levels on bad rolls.
- **Enchantment hints** — see exactly what each option does in the tooltip; integrates with Enchantment Descriptions (in pack) for full descriptions.
- Requires **Puzzles Lib** (already in pack). Runs stock defaults — no config to manage.

Enchanting stays vanilla-capped (Protection IV, Sharpness V). The gear fantasy now comes from unique weapon/armor passives (Simply Swords, Arsenal, Relics, Immersive Armors) and the Skills Mastery Reimagined tree rather than max-level enchantment stacking.
```

- [ ] **Step 2: Update the Wave 3 Session Plan (lines 2325-2336)**

Current rows to change (verbatim):

```markdown
| **Session 2 — First affix loot** | Check every gear drop. Look for Rare+ with useful affixes                                                   | Learn the loot system         |
| **Session 4 — Gem cutting**      | Collect rough gems. Build Gem Cutting Station. Cut Rough → Cut. Socket into gear                            | Permanent gear upgrade        |
| **Session 6 — Boss affixes**     | Search for affixed bosses (colored name above health bar). Best source of Mythic gear                       | Endgame gear progression      |
```

Replace with:

```markdown
| **Session 2 — First unique loot** | Check every gear drop and dungeon chest. Look for Simply Swords / Arsenal / Relics uniques               | Learn the loot system         |
| **Session 4 — Enchanting setup**  | Build an enchanting table + bookshelves. Use Easy Magic re-rolls to get Sharpness IV / Protection IV       | First maxed gear              |
| **Session 6 — Endgame gear hunt** | Hunt Cataclysm / Twilight Forest / Aether bosses for top-tier unique drops                                 | Endgame gear progression      |
```

Also update the tip line below the table (currently references "A Rare+ weapon with the right affix"):

Current (verbatim):
```markdown
**Tip**: Wave 3 gear changes how every other wave feels. A Rare+ weapon with the right affix makes Twilight Forest and Cataclysm bosses dramatically easier. Invest in gear before tackling tough content.
```

Replace with:
```markdown
**Tip**: Wave 3 gear changes how every other wave feels. A unique weapon with a strong passive makes Twilight Forest and Cataclysm bosses dramatically easier. Invest in gear before tackling tough content.
```

- [ ] **Step 3: Verify**

Run: `grep -n "Apotheosis" GUIDE.md | head -30`
Expected: no hits in the Wave 3 section (remaining hits will be scattered references handled in later tasks).

- [ ] **Step 4: Commit**

```bash
git add GUIDE.md
git commit -m "docs(driftwood): replace Apotheosis overhaul section with Easy Magic section + session plan rewrite"
```

---

### Task 6: GUIDE.md — scattered references (part 1: Wave 0.5 + Inventory/UI + Tech)

**Files:**
- Modify: `GUIDE.md` — multiple one-line edits

- [ ] **Step 1: Delete the Loot Beams row (line 414)**

Delete this line (verbatim):
```markdown
| [Loot Beams: Refork](https://modrinth.com/mod/loot-beams-refork) neoforge-1.21.1-3.4.7                            | Colored rarity-tinted beams on item drops — makes Apotheosis rare gear visibly pop. Client-side                                                                       |
```

- [ ] **Step 2: Fix the Overflowing Bars bullet (line 528)**

Current (verbatim):
```markdown
- **Overflowing Bars** — health/armor/toughness bars expand past vanilla limits — needed once Apotheosis bonuses stack.
```
Replace with:
```markdown
- **Overflowing Bars** — health/armor/toughness bars expand past vanilla limits — useful for high-HP builds from Pufferfish's Attributes and skill-tree bonuses.
```

- [ ] **Step 3: Fix the Obscure Tooltips bullet (line 539)**

Current (verbatim):
```markdown
- **Obscure Tooltips** — stylized tooltips: animated effects/particles, rarity-tinted flair, labels/shadows, auto-wrap, scrolling, armor + tool previews. **Owns the tooltip surface** — Modern UI's tooltip feature is off (Action Center `Ctrl+K`). Config: `config/obscuria/` (Fragmentum). ⚠ **Apotheosis watch**: OT emphasizes item rarity — verify Apotheosis custom rarities map onto its styling in-game (fallback: OT's per-item/mod filters can style Apotheosis gear explicitly).
```
Replace with:
```markdown
- **Obscure Tooltips** — stylized tooltips: animated effects/particles, rarity-tinted flair, labels/shadows, auto-wrap, scrolling, armor + tool previews. **Owns the tooltip surface** — Modern UI's tooltip feature is off (Action Center `Ctrl+K`). Config: `config/obscuria/` (Fragmentum).
```

- [ ] **Step 4: Fix the JEED bullet (line 560)**

Current (verbatim):
```markdown
- **JEED** — browse any status effect in EMI (description, source mod, colors) — a built-in wiki for Apotheosis/Relics effects. Complements Stylish Effects (EMI lookup vs HUD/container display; JEED also adds description tooltips to Stylish Effects' effect widgets).
```
Replace with:
```markdown
- **JEED** — browse any status effect in EMI (description, source mod, colors) — a built-in wiki for Relics and pack mod effects. Complements Stylish Effects (EMI lookup vs HUD/container display; JEED also adds description tooltips to Stylish Effects' effect widgets).
```

- [ ] **Step 5: Fix the Mekanism Guide Book row (line 628)**

Current (verbatim):
```markdown
| [**Mekanism Guide Book**](https://www.curseforge.com/minecraft/mc-mods/mekanism-guide-book) | Patchouli-based in-game guidebook for Mekanism. Requires Patchouli (already in pack via Apotheosis)                                   |
```
Replace with:
```markdown
| [**Mekanism Guide Book**](https://www.curseforge.com/minecraft/mc-mods/mekanism-guide-book) | Patchouli-based in-game guidebook for Mekanism. Requires Patchouli (already in pack)                                   |
```

- [ ] **Step 6: Verify**

Run: `grep -n "Apotheosis\|apoth" GUIDE.md | head -40`
Expected: lines 246 (Modded Coffee GUI coverage note), 694, 736, 1010, 1012, 1134, 1718, 2144, 2156, 2224, 2686, 2976, 2991, 3193, 3239, 3262, 3267, 3300-3301, 3341 still present (handled in later tasks). Lines 414, 528, 539, 560, 628 clean.

- [ ] **Step 7: Commit**

```bash
git add GUIDE.md
git commit -m "docs(driftwood): scrub Wave 0.5/UI/Tech references — drop Loot Beams row, reword Overflowing Bars/Obscure Tooltips/JEED/Mekanism Guide Book"
```

---

### Task 7: GUIDE.md — scattered references (part 2: weapons/tech/exploration sections)

**Files:**
- Modify: `GUIDE.md` — multiple one-line edits

- [ ] **Step 1: Fix the backpack compat note (line 694)**

Current (verbatim):
```markdown
**Compatibility**: Works with Better Combat, Epic Fight, and backpacks (visual space reserved for backpack rendering). Apotheosis affixes and gems should apply — verify after test launch.
```
Replace with:
```markdown
**Compatibility**: Works with Better Combat, Epic Fight, and backpacks (visual space reserved for backpack rendering).
```

- [ ] **Step 2: Fix the Create: Protection Pixel note (line 736)**

Current (verbatim):
```markdown
- **Create: Protection Pixel** adds steampunk power armor that bridges Create's brass-tier infrastructure with the power fantasy of Mekanism's MekaSuit. Brass-tier armor requires Create brass (early Phase 2); alloy-tier requires additional Create alloy processing (mid-Phase 2). The Combustion Reactor's blaze rod fuel can be farmed via Mekanism spawner systems, Apotheosis spawner upgrades, or vanilla blaze grinders. Blaze automation is a natural Phase 2 milestone that unlocks full power armor capability. ...
```
Replace the clause:
```markdown
The Combustion Reactor's blaze rod fuel can be farmed via Mekanism spawner systems, Apotheosis spawner upgrades, or vanilla blaze grinders.
```
with:
```markdown
The Combustion Reactor's blaze rod fuel can be farmed via Mekanism spawner systems or vanilla blaze grinders.
```
(Keep the rest of the bullet unchanged.)

- [ ] **Step 3: Fix the Mekanism: Weapons integration note (line 1010)**

Current (verbatim):
```markdown
**Integration**: built-in Better Combat support (Meka-Tana uses the `bettercombat:katana` profile). Energy-based, so it does not trip the pack's ballistic-firearms ban (TACZ/Scorched Guns doctrine protects Create: Gunsmithing's role — a laser is a distinct category). Optional Curios integration (already in pack). Weapons are enchantable (config toggle, default on) — Apotheosis enchantments apply.
```
Replace the final clause:
```markdown
Weapons are enchantable (config toggle, default on) — Apotheosis enchantments apply.
```
with:
```markdown
Weapons are enchantable (config toggle, default on) — vanilla enchantments apply via the enchanting table.
```

- [ ] **Step 4: Fix the Mekanism: Weapons config note (line 1012)**

Current (verbatim):
```markdown
**Config** — Mekanism-style SERVER config (`config/Mekanism/mekaweapons-server.toml`, generated on first launch): per-weapon `base_damage`, `energy_usage`, capacity/charge rate; Meka-Tana teleport reach + energy; Meka-Gun beam length, heat, cooldown; enchantability toggles. Energy is in Joules (2.5 J = 1 FE). Leave at defaults first; tune damage down only if playtesting shows it outclassing Apotheosis-mythic gear.
```
Replace:
```markdown
tune damage down only if playtesting shows it outclassing Apotheosis-mythic gear.
```
with:
```markdown
tune damage down only if playtesting shows it outclassing endgame enchanted gear.
```

- [ ] **Step 5: Fix the Forgematica × Apotheosis bullet (line 1134)**

Current (verbatim):
```markdown
- **Forgematica × Apotheosis**: The Cozy Mountain Chalet (`13-Snowy Chalet-from-abfielder.litematic`) has a built-in enchanting corner, and the Simple Medieval House (`4-use this-from-abfielder.litematic`), Ultimate Survival Base (`5-Ultimate Survival Base by Emik-from-abfielder.litematic`), Large Farmhouse (`7-Large_Farmhouse-from-abfielder.litematic`), and Modern Stone and Wood House (`20-casa-moderna-de-qdkqmx4d.litematic`) each include an enchanting table — base your Apotheosis enchanting setup on...
```
Replace:
```markdown
- **Forgematica × Apotheosis**: ... — base your Apotheosis enchanting setup on...
```
with:
```markdown
- **Forgematica × Enchanting**: ... — base your enchanting setup on...
```

- [ ] **Step 6: Fix the Twilight Forest integration note (line 1718)**

Current (verbatim):
```markdown
**Integration**: Apotheosis boss affixes apply to Twilight Forest bosses. A Naga with "Tough" affix is significantly harder — intended to keep dimension bosses relevant even with late-game gear.
```
Replace with:
```markdown
**Integration**: Twilight Forest bosses are buffed encounters intended to stay relevant even with late-game gear.
```

- [ ] **Step 7: Verify**

Run: `grep -n "Apotheosis\|apoth" GUIDE.md | head -40`
Expected: lines 246, 2144, 2156, 2224, 2686, 2976, 2991, 3193, 3239, 3262, 3267, 3300-3301, 3341 remain. Lines 694, 736, 1010, 1012, 1134, 1718 clean.

- [ ] **Step 8: Commit**

```bash
git add GUIDE.md
git commit -m "docs(driftwood): scrub weapons/tech/exploration references (Protection Pixel, Meka-Weapons, Forgematica, Twilight Forest, backpack compat)"
```

---

### Task 8: GUIDE.md — scattered references (part 3: Wave 3 detail + building + space + misc)

**Files:**
- Modify: `GUIDE.md` — multiple one-line edits

- [ ] **Step 1: Fix Skills Mastery "unique attributes" line (line 2144)**

Current (verbatim):
```markdown
**Unique attributes**: Skills Mastery Reimagined unlocks attributes you won't find in vanilla or Apotheosis — Gravity (lower = floaty jumps), Scale (character size), Burning Time, Sneak Speed, Water Efficiency, Oxygen Bonus, Crossbow Projectile Speed, and weapon-specific damage (Mace, Trident, Sword, Axe). These change *how you interact with the world*, not just how hard you hit.
```
Replace:
```markdown
**Unique attributes**: Skills Mastery Reimagined unlocks attributes you won't find in vanilla — Gravity (lower = floaty jumps), Scale (character size), Burning Time, Sneak Speed, Water Efficiency, Oxygen Bonus, Crossbow Projectile Speed, and weapon-specific damage (Mace, Trident, Sword, Axe). These change *how you interact with the world*, not just how hard you hit.
```

- [ ] **Step 2: Fix the Simply Swords version-pin note (line 2156)**

Current (verbatim):
```markdown
**Version pin (Aug 2026)**: Simply Swords **1.63.0** — pinned alongside Simply More 1.2.3 (both stable releases). The 1.70 line (Aug 24, 2026) is a save/config-breaking rewrite that forces Simply More onto its alpha 1.3.0 line; upgrade to 1.70.x + 1.3.0 once Simply More ships stable. Simply Tooltips (auto-installed dep) also bridges Apotheosis affix/gem tooltips onto Simply Swords items.
```
Replace:
```markdown
Simply Tooltips (auto-installed dep) also bridges Apotheosis affix/gem tooltips onto Simply Swords items.
```
with:
```markdown
Simply Tooltips (auto-installed dep) renders the dynamic tooltips with ability descriptions and stat previews.
```

- [ ] **Step 3: Fix the Arsenal integration note (line 2224)**

Current (verbatim):
```markdown
**Integration**: Arsenal weapons are melee weapons, so Apotheosis affixes and gems apply natively (MELEE_WEAPON loot category). Passive spells run through Spell Engine — the same RPG Series infrastructure as Relics: no new magic systems, no crafting chain. Better Combat (Wave 5) animates them alongside Simply Swords.
```
Replace with:
```markdown
**Integration**: Arsenal weapons are melee weapons, enchantable via the vanilla enchanting table (Easy Magic QoL). Passive spells run through Spell Engine — the same RPG Series infrastructure as Relics: no new magic systems, no crafting chain. Better Combat (Wave 5) animates them alongside Simply Swords.
```

- [ ] **Step 4: Fix the Wave 5 note (line 2686)**

Current (verbatim):
```markdown
Apotheosis also adds boss modifiers and elite mob affixes — partially covers what Champions would have done.
```
Delete the line entirely (it is a standalone paragraph after the Cataclysm section).

- [ ] **Step 5: Fix the Fetzi's Displays tip (line 2976)**

Current (verbatim):
```markdown
**Tip**: Place in your most-used rooms — kitchen, dining, bedroom. Use shelves to display favorite loot (Twilight Forest trophies, Apotheosis mythic gear, rare Simply Swords weapons).
```
Replace:
```markdown
**Tip**: Place in your most-used rooms — kitchen, dining, bedroom. Use shelves to display favorite loot (Twilight Forest trophies, unique drops, rare Simply Swords weapons).
```

- [ ] **Step 6: Fix the Fetzi's Displays integration (line 2991)**

Current (verbatim):
```markdown
**Integration with Apotheosis (Wave 3)**: Glass cloches and katana stands are ideal for showcasing mythic drops. Mount your perfect gem rolls and affix-rolled weapons as trophies. Wall holders with plaques let you name your legendary weapons — "Flamebane, Bane of the Ender Dragon."
```
Replace with:
```markdown
**Integration with Wave 3 gear**: Glass cloches and katana stands are ideal for showcasing unique drops. Mount your best Simply Swords / Arsenal / Relics finds as trophies. Wall holders with plaques let you name your legendary weapons — "Flamebane, Bane of the Ender Dragon."
```

- [ ] **Step 7: Fix the Northstar gear table row (line 3193)**

Current (verbatim):
```markdown
| **Gear**           | Apotheosis affixes may apply to space suit (if item tags align)                                                    |
```
Replace with:
```markdown
| **Gear**           | Space suit pieces are enchantable via the vanilla enchanting table                                                  |
```

- [ ] **Step 8: Fix the Game Rules difficulty row (line 3239)**

Current (verbatim):
```markdown
| Difficulty                  | **Normal**   | Easy-to-standard curve. The real difficulty ramp is Apotheosis mobs and boss fights, not vanilla mobs                                                                                      |
```
Replace with:
```markdown
| Difficulty                  | **Normal**   | Easy-to-standard curve. The real difficulty ramp is Wave 5 combat mods (Cataclysm) and dimension boss fights, not vanilla mobs                                                                 |
```

- [ ] **Step 9: Fix the Phase table rows (lines 3300-3301)**

Current (verbatim):
```markdown
| **Phase 2** (hours 40–200) | Full Create factory (conveyors, deployers, sequenced crafters, trains). Mekanism 3x–5x ore processing. AE2 ME network with autocrafting. Explore Twilight Forest bosses. Apotheosis Rare/Epic gear. First Cataclysm boss. TFMG oil refining and diesel engines. Build with Rechiseled, Macaw's, Handcrafted. Small Ships for ocean travel. Immersive Aircraft for aerial exploration. Complete quest chapters. Northstar Redux Moon and early planets |
| **Phase 3** (hours 200+)   | Mekanism fusion reactor + MekaSuit. AE2 full autocrafting CPU chains. Endgame Apotheosis Mythic gear with perfect gem sockets. Twilight Forest final bosses. Cataclysm endgame bosses. End dimension exploration. Mars and Venus space bases. Monumental building projects. Create mega-factories. Perpetual optimization                                                                                                                             |
```
Replace the two clauses:
```markdown
Apotheosis Rare/Epic gear.
```
→
```markdown
Unique weapon/armor drops from dungeons and bosses.
```
and
```markdown
Endgame Apotheosis Mythic gear with perfect gem sockets.
```
→
```markdown
Endgame unique drops + max-enchanted gear.
```

- [ ] **Step 10: Fix the General Tips loot row (line 3341)**

Current (verbatim):
```markdown
| Find the best loot                | Explorer's Compass → YUNG's structure → loot → Apotheosis Rare+ gear                          |
```
Replace with:
```markdown
| Find the best loot                | Explorer's Compass → YUNG's structure → loot → unique weapons and enchantment books            |
```

- [ ] **Step 11: Fix the Modded Coffee GUI coverage note (line 246)**

Current (verbatim):
```markdown
**Not covered — stay bright vanilla**: Mekanism, AE2, MineColonies, Apotheosis, dimension mods (Mindful Darkness darkened every GUI uniformly; that c...
```
Replace `Mekanism, AE2, MineColonies, Apotheosis, dimension mods` with `Mekanism, AE2, MineColonies, dimension mods`.

- [ ] **Step 11a (plan-gap fix, Aug 26): Interdependency notes — Affix coverage bullet**

Current (verbatim):
```markdown
- **Affix coverage**: Apotheosis applies affixes and gems natively by item category — Simply Swords, Arsenal, and Too Many Bows weapons plus all Immersive Armors pieces are affixable out of the box (no compat mod needed). Relics accessories do not take affixes (accessory items, by design). Better Combat (Wave 5) is the shared animation layer for all four weapon mods.
```
Replace with:
```markdown
- **Enchantability**: All Simply Swords, Arsenal, Too Many Bows, and Immersive Armors pieces are enchantable at the vanilla enchanting table (Easy Magic QoL). Relics accessories are not enchantable (accessory items, by design). Better Combat (Wave 5) is the shared animation layer for all four weapon mods.
```

- [ ] **Step 11b (plan-gap fix, Aug 26): Interdependency notes — delete Apothic Compats bullet**

Delete the entire bullet (verbatim):
```markdown
- **Apothic Compats** extends the affix/gem/gear-set/invader system to other in-pack mods' gear and loot: AE2 (affixed loot + gear sets), The Aether (affixes, gear sets, invaders, affixable dart shooters), Cataclysm (affixed loot + gear sets + invaders), Create (affixable potato cannons), Curios (per-slot loot categories + special affixed curio chest loot), Deep Aether + Deeper and Darker + Twilight Forest (affixes, gear sets, invaders), Farmer's Delight (affixed loot), Mekanism Tools (affixed loot + gear sets), and Supplementaries (enchanting stats on candle holders). Each bridge is a datapack that activates only when its target mod is present — so only the 11 in-pack targets take effect; the rest stay inert. This widens the Apotheosis loot chase across tech and exploration.
```

- [ ] **Step 11c (plan-gap fix, Aug 26): Immersive Armors — remove "Apotheosis affixes and gems apply" sentence**

Current (verbatim):
```markdown
**Immersive Armors** adds 40+ unique armor sets with custom effects: Wooden (arrow/explosion protection), Skeleton (speed, Wither variant, skeleton neutrality), Divine (dyeable, blocks 1 attack/min), Heavy (high armor, anti-knockback, slow), Slime (bounce attackers), Warrior (berserk — more damage at low HP), Robe (dyeable wool, fire thorns, fireproof), Steampunk (hostile radar, enhanced UI, double jump, no fall damage), and Prismarine (spikes, depth strider). All sets are enchantable, repairable, and dyeable where applicable. Recipes in vanilla recipe book and EMI. **Apotheosis affixes and gems apply to all Immersive Armors pieces.** Mekanism Tools fills the material-tier progression (Osmium→Bronze→Steel→MekaSuit); Immersive Armors fills the unique-effect s…
```
Replace the sentence `**Apotheosis affixes and gems apply to all Immersive Armors pieces.**` with `All sets are enchantable at the vanilla enchanting table (Easy Magic QoL).` (keep the rest of the paragraph verbatim).

Current (verbatim):
```markdown
**Not covered — stay bright vanilla**: Mekanism, AE2, MineColonies, Apotheosis, dimension mods (Mindful Darkness darkened every GUI uniformly; that c...
```
Replace `Mekanism, AE2, MineColonies, Apotheosis, dimension mods` with `Mekanism, AE2, MineColonies, dimension mods`.

- [ ] **Step 12: Verify**

Run: `grep -n "Apotheosis\|apoth" GUIDE.md | head -40`
Expected: only the Mod Count Summary rows (lines 3262, 3267 — but their `apoth` references are in the Notes column, handled in Task 9) remain.

- [ ] **Step 13: Commit**

```bash
git add GUIDE.md
git commit -m "docs(driftwood): scrub remaining Apotheosis references (Wave 3 detail, building, space, game rules, phases, tips)"
```

---

### Task 9: GUIDE.md — Mod Count Summary update

**Files:**
- Modify: `GUIDE.md:3255-3267` (Mod Count Summary table)

- [ ] **Step 1: Update the Wave 3 row**

Current row (verbatim, line 3262):
```markdown
| Wave 3 — Equipment Magic   | 10      | 12     | 23      | Skills Mastery Reimagined, Pufferfish's Skills, Simply Swords, Simply More, Too Many Bows, Arsenal (RPG Series), Relics, Immersive Armors, Apotheosis, Apothic Compats + 12 deps (Placebo, Apothic modules, Patchouli, Simply Tooltips, Fzzy Config, Ranged Weapon API, Spell Engine, Shield API, Pufferfish's Attributes, Curios API) — +Arsenal +Shield API −Enchanting Runes −FLIB, pins SS 1.63.0 + SM 1.2.3 (Aug 25 2026 review)                    ...
```
Replace the numbers `10      | 12     | 23` with `9       | 9      | 19` and rewrite the Notes column (keep within the same table cell structure) to:
```markdown
| Wave 3 — Equipment Magic   | 9       | 9      | 19      | Skills Mastery Reimagined, Pufferfish's Skills, Simply Swords, Simply More, Too Many Bows, Arsenal (RPG Series), Relics, Immersive Armors, Easy Magic + 9 deps (Placebo, Patchouli, Simply Tooltips, Fzzy Config, Ranged Weapon API, Spell Engine, Shield API, Pufferfish's Attributes, Curios API) — −Apotheosis −Apothic Compats −3 Apothic modules +Easy Magic (Aug 26 2026 removal), pins SS 1.63.0 + SM 1.2.3 |
```

- [ ] **Step 2: Locate where Loot Beams/Nirvana/Common Network are counted in the summary**

Read the Wave 0 row Notes (line 3257) and any Wave 0.5 dependency notes. The Wave 0 row counts Player Experience mods. Find the count columns for the Wave 0/0.5 rows and decrement: mods −1 (Loot Beams), deps −2 (Nirvana Library, Common Network). Adjust the Wave 0 row's mods/deps numbers and the Notes column accordingly (e.g. if the row currently reads `9 | 12 | 21`, the Wave 0 row becomes `8 | 10 | 19` — **verify against the actual current row values before editing**; the mods+deps+1 convention must hold).

- [ ] **Step 3: Update the Total row**

Current (verbatim, line 3267): `| **Total**                  | **177** | **48** | **226** | ...`
Replace the numbers `**177** | **48** | **226**` with `**175** | **43** | **219**` and append to the Notes column: `; −Apotheosis −Apothic Compats −3 Apothic modules −Loot Beams −Nirvana Library −Common Network +Easy Magic (Aug 26 2026)`.

- [ ] **Step 4: Verify arithmetic**

Manually sum: Wave rows' mods + deps + 1 per row convention = Total row. Run `grep -n "Wave 3 — Equipment Magic\|Total" GUIDE.md` and confirm the numbers match the spec (`9/9/19` Wave 3; `175/43/219` Total).

- [ ] **Step 5: Verify no stray references**

Run: `grep -in "apoth" GUIDE.md`
Expected: zero matches EXCEPT the intentional removal-changelog mod names in the Mod Count Summary Notes (Wave 3 + Total rows — "−Apotheosis −Apothic Compats"; adjudicated Aug 26: summary Notes are intentional removal records, same treatment as STATUS.md history).

- [ ] **Step 6: Commit**

```bash
git add GUIDE.md
git commit -m "docs(driftwood): Mod Count Summary — Wave 3 9/9/19, Total 175/43/219 after Apotheosis/Loot Beams removal + Easy Magic"
```

---

### Task 10: AGENTS.md — philosophy updates

**Files:**
- Modify: `AGENTS.md` — 7 edits

- [ ] **Step 1: Combat doctrine (line 19)**

Current (verbatim):
```markdown
The weapon ceiling is **steampunk / Create-native**: Create: Gunsmithing (personal firearms), Create: Big Cannons + Advanced Technologies (artillery), and Apotheosis-forged melee via Simply Swords / Simply More.
```
Replace:
```markdown
The weapon ceiling is **steampunk / Create-native**: Create: Gunsmithing (personal firearms), Create: Big Cannons + Advanced Technologies (artillery), and melee via Simply Swords / Simply More (enchantable at the table with Easy Magic QoL).
```

- [ ] **Step 2: Phase 1 paragraph (line 27)**

Current (verbatim):
```markdown
The player eases into the world. Punch trees, build a starter home with Sophisticated Storage barrels. Recruit a few Guard Villagers for safety. Place the first MineColonies builder hut. Early Create mechanical power (water wheel, windmill) and early Mekanism basic machines (metallurgic infuser, enrichment chamber). First Apotheosis gear drops with affixes start appearing. Farmer's Delight + Brewin' And Chewin' provide hearty meals and drinks. Waystones unlock fast travel between villages. GraveStone Mod makes death forgiving — keep XP, 24h grave protection.
```
Replace the clause `First Apotheosis gear drops with affixes start appearing.` with `First skill-tree points and early unique drops start appearing.`

- [ ] **Step 3: Phase 2 paragraph (line 37)**

Current (verbatim):
```markdown
MineColonies grows from a village into a functioning city, consuming excess resources and supplying rare materials. Apotheosis gear customization (gems, affixes, enchanting overhaul) matures into the primary loot chase — the player hunts for mythic rolls and perfect gem sockets. Create: Big Cannons enters the picture for colony defense and si...
```
Replace the clause:
```markdown
Apotheosis gear customization (gems, affixes, enchanting overhaul) matures into the primary loot chase — the player hunts for mythic rolls and perfect gem sockets.
```
with:
```markdown
The loot chase matures — the player hunts unique weapon/armor drops from dungeons and bosses, and maxes gear via the enchanting table (Easy Magic QoL).
```

- [ ] **Step 4: Phase 3 paragraph (line 47)**

Current (verbatim):
```markdown
No endpoint. Mekanism endgame activates: fusion reactor, supercritical phase shifter, antimatter, full Mekasuit. Applied Energistics 2 grows into quantum networks and spatial storage. Create reaches absurd speeds and scale — mega-factories, infinite resource loops. Apotheosis mythic gear with perfectly socketed gems, max-level enchantments, and ideal affix rolls turns the player into an unstoppable force. MineColonies is a self-sufficient empire across multiple biomes.
```
Replace the clause:
```markdown
Apotheosis mythic gear with perfectly socketed gems, max-level enchantments, and ideal affix rolls turns the player into an unstoppable force.
```
with:
```markdown
Legendary unique drops and max-enchanted gear turn the player into an unstoppable force.
```

- [ ] **Step 5: Integration rule — equipment-magic role (line 64)**

Current (verbatim):
```markdown
- Ars Nouveau spellbooks complement Mekanism gear — magic enhances tech, tech enhances magic. Neither should obsolete the other. *(Only if Ars Nouveau is added — currently not in V3; Apotheosis + Relics + Simply Swords fill the equipment-magic role.)*
```
Replace:
```markdown
*(Only if Ars Nouveau is added — currently not in V3; Relics + Simply Swords + the skill tree fill the equipment-magic role.)*
```

- [ ] **Step 6: Integration rule — YUNG's feeding gear (line 68)**

Current (verbatim):
```markdown
- YUNG's dungeon mods add exploration targets and loot injection points — they feed items into Apotheosis affix/gem system and reward dungeon diving in any phase.
```
Replace with:
```markdown
- YUNG's dungeon mods add exploration targets and loot injection points — they feed the loot chase (unique drops, enchantment books) and reward dungeon diving in any phase.
```

- [ ] **Step 7: Integration rule — Apotheosis on Mekanism gear (line 71)**

Current (verbatim):
```markdown
- Apotheosis gems and affixes work on Mekanism armor/tools — gear customization feeds power fantasy across both tracks.
```
Replace with:
```markdown
- Mekanism armor/tools are enchantable at the table — gear customization feeds power fantasy across both tracks.
```

- [ ] **Step 8: Verify**

Run: `grep -in "apoth" AGENTS.md`
Expected: zero matches.

- [ ] **Step 9: Commit**

```bash
git add AGENTS.md
git commit -m "docs(driftwood): AGENTS.md philosophy — equipment-magic role now Relics + Simply Swords + skills, Easy Magic enchanting"
```

---

### Task 11: STATUS.md — session entry

**Files:**
- Modify: `STATUS.md` (insert at top, before line 1 `### Advancement Plaques + Toast Control Restored (Aug 25, 2026)`)

- [ ] **Step 1: Insert the new session entry at the very top**

Add a new `### ` heading + bullets before the existing first entry. Content (verbatim to insert):

```markdown
### Apotheosis + Apothic Compats + Loot Beams Removed, Easy Magic Added (Aug 26, 2026)

- [x] **User request**: remove **Apotheosis** and **Apothic Compats** from the pack; user also requested **Loot Beams: Refork** removal. Replacement decision (user): **Easy Magic v21.1.4** (enchanting-table QoL — items persist, easy re-rolls, hint tooltips) fills the enchanting role; gems/affixes/rarity are gone by design (power fantasy rides on unique drops + skill tree).
- [x] **Removed mods**: Apotheosis 1.21.1-8.7.0, Apothic Compats 0.2.4.2, Apothic Attributes / Apothic-Enchanting / Apothic-Spawners (modules — can't run without core), Loot Beams: Refork neoforge-1.21.1-3.4.7 + its deps **Nirvana Library 2.2.0** + **Common Network 1.0.21-1.21.1** (verified Modrinth API: Loot Beams requires Nirvana (Clefal's lib), Nirvana requires Common Network; no other in-pack consumers).
- [x] **Kept deps (verified)**: Placebo (Toast Control + FastWorkbench), Patchouli (Mekanism Guide Book), Simply Tooltips (Simply Swords; Apotheosis bridge was optional), Fzzy Config (Simply Swords).
- [x] **Config**: `config/apotheosis/` deleted from repo (user already removed instance config). Easy Magic runs **stock defaults** — no overrides.
- [x] **Quests**: `quest_data/apotheosis.json` chapter (12 quests, group `80000000`) deleted; `validate.py` whitelist updated; mekanism.json affix line reworded.
- [x] **GUIDE.md**: Wave 3 Loot & Affixes table → Enchanting (Easy Magic); Apotheosis config block + overhaul section replaced; ~20 scattered references scrubbed; Session Plan reworked; Mod Count Summary Wave 3 `10/12/23 → 9/9/19`, Total `177/48/226 → 175/43/219`.
- [x] **AGENTS.md**: combat doctrine, Phase 1/2/3, integration rules updated (equipment-magic role = Relics + Simply Swords + skill tree).
- [ ] **Instance action (XMCL)**: remove `Apotheosis*`, `Apothic*`, `Loot Beams Refork*`, `Nirvana*`, `CommonNetwork*` jars from `mods/`; add `EasyMagic-v21.1.4-1.21.1-NeoForge.jar`. [VERIFY] at next launch: no missing-dependency errors (Placebo/Patchouli/Simply Tooltips still resolve), enchanting table keeps items in place + re-rolls work, no rarity beams on drops, quest book has no Apotheosis chapter.
- [x] DRIFTWOOD-GUIDE.pdf regenerated
```

- [ ] **Step 2: Verify insertion**

Read `STATUS.md:1-14`. Expected: new entry at top, old first entry (`### Advancement Plaques...`) immediately follows.

- [ ] **Step 3: Commit**

```bash
git add STATUS.md
git commit -m "docs(driftwood): STATUS — Apotheosis/Apothic Compats/Loot Beams removed, Easy Magic added (Aug 26 2026)"
```

---

### Task 12: TODO.md — backlog updates

**Files:**
- Modify: `TODO.md` — 3 edits

- [ ] **Step 1: Rewrite the Patchouli guidebook task (line 7)**

Current (verbatim):
```markdown
- [ ] Author Patchouli guidebook content for the modlist — the Chronicle of Shadows (Apotheosis) ships with Patchouli, but no other mod in the pack provides Patchouli guidebooks. Author a custom Driftwood guidebook covering: getting started, keybinds reference, progression roadmap (Create → Mekanism → AE2), MineColonies basics, and the Apotheosis gear system. Stored under `patchouli_books/driftwood_guide/` as JSON entries + categories.
```
Replace with:
```markdown
- [ ] Author Patchouli guidebook content for the modlist — Patchouli is in pack (Mekanism Guide Book), but no Driftwood guidebook exists. Author a custom Driftwood guidebook covering: getting started, keybinds reference, progression roadmap (Create → Mekanism → AE2), MineColonies basics, and the loot-chase/enchanting systems. Stored under `patchouli_books/driftwood_guide/` as JSON entries + categories.
```

- [ ] **Step 2: Remove the Apotheosis config-capture task (line 15)**

Delete the line (verbatim):
```markdown
- [ ] After test launch, capture Apotheosis 8.x defaults (module configs — adventure/enchanting/spawners/attributes; paths generated at first launch) then apply overrides per GUIDE.md §Wave 3
```

- [ ] **Step 3: Update the FTB Quests task (line 18)**

Current (verbatim):
```markdown
- [ ] Author ~85 FTB Quests for non-MineColonies mods (Create, Mekanism, AE2, Apotheosis, Combat, Exploration, Food & Farming)
```
Replace with:
```markdown
- [ ] Author FTB Quests for non-MineColonies mods (Create, Mekanism, AE2, Combat, Exploration, Food & Farming) — the Apotheosis chapter (12 quests) was removed with the mod (Aug 2026)
```

- [ ] **Step 4: Verify**

Run: `grep -in "apoth" TODO.md`
Expected: zero matches.

- [ ] **Step 5: Commit**

```bash
git add TODO.md
git commit -m "docs(driftwood): TODO — drop Apotheosis guidebook/config/quest scope"
```

---

### Task 13: Regenerate the guide PDF

**Files:**
- Regenerate: `rendered/DRIFTWOOD-GUIDE.pdf`

- [ ] **Step 1: Run the PDF generation**

```bash
cd H:/Projects/modlists/minecraft
powershell -ExecutionPolicy Bypass -File generate-pdf.ps1
```

Expected: script completes without error; `rendered/DRIFTWOOD-GUIDE.pdf` mtime updates.

- [ ] **Step 2: Verify the PDF reflects the changes**

Run: `grep -c "Apotheosis" rendered/DRIFTWOOD-GUIDE.pdf` (binary grep may fail on compressed streams — instead check the file timestamp changed and size is reasonable). Alternative: open the PDF's first pages via `read` and confirm Wave 3 shows Easy Magic.

- [ ] **Step 3: Commit**

```bash
git add rendered/DRIFTWOOD-GUIDE.pdf
git commit -m "docs(driftwood): regenerate DRIFTWOOD-GUIDE.pdf (Apotheosis removal + Easy Magic)"
```

---

### Task 14: Final verification

**Files:**
- None (verification only)

- [ ] **Step 1: Sweep for stray references**

Run: `grep -rin "apoth" GUIDE.md AGENTS.md TODO.md tools/ftbquests/`
Expected: zero matches, EXCEPT the intentional removal-changelog mod names in GUIDE.md's Mod Count Summary Notes (Wave 3 + Total rows). STATUS.md intentionally retains historical mentions — exclude it from this sweep.

- [ ] **Step 2: Run the quest validator**

Run: `cd H:/Projects/modlists/minecraft && python tools/ftbquests/validate.py`
Expected: exits 0, no output or a clean summary (no `unknown mod: apotheosis` errors).

- [ ] **Step 3: Confirm the quest generator still produces all remaining chapters**

Run: `cd H:/Projects/modlists/minecraft && python tools/ftbquests/generate.py` (check the script's CLI — if it takes a chapter name, run it for a representative chapter like `mekanism`). Expected: no errors, output written to `config/ftbquests/quests/` without the apotheosis chapter. (If `generate.py` regenerates all chapters by default, confirm the apotheosis chapter is absent from the output.)

- [ ] **Step 4: Verify git state**

Run: `git status --short`
Expected: clean working tree (all changes committed across tasks 1-13).

- [ ] **Step 5: Cross-check spec compliance**

Walk the spec checklist (`docs/superpowers/specs/2026-08-26-remove-apotheosis-design.md` §Verification): no `apoth` in live docs, validator clean, counts consistent (`175/43/219`), PDF regenerated, instance checklist present in STATUS.md.

---

## Self-Review Notes (completed)

- **Spec coverage**: every spec section maps to a task — config (T1), quests (T2), Wave 3 tables (T3), config block (T4), overhaul section + session plan (T5), scattered refs part 1-3 (T6-T8), counts (T9), AGENTS (T10), STATUS (T11), TODO (T12), PDF (T13), verification (T14).
- **Placeholder scan**: no TBD/TODO/"similar to" — every edit carries verbatim current text + replacement.
- **Type consistency**: line anchors are copied from live reads of GUIDE.md (lines 246, 414, 528, 539, 560, 628, 694, 736, 1010, 1012, 1134, 1718, 2144, 2156, 2224, 2250-2336, 2686, 2976, 2991, 3193, 3239, 3255-3267, 3300-3301, 3341), AGENTS.md (19, 27, 37, 47, 64, 68, 71), TODO.md (7, 15, 18), STATUS.md (top). Wave 0 row count values must be read fresh at Task 9 Step 2 (marked as verify-before-edit).
