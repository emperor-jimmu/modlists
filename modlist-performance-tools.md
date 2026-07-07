# Tool Pipeline

**MO2 Separator:** `Performance`

Part of the [`Performance and Technical Workflow`](modlist-performance.md) section. See also: `Performance Strategy`, `Optimization & Configuration`, `Bashed Patch & Synthesis`, `Testing & Maintenance`.

## Tool Workflow → `Performance`

A heavy Skyrim list usually becomes unstable through stale output and sloppy rebuild habits before it fails through any one mod choice. This subsection defines the rebuild discipline that keeps the rest of the plan usable.

### Baseline

- **Disciplined route** — Run `xEdit` conflict review after each major category change instead of saving all conflict discovery for the end. → `Performance`
- Re-run `Pandora` when behavior, animation, or skeleton-relevant content changes. → `Performance`
- Re-run `Synthesis` whenever a chosen patcher-based system changes, including the music-merge workflow already noted in section `Audio`. → `Performance`
- Treat `TexGen`, `xLODGen`, `DynDOLOD`, grass cache, and occlusion output as late-stage generated layers that must be rebuilt when their inputs materially change. → `Performance`
- Keep every generated output in its own dedicated `Mod Organizer 2` mod so stale files are easy to replace instead of silently lingering. → `Performance`

### Alternatives

- **Ad hoc route** — Rebuild tools whenever something looks broken.
- **Late-everything route** — Postpone most generated work until the end and hope the backlog stays manageable.

### Notes

- The most common technical mistake in a large list is not "wrong mod" but stale output from a previously correct state.
- Partial rebuild habits create false negatives during testing because the game is no longer showing the current stack.
- Delaying all generated work until the very end makes it harder to isolate which category caused later breakage.
- A `4K` near-field texture stack can tempt the list into overbuilding LOD output. Tune for believable travel scenes, not screenshot-maximal atlases that waste VRAM and rebuild time. → `Performance`
- `DynDOLOD`, `TexGen`, and `xLODGen` settings are sensitive to memory pressure and stale outputs. If one run required lowered atlas size or reduced concurrency, the same constraint should be assumed on the next rebuild unless hardware changes. → `Performance`

### 4K LOD Tool Baseline

- Keep the actual tools (`xLODGen`, `TexGen`, `DynDOLOD`) outside the game folder and outside `Mod Organizer 2` mod folders. → `Performance`
- Keep the output folders outside `Program Files`, Steam, Documents, Desktop, and the MO2 instance. → `Performance`
- Install the finished output back into MO2 as separate mods named `Terrain LOD Output`, `TexGen Output`, and `DynDOLOD Output`. → `Performance`
- Generate in this order: `xLODGen` terrain LOD first, then `TexGen`, then `DynDOLOD`. → `Performance`
- Use the `x64` versions of the tools. → `Performance`

#### xLODGen 4K STEP Baseline

- Configure the MO2 executable as `xLODGenx64.exe -lodgen -SSE -o:"DriveLetter:\Modding\Tools\xLODGen\xLODGen_Output"`. → `Performance`
- Use `xLODGen` only for terrain LOD in this workflow.
- Use **SSE-Terrain-Tamriel-Extend.esm** as the terrain-boundary resource for LOD generation. It restores terrain data for cells further north into the Sea of Ghosts, providing complete LOD coverage for mods that add content in the northern ocean (notably `Depths of Skyrim` from `modlist-world-content.md`). Only one terrain-boundary ESM should be active at a time; the base `SSE-Terrain-Tamriel.esm` (no northern extension) is the fallback if no mod uses Sea of Ghosts cells. Load the chosen ESM as early as possible in the load order (lowest priority) so other plugins overwriting or adding land records take precedence. Only required during LOD generation — no harm leaving it active in-game, but it has no gameplay effect outside the far cells. → `Performance`
- Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/???> — `SSE-Terrain-Tamriel-Extend.esm` is distributed via the xLODGen forum post on STEP; the Mega mirror is: <https://mega.nz/file/FAwmiAzS#pNDTBiaytL8e9uLhZXD-GmfB4TYD__3v3QJdX-lc72c> (base) and <https://mega.nz/file/hUpwDKwQ#gleApgKP1Jwka7Jm9M4oVQSk-bM0RWcOu8dFSc3m2_A> (Extend). → `Performance`
- Select all worldspaces.
- Ensure only `Terrain LOD` is ticked in the right pane. → `Performance`
- Leave `Brightness`, `Contrast`, and `Gamma` at defaults unless the list is intentionally following the STEP / `Cathedral Landscapes` terrain pipeline; outside that narrow case, use `Gamma 1.00`. → `Performance`
- STEP 2.3 also states that users at `2160p / 4K` should double the diffuse and normal sizes shown in the standard presets for `LOD4`, `LOD8`, `LOD16`, and `LOD32`. → `Performance`
- For initial `LOD4` terrain generation, keep `Optimize Unseen` off; if map / `LOD32` coastline quality needs a later pass, use a higher `Quality` setting in the documented `0-10` range and raise `Optimize Unseen` to roughly `550` for that pass. → `Performance`
- After generation, run `ACMOS Road Generator` with `Roads = Path Only`, point `Path to LOD` at the `xLODGen_Output` folder, choose `Yes` when prompted to overwrite LOD textures, and choose `No` when asked to zip. → `Performance`
- Move the generated files into the dedicated MO2 output mod and disable temporary xLODGen-only terrain resources afterward.

