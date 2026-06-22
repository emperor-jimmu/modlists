# Modern Graphics

**MO2 Separator:** `02 Graphics` → `02b Community Shaders`, `02c Textures & Meshes`, `02d Lighting`, `02e Weather & Water`, `02f Terrain & Flora`, `02g Characters & Creatures`, `02h LOD & Distant Detail`

## Community Shaders Core Setup → `02b Community Shaders` → `02b`

### Core Idea

- This subsection owns the actual graphics-framework decision for the shader-first visual stack.
- The goal is to build modern visuals around `Community Shaders`, then layer materials, lighting, weather, water, and distant detail on top of that baseline. → `02b`

### Options

- Primary framework route: `Community Shaders` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/86492> → `02b`
- Non-CS alternatives are out of scope unless the project abandons the shader-first direction entirely.

### Recommendation

- Use `Community Shaders` as the core framework. → `02b`
- Validate `SKSE64` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/30379>, `Address Library for SKSE Plugins` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/32444>, and any current page-listed prerequisites before judging later graphics layers. → `02b`
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
- `Embers XD` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/37085> (works with `Community Shaders`; `CS Light` (<https://www.nexusmods.com/skyrimspecialedition/mods/138443>) → `02c`
- Sky-driven lighting companion:
- `Skylighting - Community Shaders` (separate Nexus download; enables soft ambient sky occlusion) → `02b`
- Support-only branch:
- `Skyrim Upscaler - DLSS FSR2 XeSS` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/80343> → `14`

### Recommendation

- Use the CS 1.7+ main download (single file from the main CS page) and enable core modules via FOMOD at install time. Install optional plugins separately — see list above.
- Start with the conservative tier (Screen Space Shadows, Grass Lighting, Water Effects, Wetness Effects).
- Promote to the balanced tier (add Terrain Shadows) only after trees, grass, weather, water, and LOD choices are stable enough that the extra depth is worth measuring.
- Treat SSGI and Subsurface Scattering (high-end tier) as optional luxury features, not a baseline requirement.
- Treat `Embers XD` as the fire and ember category answer rather than pretending the rest of the CS stack covers that visual gap by itself. It is the standard Community Shaders fire-and-particle pick: 140K+ endorsements, actively maintained. CS Light v1.x included an Embers XD FOMOD option, but v2.0.0 removed common lighting — Embers XD handles its own fire/ember particle lights natively with CS. Install after the main lighting overhauls (Lux, ELFX) so it can inherit their campfire and hearth placements. → `02c`
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

## Physically Based Rendering (PBR) Support → `02b Community Shaders`

### Core Idea

- PBR is not a separate renderer choice here; it is an adoption strategy layered on top of `Community Shaders`. → `02b`
- The real decision is how selectively the list should use PBR-ready materials and conversions.

### Options

- Minimal PBR option: enable support but only use a few showcase conversions.
- Balanced PBR option: use curated conversions for major high-visibility surfaces.
- Full PBR push: broad world coverage with much higher maintenance and consistency risk.

### Recommendation

- Use the balanced PBR option.
- Prioritize surfaces where material response is most visible in normal play: stone, metal, wood, wet surfaces, ruins, and high-detail clutter.
- Do not commit to a full-world PBR conversion until visual consistency, performance cost, and maintenance burden are proven acceptable.
- Community Shaders now ships `Dynamic Cubemaps` (real-time environment capture for specular reflections) and `Image-Based Lighting (IBL)` as standard features. These improve PBR material response (especially on metal, water, and wet surfaces) without additional mods. Verify that the chosen PBR texture set takes advantage of both before adding extra reflection or cubemap mods. → `02b`

### Priority Coverage

#### Priority 1 Areas

- City architecture seen constantly in travel and third person
- Farmhouses and rural buildings
- Nordic ruins and dungeon stonework
- High-visibility clutter and props

#### Priority 1 Candidate Mods

- Broad starter coverage: `Faultier's PBR Skyrim` (v3.0) - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/125308> → `02b`
    - **Faultier's Skyrim AIO 2k** (9.2 GB) — covers clutter, furniture, creatures, Nordic ruins, Dwemer ruins & Markarth, Solitude, Windhelm, and all other non-landscape categories. 2k textures read cleanly at 4K with PBR material definition doing the heavy lifting; the 4k AIO (19.7 GB) adds marginal raster gain for a steep size cost.
    - **Faultier's PBR Landscapes 4k** (3.0 GB) — separate from the AIO; terrain at 4k, mountains at 8k. Landscapes benefit from full-res height maps and mountain silhouettes are visible at great distance.
    - **Faultier's PBR Road Signs - English** (42.7 MB, Update Files section) — not included in the AIO. Supports Cutting Room Floor. Install after the AIO.
    - PG Patcher (ParallaxGen) must be run after installation or most PBR textures won't render in-game.
- Full-vanilla PBR conversion: `Vanilla PBR AIO` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/174091> — converts all vanilla textures to PBR materials. Broadest coverage option but higher VRAM cost than targeted city packs. Evaluate as an alternative direction to the targeted per-city approach. → `02b`
- Whiterun: `Tomato's PBR Whiterun` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/135771> → `02b`
- Farmhouses: `Tomato's PBR Farmhouses 2.0` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/135774> → `02b`
- Markarth and Dwemer: `PBaRkarth - PBR texture mod for Markarth and Dwemer` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/144535> → `02b`
- Solitude: `laogu's PBR Solitude` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/173698> → `02b`
- Nordic ruins: `Exist's Nordic Ruins PBR and Complex Parallax Material` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/118014> → `02b`

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

- Install `Faultier's Skyrim AIO 2k` + `Faultier's PBR Landscapes 4k` as the paired PBR base. Landscapes are a separate Nexus file and must be downloaded and installed independently; they are not a deferred branch. → `02b`
- Install `Faultier's PBR Road Signs - English` from the Update Files section after the AIO. → `02b`
- Add one city test set such as `Tomato's PBR Whiterun`. → `02b`
- Add rural support with `Tomato's PBR Farmhouses 2.0`. → `02b`
- Add one dungeon or ruin test set such as `Exist's Nordic Ruins PBR and Complex Material`. → `02b`
- Add one stone-heavy city test set such as `PBaRkarth`. → `02b`
- Only after those pass visual and performance review, test an additional landscape branch such as `A Cathedralist's PBR Landscape` or `TomatoRim PBR Landscapes AIO` (Faultier's Landscapes already covers the terrain baseline). → `02b`

### Risks & Compatibility

- Mixed asset coverage can make regions look inconsistent if only some adjacent surfaces receive convincing PBR treatment.
- Some conversions look excellent in screenshots but clash with the broader art direction in motion.
- PBR ambition can outrun the rest of the stack if weather, trees, water, and lighting are not held to a similar quality bar.

### Acceptance Criteria

- Chosen PBR assets clearly improve material definition in motion, not just in still shots.
- The selected coverage level remains visually coherent across major play spaces.
- No obvious mismatch appears between PBR and non-PBR assets in the same scene.
- Performance cost stays acceptable relative to the baseline CS stack.

## Texture Overhauls By Material Type → `02c Textures & Meshes`

### Core Idea

- Use one broad visual base where helpful, then layer targeted replacements by material family instead of blindly stacking overlapping AIO packs.
- Material clarity matters more than raw texture count: stone should feel cold and weighty, wood should look worn and natural, metal should read clearly in third person, and clutter should reward close inspection.

### Options

- Broad-base option: use a large coherent pack and patch obvious weak spots.
- Material-first option: pick best-in-class textures for each asset family separately.
- Hybrid option: use a broad base for coverage, then override it in the categories that matter most.

### Recommendation

- Use the hybrid option.
- Start with a broad base only if it gives good gap coverage without fighting the balanced PBR plan.
- Override aggressively in the most visible categories: landscapes, rocks, city architecture, ruins, clutter, and clothing.
- Treat `Skyking Signs` and `Skyking Unique Signs` as an optional-sign visual upgrade branch. Signs are a medium-visibility surface in normal exploration, and the recommendation is to include them only if the final texture stack does not already cover sign textures adequately. → `02c`
- Treat `Skyland Imperial and Nordic Tents` as an optional tent-texture upgrade. Tents are visible in camps and caravans but are not high-priority enough to block the rest of the texture stack. Include it as a low-effort visual improvement with no ESP or conflict cost. → `02c`

### Material Priorities

#### Broad Base Candidates

- `Skyland AIO` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/34179> → `02c`
- `Skurkbro's Retexture Project AIO` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/63148> → `02c`

#### Landscape And Ground Materials

- `Skyking Fantasia Landscapes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/107256> → `02c`
- `Rally's Solstheim Landscapes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/35590> → `02c`

#### Rocks And Mountains

- `Enhanced Rocks and Mountains - Complex Material and PBR` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/121336> → `02c`

#### City And Settlement Surfaces

- `Riton Whiterun` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/103408> → `02c`
- Keep city textures aligned with whichever PBR city sets survive testing so cities do not split visually between PBR and non-PBR districts.

#### Ruins And Dungeon Stone

- `Exist's Nordic Ruins PBR and Complex Parallax Material` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/118014> → `02c`

#### Clutter And Small Props

- `RUSTIC CLUTTER COLLECTION - Special Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/5795> → `02c`
- `Snazzy Furniture and Clutter Overhaul (SFCO)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/2414> → `02c`
- Coordinate with `Faultier's PBR Skyrim` where clutter categories are better served by material-aware upgrades. → `02c`
- `SFCO` is the depth companion to `RUSTIC CLUTTER COLLECTION`: where RUSTIC retextures existing clutter meshes with higher-resolution diffuse and normal maps, SFCO adds new clutter objects (pottery, silverware, books, alchemy tools, foodstuffs, and furniture models) that fill the gaps vanilla clutter leaves in interiors and shops. → `02c`

#### Metal And Equipment

- `Dwemer Armors and Weapons Retexture SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/93088> → `02c`
- Treat it as the gear-side companion to `PBaRkarth` and `CC's HD Dwemer Automatons - Remastered`, so Dwemer ruins, machines, and wearable loot do not land in three visibly different texture languages. → `02c`

#### Clothing And Fabric

- `RUSTIC CLOTHING - Special Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/4703> → `02c`

#### Signs

- `Skyking Signs` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/112902> — high-quality sign texture and mesh replacer by Skyking. Replaces all shop and inn signs with new meshes that sway in the wind and use wood materials. No ESP. Optional companion: `Skyking Unique Signs` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/114940> — gives each shop a unique sign design paired with the base `Skyking Signs` mod. Offers BOS and plugin-based install options. → `02c`

#### Tents

- `Skyland Imperial and Nordic Tents` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/57002> — 4K tent texture replacer by Skyking for Imperial and Nordic tents. Includes a new mesh for the large Nordic fur tent with an awning for Khajiit caravan camps. No ESP. → `02c`

### Risks & Compatibility

- A hybrid stack becomes hard to maintain if override relationships are not tracked clearly.
- City textures that ignore the winning PBR direction can make regions feel stitched together.
- Landscape, rock, and ruin winners can still clash once weather and lighting are finalized.
- Dwemer gear textures need to stay visually aligned with the chosen Dwemer ruin and automaton look or the same dungeon can feel pieced together asset-by-asset.

### Acceptance Criteria

- Every major material family has a clearly chosen source mod or fallback.
- No major region looks visually stitched together from conflicting texture styles.
- Clutter and architecture remain readable from third-person distance and still hold up close.
- The final texture stack is understandable enough to maintain without guesswork.
- Dwemer ruins, automatons, and vanilla Dwemer gear read as one coherent visual family.

## Mesh Improvements And Parallax Support → `02c Textures & Meshes`

### Core Idea

- Improve shape quality and silhouette readability without turning the mesh stack into an unmaintainable conflict swamp.
- The best outcome is a hybrid stack: stable baseline mesh improvements, targeted fixes where they matter, and parallax support only where the chosen textures actually benefit from it.

### Options

- Classic baseline option: `SMIM` as the main mesh foundation. → `02c`
- High-poly-heavy option: stack broad high-poly replacers more aggressively for maximum close-up fidelity.
- Hybrid option: `SMIM` plus targeted upgrades and deliberate parallax support. → `02c`

### Recommendation

- Use the hybrid option.
- Keep `Static Mesh Improvement Mod - SMIM` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/659> as the baseline. → `02c`
- Add `Unofficial Material Fix` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/21027> after SMIM (hard-requires SMIM; corrects material records used by `Community Shaders` PBR pipeline, 21k endorsements). → `02c`
- Treat `High Poly Project` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/12029> as optional and only keep it if the extra geometry earns its conflict cost. → `02c`
- Use `Simplicity of Snow` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/56235> early if the final texture and mountain stack needs snow-consistency support. → `02c`
- Use `FYX - Water Mesh Optimization` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/97713> only if the chosen water setup benefits from it. → `02c`
- Add `FYX - Eastern Empire Company Building` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/86526> as a mesh fix for the Eastern Empire Company building in Solitude — a targeted stopgap before larger city overhauls are settled. → `02c`
- Add `FYX - Nordic Doors and Traps Collisions` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/100295> as a collision geometry fix for Nordic doors and traps that stops the player's camera clipping through doorways and trap hitboxes. → `02c`
- Add `FYX - Riften - Window Consistency` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/182707> as a mesh consistency fix for Riften's windows, aligning their appearance across the city's buildings. A targeted visual stopgap before larger city overhauls are settled. → `02c`
- Add `FYX - 3D Stockades` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/65104> as a mesh replacement for stockade walls and barricades, adding 3D geometry where vanilla uses flat 2D textures. Improves readability and visual depth at typical third-person distance. → `02c`
- Add `Explosion Collision Fix` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/154076> as a physics fix that prevents explosion-force spells from launching large objects into the player's camera, resolving a longstanding destructible-physics annoyance. → `02c`
- Add `Flame VFX Edit` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/109414> as a mesh-only fire spell effect improvement that is compatible with Community Shaders. → `02c`
- Add `Auto Parallax` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/79473> or `Complex Parallax Materials` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/95134> only after the texture stack is mostly chosen. → `02c`
- Use the PGPatcher workflow in [`modlist-02a.md`](modlist-02a.md) for late-stage parallax generation rules. → `02c`

### Risks & Compatibility

- `High Poly Project` can add overlap and complexity for surprisingly small on-screen gains. → `02c`
- Parallax can look excellent on some surfaces and broken on others if support is inconsistent.
- Snow, rock, landscape, and water meshes should not be finalized independently of the texture and water winners.

### Acceptance Criteria

- Chosen mesh upgrades improve silhouette quality in normal gameplay, not only close-up stills.
- Parallax adds convincing depth without obvious stretching or artifacting.
- Snow, rock, and architecture transitions remain coherent under the chosen texture stack.
- Mesh conflicts remain understandable and patchable.

## Lighting Overhaul Strategy → `02d Lighting`

### Core Idea

- Build lighting as a coherent layer that supports the shader-first visual direction, stronger world scale, and third-person readability.
- Interior mood matters, but so do readability, compatibility cost, and coherence with the final weather route.

### Options

- Heavy bespoke lighting option: strong authored changes with larger patch requirements.
- Vanilla-plus lighting option: closer to vanilla light placement and lower conflict risk.
- Hybrid option: stronger lighting where it matters most, with more compatibility-conscious coverage elsewhere.
- Window-shadow and light-object companion layer: `Window Shadows Ultimate` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/150494>, `iLluminous Elementals` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/138128>. → `02d`
- CS-tonemapping alternative: `True Light` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/135488> as a documented alternative to `Lux` for projects that want CS-native tonemapping instead of an ENB-bridged lighting overhaul. → `02d`
- CS-native full lighting alternative: `CS Light` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/138443> as a Community Shaders-native lighting replacement for projects that want a single CS-driven stack with no ENB bridge. → `02d`
- ELFX baseline prerequisite: `Enhanced Lights and FX` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/2424> as the required base for `ELFX Shadows` and the documented ENB-bridged fallback route. → `02d`

### Recommendation

- Start with a hybrid evaluation centered on two serious Community Shaders-friendly routes:
- `Lux` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/43158> plus `Lux CS` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/153919> → `02d`
- `Relighting Skyrim SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/8586> plus `Luminosity Lighting Overhaul - The Cathedral Concept` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/16830> → `02d`
- Keep `ELFX Shadows` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/63790> as the main alternate route if `Lux` proves too patch-heavy or too moody. Note that `ELFX Shadows` hard-requires the base `Enhanced Lights and FX` mod; both must be installed together. → `02d`
- Treat `CS Light` as the Community Shaders-native single-stack lighting alternative. If the project decides `Lux` is too patch-heavy AND `True Light` is too tonemapping-focused, `CS Light` is the canonical CS-driven interior/exterior lighting overhaul. → `02d`
- Treat `Window Shadows RT - Updated` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/111091> and `Ambiance - A Vanilla(plus) Ambient Lighting Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/46383> as supporting or fallback options, not the primary first pick. → `02d`
- Treat `Window Shadows Ultimate` as the modern CS-native window-shadow companion. Unlike the older `Window Shadows RT - Updated`, it is built for Community Shaders and its features, casts real window light into interiors, and works with the chosen `Lux` or `Relighting` route without doubling their coverage. It is the documented next step beyond `Lux Orbis` for interior depth. → `02d`
- Treat `iLluminous Elementals` as the elemental-creature and magic-glow companion. It adds light to creatures and spell effects that would otherwise feel flat in dark interiors and shadowed dungeons, which fits the grim-dark tone by making ice atronachs, flame atronachs, and similar creatures read as proper threats under the lighting choice above. → `02d`
- Treat `True Light` as the documented CS-tonemapping alternative to `Lux + Lux CS`. If the project decides `Lux` is too patch-heavy or its ENB-bridged style is not the right fit, `True Light` is the canonical CS-native replacement. → `02d`
- Treat `NAT.CS III` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/139567> as a later weather decision, not the reason to choose an interior-lighting stack. → `02d`

### Risks & Compatibility

- `Lux` can create substantial patch maintenance once the interior and worldspace stack grows. → `02d`
- Very dark interiors can look impressive in screenshots and still feel worse in long play sessions.
- Choosing lighting before weather is settled can produce a mismatched overall visual tone.

### Acceptance Criteria

- Interiors feel atmospheric without becoming frustrating to navigate or fight in.
- Major interior spaces remain readable in third person with the planned UI and camera style.
- Patch burden remains reasonable for the chosen city, dungeon, and player-home stack.
- Lighting mood stays coherent with the final shader, texture, and weather direction.

## Weather And Atmosphere → `02e Weather & Water` → `02e`

### Core Idea

- Weather should be chosen as part of the Community Shaders presentation layer, not as an isolated plugin choice.
- The target is a grounded but modern visual tone that still preserves forest, mountain, and travel readability in third person.

### Options

- Native Community Shaders weather option: build around a package made specifically for CS.
- Legacy weather plus CS adaptation option: use an older established weather family with newer CS support.
- Vanilla-plus atmosphere option: favor consistency and readability over the most dramatic grading.
- CS-adaptation prerequisite: `RAID Weathers` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/63116> is the base mod that `Raid Weathers CS` adapts to Community Shaders. Both must be installed together; the CS variant only patches the base. → `02e`

### Recommendation

- Start with two primary Community Shaders-native candidates:
- `NAT.CS III` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/139567> → `02e`
- `Azurite III CS` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/162153> — note that this requires the balanced CS add-on tier or higher (enables SSGI, Screen Space Shadows, Grass Lighting, Wetness Effects in the CS FOMOD), unlike NAT.CS III which works on the conservative stack. → `02e`
- Keep `Raid Weathers CS` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/171041> as the gameplay-clarity alternate route. → `02e`
- Treat older families such as `Obsidian Weathers and Seasons` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/12125>, `Obsidian CS` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/162627>, and `Cathedral Weathers and Seasons` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/24791> as fallback benchmarks rather than main recommendations. → `02e`
- Treat `Azurite Weathers III - Enhanced` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/150269> and `Skydreamus Community Shaders Presets for NAT.CS III and Azurite III CS` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/171145> as later tuning layers, not the first decision. → `02e`

### Risks & Compatibility

- A weather setup that looks stunning in screenshots can flatten gameplay readability in forests, storms, or dusk travel.
- Overly aggressive fog, contrast, or dark nights can work against third-person exploration and combat.
- Preset stacking can make the final visual chain harder to reason about if weather, CS options, and external presets all push tone differently.

### Acceptance Criteria

- Exterior scenes feel modern and atmospheric without reducing third-person readability.
- Forests, mountains, and cities remain distinct and readable across clear and bad weather.
- Rain, fog, and storms improve mood without obscuring travel too heavily.
- The chosen weather route complements the selected lighting strategy and CS modules.

## Water Visuals → `02e Weather & Water` → `02e`

### Core Idea

- Treat water as a full visual stack: base water look, Community Shaders water features, mesh support, foam behavior, and waterfall presentation.
- The target is cold, readable, grounded water that holds up in motion during travel.

### Options

- Community Shaders-native water route: build around CS water support and a water setup designed for CS.
- Conservative compatibility route: simpler base water with CS modules doing most of the modern visual work.
- Legacy comparison route: older water overhauls only if the CS-first route fails.

### Recommendation

- Start with the Community Shaders-native water route.
- Use `Water Effects - Community Shaders` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/112762> as the baseline shader feature layer. Community Shaders 1.5.2+ also ships a `Unified Water` module that standardises water rendering across the CS stack — evaluate whether it replaces the need for a standalone water base before committing to external water mods. → `02e`
- Test `A Water Made For CS in mind` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/172959> as the primary base-water candidate. → `02e`
- Only add `FYX - Water Mesh Optimization` if it clearly improves shorelines, water edges, or performance with the chosen setup. → `02e`
- Keep `Simplicity of Sea - Water Mod with ENB and Community Shaders Displacement Textures` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/56520> as the main alternate comparison, layered on top of `Simplicity of Sea - Water Color and Transparency Tweaks` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/148761> which is its hard color/transparency dependency. → `02e`
- Treat `Realistic Water Two SE (RWT)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/2182> and `Water for ENB` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/37061> as legacy baselines, not first picks. → `02e`
- Evaluate `Natural Waterfalls` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/87261> and `Rally's Water Foam` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/28922> only after the main water base is selected. → `02e`
- Add `Splashes Of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/47710> as the projectile-based water splash and ripple layer. It is a powerofthree SKSE plugin that extends water impact effects (arrows, spells, shouts) to all water surfaces and adds dynamic displacement ripples. Works independently of the chosen water base and has Community Shaders compatibility (v1.4.1+ includes CS-specific FPS optimizations). Treat it as a baseline inclusion rather than an optional evaluation. → `02e`
- Add `Loki's Wade In Water` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/42854> as the water-interaction layer for wading. Adds dynamic water ripple effects and footstep audio when the player or NPCs walk through shallow water. Mesh and animation replacer, no ESP, compatible with all water bases and Community Shaders. Complements the projectile-based splash layer by adding the body-in-water interaction side. → `02e`
- Optional water-surface VFX: `Water Debris` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/171371> (v1.0.2, Apr 2026) — adds floating debris (twigs, leaves, particles) to water surfaces, making still and moving water feel more organic. SKSE plugin, no ESP, compatible with all water bases and Community Shaders. Evaluate after the main water base is stable. → `02e`
- Optional underwater VFX: `Underwater Bubbles - SKSE Plugin` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/175559> (v1, Mar 2026) — adds bubble particle effects when the player or NPCs are submerged, improving underwater spatial awareness and visual feedback. SKSE plugin, no ESP. Complements the water-surface stack without touching water records. → `02e`

### Risks & Compatibility

- Water can look strong in still shots and distracting in motion if foam, reflections, or wave response are overdone.
- Water tone can clash badly with the chosen weather route.
- Mesh fixes and waterfall add-ons can help one setup and hurt another.

### Acceptance Criteria

- Rivers, lakes, and coastlines look coherent across clear and bad weather.
- Water remains readable and believable in motion from third-person distance.
- Foam, reflections, and shoreline behavior improve immersion instead of drawing attention to artifacts.
- The final water route fits the CS stack and broader `Elder Wilds` atmosphere. → `02e`

## Terrain, Roads, And Snow → `02f Terrain & Flora` → `02f`

### Core Idea

- Treat terrain, roads, and snow as one connected presentation layer instead of three isolated texture choices.
- This layer has to stay coherent with Community Shaders, PBR support, rock meshes, weather, and later LOD generation.

### Options

- Conservative route: stable landscape base, simpler road setup, reliable snow consistency support.
- Feature-rich route: more dramatic road and worldspace edits with higher patch cost.
- Balanced route: strong landscape and mountain materials, restrained roads, and snow chosen for coherence under CS.

### Recommendation

- Use the balanced route.
- Keep landscape and mountain materials as the visual anchor.
- Prefer a lower-maintenance road solution unless the final worldspace and outskirts plan can clearly absorb a heavier patching route.
- Lock snow only after confirming how it looks with the chosen landscape, rock, weather, and lighting winners.
- Add `Better Dynamic Snow SE` and `Better Dynamic Ash SE` as the snow-and-ash multistage accumulation layer. Both work with `Simplicity of Snow` and the chosen snow texture baseline; the `BDSPatcher` Synthesis patcher handles mod-added objects automatically. → `02f`

### Candidate Stack

#### Landscape And Terrain

- `Skyking Fantasia Landscapes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/107256> → `02f`
- `Atlantean Landscape - Majestic Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/102170> → `02f`
- `Atlantean Landscape - Complete - Complex Terrain Parallax` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/89542> → `02f`
- `A Cathedralist's PBR Landscape` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/137333> → `02f`
- `TomatoRim PBR Landscapes AIO` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/177621> → `02f`
- `Enhanced Rocks and Mountains - Complex Material and PBR` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/121336> is the modern mountain and rock overhaul (3.5K endorsements, last updated April 2025, PBR/CS-native). New material blending system, no plugins, ships with Complex Material support. Use it as the primary mountain and rock identity in place of `Majestic Mountains`. → `02f`
- `Enhanced Rocks and Mountains - Fix and Addon` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/142493> extends ERM coverage to underground spaces and the Whiterun Skyforge and is the natural companion. Drop the `Majestic Mountains` stack (11052) and `Majestic Mountains Complex Material` (87547) entirely — the author has been inactive since June 2022, the mesh is known to miss snow coverage on rock piles, and the AE compatibility story is worse than ERM's. → `02f`

#### Roads

- `Blended Roads - Light Plugin (ESL)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/171554> → `02f`
- `HD Remastered Blended Roads - 8k 4k 2k 1k` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/63674> — HD hand-made rework of Blended Roads surface textures, designed to pair with the landscape stack. Requires Blended Roads as a base. Choose 2K for performance, 4K for the visual sweet spot; 8K is overkill at this modlist's resolution targets. → `02f`

#### Snow And Support

- `Simplicity of Snow` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/56235> → `02f`
- `Nordic Snow` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/670> → `02f`
- `Nordic Snow - Complex Material` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/133034> → `02f`
- `Hyperborean Snow SE - 8K` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/29283> remains a comparison snow candidate, not a locked baseline. → `02f`
- `Better Dynamic Snow SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/9121> — adds multistage snow accumulation and directional snow on objects, with terrain-blended snow coverage. Works alongside `Simplicity of Snow` and the chosen snow texture baseline; the `BDSPatcher` Synthesis patcher handles mod-added objects. → `02f`
- `Better Dynamic Ash SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/54754> — applies the same multistage accumulation logic to Solstheim's ash coverage, giving the island a distinct visual identity matching the snow system. Companion to `Better Dynamic Snow SE`; the Synthesis `BDSPatcher` handles both. → `02f`
- `Enhanced Rocks and Mountains - Complex Material and PBR` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/121336> → `02f`

### Risks & Compatibility

- Snow can look good in isolation and fail once mixed with mountains, roads, and weather-heavy scenes.
- Heavy terrain parallax can look impressive up close while adding artifact risk or visual noise in motion.

### Acceptance Criteria

- Terrain remains readable and coherent across tundra, forest, mountain, and snowy regions.
- Roads fit the wilderness tone without creating unreasonable compatibility debt.
- Snow blends naturally with nearby rocks, roads, and terrain materials under the selected weather route.
- The final terrain, road, and snow stack supports later grass, tree, and LOD work.

## Flora Visuals → `02f Terrain & Flora` → `02f`

### Core Idea

- Flora is the ground-level readability layer between terrain materials and later tree coverage.
- It should improve grass density, wildland texture, and plant variety without making traversal unreadable or turning grass support into constant patch work.

### Options

- Controlled baseline: one strong grass mod plus selective plant replacers and minimal support patches.
- Dense forest-floor route: baseline grass plus extra undergrowth and forest clutter for maximum wilderness feel.
- Mixed route: readable general grass coverage with selective density boosts and better close-range plants.

### Recommendation

- Use the mixed route.
- Start with `Skoglendi - A Grass Mod` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/93944> as the baseline. → `02f`
- Use `Origins Of Forest - 3D Forest Grass` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/45719> as the main density enhancer only if forests still feel too sparse after terrain and tree choices are clearer. → `02f`
- Use `Mari's flora` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/45952> as the supporting plant replacer instead of treating flora as one giant all-in-one decision. → `02f`
- Add `Flora Orientalis` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/64041> and `Waterplants` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/6092> to the grass baseline to satisfy `Vinland Grass Patch - Skoglendi - Flora Orientalis - Folkvangr` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/95273> and the broader mixed-route coverage targets. → `02f`
- Keep `Folkvangr - Grass and Landscape Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/44899> as the main heavier alternate. → `02f`
- Keep `Vinland Grass Patch - Skoglendi - Flora Orientalis - Folkvangr` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/95273> and `QW's Grass Patch 2` in mind only after the final grass combination is narrow enough to justify patch-hub planning. → `02f`
- Add `Cathedral - 3D Stonecrop` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/110726> and `DrJacopo - 3D Tundra Shrubs` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/108747> as 3D plant mesh replacers that swap 2D billboard plants for photorealistic models with proper depth. These are mesh-only (no ESP) and layer cleanly on the grass baseline. → `02f`
- Expand the 3D plant replacer layer with the full Cathedral 3D series: `Cathedral - 3D Clover Plant` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/68793>, `Cathedral - 3D Deathbell` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/76460>, `Cathedral - 3D Dragons Tongue` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/85694>, `Cathedral - 3D Lavender` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/68310>, `Cathedral - 3D Thistle` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/67619>, and `Cathedral - 3D Snow Berries` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/69415>. These are authored by DrJacopo (same creator as Stonecrop and Tundra Shrubs) and use the same mesh-only approach — no ESPs, no patch requirements, complete visual consistency with the existing 3D plant baseline. → `02f`

### Risks & Compatibility

- Grass that looks strong in screenshots can make traversal and combat readability worse in practice.
- Layering multiple grass and plant mods creates real patch and cache maintenance cost.
- Forest-floor enhancers can become too dense once weather fog and heavy tree coverage are added.

### Environment-Plant Optional Additions

- `Grumbledook Ivy` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/151415> — an extensive ivy overhaul using Base Object Swapper to add common ivy (hedera helix) variants to walls, ruins, and structures across Skyrim. Hand-sculpted meshes and textures with wind animations, 1K/2K/4K options, and patches for Nordic Stonewalls and tree stumps/logs. Hard-requires `Base Object Swapper` (already a core dependency). Requires Community Shaders compatibility consideration if using the PBR variant. → `02f`
- `Grumbledook Ivy - Additions (Seasons - Optimization - Patches - Fixes)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/165945> — a companion optimization and patch collection for Grumbledook Ivy that removes unused/duplicated vertices (halving mesh count), fixes collisions, and adds seasonal support. → `02f`
- `Grumbledook Swordferns - Optional PBR` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/163949> — entirely new meshes and textures for Skyrim's swordferns with optional PBR, snowy variants, and extra variation via Base Object Swapper. Hand-sculpted from scratch, 2K/4K options. Hard-requires `Base Object Swapper`; PBR variant requires `Community Shaders`. → `02f`

Treat these as an optional environment-plant detail layer rather than a baseline requirement. The Grumbledook series uses `Base Object Swapper` to place new plant/environment meshes without cell-record edits, so they layer cleanly on the existing flora stack. Evaluate after the main grass, 3D plant replacer, and tree choices are locked, since the ivy and swordfern additions are visual polish that should not drive earlier decisions.

### Acceptance Criteria

- Flora improves wilderness density without obscuring normal travel routes.
- Forest, marsh, tundra, and roadside scenes stay readable in third person.
- Plant quality holds up both at travel distance and during close inspection.
- The final flora stack remains compatible with the chosen terrain, snow, tree, and grass-cache workflow.

## Tree Overhauls For Dense Forests → `02f Terrain & Flora`

### Core Idea

- Trees are the main large-scale world-shaping layer for wilderness mood, canopy silhouette, and perceived regional scale.
- This subsection decides how dense and dramatic forests should become without creating a worldspace patch nightmare or making exploration unreadable.

### Options

- Lower-maintenance baseline: improved tree models with lighter ecosystem burden.
- Dense modern forest route: stronger transformation and larger payoff, but more patching and placement risk.
- Extreme wilderness route: highly transformed forests and roadside coverage with the highest compatibility cost.

### Recommendation

- Use the dense modern forest route, but keep one lower-maintenance fallback alive until LOD and traversal readability are tested.
- Start serious evaluation with `Traverse the Ulvenwald - 3.3 - Trees and Forests of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/57874> as the main dense-forest candidate. → `02f`
- Keep `Happy Little Trees` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/50961> as the safer fallback baseline. → `02f`
- Treat `Fabled Forests` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/94462> and `Nature of the Wild Lands - forest and trees improvement mod` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/63604> as stronger transformation routes to compare only if `Ulvenwald` misses the right balance. → `02f`
- Keep `Happy Little Trees PBR` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/159171> and `Fabled Forests - Ulvenwald - Compatibility Patch (BOS)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/134501> as support-path signals, not baseline decisions. → `02f`

### Risks & Compatibility

- Dense tree overhauls can make roads, structures, and combat spaces harder to read in motion than they appear in screenshots.
- Heavier worldspace tree edits create clipping, blocked sightlines, floating objects, and broad patch debt with settlement or roadside mods.
- A tree overhaul that looks excellent nearby can still fail the list if its distant silhouette is weak.

### Acceptance Criteria

- Forest regions feel denser and more immersive without making travel frustrating.
- Roads, ruins, and normal third-person combat spaces remain readable in wooded areas.
- Tree silhouettes hold up at close, mid, and long distance.
- The chosen tree overhaul stays compatible with flora, terrain, roads, and later LOD workflow at a manageable cost.

## LOD Generation And Distant Detail → `02h LOD & Distant Detail`

### Core Idea

- Treat distant detail as the layer that determines whether `Elder Wilds` feels large and coherent during travel instead of collapsing into obvious pop-in and flat backgrounds. → `02h`
- This subsection covers both the visual target and the practical generation workflow for terrain, trees, objects, town silhouettes, grass cache, and occlusion output.

### Options

- Conservative route: clean functional distant detail with limited extra support layers.
- Balanced route: strong object and tree LOD quality with targeted support mods where they materially help.
- High-end route: aggressive polish with extra texture upgrades, tree-specific optimization, and stricter regeneration discipline.

### Recommendation

- Use the balanced route.
- Make `DynDOLOD`-based distant detail the assumed standard for `Elder Wilds`. → `02h`
- Add support mods only where they visibly improve the chosen tree and texture stack instead of collecting every possible LOD add-on.
- Judge distant detail from actual travel routes, mountain overlooks, and city approaches rather than static showcase shots.

### Required Tools And Dependencies

#### Core Support Mods

- `DynDOLOD Resources SE 3` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/52897> → `02h`
- `DynDOLOD DLL NG` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/97720> → `02h`

#### Optional Distant Detail Support

- `HD LODs Textures SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/3333> → `02h`
- `Happy Little Trees DynDOLOD Optimizations` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/158587> → `02h`

#### Core Workflow Dependencies

- `No Grass In Objects` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/42161> → `02h`
- `Worldspaces with Grass SSEEdit Script for No Grass In Objects` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/55152> → `02h`
- `Grass Cache Fixes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/60891> → `02h`
- `xLODGen Resource - SSE Terrain Tamriel` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/54680> → `02h`

### Build Order And Configuration

#### DynDOLOD Setup And Configuration Instructions

- Install `DynDOLOD Resources SE 3` and `DynDOLOD DLL NG` as normal mods in `Mod Organizer 2`. → `02h`
- Install `No Grass In Objects`, `Grass Cache Fixes`, and `xLODGen Resource - SSE Terrain Tamriel` as support content where applicable. → `02h`
- Keep `TexGen`, `DynDOLOD`, and `xLODGen` registered as MO2 executables, not mixed into normal mod folders. → `02h`
- Treat the Nexus-linked `xLODGen Resource - SSE Terrain Tamriel` as support content; the actual `xLODGen` tool remains part of the external tools chain. → `02h`
- Treat occlusion as generated output, not as a separate mod pick.
- Create dedicated MO2 output mods before generation begins:
- `Grass Cache Output` → `02h`
- `Terrain LOD Output` → `02h`
- `TexGen Output` → `02h`
- `DynDOLOD Output` → `02h`
- `Occlusion Output` → `02h`
- Keep those generated outputs in the `Output` separator. → `02h`
- Do not generate final grass, terrain LOD, `DynDOLOD`, and occlusion outputs until the main tree, terrain, snow, flora, and large worldspace visual picks are mostly stable. → `02h`
- Run order should be:
- confirm load order and conflict resolution first
- generate grass cache through the `No Grass In Objects` workflow → `02h`
- install or update `Grass Cache Output` → `02h`
- run `xLODGen` for terrain LOD once terrain and snow are stable enough to make output meaningful → `02h`
- install or update `Terrain LOD Output` → `02h`
- run `TexGen` → `02h`
- install or update `TexGen Output` → `02h`
- run `DynDOLOD` → `02h`
- install or update `DynDOLOD Output` → `02h`
- generate occlusion data near the end and keep it in `Occlusion Output` → `02h`
- Re-run the relevant generated layers whenever a major tree overhaul, large architecture change, landscape shift, grass change, or LOD-relevant texture pack is replaced.

#### Recommended Starting DynDOLOD Configuration

- First serious pass target: balanced, stability-first output for testing rather than maximum visual range.
- Use `High` as the starting preset if the current setup is already graphics-heavy, and only move above that after checking travel performance and distant coherence. → `02h`
- Generate both object and tree LOD on the first real pass so forest silhouette quality can be judged early.
- Keep large-reference and ultra-aggressive options off for the first pass unless a chosen mod explicitly requires them.
- Use the first pass to answer three questions before tuning upward:
- do distant trees match the chosen overhaul well enough
- do mountain, road, and city approach views feel coherent
- is the performance cost acceptable in real travel scenes
- If using `Happy Little Trees`, test baseline output first and only then compare `Happy Little Trees DynDOLOD Optimizations`. → `02h`
- If using heavier tree overhauls such as `Traverse the Ulvenwald`, `Fabled Forests`, or `Nature of the Wild Lands`, prioritize clean transitions and stable horizons before chasing longer range. → `02h`

#### Baseline Starting Profile For Elder Wilds

- Preset target: `High` → `02h`
- Quality target: balanced object and tree LOD with stable travel performance
- First-pass goal: believable distant forests, readable city approaches, and clean mountain silhouettes
- Keep optional LOD texture upgrades and tree-specific optimization mods disabled at first if the baseline result has not been seen yet.

### Grass Cache And Occlusion Notes

- Use `No Grass In Objects` only after the main grass and flora direction is narrow enough that cache generation is not immediately obsolete.
- Keep `Grass Cache Fixes` in mind as part of the serious grass-cache path, not as an optional afterthought. → `02h`
- Use `Worldspaces with Grass SSEEdit Script for No Grass In Objects` if the final setup needs tailored worldspace grass support instead of assuming every area behaves well by default. → `02h`
- Treat grass cache as invalid whenever the winning grass combination, landscape coverage, or major worldspace edits change materially.
- Regenerate occlusion near the end of a major graphics pass, after grass, terrain LOD, and `DynDOLOD` inputs are no longer moving targets.
- Keep occlusion output separate from all other generated mods so stale occlusion data is easy to identify and replace.

### Validation

#### DynDOLOD Validation Checklist

- No missing distant objects, giant billboard errors, or obviously broken tree lines
- Near and far tree silhouettes transition cleanly enough during normal travel
- City approaches, mountain overlooks, and forest horizons look coherent under the selected weather and lighting route
- Generated outputs are enabled in MO2 and load after the source mods they depend on
- Old generated outputs are replaced when the visual stack changes, rather than left active by accident

### Risks & Compatibility

- Strong near-field visuals can still look broken in motion if distant terrain and tree lines do not match them.
- Optional LOD texture and tree-optimization add-ons can create extra maintenance burden for limited payoff.
- Generating too early produces stale outputs that quietly poison later comparisons.
- Partial rebuild habits can leave mismatched terrain, tree, and occlusion outputs active at the same time.

### Acceptance Criteria

- Distant terrain, trees, and major landmarks remain visually coherent with nearby assets.
- Long-travel views strengthen the sense of scale in `Elder Wilds`. → `02h`
- Pop-in and distant mismatch are reduced to a level that feels acceptable during normal play.
- Optional support mods earn their place with visible improvement instead of checklist value alone.

### Rebuild Rules

- Rebuild grass cache if the grass baseline changes, if major flora layering changes, or if worldspace edits materially affect grass placement.
- Rebuild terrain LOD if landscape, snow, mountain, or terrain-color direction changes in a way that affects distant ground presentation.
- Rebuild `TexGen` and `DynDOLOD` if tree overhauls, large architecture changes, major LOD-support mods, or visual worldspace edits change. → `02h`
- Refresh occlusion whenever major worldspace edits or the final distant-detail pass changes enough to affect visibility and culling behavior.
- If multiple major visual categories change together, prefer a clean full rebuild of generated outputs instead of partial guesswork.

## Character, Skin, And Creature Visuals → `02g Characters & Creatures`

### Core Idea

- This subsection covers the baseline visual treatment for player bodies, skin textures, and common creature visuals before later NPC-specific overhauls are chosen.
- The target is a grounded modern look that holds up in third person without drifting into overly glossy, doll-like, or hyper-stylized presentation.

### Options

- Modular modern route: clear female body base, clear male body base, separate skin textures, and a restrained creature baseline.
- Conservative route: body bases plus lighter skin upgrades, with creature visuals kept closer to vanilla.
- High-maintenance beauty route: aggressive body, skin, and NPC beauty layering with far higher refit and compatibility cost.

### Recommendation

- Use the modular modern route.
- `CBBE` should be the female body base for `Elder Wilds`. → `02g`
- Keep body bases, skin textures, and creature visuals as separate decisions instead of collapsing them into one giant character-overhaul stack.
- Treat `High Poly Head 1.4` as a supported face-mesh branch rather than a mandatory baseline. Modern curated lists still use it, but it adds enough headpart and NPC-face complexity that it should be an intentional choice instead of an automatic requirement. → `02g`
- Delay heavy NPC beauty decisions until the later `NPCs and Creatures` section so this layer stays focused and maintainable. → `02g`
- Prioritize presentation that reads well at normal third-person distance, a grounded skin look fitting the colder visual direction, and clean body-base choices that do not create unnecessary armor-refit chaos later.
- Treat `Steel Armor Redone - PBR and Complex Material` as an optional PBR armor upgrade branch for the CC Steel Soldier set. It requires CC Alternative Armors - Steel Soldier and PG Patcher; include it only after the PBR pipeline and parallax workflow are settled. → `02g`

### Recommended Body And Skin Baselines

- Female body base: `CBBE NSFW - Caliente's Beautiful Bodies Enhancer` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/74257> → `02g`
- Female body extension and preset ecosystem: `CBBE 3BA (3BBB)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/30174> → `02g`
- Male body base: `Highly Improved Male Body Overhaul - HIMBO` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/74174> → `02g`
- Female skin: `BnP - Female Skin` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/65274> → `02g`
- Male skin: `BnP - Male Skin` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/65402> → `02g`
- Character creation framework: `RaceMenu SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/29624> (SKSE-plugin character creation overhaul with sculpt mode, overlay system, and NiNode access via SKEE; satisfies the `SKEE` dependency of `EFF - Extensible Follower Framework` from section 05 and is a prerequisite for `High Poly Head`) → `02g`
- Supported high-resolution face branch: `High Poly Head 1.4 SE` - official Google Drive mirror: <https://drive.google.com/drive/folders/1V_jcYzwTiKnSv8Dbv-7Z0hh9SWbkn6Bi> → `02g`
- If `High Poly Head 1.4` is used, pair it with `Expressive Facegen Morphs SE`, `Expressive Facial Animation -Female Edition-`, and `Expressive Facial Animation -Male Edition-` so the face-mesh branch stays aligned with the current modern face stack. → `02g`
- Chosen female preset: `FitnessGoal CBBE 3BA 3BBB Bodyslide Preset for Modest Players` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/69681> → `02g`

### Face Mesh Branch Notes

- `High Poly Head 1.4` still has current ecosystem support: it is explicitly used in at least one current `Wabbajack` compilation with a whitelisted Google Drive source, and current `r/skyrimmods` usage shows it remains relevant even if it is no longer a frictionless default. → `02g`
- Treat it as a player-face and selective NPC-support branch, not as proof that the whole modlist should pivot into a full beauty-overhaul stack.
- The strongest modern alternative signal found was `Alternate High Poly Head`, but that mod still depends on the original `High Poly Head 1.4` package rather than replacing it outright. → `02g`
- Because headpart mismatches, facegen conflicts, and vampire edge cases are still common, keep downstream patching expectations documented in `modlist-15.md` instead of pretending the face-mesh choice is free. → `02g`

### BodySlide And Outfit Studio Install, Setup, And Configuration

- `BodySlide and Outfit Studio` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/201> → `02g`
- Install `BodySlide and Outfit Studio` as a normal mod in `Mod Organizer 2`. → `02g`
- Register `BodySlide x64.exe` in MO2 as an executable so all output is generated through the active profile and virtual file system. → `02g`
- Keep `CBBE`, `CBBE 3BA (3BBB)`, `HIMBO`, the chosen preset, and any later body-aware armor or outfit mods installed before building meshes. → `02g`
- Create a dedicated MO2 output mod such as `BodySlide Output` and direct all generated meshes there instead of letting them overwrite source mods. → `02g`
- Keep `BodySlide Output` in the `Output` separator so generated body and outfit meshes stay distinct from source packages. → `02g`

#### Recommended Setup Order For Elder Wilds

- Install `CBBE NSFW - Caliente's Beautiful Bodies Enhancer`. → `02g`
- Install `CBBE 3BA (3BBB)` after `CBBE`. → `02g`
- Install `Highly Improved Male Body Overhaul - HIMBO`. → `02g`
- Install `BodySlide and Outfit Studio`. → `02g`
- Install `FitnessGoal CBBE 3BA 3BBB Bodyslide Preset for Modest Players`. → `02g`
- Install `OBody NG` and all chosen body-variety preset packs after the body bases and before the first BodySlide build. → `02g`
- Install selected skin textures after the body bases if the skin package expects a specific layout.
- Install any armor or clothing packs that need body refits before the first serious BodySlide build.
- Add and enable the empty `BodySlide Output` mod before generating anything. → `02g`

#### Recommended BodySlide Configuration

- Run BodySlide through MO2, not from the game folder directly.
- Set the output path to the dedicated `BodySlide Output` mod location.
- For female meshes, select the `FitnessGoal CBBE 3BA 3BBB` preset or the exact preset name it installs, not the plain default `CBBE` shape. → `02g`
- For male meshes, choose the intended `HIMBO` preset before batch building. → `02g`
- Use `Batch Build` once the baseline armor and clothing set is stable enough to avoid constant rebuild churn. → `02g`
- If multiple body variants appear, choose the option that matches the active `CBBE 3BA` and `HIMBO` ecosystems instead of mixing them. → `02g`
- Rebuild after installing or replacing major armor packs, outfit conversions, or body-shape presets.

#### 3BA And Preset-Specific Notes

- The chosen female body path is `CBBE NSFW` plus `CBBE 3BA (3BBB)` plus the `FitnessGoal` preset. → `02g`
- Do not batch build female outfits against plain `CBBE` if the actual in-list preset requires `3BA/3BBB`. → `02g`
- When armor mods offer both `CBBE` and `3BA/3BBB` options, choose the `3BA/3BBB` path for female outfits.
- Keep the female body stack consistent across body base, preset, and outfit conversions.

#### Outfit Studio Guidance

- Treat `Outfit Studio` as the exception tool for fixing or converting problem outfits, not as something to use for every armor by default. → `02g`
- Use it when a chosen armor or clothing mod does not match the active `CBBE` or `HIMBO` setup cleanly.
- Keep edited or converted outfit output separate from the original source mod when practical.
- Document manual outfit fixes in the repo so future rebuilds do not depend on memory.

### Recommended Creature Baseline

- `Bellyaches Animal and Creature Pack SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/6839> → `02g`

### Body Variety And Distribution

#### Core Idea

- This subsection owns NPC body diversity — distributing different BodySlide presets across NPCs so the world does not look like every female and male share the same body shape.
- It is a distribution layer on top of the body and BodySlide pipeline already established above, not a replacement for the chosen `CBBE 3BA` and `HIMBO` baselines. → `02g`

#### Options

- **OBody NG** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/77016>. The maintained OBody version that works with both OStim and standalone. Reads all installed BodySlide presets and assigns them to NPCs randomly or by configuration. This is the core distribution mod — without it, every NPC uses the same single BodySlide preset.
- **Real Body - 3BA (3BBB) CBBE Bodyslide Presets** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/83299>. A curated set of semi-realistic 3BA presets designed for OBody distribution. Covers a range from slim to curvy without exaggerated proportions. The recommended preset pack for female body variety.
- **Realistic Racial Body Diversity - OBody NG Config** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/87239>. An OBody configuration that distributes presets per race — Nords are broader, Elves leaner, Orcs more heavily built. Covers both `CBBE 3BA` and `HIMBO`. Adds lore-friendly variety on top of whatever preset pack is installed.

Additional individual presets for a realistic range (optional, to broaden variety):

- `Rugged Body - 3BA` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/86339> — muscular/fit body shape. → `02g`
- `Skinny Berry - 3BA BodySlide preset` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/80714> — slim body shape. → `02g`
- `Realistic chubby and curvy body - 3BA Bodyslide Preset` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/70624> — heavier body shape. → `02g`

Male variety on `HIMBO`:

- `HIMBO SliderPresets Pack 02` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/176023> — 10 HIMBO presets for male body diversity. → `02g`
- `The Common Guy - SerketHetyt's HIMBO Preset` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/111807> — a grounded, realistic male preset. → `02g`
- `Greek God -- HIMBO Bodyslide Preset` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/54349> — muscular/athletic physique for male variety. Adult-content page; review before adding if modlist aims for a clean showcase. → `02g`

#### Recommendation

- Install **OBody NG** as the core distribution layer.
- Install **Real Body - 3BA** as the baseline preset pack for female variety — it is curated, semi-realistic, and designed for OBody.
- Install **Realistic Racial Body Diversity** for per-race body distribution on top of the preset pack — this makes orcs, nords, elves, and beast races feel physically distinct beyond their textures.
- Add the individual presets (`Rugged Body`, `Skinny Berry`, `Realistic chubby and curvy`) to increase the variety range beyond what Real Body covers. → `02g`
- For male NPCs, install **HIMBO SliderPresets Pack 02** to give OBody NG material for male distribution alongside the `Realistic Racial Body Diversity` config. → `02g`

#### Risks & Compatibility

- OBody NG requires building all included presets in BodySlide with the `Create Morphs` option ticked. This means a larger BodySlide batch build and more generated meshes. → `02g`
- Every additional preset pack increases BodySlide build time and the number of generated morph files. Keep the pack size intentional rather than maximal.
- OBody NG works with `CBBE 3BA` and `HIMBO` but may need a config adjustment if other body mods (e.g. custom follower bodies) are added later. → `02g`
- The `FitnessGoal` preset remains the player-character and default body shape; OBody distributes the additional presets only to NPCs. → `02g`

#### Acceptance Criteria

- Female NPCs display visibly different body shapes (slim, athletic, curvy, heavy) across the world.
- Male NPCs display visible variety.
- Per-race body differences are noticeable — Nords look broader than Altmer.
- OBody NG is configurable via MCM and does not affect the player character unless configured to.
- BodySlide builds complete without errors.

### Clothing And Armor Texture Upgrades

- `Immersive Fur Garments` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/77073> — adds new fur garments (shawls, ponchos, coats) to leveled lists using meshes from the FurArmorSetsSE resource. Adds clothing variety without changing the body or skin stack. → `02g`
- `Immersive Fur Garments - SPID` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/82177> — the SPID-based distribution addon that replaces the original plugin's NPC and leveled-list edits with SPID distribution. ESL-flagged, removes the original .esp requirement, distributes fur garments to bandits, guards, hunters, jarls, orc tribes, and townfolk. Install both the base mod (meshes and textures only, delete the .esp) and the SPID addon for the modern distribution approach. → `02g`
- `Steel Armor Redone - PBR and Complex Material` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/177513> — PBR and Complex Material retexture of the Creation Club Steel Armor set. Requires CC Alternative Armors - Steel Soldier, Community Shaders (for PBR) or ENB (for Complex Materials), and PG Patcher (see [`modlist-02a.md`](modlist-02a.md)). Optional PBR armor upgrade. → `02g`

### Risks & Compatibility

- Body-base decisions can quietly create a large armor-refit and outfit-conversion workload later.
- Choosing a `3BA/3BBB` preset increases female outfit compatibility requirements compared with plain `CBBE`. → `02g`
- Letting BodySlide output overwrite source mods would make later auditing and rebuilds much harder.
- Skin mods that look strong in screenshots can still appear too polished or glossy in actual gameplay lighting.
- `High Poly Head 1.4` adds headpart and facegen complexity, especially once vampire fixes, NPC overhauls, wig-to-headpart patching, and custom presets enter the stack.
- Letting this section expand into full NPC beautification would duplicate later planning work.

### Acceptance Criteria

- `CBBE` is established as the female body base and the male-body path is clear enough to support later outfit planning.
- `CBBE 3BA (3BBB)` and the chosen `FitnessGoal` preset are integrated cleanly enough that female body and outfit generation follow one consistent pipeline. → `02g`
- `BodySlide and Outfit Studio` is installed, registered in MO2, and configured to generate into a dedicated `BodySlide Output` mod.
- `High Poly Head 1.4` is documented as a supported optional branch with its dependency chain and maintenance cost spelled out clearly.
- Skin textures look believable under the chosen weather and lighting route during normal play.
- Creature visuals improve the world's overall quality without clashing with the environment stack.

## Hair, Eyes, And Beards → `02g Characters & Creatures` → `02g`

### Core Idea

- This subsection owns the per-character face assets that affect every NPC the player looks at: hairstyles, eye textures, and beard options.
- It is the visual counterpart to the body-and-skin subsection above and ensures character close-ups match the grim-dark tone without pulling in full NPC face-gen overhauls that belong in `modlist-09.md`. → `02g`
- Hairstyles and eye textures have outsized impact on perceived character quality because Skyrim spends more close-up time on faces than on bodies.

### Options

- High-quality hair baseline: `KS Hairdos SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/6817> → `02g`
- Eye-texture baseline: `Eyes Nouveaux` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/131210> → `02g`
- Classic eye-texture comparison: `The Eyes Of Beauty SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/16185> — the long-standing community-standard eye texture replacer with lore-friendly heterochromia options, separate player/NPC packs, and vampire eye support. Available as an alternative to `Eyes Nouveaux` if the final visual direction prefers its established look over the newer khisartin-style textures. → `02g`
- Eye-cubemap upgrade: `LDD Clean Cubemap for Eyes 4K` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/168060> — replaces the vanilla eye cubemap textures with cleaner, higher-resolution 4K reflections, removing the muddy/low-res specular that vanilla eyes exhibit under the chosen lighting stack. Stacks on top of the eye-texture baseline. → `02g`
- Optional beard companion: keep the vanilla beard set unless a stronger beard pack surfaces that fits the tone and stays compatible with the chosen beard mesh.
- Discipline-first route: rely on vanilla hair and eye textures and skip the subsection entirely if the project later decides NPC beautification belongs in a single combined `modlist-09.md` pass. → `02g`

### Recommendation

- Use `KS Hairdos SSE` as the strongest first-pass hair baseline. It is the community-canonical high-quality hair pack (141K endorsements) and covers male and female hairstyles that read cleanly at 4K and under the chosen lighting route. → `02g`
- Use `Eyes Nouveaux` as the eye-texture baseline. Its khisartin-style textures and tintable eyelashes fit the grim-dark tone better than brightly colored anime-style alternatives, and it does not require a separate face-mod rewrite to display correctly. → `02g`
- Keep the beard decision minimal. The chosen body and face mesh stack usually supports vanilla beards well, and adding a beard pack that disagrees with the beard mesh creates clipping or stretching issues that outweigh the visual gain.
- Keep the discipline-first route alive long enough to confirm the project does not want to absorb all character-beautification work here, but the hair and eye baselines above are likely the correct answer for the modern-graphics pillar.

### Risks & Compatibility

- High-poly hair can clash with extreme lighting and shadow setups chosen in the lighting subsection; verify KS Hairdos strands behave cleanly with `Lux` and the chosen shadow mod. → `02g`
- Eye-texture mods can look out of place if they lean too stylized; pick a khisartin-style or realistic pack that matches the grim-dark tone.
- Hair assets are common in NPC-overhaul mod conflicts; if `modlist-09.md` later bundles NPC edits, check for hair-distribution patches.
- Adding a beard pack without testing the beard mesh creates obvious clipping at the neck under most lighting setups.

### Acceptance Criteria

- `Elder Wilds` has one clear hair baseline and one clear eye-texture baseline. → `02g`
- Faces at 4K look intentionally designed rather than vanilla, with no obvious clipping from the lighting or shadow stack.
- The chosen hair and eye assets do not force a full NPC overhaul in `modlist-09.md` but stay compatible with whatever it later selects.
- Beard visuals remain acceptable without becoming a primary subsection decision.

## Sky, Stars, And Auroras → `02e Weather & Water` → `02e`

### Core Idea

- This subsection owns the cosmic visual layer: night-sky stars, aurora rendering, and any sky-dome enhancements that affect how the world reads when the player looks up.
- It supports the "big, awe-inspiring world" pillar directly because Skyrim's vanilla night sky is one of the most flat-looking areas in the worldspace, and a strong sky layer pays off whenever the player pauses, gazes up, or traverses a wide vista.
- It is intentionally kept separate from the weather subsection because sky-dome work is mostly about clear-night rendering and long-horizon reads, not precipitation and overcast coverage.

### Options

- Aurora-focused route: `AURORA S.E.` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/6021> → `02e`
- Galaxy texture route: `Realistic Galaxy` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/111458> → `02e`
- Complete night-sky overhaul route: `Rally's Celestial Canvas` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/110869> — replaces auroras, galaxy, stars, and constellations with higher-fidelity hand-drawn textures. 8K galaxy, 4K stars, 1K constellations. → `02e`
- Star-field texture route: `Ultra Hi-Res Nightsky` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/6096> — high-resolution galaxy texture replacer using Hubble imagery, up to 16K. → `02e`
- Telescopic night-sky route: `Worlds Behind Glass - Telescopic Night Sky Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/158077> — high-res night sky designed for use with telescope mods (KettleWitch's Telescope, Clear Skies Telescope). Rewards exploration with detailed celestial views. → `02e`
- Discipline-first route: rely on the chosen weather mod's bundled star or sky textures and skip the dedicated sky subsection entirely.
- Deferred high-commitment branch: do not add a full sky-dome or constellation overhaul unless real playtesting proves the night sky needs more than the weather baseline provides.

### Recommendation

- Use `AURORA S.E.` as the aurora baseline if `Elder Wilds` wants the night sky to be a real visual highlight. It adds aurora rendering with the look of a proper northern-lights storm (6.4K endorsements), and it is one of the few mods that genuinely upgrades the night vista without bloating the weather or lighting layer. → `02e`
- Keep the discipline-first route alive if the weather mod's bundled star and sky textures already read as strong as the project's lighting and weather setup can support. A clear night sky with weak lighting and weather still looks flat.
- Keep the deferred high-commitment branch alive if a full star-field or constellation overhaul is later judged necessary. The current `Elder Wilds` tone does not need that level of sky investment to feel grand. → `02e`
- Keep this subsection separate from the weather and lighting subsections. Sky-dome work is not the same as weather coverage, and the same mod rarely solves both well.

### Risks & Compatibility

- Aurora mods can look out of place in non-northern settings; verify behavior in southern holds before locking the baseline.
- Sky-dome edits can fight with weather mods that also tweak the night sky; resolve overlap by giving the aurora mod load-order priority for night-sky changes and suppressing duplicate edits in the weather mod's MCM if available.
- Strong auroras at night require a real night-darkness baseline from `modlist-07.md`; if the night is too bright, the aurora will not read. → `02e`

### Acceptance Criteria

- `Elder Wilds` has one clear aurora baseline or a deliberate discipline-first decision. → `02e`
- Night skies feel atmospheric rather than flat without forcing a full sky-dome overhaul.
- Sky work stays separated from weather and lighting decisions in load order, MCM, and visual identity.

## Unique Entity Replacers → `02c Textures & Meshes` → `02c`

### Core Idea

- This subsection owns model and texture upgrades for unique named entities or one-of-a-kind objects that exist in specific world locations — characters, corpses, and set-piece models that are not covered by broad creature, skeleton, or texture overhauls above.
- The goal is to close visual gaps that generic replacer packs leave open, without swelling into a full NPC-beautification project.

### Options

- Unique corpse baseline: `Night Mother` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/83527> — a high-quality model and texture replacer for the Night Mother's preserved corpse in the Dark Brotherhood sanctuary. The vanilla model is visibly low-poly and low-resolution; this mod modernises it to match the 4K visual direction. → `02c`

### Recommendation

- Use `Night Mother` as the targeted unique-entity upgrade. The Dark Brotherhood sanctuary is a heavily scripted quest location the player visits multiple times, and the Night Mother's corpse is the visual centerpiece of that space. The upgrade cost is one ESL-flagged mod with zero script or record conflicts. → `02c`
- Keep this subsection narrow — it exists only to catch one-off models that would otherwise fall between creature, skeleton, and texture ownership.

### Risks & Compatibility

- Unique entity replacers are generally safe to add because they touch only a small number of assets. Verify `Night Mother` does not conflict with any lighting or interior overhaul that modifies the sanctuary cell.
- Do not let this subsection grow into a general NPC or creature overhaul; those tracks are already owned by `modlist-09.md`. → `02c`

### Acceptance Criteria

- `Elder Wilds` has one clear targeted unique-entity baseline or a deliberate discipline-first decision. → `02c`
- The Night Mother's model reads at the same visual quality level as the locked 4K texture and lighting stack.

## Skeleton And Bone Replacers → `02g Characters & Creatures` → `02g`

### Core Idea

- This subsection owns visual upgrades to the in-world skeleton and bone assets: the skulls, bone piles, and skeleton models the player encounters in dungeons, nordic ruins, draugr crypts, and dragon priest rooms.
- It is intentionally kept separate from the rigged skeleton baseline in `modlist-03.md`. `modlist-03.md` decides which skeleton file the game uses for animation rigging; this subsection decides how the in-world bones and skulls look once the player is looking at them. → `02g`
- A high-quality skeleton replacer pays off in dungeon-dense playthroughs because the player is constantly looking at bones, piles, and skulls.

### Options

- High-quality skeleton and bone baseline: `Skeleton Replacer HD - SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/52845> → `02g`
- Discipline-first route: rely on the vanilla skeleton assets and skip the dedicated replacer mod, since the rigged skeleton baseline from `modlist-03.md` already replaces what the player sees most often. → `02g`
- Patch-layer companion: `Skeleton Replacer HD - Mesh Patches for Various Mods` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/177253> (only if the base mod is installed and the modlist includes a creature or content mod that needs a mesh patch for compatibility). → `02g`

### Recommendation

- Use `Skeleton Replacer HD - SE` as the visual skeleton and bone baseline. It replaces all the skeleton and human-bone models and textures in the game (including beast skeletons, dragon priest remains, and bone piles) with high-resolution versions (9,894 endorsements, 808K unique downloads, by PraedythXVI). It is the community-canonical skeleton replacer for the SE era and works under the PBR and lighting stack from the rest of this section. → `02g`
- Keep the discipline-first route alive if the project decides the visual improvement is not worth the added mod count, since most skeleton models are seen only briefly during dungeon traversal.
- Keep the patch-layer companion conditional. It only matters if the modlist includes a creature or worldspace mod that explicitly needs a mesh patch for compatibility with the base replacer.
- Keep this subsection separate from the rigged skeleton ownership in `modlist-03.md`. Replacer does not equal rigged skeleton.

### Risks & Compatibility

- `Skeleton Replacer HD` can conflict with creature mods that ship their own skeleton and bone assets. Check the patch companion only if real conflicts appear. → `02g`
- Some vanilla draugr and dragon priest models have unique skull or bone assets that the mod can override; verify unique visual elements are preserved.
- High-resolution bones can look out of place in a dungeon that has not received matching texture work. The mod is generally compatible with the locked PBR and texture stack, but verify on first dungeon encounter.

### Acceptance Criteria

- `Elder Wilds` has one clear visual skeleton and bone baseline or a deliberate discipline-first decision. → `02g`
- Skulls, bone piles, and skeleton assets in dungeons look intentionally designed rather than vanilla.
- The visual replacer does not affect the rigged skeleton decisions in `modlist-03.md`.
- Any required mesh patch companion is documented and installed only if the modlist actually needs it.

## Blood, Decals, And Combat Visual Effects → `02c Textures & Meshes`

### Core Idea

- This subsection owns the in-world visual effects that fire when combat happens: blood pools, persistent decals, and other lingering marks that make a fight leave a visible trace on the worldspace.
- It is intentionally kept separate from the lighting, weather, and texture subsections above because combat effects are event-driven overlays, not ambient worldstate. The baseline works on top of the locked visual stack, not as part of it.
- It also stays separate from the combat-feedback and hit-reaction layers in `modlist-04.md` and `modlist-11.md`. Those subsections own the moment a hit lands; this one owns what the worldspace looks like after. → `02c`

### Options

- Blood and decal baseline: `Dynamic Bloodpool Framework` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/172080> → `02c`
- Dragon breath VFX route: `Dragon Breath VFX Edit` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/118431> — replaces the vanilla dragon breath projectile and impact effects with higher-fidelity, more dramatic VFX (fire, frost, and shock breath variants). Authored by Kittytail, mesh replacer only, no ESP. → `02c`
- Combat VFX route: `Improved Sparks` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/19831> — replaces the vanilla orange ice-shard spark effects on metal impacts and grindstones with realistic sparks. By powerofthree, mesh replacer only, no ESP. FOMOD installer with spark-density options (1X-20X). → `02c`
- Lightning VFX route: `Lightning VFX Edit` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/124520> — replaces the vanilla lightning bolt projectile and impact effects with higher-fidelity VFX. Mesh replacer only, no ESP. → `02c`
- Discipline-first route: rely on the vanilla blood and decal system and skip the dedicated framework, since the locked combat and graphics stack already produces readable hit feedback.
- Deferred visual-effects branch: do not add a blood or decal framework until the locked weather, lighting, and texture stacks are stable, because combat visual effects can clash with the chosen weather rendering.

### Recommendation

- Use `Dynamic Bloodpool Framework` as the blood and decal baseline if `Elder Wilds` wants combat to leave more persistent visual traces on the world. It is a framework-level replacement for the vanilla blood system, designed to render dynamic blood pools and decals under the locked lighting and weather stack. Lock it in only after the weather and lighting baselines are stable, because blood decals need to read correctly under both daylight and the chosen night-darkness setup from `modlist-07.md`. → `02c`
- Add `Dragon Breath VFX Edit` as the dragon-combat VFX companion. It replaces vanilla dragon breath effects with higher-fidelity, more dramatic visuals (fire, frost, shock). Mesh replacer only, no ESP, no script overhead, compatible with all weather and lighting stacks. Fits the "big, dark, awe-inspiring world" pillar by making dragon encounters visually more impactful. → `02c`
- Keep the discipline-first route alive if the vanilla blood system already reads as strong enough under the chosen lighting and weather setup. Adding a framework for its own sake adds an extra mod without guaranteeing a visible gain.
- Keep the deferred visual-effects branch alive if the locked weather, lighting, and texture stacks are still being settled, because adding a blood framework too early risks a re-tune when the weather or lighting baseline changes.
- Keep this subsection separate from `modlist-04.md` hit-reaction and stagger ownership, and from `modlist-11.md` combat and difficulty ownership. The hit moment is their decision; the visual aftermath is this one's. → `02c`
- Optional footprint decals: `Dynamic Footprints SKSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/175254> (v3.0, Jun 2026, 1,144 endorsements) — adds persistent footprint decals to snow, mud, sand, and other ground surfaces as the player and NPCs walk. SKSE plugin, no ESP, lightweight — complements the blood-and-decal stack by extending worldspace trace to movement rather than only combat. Add after the blood/decals baseline is stable. → `02c`

### Risks & Compatibility

- Blood and decal frameworks can interact poorly with ENB or Community Shaders weather mods, especially ones that handle screen-space wetness and surface effects. Verify behavior under the locked `Raid Weathers CS` or `Azurite Weathers III CS` baseline. → `02c`
- Persistent blood decals can create frame-rate or memory pressure in long combat sessions. Check the framework's MCM for decal lifetime and density settings.
- Blood pools can look out of place in snowy regions if the framework does not handle surface-specific blending. The chosen survival and weather setup from `modlist-05.md` and [`modlist-02b.md`](modlist-02b.md) should be tested in a snowy exterior. → `02c`
- The framework can conflict with other combat-effect mods that also touch blood or decal spawning. Keep ownership here scoped to the persistent-decals-and-pool layer, not the hit-effect layer.

### Acceptance Criteria

- `Elder Wilds` has one clear blood and decal baseline or a deliberate discipline-first decision. → `02c`
- Combat leaves a visible, believable trace on the worldspace without overwhelming the locked lighting and weather stack.
- The chosen framework does not conflict with the locked weather, lighting, or community-shaders baseline.
- Blood and decal ownership stays separate from hit-reaction, stagger, and combat-balance decisions in `modlist-04.md` and `modlist-11.md`.

## Post-Install Smoke Test

After completing this section, verify stability with the coc console command at these 6 locations:

| # | Command                    | Location                 | Stress Profile                                               |
|---|----------------------------|--------------------------|--------------------------------------------------------------|
| 1 | `coc Whiterun`             | Whiterun                 | Major city — NPCs, shadows, architecture density             |
| 2 | `coc Solitude`             | Solitude                 | Large city — water reflections, long draw distances          |
| 3 | `coc RiftenOrigin`         | Riften                   | Canopy lighting, heavy NPC AI packages                       |
| 4 | `coc MarkarthOrigin`       | Markarth                 | Dwemer stone, waterfalls, extreme verticality                |
| 5 | `coc Riverwood`            | Riverwood                | Forest exterior — grass, trees, landscape LOD                |
| 6 | `coc BleakFallsBarrow01`   | Bleak Falls Barrow       | Interior dungeon — close-quarters lighting                   |
| 7 | `coc WhiterunBanneredMare` | Bannered Mare (Whiterun) | Tavern interior — fire lighting, patron NPCs, confined space |

**Pass criteria:** No crash on load. No missing textures. ≥60 FPS maintained (uncap framerate, use `tgm` for god mode if needed).

If any location fails, the most recently installed mod or generation step is the first suspect.
