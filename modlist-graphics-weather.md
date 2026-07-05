# Weather & Water

**MO2 Separator:** `Graphics` → `Graphics - Weather & Water`

## Weather And Atmosphere → `Graphics - Weather & Water`

### Core Idea

- Weather should be chosen as part of the Community Shaders presentation layer, not as an isolated plugin choice.
- The target is a grounded but modern visual tone that still preserves forest, mountain, and travel readability in third person.

### Options

- Native Community Shaders weather option: build around a package made specifically for CS.
- Legacy weather plus CS adaptation option: use an older established weather family with newer CS support.
- Vanilla-plus atmosphere option: favor consistency and readability over the most dramatic grading.
- CS-adaptation prerequisite: `RAID Weathers` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/63116> is the base mod that `Raid Weathers CS` adapts to Community Shaders. Both must be installed together; the CS variant only patches the base. → `Graphics - Weather & Water`

### Recommendation

- Start with two primary Community Shaders-native candidates:
- `NAT.CS III` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/139567> → `Graphics - Weather & Water`
- `Azurite III CS` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/162153> — note that this requires the balanced CS add-on tier or higher (enables SSGI, Screen Space Shadows, Grass Lighting, Wetness Effects in the CS FOMOD), unlike NAT.CS III which works on the conservative stack. → `Graphics - Weather & Water`
- Keep `Raid Weathers CS` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/171041> as the gameplay-clarity alternate route. → `Graphics - Weather & Water`
- Keep `Vanilla Weathers for CS` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/165393> as a vanilla-plus CS-native weather option — adjusts vanilla weathers for Community Shaders' tone mapping and volumetric lighting without adding new weather records. Has a True Storms patch. → `Graphics - Weather & Water`
- Treat older families such as `Obsidian Weathers and Seasons` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/12125>, `Obsidian CS` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/162627>, and `Cathedral Weathers and Seasons` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/24791> as fallback benchmarks rather than main recommendations. → `Graphics - Weather & Water`
- Treat `Azurite Weathers III - Enhanced` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/150269> and `Skydreamus Community Shaders Presets for NAT.CS III and Azurite III CS` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/171145> as later tuning layers, not the first decision. → `Graphics - Weather & Water`

### Risks & Compatibility

- A weather setup that looks stunning in screenshots can flatten gameplay readability in forests, storms, or dusk travel.
- Overly aggressive fog, contrast, or dark nights can work against third-person exploration and combat.
- Preset stacking can make the final visual chain harder to reason about if weather, CS options, and external presets all push tone differently.

### Acceptance Criteria

- Exterior scenes feel modern and atmospheric without reducing third-person readability.
- Forests, mountains, and cities remain distinct and readable across clear and bad weather.
- Rain, fog, and storms improve mood without obscuring travel too heavily.
- The chosen weather route complements the selected lighting strategy and CS modules.

## Water Visuals → `Graphics - Weather & Water`

### Core Idea

- Treat water as a full visual stack: base water look, Community Shaders water features, mesh support, foam behavior, and waterfall presentation.
- The target is cold, readable, grounded water that holds up in motion during travel.

### Options

- Community Shaders-native water route: build around CS water support and a water setup designed for CS.
- Conservative compatibility route: simpler base water with CS modules doing most of the modern visual work.
- Legacy comparison route: older water overhauls only if the CS-first route fails.

### Recommendation

- Start with the Community Shaders-native water route.
- Use `Water Effects - Community Shaders` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/112762> as the baseline shader feature layer. Community Shaders 1.5.2+ also ships a `Unified Water` module that standardises water rendering across the CS stack — evaluate whether it replaces the need for a standalone water base before committing to external water mods. → `Graphics - Weather & Water`
- Test `A Water Made For CS in mind` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/172959> as the primary base-water candidate. → `Graphics - Weather & Water`
- Only add `FYX - Water Mesh Optimization` if it clearly improves shorelines, water edges, or performance with the chosen setup. → `Graphics - Weather & Water`
- Keep `Simplicity of Sea - Water Mod with ENB and Community Shaders Displacement Textures` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/56520> as the main alternate comparison, layered on top of `Simplicity of Sea - Water Color and Transparency Tweaks` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/148761> which is its hard color/transparency dependency. → `Graphics - Weather & Water`
- `Simplicity of Sea - Water Color and Transparency Tweaks` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/148761> can also be used standalone as a lightweight color and transparency-only water adjustment, without the displacement textures from the main Simplicity of Sea mod. → `Graphics - Weather & Water`
- Treat `Realistic Water Two SE (RWT)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/2182> and `Water for ENB` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/37061> as legacy baselines, not first picks. → `Graphics - Weather & Water`
- Evaluate `Natural Waterfalls` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/87261> and `Rally's Water Foam` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/28922> only after the main water base is selected. → `Graphics - Weather & Water`
- Add `Splashes Of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/47710> as the projectile-based water splash and ripple layer. It is a powerofthree SKSE plugin that extends water impact effects (arrows, spells, shouts) to all water surfaces and adds dynamic displacement ripples. Works independently of the chosen water base and has Community Shaders compatibility (v1.4.1+ includes CS-specific FPS optimizations). Treat it as a baseline inclusion rather than an optional evaluation. → `Graphics - Weather & Water`
- Add `Loki's Wade In Water` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/42854> as the water-interaction layer for wading. Adds dynamic water ripple effects and footstep audio when the player or NPCs walk through shallow water. Mesh and animation replacer, no ESP, compatible with all water bases and Community Shaders. Complements the projectile-based splash layer by adding the body-in-water interaction side. → `Graphics - Weather & Water`
- Optional water-surface VFX: `Water Debris` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/171371> (v1.0.2, Apr 2026) — adds floating debris (twigs, leaves, particles) to water surfaces, making still and moving water feel more organic. SKSE plugin, no ESP, compatible with all water bases and Community Shaders. Evaluate after the main water base is stable. → `Graphics - Weather & Water`
- Optional underwater VFX: `Underwater Bubbles - SKSE Plugin` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/175559> (v1, Mar 2026) — adds bubble particle effects when the player or NPCs are submerged, improving underwater spatial awareness and visual feedback. SKSE plugin, no ESP. Complements the water-surface stack without touching water records. → `Graphics - Weather & Water`

