# Community Shaders

**MO2 Separator:** `Graphics` → `Graphics - Community Shaders`

## Community Shaders Core Setup → `Graphics - Community Shaders`

This section owns the graphics-framework decision for the shader-first visual stack. The goal is to build modern visuals around `Community Shaders`, then layer materials, lighting, weather, water, and distant detail on top of that baseline.

### Baseline

- **Community Shaders** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/86492)) — Core framework. → `Graphics - Community Shaders`
- Validate `SKSE64` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/30379)), `Address Library for SKSE Plugins` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/32444)), `Luma Utility` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/177961)), and any current page-listed prerequisites before judging later graphics layers. → `Graphics - Community Shaders`
- Record baseline performance before installing add-ons so later module decisions are measured against a real control point.

### Alternatives

- Non-CS alternatives (ENB) are out of scope unless the project abandons the shader-first direction entirely.

### Notes

- Some CS features are much heavier than the core framework itself.
- Older ecosystem pages may refer to legacy behavior or outdated version requirements.
- A shader-first stack still needs discipline; enabling every feature is not the same as building a coherent visual direction.

## Community Shaders Add-Ons And Required Features → `Graphics - Community Shaders`

This section decides how aggressive the first CS feature layer should be. It should improve shadowing, wetness, water response, and material depth without front-loading the whole performance cost of the section.

### Baseline

- Use the CS main download (v1.7+) and enable core modules via FOMOD at install time. Install optional plugins separately.
- Start with the **conservative tier**: Screen Space Shadows, Grass Lighting, Water Effects, Wetness Effects.
- Promote to the **balanced tier** (add Terrain Shadows) only after trees, grass, weather, water, and LOD choices are stable enough that the extra depth is worth measuring.
- Treat **SSGI and Subsurface Scattering** (high-end tier) as optional luxury features, not a baseline requirement.
- **Embers XD** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/37085)) — The fire-and-ember category answer (140K+ endorsements). Install after the main lighting overhauls so it can inherit their campfire and hearth placements. → `Graphics - Lighting`
- **Skylighting** (separate download) — Sky-driven ambient occlusion. Pairs cleanly with the conservative tier. Worth including on the conservative baseline for an authentic grim-dark look. → `Graphics - Community Shaders`
- **Skyrim Upscaler - DLSS FSR2 XeSS** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/80343)) — Only if real performance testing proves it is needed. → `Graphics - Community Shaders`

### Alternatives

- Core features are bundled in the CS main download (~70 MB). Enable/disable modules in the CS FOMOD.
- Optional plugins (separate downloads): `Cloud Shadows`, `Hair Specular`, `HDR`, `SSGI`, `Skylighting`, `Terrain Helper`, `Terrain Blending`, `Terrain Variation`, `Upscaling`, `Wetness Effects`. → `Graphics - Community Shaders`
- Conservative tier: Screen Space Shadows, Grass Lighting, Water Effects, Wetness Effects.
- Balanced tier: Conservative set plus Terrain Shadows.
- High-end tier: Balanced set plus Subsurface Scattering, SSGI.

### Graphics Testing Protocol

#### Recommended Tool Stack

- Performance capture: `PresentMon` → `Graphics - Community Shaders`
- Analysis and graphing: `CapFrameX` → `Graphics - Community Shaders`
- Record keeping: Markdown table in this repo first, spreadsheet only if comparison volume becomes large
- Visual comparison: fixed test saves plus matching screenshot captures

#### Test Scene Rules

- Use the same character save for all graphics testing.
- Use the same location, camera angle, field of view, and time of day for each comparison pass.
- Keep one indoor test cell and at least two outdoor test cells: forest and open landscape.
- Record weather state for every run.
- Add or remove only one graphics variable at a time when possible.

#### Suggested Metrics To Record

- Average FPS
- 1% low FPS
- Frame-time consistency notes
- VRAM pressure notes if visible from monitoring tools
- Shader artifacts, flicker, ghosting, water issues, grass mismatch, or shadow instability
- Subjective visual verdict: keep, retest, or reject

#### Suggested Markdown Table Format

