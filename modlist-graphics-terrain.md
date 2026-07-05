# Terrain & Flora

**MO2 Separator:** `02 Graphics` → `02f Terrain & Flora`

## Terrain, Roads, And Snow → `02f Terrain & Flora`

### Core Idea

- Treat terrain, roads, and snow as one connected presentation layer instead of three isolated texture choices.
- This layer has to stay coherent with Community Shaders, PBR support, rock meshes, weather, and later LOD generation.

### Options

- Conservative route: stable landscape base, simpler road setup, reliable snow consistency support.
- Feature-rich route: more dramatic road and worldspace edits with higher patch cost.
- Balanced route: strong landscape and mountain materials, restrained roads, and snow chosen for coherence under CS.

### Recommendation

- Use the balanced route.
- Keep landscape and mountain materials as the visual anchor.
- Prefer a lower-maintenance road solution unless the final worldspace and outskirts plan can clearly absorb a heavier patching route.
- Lock snow only after confirming how it looks with the chosen landscape, rock, weather, and lighting winners.
- Add `Better Dynamic Snow SE` and `Better Dynamic Ash SE` as the snow-and-ash multistage accumulation layer. Both work with `Simplicity of Snow` and the chosen snow texture baseline; the `BDSPatcher` Synthesis patcher handles mod-added objects automatically. → `02f`

### Candidate Stack

#### Landscape And Terrain

- `Skyking Fantasia Landscapes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/107256> → `02f`
- `Atlantean Landscape - Majestic Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/102170> → `02f`
- `Atlantean Landscape - Complete - Complex Terrain Parallax` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/89542> → `02f`
- `A Cathedralist's PBR Landscape` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/137333> → `02f`
- `TomatoRim PBR Landscapes AIO` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/177621> → `02f`
- `Vanaheimr - Landscapes - AIO - Complex Material - PBR` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/145439> — comprehensive landscape retexture with Complex Material and PBR pipeline support. Covers multiple landscape types with consistent quality. Evaluate alongside the Cathedralist and TomatoRim candidates for final landscape identity. → `02f`
- `Enhanced Rocks and Mountains - Complex Material and PBR` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/121336> is the modern mountain and rock overhaul (3.5K endorsements, last updated April 2025, PBR/CS-native). New material blending system, no plugins, ships with Complex Material support. Use it as the primary mountain and rock identity in place of `Majestic Mountains`. → `02f`
- `Enhanced Rocks and Mountains - Fix and Addon` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/142493> extends ERM coverage to underground spaces and the Whiterun Skyforge and is the natural companion. Drop the `Majestic Mountains` stack (11052) and `Majestic Mountains Complex Material` (87547) entirely — the author has been inactive since June 2022, the mesh is known to miss snow coverage on rock piles, and the AE compatibility story is worse than ERM's. → `02f`

#### Roads

