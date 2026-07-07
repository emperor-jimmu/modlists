# Terrain & Flora

**MO2 Separator:** `Graphics` → `Graphics - Terrain & Flora`

All mods in this section belong to the `Graphics - Terrain & Flora` MO2 separator unless noted.

## Terrain, Roads, And Snow

Treat terrain, roads, and snow as one connected presentation layer. Must stay coherent with Community Shaders, PBR support, rock meshes, weather, and later LOD generation.

### Baseline

- **Better Dynamic Snow SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/9121)) and **Better Dynamic Ash SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/54754)) — Snow-and-ash multistage accumulation. Both work with `Simplicity of Snow`; the `BDSPatcher` Synthesis patcher handles mod-added objects automatically.

### Landscape And Terrain (candidate list — test and narrow)

- **Skyking Fantasia Landscapes** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/107256))
- **Atlantean Landscape - Majestic Edition** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/102170))
- **Atlantean Landscape - Complete - Complex Terrain Parallax** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/89542))
- **A Cathedralist's PBR Landscape** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/137333))
- **TomatoRim PBR Landscapes AIO** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/177621))
- **Vanaheimr - Landscapes - AIO - Complex Material - PBR** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/145439)) — PBR pipeline support. Evaluate alongside Cathedralist and TomatoRim.
- **Enhanced Rocks and Mountains - Complex Material and PBR** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/121336)) — **Primary mountain/rock identity.** CS-native, no plugins, Complex Material support. Drop Majestic Mountains entirely (author inactive since June 2022, mesh misses snow coverage on rock piles).
- **Enhanced Rocks and Mountains - Fix and Addon** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/142493)) — Extends ERM to underground spaces and Whiterun Skyforge.

### Roads

- **Blended Roads - Light Plugin (ESL)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/171554))
- **HD Remastered Blended Roads** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/63674)) — HD hand-made rework. Choose 2K for performance, 4K for visual sweet spot. Requires Blended Roads base.

### Snow And Support

- **Simplicity of Snow** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/56235))
- **Nordic Snow** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/670)) + **Nordic Snow - Complex Material** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/133034))
- **Hyperborean Snow SE - 8K** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/29283)) — Comparison candidate, not locked.
- **Better Dynamic Snow SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/9121)) — Multistage accumulation with terrain-blended coverage.
- **Better Dynamic Ash SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/54754)) — Solstheim ash equivalent.
- **Enhanced Rocks and Mountains - CM and PBR** — See Landscape section above; listed here for snow coherence.

### Notes

- Snow can look good in isolation and fail once mixed with mountains, roads, and weather-heavy scenes.
- Heavy terrain parallax can look impressive close up while adding artifact risk or visual noise in motion.

---

## Flora Visuals

Flora is the ground-level readability layer between terrain materials and tree coverage. It should improve grass density, wildland texture, and plant variety without making traversal unreadable or creating constant patch work.

### Grass

- **Skoglendi - A Grass Mod** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/93944)) — Baseline grass.
- **Merethic Grasslands** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/164058)) — Variety enhancer; pairs with Skoglendi for northern grassland texture.
- **Origins Of Forest - 3D Forest Grass** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/45719)) — Density enhancer. Add only if forests feel too sparse after terrain and tree choices are locked.

### Plant Replacers

- **Mari's flora** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/45952))
- **Freak's Floral Meadows** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/148525)) — Meadow flower replacer. No ESP.
- **Freak's Floral Solstheim** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/138161)) — Solstheim ash-covered grass/flora replacer.
- **A Nirnroot** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/80281)) — Nirnroot mesh/texture replacer with glowing effects. No ESP.
- **Flora Orientalis** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/64041)) and **Waterplants** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/6092)) — Dependencies for Vinland Grass Patch + mixed-route coverage.

### 3D Plant Replacers (mesh-only, no ESP)

- **Cathedral - 3D Clover Plant, Deathbell, Dragons Tongue, Lavender, Thistle, Snow Berries** — Full Cathedral 3D series.
- **Cathedral - 3D Stonecrop** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/110726))
- **DrJacopo - 3D Tundra Shrubs** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/108747))
- **Cathedral PBR Plants** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/135836)) — PBR texture layer for the Cathedral 3D series. Requires original Cathedral plants and PGPatcher.
- **PBR Waterplants** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/129928)) — PBR textures for underwater plants.

### Tree-Adjacent

- **Skyfall's Sleeping Hist Tree Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/116792)) — Riften Sleeping Hist tree replacement. Mesh/texture only, no ESP.
- **TMD The Rift Leaves** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/111461)) — 3D leaf particle replacer for The Rift. No ESP.

### Environment-Plant Extras (visual polish, not baseline)

- **High Quality Ivy Replacer - BOS** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/113578)) — Replaces ivy meshes/textures. Animated/static via FOMOD. No performance cost.
- **Grumbledook Swordferns - Optional PBR** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/163949)) — New swordfern meshes/textures. Hard-requires BOS; PBR variant requires CS.

> Evaluate these after grass, 3D plant replacers, and tree choices are locked. Both layer via BOS (no cell-record edits).

### Alternatives

- **Folkvangr - Grass and Landscape Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/44899)) — Main heavier alternate.
- **Vinland Grass Patch** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/95273)) and **QW's Grass Patch 2** — Only after the final grass combination is narrow enough.

### Notes

- Grass that looks strong in screenshots can make traversal and combat readability worse.
- Layering multiple grass and plant mods creates real patch and cache maintenance cost.
- Forest-floor enhancers can become too dense once weather fog and heavy tree coverage are added.

---

## Tree Overhauls For Dense Forests

Trees are the main large-scale world-shaping layer for wilderness mood, canopy silhouette, and perceived regional scale.

### Baseline

- **Traverse the Ulvenwald - 3.3** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/57874)) — Main dense-forest candidate.
- **Tomato's PBR Vanilla Trees** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/139375)) — PBR tree texture option; can layer under whichever tree overhaul wins testing.

### Alternatives

- **Happy Little Trees** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/50961)) — Safer fallback baseline.
- **Fabled Forests** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/94462)) and **Nature of the Wild Lands** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/63604)) — Compare only if Ulvenwald misses the right balance.
- **Happy Little Trees PBR** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/159171)), **Fabled Forests - Ulvenwald Patch (BOS)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/134501)) — Support signals.

### Notes

- Dense tree overhauls can make roads, structures, and combat spaces harder to read in motion.
- Heavier worldspace tree edits create clipping, blocked sightlines, floating objects, and broad patch debt.
- A tree overhaul that looks excellent nearby can still fail if its distant silhouette is weak.
