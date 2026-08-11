// 20-modlist.typ — Whitecap: the two-layer curated modlist.
#import "theme.typ": *

= The Modlist

_What "Whitecap" actually consists of: Stormworks v1.15.18 plus a curated Steam Workshop modlist in two layers — and, just as importantly, what it deliberately leaves out._

== The list at a glance

#table(
  columns: (1fr, 2fr),
  inset: 7pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { panel2 },
  align: (left, left),
  [*Property*], [*Value*],
  [Base game], [Stormworks: Build and Rescue v1.15.18 (current stable, "The Airburst Update", 2026-06-24)],
  [Required DLC], [All three — Search and Destroy · Industrial Frontier · Space],
  [Mod manager], [Steam Workshop + the game's built-in Mod Manager — per-save "Enabled Mods" (official asset modding since v1.13.0)],
  [Layer 1 — "The Commissioning"], [5 items — QoL and graphics only; the recommended first save],
  [Layer 2 — "The Full Fleet"], [11 more items — physics, parts, missions and detail, layered on top; start a fresh save once you have experience],
  [Distribution], [Steam Workshop — official pages only],
  [Playstyle], [The vanilla sim, deepened and modernized — nothing that makes it easier],
)

== Design pillars

- *Deepen & modernize.* Stormworks is a living game whose physics and career are the point. These mods make its world feel deeper and more current — more realistic engineering, more parts to build with, more mission variety — without moving the goalposts.
- *Graphics, honestly.* One serious visual overhaul (Opal Shader) plus honest QoL. No fake "ultra" filters that only smear the image, and no second shader stacked on top just because it exists.
- *Details.* Physical touches a builder notices: sound you can hear (fog horns, thunder, turbo spool), geometry you can actually build with, an arctic you can walk on.
- *More AI, honestly.* Stormworks' AI lives in its career mission generator — the game already spawns AI ships, aircraft, fire and rescue scenarios around you. This list deepens that system (Mango Cargo Overhaul generates far more varied AI missions; R.A.M.B.O. adds static NPCs on passenger seats). There is *no* maintained "smarter traffic" mod for Stormworks at guide time — the candidates are abandoned, and pretending otherwise would be fiction.
- *No overpowered, no easier.* Nothing that raises money, payloads, or success rates; nothing that erases a mechanic the game teaches you by building. Mods that do exactly that are listed at the end of this chapter with reasons.

== The mod manager: Steam Workshop + the in-game Mod Manager

Stormworks has *official asset modding* since v1.13.0, and for an avid modder it is the only manager this guide uses:

- It is the ecosystem itself — every maintained mod is a Workshop item, so one manager covers everything: subscribe, auto-update, unsubcribe.
- It is *per save*: the in-game Mod Manager ("Enabled Mods" at New Game) lets you choose exactly which mods a world runs. That is what makes the two-layer structure possible on one installation.
- Steam *Workshop Collections* group mods for one-click subscription — keep a "Whitecap Layer 1" and a "Whitecap Layer 2" collection and switching is trivial.
- It needs no external launchers, no file juggling, and no third-party tools.

#info[
  Legacy external loaders — *Stormloader* and friends — predate official modding and are obsolete. If an old mod page asks you to install a loader, treat it as a legacy-mod red flag.
]

== Layer 1 — "The Commissioning" (QoL & graphics)

_The starting save. Nothing here changes how the game plays — it makes it look better, builds easier, and removes only genuine annoyances._

=== Graphics

#mod(
  name: "Opal Shader 2.6",
  tag: "Visual overhaul · by Dheix",
  what: "The community-standard shader overhaul for Stormworks: remade water and clouds, better atmosphere and sky, grass and snow, world curvature, net sails and fire effects. It is the single biggest modernization the game's look can get, and the ecosystem's de-facto default. Not compatible with any other shader or particle mod — which is fine, because it replaces the need for them.",
  source: [#link("https://steamcommunity.com/sharedfiles/filedetails/?id=3393471780")[workshop: 3393471780]],
  install: "Subscribe and enable at world creation. For grass to work, the Grass Module below must be enabled too.",
  risk: "GPU-heavy — lower quality settings on weak PCs. Do NOT combine with Project Reshade, Sea Lanes, SunRays or any other shader mod.",
)