| Date       | Build          | Test Area        | Weather/Time    | Mod Change             | Avg FPS | 1% Low | Visual Notes             | Decision |
|------------|----------------|------------------|-----------------|------------------------|---------|--------|--------------------------|----------|
| YYYY-MM-DD | Steam 1.6.1170 | Falkreath Forest | Overcast / 3 PM | Added `Grass Lighting` | 00      | 00     | Better depth, no flicker | Keep     |

### Notes

- Module stacks that look good in isolation can still fight later weather, water, or lighting winners.
- Measuring several shader changes at once makes later decisions impossible to trust.
- Screenshot appeal can hide long-session readability or frame-time problems.

## Parallax Framework Dependencies → `Graphics - Community Shaders`

Auto Parallax and Complex Parallax Materials form the parallax rendering layer that bridges Community Shaders' parallax support with mesh and texture mods downstream.

### Baseline

- Install **Auto Parallax** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/79473)) and **Complex Parallax Materials** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/95134)) as infrastructure before adding parallax-enabled textures or meshes. CPM hard-depends on Auto Parallax. Install only after the texture stack is mostly chosen but before PGPatcher runs. → `Graphics - Community Shaders`

### Notes

- Without Auto Parallax, Complex Parallax Materials will not function — both must be present.
- Installing too early means regenerating parallax data after texture changes; install after the main texture stack is locked.

## Physically Based Rendering (PBR) Support → `Graphics - Community Shaders`

PBR is an adoption strategy layered on top of `Community Shaders`, not a separate renderer choice. The real decision is how selectively the list should use PBR-ready materials and conversions.

### Baseline

- Use the **balanced PBR option** with a broad AIO base plus targeted terrain and rock overrides.
- **Vanilla PBR AIO** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/174091), 11.5 GB) — Primary base covering all architecture, clutter, actors, and dungeons with vanilla-faithful art direction. → `Graphics - Community Shaders`
- **Faultier's PBR Landscapes 4k** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/125308), 3.0 GB) — Fills the terrain gap that VPBR leaves. → `Graphics - Community Shaders`
- **Enhanced Rocks and Mountains - Complex Material and PBR** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/121336)) — Modern rock/mountain overhaul. Load after VPBR so it overrides VPBR's mountain textures. Install both main files (meshes then textures, choose PBR in FOMOD). → `Graphics - Community Shaders`
- **Tomato's PBR Whiterun** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/135771)) — Optional specialist Whiterun override. Install 2k, skip 4k. → `Graphics - Community Shaders`
- **Tomato's PBR Farmhouses 2.0** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/135774)) — Optional farmhouse override. Install Grey 2K variant. → `Graphics - Community Shaders`
- Community Shaders ships **Dynamic Cubemaps** and **Image-Based Lighting (IBL)** as standard features. Verify that the chosen PBR texture set takes advantage of both before adding extra reflection or cubemap mods. → `Graphics - Community Shaders`

### Alternatives

- Minimal PBR: enable support but only use a few showcase conversions.
- Full PBR push: broad world coverage with much higher maintenance and consistency risk.

### Priority Coverage

#### Priority 1 Areas

- City architecture seen constantly in travel and third person
- Farmhouses and rural buildings
- Nordic ruins and dungeon stonework
- High-visibility clutter and props

#### Priority 1 Mods

- Broad coverage base: **Vanilla PBR AIO** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/174091), 11.5 GB) — Converts all vanilla architecture, clutter, actors, statues, dungeons, and food to PBR materials. True to vanilla aesthetic with improved normals, parallax, and material response. Requires Community Shaders, SMIM, and PGPatcher. → `Graphics - Community Shaders`
- Landscape terrain: **Faultier's PBR Landscapes 4k** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/125308), 3.0 GB, separate file from Faultier's AIO) — Terrain at 4k, mountains at 8k. Do NOT install `Faultier's Skyrim AIO` alongside VPBR. → `Graphics - Community Shaders`
- Mountain and rock meshes: **Enhanced Rocks and Mountains - Complex Material and PBR** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/121336)) — Install both main files: `ERM - Enhanced Rocks and Mountains` (meshes) then `ERM - Textures` (choose PBR in FOMOD). Do NOT install `Blended ERM` (non-PBR). → `Graphics - Community Shaders`
- Optional Whiterun override: **Tomato's PBR Whiterun** v1.2.PBR ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/135771)) — Install 2k (735.5 MB), skip 4k (2.0 GB). Optional add-ons: `Improved Dragon Carvings` (beta, 2k) and `PBR Talos`. Layered over VPBR. → `Graphics - Community Shaders`
- Optional farmhouse override: **Tomato's PBR Farmhouses 2.0** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/135774)) — Install `Grey - 2K` (84.2 MB), skip 4k. Optional `WSU PBR Farmhouse windows patch` if Window Shadows Ultimate is in the lighting stack. → `Graphics - Community Shaders`

