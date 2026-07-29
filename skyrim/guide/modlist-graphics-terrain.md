# Terrain & Flora

**MO2 Separator:** `Graphics` → `Graphics - Terrain & Flora`

All mods in this section belong to the `Graphics - Terrain & Flora` MO2 separator unless noted.

## Terrain, Roads, And Snow
Treat terrain, roads, and snow as one connected presentation layer. Must stay coherent with Community Shaders, PBR support, rock meshes, weather, and later LOD generation.

### Baseline

| Mod                    | Description                                                                                                                                        | Nexus                                                              |
|------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
| Better Dynamic Snow SE | Snow-and-ash multistage accumulation. Works with `Simplicity of Snow`; the `BDSPatcher` Synthesis patcher handles mod-added objects automatically. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/9121)  |
| Better Dynamic Ash SE  | Solstheim ash equivalent.                                                                                                                          | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/54754) |

### Landscape And Terrain (candidates — narrow after testing)

| Mod                                                           | Description                                                                                                                                                                                       | Nexus                                                               |
|---------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| Skyking Fantasia Landscapes                                   |                                                                                                                                                                                                   | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/107256) |
| Atlantean Landscape - Majestic Edition                        |                                                                                                                                                                                                   | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/102170) |
| Atlantean Landscape - Complete - Complex Terrain Parallax     |                                                                                                                                                                                                   | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/89542)  |
| A Cathedralist's PBR Landscape                                |                                                                                                                                                                                                   | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/137333) |
| TomatoRim PBR Landscapes AIO                                  |                                                                                                                                                                                                   | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/177621) |
| Vanaheimr - Landscapes - AIO - Complex Material - PBR         | PBR pipeline support. Evaluate alongside Cathedralist and TomatoRim.                                                                                                                              | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/145439) |
| Enhanced Rocks and Mountains - Complex Material and PBR       | **Primary mountain/rock identity.** CS-native, no plugins, Complex Material support. Drop Majestic Mountains entirely (author inactive since June 2022, mesh misses snow coverage on rock piles). | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/121336) |
| Enhanced Rocks and Mountains - Fix and Addon                  | Extends ERM to underground spaces and Whiterun Skyforge.                                                                                                                                          | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/142493) |
| Tomato's Complex Parallax Material Landscapes AIO - With DLCs | Older Tomato landscape release. TomatoRim PBR above is the newer version — evaluate which to use.                                                                                                 | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/110981) |
| Tomato's Whiterun Remake - PBR or Complex Material            | Whiterun-specific terrain retexture.                                                                                                                                                              | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/173747) |
| Seasonal Landscapes                                           | Seasonal texture-swap system. Requires extensive patching — evaluate patch debt before locking.                                                                                                   | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/66903)  |
| Tomato's Whiterun Remake PBR - Seasonal Landscapes Patch      | Required if both Whiterun Remake and Seasonal Landscapes are adopted.                                                                                                                             | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/174042) |

### Roads

| Mod                                                                                         | Description                                                                                            | Nexus                                                               |
|---------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| Blended Roads - Light Plugin (ESL)                                                          |                                                                                                        | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/171554) |
| HD Remastered Blended Roads                                                                 | HD hand-made rework. Choose 2K for performance, 4K for visual sweet spot. Requires Blended Roads base. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/63674)  |
| [Simplest Roads](https://www.nexusmods.com/skyrimspecialedition/mods/111255)                | Minimal road texture replacer. Alternative to Blended Roads.                                           |                                                                     |
| [Simple Complex Parallax Roads](https://www.nexusmods.com/skyrimspecialedition/mods/173826) | Parallax road textures requiring CS Complex Material. Alternative to Blended Roads.                    |                                                                     |

### Snow And Support

| Mod                                       | Description                                                  | Nexus                                                               |
|-------------------------------------------|--------------------------------------------------------------|---------------------------------------------------------------------|
| Simplicity of Snow                        |                                                              | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/56235)  |
| Nordic Snow                               |                                                              | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/670)    |
| Nordic Snow - Complex Material            |                                                              | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/133034) |
| Hyperborean Snow SE - 8K                  | Comparison candidate, not locked.                            | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/29283)  |
| Better Dynamic Snow SE                    | Multistage accumulation with terrain-blended coverage.       | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/9121)   |
| Better Dynamic Ash SE                     | Solstheim ash equivalent.                                    | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/54754)  |
| Enhanced Rocks and Mountains - CM and PBR | See Landscape section above; listed here for snow coherence. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/121336) |

