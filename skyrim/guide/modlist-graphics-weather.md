# Weather & Water

**MO2 Separator:** `Graphics` → `Graphics - Weather & Water`

All mods in this section belong to the `Graphics - Weather & Water` MO2 separator unless noted.

## Weather And Atmosphere
Weather should be chosen as part of the Community Shaders presentation layer, not as an isolated plugin choice. The target is a grounded but modern visual tone that preserves forest, mountain, and travel readability in third person.

**Primary candidates — test side-by-side:**

| Mod                          | Description                                                                                                   |
|------------------------------|---------------------------------------------------------------------------------------------------------------|
| [Azurite III CS](https://www.nexusmods.com/skyrimspecialedition/mods/162153) | **Baseline.** Requires the balanced CS add-on tier or higher (SSGI, Screen Space Shadows, Grass Lighting, Wetness Effects). 1,263 endorsements, FOMOD with darker nights and reduced bloom for tunable grim-dark aesthetic. |
| [NAT.CS III](https://www.nexusmods.com/skyrimspecialedition/mods/139567) | Alternative. Works on the conservative CS stack (no SSGI required). |
| [Sky Sync - Community Shaders](https://www.nexusmods.com/skyrimspecialedition/mods/153543) | Sky colour/dome enhancement for CS. Lighter than full weather replacement. |

### Alternatives

| Mod                             | Description                                            |
|---------------------------------|--------------------------------------------------------|
| [Raid Weathers CS](https://www.nexusmods.com/skyrimspecialedition/mods/171041) | Gameplay-clarity route. Requires base `RAID Weathers`. |
| [RAID Weathers (base)](https://www.nexusmods.com/skyrimspecialedition/mods/63116) |                                                          |
| [Real Weathers Remastered](https://www.nexusmods.com/skyrimspecialedition/mods/168776) | CS-native ground-up build. DALC, moon phase lighting, physical sky approximation. 526 endorsements. Nights reported as very dark — test before adopting. |
| [Vanilla Weathers for CS](https://www.nexusmods.com/skyrimspecialedition/mods/165393) | Vanilla-plus CS-native. Has a True Storms patch. |
| [Obsidian Weathers](https://www.nexusmods.com/skyrimspecialedition/mods/12125) |  Fallback benchmark.                                     |
| [Obsidian CS](https://www.nexusmods.com/skyrimspecialedition/mods/162627) | Fallback benchmark. |
| [Cathedral Weathers](https://www.nexusmods.com/skyrimspecialedition/mods/24791) |  Fallback benchmark.                                     |
| [Azurite Weathers III - Enhanced](https://www.nexusmods.com/skyrimspecialedition/mods/150269) | Later tuning layer, not the first decision. |
| [Skydreamus CS Presets](https://www.nexusmods.com/skyrimspecialedition/mods/171145) | Later tuning layer, not the first decision. |
| [Mists of Tamriel](https://www.nexusmods.com/skyrimspecialedition/mods/78703) |  Mist/fog atmospheric enhancement. CS-compatible — verify fog density in third-person readability.  |

### Azurite III Addon

| Mod | Description |
|-----|-------------|
| [Azurite III CS - Realistic Darker Nights](https://www.nexusmods.com/skyrimspecialedition/mods/183498) | Darker night preset for Azurite III CS. Requires testing — older nights affect third-person readability and combat detection. Needs Azurite III CS as base. |

### Risks & Compatibility

- A weather setup that looks stunning in screenshots can flatten gameplay readability in forests, storms, or dusk travel.
- Overly aggressive fog, contrast, or dark nights work against third-person exploration and combat.
- Preset stacking makes the final visual chain harder to reason about if weather, CS options, and external presets all push tone differently.

---

## Water Visuals
Treat water as a full visual stack: base water look, CS water features, mesh support, foam, waterfalls. Target: cold, readable, grounded water that holds up in motion during travel.

### Baseline

| Mod                               | Description                                                                                                                                  |
|-----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------|
| [Water Effects - Community Shaders](https://www.nexusmods.com/skyrimspecialedition/mods/112762) | Baseline shader feature layer. CS 1.5.2+ ships a `Unified Water` module. |
| [Simplicity of Sea](https://www.nexusmods.com/skyrimspecialedition/mods/56520) |  **Baseline.** Lightweight, proven CS water. Pairs with Water Effects CS for visual depth.                                                      |
| [Splashes Of Skyrim](https://www.nexusmods.com/skyrimspecialedition/mods/47710) |  Baseline inclusion, not optional. SKSE plugin for water impact effects; CS 1.4.1+ includes FPS optimizations.                                 |
| [Loki's Wade In Water](https://www.nexusmods.com/skyrimspecialedition/mods/42854) |  Water-interaction layer for wading. Mesh/anim replacer, no ESP.                                                                               |

### Alternatives

Evaluate these only after the main water base is selected.

| Mod                                         | Description                                                                                                                  |
|---------------------------------------------|------------------------------------------------------------------------------------------------------------------------------|
| [Simplicity of Sea](https://www.nexusmods.com/skyrimspecialedition/mods/56520) |                                                                                                                                |
| [Color and Transparency Tweaks](https://www.nexusmods.com/skyrimspecialedition/mods/148761) |  |
| [Realistic Water Two SE](https://www.nexusmods.com/skyrimspecialedition/mods/2182) |  Legacy baseline.                                                                                                              |
| [Natural Waterfalls](https://www.nexusmods.com/skyrimspecialedition/mods/87261) |                                                                                                                                |
| [Rally's Water Foam](https://www.nexusmods.com/skyrimspecialedition/mods/28922) |                                                                                                                                |
| [Water Debris](https://www.nexusmods.com/skyrimspecialedition/mods/171371) | Floating debris VFX. |
| [Underwater Bubbles - SKSE Plugin](https://www.nexusmods.com/skyrimspecialedition/mods/175559) | No ESP, complements surface stack. |
| [Refined Water Droplet Replacer for R.A.S.S.](https://www.nexusmods.com/skyrimspecialedition/mods/40793) |  Rain/water droplet visual replacer. Works with R.A.S.S.                                                                       |
| [Wade in Water Redux - Swimming Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/151353) | Swimming overhaul with wading physics. Broader scope than Loki's Wade. |
| [GKB Waves Reborn](https://www.nexusmods.com/skyrimspecialedition/mods/71126) |  High-quality animated wave shader for shorelines. Prerequisite for GKB Waves For Various Mods.                                |
| [GKB Waves For Various Mods](https://www.nexusmods.com/skyrimspecialedition/mods/124742) | GKB wave coverage for mod-added coasts and new-lands. Requires GKB Waves Reborn. Verify compatibility with chosen water mod. |
| [WAVY Waterfalls Effect](https://www.nexusmods.com/skyrimspecialedition/mods/126073) | Animated waterfall mesh replacer with wave motion. CS-compatible. |

### Risks & Compatibility

- Water can look strong in still shots and distracting in motion if foam, reflections, or wave response are overdone.
- Water tone can clash with the chosen weather route.
- Mesh fixes and waterfall add-ons can help one setup and hurt another.

---

## Sky, Stars, And Auroras
The cosmic visual layer: night-sky stars, aurora rendering, sky-dome enhancements. Kept separate from weather because sky-dome work is about clear-night rendering and long-horizon reads, not precipitation and overcast coverage.

### Baseline

| Mod                                                                                   | Description                                                                                                                            |
|---------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------|
| [Praedy's Night Sky AIO](https://www.nexusmods.com/skyrimspecialedition/mods/47530)   | **Locked.** Complete night-sky overhaul: stars (9 options), nebula (16 options), galaxy (4 options), constellations, Masser + Secunda moons, auroras. FOMOD-tunable. Choose 2K. 5,795 endorsements, v2.1. |                                                                     |
| [Shooting Stars SE](https://www.nexusmods.com/skyrimspecialedition/mods/73090)        | **Locked.** Randomized shooting-star streaks overlaying the static sky. Script-free, no overlap with Praedy's textures.                  |                                                                     |

### Alternatives

| Mod                                                                                   | Description                                                                                            |
|---------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------|
| [Rally's Celestial Canvas](https://www.nexusmods.com/skyrimspecialedition/mods/110869) | Rejected — Praedy's AIO chosen for higher endorsement signal (5,795 vs Rally's) and granular FOMOD tuning (9 star options, 16 nebula options). |
| [AURORA S.E.](https://www.nexusmods.com/skyrimspecialedition/mods/6021) |  Rejected — redundant. Praedy's includes aurora coverage.                                                |
| Realistic Galaxy / Ultra Hi-Res Nightsky / Worlds Behind Glass                        | Rejected — single-texture replacers. Praedy's AIO provides coherent full-sky coverage.                 |                                                                     |
| Draco's fantasy auroras / Draco's moons                                               | Rejected — redundant with Praedy's aurora and moon coverage.                                           |                                                                     |
| [Texture Overhaul Stars and Galaxy of Nirn](https://www.nexusmods.com/skyrimspecialedition/mods/41260) |  Rejected — single-texture replacer. Praedy's AIO preferred for coherent stack.                          |
| [Skyrim Textures Redone - Stars](https://www.nexusmods.com/skyrimspecialedition/mods/4931) |  Rejected — single-texture replacer. Praedy's AIO preferred for coherent stack.                          |

### Risks & Compatibility

- Praedy's aurora textures can look out of place in non-northern settings; verify southern holds.
- Sky-dome edits can fight with weather mods that tweak the night sky. Give Praedy's sky-dome priority for night-sky changes.
- Strong auroras require a real night-darkness baseline from → `Performance`; bright nights kill the aurora.
- Shooting Stars SE is script-free and adds dynamic streaks on top of Praedy's static textures — no overlap risk. Verify the combined visual reads cleanly under Azurite III CS dark nights.
