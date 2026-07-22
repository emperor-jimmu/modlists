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
  name: [Scatterer],
  ckan_id: "Scatterer",
  url: "https://forum.kerbalspaceprogram.com/topic/103963-112x-scatterer-atmospheric-scattering/",
  description: [Atmospheric scattering, ocean shaders, and sunflare effects. Gives planets proper atmospheric haze, Rayleigh scattering (blue skies on Kerbin), and reflective water surfaces with wave animation. By Blackrack — also the author of Volumetric Clouds. Installed automatically as an AVP dependency.],
  dependencies: ("ModuleManager"),
  impact_types: (Graphics),
  impact_description: [Replaces KSP's flat atmospheric rendering with physically-based scattering. Oceans gain reflections and wave animation. Sunflare is customizable with multiple presets. Moderate GPU impact — adjust ocean and atmosphere quality in settings.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Installed automatically with AVP. Blackrack's Volumetric Clouds requires Scatterer for its lighting integration. Configurable via the Scatterer toolbar menu in flight.],
)

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

#mod-entry(
  name: [Environmental Visual Enhancements (EVE)],
  ckan_id: "EnvironmentalVisualEnhancements",
  url: "https://forum.kerbalspaceprogram.com/topic/196411-112x-environmentalvisualenhancements-redux/",
  description: [Cloud and atmospheric effects framework. Adds volumetric cloud layers, city lights on the dark side of Kerbin, and atmospheric glow. The base framework that Astronomer's Visual Pack, Spectra, and other visual packs build their cloud configs on top of. Installed automatically as a dependency of AVP.],
  dependencies: ("ModuleManager"),
  impact_types: (Graphics),
  impact_description: [Provides the cloud rendering engine. Does nothing on its own without config packs (AVP, Spectra, BoulderCo). AVP includes EVE as a dependency and provides configs. Blackrack's Volumetric Clouds (Patreon) upgrades EVE's cloud rendering to a full volumetric system.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Installed automatically with AVP. Blackrack's Volumetric Clouds is a paid Patreon mod that replaces EVE's cloud shader — manual install from Blackrack's Patreon.],
)

#mod-entry(
  name: [Blackrack's Volumetric Clouds],
  ckan_id: "BlackrackVolumetricClouds",
  url: "https://www.patreon.com/blackrack/posts/true-volumetric-87982960",
  description: [True volumetric cloud rendering for KSP. Replaces EVE's 2D cloud layers with fully 3D volumetric clouds that react to lighting, cast shadows, and have real depth. Transforms atmospheric flight — clouds are no longer flat textures but massive 3D formations you can fly through. A Patreon-supported mod by Blackrack (also the author of Scatterer).],
  dependencies: ("EnvironmentalVisualEnhancements", "Scatterer", "ModuleManager"),
  impact_types: (Graphics),
  impact_description: [Upgrades EVE's cloud system to volumetric rendering. Significant visual improvement — clouds have real 3D volume, self-shadowing, and dynamic lighting. Performance impact is moderate to high depending on cloud quality settings. Requires EVE and Scatterer (both already installed via AVP).],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Manual install from Blackrack's Patreon (free — Google Drive download link on the post page). Download the latest release, extract to GameData/. Worth supporting Blackrack on Patreon if you can.],
)

#mod-entry(
  name: [Distant Object Enhancement],
  ckan_id: "DistantObject",
  url: "https://forum.kerbalspaceprogram.com/topic/158637-112x-distant-object-enhancement/",
  description: [Renders planets and moons as visible points of light in the sky, with proper brightness and color based on distance and phase. Distant vessels appear as flares against the skybox. Vastly improves the sense of scale — you can see Jool from Kerbin orbit, Duna as a red dot, and your space station winking in the sunlight.],
  dependencies: ("ModuleManager"),
  impact_types: (Graphics),
  impact_description: [Adds dynamic sky-dimming and distant vessel rendering. Planets are visible even when they're just a few pixels across. No performance cost — uses efficient point-sprite rendering.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Works with all planet packs (OPM, Kcalbeloh). Vessel flares use the same sky-dimming system — disable if you find distant ship flares distracting.],
)

#mod-entry(
  name: [Textures Unlimited],
  ckan_id: "TexturesUnlimited",
  url: "https://forum.kerbalspaceprogram.com/topic/167450-112x-textures-unlimited/",
  description: [PBR (Physically Based Rendering) shader framework for KSP parts. Enables metallic, reflective, and roughness-based textures on supported parts. A separate concept from TextureReplacer — TU changes how parts render, while TR replaces texture files. Required by some parts mods for their reflective/textured materials.],
  dependencies: ("ModuleManager"),
  impact_types: (Graphics),
  impact_description: [Adds PBR shader support to KSP's rendering pipeline. Parts default to standard KSP shaders — only mods that ship TU-compatible textures use PBR. Required by Textures Unlimited Recolour Depot (TURD) for in-editor part recoloring.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Framework mod — no visual change on its own. Install TURD (Textures Unlimited Recolour Depot) or TU-compatible texture packs to see PBR effects.],
)

#mod-entry(
  name: [Textures Unlimited Recolour Depot (TURD)],
  ckan_id: "TURD",
  url: "https://forum.kerbalspaceprogram.com/topic/174188-112x-turd/",
  description: [In-editor part recoloring using Textures Unlimited's PBR shaders. Select any supported part in the VAB/SPH and recolor it with preset palettes or custom colors — make your rockets any color you want while maintaining the PBR material quality. Works with stock parts and mod packs that ship TURD configs.],
  dependencies: ("TexturesUnlimited", "ModuleManager"),
  impact_types: (Graphics, UI),
  impact_description: [Adds a part recoloring GUI in the editor. Parts must have TURD-compatible textures — stock parts and many mod parts have community configs available. The recolor is saved with the craft file and visible in flight. Pure visual — no gameplay impact.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Manual install from forum thread — not on CKAN. Requires TexturesUnlimited. TURD for DLC, B9, and MkIV recolor packs are available on the same forum thread for additional part support.],
)

#mod-entry(
  name: [EVA Visor],
  ckan_id: "EVA-Visor",
  url: "https://forum.kerbalspaceprogram.com/topic/198691-eva-visor/",
  description: [Adds reflective visor effects to EVA kerbals. The helmet visor reflects the environment — stars, planets, and nearby vessels show up as reflections on the gold-tinted visor. A small but immersive detail that makes EVA photos significantly more cinematic.],
  dependencies: ("TextureReplacerReplaced"),
  impact_types: (Graphics),
  impact_description: [Adds environment-mapped visor reflections to kerbal EVA suits. Purely visual — no gameplay effect. Requires TextureReplacerReplaced for the visor texture replacement system.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Manual install from forum thread — not on CKAN. Niche cosmetic mod — purely for screenshots and immersion.],
)

#mod-entry(
  name: [Shabby / Shaddy],
  ckan_id: "Shabby",
  url: "https://forum.kerbalspaceprogram.com/topic/198333-artemis-construction-kit/",
  description: [TUFX post-processing profiles by benjee10. Shabby provides a clean, cinematic profile suitable for screenshots and general gameplay. Shaddy extends Shabby with more profile variants. Install via CKAN and select the profile from the TUFX toolbar menu in flight.],
  dependencies: ("TUFX"),
  impact_types: (Graphics),
  impact_description: [Adds additional TUFX profiles beyond the built-in defaults. Pure configuration — toggles between profiles in-game with no performance cost beyond the post-processing effects themselves.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Both Shabby and Shaddy (CKAN: "Shabby", "Shaddy") install together as a profile pack. Select them from TUFX's in-game profile selector.],
)

#mod-entry(
  name: [Pood's Skyboxes],
  ckan_id: "PoodsMilkyWaySkybox",
  url: "https://forum.kerbalspaceprogram.com/topic/169919-13-112-poods-skyboxes-v130-17th-jan-2019/",
  description: [High-resolution skybox replacements by Poodmund. Includes three variants: Milky Way (detailed galaxy panorama), Calm Nebula (subtle, warm-toned nebula — the personal favourite), and Deep Star Map (dense starfield for deep-space immersion). Replaces KSP's default flat galaxy background with rich, detailed space vistas.],
  dependencies: (),
  impact_types: (Graphics),
  impact_description: [Replaces the skybox cubemap texture. No performance impact. Purely visual. Three variants available in one download — Calm Nebula is recommended for its warm, atmospheric feel that complements AVP and Scatterer.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Manual install from forum thread — not on CKAN. Download, choose your preferred variant, place in GameData/. TextureReplacerReplaced can also install skybox textures.],
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

#mod-entry(
  name: [Restock Waterfall Expansion (RSMP)],
  ckan_id: "RestockWaterfallExpansion",
  url: "https://spacedock.info/mod/3149/Restock-Waterfall-Expansion",
  description: [Additional Waterfall plume configurations for ReStock engines beyond what WaterfallRestock provides. Adds plumes to more niche ReStock engines, RCS thrusters, and SRBs. Install alongside WaterfallRestock for complete plume coverage on all ReStock parts. The mod formerly known as RSMP (ReStock Plume Expansion).],
  dependencies: ("WaterfallRestock", "Waterfall", "ReStock", "ModuleManager"),
  impact_types: (Graphics),
  impact_description: [Extends Waterfall plume coverage to engines and parts that WaterfallRestock doesn't cover. Pure graphics — no gameplay changes. May cause minor issues with specific engine configs; CKAN handles the dependency chain automatically.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Requires Waterfall, WaterfallRestock, and ReStock. CKAN automatically resolves dependencies — just install and it works.],
)

// ═══ TECH TREE ═══

#mod-entry(
  name: [Community Tech Tree],
  ckan_id: "CommunityTechTree",
  url: "https://github.com/post-kerbin-mining-corporation/CommunityTechTree",
  description: [Expands the stock tech tree with additional nodes for modded parts. Instead of mods cramming their advanced parts into the stock tree's last few nodes, CTT provides dedicated progression nodes for nuclear propulsion, colonization, life support, and deep-space technologies. The foundation for organized modded career progression.],
  dependencies: ("ModuleManager"),
  impact_types: (Mechanics, Gameplay),
  impact_description: [Restructures and extends the tech tree with dozens of new nodes. Changes career/science mode progression by spreading parts across a deeper, more specialized tree. Mod parts that support CTT will auto-assign to appropriate new nodes. Does not affect Sandbox mode.],
  conflicts: [Other tech tree mods (Engineer Tech Tree, UnKerballed Start, etc.) are incompatible — choose one tech tree for your save. Stock parts are unaffected and remain in their original nodes.],
  version_pin: [Compatible with KSP 1.12.x. Most parts mods (Near Future, Planetside, etc.) have built-in CTT support. Recommended but not required for Hide Empty Tech Tree Nodes (Wave 0).],
)

// ═══ FUEL SYSTEM ═══

#section-heading([Fuel System])

Many parts mods in Wave 1 use custom fuel types beyond stock LiquidFuel/Oxidizer. The mods below define and manage these resources so engines and tanks from historical, modern, and shuttle packs use their real-world propellants. Install these once — all dependent parts mods will auto-configure.

#mod-entry(
  name: [Community Resource Pack],
  ckan_id: "CommunityResourcePack",
  url: "https://github.com/BobPalmer/CommunityResourcePack",
  description: [Defines shared resource definitions used by the KSP modding ecosystem. Adds Hydrogen, Methane, Kerosene, Hydrazine, and dozens of other resources to the game. No parts or gameplay on its own — other mods reference these definitions for their engines and tanks.],
  dependencies: (),
  impact_types: (Mechanics),
  impact_description: [Registers new resource types in the game database. Required by most parts packs that use custom fuels. Does nothing visible by itself — it's a shared library that other mods depend on.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Required by Bluedog DB, Tantares, Tundra, Artemis CK, HabTech2, and many others. Install once.],
)

#mod-entry(
  name: [B9 Part Switch],
  ckan_id: "B9PartSwitch",
  url: "https://github.com/blowfishpro/B9PartSwitch",
  description: [Allows fuel tanks to switch between different resource configurations in the editor. A single tank can hold LiquidFuel/Oxidizer (stock), LH2/Oxidizer (cryogenic), Methane/Oxidizer, or monopropellant — switchable with a dropdown in the VAB. Foundation for the entire custom-fuel ecosystem.],
  dependencies: ("ModuleManager"),
  impact_types: (Mechanics),
  impact_description: [Adds part-switching capability to fuel tanks. The tank model doesn't change — only the resources it contains. Required by most parts mods that use non-stock fuels. Can also switch textures and models on supported parts.],
  conflicts: [InterstellarFuelSwitch and Firespitter's fuel switch provide overlapping functionality. B9PartSwitch is the modern standard — only install alternatives if a specific mod requires them.],
  version_pin: [Compatible with KSP 1.12.x. Required by virtually every parts mod that uses custom fuel types.],
)

#mod-entry(
  name: [Cryogenic Tanks],
  ckan_id: "CryoTanks",
  url: "https://github.com/post-kerbin-mining-corporation/CryoTanks",
  description: [Adds cryogenic fuel tank options and boil-off mechanics. LH2 and Methane require insulated tanks — they slowly evaporate if stored in standard tanks. Includes active cooling parts that eliminate boil-off at the cost of ElectricCharge.],
  dependencies: ("CommunityResourcePack", "B9PartSwitch", "ModuleManager"),
  impact_types: (Parts, Mechanics),
  impact_description: [Adds insulated tank variants with boil-off management. LH2 tanks lose fuel over time unless actively cooled. This is a light resource management mechanic — not a failure condition, but something you need to account for on long missions.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Boil-off is configurable — you can disable it entirely if you prefer simpler fuel management.],
)

#mod-entry(
  name: [Cryogenic Engines],
  ckan_id: "CryoEngines",
  url: "https://forum.kerbalspaceprogram.com/topic/155465-112x-near-future-technologies/",
  description: [Adds LH2/Oxidizer-fueled rocket engines in the Near Future style. Higher Isp than stock chemical engines but requires managing cryogenic fuel boil-off. Includes upper-stage and deep-space engines optimized for efficiency over thrust.],
  dependencies: ("CommunityResourcePack", "CryoTanks", "B9PartSwitch", "ModuleManager"),
  impact_types: (Parts, Mechanics),
  impact_description: [Adds LH2-burning engines that integrate with the CryoTanks boil-off system. Engines range from 1.25m upper-stage to 3.75m heavy-lift cryogenic. Part of the Near Future Technologies family of mods.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Best paired with Near Future Electrical for powering active cooling on long missions.],
)

#mod-entry(
  name: [Deployable Engines],
  ckan_id: "DeployableEngines",
  url: "https://github.com/post-kerbin-mining-corporation/DeployableEngines",
  description: [Engine animation framework. Allows engine nozzles to extend, retract, and deploy with animations. Required by Rocket Motor Menagerie, CryoEngines, Artemis Construction Kit, and other mods that feature animated engine parts. No standalone effect.],
  dependencies: ("ModuleManager"),
  impact_types: (Mechanics),
  impact_description: [Enables deploy/retract animations on supported engines. Pure framework — does nothing unless another mod provides animated engine parts. Required dependency for several Wave 1 parts packs.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Required by Rocket Motor Menagerie, Artemis Construction Kit, and CryoEngines.],
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
  name: [Orbital Survey Plus],
  ckan_id: "OrbitalSurveyPlus",
  url: "https://spacedock.info/mod/574/Orbital-Survey-Plus",
  description: [Lighter alternative to SCANsat. Enhances the stock resource scanning interface with better visualization and improved waypoint integration — no new parts or satellite-mapping gameplay loop. For players who want better survey tools without the full SCANsat experience.],
  dependencies: ("ModuleManager"),
  impact_types: (UI, Mechanics),
  impact_description: [Improves the stock orbital survey UI. Works with stock scanning mechanics — does not add new scanner parts or separate map overlays. A vanilla+ upgrade rather than a full overhaul.],
  conflicts: [SCANsat is the primary recommended survey mod for this modlist — it provides comprehensive altimetry, biome, and slope maps essential for Wave 2 colonization. OSP is offered as a lighter alternative for players who prefer to stick closer to stock.],
  version_pin: [Compatible with KSP 1.12.x. SCANsat is recommended over OSP for this modlist. Install OSP only if you specifically want a lighter touch to orbital survey.],
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

// ═══ HISTORICAL ROCKETS ═══

#section-heading([Historical Rockets])

These mods add meticulously detailed replicas of real-world spacecraft and launch vehicles from the early space age through the Apollo era. Parts are balanced for stock-scale KSP (2.5× smaller than real life) and integrate with the Community Tech Tree and CRP fuel system.

#mod-entry(
  name: [Bluedog Design Bureau],
  ckan_id: "BluedogDB",
  url: "https://forum.kerbalspaceprogram.com/topic/122020-112x-bluedog-design-bureau-stockalike-saturn-apollo-and-more/",
  description: [Comprehensive US rocketry pack covering Mercury, Gemini, Apollo, and dozens of historical launchers (Atlas, Titan, Delta, Scout). Hundreds of parts: command pods, service modules, lunar landers, engines, fuel tanks, and science instruments — all in a unified stockalike art style. The definitive historical US space program mod.],
  dependencies: ("B9PartSwitch", "CommunityResourcePack", "ModuleManager", "DeployableEngines"),
  impact_types: (Parts, Mechanics),
  impact_description: [Adds a complete US historical spacecraft and launcher catalog. Engines use real-world propellants (Kerosene/LOX, LH2/LOX, hypergolics) via CRP. Tech tree placements roughly follow historical chronology. Pairs with Tantares for the full Cold War space race experience.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Requires CRP, B9PartSwitch, and DeployableEngines. Tantares is the Soviet counterpart — both are designed to work together.],
)

#mod-entry(
  name: [Tantares — Soviet Spacecraft],
  ckan_id: "NewTantares",
  url: "https://forum.kerbalspaceprogram.com/topic/73686-112x-tantares-stockalike-soyuz-and-mir/",
  description: [Soviet crewed spacecraft: Vostok, Voskhod, Soyuz, Progress, TKS/VA, and Salyut/Mir station modules. The definitive Soviet space program parts pack in stockalike style. Includes command pods, orbital modules, service modules, docking systems, and station parts.],
  dependencies: ("B9PartSwitch", "ModuleManager"),
  impact_types: (Parts, Mechanics),
  impact_description: [Adds Soviet crewed spacecraft parts. Recommends NewTantaresLV for launch vehicles and TantaresSP for uncrewed probes. Engines use real-world propellants via CRP. Designed to complement BluedogDB for a complete Cold War era mod set.],
  conflicts: [The original Tantares (deprecated) conflicts with NewTantares — install NewTantares only.],
  version_pin: [Compatible with KSP 1.12.x. Pair with NewTantaresLV for Soviet launchers (Soyuz rocket, Proton, N1). TantaresSP adds Soviet interplanetary probes.],
)