#### TexGen 4K STEP Baseline

- Configure the MO2 executable as `TexGen64.exe -SSE`. → `Performance`
- Run `TexGen` after `xLODGen` and before `DynDOLOD`. → `Performance`
- Use the preset matching rendered game resolution: `2160p = 4K`. → `Performance`
- If grass LOD is not being generated, do not tick the grass billboard options.
- Tick `Grass` if the `21-Post-Processing` group is not installed and the list is not using complex grass. → `Performance`
- Tick `HD grass` if the `21-Post-Processing` group is installed and the list is using complex grass / Community Shaders grass features. → `Performance`
- In `TexGen_SSE.ini`, set `GrassModelHeightMultiplier=1.15`. → `Performance`
- In `TexGen_SSE.ini`, set `TreeMSAlphaThreshold=144`. → `Performance`
- In `TexGen_SSE.ini`, set `ObjectMSAlphaThreshold=96`.
- If the list does not use complex grass textures, set `ForceComplexGrass=0`. → `Performance`
- If the list is following the STEP 2.3 complex-grass branch, set `ForceComplexGrass=1`. → `Performance`
- Treat newer `Community Shaders` grass-lighting recommendations as a separate branch to validate deliberately rather than mixing them into this baseline. → `Performance`
- Move the generated files into the dedicated MO2 `TexGen Output` mod and enable that output mod before running `DynDOLOD`. → `Performance`

#### DynDOLOD 4K STEP Baseline

- Configure the MO2 executable as `DynDOLODx64.exe -SSE`. → `Performance`
- In `DynDOLOD_SSE.ini`, set `Expert=1` so the GUI opens in expert mode. → `Performance`
- In `DynDOLOD_SSE.ini`, set `Level32=1 AllHDLOD32=1`. → `Performance`
- In `DynDOLOD_SSE.ini`, set `GrassBrightnessTopR=0.500`, `GrassBrightnessTopG=0.500`, `GrassBrightnessTopB=0.500`, `GrassBrightnessBottomR=0.500`, `GrassBrightnessBottomG=0.500`, and `GrassBrightnessBottomB=0.500`.
- In `DynDOLOD_SSE.ini`, set `DoubleSidedTextureMask=mountain,mtn`.
- In `DynDOLOD_SSE.ini`, set `DoubleSidedMeshMask=mountain,mtn`.
- If the list is following the STEP 2.3 complex-grass branch, also set `ComplexGrassBillboard=5`. → `Performance`
- If the list is following the STEP 2.3 complex-grass branch, also set `ComplexGrassBrightnessTopR=0.500`, `ComplexGrassBrightnessTopG=0.500`, `ComplexGrassBrightnessTopB=0.500`, `ComplexGrassBrightnessBottomR=0.500`, `ComplexGrassBrightnessBottomG=0.500`, `ComplexGrassBrightnessBottomB=0.500`, and `ComplexGrassBacklightMask=25`. → `Performance`
- Do not reuse older complex-grass values like `0.700 / 0.725 / 0.750` brightness or `BacklightMask=10` in this baseline; those are not the current STEP 2.3 values. → `Performance`
- Select all worldspaces in the GUI.
- Tick `Candles`. → `Performance`
- Tick `FXGlow`. → `Performance`
- Click `High` to pull in the expected STEP / `A Clear Map of Skyrim` mesh rules, then treat the intended end state as the `4K` profile with `Optimal` tree and catch-all rules plus the recommended `LOD32` rules. → `Performance`
- Use `Medium` or `Low` only as a deliberate performance concession. → `Performance`
- Generate `Occlusion` only on the first run; leave it unticked on later reruns to save time. → `Performance`
- Tick `Grass LOD` only if the list is intentionally generating grass LOD. → `Performance`
- STEP 2.3 describes the target as the `4K` preset with `Optimal` tree and catch-all rules plus the recommended `LOD32` rules for `A Clear Map of Skyrim`, so the preset button is a setup step rather than the whole decision. → `Performance`
- Move the generated files into the dedicated MO2 `DynDOLOD Output` mod, ensure `DynDOLOD.esm` and `DynDOLOD.esp` are enabled, then sort with `LOOT`. → `Performance`

