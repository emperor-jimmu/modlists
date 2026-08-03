#let callout(title, body) = block(
  fill: rgb("#f2ede0"), inset: 8pt, radius: 4pt,
  stroke: 0.5pt + rgb("#e8590c"),
)[*#title* #body]

== The Architect: Strategy

The Castaway proved that a factory can be built. The Architect's job is to prove that it can *scale* — that the bus survives its own width, that the rail network carries a dozen trains without a single deadlock, that circuits make the factory decide things instead of you, that robots and modules and quality pay for themselves. This chapter teaches the eight systems that scaling is built from, in the order a growing factory meets them: the bus, the rail network, circuits, robots, modules, quality, the mathematics, and finally the city-block capstone. Every number below was checked against the official Factorio wiki for 2.0. Everything here describes the base game, which is how Waves 0–1 run (Space Age stays off until Wave 2).

=== The Bus: Order Out of Spaghetti

There are two ways a factory grows. *Spaghetti* is what a factory becomes when every building is placed where the materials happen to be — fast to build, hellish to expand, and impossible to reason about once a belt crosses a belt crosses an inserter. The *main bus* is the cure: a small number of broad, parallel belts that carry the core materials past every production block, with each block pulling off what it needs. The moment the base outgrows its first area, the bus is how the Architect buys future-proof space.

*What goes on the bus.* The rule is simple: carry the items that *many* blocks consume, not the items one block makes. The classic spine is, roughly in order: iron plates, copper plates, green circuits, steel, and then plastic, red circuits, and stone/brick as the mid-game adds them. Each of those deserves its own dedicated lane(s), because each is consumed in every direction. What does *not* go on the bus is anything with a single consumer — a purple science ingredient used in one block belongs in that block's own feed, not on the highway.

*Lane count is the plan.* Reserve lanes when you lay the bus, not when it fills. A common scale is 4 lanes of iron, 4 of copper, 2 of green circuits, 2 of steel, and singles for the rest — and the bus is laid *two tiles apart per pair* so splitters and undergrounds can cross without breaking. Remember the numbers from the last chapter: a yellow belt carries 15 items per second, red 30, blue 45 (two lanes total on each belt, both sides of the belt count). If your iron consumption is heading past 60/s, that is four yellow lanes or two blue — and you should already have the space reserved.

*Where to expand.* Always expand the bus *lengthwise, then sideways.* Production blocks reach out from the bus and get longer; the bus itself keeps running straight. When it must fill with a new lane, the clean move is to add the lane on the outside rather than tear up the middle. Balancers matter, but they are a later refinement — for the Architect, the discipline of *dedicated lanes, pulled off by splitters, never dumping one belt onto another* prevents nine-tenths of bus failures.

#callout("Tip:", [The bus is a *policy*, not a religion. A 'lane' is one belt; two parallel belts with items on only one side of each can carry as much as one full belt, so keep each lane saturated on both sides and pull off only what a block needs. When a block's demand approaches a full lane, split the lane *early* and let both halves feed — a single splitter at the start beats starving consumers at the end. The *Prismatic Belts* mod colors each lane's direction, which turns a four-lane bus from a guessing game into a diagram. *Belt Visualizer* highlights a whole connected line so you can find the one empty stretch starving a block.])

#callout("Warning:", [Never pull items off a bus and insert them back onto the same lane — that is how a bus corrupts. Feed a block from the bus and return its waste down a dedicated return line. And build the smelting before the lanes it feeds: the bus is only as good as the smelters behind it.])

=== Trains: Signals, Blocks, and a Network That Scales

Wave 0 gave you a single train loop. The Architect runs *networks* — multiple trains, shared track, crossings, junctions — and that is where signals earn their keep. The two laws of rail are: a train never enters a block it is not allowed to enter, and every crossing must be guarded by a chain signal.

*Blocks.* Every rail signal divides the track into *blocks* — the segments of rail between signals. A train only enters a block whose entry signal is green; once inside, all the block's entry signals turn red until it leaves. That one rule is the entire safety model, and it scales: more signals means smaller blocks means more trains can share the same stretch of track safely.

*Chain signals read ahead.* A chain signal copies the state of the *next* signal along the train's path. Place it on the entrance to a crossing or junction, and a train will not enter the crossing unless it can also leave it — which is exactly what stops a train from parking across an intersection and deadlocking everyone else. The special case worth knowing: if a chain signal can reach its destination (a stop) without crossing another signal, it lets the train through regardless. In practice the rule is short: *rail signal on every exit, chain signal on every entrance, chain signals before any crossing.*

*Station naming and train limits.* A train schedule is written against stop *names*, so names are a language: name a stop by what it does ("Iron Ore In", "Iron Ore Out", "Drop"), and the same name on two outposts means one train serves both. The *train limit* — a number set in the stop's panel — caps how many trains may head for a stop at once, which is the single best anti-deadlock habit in the game: one train per station until you have a reason for more.

*Scaling the network.* When two trains share a line, signal it as two one-way tracks (each with its own signals) instead of one two-way line. Put signals far enough apart to fit the longest train. And when the schedule bookkeeping starts to feel like the actual work, that is the moment the *Project Cybersyn* mod from the Modlist chapter steps in: it turns stops into providers and requesters driven by circuit signals, and a small fleet of trains runs itself.

#callout("Tip:", [The deadlock test before you trust a junction: with your longest train parked inside the crossing, there must be enough room after each chain signal for the whole train to clear the junction. If a train can't physically fit in the next block, shorten the block or move the signal. And put a signal after every train stop so the station itself is its own block — otherwise the train behind the one unloading blocks the whole main line.])

#callout("Warning:", [A two-way single track with more than one train is a deadlock factory. The honest scaling move is one-way pairs: two parallel rails, each signalled in one direction. It costs a little more track and buys unlimited growth.])

=== Circuits: The Factory's Nervous System

The circuit network is the difference between a factory you *run* and a factory that *runs*. Wires read values, combinators decide, and machines listen. It is unlocked by the circuit-network research, and its units are *signals* — numbers attached to item names or to the virtual signals (letters like A, B, C and specials like the checkmark).

*Wiring.* Red and green wire each form their *own* network: two red networks never merge unless they physically touch, and a red and a green network on the same pole stay separate. That is the feature that lets you run two independent ideas down the same row of poles. Signals *sum* — wire three chests of iron ore together and the network reports the total; a receiver connected to both a red and a green wire sees the sum of both.

*The three combinators.* The *constant combinator* broadcasts up to 20 fixed values — it is the factory's memory, your way of saying 'this station wants 4,000 iron ore'. The *arithmetic combinator* takes an input and outputs a calculated result (multiply, divide, add, subtract, even modulo). The *decider combinator* compares a signal to a value or to another signal and passes a chosen signal through when the condition is true. Note that an arithmetic or decider combinator's input network and output network are *separate* — the output is broadcast on the other side, which is exactly how you build feedback loops.

*Three real applications.* Three builds cover most of what a scaling factory needs:
- *Enable-by-threshold.* Read a chest's contents with a wire, feed the signal into a decider set to 'iron ore > 4,000, output checkmark = 1', and connect the output to a train stop set to 'enabled when checkmark = 1'. The train only comes when the buffer actually needs it.
- *Request-from-circuit.* Connect a requester chest (or a warehouse) to the circuit network and set it to request whatever a constant combinator says — one combinator flips the whole line's recipe.
- *Count and divide.* An arithmetic combinator reading a belt can count items; dividing a stock level by the stack size turns a count into 'how many trains fit'.

#callout("Tip:", [Combinators are slow, dumb, and wonderful: they update once per tick and they never guess. Start with *one* real circuit — the enable-a-train-stop threshold above — and learn to read it with the *Circuit Visualizer* mod, which draws the signal values right on the wires, and *Nixie Tubes*, which show a signal as digits on the wall. When you can read what a single network is doing, building the second and the third becomes pattern-matching. The *Circuit HUD V2* mod pins the same numbers to your screen so a city block's buffers are visible while you stand anywhere.])

#callout("Warning:", [A circuit network only knows what you *wire* into it — it never sees the contents of a chest that is not connected, and a wire that looks connected but is not is the most common circuit bug in the game. And remember that receivers sum red and green: if a build behaves twice as strong as you intended, a red and a green wire are probably both reaching it.])

=== Logistics Robots: When Bots Beat Belts

Belts are the backbone, but they are *dedicated*: a belt line carries one thing in one direction and its capacity is spent the moment you place it. The *logistic network* is the flexible layer — a shared pool of items that any requester can draw from, delivered by flying robots. The trade-off is the whole Architect's art: belts for bulk, bots for *mix*.

*The parts.* A *roboport* creates a logistic zone (a 50x50 area, with a larger 110x110 construction area) and is where robots rest and charge; roboports whose orange zones touch join into one network. *Passive provider chests* offer contents to the network but do not push them out; *active provider chests* push their contents out immediately; *storage chests* hold the network's loose items (and are where deconstruction drops things); *requester chests* ask for specific items; *buffer chests* do both — they request and provide. Logistic robots deliver: by default each carries a single item and flies at about 3 tiles per second, and the *worker robot speed* and *worker robot cargo size* researches raise both, the cargo limit to four items per robot.

*How robots choose.* Robots pick up in a fixed priority — active providers first, then storage and buffer chests, then passive providers — so the network always drains an active provider before touching your careful passive stacks. A requester's demand is filled by robots that pick up the item and fly it over; when demand exceeds supply, the network thins out, and the answer to 'why is my build slow' is usually not enough bots, not enough providers, or too long a flight.

*When to switch from belts.* The rule that never fails: keep *bulk, high-volume, one-directional* flows on belts and trains — plates, ore, circuits by the belt-load — and give *high-mix, low-volume* flows to the bots. Green science packs, modules, inserters, repair packs, construction materials: dozens of different items, each needed in small numbers, in changing places. That is what the logistic network is for. A single requester chest beside a science assembler with a provider chest of plates upstream replaces a dedicated belt line and every splitter on it.

#callout("Tip:", [The *Warehousing Mod* from the Modlist chapter is the robot network's megabase upgrade: a 6x6 warehouse can be a passive provider, storage, requester or buffer chest, so a whole city block's buffer becomes one giant chest instead of a field of steel ones. Pair it with a requester-warehouse feeding an assembly block and the block becomes self-provisioning — request what it needs, provide what it makes, and the network settles the accounts.])

#callout("Warning:", [Robots are a *network*, not a conveyor: every robot crossing a network is one that is not doing something else, and a long-distance bot haul is slow, power-hungry logistics. A common scaling failure is one giant network for the whole base — bots fly forever and charging pads jam. The fix is not more bots, it is more networks: keep each bot network small and local (one block, one production cell), use belts and trains between cells, and let robots work only the short, high-mix hops inside them.])

=== Modules & Beacons: Spending Spare Throughput

Modules are the Architect's lever for turning *materials* into *speed*, and they are expensive on purpose — the wiki's own framing is that they are costly, research-gated and slowly produced. Every module is a trade, and the whole module system is about choosing which trade.

*The three families.* *Speed modules* (1/2/3: +20%/+30%/+50% crafting speed) make a machine act like several machines, but each also raises power draw and pollution by more than the speed gain. *Efficiency modules* (1/2/3: −30%/−40%/−50% energy) cut the power and pollution bill, ideal for drills, beacons and any always-on line. *Productivity modules* (1/2/3: +4%/+6%/+10%) make the machine create bonus items out of nothing on every cycle — the only 'free' material in the game — but slow the machine and raise its power draw. Module effects are *additive*, not multiplicative, and energy use can never be reduced below −80%.

*Beacons.* A *beacon* transmits the effects of its own modules to every compatible machine in a 9x9 area around it. It can push a machine past the limits of its own module slots, but its effect has built-in diminishing returns — the more beacons hammer one machine, the less each one adds. The standard mid-game shape is a row of assemblers (each packed with productivity modules) flanked by beacons full of speed modules: the productivity creates free items, the speed beacons cancel the productivity slowdown. That pairing is the single biggest throughput lever in the base game, and it is also why 'prod in the machine, speed in the beacon' is the first module build worth learning.

#callout("Tip:", [Productivity modules pay for themselves in *raw material* but cost you in machines: a prod-3-filled assembler makes 10% free items but runs half speed. The whole point of speed beacons is to buy that speed back — but beacons themselves consume power constantly, even when the machines they boost are idle, so put a power switch on a beacon array that serves a line you only run occasionally. And when a build needs a module recipe changed across fifty machines, the *Module Inserter* mod lets inserters and robots handle the slots instead of your hand.])

#callout("Warning:", [Speed modules on drills, miners and pumpjacks burn power and pollution without adding new material — the ore was coming out anyway, just slower. Efficiency modules are almost always the right call on mining and on the boiler/steam line: a −50% power machine in a field of hundreds is a whole power plant saved. Reserve speed and productivity for the *assembling* economy, where the multiplier actually multiplies.])

=== Quality: Better Things, Not Just More

Quality is 2.0's second axis of scaling. Every item can come out at five tiers — normal, uncommon, rare, epic, legendary — and higher tiers are strictly better: a legendary assembling machine crafts 30% faster per tier, a legendary module boosts its effect by 30% per tier, a legendary chest holds more. The trick is that quality is *gambled*, not chosen: a machine fitted with *quality modules* has a chance (quality module 1/2/3: +1%/+2%/+2.5%) to roll a higher tier on every craft, and the *recycler* turns items back into a quarter of their ingredients — so you can loop a build, recycling normal output and keeping whatever rolls higher.

*When quality pays off.* Quality is not always worth it; it is worth it when the *same item is built in huge volume and used forever*. The classic targets are machines and modules themselves: one legendary assembler, beacon or speed module is a permanent, compounding upgrade, so a dedicated quality loop that slowly accumulates legendary machines pays for its up-front cost many times over. The same logic applies to buildings you place in bulk — but *not* to consumables like science packs, where the odds are better spent on volume, and *not* to every line in the base.

*The upcycling loop.* The practical pattern is *craft-normal, recycle-waste*. A bank of machines with quality modules crafts, say, iron plates; normal output feeds the factory, uncommon and better get sorted into a loop that crafts them into *higher* tier intermediates — quality compounds on quality. Because the recycler returns only a quarter of its input (and rolls quality again), the loop is deliberately expensive: it spends material to pull higher tiers out of the odds. That material cost *is* the gate — quality upcycling is the game's own version of 'pay resources to buy luck', which is exactly the kind of proportionate cost this wave's rules demand.

#callout("Tip:", [Sort quality by belt, not by hand: inserters have had filters since 2.0.7, so a line of filter inserters can split uncommon from normal onto separate lanes, and a filter-splitter arrangement pushes each tier toward its own destiny. Start with the *small* loop — quality modules in a machine making its own inputs, recycle the normal output — and only scale it once you can read the numbers in the *Circuit HUD* and manage the buffers.])

#callout("Warning:", [Do not quality-module your whole base. Quality modules slow machines down and add nothing to a line that is already feeding a hungry consumer — they are an investment, not an amplifier. If a line's normal output is fully consumed, leave it normal; quality pays only where you are deliberately *banking* better items for future builds. And do not pair quality modules with speed modules in the same machine or its beacons — speed just churns out more normal items while the quality chance stays fixed per craft, diluting the odds; the wiki's own guidance is to keep quality modules away from speed.])

=== Rate Mathematics: Counting the Factory

A scaling factory is a set of equations, and the Architect's superpower is doing them in the head or on paper. The core formula is small:

#block(fill: rgb("#f2ede0"), inset: 8pt, radius: 4pt, stroke: 0.5pt + rgb("#e8590c"))[
*items per second* = (machine crafting speed) × (1 + speed bonus) ÷ (recipe time in seconds) × (1 + productivity bonus)
]

