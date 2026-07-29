# Guide Content Expansion — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Add 11 new tutorial sections to Wave 1 and Wave 2 — inner planet guides, build strategies, campaign play, interstellar destinations, vessel architecture, colony management.

**Spec:** `docs/superpowers/specs/2026-07-23-guide-content-expansion.md`

**Style rules for ALL new content:**
- Use existing callout blocks: `#tip[[...]]`, `#info[[...]]`, `#warning[[...]]`, `#danger[[...]]`
- Headings: `#section-heading([Title])` for all new sections
- Bullets: `- *Bold term* — explanation`
- Numbered steps: `1. Step text`
- Tone: Direct, tutorial-style, assumes player has the wave's mods installed
- Reference mods by guide names (e.g., "NF Launch Vehicles", "SCANsat", "Far Future Technologies")

---

### Task 1: Add Wave 1 content — Part A (Build Strategy + Campaign + Minmus)

**Files:**
- Modify: `guide/wave-1-going-further.typ`

**Read the file before editing.**

- [ ] **Step 1: Insert "Build Strategies for Interplanetary Ships" before "Interplanetary Transfer Windows"**

Find `#chapter-heading([Wave 1 Guide — Going Further])`. Replace with the heading plus new section:

```
#chapter-heading([Wave 1 Guide — Going Further])

#section-heading([Build Strategies for Interplanetary Ships])

Interplanetary ships are different from launch vehicles. You build them in orbit and they never touch atmosphere. Design accordingly.

#section-heading([Staging in Vacuum])

In space, there's no drag and no gravity losses. You don't need high TWR. What matters is *delta-v per ton of dry mass*.

- *Serial staging:* Drop empty tanks as you go. Simple, reliable, wastes docking ports.
- *Asparagus staging:* Feed fuel inward from outer tanks. All engines fire at once. Best mass fraction, complex plumbing.
- *Nuclear transfer stages:* A single NERV engine on a long Mk3 fuselage of liquid fuel only (no oxidizer). ~8,000 m/s in a single stage. The interplanetary workhorse.
- *Ion tugs:* Dawn engines on xenon. 20,000+ m/s, but burns take hours and thrust is measured in millinewtons. Good for small probes, terrible for crewed ships.

#tip[[
  After ~3,000 m/s of delta-v in a single stage, adding more fuel tanks gives diminishing returns. The tank's own dry mass eats your gains. At that point, add another stage — or switch to a higher-Isp engine.
]]

#section-heading([TWR vs Isp — What Matters in Space])

- *Launch:* TWR > 1.3. Isp is secondary. You're fighting gravity.
- *Transfer burn:* TWR > 0.3. Lower means the burn takes multiple orbits (periapsis kicking). Annoying but doable.
- *Deep space cruise:* TWR 0.05 is fine. You have months. Isp is everything.
- *Landing:* TWR > 1.0 relative to the body you're landing on (Mun: ~1.6 m/s², so ~0.2 TWR relative to Kerbin). Lightweight vacuum engines like the Terrier or Poodle excel here.

#section-heading([Modular Ship Design])

Build interplanetary ships as dockable modules:

1. *Propulsion section* — engine cluster + fuel tanks. Detachable and reusable.
2. *Payload* — lander, rover, station module. Dock to the tug for transit, undock at destination.
3. *Crew module* — hitchhiker container or Mk2 crew cabin with docking port.
4. *Power + comms* — solar panels or RTG, relay antenna, probe core (always).

#info[[
  The modular approach means your deep-space tug does multiple missions. After delivering a Duna lander, the tug returns to Kerbin orbit, refuels at a depot, picks up a Jool payload, and goes again. Reusable infrastructure saves launches — and funds in Career mode.
]]

#section-heading([The Delta-V Budget])

Before launching a mission, add up the cost of every maneuver:
- LKO to Duna transfer: ~1,100 m/s
- Duna capture (aerobrake): ~0 m/s
- Land on Duna (parachutes): ~50 m/s
- Duna ascent to orbit: ~1,400 m/s
- Duna to Kerbin transfer: ~700 m/s
Total one-way: ~3,250 m/s. Round-trip (no refuel): ~6,500 m/s.

Design your ship to the round-trip number first, then add 20% margin for mistakes. If the resulting ship is absurdly large, consider ISRU refueling at the destination.

#section-heading([Campaign Play — Career Mode Strategy])

Wave 1 mods transform Career mode. The Community Tech Tree deepens progression from ~15 nodes to ~50. Near Future parts fill those nodes with meaningful upgrades. Here's how to play it.

#section-heading([Contract Selection])

Not all contracts are worth your time.

- *Accept:* "Explore [body]" (big payout, drives progression), "Science from [body]" (pairs with exploration), satellite contracts (easy money with a relay bus).
- *Skip:* Part-testing contracts (tedious, low pay), rescue contracts (fun but scale poorly), tourist contracts (acceptable early, tedious late).
- *Must-take:* World First milestones. These are the game's progression backbone and pay enormously.

#tip[[
  Build a "contract bus" — a small probe with every science instrument, a relay antenna, and ~3,000 m/s of delta-v. Launch one to each new body you visit. It completes 3–4 contracts at once.
]]

#section-heading([Science Farming])

With CTT installed, you need roughly 3× the science to complete the tree. Priority order:
1. *Mun + Minmus biome hopping* — a single lander with all experiments can visit 5+ biomes per trip. Bring a scientist to reset the Science Jr. and Goo.
2. *Mobile Processing Lab* — put one in Minmus orbit, feed it data from the surface, collect 500 science per transmission.
3. *SCANsat* — scanning planets generates science passively. Launch scanner satellites to every body in the system.
4. *Kcalbeloh/Grannus* — each interstellar body is a fresh science goldmine.

#section-heading([Funds Management])

- Upgrade Mission Control first (more contracts), then Tracking Station (patched conics for interplanetary), then R&D (unlock higher tech nodes).
- The VAB and Launchpad upgrades are expensive — wait until you have 1M+ funds.
- Tourism contracts to the Mun and Minmus are the best funds/hour in the mid-game. A 16-seat tourist bus to Minmus pays ~500,000 funds.

#section-heading([CTT Node Priority])

With Community Tech Tree, the stock "one node unlocks everything" problem is fixed. Each mod's parts sit in dedicated nodes. Priority path for Wave 1:

1. *Basic Science → Space Exploration:* Unlock SCANsat parts and basic probes
2. *Nuclear Propulsion:* NERV and Kerbal Atomics engines — your interplanetary workhorses
3. *Large Probes → Advanced Electrics:* Near Future Solar panels. The blanket arrays are game-changers for outer-system missions.
4. *Advanced Fuel Systems → Cryogenic Engines:* CryoTanks and LH2 engines for high-Isp upper stages
5. *Orbital Assembly → Large Station Parts:* StationPartsExpansionRedux — build your orbital fuel depot

After this, specialize: colonization (Planetside, MKS), interstellar (FFT, Blueshift), or expand (more planet packs).

```

