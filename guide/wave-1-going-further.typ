// guide/wave-1-going-further.typ

#import "../template/lib.typ": *

#section-heading([About Wave 1])

Wave 1 expands KSP with graphics overhauls, parts packs, and light mechanical additions that add content without fundamentally changing difficulty. You should be comfortable with the skills taught in Wave 0 (orbit, Mun landing, docking) before installing these mods.

#wave-criteria-table()

#warning[[
  Wave 1 mods are cumulative with Wave 0. Do not skip Wave 0 — Wave 1 includes its mods. Install Wave 0 first, play until you've mastered the basics, then add Wave 1.
]]

// ═══════════════════════════════════════════════════════════════════
// MOD ENTRIES
// ═══════════════════════════════════════════════════════════════════

#section-heading([Mod List])

// ═══ TOOLS & AUTOMATION ═══

#mod-entry(
  name: [MechJeb],
  ckan_id: "MechJeb2",
  url: "https://forum.kerbalspaceprogram.com/topic/154834-112x-mechjeb-autopilot/",
  description: [Advanced autopilot and flight computer. Provides automated ascent, rendezvous, landing, maneuver planner, and a customizable data readout. Useful as a teaching tool — watch what MechJeb does, then learn to do it yourself.],
  dependencies: (),
  impact_types: (UI, Mechanics),
  impact_description: [Adds an autopilot module part and data windows. The autopilot can fly entire missions autonomously. Purely additive — you can ignore the autopilot and use it only for the readouts, which are similar to KER.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x.],
)

// ═══ GRAPHICS OVERHAUL ═══

#mod-entry(
  name: [Astronomer's Visual Pack],
  ckan_id: "AstronomersVisualPack",
  url: "https://forum.kerbalspaceprogram.com/topic/160878-112x-astronomers-visual-pack/",
  description: [Comprehensive visual overhaul: high-resolution skybox, revamped cloud layers (via EVE), and atmospheric scattering configs (via Scatterer). The gold standard for KSP visuals.],
  dependencies: ("EnvironmentalVisualEnhancements", "Scatterer", "ModuleManager"),
  impact_types: (Graphics),
  impact_description: [Changes skybox, cloud textures, and atmospheric scattering. No gameplay impact — purely visual. Performance impact depends on texture resolution chosen during install.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Requires 8 GB+ VRAM for high-res textures.],
)

#mod-entry(
  name: [Deferred],
  ckan_id: "Deferred",
  url: "https://github.com/LGhassen/Deferred",
  description: [Replaces KSP's forward renderer with a deferred renderer. Enables better lighting (many dynamic lights without performance collapse), physically-based shaders, and improved shadow handling.],
  dependencies: ("ModuleManager"),
  impact_types: (Graphics),
  impact_description: [Changes the rendering pipeline. More dynamic lights, better reflections, and many of the features Planetshine provides natively. Significant visual improvement with a smaller performance hit than stacking multiple lighting mods.],
  conflicts: [PlanetShine is redundant with Deferred (Deferred handles planet reflections natively). Only install PlanetShine alongside Deferred if you specifically prefer its look.],
  version_pin: [Compatible with KSP 1.12.x.],
)

#mod-entry(
  name: [Parallax Continued],
  ckan_id: "ParallaxContinued",
  url: "https://forum.kerbalspaceprogram.com/topic/217449-112x-parallax-continued/",
  description: [Replaces stock terrain scatter with high-detail tessellated ground textures: rocks, grass, trees, and surface detail at close range. Transforms planetary surfaces from flat painted terrain into detailed 3D landscapes.],
  dependencies: ("Parallax-StockTextures", "ModuleManager"),
  impact_types: (Graphics),
  impact_description: [Adds GPU-intensive terrain tessellation. Near-ground visuals are dramatically improved. Requires a GPU capable of handling tessellation shaders. Use Parallax-StockTextures for stock planets; additional texture packs needed for OPM or Kcalbeloh.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Requires a DX11-capable GPU.],
)

