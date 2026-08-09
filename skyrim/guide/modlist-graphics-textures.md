# Community Shaders & Textures

**MO2 Separators:** `Graphics - Community Shaders` → `Graphics - Textures & Meshes`

---

## Community Shaders Core Setup → separator: `Graphics - Community Shaders`

This section owns the graphics-framework decision for the shader-first visual stack. Build modern visuals around `Community Shaders`, then layer materials, lighting, weather, water, and distant detail on top.

### Baseline

- **Community Shaders** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/86492)) — Core framework.
- Validate prerequisites before judging later graphics layers: `SKSE64` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/30379)), `Address Library for SKSE Plugins` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/32444)), `Luma Utility` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/177961)), and any current page-listed dependencies.
- Record baseline performance before installing add-ons so module decisions are measured against a real control point.

### Alternatives

- Non-CS alternatives (ENB) are out of scope unless the project abandons the shader-first direction.

### Risks & Compatibility

- Some CS features are much heavier than the core framework.
- Older ecosystem pages may refer to legacy behavior or outdated version requirements.
- A shader-first stack still needs discipline; enabling every feature isn't the same as building a coherent visual direction.

---

## Community Shaders Add-Ons And Required Features → separator: `Graphics - Community Shaders`

How aggressive the first CS feature layer should be — improve shadowing, wetness, water response, and material depth without front-loading the full performance cost.

### Feature Tiers

| Tier             | Modules                                                              | When To Enable                                     |
|------------------|----------------------------------------------------------------------|----------------------------------------------------|
| **Conservative** | Screen Space Shadows, Grass Lighting, Water Effects, Wetness Effects | Start here                                         |
| **Balanced**     | Conservative + Terrain Shadows                                       | After trees, grass, weather, water, LOD are stable |
| **High-End**     | Balanced + SSGI, Subsurface Scattering                               | Luxury, not requirement                            |

Install the CS main download (v1.8+) — the features below are either bundled in the core FOMOD or available as separate Nexus downloads maintained by the CS team. Toggle and tune everything in-game via the `END` key menu.

### CS Built-In Features (included with core download)

These ship with the main Community Shaders package — no separate download needed:

| Feature | Included Since |
| --- | --- |
| Extended Materials, LOD Blending, Volumetric Lighting, Dynamic Cubemaps, Light Limit Fix, Unified Water, Performance Overlay, Weather Picker | Always |
| Terrain Shadows, Inverse Square Lighting, **Water Effects**, Interior Sun, Extended Translucency | v1.4.7 |
| Screen-Space Shadows, **Grass Collision**, **Grass Lighting**, **Subsurface Scattering** | v1.5.0 |
| Sky Sync | v1.7.0 |
| Cloud Shadows | v1.8.0 |

### CS Optional Plugins (separate Nexus downloads)

