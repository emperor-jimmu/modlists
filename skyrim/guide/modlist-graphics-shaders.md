# Community Shaders

---

## Community Shaders Core Setup
This section owns the graphics-framework decision for the shader-first visual stack. Build modern visuals around `Community Shaders`, then layer materials, lighting, weather, water, and distant detail on top.

### Baseline

- **Community Shaders** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/86492)) — Core framework.
- Validate prerequisites before judging later graphics layers: `SKSE64` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/30379)), `Address Library for SKSE Plugins` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/32444)), `Luma Utility` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/177961)), and any current page-listed dependencies.
- Record baseline performance before installing add-ons so module decisions are measured against a real control point.

### Alternatives

- Non-CS alternatives (ENB) are out of scope unless the project abandons the shader-first direction.

### Risks & Compatibility

- Some CS features are much heavier than the core framework.
- Older ecosystem pages may refer to legacy behavior or outdated version requirements.
- A shader-first stack still needs discipline; enabling every feature isn't the same as building a coherent visual direction.

---

## Community Shaders Add-Ons And Required Features
How aggressive the first CS feature layer should be — improve shadowing, wetness, water response, and material depth without front-loading the full performance cost.

### Feature Tiers

| Tier             | Modules                                                              | When To Enable                                     |
|------------------|----------------------------------------------------------------------|----------------------------------------------------|
| **Conservative** | Screen Space Shadows, Grass Lighting, Water Effects, Wetness Effects | Start here                                         |
| **Balanced**     | Conservative + Terrain Shadows                                       | After trees, grass, weather, water, LOD are stable |
| **High-End**     | Balanced + SSGI, Subsurface Scattering                               | Luxury, not requirement                            |

Install the CS main download (v1.8+) — the features below are either bundled in the core FOMOD or available as separate Nexus downloads maintained by the CS team. Toggle and tune everything in-game via the `END` key menu.

### CS Built-In Features (included with core download)

These ship with the main Community Shaders package — no separate download needed:

| Feature | Included Since |
| --- | --- |
| Extended Materials, LOD Blending, Volumetric Lighting, Dynamic Cubemaps, Light Limit Fix, Unified Water, Performance Overlay, Weather Picker | Always |
| Terrain Shadows, Inverse Square Lighting, **Water Effects**, Interior Sun, Extended Translucency | v1.4.7 |
| Screen-Space Shadows, **Grass Collision**, **Grass Lighting**, **Subsurface Scattering** | v1.5.0 |
| Sky Sync | v1.7.0 |
| Cloud Shadows | v1.8.0 |

### CS Optional Plugins (separate Nexus downloads)