A machine's *crafting speed* is its multiplier on the recipe's base time. An assembling machine 2 runs at 0.75; an assembling machine 3 at 1.25. A recipe that takes 1 second in an assembler 2 therefore makes 0.75 items per second, and a recipe taking 0.5 seconds makes 1.5 per second. Speed modules push the 1 + speed bonus term; productivity modules push the last term and pull the speed term down.

*The two numbers that matter.* Belt throughput and machine output. A yellow belt moves 15 items per second, a red one 30, a blue one 45 — that is the ceiling any one belt lane can feed. If a build needs 30 items per second of something, you need a red belt (or two yellow) *and* enough machines to make 30/s. Worked example: an iron gear wheel takes 0.5 seconds in an assembler 2, so one assembler makes 1.5 gears per second; to fill a red belt of gears you need 30 ÷ 1.5 = 20 assemblers. The same arithmetic runs backward: if 20 assemblers are consuming 30 plates per second, the plate belt feeding them must be at least red, and the smelters behind it must produce 30/s too.

*The chain is the constraint.* Ratios chain: miners feed furnaces, furnaces feed assemblers, assemblers feed science. Rather than hand-computing every link, the Wave 0 tools finish the job: *Factory Planner* computes the whole chain for a target throughput, and *Rate Calculator* measures what a selection of machines is actually doing. The Architect uses the formula to *understand*, the tools to *scale*.

