# Modern Graphics

## Community Shaders Core Setup

### Core Idea

- This subsection owns the actual graphics-framework decision for the shader-first visual stack.
- The goal is to build modern visuals around `Community Shaders`, then layer materials, lighting, weather, water, and distant detail on top of that baseline.

### Options

- Primary framework route: `Community Shaders` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/86492>
- Non-CS alternatives are out of scope unless the project abandons the shader-first direction entirely.

### Recommendation

- Use `Community Shaders` as the core framework.
- Validate `SKSE64` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/30379>, `Address Library for SKSE Plugins` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/32444>, and any current page-listed prerequisites before judging later graphics layers.
- Record baseline performance before installing add-ons so later module decisions are measured against a real control point.

### Risks & Compatibility

- Some Community Shaders features are much heavier than the core framework itself.
- Older ecosystem pages may refer to legacy behavior or outdated version requirements.
- A shader-first stack still needs discipline; enabling every feature is not the same as building a coherent visual direction.

### Acceptance Criteria

- The game launches correctly on Steam `1.6.1170`.
- `Community Shaders` loads without runtime errors.
- Visual output is stable in both indoor and outdoor test scenes.
- Baseline FPS is recorded before any add-on modules are layered in.

## Community Shaders Add-Ons And Required Features

### Core Idea

- This subsection decides how aggressive the first Community Shaders feature layer should be.
- It should improve shadowing, wetness, water response, and material depth without front-loading the whole performance cost of the section.

### Options

- Conservative option:
- `Screen Space Shadows - Community Shaders` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/93209>
- `Grass Lighting - Community Shaders` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/86502>
- `Water Effects - Community Shaders` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/112762>
- `Wetness Effects - Community Shaders` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/112739>
- Balanced option:
- Conservative stack plus `Terrain Shadows - Community Shaders` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/135817>
- High-end option:
- Balanced stack plus `Subsurface Scattering - Community Shaders` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/114114> and `Screen Space Global Illumination (SSGI)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/130375>
- Fire-and-particle companion:
- `Embers XD` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/37085>
- Support-only branch:
- `Skyrim Upscaler - DLSS FSR2 XeSS` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/80343>

### Recommendation

- Start with the conservative option.
- Promote to the balanced option only after trees, grass, weather, water, and LOD choices are stable enough that the extra depth is worth measuring.
- Treat `SSGI` as an optional luxury feature, not a baseline requirement.
- Treat `Light Limit Fix` as a legacy or version-check item, not a default inclusion.
- Treat `Embers XD` as the fire and ember category answer rather than pretending the rest of the CS stack covers that visual gap by itself.
- Use `Skyrim Upscaler` only if real performance testing proves it is needed.

### Graphics Testing Protocol

#### Recommended Tool Stack

- Performance capture: `PresentMon`
- Analysis and graphing: `CapFrameX`
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

## Physically Based Rendering (PBR) Support

### Core Idea

- PBR is not a separate renderer choice here; it is an adoption strategy layered on top of `Community Shaders`.
- The real decision is how selectively the list should use PBR-ready materials and conversions.

### Options

- Minimal PBR option: enable support but only use a few showcase conversions.
- Balanced PBR option: use curated conversions for major high-visibility surfaces.
- Full PBR push: broad world coverage with much higher maintenance and consistency risk.

### Recommendation

- Use the balanced PBR option.
- Prioritize surfaces where material response is most visible in normal play: stone, metal, wood, wet surfaces, ruins, and high-detail clutter.
- Do not commit to a full-world PBR conversion until visual consistency, performance cost, and maintenance burden are proven acceptable.

### Priority Coverage

#### Priority 1 Areas

- City architecture seen constantly in travel and third person
- Farmhouses and rural buildings
- Nordic ruins and dungeon stonework
- High-visibility clutter and props

#### Priority 1 Candidate Mods

- Broad starter coverage: `Faultier's PBR Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/125308>
- Whiterun: `Tomato's PBR Whiterun` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/135771>
- Farmhouses: `Tomato's PBR Farmhouses 2.0` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/135774>
- Markarth and Dwemer: `PBaRkarth - PBR texture mod for Markarth and Dwemer` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/144535>
- Solitude: `laogu's PBR Solitude` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/173698>
- Nordic ruins: `Exist's Nordic Ruins PBR and Complex Parallax Material` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/118014>

#### Priority 2 Areas

- Select landscape regions with a strong material identity
- City sets from settlement overhauls that survive later testing
- Broader regional packs that fill obvious gaps

#### Priority 2 Candidate Mods

- Landscape testing option: `A Cathedralist's PBR Landscape` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/137333>
- Broader landscape option: `TomatoRim PBR Landscapes AIO` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/177621>
- City-overhaul support: `PBR textures for The Great Cities Collection` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/133493>
- Discovery hub for later expansion: `PBR Hub` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/139889>

#### Areas To Defer For Now

- Full-world landscape replacement
- Low-visibility assets that add patching and VRAM cost without changing moment-to-moment feel much
- Niche regional conversions before the core city, dungeon, and farmhouse look is settled

#### Working Rollout Order

- Start with `Faultier's PBR Skyrim`.
- Add one city test set such as `Tomato's PBR Whiterun`.
- Add rural support with `Tomato's PBR Farmhouses 2.0`.
- Add one dungeon or ruin test set such as `Exist's Nordic Ruins PBR and Complex Parallax Material`.
- Add one stone-heavy city test set such as `PBaRkarth`.
- Only after those pass visual and performance review, test a landscape branch such as `A Cathedralist's PBR Landscape` or `TomatoRim PBR Landscapes AIO`.