- [ ] **Step 2: Insert "Minmus Mining Base" after the ISRU section**

Find the existing ISRU section (ends with the `#danger` callout about heavy equipment). After the closing `]]` of the danger block, insert the Minmus content. Find:

```
ISRU equipment is godlessly heavy. A full mining rig can weigh 20+ tons. Test the full chain on Minmus first — its low gravity makes landing and returning with heavy payloads far easier than the Mun. Minmus also has high ore concentrations in its flats.
]]
```

Replace with the same text plus the new section appended:

```
ISRU equipment is godlessly heavy. A full mining rig can weigh 20+ tons. Test the full chain on Minmus first — its low gravity makes landing and returning with heavy payloads far easier than the Mun. Minmus also has high ore concentrations in its flats.
]]

#section-heading([Minmus Mining Base — A Walkthrough])

Minmus is the ideal ISRU starting point. Low gravity (0.05 g), flat landing zones, and high ore concentration in the Flats biome. Here's how to set up a fuel production chain.

#section-heading([Site Selection])

- *Greater Flats:* Huge, perfectly level area near the equator. Easiest landing zone in the game. Ore concentration 8–12% (excellent).
- *Lesser Flats:* Smaller, slightly inclined. Backup option.
- *Poles:* Some ore, but inclined — harder to land and ascend efficiently.

Land your scanner satellite in polar Minmus orbit first (SCANsat or stock M700). The SCANsat map will show you exact ore hotspots.

#section-heading([Miner Design])

A Minmus miner needs:

1. *Drill-O-Matic Junior* (or Senior for speed) — deployed with the "Deploy Drill" action
2. *ISRU Convert-O-Tron 125* (the small one is enough for Minmus)
3. *Ore tank* — at least the 300-unit radial tank
4. *Fuel tanks* — the miner is its own first customer. Fill them up on the surface.
5. *Power:* 4× Gigantor solar arrays + 2× Z-4K batteries. Minmus has good sunlight.
6. *Radiators:* 2× medium TCS panels. The converter melts without them.
7. *Engine:* A single Terrier or Spark. TWR > 0.3 on Minmus is trivial.

#warning[[
  The mining drill must touch the ground. Mount it low on the lander or use pistons (Breaking Ground DLC). If the drill hovers above the surface, it won't work — and the game won't tell you why.
]]

#section-heading([The Fuel Tanker])

Build a separate craft for ferrying fuel to orbit:

1. Large fuel tanks (at least a Rockomax X200-32)
2. A docking port (Jr. or standard) on top
3. RCS thrusters for docking at the orbital depot
4. Enough TWR to lift a full fuel load from Minmus surface (~0.1 Kerbin TWR is plenty)

The tanker lands at the mining base, docks (or uses KAS/KIS fuel hoses), fills up, and returns to orbit. Each round trip costs ~400 m/s. A full X200-32 tank of LFO sells for ~5,000 funds in Career mode — not that you'd sell it, but it illustrates the value.

#section-heading([Orbital Fuel Depot])

In low Minmus orbit (~20 km), park a fuel depot:

1. Rockomax Jumbo-64 tank (the orange one) with docking ports on both ends
2. Large reaction wheels (full tanks are heavy and sluggish)
3. Relay antenna — the depot doubles as a comms relay for far-side landers
4. Probe core — no crew needed for a gas station

The workflow: Miner fills itself → tanker lands, docks, transfers fuel → tanker ascends, docks with depot → depot refuels interplanetary ships. This chain turns Minmus into infinite free fuel in Kerbin's backyard.

#tip[[
  Automate with Kerbal Alarm Clock: set an alarm for when the miner's ore tanks are full (~6 days for a Junior drill with 8% ore). When the alarm fires, switch to the miner, launch the tanker, make the fuel run. One fuel run per week keeps your interplanetary fleet running indefinitely.
]]

```

