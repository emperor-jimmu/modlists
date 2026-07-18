# Testing & Maintenance

**MO2 Separators:** `Performance` → `Performance - Testing & Maintenance`

All items in this section belong to the `Performance` MO2 separator.

Part of the [`Performance and Technical Workflow`](modlist-performance.md) section.

---

## Performance Testing And Tuning
The goal is consistent frametimes — not just a high average FPS — across the scenarios you actually play.

### Tools

| Tool | Purpose |
|------|---------|
| **NVIDIA FrameView** | Lightweight overlay/logging: FPS, frametime, GPU power, thermals. No CPU per-core but lower overhead. |
| **MSI Afterburner + RivaTuner** | Full overlay/logging: FPS, frametime, GPU usage, CPU per-core, VRAM, draw calls, temps. |
| **GPU-Z** | Sensor logging for GPU clock, voltage, thermals, power limits. |
| **Community Shaders debug overlay** | Press F11 for render-time breakdown, draw-call count, VRAM usage. |
| **SSE Display Tweaks OSD** | Set `ShowOSD=true` in SSEDisplayTweaks.ini for basic overlay. |
| **Skyrim console tools** | `showstats` for real-time overlay; `sgtm 0.3` slows to 30% for inspecting stutter; `tfc 1` freezes camera. |
| **Cathedral Assets Optimizer** | Downscale uncompressed/oversized textures for VRAM relief. |

### Benchmark Methodology
1. Create a stable reference save with fixed weather (`fw 10a240`), fixed time (`set gamehour to 12`), `tfc 1` for reproducible screenshots. Save as `benchmark_ref.ess`.
2. Use fixed routes — same save, same path for 60 seconds.
3. Log everything via MSI Afterburner or NVIDIA FrameView CSV.
4. Test one change at a time.

### Benchmark Scenarios

| Scenario | Location | Teleport | What It Tests |
|----------|----------|----------|---------------|
| Open world | Whiterun plains west | `cow WhiterunWorld -10 0` | GPU/CPU balance, grass density, LOD load |
| Dense forest | Falkreath woods | `cow FalkreathWorld -30 -20` | Tree rendering, shadow complexity |
| Pine/marsh transition | Morthal swamp edge | `cow HjaalmarchWorld -15 -10` | Wetland shaders, mist, mixed flora |
| City centre (canals) | Riften marketplace | `cow RiftenWorld 0 0` | NPC count, water reflections, transitions |
| City centre (castles) | Solitude exterior | `cow SolitudeWorld 0 0` | Draw calls, shadow cascades, occlusion |
| Snowy tundra | Dawnstar coast | `cow WinterholdWorld 10 5` | Snow shaders, volumetric fog |
| Waterfall coast | Coast near Solitude | `cow Tamriel -22 -4` | Water displacement, foam, coastal LOD |
| Large interior | Blackreach | `cow Blackreach 0 0` | Particle lights, mesh density, alpha sorting |
| Large combat | Fort Neugrad assault | `cow WhiterunWorld 15 -5` then run | AI packages, magic FX, simultaneous actors |
| Dragon encounter | Open world | `player.placeatme 000FEA9F` | Skeleton, shout VFX, cell transition |
| Magic VFX stress | Dense combat + spells | `cow WhiterunWorld 0 0` then spawn dragon + 3 fire mages | Simultaneous particles, glow shaders, shadows |
| Heavy weather | Solstheim ash storm | `cow SolstheimWorld 0 0` with `fw 10A1E8` | Particles, alpha-heavy weather, fog |

### Record Per Scenario
- Average FPS
- Frametime 99th percentile (stutter floor — >50ms means visible hitches)
- GPU usage % (below 90% = CPU bottleneck)
- VRAM usage (within 500MB of card total = stutter risk)
- Draw calls (above ~10,000 = CPU struggling)

### Tuning Knobs (Ordered By Impact)
Stop once worst-case scenario is playable.

1. **Grass density** (BethINI > Environment > Grass Density). 40-60 range.
2. **Grass render distance** (BethINI > View Distance > Grass LOD Fade). Drop to 50-70 for forest gains.
3. **Shadow resolution** (BethINI > Visuals > Shadow Resolution). 2048 is sweet spot.
4. **Particle count** (BethINI > Visuals > Max Particle Render Count). 7500 baseline; drop to 5000 if fire/frost causes framedrops.
5. **Tree LOD distance** — keep `fTreeLoadDistance=0` (DynDOLOD manages).
6. **Object LOD fade** — drop `fMeshLODLevel2FadeTreeDistance` to 6144, `fMeshLODLevel1FadeTreeDistance` to 8192.
7. **VSync / framerate cap** — use SSE Display Tweaks `LockFrameRate=60`, `VSync=0`.
8. **Skyrim Upscaler** — if GPU is bottleneck, enable with Quality preset.