- `Blended Roads - Light Plugin (ESL)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/171554> → `02f`
- `HD Remastered Blended Roads - 8k 4k 2k 1k` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/63674> — HD hand-made rework of Blended Roads surface textures, designed to pair with the landscape stack. Requires Blended Roads as a base. Choose 2K for performance, 4K for the visual sweet spot; 8K is overkill at this modlist's resolution targets. → `02f`

#### Snow And Support

- `Simplicity of Snow` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/56235> → `02f`
- `Nordic Snow` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/670> → `02f`
- `Nordic Snow - Complex Material` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/133034> → `02f`
- `Hyperborean Snow SE - 8K` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/29283> remains a comparison snow candidate, not a locked baseline. → `02f`
- `Better Dynamic Snow SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/9121> — adds multistage snow accumulation and directional snow on objects, with terrain-blended snow coverage. Works alongside `Simplicity of Snow` and the chosen snow texture baseline; the `BDSPatcher` Synthesis patcher handles mod-added objects. → `02f`
- `Better Dynamic Ash SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/54754> — applies the same multistage accumulation logic to Solstheim's ash coverage, giving the island a distinct visual identity matching the snow system. Companion to `Better Dynamic Snow SE`; the Synthesis `BDSPatcher` handles both. → `02f`
- `Enhanced Rocks and Mountains - Complex Material and PBR` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/121336> → `02f`

### Risks & Compatibility

- Snow can look good in isolation and fail once mixed with mountains, roads, and weather-heavy scenes.
- Heavy terrain parallax can look impressive up close while adding artifact risk or visual noise in motion.

### Acceptance Criteria

- Terrain remains readable and coherent across tundra, forest, mountain, and snowy regions.
- Roads fit the wilderness tone without creating unreasonable compatibility debt.
- Snow blends naturally with nearby rocks, roads, and terrain materials under the selected weather route.
- The final terrain, road, and snow stack supports later grass, tree, and LOD work.

## Flora Visuals → `02f Terrain & Flora`

### Core Idea

- Flora is the ground-level readability layer between terrain materials and later tree coverage.
- It should improve grass density, wildland texture, and plant variety without making traversal unreadable or turning grass support into constant patch work.

### Options

- Controlled baseline: one strong grass mod plus selective plant replacers and minimal support patches.
- Dense forest-floor route: baseline grass plus extra undergrowth and forest clutter for maximum wilderness feel.
- Mixed route: readable general grass coverage with selective density boosts and better close-range plants.

### Recommendation

- Use the mixed route.
- Start with `Skoglendi - A Grass Mod` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/93944> as the baseline. → `02f`
- Add `Merethic Grasslands` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/164058> as a supporting grass variety enhancer — pairs with Skoglendi to add northern grassland texture without replacing the baseline. → `02f`
- Use `Origins Of Forest - 3D Forest Grass` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/45719> as the main density enhancer only if forests still feel too sparse after terrain and tree choices are clearer. → `02f`
- Use `Mari's flora` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/45952> as the supporting plant replacer instead of treating flora as one giant all-in-one decision. → `02f`
- `Freak's Floral Meadows` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/148525> — comprehensive meadow flower replacer with high-density, varied wildflower coverage. No ESP. Evaluate as a grass-and-flora density upgrade over the baseline Skoglendi/Merethic meadow coverage. → `02f`
- `Freak's Floral Solstheim - A Cathedral Grass Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/138161> — replacer for Solstheim's ash-covered grass and flora with Cathedral-inspired density and variety. Gives Solstheim a distinct floral identity. → `02f`
- Add `Flora Orientalis` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/64041> and `Waterplants` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/6092> to the grass baseline to satisfy `Vinland Grass Patch - Skoglendi - Flora Orientalis - Folkvangr` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/95273> and the broader mixed-route coverage targets. → `02f`
- Keep `Folkvangr - Grass and Landscape Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/44899> as the main heavier alternate. → `02f`
- Keep `Vinland Grass Patch - Skoglendi - Flora Orientalis - Folkvangr` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/95273> and `QW's Grass Patch 2` in mind only after the final grass combination is narrow enough to justify patch-hub planning. → `02f`
- Add `Cathedral - 3D Stonecrop` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/110726> and `DrJacopo - 3D Tundra Shrubs` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/108747> as 3D plant mesh replacers that swap 2D billboard plants for photorealistic models with proper depth. These are mesh-only (no ESP) and layer cleanly on the grass baseline. → `02f`
- Expand the 3D plant replacer layer with the full Cathedral 3D series: `Cathedral - 3D Clover Plant` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/68793>, `Cathedral - 3D Deathbell` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/76460>, `Cathedral - 3D Dragons Tongue` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/85694>, `Cathedral - 3D Lavender` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/68310>, `Cathedral - 3D Thistle` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/67619>, and `Cathedral - 3D Snow Berries` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/69415>. These are authored by DrJacopo (same creator as Stonecrop and Tundra Shrubs) and use the same mesh-only approach — no ESPs, no patch requirements, complete visual consistency with the existing 3D plant baseline. → `02f`
- Add `Cathedral PBR Plants` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/135836> as the PBR texture layer for the Cathedral 3D plant series — replaces textures with PBR materials (2k BC7). Requires the original Cathedral plants mods installed and PGPatcher to be run. → `02f`

### Risks & Compatibility

- Grass that looks strong in screenshots can make traversal and combat readability worse in practice.
- Layering multiple grass and plant mods creates real patch and cache maintenance cost.
- Forest-floor enhancers can become too dense once weather fog and heavy tree coverage are added.