- [ ] **Step 3: Commit**

```bash
git add guide/wave-1-going-further.typ
git commit -m "feat: add build strategies, campaign play, and Minmus mining guide to Wave 1"
```

---

### Task 2: Add Wave 1 content — Part B (Eve, Moho, Duna Ops, Jool)

**Files:**
- Modify: `guide/wave-1-going-further.typ`

**Read the file before editing.**

Find these existing sections and insert new content after each. Use the pattern: find the closing `]]` of the last content block in a section, append new section heading and content.

- [ ] **Step 1: Insert "Eve — The Purple Hell" after the Duna Transfer section**

The Duna section ends with a `#tip` about Ike. Find:

```
Ike (Duna's moon) is tidally locked and small — an even easier landing target than the Mun. If Duna itself intimidates you, go to Ike first.
]]
```

Replace with same text plus Eve section appended:

```
Ike (Duna's moon) is tidally locked and small — an even easier landing target than the Mun. If Duna itself intimidates you, go to Ike first.
]]

#section-heading([Eve — The Purple Hell])

Eve is the easiest planet to reach and the hardest planet to leave. This is the game's ultimate engineering challenge.

#section-heading([Transfer and Entry])

- Transfer: Phase angle ~54°, delta-v from LKO ~1,100 m/s (same as Duna — deceptively cheap)
- Atmospheric entry: Eve's atmosphere is 5× denser than Kerbin's. You will need heat shields — and you won't need engines until you leave.
- Landing: Parachutes work extremely well. A single Mk16-XL can land 20+ tons. No engines needed for touchdown.

#section-heading([Surface Operations])

Eve's surface is hot, purple, and high-pressure. Solar panels work fine (no atmosphere attenuation issues), but your kerbals are stuck unless you brought a serious ascent vehicle.

- *Science:* Eve has biomes (peaks, lowlands, shallows, etc.) but they're hard to reach without an aircraft.
- *Explodium Sea:* Liquid on Eve's surface. Ships float (barely). Not recommended for first visits.

#danger[[
  Do not send a crewed mission to Eve unless you have a tested, working ascent vehicle. Eve ascent from sea level costs ~8,000 m/s of delta-v — nearly three times Kerbin. The atmospheric pressure kills engine Isp until ~30 km altitude. This is the single hardest maneuver in stock KSP.
]]

#section-heading([Eve Ascent Strategy])

1. *Do not land at sea level.* Target a mountain peak (5+ km altitude). Every kilometer of elevation saves ~500 m/s.
2. *Aerospike engines* (Dart) maintain decent Isp in thick atmosphere. Vector engines work for the upper stage.
3. *Shed everything.* Jettison parachutes, landing legs, ladders — all dead weight — before lighting engines.
4. *Stage aggressively.* Your first stage gets you through the soup (0–20 km). Second stage takes over when Isp recovers.
5. *Fairing or nose cone* on top. Drag is brutal in Eve's lower atmosphere.

#section-heading([Gilly — Eve's Lifeboat])

Gilly is Eve's tiny captured asteroid-moon. Gravity: 0.005 g. You can reach orbit with RCS alone.

- *Why visit:* Gilly has high ore concentration and trivial escape costs. It's the best ISRU base in the inner solar system.
- *How to land:* You don't "land" on Gilly — you rendezvous with it. Approach at < 5 m/s. Time warp kills relative velocity.
- *Strategy:* Build a Gilly mining outpost. Refuel Eve ascent vehicles in Gilly orbit before descending. This solves the "how do I get back from Eve" problem without needing a single-stage-to-orbit-from-sea-level monster.

```