#mod-entry(
  name: [PlanetShine],
  ckan_id: "PlanetShine",
  url: "https://github.com/Gameslinx/PlanetShine",
  description: [Simulates reflected light from planets and moons onto your vessel. A ship orbiting Kerbin gets a blue-tinted glow from below; near the Mun, a gray reflection. Adds subtle but immersive ambient lighting.],
  dependencies: ("ModuleManager"),
  impact_types: (Graphics),
  impact_description: [Adds directional ambient light based on nearby celestial body color and distance. Redundant with Deferred (which handles this natively) — only install both if you prefer PlanetShine's specific look.],
  conflicts: [Deferred's built-in planet reflection system overlaps with PlanetShine's purpose. Use one or the other, or accept minor visual redundancy.],
  version_pin: [Compatible with KSP 1.12.x. Optional if using Deferred.],
)

#mod-entry(
  name: [Vapor Cones],
  ckan_id: "VaporCones",
  url: "https://spacedock.info/mod/3805",
  description: [Adds supersonic vapor cone effects around your craft when breaking the sound barrier in atmosphere. The condensation cloud that forms during transonic flight.],
  dependencies: (),
  impact_types: (Graphics),
  impact_description: [Purely visual — no gameplay effect. Triggers when your vessel exceeds Mach 1 in sufficient atmospheric density.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x.],
)

#mod-entry(
  name: [Reentry Particle Effect Renewed (Firefly)],
  ckan_id: "Firefly",
  url: "https://github.com/M1rageDev/Firefly",
  description: [Adds plasma trail and spark effects during atmospheric reentry. Heat shields and leading edges glow with realistic ablation particles.],
  dependencies: ("ModuleManager"),
  impact_types: (Graphics),
  impact_description: [Visual only — reentry heating damage is unchanged. Enhances the drama of atmospheric entry with particle trails and incandescent effects.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x.],
)

#mod-entry(
  name: [Texture Replacer Replaced],
  ckan_id: "TextureReplacerReplaced",
  url: "https://forum.kerbalspaceprogram.com/topic/161898-112x-texture-replacer-replaced/",
  description: [Replaces stock textures: kerbal suits, heads, skybox, and EVA visor reflections. The modern maintained fork of the original TextureReplacer.],
  dependencies: (),
  impact_types: (Graphics),
  impact_description: [Enables custom kerbal suits, skybox replacement, and visor reflections. Purely visual. Requires downloading or creating texture packs — the mod itself is a framework.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x.],
)

#mod-entry(
  name: [TUFX (Textures Unlimited FX)],
  ckan_id: "TUFX",
  url: "https://forum.kerbalspaceprogram.com/topic/192212-112x-tufx/",
  description: [Post-processing framework: ambient occlusion, bloom, anti-aliasing, color grading, HDR tonemapping. Includes several built-in profiles. For a cinematic, desaturated look, try Fox's Experimental profile (manual install from KSP forums).],
  dependencies: ("ModuleManager"),
  impact_types: (Graphics),
  impact_description: [Adds a post-processing stack to the flight and editor scenes. Profiles are toggleable in-game via toolbar. Performance impact depends on profile — ambient occlusion and high-quality AA have the largest cost.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Fox's Experimental profile is a manual download, not on CKAN.],
)

// ═══ PARTS REDESIGN ═══

#mod-entry(
  name: [Restock],
  ckan_id: "ReStock",
  url: "https://github.com/PorktoberRevolution/ReStocked",
  description: [Complete visual revamp of every stock part: models, textures, and effects. Maintains stock dimensions and attachment points — craft files are 100% compatible. Makes stock parts look like they belong in a modern game.],
  dependencies: ("ModuleManager"),
  impact_types: (Graphics, Parts),
  impact_description: [Replaces art assets for all stock parts. No functional changes — same mass, cost, tech tree placement, and attachment nodes. Existing craft files work unchanged. Pair with Restock+ for additional parts.],
  conflicts: [Any mod that relies on the visual appearance of specific stock parts (e.g., some part-welding mods) may need patches.],
  version_pin: [Compatible with KSP 1.12.x.],
)

#mod-entry(
  name: [Restock+],
  ckan_id: "ReStockPlus",
  url: "https://github.com/PorktoberRevolution/ReStocked",
  description: [Adds new stock-alike parts that fill gaps in the stock lineup: larger reaction wheels, additional fuel tank sizes, resized adapters, and more. All parts follow Restock's visual quality.],
  dependencies: ("ReStock", "ModuleManager"),
  impact_types: (Parts),
  impact_description: [Adds new parts in stock sizes and tech nodes. Fills gaps rather than adding new mechanics — a 2.5m reaction wheel, 0.625m RCS tanks, missing adapter pieces, etc.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Requires Restock.],
)

