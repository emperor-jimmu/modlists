# Weather & Water

**MO2 Separator:** `Graphics` → `Graphics - Weather & Water`

All mods in this section belong to the `Graphics - Weather & Water` MO2 separator unless noted.

## Weather And Atmosphere

Weather should be chosen as part of the Community Shaders presentation layer, not as an isolated plugin choice. The target is a grounded but modern visual tone that preserves forest, mountain, and travel readability in third person.

**Primary candidates — test side-by-side:**

- **NAT.CS III** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/139567)) — Works on the conservative CS stack (no SSGI required).
- **Azurite III CS** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/162153)) — Requires the balanced CS add-on tier or higher (SSGI, Screen Space Shadows, Grass Lighting, Wetness Effects).

### Alternatives

- **Raid Weathers CS** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/171041)) — Gameplay-clarity route. Requires base `RAID Weathers` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/63116)).
- **Vanilla Weathers for CS** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/165393)) — Vanilla-plus CS-native. Has a True Storms patch.
- **Obsidian Weathers** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/12125)) / **Obsidian CS** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/162627)) — Fallback benchmarks.
- **Cathedral Weathers** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/24791)) — Fallback benchmark.
- **Azurite Weathers III - Enhanced** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/150269)) / **Skydreamus CS Presets** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/171145)) — Later tuning layers, not the first decision.

### Notes

- A weather setup that looks stunning in screenshots can flatten gameplay readability in forests, storms, or dusk travel.
- Overly aggressive fog, contrast, or dark nights work against third-person exploration and combat.
- Preset stacking makes the final visual chain harder to reason about if weather, CS options, and external presets all push tone differently.

---

## Water Visuals

Treat water as a full visual stack: base water look, CS water features, mesh support, foam, waterfalls. Target: cold, readable, grounded water that holds up in motion during travel.

### Baseline

- **Water Effects - Community Shaders** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/112762)) — Baseline shader feature layer. CS 1.5.2+ ships a `Unified Water` module — evaluate whether it replaces the need for a standalone water base.
- **A Water Made For CS in mind** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/172959)) — Primary base-water candidate.
- **Splashes Of Skyrim** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/47710)) — Baseline inclusion, not optional. SKSE plugin for water impact effects; CS 1.4.1+ includes FPS optimizations.
- **Loki's Wade In Water** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/42854)) — Water-interaction layer for wading. Mesh/anim replacer, no ESP.

### Alternatives
>
> Evaluate these only after the main water base is selected.

- **Simplicity of Sea** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/56520)) + **Color and Transparency Tweaks** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/148761)) — Main alternate comparison.
- **Realistic Water Two SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/2182)) — Legacy baseline.
- **Water for ENB** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/37061)) — Legacy baseline.
- **FYX - Water Mesh Optimization** — Only add if it clearly improves shorelines or performance.
- **Natural Waterfalls** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/87261))
- **Rally's Water Foam** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/28922))
- **Water Debris** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/171371)) — Floating debris VFX.
- **Underwater Bubbles - SKSE Plugin** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/175559)) — No ESP, complements surface stack.

### Notes

- Water can look strong in still shots and distracting in motion if foam, reflections, or wave response are overdone.
- Water tone can clash with the chosen weather route.
- Mesh fixes and waterfall add-ons can help one setup and hurt another.

---

## Sky, Stars, And Auroras

The cosmic visual layer: night-sky stars, aurora rendering, sky-dome enhancements. Kept separate from weather because sky-dome work is about clear-night rendering and long-horizon reads, not precipitation and overcast coverage.

### Baseline

- **AURORA S.E.** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/6021)) — Adds proper northern-lights rendering. Genuinely upgrades the night vista without bloating the weather or lighting layer.

Keep the discipline-first route alive if the weather mod's bundled star/sky textures already read well. Defer a full sky-dome overhaul if playtesting shows the night sky needs more investment.

### Alternatives

- **Rally's Celestial Canvas** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/110869)) — Complete night-sky overhaul: auroras, galaxy, stars, constellations. Hand-drawn (8K galaxy, 4K stars).
- **Realistic Galaxy** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/111458)) — Galaxy texture replacer.
- **Ultra Hi-Res Nightsky** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/6096)) — Hubble-imagery galaxy, up to 16K.
- **Worlds Behind Glass** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/158077)) — High-res night sky for telescope mods.

### Notes

- Aurora mods can look out of place in non-northern settings; verify southern holds.
- Sky-dome edits can fight with weather mods that tweak the night sky. Give the aurora mod priority for night-sky changes.
- Strong auroras require a real night-darkness baseline from → `Performance`; bright nights kill the aurora.
