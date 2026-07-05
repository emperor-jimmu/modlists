# Testing & Maintenance

**MO2 Separator:** `14 Performance`

Part of the [`Performance and Technical Workflow`](modlist-14.md) section. See also: `14a` (Performance Strategy), `14b` (Optimization & Configuration), `14c` (Tool Pipeline), `14d` (Bashed Patch & Synthesis).

## Performance Testing And Tuning

Performance tuning is iterative. The goal is consistent frametimes — not just a high average FPS — across the scenarios you actually play.

### Tools

| Tool                                              | Purpose                                                                                                                                                                                                        |
|---------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **NVIDIA FrameView**                              | Lightweight overlay and logging for FPS, frametime, GPU power, thermals. No CPU per-core stats, but lower overhead than Afterburner.                                                                          |
| **MSI Afterburner + RivaTuner Statistics Server** | Full overlay and logging: FPS, frametime, GPU usage, CPU per-core, VRAM, draw calls, temps.                                                                                                                    |
| **GPU-Z**                                         | Sensor logging for GPU clock, voltage, thermals, power limits.                                                                                                                                                 |
| **Community Shaders debug overlay**               | Built-in performance stats — press `F11` (default) in-game to toggle render-time breakdown, draw-call count, and VRAM usage from the CS pipeline.                                                              |
| **SSE Display Tweaks OSD**                        | Built-in overlay — set `ShowOSD=true` in `SSEDisplayTweaks.ini` for basic FPS/frametime without RTSS.                                                                                                           |
| **Skyrim console tools**                          | `showstats` toggles a real-time stat overlay. `sgtm 0.3` slows the game to 30% speed for inspecting stutter frames. `tfc 1` freezes the camera.                                                                 |
| **Cathedral Assets Optimizer**                    | Downscale uncompressed or oversized textures for VRAM relief.                                                                                                                                                  |

### Benchmark Methodology

1. **Create a stable reference save** — start a clean save with a fixed weather (`fw 10a240` for clear skies), a fixed time (`set gamehour to 12`), and `tfc 1` for reproducible screenshots. Save it as `benchmark_ref.ess`.
2. **Use fixed routes** — do not free-roam during benchmarks. Load the same save, follow the same path for 60 seconds, record the results.
3. **Log everything** — use MSI Afterburner's hardware logging (or NVIDIA FrameView's CSV logging) to capture GPU usage %, VRAM, CPU per-core usage, frametime 99th percentile, and power draw.
4. **Test one change at a time** — change one setting, reload the same save, re-run the same route. No multi-variable tests.

### Benchmark Scenarios

Use these console commands to reach each scenario from a clean save, then run the 60-second route:

| Scenario                      | Location              | Teleport                                                                                             | What It Tests                                                            |
|-------------------------------|-----------------------|------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------|
| **Open world (general)**      | Whiterun plains west  | `cow WhiterunWorld -10 0`                                                                            | General GPU/CPU balance, grass density, LOD load                         |
| **Dense forest**              | Falkreath woods       | `cow FalkreathWorld -30 -20`                                                                         | Tree rendering, shadow complexity, grass LOD                             |
| **Pine-and-marsh transition** | Morthal swamp edge    | `cow HjaalmarchWorld -15 -10`                                                                        | Wetland shaders, mist particles, mixed tree/flora density                |
| **City centre (canals)**      | Riften marketplace    | `cow RiftenWorld 0 0`                                                                                | NPC count, script load, water reflections, interior/exterior transitions |
| **City centre (castles)**     | Solitude exterior     | `cow SolitudeWorld 0 0`                                                                              | Large static-mesh draw calls, castle shadow cascades, skybox occlusion   |
| **Snowy tundra**              | Dawnstar coast        | `cow WinterholdWorld 10 5`                                                                            | Snow shader coverage, volumetric fog, low-visibility weather transition  |
| **Waterfall-heavy coast**     | Coast near Solitude   | `cow Tamriel -22 -4`                                                                                 | Water displacement, foam particles, Natural Waterfalls, coastal LOD      |
| **Large interior**            | Blackreach            | `cow Blackreach 0 0`                                                                                 | Particle lights, mesh density, alpha sorting                             |
| **Large combat**              | Fort Neugrad assault  | `cow WhiterunWorld 15 -5` then run toward the fort                                                   | AI packages, magic FX, simultaneous actor rendering                      |
| **Dragon encounter**          | Set dragon encounter  | `player.placeatme 000FEA9F` on an open-world save                                                    | Large-creature skeleton, shout/breath VFX, cell transition               |
| **Magic VFX stress**          | Dense combat + spells | `cow WhiterunWorld 0 0` then `player.placeatme 000FEA9F` + `player.placeatme 0001F1A` (fire mage) x3 | Simultaneous particle systems, glow shaders, screen-space shadows        |
| **Heavy weather**             | Solstheim ash storm   | `cow SolstheimWorld 0 0` with `fw 10A1E8`                                                            | Particle effects, alpha-heavy weather, volumetric fog                    |

