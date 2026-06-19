# Performance and Technical Workflow

## Performance Budgeting By System

### Core Idea

- This section does not replace the engine baseline from `modlist-01.md` or the graphics decisions from `modlist-02.md`.
- Its job is to decide how `Elder Wilds` measures performance, identifies bottlenecks, and keeps generated workflow sane once the list gets heavy.

### Options

- Intuition-first route: change settings and mods by feel until the game seems stable enough.
- Average-FPS route: judge the list mostly by headline FPS even if frame pacing and bottleneck type stay unclear.
- Budgeted route: separate GPU, VRAM, CPU/script, and draw-call problems so fixes target the real cause.

### Recommendation

- Use the budgeted route.
- Treat performance as four different problems that can look similar in play: shader cost, VRAM pressure, CPU/script load, and exterior draw-call pressure.
- Keep one repeatable forest scene, one city scene, and one dungeon/interior scene for comparisons rather than testing in random places.
- Record baseline and post-change captures with `PresentMon` and review them in `CapFrameX` or an equivalent frame-time tool instead of trusting impressions.
- Prefer a stable frame-time target over chasing the highest uncapped number.

### Risks & Compatibility

- A single bad scene can be CPU-bound, GPU-bound, or content-bound in different directions, so one "performance fix" can solve the wrong problem.
- Average FPS can improve while hitching and traversal smoothness still get worse.
- Measuring several categories at once makes later decisions impossible to trust.

### Acceptance Criteria

- `Elder Wilds` has at least three repeatable test scenes with notes on why each one matters.
- The list can identify whether a bad result is mainly shader cost, VRAM pressure, script load, or draw-call pressure.
- Performance changes are recorded in a way that can be repeated after later rebuilds.

## VRAM-Heavy Mod Review

### Core Idea

- VRAM pressure in this list will come mostly from texture resolution, PBR/parallax adoption, heavy shader features, and world coverage, not from one magic setting.
- The goal is to spend texture budget where it is visible in normal play instead of paying premium cost everywhere.

### Options

- Max-detail route: broad `4K` coverage, frequent material upgrades, and little restraint on texture size.
- Selective route: high resolution only for hero assets, creatures, architecture, or landscape layers that actually dominate the screen.
- Restraint-first route: mostly `2K` and below with only a few intentional exceptions.

### Recommendation

- Use the selective route.
- Keep broad world textures disciplined and reserve heavier resolutions for assets the player repeatedly sees up close.
- When a visual pack offers multiple sizes, start below the maximum and only scale upward if testing proves the asset really earns it.
- Treat PBR/parallax conversions as a VRAM and maintenance choice, not just a screenshot upgrade.
- If a scene stutters, verify whether it is actual memory pressure before blaming scripts or AI.

### Risks & Compatibility

- High VRAM usage can look like generic stutter, but lowering unrelated gameplay mods will not fix it.
- Mixed-resolution stacks can still overload memory if too many wide-coverage packs are combined.
- Some landscape, architecture, and material upgrades cost more in aggregate than character textures ever will.

### Acceptance Criteria

- The chosen texture and material stack fits the target hardware without obvious streaming or traversal hitching.
- Heavy assets are concentrated in places where they matter visually.
- Texture downsizing decisions are documented when they materially improve stability.

## CPU-Heavy Script Review

### Core Idea

- CPU and Papyrus pressure usually comes from layered systems, NPC density, polling scripts, and constant background updates rather than one dramatic offender.
- This section should keep the list from mistaking script delay for graphics trouble.

### Options

- Permissive route: allow multiple overlapping always-on systems and troubleshoot only after instability appears.
- Moderated route: keep strong feature mods, but avoid stacking several background-heavy systems that solve similar jobs.
- Strict route: aggressively cut scripted features even when they materially help the list identity.

### Recommendation

- Use the moderated route.
- Treat NPC expansion, survival layers, follower frameworks, reputation systems, defeat systems, and ambient event mods as cumulative load, not isolated decisions.
- Prefer one good system per gameplay problem instead of three lighter systems that all tick in the background.
- Keep diagnostic logging and troubleshooting-only settings off during normal play unless a bug actually needs them.
- Judge script health through sleeping, waiting, cell changes, combat cleanup, and long travel rather than standing still in one test spot.

### Risks & Compatibility

- Script delay often gets misdiagnosed as low FPS or "Skyrim being Skyrim."
- Mid-save uninstall habits can create save instability that looks like performance decay.
- A list can feel fine in short tests and still degrade badly over longer sessions.

### Acceptance Criteria

- Waiting, sleeping, travel transitions, and combat aftermath remain responsive on a mature test profile.
- No category depends on several overlapping background systems without a clear reason.
- Long-session behavior remains stable enough that later testing is trustworthy.

## Shader Performance Impact

### Core Idea

- Section `02` already owns the visual framework. This subsection owns the performance envelope that framework is allowed to occupy.
- The practical question is not whether shader features look good; it is which ones are worth their measurable cost in real travel scenes.

### Options

- Conservative route: keep the `Community Shaders` stack close to the section-02 baseline.
- Balanced route: accept a few heavier depth or lighting features once the rest of the visual stack is stable.
- Luxury route: keep piling on expensive modules, then try to recover the cost elsewhere.

### Recommendation

- Stay between the conservative and balanced routes.
- Remove or downgrade luxury modules before tearing apart the rest of the graphics stack.
- Keep `Skyrim Upscaler` as a fallback tool from section `02`, not the first answer to poor optimization discipline.
- Use the existing `SSE Display Tweaks` baseline from section `01` to enforce a stable frame cap once the real sustained performance target is known.
- Judge shader cost in motion, weather transitions, and dense foliage scenes instead of still screenshots.

### Risks & Compatibility

- Heavier shader modules can shift the bottleneck hard toward GPU cost while the list still looks only marginally better in play.
- Frame generation, upscaling, or frame-cap tuning can hide weak baseline decisions instead of fixing them.
- A beautiful static scene can still fail if traversal frame pacing is poor.

### Acceptance Criteria

- The chosen shader stack has a measured cost the list is willing to keep.
- The sustained frame target feels stable in forest and city traversal, not just indoors.
- Optional luxury features are disabled unless they visibly justify their cost.

## Grass, Tree, And Draw-Call Optimization

### Core Idea

- Exterior performance in a wilderness-heavy list is often limited by draw calls, clutter density, and visibility complexity, not only raw GPU power.
- This subsection decides how aggressive `Elder Wilds` should be about invisible optimization helpers once the visual direction is already known.

### Options

- Content-restraint route: solve most exterior cost by choosing lighter trees, lighter grass, and fewer stacked clutter edits.
- Low-maintenance optimization route: add invisible cleanup layers that reduce wasted references with modest compatibility cost.
- High-maintenance optimization route: add occlusion-heavy optimization mods that can improve bad scenes more dramatically but create broad patch debt.

### Recommendation

- Use content restraint first, then the low-maintenance optimization route.
- Treat `Lightened Skyrim` as the leading optimization branch because its page and community use both support it as an almost invisible cleanup layer with relatively low drama.
- Treat `eFPS - Exterior FPS boost` as an optional branch only if real testing shows that exterior draw-call pressure still needs more help after the main world stack is stable.
- If `eFPS` is used, plan for patch coverage as part of the worldspace stack rather than pretending it is a free install.
- Re-evaluate exterior optimization after major city, roadside, tree, or world-content choices, because those categories move the bottleneck more than INI tweaks do.

### Risks & Compatibility

- `eFPS` has strong upside, but both its own page and current Reddit signal point to real compatibility and patch-maintenance overhead for lists with heavy exterior edits.
- Optimization layers can create missing-geometry or bad-occlusion symptoms if installed casually into a moving worldspace stack.
- Heavy cities, outskirts, roads, trees, and landmark mods can erase optimization gains faster than tweak mods can recover them.

### Acceptance Criteria

- Exterior travel remains stable in forests, town approaches, and heavy roadside scenes without obvious culling errors.
- `Lightened Skyrim` or `eFPS` is kept only if it materially improves difficult scenes.
- Any chosen optimization layer has known patch coverage and rebuild implications documented.

## INI Tuning And Display Settings

### Core Idea

- INI tuning should normalize and document the setup, not become a pile of mystery fixes no one remembers later.
- The best INI workflow is the one that can be reproduced cleanly in `Mod Organizer 2` without guesswork.

### Options

- Manual-edit route: hand-edit multiple INIs and hope the final state stays understandable.
- Tool-first route: use one reliable editor for the baseline, then keep only a few deliberate manual overrides.
- Constant-tweaking route: keep changing presets and overrides every time performance changes.

### Recommendation

- Use the tool-first route.
- Use `BethINI Pie` as the baseline editor because it gives `Elder Wilds` a reproducible preset-and-recommended-tweaks starting point instead of scattered manual edits.
- For `MO2`, keep the INI path behavior simple and documented rather than forcing unusual file redirection unless a guide specifically requires it.
- After the baseline is set, keep only a short list of manual overrides that are actually justified by the final display, shadow, or frame-cap target.
- Let `SSE Display Tweaks` handle display behavior and frame pacing choices that belong there instead of fighting them through unrelated INI changes.