#mod(
  name: "Opal Shader - Grass Module",
  tag: "Required companion · by Dheix",
  what: "The grass meshes Opal needs: adds the models for the grass rendering to the vanilla tiles. Without it, Opal's grass simply does not appear.",
  source: [#link("https://steamcommunity.com/sharedfiles/filedetails/?id=3393475544")[workshop: 3393475544]],
  install: "Subscribe and enable alongside Opal Shader.",
  risk: "Low. Vanilla tiles only — does not work with modded tilesets.",
)

#mod(
  name: "Opal Shader - Config Module",
  tag: "Optional customization · by Dheix",
  what: "A small config file that unlocks Opal's settings — snow, custom fog color, world curvature, grass, net sail, rain reflections, new fire. Edit `_opal_config.glslh` in any text editor and enable the module at world creation to apply your choices.",
  source: [#link("https://steamcommunity.com/sharedfiles/filedetails/?id=3393475869")[workshop: 3393475869]],
  install: "Subscribe and enable at world creation, then edit `_opal_config.glslh` to taste.",
  risk: "Low — a text file. Defaults are sensible if you never touch it.",
)

=== Quality of life

#mod(
  name: "Echo's Bigger Workbenches v11",
  tag: "QoL · by Echoless",
  what: "The definitive workbench mod, rebuilt from the current game files: almost every workbench in the game gets a significantly larger build area, including extended train workbenches. You stop fighting the build envelope and start building.",
  source: [#link("https://steamcommunity.com/sharedfiles/filedetails/?id=3357835209")[workshop: 3357835209]],
  install: "Subscribe and enable at world creation. It is a clean-slate rebuild — do not stack older workbench mods on top.",
  risk: "Low. Environment-only changes (build zones).",
)

#mod(
  name: "Better Hitboxes",
  tag: "QoL · block precision",
  what: "Removes invisible hitboxes from a growing list of blocks (push buttons, toggles, keypads, instrument panels, dials, compasses…). Logic nodes stop nesting inside each other and blocks stop colliding where they shouldn't — docking and panel layouts behave the way they look.",
  source: [#link("https://steamcommunity.com/sharedfiles/filedetails/?id=3359500787")[workshop: 3359500787]],
  install: "Subscribe and enable at world creation.",
  risk: "Low-to-medium. It rewrites block definitions — keep a save backup before updating the mod (the author's own advice). Stays in Layer 1: it touches stock component definitions, so keep it out of the R.A.M.B.O. save unless you enjoy debugging overlaps.",
)

== Layer 2 — "The Full Fleet" (the full modded experience)

_Start a fresh save with everything Layer 1 has plus these. This is the layer for players who have built, flown and floated a few things and want the sim to bite back — honestly, and with more to do._

=== The physics centerpiece

#mod(
  name: "R.A.M.B.O. — Realistic Aerodynamics, Mass & Buoyancy Overhaul",
  tag: "Physics overhaul · by Thales · the heart of Layer 2",
  what: "The mod that makes Stormworks engineer honestly: realistic hydrodynamics and aerodynamics, component mass rebalanced toward powerplants/fuel/payload, nerfed stock propulsion with realistic thrust-to-weight, shape now matters for drag in air and water, sealed interiors and ballast become real design tools, and it adds paintable surfaces, static NPCs on seats and sound changes. Stock components only — no new parts — so vehicles stay two-way compatible with unmodded saves. Fully documented in its Steam Guide (id 3736924997).",
  source: [#link("https://steamcommunity.com/sharedfiles/filedetails/?id=3737924863")[workshop: 3737924863] · #link("https://steamcommunity.com/sharedfiles/filedetails/?id=3736924997")[guide: 3736924997]],
  install: "Subscribe, enable at world creation — then remember the documented quirk: load the save TWICE after every game launch, or the modded physics won't apply.",
  risk: "Medium by design: it makes vehicles heavier, slower and more demanding. Incompatible with mods that change game constants or stock component definitions (hence Better Hitboxes stays in Layer 1).",
)