#mod-entry(
  name: [Waterfall],
  ckan_id: "Waterfall",
  url: "https://github.com/KSPModStewards/Waterfall",
  description: [Modern, mesh-driven engine plume framework. Replaces stock particle-based exhaust with continuous, physically-inspired plumes that expand realistically in vacuum and contract under atmospheric pressure. Includes configs for stock engines.],
  dependencies: ("ModuleManager"),
  impact_types: (Graphics),
  impact_description: [Replaces engine exhaust visuals. No performance or gameplay changes. Stock engine plumes are significantly improved out of the box; additional configs available for mod engines.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. WaterfallRestock provides configs for ReStock engines.],
)

#mod-entry(
  name: [Waterfall for Restock],
  ckan_id: "WaterfallRestock",
  url: "https://github.com/KSPModStewards/WaterfallRestock",
  description: [Patches Waterfall engine effects onto Restock's revamped engine models. Ensures the beautiful Restock engine models also get beautiful Waterfall plumes.],
  dependencies: ("Waterfall", "ReStock"),
  impact_types: (Graphics),
  impact_description: [Bridges Waterfall and Restock so that Restock's engine models use Waterfall's plume system instead of falling back to stock particles.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Requires both Waterfall and Restock.],
)

// ═══ PARTS PACKS ═══

#mod-entry(
  name: [Hullcam VDS Continued],
  ckan_id: "HullcamVDSContinued",
  url: "https://github.com/linuxgurugamer/HullcamVDSContinued",
  description: [Adds functional camera parts: launch pad cameras, docking cameras, rover cameras, and telescope lenses. View the game world through any camera part for cinematic shots or improved situational awareness during docking and landing.],
  dependencies: ("ModuleManager"),
  impact_types: (Parts, UI),
  impact_description: [Adds camera parts at various tech nodes. Each camera provides a live feed view in a window or fullscreen. No gameplay changes — purely a new way to see what's happening around your craft.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x.],
)

#mod-entry(
  name: [Near Future Solar],
  ckan_id: "NearFutureSolar",
  url: "https://forum.kerbalspaceprogram.com/topic/155465-112x-near-future-technologies/",
  description: [Expanded solar panel selection: curved arrays, blanket panels, concentrator photovoltaics, and giant orbital arrays. Solar power that scales from tiny probes to massive space stations.],
  dependencies: ("NearFutureProps", "ModuleManager"),
  impact_types: (Parts),
  impact_description: [Adds solar panel parts at multiple tech tiers. All produce ElectricCharge — no new resources. Panels range from small probe-sized to station-scale deployable arrays.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x.],
)

#mod-entry(
  name: [Near Future Electrical],
  ckan_id: "NearFutureElectrical",
  url: "https://forum.kerbalspaceprogram.com/topic/155465/",
  description: [Nuclear reactors, fission generators, capacitors, and high-capacity batteries for deep-space missions where solar panels produce negligible power. Includes a reactor management UI for monitoring core temperature and fuel consumption.],
  dependencies: ("NearFutureProps", "CommunityResourcePack", "DynamicBatteryStorage", "ModuleManager"),
  impact_types: (Parts, Mechanics),
  impact_description: [Adds reactors that consume EnrichedUranium and produce ElectricCharge, plus capacitors for burst power. Introduces a new resource (EnrichedUranium) and waste heat management via radiators. Scales to end-game power demands.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Reactor fuel is a one-time load — no refueling chain required.],
)

#mod-entry(
  name: [Near Future Propulsion],
  ckan_id: "NearFuturePropulsion",
  url: "https://forum.kerbalspaceprogram.com/topic/155465/",
  description: [Advanced electric and nuclear propulsion: VASIMR-style plasma thrusters, magnetoplasmadynamic engines, pulsed inductive thrusters, and colloid ion engines. High Isp, low thrust — for deep-space efficiency, not launch power.],
  dependencies: ("NearFutureProps", "NearFutureElectrical", "CommunityResourcePack", "ModuleManager"),
  impact_types: (Parts, Mechanics),
  impact_description: [Adds engines that consume vast amounts of ElectricCharge (and sometimes Argon, Xenon, or Lithium) in exchange for extremely high Isp. Requires powerful electrical infrastructure (NF Electrical or massive solar) to operate.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Engines require Near Future Electrical or equivalent power sources.],
)