### Risks & Compatibility

- Aggressive or undocumented INI changes can make later troubleshooting impossible.
- BethINI-related confusion usually comes from path handling and profile expectations, not from the tool magically fixing every performance issue.
- Repeated preset flipping can hide which change actually helped.

### Acceptance Criteria

- A clean profile can reproduce the same baseline INI state without guesswork.
- Manual overrides are short, documented, and intentional.
- Display behavior, shadow settings, and frame-cap logic stay consistent across rebuilds.

## Save Safety Considerations

### Core Idea

- Performance work can destabilize saves when it involves worldspace edits, generated outputs, or scripted systems that are added and removed carelessly.
- Save safety here means protecting the testing process as much as protecting a future long playthrough.

### Options

- One-save route: keep testing everything on the same long-running save.
- Disposable-test route: use category-specific test saves and replace them freely when the stack changes materially.
- Overcautious route: restart for every small change even when it adds no safety value.

### Recommendation

- Use the disposable-test route.
- Keep clean labeled saves for pre-LOD, post-LOD, city-performance, forest-travel, and long-session stability testing.
- Start a new game when adding major worldspace optimization layers such as `eFPS` if that branch is adopted, because the mod page itself recommends fresh-start caution.
- Do not treat old generated outputs, removed scripted mods, or stale occlusion data as safe enough just because the game still loads.
- Preserve one or two mature long-session saves only for validation, not for endless experimental churn.

### Risks & Compatibility

- Save corruption or instability can present as performance degradation long before it looks like a hard failure.
- Reusing one heavily mutated test save makes conclusions about optimization quality far less trustworthy.
- Generated-output mismatches can poison a save comparison without being obvious at first glance.

### Acceptance Criteria

- The section has a small repeatable save set with clear roles.
- Major worldspace or generated-output changes do not rely on a single heavily mutated test save.
- Long-session validation saves remain useful enough to catch real degradation.

## xEdit, Nemesis/Pandora, DynDOLOD, And Synthesis Workflow

### Core Idea

- A heavy Skyrim list usually becomes unstable through stale output and sloppy rebuild habits before it fails through any one mod choice.
- This subsection defines the rebuild discipline that keeps the rest of the plan usable.

### Options

- Ad hoc route: rebuild tools whenever something looks broken.
- Disciplined route: rebuild only when the owning category changes, and keep each generated layer isolated in MO2.
- Late-everything route: postpone most generated work until the end and hope the backlog stays manageable.

### Recommendation

- Use the disciplined route.
- Run `xEdit` conflict review after each major category change instead of saving all conflict discovery for the end.
- Re-run `Pandora` when behavior, animation, or skeleton-relevant content changes.
- Re-run `Synthesis` whenever a chosen patcher-based system changes, including the music-merge workflow already noted in section `10`.
- Treat `TexGen`, `xLODGen`, `DynDOLOD`, grass cache, and occlusion output as late-stage generated layers that must be rebuilt when their inputs materially change.
- Keep every generated output in its own dedicated `Mod Organizer 2` mod so stale files are easy to replace instead of silently lingering.

### 4K LOD Tool Baseline

- Keep the actual tools (`xLODGen`, `TexGen`, `DynDOLOD`) outside the game folder and outside `Mod Organizer 2` mod folders.
- Keep the output folders outside `Program Files`, Steam, Documents, Desktop, and the MO2 instance.
- Install the finished output back into MO2 as separate mods named `Terrain LOD Output`, `TexGen Output`, and `DynDOLOD Output`.
- Generate in this order: `xLODGen` terrain LOD first, then `TexGen`, then `DynDOLOD`.
- Use the `x64` versions of the tools.

#### xLODGen 4K STEP Baseline

- Configure the MO2 executable as `xLODGenx64.exe -lodgen -SSE -o:"DriveLetter:\Modding\Tools\xLODGen\xLODGen_Output"`.
- Use `xLODGen` only for terrain LOD in this workflow.
- Select all worldspaces.
- Ensure only `Terrain LOD` is ticked in the right pane.
- Leave `Brightness`, `Contrast`, and `Gamma` at defaults unless the list is intentionally following the STEP / `Cathedral Landscapes` terrain pipeline; outside that narrow case, use `Gamma 1.00`.
- STEP 2.3 also states that users at `2160p / 4K` should double the diffuse and normal sizes shown in the standard presets for `LOD4`, `LOD8`, `LOD16`, and `LOD32`.
- For initial `LOD4` terrain generation, keep `Optimize Unseen` off; if map / `LOD32` coastline quality needs a later pass, use a higher `Quality` setting in the documented `0-10` range and raise `Optimize Unseen` to roughly `550` for that pass.
- After generation, run `ACMOS Road Generator` with `Roads = Path Only`, point `Path to LOD` at the `xLODGen_Output` folder, choose `Yes` when prompted to overwrite LOD textures, and choose `No` when asked to zip.
- Move the generated files into the dedicated MO2 output mod and disable temporary xLODGen-only terrain resources afterward.

#### TexGen 4K STEP Baseline

- Configure the MO2 executable as `TexGen64.exe -SSE`.
- Run `TexGen` after `xLODGen` and before `DynDOLOD`.
- Use the preset matching rendered game resolution: `2160p = 4K`.
- If grass LOD is not being generated, do not tick the grass billboard options.
- Tick `Grass` if the `21-Post-Processing` group is not installed and the list is not using complex grass.
- Tick `HD grass` if the `21-Post-Processing` group is installed and the list is using complex grass / Community Shaders grass features.
- In `TexGen_SSE.ini`, set `GrassModelHeightMultiplier=1.15`.
- In `TexGen_SSE.ini`, set `TreeMSAlphaThreshold=144`.
- In `TexGen_SSE.ini`, set `ObjectMSAlphaThreshold=96`.
- If the list does not use complex grass textures, set `ForceComplexGrass=0`.
- If the list is following the STEP 2.3 complex-grass branch, set `ForceComplexGrass=1`.
- Treat newer `Community Shaders` grass-lighting recommendations as a separate branch to validate deliberately rather than mixing them into this baseline.
- Move the generated files into the dedicated MO2 `TexGen Output` mod and enable that output mod before running `DynDOLOD`.

#### DynDOLOD 4K STEP Baseline

- Configure the MO2 executable as `DynDOLODx64.exe -SSE`.
- In `DynDOLOD_SSE.ini`, set `Expert=1` so the GUI opens in expert mode.
- In `DynDOLOD_SSE.ini`, set `Level32=1 AllHDLOD32=1`.
- In `DynDOLOD_SSE.ini`, set `GrassBrightnessTopR=0.500`, `GrassBrightnessTopG=0.500`, `GrassBrightnessTopB=0.500`, `GrassBrightnessBottomR=0.500`, `GrassBrightnessBottomG=0.500`, and `GrassBrightnessBottomB=0.500`.
- In `DynDOLOD_SSE.ini`, set `DoubleSidedTextureMask=mountain,mtn`.
- In `DynDOLOD_SSE.ini`, set `DoubleSidedMeshMask=mountain,mtn`.
- If the list is following the STEP 2.3 complex-grass branch, also set `ComplexGrassBillboard=5`.
- If the list is following the STEP 2.3 complex-grass branch, also set `ComplexGrassBrightnessTopR=0.500`, `ComplexGrassBrightnessTopG=0.500`, `ComplexGrassBrightnessTopB=0.500`, `ComplexGrassBrightnessBottomR=0.500`, `ComplexGrassBrightnessBottomG=0.500`, `ComplexGrassBrightnessBottomB=0.500`, and `ComplexGrassBacklightMask=25`.
- Do not reuse older complex-grass values like `0.700 / 0.725 / 0.750` brightness or `BacklightMask=10` in this baseline; those are not the current STEP 2.3 values.
- Select all worldspaces in the GUI.
- Tick `Candles`.
- Tick `FXGlow`.
- Click `High` to pull in the expected STEP / `A Clear Map of Skyrim` mesh rules, then treat the intended end state as the `4K` profile with `Optimal` tree and catch-all rules plus the recommended `LOD32` rules.
- Use `Medium` or `Low` only as a deliberate performance concession.
- Generate `Occlusion` only on the first run; leave it unticked on later reruns to save time.
- Tick `Grass LOD` only if the list is intentionally generating grass LOD.
- STEP 2.3 describes the target as the `4K` preset with `Optimal` tree and catch-all rules plus the recommended `LOD32` rules for `A Clear Map of Skyrim`, so the preset button is a setup step rather than the whole decision.
- Move the generated files into the dedicated MO2 `DynDOLOD Output` mod, ensure `DynDOLOD.esm` and `DynDOLOD.esp` are enabled, then sort with `LOOT`.

#### 4K Validation And Failure Rules

- Benchmark before and after LOD generation from a clean Whiterun save, with `A Clear Map of Skyrim and Other Worlds` temporarily disabled during benchmarking as STEP recommends.
- STEP's benchmark spot is outside Whiterun looking west; also sanity-check the Rift (`cow tamriel 40 -24`) because aspens are one of the heavier scenes.
- If performance is already below STEP's pre-LOD target band, lower the broader graphics baseline before blaming LOD output alone.
- If travel performance is still too expensive after LOD generation, step `DynDOLOD` down from `High` to `Medium` or `Low`, and skip `Grass LOD` before cutting the entire visual stack apart.
- If a tool run required one-off emergency tweaks, document them next to the MO2 executable or output mod so the next rebuild is reproducible instead of remembered from scratch.