- [ ] **Step 2: Insert "Moho — The Sun-Diver" after the Eve section**

After the Gilly content closes (after `]]`), append:

```

#section-heading([Moho — The Sun-Diver])

Moho is Kerbin's closest planet to the sun — and one of the hardest to reach despite being "right there."

#section-heading([Why Moho is Hard])

- *Inclined orbit:* Moho's orbit is tilted 7° relative to Kerbin's. You must match inclination mid-transfer or at arrival — expensive either way.
- *Deep gravity well:* Transfer from LKO costs ~2,200 m/s. Capture at Moho costs another ~2,000 m/s. Total one-way: ~4,200 m/s — more than Jool.
- *No atmosphere:* Cannot aerobrake. Every meter per second must come from your engines.
- *No moons:* No ISRU helper body. You must bring all return fuel or mine on Moho's surface.

#section-heading([Transfer Window])

Phase angle ~-252° (Moho is ahead of Kerbin in its orbit). This window is short — a few days at best. Use Transfer Window Planner to nail it. The ejection burn from Kerbin should also include a normal component to match Moho's inclination. TWP gives you the exact numbers.

#section-heading([Capture and Landing])

Moho has no atmosphere and moderate gravity (~0.27 g). Landing costs ~1,200 m/s. Use a high-Isp vacuum engine (Terrier, Poodle, or a nuclear stage). The surface is hot but solar panels produce enormous power this close to the sun — small panels are enough.

#tip[[
  Moho has a large molten core and a thin crust. The "Mohole" at its north pole is a bottomless pit. Do not drive rovers near it. Kerbals have fallen in. They do not come out.
]]

```