#info[
  R.A.M.B.O. is the reason the two layers exist. It does not make the game easier — it makes the physics real enough that a badly designed boat sinks and an underpowered plane won't climb. That is the "full modded experience" this layer is for.
]

=== Parts & building depth

#mod(
  name: "Frustum aka Square Pyramids",
  tag: "Parts · recommended by R.A.M.B.O.'s author",
  what: "33 frustum (square-pyramid) blocks with individually paintable faces — the geometry base game never shipped. Pairs naturally with R.A.M.B.O.'s paintable-surface overhaul.",
  source: [#link("https://steamcommunity.com/sharedfiles/filedetails/?id=3657682402")[workshop: 3657682402]],
  install: "Subscribe and enable at world creation.",
  risk: "Low. Additive component mod.",
)

#mod(
  name: "Thales' Aviation Parts and Block Overhaul — Updated",
  tag: "Parts · by Thales",
  what: "250+ aviation and block parts (wings, control surfaces, fuselage pieces, slopes) that fill the shape gaps for serious aircraft builders. The maintained successor to the original — vehicles built with the legacy version load seamlessly into this one.",
  source: [#link("https://steamcommunity.com/sharedfiles/filedetails/?id=3535295022")[workshop: 3535295022]],
  install: "Subscribe and enable at world creation. Do not also enable the legacy version (3357808533).",
  risk: "Low. Additive parts mod; same author and philosophy as R.A.M.B.O.",
)

#mod(
  name: "Electric Parts Expanded",
  tag: "Parts",
  what: "New electric parts that fill gaps for small builds — drones, compact vehicles — styled and balanced to match the base game.",
  source: [#link("https://steamcommunity.com/sharedfiles/filedetails/?id=3357494697")[workshop: 3357494697]],
  install: "Subscribe and enable at world creation.",
  risk: "Low. Additive component mod.",
)

#mod(
  name: "Mechanical Parts Expanded",
  tag: "Parts",
  what: "New mechanical parts in the same spirit — base-game style and balance, filling the gaps for transmission and machinery builds.",
  source: [#link("https://steamcommunity.com/sharedfiles/filedetails/?id=3538324086")[workshop: 3538324086]],
  install: "Subscribe and enable at world creation.",
  risk: "Low. Additive component mod.",
)

#mod(
  name: "Structural Parts",
  tag: "Parts",
  what: "New structural shapes that round out the hull and frame vocabulary for cleaner, more detailed builds.",
  source: [#link("https://steamcommunity.com/sharedfiles/filedetails/?id=3541463211")[workshop: 3541463211]],
  install: "Subscribe and enable at world creation.",
  risk: "Low. Additive component mod.",
)

=== Missions & world

#mod(
  name: "Mango Cargo Overhaul",
  tag: "Missions & economy",
  what: "Overhauls the cargo delivery system: kiosks generate cargo packs by port type and biome, with options for locked routes, passengers (ferry and airport runs), trailers and standardized containers. The default container shuffle becomes a real logistics career — more missions, more AI traffic, more reason to build proper freighters.",
  source: [#link("https://steamcommunity.com/sharedfiles/filedetails/?id=3635338496")[workshop: 3635338496]],
  install: "Subscribe and enable at world creation (spawns its kiosks in the world).",
  risk: "Low-to-medium. Actively maintained; a few edge cases (custom kiosks) remain in-progress per the author.",
)

#mod(
  name: "ARCTIC+ | Arctic Ice Pack",
  tag: "World detail",
  what: "A large, walkable ice sheet on the arctic sea — drive vehicles across it, land aircraft on top, dive underneath with a submarine. The arctic stops being a dead end and becomes a place.",
  source: [#link("https://steamcommunity.com/sharedfiles/filedetails/?id=3703818116")[workshop: 3703818116]],
  install: "Subscribe and enable at world creation — the ice appears in new saves only.",
  risk: "Low. Save-scoped environment change.",
)

=== Sound & detail

