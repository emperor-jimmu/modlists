# How-To Updates + Player Challenges — Design Spec

**Date:** 2026-07-23

## Part 1: "How to Use These Mods" Fixes

Some how-to sections reference dropped mods or are missing for key mods.

### Wave 0 — Add 1 entry

| Mod | Action | Content |
|-----|--------|---------|
| BetterBurnTime | Add | How to read the burn-time indicator: time-to-burn, burn duration, time-to-impact. Where to find it (next to navball). Why it complements KER. |

### Wave 0.5 — Add 2 entries

| Mod | Action | Content |
|-----|--------|---------|
| Trajectories | Add | How to toggle body-fixed mode, how to read the red X (predicted impact), how to read the blue line (atmospheric trajectory). Use cases: aerocapture at Duna, landing precision on atmospheric bodies. |
| SCANsat | Add | How to open the map viewer, how to interpret biome/altimetry/slope maps, how scanning coverage works (increases with time in orbit), how to use waypoints. |

### Wave 1 — Fix 2 entries, add 3

| Section | Action | Content |
|---------|--------|---------|
| "Using the Graphics Mods" | Fix | Remove PlanetShine reference. Add Deferred toggle, TUFX profile switching, Waterfall plume config. |
| "New Parts Overview" | Fix | Remove SOCK/Buran/ORANGES/SpaceY mentions. Mention the kept planet packs. |
| Fuel System (CRP, B9PS, CryoTanks) | Add | How to switch tank contents in VAB via B9PartSwitch dropdown. How LH2 boil-off works, how to use active cooling. Resource ecosystem overview. |
| AtmosphereAutopilot | Add | How to toggle fly-by-wire modes, auto-trim, altitude/heading hold. When to use vs MechJeb. |
| Kerbal Atomics + System Heat | Add | Reactor startup/shutdown, radiator placement requirements, thermal management basics. |

### Wave 2 — Add 2 entries

| Mod | Action | Content |
|-----|--------|---------|
| Navball DAI | Add | How to read the navball marker during approach. Red = misaligned, green = aligned. Range indicator. |
| Extraplanetary Launchpads | Add | How to open the construction window, how to select a craft file, how resource requirements work (RocketParts → vessel), how to link to ISRU. |

## Part 2: Player Challenges

Add a `#chapter-heading([Player Challenges])` section at the end of each wave's guide with progressively harder optional goals.

### Wave 0 — "First Steps Challenges"
- Orbit with a single-stage rocket (no decouplers)
- Orbit using only SRBs
- Orbit with a rocket under 10 parts
- Reach a 500 km circular orbit
- Polar orbit (heading north to 90° inclination)
- De-orbit and land within 5 km of KSC

### Wave 0.5 — "Orbital Operations Challenges"
- Mun landing with a single-stage lander (no staged descent)
- Apollo-style Mun mission (CSM + LM, dock in Mun orbit)
- Docking without RCS (engine-only)
- Build a station with 3+ modules from separate launches
- Mun landing on the polar crater rim
- Minmus landing on a slope (< 10° is easy; the slopes biome is not)

### Wave 1 — "Interplanetary Challenges"
- Duna round-trip with no ISRU (bring all fuel)
- Visit Duna AND Ike in one mission
- Eve surface sample return (the hardest stock challenge)
- Moho landing and return
- Jool-5: Land on all 5 Jool moons in one mission
- Build a self-sustaining Minmus mining base (miner + tanker + depot)
- SSTO spaceplane to Laythe and back (no refueling)
- CommNet relay network covering the entire Kerbol system

### Wave 2 — "The Long Ascent Challenges"
- Self-sustaining colony on Duna (produces all supplies locally)
- Jool gateway station (200+ parts, crew capacity 12+)
- Interstellar probe to Kcalbeloh via wormhole
- Crewed interstellar mission to Grannus and return
- Deploy a complete warp coil network (Kerbol → Jool → Grannus → Kcalbeloh)
- Tylo landing without asparagus staging (single-stage descent)
- Colony at every planet (Minmus, Duna, Laythe, Vall, Grannus II)
- Grand Tour: Visit every planet and moon in one save file
