// guide/wave-2-the-long-ascent.typ

#import "../template/lib.typ": *

#section-heading([About Wave 2])

Wave 2 is the endgame. It adds life support, colonization, interstellar travel, and realism overhauls. These mods change the game fundamentally — mistakes now have permanent consequences, and the systems interact in complex ways. You should be fluent in interplanetary missions (Wave 1) and have at least one established colony or station before attempting this wave.

#wave-criteria-table()

#danger([
  Wave 2 mods are optional. Install only the ones that match your preferred challenge level. Removing a Wave 2 mod mid-save will likely break that save.
])

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

#info([
  *Colonization Alternatives:* Pathfinder (CKAN: "Pathfinder") and Buffalo 2 (CKAN: "Buffalo2") by Angel-125 provide a different base-building approach with inflatable modules, resource extraction, and rover parts. The Wild Blue Industries ecosystem is simpler than MKS and has broad mod support, but adds its own resource framework (WBIResources). Planetside is the recommended colonization mod for this modlist — Pathfinder and Buffalo are suggested alternatives if you prefer the WBI ecosystem or want rover-focused surface exploration.
])

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

#info([
  *Base Building Alternative:* Kerbal Planetary Base Systems (https://forum.kerbalspaceprogram.com/topic/133606-112x-kerbal-planetary-base-systems/) is a popular alternative to Planetside Exploration Technologies. KPBS adds modular surface base parts with a distinct visual style and broad mod support. Manual install from forum thread — not on CKAN. Choose Planetside (CKAN, benjee10 style) or KPBS (manual, modular style) for your surface base needs.

  *EVA Construction Tools:* KIS — Kerbal Inventory System (https://forum.kerbalspaceprogram.com/topic/149848-minimum-ksp-version-112-kerbal-inventory-system-kis-v129/) and KAS — Kerbal Attachment System (https://forum.kerbalspaceprogram.com/topic/23555-0211-kas-v043-struts-pipes-part-storage-containers-merged-winches-amp-more/) are the classic EVA construction pair. KIS lets kerbals carry and place parts during EVA; KAS adds winches, pipes, and struts for connecting base modules. Both are manual install from forum threads — not on CKAN. These were once essential and remain popular, though KSP 1.11+ added stock EVA construction that covers many KIS/KAS use cases.
])

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

#tip([
  Build your first base on Minmus. The gravity is so low that landing heavy modules is trivial, and the flats have the highest ore concentration in the Kerbin system. Once you've proven the design works on Minmus, replicate it on the Mun, then Duna.
])

#warning([
  Precision landing matters a lot when assembling a base. If your habitat module lands 5 km from your ISRU rig, you either spend hours rovering parts together or you revert and try again. Use MechJeb's Landing Guidance (Wave 1) or get very good at manual targeted landings before attempting base assembly.
])

#section-heading([Integration with Wave 0–1 Mods])

By Wave 2, your modlist is fully layered. Here's how the mods work together during a typical colony mission:

- *KER* or *MechJeb* gives you delta-v and TWR readouts during base module design — heavy ISRU equipment requires powerful transfer stages
- *MechJeb's Landing Guidance* can precision-land base modules within a few hundred meters of your target
- *BetterTimeWarp* lets you warp through resource processing at custom speeds without breaking physics
- *TransferWindowPlanner* optimizes the trip from Kerbin to your colony world
- *SCANsat* provides the resource map that tells you where to land
- *Near Future reactors* (from Wave 1) power bases on outer planets where solar is useless
- *Planetside parts* provide the base structure, and stock ISRU provides the fuel chain

#info([
  This layered integration is the philosophy of the 3-wave system. Each wave builds on the previous one, and by Wave 2, your mods form a coherent whole rather than a pile of independent addons.
])

#section-heading([Community Navball Docking Alignment Indicator])

By Wave 2, you should be comfortable docking without DPAI's separate window. The Navball DAI replaces it with a marker directly on the navball.

- *Green marker:* Your docking port is aligned with the target port. Approach slowly.
- *Red marker:* Misaligned. Translate (I/J/K/L) to center the marker.
- *Range ring:* A circle around the marker indicates distance. It shrinks as you get closer.
- *Prograde marker:* The standard prograde marker still shows relative velocity. Keep it centered on the DAI marker for a perfect straight-in approach.

#tip([
  Switch your camera to "Chase" mode (V key) and align the view with your docking port. The navball, camera, and DAI marker all agree — approach becomes trivial.
])