#callout("Tip:", [Keep a handful of reference numbers in your head and the rest is division: 15/30/45 items per second for the three belts, 0.5/0.75/1.25 for the three assemblers, and 'a blue belt of X is 45 per second, which is the factory's real heartbeat'. When a line feels short, count the belt first — if the belt is saturated, add a lane; if it is not, the machines upstream are the bottleneck, and the P production screen shows which one stopped first.])

=== Megabase Blocks: The Architect's Capstone

Everything in this chapter converges on the city block: a megabase built from identical, repeatable, self-contained cells, each served by rail and by its own robot network, orchestrated by circuits. This is where the Architect's mandate — 'good enough is a failure state' — actually pays off, because a block layout you design once is a layout you stamp a hundred times.

*The block.* A *city block* is a square of rail tracks — 100x100 tiles with a four-lane rail ring (two in, two out) around it, signals on every side, and a station (or pair of stations) inside. Inside the ring sits one production task: a smelting column, a circuit plant, a science cell. The block's station is its mouth — 'Iron In', 'Steel Out' — and its train limit is the throttle. Because every block is identical, expanding means stamping another block and naming its stops; the rail ring connects them all with no new design work.

*The cells inside.* Each block is split into a *belt-fed core* and a *robot-served fringe*. Heavy flows — plates off the train, bulk intermediates — move by belt within the block; high-mix logistics (repair packs, modules, science intermediates) are handled by a small local robot network. A requester warehouse feeds the assembly core; a provider warehouse swallows its output. The block is self-provisioning: it requests its inputs, provides its outputs, and the robot network settles the internal accounts — the *Warehousing Mod* and the whole logistics chapter working at scale.

