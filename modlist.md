# Elder Wilds

Target build: Skyrim Special Edition / Anniversary Edition runtime `1.6.1170` via Steam

Scope notes:

- No paid Anniversary Edition Creation Club content
- Research categories are organized around five pillars: modern graphics, expanded systems, modernized UI, immersive world scale, and third-person-first gameplay

## Research Workflow

- Work through one category at a time
- For each category, define goals, constraints, candidate mods, compatibility risks, and acceptance criteria
- Do not lock final picks until foundations, graphics baseline, animation framework, and UI framework are validated together
- Prefer mods with active maintenance, clear Steam `1.6.1170` support, strong patch ecosystem, and stable load-order behavior

## Foundations and Compatibility

### Goal

Build a stable technical base for `Elder Wilds` before choosing large visual or gameplay overhauls.

### Constraints

- Must support Skyrim SE/AE runtime `1.6.1170` on Steam
- Must not require paid AE Creation Club content
- Must leave room for heavy graphics, Pandora-based animations, and a third-person-first combat stack
- Must be maintainable in MO2 with clear separators and reproducible tool output

### Decisions To Make

- Confirm exact runtime support for every core dependency on Steam `1.6.1170`
- Choose the mod manager standard and profile layout
- Define ESL and plugin-count rules early
- Decide which bug-fix plugins are mandatory baseline vs optional nice-to-have
- Define the patching toolchain: xEdit, Pandora, DynDOLOD, Synthesis, BodySlide, and any LOD or grass generation tools we adopt

### Research Tasks

- Verify the correct `SKSE64` build for Steam runtime `1.6.1170`
- Verify `Address Library for SKSE Plugins` support for `1.6.1170`
- Build a shortlist of engine and bug-fix essentials compatible with this runtime
- Identify required shared frameworks likely needed later by UI, animation, and gameplay mods
- Decide whether `Mod Organizer 2` is the default manager for the project
- Define separator layout for MO2: Core, Graphics, Animations, Gameplay, UI, World, NPCs, Patches, Output
- Define plugin rules:
- Keep hard plugin count visible from day one
- Prefer ESL-flagged or light plugins where safe
- Avoid stacking multiple mods that solve the same low-level problem
- Define conflict-resolution workflow:
- xEdit review after each major category is added
- Separate generated outputs from source mods
- Keep a dedicated patch section for hand-made compatibility patches

### Candidate Baseline To Research

- `SKSE64` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/30379>
- `Address Library for SKSE Plugins` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/32444>
- `SSE Engine Fixes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/17230>
- `Scrambled Bugs` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/43532>
- `powerofthree's Tweaks` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51073>
- `powerofthree's Papyrus Extender` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/22854>
- `PapyrusUtil` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/13048>
- `MCM Helper` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/53000>
- `JContainers` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/16495>
- `Keyword Item Distributor (KID)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/55728>
- `Spell Perk Item Distributor (SPID)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/36869>
- `Base Object Swapper (BOS)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/60805>
- Animation-related engine fixes required by the final stack - specific mod still to be selected
- `Crash Logger SSE AE VR` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/59818>

### Risks To Check

- Some popular framework mods may list AE support broadly, while others require explicit confirmation for Steam `1.6.1170`
- Graphics, animation, and UI frameworks often pull in overlapping requirements that can become messy if chosen out of order
- Bug-fix plugins can overlap in subtle ways; we should avoid redundant low-level tweaks without a reason
- No paid AE content means some mods with soft AE assumptions may need patches or must be excluded

### Acceptance Criteria

- Clean boot to main menu with the baseline framework installed
- New game starts without missing masters or runtime errors
- MCM-related frameworks load correctly where applicable
- Crash logger is installed before heavier categories are tested
- MO2 structure, plugin rules, and patch workflow are documented before moving into graphics

### Working Notes

- Current recommendation: use `Mod Organizer 2` unless a strong reason appears not to
- Treat this section as the non-negotiable base layer for the rest of the list

## Modern Graphics

### Community Shaders Core Setup

#### Recommendation

- Primary option: `Community Shaders` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/86492>

#### Why This Is The Primary Option

- This is the actual core framework for the modern shader-first visual stack we want
- It aligns directly with the `Elder Wilds` goal of modern graphics without building around ENB as the foundation
- It is the base required before evaluating PBR, lighting features, wetness, terrain shading, and other shader-era upgrades

#### Research Tasks

- Confirm current support for Steam `1.6.1170`
- Confirm all hard dependencies and recommended prerequisites
- Check whether any required Redistributables or configuration steps are easy to miss
- Record which later graphics features depend directly on Community Shaders modules versus separate texture or mesh mods
- Validate baseline performance before adding any Community Shaders add-ons

#### Dependencies To Validate

- `SKSE64` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/30379>
- `Address Library for SKSE Plugins` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/32444>
- Any Community Shaders prerequisite listed on the mod page or requirements tab

#### Risks To Check

- Some Community Shaders features are much heavier than the core framework
- A few older Community Shaders ecosystem pages may refer to legacy behavior or outdated version requirements
- Not every visual feature should be enabled just because it exists; we want a coherent stack, not a maximal one

#### Acceptance Criteria

- Game launches correctly on Steam `1.6.1170`
- Community Shaders loads without runtime errors
- Visual output is stable in an outdoor and indoor test cell
- Baseline FPS is recorded before any add-on modules are installed

#### Working Decision

- Current pick: `Community Shaders`
- No real alternative should be researched for this exact sub-item unless we decide to abandon the shader-first direction entirely

### Community Shaders Add-Ons And Required Features

#### Recommended Baseline Add-Ons

- `Screen Space Shadows - Community Shaders` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/93209>
- `Grass Lighting - Community Shaders` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/86502>
- `Water Effects - Community Shaders` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/112762>
- `Wetness Effects - Community Shaders` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/112739>

#### Optional High-End Add-Ons

- `Terrain Shadows - Community Shaders` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/135817>
- `Subsurface Scattering - Community Shaders` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/114114>
- `Screen Space Global Illumination (SSGI)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/130375>

#### Support Option

- `Skyrim Upscaler - DLSS FSR2 XeSS` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/80343>

#### Suggested Options