### PGPatcher Workflow With PBR Mods

- `PGPatcher` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/120946>
- Use `PGPatcher` only after the main texture, mesh, parallax, and PBR candidate set is mostly chosen.
- Keep `PGPatcher` output in its own generated mod folder in `Mod Organizer 2`, separate from source mods.
- Run it after installing or changing PBR texture packs, parallax-enabled textures, or major mesh or parallax support mods that affect the same assets.
- Let the generated patch load after the source texture and mesh mods it supports.
- Re-run it whenever a major landscape, architecture, ruins, or clutter texture pack is replaced.
- Test the patched output in the same fixed scenes used by the graphics testing protocol.
- Only keep the generated output if it produces a visible improvement without new artifacts.

### Risks & Compatibility

- Mixed asset coverage can make regions look inconsistent if only some adjacent surfaces receive convincing PBR treatment.
- Some conversions look excellent in screenshots but clash with the broader art direction in motion.
- PBR ambition can outrun the rest of the stack if weather, trees, water, and lighting are not held to a similar quality bar.

### Acceptance Criteria

- Chosen PBR assets clearly improve material definition in motion, not just in still shots.
- The selected coverage level remains visually coherent across major play spaces.
- No obvious mismatch appears between PBR and non-PBR assets in the same scene.
- Performance cost stays acceptable relative to the baseline CS stack.

## Texture Overhauls By Material Type

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

### Material Priorities

#### Broad Base Candidates

- `Skyland AIO` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/34179>
- `Skurkbro's Retexture Project AIO` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/63148>

#### Landscape And Ground Materials

- `Skyking Fantasia Landscapes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/107256>
- `Rally's Solstheim Landscapes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/35590>

#### Rocks And Mountains

- `Enhanced Rocks and Mountains - Complex Material and Parallax` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/121336>

#### City And Settlement Surfaces

- `Riton Whiterun` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/103408>
- Keep city textures aligned with whichever PBR city sets survive testing so cities do not split visually between PBR and non-PBR districts.

#### Ruins And Dungeon Stone

- `Exist's Nordic Ruins PBR and Complex Parallax Material` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/118014>

#### Clutter And Small Props

- `RUSTIC CLUTTER COLLECTION - Special Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/5795>
- Coordinate with `Faultier's PBR Skyrim` where clutter categories are better served by material-aware upgrades.

#### Clothing And Fabric