#section-heading([Extraplanetary Launchpads — Building Off-World])

Extraplanetary Launchpads (EL) lets you build vessels anywhere — no Kerbin required. SimpleConstruction is a lighter alternative with fewer parts.

#section-heading([The Build Chain])

1. *Mine:* Extract MetalOre with standard drills (same as stock ore drilling).
2. *Smelt:* Convert MetalOre → Metal in a smelter part.
3. *Build:* Convert Metal → RocketParts in a workshop. RocketParts are the construction currency.
4. *Construct:* Open the EL construction window (toolbar button), select a craft file, assign a survey stake or docking port as the spawn point. The workshop consumes RocketParts over time.
5. *Launch:* The vessel materializes at the spawn point — fully fueled if you supplied tanks of fuel.

#section-heading([Production Rates])

- A single workshop with 2 engineers produces ~1 ton of RocketParts per day.
- A small probe (~5 tons) takes 5 days; a large lander (~50 tons) takes 50+ days.
- Multiple workshops stack. 4 workshops + 8 engineers = 4× speed.
- Time warp works during construction. Set KAC alarm for completion.

#info([
  Build a survey station (the EL survey part) near your mining base. The survey station increases build range and provides a construction waypoint. Without it, you can only build at the exact location of the workshop.
])

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

#tip([
  Always send supplies *ahead* of crewed missions. Launch an uncrewed supply depot to the destination's orbit before sending kerbals. A dead supply mission is inconvenient; dead kerbals are a mission failure.
])

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

#warning([
  MKS and USI mods are designed to work together (they share USI-LS as a common dependency). MKS provides the colonization parts and resource chains; USI-LS provides the life support mechanics. Installing one without the other is possible but you will miss the full integration.
])

#section-heading([Resource Chains — Colonization])

A typical MKS-style colonization resource chain:

- *Raw materials:* Dirt, Water, Substrate, Minerals, MetallicOre, Uraninite (mined by drills)
- *Refined materials:* Chemicals, Polymers, Metals, RefinedExotics (produced by refineries)
- *Construction:* MaterialKits, SpecializedParts, Machinery (produced by workshops from refined materials)
- *Life support:* Supplies, Mulch, Fertilizer (Mulch + Fertilizer + greenhouse = more Supplies)
- *Maintenance:* Machinery slowly wears out. Workshops consume MaterialKits to produce replacement Machinery.

#info([
  This is the "Everything is a resource chain" phase of KSP. If you enjoy Factorio-style logistics puzzles, this is your moment. If it sounds exhausting, skip the colonization layer and stick with life support + interstellar travel only.
])

#section-heading([Interstellar Travel])

#section-heading([Engine Classes])

Far Future Technologies introduces propulsion technologies beyond chemical rockets:

- *Nuclear thermal (NERVA):* Heats propellant with a fission reactor. Isp 800–1,000 s. Good for interplanetary heavy lift.
- *Fusion drives:* Isp 5,000–30,000 s. Requires massive power plants (often the engine IS the power plant). Interstellar-capable.
- *Antimatter:* Isp 100,000+ s. Exotic, dangerous, requires antimatter production infrastructure.
- *Warp/Alcubierre:* Science fiction. Warp drive contracts space ahead and expands it behind. Instant or near-instant travel, requires exotic matter.

#danger([
  High Isp, low thrust engines mean *burns measured in days or weeks*. A fusion drive with 0.1 m/s² acceleration needs hours to change velocity by 1 km/s. Plan your burns around periapsis kicks — multiple short burns at periapsis to raise apoapsis gradually. Do not attempt to circularize an interstellar trajectory with a single burn.
])

#awe([
  *You are between stars.*

  Kerbol is a bright point behind you. Grannus is a dim red dot ahead. Between them: light-years of vacuum, cosmic rays, and the faint background hum of the universe. Your ship's fusion drive has been burning for years. It will burn for years more. The kerbals on board were young when they left. They will be older when they arrive.

  This is what interstellar travel means. Not warp drives and instant jumps — though those will come — but the slow, patient crossing of the gulf between suns. You are doing something that humans have only dreamed of. You are committing to a journey that will take longer than the entire history of aviation on Earth.

  The engine burns. The stars don't move. And somewhere ahead, a new sun waits.
])

#section-heading([Interstellar Destination Profiles])

With Kcalbeloh and Grannus installed, you have two interstellar destinations. Each requires different preparation.

#section-heading([Grannus — The Red Dwarf])