- Conservative option:
- `Screen Space Shadows`
- `Grass Lighting`
- `Water Effects`
- `Wetness Effects`
- Balanced option:
- Conservative stack plus `Terrain Shadows`
- High-end option:
- Balanced stack plus `Subsurface Scattering` and `SSGI`
- Upscaler option:
- Add `Skyrim Upscaler` only if needed after real performance testing

#### Recommendation

- Start with the conservative option
- Promote to the balanced option only after trees, grass, weather, water, and LOD choices are in place
- Treat `SSGI` as an optional luxury feature, not a baseline requirement
- Treat `Light Limit Fix` as a legacy/version-check item, not a default inclusion

#### Research Tasks

- Confirm which Community Shaders modules are currently maintained and intended for the current main Community Shaders release
- Check each module's requirements tab for hidden dependencies or version caveats
- Test visual stability in daylight, nighttime, rain, fog, and interiors
- Record FPS impact one module at a time instead of installing the whole set at once
- Check whether any weather, water, or grass mod pages recommend specific Community Shaders module combinations
- Decide on measurement tools for performance capture, such as `PresentMon`, `CapFrameX`, or equivalent frame-time logging workflow
- Decide on visual comparison tools, such as fixed save points, fixed camera shots, and matching weather/time test conditions
- Decide on record-keeping format for results, such as a Markdown table in this repo or a spreadsheet with columns for module set, location, weather, average FPS, 1% lows, notes, and artifacts
- Define a repeatable comparison protocol so later graphics categories can be judged against the same baseline instead of ad hoc impressions

#### Graphics Testing Protocol

##### Recommended Tool Stack

- Performance capture: `PresentMon`
- Analysis and graphing: `CapFrameX`
- Record keeping: Markdown table in this repo first, spreadsheet only if comparison volume becomes large
- Visual comparison: fixed test saves plus screenshot captures from matching camera position, time, and weather

##### Test Scene Rules

- Use the same character save for all graphics testing
- Use the same location, camera angle, field of view, and time of day for each comparison pass
- Keep one indoor test cell and at least two outdoor test cells: forest and open landscape
- Record weather state for every run; avoid comparing clear-weather captures to storm or fog captures
- Add or remove only one graphics variable at a time when possible

##### Suggested Metrics To Record

- Average FPS
- 1% low FPS
- Frame-time consistency notes
- VRAM pressure notes if visible from monitoring tools
- Shader artifacts, flicker, ghosting, water issues, grass mismatch, or shadow instability
- Subjective visual verdict: keep, retest, or reject

##### Suggested Markdown Table Format

| Date       | Build          | Test Area        | Weather/Time    | Mod Change             | Avg FPS | 1% Low | Visual Notes             | Decision |
|------------|----------------|------------------|-----------------|------------------------|---------|--------|--------------------------|----------|
| YYYY-MM-DD | Steam 1.6.1170 | Falkreath Forest | Overcast / 3 PM | Added `Grass Lighting` | 00      | 00     | Better depth, no flicker | Keep     |

##### Working Recommendation

- Start with `PresentMon` plus `CapFrameX`
- Store final comparison notes in this repository so `Elder Wilds` decisions stay attached to the modlist itself
- Use screenshots as supporting evidence, but make final calls from repeatable frame-time data plus in-game artifact checks

#### Acceptance Criteria

- Each selected module loads without shader compilation or runtime issues
- Outdoor lighting remains readable in forests, mountains, and bad weather
- Water visuals improve without causing distracting artifacts
- Grass and terrain shading improve depth without producing obvious flicker or mismatch
- Final chosen module set has a measured performance cost we accept for `Elder Wilds`

### Physically Based Rendering (PBR) Support

#### Core Direction

- Primary framework direction: `Community Shaders` with its built-in advanced material support - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/86492>

#### Important Clarification

- PBR is not really a separate renderer choice for this modlist
- The real decision is how aggressively `Elder Wilds` should adopt PBR-ready texture and material conversions on top of the Community Shaders foundation
- This means there is one main framework path, but multiple content adoption strategies

#### Suggested Options

- Minimal PBR option:
- Enable Community Shaders support for PBR-capable materials, but only use a small number of targeted PBR texture sets for showcase areas
- Balanced PBR option:
- Use curated PBR conversions for major high-visibility surfaces such as architecture, dungeons, clutter, and select landscapes
- Full PBR push:
- Build around broad PBR coverage across the world with hub packs and large-scale conversions where quality is consistent

#### Candidate Mods And Hubs To Research

- `PBR Hub` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/139889>
- `Faultier's PBR Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/125308>
- `Complex Parallax Materials` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/95134>
- `PBR textures for The Great Cities Collection` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/133493>

#### Recommendation

- Start with the balanced PBR option
- Use PBR selectively in places where it materially improves the look: stone, metal, wood, wet surfaces, and high-detail clutter
- Avoid committing to a full-world PBR conversion until we know the visual consistency, performance cost, and maintenance burden are acceptable

#### Balanced PBR Coverage Guidance

##### Priority 1 Areas

- City architecture you see often in third person and while traveling
- Farmhouses and rural architecture that define the world feel
- Nordic ruins and dungeon stonework where material response is especially noticeable
- High-visibility clutter and props: metal, wood, containers, tables, tools, and interior detail pieces

##### Priority 1 Candidate Mods

- Broad starter coverage: `Faultier's PBR Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/125308>
- Whiterun: `Tomato's PBR Whiterun` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/135771>
- Farmhouses and rural buildings: `Tomato's PBR Farmhouses 2.0` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/135774>
- Markarth and Dwemer stone/metal: `PBaRkarth - PBR texture mod for Markarth and Dwemer` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/144535>
- Solitude: `laogu's PBR Solitude` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/173698>
- Nordic ruins: `Exist's Nordic Ruins PBR and Complex Parallax Material` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/118014>

##### Priority 2 Areas

- Select landscape regions with a strong material identity
- City sets from major settlement overhauls that we know we want to keep
- Large regional packs that fill obvious visual gaps left by the priority 1 choices

##### Priority 2 Candidate Mods