#mod-entry(
  name: [Tantares LV — Soviet Launchers],
  ckan_id: "NewTantaresLV",
  url: "https://forum.kerbalspaceprogram.com/topic/73686-112x-tantares-stockalike-soyuz-and-mir/",
  description: [Soviet launch vehicles: Soyuz rocket family, Proton, N1, and Energia. Fuel tanks, engines, and fairings designed to match the Tantares spacecraft parts. Provides the rockets that carry Vostok, Soyuz, and TKS spacecraft to orbit.],
  dependencies: ("B9PartSwitch", "ModuleManager"),
  impact_types: (Parts, Mechanics),
  impact_description: [Adds Soviet launcher parts. Intended for use with NewTantares — the rockets are scaled and balanced to carry Tantares payloads. Engines use real-world propellants via CRP.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Recommended companion to NewTantares.],
)

#mod-entry(
  name: [Tantares SP — Soviet Space Probes],
  ckan_id: "TantaresSP",
  url: "https://forum.kerbalspaceprogram.com/topic/73686-112x-tantares-stockalike-soyuz-and-mir/",
  description: [Soviet uncrewed probes and interplanetary spacecraft: Luna, Venera, Mars, and other historical Soviet probe programs. Probe cores, science instruments, and antenna parts in the Tantares art style.],
  dependencies: ("B9PartSwitch", "ModuleManager"),
  impact_types: (Parts),
  impact_description: [Adds Soviet probe parts for uncrewed exploration. Complements NewTantares and NewTantaresLV. NeptuneCamera recommended for integrating camera functionality with probe parts.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. NeptuneCamera (recommended) adds camera parts that integrate with probe cores.],
)

