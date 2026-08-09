# Terrain & Flora

## Terrain, Roads, And Snow
Treat terrain, roads, and snow as one connected presentation layer. Must stay coherent with Community Shaders, PBR support, rock meshes, weather, and later LOD generation.

### Baseline

|  Mod                     |  Description                                                                                                                                         |
| ------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Better Dynamic Snow SE](https://www.nexusmods.com/skyrimspecialedition/mods/9121) |  Snow-and-ash multistage accumulation. Works with `Simplicity of Snow`; the `BDSPatcher` Synthesis patcher handles mod-added objects automatically.  |
| [Better Dynamic Ash SE](https://www.nexusmods.com/skyrimspecialedition/mods/54754) |  Solstheim ash equivalent.                                                                                                                           |

### Landscape And Terrain

|  Mod                                                                       |  Description                                                                                                                                                                                        |
| -------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [TomatoRim PBR Landscapes AIO](https://www.nexusmods.com/skyrimspecialedition/mods/177621) |  **Locked.** PBR-native landscape textures. Coherent with Tomato's PBR Vanilla Trees (locked tree texture baseline) for unified CS visual pipeline. Choose 2K.                                     |
| [Enhanced Rocks and Mountains - Complex Material and PBR](https://www.nexusmods.com/skyrimspecialedition/mods/121336) |  **Primary mountain/rock identity.** CS-native, no plugins, Complex Material support. Drop Majestic Mountains entirely (author inactive since June 2022, mesh misses snow coverage on rock piles). Install both main files — meshes then Textures (FOMOD → PBR) — and run PGPatcher. Optional **Blended ERM** is NOT baseline (see Risks & Compatibility below).  |
| [Enhanced Rocks and Mountains - Fix and Addon](https://www.nexusmods.com/skyrimspecialedition/mods/142493) |  Extends ERM to underground spaces and Whiterun Skyforge.                                                                                                                                           |
| [Tomato's Whiterun Remake - PBR or Complex Material](https://www.nexusmods.com/skyrimspecialedition/mods/173747) |  Whiterun-specific terrain retexture.                                                                                                                                                               |

### Alternatives

|  Mod                                                        |  Description                                                                                           |
| ----------------------------------------------------------- | ------------------------------------------------------------------------------------------------------ |
| [Skyking Fantasia Landscapes](https://www.nexusmods.com/skyrimspecialedition/mods/107256) |  Rejected — fantasy-leaning aesthetic conflicts with grim-dark pillar.                                 |
| [A Cathedralist's PBR Landscape](https://www.nexusmods.com/skyrimspecialedition/mods/137333) |  Rejected — TomatoRim chosen for shared-author coherence with locked tree textures.                    |
| [Vanaheimr - Landscapes - AIO - Complex Material - PBR](https://www.nexusmods.com/skyrimspecialedition/mods/145439) |  Rejected — TomatoRim chosen for shared-author coherence with locked tree textures.                    |
| [Atlantean Landscape - Majestic Edition](https://www.nexusmods.com/skyrimspecialedition/mods/102170) |  Rejected — lower community signal.                                                                    |
| [Atlantean Landscape - Complete - Complex Terrain Parallax](https://www.nexusmods.com/skyrimspecialedition/mods/89542) |  Rejected — older version; superseded by Majestic Edition.                                             |
| [Tomato's Complex Parallax Material Landscapes AIO](https://www.nexusmods.com/skyrimspecialedition/mods/110981) |  Rejected — TomatoRim PBR is the newer locked version.                                                 |
| [Seasonal Landscapes](https://www.nexusmods.com/skyrimspecialedition/mods/66903) |  Rejected — excessive patch debt at this modlist's complexity level.                                   |
| [Tomato's Whiterun Remake PBR - Seasonal Landscapes Patch](https://www.nexusmods.com/skyrimspecialedition/mods/174042) |  Rejected — depends on Seasonal Landscapes which is rejected.                                          |

### Roads

|  Mod                                                                                          |  Description                                                                                             |
| --------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- |
| [Blended Roads - Light Plugin (ESL)](https://www.nexusmods.com/skyrimspecialedition/mods/171554) |                                                                                                          |
| [HD Remastered Blended Roads](https://www.nexusmods.com/skyrimspecialedition/mods/63674) |  HD hand-made rework. Choose 2K for performance, 4K for visual sweet spot. Requires Blended Roads base.  |
|  [Simplest Roads](https://www.nexusmods.com/skyrimspecialedition/mods/111255)                 |  Minimal road texture replacer. Alternative to Blended Roads.                                            |
|  [Simple Complex Parallax Roads](https://www.nexusmods.com/skyrimspecialedition/mods/173826)  |  Parallax road textures requiring CS Complex Material. Alternative to Blended Roads.                     |

### Snow And Support

|  Mod                                        |  Description                                                   |
| ------------------------------------------- | -------------------------------------------------------------- |
| [Simplicity of Snow](https://www.nexusmods.com/skyrimspecialedition/mods/56235) |                                                                |
| [Nordic Snow](https://www.nexusmods.com/skyrimspecialedition/mods/670) |                                                                |
| [Nordic Snow - Complex Material](https://www.nexusmods.com/skyrimspecialedition/mods/133034) |                                                                |
| [Hyperborean Snow SE - 8K](https://www.nexusmods.com/skyrimspecialedition/mods/29283) |  Comparison candidate, not locked.                             |
| [Better Dynamic Snow SE](https://www.nexusmods.com/skyrimspecialedition/mods/9121) |  Multistage accumulation with terrain-blended coverage.        |
| [Better Dynamic Ash SE](https://www.nexusmods.com/skyrimspecialedition/mods/54754) |  Solstheim ash equivalent.                                     |
| [Enhanced Rocks and Mountains - CM and PBR](https://www.nexusmods.com/skyrimspecialedition/mods/121336) |  See Landscape section above; listed here for snow coherence.  |
| [Softly Obscuring Snowfall - No Dirty Ruins Snow](https://www.nexusmods.com/skyrimspecialedition/mods/152163) |  Removes dirty brown vertex-color shading on snow statics for a clean fresh-snow look. Meshes based on vanilla/SMIM/Assorted Mesh Fixes. FOMOD has optional patches for Simplicity of Snow, Snozz' Resource Pack, Enhanced Rocks and Mountains, Wyrmstooth, Deadly Dragon Lairs. Fits the CS clean-snow direction.  |

### Alternatives

- **Windhelm Is Snowy - Base Object Swapper** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/165102)) — BOS-based snow coverage for Windhelm. Complements Simplicity of Snow.
- **Snowy Standing Stones for Snowy Regions** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/139000)) — BOS-based snow coverage for standing stones in snowy regions.

### Risks & Compatibility

- Snow can look good in isolation and fail once mixed with mountains, roads, and weather-heavy scenes.
- Heavy terrain parallax can look impressive close up while adding artifact risk or visual noise in motion.
- ERM's optional **Blended ERM** file is a standalone alternative mesh set, not a PGPatcher requirement (the mod's only listed requirement is PGPatcher, already baseline). Its meshes are intentionally non-parallax and only render correctly after PGPatcher re-adds parallax — so it swaps in *instead of* the main meshes, never alongside them. Community-standard use: fix ugly rock-to-terrain seams under PG output. If testing shows seam artifacts: first try the **Rugged** variant in the ERM Textures FOMOD (resolved reported parallax rippling on snow/cliff edges without swapping meshes), then swap main meshes → Blended ERM and re-run PG. Caveats: Blended v1.0.2 (Apr 2025) predates main v1.1.2 (Apr 2026) and misses its rockl02 seam fix; if adopted, also pick the matching Blended options in ERM Fix and Addon's FOMOD (v6.2+) for underground consistency.

---

## Flora Visuals
Flora is the ground-level readability layer between terrain materials and tree coverage. It should improve grass density, wildland texture, and plant variety without making traversal unreadable or creating constant patch work.

### Grass

|  Mod                                  |  Description                                                                                       |
| ------------------------------------- | -------------------------------------------------------------------------------------------------- |
| [Skoglendi - A Grass Mod](https://www.nexusmods.com/skyrimspecialedition/mods/93944) |  Baseline grass.                                                                                   |
| [Merethic Grasslands](https://www.nexusmods.com/skyrimspecialedition/mods/164058) |  Variety enhancer; pairs with Skoglendi for northern grassland texture.                            |
| [Origins Of Forest - 3D Forest Grass](https://www.nexusmods.com/skyrimspecialedition/mods/45719) |  Density enhancer. Add only if forests feel too sparse after terrain and tree choices are locked.  |

### Plant Replacers

|  Mod                                                                                           |  Description                                                   |
| ---------------------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| [Mari's flora](https://www.nexusmods.com/skyrimspecialedition/mods/45952) |                                                                |
| [Real Wheat Fields](https://www.nexusmods.com/skyrimspecialedition/mods/151229) |  Fuller wheat field meshes/textures. 2K, ESL. Option B adds a big wheat field east of Whiterun. Requires Wheat Replacer (112074) as base.  |
| [Freak's Floral Solstheim](https://www.nexusmods.com/skyrimspecialedition/mods/138161) |  Solstheim ash-covered grass/flora replacer.                   |
| [A Nirnroot](https://www.nexusmods.com/skyrimspecialedition/mods/80281) |  Nirnroot mesh/texture replacer with glowing effects. No ESP.  |
| [Flora Orientalis](https://www.nexusmods.com/skyrimspecialedition/mods/64041) |  Dependency for Vinland Grass Patch + mixed-route coverage.    |
| [Waterplants](https://www.nexusmods.com/skyrimspecialedition/mods/6092) |  Dependency for Vinland Grass Patch + mixed-route coverage.    |
|  [Flora Additions - Water Plants](https://www.nexusmods.com/skyrimspecialedition/mods/116324)  |  Optional water plant flora additions.                         |
|  [Reimagined Mountain Flowers - Base Object Swapper - Seasons of Skyrim](https://www.nexusmods.com/skyrimspecialedition/mods/135460)  |  Mountain flower replacer with BOS and Seasonal Landscapes support.  |

### 3D Plant Replacers (mesh-only, no ESP)

|  Mod                                                                                         |  Description                                                                                       |
| -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- |
|  Cathedral - 3D Plants (Clover, Deathbell, Dragons Tongue, Lavender, Thistle, Snow Berries)  |  Full Cathedral 3D series.                                                                         |
| [Cathedral - 3D Stonecrop](https://www.nexusmods.com/skyrimspecialedition/mods/110726) |                                                                                                    |
| [DrJacopo - 3D Tundra Shrubs](https://www.nexusmods.com/skyrimspecialedition/mods/108747) |                                                                                                    |
| [Cathedral PBR Plants](https://www.nexusmods.com/skyrimspecialedition/mods/135836) |  PBR texture layer for the Cathedral 3D series. Requires original Cathedral plants and PGPatcher.  |
| [PBR Waterplants](https://www.nexusmods.com/skyrimspecialedition/mods/129928) |  PBR textures for underwater plants.                                                               |

### Tree-Adjacent

|  Mod                                                                       |  Description                                                        |
| -------------------------------------------------------------------------- | ------------------------------------------------------------------- |
| [Skyfall's Sleeping Hist Tree Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/116792) |  Riften Sleeping Hist tree replacement. Mesh/texture only, no ESP.  |
| [TMD The Rift Leaves](https://www.nexusmods.com/skyrimspecialedition/mods/111461) |  3D leaf particle replacer for The Rift. No ESP.                    |
|  [Immersive 3D Leaves](https://www.nexusmods.com/skyrimspecialedition/mods/170242)  |  Replaces Riften's flat 2D leaves with 3D models. By MaximusTheWizard.  |
|  [Bigger trees](https://www.nexusmods.com/skyrimspecialedition/mods/5281)  |  Optional tree size multiplier.                                     |

### Environment-Plant Extras (visual polish, not baseline)

|  Mod                                    |  Description                                                                    |
| --------------------------------------- | ------------------------------------------------------------------------------- |
| [High Quality Ivy Replacer - BOS](https://www.nexusmods.com/skyrimspecialedition/mods/113578) |  Replaces ivy meshes/textures. Animated/static via FOMOD. No performance cost.  |
| [Grumbledook Swordferns - Optional PBR](https://www.nexusmods.com/skyrimspecialedition/mods/163949) |  New swordfern meshes/textures. Hard-requires BOS; PBR variant requires CS.     |

> Evaluate these after grass, 3D plant replacers, and tree choices are locked. Both layer via BOS (no cell-record edits).

### Alternatives

|  Mod                                       |  Description                                               |
| ------------------------------------------ | ---------------------------------------------------------- |
| [Folkvangr - Grass and Landscape Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/44899) |  Main heavier alternate.                                   |
| [Vinland Grass Patch](https://www.nexusmods.com/skyrimspecialedition/mods/95273) |  Only after the final grass combination is narrow enough.  |
|  QW's Grass Patch 2                        |  Only after the final grass combination is narrow enough.  |
| [Grassreach - Blackreach Grass](https://www.nexusmods.com/skyrimspecialedition/mods/179420) |  Blackreach-specific grass replacer.                       |
| [Wildlands Renewal](https://www.nexusmods.com/skyrimspecialedition/mods/139896) |  Grass and groundcover improvement mod. Evaluate as Skoglendi alternative or layering candidate.  |
| [Freak's Floral Meadows](https://www.nexusmods.com/skyrimspecialedition/mods/148525) |  Full grass overhaul by TheBloodyFreak. **Replaces Skoglendi** — not a plant replacer. iMinGrassSize 60, requires Cathedral 3D Grass Library meshes. No other grass mods. Performance-friendly alternative to FFF.  |

### Risks & Compatibility

- Grass that looks strong in screenshots can make traversal and combat readability worse.
- Layering multiple grass and plant mods creates real patch and cache maintenance cost.
- Forest-floor enhancers can become too dense once weather fog and heavy tree coverage are added.

---

## Tree Overhauls For Dense Forests
Trees are the main large-scale world-shaping layer for wilderness mood, canopy silhouette, and perceived regional scale.

### Baseline

|  Mod                           |  Description                                                                     |
| ------------------------------ | -------------------------------------------------------------------------------- |
| [Nature of the Wild Lands](https://www.nexusmods.com/skyrimspecialedition/mods/63604) |  **Baseline.** Regional tree variety per hold — natural distribution. Fits "Living the world" with varied forest biomes.  |
| [Tomato's PBR Vanilla Trees](https://www.nexusmods.com/skyrimspecialedition/mods/139375) |  PBR tree texture option; can layer under whichever tree overhaul wins testing.  |

### Alternatives

|  Mod                                     |  Description                                          |
| ---------------------------------------- | ----------------------------------------------------- |
| [Traverse the Ulvenwald - 3.3](https://www.nexusmods.com/skyrimspecialedition/mods/57874) |  Dense forest alternative. More uniform canopy.       |
| [Happy Little Trees](https://www.nexusmods.com/skyrimspecialedition/mods/50961) |  Safer fallback baseline.                             |
| [Fabled Forests](https://www.nexusmods.com/skyrimspecialedition/mods/94462) |  Fantasy-leaning large trees.                         |
| [Happy Little Trees PBR](https://www.nexusmods.com/skyrimspecialedition/mods/159171) |  Support signal.                                      |
| [Nature of the Wild Lands - Animations Addon](https://www.nexusmods.com/skyrimspecialedition/mods/148132) |  OAR-based tree interaction animations. Requires NotWL base (locked).  |
| [Nature of the Wild Lands - PBR](https://www.nexusmods.com/skyrimspecialedition/mods/150319) |  PBR texture layer for NotWL trees. Requires NotWL base.  |
| [Nature of the Wild Lands - Snowier Spruce Trees](https://www.nexusmods.com/skyrimspecialedition/mods/149165) |  Spruce tree snow coverage addon for NotWL. Requires NotWL base.  |

### Risks & Compatibility

- Dense tree overhauls can make roads, structures, and combat spaces harder to read in motion.
- Heavier worldspace tree edits create clipping, blocked sightlines, floating objects, and broad patch debt.
- A tree overhaul that looks excellent nearby can still fail if its distant silhouette is weak.