#### Priority 2 Areas

- Select landscape regions with a strong material identity
- City sets from settlement overhauls that survive later testing
- Broader regional packs that fill obvious gaps

#### Priority 2 Candidate Mods

- Landscape testing option: **A Cathedralist's PBR Landscape** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/137333)) → `Graphics - Community Shaders`
- Broader landscape option: **TomatoRim PBR Landscapes AIO** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/177621)) → `Graphics - Community Shaders`
- City-overhaul support: **PBR textures for The Great Cities Collection** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/133493)) → `Graphics - Community Shaders`
- Discovery hub for later expansion: **PBR Hub** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/139889)) → `Graphics - Community Shaders`

#### Areas To Defer For Now

- Full-world landscape replacement
- Low-visibility assets that add patching and VRAM cost without changing moment-to-moment feel much
- Niche regional conversions before the core city, dungeon, and farmhouse look is settled

#### Working Rollout Order

1. Install `Vanilla PBR AIO` as the broad PBR base covering architecture, clutter, actors, and dungeons. → `Graphics - Community Shaders`
2. Install `Faultier's PBR Landscapes 4k` to fill the terrain gap that VPBR leaves. → `Graphics - Community Shaders`
3. Install `Enhanced Rocks and Mountains - Complex Material and PBR` after VPBR so its rock and mountain textures override VPBR's included mountain textures. → `Graphics - Community Shaders`
4. Optionally install `Tomato's PBR Whiterun` and `Tomato's PBR Farmhouses 2.0` after VPBR where Tomato's specialist treatment improves on the base. → `Graphics - Community Shaders`
5. Run PGPatcher last — all PBR texture mods above require it to render correctly in-game. → `Graphics - Community Shaders`
6. Only after the core stack passes visual and performance review, test optional landscape additions such as `A Cathedralist's PBR Landscape` or `TomatoRim PBR Landscapes AIO`. → `Graphics - Community Shaders`

### Notes

- VPBR is newer (March 2026) than Faultier's PBR Skyrim (established v3.0) — single-point-of-failure risk if abandoned. Active development so far (v1.0 → v1.32 in ~2 months).
- Faultier's PBR Landscapes 4k + ERM cover VPBR's landscape gap; Faultier's PBR Armors and Clothes covers the gear gap.
- VPBR includes mountain textures that must be overridden by ERM. Load ERM after VPBR.
- Do NOT install `Faultier's Skyrim AIO` alongside VPBR — they conflict on the same texture paths.
- PBR ambition can outrun the rest of the stack if weather, trees, water, and lighting are not held to a similar quality bar.

## Candidate TODO Additions → `Graphics - Community Shaders`, `Graphics - Lighting`, `Graphics - Weather & Water`, `Graphics - Terrain & Flora`

### Textures, Clutter & Meshes → `Graphics - Community Shaders`