- Landscape testing option: `A Cathedralist's PBR Landscape` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/137333>
- Broader landscape option: `TomatoRim PBR Landscapes AIO` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/177621>
- City overhaul support: `PBR textures for The Great Cities Collection` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/133493>
- Discovery hub for later expansion: `PBR Hub` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/139889>

##### Areas To Defer For Now

- Full-world landscape replacement
- Low-visibility assets that add patching and VRAM cost without changing moment-to-moment feel much
- Niche regional conversions before the core city, dungeon, and farmhouse look is settled

##### Working Rollout Order

- Start with one broad base pack: `Faultier's PBR Skyrim`
- Add one city test set: `Tomato's PBR Whiterun`
- Add rural support: `Tomato's PBR Farmhouses 2.0`
- Add one dungeon/ruin test set: `Exist's Nordic Ruins PBR and Complex Parallax Material`
- Add one stone-heavy city test set: `PBaRkarth`
- Only after those pass visual and performance review, test `A Cathedralist's PBR Landscape` or `TomatoRim PBR Landscapes AIO`

##### Working Recommendation For Elder Wilds

- Best balanced starting focus:
- Whiterun
- Farmhouses
- Nordic ruins
- Markarth/Dwemer
- Selected clutter from `Faultier's PBR Skyrim`
- This gives strong visible payoff across exploration, dungeons, and settlement travel without forcing immediate full-world PBR coverage

#### Research Tasks

- Confirm exactly which Community Shaders features are required for PBR materials in the current release
- Build a shortlist of high-quality PBR conversion packs by asset type: architecture, landscape, clutter, dungeons, and cities
- Compare PBR versus non-PBR texture options for the same asset families before locking visual direction
- Check for mismatch risks where only some assets in a region receive PBR treatment
- Measure the performance impact of PBR-heavy zones versus the non-PBR baseline
- Track which mods are true material conversions versus simple texture replacements marketed as PBR

#### PGPatcher Workflow With PBR Mods

- Use `PGPatcher` only after the main texture, mesh, and PBR candidate set is mostly chosen
- Do not run it too early, or its output will become stale every time major texture or parallax selections change
- In `Mod Organizer 2`, keep `PGPatcher` output in its own generated mod folder, separate from source mods
- Run `PGPatcher` after installing or changing:
- PBR texture packs
- parallax-enabled texture packs
- major mesh/parallax support mods that affect the same asset families
- Let the generated patch load after the source texture and mesh mods it is meant to support
- Re-run `PGPatcher` whenever you replace a major landscape, architecture, ruins, or clutter texture pack
- Test the patched output in the same fixed scenes used by the graphics testing protocol

##### Working Rule For Elder Wilds

- First choose the balanced PBR coverage set
- Then finalize the first-pass texture winners for landscapes, cities, ruins, and clutter
- Then run `PGPatcher`
- Then record visual and performance results
- Only keep the generated output if it produces a visible improvement without artifacts

##### Validation Checklist

- No obvious broken depth, stretching, or black/misaligned surfaces
- No new seams where landscape, architecture, or ruins meet
- No region-specific regressions after changing one texture pack and forgetting to regenerate output
- Generated patch remains documented in MO2 as a build artifact, not a hand-curated source mod

#### Risks To Check

- Mixed asset coverage can make regions look inconsistent if some surfaces are clearly PBR and adjacent ones are not
- Some PBR conversions may look impressive in screenshots but clash with the broader art direction in motion
- Full PBR coverage can create extra maintenance burden when combining city overhauls, clutter mods, and mesh replacers
- PBR ambition can outpace the rest of the stack if trees, weather, water, and lighting are not held to a similar quality bar

#### Acceptance Criteria

- Chosen PBR assets clearly improve material definition in motion, not just in still screenshots
- The selected PBR coverage level remains visually consistent across major play spaces
- No obvious mismatch appears between PBR and non-PBR assets in the same scene
- Performance cost remains acceptable relative to the baseline Community Shaders stack
- The final PBR plan is maintainable and does not force excessive patching across every future texture choice

### Texture Overhauls By Material Type

#### Core Idea

- Use one broad visual base where helpful, then layer targeted replacements by material family instead of stacking overlapping all-in-one packs blindly
- For `Elder Wilds`, material clarity matters more than maximum texture count: stone should feel cold and weighty, wood should look worn and natural, metal should read clearly in third person, and clutter should reward close-up exploration

#### Suggested Options

- Broad-base option:
- Use a large coherent pack as a foundation, then only patch obvious weak spots
- Material-first option:
- Skip a huge AIO base and pick best-in-class textures for landscapes, rocks, cities, ruins, clutter, and clothing separately
- Hybrid option:
- Use a stable broad base for coverage, then override with higher-quality packs in the most visible material categories

#### Recommendation

- Use the hybrid option
- Start with a broad base only if it gives good coverage without fighting the balanced PBR plan
- Override it aggressively in the most visible categories: landscapes, rocks, city architecture, ruins, clutter, and clothing

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
- Keep this category aligned with whichever PBR city sets survive testing so cities do not split visually between PBR and non-PBR districts

#### Ruins And Dungeon Stone

- Current linked PBR direction from the previous section still applies strongly here: `Exist's Nordic Ruins PBR and Complex Parallax Material` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/118014>

#### Clutter And Small Props

- `RUSTIC CLUTTER COLLECTION - Special Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/5795>
- Also coordinate with `Faultier's PBR Skyrim` from the PBR section for clutter categories we want upgraded to material-aware surfaces

#### Clothing And Fabric

- `RUSTIC CLOTHING - Special Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/4703>

#### Working Material Priorities For Elder Wilds

First priority:

- Landscapes and ground readability
- Rocks and mountains
- Whiterun/farmhouse architectural materials
- Nordic ruins and dungeons
- High-visibility clutter

Second priority:

- Solstheim-specific materials
- Clothing and fabric detail
- Lower-visibility regional architecture

#### Research Tasks

- Decide whether `Skyland AIO` or `Skurkbro's Retexture Project AIO` is a better fallback coverage base for gaps
- Compare `Fantasia Landscapes` against PBR landscape candidates before locking terrain direction
- Test `Enhanced Rocks and Mountains` against the chosen landscape and weather setup for seam or color mismatch
- Check whether city retextures such as `Riton Whiterun` still make sense once PBR city packs are layered in
- Track every override relationship so we know which mod wins for each material family
- Keep a simple matrix of material type to chosen mod so the final texture stack remains understandable

