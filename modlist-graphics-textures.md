# Textures & Meshes

**MO2 Separator:** `Graphics` → `Graphics - Textures & Meshes`

## Mesh Improvements And Parallax Support → `Graphics - Textures & Meshes`

### Core Idea

- Improve shape quality and silhouette readability without turning the mesh stack into an unmaintainable conflict swamp.
- The best outcome is a hybrid stack: stable baseline mesh improvements, targeted fixes where they matter, and parallax support only where the chosen textures actually benefit from it.

### Options

- Classic baseline option: `SMIM` as the main mesh foundation. → `Graphics - Textures & Meshes`
- High-poly-heavy option: stack broad high-poly replacers more aggressively for maximum close-up fidelity.
- Hybrid option: `SMIM` plus targeted upgrades and deliberate parallax support. → `Graphics - Textures & Meshes`

### Recommendation

- Add `Static Mesh Improvement Mod - SMIM` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/659> as the baseline. → `Graphics - Community Shaders`
- Add `Unofficial Material Fix` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/21027> after SMIM (hard-requires SMIM; corrects material records used by `Community Shaders` PBR pipeline, 21k endorsements). → `Graphics - Textures & Meshes`
- Treat `High Poly Project` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/12029> as optional and only keep it if the extra geometry earns its conflict cost. → `Graphics - Textures & Meshes`
- Use `Simplicity of Snow` v0.26 - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/56235> — main file only (32.8 MB). Skip the optional `Parallax Meshes` (author disclaims responsibility and PGPatcher handles parallax properly). Skip `Northpoint patch` and `Epic Windhelm Expansion Fix` (mods not in the list). Place early if the final texture and mountain stack needs snow-consistency support. → `Graphics - Textures & Meshes`
- Add `FYX - Nordic Doors and Traps Collisions` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/100295> as a collision geometry fix for Nordic doors and traps that stops the player's camera clipping through doorways and trap hitboxes. Requires `XEMI Utility` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/159084> as a prerequisite. → `Graphics - Textures & Meshes`
- Add `Stockades of Skyrim 3D` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/43227> as a 3D stockade mesh and texture replacer. Soft prerequisite for `FYX - 3D Stockades` — install first and let FYX overwrite. → `Graphics - Textures & Meshes`
- Add `FYX - 3D Stockades` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/65104> as a mesh replacement for stockade walls and barricades, adding 3D geometry where vanilla uses flat 2D textures. Improves readability and visual depth at typical third-person distance. Soft-requires `Stockades of Skyrim 3D` above as the base mesh layer. → `Graphics - Textures & Meshes`
- Add `Flame VFX Edit` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/109414> as a mesh-only fire spell effect improvement that is compatible with Community Shaders. → `Graphics - Textures & Meshes`
- Use the PGPatcher workflow in [`modlist-graphics-pgpatcher.md`](modlist-graphics-pgpatcher.md) for late-stage parallax generation rules. → `Graphics - Textures & Meshes`
- `Snazzy Furniture and Clutter Overhaul (SFCO)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/2414> — adds new clutter objects (pottery, silverware, books, alchemy tools, furniture) that vanilla clutter leaves out. VPBR covers the base clutter textures; SFCO adds geometry and variety. → `Graphics - Textures & Meshes`
- `RUSTIC CLUTTER COLLECTION - Special Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/5795> — higher-resolution diffuse/normal replacer for existing clutter. May be redundant with VPBR's own clutter coverage; evaluate side-by-side before including. → `Graphics - Textures & Meshes`
- **Security Overhaul note:** choose 2K texture options for all Security Overhaul SKSE mods where offered (Lock Variations, Extra Locks, PBR). Locks are examined up close during lockpicking and 2K resolves fully at that distance; 4K is wasted VRAM on such small surface areas. → `Graphics - Textures & Meshes`
- `Security Overhaul SKSE - Lock Variations` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/58224> — replaces vanilla lock models with region-appropriate, higher-detail variants (Dwemer locks in Dwemer ruins, Nordic locks in tombs, etc.). By powerofthree. SKSE plugin — no ESP, zero compatibility impact. One of the most immediately noticeable mesh upgrades because the lockpicking minigame puts locks directly in the player's face. → `Graphics - Textures & Meshes`
- `Security Overhaul SKSE - Regional Locks` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/62781> — companion to Lock Variations that assigns region-appropriate lock levels and types (e.g., Dwemer locks are harder to pick, bandit locks are simpler). By Kreiste. Adds gameplay-immersion depth to the visual lock overhaul without heavy scripting. → `Graphics - Textures & Meshes`
- `Security Overhaul SKSE - Lock Add-ons` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/59529> — additional lock variants covering more object types. → `Graphics - Textures & Meshes`
- `Security Overhaul SKSE - Some More Locks` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/59961> — extends lock placement to additional containers and doors. → `Graphics - Textures & Meshes`
- `Security Overhaul SKSE - Extra Locks - 11 New Locks` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/126119> — adds 11 new lock models for Lock Variations. By powerofthree. → `Graphics - Textures & Meshes`
- `Security Overhaul SKSE PBR` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/152269> — PBR material update for Security Overhaul SKSE locks, requires Community Shaders PBR pipeline. → `Graphics - Textures & Meshes`
- `Glorious Doors of Skyrim (GDOS) SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/32376> — replaces vanilla door meshes with higher-detail versions across all architecture types. By hype1. Doors are one of the most-seen architectural elements in the game, and vanilla door meshes are notably low-poly. Mesh-only — compatible with any door texture replacer. FOMOD: choose **2K textures** (4K is wasted VRAM on door surfaces at third-person distance); install **all door categories**; include the **Splendid Mechanized Dwemer Door** (ESL-flagged, zero plugin cost). → `Graphics - Textures & Meshes`
- `V.A.E.R. - Visual Animated Enchants Reborn` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/145018> — replaces weapon enchantment visual effects with animated, higher-fidelity enchantment glows and effects. By wSkeever. No ESP — purely mesh/texture replacer. Compatible with all weapon retextures. Add as an optional weapon-enchantment VFX upgrade. → `Graphics - Textures & Meshes`
- `Thrones Expanded` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/139544> — replaces vanilla throne meshes with higher-detail, more ornate variants across all holds and jarl courts. Mesh-only replacer, no ESP. Complements the throne and furniture direction alongside SFCO. → `Graphics - Textures & Meshes`
- `Rustic Repose - A Common Bed Replacer` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/138889> — replaces common bed meshes with higher-quality, more detailed versions. Mesh-only, no ESP. Part of the bed-and-bedding replacer layer. → `Graphics - Textures & Meshes`
- `Use Those Blankets` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/75481> — makes blankets in beds conform to sleeping NPCs' bodies rather than floating above them. Mesh fix that improves a common immersion-breaking visual. Lightweight, compatible with bed mesh replacers. → `Graphics - Textures & Meshes`
- `Sleipnir Beds - An Upper Class Bed Replacer` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/143168> — replaces upper-class bed meshes (inns, Jarl quarters, Noble homes) with more ornate, detailed versions. Mesh-only, no ESP. Complements Rustic Repose which covers common beds. → `Graphics - Textures & Meshes`
- `The Royal Seat - A Noble and Upperclass Bench Chair and Throne Replacer` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/118892> — replaces noble and upper-class benches, chairs, and throne meshes with higher-detail versions. Mesh-only, no ESP. Complements the Thrones Expanded direction. → `Graphics - Textures & Meshes`
- `Divide and Conquer - A Noble Divider Replacer` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/117295> — replaces noble room-divider meshes (used in Jarl quarters, rich homes, and inns) with higher-quality versions. Mesh-only, no ESP. Complements The Royal Seat for upper-class interior consistency. → `Graphics - Textures & Meshes`
- `Oddments and Miscellanea - Assorted Mesh Replacers` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/118859> — a collection of miscellaneous mesh replacers covering various small objects (inkwells, tankards, cutlery, etc.). Mesh-only, no ESP. Acts as a general clutter-quality catch-up alongside SFCO. → `Graphics - Textures & Meshes`
- `Utenlands Nordic Tents - Replacer and Campfire Addon` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/121203> — replaces vanilla tent meshes with higher-detail Nordic-style tents. Includes a Campfire addon for the camping system. Mesh replacer, lightweight. → `Graphics - Textures & Meshes`
- `Redoran Reverie - A Dunmer Bed Replacer` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/132997> — replaces Dunmer-style bed meshes (found in Solstheim and Grey Quarter) with Redoran-themed detailed versions. Mesh-only, no ESP. Complements Rustic Repose/Sleipnir Beds for Dunmer region coverage. → `Graphics - Textures & Meshes`
- `HFs - Archery Target Remodel - Diverse BOS or Model Swapper` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/138492> — replaces archery target meshes with diverse variants via Base Object Swapper. BOS-based, no ESP. Adds visual variety to a commonly seen training object. → `Graphics - Textures & Meshes`
- `Diverse Grindstones Base Object Swapper` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/145870> — replaces grindstone meshes with diverse regional variants via Base Object Swapper. BOS-based, no ESP. Adds visual variety to smithing areas. → `Graphics - Textures & Meshes`
- `Blary's Booksets - Optimized` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/159303> — replaces book mesh sets with optimized, higher-detail versions. Mesh-only, no ESP. Books are one of the most-seen clutter objects in the game. → `Graphics - Textures & Meshes`
- `ElSopa - Misc Ruins Redone` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/153797> — replaces various ruin clutter meshes (altars, urns, pedestals, etc.) with higher-detail versions. Mesh-only, no ESP. Complements the ElSopa retexture series and VPBR's ruin textures. → `Graphics - Textures & Meshes`
- `Snazzy Orc Chests - Base Object Swapper` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/142275> — replaces orcish chest meshes with more detailed, region-appropriate variants via Base Object Swapper. BOS-based, no ESP. → `Graphics - Textures & Meshes`
- `Snazzy Whiterun AIO` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/147621> — clutter and furniture improvements for Whiterun via Base Object Swapper. → `Graphics - Textures & Meshes`
- `Snazzy Windhelm AIO` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/147620> — clutter and furniture improvements for Windhelm via Base Object Swapper. → `Graphics - Textures & Meshes`
- `Snazzy Solitude AIO` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/147618> — clutter and furniture improvements for Solitude via Base Object Swapper. → `Graphics - Textures & Meshes`
- `Snazzy Markarth AIO` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/147624> — clutter and furniture improvements for Markarth via Base Object Swapper. → `Graphics - Textures & Meshes`
- `Snazzy Riften AIO` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/147594> — clutter and furniture improvements for Riften via Base Object Swapper. → `Graphics - Textures & Meshes`
- `Snazzy Falkreath AIO` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/147671> — clutter and furniture improvements for Falkreath via Base Object Swapper. → `Graphics - Textures & Meshes`
- `Snazzy Dawnstar AIO` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/147758> — clutter and furniture improvements for Dawnstar via Base Object Swapper. → `Graphics - Textures & Meshes`
- `Snazzy Misc Locations` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/147762> — clutter and furniture improvements for miscellaneous locations via Base Object Swapper. → `Graphics - Textures & Meshes`
- `Snazzy Winterhold AIO` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/150194> — clutter and furniture improvements for Winterhold via Base Object Swapper. → `Graphics - Textures & Meshes`
- `Snazzy Towns and Settlements` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/147761> — clutter and furniture improvements for smaller towns and settlements via Base Object Swapper. → `Graphics - Textures & Meshes`
- `Snazzy Player Homes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/182336> — adds clutter and furniture improvements to vanilla player homes via Base Object Swapper. Complements the Snazzy city series and SFCO for player-owned spaces. → `Graphics - Textures & Meshes`

### Risks & Compatibility

- `High Poly Project` can add overlap and complexity for surprisingly small on-screen gains. → `Graphics - Textures & Meshes`
- Parallax can look excellent on some surfaces and broken on others if support is inconsistent.
- Snow, rock, landscape, and water meshes should not be finalized independently of the texture and water winners.

### Acceptance Criteria

- Chosen mesh upgrades improve silhouette quality in normal gameplay, not only close-up stills.
- Parallax adds convincing depth without obvious stretching or artifacting.
- Snow, rock, and architecture transitions remain coherent under the chosen texture stack.
- Mesh conflicts remain understandable and patchable.

## Unique Entity Replacers → `Graphics - Textures & Meshes`

### Core Idea

- This subsection owns model and texture upgrades for unique named entities or one-of-a-kind objects that exist in specific world locations — characters, corpses, and set-piece models that are not covered by broad creature, skeleton, or texture overhauls above.
- The goal is to close visual gaps that generic replacer packs leave open, without swelling into a full NPC-beautification project.

### Options

- Unique corpse baseline: `Night Mother` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/83527> — a high-quality model and texture replacer for the Night Mother's preserved corpse in the Dark Brotherhood sanctuary. The vanilla model is visibly low-poly and low-resolution; this mod modernises it to match the 4K visual direction. → `Graphics - Textures & Meshes`

### Recommendation

- Use `Night Mother` as the targeted unique-entity upgrade. The Dark Brotherhood sanctuary is a heavily scripted quest location the player visits multiple times, and the Night Mother's corpse is the visual centerpiece of that space. The upgrade cost is one ESL-flagged mod with zero script or record conflicts. → `Graphics - Textures & Meshes`
- Keep this subsection narrow — it exists only to catch one-off models that would otherwise fall between creature, skeleton, and texture ownership.
- `Skyking Signs` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/112902> — sign texture and mesh replacer with wind-sway, wood materials, no ESP. Optional companion: `Skyking Unique Signs` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/114940> — unique design per shop, BOS or plugin install. → `Graphics - Textures & Meshes`
- `Skyland Imperial and Nordic Tents` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/57002> — 4K tent texture replacer with new mesh for the large Nordic fur tent (awning for Khajiit caravans). No ESP. → `Graphics - Textures & Meshes`

### Risks & Compatibility

- Unique entity replacers are generally safe to add because they touch only a small number of assets. Verify `Night Mother` does not conflict with any lighting or interior overhaul that modifies the sanctuary cell.
- Do not let this subsection grow into a general NPC or creature overhaul; those tracks are already owned by `modlist-npcs.md`. → `Graphics - Textures & Meshes`

### Acceptance Criteria

- `Elder Wilds` has one clear targeted unique-entity baseline or a deliberate discipline-first decision. → `Graphics - Textures & Meshes`
- The Night Mother's model reads at the same visual quality level as the locked 4K texture and lighting stack.

## Blood, Decals, And Combat Visual Effects → `Graphics - Textures & Meshes`

### Core Idea

- This subsection owns the in-world visual effects that fire when combat happens: blood pools, persistent decals, and other lingering marks that make a fight leave a visible trace on the worldspace.
- It is intentionally kept separate from the lighting, weather, and texture subsections above because combat effects are event-driven overlays, not ambient worldstate. The baseline works on top of the locked visual stack, not as part of it.
- It also stays separate from the combat-feedback and hit-reaction layers in `modlist-third-person.md` and `modlist-survival-combat.md`. Those subsections own the moment a hit lands; this one owns what the worldspace looks like after. → `Graphics - Textures & Meshes`

### Options

- Blood and decal baseline: `Dynamic Bloodpool Framework` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/172080> → `Graphics - Textures & Meshes`
- Dragon breath VFX route: `Dragon Breath VFX Edit` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/118431> — replaces the vanilla dragon breath projectile and impact effects with higher-fidelity, more dramatic VFX (fire, frost, and shock breath variants). Authored by Kittytail, mesh replacer only, no ESP. → `Graphics - Textures & Meshes`
- Combat VFX route: `Improved Sparks` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/19831> — replaces the vanilla orange ice-shard spark effects on metal impacts and grindstones with realistic sparks. By powerofthree, mesh replacer only, no ESP. FOMOD installer with spark-density options (1X-20X). → `Graphics - Textures & Meshes`
- Lightning VFX route: `Lightning VFX Edit` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/124520> — replaces the vanilla lightning bolt projectile and impact effects with higher-fidelity VFX. Mesh replacer only, no ESP. → `Graphics - Textures & Meshes`
- Discipline-first route: rely on the vanilla blood and decal system and skip the dedicated framework, since the locked combat and graphics stack already produces readable hit feedback.
- Deferred visual-effects branch: do not add a blood or decal framework until the locked weather, lighting, and texture stacks are stable, because combat visual effects can clash with the chosen weather rendering.

### Recommendation

- Use `Dynamic Bloodpool Framework` as the blood and decal baseline if `Elder Wilds` wants combat to leave more persistent visual traces on the world. It is a framework-level replacement for the vanilla blood system, designed to render dynamic blood pools and decals under the locked lighting and weather stack. Lock it in only after the weather and lighting baselines are stable, because blood decals need to read correctly under both daylight and the chosen night-darkness setup from `modlist-world-feel.md`. → `Graphics - Textures & Meshes`
- Add `Dragon Breath VFX Edit` as the dragon-combat VFX companion. It replaces vanilla dragon breath effects with higher-fidelity, more dramatic visuals (fire, frost, shock). Mesh replacer only, no ESP, no script overhead, compatible with all weather and lighting stacks. Fits the "big, dark, awe-inspiring world" pillar by making dragon encounters visually more impactful. → `Graphics - Textures & Meshes`
- Keep the discipline-first route alive if the vanilla blood system already reads as strong enough under the chosen lighting and weather setup. Adding a framework for its own sake adds an extra mod without guaranteeing a visible gain.
- Keep the deferred visual-effects branch alive if the locked weather, lighting, and texture stacks are still being settled, because adding a blood framework too early risks a re-tune when the weather or lighting baseline changes.
- Keep this subsection separate from `modlist-third-person.md` hit-reaction and stagger ownership, and from `modlist-survival-combat.md` combat and difficulty ownership. The hit moment is their decision; the visual aftermath is this one's. → `Graphics - Textures & Meshes`
- Optional footprint decals: `Dynamic Footprints SKSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/175254> (v3.0, Jun 2026, 1,144 endorsements) — adds persistent footprint decals to snow, mud, sand, and other ground surfaces as the player and NPCs walk. SKSE plugin, no ESP, lightweight — complements the blood-and-decal stack by extending worldspace trace to movement rather than only combat. Add after the blood/decals baseline is stable. → `Graphics - Textures & Meshes`

