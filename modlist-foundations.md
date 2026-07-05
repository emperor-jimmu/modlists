# Foundations and Compatibility

## Baseline

Install all core libraries and frameworks upfront — they are non-negotiable dependencies for virtually every mod in the list. Bulk-install prevents missing-master errors and lets every subsequent section work against the real framework stack.

### SKSE & Scripts → `Foundations - SKSE & Scripts`

- **SKSE64** — Script extender; required by almost every SKSE plugin. [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/30379)

### Core Libraries → `Foundations - Core Libraries`

- **Address Library for SKSE Plugins** — Universal SKSE plugin compatibility layer for 1.6.1170. → `Foundations - Core Libraries`
- **USSEP** — Foundational record patch. Requires the four free CC masters — no paid AE Upgrade needed. → `Foundations - Core Libraries`
- **SSE Engine Fixes** — Critical engine-level stability and bug fixes. → `Foundations - Core Libraries`
- **SSE Display Tweaks** — Mandatory display and frame-pacing control. → `Foundations - Core Libraries`
- **Scrambled Bugs** — Collection of low-level engine tweaks. → `Foundations - Core Libraries`
- **powerofthree's Tweaks** — SKSE plugin tweak framework used as hard dependency by many modern mods. → `Foundations - Core Libraries`
- **powerofthree's Papyrus Extender** — Extended Papyrus scripting functions. → `Foundations - Core Libraries`
- **PapyrusUtil** — Papyrus array/map utilities. → `Foundations - Core Libraries`
- **JContainers** — JSON data storage for Papyrus. → `Foundations - Core Libraries`
- **Keyword Item Distributor (KID)** — Distributes keywords to items without patching. → `Foundations - Core Libraries`
- **Spell Perk Item Distributor (SPID)** — Distributes spells/perks to NPCs dynamically. → `Foundations - Core Libraries`
- **Base Object Swapper (BOS)** — Swaps base objects via rules without direct overrides. → `Foundations - Core Libraries`
- **Crash Logger SSE AE VR** — Crash dump logging for diagnosing CTDs. → `Foundations - Core Libraries`
- **SkyPatcher** — SKSE-based vanilla record patcher; hard requirement of several NPC/AI mods. → `Foundations - Core Libraries`
- **Dual Casting Fix** — Fixes dual-casting perk application; required by Blade and Blunt. → `Foundations - Core Libraries`
- **Andrealphus' Papyrus Functions** — Extended Papyrus function library; required by Dragon War. → `Foundations - Core Libraries`
- **ConsoleUtilSSE NG** — Console command access from Papyrus; required by Dragon War and several animation behavior mods. → `Foundations - Core Libraries`
- **Kris's Papyrus Extender** — Additional Papyrus functions; required by Bathing in Skyrim. → `Foundations - Core Libraries`
- **Animation Queue Fix** — Animation-stack stability for heavy OAR/behavior loads. → `Foundations - Core Libraries`
- **Papyrus Tweaks NG** — Script-engine performance optimization; widely adopted baseline. → `Foundations - Core Libraries`
- **Lexicon SKSE** — Custom scripted function engine; required by Actor Value Generator. → `Foundations - Core Libraries`
- **Actor Value Generator** — Custom actor value creation; required by Classic Attributes. → `Foundations - Core Libraries`
- **XEMI Utility** — Custom collision primitives; required by FYX - Nordic Doors and Traps Collisions. → `Foundations - Core Libraries`

### Mesh & Texture Fixes → `Foundations - Mesh & Texture Fixes`

- **Particle Patch** — Particle shader/LOD corrections, compatible with Community Shaders. → `Foundations - Mesh & Texture Fixes`
- **Assorted Mesh Fixes** — Corrections for common visual mesh errors. → `Foundations - Mesh & Texture Fixes`
- **Flickering Meshes Fix** — Resolves distant-object mesh flicker in landscape transitions. → `Foundations - Mesh & Texture Fixes`

## Official Masters Cleanup

