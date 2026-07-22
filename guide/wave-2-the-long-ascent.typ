// guide/wave-2-the-long-ascent.typ

#import "../template/lib.typ": *

#section-heading([About Wave 2])

Wave 2 is the endgame. It adds life support, colonization, interstellar travel, and realism overhauls. These mods change the game fundamentally — mistakes now have permanent consequences, and the systems interact in complex ways. You should have hundreds of hours in KSP and be fluent in interplanetary missions before attempting this wave.

#wave-criteria-table()

#danger[[
  Wave 2 mods are optional. Install only the ones that match your preferred challenge level. Removing a Wave 2 mod mid-save will likely break that save.
]]

// ═══════════════════════════════════════════════════════════════════
// MOD ENTRIES
// ═══════════════════════════════════════════════════════════════════

#section-heading([Mod List])

// ═══ COLONIZATION ═══

#mod-entry(
  name: [Planetside Exploration Technologies],
  ckan_id: "PlanetsideExplorationTechnologies",
  url: "https://github.com/BenJee-GitHub/PlanetsideExplorationTechnologies",
  description: [Colony and surface base building parts: inflatable habitats, landing pads, modular connector tubes, resource silos, and deployable surface structures. Designed for constructing permanent planetary outposts that can be expanded incrementally.],
  dependencies: ("CommunityCategoryKit", "B9PartSwitch", "ModuleManager"),
  impact_types: (Parts, Mechanics, Gameplay),
  impact_description: [Adds base-building parts optimized for surface assembly — parts ship compact and deploy on-site. Integrates with stock ISRU for fuel production. Pairs well with life support mods (USI-LS, TAC-LS) to create self-sustaining colonies. Without life support, these are purely aesthetic/RP base parts.],
  conflicts: [MKS (USI Modular Kolonization System) provides overlapping colonization parts and mechanics. If using MKS for the full resource-chain colonization experience, Planetside Exploration Technologies is redundant. If you only want base assembly parts without complex resource chains, use this instead of MKS.],
  version_pin: [Compatible with KSP 1.12.x.],
)

#info[[
  *Colonization Alternatives:* Pathfinder (CKAN: "Pathfinder") and Buffalo 2 (CKAN: "Buffalo2") by Angel-125 provide a different base-building approach with inflatable modules, resource extraction, and rover parts. The Wild Blue Industries ecosystem is simpler than MKS and has broad mod support, but adds its own resource framework (WBIResources). Planetside is the recommended colonization mod for this modlist — Pathfinder and Buffalo are suggested alternatives if you prefer the WBI ecosystem or want rover-focused surface exploration.
]]

#section-heading([Wave 1→2 UI Upgrades])

At this stage you have hundreds of hours of flight experience. You can now replace certain Wave 0 UI mods with leaner alternatives that expect pilot proficiency:

#mod-entry(
  name: [Community Navball Docking Alignment Indicator],
  ckan_id: "CommunityNavballDockingIndicator",
  url: "https://spacedock.info/mod/532/Community-NavBall-Docking-Alignment-Indicator",
  description: [Suggested optional replacement for DPAI. By Wave 2 you no longer need a separate docking window — the navball-based indicator keeps your eyes on the instrument you're already watching during approach. No new windows, no screen clutter.],
  dependencies: (),
  impact_types: (UI),
  impact_description: [Replaces DPAI's separate alignment window with navball-integrated markers. Suggested (not required) — if you prefer DPAI's dedicated window, keep using it.],
  conflicts: [Docking Port Alignment Indicator — if you switch to this, uninstall DPAI. The two are mutually exclusive. Both are installed by default in Waves 0–1 so you can compare; pick one by Wave 2.],
  version_pin: [Compatible with KSP 1.12.x. Suggested replacement for DPAI in Wave 2. Uninstall DPAI if switching.],
)

// ═══ OFF-WORLD MANUFACTURING ═══

#section-heading([Off-World Manufacturing])

By Wave 2, ISRU refueling is routine. The next step is building entire vessels from local resources — no more launching from Kerbin. These mods add the manufacturing chain to make that possible.