Grannus is a binary red dwarf companion to Kerbol. It's the easier first interstellar target:
- *Transit time:* ~50–100 years with fusion engines (FFT). Faster with antimatter.
- *Planets:* Multiple terrestrial and gas giant worlds. Full biome and science support.
- *Strategy:* Grannus is a "conventional" star system — bring ISRU equipment, establish a mining base, use it as a staging point. No exotic physics required.
- *Power:* Solar panels work poorly this far from Kerbol. Bring fission reactors (Near Future Electrical) or RTGs.

#awe([
  *A new sun.*

  For decades, Grannus was a red point of light. Now it's a disc. An alien star with alien planets, and you are the first kerbal to see them. The light is redder than Kerbol's, casting long shadows and strange colors across unfamiliar terrain.

  You crossed the void between stars to get here. Not in a loading screen. Not in a cutscene. In real game-time, with real physics, using engines you built and fuel you refined and courage you found somewhere between "what if" and "why not."

  Welcome to another solar system. It's been waiting for you.
])

#section-heading([Kcalbeloh — The Black Hole System])

Kcalbeloh is a black hole with orbiting planets. Install it for a truly alien destination:
- *Wormhole option:* A wormhole near Jool connects to Kcalbeloh. You can send probes through without interstellar engines. Crewed? Nobody's tested the radiation.
- *Transit time (conventional):* 100–300 years. Antimatter drives cut this to decades.
- *Black hole effects:* Time dilation near the event horizon is visual only (no gameplay effect), but the accretion disk is spectacular. Screenshot territory.
- *System layout:* Habitable planets, gas giants, and exotic bodies orbit the singularity. Each has unique science — some require special protection (radiation shielding parts).
- *Strategy:* Send an uncrewed probe through the wormhole first. Map the system with SCANsat. Then decide whether to mount a crewed mission — the delta-v for capture in the black hole's gravity well is enormous. Plan for it.

#awe([
  *The black hole has an accretion disk.*

  It is made of matter being torn apart at relativistic speeds. It glows. The light bends around the event horizon — you can see the back of the accretion disk warped above and below the black hole itself. The singularity is invisible. The effect is unmistakable. You are looking at the most violent object in the known universe, and it is beautiful.

  Time moves differently here. Not in the game — the game clock ticks normally — but in your mind. You arrived. You are orbiting a black hole. Whatever you do next, you will always be a kerbal who orbited a black hole.

  Take the screenshot. Everyone does. No one forgets.
])

#warning([
  Installing both Kcalbeloh AND Grannus is a significant memory commitment. If your game crashes during interstellar transit, reduce texture quality or remove one system. The guide assumes both are installed — you can still follow it with just one.
])

#section-heading([Blueshift Warp Infrastructure])

Blueshift gives you FTL travel — but with a catch. You must deploy warp coils at your destination before you can jump there.

#section-heading([How Warp Coils Work])

1. A warp coil is a deployable part (like a satellite) that you leave in orbit around a target body.
2. Once a coil is deployed and powered, any Blueshift-equipped ship can warp to it — instantly.
3. Coils consume power (significant amounts — fission reactors minimum).
4. Range is limited by coil level (basic → advanced → exotic). Upgraded coils reach further systems.

#section-heading([The Scout-and-Deploy Loop])

1. Send a Far Future Technologies ship to the target system using sub-light engines (fusion/antimatter).
2. The scout ship carries a warp coil in its payload bay.
3. Upon arrival, deploy the coil in orbit around the destination star or a key planet.
4. The scout ship can now warp home OR subsequent Blueshift ships can warp to the coil.
5. Repeat for each new system. Your warp network grows with exploration.

#info([
  This loop is the intended progression: FFT engines for initial exploration (slow, difficult, rewarding), Blueshift for established routes (fast, convenient, earned). Without FFT, Blueshift has no way to deploy the first coil. They are designed to work together.
])

#section-heading([Coil Network Strategy])

- *First coil:* Deploy at Grannus (closer, easier than Kcalbeloh). Use a fusion-powered scout with basic coil.
- *Second coil:* Kcalbeloh. Requires advanced coil and antimatter-powered scout (longer range, higher power draw).
- *Waypoint coils:* Deploy coils at gas giants between stars for emergency refueling stops.
- *Coil security:* Coils are vulnerable. If a coil loses power, ships cannot warp to it. Include redundant power (solar + fission) and a probe core for remote rebooting.