#### Acceptance Criteria

- Every major material family has a clearly chosen source mod or deliberate fallback
- No major region looks visually stitched together from conflicting texture styles
- Clutter and architecture remain readable from third-person play distance and still hold up close
- Landscape, rock, and ruin materials stay coherent under the selected weather and shader setup
- The final texture stack is understandable enough to maintain without guessing which mod is overwriting which assets

### Mesh Improvements And Parallax Support

#### Core Idea

- Improve shape quality and silhouette readability without turning the mesh stack into an unmaintainable conflict swamp
- For `Elder Wilds`, the best outcome is a hybrid stack: stable baseline mesh improvements, targeted fixes where they matter, and parallax support only where the texture stack actually benefits from it

#### Suggested Options

- Classic baseline option:
- Use `SMIM` as the main mesh foundation and keep the rest conservative
- High-poly-heavy option:
- Stack broad high-poly replacers more aggressively for maximum close-up fidelity
- Hybrid option:
- Use `SMIM` as the base, add selective high-poly or targeted fixes, and only add parallax support where the chosen textures and PBR plan justify it

#### Recommendation

- Use the hybrid option
- Keep `SMIM` as the baseline, then add targeted improvements for high-visibility assets instead of trying to replace every mesh category at once
- Treat parallax support as a deliberate compatibility layer, not an automatic default for every surface

#### Baseline Mesh Candidates

- `Static Mesh Improvement Mod - SMIM` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/659>
- `High Poly Project` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/12029>

#### Targeted Mesh And Surface Support

- `Simplicity of Snow` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/56235>
- `FYX - Water Mesh Optimization` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/97713>

#### Parallax Support Candidates

- `Auto Parallax` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/79473>
- `Complex Parallax Materials` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/95134>

#### Related Tooling To Research

- `PGPatcher` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/120946>

#### PGPatcher Usage Notes

- Treat `PGPatcher` as a late-stage support tool for the chosen PBR and parallax stack, not as a starting requirement
- Keep its output disabled until there is enough selected texture coverage to justify generating it
- If the visual stack changes significantly, delete or rebuild the old `PGPatcher` output rather than assuming it is still valid
- Generated outputs should stay in the `Output` section of MO2 so the source-versus-generated split remains clear

#### Working Guidance For Elder Wilds

- Start with `SMIM`
- Treat `High Poly Project` as optional and test it only if the extra geometry improves visible objects without causing too much overlap with later targeted replacers
- Use `Simplicity of Snow` early if the final texture and mountain stack needs snow consistency support
- Use `FYX - Water Mesh Optimization` only if the chosen water setup benefits from it and it does not conflict with later water decisions
- Add `Auto Parallax` or other parallax support only after the texture stack is mostly chosen
- Use `Complex Parallax Materials` where the selected landscapes, rocks, ruins, or architecture clearly benefit from it

#### Research Tasks

- Compare `SMIM` alone versus `SMIM` plus `High Poly Project` for visible quality gain versus conflict cost
- Identify which categories need targeted mesh fixes most: ropes, chains, furniture, architecture edges, snow surfaces, and water edges
- Confirm whether `Auto Parallax` is still the right fit for the current Community Shaders ecosystem and chosen texture stack
- Check whether parallax-enabled textures produce artifacts, stretching, or mismatched depth on the selected landscape and architecture mods
- Record which mesh mods are pure visual upgrades versus mods that also change placement, collision, or material behavior
- Keep the mesh layer smaller than the texture layer unless a mesh change has obvious on-screen value

#### Risks To Check

- `High Poly Project` can add overlap and conflict complexity for surprisingly small on-screen gains in some categories
- Parallax can look excellent on some surfaces and broken on others if texture support is inconsistent
- Snow, rock, and landscape meshes can drift apart visually if mesh and texture choices are made independently
- Water mesh improvements should not be locked in before the water section is decided

#### Acceptance Criteria

- Chosen mesh upgrades improve silhouette quality in normal gameplay, not only in still close-ups
- Parallax surfaces add convincing depth without obvious artifacting or mismatched materials
- Snow, rock, and architecture transitions remain coherent under the chosen texture stack
- Mesh conflicts remain understandable and patchable
- The final mesh/parallax stack supports the broader PBR and Community Shaders plan instead of fighting it

### Lighting Overhaul Strategy

#### Core Idea

- Build lighting as a coherent layer that supports the shader-first visual direction, stronger world scale, and third-person readability
- For `Elder Wilds`, lighting should create mood and depth without making interiors unreadably dark or forcing constant compatibility work with every location overhaul

#### Suggested Options

- Heavy bespoke lighting option:
- Use a more extensive interior lighting overhaul with strong authored changes and larger patch requirements
- Vanilla-plus lighting option:
- Keep closer to vanilla light placement and mood with lower conflict risk
- Hybrid option:
- Use a strong interior lighting overhaul where it matters most, but prefer compatibility-conscious choices for broader coverage

#### Candidate Mods To Research