*The network glue.* The blocks talk to each other by train and by circuit. A train limit on each station plus circuit-enabled stops (the enable-by-threshold build from the circuits chapter) keeps trains from flooding a full block, and Cybersyn can elevate that to fully automatic dispatching: providers and requesters negotiate by signal, and a pool of trains at a depot answers demand. On top of it all, the *Circuit HUD* pins each block's key signals — buffer levels, station status, robot counts — to the screen, so a megabase of a hundred blocks is watched from one place instead of walked.

#callout("Tip:", [Design the block *once*, blueprint it, and treat it as frozen. The entire point of a city block is that you never redesign it: the rail ring is standard, the stations are standard, the internal lanes are standard, and the only thing that changes between blocks is which machines sit inside. When a block becomes a bottleneck, do not rebuild it — stamp a second block doing the same task and let the rail network and train limits share the load.])

#callout("Warning:", [The megabase fails in three predictable ways, all of them train problems: junctions that cannot fit the longest train (deadlock), stations with no train limit (trains piling up on the main line), and a single giant robot network (robots flying across the whole map). The fixes are the ones this chapter already gave you — chain signals before every crossing, a limit of one train per station until proven, and small local bot networks — so treat those three as the checklist every block must pass before it is stamped.])

=== The Architect's Roadmap

The whole wave, one glance.

1. *Reorganize onto the bus.* Lay a 4-iron, 4-copper, 2-green, 2-steel spine with dedicated pull-offs. This is *The Bus*.
2. *Make the rails a network.* One-way pairs, stop names, train limits, chain signals on every junction. This is *Trains*.
3. *Teach the factory to think.* Wire one real circuit — a chest, a decider, a train stop — then another. This is *Circuits*.
4. *Deploy the robot layer.* Low-mix logistics to bots, bulk to belts, a warehouse on each end of the busiest requests. This is *Logistics Robots*.
5. *Module the core.* Productivity in the machines, speed in the beacons, efficiency on the drills. This is *Modules & Beacons*.
6. *Bank some quality.* Run one small upcycling loop for legendary machines and modules; leave the rest normal. This is *Quality*.
7. *Do the math.* Pick a science goal and run the rate formula end to end — belts, assemblers, miners all counted. This is *Rate Mathematics*.
8. *Stamp the capstone.* Design one city block, blueprint it, and grow the megabase by copying it. This is *Megabase Blocks*.

Each step leaves a system that keeps working while you build the next one — the Architect's factory scales one honest layer at a time, and every layer you add now is one you will never have to tear down.
