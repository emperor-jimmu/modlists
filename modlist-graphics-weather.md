# Weather & Water

**MO2 Separator:** `Graphics` → `Graphics - Weather & Water`

## Weather And Atmosphere → `Graphics - Weather & Water`

Weather should be chosen as part of the Community Shaders presentation layer, not as an isolated plugin choice. The target is a grounded but modern visual tone that preserves forest, mountain, and travel readability in third person.

### Baseline

- **NAT.CS III** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/139567)) — Primary CS-native candidate. Works on the conservative CS stack (no SSGI requirement). → `Graphics - Weather & Water`
- **Azurite III CS** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/162153)) — Primary CS-native candidate. Requires the balanced CS add-on tier or higher (SSGI, Screen Space Shadows, Grass Lighting, Wetness Effects). → `Graphics - Weather & Water`

Start with both NAT.CS III and Azurite III CS as candidates and test side-by-side.

### Alternatives

- **Raid Weathers CS** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/171041)) — Gameplay-clarity alternate route. Requires base `RAID Weathers` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/63116)). → `Graphics - Weather & Water`
- **Vanilla Weathers for CS** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/165393)) — Vanilla-plus CS-native option; adjusts vanilla weathers for CS tonemapping and volumetric lighting without adding new weather records. Has a True Storms patch. → `Graphics - Weather & Water`
- **Obsidian Weathers and Seasons** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/12125)) / **Obsidian CS** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/162627)) — Fallback benchmarks, not main recommendations. → `Graphics - Weather & Water`
- **Cathedral Weathers and Seasons** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/24791)) — Fallback benchmark. → `Graphics - Weather & Water`
- **Azurite Weathers III - Enhanced** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/150269)) / **Skydreamus CS Presets** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/171145)) — Later tuning layers, not the first decision. → `Graphics - Weather & Water`

### Notes

- A weather setup that looks stunning in screenshots can flatten gameplay readability in forests, storms, or dusk travel.
- Overly aggressive fog, contrast, or dark nights can work against third-person exploration and combat.
- Preset stacking can make the final visual chain harder to reason about if weather, CS options, and external presets all push tone differently.

## Water Visuals → `Graphics - Weather & Water`

Treat water as a full visual stack: base water look, Community Shaders water features, mesh support, foam behavior, and waterfall presentation. The target is cold, readable, grounded water that holds up in motion during travel.

### Baseline

- **Water Effects - Community Shaders** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/112762)) — Baseline shader feature layer. CS 1.5.2+ also ships a `Unified Water` module — evaluate whether it replaces the need for a standalone water base. → `Graphics - Weather & Water`
- **A Water Made For CS in mind** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/172959)) — Primary base-water candidate for testing. → `Graphics - Weather & Water`
- **Splashes Of Skyrim** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/47710)) — Baseline inclusion, not optional. SKSE plugin for water impact effects (arrows, spells, shouts); CS 1.4.1+ includes CS-specific FPS optimizations. → `Graphics - Weather & Water`
- **Loki's Wade In Water** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/42854)) — Water-interaction layer for wading. Mesh and animation replacer, no ESP, compatible with all water bases and Community Shaders. → `Graphics - Weather & Water`

### Alternatives

- **Simplicity of Sea** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/56520)) + **Simplicity of Sea - Color and Transparency Tweaks** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/148761)) — Main alternate comparison. Color/transparency tweaks can also be used standalone as a lightweight adjustment. → `Graphics - Weather & Water`
- **Realistic Water Two SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/2182)) — Legacy baseline, not first pick. → `Graphics - Weather & Water`
- **Water for ENB** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/37061)) — Legacy baseline, not first pick. → `Graphics - Weather & Water`
- **FYX - Water Mesh Optimization** — Only add if it clearly improves shorelines, water edges, or performance with chosen setup. → `Graphics - Weather & Water`
- **Natural Waterfalls** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/87261)) — Evaluate only after main water base is selected. → `Graphics - Weather & Water`
- **Rally's Water Foam** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/28922)) — Evaluate only after main water base is selected. → `Graphics - Weather & Water`
- **Water Debris** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/171371)) — Optional water-surface VFX (floating debris). Evaluate after main water base is stable. → `Graphics - Weather & Water`
- **Underwater Bubbles - SKSE Plugin** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/175559)) — Optional underwater VFX. No ESP, complements water-surface stack without touching water records. → `Graphics - Weather & Water`

### Notes

- Water can look strong in still shots and distracting in motion if foam, reflections, or wave response are overdone.
- Water tone can clash badly with the chosen weather route.
- Mesh fixes and waterfall add-ons can help one setup and hurt another.

## Sky, Stars, And Auroras → `Graphics - Weather & Water`

This subsection owns the cosmic visual layer: night-sky stars, aurora rendering, and sky-dome enhancements. It supports the "big, awe-inspiring world" pillar directly because the vanilla night sky is one of the flattest areas in the worldspace. Kept separate from weather because sky-dome work is about clear-night rendering and long-horizon reads, not precipitation and overcast coverage.

### Baseline

- **AURORA S.E.** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/6021)) — Aurora baseline. Adds proper northern-lights aurora rendering (6.4K endorsements). One of the few mods that genuinely upgrades the night vista without bloating the weather or lighting layer. → `Graphics - Weather & Water`

Keep the discipline-first route alive if the weather mod's bundled star/sky textures already read as strong as the project's lighting setup can support. Reserve the deferred full sky-dome overhaul branch if playtesting later shows the night sky needs more investment.

### Alternatives

- **Rally's Celestial Canvas** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/110869)) — Complete night-sky overhaul: auroras, galaxy, stars, and constellations with hand-drawn textures (8K galaxy, 4K stars, 1K constellations). → `Graphics - Weather & Water`
- **Realistic Galaxy** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/111458)) — Galaxy texture replacer. → `Graphics - Weather & Water`
- **Ultra Hi-Res Nightsky** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/6096)) — High-resolution galaxy texture using Hubble imagery, up to 16K. → `Graphics - Weather & Water`
- **Worlds Behind Glass - Telescopic Night Sky Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/158077)) — High-res night sky for use with telescope mods. → `Graphics - Weather & Water`

### Notes

- Aurora mods can look out of place in non-northern settings; verify behavior in southern holds before locking.
- Sky-dome edits can fight with weather mods that also tweak the night sky. Resolve by giving the aurora mod load-order priority for night-sky changes.
- Strong auroras require a real night-darkness baseline from → `Performance`; if the night is too bright, the aurora will not read.
