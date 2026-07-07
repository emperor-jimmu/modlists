# Community Shaders

**MO2 Separator:** `Graphics` → `Graphics - Community Shaders`

All mods in this section belong to the `Graphics - Community Shaders` MO2 separator unless a different one is noted.

---

## Community Shaders Core Setup

This section owns the graphics-framework decision for the shader-first visual stack. Build modern visuals around `Community Shaders`, then layer materials, lighting, weather, water, and distant detail on top.

### Baseline

- **Community Shaders** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/86492)) — Core framework.
- Validate prerequisites before judging later graphics layers: `SKSE64` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/30379)), `Address Library for SKSE Plugins` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/32444)), `Luma Utility` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/177961)), and any current page-listed dependencies.
- Record baseline performance before installing add-ons so module decisions are measured against a real control point.

### Alternatives

- Non-CS alternatives (ENB) are out of scope unless the project abandons the shader-first direction.

### Notes

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

Install the CS main download (v1.7+) and enable modules via FOMOD. Install optional plugins separately.

### Plugins (separate downloads from core)

- **Skylighting** — Sky-driven ambient occlusion. Pairs cleanly with the conservative tier. Worth including for authentic grim-dark look.
- **Skyrim Upscaler - DLSS FSR2 XeSS** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/80343)) — Only if real performance testing proves it's needed.
- **Embers XD** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/37085)) — The fire-and-ember answer (140K+). Install after lighting overhauls so it inherits their campfire/hearth placements. → separator: `Graphics - Lighting`

Optional separate plugin downloads: `Cloud Shadows`, `Hair Specular`, `HDR`, `SSGI`, `Skylighting`, `Terrain Helper`, `Terrain Blending`, `Terrain Variation`, `Upscaling`, `Wetness Effects`.

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

### Notes

- Module stacks that look good in isolation can fight later weather, water, or lighting winners.
- Measuring several shader changes at once makes later decisions impossible to trust.
- Screenshot appeal can hide long-session readability or frame-time problems.

---

## Parallax Framework Dependencies

Auto Parallax and Complex Parallax Materials form the parallax rendering layer bridging CS parallax support with mesh and texture mods downstream.

### Baseline

- Install **Auto Parallax** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/79473)) and **Complex Parallax Materials** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/95134)) as infrastructure before adding parallax-enabled textures or meshes. CPM hard-depends on Auto Parallax. Install after the texture stack is mostly chosen but before PGPatcher runs.

### Notes

- Without Auto Parallax, Complex Parallax Materials will not function — both must be present.
- Installing too early means regenerating parallax data after texture changes; install after the main texture stack is locked.

---

## Physically Based Rendering (PBR) Support

PBR is an adoption strategy layered on top of Community Shaders, not a separate renderer choice. The real decision is how selectively to use PBR-ready materials and conversions.

### Baseline — Balanced PBR Route

Broad AIO base + targeted terrain and rock overrides.

- **Vanilla PBR AIO** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/174091), 11.5 GB) — Primary base. Covers all architecture, clutter, actors, dungeons with vanilla-faithful art direction.
- **Faultier's PBR Landscapes 4k** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/125308), 3.0 GB) — Fills VPBR's terrain gap. Do NOT install `Faultier's Skyrim AIO` alongside VPBR.
- **Enhanced Rocks and Mountains - Complex Material and PBR** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/121336)) — Modern rock/mountain overhaul. Load after VPBR to override its mountain textures. Install both main files (meshes then textures, choose PBR in FOMOD).
- **Tomato's PBR Whiterun** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/135771)) — Optional Whiterun override. Install 2K (735 MB), skip 4K (2 GB). Optional: `Improved Dragon Carvings` (beta, 2K) and `PBR Talos`.
- **Tomato's PBR Farmhouses 2.0** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/135774)) — Optional farmhouse override. Install Grey 2K (84 MB), skip 4K. Optional: `WSU PBR Farmhouse windows patch` if Window Shadows Ultimate is in the stack.

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

- **A Cathedralist's PBR Landscape** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/137333))
- **TomatoRim PBR Landscapes AIO** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/177621))
- **PBR textures for The Great Cities Collection** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/133493))
- **PBR Hub** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/139889)) — Discovery hub for later expansion.

### Working Rollout Order

1. Install **Vanilla PBR AIO** — broad PBR base for architecture, clutter, actors, dungeons.
2. Install **Faultier's PBR Landscapes 4k** — fills VPBR's terrain gap.
3. Install **Enhanced Rocks and Mountains** after VPBR — overrides VPBR's mountain textures.
4. Optionally install **Tomato's PBR Whiterun** and **Tomato's PBR Farmhouses 2.0** after VPBR.
5. Run **PGPatcher** last — all PBR texture mods above require it.
6. Only after core stack passes review, test optional landscape additions (`Cathedralist's PBR Landscape`, `TomatoRim PBR Landscapes AIO`).

### Notes