### Alternatives

- **Windhelm Is Snowy - Base Object Swapper** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/165102)) — BOS-based snow coverage for Windhelm. Complements Simplicity of Snow.
- **Snowy Standing Stones for Snowy Regions** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/139000)) — BOS-based snow coverage for standing stones in snowy regions.

### Risks & Compatibility

- Snow can look good in isolation and fail once mixed with mountains, roads, and weather-heavy scenes.
- Heavy terrain parallax can look impressive close up while adding artifact risk or visual noise in motion.

---

## Flora Visuals
Flora is the ground-level readability layer between terrain materials and tree coverage. It should improve grass density, wildland texture, and plant variety without making traversal unreadable or creating constant patch work.

### Grass

| Mod                                 | Description                                                                                      | Nexus                                                               |
|-------------------------------------|--------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| Skoglendi - A Grass Mod             | Baseline grass.                                                                                  | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/93944)  |
| Merethic Grasslands                 | Variety enhancer; pairs with Skoglendi for northern grassland texture.                           | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/164058) |
| Origins Of Forest - 3D Forest Grass | Density enhancer. Add only if forests feel too sparse after terrain and tree choices are locked. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/45719)  |

### Plant Replacers

| Mod                                                                                          | Description                                                  | Nexus                                                               |
|----------------------------------------------------------------------------------------------|--------------------------------------------------------------|---------------------------------------------------------------------|
| Mari's flora                                                                                 |                                                              | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/45952)  |
| Real Wheat Fields                                                                           | Fuller wheat field meshes/textures. 2K, ESL. Option B adds a big wheat field east of Whiterun. Requires Wheat Replacer (112074) as base. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/151229)  |
| Freak's Floral Solstheim                                                                     | Solstheim ash-covered grass/flora replacer.                  | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/138161) |
| A Nirnroot                                                                                   | Nirnroot mesh/texture replacer with glowing effects. No ESP. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/80281)  |
| Flora Orientalis                                                                             | Dependency for Vinland Grass Patch + mixed-route coverage.   | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/64041)  |
| Waterplants                                                                                  | Dependency for Vinland Grass Patch + mixed-route coverage.   | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/6092)   |
| [Flora Additions - Water Plants](https://www.nexusmods.com/skyrimspecialedition/mods/116324) | Optional water plant flora additions.                        |                                                                     |
| [Reimagined Mountain Flowers - Base Object Swapper - Seasons of Skyrim](https://www.nexusmods.com/skyrimspecialedition/mods/135460) | Mountain flower replacer with BOS and Seasonal Landscapes support. |                                                                     |

### 3D Plant Replacers (mesh-only, no ESP)

| Mod                                                                                        | Description                                                                                      | Nexus                                                               |
|--------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| Cathedral - 3D Plants (Clover, Deathbell, Dragons Tongue, Lavender, Thistle, Snow Berries) | Full Cathedral 3D series.                                                                        |                                                                     |
| Cathedral - 3D Stonecrop                                                                   |                                                                                                  | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/110726) |
| DrJacopo - 3D Tundra Shrubs                                                                |                                                                                                  | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/108747) |
| Cathedral PBR Plants                                                                       | PBR texture layer for the Cathedral 3D series. Requires original Cathedral plants and PGPatcher. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/135836) |
| PBR Waterplants                                                                            | PBR textures for underwater plants.                                                              | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/129928) |

### Tree-Adjacent