- `Lux` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/43158>
- `ELFX Shadows` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/63790>
- `Enhanced Lights and FX` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/2424>
- `Relighting Skyrim SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/8586>
- `Luminosity Lighting Overhaul - The Cathedral Concept` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/16830>
- `NAT.CS III` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/139567>

#### Option Guidance

- `Lux` route:
- Best if we want dramatic interiors and are willing to manage patching carefully
- `ELFX Shadows` route:
- Good if we want a known interior-focused lighting stack with strong shadow presentation
- `Relighting Skyrim SE` plus `Luminosity` route:
- Good lower-conflict option if we want improved placement and ambience without going all-in on a heavier bespoke stack
- `NAT.CS III`:
- Weather-linked visual direction to consider later alongside the weather section, not a standalone answer for interior lighting

#### Community Shaders Fit Check

- Best visual match with a Community Shaders-first stack:
- `Lux` plus `Lux CS`
- Strong lower-conflict match with Community Shaders:
- `Relighting Skyrim SE` plus `Luminosity`
- Conditional match:
- `ELFX Shadows`
- Weather-side companion, not interior answer by itself:
- `NAT.CS III`

#### Community Shaders-Specific Candidates

- `Lux CS` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/153919>
- `Lux Orbis` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/56095>
- `Lux Via` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/63588>
- `CS Light` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/138443>

#### Community Shaders Route Guidance

- `Lux` plus `Lux CS` route:
- Best match if `Elder Wilds` wants the most modern Community Shaders-oriented lighting presentation
- Pairs naturally with the shader-first direction and leaves room for Lux ecosystem additions like `Lux Orbis` and `Lux Via`
- Main tradeoff is still patch burden
- `Relighting Skyrim SE` plus `Luminosity` route:
- Best match if we want Community Shaders visuals to do more of the heavy lifting while the lighting stack stays lighter and easier to maintain
- This is the safer route if the final worldspace and interior mod count becomes large
- `ELFX Shadows` route:
- Still viable, but less naturally aligned to the newer Community Shaders-centered ecosystem than the `Lux` route
- Better treated as the backup option than the first-choice route for this modlist direction
- `NAT.CS III` route:
- Relevant because it is built for Community Shaders, but it belongs primarily to weather and exterior atmosphere decisions
- Do not use it as the reason to choose one interior lighting stack over another

#### Recommendation

- Start with a hybrid evaluation centered on two serious Community Shaders-friendly candidates:
- `Lux` plus `Lux CS`
- `Relighting Skyrim SE` plus `Luminosity`
- Keep `ELFX Shadows` as the main alternate route if `Lux` proves too patch-heavy or if its interior mood is not the right fit
- Treat `Window Shadows RT` and `Ambiance` as supporting or fallback options, not the primary first pick
- Treat `NAT.CS III` as a later weather decision that should complement the chosen interior lighting route

#### What Elder Wilds Should Prioritize

- Interior readability in third-person exploration and combat
- Strong contrast and atmosphere in ruins, inns, caves, and guild spaces
- Exterior/interior transitions that do not feel visually disconnected from the weather and shader stack
- A lighting setup that survives city overhauls, dungeon mods, and player home additions without excessive patch debt

#### Research Tasks

- Compare `Lux` plus `Lux CS` against `Relighting Skyrim SE` plus `Luminosity` in the same inn, ruin, cave, and player home test scenes
- Check which planned city, dungeon, and interior mods would need patches for each lighting route
- Measure readability in third-person combat spaces, not just screenshot mood
- Test nighttime interiors, daylight interiors, torch-lit dungeons, and window-lit rooms separately
- Record whether darker interiors create friction for UI readability or combat visibility
- Delay final lock-in until the weather and atmosphere section is also researched

#### Risks To Check

- `Lux` can create substantial patch maintenance if the final world and interior stack becomes large
- Very dark interior setups may look impressive in screenshots but feel worse in long play sessions
- Mixing multiple full lighting overhauls can create inconsistent light placement and unnecessary conflicts
- Lighting decisions made before weather decisions can lead to a mismatched overall visual tone

#### Acceptance Criteria

- Interiors feel atmospheric without becoming frustrating to navigate or fight in
- Major interior spaces remain readable in third person with the planned UI and camera style
- Patch burden remains reasonable for the chosen city, dungeon, and player-home stack
- Lighting mood stays coherent with the final shader, texture, and weather direction
- The final choice improves immersion and scale rather than just making scenes darker

### Weather And Atmosphere

#### Core Idea

- Choose weather as part of the Community Shaders presentation layer, not as an isolated plugin choice
- For `Elder Wilds`, weather needs to support dense forests, broad travel vistas, readable third-person exploration, and a grounded but modern visual tone

#### Suggested Options

- Native Community Shaders weather option:
- Use a weather package built specifically for Community Shaders
- Legacy weather plus Community Shaders adaptation option:
- Use an older established weather mod with a newer CS-oriented companion or adaptation
- Vanilla-plus atmosphere option:
- Favor consistency, readability, and lower maintenance over the most dramatic color grading

#### Candidate Mods To Research

- `NAT.CS III` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/139567>
- `Azurite III CS` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/162153>
- `Azurite Weathers III - Enhanced` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/150269>
- `RAID Weathers` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/63116>
- `Raid Weathers CS` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/171041>
- `Cathedral Weathers and Seasons` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/24791>
- `Obsidian Weathers and Seasons` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/12125>
- `Obsidian CS` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/162627>
- `Skydreamus Community Shaders Presets for NAT.CS III and Azurite III CS` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/171145>

#### Community Shaders Fit Check

- Best native CS-first candidates:
- `NAT.CS III`
- `Azurite III CS`
- Good tactical/visibility-focused CS route:
- `Raid Weathers CS`
- Older but still relevant adapted routes:
- `Obsidian Weathers and Seasons` plus `Obsidian CS`
- Lower priority for this modlist direction:
- Older non-CS-first weather stacks unless they clearly outperform the newer CS-native options in testing

#### Option Guidance

- `NAT.CS III` route:
- Strong candidate if we want a dramatic, modern, curated Community Shaders look with a strong exterior identity
- `Azurite III CS` route:
- Strong candidate if we want a cleaner, more readable, slightly more restrained CS weather presentation
- `Raid Weathers CS` route:
- Strong candidate if gameplay readability and visibility in forests, combat, and travel matter more than cinematic mood
- `Obsidian` or `Cathedral` derived routes:
- Useful fallback comparisons, but not the first thing to build around for a new CS-first stack in 2026

#### Recommendation

- Start with two primary Community Shaders-native candidates:
- `NAT.CS III`
- `Azurite III CS`
- Keep `Raid Weathers CS` as the gameplay-clarity alternate route
- Treat older weather families like `Obsidian` and `Cathedral` as fallback benchmarks rather than the main recommendation

#### What Elder Wilds Should Prioritize

- Long-distance atmosphere that makes travel feel larger without washing out terrain readability
- Forest lighting and fog behavior that support a sense of depth without making third-person traversal muddy
- Weather transitions that feel believable and consistent with the chosen lighting route
- Good readability in rain, fog, storms, and dawn/dusk travel
- Exterior tone that matches the selected Community Shaders modules, PBR usage, and interior lighting mood

#### Research Tasks

- Compare `NAT.CS III`, `Azurite III CS`, and `Raid Weathers CS` in the same mountain, forest, tundra, and city test scenes
- Check dawn, noon, sunset, night, rain, fog, and snow conditions separately
- Record whether weather reduces combat readability or navigation clarity in third person
- Test each candidate with the chosen Community Shaders add-ons, especially shadows, wetness, water, and terrain-related features
- Compare screenshot appeal versus actual travel readability across long play sessions
- Decide whether a CS weather preset pack is needed only after the base weather choice is made

#### Risks To Check

- A weather setup that looks stunning in screenshots can still flatten gameplay readability in forests or storms
- Overly aggressive fog, contrast, or dark nights can work against third-person exploration and combat
- Weather and lighting can fight each other if both are tuned for heavy mood over consistency
- Preset stacking can make the final visual chain harder to reason about if weather, Community Shaders options, and external presets all push tone in different directions

#### Acceptance Criteria

- Exterior scenes feel modern and atmospheric without reducing third-person readability
- Forests, mountains, and cities remain distinct and readable in varied weather
- Rain, fog, and storms improve mood without obscuring travel too heavily
- The chosen weather route complements the selected lighting strategy and Community Shaders modules
- The final weather choice gives `Elder Wilds` a clear identity instead of a generic fantasy filter

### Water Visuals

#### Core Idea

- Treat water as a full visual stack: base water look, Community Shaders water features, mesh support, foam behavior, and waterfall presentation
- For `Elder Wilds`, water should feel cold, readable, and natural in motion, especially during travel through rivers, marshes, coastlines, and lake regions

#### Suggested Options

- Community Shaders-native water route:
- Build around Community Shaders water support and a water setup designed with CS in mind
- Conservative compatibility route:
- Keep the base water setup simpler and let Community Shaders modules provide most of the modern visual lift
- Legacy comparison route:
- Compare against older established water overhauls only if the CS-first route fails to deliver the look we want

#### Verified Community Shaders-Compatible Candidates

- `Water Effects - Community Shaders` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/112762>
- `FYX - Water Mesh Optimization` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/97713>
- `A Water Made For CS in mind` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/172959>

#### Additional Comparison Candidates

- `Simplicity of Sea - Water Mod with ENB and Community Shaders Displacement Textures` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/158763>
- `Realistic Water Two SE (RWT)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/2182>
- `Water for ENB` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/37061>
- `Natural Waterfalls` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/87261>
- `Rally's Water Foam` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/28922>