### Risks & Compatibility

- The most common technical mistake in a large list is not "wrong mod" but stale output from a previously correct state.
- Partial rebuild habits create false negatives during testing because the game is no longer showing the current stack.
- Delaying all generated work until the very end makes it harder to isolate which category caused later breakage.
- A `4K` near-field texture stack can tempt the list into overbuilding LOD output. The tools should be tuned for believable travel scenes, not screenshot-maximal atlases that waste VRAM and rebuild time.
- `DynDOLOD`, `TexGen`, and `xLODGen` settings are sensitive to memory pressure and stale outputs. If one run required lowered atlas size or reduced concurrency, the same constraint should be assumed on the next rebuild unless hardware changes.

### Acceptance Criteria

- Every generated layer has a clear owner, rebuild trigger, and dedicated output mod.
- `xEdit`, `Pandora`, `Synthesis`, and LOD tools are used in a repeatable order rather than by guesswork.
- The list can rebuild a changed category without losing track of which outputs are now stale.
- The list has one documented `4K` baseline for `xLODGen`, `TexGen`, and `DynDOLOD` that favors stable travel visuals over maximum theoretical quality.

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

#### What `Bashed Patch` (via `Wrye Bash`) Is For

- **Leveled list operations** — this is the canonical use case. The Bashed Patch merges `LVLI`/`LVLN`/`LVSP` records from any plugin tagged with `Delev` (remove entries) or `Relev` (re-level entries). Untagged plugins can only add new entries. Tags are attached to source plugins via `BashTags` files (CSV) placed in the `Data\Bash Patches` folder. For `Elder Wilds`, every mod that adds items, enemies, or spells to leveled lists is a candidate for `Relev` tagging so the Bashed Patch resolves the merge automatically.
- **Tagger-driven record import** — when a plugin is tagged with a category, the Bashed Patch imports matching record changes into itself instead of leaving the original plugin to win. The full tag set the Bashed Patch can drive is:
  - `Actors.ACBS`, `Actors.AIData`, `Actors.AIPackages`, `Actors.AIPackagesForceAdd`, `Actors.CombatStyle`, `Actors.DeathItem`, `Actors.Factions`, `Actors.RecordFlags`, `Actors.Spells`, `Actors.SpellsForceAdd`, `Actors.Stats`, `Actors.Voice`
  - Cell-level: `C.Acoustic`, `C.Climate`, `C.Encounter`, `C.ForceHideLand`, `C.ImageSpace`, `C.Light`, `C.LockList`, `C.Location`, `C.MiscFlags`, `C.Music`, `C.Name`, `C.Owner`, `C.RecordFlags`, `C.Regions`, `C.SkyLighting`, `C.Water`
  - Race-level: `R.AddSpells`, `R.ChangeSpells`, `R.Description`, `R.Skills`, `R.Stats`, `R.Voice-F`, `R.Voice-M`
  - NPC-level: `NPC.AIPackageOverrides`, `NPC.AttackRace`, `NPC.Class`, `NPC.CrimeFaction`, `NPC.DefaultOutfit`, `NPC.Perks.Add`, `NPC.Perks.Change`, `NPC.Perks.Remove`, `NPC.Race`
  - Item/loot: `Invent.Add`, `Invent.Change`, `Invent.Remove`, `Outfits.Add`, `Outfits.Remove`, `Keywords`, `Names`, `ObjectBounds`, `Stats`, `SpellStats`, `Enchantments`, `EnchantmentStats`, `EffectStats`, `Text`, `Sound`, `Graphics`, `Destructible`, `Relations.Add`, `Relations.Change`, `Relations.Remove`
- **Tweaks** — small, opinionated engine and balance adjustments that the Bashed Patch bakes into itself. Grouped by panel:
  - `Tweak Actors`: `Opposite Gender Anims: Female`, `Opposite Gender Anims: Male`
  - `Tweak Assorted`: `All Armor Playable`, `Attack Speed: Staves (Minimum/Maximum)`, `Disable Wind`, `Magic: Summoning Absorption Fix`, `Mark All Water As Damaging`, `No Light Fade Value Fix`, `No Light Flicker`, `Remove Load Screen Models`, `Reweigh: Ammunition/Books/Ingestibles/Ingredients/Potions/Staffs`, `Save Sorting Fix`, `Set Light Radii`, `Set Sound Attenuation Levels (+ Nirnroots Only)`, `Uniform Groundcover`
  - `Tweak Names`: `Append Ammunition Weight`, `Body Part Codes`, `Lore Friendly Text: Dwarven -> Dwemer`, `Proper English Text: Dwarfs -> Dwarves`, `Proper English Text: Staffs -> Staves`, `Rename Gold`, `Sort: Armor/Clothes`, `Sort: Scrolls`, `Sort: Spells`, `Sort: Weapons/Ammunition`
  - `Tweak Races`: `Playable Head Parts`, `Races Have All Head Parts`, `Genderless Head Parts`, `Force Behavior Graph Gender: Female`, `Force Behavior Graph Gender: Male`
  - `Tweak Settings`: a long list covering `Actor.*` (Faster Shouts, training cost multipliers, max companions/jump height/encumbrance/vertical detection/merchant restock/strength multiplier/training limit/unconsciousness duration), `AI.*` (bump reaction delay, conversation chance interior/exterior, max active/dead actors), `Arrow.*` (max arrows attached, recovery from actor, speed), `Bounty.*` (assault/horse theft/jailbreak/murder/pickpocketing/shapeshifting/theft/trespassing), `Camera: PC Death Time`, `Combat.*` (alchemy, block time min/avg/max, critical hit chance, disable projectile dodging, faster two-handed, max actors/ally hits/friend hits/armor rating, recharge weapons, speak on hit chance/threshold, stealth damage bonus), `Compass: Recognition Distance`, `Cost Multiplier: Enchantment`, `Crime.*` (alarm distance, pickpocketing chance, prison duration modifier), `Magic.*` (invisibility detection difficulty, max active runes, max resistance, max summons), `Msg.*` (autosaving, cannot equip item fix, carrying too much, no fast travel, no soul gem large enough, not enough charge, quick load, quick save, soul captured), `Player.*` (fall damage threshold, fast travel time multiplier, horse turning speed, inventory quantity prompt, max draggable weight, sprinting cost, underwater breath control), `Prompt.*` (activate/open/sit/take/talk text), `Soul Trap.*` (common/grand/greater/lesser soul level), `Visuals: Masser Size/Speed`, `Visuals: Secunda Size/Speed`, `Warning: Exterior/Interior Distance to Hostiles`, `World: Cell Respawn Time (Cleared)`, `World: Timescale` (this last one bakes into SSE saves — set once and never change).
  - Treat `Tweak Settings` entries that change gameplay-affecting numbers (training cost, bounty, magic resistance cap, sprint cost, etc.) as a deliberate list for `Elder Wilds`, not a set-and-forget. Many of them cannot be un-set cleanly once a save is mature.
- **Item Interchange Mode (`IIM` + `Filter` tag combo)** — special-purpose: the Bashed Patch will only merge `LVLI` records and inventory changes from the tagged plugin, ignoring all other record types. Use only when a specific mod needs it; do not enable it broadly.
- **Deactivate and NoMerge tag handling** — the `Deactivate` tag tells the Bashed Patch to deactivate the source plugin after merging (useful for a pure-tag source). `NoMerge` is the opposite: the plugin is left alone even if its records would normally be merged. `MustBeActiveIfImported` keeps the source active even after its content is imported.
- **What the Bashed Patch is NOT for**: arbitrary record-level overrides, sound file redirection, mesh changes, texture changes, navmesh, scripting, or any decision where the rule "last plugin wins" is wrong. Those go in per-pair `xEdit` patches or Synthesis patchers, not the Bashed Patch.

#### What `Synthesis` Is For

- Synthesis is a patcher framework: each patcher is a small C# program that runs against the resolved `xEdit`-style view of the load order and writes changes into a single output plugin (or per-patcher plugins, depending on configuration). The official `Synthesis.Registry` lists 277+ patchers for `Skyrim Special Edition`; the categories below are the ones `Elder Wilds` should actually consider, grouped by what they touch.
- **Encounter zones and unleveled lists**:
  - `EZLeveler` — encounter zone scaler and unleveler
  - `EnemyReleveler` — re-balance NPC levels by type
  - `No More Easy Enemies` — fix low-level enemies in high-level dungeons
  - `EncounterZoneRandomizer` — randomize zone levels by dungeon type
  - `EncounterZoneNames` / `CellEncounterLevelsInName` — surface zone levels in cell/map names
  - `MissingEncounterZonesPatcher` — forward `Missing Encounter Zones Fixed` changes so they don't get overwritten
  - `TrueUnleveledSkyrim` — comprehensive rebalance of world, NPCs, items, and leveled lists
