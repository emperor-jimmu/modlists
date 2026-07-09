# Foundations and Compatibility

**MO2 Separators:** `Foundations` → `Foundations - SKSE & Scripts`, `Foundations - Core Libraries`, `Foundations - Mesh & Texture Fixes`, `Foundations - Targeted Bugfixes`

All mods in this section are installed into the appropriate `Foundations` sub-separators as noted per group.

---

## Core Framework Baseline → separators: `Foundations` (parent)

Install all core libraries and frameworks upfront — they are non-negotiable dependencies for virtually every mod in the list. Bulk-install prevents missing-master errors and lets every subsequent section work against the real framework stack.

### SKSE & Scripts → separator: `Foundations - SKSE & Scripts`

- **SKSE64** — Script extender; required by almost every SKSE plugin. [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/30379)

### Core Libraries → separator: `Foundations - Core Libraries`

| Mod                                                                                                 | Purpose                                                                                   |
|-----------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------|
| [Address Library for SKSE Plugins](https://www.nexusmods.com/skyrimspecialedition/mods/32444)       | Universal SKSE plugin compatibility layer for 1.6.1170.                                   |
| [USSEP](https://www.nexusmods.com/skyrimspecialedition/mods/266)                                    | Foundational record patch. Requires the four free CC masters — no paid AE Upgrade needed. |
| [SSE Engine Fixes](https://www.nexusmods.com/skyrimspecialedition/mods/17230)                       | Critical engine-level stability and bug fixes.                                            |
| [SSE Display Tweaks](https://www.nexusmods.com/skyrimspecialedition/mods/34705)                     | Mandatory display and frame-pacing control.                                               |
| [Scrambled Bugs](https://www.nexusmods.com/skyrimspecialedition/mods/43532)                         | Collection of low-level engine tweaks.                                                    |
| [powerofthree's Tweaks](https://www.nexusmods.com/skyrimspecialedition/mods/51073)                  | SKSE plugin tweak framework; hard dependency for many modern mods.                        |
| [powerofthree's Papyrus Extender](https://www.nexusmods.com/skyrimspecialedition/mods/22854)        | Extended Papyrus scripting functions.                                                     |
| [PapyrusUtil](https://www.nexusmods.com/skyrimspecialedition/mods/13048)                            | Papyrus array/map utilities.                                                              |
| [JContainers](https://www.nexusmods.com/skyrimspecialedition/mods/16495)                            | JSON data storage for Papyrus.                                                            |
| [Keyword Item Distributor (KID)](https://www.nexusmods.com/skyrimspecialedition/mods/55728)         | Distributes keywords to items without patching.                                           |
| [Spell Perk Item Distributor (SPID)](https://www.nexusmods.com/skyrimspecialedition/mods/36869)     | Distributes spells/perks to NPCs dynamically.                                             |
| [Base Object Swapper (BOS)](https://www.nexusmods.com/skyrimspecialedition/mods/60805)              | Swaps base objects via rules without direct overrides.                                    |
| [Crash Logger SSE AE VR](https://www.nexusmods.com/skyrimspecialedition/mods/59818)                 | Crash dump logging for diagnosing CTDs.                                                   |
| [SkyPatcher](https://www.nexusmods.com/skyrimspecialedition/mods/106659)                            | SKSE-based vanilla record patcher; hard requirement for several NPC/AI mods.              |
| [Dual Casting Fix](https://www.nexusmods.com/skyrimspecialedition/mods/92454)                       | Required by Blade and Blunt.                                                              |
| [Andrealphus' Papyrus Functions](https://www.nexusmods.com/skyrimspecialedition/mods/85252)         | Required by Dragon War.                                                                   |
| [ConsoleUtilSSE NG](https://www.nexusmods.com/skyrimspecialedition/mods/76649)                      | Required by Dragon War and several animation behavior mods.                               |
| [Kris's Papyrus Extender](https://www.nexusmods.com/skyrimspecialedition/mods/115164)               | Required by Bathing in Skyrim - Renewed.                                                  |
| [Animation Queue Fix](https://www.nexusmods.com/skyrimspecialedition/mods/82395)                    | Animation-stack stability for heavy OAR/behavior loads.                                   |
| [Papyrus Tweaks NG](https://www.nexusmods.com/skyrimspecialedition/mods/77779)                      | Script-engine performance optimization; widely adopted baseline.                          |
| [Lexicon SKSE](https://www.nexusmods.com/skyrimspecialedition/mods/153176)                          | Required by Actor Value Generator.                                                        |
| [Actor Value Generator](https://www.nexusmods.com/skyrimspecialedition/mods/84743)                  | Required by Classic Attributes.                                                           |
| [XEMI Utility](https://www.nexusmods.com/skyrimspecialedition/mods/159084)                          | Required by FYX - Nordic Doors and Traps Collisions.                                      |
| [Sonders Keyword Distribution Resources](https://www.nexusmods.com/skyrimspecialedition/mods/93995) | Keyword distribution framework for item/keyword tagging.                                  |
| [Skyrim Save System Overhaul 3 (SSSO3)](https://www.nexusmods.com/skyrimspecialedition/mods/122343) | Save-system replacement with Save Shield, rotating caps, and safe timed hardsaves. Requires `JContainers SE` + `NL_MCM`. |
| [Unofficial Skyrim Modder's Patch - USMP SE](https://www.nexusmods.com/skyrimspecialedition/mods/49616) | Modder-side patch collection fixing record-level bugs across DLC and CC content. Complements USSEP. |
| [USMP - Patch Emporium](https://www.nexusmods.com/skyrimspecialedition/mods/50813) | Centralized patch hub for USMP — third-party compatibility patches for various content mods. Install after USMP base. |

### SSSO3 Configuration

Vanilla autosaves, quicksaves, and manual saves all write the same `.ess` format — the instability risk is **when** they fire (cell transitions, combat, half-evaluated script state), not the format. SSSO3 replaces vanilla triggers with a Save Shield that defers saves during unsafe states.

**Installation:**

1. Install requirements (already in Core Libraries): `JContainers SE`, `NL_MCM - A Modular MCM Framework`, `Regional Save Names`, `SSE Engine Fixes`
2. Install the SSSO3 main file and `SSSO3 - French` (if applicable). Place SSSO3 anywhere in load order.
3. **Disable all vanilla autosaves** in BethINI Pie: untick Autosaves, Save on Travel, Save on Rest, Save on Wait. SSSO3 force-deactivates them, but BethINI settings prevent the INI values from conflicting.
4. Disable `iAutoSaveCount` in `Skyrim.ini` (`[SaveGame]`) to prevent the engine from reserving autosave slots — SSSO3 manages its own.

**In-game setup (required before the rotating system activates):**

1. Create your character and exit the starting cell (alternate-start mod or vanilla Helgen sequence).
2. Make one manual save to generate a save file on disk.
3. Open the SSSO3 MCM. Go to **Player Setup**.
4. Press the **Find Player ID** button — SSSO3 reads it automatically from the save file. If it fails, use **Bypass Check** and type your character name exactly.
5. Assign a **Quick Save key** and a **Quick Load key** in the MCM.
6. **Select a preset profile.** For Elder Wilds, start with **Vanilla+** — it replicates vanilla autosave behavior with Save Shield protection and timed saves, no hardcore restrictions.
7. From the MCM's **Rotating System** page, set your preferred save cap (20-30 is reasonable for a playthrough).

**Campfire users:** SSSO3 must overwrite Campfire's files. Use the Campfire patch included with SSSO3 and let SSSO3 win file conflicts in MO2.

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

- `Book Covers Skyrim - SkyPatched` (→ [Textures & Meshes](modlist-graphics-textures.md))
- `Dawnguard Arsenal SSE - SkyPatched` (→ [World Content](modlist-world-content.md))
- `Diverse 4thUnknown Dragons` — uses SkyPatcher for combat-mod compatibility (→ [Enemies & Creatures](modlist-creatures.md))
- `Patchifier` Synthesis patcher generates SkyPatcher patches (→ [Bashed Patch & Synthesis Configuration](modlist-performance-patches.md))

### Mesh & Texture Fixes → separator: `Foundations - Mesh & Texture Fixes`

| Mod                   | Purpose                                                        |
|-----------------------|----------------------------------------------------------------|
| Particle Patch        | Particle shader/LOD corrections, CS-compatible.                |
| Assorted Mesh Fixes   | Corrections for common visual mesh errors.                     |
| Flickering Meshes Fix | Resolves distant-object mesh flicker in landscape transitions. |

---

## Official Masters Cleanup → separator: `Foundations` (parent)

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

### Risks & Compatibility

- Cleaning `Update.esm` is standard despite some mod-author cautions; USSEP's records win over cleaned originals.
- Never clean a third-party mod's plugin unless LOOT explicitly flags it — many mods ship ITMs intentionally.
- `Cleaned Vanilla Masters` must remain enabled for the entire playthrough.

---

## Patching Technique And Strategy → separator: `Foundations` (parent)

Adopt the canonical `xEdit` mod-by-mod patching workflow: install one mod at a time, run `xEdit` in `-veryquickshowconflicts` mode, resolve only new conflicts, use per-pair patches and `ModGroups`. Reserve `Bashed Patch` and `Synthesis` for the categories they genuinely own.

### Wrye Bash And The Bashed Patch

The **Bashed Patch** is an automatically generated plugin merging leveled lists, applying game-setting tweaks, and resolving category-tagged record conflicts. Replaces dozens of per-pair patches for the record types it owns.

**Rebuild triggers:** adding/removing leveled-list mods, changing `.TweakSettings`, adding a mod with `Bash Tags`, form-ID compaction. It is step 2 in the full build order (after `SSEEdit`, before `Synthesis`; see → [Bashed Patch & Synthesis Configuration](modlist-performance-patches.md)).

**What the Bashed Patch does not do:** resolve arbitrary record conflicts (→ `xEdit`/`Synthesis`), merge plugins (→ ESL flags), or iterative/rule-based patching (→ `Synthesis`).

**Mods complementing or requiring Wrye Bash:**

- **Leveled-list expanders** (Immersive Weapons, Immersive Armors, Hunterborn) — need `Relev`/`Delev`/`Invent.Add` tags
- **World loot frameworks** (Open World Loot, MorrowLoot Ultimate)
- **Economy mods** (Trade and Barter, Ars Metallica, Honed Metal, Apothecary) — need `Stats`/`Invent.Change`
- **Lighting/weather** (CS Light, True Light, RAID Weathers) — need `C.Light`/`C.Water`/`C.Climate`
- **NPC/follower mods** (RDO, Nether's, Serana Dialogue) — need `Actors.*` tags
- **Audio overhauls** (AOS, ISC, Sounds of Skyrim) — need `Sound`/`C.Acoustic`

Exact `Bash Tag` per plugin, `.TweakSettings` table, and build-order placement → [Bashed Patch & Synthesis Configuration](modlist-performance-patches.md).

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

### Risks & Compatibility

- Keep Bashed Patch and Synthesis scoped — don't let them absorb every decision.
- Date-stamp patches and re-run xEdit after every source-mod update.
- Patches copying from downstream plugins inherit unresolved conflicts — read the master chain.
- xEdit normal mode writes current loaded state — never use it to save. Save only in fast mode.
- Promote tiny per-pair patches into themed region/feature patches when count becomes unmanageable.
- Deliberately test that disabling one upstream source mod cleanly stops its ModGroup and dependent patches.

---

## ESP To ESL Conversion → separator: `Foundations` (parent)

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

| Mod                                                                                           | Purpose                                                             |
|-----------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| [Fuz Ro D-oh - Silent Voice](https://www.nexusmods.com/skyrimspecialedition/mods/15109)       | Subtitle safety for unvoiced dialogue.                              |
| [Actor Limit Fix](https://www.nexusmods.com/skyrimspecialedition/mods/32349)                  | Crowded scene / facial animation reliability.                       |
| [Equip Enchantment Fix](https://www.nexusmods.com/skyrimspecialedition/mods/42839)            | Enchantments dropping off while equipped.                           |
| [NPC AI Process Position Fix - NG](https://www.nexusmods.com/skyrimspecialedition/mods/69326) | NPC processing after waiting/fast travel.                           |
| [Simple Offence Suppression](https://www.nexusmods.com/skyrimspecialedition/mods/41764)       | Accidental hostility from stray hits.                               |
| [Bug Fixes SSE](https://www.nexusmods.com/skyrimspecialedition/mods/33261)                    | Crafting-menu, perk-application, and water-behavior fixes.          |
| [Navigator - Navmesh Fixes](https://www.nexusmods.com/skyrimspecialedition/mods/52641)        | Follower pathing in complex worldspaces.                            |
| [Barter Limit Fix](https://www.nexusmods.com/skyrimspecialedition/mods/77173)                 | Merchant gold cap overflow.                                         |
| [Mum's the Word NG](https://www.nexusmods.com/skyrimspecialedition/mods/77409)                | Worthless stolen-item tagging.                                      |
| [Regional Save Names](https://www.nexusmods.com/skyrimspecialedition/mods/49698)              | Save labeling for testing hygiene.                                  |
| [Better Jumping SE](https://www.nexusmods.com/skyrimspecialedition/mods/18967)                | Consistent jumping control.                                         |
| [LeveledList Crash Fix](https://www.nexusmods.com/skyrimspecialedition/mods/129136)           | Leveled-list crash protection.                                      |
| [Explosion Collision Fix](https://www.nexusmods.com/skyrimspecialedition/mods/154076)         | Prevents explosion-force spells from launching objects into camera. |
| [Weapons Armor Clothing and Clutter Fixes (WACCF)](https://www.nexusmods.com/skyrimspecialedition/mods/18994) | Broad record fix for weapon/armor/clothing/clutter records. High compatibility debt — test carefully with the crafting and artifact stack. Optional — skip if conflicts outweigh gains. |

### Not Installed

- **Alt-Tab Stuck Key Fix** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/148466)) — Prevents stuck modifier keys after alt-tabbing. Optional fix, evaluate if alt-tab issues arise during testing.
- **I'm Walkin' Here NG with Pets** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/122516)) — Ally/pet body-blocking fix.
- **Bard Instrumentals Mostly - Sing Rarely** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/10927)) — Repetitive tavern singing. Not needed — other bard mods cover this. → separator: `Audio - SFX & Ambience`
