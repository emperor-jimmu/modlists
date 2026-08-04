#let callout(title, body) = block(
  fill: rgb("#f5efe2"), inset: 8pt, radius: 4pt,
  stroke: 0.5pt + rgb("#1fa2a0"),
)[*#title* #body]

== Wave 1: Strategy

Wave 0 bought the colony another hundred cycles by learning to stand still. Wave 1 is the wave that starts moving: the mandate is to tame the world — box the geysers, answer the heat, turn the oil below into power and plastic, and make the base fast enough to ignore. Every section below assumes the Wave 0 basics are stable, and every one hands you a system you will run for the rest of the colony's life.

=== Automation & Logic Circuits

The wires you built in Wave 0 carried power; a second kind of wire — the *automation wire* — carries *decisions*. Automation lets buildings talk to each other: a sensor says "the room is full", a shutoff valve reads that and closes, a generator reads its battery and powers down. It is the difference between a colony that is merely alive and one that runs itself.

*Signals.* Automation wires carry one of two states — *green* (on) or *red* (off). A sensor outputs green when its condition is true: a *Liquid Pipe Element Sensor* when the pipe holds water, a *Gas Pipe Element Sensor* when the pipe holds a chosen gas, a *Hydro Sensor* when the liquid in its cell is above a depth you set. Whatever a sensor decides is sent down the wire to whatever the wire touches.

*Reading it.* The automation overlay (the plug icon in the top bar) shows every wire green or red, so the loop's state is visible at a glance — most of "automation" is really just getting this overlay right.

*Actuators.* Wires only inform; *actuators* act. The two you need first are the *Liquid Shutoff* and *Gas Shutoff* — valves with an automation port that open when the wire is green and close when it is red. A shutoff does not pump; it gates whatever the pump already pushes, so pair it with a pump that runs continuously and let the shutoff decide where the liquid goes.

*Logic.* When a sensor's answer is backwards — you want to act when it is *red* — the *NOT gate* flips it. A hydro sensor says "too low" with a red wire; feed that into a NOT gate and the wire comes out green exactly when you want a pump to run. NOT is the first logic gate and the only one you need for most of Wave 1.

*A first build: the smart battery.* The *Smart Battery* is a battery with an automation output: it sends green when its charge passes a high threshold and red when it drops below a low one — both numbers you set on the battery itself. Wire that output to a *Coal Generator* with an automation port, set the battery to charge to, say, 90% and release at 40%, and the generator now runs only when the battery is genuinely low. When the battery is full the generator stops, the dupes stop hauling coal, and the coal pile stops evaporating. It is the single highest-value automation build in the game, and the template for every later loop: *sensor reads, wire reports, machine reacts.*

#callout("Tip:", [The smart battery pair — generator stops when the battery is full, restarts when it is nearly empty — is the colony's first self-running system. Build it before anything fancier: it saves coal, heat and dupe labor from the moment it is wired.])

Once the smart battery works, you have the whole vocabulary — sensor, wire, shutoff, NOT. Every tamer in the rest of this wave is the same parts arranged differently.

=== Geyser & Vent Taming

Wave 0 dug for its water and gas. Geysers are the map's *renewable* sources: vents and geysers buried in the asteroid that periodically erupt a fixed resource — cool or hot water, steam, natural gas, chlorine, carbon dioxide, and on some maps crude oil or other prizes. They are the reason "survive" becomes "tame": a tapped water geyser feeds the colony forever, a natural gas vent runs generators, a steam vent is a power plant waiting for a turbine. The map marks them as blocked-off rock formations; each hides a machine that erupts on a schedule of active and dormant periods.

*Why they matter.* A geyser is free mass over time — one of the only sources in the game that adds water, gas or oil from nothing. But it all comes with a price: heat. Most erupt hot — sometimes very hot — and a geyser left in the open turns its surroundings into a slow oven. Taming a geyser means doing two things: *boxing it in* so its output stays put, and *pumping its output away* faster than the pocket fills.

*Overpressure.* Every vent stops erupting once the pressure in its chamber climbs high enough — a geyser buried in its own output just shuts down. That is not a bug; it is the mechanic you exploit. A vent kept at low pressure erupts continuously; a vent allowed to back up goes dormant on its own schedule. So the goal is never "let it fill" but "pump it out steadily and keep the pressure low."

*The beginner tamer.* The first tame a Wave 1 colony should build:

1. *Box it.* Wall the geyser into a chamber with insulated tiles and a space to stand. Sealed is fine; vacuum is an advanced refinement, not a requirement.
2. *Pump the bottom.* Put a *Liquid Pump* in the pocket where the geyser's output collects. (Gas vents take a *Gas Pump* instead.)
3. *Gate the pump.* Run the pump continuously, but send its output through a *Liquid Shutoff*, and put a *Hydro Sensor* in the pocket — wired through a NOT gate if you want it inverted — so the shutoff opens only when enough liquid has pooled. A pump that runs dry wastes power; a pump that runs only when there is water wastes nothing.
4. *Send it somewhere.* Pipe the output to a *Liquid Reservoir* or straight into the base's water line. The reservoir also breaks the loop — a pipe with no destination floods the chamber and re-wets everything.

#callout("Warning:", [Never tap a geyser you are not ready for heat-wise. A hot steam vent left unboxed cooks everything within a dozen tiles — box it in insulated tiles the same day you open it, and plan where its heat is going before you decide it is safe.])

=== Heat Management & Steam Turbines

Wave 0 called heat "the slow killer" and told you not to panic. Wave 1 is where you actually answer it, because by now every machine — diffusers, generators, refineries, and the geysers you just tamed — is bleeding heat into the base, and the base slowly, quietly cooks. Crops wither at high temperatures. Dupes take stress damage in hot rooms. And heat never disappears by itself: in ONI, heat only leaves if you *delete* it with a machine built for the job.

*Insulate first.* The cheapest defense is the *Insulated Tile* — a wall that lets almost no heat through. Ring your living and farming rooms with insulated tiles, and keep hot industry — generators, refineries, geyser chambers — outside the ring. Most Wave 1 heat problems are solved by walls and spacing, not machines.

*The aquatuner.* The *Aquatuner* is a machine that cools the liquid piped through it: water in, noticeably colder water out, fed back through your base's pipes. It is the closest thing the game has to a cooling plant for liquid loops — with one enormous catch. The heat it pulls out of the liquid does not vanish. It is dumped straight into the machine itself, and an unmanaged aquatuner will melt its own room in a few cycles.

*The steam turbine.* The *Steam Turbine* is the machine that answers the aquatuner's catch. Built above a sealed chamber, it pulls in hot steam, converts its heat to power, and spits out the leftover as cooler water. A steam chamber feeding the turbine is a *heat deletion machine* — the real one in the base game: heat goes into the chamber as steam, the turbine consumes it, and the mass leaves cooler than it arrived. That is not a balance quirk; it is the intended endpoint of every cooling loop.

*The loop.* Put them together and you have the colony's heat sink: an *Aquatuner* in a sealed steam chamber, chilling a pipe of liquid that circulates around your base; the heat it pulls dumps into the chamber's water and turns it to steam; the *Steam Turbine* on top eats the steam, returns a little power, and drops the condensed water back into the chamber to be reboiled. The aquatuner cools the base; the turbine pays back the power and closes the loop. It runs forever so long as the chamber stays fed.

*Gas heat.* What cools a liquid can cool a gas: the *Thermo Regulator* works exactly like an aquatuner but for gas pipes — same principle, same heat-dump problem, and the same steam-chamber solution once you need it. Use it for gas loops; use the aquatuner for everything liquid.

#callout("Note:", [The exact temperature numbers — how cold the aquatuner makes the water, how hot the steam must be — shift with the game's tuning and with what you are cooling. Design the loop as *an idea*: the aquatuner pulls heat out of a loop, the chamber absorbs it, the turbine deletes it. The numbers are the tuning; the loop is the truth.])

=== Plastic & Petroleum

Deep below the slime biome sits the *oil biome* — a hot, dark, unwelcoming place where the rock runs black and cold stone is scarce. This is where Wave 1's fuel economy is decided, because this biome holds the oil that becomes petroleum and, through it, plastic.

*Oil wells.* Oil in the ground is effectively endless, but it is guarded: an *Oil Well* drills the oil reservoir and requires *water* to do it — pump clean water in, crude oil comes out, with a little natural gas as a byproduct. An oil well is how you turn a water surplus into fuel; it is also how you can empty a water reserve without noticing. Watch the water line the way you watched the algae line in Wave 0.

*The oil refinery.* Crude oil is a poor fuel. The *Oil Refinery* cooks it down into *petroleum*, a better fuel, and vents natural gas while it works. A refinery needs a dupe at the controls, produces real heat, and — like the geyser tamer — needs its output piped away and its heat contained. One refinery turning crude into petroleum is the standard Wave 1 setup; scale up when demand shows up.

*Petroleum generators.* The *Petroleum Generator* burns petroleum for the most power per tile in the wave — but it is loud about it: it needs a steady fuel supply, produces waste that must go somewhere, and generates a lot of heat. It is the generator you upgrade the coal fleet into once the oil line is stable, not the first generator you build.

*The polymer press.* The *Polymer Press* is the building that turns petroleum into *plastic* — and the same machine turns its water feed into steam, so it also needs a heat plan. Plastic is the wave's keystone material: it is required to build the *Steam Turbine* from the previous section, and it unlocks the *Transit Tubes* at the end of this chapter. It is also a research gate — most of the mid-game tech tree expects you to have plastic in hand.

*What plastic is for.* In Wave 1, two things: the steam turbine, and transit tubes. Plastic is fragile — it melts in heat — so keep your plastic stockpile cool and out of industrial rooms.

#callout("Warning:", [The oil biome is hot and its industry is hotter. Do not build your oil refinery inside your insulated core — build it in the oil biome or just outside the ring, and treat its heat as a geyser you are taming, not a room you are sharing.])

=== Ranching Diversity

Wave 0 ranched hatches, and it is a good start — rocks in, coal and meat out. Wave 1 widens the menagerie, because each new critter is a machine that turns one resource you have too much of into one you need.

*Dreckos.* *Dreckos* are tree-dwelling reptiles that eat *mealwood* (and later *balm lily*) and are farmed for what they grow, not what they drop: shear a drecko and it yields *reed fiber*, the fabric for insulation and exosuits, alongside *phosphorite*, a fertilizer. A drecko ranch turns a plant surplus into clothing material and fertilizer.

*Pufts.* *Pufts* are the pollution recyclers. They eat *polluted oxygen* — the foul air your polluted water and dirt keep generating — and excrete *slime*, which refines into algae and, eventually, mushroom farming. A puft ranch converts a nuisance (polluted oxygen seeping everywhere) into a resource (slime you actually want).

*Slicksters.* *Slicksters* are the oil biome's answer to CO2. They eat *carbon dioxide* — the gas your dupes and coal generators never stop producing — and excrete *crude oil*. Park a few in the colony's CO2 pit and the bottom of the base becomes a slow oil well. (A hotter variant eats CO2 hotter and leaves petroleum instead; that is a Wave 2 refinement.)

*Shine bugs.* *Shine bugs* are the glow critters of the starting biome: they eat *algae* and emit *light* — bright, warm, cheerful light. A shine bug or two in a living room is free lighting and free morale, as long as you keep feeding them.

*The principle: close the loop.* Every critter ranch above is one half of a loop looking for its other half. Hatches eat rock and feed the coal generator. Slicksters eat the generator's CO2 and return oil. Pufts eat the oil-era pollution and return slime. Shine bugs eat algae and brighten morale. The ranching skill is spotting the waste stream and matching a critter to it — the colony stops throwing things away and starts digesting them.

=== Dupe Jobs, Skill Specialization & Morale Optimization

By Wave 1 the colony has enough dupes that "everyone does a bit of everything" is how nothing gets done. The *Jobs* tab is where three generalists become a crew: each job path is a ladder of *skill tiers*, and spending skill points down a path unlocks that tier's abilities — *Hard Digging* so a digger can excavate hard rock, the *Plumbing* skill so a builder can lay pipes faster, the *Improved Carrying* skills that let one dupe do the work of two haulers.

*Specialize on purpose.* A colony this size runs on a handful of specialists: one dedicated *researcher* who lives at the research station, one *builder* with the construction skills, one *digger* with the digging skills, one *rancher* for the stables, and everyone else set to operating and hauling. Specialization is not about the titles — it is about the *skill points* being spent in one place instead of sprinkled everywhere. A dupe with five points in digging is worth more than five dupes with one point each.

*Morale is the budget.* Every skill point spent raises that dupe's *morale expectation* — the contentment they now consider baseline. Their actual *morale* comes from food quality, decor, sleep, downtime, and a few building bonuses. The rule is a budget: expectation must stay under morale, or the dupe stresses, vomits, and eventually melts down. So every promotion is a bill, and the bill is paid in food and decor.

*The morale crash spiral.* The classic collapse: you promote a dupe (expectation up), then another, then run out of decent food — and suddenly three dupes are stressed, one is having a meltdown, and the whole base pauses to mop vomit. The spiral feeds itself because stressed dupes work poorly, which delays the food or decor that would have fixed it. The defense is boring and reliable: *raise morale before you spend the points.* A *Mess Table* and a proper mess hall, a *Painting* or two, a decent *Cot*, and a schedule with real downtime all raise morale for everyone — upgrade comfort first, then promote.

#callout("Warning:", [Promotions are permanent spending, not rewards. If a dupe's morale expectation is already at the ceiling of what you can feed and decorate, adding one more skill point is how you start the stress spiral. Look at the two numbers side by side before every promotion.])

=== Transit Tubes

By the end of Wave 1, the base is big enough that walking is the real cost — a dupe trekking across the asteroid is a dupe not building. *Transit Tubes* are the answer: a plastic-based transport network that carries dupes across the map almost instantly.

*How they work.* A transit network is built from three pieces: the *Transit Tube Access* (the launch pad a dupe enters), the *Transit Tube* itself (the pipe the dupe is shot through), and a *Transit Tube Crossing* where tubes intersect. The launching access needs power; the rest of the tube just needs plastic and a clear straight line. A dupe steps in, is launched, and exits at the nearest access along the tube — effectively teleporting between your base and your far industry or geyser. Tubes are strictly one-way in spirit: plan a line for each journey you actually want, from the ranch to the refinery, from the base core to the geyser field, and put an access at both ends so the trip works in both directions.

*What they cost.* Tubes are pure plastic — a cross-map line burns through your entire early polymer press output — and the access buildings need power at each launch point. They are a material investment, not a science curiosity.

*When they are worth it.* The rule of thumb: build tubes when the *walk* is the bottleneck. A colony with its ranch, oil refinery and geyser tamer all in one compact area does not need them; a colony stretching across a third of the map, with dupes spending a quarter of every day walking, is exactly the colony tubes are for. Transit tubes are also the game's polite nudge toward the next wave — they are the first taste of travel technology, and plastic is the toll.

#callout("Tip:", [Price the tube line honestly before building. One long line of plastic is a big early spend; if the map is still compact, the same plastic as a second Polymer Press may serve better. When the base gets wide, tubes pay for themselves in dupe-hours within a few cycles.])
