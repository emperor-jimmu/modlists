# Foundations and Compatibility

**MO2 Separator:** `01 Foundations` → `01a SKSE & Scripts`, `01b Core Libraries`, `01c Mesh & Texture Fixes`, `01d Targeted Bugfixes`

## Goal

Build a stable technical base for `Elder Wilds` before choosing large visual or gameplay overhauls.

## Constraints

- Must support Skyrim SE/AE runtime `1.6.1170` on Steam
- Must not require paid AE Creation Club content
- Must leave room for heavy graphics, Pandora-based animations, and a third-person-first combat stack
- Must be maintainable in MO2 with clear separators and reproducible tool output

## Decisions To Make

- Confirm exact runtime support for every core dependency on Steam `1.6.1170`
- Choose the mod manager standard and profile layout (current lean: `Mod Organizer 2`)
- Define ESL and plugin-count rules: keep the hard plugin count visible from day one, prefer ESL-flagged or light plugins where safe, and avoid stacking multiple mods that solve the same low-level problem
- Decide which bug-fix plugins are mandatory baseline vs optional, with `Unofficial Skyrim Special Edition Patch - USSEP` owned here in section `01` as part of the foundational record-fix layer
- Define the patching toolchain and conflict-resolution workflow: xEdit review after each major category is added, generated outputs kept separate from source mods, and a dedicated patch section for hand-made compatibility patches (tools: xEdit, Pandora, DynDOLOD, Synthesis, BodySlide, plus any LOD or grass generators adopted)
- Follow the MO2 separator layout maintained in `separators.md` rather than redefining it here

## Research Tasks

- Select the animation-related engine fixes the final stack needs, coordinated with `modlist-04.md`

## Official Masters Cleanup

### Core Idea

The vanilla master files (`Skyrim.esm`, `Update.esm`, the three DLCs, and the AE Creation Club `.esm` files) ship with Identical-To-Master (ITM) records and undeleted deleted references left over from development. Cleaning them with `xEditQuickAutoClean` removes these artifacts, which prevents later mod conflicts, eliminates spurious LOOT warnings, and avoids rare but reproducible CTDs from undeleted references. This must happen before any mods are installed — cleaned masters are loaded via an MO2 mod so the game folder stays untouched.

### Recommendation