- `RUSTIC CLOTHING - Special Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/4703>

### Risks & Compatibility

- A hybrid stack becomes hard to maintain if override relationships are not tracked clearly.
- City textures that ignore the winning PBR direction can make regions feel stitched together.
- Landscape, rock, and ruin winners can still clash once weather and lighting are finalized.

### Acceptance Criteria

- Every major material family has a clearly chosen source mod or fallback.
- No major region looks visually stitched together from conflicting texture styles.
- Clutter and architecture remain readable from third-person distance and still hold up close.
- The final texture stack is understandable enough to maintain without guesswork.

## Mesh Improvements And Parallax Support

### Core Idea

- Improve shape quality and silhouette readability without turning the mesh stack into an unmaintainable conflict swamp.
- The best outcome is a hybrid stack: stable baseline mesh improvements, targeted fixes where they matter, and parallax support only where the chosen textures actually benefit from it.

### Options

- Classic baseline option: `SMIM` as the main mesh foundation.
- High-poly-heavy option: stack broad high-poly replacers more aggressively for maximum close-up fidelity.
- Hybrid option: `SMIM` plus targeted upgrades and deliberate parallax support.

### Recommendation

- Use the hybrid option.
- Keep `Static Mesh Improvement Mod - SMIM` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/659> as the baseline.
- Treat `High Poly Project` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/12029> as optional and only keep it if the extra geometry earns its conflict cost.
- Use `Simplicity of Snow` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/56235> early if the final texture and mountain stack needs snow-consistency support.
- Use `FYX - Water Mesh Optimization` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/97713> only if the chosen water setup benefits from it.
- Add `Auto Parallax` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/79473> or `Complex Parallax Materials` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/95134> only after the texture stack is mostly chosen.
- Use the PBR section's `PGPatcher Workflow With PBR Mods` for late-stage parallax generation rules.

### Risks & Compatibility

- `High Poly Project` can add overlap and complexity for surprisingly small on-screen gains.
- Parallax can look excellent on some surfaces and broken on others if support is inconsistent.
- Snow, rock, landscape, and water meshes should not be finalized independently of the texture and water winners.

### Acceptance Criteria

- Chosen mesh upgrades improve silhouette quality in normal gameplay, not only close-up stills.
- Parallax adds convincing depth without obvious stretching or artifacting.
- Snow, rock, and architecture transitions remain coherent under the chosen texture stack.
- Mesh conflicts remain understandable and patchable.

## Lighting Overhaul Strategy

### Core Idea

- Build lighting as a coherent layer that supports the shader-first visual direction, stronger world scale, and third-person readability.
- Interior mood matters, but so do readability, compatibility cost, and coherence with the final weather route.

### Options

- Heavy bespoke lighting option: strong authored changes with larger patch requirements.
- Vanilla-plus lighting option: closer to vanilla light placement and lower conflict risk.
- Hybrid option: stronger lighting where it matters most, with more compatibility-conscious coverage elsewhere.

### Recommendation

- Start with a hybrid evaluation centered on two serious Community Shaders-friendly routes:
- `Lux` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/43158> plus `Lux CS` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/153919>
- `Relighting Skyrim SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/8586> plus `Luminosity Lighting Overhaul - The Cathedral Concept` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/16830>
- Keep `ELFX Shadows` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/63790> as the main alternate route if `Lux` proves too patch-heavy or too moody.
- Treat `Window Shadows RT - Updated` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/111091> and `Ambiance - A Vanilla(plus) Ambient Lighting Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/46383> as supporting or fallback options, not the primary first pick.
- Treat `NAT.CS III` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/139567> as a later weather decision, not the reason to choose an interior-lighting stack.

### Risks & Compatibility

- `Lux` can create substantial patch maintenance once the interior and worldspace stack grows.
- Very dark interiors can look impressive in screenshots and still feel worse in long play sessions.
- Choosing lighting before weather is settled can produce a mismatched overall visual tone.

### Acceptance Criteria

- Interiors feel atmospheric without becoming frustrating to navigate or fight in.
- Major interior spaces remain readable in third person with the planned UI and camera style.
- Patch burden remains reasonable for the chosen city, dungeon, and player-home stack.
- Lighting mood stays coherent with the final shader, texture, and weather direction.

## Weather And Atmosphere

### Core Idea

- Weather should be chosen as part of the Community Shaders presentation layer, not as an isolated plugin choice.
- The target is a grounded but modern visual tone that still preserves forest, mountain, and travel readability in third person.

### Options

- Native Community Shaders weather option: build around a package made specifically for CS.
- Legacy weather plus CS adaptation option: use an older established weather family with newer CS support.
- Vanilla-plus atmosphere option: favor consistency and readability over the most dramatic grading.

### Recommendation

- Start with two primary Community Shaders-native candidates:
- `NAT.CS III` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/139567>
- `Azurite III CS` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/162153>
- Keep `Raid Weathers CS` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/171041> as the gameplay-clarity alternate route.
- Treat older families such as `Obsidian Weathers and Seasons` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/12125>, `Obsidian CS` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/162627>, and `Cathedral Weathers and Seasons` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/24791> as fallback benchmarks rather than main recommendations.
- Treat `Azurite Weathers III - Enhanced` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/150269> and `Skydreamus Community Shaders Presets for NAT.CS III and Azurite III CS` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/171145> as later tuning layers, not the first decision.

### Risks & Compatibility

- A weather setup that looks stunning in screenshots can flatten gameplay readability in forests, storms, or dusk travel.
- Overly aggressive fog, contrast, or dark nights can work against third-person exploration and combat.
- Preset stacking can make the final visual chain harder to reason about if weather, CS options, and external presets all push tone differently.

### Acceptance Criteria

- Exterior scenes feel modern and atmospheric without reducing third-person readability.
- Forests, mountains, and cities remain distinct and readable across clear and bad weather.
- Rain, fog, and storms improve mood without obscuring travel too heavily.
- The chosen weather route complements the selected lighting strategy and CS modules.

## Water Visuals

### Core Idea

- Treat water as a full visual stack: base water look, Community Shaders water features, mesh support, foam behavior, and waterfall presentation.
- The target is cold, readable, grounded water that holds up in motion during travel.

### Options

- Community Shaders-native water route: build around CS water support and a water setup designed for CS.
- Conservative compatibility route: simpler base water with CS modules doing most of the modern visual work.
- Legacy comparison route: older water overhauls only if the CS-first route fails.

### Recommendation

- Start with the Community Shaders-native water route.
- Use `Water Effects - Community Shaders` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/112762> as the baseline shader feature layer.
- Test `A Water Made For CS in mind` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/172959> as the primary base-water candidate.
- Only add `FYX - Water Mesh Optimization` if it clearly improves shorelines, water edges, or performance with the chosen setup.
- Keep `Simplicity of Sea - Water Mod with ENB and Community Shaders Displacement Textures` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/158763> as the main alternate comparison.
- Treat `Realistic Water Two SE (RWT)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/2182> and `Water for ENB` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/37061> as legacy baselines, not first picks.
- Evaluate `Natural Waterfalls` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/87261> and `Rally's Water Foam` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/28922> only after the main water base is selected.

### Risks & Compatibility

- Water can look strong in still shots and distracting in motion if foam, reflections, or wave response are overdone.
- Water tone can clash badly with the chosen weather route.
- Mesh fixes and waterfall add-ons can help one setup and hurt another.

### Acceptance Criteria

- Rivers, lakes, and coastlines look coherent across clear and bad weather.
- Water remains readable and believable in motion from third-person distance.
- Foam, reflections, and shoreline behavior improve immersion instead of drawing attention to artifacts.
- The final water route fits the CS stack and broader `Elder Wilds` atmosphere.

## Terrain, Roads, And Snow

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

### Candidate Stack

#### Landscape And Terrain

- `Skyking Fantasia Landscapes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/107256>
- `Atlantean Landscape - Majestic Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/102170>
- `Atlantean Landscape - Complete - Complex Terrain Parallax` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/89542>
- `A Cathedralist's PBR Landscape` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/137333>
- `TomatoRim PBR Landscapes AIO` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/177621>

#### Roads