- [ ] **Step 3: Insert "Duna Surface Operations" after the Moho section**

After Moho's `#tip` closes, append:

```

#section-heading([Duna Surface Operations])

You've reached Duna. Now what? Surface ops turn a flag-planting mission into a sustained presence.

#section-heading([Landing Zones])

- *Lowlands:* Flat, low elevation, rich in science. Safe landing zone for first missions.
- *Midlands:* Rolling terrain. More biomes nearby for rover exploration.
- *Highlands/Peaks:* Hard to land on, high science value. Good for experienced missions.
- *Poles:* Ice caps. Cold, inclined, but unique science.

#section-heading([Rover Deployment])

Duna's gravity (0.3 g) and thin atmosphere make rovers viable but tricky:
- Wide wheelbase prevents flipping on slopes
- Low center of mass, reaction wheels set to "SAS only"
- Drive at < 15 m/s — Duna's surface looks smooth from orbit but is littered with rocks
- Solar panels work at ~40% efficiency compared to Kerbin. Bring RTGs for long-duration rovers

#section-heading([Surface Base Design])

A Duna base needs:
1. *Power:* Solar arrays + fuel cells for dust storms (yes, dust storms exist with visual mods; no, they don't block solar panels — but they look cool)
2. *ISRU:* Duna has ore. Mine it. The low gravity makes tanker ascents cheap.
3. *Habitation:* Hitchhiker containers or Planetside inflatables
4. *Docking:* Surface docking is hard — ports rarely align on uneven ground. Use KAS/KIS to connect modules with flexible pipes, or land modules on wheels and dock them on a flat area.

#section-heading([Ike — Duna's Relay Hub])

Ike is tidally locked to Duna. A satellite in Ike-stationary orbit above Duna's far side has permanent line-of-sight to Ike AND Kerbin. Put a powerful relay there (RA-100) and every probe on Duna's surface has comms coverage through Ike.

#tip[[
  Ike has no atmosphere and low gravity (~0.1 g). It's an even easier mining target than Minmus. Build your Duna-system fuel depot on Ike, not Duna. The savings in tanker ascent delta-v pays for the transfer from Ike orbit to Duna orbit many times over.
]]

```

- [ ] **Step 4: Insert "The Jool System" after the Duna section**

After the Ike tip closes, append:

```

#section-heading([The Jool System])

Jool is the Kerbol system's gas giant — 5 moons, each a unique challenge. With OPM installed, Jool is the gateway to the outer planets.

#section-heading([Transfer])

Phase angle ~96°, delta-v from LKO ~2,000 m/s. Jool's massive gravity well makes capture easy — a small retro-burn at periapsis (~200 m/s) captures you. The real cost is maneuvering between moons.

#section-heading([Moon Hopping Strategy])

Visit in this order to minimize delta-v:

1. *Laythe (outermost):* Oxygen atmosphere. Jet engines work here. Land a spaceplane on the islands, explore the oceans. Joolrise is gorgeous.
2. *Vall (inner):* Europa analog. Ice moon, moderate gravity (~0.23 g). Blue-tinted terrain. Good ISRU candidate — abundant ore.
3. *Tylo (deep gravity well):* The monster. Tylo has Kerbin-like gravity (~0.8 g) and no atmosphere. Landing costs ~2,500 m/s — more than reaching orbit from Kerbin. This is the ultimate vacuum landing challenge. Use high-TWR engines, bring extra fuel, and save before descent.
4. *Bop (outer, inclined):* Small captured asteroid. Low gravity, inclined orbit. Good mining base once you're in the Jool system.
5. *Pol (outermost):* Tiny, lumpy, low gravity. Tricky to land on (the terrain is spiky), but the views of Jool are spectacular.

#section-heading([Laythe Spaceplanes])

Laythe is the only body beyond Kerbin with a breathable atmosphere. Jet engines (RAPIERs in air-breathing mode, or standalone Whiplash/Panther) work perfectly. A Laythe SSTO can fly indefinitely on the atmosphere alone.

- *Island hopping:* Laythe's land is scattered islands. A seaplane or amphibious lander is essential.
- *Science:* Laythe has diverse biomes (shores, shallows, poles, islands). A single spaceplane can visit them all.
- *ISRU:* Ore is available, but you're competing with Vall for mining efficiency. Vall is better for fuel, Laythe is better for crew.

#section-heading([Tylo — The Final Exam])

Tylo is what separates good engineers from great ones. Requirements:
- TWR > 1.0 on Tylo (~0.8 Kerbin TWR)
- Delta-v from low Tylo orbit to surface and back: ~5,000 m/s
- No atmosphere = no parachutes, no aerobraking. Pure engines.

#tip[[
  The optimal Tylo lander uses asparagus-staged drop tanks. Start with 4–6 radial tanks feeding a central core. Drop pairs as they empty. The final core stage has enough TWR to land alone (now much lighter). This is one of the few places where asparagus staging is unquestionably correct.
]]

#section-heading([Bop and Pol — Mining Outposts])

After conquering Tylo, Bop and Pol are your reward. Both have:
- Extremely low gravity (RCS landing viable)
- High ore concentrations
- Excellent ISRU base potential for outer-system missions (OPM planets beyond Jool)

#info[[
  The Jool system is the last stop before the outer planets (OPM) and the first interstellar hop (Kcalbeloh wormhole, if installed). Build your Jool fuel depot well — it will service missions for the entire endgame.
]]

```

- [ ] **Step 5: Commit**

```bash
git add guide/wave-1-going-further.typ
git commit -m "feat: add Eve, Moho, Duna ops, and Jool system guides to Wave 1"
```

---

### Task 3: Add Wave 2 content — Interstellar Destinations, Blueshift, Vessel Architecture, Empire Management

**Files:**
- Modify: `guide/wave-2-the-long-ascent.typ`

**Read the file before editing.**

Find the existing Interstellar section and append new sections after the engine classes.

- [ ] **Step 1: Insert "Interstellar Destination Profiles" after the Engine Classes section**

Find the engine classes section (ends with the `#danger` callout about periapsis kicks). After the closing `]]`, append:

```

#section-heading([Interstellar Destination Profiles])

With Kcalbeloh and Grannus installed, you have two interstellar destinations. Each requires different preparation.

#section-heading([Grannus — The Red Dwarf])

Grannus is a binary red dwarf companion to Kerbol. It's the easier first interstellar target:
- *Transit time:* ~50–100 years with fusion engines (FFT). Faster with antimatter.
- *Planets:* Multiple terrestrial and gas giant worlds. Full biome and science support.
- *Strategy:* Grannus is a "conventional" star system — bring ISRU equipment, establish a mining base, use it as a staging point. No exotic physics required.
- *Power:* Solar panels work poorly this far from Kerbol. Bring fission reactors (Near Future Electrical) or RTGs.

#section-heading([Kcalbeloh — The Black Hole System])

Kcalbeloh is a black hole with orbiting planets. Install it for a truly alien destination:
- *Wormhole option:* A wormhole near Jool connects to Kcalbeloh. You can send probes through without interstellar engines. Crewed? Nobody's tested the radiation.
- *Transit time (conventional):* 100–300 years. Antimatter drives cut this to decades.
- *Black hole effects:* Time dilation near the event horizon is visual only (no gameplay effect), but the accretion disk is spectacular. Screenshot territory.
- *System layout:* Habitable planets, gas giants, and exotic bodies orbit the singularity. Each has unique science — some require special protection (radiation shielding parts).
- *Strategy:* Send an uncrewed probe through the wormhole first. Map the system with SCANsat. Then decide whether to mount a crewed mission — the delta-v for capture in the black hole's gravity well is enormous. Plan for it.

#warning[[
  Installing both Kcalbeloh AND Grannus is a significant memory commitment. If your game crashes during interstellar transit, reduce texture quality or remove one system. The guide assumes both are installed — you can still follow it with just one.
]]

```

