# Terrain & Flora

**MO2 Separator:** `Graphics` → `Graphics - Terrain & Flora`

## Terrain, Roads, And Snow → `Graphics - Terrain & Flora`

Treat terrain, roads, and snow as one connected presentation layer instead of three isolated texture choices. This layer has to stay coherent with Community Shaders, PBR support, rock meshes, weather, and later LOD generation.

### Baseline

- Use the balanced route: strong landscape and mountain materials, restrained roads, and snow chosen for coherence under CS.
- **Better Dynamic Snow SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/9121)) and **Better Dynamic Ash SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/54754)) — Snow-and-ash multistage accumulation layer. Both work with `Simplicity of Snow` and the chosen snow texture baseline; the `BDSPatcher` Synthesis patcher handles mod-added objects automatically. → `Graphics - Terrain & Flora`

### Alternatives

- Conservative route: stable landscape base, simpler road setup, reliable snow consistency.
- Feature-rich route: more dramatic road and worldspace edits with higher patch cost.

### Candidate Stack

#### Landscape And Terrain

- `Skyking Fantasia Landscapes` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/107256)) → `Graphics - Terrain & Flora`
- `Atlantean Landscape - Majestic Edition` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/102170)) → `Graphics - Terrain & Flora`
- `Atlantean Landscape - Complete - Complex Terrain Parallax` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/89542)) → `Graphics - Terrain & Flora`
- `A Cathedralist's PBR Landscape` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/137333)) → `Graphics - Terrain & Flora`
- `TomatoRim PBR Landscapes AIO` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/177621)) → `Graphics - Terrain & Flora`
- `Vanaheimr - Landscapes - AIO - Complex Material - PBR` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/145439)) — Comprehensive landscape retexture with Complex Material and PBR pipeline support. Evaluate alongside Cathedralist and TomatoRim candidates. → `Graphics - Terrain & Flora`
- `Enhanced Rocks and Mountains - Complex Material and PBR` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/121336)) — Primary mountain and rock identity in place of Majestic Mountains. 3.5K endorsements, PBR/CS-native. No plugins, ships with Complex Material support. → `Graphics - Terrain & Flora`
- `Enhanced Rocks and Mountains - Fix and Addon` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/142493)) — Extends ERM coverage to underground spaces and Whiterun Skyforge. Drop the Majestic Mountains stack entirely (author inactive since June 2022, mesh misses snow coverage on rock piles). → `Graphics - Terrain & Flora`

#### Roads

- `Blended Roads - Light Plugin (ESL)` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/171554)) → `Graphics - Terrain & Flora`
- `HD Remastered Blended Roads - 8k 4k 2k 1k` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/63674)) — HD hand-made rework of Blended Roads surface textures. Choose 2K for performance, 4K for the visual sweet spot. Requires Blended Roads as base. → `Graphics - Terrain & Flora`

#### Snow And Support

- `Simplicity of Snow` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/56235)) → `Graphics - Terrain & Flora`
- `Nordic Snow` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/670)) → `Graphics - Terrain & Flora`
- `Nordic Snow - Complex Material` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/133034)) → `Graphics - Terrain & Flora`
- `Hyperborean Snow SE - 8K` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/29283)) — Comparison snow candidate, not a locked baseline. → `Graphics - Terrain & Flora`
- `Better Dynamic Snow SE` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/9121)) — Multistage snow accumulation with terrain-blended coverage. Works alongside Simplicity of Snow. → `Graphics - Terrain & Flora`
- `Better Dynamic Ash SE` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/54754)) — Same multistage logic for Solstheim's ash. Companion to Better Dynamic Snow SE. → `Graphics - Terrain & Flora`
- `Enhanced Rocks and Mountains - Complex Material and PBR` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/121336)) → `Graphics - Terrain & Flora`

### Notes

- Snow can look good in isolation and fail once mixed with mountains, roads, and weather-heavy scenes.
- Heavy terrain parallax can look impressive up close while adding artifact risk or visual noise in motion.

## Flora Visuals → `Graphics - Terrain & Flora`

Flora is the ground-level readability layer between terrain materials and later tree coverage. It should improve grass density, wildland texture, and plant variety without making traversal unreadable or turning grass support into constant patch work.

### Baseline