#mod-entry(
  name: [Near Future Construction],
  ckan_id: "NearFutureConstruction",
  url: "https://forum.kerbalspaceprogram.com/topic/155465/",
  description: [Large structural parts: octo-girders, hexagonal trusses, docking connectors, and modular construction components for building orbital stations and interplanetary vessels in space.],
  dependencies: ("NearFutureProps", "ModuleManager"),
  impact_types: (Parts),
  impact_description: [Adds truss and structural parts. No new mechanics — just more ways to build large space structures without excessive part counts.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x.],
)

#mod-entry(
  name: [Near Future Spacecraft],
  ckan_id: "NearFutureSpacecraft",
  url: "https://forum.kerbalspaceprogram.com/topic/155465/",
  description: [Advanced command pods and service modules: 3-kerbal capsules, 7-kerbal orbital modules, deep-space habitation pods, and integrated RCS/service bays. Pods designed for long-duration crewed missions.],
  dependencies: ("NearFutureProps", "ModuleManager"),
  impact_types: (Parts),
  impact_description: [Adds crewed parts with larger capacities and integrated features (built-in RCS, experiments, storage). Pure parts addition — no new mechanics.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x.],
)

#mod-entry(
  name: [Near Future Launch Vehicles],
  ckan_id: "NearFutureLaunchVehicles",
  url: "https://forum.kerbalspaceprogram.com/topic/155465/",
  description: [Heavy-lift engines, 5m and 7.5m fuel tanks, large SRBs, and engine mounting plates for building Saturn V-class and larger rockets. Extends the stock rocket scale upward.],
  dependencies: ("NearFutureProps", "ModuleManager"),
  impact_types: (Parts),
  impact_description: [Adds large-diameter parts (5m–7.5m) and high-thrust engines. No new mechanics — these are bigger versions of stock rocket components for launching heavier payloads.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x.],
)

#mod-entry(
  name: [Near Future Aeronautics],
  ckan_id: "NearFutureAeronautics",
  url: "https://forum.kerbalspaceprogram.com/topic/155465/",
  description: [Advanced aircraft parts: nuclear thermal turbojets, multi-mode atmospheric engines, large wings, and intake systems. Extends atmospheric flight with engines that work on planets without oxygen (Duna, Eve, Laythe's atmosphere).],
  dependencies: ("NearFutureProps", "ModuleManager"),
  impact_types: (Parts, Mechanics),
  impact_description: [Adds nuclear jet engines that function in any atmosphere (not just oxygenated). Uses IntakeAtm — these engines heat atmospheric gas rather than burning it, enabling powered flight on Duna or Eve.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Nuclear jets require a nuclear reactor from this pack or Near Future Electrical.],
)

#mod-entry(
  name: [Mk2 Expansion],
  ckan_id: "Mk2Expansion",
  url: "https://github.com/SuicidalInsanity/Mk2Expansion",
  description: [Triples the Mk2 fuselage part catalog: inline docking ports, cargo ramps, crew cabins, science labs, RCS-integrated sections, nuclear reactors, and more. Every Mk2-shaped thing you've ever wanted.],
  dependencies: ("ModuleManager"),
  impact_types: (Parts),
  impact_description: [Adds Mk2-profile parts at various tech nodes. All parts maintain the stock Mk2 cross-section and attachment rules. No new mechanics.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x.],
)

#mod-entry(
  name: [SCANsat],
  ckan_id: "SCANsat",
  url: "https://github.com/KSPModStewards/SCANsat",
  description: [Adds surface-scanning parts and a map viewer. Launch scanning satellites to map planetary biomes, altimetry, ore concentrations, and anomaly locations. Maps are persistent and reveal detail as scanning coverage increases.],
  dependencies: ("ModuleManager"),
  impact_types: (Parts, Mechanics, UI),
  impact_description: [Adds scanner parts (RADAR, SAR, multispectral, biome) and a Map view accessible from the toolbar. Scanning requires placing satellites in appropriate polar orbits. Maps provide biome and terrain data useful for landing site selection and resource prospecting.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Does not alter stock resource scanning — SCANsat scanning is parallel and additive.],
)

#mod-entry(
  name: [FreeIva],
  ckan_id: "FreeIva",
  url: "https://github.com/FirstPersonKSP/FreeIva",
  description: [Lets kerbals walk freely inside crewed parts in IVA view. Move between connected habitable modules, float through passageways, and explore the interiors of your spacecraft in first person.],
  dependencies: ("ModuleManager"),
  impact_types: (Mechanics, UI),
  impact_description: [Adds first-person movement inside IVAs. Habitable parts must be connected via passable nodes (docking ports, crew tubes). Adds immersion without affecting flight mechanics. Kerbals cannot EVA from IVA — exiting still goes through the normal EVA button.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Works with most stock and mod IVAs. Some mod IVAs may not have passable colliders defined.],
)

