# Foundations and Compatibility

All mods in this section are installed into the appropriate `Foundations` sub-separators as noted per group.

## Baseline

Install all core libraries and frameworks upfront — they are non-negotiable dependencies for virtually every mod in the list. Bulk-install prevents missing-master errors and lets every subsequent section work against the real framework stack.

### SKSE & Scripts → separator: `Foundations - SKSE & Scripts`

- **SKSE64** — Script extender; required by almost every SKSE plugin. [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/30379)

### Core Libraries → separator: `Foundations - Core Libraries`

- **Address Library for SKSE Plugins** — Universal SKSE plugin compatibility layer for 1.6.1170.
- **USSEP** — Foundational record patch. Requires the four free CC masters — no paid AE Upgrade needed.
- **SSE Engine Fixes** — Critical engine-level stability and bug fixes.
- **SSE Display Tweaks** — Mandatory display and frame-pacing control.
- **Scrambled Bugs** — Collection of low-level engine tweaks.
- **powerofthree's Tweaks** — SKSE plugin tweak framework; hard dependency for many modern mods.
- **powerofthree's Papyrus Extender** — Extended Papyrus scripting functions.
- **PapyrusUtil** — Papyrus array/map utilities.
- **JContainers** — JSON data storage for Papyrus.
- **Keyword Item Distributor (KID)** — Distributes keywords to items without patching.
- **Spell Perk Item Distributor (SPID)** — Distributes spells/perks to NPCs dynamically.
- **Base Object Swapper (BOS)** — Swaps base objects via rules without direct overrides.
- **Crash Logger SSE AE VR** — Crash dump logging for diagnosing CTDs.
- **SkyPatcher** — SKSE-based vanilla record patcher; hard requirement for several NPC/AI mods.
- **Dual Casting Fix** — Required by Blade and Blunt.
- **Andrealphus' Papyrus Functions** — Required by Dragon War.
- **ConsoleUtilSSE NG** — Required by Dragon War and several animation behavior mods.
- **Kris's Papyrus Extender** — Required by Bathing in Skyrim - Renewed.
- **Animation Queue Fix** — Animation-stack stability for heavy OAR/behavior loads.
- **Papyrus Tweaks NG** — Script-engine performance optimization; widely adopted baseline.
- **Lexicon SKSE** — Required by Actor Value Generator.
- **Actor Value Generator** — Required by Classic Attributes.
- **XEMI Utility** — Required by FYX - Nordic Doors and Traps Collisions.

### SkyPatcher And SkyPatched Mods → separator: `Foundations - Core Libraries`

**SkyPatcher** is an SKSE plugin that patches vanilla records at runtime from INI-style configuration files rather than traditional ESP plugins. No winner-loser override chain, no per-pair patches for the records it covers.

A **"SkyPatched"** variant ships record changes as SkyPatcher configs instead of an ESP. Assets (meshes, textures, scripts) still install in MO2's left pane, but the plugin slot is replaced by files under `SKSE/Plugins/SkyPatcher/`.

**When to choose SkyPatched:**
- Mod only changes vanilla records (book stats, weapon damage, armor ratings, ingredient values), not new records
- Load order is approaching the 254-plugin cap — each SkyPatched variant saves one ESP slot
- Multiple mods edit the same records — runtime application avoids patch debt
- Author explicitly provides a SkyPatched alternative

**When to stick with traditional plugin:**
- Mod adds new records (CELL, WRLD, QUST, NPC_ with facegen)
- Mod needs explicit load-order priority — Bashed Patch or xEdit patches give control that "all apply" doesn't
- No SkyPatched variant available

**Mods using SkyPatcher in this list:**
- `Book Covers Skyrim - SkyPatched` (→ `02c`)
- `Dawnguard Arsenal SSE - SkyPatched` (→ `08`)
- `Diverse 4thUnknown Dragons` — uses SkyPatcher for combat-mod compatibility (→ `09`)
- `Patchifier` Synthesis patcher generates SkyPatcher patches (→ `14d`)

### Mesh & Texture Fixes → separator: `Foundations - Mesh & Texture Fixes`

- **Particle Patch** — Particle shader/LOD corrections, CS-compatible.
- **Assorted Mesh Fixes** — Corrections for common visual mesh errors.
- **Flickering Meshes Fix** — Resolves distant-object mesh flicker in landscape transitions.

---

## Official Masters Cleanup