### Environment-Plant Optional Additions

- `Grumbledook Ivy` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/151415> — an extensive ivy overhaul using Base Object Swapper to add common ivy (hedera helix) variants to walls, ruins, and structures across Skyrim. Hand-sculpted meshes and textures with wind animations, 1K/2K/4K options, and patches for Nordic Stonewalls and tree stumps/logs. Hard-requires `Base Object Swapper` (already a core dependency). Requires Community Shaders compatibility consideration if using the PBR variant. → `02f`
- `Grumbledook Ivy - Additions (Seasons - Optimization - Patches - Fixes)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/165945> — a companion optimization and patch collection for Grumbledook Ivy that removes unused/duplicated vertices (halving mesh count), fixes collisions, and adds seasonal support. → `02f`
- `Grumbledook Swordferns - Optional PBR` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/163949> — entirely new meshes and textures for Skyrim's swordferns with optional PBR, snowy variants, and extra variation via Base Object Swapper. Hand-sculpted from scratch, 2K/4K options. Hard-requires `Base Object Swapper`; PBR variant requires `Community Shaders`. → `02f`

Treat these as an optional environment-plant detail layer rather than a baseline requirement. The Grumbledook series uses `Base Object Swapper` to place new plant/environment meshes without cell-record edits, so they layer cleanly on the existing flora stack. Evaluate after the main grass, 3D plant replacer, and tree choices are locked, since the ivy and swordfern additions are visual polish that should not drive earlier decisions.

### Acceptance Criteria

- Flora improves wilderness density without obscuring normal travel routes.
- Forest, marsh, tundra, and roadside scenes stay readable in third person.
- Plant quality holds up both at travel distance and during close inspection.
- The final flora stack remains compatible with the chosen terrain, snow, tree, and grass-cache workflow.

## Tree Overhauls For Dense Forests → `02f Terrain & Flora`

### Core Idea

- Trees are the main large-scale world-shaping layer for wilderness mood, canopy silhouette, and perceived regional scale.
- This subsection decides how dense and dramatic forests should become without creating a worldspace patch nightmare or making exploration unreadable.

### Options

- Lower-maintenance baseline: improved tree models with lighter ecosystem burden.
- Dense modern forest route: stronger transformation and larger payoff, but more patching and placement risk.
- Extreme wilderness route: highly transformed forests and roadside coverage with the highest compatibility cost.

### Recommendation

- Use the dense modern forest route, but keep one lower-maintenance fallback alive until LOD and traversal readability are tested.
- Start serious evaluation with `Traverse the Ulvenwald - 3.3 - Trees and Forests of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/57874> as the main dense-forest candidate. → `02f`
- Keep `Happy Little Trees` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/50961> as the safer fallback baseline. → `02f`
- Treat `Fabled Forests` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/94462> and `Nature of the Wild Lands - forest and trees improvement mod` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/63604> as stronger transformation routes to compare only if `Ulvenwald` misses the right balance. → `02f`
- Keep `Happy Little Trees PBR` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/159171> and `Fabled Forests - Ulvenwald - Compatibility Patch (BOS)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/134501> as support-path signals, not baseline decisions. → `02f`
- Add `Tomato's PBR Vanilla Trees` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/139375> as a PBR tree texture option for the vanilla tree models — can be layered under whichever tree overhaul wins testing to add PBR material response to the trunk and branch textures. → `02f`

### Risks & Compatibility

- Dense tree overhauls can make roads, structures, and combat spaces harder to read in motion than they appear in screenshots.
- Heavier worldspace tree edits create clipping, blocked sightlines, floating objects, and broad patch debt with settlement or roadside mods.
- A tree overhaul that looks excellent nearby can still fail the list if its distant silhouette is weak.

### Acceptance Criteria

- Forest regions feel denser and more immersive without making travel frustrating.
- Roads, ruins, and normal third-person combat spaces remain readable in wooded areas.
- Tree silhouettes hold up at close, mid, and long distance.
- The chosen tree overhaul stays compatible with flora, terrain, roads, and later LOD workflow at a manageable cost.