// ═══ MODERN ROCKETS ═══

#section-heading([Modern Rockets])

#mod-entry(
  name: [Eisenhower Astronautics],
  ckan_id: "EisenhowerAstronautics",
  url: "https://forum.kerbalspaceprogram.com/topic/211728-eisenhower-astronautics-modern-russian-rockets/",
  description: [Modern Russian spacecraft and launch vehicles: Angara rocket family, modern Soyuz variants, and contemporary Russian space hardware. Extends the Russian/Soviet lineage from Tantares into the 21st century with updated designs and modern engine configurations.],
  dependencies: ("B9PartSwitch", "CommunityResourcePack", "ModuleManager"),
  impact_types: (Parts, Mechanics),
  impact_description: [Adds modern Russian rocket and spacecraft parts. Uses CRP for propellant configuration. Shares Tantares' design language but with modern vehicle profiles.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Complements Tantares by providing modern Russian vehicles alongside the Soviet-era Tantares parts.],
)

#mod-entry(
  name: [Tundra Exploration],
  ckan_id: "TundraExploration",
  url: "https://forum.kerbalspaceprogram.com/topic/166915-112x-tundra-exploration/",
  description: [SpaceX-inspired parts: Falcon 9, Falcon Heavy, Dragon capsule, and Starship. Includes grid fins, landing legs, and superdraco thrusters. Build and fly reusable rockets with propulsive landing capability — Falcon-style booster recovery and Dragon-style capsule landings.],
  dependencies: ("B9PartSwitch", "CommunityResourcePack", "ModuleManager", "DeployableEngines"),
  impact_types: (Parts, Mechanics),
  impact_description: [Adds SpaceX-inspired launchers and spacecraft. Engines use Kerosene/LOX (Falcon) and Methane/LOX (Starship) via CRP. Landing legs, grid fins, and RCS pods enable propulsive recovery operations.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Tundra Technologies adds probe buses and satellite parts that complement the Falcon/Dragon lineup.],
)

