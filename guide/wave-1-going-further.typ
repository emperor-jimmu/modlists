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

// TODO: Add mod entries here

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
