= Wave 1: Graphics Mods

Wave 1 rebuilds the look of Los Santos. A single base overhaul (VisualV) handles lighting, weather, and colour; texture packs layer on top.

== Mod Entry Format

- *Category:* Graphics
- *Version:* Compatible with GTA V Enhanced 1.0.1158.13
- *Dependencies:* Required tools or mods
- *Install path:* Where files go
- *System Impact:* Visual changes to environment, lighting, textures
- *Installation:* Special steps

== Base Overhaul

=== #link("https://www.gta5-mods.com/misc/visualv")[VisualV]
- *Category:* Graphics (lighting / weather / colour)
- *Author:* CP & robi29
- *Version:* 2.0.640 (Enhanced)
- *Dependencies:* CodeWalker, OpenRPF (mods folder), ScriptHookV (optional scripts)
- *Install path:* `mods\update\update.rpf` (via CodeWalker)
- *System Impact:* Rewrites weather, lighting, colour grading, fog, clouds
- *Installation:* Manual — use CodeWalker to place the mod's files into `mods\update\update.rpf` (see *Before You Begin*).

The gold-standard *vanilla-plus* overhaul: weather rewritten from hundreds of real Los Angeles references, fixed colour grading, higher-quality vehicle shadows, corrected moon size and movement, improved volumetric fog and clouds, and removal of chromatic aberration and vignette. Performance-friendly by design — the look improves without tanking FPS.

Optional add-ons (ReShade/ENB presets, procedural shadows, Earth's Atmosphere, no lens flares) are bundled; enable only what you want.

== Texture Packs

These stack on top of VisualV (they touch textures, not lighting).

=== LA Roads 2.0
- *Category:* Graphics (road textures)
- *Author:* CRYHD (2.0 patch by Reyser)
- *Version:* 2.0 (latest)
- *Dependencies:* CodeWalker (mods folder)
- *Install path:* `/mods/` (via CodeWalker)
- *System Impact:* Replaces road surfaces with high-quality Los Angeles textures
- *Installation:* Install via CodeWalker; enable in `dlclist.xml` if distributed as an add-on.

High-resolution, real Los Angeles-style road surfaces. The single biggest visual upgrade for street-level driving. Distributed on GTA5-Mods.com.

=== Real California Architecture
- *Category:* Graphics (signage / landmarks)
- *Author:* RCA (add-on maintained by Reyser)
- *Version:* latest (WIP)
- *Dependencies:* CodeWalker (mods folder)
- *Install path:* `/mods/` (via CodeWalker)
- *System Impact:* Adds real-world California signage and landmarks
- *Installation:* Install via CodeWalker; a work-in-progress, so read its compatibility notes before combining with other map edits.

Adds realistic freeway signs, the Hollywood sign, and other iconic Los Angeles landmarks. Distributed on GTA5-Mods.com as a work-in-progress — combine carefully with other map or graphics mods.

=== #link("https://www.gta5-mods.com/misc/real-rage-4k-water-overhaul")[Real | RAGE V - 4K Water Overhaul]
- *Category:* Graphics (water textures)
- *Author:* Real_Gabe
- *Version:* latest (see source)
- *Dependencies:* CodeWalker (mods folder)
- *Install path:* `/mods/` (via CodeWalker)
- *System Impact:* Replaces water textures with 4K versions
- *Installation:* Install via CodeWalker; check the page's comments for current-build compatibility.

High-resolution water textures with custom caustics and foam, making shorelines and shallow water look far more realistic. Stacks with VisualV — it only replaces `water.ytd`.

== Alternative (not selected)

=== NaturalVision Evolved (NVE)
- *Status:* Not adopted
- *Author:* Razed (Razed Mods)
- *Reason:* Photorealistic overhaul distributed through Patreon; conflicts with VisualV (both rewrite lighting, weather, and textures). A premium alternative if you want photorealism instead of vanilla-plus — but do not install it alongside VisualV.

=== QuantV
- *Status:* Not adopted
- *Reason:* Another industry-leading lighting/weather overhaul, distributed through its own channels. Same conflict class as NVE — rewrites lighting and weather, so choose at most one overhaul.

== User to provide

Slot for additional texture packs (vegetation, particle effects). Verify each targets Enhanced 1.0.1158.13.