- VPBR is newer (March 2026) than Faultier's PBR Skyrim (v3.0) — single-point-of-failure risk if abandoned. Active development so far (v1.0 → v1.32 in ~2 months).
- Faultier's PBR Landscapes 4k + ERM cover VPBR's landscape gap; Faultier's PBR Armors and Clothes covers the gear gap.
- VPBR includes mountain textures that must be overridden by ERM. Load ERM after VPBR.
- Do NOT install `Faultier's Skyrim AIO` alongside VPBR — same texture paths.
- PBR ambition can outrun the rest of the stack if weather, trees, water, and lighting aren't held to a similar bar.

---

## Candidate TODO Additions

→ Separators: `Community Shaders`, `Lighting`, `Weather & Water`, `Terrain & Flora`

### Textures, Clutter & Meshes → `Graphics - Community Shaders`

- `Racemenu Enhancer` — <https://www.nexusmods.com/skyrimspecialedition/mods/182536> — Character creation RaceMenu enhancer
- `Visual Animated Enchants` — Weapon enchantment VFX replacer
- `Apophysis Dragon Priests Masks` — Dragon priest mask retexture
- `Runed Nordic Weapons` — Nordic weapon mesh/texture replacer
- `Elven Armor replacer glow` — Elven armor retexture with glow maps
- `Elsopa Iron weapons redone` — Iron weapon retexture
- `Ennead Banners and Shields` — Banner/shield retexture
- `Elsopa Quivers Redone` — Quiver retexture
- `Believable greatswords sheathed` — Greatsword sheath mesh fix
- `ElSopa - HD Medieval anvil` — Anvil retexture
- `Elsopa Grindstones` — Grindstone retexture
- `Renthal Workbench` — Workbench retexture
- `VFX Edit AIO - Spells Retexture` — Spell visual effect retexture
- `JFresh's Mead Stein` — Mead stein retexture
- `SD's Horn Candles` — Candle retexture
- `JS Dragon Claws` — Dragon claw retexture
- `Skyrim remastered soul gems` — Soul gem retexture
- `Rally's Market Stalls` — Market stall retexture
- `KanJS Spell Tomes Animated` — Animated spell tome mesh replacer
- `Alt Markarth Forge` — Markarth forge retexture
- `HD Unique Handmade signs` — Inn/shop sign retexture
- `Stay Arrows Stay` — Keeps arrows lodged in bodies and world
- `One Quiver to rule them all` — Quiver attachment positioning fix
- `Nordic Windhelm` / `Tomato's Windhelm` — <https://www.nexusmods.com/skyrimspecialedition/mods/174492> — Windhelm city retexture with PBR/Complex Material
- `Distinguished Drapery` — <https://www.nexusmods.com/skyrimspecialedition/mods/173894> — Curtain/hanging fabric retexture
- `The Mists of Blackreach` — <https://www.nexusmods.com/skyrimspecialedition/mods/179487> — Blackreach mist/fog VFX
- `Better Wine Labels - Vanilla and LotD` — <https://www.nexusmods.com/skyrimspecialedition/mods/34698> — Wine bottle label retexture; PBR Patch: <https://www.nexusmods.com/skyrimspecialedition/mods/175588>
- `Diverse Windmill Sails - BOS` — <https://www.nexusmods.com/skyrimspecialedition/mods/121759>
- `Diverse Foods - BOS` — <https://www.nexusmods.com/skyrimspecialedition/mods/91599>
- `Diverse Candles - BOS` — <https://www.nexusmods.com/skyrimspecialedition/mods/94369>
- `Better Pelts and Hides` — <https://www.nexusmods.com/skyrimspecialedition/mods/87277>
- `Fluffy Hanging rabbits` — <https://www.nexusmods.com/skyrimspecialedition/mods/89148>
- `FrankBlack's Honey in a Jar` — <https://www.nexusmods.com/skyrimspecialedition/mods/104496>
- `slightly Better Nordic Henges - BOS` — <https://www.nexusmods.com/skyrimspecialedition/mods/97162>

### Lighting → `Graphics - Lighting`

- `KD Realistic Fireplaces` — Fireplace visual upgrade
- `EmbersXD Torch Edit` — <https://www.nexusmods.com/skyrimspecialedition/mods/134219> — Torch visual edit for Embers XD

### Weather & Sky → `Graphics - Weather & Water`

- `Draco's fantasy auroras` — Aurora/sky visual replacer
- `Draco's moons` — Moon visual replacer

### Flora & Landscape → `Graphics - Terrain & Flora`

- `Flora Additions - Water Plants` — Water plant flora additions
- `Bigger trees` — Tree size multiplier
- `Grassreach - Blackreach Grass` — <https://www.nexusmods.com/skyrimspecialedition/mods/179420>
- `Freak's Floral Solstheim` — <https://www.nexusmods.com/skyrimspecialedition/mods/138161>
- Road texture options: `Simplest Roads` (<https://www.nexusmods.com/skyrimspecialedition/mods/111255>), `Simple Complex Parallax Roads` (<https://www.nexusmods.com/skyrimspecialedition/mods/173826>), `Blended Roads` (<https://www.nexusmods.com/skyrimspecialedition/mods/8834>)