- `Blended Roads - Light Plugin (ESL)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/171554>
- `Northern Roads` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/77530> remains the main high-maintenance comparison route and the patch-heavy benchmark.

#### Snow And Support

- `Simplicity of Snow` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/56235>
- `Nordic Snow` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/670>
- `Nordic Snow - Complex Material` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/133034>
- `Hyperborean Snow SE - 8K` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/29283> remains a comparison snow candidate, not a locked baseline.
- `Enhanced Rocks and Mountains - Complex Material and Parallax` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/121336>

### Risks & Compatibility

- `Northern Roads` can become a patch sink once outskirts, bridges, Lux Via, settlements, and worldspace edits start stacking.
- Snow can look good in isolation and fail once mixed with mountains, roads, and weather-heavy scenes.
- Heavy terrain parallax can look impressive up close while adding artifact risk or visual noise in motion.

### Acceptance Criteria

- Terrain remains readable and coherent across tundra, forest, mountain, and snowy regions.
- Roads fit the wilderness tone without creating unreasonable compatibility debt.
- Snow blends naturally with nearby rocks, roads, and terrain materials under the selected weather route.
- The final terrain, road, and snow stack supports later grass, tree, and LOD work.

## Flora Visuals

### Core Idea

- Flora is the ground-level readability layer between terrain materials and later tree coverage.
- It should improve grass density, wildland texture, and plant variety without making traversal unreadable or turning grass support into constant patch work.

### Options

- Controlled baseline: one strong grass mod plus selective plant replacers and minimal support patches.
- Dense forest-floor route: baseline grass plus extra undergrowth and forest clutter for maximum wilderness feel.
- Mixed route: readable general grass coverage with selective density boosts and better close-range plants.

### Recommendation

- Use the mixed route.
- Start with `Skoglendi - A Grass Mod` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/93944> as the baseline.
- Use `Origins Of Forest - 3D Forest Grass` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/45719> as the main density enhancer only if forests still feel too sparse after terrain and tree choices are clearer.
- Use `Mari's flora` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/45952> as the supporting plant replacer instead of treating flora as one giant all-in-one decision.
- Keep `Folkvangr - Grass and Landscape Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/44899> as the main heavier alternate.
- Keep `Vinland Grass Patch - Skoglendi - Flora Orientalis - Folkvangr` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/95273> and `QW's Grass Patch 2` in mind only after the final grass combination is narrow enough to justify patch-hub planning.

### Risks & Compatibility

- Grass that looks strong in screenshots can make traversal and combat readability worse in practice.
- Layering multiple grass and plant mods creates real patch and cache maintenance cost.
- Forest-floor enhancers can become too dense once weather fog and heavy tree coverage are added.

### Acceptance Criteria

- Flora improves wilderness density without obscuring normal travel routes.
- Forest, marsh, tundra, and roadside scenes stay readable in third person.
- Plant quality holds up both at travel distance and during close inspection.
- The final flora stack remains compatible with the chosen terrain, snow, tree, and grass-cache workflow.

## Tree Overhauls For Dense Forests

### Core Idea

- Trees are the main large-scale world-shaping layer for wilderness mood, canopy silhouette, and perceived regional scale.
- This subsection decides how dense and dramatic forests should become without creating a worldspace patch nightmare or making exploration unreadable.

### Options

- Lower-maintenance baseline: improved tree models with lighter ecosystem burden.
- Dense modern forest route: stronger transformation and larger payoff, but more patching and placement risk.
- Extreme wilderness route: highly transformed forests and roadside coverage with the highest compatibility cost.

### Recommendation

- Use the dense modern forest route, but keep one lower-maintenance fallback alive until LOD and traversal readability are tested.
- Start serious evaluation with `Traverse the Ulvenwald - 3.3 - Trees and Forests of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/57874> as the main dense-forest candidate.
- Keep `Happy Little Trees` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/50961> as the safer fallback baseline.
- Treat `Fabled Forests` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/94462> and `Nature of the Wild Lands - forest and trees improvement mod` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/63604> as stronger transformation routes to compare only if `Ulvenwald` misses the right balance.
- Keep `Happy Little Trees PBR` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/159171> and `Fabled Forests - Ulvenwald - Compatibility Patch (BOS)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/134501> as support-path signals, not baseline decisions.

### Risks & Compatibility

- Dense tree overhauls can make roads, structures, and combat spaces harder to read in motion than they appear in screenshots.
- Heavier worldspace tree edits create clipping, blocked sightlines, floating objects, and broad patch debt with settlement or roadside mods.
- A tree overhaul that looks excellent nearby can still fail the list if its distant silhouette is weak.

### Acceptance Criteria

- Forest regions feel denser and more immersive without making travel frustrating.
- Roads, ruins, and normal third-person combat spaces remain readable in wooded areas.
- Tree silhouettes hold up at close, mid, and long distance.
- The chosen tree overhaul stays compatible with flora, terrain, roads, and later LOD workflow at a manageable cost.

## LOD Generation And Distant Detail

### Core Idea

- Treat distant detail as the layer that determines whether `Elder Wilds` feels large and coherent during travel instead of collapsing into obvious pop-in and flat backgrounds.
- This subsection covers both the visual target and the practical generation workflow for terrain, trees, objects, town silhouettes, grass cache, and occlusion output.

### Options

- Conservative route: clean functional distant detail with limited extra support layers.
- Balanced route: strong object and tree LOD quality with targeted support mods where they materially help.
- High-end route: aggressive polish with extra texture upgrades, tree-specific optimization, and stricter regeneration discipline.

### Recommendation

- Use the balanced route.
- Make `DynDOLOD`-based distant detail the assumed standard for `Elder Wilds`.
- Add support mods only where they visibly improve the chosen tree and texture stack instead of collecting every possible LOD add-on.
- Judge distant detail from actual travel routes, mountain overlooks, and city approaches rather than static showcase shots.

