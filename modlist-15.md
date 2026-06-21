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

## Optional Diagnostics And Performance Tools

### Core Idea

- The tools below are not required for the list to function, but they solve real problems during load-order building and heavy play.
- Install them early for diagnostics value and keep them active for runtime protection; neither has ongoing configuration or conflict maintenance once installed.

### Recursion Monitor

- **Nexus**: [Recursion Monitor](https://www.nexusmods.com/skyrimspecialedition/mods/76867) (v1.2, original by Nightfallstorm)
- **Purpose**: Detects broken Papyrus scripts stuck in recursive loops and prevents the resulting framerate collapse. Skyrim's engine does not throw a stack-overflow error, so a buggy function that calls itself hundreds of thousands of times silently destroys frame timing. This plugin hooks the stack check and breaks the recursion after 1000 calls, writing a `StackFrameOverFlow` warning to the log instead of tanking performance.
- **Requirements**: SKSE, Address Library for SKSE Plugins
- **Status**: Optional diagnostics utility. Silent at runtime unless it fires. Worth installing early for debugging and keeping active on a production list.
- **Updated fork**: [recursion-fix-updated](https://www.nexusmods.com/skyrimspecialedition/mods/179627) (v1.0.2) removes the in-game debug popup that could freeze gameplay during a recursion event. All warnings are written to the SKSE log instead. Prefer this version for a production list.

### Save And Load Accelerator For SKSE Cosaves (S.L.A.C.K.)

- **Nexus**: [S.L.A.C.K.](https://www.nexusmods.com/skyrimspecialedition/mods/163969) (by just-harry)
- **Purpose**: Rewrites SKSE's cosave serialisation path so cosaves save up to 150× faster and load up to 15× faster. SKSE cosaves grow with every plugin that registers a serialisation handler; this mod parallelises and buffers the write path so save/load hitching drops regardless of how many cosave-aware plugins are installed. Includes an error-friendly mode that catches and logs exceptions thrown by other SKSE plugins' cosave handlers.
- **Requirements**: SKSE for Skyrim AE 1.6.1170, Address Library for SKSE Plugins, SSE Engine Fixes (SKSE64 Preloader file — the DLL Plugin Loader variant may be used instead)
- **Status**: Optional performance utility. Safe to install or uninstall at any time — saves made with it active can be loaded without it. Recommended once the modlist is heavy enough that save pauses become noticeable.
- **Note**: Complements [Seamless Saving - Skyrim Save Accelerator](https://www.nexusmods.com/skyrimspecialedition/mods/173161), which targets the main save serialisation (Script VM bottleneck) rather than SKSE cosaves. Running both is safe and addresses different bottlenecks.

### Risks & Compatibility

- Neither mod touches worldspace records, leveled lists, or any asset that would require a rebuild of generated output.
- Recursion Monitor is read-only in normal operation and only activates when a runaway script is detected. Its updated fork removes the blocking popup, which is the only known compatibility concern.
- S.L.A.C.K. hooks SKSE's internal save/load API. In rare cases where another SKSE plugin's cosave handler throws an uncaught exception, S.L.A.C.K.'s error-friendly mode (enabled by default) catches and logs it instead of crashing. If crash-on-cosave behaviour is preferred for debugging, this mode can be disabled in the config.
- Both mods are safe to remove from an existing save.

### Acceptance Criteria

- Recursion Monitor fires on a deliberately broken Papyrus call and writes the `StackFrameOverFlow` message to the log without freezing the game.
- S.L.A.C.K. measurably reduces save/LD time in a heavy load order. Compare save duration with and without the plugin using a stopwatch or `PresentMon` capture.
- S.L.A.C.K. error-friendly mode catches a simulated cosave exception (via a test plugin) and logs the error without crashing.

## Patching Technique And Strategy

> **Moved**: This section now lives in [`modlist-01.md`](modlist-01.md) — the patching workflow should be followed from the very first mod installed, not treated as a late-stage concern.

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
- `Armor Stat Synthesis Patcher` and `Weapon Stat Synthesis Patcher` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/149027>) — analyze and rebalance armor/weapon stats to keep the tier ladder meaningful across `Immersive Armors`, `Immersive Weapons`, `Animated Armoury`, `Spaghetti's Cities`, and `Bruma` armors. See `guide.md` Step 23 for detailed configuration instructions.
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
