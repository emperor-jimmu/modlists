# Tool Pipeline

**MO2 Separator:** `Performance`

All items in this section belong to the `Performance` MO2 separator.

Part of the [`Performance and Technical Workflow`](modlist-performance.md) section.

---

## Tool Workflow

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

## 4K LOD Tool Baseline

### General Rules
- Keep tools (`xLODGen`, `TexGen`, `DynDOLOD`) outside game folder and outside MO2 mod folders.
- Keep output folders outside Program Files, Steam, Documents, Desktop, and MO2 instance.
- Install finished output back into MO2 as separate mods: `Terrain LOD Output`, `TexGen Output`, `DynDOLOD Output`.
- Generate in this order: `xLODGen` → `TexGen` → `DynDOLOD`.
- Use `x64` versions of tools.

### xLODGen 4K STEP Baseline
- MO2 executable: `xLODGenx64.exe -lodgen -SSE -o:"<output path>"`.
- Use `xLODGen` only for terrain LOD.
- Use **SSE-Terrain-Tamriel-Extend.esm** as terrain-boundary resource (from STEP xLODGen forum; Mega mirrors available). Load as early as possible in load order.
- Select all worldspaces. Tick only `Terrain LOD`.
- 4K users: double diffuse and normal sizes for LOD4/LOD8/LOD16/LOD32.
- Initial LOD4: keep `Optimize Unseen` off. For map/LOD32: use higher `Quality` (0-10) and `Optimize Unseen` ~550.
- After generation, run `ACMOS Road Generator` with `Roads = Path Only`, overwrite LOD textures.

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
- GUI: select all worldspaces, tick `Candles` and `FXGlow`, click `High`.
- `Occlusion` only on first run. `Grass LOD` only if generating grass LOD.
- Target: `4K` preset with `Optimal` tree/catch-all rules + recommended `LOD32` rules.
- Move output to `DynDOLOD Output` mod, enable `DynDOLOD.esm` and `DynDOLOD.esp`, sort with LOOT.

### 4K Validation
- Benchmark before and after LOD from clean Whiterun save. Also check the Rift (`cow tamriel 40 -24`) for aspens.
- If performance is already below STEP's pre-LOD target, lower the broader graphics baseline before blaming LOD.
- If travel performance still too expensive after LOD, step DynDOLOD from High → Medium/Low, skip Grass LOD.
- Document emergency tweaks next to the MO2 executable or output mod.

---

## Optional Diagnostics And Performance Tools

Neither requires ongoing configuration or conflict maintenance once installed.

### Recursion Monitor
- **Nexus:** [Recursion Monitor](https://www.nexusmods.com/skyrimspecialedition/mods/76867) — Detects broken Papyrus scripts stuck in recursive loops. Requires SKSE, Address Library.
- **Updated fork:** [recursion-fix-updated](https://www.nexusmods.com/skyrimspecialedition/mods/179627) (May 2026) — Removes blocking debug popup; writes to SKSE log instead. Prefer for production list.

### S.L.A.C.K. (Save And Load Accelerator For SKSE Cosaves)
- **Nexus:** [S.L.A.C.K.](https://www.nexusmods.com/skyrimspecialedition/mods/163969) — Cosaves save up to 150× faster, load up to 15× faster. Error-friendly mode catches exceptions from other SKSE plugins' cosave handlers.
- Requires: SKSE 1.6.1170, Address Library, SSE Engine Fixes (SKSE64 Preloader).
- Safe to install or uninstall at any time.
- Complements [Seamless Saving](https://www.nexusmods.com/skyrimspecialedition/mods/173161) (targets main save serialisation, not cosaves). Safe to run both.

### Notes
- Neither mod touches worldspace records, leveled lists, or asset files.
- Recursion Monitor is read-only in normal operation. Updated fork removes the only known compatibility concern.
- S.L.A.C.K. hooks SKSE's internal save/load API; error-friendly mode catches exceptions instead of crashing.
- Both are safe to remove from an existing save.
