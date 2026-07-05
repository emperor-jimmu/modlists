# Optimization & Configuration

**MO2 Separator:** `Performance`

Part of the [`Performance and Technical Workflow`](modlist-performance.md) section. See also: `14a` (Performance Strategy), `14c` (Tool Pipeline), `14d` (Bashed Patch & Synthesis), `14e` (Testing & Maintenance).

## Shader Performance Impact → `Performance`

### Core Idea

- Section `Graphics` already owns the visual framework. This subsection owns the performance envelope that framework is allowed to occupy. → `Performance`
- The practical question is not whether shader features look good; it is which ones are worth their measurable cost in real travel scenes.

### Options

- Conservative route: keep the `Community Shaders` stack close to the section-02 baseline. → `Performance`
- Balanced route: accept a few heavier depth or lighting features once the rest of the visual stack is stable.
- Luxury route: keep piling on expensive modules, then try to recover the cost elsewhere.

### Recommendation

- Stay between the conservative and balanced routes.
- Remove or downgrade luxury modules before tearing apart the rest of the graphics stack.
- Keep `Skyrim Upscaler` as a fallback tool from section `Graphics`, not the first answer to poor optimization discipline. → `Performance`
- Use the existing `SSE Display Tweaks` baseline from section `Foundations` to enforce a stable frame cap once the real sustained performance target is known. → `Performance`
- Judge shader cost in motion, weather transitions, and dense foliage scenes instead of still screenshots.

### Risks & Compatibility

- Heavier shader modules can shift the bottleneck hard toward GPU cost while the list still looks only marginally better in play.
- Frame generation, upscaling, or frame-cap tuning can hide weak baseline decisions instead of fixing them.
- A beautiful static scene can still fail if traversal frame pacing is poor.

### Acceptance Criteria

- The chosen shader stack has a measured cost the list is willing to keep.
- The sustained frame target feels stable in forest and city traversal, not just indoors.
- Optional luxury features are disabled unless they visibly justify their cost.

## Grass, Tree, And Draw-Call Optimization → `Performance`

### Core Idea

- Exterior performance in a wilderness-heavy list is often limited by draw calls, clutter density, and visibility complexity, not only raw GPU power.
- This subsection decides how aggressive `Elder Wilds` should be about invisible optimization helpers once the visual direction is already known. → `Performance`

### Options

- Content-restraint route: solve most exterior cost by choosing lighter trees, lighter grass, and fewer stacked clutter edits.
- Low-maintenance optimization route: add invisible cleanup layers that reduce wasted references with modest compatibility cost.
- High-maintenance optimization route: add occlusion-heavy optimization mods that can improve bad scenes more dramatically but create broad patch debt.

### Recommendation

- Use content restraint first, then the low-maintenance optimization route.
- Treat `Lightened Skyrim` as the leading optimization branch because its page and community use both support it as an almost invisible cleanup layer with relatively low drama. → `Performance`
- Treat `eFPS - Exterior FPS boost` as an optional branch only if real testing shows that exterior draw-call pressure still needs more help after the main world stack is stable. → `Performance`
- If `eFPS` is used, plan for patch coverage as part of the worldspace stack rather than pretending it is a free install. → `Performance`
- Re-evaluate exterior optimization after major city, roadside, tree, or world-content choices, because those categories move the bottleneck more than INI tweaks do.

### Risks & Compatibility

- `eFPS` has strong upside, but both its own page and current Reddit signal point to real compatibility and patch-maintenance overhead for lists with heavy exterior edits. → `Performance`
- Optimization layers can create missing-geometry or bad-occlusion symptoms if installed casually into a moving worldspace stack.
- Heavy cities, outskirts, roads, trees, and landmark mods can erase optimization gains faster than tweak mods can recover them.

### Acceptance Criteria

- Exterior travel remains stable in forests, town approaches, and heavy roadside scenes without obvious culling errors.
- `Lightened Skyrim` or `eFPS` is kept only if it materially improves difficult scenes. → `Performance`
- Any chosen optimization layer has known patch coverage and rebuild implications documented.

## INI Tuning And Display Settings → `Performance`

### Core Idea