### Required Tools And Dependencies

#### Core Support Mods

- `DynDOLOD Resources SE 3` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/52897>
- `DynDOLOD DLL NG` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/97720>

#### Optional Distant Detail Support

- `HD LODs Textures SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/3333>
- `Happy Little Trees DynDOLOD Optimizations` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/158587>

#### Core Workflow Dependencies

- `No Grass In Objects` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/42161>
- `Worldspaces with Grass SSEEdit Script for No Grass In Objects` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/55152>
- `Grass Cache Fixes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/60891>
- `xLODGen Resource - SSE Terrain Tamriel` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/54680>

### Build Order And Configuration

#### DynDOLOD Setup And Configuration Instructions

- Install `DynDOLOD Resources SE 3` and `DynDOLOD DLL NG` as normal mods in `Mod Organizer 2`.
- Install `No Grass In Objects`, `Grass Cache Fixes`, and `xLODGen Resource - SSE Terrain Tamriel` as support content where applicable.
- Keep `TexGen`, `DynDOLOD`, and `xLODGen` registered as MO2 executables, not mixed into normal mod folders.
- Treat the Nexus-linked `xLODGen Resource - SSE Terrain Tamriel` as support content; the actual `xLODGen` tool remains part of the external tools chain.
- Treat occlusion as generated output, not as a separate mod pick.
- Create dedicated MO2 output mods before generation begins:
- `Grass Cache Output`
- `Terrain LOD Output`
- `TexGen Output`
- `DynDOLOD Output`
- `Occlusion Output`
- Keep those generated outputs in the `Output` separator.
- Do not generate final grass, terrain LOD, `DynDOLOD`, and occlusion outputs until the main tree, terrain, snow, flora, and large worldspace visual picks are mostly stable.
- Run order should be:
- confirm load order and conflict resolution first
- generate grass cache through the `No Grass In Objects` workflow
- install or update `Grass Cache Output`
- run `xLODGen` for terrain LOD once terrain and snow are stable enough to make output meaningful
- install or update `Terrain LOD Output`
- run `TexGen`
- install or update `TexGen Output`
- run `DynDOLOD`
- install or update `DynDOLOD Output`
- generate occlusion data near the end and keep it in `Occlusion Output`
- Re-run the relevant generated layers whenever a major tree overhaul, large architecture change, landscape shift, grass change, or LOD-relevant texture pack is replaced.

#### Recommended Starting DynDOLOD Configuration

- First serious pass target: balanced, stability-first output for testing rather than maximum visual range.
- Use `High` as the starting preset if the current setup is already graphics-heavy, and only move above that after checking travel performance and distant coherence.
- Generate both object and tree LOD on the first real pass so forest silhouette quality can be judged early.
- Keep large-reference and ultra-aggressive options off for the first pass unless a chosen mod explicitly requires them.
- Use the first pass to answer three questions before tuning upward:
- do distant trees match the chosen overhaul well enough
- do mountain, road, and city approach views feel coherent
- is the performance cost acceptable in real travel scenes
- If using `Happy Little Trees`, test baseline output first and only then compare `Happy Little Trees DynDOLOD Optimizations`.
- If using heavier tree overhauls such as `Traverse the Ulvenwald`, `Fabled Forests`, or `Nature of the Wild Lands`, prioritize clean transitions and stable horizons before chasing longer range.

#### Baseline Starting Profile For Elder Wilds

- Preset target: `High`
- Quality target: balanced object and tree LOD with stable travel performance
- First-pass goal: believable distant forests, readable city approaches, and clean mountain silhouettes
- Keep optional LOD texture upgrades and tree-specific optimization mods disabled at first if the baseline result has not been seen yet.

### Grass Cache And Occlusion Notes

- Use `No Grass In Objects` only after the main grass and flora direction is narrow enough that cache generation is not immediately obsolete.
- Keep `Grass Cache Fixes` in mind as part of the serious grass-cache path, not as an optional afterthought.
- Use `Worldspaces with Grass SSEEdit Script for No Grass In Objects` if the final setup needs tailored worldspace grass support instead of assuming every area behaves well by default.
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
- Long-travel views strengthen the sense of scale in `Elder Wilds`.
- Pop-in and distant mismatch are reduced to a level that feels acceptable during normal play.
- Optional support mods earn their place with visible improvement instead of checklist value alone.

### Rebuild Rules

- Rebuild grass cache if the grass baseline changes, if major flora layering changes, or if worldspace edits materially affect grass placement.
- Rebuild terrain LOD if landscape, snow, mountain, or terrain-color direction changes in a way that affects distant ground presentation.
- Rebuild `TexGen` and `DynDOLOD` if tree overhauls, large architecture changes, major LOD-support mods, or visual worldspace edits change.
- Refresh occlusion whenever major worldspace edits or the final distant-detail pass changes enough to affect visibility and culling behavior.
- If multiple major visual categories change together, prefer a clean full rebuild of generated outputs instead of partial guesswork.

## Character, Skin, And Creature Visuals

### Core Idea

- This subsection covers the baseline visual treatment for player bodies, skin textures, and common creature visuals before later NPC-specific overhauls are chosen.
- The target is a grounded modern look that holds up in third person without drifting into overly glossy, doll-like, or hyper-stylized presentation.

### Options

