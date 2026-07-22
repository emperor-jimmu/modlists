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

Interstellar mods (KSP Interstellar Extended, Far Future Technologies) introduce propulsion technologies beyond chemical rockets:

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