#### Recommendation

- Start with the Community Shaders-native water route
- Use `Water Effects - Community Shaders` as the baseline shader feature layer
- Test `A Water Made For CS in mind` as the primary base-water candidate for the current CS-first stack
- Only add `FYX - Water Mesh Optimization` if it clearly improves shorelines, water edges, or performance with the chosen setup
- Keep `Simplicity of Sea` as the main alternate comparison if the primary CS-first route does not fully satisfy the look we want
- Treat `Realistic Water Two` and `Water for ENB` as legacy comparison baselines, not first-choice starting points for this CS-first modlist

#### Option Guidance

- `A Water Made For CS in mind` route:
- Best first-choice match if we want the water layer to feel purpose-built for the current Community Shaders direction
- `Simplicity of Sea` route:
- Best comparison if we want a cleaner, simpler water base that still has Community Shaders relevance
- `Realistic Water Two` route:
- Useful legacy benchmark, but more of a comparison case than the intended baseline for `Elder Wilds`
- `Natural Waterfalls` and `Rally's Water Foam`:
- Supporting texture and presentation add-ons to evaluate after the main water base is selected

#### What Elder Wilds Should Prioritize

- River flow and lake surfaces that read clearly from normal third-person camera distance
- Water that matches the colder, grounded wilderness tone of the modlist instead of looking tropical or overly glossy
- Shorelines, marshes, and waterfalls that hold up in motion and bad weather
- Good interaction with wetness, weather, lighting, and surrounding landscape materials

#### Research Tasks

- Compare the base visual result of `A Water Made For CS in mind` with Community Shaders water features enabled and disabled
- Compare `A Water Made For CS in mind` against `Simplicity of Sea` in the same river and lake scenes
- Test `Water Effects - Community Shaders` in rivers, lakes, marshes, coastal water, and waterfalls
- Check whether `FYX - Water Mesh Optimization` improves visible seams, edges, or flow presentation in the chosen setup
- Test whether `Natural Waterfalls` materially improves waterfall presentation without mismatching the chosen base-water look
- Test whether `Rally's Water Foam` improves shoreline detail or becomes too visually loud with the selected weather and water combination
- Record daytime, sunset, overcast, rain, and storm water behavior separately
- Check whether reflections, foam, and wet shoreline presentation fit the selected weather and lighting route
- If needed later, run a dedicated comparison against older non-CS-first water overhauls before final lock-in

#### Risks To Check

- Water can look impressive in still screenshots but distracting in motion if foam, reflections, or wave response are overdone
- Water tone can clash with the selected weather route if one pushes high saturation and the other pushes muted realism
- Mesh optimization or shoreline fixes can help one water setup and hurt another
- Waterfalls and shoreline transitions often reveal problems that open lake screenshots hide

#### Acceptance Criteria

- Rivers, lakes, and coastlines look coherent across clear and bad weather
- Water remains readable and believable in motion from third-person play distance
- Foam, reflections, and shoreline behavior improve immersion instead of drawing attention to artifacts
- The chosen water route fits the Community Shaders stack and broader `Elder Wilds` atmosphere
- Final water choice does not create obvious seams or distracting behavior in common travel areas

### Terrain, Roads, And Snow

#### Core Idea

- Treat terrain, roads, and snow as one connected presentation layer instead of three isolated texture picks
- This part of the stack has to stay coherent with Community Shaders, the current PBR direction, mesh support, weather, and later LOD generation
- For `Elder Wilds`, the target is colder, grounded wilderness readability with strong travel identity rather than exaggerated fantasy color or hyper-busy surface noise

#### Suggested Options

- Conservative route: stable landscape base, simpler road setup, reliable snow consistency support
- Feature-rich route: more dramatic road/worldspace edits and heavier material detail, but with higher patch and maintenance cost
- Balanced route: strong landscape and mountain materials, restrained road changes, and snow chosen for visual coherence under Community Shaders