| Mod | Description |
| --- | --- |
| [Wetness Effects](https://www.nexusmods.com/skyrimspecialedition/mods/112739) | Rain wetness, puddles, raindrop splash/ripple VFX, shore wetness. 9.8K endorsements, v3.1.0. |
| [HDR](https://www.nexusmods.com/skyrimspecialedition/mods/179371) | Native HDR10 output, configurable peak brightness (up to 10,000 nits), paper-white slider, BT.2020 colour space. **Requires an HDR-capable monitor.** Disable Windows Auto HDR and NVIDIA RTX HDR. 970 endorsements, v1.0.2. |
| [Screen Space Global Illumination (SSGI)](https://www.nexusmods.com/skyrimspecialedition/mods/130375) | Realistic indirect bounce light. Performance-intensive — high-end tier only. |
| [Skylighting](https://www.nexusmods.com/skyrimspecialedition/mods/139352) | Soft ambient sky occlusion. Pairs cleanly with the conservative tier for an authentic grim-dark look. |
| [Hair Specular](https://www.nexusmods.com/skyrimspecialedition/mods/149011) | Anisotropic hair highlights for more realistic hair rendering. |
| [Terrain Blending](https://www.nexusmods.com/skyrimspecialedition/mods/157076) | Seamless terrain-to-mesh transitions. |
| [Terrain Variation](https://www.nexusmods.com/skyrimspecialedition/mods/148123) | Stochastic sampling to prevent visible tiling on terrain textures. |
| [Terrain Helper](https://www.nexusmods.com/skyrimspecialedition/mods/143149) | Terrain rendering utilities required by some terrain features. |
| [Upscaling](https://www.nexusmods.com/skyrimspecialedition/mods/156952) | DLSS 4 / FSR 3.1 upscaling with FSR Frame Generation. The CS-team replacement for the older Skyrim Upscaler (80343). Requires SSE Display Tweaks. 6.4K endorsements, v1.4.0. |
| [Effects 11](https://www.nexusmods.com/skyrimspecialedition/mods/179824) | ENB preset compatibility layer via FX11 framework. Experimental — evaluate before locking. |

---

### Graphics Testing Protocol

#### Recommended Tool Stack

- Performance capture: `PresentMon`
- Analysis and graphing: `CapFrameX`
- Record keeping: Markdown table in this repo first, spreadsheet only if comparison volume grows
- Visual comparison: fixed test saves plus matching screenshot captures

#### Test Scene Rules

- Use the same character save for all graphics testing.
- Same location, camera angle, FOV, and time of day for each comparison pass.
- Keep one indoor test cell and at least two outdoor test cells: forest and open landscape.
- Record weather state for every run.
- Add or remove only one graphics variable at a time.

#### Suggested Metrics

- Average FPS
- 1% low FPS
- Frame-time consistency notes
- VRAM pressure notes from monitoring tools
- Shader artifacts, flicker, ghosting, water issues, grass mismatch, shadow instability
- Subjective visual verdict: keep, retest, reject

#### Markdown Table Format

| Date       | Build          | Test Area        | Weather/Time    | Mod Change           | Avg FPS | 1% Low | Visual Notes             | Decision |
|------------|----------------|------------------|-----------------|----------------------|---------|--------|--------------------------|----------|
| YYYY-MM-DD | Steam 1.6.1170 | Falkreath Forest | Overcast / 3 PM | Added Grass Lighting | 00      | 00     | Better depth, no flicker | Keep     |

### Risks & Compatibility

- Module stacks that look good in isolation can fight later weather, water, or lighting winners.
- Measuring several shader changes at once makes later decisions impossible to trust.
- Screenshot appeal can hide long-session readability or frame-time problems.

---

## Parallax Framework Dependencies → separator: `Graphics - Community Shaders`

The mesh/data side of parallax and complex materials is handled by **PGPatcher**; the rendering side is built into Community Shaders core (**Extended Materials**). The legacy pair — Auto Parallax and Complex Parallax Materials — is obsolete and must not be installed.

### Baseline

- **PGPatcher** (→ [PGPatcher Workflow](modlist-graphics-pgpatcher.md)) statically patches meshes and plugins so installed textures — vanilla parallax, Complex Material, or PBR — render correctly. The author's own description: "You no longer should install prepatched meshes nor auto parallax as PGPatcher will take care of that for you."
- **Auto Parallax** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/79473)) — **NOT installed.** Runtime disable-parallax plugin, unmaintained since Nov 2022, explicitly superseded by PGPatcher.
- **Complex Parallax Materials** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/95134)) — **NOT installed.** Legacy feature absent from the CS v1.8+ supported-feature list ("Do not install legacy features outside this list; they will cause issues"). Its complex-material/parallax rendering now lives in CS core Extended Materials, and it hard-depends on the obsolete Auto Parallax.

### Risks & Compatibility

- Texture packs that ship hand-authored parallax meshes can conflict with PGPatcher's generated output — prefer letting PGPatcher generate from textures and test before committing generated patches.
- Re-run PGPatcher whenever a major landscape, architecture, ruins, or clutter texture pack is replaced.

---

## Physically Based Rendering (PBR) Support → separator: `Graphics - Textures & Meshes`

PBR is an adoption strategy layered on top of Community Shaders, not a separate renderer choice. The real decision is how selectively to use PBR-ready materials and conversions. Every install below requires **PGPatcher** (→ [PGPatcher Workflow](modlist-graphics-pgpatcher.md)), run after the texture stack settles.

Landscape and rock PBR overrides (Faultier's PBR Landscapes, Enhanced Rocks and Mountains) are decided in → [Terrain & Flora](modlist-graphics-terrain.md). PGPatcher applies mesh patches across all separators — re-run once ALL PBR texture mods (Textures, Terrain, Characters, Lighting) are stable.

### Baseline — Balanced PBR Route

Broad AIO base + targeted city and farmhouse overrides.

- **Vanilla PBR AIO** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/174091), 11.5 GB) — Primary base. Covers all architecture, clutter, actors, dungeons with vanilla-faithful art direction.
- **Tomato's Whiterun Remake - PBR or Complex Material** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/173747)) — Optional Whiterun override; replaces the deprecated Tomato's PBR Whiterun (135771). FOMOD installer — choose the PBR branch, 2K recommended, skip 4K. Requires CS core + PGPatcher (both already in the stack).
- **Tomato's PBR Farmhouses 2.0** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/135774)) — Optional farmhouse override. Install Grey 2K (84 MB), skip 4K. Optional: `WSU PBR Farmhouse windows patch` if Window Shadows Ultimate is in the stack.
- **Faultier's PBR Armors and Clothes** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/175319), 2.9 GB) — Complete PBR retexture of all vanilla armors/weapons/clothes. Requires CS + PGPatcher. Install under this separator before the clothing/armor texture upgrades in → [Characters & Creatures](modlist-graphics-characters.md).

> **Terrain & rock PBR** is owned by → [Terrain & Flora](modlist-graphics-terrain.md): Faultier's PBR Landscapes 4k (125308) fills VPBR's terrain gap; Enhanced Rocks and Mountains (121336) is the locked mountain/rock baseline. Do NOT install `Faultier's Skyrim AIO` alongside VPBR — same texture paths.

Community Shaders ships **Dynamic Cubemaps** and **Image-Based Lighting (IBL)** as standard features. Verify the chosen PBR texture set uses both before adding extra reflection/cubemap mods.

### Alternatives

- **Minimal PBR:** Enable support but only use a few showcase conversions.
- **Full PBR push:** Broad world coverage with higher maintenance and consistency risk.

### Priority Coverage

**Priority 1** — seen constantly in travel and third person:

- City architecture; farmhouses and rural buildings
- Nordic ruins and dungeon stonework
- High-visibility clutter and props

**Priority 2** — fill in after core look settles:

- Select landscape regions with strong material identity (→ [Terrain & Flora](modlist-graphics-terrain.md))
- City sets from settlement overhauls that survive later testing
- Broader regional packs that fill obvious gaps

**Defer for now:**

- Full-world landscape replacement
- Low-visibility assets adding patching/VRAM cost without changing moment-to-moment feel
- Niche regional conversions before core city/dungeon/farmhouse look is settled

### Priority 2 Candidate Mods

- **PBR textures for The Great Cities Collection** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/133493))
- **PBR Hub** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/139889)) — Discovery hub for later expansion.
- Landscape additions are owned by → [Terrain & Flora](modlist-graphics-terrain.md) — TomatoRim PBR Landscapes AIO (177621) and Enhanced Rocks and Mountains (121336) are locked there; Cathedralist's PBR Landscape (137333) is rejected. No open landscape candidates belong in this section.

### Working Rollout Order

1. Install **Vanilla PBR AIO** — broad PBR base for architecture, clutter, actors, dungeons.
2. Optionally install **Tomato's Whiterun Remake** and **Tomato's PBR Farmhouses 2.0** after VPBR.
3. Install **Faultier's PBR Armors and Clothes** — PBR gear coverage (→ [Characters & Creatures](modlist-graphics-characters.md) for related body/skin texture install order).
4. Install landscape and rock PBR overrides per → [Terrain & Flora](modlist-graphics-terrain.md) (Faultier's PBR Landscapes, ERM).
5. Run **PGPatcher** last — all PBR texture mods above require it (→ [PGPatcher Workflow](modlist-graphics-pgpatcher.md)).

### Risks & Compatibility

- VPBR is newer (March 2026) than Faultier's PBR Skyrim (v3.0) — single-point-of-failure risk if abandoned. Active development so far (v1.0 → v1.32 in ~2 months).
- VPBR includes mountain textures that must be overridden by ERM (→ [Terrain & Flora](modlist-graphics-terrain.md)). Load ERM after VPBR.
- Do NOT install `Faultier's Skyrim AIO` alongside VPBR — same texture paths.
- PBR ambition can outrun the rest of the stack if weather, trees, water, and lighting aren't held to a similar bar.

---

## Mesh Improvements And Parallax Support → separator: `Graphics - Textures & Meshes`

Improve shape quality and silhouette readability without creating an unmaintainable conflict swamp. The best outcome is a stable baseline of mesh improvements, targeted fixes where they matter, and parallax support only where textures benefit from it.

**⏱ Install order:** Core foundation → doors & walls → locks → furniture & city detail → mesh replacers → environment props. Follow the grouping below.

### Core Foundation

| Mod                                                                                                   | Description                                                                          |
|-------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------|
| [Static Mesh Improvement Mod (SMIM)](https://www.nexusmods.com/skyrimspecialedition/mods/659)         | Core mesh foundation.                                                                |
| [Unofficial Material Fix](https://www.nexusmods.com/skyrimspecialedition/mods/21027)                  | Corrects material records for Community Shaders PBR. Install after SMIM.             |
| [Simplicity of Snow v0.26](https://www.nexusmods.com/skyrimspecialedition/mods/56235)                 | Main file only (32.8 MB). Skip Parallax Meshes and patches for mods not in the list. |
| [XEMI Utility](https://www.nexusmods.com/skyrimspecialedition/mods/159084)                            | Prerequisite for FYX collision fixes (→ Doors, Walls & Structures).                              |

### Weapon Mesh Improvements

| Mod                                                                                                      | Description                                                                                          |
|----------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|
| [LeanWolf's Better-Shaped Weapons](https://www.nexusmods.com/skyrimspecialedition/mods/2017)             | Upgraded vanilla weapon silhouettes and mesh shapes. Stacks with weapon retextures and Heavy Armory. |
| [Imperial Gladius — Imperial Sword Replacer](https://www.nexusmods.com/skyrimspecialedition/mods/147965) | Replaces vanilla Imperial Sword model. Single mesh replacer.                                         |

### Doors, Walls & Structures

| Mod                                                                                                     | Description                                                                                                                                                       |
|---------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [Glorious Doors of Skyrim (GDOS)](https://www.nexusmods.com/skyrimspecialedition/mods/32376)            | Higher-detail door meshes for all architecture types. FOMOD: **2K textures**, install **all door categories**, include **Splendid Mechanized Dwemer Door** (ESL). |
| [Whiterun Has Walls Redone](https://www.nexusmods.com/skyrimspecialedition/mods/119229)                 | 3D geometry and parallax textures for Whiterun's exterior walls. Replaces flat walls.                                                                             |
| [Stockades of Skyrim 3D](https://www.nexusmods.com/skyrimspecialedition/mods/43227)                     | Base layer for 3D stockade walls and barricades.                                                                                                                  |
| [FYX - 3D Stockades](https://www.nexusmods.com/skyrimspecialedition/mods/65104)                         | Overwrites Stockades of Skyrim 3D meshes. Install after the stockade base.                                                                                        |
| [FYX - Nordic Doors and Traps Collisions](https://www.nexusmods.com/skyrimspecialedition/mods/100295) | Collision geometry fix for Nordic doors and traps. Requires XEMI Utility (installed in Core Foundation). |
| [Born in a Barn - Door Curtains for Shacks](https://www.nexusmods.com/skyrimspecialedition/mods/113432) | BOS-based door curtains for shacks and poor homes. No ESP.                                                                                                        |

### Security Overhaul SKSE Series

Install together. Use **2K textures** for all — locks are examined up close but 4K is wasted VRAM.

| Mod                                                                          | Description                                                              |
|------------------------------------------------------------------------------|--------------------------------------------------------------------------|
| [Lock Variations](https://www.nexusmods.com/skyrimspecialedition/mods/58224) | Multiple lock model variants for visual variety.                         |
| [Regional Locks](https://www.nexusmods.com/skyrimspecialedition/mods/62781)  | Assigns lock models by hold and location type.                           |
| [Lock Add-ons](https://www.nexusmods.com/skyrimspecialedition/mods/59529)    | Additional lock models extending the Security Overhaul series.           |
| [Some More Locks](https://www.nexusmods.com/skyrimspecialedition/mods/59961) | Further lock model variety.                                              |
| [Extra Locks](https://www.nexusmods.com/skyrimspecialedition/mods/126119)    | Even more lock model variations.                                         |
| [PBR](https://www.nexusmods.com/skyrimspecialedition/mods/152269)            | PBR textures for all Security Overhaul lock models.                      |

### Furniture, Clutter & City Detail

| Mod                                                                                                      | Description                                                         |
|----------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| [Snazzy Furniture and Clutter Overhaul (SFCO)](https://www.nexusmods.com/skyrimspecialedition/mods/2414) | Clutter objects, geometry, and variety beyond VPBR's base textures. |

**Snazzy City series** (BOS-based, city-by-city clutter improvements):

| Mod                                                                                                          |
|--------------------------------------------------------------------------------------------------------------|
| [Whiterun AIO](https://www.nexusmods.com/skyrimspecialedition/mods/147621)                                   |
| [Windhelm AIO](https://www.nexusmods.com/skyrimspecialedition/mods/147620)                                   |
| [Solitude AIO](https://www.nexusmods.com/skyrimspecialedition/mods/147618)                                   |
| [Markarth AIO](https://www.nexusmods.com/skyrimspecialedition/mods/147624)                                   |
| [Riften AIO](https://www.nexusmods.com/skyrimspecialedition/mods/147594)                                     |
| [Falkreath AIO](https://www.nexusmods.com/skyrimspecialedition/mods/147671)                                  |
| [Dawnstar AIO](https://www.nexusmods.com/skyrimspecialedition/mods/147758)                                   |
| [Winterhold AIO](https://www.nexusmods.com/skyrimspecialedition/mods/150194)                                 |
| [Towns and Settlements](https://www.nexusmods.com/skyrimspecialedition/mods/147761)                          |
| [Misc Locations](https://www.nexusmods.com/skyrimspecialedition/mods/147762)                                 |
| [Player Homes](https://www.nexusmods.com/skyrimspecialedition/mods/182336)                                   |
| [Snazzy Interiors - Dawnstar Mortar and Pestle](https://www.nexusmods.com/skyrimspecialedition/mods/140567)  |
| [Snazzy Interiors - Winterhold Birna's Oddments](https://www.nexusmods.com/skyrimspecialedition/mods/138308) |
| [Snazzy Interiors Patch Collection](https://www.nexusmods.com/skyrimspecialedition/mods/91604)               |

### Mesh Replacer Series

All mesh-only, no ESP.

| Mod                                                                                                 | Description                                                                    |
|-----------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------|
| [V.A.E.R.](https://www.nexusmods.com/skyrimspecialedition/mods/145018)                              | Visual Animated Enchants Remastered — animated weapon enchantment VFX.         |
| [Thrones Expanded](https://www.nexusmods.com/skyrimspecialedition/mods/139544)                      | Variety of throne models for different holds and factions.                     |
| [Rustic Repose - A Common Bed Replacer](https://www.nexusmods.com/skyrimspecialedition/mods/138889) | Rustic bed model replacer for common beds.                                    |
| [Use Those Blankets](https://www.nexusmods.com/skyrimspecialedition/mods/75481)                     | Adds 3D blanket meshes to beds.                                               |
| [Sleipnir Beds](https://www.nexusmods.com/skyrimspecialedition/mods/143168)                         | Norse-themed carved wooden bed replacer.                                      |
| [The Royal Seat](https://www.nexusmods.com/skyrimspecialedition/mods/118892)                        | High-detail royal throne mesh replacer.                                       |
| [Divide and Conquer](https://www.nexusmods.com/skyrimspecialedition/mods/117295)                    | Room divider and partition mesh replacers.                                    |
| [Oddments and Miscellanea](https://www.nexusmods.com/skyrimspecialedition/mods/118859)              | Misc clutter object mesh replacers (lanterns, scales, hourglasses).           |
| [Utenlands Nordic Tents](https://www.nexusmods.com/skyrimspecialedition/mods/121203)                | High-detail Nordic fur tent mesh replacer.                                    |
| [Redoran Reverie](https://www.nexusmods.com/skyrimspecialedition/mods/132997)                       | Dunmer/Redoran-style furniture mesh replacer.                                 |
| [HFs Archery Target Remodel](https://www.nexusmods.com/skyrimspecialedition/mods/138492)            | High-quality archery target model replacer.                                   |
| [Diverse Grindstones](https://www.nexusmods.com/skyrimspecialedition/mods/145870)                   | Multiple grindstone model variants via BOS.                                   |
| [Blary's Booksets](https://www.nexusmods.com/skyrimspecialedition/mods/159303)                      | Book set and book stack clutter mesh replacer.                                |
| [ElSopa Misc Ruins Redone](https://www.nexusmods.com/skyrimspecialedition/mods/153797)              | Nordic/Dwemer ruins clutter mesh replacer.                                    |
| [Snazzy Orc Chests](https://www.nexusmods.com/skyrimspecialedition/mods/142275)                     | Orc stronghold chest mesh replacer.                                           |
| [High Poly Project](https://www.nexusmods.com/skyrimspecialedition/mods/12029)                   | Higher-polygon mesh replacer for common objects. Adds geometry detail; evaluate vs conflict cost. |

### Environment & Props

| Mod                                                                                         | Description                                                                        |
|---------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------|
| [TB's 3D Driftwood](https://www.nexusmods.com/skyrimspecialedition/mods/80418)              | 3D driftwood mesh replacer. No ESP. Complements coastal areas.                     |
| [WiZkiD Hunter's Camp Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/113558) | Visual overhaul for hunter camps (tents, campfires, pots, clutter). No ESP.        |
| [Improved Fish SE](https://www.nexusmods.com/skyrimspecialedition/mods/17324)               | Higher-quality fish meshes and textures.                                           |
| [Improved Fish PBR](https://www.nexusmods.com/skyrimspecialedition/mods/145624)             | PBR textures for fish. Requires Improved Fish SE as mesh base.                     |
| [CC Fish PBRed](https://www.nexusmods.com/skyrimspecialedition/mods/131083)                 | PBR textures for CC fish. Requires free AE fish addon.                             |
| [JS Badges of Office](https://www.nexusmods.com/skyrimspecialedition/mods/128579)           | Replacer for Jarl's crown, court-mage's circlet, steward's key. Mesh-only, no ESP. |

> **PGPatcher:** Use the PGPatcher workflow in → [PGPatcher Workflow](modlist-graphics-pgpatcher.md) for late-stage parallax generation rules. Do not add **Auto Parallax (79473)** or **Complex Parallax Materials (95134)** as requirements for parallax/CM texture packs — PGPatcher replaces both (see `## Parallax Framework Dependencies` above).

### Mesh Section Notes

- Parallax looks excellent on some surfaces and broken on others if support is inconsistent.
- Snow, rock, landscape, and water meshes should not be finalized independently of texture and weather winners.

---

## Furniture, Clutter, And Item Replacers → separator: `Graphics - Textures & Meshes`

Texture and mesh upgrades for furniture, clutter, and items beyond the Snazzy city series — Rally's, Arc's, and Kanjs author lines plus standalone BOS replacers. No cell-record edits; all are BOS-based or pure replacers.

### Rally's, Arc's, And Snazzy Clutter

| Mod                                                                                                              | Description                                                                 |
|------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------|
| [Rally's Noble Furniture - BOS](https://www.nexusmods.com/skyrimspecialedition/mods/113326)                      |                                                                             |
| [Rally's Orc Furniture](https://www.nexusmods.com/skyrimspecialedition/mods/111457)                              |                                                                             |
| [Rally's Upper Furniture](https://www.nexusmods.com/skyrimspecialedition/mods/112256)                            |                                                                             |
| [Rally's Barsets](https://www.nexusmods.com/skyrimspecialedition/mods/114178)                                    |                                                                             |
| [Rally's Common Furniture](https://www.nexusmods.com/skyrimspecialedition/mods/110370)                           |                                                                             |
| [Rally's Dark Elf Furniture (High Poly - ENB Light)](https://www.nexusmods.com/skyrimspecialedition/mods/112042) |                                                                             |
| [Snazzy Common Wardrobes - BOS](https://www.nexusmods.com/skyrimspecialedition/mods/92809)                       | Choose the BOS meshes main file.                                            |
| [Whiterun Objects SMIMed (and fixes too)](https://www.nexusmods.com/skyrimspecialedition/mods/69125)             |                                                                             |
| [Arc's WispMother Redux 2K-4K](https://www.nexusmods.com/skyrimspecialedition/mods/111330)                       | Choose 2K.                                                                  |
| [Arc's Kettle REDUX 2K-4K](https://www.nexusmods.com/skyrimspecialedition/mods/110929)                           | Choose 2K.                                                                  |
| [Arc's Kitchen Redux 2K-4K](https://www.nexusmods.com/skyrimspecialedition/mods/111694)                          | Choose 2K.                                                                  |
| [Arc's MeadBarrel Redux 2K-4K](https://www.nexusmods.com/skyrimspecialedition/mods/111195)                       | Stack: install all three (base + Bloody + Distributed). Choose 2K for base. |
| [Arc's Bloody MeadBarrel Redux](https://www.nexusmods.com/skyrimspecialedition/mods/116447)                      |                                                                             |
| [Distributed Arc's Mead Barrels](https://www.nexusmods.com/skyrimspecialedition/mods/119006)                     |                                                                             |
| [Arc's Tankard Redux](https://www.nexusmods.com/skyrimspecialedition/mods/112567)                                |                                                                             |
| [ElSopa - HD Iron Tools Redone SE](https://www.nexusmods.com/skyrimspecialedition/mods/60495)                    |                                                                             |
| [Diverse BOS Kitchenware](https://www.nexusmods.com/skyrimspecialedition/mods/112361)                            |                                                                             |
| [HFs - Diverse Inkwell and Quill (BOS)](https://www.nexusmods.com/skyrimspecialedition/mods/132023)              | Diverse inkwell and quill meshes via BOS or Model Swapper.                  |
| [Dynamic Things Alternative - BOS](https://www.nexusmods.com/skyrimspecialedition/mods/60741)                    |                                                                             |
| [Nordic Stonewalls](https://www.nexusmods.com/skyrimspecialedition/mods/57686)                                   |                                                                             |
| [Nordic Stonewall Terraces](https://www.nexusmods.com/skyrimspecialedition/mods/115210)                          |                                                                             |
| [Nordic Stonewalls Complex Material and PBR](https://www.nexusmods.com/skyrimspecialedition/mods/127188)         | PBR upgrade. Install after base Nordic Stonewalls.                          |
| [Snazzy Wall Mounted Trophies - BOS](https://www.nexusmods.com/skyrimspecialedition/mods/115054)                 |                                                                             |
| [Fluffy Wall Mounted Dead Animals](https://www.nexusmods.com/skyrimspecialedition/mods/90369)                    |                                                                             |
| [Wall Mounted Dead Animals Fixes](https://www.nexusmods.com/skyrimspecialedition/mods/58511)                     | Install after Fluffy Wall Mounted Dead Animals.                             |
| [Snazzy Diverse Carriages - BOS](https://www.nexusmods.com/skyrimspecialedition/mods/112041)                     |                                                                             |
| [Snazzy Diverse Carriages - Seasonal Patch](https://www.nexusmods.com/skyrimspecialedition/mods/112210)          | Required if Seasonal Landscapes is adopted.                                 |
| [RUSTIC CLUTTER COLLECTION](https://www.nexusmods.com/skyrimspecialedition/mods/5795)                           | Higher-res diffuse/normal replacer for common clutter. May be redundant with VPBR's clutter coverage — evaluate side-by-side. |

### Vanaheimr Series

| Mod                                                                                                                |
|--------------------------------------------------------------------------------------------------------------------|
| [Vanaheimr - Mines and Caves - Complex Material - PBR](https://www.nexusmods.com/skyrimspecialedition/mods/137033) |
| [Vanaheimr - Ore Veins - Complex Material - PBR](https://www.nexusmods.com/skyrimspecialedition/mods/149148)       |

### Animated Items (mesh replacers)

| Mod                                                                                                           | Description                                                                               |
|---------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------|
| [Kanjs - Sanguine Rose Animated](https://www.nexusmods.com/skyrimspecialedition/mods/113606)                  |                                                                                           |
| [Kanjs - Soup and Stew AIO Animated (SkyPatched)](https://www.nexusmods.com/skyrimspecialedition/mods/113191) | Choose the SkyPatched version over the base.                                              |
| [Kanjs - Human Heart Animated and Beating Motion](https://www.nexusmods.com/skyrimspecialedition/mods/111616) |                                                                                           |
| [Kanjs - Taproot Animated and Beating Motion](https://www.nexusmods.com/skyrimspecialedition/mods/111446)     |                                                                                           |
| [Animated Filled Soul Gems](https://www.nexusmods.com/skyrimspecialedition/mods/110638)                       |                                                                                           |
| [Animated Ingredients](https://www.nexusmods.com/skyrimspecialedition/mods/72852)                             |                                                                                           |
| [Kanjs - Stalhrim Weapons Animated](https://www.nexusmods.com/skyrimspecialedition/mods/146167)               | Animated Stalhrim weapon mesh replacer.                                                   |
| [Kanjs - Nordic Puzzle Door Animated](https://www.nexusmods.com/skyrimspecialedition/mods/133482)             | Animated Nordic puzzle door mesh replacer.                                                |
| [Kanjs - Ancient Falmer Tomes Animated](https://www.nexusmods.com/skyrimspecialedition/mods/106618)           | Animated Ancient Falmer tomes (Dawnguard lore books), remesh + 4K + animated emissive.    |
| [Kanjs - The Boethiah's Proving Book Animated](https://www.nexusmods.com/skyrimspecialedition/mods/104747)   | Animated Boethiah's Proving Book, remesh + 4K + animated emissive.                        |
| [Kanjs - Master Spell Tomes Animated](https://www.nexusmods.com/skyrimspecialedition/mods/105990)             | Animated Master spell tomes (College), remesh + 4K + animated emissive.                   |
| [Kanjs - The Dreamstride Book Animated](https://www.nexusmods.com/skyrimspecialedition/mods/104236)           | Animated Dreamstride Book, remesh + 4K + animated emissive.                               |
| [Zerofrost's Tamriel Alchemy](https://www.nexusmods.com/skyrimspecialedition/mods/185386)                     | Animated alchemy ingredient and potion replacer. Conflicts with Tamriel Alchemy Replacer. |

### Risks & Compatibility

- Kanjs Soup and Stew has two variants: the base animation mod (113104) and a SkyPatched version (113191). The SkyPatched version is recommended for better compatibility.
- Nordic Stonewalls + Complex Material: install the base mod first, then the PBR upgrade on top.
- Most Rally's and Arc's mods are texture-only or mesh-only; verify each against the load order for BOS overrides.
- Snazzy Diverse Carriages Seasonal Patch hard-depends on Seasonal Landscapes (→ [Terrain & Flora](modlist-graphics-terrain.md)).
- Zerofrost's Tamriel Alchemy (185386) conflicts with Tamriel Alchemy Replacer (165730) — pick one.
- The four Kanjs unique tomes (Ancient Falmer / Boethiah's Proving / Master Spell / Dreamstride) override `Book Covers Skyrim`'s texture on those same records. Install them **after** the Book Covers stack so the Kanjs animated look wins for those books; drop a specific file if you'd rather keep BCS's cover for that title. (Kanjs's `KanJS Spell Tomes Animated` 103057 in `Additional Replacements` targets a different set — regular spell tome meshes — no overlap.)

---

## Unique Entity Replacers → separator: `Graphics - Textures & Meshes`

Model and texture upgrades for unique named entities and one-of-a-kind objects — characters, corpses, set-piece models not covered by broad replay packs. Closes visual gaps without swelling into full NPC beautification.

| Mod                                                                                            | Description                                                                                                      |
|------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------|
| [Night Mother](https://www.nexusmods.com/skyrimspecialedition/mods/83527)                      | High-quality model/texture replacer for the Night Mother's corpse. ESL-flagged, zero script or record conflicts. |
| [Skyland Imperial and Nordic Tents](https://www.nexusmods.com/skyrimspecialedition/mods/57002) | 4K tent textures with new mesh for the large Nordic fur tent. No ESP.                                            |

### Risks & Compatibility

- Verify Night Mother does not conflict with lighting/interior overhauls that modify the sanctuary cell.
- Do not let this subsection grow into general NPC or creature overhaul — those are owned by → [NPCs](modlist-npcs.md).

---

## Blood, Decals, And Combat Visual Effects → separator: `Graphics - Textures & Meshes`

In-world visual effects during combat: blood pools, persistent decals, lingering marks. Separate from lighting/weather (ambient worldstate) and from hit-reaction/stagger (→ [Third-Person Gameplay](modlist-third-person.md), → [Expanded Systems](modlist-expanded-systems.md)).

| Mod                                                                                       | Description                                                                                                                                           |
|-------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------|
| [Dynamic Bloodpool Framework](https://www.nexusmods.com/skyrimspecialedition/mods/172080) | Blood and decal framework. Lock in after weather/lighting baselines are stable (decals must read correctly under both daylight and your night setup). |
| [Dragon Breath VFX Edit](https://www.nexusmods.com/skyrimspecialedition/mods/118431)      | Dragon breath projectile/impact VFX replacer. Mesh-only, no ESP.                                                                                      |
| [Flame VFX Edit](https://www.nexusmods.com/skyrimspecialedition/mods/109414)               | Mesh-only fire spell effect improvement. CS-compatible. Sibling of Dragon Breath/Lightning/Light Magic VFX Edit.                                    |

### Alternatives

| Mod                                                                                   | Description                                                                                                                                                                                                                                                                         |
|---------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [Improved Sparks](https://www.nexusmods.com/skyrimspecialedition/mods/19831)          | Orange spark effects on metal impacts and grindstones. FOMOD with density options (1X-20X).                                                                                                                                                                                         |
| [Lightning VFX Edit](https://www.nexusmods.com/skyrimspecialedition/mods/124520)      | Lightning bolt VFX replacer. Mesh-only, no ESP.                                                                                                                                                                                                                                     |
| [Light Magic VFX Edit](https://www.nexusmods.com/skyrimspecialedition/mods/151787)    | Candlelight/Magelight VFX glow replacer. Mesh-only, no ESP. Sibling of Dragon Breath/Lightning VFX Edit.                                                                                                                                                                            |
| [VFX Edit AIO - Spells Retexture](https://www.nexusmods.com/skyrimspecialedition/mods/133774) | All-in-one spell visual effect retexture. Same VFX Edit author line as Dragon Breath/Flame/Lightning/Light Magic. Mesh-only, no ESP.                                                                                 |
| [Sanguine Symphony](https://www.nexusmods.com/skyrimspecialedition/mods/148388)       | Combat impact overhaul: adaptive blood splatters, detailed decals, HD wound textures, custom SFX, slow-motion kills. Verify overlap with Dynamic Bloodpool Framework and Simplicity of Splatter — decal/impact ownership; check slow-mo kills against Precision/Valhalla/BFCO feel. |
| [Dynamic Footprints SKSE](https://www.nexusmods.com/skyrimspecialedition/mods/175254) | Persistent footprints on snow, mud, sand. Add after blood/decals baseline is stable.                                                                                                                                                                                                |

### Risks & Compatibility

- Blood/decals can interact poorly with CS weather mods handling screen-space wetness. Verify under a locked weather baseline.
- Persistent blood decals can strain frame-rate and memory in long fights. Check MCM for decal lifetime and density.
- Blood pools can look odd in snowy regions if the framework lacks surface-specific blending.
- Ownership scope: persistent decals/pools, not hit-effect layer.

---

## Book and Paper Visual Overhauls → separator: `Graphics - Textures & Meshes`

Visual upgrades for books, notes, and paper — the most-read world objects. Texture and mesh improvements make reading feel more tactile and library exploration more rewarding without touching gameplay records.

**⏱ Install order:** Book Covers Skyrim → Enhanced Textures → SkyPatched → Lost Library (optional content).

### Base + Enhancements

| Mod                                                                                                | Description                                                                                                                                                           |
|----------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [Book Covers Skyrim](https://www.nexusmods.com/skyrimspecialedition/mods/901)                      | Core book-cover texture replacer. Every book gets a unique hand-crafted cover. 200K+ endorsements. Choose the **Main Files** download (not the USSEP Update variant). |
| [Book Covers Skyrim Enhanced Textures](https://www.nexusmods.com/skyrimspecialedition/mods/178820) | 2K/4K texture upgrade. Install after base mod and overwrite. Optional but recommended for 4K displays.                                                                |
| [Book Covers Skyrim - SkyPatched](https://www.nexusmods.com/skyrimspecialedition/mods/109254)      | SkyPatcher-based forward-port resolving record-level conflicts. Choose **Recommended Main File**.                                                                     |
| [Book Covers Skyrim - Lost Library](https://www.nexusmods.com/skyrimspecialedition/mods/902)       | Library of 150+ lore books from earlier TES games. Content companion; quest-level decision owned by [World Content](modlist-world-content.md). Add the PBR-compatible cover variant where available. |
| [Book Covers Skyrim - PBR (155254)](https://www.nexusmods.com/skyrimspecialedition/mods/155254) | PBR conversion of the Book Covers stack (book main + Enhanced Textures 178820). Requires the Community Shaders PBR pipeline (locked baseline); install after BCS + Enhanced Textures. 2K recommended. |
| [HFs - Ruined Books](https://www.nexusmods.com/skyrimspecialedition/mods/132355)                 | High-quality ruined/destroyed book clutter meshes. Complements Book Covers Skyrim for damaged books.                                                                  |

### Risks & Compatibility

- With USSEP in the load order, use the SkyPatched variant — it handles USSEP forwarding plus broader compatibility.
- Enhanced Textures is recommended for 4K displays. At 2K the base BC7 textures are adequate.
- Verify compatibility with mods touching book inventory records (e.g. Unread Books Glow). SkyPatched resolves most record-level conflicts.
- Base mod is ~600 MB for 2K. Evaluate whether unique book covers earn their VRAM and disk space cost.

---

## Additional Texture And Mesh Replacements → separator: `Graphics - Textures & Meshes`

Small texture/mesh replacers that don't fit the main topic sections above. Each is a single-author or single-object upgrade.

| Mod                                                                                                                      | Notes                                                                                                                                         |
|--------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------|
| [Visual Animated Enchants](https://www.nexusmods.com/skyrimspecialedition/mods/7037)                                     | Original VAE — superseded by V.A.E.R. in the main Mesh Replacer Series. Keep only if V.A.E.R. conflicts.                                      |
| [Apophysis Dragon Priest Masks SE](https://www.nexusmods.com/skyrimspecialedition/mods/5800)                             | Dragon priest mask retexture. Optional cosmetic upgrade.                                                                                      |
| [Runed Nordic Weapons](https://www.nexusmods.com/skyrimspecialedition/mods/11559)                                        | Nordic weapon mesh/texture replacer.                                                                                                          |
| [Elven Armor replacer glow](https://www.nexusmods.com/skyrimspecialedition/mods/73235)                                   | Elven armor retexture with glow maps.                                                                                                         |
| [Elsopa Iron weapons redone](https://www.nexusmods.com/skyrimspecialedition/mods/52605)                                  | Iron weapon retexture.                                                                                                                        |
| [Ennead Banners and Shields](https://www.nexusmods.com/skyrimspecialedition/mods/46360)                                  | Banner/shield retexture.                                                                                                                      |
| [Elsopa Quivers Redone](https://www.nexusmods.com/skyrimspecialedition/mods/65921)                                       | Quiver retexture.                                                                                                                             |
| [Believable greatswords sheathed](https://www.nexusmods.com/skyrimspecialedition/mods/36909)                             | Greatsword sheath mesh fix.                                                                                                                   |
| [ElSopa - HD Medieval anvil](https://www.nexusmods.com/skyrimspecialedition/mods/48825)                                  | Anvil retexture.                                                                                                                              |
| [Elsopa Grindstones](https://www.nexusmods.com/skyrimspecialedition/mods/58149)                                          | Grindstone retexture.                                                                                                                         |
| [Renthal's workbench](https://www.nexusmods.com/skyrimspecialedition/mods/23164)                                         | Workbench retexture.                                                                                                                          |
| [JFresh's Mead Stein - A Tankard Replacer](https://www.nexusmods.com/skyrimspecialedition/mods/26685)                    | Mead stein/tankard retexture.                                                                                                                 |
| [SD's Horn Candles](https://www.nexusmods.com/skyrimspecialedition/mods/40192)                                           | Candle retexture.                                                                                                                             |
| [JS Dragon Claws](https://www.nexusmods.com/skyrimspecialedition/mods/57038)                                             | Dragon claw retexture.                                                                                                                        |
| [Skyrim Remastered - Soul Gems](https://www.nexusmods.com/skyrimspecialedition/mods/39397)                               | Soul gem retexture.                                                                                                                           |
| [Rally's Market Stalls](https://www.nexusmods.com/skyrimspecialedition/mods/81282)                                       | Market stall retexture.                                                                                                                       |
| [KanJS Spell Tomes Animated](https://www.nexusmods.com/skyrimspecialedition/mods/103057)                                 | Animated spell tome mesh replacer.                                                                                                            |
| [Alt Markarth Forge](https://www.nexusmods.com/skyrimspecialedition/mods/88936)                                          | Markarth forge retexture.                                                                                                                     |
| [HD Unique Handmade Signs (ElSopa)](https://www.nexusmods.com/skyrimspecialedition/mods/21704)                           | Inn/shop sign retexture.                                                                                                                      |
| [Skyking Windhelm Bridge Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/147846)                           | Windhelm bridge mesh/texture replacer.                                                                                                        |
| [Tomato's Windhelm - PBR or Complex Material](https://www.nexusmods.com/skyrimspecialedition/mods/174492)                | Windhelm city-wide PBR retexture. 2K main file recommended.                                                                                   |
| [Distinguished Drapery](https://www.nexusmods.com/skyrimspecialedition/mods/173894)                                      | Curtain/hanging fabric retexture.                                                                                                             |
| [The Mists of Blackreach](https://www.nexusmods.com/skyrimspecialedition/mods/179487)                                    | Blackreach mist/fog visual effect overhaul.                                                                                                   |
| [Valhalla Bridges](https://www.nexusmods.com/skyrimspecialedition/mods/157314)                                           | Higher-detail bridge mesh replacers. Mesh-only, no ESP.                                                                                       |
| [HFs - Imperial Jail Grates](https://www.nexusmods.com/skyrimspecialedition/mods/171332)                                 | High-quality remodel of Imperial jail grate doors/gates. Mesh-only clutter improvement.                                                       |
| [HFs - War horns - remodel](https://www.nexusmods.com/skyrimspecialedition/mods/139520)                                  | New Nord war horn model + HD textures. **Choose main file** (Nord war horn); Torygg/Jurgen ESL add-ons optional.                             |
| [HFs - Safe - remodel](https://www.nexusmods.com/skyrimspecialedition/mods/165568)                                       | New metal-safe model + textures (safeandlock01.nif). No ESP, no scripts.                                                                      |
| [Dwemer Pipework Reworked](https://www.nexusmods.com/skyrimspecialedition/mods/46507)                                    | Dwemer pipework mesh/texture upgrade. 4K. Requires Dwemer Metals Retexture SE (181444).                                                       |
| [Dwemer Metals Retexture SE](https://www.nexusmods.com/skyrimspecialedition/mods/181444)                                 | Prerequisite for Dwemer Pipework Reworked.                                                                                                    |
| [Dwemer Armor Glowmapped](https://www.nexusmods.com/skyrimspecialedition/mods/48227)                                     | Glowmap for Dwemer armor. Requires SSE Engine Fixes (baseline).                                                                                |
| [Dwemer Automatons Glowmapped](https://www.nexusmods.com/skyrimspecialedition/mods/48724)                                | Glowmap for Dwemer automatons. Requires SSE Engine Fixes.                                                                                      |
| [Dwemer Tech Glowmapped](https://www.nexusmods.com/skyrimspecialedition/mods/47802)                                      | Glowmap for Dwemer tech. Requires SSE Engine Fixes.                                                                                            |
| [Dwemer Weapons Glowmapped](https://www.nexusmods.com/skyrimspecialedition/mods/48232)                                   | Glowmap for Dwemer weapons. Requires SSE Engine Fixes.                                                                                         |
| [Dwemer Elevator Lights](https://www.nexusmods.com/skyrimspecialedition/mods/55478)                                      | Animated Dwemer elevator lights.                                                                                                               |
| [Cathedral - Mushrooms](https://www.nexusmods.com/skyrimspecialedition/mods/26103)                                       | HD mushroom textures, 2K. Cathedral series. AI-Generated tag — quality eval per curation policy.                                                |
| [Cathedral Snowberries — Inventory/Wreath/Planter](https://www.nexusmods.com/skyrimspecialedition/mods/69933)            | Inventory model for Cathedral 3D Snow Berries (→ [Terrain & Flora](modlist-graphics-terrain.md)).                                               |
| [Detailed Rugs](https://www.nexusmods.com/skyrimspecialedition/mods/9030)                                                | Main file (with meshes).                                                                                                                       |
| [DB Tenets Redone](https://www.nexusmods.com/skyrimspecialedition/mods/6782)                                             | 4K.                                                                                                                                            |
| [Dusty Vampire Dust](https://www.nexusmods.com/skyrimspecialedition/mods/62907)                                          | 2K.                                                                                                                                            |
| [Clams HD](https://www.nexusmods.com/skyrimspecialedition/mods/69655)                                                    |                                                                                                                                                |
| [Comfy Dwemer Beds](https://www.nexusmods.com/skyrimspecialedition/mods/4798)                                            |                                                                                                                                                |
| [Charcoal Stick and Coal](https://www.nexusmods.com/skyrimspecialedition/mods/69038)                                     | 2K.                                                                                                                                            |
| [ElSopa - Glorious HD Amulets SE](https://www.nexusmods.com/skyrimspecialedition/mods/38194)                             | All divine/unique amulet retexture. **Choose Quality 2K.**                                                                                     |
| [ElSopa - HD Better Bloody Rags SE](https://www.nexusmods.com/skyrimspecialedition/mods/44059)                           | New mesh + textures for bloody rags. **Choose 2K.**                                                                                            |
| [ElSopa - HD Giant Mortars Redone SE](https://www.nexusmods.com/skyrimspecialedition/mods/49384)                         | New mesh + textures for giant mortar clutter. **Choose 2K.**                                                                                   |
| [ElSopa - HD Keys Redone SE](https://www.nexusmods.com/skyrimspecialedition/mods/48209)                                  | New models + textures for all keys. **Choose 2K.**                                                                                             |
| [ElSopa - Silver Mold Redone](https://www.nexusmods.com/skyrimspecialedition/mods/70144)                                  | Silver mold retexture. **Choose 2K.**                                                                                                          |
| [ElSopa - Skeleton Key Redone](https://www.nexusmods.com/skyrimspecialedition/mods/85504)                                | Skeleton Key model/texture replacer. No ESP. **Choose 2K.**                                                                                    |
| [ElSopa - Unique Coin Bags HD SE](https://www.nexusmods.com/skyrimspecialedition/mods/33910)                             | Distinct coin bag appearances. **Choose 2K.**                                                                                                  |
| [Various Immersive Coinbags](https://www.nexusmods.com/skyrimspecialedition/mods/96476)                                  | BOS distribution of 60+ coin bag variations. Requires ElSopa Coin Bags HD. **Choose BOS main file.**                                            |
| [ElSopa HD - Organic Burial Urns SE](https://www.nexusmods.com/skyrimspecialedition/mods/26692)                          | Burial urn retexture. **Choose 2K.**                                                                                                           |
| [ElSopa HD - Remade Better Dust Piles SE](https://www.nexusmods.com/skyrimspecialedition/mods/22106)                     | Complete dust pile remake. **Choose 2K with skulls.**                                                                                          |
| [FYX - Riften Canal and Round Posts](https://www.nexusmods.com/skyrimspecialedition/mods/75431)                          | Replaces square posts with round posts, fixes seams. No ESP. **Choose main file.**                                                             |
| [FYX - Smooth Wells](https://www.nexusmods.com/skyrimspecialedition/mods/66715)                                          | Smooths water/magic wells, fixes UVs. No ESP. **Choose main file** (CotN Falkreath optional if adopted).                                       |
| [FYX - Windhelm Graveyard](https://www.nexusmods.com/skyrimspecialedition/mods/98260)                                    | Graveyard mesh improvements. No ESP. **Choose main file** (JK's patch if JK's Windhelm adopted).                                               |
| [Various Immersive Farmtables](https://www.nexusmods.com/skyrimspecialedition/mods/100469)                               | BOS-based farmtable variety. **Choose BOS main file.**                                                                                         |
| [Falmer Huts Animated](https://www.nexusmods.com/skyrimspecialedition/mods/101539)                                       | BOS-based animated Falmer hut mesh replacer. **Choose BOS main file.**                                                                         |
| [Garlic - A Garlic Mod](https://www.nexusmods.com/skyrimspecialedition/mods/78848)                                       | Garlic clutter replacer. **Choose main file.**                                                                                                 |
| [Scallions of Skyrim - High Polygon Leeks](https://www.nexusmods.com/skyrimspecialedition/mods/53205)                    | Higher-poly leek mesh replacer. **Choose main file.**                                                                                          |
| [Halffaces - Common Chair](https://www.nexusmods.com/skyrimspecialedition/mods/121182)                                   | Mesh + texture replacer for commonchair02. **Choose main file.**                                                                               |
| [Animated Coffins](https://www.nexusmods.com/skyrimspecialedition/mods/63564)                                            | Animated coffin props. Install after Skeleton Replacer HD (→ [Characters & Creatures](modlist-graphics-characters.md)).                        |
| [Grave Gargoyles](https://www.nexusmods.com/skyrimspecialedition/mods/21907)                                              | Custom gargoyle skeleton replacer. Fits grim-dark pillar.                                                                                       |
| [Kanjs — Dragon Stone and Map of Dragon Burials](https://www.nexusmods.com/skyrimspecialedition/mods/167084)             | Animated dragon stone and burial map mesh replacer. No ESP.                                                                                     |

---

## Open Research

Open research for the graphics pipeline is tracked in `TODO.md`.