| Mod | Description |
| --- | --- |
| [Wetness Effects](https://www.nexusmods.com/skyrimspecialedition/mods/112739) | Rain wetness, puddles, raindrop splash/ripple VFX, shore wetness. 9.8K endorsements, v3.1.0. |
| [HDR](https://www.nexusmods.com/skyrimspecialedition/mods/179371) | Native HDR10 output, configurable peak brightness (up to 10,000 nits), paper-white slider, BT.2020 colour space. **Requires an HDR-capable monitor.** Disable Windows Auto HDR and NVIDIA RTX HDR. 970 endorsements, v1.0.2. |
| [Screen Space Global Illumination (SSGI)](https://www.nexusmods.com/skyrimspecialedition/mods/130375) | Realistic indirect bounce light. Performance-intensive — high-end tier only. |
| [Skylighting](https://www.nexusmods.com/skyrimspecialedition/mods/139352) | Soft ambient sky occlusion. Pairs cleanly with the conservative tier for an authentic grim-dark look. |
| [Hair Specular](https://www.nexusmods.com/skyrimspecialedition/mods/149011) | Anisotropic hair highlights for more realistic hair rendering. |
| [Terrain Blending](https://www.nexusmods.com/skyrimspecialedition/mods/157076) | Seamless terrain-to-mesh transitions. |
| [Terrain Variation](https://www.nexusmods.com/skyrimspecialedition/mods/148123) | Stochastic sampling to prevent visible tiling on terrain textures. |
| [Terrain Helper](https://www.nexusmods.com/skyrimspecialedition/mods/143149) | Terrain rendering utilities required by some terrain features. |
| [Upscaling](https://www.nexusmods.com/skyrimspecialedition/mods/156952) | DLSS 4 / FSR 3.1 upscaling with FSR Frame Generation. The CS-team replacement for the older Skyrim Upscaler (80343). Requires SSE Display Tweaks. 6.4K endorsements, v1.4.0. |
| [Effects 11](https://www.nexusmods.com/skyrimspecialedition/mods/179824) | ENB preset compatibility layer via FX11 framework. Experimental — evaluate before locking. |

---

### Graphics Testing Protocol

#### Recommended Tool Stack

- Performance capture: `PresentMon`
- Analysis and graphing: `CapFrameX`
- Record keeping: Markdown table in this repo first, spreadsheet only if comparison volume grows
- Visual comparison: fixed test saves plus matching screenshot captures

#### Test Scene Rules

- Use the same character save for all graphics testing.
- Same location, camera angle, FOV, and time of day for each comparison pass.
- Keep one indoor test cell and at least two outdoor test cells: forest and open landscape.
- Record weather state for every run.
- Add or remove only one graphics variable at a time.

#### Suggested Metrics

- Average FPS
- 1% low FPS
- Frame-time consistency notes
- VRAM pressure notes from monitoring tools
- Shader artifacts, flicker, ghosting, water issues, grass mismatch, shadow instability
- Subjective visual verdict: keep, retest, reject

#### Markdown Table Format

| Date       | Build          | Test Area        | Weather/Time    | Mod Change           | Avg FPS | 1% Low | Visual Notes             | Decision |
|------------|----------------|------------------|-----------------|----------------------|---------|--------|--------------------------|----------|
| YYYY-MM-DD | Steam 1.6.1170 | Falkreath Forest | Overcast / 3 PM | Added Grass Lighting | 00      | 00     | Better depth, no flicker | Keep     |

### Risks & Compatibility

- Module stacks that look good in isolation can fight later weather, water, or lighting winners.
- Measuring several shader changes at once makes later decisions impossible to trust.
- Screenshot appeal can hide long-session readability or frame-time problems.

---

## Parallax Framework Dependencies
The mesh/data side of parallax and complex materials is handled by **PGPatcher**; the rendering side is built into Community Shaders core (**Extended Materials**). The legacy pair — Auto Parallax and Complex Parallax Materials — is obsolete and must not be installed.

### Baseline

- **PGPatcher** (→ `Graphics - PGPatcher`) statically patches meshes and plugins so installed textures — vanilla parallax, Complex Material, or PBR — render correctly. The author's own description: "You no longer should install prepatched meshes nor auto parallax as PGPatcher will take care of that for you."
- **Auto Parallax** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/79473)) — **NOT installed.** Runtime disable-parallax plugin, unmaintained since Nov 2022, explicitly superseded by PGPatcher.
- **Complex Parallax Materials** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/95134)) — **NOT installed.** Legacy feature absent from the CS v1.8+ supported-feature list ("Do not install legacy features outside this list; they will cause issues"). Its complex-material/parallax rendering now lives in CS core Extended Materials, and it hard-depends on the obsolete Auto Parallax.

### Risks & Compatibility

- Texture packs that ship hand-authored parallax meshes can conflict with PGPatcher's generated output — prefer letting PGPatcher generate from textures and test before committing generated patches.
- Re-run PGPatcher whenever a major landscape, architecture, ruins, or clutter texture pack is replaced.

---

## Physically Based Rendering (PBR) Support → separators: `Graphics - Textures & Meshes` / `Graphics - Terrain & Flora` / `Graphics - PGPatcher`
PBR is an adoption strategy layered on top of Community Shaders, not a separate renderer choice. The real decision is how selectively to use PBR-ready materials and conversions. The mods below install under their asset-class separators: general texture packs under `Graphics - Textures & Meshes`; landscape and rock packs under `Graphics - Terrain & Flora`. Landscape/rock picks are decided in that file — TomatoRim and ERM are locked there, Cathedralist's is rejected. Every install below requires **PGPatcher** (→ `Graphics - PGPatcher`), run after the texture stack settles.

### Baseline — Balanced PBR Route

Broad AIO base + targeted terrain and rock overrides, split by owning separator.

#### `Graphics - Textures & Meshes`

- **Vanilla PBR AIO** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/174091), 11.5 GB) — Primary base. Covers all architecture, clutter, actors, dungeons with vanilla-faithful art direction.
- **Tomato's Whiterun Remake - PBR or Complex Material** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/173747)) — Optional Whiterun override; replaces the deprecated Tomato's PBR Whiterun (135771). FOMOD installer — choose the PBR branch, 2K recommended, skip 4K. Requires CS core + PGPatcher (both already in the stack).
- **Tomato's PBR Farmhouses 2.0** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/135774)) — Optional farmhouse override. Install Grey 2K (84 MB), skip 4K. Optional: `WSU PBR Farmhouse windows patch` if Window Shadows Ultimate is in the stack.

#### `Graphics - Terrain & Flora`

- **Faultier's PBR Landscapes 4k** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/125308), 3.0 GB) — Fills VPBR's terrain gap. Do NOT install `Faultier's Skyrim AIO` alongside VPBR.
- **Enhanced Rocks and Mountains - Complex Material and PBR** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/121336)) — Modern rock/mountain overhaul. Load after VPBR to override its mountain textures. Install both main files (meshes then textures, choose PBR in FOMOD).

#### `Graphics - PGPatcher`

- **PGPatcher** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/120946)) — Required post-installation patcher for every PBR mod above. Workflow and rules live in → [PGPatcher Workflow](modlist-graphics-pgpatcher.md).