#awe([
  *The stars move.*

  One moment you were in orbit around Kerbol. The next, the warp field collapsed and the stars rearranged themselves. Grannus is now a disc, not a dot. The journey that took your scout ship decades just happened in an instant.

  This is what you worked for. The warp coil you deployed. The power infrastructure you built. The years of sub-light travel to place that first beacon. It all led to this: the ability to cross light-years in heartbeats. Not because it was easy. Because you earned it.

  Look out the window. Those aren't your stars. That's not your sun. You are in another solar system, and you got here by bending the fabric of spacetime with technology you assembled in orbit. Welcome to the interstellar age.
])

#section-heading([Interstellar Mission Planning])

1. *Power infrastructure:* Interstellar engines consume gigawatts. You need nuclear reactors, beamed power networks, or on-board fusion. Solar panels are useless beyond Duna's orbit.
2. *Radiators:* Thermal management becomes the limiting factor. Every reactor and engine produces waste heat. Without enough radiator area, your ship melts. High-temperature radiators (graphene) are more mass-efficient.
3. *Braking:* Arriving in another star system requires deceleration. Bring enough delta-v for capture — aerocapture at the target star is rarely practical at interstellar velocities.
4. *Communications:* At interstellar distances, CommNet latency becomes absurd. Plan for autonomous probe operation.

#section-heading([Deep Space Vessel Architecture])

Interstellar ships are not just bigger rockets. They're infrastructure you assemble in orbit and live on for decades (or centuries, in game-time).

#section-heading([Modular Assembly in Orbit])

Build your interstellar ship in Kerbin orbit using docking:
1. *Engine section:* Fusion or antimatter drive cluster with radiators. Launched first (heaviest module).
2. *Fuel section:* Cryogenic tanks for fusion fuel pellets or antimatter containment pods. Launched separately and docked.
3. *Habitation ring:* Centrifuge or inflatable habitat modules. Launched crewless, crew boards last.
4. *Lander/payload bay:* Detachable exploration vessel for the destination system.

Use the largest docking ports (Sr.) or multi-port connections for structural rigidity. A ship assembled from Jr. ports will flex apart under thrust.

#section-heading([Radiator Placement])

Thermal management is the limiting factor for interstellar ships. Rules:
- Radiators must face away from the sun AND away from other hot components
- Place radiators perpendicular to the ship's long axis (like wings)
- Never place hab modules between engine and radiators — they'll cook
- High-temperature graphene radiators (from System Heat) are more mass-efficient but more fragile

#section-heading([Artificial Gravity])

Kerbals on multi-decade missions need gravity or they go stir-crazy (USI-LS habitation timer). Options:
- *Centrifuge rings:* Stockalike Station Parts Redux has inflatable centrifuges. Spin them up with reaction wheels.
- *Spin gravity:* Rotate the entire ship. Needs RCS to start/stop rotation. Docking during spin is impossible — stop first.
- *Ignore it:* Send enough habitation modules that the timer exceeds mission duration. Valid strategy, more mass.

#section-heading([Power Hierarchy])

1. *Solar:* Useless beyond Duna. Ignore for interstellar.
2. *Fission reactors* (Near Future Electrical): Reliable, long-lasting, moderate power. Good for coil power and life support.
3. *Fusion reactors:* High power, consumes fusion fuel. The engine often doubles as the power plant.
4. *Antimatter reactors:* Extreme power, extreme danger. Antimatter containment failure = ship becomes a cloud of plasma.

#warning([
  Antimatter containment requires active power. If your reactor shuts down, the containment field fails, and the antimatter annihilates. Always have a backup power source isolating the antimatter pods. This is not a drill — FFT models this behavior.
])

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

#section-heading([Multi-Colony Empire Management])

By Wave 2 endgame, you're managing colonies across multiple star systems. Here's how to keep it from collapsing into chaos.

#section-heading([Colony Specialization])

Each colony should do ONE thing well:

- *Minmus Flats:* Fuel hub. Exports LFO, LH2, Monoprop. Lowest launch costs in the game.
- *Duna Midlands:* Manufacturing. Exports MaterialKits, SpecializedParts. Needs imported fuel and supplies.
- *Laythe Islands:* Science + Crew. Mobile Processing Lab in Jool orbit processes data from the entire system.
- *Vall Orbit:* Outer-system fuel depot. Services Jool missions and interstellar departures.
- *Grannus II:* Interstellar gateway. First off-world colony in another star system.

#section-heading([Supply Routes])

