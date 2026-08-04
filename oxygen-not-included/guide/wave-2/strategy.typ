#let callout(title, body) = block(
  fill: rgb("#f5efe2"), inset: 8pt, radius: 4pt,
  stroke: 0.5pt + rgb("#1fa2a0"),
)[*#title* #body]

== Wave 2: Strategy

Wave 0 taught a pod to breathe. Wave 1 taught a base to run itself. Wave 2 is the wave that leaves: the colony has outgrown its starting asteroid, and the mandate is to cross the void, claim new worlds, and finish the Spaced Out endgame. Everything below assumes Waves 0 and 1 are stable, and assumes the *Spaced Out!* expansion — the rocket platform, the star map, the other planetoids. Where Wave 1 tamed a single world, Wave 2 teaches you to run a network of them, and every section is a system you will fly, ship, or land until the last planetoid is settled.

=== Rocketry

In Spaced Out, a rocket is not a vehicle in the sci-fi sense — it is a colony you strap an engine to. Rockets are built on the *Rocket Platform*, a pad you build on the surface, and they are stacks of modules: engine at the bottom, nosecone or capsule at the top, and everything between is the rocket's *interior* — pressurized space that dupes can stand in, build in, and live in while the rocket travels. The rocket is the only way off your starting asteroid in Spaced Out; the star map is reachable only by launching, and the rocket is both the ship and the base you land inside.

The modules define what the stack can do. The *Command Module* is the pilot's seat — a rocket needs one piloted seat to fly under control. The *Trailblazer Module* carries a one-way landing pod that drops a scout onto a planetoid before any landing pad exists there — the first-contact tool. The *Drillcone* sits at the front of the stack and carves through the space debris and asteroid crust that otherwise block the route; a rocket headed to a new world generally wants one. *Cargo bays* carry freight — but in Spaced Out a cargo bay is also *building space*, interior a dupe can fill with whatever the new colony needs. Because interiors are buildable, the rocket is not just transport: it is a moving base, and the modules you stack decide whether it arrives as a mail crate or a small house.

Fuel decides how far the stack can go. Early rockets burn *petroleum* — the refined oil from Wave 1 — which is cheap and reaches the closer worlds. The endgame fuel is *liquid hydrogen*, far more efficient per kilogram and the practical choice for the long routes to the edges of the star map. Moving from one to the other is a real project: hydrogen liquefaction demands the Wave 1 cooling loops pushed to cryogenic temperatures, and the fuel infrastructure — production, storage, refueling — becomes its own industrial corner of the base.

One design decision frames everything above: *solo nosecone or full interior.* The *Solo Spacefarer Nosecone* turns a rocket into a single-seat capsule — one dupe, no interior to build, the cheapest way to hop a pilot around. A full interior costs more: more modules, more mass, more fuel to lift the whole stack — but it carries a work crew and everything they need to land and build. Most mature colonies run both kinds, the small capsules for scouting and supply runs, the large interiors for colonization.

#callout("Note:", [A rocket platform needs open sky. A ceiling, a ledge, or a parked rocket overhead blocks launches, so clear the surface before you build and leave room around the pad for the pipes, wires and rails the stack will connect to.])

=== Interplanetary Logistics

Wave 0 and 1 taught one mental model: one big base, every resource inside a single growing shell. Spaced Out breaks the model on purpose. The starting asteroid cannot produce everything — or at least not enough of it. Some planetoids hold oil where yours has none; others sit on uranium; a water world is practically made of the stuff. The colony's future is not "expand the base" but "connect the bases." You stop running a colony and start running a *network*: a handful of outposts, each producing what it is good at, each importing what it cannot make.

Resources move between worlds by two routes. The first is *cargo modules* riding a rocket: load the bay, fly, unload at the far pad — heavy, able to carry anything, but it needs a pilot and a flight every time. The second is the *Interplanetary Launcher*: a fixed building that flings a payload across the star map to a landing pad on another planetoid, no crew required. The launcher trades the ability to carry a colony for hands-off convenience — it runs on power and keeps launching as long as it is fed and aimed. Most networks use both: rockets for the big scheduled lifts that start a colony, launchers for the steady daily trickle that keeps it alive.

Ship the finished good, not the raw ore. The Wave 1 lesson — refine, cook, and craft where the work is done — applies across the network: moving plastic from the base that makes it beats shipping petroleum and running a second press on a water-starved moon. The further the destination, the more valuable every kilogram of payload, and a launcher pod is a poor place for a crate of ore you could have processed at home.

Launch costs make automation inevitable. Every flight burns fuel and crew attention, and a rocket flown half-empty is a rocket that wasted its toll. The moment the same route repeats every few cycles, automate it — a scheduled launcher feed, a standing cargo order, a rocket that is loaded and dispatched without a dupe deciding. A network that depends on you hand-flying each shipment is a network that will starve the moment you are looking at the wrong planetoid.

#callout("Tip:", [Design every outpost with its own basic life support before you import anything. A colony that must ship oxygen to stay alive is always one missed launch from suffocating — freight should be for growth, not for breathing.])

=== Planetoid Colonization

The star map around you is a menu of decisions, and each planetoid type offers something specific. Water-rich worlds are the obvious first pick — they turn a colony's scarcest raw material into its surplus. Oil worlds open fuel and plastic at scale. Metal- and volcano-heavy worlds concentrate the ores the asteroid belt scatters. Radioactive worlds are the gate to the endgame: uranium is what the radiation economy runs on, and the richest deposits live on the worlds that emit the most. There is no single best destination — the best destination is the one that produces what your network currently lacks, which is why you will visit several.

A satellite colony is a colony, not a campsite. Landing and claiming a world means giving it oxygen, food, and power of its own — the same three pillars Wave 0 built for the starting pod, now delivered in a rocket and assembled on alien ground. The trick is that you are not there to babysit it: the supply line between worlds is the weakest part of the network, so the goal is an outpost that runs itself from cycle one. That means packing a complete life-support starter — the diffusers or electrolyzers, the farm, the generator and battery — in the first cargo bays, and using the crew's first days to make those systems self-sustaining before any single dupe is allowed to depend on them.

The colony-without-dupes-trips problem is the trap every new world sets. If a planetoid needs a dupe flown in every few cycles to fix a broken pump, the dupe stops being a colonist and becomes a taxi driver, and the network slowly dissolves into a ferry service. Break the cycle at the design stage: an outpost that can lose all its dupes and keep producing — oxygen still made, food still grown, power still generated, doors still closed — is an outpost you can leave. Automation from Wave 1 is the lever: a smart battery pair, a hydro-gated pump, a cooling loop — the same systems that made the base run itself are the systems that let the outpost survive without you.

#callout("Warning:", [Do not settle a world before you can land on it twice. Colonization goes wrong in the first cycles far more often than later — bring a spare rocket's worth of essentials, a backup pilot, and a landing pad at both ends before you commit dupes.])

=== Radiation & Radbolts

Radiation is the second expansion's new physics, layered on top of heat and germs. In Spaced Out, radiation comes from the void above and from radioactive matter below: open space bathes the surface in cosmic radiation, and *uranium ore* and the radioactive world's soil emit steadily. Radiation has two careers in the colony — it harms dupes, and it is a resource.

The resource side is radbolts. A *Radbolt Generator* is a building that, fed radioactive material and power, builds up a charge of *radbolts* — bolts of radiation the machine can hold and then fire. Radbolt beams travel in straight lines and are aimed at receivers: *radbolt reflectors* that turn the beam and, crucially, the *radbolt chamber* and research buildings that accept the charge. This is how the game's highest-tier research is done: radbolt research consumes the bolts in research chambers, and the endgame material-science machines consume them too. The system is deliberately fiddly — a beam blocked by a wall is a beam wasted, so you are building an optical path as much as a machine.

The harm side is radiation sickness. Dupes accumulate *rads* the longer they are exposed — from space, from radioactive ore, from working around radbolt machines. Enough accumulated rads and the dupe develops radiation sickness, a stack of penalties that grows with exposure and eventually becomes genuinely dangerous. The defenses are the ones you expect: *radiation suits* — the Spaced Out counterpart to the exosuit — for dupes who must work in hot zones, shielding for rooms you want to protect, and simple distance: radiation falls off, and a well-placed wall is often the cheapest suit of armor. The numbers — how many rads, at what range, from which source — are the game's tuning, not the lesson. The lesson is that radiation is a territory to be managed, with its own hazmat etiquette.

#callout("Warning:", [Radbolt beams are straight-line and pitiless. Design the beam path — generator to reflector to chamber — before you build, because a single wall between generator and target turns a working research loop into a building that fires into its own ceiling.])

=== Bionic Dupes

The *Bionic Booster Pack* adds a second kind of duplicant to the colony: *bionic dupes*, a distinct duplicant type with requirements that are not the same as a biological dupe's. Where a biological dupe needs air, food, sleep and comfort, a bionic dupe is built on different foundations — which means a colony that hosts them provisions differently than one that does not.

How different, exactly, is something the pack itself teaches better than this guide can. The specifics of what a bionic dupe consumes, what they are immune to, and what they cannot do are the pack's own content, and the in-game duplicant selector and database are the authoritative source. This guide keeps that boundary on purpose: nothing here asserts a number or a building name for bionic dupes that is not verified.

What Wave 2 does assume is the strategic shape. Bionic dupes are an *alternative labor and colonist option*: a colony can draw on biological dupes, bionic dupes, or both. For the network this wave is about, the practical consequence is that the calculus of a new planetoid changes — the life-support an outpost must bring is a function of who will live there. A satellite colony staffed with dupes whose needs differ from air and mealwood may need a very different cargo manifest than one staffed with the crew from Waves 0 and 1. Treat the bionic dupe not as a clone with a paint job but as a genuinely different colonist type, and let the game's own descriptions fill in the specifics before you commit a cargo bay to them.

#callout("Note:", [Bionic dupe mechanics are the pack's content, not this guide's. Check the in-game duplicant database for what a bionic dupe needs before you design an outpost around one — the details are worth reading twice, and this guide deliberately does not print them.])

=== The Endgame

Wave 2 ends when the network stops being a project and becomes a state. The milestones stack like the waves that built them. Research is the first: by the end of Wave 2 the tech tree is meant to be finished, and the last research in Spaced Out is radbolt research — the material-science machines and the final destinations sit behind it. The map is the second: every planetoid worth having is claimed, tamed, and connected, each outpost self-sufficient enough to keep producing while you are not looking. The network is the third: cargo flows on schedule, launchers and rockets run on automation, and no single world's failure can take down the rest.

The explicit goal at the far end is the *temporal tear* — the anomaly in space that Spaced Out's endgame is built around. Traversing it is the game's final objective: it takes the endgame research, the material-science machines, and a mission designed for one last long-haul flight. It is less a fight and more a completion — the whole wave has been building the capability to reach it, and the tear is where that capability is spent.

And then there is the quiet finish: the colony that can keep running without you. Every wave moved a step closer to self-sufficiency — Wave 0's pod that breathed on its own, Wave 1's base that tamed and cooled itself, and now Wave 2's network that flies, ships, and feeds itself on schedule. The true endgame test is to walk away: pause the input, stop nudging dupes, and watch a multiplanetary colony run an entire cycle without a single command. When that holds, the Voyager has finished — not because there is nothing left to build, but because nothing left requires you.

#callout("Tip:", [Treat "finished" as a test, not a moment. Pick one cycle, stop giving orders, and audit what breaks — the outpost that ran dry, the rocket that sat un-fueled, the launcher that clogged. Each break is the last construction project, and the wave is done when nothing breaks.])