Clean all six-plus vanilla masters before installing any mod. Use `xEditQuickAutoClean` (registered as an MO2 executable) on each file individually, collect the cleaned `.esm` files into a dedicated `Cleaned Vanilla Masters` mod under the `Output` separator, and restore the originals from the `xEdit Backups` folder into `Data\` so MO2's virtual filesystem provides the cleaned copies.

#### Procedure

1. **Create the output mod**: In MO2, create a new empty mod named `Cleaned Vanilla Masters`. Place it under the `Output` separator. Leave it disabled for now.

2. **Run LOOT first**: Select `LOOT` from the MO2 executable dropdown, click **Sort Plugins**, click **Apply**, and close LOOT.

3. **Clean each master individually**: For each file (`Skyrim.esm`, `Update.esm`, `Dawnguard.esm`, `HearthFires.esm`, `Dragonborn.esm`, and each Creation Club `.esm`):
   - Select `xEditQuickAutoClean` from the MO2 executable dropdown.
   - In the plugin selection window, check ONLY the master you are cleaning.
   - Click **OK** and wait for the process to finish (the message log will say when done).
   - Close xEdit when prompted.

4. **Move cleaned masters into the mod**: Open `Skyrim Special Edition\Data`. Locate each cleaned master (check the file modification date — they were just written). Move them into `Mod Organizer 2\mods\Cleaned Vanilla Masters\`. Keep only the cleaned `.esm` files. Delete any `.backup` or `.bak` files from the mod folder.

5. **Restore originals**: Open the `xEdit Backups` folder inside `Skyrim Special Edition\Data`. Copy the original `.esm` files from the backups back into `Data\`. The originals must be restored so MO2's virtual filesystem can provide the cleaned copies via the mod.

6. **Enable and verify**: Enable `Cleaned Vanilla Masters` in MO2. Run `LOOT` again and confirm no plugins are flagged as needing cleaning.

### Which Masters To Clean

- `Skyrim.esm`
- `Update.esm`
- `Dawnguard.esm`
- `HearthFires.esm`
- `Dragonborn.esm`
- All Creation Club `.esm` files shipped with the 1.6.1170 runtime (approximately 5 files — `ccbgssse001-fish.esm`, `ccqdrsse001-survivalmode.esl`, `ccbgssse037-curios.esl`, `ccbgssse025-advdsgs.esm`, and any additional `.esm` files present in the game folder)

Do not clean `_ResourcePack.esl` — it contains no ITM or UDR records and does not need cleaning.

### Risks & Compatibility

- Cleaning is generally safe on vanilla masters and recommended by the modding community, but some mod authors (including the Unofficial Patch team) advise against cleaning `Update.esm` because USSEP intentionally forward-fixes records that QAC would remove. The current consensus on `r/skyrimmods` is that QAC-clean `Update.esm` + USSEP is the standard and safe combination, as USSEP's records win over the cleaned originals in the load order.
- Never clean a mod author's plugin unless LOOT explicitly flags it. Third-party mods often ship ITM records intentionally for compatibility, and removing them breaks the mod. Vanilla masters are the exception.
- The `Cleaned Vanilla Masters` mod must remain enabled for the entire playthrough. Disabling it mid-game restores the uncleaned masters and can break references that moved during cleaning.
- If `LOOT` still flags a master as needing cleaning after this step, the `Cleaned Vanilla Masters` mod may not be overriding the file correctly — verify the mod is active and placed below the game's `Data` folder in MO2's left pane.

### Acceptance Criteria

- All six-plus vanilla masters are processed through `xEditQuickAutoClean` and collected into a single `Cleaned Vanilla Masters` mod.
- The originals are restored to `Data\` and LOOT confirms no masters are flagged for cleaning.
- `Cleaned Vanilla Masters` is enabled in MO2 and sits below the game files but above any source mods.
- A clean boot to the main menu succeeds before any foundation mods are installed.

## Candidate Baseline To Research → `01b`

- `SKSE64` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/30379> → `01a`
- `Address Library for SKSE Plugins` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/32444> → `01b`
- `Unofficial Skyrim Special Edition Patch - USSEP` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/266> (foundational record patch owned by section `01`. Requires the four free Creation Club masters (`ccbgssse001-fish.esm`, `ccqdrsse001-survivalmode.esl`, `ccbgssse037-curios.esl`, `ccbgssse025-advdsgs.esm`) and `_ResourcePack.esl` that ship with the 1.6.1170 runtime — no paid AE Upgrade needed.) → `01b`
- `SSE Engine Fixes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/17230> → `01b`
- `SSE Display Tweaks` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/34705> (mandatory baseline for display behavior, frame pacing, and frame-cap control) → `01b`
- `Scrambled Bugs` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/43532> → `01b`
- `powerofthree's Tweaks` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51073> → `01b`
- `powerofthree's Papyrus Extender` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/22854> → `01b`
- `PapyrusUtil` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/13048> → `01b`
- `JContainers` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/16495> → `01b`
- `Keyword Item Distributor (KID)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/55728> → `01b`
- `Spell Perk Item Distributor (SPID)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/36869> → `01b`
- `Base Object Swapper (BOS)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/60805> → `01b`
- `Crash Logger SSE AE VR` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/59818> → `01b`
- `SkyPatcher` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/106659> (SKSE-plugin engine tweak framework; hard requirement of section 09 wildlife/AI mods and broadly useful as a vanilla-record patcher layer) → `01b`
- `Dual Casting Fix` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/92454> (powerofthree SKSE-plugin bugfix; hard requirement of `Blade and Blunt` from section 11) → `01b`
- `Andrealphus' Papyrus Functions` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/85252> (SKSE-plugin Papyrus utility; hard requirement of `Dragon War` from section 09) → `01b`
- `ConsoleUtilSSE NG` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/76649> (SKSE-plugin console utility; shared hard requirement of `Dragon War` from section 09 and several animation behaviour mods from section 03) → `01b`
- `Kris's Papyrus Extender` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/115164> (SKSE-plugin Papyrus utility; hard requirement of `Bathing in Skyrim - Renewed` from section 05) → `01b`
- `Animation Queue Fix` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/82395> (animation-stack stability fix for heavy `Open Animation Replacer` / behavior loads; strongest current answer to the section's animation-engine placeholder) → `01b`
- `Papyrus Tweaks NG` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/77779> (SKSE-plugin script-engine performance fixes and tweaks; configurable Papyrus operations-per-frame limit, native-call speedup, and stack-dump timeout. 22k endorsements, updated Oct 2025. Widely adopted by Step, Lexy's, and modern modding guides as a baseline script-performance layer.) → `01b`
- `Lexicon SKSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/153176> (SKSE scripting engine for creating custom scripted functions, types, and events; hard requirement of newer `Actor Value Generator` versions. 1,462 endorsements, by NoahBoddie) → `01b`
- `Actor Value Generator` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/84743> (SKSE modder's resource for creating custom actor values; hard requirement of `Classic Attributes` and other mods that add new stats/traits. Requires `Lexicon SKSE`. 2,932 endorsements, 269k downloads, by NoahBoddie) → `01b`
- `XEMI Utility` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/159084> (SKSE-plugin utility for setting up custom collision primitives on activators and furniture; prerequisite for `FYX - Nordic Doors and Traps Collisions` from section 02. 22 endorsements, by powerofthree) → `01b`
- `Particle Patch` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/65720> (particle shader/LOD corrections; originally ENB-focused but compatible with `Community Shaders` and vanilla game. 26k endorsements, updated Mar 2026) → `01c`
- `Assorted Mesh Fixes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/32117> (mesh correction collection for common visual errors; lightweight, no dependencies) → `01c`
- `Flickering Meshes Fix` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/53957> (resolves distant-object mesh flicker in landscape transitions) → `01c`

## Risks To Check

- Some popular framework mods may list AE support broadly while others require explicit confirmation for Steam `1.6.1170`
- Graphics, animation, and UI frameworks often pull in overlapping requirements that can become messy if chosen out of order
- Bug-fix plugins can overlap in subtle ways; avoid redundant low-level tweaks without a reason
- No paid AE content means some mods with soft AE assumptions may need patches or must be excluded

## Acceptance Criteria

- Clean boot to main menu with the baseline framework installed
- New game starts without missing masters or runtime errors
- MCM-related frameworks load correctly where applicable
- Crash logger is installed before heavier categories are tested
- MO2 structure, plugin rules, and patch workflow are documented before moving into graphics

## Working Notes

- Treat this section as the non-negotiable base layer for the rest of the list
- `SSE Display Tweaks` is part of that mandatory base layer, not an optional later tuning mod

## Patching Technique And Strategy

### Core Idea

- Patching is the part of modlist work where load-order theory meets record-level reality, and where sloppy habits create the most misleading test results.
- This subsection adopts the canonical `xEdit` patching workflow (the `Method` developed by `Elminster` and documented by `elwaps`) as the patching philosophy for `Elder Wilds`: install one mod at a time, run `xEdit` in `Very Quick Show Conflicts` mode, resolve the conflicts the new mod causes, and use `ModGroups` to hide the intentional ones. → `01b`
- The goal is to keep every override traceable, reversible, and rebuildable, so the list never becomes a wall of red conflict text that nobody can reason about.

### Options

- Megapatch route: one large manually-built compatibility plugin that absorbs every conflict resolution, and individual mods are never inspected in `xEdit` until something breaks. → `01b`
- Mod-by-mod route: install one mod at a time, run `xEdit` in `Very Quick Show Conflicts` mode, resolve only the conflicts that new mod introduces, and use small focused `ModGroups` to hide the intentional ones from future inspections. → `01b`
- Automated route: rely on `Bashed Patch` and `Synthesis` patchers to merge records automatically, with little to no manual record-level review. → `01b`

### Recommendation

- Use the mod-by-mod route as the default for every source mod, and reserve `Bashed Patch` plus `Synthesis` for the categories where they genuinely help. → `01b`
- The cyclic workflow is the spine of the method. Repeat the following seven steps for every new mod:
    - **Step 1 — Install and place.** Install the mod and guess a good position in the load order. Heuristic: mods that make the most changes to the game world load earlier, and mods that make narrow or local changes load later. Major landscape and water overhauls go in early; player homes, individual NPC edits, and small content packs go in late.
    - **Step 2 — Run `xEdit` with `-veryquickshowconflicts`.** Register `xEdit` in `Mod Organizer 2` with a dedicated executable argument `-veryquickshowconflicts` so it only highlights conflicts caused by the new mod instead of every conflict in the load order. Right-click the right pane and choose `Hide no conflict and empty rows` to keep the visible list focused on real disagreements.
    - **Step 3 — Try load order first.** Many conflicts disappear or become harmless when the new mod is moved up or down. If a load order change resolves most of the visible conflicts, leave `xEdit`, move the mod in `MO2`, and re-run.
    - **Step 4 — Identify the conflicts that should not be ignored.** A conflict is only a problem if the loser was actually supposed to win. This is the difference between **good conflicts** and **bad conflicts**:
        - Good conflict example: an add-on for a base weapon mod overwriting the base mod's damage values is the entire reason the add-on exists, and that overwrite is desired.
        - Good conflict example: a quality-of-life or balance mod overwriting vanilla values from `Skyrim.esm` or `Dawnguard.esm` is desired by definition.
        - Bad conflict example: a localized mod's translated region name overwriting the English name from a region-rename mod, producing `Himmelsrand` or `Borderciel` in an English playthrough.
        - Bad conflict example: a water mod defining a river's water type and a later landscape mod silently overwriting it back to vanilla, producing a visible water seam.
    - **Step 5 — Build a small per-pair patch.** Right-click the conflict winner's record and choose `Copy as override into…`, then in the file picker select `<new file>.esp [Template] ESL` so the patch does not consume a regular plugin slot. Name it explicitly after the two mods it reconciles (for example `LoreRim_x_RWT.esp`). For each merged record, drag the missing field from the loser into the new patch's record. `xEdit` will offer to add the loser as a master, accept it. Right-click the patch and run `Add Masters…` for every mod the patch actually references, so `LOOT` and other tools see the correct dependency chain. Save the patch into the `Patches` separator.
    - **Step 6 — Build small focused `ModGroups` for the remaining intentional conflicts.** A `ModGroup` is an `xEdit` artifact (a `*.ModGroup` file) that hides a specific set of intentional conflict losers from the navigation tree, so the next mod's `-veryquickshowconflicts` run only surfaces real new conflicts. Build **one `ModGroup` per conflicting pair**, not one mega-group, because disabling or updating one source mod should not invalidate the entire conflict-hiding setup. The canonical workflow is to build a `ModGroup` for each upstream plugin the new mod conflicts with, so the new mod becomes the conflict winner within that group. After `xEdit` closes, move each `*.ModGroup` file out of the `MO2 overwrite` folder and into the source mod's folder inside `MO2` (for example the `USSEP` mod folder), so deactivating the source mod deactivates its `ModGroup` automatically.
    - **Step 7 — Re-open `xEdit` and confirm zero conflicts visible in the left pane, then start over with the next mod.** Zero visible conflicts in the navigation tree is the working state. A non-empty left pane means a `ModGroup` or a patch is missing for some new disagreement.
- The starting state is also important. Begin from a clean vanilla load order (`Skyrim.esm`, `Update.esm`, the three DLCs) plus `Unofficial Skyrim Special Edition Patch` (`USSEP`), then build a `ModGroup` that hides the conflicts `USSEP` is supposed to resolve against vanilla. `USSEP` ships with a premade `ModGroup` since `xEdit 4.1.7`, so that step is usually a matter of keeping it rather than rebuilding it. `Elder Wilds` inherits that as the working baseline and the first `ModGroup` in the list. → `01b`
- Cleaning discipline is part of the cycle, not a separate phase. After installing a new mod and before running `-veryquickshowconflicts`, run **`LOOT`** and check whether it flags the mod for cleaning. If it does, run **`Quick Auto Clean`** on that mod (also registered as a `MO2` tool) and then run **`Check For Errors`**. A mod that is full of red errors is a signal to reconsider using it, not a signal to clean harder. `QAC` only removes `Identical To Master (ITM)` and `Undeleted Reference (UDR)` records and does not fix deeper problems; a `QAC`-clean mod that still misbehaves needs manual `xEdit` review. Clean every mod LOOT tells you to — do not skip this step even for mods you expect to be clean, because LOOT's cleaning warnings are based on real records, not reputation. → `01b`
- Use `xEdit` warnings as a triage list, not as errors. A yellow warning on a known cosmetic record is not the same priority as a red error on a missing master. Triage in this order: red errors first, yellow warnings grouped by record type, blue informational notes last.
- ESL-flagged patches are the default. When creating a patch via `<new file>.esp [Template] ESL`, the patch lives in the `4096` ESL slot and does not consume a regular plugin slot, which matters once the list is in the high hundreds. Manually re-flagging an existing `ESP` to `ESL` (or back) is one of the fastest ways to silently break load-order resolution and should only be done when the mod author or `xEdit` itself explicitly says to. → `01b`
- In-game clipping and overlay problems are also a patching concern. After resolving a new mod's conflicts in `xEdit`, walk the cells the mod touches with `More Informative Console` (or the equivalent) to find clipping references, look up the `RefID`, copy it as override into a new patch, and set its record flag to `Initially Disabled` so the offending object stops appearing.
- `Bashed Patch` and `Synthesis` are scoped, not general-purpose. Use them only for the categories each tool genuinely owns; never as a junk drawer for decisions that should remain explicit per-mod patches. → `01b`

### Risks & Compatibility

- A `Bashed Patch` or `Synthesis` output that absorbs every decision hides which mod actually controls a given record and makes future bisection impossible. It is a useful tool, not a junk drawer.
- One mega `ModGroup` containing every conflicting pair is a maintenance trap. Disabling or updating one source mod invalidates the whole group, and the next `-veryquickshowconflicts` run produces a wall of red again. Per-pair `ModGroups` are the whole point. → `01b`
- A patch made before a target mod updates silently becomes stale and can mask the new fix or fight it. Date-stamp patches and re-run `xEdit` after every author update of any source mod the patch depends on.
- Patches that copy a record from a plugin that is itself downstream of an unresolved conflict inherit that conflict. Always read the master chain, not just the immediate source.
- Manually flipping `ESL` to `ESP` (or vice versa) can push the load order past its limit, change the merge order, and silently break the resolved tree. Only do it when the mod author or `xEdit` itself explicitly says to. → `01b`
- `QAC` is not a cure-all. A mod that is dirty at the `ITM`/`UDR` level can still be broken at the record level, and a `QAC`-cleaned mod that still misbehaves needs manual `xEdit` review, not a second round of `QAC`. → `01b`
- `xEdit` normal mode is useful for diagnosis but should never be used to save changes, because it writes the file with whatever state is currently loaded and is one of the classic ways to silently corrupt a plugin. Save only in fast mode, and only with the intended set of active plugins.
- `*.ModGroup` files left in the `MO2 overwrite` folder survive across `xEdit` runs and become invisible garbage. Always move them into their owning source mod's folder inside `MO2` immediately after `xEdit` closes. → `01b`
- Tiny per-pair patches that override one or two records tend to multiply. A list that ends up with fifty small `xx.esp` files is hard to reason about. Consider promoting them into themed region or feature patches when the count starts to look unmanageable, but keep the merge decision explicit rather than letting a `Bashed Patch` absorb it silently. → `01b`
- `-veryquickshowconflicts` is the workflow, not `-quickautoclean` or `-showconflicts`. Using the slower mode once the list is large produces the wall-of-red problem the method is designed to avoid. → `01b`
- Heavy `Synthesis` patcher chains can produce a single file that takes longer to rebuild than the underlying mod list took to assemble, and they tend to hide which patcher contributed which record. Keep patcher counts modest and name the output by date. → `01b`

### Acceptance Criteria

- The working state after installing or updating any source mod is zero visible conflicts in the `xEdit` left pane, achieved through a combination of per-pair patches and per-pair `ModGroups`.
- Every patch plugin has a clear, dated purpose, a name that identifies the mods it reconciles, and a master list that matches the source mods it actually overrides.
- Every `*.ModGroup` file lives inside the `MO2` folder of the source mod whose conflicts it hides, never in the `overwrite` folder. → `01b`
- `xEdit` is run with `-veryquickshowconflicts` as the routine inspection mode, fast mode is the default save mode, and normal mode is used only for diagnosis and never for saving.
- `Bashed Patch` and `Synthesis` outputs are limited to the categories where they genuinely help (leveled list merge, actor tweaks, inventory tweaks, music merge, `Actor Precache`, and similar), and the rest of patching is explicit and reviewable.
- `xEdit` warnings are triaged in a known order after every mod installation, with red errors always resolved before the next mod is added.
- Patches are rebuilt after every source-mod update that touches a record the patch owns, and stale patches are caught by `SSEEdit` review rather than by in-game symptoms. → `01b`
- The list survives a deliberate test in which one upstream source mod is disabled: its `ModGroup` and dependent patches should cleanly stop being useful instead of producing new conflicts. → `01b`

## ESP To ESL Conversion → `01b`

### Core Idea

Converting a plugin from `ESP` to `ESL` (or more precisely, to `ESL`-flagged `ESP`) frees up a slot in the `254` regular plugin limit by moving the plugin into the `4096` light-plugin address space. This is essential once the load order passes ~150 regular plugins and critical past ~200. However, not every plugin can be safely converted, and doing it wrong silently corrupts form references across your save.

### What Makes A Plugin Convertible

- **Form count:** A plugin can only be flagged `ESL` if it contains fewer than `2048` new record forms (not including forms inherited from its masters). `SSEEdit` shows the form count in the header. If the form count exceeds `2048`, the plugin cannot be ESL-flagged without compacting its form IDs first (a more involved process documented below). → `01b`
- **No new cell or worldspace records:** Plugins that add new `CELL`, `WRLD`, `NAVM`, or `NAVI` records generally cannot be ESL-flagged without breaking references. `SSEEdit` will show these record types in the file's tree. → `01b`
- **No dialogue or quest alias changes:** Some `QUST` and `DIAL` records have hard-coded form ID expectations and break when re-indexed. Check for quest and dialogue overrides before converting. → `01b`
- **Known exceptions:** Certain mod types (header-meshes, body-slide outputs, SKSE plugins, texture replacers with dummy ESPs) are trivially convertible because they have zero or near-zero new records — these are safe to flag `ESL` immediately. → `01b`

### How To Check A Plugin's Suitability

1. Open the plugin in `SSEEdit` (run `xEdit` with `-veryquickshowconflicts` or load it directly).
2. Look at the plugin's header: `File Header` → `Record Header` → `HEDR` → `Number of Records` shows the total record count. If it is below `2048`, the plugin passes the form-count test.
3. Look at the plugin's record tree in the left pane. If you see `CELL`, `WRLD`, `NAVM`, or `NAVI` as top-level record groups, the plugin has worldspace geometry and is risky to convert without verifying that no other mod references those worldspace records by their full form ID.
4. Check for `QUST` and `DIAL` records. If present, read each one's `VMAD` (Papyrus script) sections for hard-coded form ID references. This check is time-consuming; when in doubt, do not convert.

### xEdit Scripts For ESL Discovery

Manually checking each plugin is tedious. These scripts automate the discovery of convertible plugins:

1. **Built-in script (recommended first pass):** `SSEEdit` ships with `Find ESP plugins which could be turned into ESL.pas`. Load your full load order, right-click any plugin → `Apply Script...` → find the script in the dropdown. It outputs a report in the Messages tab listing every plugin that passes the `<2048` new-records test and has no cell/worldspace/quest dealbreaker records.

2. **Updated script — Fractal's `ESP-ESL Finder v1.1` (<https://www.nexusmods.com/skyrimspecialedition/mods/117978>):** An improved version of the built-in script with better output formatting and a `NOCELLS` variant that excludes plugins with `CELL` records. This gives a more conservative, play-safe list. Use this if the built-in script recommends plugins that later cause problems.

3. **`ESLify` (<https://www.nexusmods.com/skyrimspecialedition/mods/42211>):** A more automated tool — a `.bat` wrapper that launches `SSEEdit` with a script that presents a selection dialog of safe candidates, then applies the `ESL` flag to your selection in one pass. Useful when you already trust the candidate list and want to batch-convert, but still verify each candidate manually before running it.

4. **`SSEEdit Script - Header Change to Version 1.71` (<https://www.nexusmods.com/skyrimspecialedition/mods/115056>):** The Skyrim 1.6.1130+ update doubled the number of addresses in ESL-flagged plugins by fixing an engine bug that had reserved the `001-7FF` address range. This fix unlocks that range for all plugin types, allowing ESL-flagged plugins up to `4095` records instead of half that. Plugins using the unlocked range carry a `Header Version` of `1.71`; older plugins use `1.70`. This script automatically detects any plugin still on the old header and updates it to `1.71`, ensuring the entire load order shares a consistent header. Run this after adding new plugins to keep the list homogeneous and avoid potential conflict-resolution issues between old and new headers.

**Workflow:** Start with the built-in script to get a broad list. Cross-check against the rules above (CELL/WRLD/QUST/DIAL exceptions). Narrow the list with Fractal's `NOCELLS` variant to exclude plugins with cell records. Convert manually (not with `ESLify`) until you are confident in your understanding of your load order's inter-plugin dependencies.

### Safe Conversion (Low Risk)

Use this method for plugins known to be trivially convertible (body/Bodyslide outputs, SKSE plugin dummy ESPs, texture-standalone ESPs, mesh-replacer ESPs):

1. Right-click the plugin in `SSEEdit`'s left pane.
2. Select `Compact Form IDs for ESL`. This reassigns all new form IDs into the ESL-compatible range.
3. Right-click again and select `Set Is-Esl Flag`. Only the `ESL` flag is needed — the `ESM` flag is not part of the ESP-to-ESL conversion process and would misidentify the plugin as a master file.
4. Save the plugin.
5. In `MO2`, re-sort with `LOOT` so the `ESL`-flagged plugin's position in the load order is recalculated — light plugins sort differently from regular plugins.

### Full Conversion (SSEEdit Workflow)

For a plugin that passes all the checks above but interacts with other mods:

1. Load the plugin and its dependencies in `SSEEdit`. Apply the `Hide no conflict and empty rows` filter.
2. Right-click the plugin and choose `Compact Form IDs for ESL`. A dialog shows how many form IDs will be compacted. If the count is zero, the plugin is already ESL-safe (skip to step 4).
3. **Critical — check for broken references after compacting.** The compacting step re-indexes the plugin's form IDs; any external plugin that references the old IDs will now point to nothing. `SSEEdit` does not flag these automatically. Here is the manual check:

   - **Before compacting** (or from a backup), note a few representative original form IDs from the plugin (e.g., `XX001234`, `XX004567`).
   - **After compacting**, run `Check for Errors` on the plugin (right-click → `Check for Errors`). This catches broken internal references.
   - **For external references**, load all plugins that list this plugin as a master (or your full load order). Select the converted plugin, right-click → `Referenced By` → `Apply as filter`. If any plugins show records referencing this plugin, examine whether those references point to form IDs that were just compacted. Expand the records and check the `REF` field values — if they use the original (pre-compact) form ID, the reference is broken.
   - **Script-based approach (faster):** Apply the `List records referencing specific plugins.pas` script (ships with `SSEEdit` using the `[Template] ESL` naming). It reports every cross-reference to the plugin's records so you can verify none match the old form-ID range.
4. Right-click the plugin → `Set Is-Esl Flag`. Only the `ESL` flag is required — do not set the `ESM` flag.
5. Save. The plugin now occupies a light slot.
6. In `MO2`, re-sort with `LOOT` and test the game.

### Risks And Red Lines

- **Never convert plugins that add `CELL`, `WRLD`, `NAVM`, or `NAVI` records unless you have verified every cross-reference manually.** These record types use their form ID as their persistent worldspace identifier, and compacting them orphans any mod or save that references the original location. → `01b`
- **Never convert a plugin mid-playthrough.** Changing a plugin's ESL flag invalidates existing saved references to that plugin's forms. The change only works on a new game or a save made before the plugin was first loaded.
- **Never convert a plugin that another mod lists as a master** without checking whether the dependent mod hard-codes any of the to-be-compacted form IDs. If `Mod B` (ESP) lists `Mod A` (to be ESL) as a master, converting `Mod A` can break `Mod B`'s references. → `01b`
- **`ESL`-flagged plugins still count in the `4096` light-plugin limit.** `4096` is a large but finite cap, and some engine operations (faction membership, equipped items, placed references) degrade when too many light plugins contribute records to the same scene. Do not flag every small ESP just because you can. → `01b`
- **`xEdit` will warn you** when compacting would break something, but the warning only catches direct form-ID mismatches within the loaded plugin set, not indirect breaks through Papyrus scripts or through unloaded plugins. Read the warning carefully and abort if it reports potential issues. → `01b`

### Recommended Candidates

- Bodyslide output ESPs (zero new records, trivially ESL-safe).
- Texture-replacer ESPs that provide model/texture paths without adding new references.
- SKSE plugin dummy ESPs (`SKSE\Plugins` mods that ship a stub ESP for load-order sorting). → `01b`
- Single-weapon, single-armor, or single-spell mods with no scripts, no quests, and fewer than `50` new records. → `01b`
- Crafting recipe-only ESPs (recipes reference existing items, they do not create new world records).
- Patches you create yourself during the mod-by-mod patching workflow (always use `[Template] ESL` when creating the patch file). → `01b`

### Plugins To Never Convert

- Major quest mods (`Legacy of the Dragonborn`, `Interesting NPCs`, `Vigilant`) that add thousands of records across quests, dialogues, worldspaces, and scripts. These almost always exceed the form-count limit or have cell/worldspace edits. → `01b`
- City and settlement overhauls that add new `CELL` or `WRLD` records. → `01b`
- Overhauls that add new dialogue branches or follower frameworks with quest aliases.
- Any plugin that `LOOT` or `SSEEdit` explicitly flags as not ESL-safe. → `01b`

## Targeted Bugfix Mods → `01d`

### Core Idea

A disciplined bucket for concrete fixes that solve specific vanilla annoyances, edge-case crashes, or presentation problems, as distinct from the mandatory runtime frameworks already covered above.

### Recommendation

Start with the high-value, clearly explainable route. Treat these as the strongest baseline candidates:

- `Fuz Ro D-oh - Silent Voice` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/15109>) — subtitle safety for unvoiced dialogue content → `01d`
- `Actor Limit Fix` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/32349>) — crowded scene / facial animation reliability → `01d`
- `Equip Enchantment Fix` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/42839>) — enchantments dropping off while equipped → `01d`
- `NPC AI Process Position Fix - NG` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/69326>) — NPC processing state after waiting/fast travel → `01d`
- `Simple Offence Suppression` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/41764>) — accidental hostility from stray hits → `01d`
- `Bug Fixes SSE` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/33261>) — meh321 SKSE plugin; fixes crafting-menu, perk-application, and water-behavior engine bugs not covered by `SSE Engine Fixes` → `01d`
- `Navigator - Navmesh Fixes` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/52641>) — follower pathing / NPC navigation in complex worldspaces → `01d`
- `Barter Limit Fix` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/77173>) — merchant gold cap overflow → `01d`
NOT INSTALLED - `I'm Walkin' Here NG with Pets` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/122516>) — ally/pet body-blocking → `01d`
- `Mum's the Word NG` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/77409>) — worthless stolen-item tagging → `01d`
- `Regional Save Names` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/49698>) — save labeling for testing hygiene → `01d`
- `Better Jumping SE` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/18967>) — consistent jumping control → `01d`
**NOTE -> Other bard mods make this unnecessary** - `Bard Instrumentals Mostly - Sing Rarely` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/10927>) — repetitive tavern singing (last updated 2017; still functional as a simple condition edit) → `10b`
- `LeveledList Crash Fix` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/129136>) — leveled-list crash protection for heavy content stacks → `01d`
- `Explosion Collision Fix` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/154076>) — prevents explosion-force spells from launching large objects into the player's camera, fixing a longstanding destructible-physics annoyance → `01d`