- **Leveled list management and loot**:
  - `Container and Loot Patcher` — tweak and fix container + leveled list loot
  - `Leveled Deleter` — remove specific items from leveled lists (by FormID or keyword)
  - `leveledlistresolver` — resolve leveled list conflicts without `Bash Tags`
  - `Feminized Leveled Lists` / `Masculinized Leveled Lists` — strip unwanted-gender entries from NPC leveled lists
  - `Skyrim-LeveledLoot` — rebalance the loot system for progression
  - `OWLLeveledListAddition` — distribute items into `Open World Loot` lists by keyword
  - `OWLPatcher` — `Open World Loot` consistency patcher
  - `Lootable Things & Training Dummies Patcher`, `LootableCrates`, `MakeFirewoodPilesIntoContainers` — turn static props into containers
  - `GeneralStoresIngredientsPatcher` — pipe recipe ingredients into General Store unload lists
  - `HalgarisConsistentRPGLoot` / `Synthesis RPG Loot` — distribute enchantments into leveled lists and previously unenchanted items
  - `OBodyMerger` — merge `OBody` presets
- **Music, sounds, and audio**:
  - `AOSISCSoundPatcher` — apply `Audio Overhaul Skyrim` and `Immersive Sound Compendium` changes to all mods
  - `MusicTypePatcher` / `MusicTypePatcher-Revised-2024` — merge additions to `MUSC`/`MusicType` records
  - `ImmersiveMusicPatcher` — forward `Immersive Music` edits
  - `TUDMFootstepPatcher` — fix footstep sounds
  - `Sounds of Seasons` — mute season-inappropriate ambient sounds
- **NPC records, AI, and facegen**:
  - `AIOverhaulPatcher` / `iAmMe27/AI-Overhaul-Patcher-Edit-by-iAmMe` / `ICAIO AI for Mods` / `AI Stealth Overhaul` — forward AI Overhaul / OWL / stealth detection edits
  - `NPCStatRescaler`, `NPC-DeLeveler`, `madDynamicStatScaler` — rebalance NPC stats
  - `NPC Face Swapper`, `NPC Transmogrifier`, `NPCAppearanceCopier`, `NPCFaceScrambler`, `SynthEBD` — randomize and distribute NPC faces/appearances
  - `FacegenBaseline` — apply a foundational NPC appearance mod's facegen as the base override
  - `KZNPCPatchers` — apply `KalaZ'Nightmare` or any beast-race replacer to modded beast NPCs
  - `KS Hairs Bald Helmets Fixer`, `HP_NPC_WIGS_TO_HEADPART`, `HighPolyHead-RaceMenu Patcher`, `High Poly Head Vampire Fix` — fix head-part / hair / High Poly Head issues across NPC records
  - `RaceCompatibilityDialogue`, `RacialHeights`, `HarmonizedRaceHeights-Patcher` — race-level dialogue and height compatibility
  - `NpcProtector` — flag named NPCs as protected
  - `HumanoidWerewolvesNPCPatch` — give NPC werewolves an NPC-specific race
  - `Followers-are-Sneaky` — add the `Doesn't Affect Stealth` flag to followers
  - `FollowerFavorCarryLimitPatcher` — apply `Follower Favor Carry Limit` to all valid followers
  - `QuestsAreInSkyrimPatcher` — forward `Quests Are In Skyrim` changes
  - `SynBanditWarForwarder` — forward `Lawless` and its patch records
- **Item stats, weapons, armor, smithing**:
  - `Armor Stat Synthesis Patcher`, `Weapon Stat Synthesis Patcher` — analyze and rebalance armor/weapon stats
  - `ArmoryRebalance` — widen the gap between material tiers
  - `Yahis-Weapon-Overhaul` — rebalance axe/mace damage to surpass swords
  - `Arrow Damage Scaling` — make perks/enchantments/potions/archery level apply to arrow damage
  - `Crossbow Damage Multiplier` — multiplier for crossbow damage
  - `SpeedandReachFixes` — fix weapon speed and reach values
  - `WeaponSpeedEffectsFix` — fix weapon speed effects (compat with `Attack Speed Framework Plus`)
  - `WeaponSkillTypeOverhaul` — rework one-handed/two-handed skill and perk logic
  - `ItemWeightCustomizer`, `SynPotionWeight`, `Simple Equipment Weight Adjuster` — weight tuning
  - `SlotsSlotsSlots` — convert weight to slot count
  - `AmmoTweaks` — configurable ammo rebalance
  - `ItemRenamer` — apply user-defined name overrides
  - `ItemAlternates` — auto-generate alternate item versions
  - `SynFksDiverseSkeleton` — compatibility for `FK's Diverse Racial Skeletons`
  - `TokcDK/SynFixShieldData`, `SynFixWeaponAttackSpeed`, `SynGlovesAddFirstsPerk` — record-level weapon/shield fixes
  - `You need to CHILL Mihail` — reduce tankiness of Mihail's creatures
- **Magic, alchemy, cooking, enchanting, scrolls**:
  - `ApothecaryAutoPatcher` — patch mod-added ingredients to match `Apothecary`
  - `Complete Alchemy & Cooking Overhaul Patcher` — merge `CACO` changes into the winning override
  - `CompleteCraftingOverhaulCompatibleRecipeGenerator` — generate CCO-compatible recipes
  - `BreakdownRecipeGenerator` — generate breakdown recipes for every craftable
  - `CreateTemper` — generate tempering recipes
  - `Hephaestus` — schematic-based crafting and economy overhaul
  - `Heim Recipe Patcher` — patch Heim book conditions
  - `HonedMetalAdditionalIngredients` — add ingredients for `Honed Metal`
  - `PickYourPoison` — port of `Pick Your Poison`'s zEdit patcher
  - `ReProccer Evolved` — make mod-added items compatible with `Skyrim Redone`
  - `AllBooksHavePerks` — random perk per book
  - `ReadingIsGoodLegacy` — legacy port of `Reading Is Good`
  - `SpellTomePriceFixPatcher`, `SynSpellTomeNameExtender`, `DisplaySpellTomeLevelPatcher-local`, `spelltome_yeeter`, `SynESLify` (for the `SPEL`/`SCRL` COBJ patcher) — spell tome presentation
  - `DisenchantEverything` / `SmartDisenchantEverything` — drop the disenchant restriction
  - `Engarde_Synthesis` — patcher for `Engarde` combat
  - `Frost Spell Stamina Damage Adjustments` / `Frost Spells Don't Damage Stamina` — frost spell tuning
  - `Passive Enchanting Experience` — enchantment XP in combat
  - `SpellBindPatcher` — craft `Spell Bind` scrolls for any learnable spell
  - `Spell Research Synthesizer` — combine multiple `Spell Research` patches
  - `SpellAbsorbFix` / `SpellAbsorptionReworkSynth` — spell absorption compatibility
  - `StaffDuplicator` / `StaffGenerator` / `SynCGOStaves` — generate staff variants / `CGO` staff compat
  - `SorcererPatcher` — patcher for `Sorcerer` staff/scroll overhaul
  - `Theeverythingemfuckener` — rebalances magic effects
  - `Spells-Scrolls-Staves` — generic spell/scroll/staff patcher
- **Region, world, water, snow, weather**:
  - `Unique Region Names` / `Unique Region Names Patcher` — replace `Open Skyrim` / door text with real region names
  - `LandscapePatcher` — generic landscape patcher
  - `DestructibleSkyrimPatcher` — apply `Destructible Skyrim` to mod-placed objects
  - `RealisticWaterTwoPatcher` — forward `Realistic Water Two` edits
  - `Synthesis-BlendedShorelinesUniversal` — blend shore water
  - `BDSPatcher` / `Northpoint BDSPatcher` — `Better Dynamic Snow v2.x` patchers
  - `SSBGPatcher` — `Stretched Snow Begone`
  - `Nights Adjuster` — weather night adjustment
  - `Darker Weather Nights` — darken night weather
  - `SkyVRaan Weather Patcher` — SkyVRaan weather
- **Graphics, lighting, visuals, animations**:
  - `ELE Patcher` — `Enhanced Lighting for ENB` patcher
  - `ENB Light Patcher` — reduce light intensity for ENB Light
  - `Radial Blur Remover` — strip radial blur
  - `Remove Edge Glow` — drop edge-glow effects
  - `RemoveInteriorFogPatcher` — strip interior fog
  - `RemoveLandscapeVertexColor` — drop landscape vertex colors
  - `SynLighting` / `SynLoadScreenRemover` — standard lighting templates / load-screen cleanup
  - `Artistic Skyrim Overhaul - Exteriors Fixed` — fix SE-specific render lighting
  - `SF_Visual_Patcher` — merge `SkyFurry` changes
  - `TUDMFootstepPatcher` — footsteps
  - `ActionSpeedX` — action speed multiplier
  - `Another Archery Patcher` — archery physics for any load order
  - `Conjure Next To Caster` — alternative summoning spell versions
  - `crysis99/SynDirPowAtkRem` — directional power attack remap
  - `SynCombatBoundaries` — chase through water, no combat boundaries
  - `KillmoveParalysisPatcher` — prevent killmove paralysis
  - `ImprovedEnhancedCameraFirstPersonMeshFix` — first-person mesh paths for armors
  - `SynOppositeGenderAnimsTweak` — opposite-gender anim flag removal
  - `Generic Synthesis Patcher` — rule-based forwarding by filter
