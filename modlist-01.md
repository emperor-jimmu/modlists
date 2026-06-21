# Foundations and Compatibility

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

- Select the animation-related engine fixes the final stack needs, coordinated with `modlist-03.md`

## Candidate Baseline To Research

- `SKSE64` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/30379>
- `Address Library for SKSE Plugins` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/32444>
- `Unofficial Skyrim Special Edition Patch - USSEP` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/266> (foundational record patch owned by section `01`)
- `SSE Engine Fixes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/17230>
- `SSE Display Tweaks` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/34705> (mandatory baseline for display behavior, frame pacing, and frame-cap control)
- `Scrambled Bugs` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/43532>
- `powerofthree's Tweaks` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51073>
- `powerofthree's Papyrus Extender` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/22854>
- `PapyrusUtil` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/13048>
- `MCM Helper` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/53000>
- `JContainers` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/16495>
- `Keyword Item Distributor (KID)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/55728>
- `Spell Perk Item Distributor (SPID)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/36869>
- `Base Object Swapper (BOS)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/60805>
- `Crash Logger SSE AE VR` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/59818>
- `SkyPatcher` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/106659> (SKSE-plugin engine tweak framework; hard requirement of section 09 wildlife/AI mods and broadly useful as a vanilla-record patcher layer)
- `RaceMenu SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/29624> (SKSE-plugin character creation overhaul; also satisfies `SKEE` requirement of `EFF - Extensible Follower Framework` from section 05)
- `Dual Casting Fix` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/92454> (powerofthree SKSE-plugin bugfix; hard requirement of `Blade and Blunt` from section 11)
- `Andrealphus' Papyrus Functions` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/85252> (SKSE-plugin Papyrus utility; hard requirement of `Dragon War` from section 09)
- `ConsoleUtilSSE NG` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/76649> (SKSE-plugin console utility; shared hard requirement of `Dragon War` from section 09 and several animation behaviour mods from section 03)
- `Kris's Papyrus Extender` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/115164> (SKSE-plugin Papyrus utility; hard requirement of `Bathing in Skyrim - Renewed` from section 05)
- `Animation Queue Fix` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/82395> (animation-stack stability fix for heavy `Open Animation Replacer` / behavior loads; strongest current answer to the section's animation-engine placeholder)
- `Actor Value Generator` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/84743> (SKSE modder's resource for creating custom actor values; hard requirement of `Classic Attributes` and other mods that add new stats/traits. 2,932 endorsements, 269k downloads, by NoahBoddie)
- `Particle Patch` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/65720> (particle shader/LOD corrections; originally ENB-focused but compatible with `Community Shaders` and vanilla game. 26k endorsements, updated Mar 2026)
- `Assorted Mesh Fixes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/32117> (mesh correction collection for common visual errors; lightweight, no dependencies)
- `Unofficial Material Fix` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/21027> (corrects material records used by `Community Shaders` PBR pipeline, 21k endorsements)
- `Flickering Meshes Fix` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/53957> (resolves distant-object mesh flicker in landscape transitions)


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
- This subsection adopts the canonical `xEdit` patching workflow (the `Method` developed by `Elminster` and documented by `elwaps`) as the patching philosophy for `Elder Wilds`: install one mod at a time, run `xEdit` in `Very Quick Show Conflicts` mode, resolve the conflicts the new mod causes, and use `ModGroups` to hide the intentional ones.
- The goal is to keep every override traceable, reversible, and rebuildable, so the list never becomes a wall of red conflict text that nobody can reason about.

### Options

- Megapatch route: one large manually-built compatibility plugin that absorbs every conflict resolution, and individual mods are never inspected in `xEdit` until something breaks.
- Mod-by-mod route: install one mod at a time, run `xEdit` in `Very Quick Show Conflicts` mode, resolve only the conflicts that new mod introduces, and use small focused `ModGroups` to hide the intentional ones from future inspections.
- Automated route: rely on `Bashed Patch` and `Synthesis` patchers to merge records automatically, with little to no manual record-level review.

### Recommendation

- Use the mod-by-mod route as the default for every source mod, and reserve `Bashed Patch` plus `Synthesis` for the categories where they genuinely help.
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
- The starting state is also important. Begin from a clean vanilla load order (`Skyrim.esm`, `Update.esm`, the three DLCs) plus `Unofficial Skyrim Special Edition Patch` (`USSEP`), then build a `ModGroup` that hides the conflicts `USSEP` is supposed to resolve against vanilla. `USSEP` ships with a premade `ModGroup` since `xEdit 4.1.7`, so that step is usually a matter of keeping it rather than rebuilding it. `Elder Wilds` inherits that as the working baseline and the first `ModGroup` in the list.
- Cleaning discipline is part of the cycle, not a separate phase. After installing a new mod and before running `-veryquickshowconflicts`, run **`Quick Auto Clean`** on that mod (also registered as a `MO2` tool) and run **`Check For Errors`**. A mod that is full of red errors is a signal to reconsider using it, not a signal to clean harder. `QAC` only removes `Identical To Master (ITM)` and `Undeleted Reference (UDR)` records and does not fix deeper problems; a `QAC`-clean mod that still misbehaves needs manual `xEdit` review.
- Use `xEdit` warnings as a triage list, not as errors. A yellow warning on a known cosmetic record is not the same priority as a red error on a missing master. Triage in this order: red errors first, yellow warnings grouped by record type, blue informational notes last.
- ESL-flagged patches are the default. When creating a patch via `<new file>.esp [Template] ESL`, the patch lives in the `4096` ESL slot and does not consume a regular plugin slot, which matters once the list is in the high hundreds. Manually re-flagging an existing `ESP` to `ESL` (or back) is one of the fastest ways to silently break load-order resolution and should only be done when the mod author or `xEdit` itself explicitly says to.
- In-game clipping and overlay problems are also a patching concern. After resolving a new mod's conflicts in `xEdit`, walk the cells the mod touches with `More Informative Console` (or the equivalent) to find clipping references, look up the `RefID`, copy it as override into a new patch, and set its record flag to `Initially Disabled` so the offending object stops appearing.
- `Bashed Patch` and `Synthesis` are scoped, not general-purpose. Use them only for the categories each tool genuinely owns; never as a junk drawer for decisions that should remain explicit per-mod patches.



### Risks & Compatibility

- A `Bashed Patch` or `Synthesis` output that absorbs every decision hides which mod actually controls a given record and makes future bisection impossible. It is a useful tool, not a junk drawer.
- One mega `ModGroup` containing every conflicting pair is a maintenance trap. Disabling or updating one source mod invalidates the whole group, and the next `-veryquickshowconflicts` run produces a wall of red again. Per-pair `ModGroups` are the whole point.
- A patch made before a target mod updates silently becomes stale and can mask the new fix or fight it. Date-stamp patches and re-run `xEdit` after every author update of any source mod the patch depends on.
- Patches that copy a record from a plugin that is itself downstream of an unresolved conflict inherit that conflict. Always read the master chain, not just the immediate source.
- Manually flipping `ESL` to `ESP` (or vice versa) can push the load order past its limit, change the merge order, and silently break the resolved tree. Only do it when the mod author or `xEdit` itself explicitly says to.
- `QAC` is not a cure-all. A mod that is dirty at the `ITM`/`UDR` level can still be broken at the record level, and a `QAC`-cleaned mod that still misbehaves needs manual `xEdit` review, not a second round of `QAC`.
- `xEdit` normal mode is useful for diagnosis but should never be used to save changes, because it writes the file with whatever state is currently loaded and is one of the classic ways to silently corrupt a plugin. Save only in fast mode, and only with the intended set of active plugins.
- `*.ModGroup` files left in the `MO2 overwrite` folder survive across `xEdit` runs and become invisible garbage. Always move them into their owning source mod's folder inside `MO2` immediately after `xEdit` closes.
- Tiny per-pair patches that override one or two records tend to multiply. A list that ends up with fifty small `xx.esp` files is hard to reason about. Consider promoting them into themed region or feature patches when the count starts to look unmanageable, but keep the merge decision explicit rather than letting a `Bashed Patch` absorb it silently.
- `-veryquickshowconflicts` is the workflow, not `-quickautoclean` or `-showconflicts`. Using the slower mode once the list is large produces the wall-of-red problem the method is designed to avoid.
- Heavy `Synthesis` patcher chains can produce a single file that takes longer to rebuild than the underlying mod list took to assemble, and they tend to hide which patcher contributed which record. Keep patcher counts modest and name the output by date.

### Acceptance Criteria

- The working state after installing or updating any source mod is zero visible conflicts in the `xEdit` left pane, achieved through a combination of per-pair patches and per-pair `ModGroups`.
- Every patch plugin has a clear, dated purpose, a name that identifies the mods it reconciles, and a master list that matches the source mods it actually overrides.
- Every `*.ModGroup` file lives inside the `MO2` folder of the source mod whose conflicts it hides, never in the `overwrite` folder.
- `xEdit` is run with `-veryquickshowconflicts` as the routine inspection mode, fast mode is the default save mode, and normal mode is used only for diagnosis and never for saving.
- `Bashed Patch` and `Synthesis` outputs are limited to the categories where they genuinely help (leveled list merge, actor tweaks, inventory tweaks, music merge, `Actor Precache`, and similar), and the rest of patching is explicit and reviewable.
- `xEdit` warnings are triaged in a known order after every mod installation, with red errors always resolved before the next mod is added.
- Patches are rebuilt after every source-mod update that touches a record the patch owns, and stale patches are caught by `SSEEdit` review rather than by in-game symptoms.
- The list survives a deliberate test in which one upstream source mod is disabled: its `ModGroup` and dependent patches should cleanly stop being useful instead of producing new conflicts.

## Targeted Bugfix Mods

### Core Idea

A disciplined bucket for concrete fixes that solve specific vanilla annoyances, edge-case crashes, or presentation problems, as distinct from the mandatory runtime frameworks already covered above.

### Recommendation

Start with the high-value, clearly explainable route. Treat these as the strongest baseline candidates:

- `Fuz Ro D-oh - Silent Voice` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/15109>) — subtitle safety for unvoiced dialogue content
- `Actor Limit Fix` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/32349>) — crowded scene / facial animation reliability
- `Equip Enchantment Fix` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/42839>) — enchantments dropping off while equipped
- `NPC AI Process Position Fix - NG` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/69326>) — NPC processing state after waiting/fast travel
- `Simple Offence Suppression` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/41764>) — accidental hostility from stray hits
- `Bug Fixes SSE` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/33261>) — meh321 SKSE plugin; fixes crafting-menu, perk-application, and water-behavior engine bugs not covered by `SSE Engine Fixes`
- `Navigator - Navmesh Fixes` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/52641>) — follower pathing / NPC navigation in complex worldspaces

Add these if the specific problem they solve shows up in play:

- `Barter Limit Fix` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/77173>) — merchant gold cap overflow
- `I'm Walkin' Here NG with Pets` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/122516>) — ally/pet body-blocking
- `Mum's the Word NG` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/77409>) — worthless stolen-item tagging
- `Regional Save Names` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/49698>) — save labeling for testing hygiene
- `Better Jumping SE` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/18967>) — consistent jumping control
- `Bard Instrumentals Mostly - Sing Rarely` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/10927>) — repetitive tavern singing
- `LeveledList Crash Fix` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/129136>) — leveled-list crash protection for heavy content stacks

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

| # | Command | Location | Stress Profile |
|---|---------|----------|----------------|
| 1 | `coc Whiterun` | Whiterun | Major city — NPCs, shadows, architecture density |
| 2 | `coc Solitude` | Solitude | Large city — water reflections, long draw distances |
| 3 | `coc RiftenOrigin` | Riften | Canopy lighting, heavy NPC AI packages |
| 4 | `coc MarkarthOrigin` | Markarth | Dwemer stone, waterfalls, extreme verticality |
| 5 | `coc Riverwood` | Riverwood | Forest exterior — grass, trees, landscape LOD |
| 6 | `coc BleakFallsBarrow01` | Bleak Falls Barrow | Interior dungeon — close-quarters lighting |
| 7 | `coc WhiterunBanneredMare` | Bannered Mare (Whiterun) | Tavern interior — fire lighting, patron NPCs, confined space |

**Pass criteria:** No crash on load. No missing textures. ≥60 FPS maintained (uncap framerate, use `tgm` for god mode if needed).

If any location fails, the most recently installed mod or generation step is the first suspect.