#### Recommendation

- Use the balanced route
- Keep landscape and mountain materials as the visual anchor
- Prefer a lower-maintenance road solution unless the final worldspace/city/outskirts plan proves it can absorb a heavy patching route
- Lock snow only after confirming how it looks with the chosen landscape, rock, weather, and lighting setup

#### Candidate Landscape And Terrain Mods To Research

- `Skyking Fantasia Landscapes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/107256>
- `Atlantean Landscape - Majestic Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/102170>
- `Atlantean Landscape - Complete - Complex Terrain Parallax` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/89542>
- `A Cathedralist's PBR Landscape` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/137333>
- `TomatoRim PBR Landscapes AIO` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/177621>

#### Candidate Roads Mods To Research

- `Blended Roads - Light Plugin (ESL)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/171554>
- `Northern Roads` - base page still to confirm directly, but keep as the main high-maintenance comparison route because its ecosystem clearly implies substantial compatibility overhead

#### Candidate Snow Mods And Support

- `Simplicity of Snow` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/56235>
- `Nordic Snow` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/670>
- `Nordic Snow - Complex Material` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/133034>
- `Hyperborean Snow` - main page still to confirm directly; keep as a comparison candidate only after road and landscape choices are narrowed

#### Related Rock And Mountain Support

- `Enhanced Rocks and Mountains - Complex Material and Parallax` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/121336>

#### Working Guidance For Elder Wilds

- Start by comparing `Skyking Fantasia Landscapes` against one Atlantean route and one PBR landscape route in the same tundra, mountain, and forest scenes
- Use `Enhanced Rocks and Mountains` as a likely companion if it matches the final landscape choice without obvious seam or color drift
- Start roads with `Blended Roads - Light Plugin (ESL)` as the safer baseline
- Only escalate to `Northern Roads` if the modlist later proves it truly benefits from larger roadside/worldspace transformation and can tolerate the patch burden
- Use `Simplicity of Snow` early as mesh and consistency support, then compare `Nordic Snow`, `Nordic Snow - Complex Material`, and any final snow alternate under the actual weather and lighting route

#### What Elder Wilds Should Prioritize

- Terrain readability during travel from normal third-person camera distance
- Distinct road identity without turning every route into a compatibility project
- Snow that looks cold and grounded instead of flat white or overly blue plastic
- Clean transitions between roads, dirt, cliffs, mountains, and snow-covered surfaces
- A landscape stack that still looks coherent once grass, trees, weather, water, and LOD are added

#### Research Tasks

- Compare `Skyking Fantasia Landscapes`, `Atlantean Landscape`, and one balanced PBR landscape option in tundra, forest, and mountain regions
- Check whether the selected landscape choice works naturally with `Enhanced Rocks and Mountains`
- Compare `Blended Roads - Light Plugin (ESL)` against `Northern Roads` with an explicit focus on patch burden, not just screenshots
- Track whether road mods need extra bridges, Lux Via, outskirts, city expansion, or landscape patching support
- Test `Simplicity of Snow` with each serious snow candidate to confirm snow-covered meshes and landscape materials stay aligned
- Compare `Nordic Snow` and `Nordic Snow - Complex Material` under clear, overcast, snow, and dusk lighting
- Delay any final snow lock-in until weather and tree choices are present, because both strongly change perceived snow quality
- Record seam issues, color mismatch, parallax artifacts, repetitive tiling, and readability at both close range and travel distance

#### Risks To Check

- `Northern Roads` can become a patch sink once city outskirts, Lux Via, bridges, settlements, and worldspace edits start stacking
- Snow can look good in isolated screenshots but fail once mixed with mountains, roads, and weather-heavy scenes
- Landscape and mountain combinations can create visible seam lines, scale mismatch, or conflicting material style
- Heavy terrain parallax can look impressive up close while adding artifact risk or visual noise in motion
- Choosing roads too early can force later worldspace decisions instead of supporting them

#### Acceptance Criteria

- Terrain remains readable and visually coherent across tundra, forest, mountain, and snowy regions
- Roads fit the broader wilderness tone and do not create unreasonable compatibility debt
- Snow surfaces blend naturally with nearby rocks, roads, and landscape materials under the selected weather route
- Rock, mountain, and terrain materials stay coherent in motion and from third-person travel distance
- The final terrain, roads, and snow stack supports later grass, tree, and LOD work instead of fighting it

### Flora Visuals

#### Core Idea

- Treat flora as the ground-level readability layer that sits between terrain materials and later tree coverage
- This section should improve grass density, wildland texture, and plant variety without making traversal unreadable or turning grass support into constant patch work
- For `Elder Wilds`, flora should help forests feel larger and wilder while keeping roads, trails, ruins, and combat spaces readable in third person

#### Suggested Options

- Controlled baseline: one strong grass mod plus selective plant replacers and only a small number of support patches
- Dense forest-floor route: baseline grass plus extra undergrowth and forest clutter for maximum wilderness feel, with higher performance and patching cost
- Mixed route: readable general grass coverage with selective density boosts in forest biomes and better flowers/plants for close-range quality

#### Recommendation

- Use the mixed route
- Start with `Skoglendi - A Grass Mod` as the baseline candidate because it fits the grounded modern direction well without forcing the heaviest possible grass ecosystem immediately
- Use `Origins Of Forest - 3D Forest Grass` as the main density enhancer to test only if forest regions still feel too sparse after the baseline landscape and tree choices
- Use `Mari's flora` as a supporting plant replacer rather than treating flora as one giant all-in-one decision

#### Candidate Grass Mods To Research

- `Skoglendi - A Grass Mod` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/93944>
- `Folkvangr` - base page still to confirm directly; keep as the main heavier alternate because its search ecosystem clearly shows wide use but also heavier patch/support expectations

#### Candidate Density And Forest-Floor Support

- `Origins Of Forest - 3D Forest Grass` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/45719>

#### Candidate Plant And Shrub Replacers

- `Mari's flora` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/45952>

#### Support Patches To Keep In Mind

- `Vinland Grass Patch - Skoglendi - Flora Orientalis - Folkvangr` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/95273>
- `QW's Grass Patch 2` - main page still to confirm directly; keep in mind as a likely compatibility patch hub once the final grass combination is narrowed