#mod-entry(
  name: [Tundra Technologies],
  ckan_id: "TundraTechnologies",
  url: "https://forum.kerbalspaceprogram.com/topic/166915-112x-tundra-exploration/",
  description: [SpaceX-inspired probe buses, satellite platforms, and uncrewed spacecraft parts. Adds modular satellite buses, probe cores, and instrument platforms designed to pair with Tundra Exploration's Falcon launchers.],
  dependencies: ("B9PartSwitch", "ModuleManager"),
  impact_types: (Parts),
  impact_description: [Adds satellite and probe parts in the Tundra art style. Complements Tundra Exploration for building complete Falcon-launched satellite missions.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Designed to pair with Tundra Exploration for the full SpaceX-style ecosystem.],
)

// ═══ SHUTTLE, SLS & ISS ═══

#section-heading([Shuttle, SLS & ISS])

#mod-entry(
  name: [Shuttle Orbiter Construction Kit],
  ckan_id: "ShuttleOrbiterConstructionKit",
  url: "https://forum.kerbalspaceprogram.com/topic/170758-112x-shuttle-orbiter-construction-kit/",
  description: [Build the US Space Shuttle orbiter from modular parts. Fuselage sections, wings, OMS pods, cargo bay, Canadarm, and nose/cockpit sections assemble into a detailed shuttle. Designed to mount on an external tank and SRB stack (build your own or use companion mods).],
  dependencies: ("B9PartSwitch", "ModuleManager", "Benjee10-SharedAssets"),
  impact_types: (Parts),
  impact_description: [Adds modular shuttle orbiter parts. The shuttle is assembled from sections — you build the fuselage, attach wings, add OMS pods. Does not include the ET/SRB stack — use a launcher parts pack or build one from stock/procedural parts.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Needs a launcher (ET + SRBs) to reach orbit. Shuttle Payload Delivery Systems adds ISS-compatible cargo bay payloads. SOCKrepainted and SOCKrecolored add visual variants.],
)