### When To Accept
- Occasional microstutter on cell border crossing is normal (Engine Fixes already mitigates).
- Combat in tight spaces with 6+ actors + magic VFX: if avg FPS >40 with no hitch >100ms, call it stable.
- If a specific mod cuts FPS 30%+ vs its branch alternative, consider swapping.

### Benchmark Reports
Export to CSV (NVIDIA FrameView Save CSV, MSI Afterburner *History > Log to file*). Keep a `benchmark-sheet.md`:

```
| Pass | Scenario | Avg FPS | 1% Low | GPU% | VRAM | Hitch Max | Delta vs Prev |
|------|----------|---------|--------|------|------|-----------|---------------|
| 1    | Whiterun | 58      | 42     | 92%  | 6.1G | 48ms      | —             |
```

Every tuning attempt recorded in git alongside modlist changes.

---

## Maintenance And Rebuild Epilogue
### Patcher Revisit Triggers

| Patcher | Trigger | Settings Worth Tweaking |
|---------|---------|------------------------|
| **LOOT** | Every meaningful load-order change | No custom tweaks |
| **Synthesis** | Patcher list change, upstream mod added/removed/updated, Bash Tag change on any plugin | Weapon Stat Synth: raise/lower Damage Ceiling; add to Ignore List for new artifact mods |
| **Wrye Bash** | Bash Tag change on any plugin, tweak setting change, new tagged plugin, or leveled-list-heavy mod added/removed | No per-run settings unless Bashed Patch imports unintended items |
| **Pandora** | Animation mod added/removed/reordered; skeleton or behavior change | Direct output to Pandora Output |
| **BodySlide** | Body preset/skin texture/armor mod change | No per-run settings beyond chosen preset |
| **Grass Cache** | Grass/tree/landscape texture/worldspace change; density INI tweak | Rebuild from scratch |
| **xLODGen** | Landscape texture/heightmap/worldspace change; terrain LOD mod change | Quality slider per-run for coastline artefacts |
| **TexGen** | Object/tree/building texture changes producing LOD billboards; tree mod swaps | Revisit GrassModelHeightMultiplier and TreeMSAlphaThreshold |
| **DynDOLOD** | Worldspace/tree/large-reference/LOD resource change; TexGen output change; Bashed Patch or Synthesis change (form IDs affect reference records) | Brightness/Contrast for LOD32; DoubleSidedTextureMask for new mountain types |

### Generator Output Order (First-Time Build)
Run in this sequence when generating outputs for the first time. Independent outputs (Pandora, BodySlide) are generated earlier here than in the canonical → [rebuild order](modlist-performance-patches.md) because they can be iterated on while patchers are still in flux. The final LOD sequence (xLODGen → TexGen → Grass Cache → DynDOLOD) matches the rebuild order exactly.

1. **SSEEdit** — quick-conflict check after every major mod addition
2. **Pandora** — after animation stack stabilizes
3. **BodySlide** — after body/armor changes stabilize
4. **Bashed Patch** — after load order is stable enough for tagging
5. **Synthesis** — patchers the final stack actually uses
6. **xLODGen** — terrain LOD first
7. **TexGen** — before DynDOLOD
8. **Grass Cache** — after grass/landscape/worldspace choices stabilize
9. **DynDOLOD** — last major output (includes Occlusion generation)
10. **SSE Display Tweaks + BethINI Pie** — final review after graphics baseline is set

After generation, verify: `DynDOLOD.esm` at end of ESM block, `DynDOLOD.esp` near end, `Occlusion.esp` after, `Synthesis.esp`/**Bashed Patch** per tool guidance.

### Change Tracking
Keep `changelog.txt` or `build-notes.md` in `Output` separator recording: date/scope of each re-run, settings differing from baseline, branch choices changed, manual INI tweaks, reference-save used.

### MCM Settings Recording
1. Screenshot each MCM page; store in `MCM-Reference` under `Output` separator.
2. Use **MCM Recorder** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/24113)) — record/replay via JSON profiles.
3. Cross-check on rebuild.

### Mod Update Workflow
1. Read the mod's changelog before updating.
2. Minor version with no record/script changes: replace in-place, re-run LOOT.
3. Records, scripts, or dependencies change: treat as new install — disable old, install new, run LOOT, check xEdit conflicts, re-run affected patchers.
4. Never update DynDOLOD/TexGen/xLODGen mid-playthrough without verifying output is functionally identical. Start new game after LOD regeneration when in doubt.

### Playing Forward
Two installations of `Elder Wilds` can look quite different while following the same guide. The rule: **whatever you changed, note it, and re-run only the patchers whose upstream input changed.**
