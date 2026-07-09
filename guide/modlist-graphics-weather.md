# Weather & Water

**MO2 Separator:** `Graphics` → `Graphics - Weather & Water`

All mods in this section belong to the `Graphics - Weather & Water` MO2 separator unless noted.

## Weather And Atmosphere → separator: `Graphics - Weather & Water`

Weather should be chosen as part of the Community Shaders presentation layer, not as an isolated plugin choice. The target is a grounded but modern visual tone that preserves forest, mountain, and travel readability in third person.

**Primary candidates — test side-by-side:**

| Mod                          | Description                                                                                                   | Nexus                                                               |
|------------------------------|---------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| NAT.CS III                   | Works on the conservative CS stack (no SSGI required).                                                        | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/139567) |
| Azurite III CS               | Requires the balanced CS add-on tier or higher (SSGI, Screen Space Shadows, Grass Lighting, Wetness Effects). | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/162153) |
| Sky Sync - Community Shaders | Sky colour/dome enhancement for CS. Lighter than full weather replacement.                                    | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/153543) |

### Alternatives

| Mod                             | Description                                            | Nexus                                                               |
|---------------------------------|--------------------------------------------------------|---------------------------------------------------------------------|
| Raid Weathers CS                | Gameplay-clarity route. Requires base `RAID Weathers`. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/171041) |
| RAID Weathers (base)            |                                                        | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/63116)  |
| Vanilla Weathers for CS         | Vanilla-plus CS-native. Has a True Storms patch.       | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/165393) |
| Obsidian Weathers               | Fallback benchmark.                                    | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/12125)  |
| Obsidian CS                     | Fallback benchmark.                                    | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/162627) |
| Cathedral Weathers              | Fallback benchmark.                                    | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/24791)  |
| Azurite Weathers III - Enhanced | Later tuning layer, not the first decision.            | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/150269) |
| Skydreamus CS Presets           | Later tuning layer, not the first decision.            | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/171145) |

### Azurite III Addon

| Mod | Description | Nexus |
|-----|-------------|-------|
| [Azurite III CS - Realistic Darker Nights](https://www.nexusmods.com/skyrimspecialedition/mods/183498) | Darker night preset for Azurite III CS. Requires testing — older nights affect third-person readability and combat detection. Needs Azurite III CS as base. |

### Risks & Compatibility

- A weather setup that looks stunning in screenshots can flatten gameplay readability in forests, storms, or dusk travel.
- Overly aggressive fog, contrast, or dark nights work against third-person exploration and combat.
- Preset stacking makes the final visual chain harder to reason about if weather, CS options, and external presets all push tone differently.

---

## Water Visuals → separator: `Graphics - Weather & Water`

Treat water as a full visual stack: base water look, CS water features, mesh support, foam, waterfalls. Target: cold, readable, grounded water that holds up in motion during travel.

### Baseline

| Mod                               | Description                                                                                                                                  | Nexus                                                               |
|-----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| Water Effects - Community Shaders | Baseline shader feature layer. CS 1.5.2+ ships a `Unified Water` module — evaluate whether it replaces the need for a standalone water base. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/112762) |
| A Water Made For CS in mind       | Primary base-water candidate.                                                                                                                | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/172959) |
| Splashes Of Skyrim                | Baseline inclusion, not optional. SKSE plugin for water impact effects; CS 1.4.1+ includes FPS optimizations.                                | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/47710)  |
| Loki's Wade In Water              | Water-interaction layer for wading. Mesh/anim replacer, no ESP.                                                                              | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/42854)  |

### Alternatives

Evaluate these only after the main water base is selected.

| Mod                                         | Description                                                                                                                  | Nexus                                                               |
|---------------------------------------------|------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| Simplicity of Sea                           |                                                                                                                              | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/56520)  |
| Color and Transparency Tweaks               |                                                                                                                              | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/148761) |
| Realistic Water Two SE                      | Legacy baseline.                                                                                                             | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/2182)   |
| Water for ENB                               | Legacy baseline.                                                                                                             | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/37061)  |
| FYX - Water Mesh Optimization               | Only add if it clearly improves shorelines or performance.                                                                   |                                                                     |
| Natural Waterfalls                          |                                                                                                                              | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/87261)  |
| Rally's Water Foam                          |                                                                                                                              | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/28922)  |
| Water Debris                                | Floating debris VFX.                                                                                                         | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/171371) |
| Underwater Bubbles - SKSE Plugin            | No ESP, complements surface stack.                                                                                           | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/175559) |
| Refined Water Droplet Replacer for R.A.S.S. | Rain/water droplet visual replacer. Works with R.A.S.S.                                                                      | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/40793)  |
| Wade in Water Redux - Swimming Overhaul     | Swimming overhaul with wading physics. Broader scope than Loki's Wade.                                                       | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/151353) |
| GKB Waves Reborn                            | High-quality animated wave shader for shorelines. Prerequisite for GKB Waves For Various Mods.                               | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/71126)  |
| GKB Waves For Various Mods                  | GKB wave coverage for mod-added coasts and new-lands. Requires GKB Waves Reborn. Verify compatibility with chosen water mod. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/124742) |

### Risks & Compatibility

- Water can look strong in still shots and distracting in motion if foam, reflections, or wave response are overdone.
- Water tone can clash with the chosen weather route.
- Mesh fixes and waterfall add-ons can help one setup and hurt another.

---

## Sky, Stars, And Auroras → separator: `Graphics - Weather & Water`

The cosmic visual layer: night-sky stars, aurora rendering, sky-dome enhancements. Kept separate from weather because sky-dome work is about clear-night rendering and long-horizon reads, not precipitation and overcast coverage.

### Baseline

| Mod         | Description                                                                                                               | Nexus                                                             |
|-------------|---------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
| AURORA S.E. | Adds proper northern-lights rendering. Genuinely upgrades the night vista without bloating the weather or lighting layer. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/6021) |

Keep the discipline-first route alive if the weather mod's bundled star/sky textures already read well. Defer a full sky-dome overhaul if playtesting shows the night sky needs more investment.

### Alternatives

| Mod                                                                                   | Description                                                                                            | Nexus                                                               |
|---------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| Rally's Celestial Canvas                                                              | Complete night-sky overhaul: auroras, galaxy, stars, constellations. Hand-drawn (8K galaxy, 4K stars). | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/110869) |
| Realistic Galaxy                                                                      | Galaxy texture replacer.                                                                               | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/111458) |
| Ultra Hi-Res Nightsky                                                                 | Hubble-imagery galaxy, up to 16K.                                                                      | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/6096)   |
| Worlds Behind Glass                                                                   | High-res night sky for telescope mods.                                                                 | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/158077) |
| [Draco's fantasy auroras](https://www.nexusmods.com/skyrimspecialedition/mods/120563) | Aurora/sky visual replacer. Optional cosmetic.                                                         |                                                                     |
| [Draco's moons](https://www.nexusmods.com/skyrimspecialedition/mods/40605)            | Moon visual replacer. Optional cosmetic.                                                               |                                                                     |

### Risks & Compatibility

- Aurora mods can look out of place in non-northern settings; verify southern holds.
- Sky-dome edits can fight with weather mods that tweak the night sky. Give the aurora mod priority for night-sky changes.
- Strong auroras require a real night-darkness baseline from → `Performance`; bright nights kill the aurora.
