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

### Risks & Compatibility

- The most common technical mistake in a large list is not "wrong mod" but stale output from a previously correct state.
- Partial rebuild habits create false negatives during testing because the game is no longer showing the current stack.
- Delaying all generated work until the very end makes it harder to isolate which category caused later breakage.

### Acceptance Criteria

- Every generated layer has a clear owner, rebuild trigger, and dedicated output mod.
- `xEdit`, `Pandora`, `Synthesis`, and LOD tools are used in a repeatable order rather than by guesswork.
- The list can rebuild a changed category without losing track of which outputs are now stale.