### Candidate TODO Additions → `01d`

- `Alt-Tab Stuck Key Fix` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/148466>) — keyboard input bugfix for stuck modifier keys after alt-tab → `01d`

### Working Guidance

- Keep this list disciplined and selective. Do not dump every small fix mod here just because it sounds reasonable.
- If a fix is effectively a required runtime framework, it belongs in the foundations baseline above, not here.
- Prefer bugfix mods that solve clearly observable problems over vague "just in case" additions.
- Add specialized crash or data fixes only when the final stack actually creates the conditions they are meant to protect.
- Treat lightweight immersion fixes like bard-behavior cleanup as optional polish, not mandatory baseline infrastructure.

### Acceptance Criteria

- This section stays focused on concrete, explainable fixes rather than becoming a catch-all miscellaneous bucket.
- Every recommended mod here solves a specific player-facing problem or believable stability risk.
- Core runtime foundations remain owned by the foundations baseline and are not duplicated here.

## Post-Install Smoke Test

After completing this section, verify stability with the coc console command at these 6 locations:

| # | Command                    | Location                 | Stress Profile                                               |
|---|----------------------------|--------------------------|--------------------------------------------------------------|
| 1 | `coc Whiterun`             | Whiterun                 | Major city — NPCs, shadows, architecture density             |
| 2 | `coc Solitude`             | Solitude                 | Large city — water reflections, long draw distances          |
| 3 | `coc RiftenOrigin`         | Riften                   | Canopy lighting, heavy NPC AI packages                       |
| 4 | `coc MarkarthOrigin`       | Markarth                 | Dwemer stone, waterfalls, extreme verticality                |
| 5 | `coc Riverwood`            | Riverwood                | Forest exterior — grass, trees, landscape LOD                |
| 6 | `coc BleakFallsBarrow01`   | Bleak Falls Barrow       | Interior dungeon — close-quarters lighting                   |
| 7 | `coc WhiterunBanneredMare` | Bannered Mare (Whiterun) | Tavern interior — fire lighting, patron NPCs, confined space |

**Pass criteria:** No crash on load. No missing textures. ≥40 FPS maintained (uncap framerate, use `tgm` for god mode if needed).

If any location fails, the most recently installed mod or generation step is the first suspect.