// ═══ PLANET PACKS ═══

#mod-entry(
  name: [Outer Planets Mod],
  ckan_id: "OuterPlanetsMod",
  url: "https://github.com/Poodmund/Outer-Planets-Mod",
  description: [Adds Saturn, Uranus, Neptune, and Pluto analogs to the stock Kerbol system — Sarnus, Urlum, Neidon, and Plock — each with their own moon systems. Seamlessly integrates beyond Jool's orbit with stock-quality terrain and science definitions.],
  dependencies: ("ModuleManager", "Kopernicus"),
  impact_types: (Parts, Mechanics),
  impact_description: [Adds 4 new planets and 15+ moons to the outer Kerbol system. Each body has unique biomes, science, and terrain. Requires Kopernicus (the planet-pack framework). Delta-v requirements roughly triple for outer planet missions compared to Jool.],
  conflicts: [Kcalbeloh and OPM occupy the same region — installing both adds both systems but may make the outer solar system crowded. They are technically compatible but consider whether you want two competing outer systems.],
  version_pin: [Compatible with KSP 1.12.x. Requires Kopernicus Stable Branch. Parallax support via Parallax-OuterPlanetsMod on CKAN.],
)

#mod-entry(
  name: [Kcalbeloh System],
  ckan_id: "KcalbelohSystem",
  url: "https://forum.kerbalspaceprogram.com/topic/203753-112x-kcalbeloh-system/",
  description: [Adds an interstellar system centered on a black hole (Kcalbeloh). Multiple planets orbit the singularity, including habitable worlds, gas giants, and exotic bodies. Accessible via wormhole or interstellar travel.],
  dependencies: ("ModuleManager", "Kopernicus"),
  impact_types: (Parts, Mechanics, Gameplay),
  impact_description: [Adds an entire secondary star system reachable via a wormhole near Jool (or via very-long-distance interstellar transfer). Dramatically extends the endgame — reaching and exploring Kcalbeloh is a campaign-scale endeavor. Parallax terrain patch available from the mod's forum thread (manual install — not on CKAN).],
  conflicts: [Kcalbeloh and OPM both add bodies beyond Jool. They are technically compatible (Kcalbeloh is a separate star system with its own wormhole entrance) but running both is a very large install.],
  version_pin: [Compatible with KSP 1.12.x. Requires Kopernicus Stable Branch. Parallax config must be downloaded manually from the Kcalbeloh forum thread.],
)

// ═══════════════════════════════════════════════════════════════════
// HOW TO USE THESE MODS
// ═══════════════════════════════════════════════════════════════════

#pagebreak()
#chapter-heading([Wave 1 Mods — How to Use Them])

#section-heading([MechJeb])

MechJeb is an autopilot with a learning curve. Every feature is accessed through the MechJeb menu (toolbar button or the part you attach to your craft). The window has tabs: Ascent Guidance, Landing Guidance, Rendezvous Autopilot, Maneuver Planner, and more.

*How to learn from MechJeb:*
1. Manually execute a maneuver first — say, a Mun transfer burn
2. Watch MechJeb do the same burn next time
3. Note the burn timing, throttle profile, and attitude corrections
4. Eventually, you'll internalize the technique and can do it without the autopilot

*Ascent Guidance:* Set your target orbit (altitude, inclination) and click "Engage Autopilot." MechJeb handles the gravity turn, staging, and circularization. Useful for routine satellite launches when you've done the same ascent a hundred times.

*Maneuver Planner:* Create complex multi-step maneuvers (transfer to planet, match planes, circularize) as a sequence. MechJeb executes them in order. This is powerful for Duna and Jool missions.

*Landing Guidance:* Pick a target on the surface. MechJeb deorbits and lands within a few hundred meters. Great for precision base-building in Wave 2.

#tip[[
  MechJeb's data readouts are similar to KER's. If you prefer MechJeb's autopilot but KER's cleaner HUD, you can use both — open MechJeb for automation, KER for the flight HUD.
]]

#section-heading([Using the Graphics Mods])