| Mod                                                                      | Description                                                       | Nexus                                                               |
|--------------------------------------------------------------------------|-------------------------------------------------------------------|---------------------------------------------------------------------|
| Skyfall's Sleeping Hist Tree Overhaul                                    | Riften Sleeping Hist tree replacement. Mesh/texture only, no ESP. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/116792) |
| TMD The Rift Leaves                                                      | 3D leaf particle replacer for The Rift. No ESP.                   | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/111461) |
| [Immersive 3D Leaves](https://www.nexusmods.com/skyrimspecialedition/mods/170242) | Replaces Riften's flat 2D leaves with 3D models. By MaximusTheWizard. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/170242) |
| [Bigger trees](https://www.nexusmods.com/skyrimspecialedition/mods/5281) | Optional tree size multiplier.                                    |                                                                     |

### Environment-Plant Extras (visual polish, not baseline)

| Mod                                   | Description                                                                   | Nexus                                                               |
|---------------------------------------|-------------------------------------------------------------------------------|---------------------------------------------------------------------|
| High Quality Ivy Replacer - BOS       | Replaces ivy meshes/textures. Animated/static via FOMOD. No performance cost. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/113578) |
| Grumbledook Swordferns - Optional PBR | New swordfern meshes/textures. Hard-requires BOS; PBR variant requires CS.    | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/163949) |

> Evaluate these after grass, 3D plant replacers, and tree choices are locked. Both layer via BOS (no cell-record edits).

### Alternatives

| Mod                                      | Description                                              | Nexus                                                               |
|------------------------------------------|----------------------------------------------------------|---------------------------------------------------------------------|
| Folkvangr - Grass and Landscape Overhaul | Main heavier alternate.                                  | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/44899)  |
| Vinland Grass Patch                      | Only after the final grass combination is narrow enough. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/95273)  |
| QW's Grass Patch 2                       | Only after the final grass combination is narrow enough. |                                                                     |
| Grassreach - Blackreach Grass            | Blackreach-specific grass replacer.                      | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/179420) |
| Wildlands Renewal                        | Grass and groundcover improvement mod. Evaluate as Skoglendi alternative or layering candidate. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/139896) |
| Freak's Floral Meadows                   | Full grass overhaul by TheBloodyFreak. **Replaces Skoglendi** — not a plant replacer. iMinGrassSize 60, requires Cathedral 3D Grass Library meshes. No other grass mods. Performance-friendly alternative to FFF. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/148525) |

### Risks & Compatibility

- Grass that looks strong in screenshots can make traversal and combat readability worse.
- Layering multiple grass and plant mods creates real patch and cache maintenance cost.
- Forest-floor enhancers can become too dense once weather fog and heavy tree coverage are added.

---

## Tree Overhauls For Dense Forests
Trees are the main large-scale world-shaping layer for wilderness mood, canopy silhouette, and perceived regional scale.

### Baseline

| Mod                          | Description                                                                    | Nexus                                                               |
|------------------------------|--------------------------------------------------------------------------------|---------------------------------------------------------------------|
| Nature of the Wild Lands     | **Baseline.** Regional tree variety per hold — natural distribution. Fits "Living the world" with varied forest biomes. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/63604) |
| Tomato's PBR Vanilla Trees   | PBR tree texture option; can layer under whichever tree overhaul wins testing. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/139375) |

### Alternatives

| Mod                                    | Description                                         | Nexus                                                               |
|----------------------------------------|-----------------------------------------------------|---------------------------------------------------------------------|
| Traverse the Ulvenwald - 3.3           | Dense forest alternative. More uniform canopy.      | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/57874)  |
| Happy Little Trees                     | Safer fallback baseline.                            | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/50961)  |
| Fabled Forests                         | Fantasy-leaning large trees.                        | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/94462)  |
| Happy Little Trees PBR                 | Support signal.                                     | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/159171) |
| Fabled Forests - Ulvenwald Patch (BOS) | Support signal.                                     | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/134501) |
| Nature of the Wild Lands - Animations Addon | OAR-based tree interaction animations for NotWL. Requires NotWL base. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/148132) |
| Nature of the Wild Lands - PBR | PBR texture layer for NotWL trees. Requires NotWL base. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/150319) |
| Nature of the Wild Lands - Snowier Spruce Trees | Spruce tree snow coverage addon for NotWL. Requires NotWL base. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/149165) |

### Risks & Compatibility

- Dense tree overhauls can make roads, structures, and combat spaces harder to read in motion.
- Heavier worldspace tree edits create clipping, blocked sightlines, floating objects, and broad patch debt.
- A tree overhaul that looks excellent nearby can still fail if its distant silhouette is weak.