- Modular modern route: clear female body base, clear male body base, separate skin textures, and a restrained creature baseline.
- Conservative route: body bases plus lighter skin upgrades, with creature visuals kept closer to vanilla.
- High-maintenance beauty route: aggressive body, skin, and NPC beauty layering with far higher refit and compatibility cost.

### Recommendation

- Use the modular modern route.
- `CBBE` should be the female body base for `Elder Wilds`.
- Keep body bases, skin textures, and creature visuals as separate decisions instead of collapsing them into one giant character-overhaul stack.
- Delay heavy NPC beauty decisions until the later `NPCs and Creatures` section so this layer stays focused and maintainable.
- Prioritize presentation that reads well at normal third-person distance, a grounded skin look fitting the colder visual direction, and clean body-base choices that do not create unnecessary armor-refit chaos later.

### Recommended Body And Skin Baselines

- Female body base: `CBBE NSFW - Caliente's Beautiful Bodies Enhancer` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/74257>
- Female body extension and preset ecosystem: `CBBE 3BA (3BBB)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/30174>
- Male body base: `Highly Improved Male Body Overhaul - HIMBO` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/74174>
- Female skin: `BnP - Female Skin` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/65274>
- Male skin: `BnP - Male Skin` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/65402>
- Chosen female preset: `FitnessGoal CBBE 3BA 3BBB Bodyslide Preset for Modest Players` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/69681>

### BodySlide And Outfit Studio Install, Setup, And Configuration

- `BodySlide and Outfit Studio` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/201>
- Install `BodySlide and Outfit Studio` as a normal mod in `Mod Organizer 2`.
- Register `BodySlide x64.exe` in MO2 as an executable so all output is generated through the active profile and virtual file system.
- Keep `CBBE`, `CBBE 3BA (3BBB)`, `HIMBO`, the chosen preset, and any later body-aware armor or outfit mods installed before building meshes.
- Create a dedicated MO2 output mod such as `BodySlide Output` and direct all generated meshes there instead of letting them overwrite source mods.
- Keep `BodySlide Output` in the `Output` separator so generated body and outfit meshes stay distinct from source packages.

#### Recommended Setup Order For Elder Wilds

- Install `CBBE NSFW - Caliente's Beautiful Bodies Enhancer`.
- Install `CBBE 3BA (3BBB)` after `CBBE`.
- Install `Highly Improved Male Body Overhaul - HIMBO`.
- Install `BodySlide and Outfit Studio`.
- Install `FitnessGoal CBBE 3BA 3BBB Bodyslide Preset for Modest Players`.
- Install selected skin textures after the body bases if the skin package expects a specific layout.
- Install any armor or clothing packs that need body refits before the first serious BodySlide build.
- Add and enable the empty `BodySlide Output` mod before generating anything.

#### Recommended BodySlide Configuration

- Run BodySlide through MO2, not from the game folder directly.
- Set the output path to the dedicated `BodySlide Output` mod location.
- For female meshes, select the `FitnessGoal CBBE 3BA 3BBB` preset or the exact preset name it installs, not the plain default `CBBE` shape.
- For male meshes, choose the intended `HIMBO` preset before batch building.
- Use `Batch Build` once the baseline armor and clothing set is stable enough to avoid constant rebuild churn.
- If multiple body variants appear, choose the option that matches the active `CBBE 3BA` and `HIMBO` ecosystems instead of mixing them.
- Rebuild after installing or replacing major armor packs, outfit conversions, or body-shape presets.

#### 3BA And Preset-Specific Notes

- The chosen female body path is `CBBE NSFW` plus `CBBE 3BA (3BBB)` plus the `FitnessGoal` preset.
- Do not batch build female outfits against plain `CBBE` if the actual in-list preset requires `3BA/3BBB`.
- When armor mods offer both `CBBE` and `3BA/3BBB` options, choose the `3BA/3BBB` path for female outfits.
- Keep the female body stack consistent across body base, preset, and outfit conversions.

#### Outfit Studio Guidance

- Treat `Outfit Studio` as the exception tool for fixing or converting problem outfits, not as something to use for every armor by default.
- Use it when a chosen armor or clothing mod does not match the active `CBBE` or `HIMBO` setup cleanly.
- Keep edited or converted outfit output separate from the original source mod when practical.
- Document manual outfit fixes in the repo so future rebuilds do not depend on memory.

### Recommended Creature Baseline

- `Bellyaches Animal and Creature Pack SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/6839>

### Risks & Compatibility

- Body-base decisions can quietly create a large armor-refit and outfit-conversion workload later.
- Choosing a `3BA/3BBB` preset increases female outfit compatibility requirements compared with plain `CBBE`.
- Letting BodySlide output overwrite source mods would make later auditing and rebuilds much harder.
- Skin mods that look strong in screenshots can still appear too polished or glossy in actual gameplay lighting.
- Letting this section expand into full NPC beautification would duplicate later planning work.

### Acceptance Criteria

- `CBBE` is established as the female body base and the male-body path is clear enough to support later outfit planning.
- `CBBE 3BA (3BBB)` and the chosen `FitnessGoal` preset are integrated cleanly enough that female body and outfit generation follow one consistent pipeline.
- `BodySlide and Outfit Studio` is installed, registered in MO2, and configured to generate into a dedicated `BodySlide Output` mod.
- Skin textures look believable under the chosen weather and lighting route during normal play.
- Creature visuals improve the world's overall quality without clashing with the environment stack.

## Hair, Eyes, And Beards

### Core Idea

- This subsection owns the per-character face assets that affect every NPC the player looks at: hairstyles, eye textures, and beard options.
- It is the visual counterpart to the body-and-skin subsection above and ensures character close-ups match the grim-dark tone without pulling in full NPC face-gen overhauls that belong in `modlist-09.md`.
- Hairstyles and eye textures have outsized impact on perceived character quality because Skyrim spends more close-up time on faces than on bodies.

### Options

- High-quality hair baseline: `KS Hairdos SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/6817>
- Eye-texture baseline: `Eyes Nouveaux` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/131210>
- Optional beard companion: keep the vanilla beard set unless a stronger beard pack surfaces that fits the tone and stays compatible with the chosen beard mesh.
- Discipline-first route: rely on vanilla hair and eye textures and skip the subsection entirely if the project later decides NPC beautification belongs in a single combined `modlist-09.md` pass.