- Use the mixed route: readable general grass coverage with selective density boosts and better close-range plants.
- **Skoglendi - A Grass Mod** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/93944)) — Baseline grass. → `Graphics - Terrain & Flora`
- **Merethic Grasslands** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/164058)) — Supporting grass variety enhancer; pairs with Skoglendi for northern grassland texture. → `Graphics - Terrain & Flora`
- **Origins Of Forest - 3D Forest Grass** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/45719)) — Main density enhancer, only if forests still feel too sparse after terrain and tree choices are clearer. → `Graphics - Terrain & Flora`
- **Mari's flora** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/45952)) — Supporting plant replacer. → `Graphics - Terrain & Flora`
- **Freak's Floral Meadows** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/148525)) — Comprehensive meadow flower replacer. No ESP. Evaluate as density upgrade. → `Graphics - Terrain & Flora`
- **Freak's Floral Solstheim** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/138161)) — Solstheim ash-covered grass/flora replacer with Cathedral-inspired density. → `Graphics - Terrain & Flora`
- **Flora Orientalis** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/64041)) and **Waterplants** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/6092)) — To satisfy Vinland Grass Patch dependencies and mixed-route coverage targets. → `Graphics - Terrain & Flora`
- **Cathedral - 3D Stonecrop** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/110726)) and **DrJacopo - 3D Tundra Shrubs** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/108747)) — 3D plant mesh replacers (no ESP). → `Graphics - Terrain & Flora`
- Full Cathedral 3D series: `Cathedral - 3D Clover Plant`, `Cathedral - 3D Deathbell`, `Cathedral - 3D Dragons Tongue`, `Cathedral - 3D Lavender`, `Cathedral - 3D Thistle`, `Cathedral - 3D Snow Berries` — Mesh-only (no ESP, no patch requirements). → `Graphics - Terrain & Flora`
- **Cathedral PBR Plants** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/135836)) — PBR texture layer for the Cathedral 3D plant series. Requires original Cathedral plants and PGPatcher. → `Graphics - Terrain & Flora`

### Alternatives

- Controlled baseline: one strong grass mod plus selective plant replacers and minimal support patches.
- Dense forest-floor route: baseline grass plus extra undergrowth and forest clutter for maximum wilderness feel.
- **Folkvangr - Grass and Landscape Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/44899)) — Main heavier alternate. → `Graphics - Terrain & Flora`
- **Vinland Grass Patch - Skoglendi - Flora Orientalis - Folkvangr** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/95273)) and **QW's Grass Patch 2** — Only after the final grass combination is narrow enough to justify patch-hub planning. → `Graphics - Terrain & Flora`

### Environment-Plant Optional Additions

- **High Quality Ivy Replacer - Base Object Swapper - Seasons of Skyrim** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/113578)) — Replaces ivy meshes and textures with hand-sculpted low-poly (1000 tris max) versions. Supports BOS for additional variety, Seasons of Skyrim, and includes patches for Nordic Stonewalls, High Poly Project, Lux Via, and JK's Fort Dawnguard. Animated and static versions available via FOMOD. Also replaces Reach Fern. No performance cost.
- **Grumbledook Swordferns - Optional PBR** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/163949)) — New meshes and textures for swordferns with optional PBR, snowy variants, extra variation via BOS. Hard-requires BOS; PBR variant requires CS. → `Graphics - Terrain & Flora`

Treat the Grumbledook Swordferns and High Quality Ivy Replacer as visual polish, not a baseline requirement. They layer cleanly on the existing flora stack via BOS (no cell-record edits). Evaluate after main grass, 3D plant replacer, and tree choices are locked.

### Notes

- Grass that looks strong in screenshots can make traversal and combat readability worse in practice.
- Layering multiple grass and plant mods creates real patch and cache maintenance cost.
- Forest-floor enhancers can become too dense once weather fog and heavy tree coverage are added.

## Tree Overhauls For Dense Forests → `Graphics - Terrain & Flora`

Trees are the main large-scale world-shaping layer for wilderness mood, canopy silhouette, and perceived regional scale. This subsection decides how dense and dramatic forests should become without creating a worldspace patch nightmare or making exploration unreadable.

### Baseline

- Use the dense modern forest route, but keep one lower-maintenance fallback alive until LOD and traversal readability are tested.
- **Traverse the Ulvenwald - 3.3 - Trees and Forests of Skyrim** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/57874)) — Main dense-forest candidate. → `Graphics - Terrain & Flora`
- **Tomato's PBR Vanilla Trees** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/139375)) — PBR tree texture option for vanilla tree models; can be layered under whichever tree overhaul wins testing. → `Graphics - Terrain & Flora`

### Alternatives

- **Happy Little Trees** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/50961)) — Safer fallback baseline. → `Graphics - Terrain & Flora`
- **Fabled Forests** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/94462)) and **Nature of the Wild Lands** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/63604)) — Stronger transformation routes to compare only if Ulvenwald misses the right balance. → `Graphics - Terrain & Flora`
- Lower-maintenance baseline: improved tree models with lighter ecosystem burden.
- Extreme wilderness route: highly transformed forests with the highest compatibility cost.
- Support signals: `Happy Little Trees PBR` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/159171)), `Fabled Forests - Ulvenwald - Compatibility Patch (BOS)` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/134501)). → `Graphics - Terrain & Flora`

### Notes

- Dense tree overhauls can make roads, structures, and combat spaces harder to read in motion than they appear in screenshots.
- Heavier worldspace tree edits create clipping, blocked sightlines, floating objects, and broad patch debt with settlement or roadside mods.
- A tree overhaul that looks excellent nearby can still fail if its distant silhouette is weak.