#mod-entry(
  name: [Extraplanetary Launchpads],
  ckan_id: "ExtraPlanetaryLaunchpads",
  url: "https://forum.kerbalspaceprogram.com/topic/54284-112x-extraplanetary-launchpads/",
  description: [Build rockets and bases from ore — anywhere. Adds workshops, smelters, and orbital construction docks that convert raw materials (Metal, RocketParts) into fully functional vessels. Mine ore, process it into RocketParts, and build new ships on-site without a connection to Kerbin. The definitive off-world manufacturing mod.],
  dependencies: ("ModuleManager"),
  impact_types: (Parts, Mechanics, Gameplay),
  impact_description: [Adds a complete manufacturing resource chain: Ore → Metal → RocketParts. Workshops and construction docks consume RocketParts to build vessels. Part productivity depends on engineer skill. Transforms colony gameplay from "refuel here" to "the colony IS the space program." Stock ISRU and base parts already provide the mining half of the equation.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. KIS and KAS recommended for connecting base modules and transporting resources. Infernal Robotics and KerbalStats are supported but optional.],
)

#mod-entry(
  name: [SimpleConstruction!],
  ckan_id: "SimpleConstruction",
  url: "https://spacedock.info/mod/59/SimpleConstruction-SCON-by-matterbeam",
  description: [Gives stock parts Extraplanetary Launchpads functionality. Stock ore tanks, ISRU converters, and workshops gain the ability to produce RocketParts and build vessels — without EL's dedicated parts. If you find EL's parts ugly or don't want additional part clutter, this lets you use stock parts for the entire manufacturing chain.],
  dependencies: ("ExtraplanetaryLaunchpads", "ModuleManager"),
  impact_types: (Mechanics, Gameplay),
  impact_description: [Reconfigures stock parts to serve as EL workshops, smelters, and construction docks. No new part models — uses the existing stock ISRU and tank parts you already know. Requires Extraplanetary Launchpads as the underlying framework.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Requires Extraplanetary Launchpads. NotSoSimpleConstruction (CKAN) adds additional EL functionality to more stock parts. Choose either SimpleConstruction (lightweight) or use EL's own parts — not both.],
)

// ═══ INTERSTELLAR PROPULSION ═══

#section-heading([Interstellar Propulsion])

Wave 1 gave you the tools to explore the expanded solar system (OPM, QuackPack, Minor Planets). Wave 2 interstellar propulsion makes those outer planets feel close — and lets you reach entirely new star systems (Kcalbeloh, GEP).

#mod-entry(
  name: [Far Future Technologies],
  ckan_id: "FarFutureTechnologies",
  url: "https://forum.kerbalspaceprogram.com/topic/155465-112x-near-future-technologies/",
  description: [Advanced interstellar propulsion by Nertea: fusion torches, antimatter drives, nuclear salt-water rockets, and pulsed inertial confinement engines. Builds on the Near Future Technologies ecosystem with the same high model quality and Restock-compatible art style. The recommended interstellar propulsion mod for this modlist.],
  dependencies: ("CommunityResourcePack", "B9PartSwitch", "DeployableEngines", "ModuleManager"),
  impact_types: (Parts, Mechanics, Gameplay),
  impact_description: [Adds endgame propulsion technologies: fusion engines (5,000–30,000s Isp), antimatter-initiated fusion, and beam-core antimatter drives (100,000+ s Isp). Requires massive power infrastructure — pairs with Near Future Electrical reactors. Engines consume advanced resources (FusionPellets, Antimatter) that must be produced or mined.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Requires significant power infrastructure (Near Future Electrical reactors recommended). Sterling Systems (manual install) adds complementary engine parts. SystemHeat recommended for thermal management.],
)