### Recommendation

- Use `KS Hairdos SSE` as the strongest first-pass hair baseline. It is the community-canonical high-quality hair pack (141K endorsements) and covers male and female hairstyles that read cleanly at 4K and under the chosen lighting route.
- Use `Eyes Nouveaux` as the eye-texture baseline. Its khisartin-style textures and tintable eyelashes fit the grim-dark tone better than brightly colored anime-style alternatives, and it does not require a separate face-mod rewrite to display correctly.
- Keep the beard decision minimal. The chosen body and face mesh stack usually supports vanilla beards well, and adding a beard pack that disagrees with the beard mesh creates clipping or stretching issues that outweigh the visual gain.
- Keep the discipline-first route alive long enough to confirm the project does not want to absorb all character-beautification work here, but the hair and eye baselines above are likely the correct answer for the modern-graphics pillar.

### Risks & Compatibility

- High-poly hair can clash with extreme lighting and shadow setups chosen in the lighting subsection; verify KS Hairdos strands behave cleanly with `Lux` and the chosen shadow mod.
- Eye-texture mods can look out of place if they lean too stylized; pick a khisartin-style or realistic pack that matches the grim-dark tone.
- Hair assets are common in NPC-overhaul mod conflicts; if `modlist-09.md` later bundles NPC edits, check for hair-distribution patches.
- Adding a beard pack without testing the beard mesh creates obvious clipping at the neck under most lighting setups.

### Acceptance Criteria

- `Elder Wilds` has one clear hair baseline and one clear eye-texture baseline.
- Faces at 4K look intentionally designed rather than vanilla, with no obvious clipping from the lighting or shadow stack.
- The chosen hair and eye assets do not force a full NPC overhaul in `modlist-09.md` but stay compatible with whatever it later selects.
- Beard visuals remain acceptable without becoming a primary subsection decision.

## Sky, Stars, And Auroras

### Core Idea

- This subsection owns the cosmic visual layer: night-sky stars, aurora rendering, and any sky-dome enhancements that affect how the world reads when the player looks up.
- It supports the "big, awe-inspiring world" pillar directly because Skyrim's vanilla night sky is one of the most flat-looking areas in the worldspace, and a strong sky layer pays off whenever the player pauses, gazes up, or traverses a wide vista.
- It is intentionally kept separate from the weather subsection because sky-dome work is mostly about clear-night rendering and long-horizon reads, not precipitation and overcast coverage.

### Options

- Aurora-focused route: `AURORA S.E.` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/6021>
- Discipline-first route: rely on the chosen weather mod's bundled star or sky textures and skip the dedicated sky subsection entirely.
- Deferred high-commitment branch: do not add a full sky-dome or constellation overhaul unless real playtesting proves the night sky needs more than the weather baseline provides.

### Recommendation

- Use `AURORA S.E.` as the aurora baseline if `Elder Wilds` wants the night sky to be a real visual highlight. It adds aurora rendering with the look of a proper northern-lights storm (6.4K endorsements), and it is one of the few mods that genuinely upgrades the night vista without bloating the weather or lighting layer.
- Keep the discipline-first route alive if the weather mod's bundled star and sky textures already read as strong as the project's lighting and weather setup can support. A clear night sky with weak lighting and weather still looks flat.
- Keep the deferred high-commitment branch alive if a full star-field or constellation overhaul is later judged necessary. The current `Elder Wilds` tone does not need that level of sky investment to feel grand.
- Keep this subsection separate from the weather and lighting subsections. Sky-dome work is not the same as weather coverage, and the same mod rarely solves both well.

### Risks & Compatibility

- Aurora mods can look out of place in non-northern settings; verify behavior in southern holds before locking the baseline.
- Sky-dome edits can fight with weather mods that also tweak the night sky; resolve overlap by giving the aurora mod load-order priority for night-sky changes and suppressing duplicate edits in the weather mod's MCM if available.
- Strong auroras at night require a real night-darkness baseline from `modlist-07.md`; if the night is too bright, the aurora will not read.

### Acceptance Criteria

- `Elder Wilds` has one clear aurora baseline or a deliberate discipline-first decision.
- Night skies feel atmospheric rather than flat without forcing a full sky-dome overhaul.
- Sky work stays separated from weather and lighting decisions in load order, MCM, and visual identity.

## Skeleton And Bone Replacers

### Core Idea

- This subsection owns visual upgrades to the in-world skeleton and bone assets: the skulls, bone piles, and skeleton models the player encounters in dungeons, nordic ruins, draugr crypts, and dragon priest rooms.
- It is intentionally kept separate from the rigged skeleton baseline in `modlist-03.md`. `modlist-03.md` decides which skeleton file the game uses for animation rigging; this subsection decides how the in-world bones and skulls look once the player is looking at them.
- A high-quality skeleton replacer pays off in dungeon-dense playthroughs because the player is constantly looking at bones, piles, and skulls.