Record these metrics per scenario:
- **Average FPS** — how the GPU handles the scene overall.
- **Frametime 99th percentile** — the stutter floor; anything over ~50ms (20 FPS) means visible hitches.
- **GPU usage %** — below 90% means the CPU is the bottleneck (too many draw calls, script load, or single-thread limits).
- **VRAM usage** — if within 500MB of your card's total, expect stutter on cell transitions.
- **Draw calls** — above ~10,000 in a single frame means the CPU will start struggling regardless of GPU.

### Tuning Knobs (Ordered By Impact)

Tune in this order. Stop once the worst-case scenario is playable.

1. **Grass density** (`BethINI > Environment > Grass Density`). 40-60 is the range. The single biggest performance lever.
2. **Grass render distance** (`BethINI > View Distance > Grass LOD Fade`). Drop from the High preset default to `50`-`70` for immediate gains in forested areas.
3. **Shadow resolution** (`BethINI > Visuals > Shadow Resolution`). 2048 is the sweet spot; 4096 costs ~15% GPU in outdoor scenes for marginal visual gain at 4K.
4. **Particle count** (`BethINI > Visuals > Max Particle Render Count`). 7500 is the baseline; drop to 5000 if fire/frost/storm magic causes framedrops.
5. **Tree LOD distance** — `fTreeLoadDistance=0` via INI Editor (already done for DynDOLOD). Keep at 0 — DynDOLOD manages this.
6. **Object LOD fade** (`BethINI > View Distance > Object LOD Fade`). Drop `fMeshLODLevel2FadeTreeDistance` from default to `6144` and `fMeshLODLevel1FadeTreeDistance` to `8192` if tree pop-in is not the primary visual concern.
7. **VSync / framerate cap** — use `SSE Display Tweaks` for a locked framerate (60 FPS for 60Hz, 72/90/120 for high-refresh displays) rather than the engine's built-in VSync. Set `LockFrameRate=60` and `VSync=0` in `SSEDisplayTweaks.ini`.
8. **Skyrim Upscaler** — if the GPU is the bottleneck and resolution scaling is acceptable, enable `Skyrim Upscaler - DLSS FSR2 XeSS` (<https://www.nexusmods.com/skyrimspecialedition/mods/80343>) with Quality preset.

### When To Accept The Result

- Occasional microstutter on cell border crossing is normal (Engine Fixes already mitigates the worst of it).
- Combat in tight spaces with 6+ actors + magic VFX will always be heavier than open-world traversal — if average FPS stays above 40 in those moments with no hitch above 100ms, call it stable.
- If a specific mod (city overhaul, tree replacement, CS preset) cuts FPS by 30%+ compared to its alternative in the same branch, consider swapping rather than tuning around it.

### Benchmark Reports

Turn raw logs into a visual comparison report.

#### CSV Export (Any Logging Tool)

Export your benchmark session to CSV. Both **NVIDIA FrameView** (`Save CSV` button) and **MSI Afterburner** (`History > Log to file`) produce CSV with consistent column headers. Name each CSV by scenario and run number (e.g., `whiterun_grass50_run1.csv`). Keep a `baseline/` subfolder with the first run's CSVs.

#### Comparison Table (Markdown, For Git Tracking)

Keep a `benchmark-sheet.md` in the repo that records each tuning pass:

```
| Pass | Scenario | Avg FPS | 1% Low | GPU% | VRAM | Hitch Max | Delta vs Prev |
|------|----------|---------|--------|------|------|-----------|---------------|
| 1    | Whiterun | 58      | 42     | 92%  | 6.1G | 48ms      | —             |
| 2    | Whiterun | 55      | 38     | 88%  | 6.0G | 62ms      | -3 / -4       |
```

Every tuning attempt is recorded in git alongside the modlist changes.

## Maintenance And Rebuild Epilogue

The load order is not static. Mods update, new mods replace old recommendations, and patchers must be re-run when the input state changes.

### Patcher Revisit Triggers

| Patcher         | Trigger To Re-run                                                                                                                                            | Settings Worth Tweaking                                                                                                                                                                                                                                                                                                        |
|-----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **LOOT**        | Every meaningful load-order change                                                                                                                           | No custom tweaks — keep LOOT as the sort authority.                                                                                                                                                                                                                                                                            |
| **Synthesis**   | When any mod it patches is added, removed, or updated. Always re-run after: new weapon/armor packs, leveled-list changes, NPC overhauls, music stack changes | `Weapon Stat Synthesis Patcher` — raise/lower `Damage Ceiling` if combat pacing feels too fast or too slow during survival-difficulty playthroughs. Add new plugins to `Ignore List` when hand-authored artifacts from a new quest mod should not be normalized. Revisit the patcher pipeline order if new patchers are added. |
| **Wrye Bash**   | When a leveled-list-heavy mod is added or removed. Only if a `Bashed Patch` is still part of the strategy.                                                   | No settings worth changing per-run. If the Bashed Patch starts pulling in unintended imports, switch to manually merged leveled lists instead.                                                                                                                                                                                 |
| **Pandora**     | After any animation mod is added, removed, or reordered. After any skeleton or behavior-file change.                                                         | No end-user settings. Keep the output directed to `Pandora Output`.                                                                                                                                                                                                                                                            |
| **BodySlide**   | After body preset, skin texture, armor mod, or outfit changes.                                                                                               | No per-run settings beyond the chosen preset.                                                                                                                                                                                                                                                                                  |
| **Grass Cache** | After grass mod, tree mod, landscape texture, or worldspace changes. Any grass-density INI tweak invalidates the cache.                                      | Rebuild from scratch rather than patching.                                                                                                                                                                                                                                                                                     |
| **xLODGen**     | After landscape texture, heightmap, or worldspace changes. After terrain LOD mod changes.                                                                    | `Quality` slider can be raised per-run if coastline/water-edge artefacts appear.                                                                                                                                                                                                                                               |
| **TexGen**      | After any texture change to objects, trees, or buildings that produces LOD billboards. After tree-mod swaps.                                                 | Revisit `GrassModelHeightMultiplier` and `TreeMSAlphaThreshold` if tree or grass billboards look wrong.                                                                                                                                                                                                                        |
| **DynDOLOD**    | After any worldspace mod, tree mod, large-reference mod, or LOD resource change. After TexGen output changes.                                                | `Brightness` and `Contrast` for LOD32 can be dialled per-run if the distant world looks washed out or too dark. `DoubleSidedTextureMask` needs updating if new mountain/mesh types are added.                                                                                                                                  |

### Generator Output Order

Run generators in this order after the load order and patches are stable:

1. **Pandora** — after the animation stack stabilizes.
2. **BodySlide** — after body and armor changes stabilize.
3. **Synthesis** — patchers the final stack actually uses.
4. **Wrye Bash** — only if a Bashed Patch is still warranted.
5. **Grass Cache** — after final grass/tree/worldspace choices stabilize.
6. **xLODGen** — terrain LOD first.
7. **TexGen** — before DynDOLOD.
8. **DynDOLOD** — last.
9. **Occlusion** — only if needed on the first real DynDOLOD run.

After generation, verify plugin placement: `DynDOLOD.esm` at end of ESM block, `DynDOLOD.esp` near end of load order, `Occlusion.esp` after `DynDOLOD.esp`, and `Synthesis.esp` / `Bashed Patch` where their tool guidance says.

### Change Tracking

Keep a `changelog.txt` or `build-notes.md` inside the `Output` separator that records:
- Date and scope of each generator re-run.
- Settings that differed from the baseline guide.
- Branch choices that changed.
- Any manual INI tweaks applied per-generator.
- The reference-save used for post-change verification.

### MCM Settings Recording

MCM configuration is tedious to reproduce on a rebuild. Record every meaningful MCM page:

1. **Screenshot each MCM page** — open each mod's MCM, page through every tab, and screenshot. Store screenshots in a folder named `MCM-Reference` under the `Output` separator.
2. **Use MCM Recorder** (<https://www.nexusmods.com/skyrimspecialedition/mods/24113>) — records and replays MCM settings via JSON profiles. Install as a utility mod, open each MCM once with recording enabled, and save the profiles alongside the screenshots.
3. **Cross-check on rebuild** — replay each MCM profile after mods are installed but before generating final patches. Tick off recorded profiles against the screenshot folder to catch any mods that added or lost settings pages.

### Mod Update Workflow

1. Read the mod's changelog before updating. Do not blindly overwrite.
2. If the update is a minor version with no record or script changes, replace in-place and re-run LOOT.
3. If the update touches records, scripts, or dependencies, treat it as a new install — disable old version, install new, run LOOT, check xEdit conflicts, and re-run affected patchers.
4. Never update DynDOLOD, TexGen, or xLODGen mid-playthrough without verifying the output is functionally identical. When in doubt, start a new game after LOD regeneration.

### Playing Forward

The modlist's branch-and-choice structure means two installations of `Elder Wilds` can look quite different while following the same guide. The rule: **whatever you changed, note it, and re-run only the patchers whose upstream input changed.** You do not need to re-run all generators every time you tweak a setting.

### Acceptance Criteria

- Every patcher has a documented rebuild trigger.
- The generator output order is reproducible across rebuilds.
- MCM settings are archived (screenshots or MCM Recorder profiles) for every mod with configurable pages.
- The benchmark methodology and tuning-knob order are documented so performance work is repeatable.
- The modlist tracks its rebuild history in a changelog that lives alongside generated output.
