# Community Shaders

**MO2 Separator:** `02 Graphics` → `02b Community Shaders`

## Community Shaders Core Setup → `02b Community Shaders`

### Core Idea

- This subsection owns the actual graphics-framework decision for the shader-first visual stack.
- The goal is to build modern visuals around `Community Shaders`, then layer materials, lighting, weather, water, and distant detail on top of that baseline. → `02b`

### Options

- Primary framework route: `Community Shaders` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/86492> → `02b`
- Non-CS alternatives are out of scope unless the project abandons the shader-first direction entirely.

### Recommendation

- Use `Community Shaders` as the core framework. → `02b`
- Validate `SKSE64` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/30379>, `Address Library for SKSE Plugins` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/32444>, `Luma Utility` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/177961>, and any current page-listed prerequisites before judging later graphics layers. → `02b`
- Record baseline performance before installing add-ons so later module decisions are measured against a real control point.

### Risks & Compatibility

- Some Community Shaders features are much heavier than the core framework itself.
- Older ecosystem pages may refer to legacy behavior or outdated version requirements.
- A shader-first stack still needs discipline; enabling every feature is not the same as building a coherent visual direction.

### Acceptance Criteria

- The game launches correctly on Steam `1.6.1170`. → `02b`
- `Community Shaders` loads without runtime errors.
- Visual output is stable in both indoor and outdoor test scenes.
- Baseline FPS is recorded before any add-on modules are layered in.

## Community Shaders Add-Ons And Required Features → `02b Community Shaders`

### Core Idea

- This subsection decides how aggressive the first Community Shaders feature layer should be.
- It should improve shadowing, wetness, water response, and material depth without front-loading the whole performance cost of the section.

### Options

- Core features are bundled in the `Community Shaders` main download (v1.7+, ~70 MB). Enable/disable modules in the CS FOMOD at install time. The tiered approach below remains valid for selective evaluation. → `02b`
- Several optional plugins remain separate Nexus downloads (not in the AIO) and must be installed individually: `Cloud Shadows`, `Hair Specular`, `HDR`, `SSGI`, `Skylighting`, `Terrain Helper`, `Terrain Blending`, `Terrain Variation`, `Upscaling`, `Wetness Effects`. → `02b`
- Conservative tier:
    - Screen Space Shadows, Grass Lighting, Water Effects, Wetness Effects
- Balanced tier:
    - Conservative set plus Terrain Shadows
- High-end tier:
    - Balanced set plus Subsurface Scattering, Screen Space Global Illumination (SSGI)