- *Scheduled tankers:* Build reusable fuel tankers on fixed routes (Minmus → LKO, Vall → Jool SOI edge). Launch them on every transfer window.
- *KAC alarm chains:* Set an alarm for each transfer window. Kerbal Alarm Clock's "transfer window" alarm type does this automatically.
- *Emergency reserves:* Every colony keeps 50% more supplies than its next resupply window requires. A missed window should not mean dead kerbals.

#section-heading([When to Stop Expanding])

- *Part count:* Each colony adds 50–200 parts. KSP's physics engine degrades above ~500 total parts in physics range. Spread colonies across SOIs to avoid loading them simultaneously.
- *Diminishing returns:* Your third fuel depot doesn't add much. Focus on one excellent depot per planetary system.
- *The kraken:* Large ships docked to large stations invite physics glitches. Autostrut everything. Quicksave before docking. Accept that sometimes the universe just breaks.

#section-heading([Endgame — What "Winning" Looks Like])

There's no win condition in KSP. But here's what a "complete" Long Ascent playthrough looks like:

1. Self-sustaining colonies at Minmus, Duna, and Laythe
2. A Jool gateway station servicing outer-planet missions
3. Warp coil network connecting Kerbol → Grannus → Kcalbeloh
4. At least one crewed interstellar round-trip with all kerbals returning alive
5. A flag planted on Tylo (because you earned it)

After that, you've beaten the modlist. Start a new save with Kerbalism's full realism settings, or try Real Solar System. The Long Ascent taught you how to fly — now fly anywhere.

#section-heading([System Interactions — The Full Picture])

With all Wave 2 mods active, the systems interact:

1. *Life support* determines mission duration → duration determines *engine choice* (short trip or long)?
2. *RealFuels* determines engine performance → engine choice determines *delta-v budget*
3. *FAR* determines ascent efficiency → ascent efficiency determines *payload to orbit*
4. *Colonization* provides *in-situ fuel production* → reduces required launch mass from Kerbin
5. *Interstellar engines* consume *reactor fuel* (fission/fusion/antimatter) → colonization must produce reactor fuel too

#tip([
  When all systems are active, Minmus becomes your most important asset. Its low gravity means cheap ISRU, its high ore concentration means efficient resource extraction, and its location at Kerbin's edge means you're already partway out of the gravity well. Build your first major colony on Minmus, not the Mun.
])

#awe([
  *Look how far you've come.*

  You started on a launchpad with a command pod and a dream. Now you have colonies on three planets, a station at Jool, warp coils bridging star systems, and kerbals living on worlds you discovered. The Kerbol system is not the same place it was when you installed Wave 0.

  You built this. Not the game. You. Every module docked. Every fuel run completed. Every rescue mission that became a triumph. Every moment of terror when a lander tipped over and you somehow saved it. Every quiet hour in the VAB, staring at delta-v numbers, solving problems with math and creativity.

  KSP doesn't have an ending. But if it did, this would be it: a universe that is bigger, stranger, and more beautiful than the one you started with — because you made it that way.

  Thank you for taking The Long Ascent.
])

#pagebreak()
#chapter-heading([Player Challenges — Wave 2])

Endgame challenges requiring colonies, interstellar travel, or both.

- *Duna Self-Sufficiency:* Build a Duna colony that produces all Supplies, Fuel, and RocketParts locally. No resupply from Kerbin for 5+ years.
- *Jool Gateway:* Assemble a station in Jool orbit with 200+ parts, crew capacity of 12+, and fuel reserves of 50,000+ units. It should service missions to all 5 moons.
- *Wormhole Probe:* Send an uncrewed probe through the Kcalbeloh wormhole near Jool. Map the destination system with SCANsat and transmit data back.
- *Interstellar Crewed:* Launch a crewed mission to Grannus, land on at least one planet, and return all kerbals safely to Kerbin. Use FFT engines for transit and Blueshift for return.
- *Warp Network:* Deploy Blueshift warp coils at Kerbol, Jool, Grannus, and Kcalbeloh. Any ship must be able to warp between any two coils.
- *Tylo Solo:* Land on Tylo and return using a single-stage lander — no asparagus staging, no drop tanks. Pure engineering.
- *Colony Empire:* Establish self-sustaining colonies at Minmus, Duna, Laythe, Vall, and Grannus II. Each must produce Supplies and RocketParts locally.
- *Grand Tour:* Visit every planet and moon in the Kerbol system (stock + OPM + Minor Planets + QuackPack) in a single save file. Flag on each. Interstellar destinations are bonus.