Clean all six-plus vanilla masters before installing any mod. Use `xEditQuickAutoClean` on each file individually, collect cleaned `.esm` files into a `Cleaned Vanilla Masters` MO2 mod, and restore originals from `xEdit Backups` back into `Data\`.

### Which Masters To Clean
- `Skyrim.esm`, `Update.esm`, `Dawnguard.esm`, `HearthFires.esm`, `Dragonborn.esm`
- All Creation Club `.esm` files shipped with 1.6.1170
- Do not clean `_ResourcePack.esl` — contains no ITM or UDR records.

### Procedure
1. Create empty mod `Cleaned Vanilla Masters` under `Output` separator. Leave disabled.
2. Run LOOT, sort, apply, close.
3. For each `.esm`: select `xEditQuickAutoClean` from MO2 executables, check ONLY that master, wait for completion, close.
4. Move cleaned masters (recent mod date) from `Data\` into `Cleaned Vanilla Masters\` mod folder. Keep only `.esm` files; delete `.backup`/`.bak`.
5. Restore originals from `xEdit Backups` back into `Data\`.
6. Enable `Cleaned Vanilla Masters` in MO2. Run LOOT again — no masters flagged.

### Notes
- Cleaning `Update.esm` is standard despite some mod-author cautions; USSEP's records win over cleaned originals.
- Never clean a third-party mod's plugin unless LOOT explicitly flags it — many mods ship ITMs intentionally.
- `Cleaned Vanilla Masters` must remain enabled for the entire playthrough.

---

## Patching Technique And Strategy

Adopt the canonical `xEdit` mod-by-mod patching workflow: install one mod at a time, run `xEdit` in `-veryquickshowconflicts` mode, resolve only new conflicts, use per-pair patches and `ModGroups`. Reserve `Bashed Patch` and `Synthesis` for the categories they genuinely own.

### Wrye Bash And The Bashed Patch

The **Bashed Patch** is an automatically generated plugin merging leveled lists, applying game-setting tweaks, and resolving category-tagged record conflicts. Replaces dozens of per-pair patches for the record types it owns.

**Rebuild triggers:** adding/removing leveled-list mods, changing `.TweakSettings`, adding a mod with `Bash Tags`, form-ID compaction. It is step 2 in the full build order (after `SSEEdit`, before `Synthesis`; see → `14d`).

**What the Bashed Patch does not do:** resolve arbitrary record conflicts (→ `xEdit`/`Synthesis`), merge plugins (→ ESL flags), or iterative/rule-based patching (→ `Synthesis`).

**Mods complementing or requiring Wrye Bash:**
- **Leveled-list expanders** (Immersive Weapons, Immersive Armors, Hunterborn) — need `Relev`/`Delev`/`Invent.Add` tags
- **World loot frameworks** (Open World Loot, MorrowLoot Ultimate)
- **Economy mods** (Trade and Barter, Ars Metallica, Honed Metal, Apothecary) — need `Stats`/`Invent.Change`
- **Lighting/weather** (CS Light, True Light, RAID Weathers) — need `C.Light`/`C.Water`/`C.Climate`
- **NPC/follower mods** (RDO, Nether's, Serana Dialogue) — need `Actors.*` tags
- **Audio overhauls** (AOS, ISC, Sounds of Skyrim) — need `Sound`/`C.Acoustic`

Exact `Bash Tag` per plugin, `.TweakSettings` table, and build-order placement → `14d` [`modlist-performance-patches.md`](modlist-performance-patches.md).

### Cyclic Workflow (per new mod)

1. **Install and place.** Heuristic: broad world-changers early; narrow/local edits late.
2. **Run `xEdit` with `-veryquickshowconflicts`.** Register xEdit in MO2 with that argument. Right-click → `Hide no conflict and empty rows`.
3. **Try load order first.** Move mod up/down if that resolves most conflicts; re-run.
4. **Identify bad conflicts.** Only conflicts where the loser was supposed to win.
5. **Build per-pair patch.** `Copy as override into…` → `<new file>.esp [Template] ESL`. Name explicitly (e.g., `LoreRim_x_RWT.esp`). Drag missing fields from loser into new record. Accept master addition. Run `Add Masters…` for every referenced mod. Save into `Patches` separator.
6. **Build per-pair `ModGroup`s.** One `ModGroup` per conflicting pair. Move `*.ModGroup` files from `MO2 overwrite` into the source mod's own MO2 folder.
7. **Re-open xEdit and confirm zero visible conflicts.**

### Starting State
Clean load order (`Skyrim.esm`, `Update.esm`, three DLCs) plus USSEP. USSEP ships a premade ModGroup since xEdit 4.1.7 — keep it.

### Cleaning Discipline
Run LOOT after new mod install. If flagged for cleaning, run `Quick Auto Clean` then `Check For Errors`. Red errors = reconsider the mod. QAC only removes ITM/UDR records.

### ESL-Flagged Patches
Always use `<new file>.esp [Template] ESL` for patches. Never manually re-flag ESP↔ESL unless the mod author or xEdit explicitly says to.

### Notes
- Keep Bashed Patch and Synthesis scoped — don't let them absorb every decision.
- Date-stamp patches and re-run xEdit after every source-mod update.
- Patches copying from downstream plugins inherit unresolved conflicts — read the master chain.
- xEdit normal mode writes current loaded state — never use it to save. Save only in fast mode.
- Promote tiny per-pair patches into themed region/feature patches when count becomes unmanageable.
- Deliberately test that disabling one upstream source mod cleanly stops its ModGroup and dependent patches.

---

## ESP To ESL Conversion

Converting ESP to ESL-flagged ESP frees a regular plugin slot (limit 254) by moving into the 4096 light-plugin address space.

### What Makes A Plugin Convertible
- Fewer than 2048 new record forms
- No new CELL/WRLD/NAVM/NAVI records
- No QUST/DIAL overrides with hard-coded form ID references
- **Trivially convertible:** Bodyslide outputs, SKSE plugin dummy ESPs, texture-replacer ESPs

### Automated Discovery
1. **Built-in script:** `Find ESP plugins which could be turned into ESL.pas` — ships with SSEEdit.
2. **Fractal's `ESP-ESL Finder v1.1`** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/117978))
3. **`ESLify`** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/42211)) — batch-convert wrapper. Verify candidates manually first.
4. **`SSEEdit Script - Header Change to Version 1.71`** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/115056)) — unlocks full 4095-record range for 1.6.1130+.

### Safe Conversion (low risk)
1. Right-click → `Compact Form IDs for ESL`.
2. Right-click → `Set Is-Esl Flag` (ESL only, not ESM).
3. Save. Re-sort with LOOT.

### Full Conversion (xEdit workflow)
1. Load plugin + dependencies. Apply `Hide no conflict and empty rows`.
2. Right-click → `Compact Form IDs for ESL`. If zero, skip to step 4.
3. **Check for broken references:** Run `Check for Errors`; for external refs, load full load order → `Referenced By` → `Apply as filter`; or use `List records referencing specific plugins.pas`.
4. Right-click → `Set Is-Esl Flag` (ESL only).
5. Save. Re-sort.

### Red Lines
- **Never** convert plugins with CELL/WRLD/NAVM/NAVI records without verifying every cross-reference.
- **Never** convert mid-playthrough.
- **Never** convert a plugin another mod lists as a master without verifying.
- ESL-flagged plugins still count toward the 4096 light-plugin limit.

### Recommended Candidates
- Bodyslide outputs, texture-replacer ESPs, SKSE plugin dummies
- Single-weapon/armor/spell mods with <50 new records and no scripts
- Crafting recipe-only ESPs
- Patches created via `[Template] ESL`

### Never Convert
- Major quest mods (LotD, Interesting NPCs, Vigilant)
- City/settlement overhauls with new CELL or WRLD records
- Overhauls with new dialogue branches or follower framework quest aliases
- Any plugin LOOT or SSEEdit flags as not ESL-safe

---

## Targeted Bugfix Mods → separator: `Foundations - Targeted Bugfixes`

### Baseline
- **Fuz Ro D-oh - Silent Voice** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/15109)) — Subtitle safety for unvoiced dialogue.
- **Actor Limit Fix** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/32349)) — Crowded scene / facial animation reliability.
- **Equip Enchantment Fix** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/42839)) — Enchantments dropping off while equipped.
- **NPC AI Process Position Fix - NG** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/69326)) — NPC processing after waiting/fast travel.
- **Simple Offence Suppression** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/41764)) — Accidental hostility from stray hits.
- **Bug Fixes SSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/33261)) — Crafting-menu, perk-application, and water-behavior fixes.
- **Navigator - Navmesh Fixes** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/52641)) — Follower pathing in complex worldspaces.
- **Barter Limit Fix** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/77173)) — Merchant gold cap overflow.
- **Mum's the Word NG** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/77409)) — Worthless stolen-item tagging.
- **Regional Save Names** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/49698)) — Save labeling for testing hygiene.
- **Better Jumping SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/18967)) — Consistent jumping control.
- **LeveledList Crash Fix** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/129136)) — Leveled-list crash protection.
- **Explosion Collision Fix** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/154076)) — Prevents explosion-force spells from launching objects into camera.

### Not Installed
- **I'm Walkin' Here NG with Pets** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/122516)) — Ally/pet body-blocking fix.
- **Bard Instrumentals Mostly - Sing Rarely** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/10927)) — Repetitive tavern singing. Not needed — other bard mods cover this. → separator: `Audio - SFX & Ambience`

### TODO
- **Alt-Tab Stuck Key Fix** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/148466)) — Stuck modifier keys after alt-tab.