### Risks & Compatibility

- Water can look strong in still shots and distracting in motion if foam, reflections, or wave response are overdone.
- Water tone can clash badly with the chosen weather route.
- Mesh fixes and waterfall add-ons can help one setup and hurt another.

### Acceptance Criteria

- Rivers, lakes, and coastlines look coherent across clear and bad weather.
- Water remains readable and believable in motion from third-person distance.
- Foam, reflections, and shoreline behavior improve immersion instead of drawing attention to artifacts.
- The final water route fits the CS stack and broader `Elder Wilds` atmosphere. → `Graphics - Weather & Water`

## Sky, Stars, And Auroras → `Graphics - Weather & Water`

### Core Idea

- This subsection owns the cosmic visual layer: night-sky stars, aurora rendering, and any sky-dome enhancements that affect how the world reads when the player looks up.
- It supports the "big, awe-inspiring world" pillar directly because Skyrim's vanilla night sky is one of the most flat-looking areas in the worldspace, and a strong sky layer pays off whenever the player pauses, gazes up, or traverses a wide vista.
- It is intentionally kept separate from the weather subsection because sky-dome work is mostly about clear-night rendering and long-horizon reads, not precipitation and overcast coverage.

### Options

- Aurora-focused route: `AURORA S.E.` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/6021> → `Graphics - Weather & Water`
- Galaxy texture route: `Realistic Galaxy` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/111458> → `Graphics - Weather & Water`
- Complete night-sky overhaul route: `Rally's Celestial Canvas` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/110869> — replaces auroras, galaxy, stars, and constellations with higher-fidelity hand-drawn textures. 8K galaxy, 4K stars, 1K constellations. → `Graphics - Weather & Water`
- Star-field texture route: `Ultra Hi-Res Nightsky` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/6096> — high-resolution galaxy texture replacer using Hubble imagery, up to 16K. → `Graphics - Weather & Water`
- Telescopic night-sky route: `Worlds Behind Glass - Telescopic Night Sky Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/158077> — high-res night sky designed for use with telescope mods (KettleWitch's Telescope, Clear Skies Telescope). Rewards exploration with detailed celestial views. → `Graphics - Weather & Water`
- Discipline-first route: rely on the chosen weather mod's bundled star or sky textures and skip the dedicated sky subsection entirely.
- Deferred high-commitment branch: do not add a full sky-dome or constellation overhaul unless real playtesting proves the night sky needs more than the weather baseline provides.

### Recommendation

- Use `AURORA S.E.` as the aurora baseline if `Elder Wilds` wants the night sky to be a real visual highlight. It adds aurora rendering with the look of a proper northern-lights storm (6.4K endorsements), and it is one of the few mods that genuinely upgrades the night vista without bloating the weather or lighting layer. → `Graphics - Weather & Water`
- Keep the discipline-first route alive if the weather mod's bundled star and sky textures already read as strong as the project's lighting and weather setup can support. A clear night sky with weak lighting and weather still looks flat.
- Keep the deferred high-commitment branch alive if a full star-field or constellation overhaul is later judged necessary. The current `Elder Wilds` tone does not need that level of sky investment to feel grand. → `Graphics - Weather & Water`
- Keep this subsection separate from the weather and lighting subsections. Sky-dome work is not the same as weather coverage, and the same mod rarely solves both well.

### Risks & Compatibility

- Aurora mods can look out of place in non-northern settings; verify behavior in southern holds before locking the baseline.
- Sky-dome edits can fight with weather mods that also tweak the night sky; resolve overlap by giving the aurora mod load-order priority for night-sky changes and suppressing duplicate edits in the weather mod's MCM if available.
- Strong auroras at night require a real night-darkness baseline from `modlist-world-feel.md`; if the night is too bright, the aurora will not read. → `Graphics - Weather & Water`

### Acceptance Criteria

- `Elder Wilds` has one clear aurora baseline or a deliberate discipline-first decision. → `Graphics - Weather & Water`
- Night skies feel atmospheric rather than flat without forcing a full sky-dome overhaul.
- Sky work stays separated from weather and lighting decisions in load order, MCM, and visual identity.