#### Working Guidance For Elder Wilds

- Start by testing `Skoglendi - A Grass Mod` alone in tundra, forest edge, marsh, and roadside scenes
- If forests still feel too flat or too clean, test `Origins Of Forest - 3D Forest Grass` as a targeted density layer rather than defaulting immediately to a heavier full replacement route
- Use `Mari's flora` to improve flowers, shrubs, and plant readability up close without letting flower density overpower the colder grounded tone
- Keep `Folkvangr` as the main alternate if the baseline route feels too restrained, but judge it partly on ecosystem cost and not only on screenshots
- Delay any final flora lock-in until the tree section is researched, because grass and forest-floor density can become too busy once dense tree coverage is added

#### What Elder Wilds Should Prioritize

- Readable roads, paths, and combat spaces from normal third-person height
- Forest floors that feel wild and scaled-up without turning into a visual carpet
- Tundra and open-land regions that still preserve Skyrim's silhouette and travel identity
- Plant variety that improves close inspection without clashing with the colder landscape and weather direction
- Flora density that supports immersion and world scale without creating unnecessary performance loss

#### Research Tasks

- Compare `Skoglendi - A Grass Mod` against `Folkvangr` once the exact `Folkvangr` base page is confirmed
- Test `Skoglendi - A Grass Mod` alone before layering any forest-density enhancer
- Compare `Origins Of Forest - 3D Forest Grass` on top of the baseline in dense forest regions, not just open tundra
- Check whether `Mari's flora` improves plant quality without pushing color, saturation, or flower coverage too far away from the intended tone
- Track patch requirements for grass caches, landscape support, city outskirts, and any mixed grass setup
- Record whether flora reduces road readability, hides loot or interactables too aggressively, or makes third-person combat spaces noisy
- Delay final density tuning until trees, LOD, and grass cache workflow are all researched together

#### Risks To Check

- Grass that looks impressive in screenshots can make traversal and combat readability worse in practice
- Layering multiple grass and plant mods can quickly create a patch and cache maintenance burden
- Forest-floor enhancers can become too dense once tree overhauls and weather fog are added
- Overly colorful flowers or shrubs can work against the colder grounded `Elder Wilds` tone
- A flora stack chosen too early can force later landscape and tree decisions instead of supporting them

#### Acceptance Criteria

- Flora improves wilderness density and immersion without obscuring normal travel routes
- Forest, marsh, tundra, and roadside scenes stay readable in third person
- Plant quality holds up both at travel distance and during close inspection
- The final flora stack remains compatible with the chosen terrain, snow, tree, and grass cache workflow
- Performance and maintenance cost stay reasonable for the visual gain provided

- Tree overhauls for dense forests
- LOD generation and distant detail
- DynDOLOD, grass cache, and occlusion workflow
- Character, skin, and creature visuals

## Animations and Movement

- Pandora framework and prerequisites
- Skeleton and behavior prerequisites
- Third-person locomotion animation sets
- Idle animations
- Combat animation packs
- Non-combat interaction animations
- Conditional animation systems
- Camera-aware animation support
- Creature animations
- Animation conflict management

## Third-Person Gameplay

- Third-person camera framework
- Camera presets and shoulder switching
- True directional movement
- Target lock and targeting behavior
- Dodge, sprint, and movement responsiveness
- Hit reactions, stagger, and impact feedback
- Third-person combat systems
- Crosshair and aiming behavior
- Horse camera and mounted controls

## Expanded Systems

- Character creation and starting choices
- Race, standing stone, and progression overhauls
- Perk overhaul compatibility
- Magic system expansion
- Alchemy overhaul
- Cooking and survival-adjacent systems
- Smithing and crafting expansion
- Economy and loot balance
- Religion, needs, or roleplay systems
- Crime, reputation, and social systems
- Followers and companion systems

## Modernized UI

- UI framework prerequisites
- HUD overhaul
- Inventory and item card improvements
- Magic, map, and journal improvements
- Dialogue UI improvements
- Controller-friendly UI support
- UI scaling for ultrawide and high resolution
- Compass, markers, and minimal HUD options
- Crafting menu improvements
- Accessibility and readability improvements

## Immersive Scale and World Feel

- Timescale and calendar adjustments
- Travel pacing and carriage fast travel rules
- Encounter spacing and wilderness feel
- Forest density and regional identity
- Soundscape and ambient audio
- City size, outskirts, and population feel
- Roadside clutter, ruins, and landmark density
- Wildlife and creature ecology
- Night darkness and visibility balance
- Weather severity and seasonal feel

## World Content

- Landscape overhauls
- Cities, towns, and villages
- Inns, farms, and small settlements
- Dungeons and ruins
- Points of interest and roadside content
- New quests that fit the tone
- Player homes and base-building considerations

## NPCs and Creatures

- NPC appearance overhauls
- Enemy variety
- Creature visual overhauls
- Creature behavior improvements
- Civilian and traveler population additions
- Wildlife density and rarity balance

## Audio and Feedback

- Music overhaul strategy
- Ambient audio improvements
- Combat sound effects
- UI sound redesign
- Footsteps, foley, and environmental reverb

## Survival, Difficulty, and Balance

- Difficulty framework
- Combat lethality and pacing
- Enemy AI improvements
- Injury, stamina, and resource pressure
- Survival systems compatibility
- Death, defeat, or respawn handling

## Performance and Technical Workflow

- Performance budgeting by system
- VRAM-heavy mod review
- CPU-heavy script review
- Shader performance impact
- Grass, tree, and draw-call optimization
- INI tuning and display settings
- Save safety considerations
- xEdit, Nemesis/Pandora, DynDOLOD, and synthesis workflow

## Modlist Curation Rules

- Visual style consistency rules
- Lore friendliness rules
- Third-person-first design rules
- Animation quality bar
- Performance target and hardware assumptions
- Preference for lightweight vs feature-rich mods
- Rules for avoiding overlapping overhauls

## Testing Plan

- Fresh game startup checklist
- Character creation test
- Third-person combat test
- City performance test
- Forest traversal test
- Dungeon lighting test
- UI and controller test
- Long-session stability test
