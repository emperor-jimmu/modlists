# Optimization & Configuration

---

## Shader Performance Impact
### Baseline

- **Conservative to balanced route** — Accept a few heavier depth/lighting features once the rest of the visual stack is stable.
- Remove or downgrade luxury modules before tearing apart the rest of the graphics stack.
- `Skyrim Upscaler` is a fallback tool from → `Graphics`, not the first answer to poor optimization.
- Use `SSE Display Tweaks` from → `Foundations` to enforce stable frame cap.
- Judge shader cost in motion, weather transitions, and dense foliage scenes.

### Alternatives

- **Conservative route** — Keep CS close to the section-02 baseline.
- **Luxury route** — Keep piling on expensive modules, then try to recover cost elsewhere.

---

## Grass, Tree, And Draw-Call Optimization
### Baseline

- **Content restraint first, then low-maintenance optimization.**
- **Lightened Skyrim** — Leading optimization branch. Almost invisible cleanup, low drama.
- **eFPS - Anniversary Edition** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/58727)) — Optional only if exterior draw-call pressure still needs help after main world stack is stable. Plan for patch coverage.
- Re-evaluate exterior optimization after major city, roadside, tree, or world-content choices.

### Risks & Compatibility

- `eFPS` has strong upside but real compatibility/patch overhead for lists with heavy exterior edits.
- Heavy cities, outskirts, roads, trees, and landmark mods can erase optimization gains faster than tweak mods can recover them.

---

## INI Tuning And Display Settings
### Baseline

- **Tool-first route** — Use `BethINI Pie` as the baseline editor.
- Keep MO2 INI path behavior simple and documented.
- After baseline is set, keep only a short list of manual overrides justified by display/shadow/frame-cap targets.
- Let `SSE Display Tweaks` handle display behavior and frame pacing.

### BethINI Pie Configuration Baseline

Run through MO2 targeting the active profile INIs.

1. **Basic:** Reset to Defaults → High preset → Apply Recommended Tweaks. Window Mode: Borderless. FOV: First Person 75, Third Person 85.

2. **General → Saved Games:** Untick Autosaves, Save on Travel, Save on Rest, Save on Wait (survival mods handle save restrictions; manual saves are safer). Leave `iAutoSaveCount=3` (the default) under `[SaveGame]` in `Skyrim.ini` — **do not set it to `0`**: it is a slot count, not an on/off flag, and the engine divides by it while processing save slots, so `0` hard-crashes with `EXCEPTION_INT_DIVIDE_BY_ZERO` the moment a save loads from the main menu (confirmed 2026-08-08). Autosave *triggers* are disabled by these ticks; SSSO3 force-deactivates the rest and manages its own rotating saves.

3. **Gameplay:** Difficulty Adept. Untick Disable Kill Cam. Tick Remove Borders. Untick Tutorials.

4. **Interface:** Tick Dialogue Subtitles and General Subtitles. Leave Compass and Crosshair ticked. Untick Floating Quest Markers. Leave Controller Vibration ticked.

5. **Environment:** Grass Density 60. Untick Reflect Sky.

6. **View Distance:** Leave Tree LOD Distance at High default for now. Set to `0` via INI Editor before DynDOLOD generation later.

7. **Visuals:** Max Particle Render Count 7500. Untick Lens Flare (CS handles post-processing).

8. Click Save and Exit, then confirm values in *MO2 → Tools → INI Editor*.

---

## Save Safety Considerations
### Baseline

- **Disposable-test route** — Keep clean labeled saves for pre-LOD, post-LOD, city-performance, forest-travel, and long-session stability.
- Start new game when adding major worldspace optimization layers (eFPS mod page recommends fresh-start caution).
- Don't treat old generated outputs, removed scripted mods, or stale occlusion data as safe just because the game still loads.
- Preserve one or two mature long-session saves only for validation.

### Risks & Compatibility

- Save corruption can present as performance degradation long before it looks like hard failure.
- Reusing one heavily mutated test save makes optimization conclusions far less trustworthy.