*First launch after installing visuals:*
Load a sandbox save and launch a simple rocket to orbit. This lets you assess performance before committing to a career save. If you're getting less than 30 FPS during launch, start disabling features:

- TUFX: Open the TUFX toolbar menu (in flight) and try a lighter profile. "Default-Low" disables ambient occlusion, which is the biggest GPU hog. Fox's Experimental profile is beautiful but heavy — save it for screenshots.
- Parallax: If ground scatter kills your framerate, reduce the scatter density in the Parallax settings (accessible from the Space Center scene).
- Deferred: If the deferred renderer causes visual glitches or extreme slowdown, you can disable it in its config file. Deferred handles planet reflections, so *disable PlanetShine if you keep Deferred* — running both is redundant and costs performance.

*Mod conflicts to watch:*
- PlanetShine + Deferred = redundant planet lighting. Choose one.
- If your sky is pure black after installing AVP, Scatterer or EVE didn't load correctly. Reinstall both from CKAN.
- If engine plumes are missing or look broken, Waterfall and its configs may need a reinstall. WaterfallRestock provides plume configs for Restock engines specifically.

#warning[[
  AVP's high-resolution textures demand 6–8 GB of VRAM. If your GPU has less, install the medium or low-res texture option during the AVP install process, or expect significant stuttering during atmospheric flight.
]]

#section-heading([New Parts Overview])

*ReStock and ReStock+:* Your stock parts now look dramatically better, but they function identically. Restock+ adds new stock-alike parts that fill gaps — a 2.5m reaction wheel, 0.625m RCS tanks, missing adapter pieces. These appear in the same tech tree nodes you'd expect them to, so you won't see them all at once in Sandbox.

*Near Future Technologies (8 packs):* These parts unlock in mid-to-late tech tree nodes and are designed for interplanetary and deep-space missions:

- *NF Solar* (Electrics node): Curved and blanket solar arrays scale from probe-sized to station-scale. Use for inner-planet missions (Kerbin, Eve, Duna).
- *NF Electrical* (Specialized Electrics + Experimental Electrics): Nuclear reactors consume EnrichedUranium and produce constant power regardless of distance from the sun. Essential for Jool+ missions where solar panels produce negligible power. Watch reactor core temperature — let it overheat and you'll have a very bad day.
- *NF Propulsion* (Advanced Propulsion + Experimental Propulsion): Electric engines with extremely high Isp (2,000–10,000 s) but very low thrust. VASIMR thrusters, ion engines, and pulsed inductive thrusters. They consume massive amounts of ElectricCharge plus Xenon, Argon, or Lithium propellant. You *must* pair these with NF Electrical reactors — solar panels won't cut it.
- *NF Construction* (Advanced Construction): Octo-girders, hexagonal trusses, and modular connectors for building large orbital structures. Use these to keep part counts manageable on space stations and interplanetary motherships.
- *NF Spacecraft* (Advanced Command Modules): Multi-kerbal pods and deep-space habitation modules with integrated RCS, experiments, and storage. Designed for long-duration crewed missions beyond Kerbin's SOI.
- *NF Launch Vehicles* (Heavy Rocketry + Very Heavy Rocketry): 5m and 7.5m tanks and engines for Saturn V-class rockets. These are big, heavy, and expensive in career mode — use them when you need to launch a fully assembled interplanetary ship in one go.
- *NF Aeronautics* (High Altitude Flight + Hypersonic Flight): Nuclear jets that run on IntakeAtm (they heat atmospheric gas, no oxygen needed). This means powered flight on Duna and Eve. Requires a nuclear reactor from this pack or NF Electrical to run.

*Mk2 Expansion:* New Mk2 fuselage parts appear in the same tech nodes as stock Mk2 parts. The inline docking port and cargo ramp are particularly useful for SSTO spaceplanes.

*SCANsat:* Radar (RADAR), Synthetic Aperture Radar (SAR), Multispectral, and Biome scanners unlock at various tech nodes. You launch them on polar-orbit satellites (roughly 80°–90° inclination to cover the entire surface over time). The SCANsat map window (toolbar button in any scene) shows biome, altimetry, and resource maps for every scanned body. Useful for finding flat landing zones and high-ore areas before sending ISRU equipment.

*Hullcam VDS:* Camera parts unlock across multiple tech nodes. Attach them to your craft, right-click to activate the feed. Use docking cameras for precision docking, rover cameras for driving in IVA, and telescope lenses for cinematics.