#mod-entry(
  name: [Artemis Construction Kit],
  ckan_id: "ArtemisConstructionKit",
  url: "https://forum.kerbalspaceprogram.com/topic/198333-artemis-construction-kit/",
  description: [SLS rocket and Orion spacecraft parts. Build NASA's modern deep-space launch system: core stage with RS-25 engines, SRBs, Orion capsule, European Service Module, and ICPS upper stage. Recommended SLS/Artemis mod for this modlist.],
  dependencies: ("B9PartSwitch", "CommunityResourcePack", "ModuleManager", "Benjee10-SharedAssets", "DeployableEngines", "AnimatedDecouplers", "SimpleAdjustableFairings", "HabTechProps"),
  impact_types: (Parts, Mechanics),
  impact_description: [Adds SLS and Orion parts. RS-25 engines use LH2/LOX via CRP. SRBs use solid fuel. Orion has integrated RCS, parachutes, and heat shield. Designed to reach the Moon and beyond. Rocket Motor Menagerie adds RS-25 variants for more engine options.],
  conflicts: [ReDIRECT and ORANGES are alternative SLS/shuttle-derived launcher mods. Artemis Construction Kit is the recommended choice for this modlist — it has the best CKAN support and active development. Use only one SLS mod.],
  version_pin: [Compatible with KSP 1.12.x. Requires Breaking Ground DLC for robotic parts support. Rocket Motor Menagerie adds RS-25 engine variants.],
)

#mod-entry(
  name: [Rocket Motor Menagerie],
  ckan_id: "RocketMotorMenagerie",
  url: "https://forum.kerbalspaceprogram.com/topic/208266-rocket-motor-menagerie/",
  description: [Expanded RS-25 (SSME) engine variants with deployable nozzles and Waterfall plumes. Adds multiple RS-25 configurations — standard, high-expansion-ratio, and extended-nozzle variants for different flight regimes. Complements Artemis Construction Kit and SOCK with period-accurate engine options.],
  dependencies: ("B9PartSwitch", "CommunityResourcePack", "ModuleManager", "DeployableEngines"),
  impact_types: (Parts, Graphics),
  impact_description: [Adds RS-25 engine variants with deploy animations and Waterfall plumes. Engines use LH2/LOX via CRP. Designed to supplement Artemis CK and shuttle builds. CryoTanks recommended for managing LH2 boil-off on long missions.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Waterfall and CryoTanks recommended for full visual and mechanical integration. DeployableEngines required for nozzle animations.],
)

#mod-entry(
  name: [Boring Crew Services],
  ckan_id: "BoringCrewServices",
  url: "https://forum.kerbalspaceprogram.com/topic/198333-artemis-construction-kit/",
  description: [Boeing Starliner (CST-100) crew capsule. Adds the Starliner command pod with integrated RCS, parachutes, airbags, and service module. Designed for Commercial Crew-style missions to LKO space stations.],
  dependencies: ("B9PartSwitch", "ModuleManager"),
  impact_types: (Parts),
  impact_description: [Adds the Starliner crew capsule. Integrates with HabTech2 and StationPartsExpansionRedux for ISS-style station missions. Complements Artemis CK (SLS/Orion) and Tundra Exploration (Dragon) for a complete modern crew vehicle lineup.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Pairs well with HabTech2 for ISS resupply and crew rotation missions.],
)

#mod-entry(
  name: [HabTech2],
  ckan_id: "HabTech2",
  url: "https://forum.kerbalspaceprogram.com/topic/167450-112x-habtech2-iss/",
  description: [International Space Station parts. Build the US Orbital Segment from modular truss, solar array, radiator, node, lab, and cupola parts. Includes Canadarm2, docking adapters, and functional solar array rotation. The definitive ISS construction mod.],
  dependencies: ("B9PartSwitch", "CommunityResourcePack", "ModuleManager", "Benjee10-SharedAssets", "HabTechProps", "HabTechRobotics", "Waterfall"),
  impact_types: (Parts, Mechanics),
  impact_description: [Adds modular ISS parts with functional solar tracking, robotic arms, and docking systems. Requires Breaking Ground DLC for robotic Canadarm functionality. Integrates with StationPartsExpansionRedux for Russian segment and additional station modules.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Requires Breaking Ground DLC. StationPartsExpansionRedux is strongly recommended (adds Russian segment and additional station modules). Boring Crew Services and Tundra Exploration provide crew vehicles.],
)

#mod-entry(
  name: [Stockalike Station Parts Expansion Redux],
  ckan_id: "StationPartsExpansionRedux",
  url: "https://forum.kerbalspaceprogram.com/topic/170211-112x-stockalike-station-parts-expansion-redux/",
  description: [Comprehensive space station parts pack in stockalike style. Inflatable habitats, centrifuges, cupolas, trusses, cargo containers, docking hubs, and structural adapters — everything needed to build orbital stations from small outposts to sprawling complexes.],
  dependencies: ("ModuleManager"),
  impact_types: (Parts),
  impact_description: [Adds stockalike station parts across multiple sizes and tech nodes. Parts are designed to complement stock station building while greatly expanding options. Works standalone or alongside HabTech2 for ISS-specific builds.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Integrates with HabTech2 for ISS builds. Community Tech Tree adds dedicated station-part tech nodes.],
)

#mod-entry(
  name: [Mark One Laboratory Extensions (MOLE)],
  ckan_id: "MOLE",
  url: "https://forum.kerbalspaceprogram.com/topic/154893-min-ksp-1122-mark-one-laboratory-extensions-mole/",
  description: [Early-game space station and orbital laboratory parts in the Mk1 form factor. Adds compact lab modules, experiment storage, science instruments, and orbital workshop parts that unlock early in the tech tree — before the stock Mobile Processing Lab. Build your first orbital outpost with 1.25m parts.],
  dependencies: ("B9PartSwitch", "ModuleManager"),
  impact_types: (Parts, Mechanics),
  impact_description: [Adds Mk1-sized station and laboratory parts for early career mode. MOLE parts unlock before the stock lab, giving you a reason to build orbital stations early. Complements StationPartsExpansionRedux (later, larger station parts) and HabTech2 (ISS-specific).],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Designed for early career station-building. Pairs with StationPartsExpansionRedux and HabTech2 for a complete station-part progression from early Mk1 to late-game ISS-scale.],
)

// ═══ AIRCRAFT & SPACEPLANES ═══

#section-heading([Aircraft & Spaceplanes])