- **Trees, flora, world clutter**:
  - `Pine Tree Rescaler`, `Tree Scaler`, `Tree 3D Editor`, `TreeWindEditor` — tree presentation
  - `FloraFixer` — fix flora respawn
  - `Harvest Those Mammoth Tusks` — patcher for the eponymous mod
  - `ImmersiveEquipmentMeshGen`, `AllGUDMeshGen` — `Immersive Equipment Displays` and `All Geared Up Derivative` mesh generation
- **Performance**:
  - `Grass FPS` — grass performance patcher
  - `Configurable Grass Remover` — remove grass in user-defined zones
  - `NavmeshCollector` — collect winning navmesh into one ESP
- **Utility, compatibility, and meta-patchers**:
  - `AnyRecordPatcher` — patch many record types from YAML config
  - `CellEditorIDFixer` — remove underscores from cell EDIDs (SSE save sort fix)
  - `Generic Synthesis Patcher` — rule-based edit/merge/forward
  - `Patchifier` — generate Skypatcher / INI patches
  - `SynEDIDFixer` — fix `SPID`-style EDID distribution
  - `SynStringMerger` / `MergeTL` — merge translation patches
  - `SynPEXPatcher` — patch Papyrus scripts from configured files
  - `SimpleTranslator` — translation
  - `TofuPatcher` — fix missing-glyph tofu
  - `Whitestranslation` — auto-translate texts
  - `DialogueTransformer` — LLM-driven dialogue conversion
  - `VREyeAdaptationFix` — VR eye adaptation fix
  - `GridTransitionCrashFix` — prevent location-alias crash
  - `BardsCollegeExpansionAutoPatcher` — `Bard's College Expansion` patcher
  - `BlacksmithForgeWater` — place forge water effects
  - `Communism` — meta-patcher
  - `NoStartingMapMarkers` — strip unvisited starting markers
  - `Hephaestus`, `CostumeShop`, `BookSmart` — content generators
  - `ELE Patcher`, `ENB Light Patcher`, `NoShadowsPatch` — lighting/no-shadow cleanup
  - `SkyLady` — turn male NPCs into females
  - `ColorRando` family — color randomization
- **What Synthesis is NOT for**: anything that requires a deliberate per-mod judgment of which mod should win on a specific record (use a per-pair `xEdit` patch for that), mesh or texture content, worldspace cell edits that need to reference specific local objects (use `xEdit` for that), or replacing dedicated tools that already own the workflow (`DynDOLOD`, `xLODGen`, `BodySlide`, `Pandora`, `TexGen`). Synthesis is good at applying a single rule across many records; it is bad at record-by-record curation.

#### Decision Rule for `Elder Wilds`

- The Bashed Patch owns: leveled list merge operations (`Delev`/`Relev`), Bash-Tag-driven import for tagged source plugins, and the standard set of Tweak Settings that the list has committed to. It does not own per-mod conflict resolution.
- Synthesis owns: applying a single rule or distribution to a record type across the whole load order (loot distribution, NPC stat scaling, leveled list cleanup, music merge, encounter zone unleveling, name normalization, hair/head-part fixes, item weight rebalancing, face/appearance randomization, snow and BDS compatibility forwarding, AOS/ISC sound application, Caco / Apothecary ingredient merging, and the long tail of one-job community patchers). It does not own conflict resolution where the rule "last plugin wins" is wrong.
- The per-mod `xEdit` cycle owns: every decision where you have to look at a specific record and decide which mod should win. Most of the patching effort in `Elder Wilds` lives here.
- For mods that genuinely need a manual `ESM` flag, do that in `SSEEdit` once and document the decision, rather than re-deciding every reinstall.

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

## Elder Wilds Bashed Patch And Synthesis Configuration

### Core Idea

- The generic category maps above only become useful when they are tied to the actual mods `Elder Wilds` ships with. This subsection is that binding: the exact `Wrye Bash` tweaks enabled, the `Bash Tags` set on the plugins that need them, and the `Synthesis` patcher pipeline run in this exact order.
- Anything not in the tables below is intentionally left to per-mod `xEdit` patches or to the generation stage. The default is "do not touch" — adding a `Synthesis` patcher or a `Bash Tag` only when a specific mod in the list makes it necessary.

### Wrye Bash (Bashed Patch) Configuration

#### Tweak Settings

Enable in `Wrye Bash` → `Bashed Patch` → `Tweakers` only the items below. Everything else stays at the default and is patched by hand if needed.

- **Tweak Actors**: `Opposite Gender Anims: Female` and `Opposite Gender Anims: Male` — needed because `Elder Wilds` runs `CBBE 3BA`, `HIMBO`, and `KS Hairdos` which already change the per-gender behavior set, and the global flip keeps NPCs consistent across `EVG Conditional Idles`, `Goetia`, and `Leviathan II` packs.
- **Tweak Assorted**:
  - `All Armor Playable` — required by `Immersive Armors` (60+ sets, several ship with the non-playable flag in the base plugin).
  - `No Light Fade Value Fix` — required because `Lux`, `Lux CS`, `Lux Orbis`, `Lux Via`, `ELFX`, `Relighting Skyrim`, and `Luminosity` all interact with fade values and the bare-`1.0` value is the stable starting point.
  - `No Light Flicker` — required because `RAID Weathers`, `Cathedral Weathers`, `Obsidian Weathers`, and `Azurite III CS` weather variants ship flickering templates that look bad in third-person exploration.
  - `Remove Load Screen Models` — required because `SkyParkour v3`, `RaySense`, and `Ricochet` add 3D geometry that can leak into load screens.
  - `Save Sorting Fix` — required: the SSE save-sorting bug is a real issue with this much plugin weight.
  - `Set Light Radii` — use a `100%` multiplier to leave `Lux` radii alone; do not raise above 100 without re-doing lighting scenes.
  - `Set Sound Attenuation Levels: Nirnroots Only` — leave default. `Sounds of Skyrim Complete` and `AOS` need their own attenuation and a global multiplier fights them.
  - `Uniform Groundcover` — enable, because `Skoglendi`, `Origins of Forest`, and `Mari's flora` are the grass stack and matching density variance is what makes the world feel coherent.
- **Tweak Names**:
  - `Body Part Codes` — required to drive `Sort: Armor/Clothes` correctly given `CBBE 3BA` body parts.
  - `Sort: Armor/Clothes` — required; with `Immersive Armors`, `Beyond Skyrim - Bruma`, and `Spaghetti's Cities` adding armors, unsorted inventory is unreadable.
  - `Sort: Scrolls`, `Sort: Spells`, `Sort: Weapons/Ammunition` — required, because `Apocalypse`, `Mysticism`, `Odin`, `Adamant`, `Vokrii`, `Ordinator`, and `Ars Metallica` all add to scroll/spell/weapon lists.
  - `Lore Friendly Text: Dwarven -> Dwemer` — enable: the `PBR textures for The Great Cities Collection` and `PBaRkarth` use Dwemer terminology and the rename is the only thing that keeps the UI consistent.
- **Tweak Races**:
  - `Races Have All Head Parts` — required because `KS Hairdos SSE` adds hundreds of head parts and races need to know about them; set the types code to a reasonable preset like `45` (eyes/hair/beards).
  - `Playable Head Parts` — enable: ensures all of `KS Hairdos`'s hairs are selectable in racemenu.
  - Leave `Force Behavior Graph Gender: Female` and `Force Behavior Graph Gender: Male` off — `Elder Wilds` does not standardize that flag, and forcing it breaks per-NPC behavior from `Pandora` conditions.
- **Tweak Settings**:
  - `AI: Bump Reaction Delay` — raise to `15` to mute spammy `Nether's Follower Framework` / `EFF` reactions.
  - `AI: Conversation Chance` — leave default; `Immersive Patrols`, `Extended Encounters`, and `Radiance Encounters` already increase ambient chatter.
  - `AI: Max Active Actors` — raise to `80` because `Extended Encounters`, `Immersive Patrols`, and `Bruma` patrols overlap.
  - `AI: Max Dead Actors` — raise to `120` to handle combat aftermath in dungeons.
  - `Arrow: Max Arrows Attached to NPC` — raise to `20` so `Ricochet` and `SkyParkour v3` multi-arrow scenes stay readable.
  - `Combat: Max Actors` — raise to `60` to match the new `AI: Max Active Actors` ceiling.
  - `Combat: Stealth Damage Bonus` — leave default; `RAID` is the canonical authority for stealth scaling and overriding here creates conflicts.
  - `Msg: Cannot Equip Item Fix` — **must** be enabled: `Campfire`, `Frostfall`, and `SunHelm`/`Starfrost`/`Last Seed` all rely on it.
  - `Msg: No Fast Travel` — leave default; `Campfire` and `Frostfall` already gate fast travel through their own logic.
  - `Player: Max Draggable Weight` — set to `1000` to keep physics objects interactable given that the list has heavy clutter via `Spaghetti's Cities` and `RUSTIC CLUTTER COLLECTION`.
  - `Player: Underwater Breath Control` — leave default; `Realistic Water Two` and `A Water Made For CS in mind` already tune this in their own records.
  - `Soul Trap: Common/Grand/Greater/Lesser Soul Level` — set to vanilla values; `Mysticism`, `Odin`, and `Apocalypse` redefine the soul economy and changing these overrides their work.
  - `Visuals: Masser Size`, `Visuals: Masser Speed`, `Visuals: Secunda Size`, `Visuals: Secunda Speed` — set to `1.0` and `1.0` so `AURORA S.E.` and `Skylighting` keep their sky behavior.
  - `Warning: Exterior Distance to Hostiles` and `Warning: Interior Distance To Hostiles` — leave default; `Book of Shadows` and `RAID` already adjust detection.
  - `World: Cell Respawn Time` and `World: Cell Respawn Time (Cleared)` — leave default; `Open World Loot` and `MorrowLoot Ultimate` rewrite the loot pipeline.
  - `World: Timescale` — set to `20` and never change. **Save-baking warning**: this setting bakes into SSE saves, so any change to a long-running test save will make that save behave inconsistently with the rest of the list.