*FreeIva:* Once installed, enter IVA view (C key) and click on hatches or connected modules to move between them. Kerbals can float through docking ports, crew tubes, and habitable modules. Not all mod IVAs have passable colliders, but stock and major mod parts (Restock, Near Future) should work.

#section-heading([Planet Packs: OPM and Kcalbeloh])

*Outer Planets Mod (OPM):* Adds 4 planets (Sarnus, Urlum, Neidon, Plock) beyond Jool's orbit, each with a full moon system. Delta-v costs roughly triple for outer planets compared to Jool, and travel times are measured in *years*. OPM integrates seamlessly — stock contracts will generate for these bodies, and science experiments have unique biome definitions.

*Kcalbeloh System:* An entirely separate star system accessible via a wormhole near Jool. The wormhole behaves like a special SOI — fly into it and you emerge in the Kcalbeloh system. The delta-v to reach the wormhole is roughly equivalent to a Jool transfer (~2,000 m/s from LKO). Once inside Kcalbeloh, the system's planets range from habitable worlds to exotic bodies orbiting a black hole.

#warning[[
  Installing both OPM and Kcalbeloh makes for a very large (and somewhat crowded) outer system. OPM fills the gap between Jool and interstellar space; Kcalbeloh adds a separate star system. They are technically compatible, but you may prefer to choose one per save.
]]

*Parallax terrain patches:*
- OPM: Install `Parallax-OuterPlanetsMod` from CKAN. This automatically applies Parallax terrain to OPM bodies.
- Kcalbeloh: The Parallax patch is NOT on CKAN. Download it from the Kcalbeloh forum thread and place it in GameData manually.

#section-heading([Performance Tuning])

Wave 1 adds significant performance load, especially from graphics mods. If your game runs poorly:

1. *Disable TUFX ambient occlusion* — this alone can recover 10–20 FPS
2. *Reduce Parallax scatter density* to 50%
3. *Lower AVP texture resolution* or remove it entirely
4. *Uninstall PlanetShine* if using Deferred (redundant)
5. *Cap part counts* — keep ships under 200 parts, stations under 300

#tip[[
  KSP is CPU-bound by physics, not GPU-bound by graphics. If you have FPS issues during launch (when physics is heavy) but not in orbit, the culprit is part count, not your graphics mods. Simplify the vessel, not the visuals.
]]

// ═══════════════════════════════════════════════════════════════════
// TUTORIAL: GOING FURTHER
// ═══════════════════════════════════════════════════════════════════

#pagebreak()
#chapter-heading([Wave 1 Guide — Going Further])

#section-heading([Interplanetary Transfer Windows])

#section-heading([Phase Angles])

Every planet has a specific launch window when the transfer is most efficient. The *phase angle* is the angle between your origin planet, the Sun, and the destination planet. Key windows:

- *Duna* (Mars analog): Phase angle ~44°, delta-v from LKO ~1,100 m/s
- *Eve* (Venus analog): Phase angle ~54°, delta-v from LKO ~1,100 m/s
- *Jool* (Jupiter analog): Phase angle ~96°, delta-v from LKO ~2,000 m/s
- *Moho* (Mercury analog): Phase angle ~-252°, delta-v from LKO ~2,200 m/s

#info[[
  Duna is the best first interplanetary target. It has an atmosphere (thin, but enough to aerobrake and use parachutes), low gravity, and a moderate transfer cost. Eve is easier to reach but brutally hard to leave — its thick atmosphere and high gravity make ascent nearly as expensive as Kerbin.
]]

#section-heading([Executing a Duna Transfer])

1. Wait for the Duna transfer window (phase angle ~44°). You can eyeball it: Duna should be about 1/8 of an orbit ahead of Kerbin.
2. From LKO, set Duna as your target.
3. Create a maneuver node. Pull prograde until the projected orbit touches Duna's. Adjust the node position until you get an encounter.
4. Burn. Mid-course correction: about halfway there, create another tiny node to fine-tune your Duna periapsis.
5. At Duna, aerobrake — set periapsis to ~15–20 km to use the atmosphere for capture. Bring heat shields.

#tip[[
  Ike (Duna's moon) is tidally locked and small — an even easier landing target than the Mun. If Duna itself intimidates you, go to Ike first.
]]

#section-heading([ISRU — Mining and Refueling])

#section-heading([The ISRU Chain])

