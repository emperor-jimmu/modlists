# Tool Pipeline

**MO2 Separators:** `Performance` → `Performance - Tool Pipeline`

All items in this section belong to the `Performance` MO2 separator.

Part of the [`Performance and Technical Workflow`](modlist-performance.md) section.

---

## Tool Workflow → separator: `Performance - Tool Pipeline`

A heavy Skyrim list usually becomes unstable through stale output and sloppy rebuild habits before failing through any one mod choice.

### Baseline — Disciplined Route
- Run `xEdit` conflict review after each major category change.
- Re-run `Pandora` when behavior, animation, or skeleton-relevant content changes.
- Re-run `Synthesis` whenever a chosen patcher-based system changes (including music-merge from → `Audio`).
- Rebuild `TexGen`, `xLODGen`, `DynDOLOD`, grass cache, and occlusion output when their inputs materially change.
- Keep every generated output in its own dedicated MO2 mod.

### Alternatives
- **Ad hoc route** — Rebuild whenever something looks broken.
- **Late-everything route** — Postpone most generated work until the end.

---

## 4K LOD Tool Baseline → separator: `Performance - Tool Pipeline`

### General Rules
- Keep tools (`xLODGen`, `TexGen`, `DynDOLOD`) outside game folder and outside MO2 mod folders.
- Keep output folders outside Program Files, Steam, Documents, Desktop, and MO2 instance.
- Install finished output back into MO2 as separate mods: `Terrain LOD Output`, `TexGen Output`, `DynDOLOD Output`.
- Generate in this order: `xLODGen` → `TexGen` → `DynDOLOD`.
- Use `x64` versions of tools.

### xLODGen 4K STEP Baseline
- MO2 executable: `xLODGenx64.exe -lodgen -SSE -o:"<output path>"`.
- Use `xLODGen` only for terrain LOD.
- Use **SSE-Terrain-Tamriel-Extend.esm** as terrain-boundary resource (from STEP xLODGen forum; Mega mirrors available). **Activate it only during xLODGen generation** — place it below the last worldspace ESM in the right pane, then deactivate it afterward and reactivate `Terrain LOD Output`.
- In MO2, ensure any landscape/tree mods that ship LOD-generation resources (e.g., Majestic Mountains, Cathedral Landscapes) are active during xLODGen.
- In the xLODGen UI: right-click the Worldspace area → `Select All`. Tick only `Terrain LOD`. Apply LOD settings per STEP recommendations.
- 4K users: double diffuse and normal sizes for LOD4/LOD8/LOD16/LOD32.
- Initial LOD4: keep `Optimize Unseen` off. For map/LOD32: use higher `Quality` (0-10) and `Optimize Unseen` ~550.
- After generation, run **ACMOS Road Generator**:
  1. Navigate to the ACMOS Road Generator tool folder and open the executable.
  2. Set the roads dropdown to `Path Only`.
  3. Browse to your xLODGen output folder and select it.
  4. Click `Generate`. If prompted to overwrite, click `Yes`.
  5. When complete, zip the output folder (the tool offers this automatically) and install it as a new mod via MO2's `Add mod from file`.

### TexGen 4K STEP Baseline
- MO2 executable: `TexGen64.exe -SSE`.
- Run after `xLODGen`, before `DynDOLOD`.
- Preset matching rendered resolution: `2160p = 4K`.
- Grass options: tick `Grass` if no complex grass; tick `HD grass` if using complex grass / CS grass features.
- `TexGen_SSE.ini`: `GrassModelHeightMultiplier=1.15`, `TreeMSAlphaThreshold=144`, `ObjectMSAlphaThreshold=96`.
- `ForceComplexGrass`: `0` (default) or `1` (STEP complex-grass branch).
- Move output to `TexGen Output` mod, enable before running `DynDOLOD`.

### DynDOLOD 4K STEP Baseline
- MO2 executable: `DynDOLODx64.exe -SSE`.
- `DynDOLOD_SSE.ini`: `Expert=1`, `Level32=1 AllHDLOD32=1`.
- Grass brightness values: `0.500` for all R/G/B Top and Bottom channels.
- `DoubleSidedTextureMask=mountain,mtn`, `DoubleSidedMeshMask=mountain,mtn`.
- Complex grass branch: `ComplexGrassBillboard=5`, matching brightness values, `ComplexGrassBacklightMask=25`.
- GUI: right-click worldspace list → `Select All`. Tick `Candles` and `FXGlow`. Load the `High` rules preset.
- `Occlusion` only on first run. `Grass LOD` only if generating grass LOD.
- **Ultra Trees:** Enable 3D tree LOD for substantially better distant tree quality. Keep tile size at or below `1024` (diminishing returns beyond this).
- Target: `4K` preset with `Optimal` tree/catch-all rules + recommended `LOD32` rules.
- Move output to `DynDOLOD Output` mod. In the right pane: place `DynDOLOD.esm` as the last ESM after all worldspace ESMs, `DynDOLOD.esp` second-to-last, and `Occlusion.esp` last (unless using Synthesis, which goes last).
- Apply ACMOS-required rule edits in DynDOLOD's advanced rule editor: `Tree` → LOD32 set to `Billboard(6)`; `\` → LOD32 set to `Level0`.

### 4K Validation
- Benchmark before and after LOD from clean Whiterun save. Also check the Rift (`cow tamriel 40 -24`) for aspens.
- If performance is already below STEP's pre-LOD target, lower the broader graphics baseline before blaming LOD.
- If travel performance still too expensive after LOD, step DynDOLOD from High → Medium/Low, skip Grass LOD.
- Document emergency tweaks next to the MO2 executable or output mod.

---

## Optional Diagnostics And Performance Tools → separator: `Performance - Tool Pipeline`

Neither requires ongoing configuration or conflict maintenance once installed.

### Recursion Monitor
- **Nexus:** [Recursion Monitor](https://www.nexusmods.com/skyrimspecialedition/mods/76867) — Detects broken Papyrus scripts stuck in recursive loops. Requires SKSE, Address Library.
- **Updated fork:** [recursion-fix-updated](https://www.nexusmods.com/skyrimspecialedition/mods/179627) (May 2026) — Removes blocking debug popup; writes to SKSE log instead. Prefer for production list.

### S.L.A.C.K. (Save And Load Accelerator For SKSE Cosaves)
- **Nexus:** [S.L.A.C.K.](https://www.nexusmods.com/skyrimspecialedition/mods/163969) — Cosaves save up to 150× faster, load up to 15× faster. Error-friendly mode catches exceptions from other SKSE plugins' cosave handlers.
- Requires: SKSE 1.6.1170, Address Library, SSE Engine Fixes (SKSE64 Preloader).
- Safe to install or uninstall at any time.
- Complements [Seamless Saving](https://www.nexusmods.com/skyrimspecialedition/mods/173161) (targets main save serialisation, not cosaves). Safe to run both.

### Log Watcher

- **Nexus:** [Log Watcher - Real-time Analysis of SKSE Logs](https://www.nexusmods.com/skyrimspecialedition/mods/163979) — Monitors SKSE logs in real-time for errors, warnings, and crash indicators. Diagnostic aid for testing and load-order debugging.

### Risks & Compatibility
- Neither mod touches worldspace records, leveled lists, or asset files.
- Recursion Monitor is read-only in normal operation. Updated fork removes the only known compatibility concern.
- S.L.A.C.K. hooks SKSE's internal save/load API; error-friendly mode catches exceptions instead of crashing.
- Both are safe to remove from an existing save.