- `Racemenu Enhancer` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/182536>) — character creation RaceMenu enhancer → `Graphics - Community Shaders`
- `Visual Animated Enchants` — weapon enchantment VFX replacer → `Graphics - Community Shaders`
- `Apophysis Dragon Priests Masks` — dragon priest mask retexture → `Graphics - Community Shaders`
- `Runed Nordic Weapons` — Nordic weapon mesh/texture replacer → `Graphics - Community Shaders`
- `Elven Armor replacer glow` — Elven armor retexture with glow maps → `Graphics - Community Shaders`
- `Elsopa Iron weapons redone` — iron weapon retexture → `Graphics - Community Shaders`
- `Ennead Banners and Shields` — banner/shield retexture → `Graphics - Community Shaders`
- `Elsopa Quivers Redone` — quiver retexture → `Graphics - Community Shaders`
- `Believable greatswords sheathed` — greatsword sheath mesh fix → `Graphics - Community Shaders`
- `ElSopa - HD Medieval anvil` — anvil retexture → `Graphics - Community Shaders`
- `Elsopa Grindstones` — grindstone retexture → `Graphics - Community Shaders`
- `Renthal Workbench` — workbench retexture → `Graphics - Community Shaders`
- `VFX Edit AIO - Spells Retexture` — spell visual effect retexture → `Graphics - Community Shaders`
- `JFresh's Mead Stein` — mead stein retexture → `Graphics - Community Shaders`
- `SD's Horn Candles` — candle retexture → `Graphics - Community Shaders`
- `JS Dragon Claws` — dragon claw retexture → `Graphics - Community Shaders`
- `Skyrim remastered soul gems` — soul gem retexture → `Graphics - Community Shaders`
- `Rally's Market Stalls` — market stall retexture → `Graphics - Community Shaders`
- `KanJS Spell Tomes Animated` — animated spell tome mesh replacer → `Graphics - Community Shaders`
- `Alt Markarth Forge` — Markarth forge retexture → `Graphics - Community Shaders`
- `HD Unique Handmade signs` — inn/shop sign retexture → `Graphics - Community Shaders`
- `Stay Arrows Stay` — keeps arrows lodged in bodies and world → `Graphics - Community Shaders`
- `One Quiver to rule them all` — quiver attachment positioning fix → `Graphics - Community Shaders`
- `Nordic Windhelm` / `Tomato's Windhelm` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/174492>) — Windhelm city retexture with PBR/Complex Material → `Graphics - Community Shaders`
- `Distinguished Drapery` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/173894>) — curtain/hanging fabric retexture → `Graphics - Community Shaders`
- `The Mists of Blackreach` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/179487>) — Blackreach mist/fog VFX → `Graphics - Community Shaders`
- `Better Wine Labels - Vanilla and LotD` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/34698>, PBR Patch: <https://www.nexusmods.com/skyrimspecialedition/mods/175588>) — wine bottle label retexture with LoTD support → `Graphics - Community Shaders`
- `Diverse Windmill Sails - BOS` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/121759>) — windmill sail variety via Base Object Swapper → `Graphics - Community Shaders`
- `Diverse Foods - BOS` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/91599>) — food variety via Base Object Swapper → `Graphics - Community Shaders`
- `Diverse Candles - BOS` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/94369>) — candle variety via Base Object Swapper → `Graphics - Community Shaders`
- `Better Pelts and Hides` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/87277>) — pelt/hide retexture → `Graphics - Community Shaders`
- `Fluffy Hanging rabbits` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/89148>) — hanging rabbit mesh retexture → `Graphics - Community Shaders`
- `FrankBlack's Honey in a Jar` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/104496>) — honey jar retexture → `Graphics - Community Shaders`
- `slightly Better Nordic Henges - BOS` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/97162>) — Nordic henge visual upgrade via BOS → `Graphics - Community Shaders`

### Lighting → `Graphics - Lighting`

- `KD Realistic Fireplaces` — fireplace visual upgrade → `Graphics - Lighting`
- `EmbersXD Torch Edit` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/134219>) — torch visual edit for Embers XD → `Graphics - Lighting`

### Weather & Sky → `Graphics - Weather & Water`

- `Draco's fantasy auroras` — aurora/sky visual replacer → `Graphics - Weather & Water`
- `Draco's moons` — moon visual replacer → `Graphics - Weather & Water`

### Flora & Landscape → `Graphics - Terrain & Flora`

- `Flora Additions - Water Plants` — water plant flora additions → `Graphics - Terrain & Flora`
- `Bigger trees` — tree size multiplier → `Graphics - Terrain & Flora`
- `Grassreach - Blackreach Grass` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/179420>) — Blackreach grass mod → `Graphics - Terrain & Flora`
- `Freak's Floral Solstheim` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/138161>) — Solstheim flora replacer → `Graphics - Terrain & Flora`
- Road texture options: `Simplest Roads` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/111255>), `Simple Complex Parallax Roads` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/173826>), `Blended Roads` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/8834>) — road texture alternatives; Blended Roads already baseline candidate → `Graphics - Terrain & Flora`