#mod-entry(
  name: [Airplane Plus],
  ckan_id: "AirplanePlus",
  url: "https://forum.kerbalspaceprogram.com/topic/140262-112x-airplane-plus/",
  description: [Adds propeller engines, helicopter rotors, vintage aircraft cockpits, and early-aviation structural parts. Extends atmospheric flight backward in the tech tree — build prop planes, biplanes, seaplanes, and helicopters before unlocking jet engines.],
  dependencies: ("ModuleManager"),
  impact_types: (Parts),
  impact_description: [Adds propeller-driven aircraft parts across early tech nodes. Fills the gap between basic jets and the start of career mode. Helicopter rotors and vintage cockpits enable diverse atmospheric vehicle designs.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Parts are balanced for stock aerodynamics. Pairs well with Mk3 Expansion and Mark IV for a complete aircraft parts progression.],
)

#mod-entry(
  name: [Mk3 Stockalike Expansion],
  ckan_id: "Mk3Expansion",
  url: "https://forum.kerbalspaceprogram.com/topic/139129-112x-mk3-expansion/",
  description: [Expands the Mk3 fuselage part catalog: additional crew cabins, cargo bays, engine mounts, adapters, and structural parts. Triples the building options for Mk3-sized spaceplanes and heavy atmospheric craft.],
  dependencies: ("ModuleManager"),
  impact_types: (Parts),
  impact_description: [Adds Mk3-profile parts at appropriate tech nodes. All parts maintain the stock Mk3 cross-section and attachment rules. Complements Mk2 Expansion (already in Wave 1) for the full fuselage-size progression.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Mk2 Expansion (already included) handles Mk2-sized parts. Together they cover all stock fuselage profiles.],
)

#mod-entry(
  name: [Mark IV Spaceplane System],
  ckan_id: "MarkIVSpaceplaneSystem",
  url: "https://forum.kerbalspaceprogram.com/topic/94118-112x-mark-iv-spaceplane-system/",
  description: [Adds a Mk4 fuselage profile — larger than Mk3 — with dedicated crew cabins, cargo bays, fuel tanks, engine mounts, and aerodynamic nose/tail sections. For building massive SSTOs, heavy cargo spaceplanes, and interplanetary crew transports.],
  dependencies: ("ModuleManager"),
  impact_types: (Parts),
  impact_description: [Adds Mk4-profile parts in the late tech tree. The Mk4 cross-section is significantly larger than Mk3 — these are the biggest spaceplane parts available. Designed for lifting heavy payloads to orbit in a single stage.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Mk4 parts are late-game — you won't unlock them until you've mastered Mk2 and Mk3 designs.],
)

#mod-entry(
  name: [Mk-33],
  ckan_id: "Mk-33",
  url: "https://forum.kerbalspaceprogram.com/topic/194713-112x-mk-33/",
  description: [Venture Star / X-33 inspired parts: lifting-body spaceplane with integrated aerospike engines, thermal protection tiles, and vertical-launch horizontal-landing profile. A single-stage-to-orbit spaceplane that launches vertically and glides back to the runway.],
  dependencies: ("ModuleManager"),
  impact_types: (Parts, Mechanics),
  impact_description: [Adds a Venture Star-style spaceplane system with linear aerospike engines and metallic TPS. Designed for SSTO operations — launch vertically, reach orbit in a single stage, reenter and land horizontally. A unique design challenge distinct from conventional spaceplanes.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. KerbalKonstructs and DockRotate recommended. KIS/KAS, kOS, and life support mods are supported but optional.],
)

// ═══ EARLY GAME ═══

#section-heading([Early Game])

#mod-entry(
  name: [Sounding Rockets],
  ckan_id: "SoundingRockets",
  url: "https://forum.kerbalspaceprogram.com/topic/105821-112x-sounding-rockets/",
  description: [Ultra-early-game rocket parts for Career mode. Tiny 0.35m sounding rockets, low-power solid motors, basic science instruments, and lightweight avionics. Lets you start launching suborbital science missions before unlocking the Stayputnik probe core — the true beginning of your space program.],
  dependencies: ("ModuleManager"),
  impact_types: (Parts),
  impact_description: [Adds small-diameter rocket parts for the earliest stages of Career mode. Sounding rockets unlock before the first stock probe core, giving you something to launch in the first few science nodes. Parts are cheap, light, and perfect for "first launch" contracts.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Designed for Career mode — less useful in Science or Sandbox. Community Tech Tree places these in dedicated early nodes. CNAR (manual install) is a heavier alternative with more rocket variety.],
)

// ═══ IVA ENHANCEMENT ═══

#section-heading([IVA Enhancement])

#mod-entry(
  name: [RasterPropMonitor],
  ckan_id: "RasterPropMonitor",
  url: "https://github.com/FirstPersonKSP/RasterPropMonitor",
  description: [Adds functional Multi-Function Displays (MFDs), instrument panels, and interactive screens to IVA cockpits and crew cabins. Transforms IVAs from static decoration into functional flight decks — view orbit info, docking cameras, and vessel data from inside the cockpit. Essential for IVA-only playthroughs.],
  dependencies: ("ModuleManager"),
  impact_types: (Graphics, UI),
  impact_description: [Replaces static IVA props with interactive MFD screens. MFDs can display orbital data, docking cameras, radar, and custom instrument pages. Works with stock pods and most mod cockpits. DE_IVAExtension adds enhanced IVAs for specific pods using RPM.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. DE_IVAExtension (see below) is recommended to add RPM-enabled IVAs to stock command pods. ASET Props and ASET Avionics (CKAN) add additional functional cockpit props.],
)

#mod-entry(
  name: [DE_IVAExtension],
  ckan_id: "DE",
  url: "https://forum.kerbalspaceprogram.com/topic/193275-112x-de-ivaextension/",
  description: [Enhanced IVA interiors for stock command pods. Replaces the default bare-bones IVAs with detailed, RPM-enabled cockpits featuring functional MFDs, switches, and instrument panels. Makes every stock pod and cockpit feel like a real spacecraft interior.],
  dependencies: ("RasterPropMonitor", "ModuleManager"),
  impact_types: (Graphics),
  impact_description: [Replaces stock IVA models with detailed RPM-integrated interiors. Each pod gets a unique, functional cockpit layout. Requires RasterPropMonitor for the MFD functionality. FreeIva enables moving between these enhanced IVA spaces.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Requires RasterPropMonitor. FreeIva (already in Wave 1) lets kerbals walk between DE-enhanced IVAs.],
)

// ═══ PROCEDURAL PARTS ═══