### Risks & Compatibility

- Blood and decal frameworks can interact poorly with ENB or Community Shaders weather mods, especially ones that handle screen-space wetness and surface effects. Verify behavior under the locked `Raid Weathers CS` or `Azurite Weathers III CS` baseline. → `Graphics - Textures & Meshes`
- Persistent blood decals can create frame-rate or memory pressure in long combat sessions. Check the framework's MCM for decal lifetime and density settings.
- Blood pools can look out of place in snowy regions if the framework does not handle surface-specific blending. The chosen survival and weather setup from `modlist-expanded-systems.md` and [`modlist-graphics-shaders.md`](modlist-graphics-shaders.md) should be tested in a snowy exterior. → `Graphics - Textures & Meshes`
- The framework can conflict with other combat-effect mods that also touch blood or decal spawning. Keep ownership here scoped to the persistent-decals-and-pool layer, not the hit-effect layer.

### Acceptance Criteria

- `Elder Wilds` has one clear blood and decal baseline or a deliberate discipline-first decision. → `Graphics - Textures & Meshes`
- Combat leaves a visible, believable trace on the worldspace without overwhelming the locked lighting and weather stack.
- The chosen framework does not conflict with the locked weather, lighting, or community-shaders baseline.
- Blood and decal ownership stays separate from hit-reaction, stagger, and combat-balance decisions in `modlist-third-person.md` and `modlist-survival-combat.md`.