In-Situ Resource Utilization converts raw ore into usable fuel. The components:

1. *Surface Scanner* — maps ore concentration from polar orbit
2. *Drill (e.g. Drill-O-Matic)* — extracts ore from the surface
3. *Ore Tank* — stores raw ore
4. *ISRU Converter (e.g. Convert-O-Tron)* — converts ore + electricity into liquid fuel, oxidizer, or monopropellant
5. *Radiators* — the converter generates immense heat and will shut down without sufficient cooling

#danger[[
  ISRU equipment is godlessly heavy. A full mining rig can weigh 20+ tons. Test the full chain on Minmus first — its low gravity makes landing and returning with heavy payloads far easier than the Mun. Minmus also has high ore concentrations in its flats.
]]

#section-heading([Space Stations])

#section-heading([Why Build a Station?])

- *Refueling depot* — dock tankers, mine on Minmus, ferry fuel to orbit
- *Science lab* — the Mobile Processing Lab multiplies science value over time
- *Crew rotation hub* — swap kerbals between missions without landing
- *Relay hub* — high-orbit station with powerful relay antennas extends comms coverage

#section-heading([Station Assembly])

1. Launch the core (lab, docking hub, power, probe core)
2. Dock additional modules (fuel tanks, habitation, antennas, extra docking ports)
3. Keep part count reasonable — too many parts and the physics engine crawls. Aim for under 200 parts per station.

#tip[[
  Always include a probe core on every station module. If you undock the wrong port and lose control of a drifting section, a probe core lets you recover it. Also: reaction wheels. Stations in KSP get wobbly without them.
]]

#section-heading([SSTO Spaceplanes])

#section-heading([Design Principles])

Single Stage To Orbit spaceplanes use jet engines to climb through the atmosphere, then switch to closed-cycle rocket mode for the final push to orbit. Key design considerations:

- *RAPIER engines* are the gold standard — they auto-switch between air-breathing and rocket mode
- *Center of mass vs. center of lift* — CoL must be behind CoM at all fuel levels. Check with tanks both full and empty in the SPH.
- *Wing area* — more is better. You need lift at high altitude where the air is thin.
- *Intake spam is dead* — KSP 1.0+ aerodynamics fixed this. One shock cone intake per ~4 RAPIERs is plenty.

#section-heading([Ascent Profile])

1. Accelerate along the runway to ~140 m/s, pull up at 10–15 degrees
2. Climb at 15–20 degrees until ~10,000 m
3. Level off to 5–10 degrees. Accelerate to ~1,400 m/s at ~20,000 m. This is where RAPIERs produce peak thrust.
4. When thrust drops (around 23–25 km), RAPIERs auto-switch to closed-cycle. Pitch up to 20–30 degrees.
5. Burn to apoapsis > 70 km, circularize as normal.

#section-heading([Relay Networks])

#section-heading([The CommNet System])

KSP's CommNet requires line-of-sight to Kerbin for probe control. Signal strength depends on antenna power, distance, and the tracking station level. A relay network places satellites between Kerbin and your destination to bounce the signal.

#section-heading([Relay Satellite Design])

- Every relay needs a relay-capable antenna (RA-2, RA-15, RA-100)
- Pair with a direct antenna for the satellite's own connection back to Kerbin
- Include solar panels, batteries, a probe core, and reaction wheels
- Always add a small engine + fuel for final orbit adjustments

#section-heading([Kerbin Relay Constellation])

For continuous coverage around Kerbin, launch 3–4 relay satellites equally spaced in a high circular orbit (~2,800 km for 4-sat coverage). Launch them all on one rocket, detach at apoapsis, and circularize each individually.

#section-heading([Asteroid Capture])

#section-heading([Finding Asteroids])

Asteroids spawn near Kerbin and are tracked in the Tracking Station. Unknown objects must be discovered first — upgrade the Tracking Station to level 3, then use the "Track Unknown Objects" button in the observatory.

#section-heading([The Claw])

The Advanced Grabbing Unit (the "Klaw") attaches to asteroids as if docking. Once grabbed, the asteroid becomes part of your craft and you can push/pull it. Tips:

- Approach slowly (asteroids are massive — 10 m/s is a collision, not a dock)
- Time warp with care — the Klaw can phase through the asteroid at high warp
- Bring extra reaction wheels — an E-class asteroid can weigh thousands of tons
- Target a Kerbin periapsis of ~35 km for aerocapture with a heat shield