- INI tuning should normalize and document the setup, not become a pile of mystery fixes no one remembers later.
- The best INI workflow is the one that can be reproduced cleanly in `Mod Organizer 2` without guesswork. → `Performance`

### Options

- Manual-edit route: hand-edit multiple INIs and hope the final state stays understandable.
- Tool-first route: use one reliable editor for the baseline, then keep only a few deliberate manual overrides.
- Constant-tweaking route: keep changing presets and overrides every time performance changes.

### Recommendation

- Use the tool-first route.
- Use `BethINI Pie` as the baseline editor because it gives `Elder Wilds` a reproducible preset-and-recommended-tweaks starting point instead of scattered manual edits. → `Performance`
- For `MO2`, keep the INI path behavior simple and documented rather than forcing unusual file redirection unless a guide specifically requires it. → `Performance`
- After the baseline is set, keep only a short list of manual overrides that are actually justified by the final display, shadow, or frame-cap target.
- Let `SSE Display Tweaks` handle display behavior and frame pacing choices that belong there instead of fighting them through unrelated INI changes. → `Performance`

### Risks & Compatibility

- Aggressive or undocumented INI changes can make later troubleshooting impossible.
- BethINI-related confusion usually comes from path handling and profile expectations, not from the tool magically fixing every performance issue.
- Repeated preset flipping can hide which change actually helped.

### Acceptance Criteria

- A clean profile can reproduce the same baseline INI state without guesswork.
- Manual overrides are short, documented, and intentional.
- Display behavior, shadow settings, and frame-cap logic stay consistent across rebuilds.

### BethINI Pie Configuration Baseline

Run BethINI Pie through MO2 so it targets the active profile INIs. The configuration below sets the initial baseline before mod-specific overrides.

1. **Basic** tab:
   - Click **Reset to Defaults**, select the **High** preset, then **Apply Recommended Tweaks**.
   - **Window Mode** → **Borderless Windowed**.
   - **Field of View** → First Person `75`, Third Person `85` (wider third-person FOV improves gamepad camera comfort).

2. **General** tab:
   - Under **Saved Games**, untick **Autosaves** (survival mods handle save restrictions; manual saves are safer with a heavily-modded load order). Also untick **Save on Travel**, **Save on Rest**, and **Save on Wait** individually.

3. **Gameplay** tab:
   - **Difficulty** → Leave at **Adept** (modded difficulty frameworks override this).
   - **Disable Kill Cam** → Leave **Unticked** (third-person kill moves are part of the gamepad experience).
   - **Remove Borders** → Tick (removes invisible world-edge walls for exploration).
   - **Tutorials** → Untick (suppresses vanilla tutorial pop-ups).

4. **Interface** tab:
   - Tick **Dialogue Subtitles** and **General Subtitles** (accessibility; audio mods add ambient dialogue that benefits from subtitle support).
   - **Compass** → Leave **Ticked** (Compass Navigation Overhaul manages compass behaviour; BethINI should not disable it).
   - **Crosshair** → Leave **Ticked** (needed for gamepad aiming feedback; TrueHUD can refine the visual).
   - **Floating Quest Markers** → Untick (reduces HUD clutter; quest tracking is available via compass and journal).
   - **Controller Vibration** → Leave **Ticked** (gamepad immersion).

5. **Environment** tab:
   - **Grass Density** → `60`.
   - Untick **Reflect Sky**.

6. **View Distance** tab:
   - Leave **Tree LOD Distance** at the High preset default for now. Set to `0` via INI editor before DynDOLOD generation later (see xLODGen/DynDOLOD sections).

7. **Visuals** tab:
   - **Max Particle Render Count (GPU)** → `7500`.
   - Untick **Lens Flare** (Community Shaders handles its own post-processing).

8. Click **Save and Exit**, then open `MO2 → Tools → INI Editor` and confirm the values took effect in `Skyrim.ini` and `SkyrimPrefs.ini`.

## Save Safety Considerations → `Performance`

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
- Start a new game when adding major worldspace optimization layers such as `eFPS` if that branch is adopted, because the mod page itself recommends fresh-start caution. → `Performance`
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