- [ ] **Step 2: Insert "Blueshift Warp Infrastructure" after Destination Profiles**

After the Kcalbeloh warning closes, append:

```

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

#info[[
  This loop is the intended progression: FFT engines for initial exploration (slow, difficult, rewarding), Blueshift for established routes (fast, convenient, earned). Without FFT, Blueshift has no way to deploy the first coil. They are designed to work together.
]]

#section-heading([Coil Network Strategy])

- *First coil:* Deploy at Grannus (closer, easier than Kcalbeloh). Use a fusion-powered scout with basic coil.
- *Second coil:* Kcalbeloh. Requires advanced coil and antimatter-powered scout (longer range, higher power draw).
- *Waypoint coils:* Deploy coils at gas giants between stars for emergency refueling stops.
- *Coil security:* Coils are vulnerable. If a coil loses power, ships cannot warp to it. Include redundant power (solar + fission) and a probe core for remote rebooting.

```

- [ ] **Step 3: Insert "Deep Space Vessel Architecture" after Blueshift**

After the coil strategy content closes, append:

```

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

#warning[[
  Antimatter containment requires active power. If your reactor shuts down, the containment field fails, and the antimatter annihilates. Always have a backup power source isolating the antimatter pods. This is not a drill — KSPIE and FFT both model this behavior.
]]

```

- [ ] **Step 4: Insert "Multi-Colony Empire Management" before "System Interactions"**

Find `#section-heading([System Interactions — The Full Picture])`. Insert the new section before it:

```
#section-heading([System Interactions — The Full Picture])
```

Replace with:

```
#section-heading([Multi-Colony Empire Management])

By Wave 2 endgame, you're managing colonies across multiple star systems. Here's how to keep it from collapsing into spreadsheet hell.

#section-heading([Colony Specialization])

Each colony should do ONE thing well:

| Colony | Location | Role | Exports | Imports |
|--------|----------|------|---------|---------|
| Minmus Prime | Minmus Flats | Fuel hub | LFO, LH2, Monoprop | Machinery |
| Duna Foundry | Duna Midlands | Manufacturing | MaterialKits, SpecializedParts | Fuel, Supplies |
| Laythe Colony | Laythe Islands | Science + Crew | Science, Crew | Supplies, Fuel |
| Vall Station | Vall Orbit | Fuel depot (outer) | LFO, LH2 | Machinery |
| Grannus Outpost | Grannus II | Interstellar gateway | Coil power, Fuel | Everything initially |

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
```

- [ ] **Step 5: Commit**

```bash
git add guide/wave-2-the-long-ascent.typ
git commit -m "feat: add interstellar destinations, Blueshift, vessel architecture, and empire management to Wave 2"
```

---

### Task 4: Build verification

**Files:**
- No changes

- [ ] **Step 1: Run the build**

```bash
scripts/build.bat
```

Expected: `=== Build complete ===` with zero errors.

- [ ] **Step 2: Verify PDF size**

```bash
node -e "const s=require('fs').statSync('output/the-long-ascent.pdf'); console.log('PDF:', (s.size/1024).toFixed(0), 'KB'); console.log(s.size > 10000 ? 'PASS' : 'FAIL')"
```

Expected: `PASS`