#mod-entry(
  name: [Sterling Systems],
  ckan_id: "SterlingSystems",
  url: "https://forum.kerbalspaceprogram.com/topic/219609-1125-sterling-systems-v06-may-23-2025/",
  description: [Additional advanced engine parts that complement Far Future Technologies. Adds sterling-cycle nuclear engines, hybrid thermal rockets, and niche propulsion options that fill gaps in FFT's interstellar propulsion lineup. Designed to pair with FFT for a complete near-future-to-interstellar engine progression.],
  dependencies: ("CommunityResourcePack", "B9PartSwitch", "DeployableEngines", "ModuleManager"),
  impact_types: (Parts, Mechanics),
  impact_description: [Adds extra advanced engines that work with FFT's resource frameworks (FusionPellets, Antimatter). Not a standalone propulsion system — supplements FFT with additional engine variety and niche propulsion options.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Manual install — not on CKAN. Designed to complement Far Future Technologies.],
)

#mod-entry(
  name: [Blueshift],
  ckan_id: "Blueshift",
  url: "https://forum.kerbalspaceprogram.com/topic/198274-112x-blueshift/",
  description: [FTL (faster-than-light) warp drive mod by Angel-125. Unlike instant warp drives, Blueshift requires you to build a warp-coil infrastructure — you must construct and deploy warp coils at your destination before you can FTL there. A "balanced" FTL system that makes you work for faster-than-light travel rather than handing it to you.],
  dependencies: ("ModuleManager"),
  impact_types: (Parts, Mechanics, Gameplay),
  impact_description: [Adds FTL warp drives requiring destination infrastructure. You must deploy warp-coil networks before FTL travel becomes possible — no free jumps. Warp travel is gated behind progression milestones rather than handed out instantly. Uses Kopernicus for interstellar destinations.],
  conflicts: [Far Future Technologies provides sub-light interstellar propulsion (fusion torches, antimatter drives). Blueshift's FTL warp system is a complementary layer — use both for a complete interstellar progression: FFT engines to explore new stars, then deploy warp coils for fast travel between them.],
  version_pin: [Compatible with KSP 1.12.x. Recommends Kopernicus for interstellar destinations. Waterfall recommended for warp-drive visual effects.],
)

#info[[
  *Base Building Alternative:* Kerbal Planetary Base Systems (https://forum.kerbalspaceprogram.com/topic/133606-112x-kerbal-planetary-base-systems/) is a popular alternative to Planetside Exploration Technologies. KPBS adds modular surface base parts with a distinct visual style and broad mod support. Manual install from forum thread — not on CKAN. Choose Planetside (CKAN, benjee10 style) or KPBS (manual, modular style) for your surface base needs.

  *EVA Construction Tools:* KIS — Kerbal Inventory System (https://forum.kerbalspaceprogram.com/topic/149848-minimum-ksp-version-112-kerbal-inventory-system-kis-v129/) and KAS — Kerbal Attachment System (https://forum.kerbalspaceprogram.com/topic/23555-0211-kas-v043-struts-pipes-part-storage-containers-merged-winches-amp-more/) are the classic EVA construction pair. KIS lets kerbals carry and place parts during EVA; KAS adds winches, pipes, and struts for connecting base modules. Both are manual install from forum threads — not on CKAN. These were once essential and remain popular, though KSP 1.11+ added stock EVA construction that covers many KIS/KAS use cases.
]]

// ═══════════════════════════════════════════════════════════════════
// HOW TO USE THESE MODS
// ═══════════════════════════════════════════════════════════════════

#pagebreak()
#chapter-heading([Wave 2 Mods — How to Use Them])

#section-heading([Planetside Exploration Technologies (Base Building)])

Planetside gives you the parts to build surface bases, but it doesn't add new resource chains — it works with stock ISRU. Here's how to approach base construction:

*Phase 1 — Scout:* Before you land a single part, scan the target body with SCANsat (from Wave 1). Find a flat area with high ore concentration. Minmus's Flats and the Mun's craters are ideal first targets. Land a small probe to confirm the terrain is as flat as the map suggests.

*Phase 2 — Power and ISRU:* Land a drilling rig first. The minimum viable base: a Drill-O-Matic, a Convert-O-Tron 250, an ore tank, a fuel tank, and sufficient power (solar for inner planets, reactors for outer). Radiators are not optional — the converter will overheat and shut down within seconds without them. Test the full ISRU chain on the launch pad before flying it anywhere.

*Phase 3 — Expansion:* Now deploy Planetside parts. Inflatable habitats connect to the ISRU hub via modular connector tubes. Landing pads let you land subsequent supply ships precisely (they have guidance beacons). Resource silos store excess fuel and ore. Think of the base as a space station that happens to sit on the ground — the same assembly principles apply.

*Phase 4 — Self-sufficiency (with life support):* If you add a life support mod (USI-LS, TAC-LS, Kerbalism), your base now needs to produce supplies in addition to fuel. Greenhouses and recyclers close the resource loop. The goal: a base that produces fuel, supplies, and can even build new vessels (when paired with Extraplanetary Launchpads or similar).

#tip[[
  Build your first base on Minmus. The gravity is so low that landing heavy modules is trivial, and the flats have the highest ore concentration in the Kerbin system. Once you've proven the design works on Minmus, replicate it on the Mun, then Duna.
]]