#mod-entry(
  name: [Procedural Parts],
  ckan_id: "ProceduralParts",
  url: "https://github.com/KSP-RO/ProceduralParts",
  description: [Design decision — stock fixed tanks are the modlist default. Procedural Parts generates fuel tanks, structural fuselages, and SRBs in arbitrary shapes and sizes, reducing part count and giving unlimited design flexibility at the cost of stock balance and craft-sharing compatibility.],
  dependencies: ("ModuleManager"),
  impact_types: (Parts, Mechanics),
  impact_description: [Replaces fixed-size parts with procedurally-generated versions. Tank shape, diameter, and length are adjustable via sliders. Part mass, cost, and capacity scale mathematically — balance differs from hand-tuned stock tanks. Significantly reduces part count on large vessels.],
  conflicts: [Stock fixed tanks are the recommended approach for this modlist. Procedural parts change the design puzzle and balance of rocket construction. Craft files using procedural tanks require the recipient to also have this mod installed.],
  version_pin: [Compatible with KSP 1.12.x. Stock fixed tanks are the default. Install this only if you prefer design freedom over the intended engineering constraints of stock tanks.],
)

#mod-entry(
  name: [Procedural Fairings],
  ckan_id: "ProceduralFairings",
  url: "https://forum.kerbalspaceprogram.com/topic/184187-procedural-fairings/",
  description: [Design decision — stock fairings are the modlist default. Procedural Fairings generates payload fairings of any size and shape with purpose-built interstage adapters and custom nose cones. Useful for irregularly-shaped payloads where stock fairings fall short.],
  dependencies: ("ModuleManager"),
  impact_types: (Parts),
  impact_description: [Adds parts for generating procedural fairings and interstage adapters. Fairing shape is controlled by adjusting base/top diameters and height. More flexible than stock fairings for unusual payloads and interstage configurations.],
  conflicts: [Stock fairings are the recommended approach for this modlist — they cover 95% of use cases with a more intuitive editor. Procedural fairings add parts to the catalog and require the mod to be installed for craft file sharing.],
  version_pin: [Compatible with KSP 1.12.x. Stock fairings are the default. Install only if you regularly build irregular payloads or interstage fairings that the stock editor can't handle.],
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

#mod-entry(
  name: [Minor Planets Expansion],
  ckan_id: "MinorPlanetsExpansion",
  url: "https://forum.kerbalspaceprogram.com/topic/192848-112x-planet-pack-minor-planets-expansion/",
  description: [Adds dwarf planets, asteroids, and minor bodies to the Outer Planets Mod system. Populates the gaps between OPM's gas giants with realistically-scaled minor planets, trojan asteroids, and Kuiper belt objects. Requires OPM.],
  dependencies: ("Kopernicus", "OuterPlanetsMod", "KSPCommunityFixes", "ModuleManager"),
  impact_types: (Parts, Mechanics),
  impact_description: [Adds minor bodies to the OPM system. Requires Outer Planets Mod. Each body has unique biomes and science definitions. Increases the number of destinations in the outer system without adding new star systems or altering existing planets.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Requires Outer Planets Mod and Kopernicus. Adds bodies without replacing or modifying OPM planets.],
)

#mod-entry(
  name: [QuackPack],
  ckan_id: "QuackPack",
  url: "https://forum.kerbalspaceprogram.com/topic/210155-112x-kopernicus-quackpack-v131-an-inner-system-expansion/",
  description: [Inner system expansion by the Kopernicus team. Adds new planets and moons between Moho and Kerbin's orbit — fills the empty inner solar system with new destinations. Designed to complement OPM (outer system) for a fully expanded Kerbol system.],
  dependencies: ("Kopernicus", "ModuleManager"),
  impact_types: (Parts, Mechanics),
  impact_description: [Adds new bodies to the inner Kerbol system. Requires Kopernicus. Complements OPM — OPM expands outward, QuackPack expands inward. Both can be installed together for a complete solar system expansion.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Requires Kopernicus. Works alongside OPM without conflicts.],
)

// ═══ MANUAL INSTALL ═══

#section-heading([Manual Install Mods])

These mods are not available through CKAN. Install them manually by downloading from their forum threads and placing the extracted folders in `GameData/`.

#warning[[
  Manual-install mods do not appear in CKAN metapackages. You must download and update them yourself. Only install mods from mods you trust — always verify download links from the official forum threads.
]]

#mod-entry(
  name: [Grannus Expansion Pack (GEP)],
  ckan_id: "GrannusExpansionPack",
  url: "https://forum.kerbalspaceprogram.com/topic/169664-1125-grannus-expansion-pack-v128-10-may-2022/",
  description: [Adds a binary star system centered on Grannus, a red dwarf companion to Kerbol. Multiple planets orbit the distant star, reachable via interstellar transfer. Expands the late-game with a second star system. GEP-Volumetrics (SpaceDock) adds cloud support.],
  dependencies: ("Kopernicus", "ModuleManager"),
  impact_types: (Parts, Mechanics, Gameplay),
  impact_description: [Adds the Grannus binary star system. Not on CKAN — manual install from forum thread. Compatible with OPM and Minor Planets Expansion.],
  conflicts: [Kcalbeloh also adds a secondary star system. Both can be installed together for two interstellar destinations, but this significantly increases memory usage. Consider whether you want one or both secondary systems.],
  version_pin: [Compatible with KSP 1.12.x. Manual install only. Requires Kopernicus.],
)

#mod-entry(
  name: [Promised Worlds],
  ckan_id: "PromisedWorlds",
  url: "https://forum.kerbalspaceprogram.com/topic/228751-112x-v200-promised-worlds-a-faithful-recreation-of-ksp-2s-solar-systems-in-ksp-1/",
  description: [Faithful recreation of KSP 2's planned solar systems in KSP 1. Adds interstellar destinations including the DebDeb, Tuun, and other star systems that were promised for KSP 2. GitHub: PromisedWorlds/PromisedWorlds (208★).],
  dependencies: ("Kopernicus", "ModuleManager"),
  impact_types: (Parts, Mechanics, Gameplay),
  impact_description: [Adds KSP 2-inspired interstellar systems. Not on CKAN — manual install from forum thread or GitHub. Adds multiple new star systems.],
  conflicts: [Adding multiple interstellar planet packs creates a very large install. Most players should choose 1–2. Kcalbeloh is the recommended interstellar destination for this modlist.],
  version_pin: [Compatible with KSP 1.12.x. Manual install only. Choose this or Kcalbeloh (or both if your system can handle it).],
)