- Fire-and-particle companion:
- `Embers XD` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/37085> (works with `Community Shaders`; `CS Light` (<https://www.nexusmods.com/skyrimspecialedition/mods/138443>) → `02d`
- Sky-driven lighting companion:
- `Skylighting - Community Shaders` (separate Nexus download; enables soft ambient sky occlusion) → `02b`
- Support-only branch:
- `Skyrim Upscaler - DLSS FSR2 XeSS` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/80343> → `14`

### Recommendation

- Use the CS 1.7+ main download (single file from the main CS page) and enable core modules via FOMOD at install time. Install optional plugins separately — see list above.
- Start with the conservative tier (Screen Space Shadows, Grass Lighting, Water Effects, Wetness Effects).
- Promote to the balanced tier (add Terrain Shadows) only after trees, grass, weather, water, and LOD choices are stable enough that the extra depth is worth measuring.
- Treat SSGI and Subsurface Scattering (high-end tier) as optional luxury features, not a baseline requirement.
- Treat `Embers XD` as the fire and ember category answer rather than pretending the rest of the CS stack covers that visual gap by itself. It is the standard Community Shaders fire-and-particle pick: 140K+ endorsements, actively maintained. CS Light v1.x included an Embers XD FOMOD option, but v2.0.0 removed common lighting — Embers XD handles its own fire/ember particle lights natively with CS. Install after the main lighting overhauls (Lux, ELFX) so it can inherit their campfire and hearth placements. → `02d`
- Install `Skylighting` as a separate download. It casts believable sky-driven shading across terrain and objects, adds large-scale directional ambient illumination from the sky, and pairs cleanly with the conservative tier without requiring the balanced or high-end tier. Worth including on the conservative baseline for an authentic 4K grim-dark look. → `02b`
- Use `Skyrim Upscaler` only if real performance testing proves it is needed. → `02b`

### Graphics Testing Protocol

#### Recommended Tool Stack

- Performance capture: `PresentMon` → `02b`
- Analysis and graphing: `CapFrameX` → `02b`
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

### Risks & Compatibility

- Module stacks that look good in isolation can still fight the later weather, water, or lighting winners.
- Measuring several shader changes at once makes later decisions impossible to trust.
- Screenshot appeal can hide long-session readability or frame-time problems.

### Acceptance Criteria

- Each selected module loads without runtime issues.
- Outdoor lighting remains readable in forests, mountains, and bad weather.
- Water, wetness, and terrain depth improve without obvious artifacting.
- The final module set has a measured performance cost the list is willing to carry.

## Parallax Framework Dependencies → `02b Community Shaders`

### Core Idea

- Auto Parallax and Complex Parallax Materials form the parallax rendering layer that bridges Community Shaders' parallax support with mesh and texture mods downstream.

### Recommendation

- Install `Auto Parallax` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/79473> and `Complex Parallax Materials` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/95134> as infrastructure before adding parallax-enabled textures or meshes. CPM hard-depends on Auto Parallax. Install only after the texture stack is mostly chosen but before PGPatcher runs. → `02b`

### Risks & Compatibility

- Without Auto Parallax, Complex Parallax Materials will not function — they are not alternatives. Both must be present.
- Installing too early means regenerating parallax data after texture changes; install after the main texture stack is locked.

### Acceptance Criteria

- Auto Parallax applies parallax offsets consistently across all installed parallax-enabled meshes without visual artifacts.
- Complex Parallax Materials database loads correctly and supplies material parameters to supported meshes.

## Physically Based Rendering (PBR) Support → `02b Community Shaders`

### Core Idea

- PBR is not a separate renderer choice here; it is an adoption strategy layered on top of `Community Shaders`. → `02b`
- The real decision is how selectively the list should use PBR-ready materials and conversions.

### Options

- Minimal PBR option: enable support but only use a few showcase conversions.
- Balanced PBR option: use curated conversions for major high-visibility surfaces.
- Full PBR push: broad world coverage with much higher maintenance and consistency risk.

### Recommendation

- Use the balanced PBR option with a broad AIO base plus targeted terrain and rock overrides.
- Use `Vanilla PBR AIO` as the primary base — single 11.5 GB download covering all architecture, clutter, actors, and dungeons with a consistent vanilla-faithful art direction.
- Fill the landscape gap with `Faultier's PBR Landscapes 4k` (terrain textures only, not the Faultier's AIO).
- Override mountains and rocks with `Enhanced Rocks and Mountains - Complex Material and PBR` (load after VPBR).
- Layer `Tomato's PBR Whiterun` and `Tomato's PBR Farmhouses 2.0` as optional specialist overrides on top of VPBR.
- Community Shaders now ships `Dynamic Cubemaps` (real-time environment capture for specular reflections) and `Image-Based Lighting (IBL)` as standard features. These improve PBR material response (especially on metal, water, and wet surfaces) without additional mods. Verify that the chosen PBR texture set takes advantage of both before adding extra reflection or cubemap mods. → `02b`

### Priority Coverage

#### Priority 1 Areas

- City architecture seen constantly in travel and third person
- Farmhouses and rural buildings
- Nordic ruins and dungeon stonework
- High-visibility clutter and props

#### Priority 1 Mods

- Broad coverage base: `Vanilla PBR AIO` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/174091> (11.5 GB) — converts all vanilla architecture, clutter, actors, statues, dungeons, and food to PBR materials. True to the vanilla aesthetic with improved normals, parallax, and material response. Based on `Vanilla Remastered` and `The New Normals`. Does not cover landscapes or gear (filled by mods below). Requires Community Shaders, SMIM, and PGPatcher. → `02b`
- Landscape terrain: `Faultier's PBR Landscapes 4k` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/125308> (3.0 GB, separate file from the Faultier's AIO) — terrain at 4k, mountains at 8k. Covers the landscape gap that VPBR leaves. Do NOT install `Faultier's Skyrim AIO` — VPBR replaces that non-landscape coverage and the two would conflict. → `02b`
- Mountain and rock meshes: `Enhanced Rocks and Mountains - Complex Material and PBR` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/121336> — modern rock and mountain overhaul shipping PBR/CS-native textures. Replaces VPBR's included mountain textures in the load order (load VPBR first, then ERM over it). Install both main files: `ERM - Enhanced Rocks and Mountains` (8.5 MB, v1.1.2, meshes) then `ERM - Textures` (395.3 MB, v1.1.0, choose PBR in FOMOD). Do NOT install `Blended ERM` (non-PBR) or `Complex Material Textures Collection` (for other mods, not ERM). → `02b`
- Optional Whiterun override: `Tomato's PBR Whiterun` (v1.2.PBR) - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/135771> — install `Tomato's Whiterun PBR 2k` (735.5 MB, SMIM fixes merged in), skip the 4k (2.0 GB). PBR's normal/roughness maps do the perceptual work at any resolution, and 2k reads cleanly at 4K output with ~1.3 GB VRAM saved. Optional add-ons: `Improved Dragon Carvings` (beta, 2k) and `PBR Talos` layer on top. Layered over VPBR where Tomato's specialist treatment improves on the base. → `02b`
- Optional farmhouse override: `Tomato's PBR Farmhouses 2.0` (v2.0.PBR) - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/135774> — install `Tomato's PBR Farmhouses - Grey - 2K` (84.2 MB, weathered grey wood fits the grim-dark northern palette), skip the 4k variants (274-321 MB) for the same PBR-efficiency reason. Optional `WSU PBR Farmhouse windows patch` if Window Shadows Ultimate is in the lighting stack. Layer after VPBR. → `02b`

#### Priority 2 Areas

- Select landscape regions with a strong material identity
- City sets from settlement overhauls that survive later testing
- Broader regional packs that fill obvious gaps

#### Priority 2 Candidate Mods

- Landscape testing option: `A Cathedralist's PBR Landscape` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/137333> → `02b`
- Broader landscape option: `TomatoRim PBR Landscapes AIO` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/177621> → `02b`
- City-overhaul support: `PBR textures for The Great Cities Collection` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/133493> → `02b`
- Discovery hub for later expansion: `PBR Hub` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/139889> → `02b`

#### Areas To Defer For Now

- Full-world landscape replacement
- Low-visibility assets that add patching and VRAM cost without changing moment-to-moment feel much
- Niche regional conversions before the core city, dungeon, and farmhouse look is settled

#### Working Rollout Order

- Install `Vanilla PBR AIO` as the broad PBR base covering architecture, clutter, actors, and dungeons. → `02b`
- Install `Faultier's PBR Landscapes 4k` to fill the terrain gap that VPBR leaves. → `02b`
- Install `Enhanced Rocks and Mountains - Complex Material and PBR` after VPBR so its rock and mountain textures override VPBR's included mountain textures. → `02b`
- Optionally install `Tomato's PBR Whiterun` and `Tomato's PBR Farmhouses 2.0` after VPBR where Tomato's specialist treatment improves on the base. → `02b`
- Run PGPatcher last — all PBR texture mods above require it to render correctly in-game. → `02b`
- Only after the core stack passes visual and performance review, test optional landscape additions such as `A Cathedralist's PBR Landscape` or `TomatoRim PBR Landscapes AIO` (Faultier's Landscapes already covers the terrain baseline). → `02b`

### Risks & Compatibility

- VPBR is newer (March 2026) than Faultier's PBR Skyrim (established v3.0) — single-point-of-failure risk for the broadest coverage layer if abandoned. Active development so far (v1.0 → v1.32 in ~2 months).
- Faultier's PBR Landscapes 4k + ERM cover VPBR's landscape gap, and `Faultier's PBR Armors and Clothes` covers the gear gap — the full VPBR ecosystem is now addressed.
- VPBR includes mountain textures that must be overridden by ERM in the load order. Load ERM after VPBR.
- Do NOT install `Faultier's Skyrim AIO` alongside VPBR — they conflict on the same texture paths.
- PBR ambition can outrun the rest of the stack if weather, trees, water, and lighting are not held to a similar quality bar.

### Acceptance Criteria

- Chosen PBR assets clearly improve material definition in motion, not just in still shots.
- The selected coverage level remains visually coherent across major play spaces.
- No obvious mismatch appears between PBR and non-PBR assets in the same scene.
- Performance cost stays acceptable relative to the baseline CS stack.

## Candidate TODO Additions → `02b`, `02d`, `02e`, `02f`

### Textures, Clutter & Meshes → `02b`

- `Racemenu Enhancer` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/182536>) — character creation RaceMenu enhancer → `02b`
- `Visual Animated Enchants` — weapon enchantment VFX replacer → `02b`
- `Apophysis Dragon Priests Masks` — dragon priest mask retexture → `02b`
- `Runed Nordic Weapons` — Nordic weapon mesh/texture replacer → `02b`
- `Elven Armor replacer glow` — Elven armor retexture with glow maps → `02b`
- `Elsopa Iron weapons redone` — iron weapon retexture → `02b`
- `Ennead Banners and Shields` — banner/shield retexture → `02b`
- `Elsopa Quivers Redone` — quiver retexture → `02b`
- `Believable greatswords sheathed` — greatsword sheath mesh fix → `02b`
- `ElSopa - HD Medieval anvil` — anvil retexture → `02b`
- `Elsopa Grindstones` — grindstone retexture → `02b`
- `Renthal Workbench` — workbench retexture → `02b`
- `VFX Edit AIO - Spells Retexture` — spell visual effect retexture → `02b`
- `JFresh's Mead Stein` — mead stein retexture → `02b`
- `SD's Horn Candles` — candle retexture → `02b`
- `JS Dragon Claws` — dragon claw retexture → `02b`
- `Skyrim remastered soul gems` — soul gem retexture → `02b`
- `Rally's Market Stalls` — market stall retexture → `02b`
- `KanJS Spell Tomes Animated` — animated spell tome mesh replacer → `02b`
- `Alt Markarth Forge` — Markarth forge retexture → `02b`
- `HD Unique Handmade signs` — inn/shop sign retexture → `02b`
- `Stay Arrows Stay` — keeps arrows lodged in bodies and world → `02b`
- `One Quiver to rule them all` — quiver attachment positioning fix → `02b`
- `Nordic Windhelm` / `Tomato's Windhelm` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/174492>) — Windhelm city retexture with PBR/Complex Material → `02b`
- `Distinguished Drapery` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/173894>) — curtain/hanging fabric retexture → `02b`
- `The Mists of Blackreach` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/179487>) — Blackreach mist/fog VFX → `02b`
- `Better Wine Labels - Vanilla and LotD` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/34698>, PBR Patch: <https://www.nexusmods.com/skyrimspecialedition/mods/175588>) — wine bottle label retexture with LoTD support → `02b`
- `Diverse Windmill Sails - BOS` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/121759>) — windmill sail variety via Base Object Swapper → `02b`
- `Diverse Foods - BOS` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/91599>) — food variety via Base Object Swapper → `02b`
- `Diverse Candles - BOS` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/94369>) — candle variety via Base Object Swapper → `02b`
- `Better Pelts and Hides` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/87277>) — pelt/hide retexture → `02b`
- `Fluffy Hanging rabbits` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/89148>) — hanging rabbit mesh retexture → `02b`
- `FrankBlack's Honey in a Jar` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/104496>) — honey jar retexture → `02b`
- `slightly Better Nordic Henges - BOS` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/97162>) — Nordic henge visual upgrade via BOS → `02b`

### Lighting → `02d`

- `KD Realistic Fireplaces` — fireplace visual upgrade → `02d`
- `EmbersXD Torch Edit` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/134219>) — torch visual edit for Embers XD → `02d`

### Weather & Sky → `02e`

- `Draco's fantasy auroras` — aurora/sky visual replacer → `02e`
- `Draco's moons` — moon visual replacer → `02e`

### Flora & Landscape → `02f`

- `Flora Additions - Water Plants` — water plant flora additions → `02f`
- `Bigger trees` — tree size multiplier → `02f`
- `Grassreach - Blackreach Grass` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/179420>) — Blackreach grass mod → `02f`
- `Freak's Floral Solstheim` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/138161>) — Solstheim flora replacer → `02f`
- Road texture options: `Simplest Roads` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/111255>), `Simple Complex Parallax Roads` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/173826>), `Blended Roads` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/8834>) — road texture alternatives; Blended Roads already baseline candidate → `02f`