#warning[[
  Precision landing matters a lot when assembling a base. If your habitat module lands 5 km from your ISRU rig, you either spend hours rovering parts together or you revert and try again. Use MechJeb's Landing Guidance (Wave 1) or get very good at manual targeted landings before attempting base assembly.
]]

#section-heading([Integration with Wave 0–1 Mods])

By Wave 2, your modlist is fully layered. Here's how the mods work together during a typical colony mission:

- *KER* or *MechJeb* gives you delta-v and TWR readouts during base module design — heavy ISRU equipment requires powerful transfer stages
- *MechJeb's Landing Guidance* can precision-land base modules within a few hundred meters of your target
- *BetterTimeWarp* lets you warp through resource processing at custom speeds without breaking physics
- *TransferWindowPlanner* optimizes the trip from Kerbin to your colony world
- *SCANsat* provides the resource map that tells you where to land
- *Near Future reactors* (from Wave 1) power bases on outer planets where solar is useless
- *Planetside parts* provide the base structure, and stock ISRU provides the fuel chain

#info[[
  This layered integration is the philosophy of the 3-wave system. Each wave builds on the previous one, and by Wave 2, your mods form a coherent whole rather than a pile of independent addons.
]]

// ═══════════════════════════════════════════════════════════════════
// STRATEGY GUIDE
// ═══════════════════════════════════════════════════════════════════

#pagebreak()
#chapter-heading([Wave 2 Guide — The Long Ascent])

#section-heading([Strategy, Not Tutorials])

Wave 2 assumes you can build, fly, dock, and interplanetary-transfer without assistance. This guide focuses on *how systems interact* and *how to plan* rather than step-by-step instructions.

#section-heading([Life Support Management])

#section-heading([Understanding the Stakes])

Life support mods (USI-LS, TAC-LS, Kerbalism) introduce consumable resources: supplies/food, water, oxygen, and waste management. Kerbals consume these constantly. If they run out, kerbals die — permanently or after a grace period, depending on the mod and configuration.

#section-heading([Supply Chain Design])

1. *Short missions* (Mun, Minmus): Bring all supplies from Kerbin. A Mk1 pod with two kerbals needs ~30 supplies for a Mun round trip. Trivial.
2. *Medium missions* (Duna, Eve orbit): Bring a greenhouse or recycler module. Water purifiers and CO2 scrubbers turn waste back into usable resources, reducing net consumption by 60–90%.
3. *Long missions* (Jool, Eeloo): Build self-sustaining habitats. Greenhouses running on ore + electricity produce supplies indefinitely, but require a mining outpost or regular resupply.
4. *Colonies*: Close the loop entirely. Combine ISRU, greenhouses, and waste processing. The goal is net-zero consumption.

#tip[[
  Always send supplies *ahead* of crewed missions. Launch an uncrewed supply depot to the destination's orbit before sending kerbals. A dead supply mission is inconvenient; dead kerbals are a mission failure.
]]

#section-heading([Habitation and Homesickness])

Some life support mods add a "habitation" timer — kerbals can't stay in cramped pods indefinitely without going stir-crazy (refusing to work, then going rogue). Counter with:

- Larger habitation modules (inflatable habitats, centrifuges)
- Shared living space (more volume per kerbal)
- Colonization modules (permanent structures with high habitation multipliers)

#section-heading([Colonization Workflows])

#section-heading([The Bootstrap Problem])

Building a colony requires heavy infrastructure (habitats, factories, power), but launching heavy infrastructure from Kerbin is expensive. This is the core colonization challenge: *how do you make a colony that builds itself?*

The solution is staged:

1. *Survey phase* — Scan for ore, water, rare resources. Send probes with scanners.
2. *Pioneer outpost* — Minimal crew, basic drill + ISRU, a power source (solar or nuclear). This outpost produces fuel for subsequent flights but cannot build new modules.
3. *Manufacturing hub* — Extraplanetary Launchpads or MKS workshops. These consume raw materials and MetalParts/SpecializedParts to build new vessels and modules *on site*.
4. *Self-sustaining colony* — The colony produces all of: supplies (food/water/O2), fuel, construction materials, and new vessels. At this point, Kerbin is a launch pad for initial crew, not a supply line.

#warning[[
  MKS and USI mods are designed to work together (they share USI-LS as a common dependency). MKS provides the colonization parts and resource chains; USI-LS provides the life support mechanics. Installing one without the other is possible but you will miss the full integration.
]]

#section-heading([Resource Chains — Colonization])

A typical MKS-style colonization resource chain:

- *Raw materials:* Dirt, Water, Substrate, Minerals, MetallicOre, Uraninite (mined by drills)
- *Refined materials:* Chemicals, Polymers, Metals, RefinedExotics (produced by refineries)
- *Construction:* MaterialKits, SpecializedParts, Machinery (produced by workshops from refined materials)
- *Life support:* Supplies, Mulch, Fertilizer (Mulch + Fertilizer + greenhouse = more Supplies)
- *Maintenance:* Machinery slowly wears out. Workshops consume MaterialKits to produce replacement Machinery.

#info[[
  This is the "Everything is a resource chain" phase of KSP. If you enjoy Factorio-style logistics puzzles, this is your moment. If it sounds exhausting, skip the colonization layer and stick with life support + interstellar travel only.
]]

#section-heading([Interstellar Travel])

#section-heading([Engine Classes])

Far Future Technologies introduces propulsion technologies beyond chemical rockets:

- *Nuclear thermal (NERVA):* Heats propellant with a fission reactor. Isp 800–1,000 s. Good for interplanetary heavy lift.
- *Fusion drives:* Isp 5,000–30,000 s. Requires massive power plants (often the engine IS the power plant). Interstellar-capable.
- *Antimatter:* Isp 100,000+ s. Exotic, dangerous, requires antimatter production infrastructure.
- *Warp/Alcubierre:* Science fiction. Warp drive contracts space ahead and expands it behind. Instant or near-instant travel, requires exotic matter.

#danger[[
  High Isp, low thrust engines mean *burns measured in days or weeks*. A fusion drive with 0.1 m/s² acceleration needs hours to change velocity by 1 km/s. Plan your burns around periapsis kicks — multiple short burns at periapsis to raise apoapsis gradually. Do not attempt to circularize an interstellar trajectory with a single burn.
]]

#section-heading([Interstellar Mission Planning])

1. *Power infrastructure:* Interstellar engines consume gigawatts. You need nuclear reactors, beamed power networks, or on-board fusion. Solar panels are useless beyond Duna's orbit.
2. *Radiators:* Thermal management becomes the limiting factor. Every reactor and engine produces waste heat. Without enough radiator area, your ship melts. High-temperature radiators (graphene) are more mass-efficient.
3. *Braking:* Arriving in another star system requires deceleration. Bring enough delta-v for capture — aerocapture at the target star is rarely practical at interstellar velocities.
4. *Communications:* At interstellar distances, CommNet latency becomes absurd. Plan for autonomous probe operation.

#section-heading([Realism Overhaul — What Changes])

#section-heading([FAR (Ferram Aerospace Research)])

Stock KSP's aerodynamics are a simplified "soup" model. FAR replaces it with voxel-based aerodynamic simulation:
- Nose cones and fairings now matter enormously (stock KSP ignores them for drag)
- Aircraft stalls are real — exceed critical angle of attack and you lose lift
- Supersonic drag is realistic — Mach 1 is a barrier, not a suggestion
- Re-entry heating becomes more dangerous without proper heat shields

#section-heading([RealFuels / RealPlume])

Fuel is no longer a generic "Liquid Fuel + Oxidizer" mix. RealFuels adds realistic propellants:
- Kerosene/LOX (RP-1): High thrust, moderate Isp, used in first stages
- Hydrogen/LOX (LH2): High Isp, low density, used in upper stages
- Hypergolics (UDMH/NTO): Storable, lower performance, used for landers and RCS
- Solid rockets: High thrust, cannot throttle, single burn only

Each fuel type has different tank volumes, boil-off rates (cryogenics evaporate), and ignition requirements.

#section-heading([System Interactions — The Full Picture])

With all Wave 2 mods active, the systems interact:

1. *Life support* determines mission duration → duration determines *engine choice* (short trip or long)?
2. *RealFuels* determines engine performance → engine choice determines *delta-v budget*
3. *FAR* determines ascent efficiency → ascent efficiency determines *payload to orbit*
4. *Colonization* provides *in-situ fuel production* → reduces required launch mass from Kerbin
5. *Interstellar engines* consume *reactor fuel* (fission/fusion/antimatter) → colonization must produce reactor fuel too

#tip[[
  When all systems are active, Minmus becomes your most important asset. Its low gravity means cheap ISRU, its high ore concentration means efficient resource extraction, and its location at Kerbin's edge means you're already partway out of the gravity well. Build your first major colony on Minmus, not the Mun.
]]