Community Shaders ships **Dynamic Cubemaps** and **Image-Based Lighting (IBL)** as standard features. Verify the chosen PBR texture set uses both before adding extra reflection/cubemap mods.

### Alternatives

- **Minimal PBR:** Enable support but only use a few showcase conversions.
- **Full PBR push:** Broad world coverage with higher maintenance and consistency risk.

### Priority Coverage

**Priority 1** — seen constantly in travel and third person:

- City architecture; farmhouses and rural buildings
- Nordic ruins and dungeon stonework
- High-visibility clutter and props

**Priority 2** — fill in after core look settles:

- Select landscape regions with strong material identity
- City sets from settlement overhauls that survive later testing
- Broader regional packs that fill obvious gaps

**Defer for now:**

- Full-world landscape replacement
- Low-visibility assets adding patching/VRAM cost without changing moment-to-moment feel
- Niche regional conversions before core city/dungeon/farmhouse look is settled

### Priority 2 Candidate Mods

- **PBR textures for The Great Cities Collection** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/133493)) — `Graphics - Textures & Meshes`
- **PBR Hub** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/139889)) — Discovery hub for later expansion. `Graphics - Textures & Meshes`
- Landscape additions are owned by → `Graphics - Terrain & Flora` — TomatoRim PBR Landscapes AIO (177621) and Enhanced Rocks and Mountains (121336) are locked there; Cathedralist's PBR Landscape (137333) is rejected. No open landscape candidates belong in this section.

### Working Rollout Order

1. Install **Vanilla PBR AIO** — broad PBR base for architecture, clutter, actors, dungeons.
2. Install **Faultier's PBR Landscapes 4k** — fills VPBR's terrain gap.
3. Install **Enhanced Rocks and Mountains** after VPBR — overrides VPBR's mountain textures.
4. Optionally install **Tomato's Whiterun Remake** and **Tomato's PBR Farmhouses 2.0** after VPBR.
5. Run **PGPatcher** last — all PBR texture mods above require it.
6. Landscape and rock overrides are owned by → `Graphics - Terrain & Flora` (TomatoRim and ERM locked there) — evaluate any landscape additions in that file, not here.

### Risks & Compatibility

- VPBR is newer (March 2026) than Faultier's PBR Skyrim (v3.0) — single-point-of-failure risk if abandoned. Active development so far (v1.0 → v1.32 in ~2 months).
- Faultier's PBR Landscapes 4k + ERM cover VPBR's landscape gap; Faultier's PBR Armors and Clothes covers the gear gap.
- VPBR includes mountain textures that must be overridden by ERM. Load ERM after VPBR.
- Do NOT install `Faultier's Skyrim AIO` alongside VPBR — same texture paths.
- PBR ambition can outrun the rest of the stack if weather, trees, water, and lighting aren't held to a similar bar.

---

## Open Research

Open research for the graphics pipeline is tracked in `TODO.md`.