#### 4K Validation And Failure Rules

- Benchmark before and after LOD generation from a clean Whiterun save, with `A Clear Map of Skyrim and Other Worlds` temporarily disabled during benchmarking as STEP recommends. → `Performance`
- STEP's benchmark spot is outside Whiterun looking west; also sanity-check the Rift (`cow tamriel 40 -24`) because aspens are one of the heavier scenes. → `Performance`
- If performance is already below STEP's pre-LOD target band, lower the broader graphics baseline before blaming LOD output alone.
- If travel performance is still too expensive after LOD generation, step `DynDOLOD` down from `High` to `Medium` or `Low`, and skip `Grass LOD` before cutting the entire visual stack apart. → `Performance`
- If a tool run required one-off emergency tweaks, document them next to the MO2 executable or output mod so the next rebuild is reproducible instead of remembered from scratch.

## Optional Diagnostics And Performance Tools → `Performance`

The tools below are not required for the list to function, but they solve real problems during load-order building and heavy play. Install them early for diagnostics value and keep them active for runtime protection; neither has ongoing configuration or conflict maintenance once installed.

### Recursion Monitor

- **Nexus**: [Recursion Monitor](https://www.nexusmods.com/skyrimspecialedition/mods/76867) (v1.2, original by Nightfallstorm)
- **Purpose**: Detects broken Papyrus scripts stuck in recursive loops and prevents the resulting framerate collapse. Hooks the stack check and breaks the recursion after 1000 calls, writing a `StackFrameOverFlow` warning to the log instead of tanking performance. → `Performance`
- **Requirements**: SKSE, Address Library for SKSE Plugins
- **Status**: Optional diagnostics utility. Silent at runtime unless it fires. Worth installing early for debugging and keeping active on a production list.
- **Updated fork**: [recursion-fix-updated](https://www.nexusmods.com/skyrimspecialedition/mods/179627) (v1.0, updated May 2026) removes the in-game debug popup that could freeze gameplay during a recursion event. All warnings written to the SKSE log instead. Prefer for a production list.

### Save And Load Accelerator For SKSE Cosaves (S.L.A.C.K.)

- **Nexus**: [S.L.A.C.K.](https://www.nexusmods.com/skyrimspecialedition/mods/163969) (by just-harry)
- **Purpose**: Rewrites SKSE's cosave serialisation path so cosaves save up to 150× faster and load up to 15× faster. Parallelises and buffers the write path so save/load hitching drops regardless of how many cosave-aware plugins are installed. Includes error-friendly mode that catches and logs exceptions thrown by other SKSE plugins' cosave handlers.
- **Requirements**: SKSE for Skyrim AE 1.6.1170, Address Library for SKSE Plugins, SSE Engine Fixes (SKSE64 Preloader file — the DLL Plugin Loader variant may be used instead)
- **Status**: Optional performance utility. Safe to install or uninstall at any time — saves made with it active can be loaded without it. Recommended once the modlist is heavy enough that save pauses become noticeable.
- **Note**: Complements [Seamless Saving - Skyrim Save Accelerator](https://www.nexusmods.com/skyrimspecialedition/mods/173161), which targets the main save serialisation (Script VM bottleneck) rather than SKSE cosaves. Running both is safe and addresses different bottlenecks.

### Notes

- Neither mod touches worldspace records, leveled lists, or any asset that would require a rebuild of generated output.
- Recursion Monitor is read-only in normal operation and only activates when a runaway script is detected. Its updated fork removes the blocking popup, which is the only known compatibility concern.
- S.L.A.C.K. hooks SKSE's internal save/load API. In rare cases where another SKSE plugin's cosave handler throws an uncaught exception, S.L.A.C.K.'s error-friendly mode (enabled by default) catches and logs it instead of crashing. If crash-on-cosave behaviour is preferred for debugging, this mode can be disabled in the config.
- Both mods are safe to remove from an existing save.