Clean all six-plus vanilla masters before installing any mod — they ship with ITM records and undeleted deleted references that cause spurious LOOT warnings and reproducible CTDs. Use `xEditQuickAutoClean` on each file individually, collect cleaned `.esm` files into a `Cleaned Vanilla Masters` MO2 mod, and restore originals from `xEdit Backups` back into `Data\`.

### Which Masters To Clean

- `Skyrim.esm`, `Update.esm`, `Dawnguard.esm`, `HearthFires.esm`, `Dragonborn.esm`
- All Creation Club `.esm` files shipped with 1.6.1170 (`ccbgssse001-fish.esm`, `ccqdrsse001-survivalmode.esl`, `ccbgssse037-curios.esl`, `ccbgssse025-advdsgs.esm`, etc.)

Do not clean `_ResourcePack.esl` — it contains no ITM or UDR records.

### Procedure

1. **Create output mod**: In MO2, create empty mod named `Cleaned Vanilla Masters` under `Output` separator. Leave disabled.
2. **Run LOOT**: Sort plugins, apply, close.
3. **Clean each master individually**: For each `.esm` file, select `xEditQuickAutoClean` from MO2 executables, check ONLY that master, click OK, wait for completion, close.
4. **Move cleaned files**: Open `Skyrim Special Edition\Data`, locate cleaned masters (recent mod date), move them into `Mod Organizer 2\mods\Cleaned Vanilla Masters\`. Keep only `.esm` files; delete `.backup`/`.bak` files.
5. **Restore originals**: Copy `.esm` files from `xEdit Backups` folder back into `Data\`.
6. **Enable and verify**: Enable `Cleaned Vanilla Masters` in MO2. Run LOOT again — no masters flagged.

### Notes

- Cleaning `Update.esm` is standard despite some mod-author cautions; USSEP's records win over cleaned originals in the load order.
- Never clean a third-party mod's plugin unless LOOT explicitly flags it — many mods ship ITMs intentionally for compatibility.
- `Cleaned Vanilla Masters` must remain enabled for the entire playthrough.

## Patching Technique And Strategy

Adopt the canonical `xEdit` mod-by-mod patching workflow (`Method` by `Elminster`, documented by `elwaps`): install one mod at a time, run `xEdit` in `-veryquickshowconflicts` mode, resolve only the conflicts the new mod introduces, use per-pair patches and `ModGroups` to keep the tree clean. Reserve `Bashed Patch` and `Synthesis` for the categories they genuinely own.

### Cyclic Workflow

Repeat these steps for every new mod:

1. **Install and place.** Guess a good load-order position. Heuristic: mods that make the most changes to the game world go early; narrow/local edits go late.

2. **Run `xEdit` with `-veryquickshowconflicts`.** Register xEdit in MO2 with `-veryquickshowconflicts` as the executable argument. Right-click the right pane → `Hide no conflict and empty rows`.

3. **Try load order first.** Move the mod up or down if that resolves most visible conflicts; re-run xEdit.

4. **Identify bad conflicts.** A conflict matters only if the loser was supposed to win. Good example: add-on overwriting base mod values is intended. Bad example: localization overwriting region names, or a later mod silently resetting a water type.

5. **Build a per-pair patch.** Right-click the conflict winner → `Copy as override into…` → `<new file>.esp [Template] ESL`. Name explicitly (e.g., `LoreRim_x_RWT.esp`). Drag missing fields from the loser into the new record. Accept master addition. Run `Add Masters…` for every referenced mod. Save into the `Patches` separator.

6. **Build per-pair `ModGroup`s.** One `ModGroup` per conflicting pair — never a mega-group. After xEdit closes, move `*.ModGroup` files from `MO2 overwrite` into the source mod's own MO2 folder so deactivating the mod removes its ModGroup.

7. **Re-open xEdit and confirm zero visible conflicts.** Non-empty left pane means a patch or ModGroup is missing.

### Starting State

Begin from a clean load order (`Skyrim.esm`, `Update.esm`, three DLCs) plus USSEP. USSEP ships a premade ModGroup since xEdit 4.1.7 — keep it rather than rebuilding.

### Cleaning Discipline

After installing a new mod and before running `-veryquickshowconflicts`, run LOOT. If it flags the mod for cleaning, run `Quick Auto Clean` then `Check For Errors`. Red errors are a signal to reconsider the mod, not to clean harder. QAC only removes ITM/UDR records; a QAC-clean mod that still misbehaves needs manual xEdit review.

### Triaging xEdit Warnings

Red errors first, yellow warnings grouped by record type, blue informational notes last.

### ESL-Flagged Patches

Always create patches via `<new file>.esp [Template] ESL` so they occupy the 4096 light slot and not a regular plugin slot. Never manually re-flag ESP↔ESL unless the mod author or xEdit explicitly says to.

### Clipping Resolution

After resolving conflicts in xEdit, walk affected cells with `More Informative Console`. Find clipping objects by RefID, copy as override into a patch, set record flag to `Initially Disabled`.

### Notes

- A Bashed Patch or Synthesis output that absorbs every decision hides which mod controls a record and makes bisection impossible. Keep them scoped.
- A patch made before a target mod updates silently becomes stale. Date-stamp patches and re-run xEdit after every source-mod update.
- Patches that copy a record from a downstream plugin inherit that plugin's unresolved conflicts. Read the master chain.
- xEdit normal mode writes whatever state is currently loaded — never use it to save. Save only in fast mode.
- Orphaned `*.ModGroup` files left in `MO2 overwrite` become invisible garbage. Always move them into their source mod's MO2 folder.
- Promote tiny per-pair patches into themed region/feature patches when the count becomes unmanageable, but keep the merge explicit — never let Bashed Patch absorb them silently.
- Heavy Synthesis patcher chains produce files that take longer to rebuild than the modlist took to assemble. Keep patcher counts modest and name outputs by date.
- Deliberately test that disabling one upstream source mod cleanly stops its ModGroup and dependent patches from being useful instead of producing new conflicts.

## ESP To ESL Conversion

Converting an ESP to an ESL-flagged ESP frees a regular plugin slot (limit 254) by moving into the 4096 light-plugin address space. Essential past ~150 plugins. Wrong conversion silently corrupts form references.

### What Makes A Plugin Convertible

- **Form count:** Must contain fewer than 2048 new record forms. SSEEdit shows the count in `File Header → Record Header → HEDR → Number of Records`.
- **No new CELL/WRLD/NAVM/NAVI records** — these use form IDs as persistent worldspace identifiers; compacting orphans references.
- **No QUST or DIAL overrides with hard-coded form ID references** — check `VMAD` script sections; when in doubt, do not convert.
- **Trivially convertible:** Bodyslide outputs, SKSE plugin dummy ESPs, texture-replacer ESPs with zero new records — safe to flag ESL immediately.

### Automated Discovery

1. **Built-in script (first pass):** `Find ESP plugins which could be turned into ESL.pas` — ships with SSEEdit. Load full load order, right-click any plugin → `Apply Script...`. Reports every plugin passing the <2048 new-records test without dealbreaker records.

2. **Fractal's `ESP-ESL Finder v1.1`** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/117978)) — improved built-in script with formatting and a `NOCELLS` variant for conservative results.

3. **`ESLify`** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/42211)) — batch-convert `.bat` wrapper. Only use after manually verifying candidates.

4. **`SSEEdit Script - Header Change to Version 1.71`** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/115056)) — updates plugins from header 1.70 to 1.71 to unlock the full 4095-record range per light plugin (1.6.1130+ engine fix). Run after adding new plugins so the load order is homogeneous.

### Safe Conversion (Low Risk)

For trivially convertible plugins:
1. Right-click plugin in SSEEdit → `Compact Form IDs for ESL`.
2. Right-click → `Set Is-Esl Flag` (**only** ESL flag — do not set ESM flag).
3. Save. Re-sort with LOOT in MO2.

### Full Conversion (SSEEdit Workflow)

For plugins that interact with other mods:
1. Load plugin + dependencies in SSEEdit. Apply `Hide no conflict and empty rows`.
2. Right-click → `Compact Form IDs for ESL`. If count is zero, skip to step 4.
3. **Check for broken references after compacting:**
   - Run `Check for Errors` on the plugin (catches broken internal refs).
   - For external refs: load full load order, select converted plugin, right-click → `Referenced By` → `Apply as filter`. Check whether any records use pre-compact form IDs.
   - Script alternative: `List records referencing specific plugins.pas` (ships with SSEEdit) reports every cross-reference.
4. Right-click → `Set Is-Esl Flag` (ESL only, not ESM).
5. Save. Re-sort with LOOT in MO2.

### Red Lines

- **Never convert plugins with CELL/WRLD/NAVM/NAVI records** without verifying every cross-reference manually.
- **Never convert mid-playthrough** — existing save references to the plugin's forms are invalidated.
- **Never convert a plugin that another mod lists as a master** without verifying the dependent mod does not hard-code to-be-compacted form IDs.
- **ESL-flagged plugins still count toward the 4096 light-plugin limit.** Some engine operations degrade when too many light plugins contribute records to the same scene.
- **xEdit's compaction warning** only catches direct form-ID mismatches within the loaded set, not indirect breaks through Papyrus or unloaded plugins. Read it carefully and abort if it reports issues.

### Recommended Candidates

- Bodyslide outputs, texture-replacer ESPs, SKSE plugin dummies
- Single-weapon/armor/spell mods with <50 new records and no scripts/quests
- Crafting recipe-only ESPs
- Patches created during the mod-by-mod workflow (always use `[Template] ESL`)

### Plugins To Never Convert

- Major quest mods (Legacy of the Dragonborn, Interesting NPCs, Vigilant)
- City/settlement overhauls with new CELL or WRLD records
- Overhauls with new dialogue branches or follower framework quest aliases
- Any plugin LOOT or SSEEdit flags as not ESL-safe

## Targeted Bugfix Mods → `Foundations - Targeted Bugfixes`

### Baseline

- **Fuz Ro D-oh - Silent Voice** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/15109)) — subtitle safety for unvoiced dialogue content. → `Foundations - Targeted Bugfixes`
- **Actor Limit Fix** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/32349)) — crowded scene / facial animation reliability. → `Foundations - Targeted Bugfixes`
- **Equip Enchantment Fix** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/42839)) — enchantments dropping off while equipped. → `Foundations - Targeted Bugfixes`
- **NPC AI Process Position Fix - NG** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/69326)) — NPC processing state after waiting/fast travel. → `Foundations - Targeted Bugfixes`
- **Simple Offence Suppression** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/41764)) — accidental hostility from stray hits. → `Foundations - Targeted Bugfixes`
- **Bug Fixes SSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/33261)) — meh321 SKSE plugin; fixes crafting-menu, perk-application, and water-behavior engine bugs not covered by SSE Engine Fixes. → `Foundations - Targeted Bugfixes`
- **Navigator - Navmesh Fixes** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/52641)) — follower pathing / NPC navigation in complex worldspaces. → `Foundations - Targeted Bugfixes`
- **Barter Limit Fix** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/77173)) — merchant gold cap overflow. → `Foundations - Targeted Bugfixes`
- **Mum's the Word NG** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/77409)) — worthless stolen-item tagging. → `Foundations - Targeted Bugfixes`
- **Regional Save Names** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/49698)) — save labeling for testing hygiene. → `Foundations - Targeted Bugfixes`
- **Better Jumping SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/18967)) — consistent jumping control. → `Foundations - Targeted Bugfixes`
- **LeveledList Crash Fix** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/129136)) — leveled-list crash protection for heavy content stacks. → `Foundations - Targeted Bugfixes`
- **Explosion Collision Fix** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/154076)) — prevents explosion-force spells from launching large objects into the player's camera. → `Foundations - Targeted Bugfixes`

### Not Installed

- **I'm Walkin' Here NG with Pets** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/122516)) — ally/pet body-blocking fix. → `Foundations - Targeted Bugfixes`
- **Bard Instrumentals Mostly - Sing Rarely** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/10927)) — repetitive tavern singing. Not needed — other bard mods make this unnecessary. → `Audio - SFX & Ambience`

### TODO

- **Alt-Tab Stuck Key Fix** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/148466)) — keyboard input bugfix for stuck modifier keys after alt-tab. → `Foundations - Targeted Bugfixes`
