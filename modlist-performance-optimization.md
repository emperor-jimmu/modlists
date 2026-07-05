# Optimization & Configuration

**MO2 Separator:** `Performance`

Part of the [`Performance and Technical Workflow`](modlist-performance.md) section. See also: `14a` (Performance Strategy), `14c` (Tool Pipeline), `14d` (Bashed Patch & Synthesis), `14e` (Testing & Maintenance).

## Shader Performance Impact → `Performance`

Section `Graphics` already owns the visual framework. This subsection owns the performance envelope that framework is allowed to occupy. The practical question is not whether shader features look good; it is which ones are worth their measurable cost in real travel scenes.

### Baseline

- **Conservative to balanced route** — Accept a few heavier depth or lighting features once the rest of the visual stack is stable.
- Remove or downgrade luxury modules before tearing apart the rest of the graphics stack.
- Keep `Skyrim Upscaler` as a fallback tool from section `Graphics`, not the first answer to poor optimization discipline. → `Performance`
- Use the existing `SSE Display Tweaks` baseline from section `Foundations` to enforce a stable frame cap once the real sustained performance target is known. → `Performance`
- Judge shader cost in motion, weather transitions, and dense foliage scenes instead of still screenshots.

### Alternatives

- **Conservative route** — Keep the `Community Shaders` stack close to the section-02 baseline. → `Performance`
- **Luxury route** — Keep piling on expensive modules, then try to recover the cost elsewhere.

### Notes

- Heavier shader modules can shift the bottleneck hard toward GPU cost while the list still looks only marginally better in play.
- Frame generation, upscaling, or frame-cap tuning can hide weak baseline decisions instead of fixing them.
- A beautiful static scene can still fail if traversal frame pacing is poor.

## Grass, Tree, And Draw-Call Optimization → `Performance`

Exterior performance in a wilderness-heavy list is often limited by draw calls, clutter density, and visibility complexity, not only raw GPU power. This subsection decides how aggressive `Elder Wilds` should be about invisible optimization helpers once the visual direction is already known.

### Baseline

- **Content restraint first, then low-maintenance optimization route**.
- **Lightened Skyrim** — Leading optimization branch. Community support and mod page both describe it as an almost invisible cleanup layer with relatively low drama. → `Performance`
- **eFPS - Exterior FPS boost** — Optional branch only if real testing shows exterior draw-call pressure still needs more help after the main world stack is stable. If used, plan for patch coverage as part of the worldspace stack. → `Performance`
- Re-evaluate exterior optimization after major city, roadside, tree, or world-content choices, because those categories move the bottleneck more than INI tweaks do.

### Alternatives

- **Content-restraint route** — Solve most exterior cost by choosing lighter trees, lighter grass, and fewer stacked clutter edits.
- **High-maintenance optimization route** — Add occlusion-heavy optimization mods that can improve bad scenes more dramatically but create broad patch debt.

### Notes

- `eFPS` has strong upside, but both its own page and current Reddit signal point to real compatibility and patch-maintenance overhead for lists with heavy exterior edits. → `Performance`
- Optimization layers can create missing-geometry or bad-occlusion symptoms if installed casually into a moving worldspace stack.
- Heavy cities, outskirts, roads, trees, and landmark mods can erase optimization gains faster than tweak mods can recover them.

## INI Tuning And Display Settings → `Performance`

INI tuning should normalize and document the setup, not become a pile of mystery fixes no one remembers later. The best INI workflow is the one that can be reproduced cleanly in `Mod Organizer 2` without guesswork.

### Baseline

- **Tool-first route** — Use `BethINI Pie` as the baseline editor. It gives `Elder Wilds` a reproducible preset-and-recommended-tweaks starting point instead of scattered manual edits. → `Performance`
- For `MO2`, keep the INI path behavior simple and documented rather than forcing unusual file redirection unless a guide specifically requires it. → `Performance`
- After the baseline is set, keep only a short list of manual overrides that are actually justified by the final display, shadow, or frame-cap target.
- Let `SSE Display Tweaks` handle display behavior and frame pacing choices that belong there instead of fighting them through unrelated INI changes. → `Performance`

### Alternatives

- **Manual-edit route** — Hand-edit multiple INIs and hope the final state stays understandable.
- **Constant-tweaking route** — Keep changing presets and overrides every time performance changes.

### Notes

- Aggressive or undocumented INI changes can make later troubleshooting impossible.
- BethINI-related confusion usually comes from path handling and profile expectations, not from the tool magically fixing every performance issue.
- Repeated preset flipping can hide which change actually helped.

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

Performance work can destabilize saves when it involves worldspace edits, generated outputs, or scripted systems that are added and removed carelessly. Save safety here means protecting the testing process as much as protecting a future long playthrough.

### Baseline

- **Disposable-test route** — Keep clean labeled saves for pre-LOD, post-LOD, city-performance, forest-travel, and long-session stability testing.
- Start a new game when adding major worldspace optimization layers such as `eFPS` if that branch is adopted (the mod page recommends fresh-start caution). → `Performance`
- Do not treat old generated outputs, removed scripted mods, or stale occlusion data as safe enough just because the game still loads.
- Preserve one or two mature long-session saves only for validation, not for endless experimental churn.

### Alternatives

- **One-save route** — Keep testing everything on the same long-running save.
- **Overcautious route** — Restart for every small change even when it adds no safety value.

### Notes

- Save corruption or instability can present as performance degradation long before it looks like a hard failure.
- Reusing one heavily mutated test save makes conclusions about optimization quality far less trustworthy.
- Generated-output mismatches can poison a save comparison without being obvious at first glance.