#mod-entry(
  name: [Cosmic Serenity],
  ckan_id: "CosmicSerenity",
  url: "https://forum.kerbalspaceprogram.com/topic/228453-112x-cosmic-serenity-v31/",
  description: [A smaller-scale planet pack adding serene, handcrafted worlds to the Kerbol system. Focuses on quality over quantity — each added body is carefully designed with unique terrain and biomes. A more restrained alternative to sprawling multi-system packs.],
  dependencies: ("Kopernicus", "ModuleManager"),
  impact_types: (Parts, Mechanics),
  impact_description: [Adds custom-designed planets and moons. Not on CKAN — manual install from forum thread. A lighter alternative to multi-system packs.],
  conflicts: [QuackPack and Minor Planets Expansion also add bodies to the Kerbol system. Cosmic Serenity is standalone — verify compatibility if combining.],
  version_pin: [Compatible with KSP 1.12.x. Manual install only.],
)

#mod-entry(
  name: [Buran Orbiter Construction Kit],
  ckan_id: "BuranOrbiterConstructionKit",
  url: "https://forum.kerbalspaceprogram.com/topic/221160-wip-buran-orbiter-construction-kit/",
  description: [Soviet Buran shuttle orbiter construction kit. Build the Soviet counterpart to the US Space Shuttle with modular Buran fuselage, wing, and thermal protection parts. Designed to complement SOCK for Cold War-era shuttle programs on both sides. WIP — still in active development.],
  dependencies: ("B9PartSwitch", "ModuleManager"),
  impact_types: (Parts),
  impact_description: [Adds modular Buran orbiter parts. Not on CKAN — manual install from forum thread. GitHub: hugoraider/Buran-Orbiter-Construction-Kit. Designed to work alongside SOCK and Tantares LV for Energia launcher integration.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Manual install only. WIP mod — expect updates and changes.],
)

#mod-entry(
  name: [OPT Spaceplane Continued],
  ckan_id: "OPTSpaceplaneContinued",
  url: "https://forum.kerbalspaceprogram.com/topic/196187-191-opt-spaceplane-continued-3496-beta-may-4-2026/",
  description: [Futuristic spaceplane parts with unique sci-fi profiles, advanced hybrid engines, and large-diameter cargo bays. The continued fork of the original OPT (Orbit Portal Technology) mod, maintained for KSP 1.12.x. For players who want spaceplanes beyond the stock/procedural aesthetic.],
  dependencies: ("B9PartSwitch", "ModuleManager"),
  impact_types: (Parts),
  impact_description: [Adds futuristic spaceplane parts with advanced engine types. Not on CKAN — manual install from forum thread. OPT Reconfig (on CKAN) is a companion config mod that adjusts OPT balance and adds CTT support.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Manual install only. OPT Reconfig (CKAN) required for Community Tech Tree integration and balance adjustments.],
)

#mod-entry(
  name: [ORANGES],
  ckan_id: "ORANGES",
  url: "https://forum.kerbalspaceprogram.com/topic/211919-wip-oranges-stockalike-shuttle-derived-launch-vehicles-v100-beta-2-6feb2023/",
  description: [Shuttle-derived launch vehicle parts: Ares I, Ares V, SLS block variants, and Jupiter DIRECT launchers. Alternative to Artemis Construction Kit for players who want the full shuttle-derived launcher family rather than just the SLS/Orion stack. WIP beta by EStreetRockets.],
  dependencies: ("B9PartSwitch", "CommunityResourcePack", "DeployableEngines", "ModuleManager"),
  impact_types: (Parts, Mechanics),
  impact_description: [Adds shuttle-derived launcher parts. Not on CKAN — manual install from forum thread. Shares the EStreetRockets style with Rocket Motor Menagerie. Choose between this and Artemis Construction Kit — both cover similar hardware.],
  conflicts: [Artemis Construction Kit covers similar SLS hardware. Choose one SLS/launcher mod — using both creates redundant parts. Rocket Motor Menagerie provides RS-25 engines that work with either.],
  version_pin: [Compatible with KSP 1.12.x. Manual install only. WIP beta — expect changes. Rocket Motor Menagerie (CKAN) adds compatible RS-25 engine variants.],
)

#mod-entry(
  name: [reDIRECT],
  ckan_id: "reDIRECT",
  url: "https://forum.kerbalspaceprogram.com/topic/172187-18x-redirect-stockalike-orion-sls-shuttle-derived-launchers-fixes-v0101/",
  description: [Stockalike SLS, Orion, and shuttle-derived launchers by benjee10. An earlier/more compact SLS implementation — a lighter alternative to Artemis Construction Kit for players who want SLS hardware with fewer parts and dependencies. Includes Orion capsule and shuttle-derived launcher components.],
  dependencies: ("B9PartSwitch", "ModuleManager"),
  impact_types: (Parts),
  impact_description: [Adds SLS and Orion parts in a lighter implementation. Not on CKAN — manual install from forum thread or SpaceDock (id:1742). Consider this if Artemis Construction Kit's many dependencies are a concern.],
  conflicts: [Artemis Construction Kit (same author, newer and more comprehensive) and ORANGES cover the same hardware. Choose one SLS mod.],
  version_pin: [Compatible with KSP 1.12.x. Manual install only. Artemis Construction Kit is recommended over reDIRECT for new installs — it has more parts, active development, and CKAN support.],
)

#mod-entry(
  name: [Completely Non-Aggressive Rocketry (CNAR)],
  ckan_id: "CNAR",
  url: "https://forum.kerbalspaceprogram.com/topic/188554-19-completely-non-aggressive-rocketry-v2-rocket-add-on/",
  description: [Expanded rocket parts pack with unique engine configurations, fuel tank geometries, and structural components. A parts-heavy rocket-building mod for players who want more variety in their launcher designs beyond stock, procedural, and historical mods. Includes LFO, monoprop, and solid rocket components.],
  dependencies: ("ModuleManager"),
  impact_types: (Parts),
  impact_description: [Adds a broad collection of rocket parts. Not on CKAN — manual install from forum thread or SpaceDock (id:2271). A heavier alternative to Sounding Rockets for expanding the early-to-mid game rocket catalog.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Manual install only. Sounding Rockets (CKAN) is the recommended early-game rocket mod for this modlist. CNAR adds more variety but requires manual installation.],
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