#### Bash Tags

Set the following `Bash Tags` (one file per plugin under `Data\Bash Patches\`) on the listed plugins. Tags not listed here are deliberately absent.

- `Immersive Weapons.esp` — `Relev` (entries from this mod should be re-leveled into the winning list).
- `Immersive Armors.esp` — `Relev`.
- `Immersive Armors Retexture.esp` — `Graphics` (do not let the Bashed Patch treat texture records as records to merge; it is a retexture, not a content add).
- `Hunterborn.esp` — `Invent.Add`, `Delev`, `Relev` (the mod adds pelts, reagents, and harvested items to containers, removes several generic drops, and re-levels spawns).
- `Simple Fishing Overhaul.esp` — `Invent.Add`, `C.MiscFlags`.
- `Streamlined Fishing.esp` — `Invent.Add` only.
- `Open World Loot.esp` — `Delev`, `Relev`, `C.Encounter` (the mod's whole job is encounter zone and leveled list rewriting).
- `MorrowLoot Ultimate.esp` — `Delev`, `Relev`.
- `Trade and Barter.esp` — `Stats`, `Invent.Change` (changes item values and merchant inventories).
- `Aetherius.esp` / `Morningstar.esp` / `Imperious.esp` — `R.AddSpells` (one of these three is the race overhaul; whichever wins gets the tag, not all three).
- `Adamant.esp` / `Vokrii.esp` / `Ordinator.esp` — `NPC.Perks.Change` and `NPC.Perks.Add`.
- `Mysticism.esp` / `Odin.esp` / `Apocalypse.esp` — `SpellStats`, `EffectStats`.
- `Lux.esp` / `Lux - Lux CS.esp` / `Lux - Orbis.esp` / `Lux - Via.esp` — `C.Light`, `C.Fog`, `C.ImageSpace` (light and atmosphere overrides are what these mods do).
- `ELFX.esp` and `ELFX - Shadows.esp` — `C.Light`, `C.Fog` (no fog conflict, but light is the same set of records).
- `Relighting Skyrim.esp` and `Luminosity.esp` — `C.Light` only.
- `RAID Weathers.esp` and `Raid Weathers CS.esp` — `C.Climate`, `C.Music` only if the weather pack changes music.
- `Cathedral Weathers.esp` and `Obsidian Weathers.esp` and `Obsidian - CS.esp` — `C.Climate`.
- `Realistic Water Two.esp` — `C.Water`.
- `A Water Made For CS in mind.esp` — `C.Water`.
- `Simplicity of Sea.esp` — `C.Water`.
- `Enhanced Rocks and Mountains.esp` and `Enhanced Rocks and Mountains - Fix and Addon.esp` — `Graphics`, `ObjectBounds` (mesh changes; no content records).
- `Beyond Skyrim - Bruma SE.esp` — `C.Climate`, `C.Music`, `C.Light`, `C.Water`, `C.ImageSpace`, `C.Location`, `C.Regions` (Bruma touches almost every cell record type, this is the safe merge set).
- `Spaghetti's Cities - AIO.esp` — `C.Light`, `C.MiscFlags` (light changes plus cell flag edits).
- `The Great Cities - Minor Cities and Towns SSE.esp`, `Dawn of Skyrim (Director's Cut) SE.esp`, `JK's Skyrim.esp` — `C.Light`, `C.MiscFlags`.
- `RUSTIC CLUTTER COLLECTION.esp` and `RUSTIC CLOTHING.esp` — `Names`, `Stats` (only merge the names/stats, not the meshes).
- `High Poly Project.esp` — `Graphics`, `ObjectBounds` (mesh upgrade, not content).
- `KS Hairdos SSE.esp` — `Graphics`, `Names` (hair mesh and record rename; do not merge headpart bodies).
- `High Poly True to Vanilla NPC Overhaul.esp` — `Graphics`, `Names`, `Actors.Stats` (it modifies NPC textures and stat snippets).
- `RDO.esp` — `Actors.AIPackages`, `Actors.Spells`.
- `Amorous Adventures.esp` (clean variant) — `Actors.AIPackagesForceAdd`, `Actors.SpellsForceAdd`, `Invent.Add`.
- `Marriage Mod - To Have And To Hold.esp` — `Actors.AIPackagesForceAdd`, `Actors.Factions`.
- `Serana Dialogue Add-On.esp` — `Actors.AIPackages`, `Actors.Spells`.
- `Pilgrim.esp` / `Trua.esp` / `Wintersun.esp` — `Actors.Spells` (one of the three wins; tag the chosen one only).
- `Book of Shadows.esp` — `Actors.Spells`.
- `Skyrim Reputation.esp` — `Actors.Factions`, `Relations.Add`.
- `Suspicious City Guards.esp` — `Actors.AIPackages`.
- `Audio Overhaul for Skyrim SE.esp` — `Sound`.
- `Immersive Sounds - Compendium.esp` — `Sound`.
- `Sounds of Skyrim Complete SE.esp` — `Sound`, `C.Acoustic`.
- `Campfire.esp` — `C.MiscFlags`, `Invent.Add` (it adds firewood and food to cell inventories).
- `Ars Metallica.esp` — `Stats`, `Invent.Change`.
- `Complete Crafting Overhaul Remastered.esp` — `Stats`, `Invent.Change`.
- `Honed Metal.esp` — `Invent.Change` (it modifies merchant inventories for crafting services).
- `Apothecary.esp` — `Invent.Add`, `Stats`, `Keywords`.
- `Complete Alchemy and Cooking Overhaul.esp` — `Invent.Add`, `Stats`, `Keywords`.
- `Alchemy Potions and Food Adjustments.esp` — `Stats`, `Keywords`.
- `Frostfall.esp` — `C.Climate`, `C.ImageSpace` (it edits worldspace exposure for cold regions).
- `Starfrost.esp` / `SunHelm.esp` / `Last Seed.esp` — `Stats`, `Keywords`, `Invent.Add` (one of the three wins).
- `AOS - Couriers and Imperial Census.esp` and other `AOS` add-ons — `Sound`.
- `Nether's Follower Framework.esp` / `EFF.esp` / `Amazing Follower Tweaks SE.esp` — `Actors.Factions`, `Invent.Add` (they add items to follower inventories).
- `TrueHUD.esp` — no tags (do not merge HUD records, leave them as overrides).
- `Sovngarde - Mist's Font Replacer.esp` — no tags (font plugin, do not merge).

Plugins that should be tagged `Deactivate` because they only exist to feed the Bashed Patch (none expected in `Elder Wilds`; if a mod is later added purely for its `Bash Tags` source, tag it `Deactivate`).

Plugins that should be tagged `NoMerge` if a future install ever needs to override the merge (none expected; tag on a per-mod basis if a record from a specific plugin should never enter the Bashed Patch).

### Synthesis Configuration

The `Synthesis` patcher pipeline runs as a single batch via the `Run Mutagen` tool registered in `Mod Organizer 2`, with output written to the `Patches\Synthesis Patch.esp` separator. Patchers below are listed in the order they must run; do not reorder.

#### Stage 1 — NPC, AI, And Facegen

- `KS Hairs Bald Helmets Fixer` — because `Elder Wilds` ships `KS Hairdos SSE` and the bald-head-under-helmet bug is universal.
- `High Poly Head Vampire Fix` — keep this in the patcher shortlist whenever the `High Poly Head 1.4` branch is active, because vampire headpart edge cases are still one of the known maintenance costs of that route.
- `HP_NPC_WIGS_TO_HEADPART` — converts any wig distribution to headparts so `Elder Wilds` headpart inventory stays consistent.
- `FacegenBaseline` — applies the canonical facegen override from `High Poly True to Vanilla NPC Overhaul` to every named NPC, so facegen does not silently break when the NPC overhaul is updated.
- `NPCStatRescaler` — rescales NPC stats to keep `Elder Wilds` combat pacing after `MCO ADXP` and `Valhalla Combat` install.
- `AIOverhaulPatcher` (or `ICAIO AI for Mods` if `ICAIO` is in the stack) — forwards the AI package list from the chosen AI overhaul so it wins over the default package set.
- `AI Stealth Overhaul` — used in combination with `Realistic AI Detection (RAID)`. The patcher customizes the difficulty curve and `RAID` provides the underlying detection.
- `Followers-are-Sneaky` — adds the "Doesn't Affect Stealth" flag to all followers from `Nether's Follower Framework`, `EFF`, and `Amazing Follower Tweaks SE`.
- `FollowerFavorCarryLimitPatcher` — applies follower carry limits from `Nether's Follower Framework` to mod-added followers.
- `NpcProtector` — flags essential NPCs from quest mods (`Wyrmstooth`, `Falskaar`, `The Forgotten City`, `VIGILANT`, `Sirenroot`, `Moon and Star`, `Beyond Reach`, `Bruma`, `The Wheels of Lull`) as protected.
- `RaceCompatibilityDialogue` — adds dialog conditions so the chosen race overhaul (`Aetherius` / `Morningstar` / `Imperious`) plays correctly with all custom races.
- `RacialHeights` and `HarmonizedRaceHeights-Patcher` — applies the chosen height scaling across all races including `Bruma` and `Beyond Reach` races.
- `SynBanditWarForwarder` — forwards `Lawless` bandit-war changes (keep enabled; lightweight and prevents NPC record regressions).
- `SynOppositeGenderAnimsTweak` — already handled by the Bashed Patch; do not enable here to avoid double-application.

#### Stage 2 — Encounter Zones And Encounter Logic

- `EZLeveler` — scales encounter zones; configure to the unleveled-band target that `Open World Loot` and `MorrowLoot Ultimate` assume.
- `EnemyReleveler` — delevels NPCs by type; configure to keep `Bruma`, `Falskaar`, and `Wyrmstooth` enemies within the new band.
- `No More Easy Enemies` — fixes low-level enemy spawns in high-level dungeons; required because of the `Extended Encounters` and `Radiance Encounters` ambient spawn load.
- `EncounterZoneNames` and `CellEncounterLevelsInName` — appends encounter zone level to the cell name; helps debug which zone the player is in.
- `MissingEncounterZonesPatcher` — forwards changes from `Missing Encounter Zones Fixed` (if added) so they do not get overwritten by `Bruma`/`JK's Skyrim`/`Spaghetti's Cities`.
- `TrueUnleveledSkyrim` — only enable if `Elder Wilds` ever drops `Open World Loot` and `MorrowLoot Ultimate`; the patcher is comprehensive but it overlaps badly with `OWL` so do not run both.

#### Stage 3 — Leveled Lists And Loot

- `OWLLeveledListAddition` — adds `Immersive Weapons` and `Immersive Armors` to the `Open World Loot` leveled lists by keyword.
- `OWLPatcher` — keeps `OWL` leveled lists consistent across the rest of the stack.
- `Skyrim-LeveledLoot` — adjusts the loot system with progression focus; configure to match the chosen difficulty in `modlist-11.md`.
- `HalgarisConsistentRPGLoot` — distributes enchantments from `Mysticism`/`Odin`/`Apocalypse` to all mod-added weapons/armors.
- `Container and Loot Patcher` — base loot table tuning; configure to match the `MorrowLoot Ultimate` values.
- `LootableCrates`, `MakeFirewoodPilesIntoContainers`, `Lootable Things & Training Dummies Patcher` — these three enable the immersive-clutter loot chain that `RUSTIC CLUTTER COLLECTION` benefits from.
- `GeneralStoresIngredientsPatcher` — pushes the alchemy ingredient stock from `Apothecary` into general stores.
- `ImmersiveMusicPatcher` and `MusicTypePatcher-Revised-2024` — merge additions to `MUSTT` records so `AOS` ambient music does not double up. Required: `AOS` and `Sounds of Skyrim Complete` both add music to the same cells.
- `leveledlistresolver` — clean up remaining leveled list conflicts that did not get a `Bash Tag` for resolution. Run after `OWL` and `MorrowLoot` so the resolver sees the merged view.
- `Feminized Leveled Lists` and `Masculinized Leveled Lists` — keep enabled with default settings to fix gendered leveled list entries from mod-added NPCs.

#### Stage 4 — Items, Crafting, Smithing, Alchemy, Cooking

- `ApothecaryAutoPatcher` — required: the mod adds ingredients that need to inherit `Apothecary`'s values. Pair with `Complete Alchemy and Cooking Overhaul Patcher` if `CACO` is in the stack.
- `BreakdownRecipeGenerator` — generates breakdown recipes for every craftable from `Immersive Weapons` and `Immersive Armors`, so `Ars Metallica` and `Complete Crafting Overhaul Remastered` get full coverage.
- `CreateTemper` — generates tempering recipes for the same weapon pool.
- `HonedMetalAdditionalIngredients` — adds additional ingredients to `Honed Metal` from `Apothecary`/`CACO`.
- `Heim Recipe Patcher` — updates weapon/armor recipes with the correct `Heim` book conditions (only enable if `Heim` is added).
- `ReProccer Evolved` — keeps mod-added items compatible with `Skyrim Redone`-style systems; not currently in the stack but the patcher is cheap insurance.
- `Armor Stat Synthesis Patcher` and `Weapon Stat Synthesis Patcher` — analyze and rebalance armor/weapon stats to keep the tier ladder meaningful across `Immersive Armors`, `Immersive Weapons`, `Spaghetti's Cities`, and `Bruma` armors.
- `SpeedandReachFixes` — applies `Speed and Reach Fixes` corrections to all mod-added weapons.
- `WeaponSpeedEffectsFix` — applies `Weapon Speed Effects Fix` / `Attack Speed Framework Plus` corrections to all mod-added weapons.
- `SynFixShieldData` and `SynFixWeaponAttackSpeed` — repair shield material/impact sets and attack-speed bugs on mod-added items.
- `SynGlovesAddFirstsPerk` — adds the missing fists perk to gloves by material so unarmed combat in `Valhalla Combat` works.
- `ItemWeightCustomizer` and `SynPotionWeight` — reweights potions and items to match the carry-weight design.
- `SlotsSlotsSlots` — converts weight into equipment slots (armor layering) so `CBBE 3BA` and `Immersive Armors` coexist.
- `AmmoTweaks` — `WACCF`-friendly alternative to `ABT` for ammunition tuning.
- `SynCGOStaves` — only if `Complete Graphics Overhaul` staves are in the stack; otherwise skip.

#### Stage 5 — Magic, Spells, Enchanting

- `Engarde_Synthesis` — applies `Engarde` combat fixes to all spell tomes.
- `DisenchantEverything` (or `SmartDisenchantEverything`) — drops the disenchant restriction so `Mysticism`/`Odin`/`Apocalypse` enchantments can be learned from any item that carries them.
- `Passive Enchanting Experience` — adds XP to enchantments worn in combat.
- `Spell Research Synthesizer` — only if `Spell Research` is added.
- `StaffGenerator`, `StaffDuplicator` — only if `Mysticism`/`Odin`/`Apocalypse` is the chosen magic overhaul; otherwise skip.
- `SorcererPatcher` — only if `Sorcerer - A Staff and Scroll Overhaul` is added.
- `ReadingIsGoodLegacy` — enables skill XP from book reading.
- `AllBooksHavePerks` — random perk per book; configure per `modlist-08.md` world-content decision.
- `SpellTomePriceFixPatcher`, `SynSpellTomeNameExtender`, `DisplaySpellTomeLevelPatcher-local`, `spelltome_yeeter` — spell-tome presentation; pick the one whose price/format matches the rest of the list.
- `SynESLify` — **must** be the last patcher in the chain; ESLifies the output so the Synthesis output does not eat a hard load-order slot.

#### Stage 6 — Snow, Weather, And Region

- `BDSPatcher` — **required**. `Better Dynamic Snow SE` and `Better Dynamic Ash SE` are both locked in `modlist-02.md`. This patcher forwards BDS multistage snow and ash accumulation records to all mod-added objects (worldspace edits from `JK's Skyrim`, `Spaghetti's Cities`, `Cities of the North`, quest mods, and dungeon packs). Without it, mod-placed objects lack snow/ash coverage. Use the `BDSPatcher` entry (not `Northpoint BDSPatcher`). Configure to run with both `BetterDynamicSnow` and `BetterDynamicAsh` keywords active.
- `SSBGPatcher` — `Stretched Snow Begone` synthesis patch; enable if the snow mesh ever stretches under doors or walls.
- `Nights Adjuster` and `Darker Weather Nights` — pick one (not both) and configure to match the night darkness target in `modlist-02.md`.
- `SkyVRaan Weather Patcher` — only if `SkyVRaan` is added.
- `Unique Region Names` and `Unique Region Names Patcher` — pick one and use it to relabel exterior region names from `Skyrim` to the actual region (`Whiterun`, `The Rift`, etc.). Required because `Bruma`, `Falskaar`, and `Wyrmstooth` all need consistent region naming.
- `RealisticWaterTwoPatcher` — forwards `Realistic Water Two` records so they do not get overwritten by other worldspace mods.
- `Synthesis-BlendedShorelinesUniversal` — adjusts water values to blend with shores; required because `Spaghetti's Cities`, `Bruma`, and `JK's Skyrim` change shoreline geometry.
- `LandscapePatcher` — only enable if the existing landscape texture stack is replaced; current stack (`Skyland AIO` + `Skurkbro's` + `Skyking Fantasia` + `Rally's Solstheim` + `Enhanced Rocks and Mountains`) is the lock-in.
- `DestructibleSkyrimPatcher` — only enable if `Destructible Skyrim` is added; not in the current list.

#### Stage 7 — Trees, Flora, And Mesh Generators

- `Pine Tree Rescaler` — rescales `Traverse the Ulvenwald` and `Happy Little Trees` pines to consistent scale.
- `Tree Scaler`, `Tree 3D Editor`, `TreeWindEditor` — keep all three; configure each to its own subtree (a single rescaling pass hides per-tree problems).
- `FloraFixer` — fixes flora respawning for the chosen grass stack (`Skoglendi`, `Origins of Forest`, `Mari's flora`).
- `ImmersiveEquipmentMeshGen` and `AllGUDMeshGen` — only if the corresponding mods are added.
- `Harvest Those Mammoth Tusks` — only if `Harvest Those Mammoth Tusks` is added.
- `Meridiano/Synthesis-BlendedShorelinesUniversal` — already in Stage 6.

#### Stage 8 — Visuals And Lighting

- `ELE Patcher` — `Enhanced Lighting for ENB`; the current stack uses `Community Shaders`, so skip.
- `ENB Light Patcher` — only if an `ENB` preset is layered on top of `Community Shaders`; current list is CS-only.
- `NoShadowsPatch` — only if a specific mod has a known shadow regression.
- `Radial Blur Remover` — removes radial blur effects; enable because the current list has no `ENB` to give it character.
- `Remove Edge Glow` — removes the active-effect edge glow from actors; pair with the `Apocalypse`/`Odin`/etc. decision in `modlist-05.md`.
- `RemoveInteriorFogPatcher` — removes near/far fog from interior cells; conflicts with `AOS` and `Sounds of Skyrim Complete` reverb, so disable if those mods are present.
- `RemoveLandscapeVertexColor` — removes vertex coloring from landscapes; enable only if the chosen landscape texture stack has been replaced.

#### Stage 9 — Audio

- `AOSISCSoundPatcher` — required: applies the changes from `AOS` and `Immersive Sounds - Compendium` to every mod in the list, so weapon/armor/object sound swaps propagate.
- `TUDMFootstepPatcher` — only if `True Unleveled Dark Maul` or `Ultimate Dungeon Masters` is added; skip otherwise.
- `Sounds of Seasons` — mutes crickets in winter; enable because the `Cathedral Weathers`/`Obsidian Weathers` chain already drives seasonal ambience.
- `SFCOPaintingRemover` — only if `Snazzy's Furniture and Clutter Overhaul` is added; skip otherwise.

#### Stage 10 — Performance And Cleanup

- `Grass FPS` — keep enabled; it patches grass records directly to the more efficient form.
- `Configurable Grass Remover` — enable if `Elder Wilds` adopts the dense forest-floor route later.
- `NavmeshCollector-Updated` — collects the winning navmesh records into one ESP; do **not** enable if `Bruma` or `Falskaar` is in the stack, because the navmeshes from those worldspace mods need to remain on their own plugins.
- `Generic Synthesis Patcher` — rule-based forwarding patcher; configure with rules for the specific mods in the list that the other patchers do not cover.

#### Stage 11 — Utility, Compatibility, And ESLification

- `Patchifier` — generates `Skypatcher`/`INI` patches for SKSE-flag-driven tweaks.
- `SynEDIDFixer` — fixes `SPID`-type mods that distribute objects by `EditorID`.
- `SynStringMerger` — merges translation strings; do not enable unless the list is going to ship a translation layer.
- `CellEditorIDFixer` — removes underscores from cell `EditorID`s; required because `Bruma`, `Falskaar`, `Wyrmstooth`, and `Beyond Reach` all introduce new cell names.
- `SynPEXPatcher` — patches Papyrus scripts in mods based on configured files; enable per specific mod in the stack.
- `SynPerkCOBJPatcher` (which is the actual `SynESLify`) — keep **at the end** of the chain, ESLify the output.

### Build Order And Rebuild Triggers

The full rebuild order in `Mod Organizer 2` is:

1. `SSEEdit` fast mode cleanup pass after every new plugin install.
2. `Bashed Patch` rebuild — triggers: any change to a plugin with a `Bash Tag`, any tweak setting change, any new plugin with one of the listed tags.
3. `Synthesis` pipeline run — triggers: any change to the patcher list, any change to a mod that feeds one of the enabled patchers, any `Bashed Patch` tag change.
4. `xLODGen` and `TexGen` — triggers: any landscape, terrain, or object mesh change; do not run after just an `ESL` flag change.
5. `DynDOLOD` — triggers: any worldspace, tree, object, or `Bashed Patch`/`Synthesis` change. Run twice in a clean session: once with `Medium` settings to verify outputs, once with the final preset.
6. `Pandora` — triggers: any behavior, animation, or skeleton change.
7. `BodySlide` — triggers: any body, skin, or armor mesh change; especially after `Immersive Armors` and `Spaghetti's Cities` updates.
8. `Grass Cache` rebuild — triggers: any grass mod or `Worldspaces with Grass SSEEdit Script` change.
9. `SSE Display Tweaks` and `BethINI Pie` settings review — triggers: any lighting, weather, or graphics stack change.

Rebuilding one stage does not replace the stages after it. A `Bashed Patch` rebuild after adding a single weapon must still be followed by a `Synthesis` run if the new weapon needs an `Armor Stat Synthesis Patcher` or `WeaponSpeedEffectsFix` pass, and a `DynDOLOD` run if the weapon has worldspace placement.

### Risks & Compatibility

- `Bashed Patch` and `Synthesis` both write into the same load-order range. Place the `Bashed Patch` above the `Synthesis` patch only if a known conflict needs the Bashed Patch to win; otherwise the `Synthesis` patch should be the last patch in the load order to let its overrides stand.
- `SynESLify` (Stage 5 / Stage 11) **must** be last. If it is not, the patchers after it will re-materialize a hard slot and the merge order breaks.
- The `Tweak Settings` list in the `Bashed Patch` is sensitive to load order: if a mod that already provides a setting (for example `RAID` setting `AI: Conversation Chance` to zero) is loaded **above** the `Bashed Patch`, the `Bashed Patch` tweak will silently lose. Check the load order with `LOOT` and re-run `xEdit` to verify which record is winning for each tweaked setting.
- `Tweak Settings: World: Timescale = 20` bakes into saves. Do not change this setting on a long-running test save.
- `Skyrim-LeveledLoot` and `OWL` overlap on leveled list contents. Run `OWLLeveledListAddition` first (Stage 3) so `Skyrim-LeveledLoot` reads the merged view; running in the wrong order produces a list that does not include `Immersive Weapons`/`Immersive Armors` entries.
- `AOSISCSoundPatcher` requires that `AOS` and `ISC` are both active when the patcher runs. If only one is active, the patcher will write half the rules and the other mod's effects will not propagate.
- `HP_NPC_WIGS_TO_HEADPART` and `KS Hairs Bald Helmets Fixer` both touch headpart records. Run `HP_NPC_WIGS_TO_HEADPART` first; otherwise the bald-helmet fix may not find the converted headparts to attach to.
- `Generic Synthesis Patcher` is a footgun in this list because the rule engine will apply to records already covered by the named patchers. Keep its ruleset empty until a specific conflict is identified.
- `SynStringMerger` will produce a translation patch that other patchers do not see. Disable it unless the list ships a translation layer.
- `NavmeshCollector-Updated` is dangerous with `Bruma` and `Falskaar`. Do not enable it while those worldspace mods are active.

### Acceptance Criteria

- The `Bashed Patch` is built with the exact `Tweak Settings` and `Bash Tags` listed above. The patch CRC is recorded in the build log and re-checked after every rebuild.
- The `Synthesis` patcher list matches the stage ordering in this section, with patchers from stages that are not currently applicable explicitly disabled (and not removed) so they can be re-enabled without re-reading the config.
- A deliberate test that disables `Immersive Weapons`, `Immersive Armors`, `Hunterborn`, or `Open World Loot` causes the corresponding `Bash Tag` to lose its source plugin and the merged leveled list to shrink predictably. The Bashed Patch still builds, just smaller.
- A deliberate test that disables `RAID` causes `AI Stealth Overhaul` to log a warning and `Followers-are-Sneaky` to be the only detection-related patcher running. No silent failure.
- A deliberate test that reorders `SynESLify` out of the last position causes the `Synthesis` patch to take a hard load-order slot and `LOOT` to flag the new entry. Reordering back to last resolves the flag.
- Every `Tweak Settings` entry enabled in the `Bashed Patch` is verified by a deliberate save-load test: change a tweak value, reload, observe the gameplay effect, and revert. Settings that cannot be verified are not enabled.