#mod(
  name: "Realistic Foghorn / Whistle",
  tag: "Sound detail",
  what: "A realistic foghorn for your vessels — does not replace the vanilla horn, adds alongside it, with pitchable whistles. Small, physical, and exactly the kind of detail a mariner notices in a fog bank.",
  source: [#link("https://steamcommunity.com/sharedfiles/filedetails/?id=3367942963")[workshop: 3367942963]],
  install: "Subscribe and enable at world creation.",
  risk: "Low. Sound-only, non-replacing.",
)

#mod(
  name: "Better Thunder",
  tag: "Sound detail",
  what: "Replaces the thunder sounds with deeper, more atmospheric ones. Stormworks storms are a big part of the drama; this makes them sound like it.",
  source: [#link("https://steamcommunity.com/sharedfiles/filedetails/?id=3523467712")[workshop: 3523467712]],
  install: "Subscribe and enable at world creation.",
  risk: "Low. Sound-only.",
)

#mod(
  name: "Realistic Turbocharger",
  tag: "Engine depth",
  what: "A realistic turbocharger with accurate spooling behaviour and sounds — pressure builds with exhaust volume, different engines spool differently. Engine design gets one more real variable, and turbos stop being free power.",
  source: [#link("https://steamcommunity.com/sharedfiles/filedetails/?id=3521082511")[workshop: 3521082511]],
  install: "Subscribe and enable at world creation.",
  risk: "Low-to-medium. Changes engine behaviour — allow exhaust volume to fill before judging the spool (author's note).",
)

== What we deliberately left out

Every mod below is real and some are very popular — and each one fails a pillar. The reasons are recorded in STATUS.md as well.

- *Project Reshade, Sea Lanes Shader, SunRays* — other shader overhauls. Opal is the pillar; the rest either conflict with it explicitly ("not compatible with Opal", "does not work with Opal") or ship documented visual bugs (Sea Lanes' tsunami/whirlpool rendering). One good shader, not three fighting ones.
- *DEEPER OCEANS MOD* — a dramatic whole-world seabed overhaul (everything 3,000 m deep), but unmaintained since early 2025 through four game versions. The world-changing mods that survive are the ones that keep up (see ARCTIC+).
- *North Sawyer Overhaul* — the most-subscribed world overhaul, and exactly the wrong direction for this list: it rewrites major locations, is unmaintained since v1.13.1, and its philosophy is replacement rather than deepening. When world mods drift, they break saves — this one is drift.
- *ilp0tt1s Decoration Mod* — 289 lovely parts, but the author itself calls the current release "a direct port" with a full rewrite pending, unmaintained since v1.13.0. The Parts Expanded trio covers the pillar on current game files.
- *Improved Default Mission* — more mission variety, but last updated 2022, predating the official mod system. Mango Cargo Overhaul covers mission depth on current files.
- *QOL microcontroller series* (smaller logic chips) — pure convenience that removes space-management friction from the engineering puzzle. Shrinking your circuits is part of the game.
- *Workbench mods other than Echo's* (Better Workbenchs, Bigger Workbenches, lowPoly Workbench) — superseded by Echo's v11, which is rebuilt from the current game files and is the most-subscribed.
- *"All-in-one" modpacks* (e.g. SB mod) — uncurated bundles that mix unrelated mods, several of which this guide rejects on principle. Curating is the point of a modlist.
- *Stormloader and legacy external loaders* — obsolete since official Workshop modding.

#info[
  The line we draw: *friction you can feel is the game.* Detail mods, honest physics, and more to build with deepen it; anything that quietly removes a mechanic, a limit, or a source of tension is out — even when it is popular.
]

== Download sources

- Steam Workshop — Stormworks hub: #link("https://steamcommunity.com/app/573090/workshop/")[steamcommunity.com/app/573090/workshop]
- Geometa modding wiki: #link("https://geometa.co.uk/wiki/stormworks/view/asset_modding/Stormworks")[geometa.co.uk/wiki/stormworks]

Every mod card above links its own Workshop page — check the *Requirements* and *Last updated* fields there before installing; the game updates several times a year and versions move faster than any printed guide.