### Options

- High-quality skeleton and bone baseline: `Skeleton Replacer HD - SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/52845>
- Discipline-first route: rely on the vanilla skeleton assets and skip the dedicated replacer mod, since the rigged skeleton baseline from `modlist-03.md` already replaces what the player sees most often.
- Patch-layer companion: `Skeleton Replacer HD - Mesh Patches for Various Mods` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/177253> (only if the base mod is installed and the modlist includes a creature or content mod that needs a mesh patch for compatibility).

### Recommendation

- Use `Skeleton Replacer HD - SE` as the visual skeleton and bone baseline. It replaces all the skeleton and human-bone models and textures in the game (including beast skeletons, dragon priest remains, and bone piles) with high-resolution versions (9,894 endorsements, 808K unique downloads, by PraedythXVI). It is the community-canonical skeleton replacer for the SE era and works under the PBR and lighting stack from the rest of this section.
- Keep the discipline-first route alive if the project decides the visual improvement is not worth the added mod count, since most skeleton models are seen only briefly during dungeon traversal.
- Keep the patch-layer companion conditional. It only matters if the modlist includes a creature or worldspace mod that explicitly needs a mesh patch for compatibility with the base replacer.
- Keep this subsection separate from the rigged skeleton ownership in `modlist-03.md`. Replacer does not equal rigged skeleton.

### Risks & Compatibility

- `Skeleton Replacer HD` can conflict with creature mods that ship their own skeleton and bone assets. Check the patch companion only if real conflicts appear.
- Some vanilla draugr and dragon priest models have unique skull or bone assets that the mod can override; verify unique visual elements are preserved.
- High-resolution bones can look out of place in a dungeon that has not received matching texture work. The mod is generally compatible with the locked PBR and texture stack, but verify on first dungeon encounter.

### Acceptance Criteria

- `Elder Wilds` has one clear visual skeleton and bone baseline or a deliberate discipline-first decision.
- Skulls, bone piles, and skeleton assets in dungeons look intentionally designed rather than vanilla.
- The visual replacer does not affect the rigged skeleton decisions in `modlist-03.md`.
- Any required mesh patch companion is documented and installed only if the modlist actually needs it.

## Blood, Decals, And Combat Visual Effects

### Core Idea

- This subsection owns the in-world visual effects that fire when combat happens: blood pools, persistent decals, and other lingering marks that make a fight leave a visible trace on the worldspace.
- It is intentionally kept separate from the lighting, weather, and texture subsections above because combat effects are event-driven overlays, not ambient worldstate. The baseline works on top of the locked visual stack, not as part of it.
- It also stays separate from the combat-feedback and hit-reaction layers in `modlist-04.md` and `modlist-11.md`. Those subsections own the moment a hit lands; this one owns what the worldspace looks like after.

### Options

- Blood and decal baseline: `Dynamic Bloodpool Framework` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/172080>
- Discipline-first route: rely on the vanilla blood and decal system and skip the dedicated framework, since the locked combat and graphics stack already produces readable hit feedback.
- Deferred visual-effects branch: do not add a blood or decal framework until the locked weather, lighting, and texture stacks are stable, because combat visual effects can clash with the chosen weather rendering.

### Recommendation

- Use `Dynamic Bloodpool Framework` as the blood and decal baseline if `Elder Wilds` wants combat to leave more persistent visual traces on the world. It is a framework-level replacement for the vanilla blood system, designed to render dynamic blood pools and decals under the locked lighting and weather stack. Lock it in only after the weather and lighting baselines are stable, because blood decals need to read correctly under both daylight and the chosen night-darkness setup from `modlist-07.md`.
- Keep the discipline-first route alive if the vanilla blood system already reads as strong enough under the chosen lighting and weather setup. Adding a framework for its own sake adds an extra mod without guaranteeing a visible gain.
- Keep the deferred visual-effects branch alive if the locked weather, lighting, and texture stacks are still being settled, because adding a blood framework too early risks a re-tune when the weather or lighting baseline changes.
- Keep this subsection separate from `modlist-04.md` hit-reaction and stagger ownership, and from `modlist-11.md` combat and difficulty ownership. The hit moment is their decision; the visual aftermath is this one's.

### Risks & Compatibility

- Blood and decal frameworks can interact poorly with ENB or Community Shaders weather mods, especially ones that handle screen-space wetness and surface effects. Verify behavior under the locked `Raid Weathers CS` or `Azurite Weathers III CS` baseline.
- Persistent blood decals can create frame-rate or memory pressure in long combat sessions. Check the framework's MCM for decal lifetime and density settings.
- Blood pools can look out of place in snowy regions if the framework does not handle surface-specific blending. The chosen survival and weather setup from `modlist-05.md` and `modlist-02.md` should be tested in a snowy exterior.
- The framework can conflict with other combat-effect mods that also touch blood or decal spawning. Keep ownership here scoped to the persistent-decals-and-pool layer, not the hit-effect layer.

### Acceptance Criteria

- `Elder Wilds` has one clear blood and decal baseline or a deliberate discipline-first decision.
- Combat leaves a visible, believable trace on the worldspace without overwhelming the locked lighting and weather stack.
- The chosen framework does not conflict with the locked weather, lighting, or community-shaders baseline.
- Blood and decal ownership stays separate from hit-reaction, stagger, and combat-balance decisions in `modlist-04.md` and `modlist-11.md`.
