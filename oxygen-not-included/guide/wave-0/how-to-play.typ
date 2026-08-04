#let callout(title, body) = block(
  fill: rgb("#f5efe2"), inset: 8pt, radius: 4pt,
  stroke: 0.5pt + rgb("#1fa2a0"),
)[*#title* #body]

== Wave 0: How to Play

Three rookie duplicants wake in a cramped escape pod with a single mandate — make air, make food, make water, and survive the first hundred cycles. This chapter teaches the whole first breath: how to control the game, read the interface, and keep three newbies alive until the colony runs itself. Everything here describes vanilla Oxygen Not Included; Wave 0 installs no content mods, and the few mods in the Modlist chapter only make the game easier to see, operate, or plan.

=== The First Breathe's Roadmap

Before the keybindings, here is the whole wave in one glance — four milestones, each building on the last:

1. *Survive the first day.* Pause, dig a little breathing room, put down an outhouse, a wash basin and a cot (*Your First Minutes*).
2. *Stabilize air, food and water.* An *Oxygen Diffuser* burning algae, a small *mealwood* farm, and a plumbing loop that recycles polluted water (*Oxygen & Water Production*, *Food & Farming*, *Plumbing & Sanitation*).
3. *Earn your first research.* A *Research Station* turns dupe labor into science points, and science unlocks every machine above (*Research*).
4. *Ride out the hundred cycles.* Power without a dupe on the wheel, priorities that keep everyone busy, a hatch ranch feeding the colony and the coal generator (*Power & the Electric Grid*, *Duplicants*, *Critters*).

Winning Wave 0 means *stable*, not thriving: oxygen holding, calories climbing, water cycling, no one in the med bay. When those systems run on their own, the hundred cycles are earned — and every later wave just makes that stability bigger.

=== Controls & Keybindings

Oxygen Not Included is a colony simulator: you do not steer a character, you command a colony — choosing a tool, pointing it at the map, and letting the duplicants work. The defaults below are what the game ships with; everything is remappable in the settings.

#table(
  columns: (1fr, auto),
  inset: 4pt,
  align: (left, left),
  [*Action*], [*Input*],
  [Pan the camera], [WASD or arrow keys],
  [Zoom], [Mouse wheel],
  [Pause / unpause], [Space],
  [Game speed], [1 / 2 / 3 (or the on-screen buttons)],
  [Open the build menu], [Right-click, or the build toolbar at the bottom],
  [Priority overlay], [P],
  [Cancel the current tool], [Esc],
)

*The mouse does the rest.* Left-click selects or inspects, right-click cancels, and clicking and dragging on the map *drag-selects* a group of duplicants to command at once.

*Digging and building.* The bottom build menu holds every tool and building by category — Oxygen, Plumbing, Power, Food. Select *Dig* and click or drag to mark excavation; select a building and click to place, or drag to queue several. Green means the job can be done now; red means blocked, and it waits until the obstruction clears.

*Priorities.* Press *P* for the priority overlay, then click or drag over tasks and buildings to set them 1 (ignored) to 9 (urgent) — higher numbers get worked first, exactly what you need when the oxygen is running out.

#callout("Tip:", [Space is the most important key in the game. Pause, read the alerts, queue a handful of orders, then unpause and watch. New players who refuse to pause are always one disaster behind.])

=== The Interface Tour

The whole HUD is a few panels, and each answers one question:

- *The top bar* is your colony's vital signs: the cycle clock, and a portrait strip of your duplicants — each portrait shows that dupe's oxygen, calories and stress. When someone is suffocating, starving or about to snap, it tells you first.
- *The build menu (bottom)* holds every tool and building by category; the *Dig* and *Mop* tools sit here too.
- *Speed and pause*: pause, then 1×, 2×, 3×. Pausing freely is the first skill — the game only moves when you let it.
- *Overlays*: icons that tint the map — light, heat, electricity, plumbing. The electrical overlay helps when something stops drawing power.
- *Notifications*: a ticker of events — "Wire overloaded", "Outhouse full", "Slimelung detected". Click an alert to jump to the problem; treat them as a to-do list.
- *Top-right tabs*: *Research* (flask) shows the tech tree; *Jobs* assigns roles; *Duplicants* manages priorities and skill points; the schedule clock splits the day into work, sleep and downtime.

Hovering anything — a building, a resource, a research card — shows a tooltip explaining what it is and what it needs. The game's documentation lives there; read it whenever a building surprises you.

=== Your First Minutes

The opening checklist, in order. Do not rush it — pause, do each step, check the result.

1. *Pause.* Hit Space and look at what you have: three duplicants, the pod, a small pocket of air.
2. *Dig a little breathing room.* The pod pocket is cramped — mark a modest chamber, not a mine in every direction.
3. *Build an outhouse and a wash basin.* Put them close together and close to where the dupes work. Both need periodic emptying — the outhouse into a *Compost*, the basin by hand — because a full outhouse stops working and dupes start using the floor.
4. *Set up sleeping.* Build a *Cot* for each dupe in a quiet corner. Floor-sleepers wake with a sore back, and tired dupes work slower and stress faster.
5. *Set priorities.* Open the *Duplicants* tab and split the tasks — one digger-heavy, one builder, one researcher — so they are not all digging while nobody researches.
6. *Start research.* Build a *Research Station*, assign a dupe with research priority, and queue *Basic Farming* first so planter boxes unlock (see *Research*).
7. *Unpause and watch.* Let the first jobs complete. Whatever the alerts complain about next is your next job.

=== Oxygen & Water Production

Air is the first problem and the one that never goes away. The pod's pocket is breathable, and the rocks you dig up hold oxygen too — but three duplicants breathe it down fast.

*The Oxygen Diffuser.* Build one, connect power, and feed it algae — it converts algae into oxygen, your first real oxygen source and the workhorse of the whole wave. It needs *algae*, a sandy-looking resource in the starting biome, and it gives off a little heat while it runs.

#callout("Warning:", [Algae looks plentiful and is not. The Oxygen Diffuser eats it steadily, and a base that runs out of algae suffocates quietly. Watch the stockpile in the top bar's resource panel and treat a falling algae line as an emergency, not a curiosity.])

*Carbon dioxide pools at the bottom.* CO2 is heavier than oxygen, so it sinks into the lowest spots of your base and slowly suffocates anyone working low. Keep the low points open so CO2 has room to pool harmlessly.

*Polluted oxygen.* Polluted water and polluted dirt off-gas *polluted oxygen*: foul but breathable, and a sign of decay. A little is tolerable, but it carries germs — do not let it become the colony's air supply.

*Water.* Your starting supply is the clean pool in the starting biome. Dupes drink from open water, and if the only nearby pool is polluted they drink that and get food poisoning — keep polluted water away from where they drink. The *Water Sieve* later (see *Plumbing & Sanitation*) turns it back into clean water.

*Electrolyzers.* A larger machine splits water into oxygen and hydrogen and makes a *lot* of air — but it also makes hydrogen you must manage and draws real power. That is Wave 1's topic; for the first hundred cycles, algae is your air.

=== Food & Farming

Calories come next. Your pod starts with a small ration of *meal lice*, enough for a few days — your buffer, not your plan.

*Meal lice and mealwood.* Meal lice is the raw food; *mealwood* is the plant. Unlock the *Planter Box* (Basic Farming research), build a small farm, plant mealwood, keep it watered, and it steadily produces meal lice. A handful of plants feeds three dupes.

*Cooking.* The *Electric Grill* cooks raw food into better food: *Pickled Meal* from meal lice keeps far longer than raw — the difference between food that keeps spoiling and food you can stockpile. The *Microbe Musher* mixes meal lice and water into *Liceloaf*, a better meal, once you have water to spare.

*Spoilage.* Food rots over time; raw spoils quickly, cooked and pickled lasts much longer. Store food in a *Ration Box* early, later in a powered *Refrigerator*. Rotten food is useless, so eat the old food first.

*Ranching.* Later, farming grows a second leg: hatches, covered in *Critters: Hatch Ranching Basics*. For the first sessions, plant mealwood and cook.

=== Power & the Electric Grid

Almost everything that keeps the colony alive needs watts, and watts do not appear by themselves.

*The hamster wheel.* The *Manual Generator* produces power while a dupe runs it — labor. Every watt costs a dupe who could be digging or researching; fine for a light or a pump, a treadmill trap for a whole base.

*The coal generator.* The *Coal Generator* burns coal — which you dig up everywhere — for steady, dupe-free power, and it is the wave's main generator. It produces heat and carbon dioxide, so give it a ventilated spot and keep a coal stockpile beside it.

*Wires and capacity.* Every circuit has a limit. The standard wire overloads at roughly 1,000 watts of simultaneous draw — cross that and the wire takes damage, shorts, and can burn the circuit out, machines included. Spread high-draw buildings across separate circuits, or upgrade the wire when you have the research.

#callout("Warning:", [A wire that overloads takes damage and can burn, dropping the whole circuit — and the Oxygen Diffuser on it — at the worst possible moment. Open the electrical overlay (the circuit icon), and when a circuit shows more than its rated load, split the consumers before the wire sparks.])

*Batteries.* Generators produce in bursts; *batteries* (the *Small Battery* early, the *Jumbo Battery* soon after) store the surplus so a dip in generation does not dip the colony's power.

*Why power matters.* Pumps, the diffuser, the grill, later research machines — every self-sufficient system needs electricity. When the colony stalls and nothing seems broken, check the power first: a dead wire, an empty coal pile, a dupe who stopped running the wheel.

=== Plumbing & Sanitation

Sanitation is the difference between a colony and a plague house — and the first place liquid *pipes* earn their keep.

*Outhouses and wash basins.* The outhouse needs no water: a dupe uses it, and a dupe empties it into a *Compost* when full. The wash basin — right by the outhouse door — is where dupes wash; it collects polluted water a dupe empties by hand. This unplumbed pair keeps early germs down with zero pipes and power; keep the emptying jobs on someone's priority list.

*Pipes.* Later you graduate to *Liquid Pipes*: clean water in, polluted water out. Pipes are where plumbing goes wrong — a leak or dead end quietly floods a floor, and dupes wading in polluted water get sick. Check the plumbing overlay when something floods.

*The sieve.* The *Water Sieve* closes the loop: feed it polluted water plus a filtration medium — sand is perfect, and you dig up sand constantly — and it returns clean water, plus a little polluted dirt. It turns a sewage problem into a water supply.

*The classic bathroom loop.* Build a *Lavatory* (a plumbed toilet): pipe clean water in, the polluted water out to the sieve, and the sieve's clean output back. One catch: a lavatory puts out a little more polluted water than it takes in, so the loop slowly makes a surplus — pipe it into a *Liquid Reservoir* near the farm or the base will flood, and never let the loop dead-end.

*Don't drown your dupes.* Plan the whole loop before you place a single pipe — the source, the pump (if any), the sieve, and somewhere for the surplus to go. A pump with no pipe does nothing, and a pipe with no destination floods.

=== Duplicants: Needs, Priorities, Skill Points & Morale

The colony is three individuals with opinions, and managing them is half the game.

*What a dupe needs.* Every duplicant needs, in rough order of urgency: *oxygen* (they hold their breath a while, then suffocate), *calories* (they eat a couple of times a day), *sleep* (a cot, not the floor), a *bathroom* (a desperate dupe uses the nearest water — including a polluted pool, which poisons them), and *comfort*: acceptable temperature, some decor, time off. Unmet needs push *stress* up, and high stress makes dupes vomit, melt down, and wreck the base. Watch the stress bars the way you watch the oxygen.

*Priorities.* Priorities exist at two levels. In the *Duplicants* tab, each dupe ranks task types — Digging, Building, Researching, Operating — deciding what they prefer. On the map, the *priority overlay* (P) sets how urgent a specific task is. A dupe with Researching maxed and a Research Station marked priority 9 will be at the lab before anyone digs. The beginner trap is setting everything to 9 — when everything is urgent, nothing is.

*Jobs.* The *Jobs* tab turns skill points into roles — Rancher, Digger, Miner. Assigning a role costs skill points and raises the dupe's *morale expectation*, but it is how three generalists become three specialists.

*Skill points.* Dupes earn experience from working and gain a *skill point* when they level up. Spend them where their priorities already point — a dupe who never researches is a wasted researcher.

*Morale.* Morale is a dupe's contentment, raised by decent food, decor, a comfortable bed, and downtime. The catch: every skill point spent raises the dupe's *morale expectation*, and when expectation climbs above morale, stress climbs with it. Raise morale first — better food, a painting, a proper schedule — then spend the points.

#callout("Tip:", [Treat morale as a budget. Before you spend a dupe's skill point, check that their morale can cover the higher expectation — spending points faster than you can raise morale is the fastest route to a stressed, vomiting colony.])

*The schedule.* The schedule tab splits the day into *work*, *sleep*, and *downtime* — when dupes eat and relax. Too little downtime and morale falls and meals get skipped; a generous block beats a maximum-work schedule that burns everyone out.

=== Critters: Hatch Ranching Basics

The starting biome is home to *hatches* — plodding, harmless, round rock-eaters — your gateway to ranching and the only ranch you need in Wave 0.

*What they eat.* Hatches eat raw minerals: the *sedimentary rock*, *regolith* and other loose rock you are digging up anyway. Your trash is their dinner.

*What they give.* A fed hatch produces *coal* (their waste, useful once you build a coal generator), *eggs*, and eventually *meat*. A ranch turns the rocks you mine into fuel and food at once.

*Taming.* Wild hatches become *tame* when fed over time, and tame hatches stay put, breed, and lay eggs reliably. The *Critter Drop-Off* rounds them into an enclosed room — the *stable* — so they cannot wander off.

*The ranch loop.* Put a *Critter Drop-Off* and a *Grooming Station* in the stable and assign a dupe the *Rancher* job. A groomed, tame population slowly grows; eggs hatch into more hatches or get cracked and cooked into omelettes. The coal feeds the generator, the meat feeds the colony — rocks in, fuel and food out.

Start with one or two hatches and a small stable — the only system in Wave 0 that pays back in three resources at once.

=== Research

Everything you are allowed to build is locked behind *research*, and at this wave research costs time and dupe labor, not resources.

*The Research Station.* Build it and a dupe operating it steadily produces *research points*. It needs no power — just a dupe who is not busy dying. One station and one researcher is the baseline; a second station doubles the pace.

*The early research order.* Pick what keeps you alive before what makes you comfortable:

1. *Basic Farming* — the Planter Box and mealwood, your food security.
2. *Plumbing* — liquid pipes and the *Water Sieve*, turning bathrooms and pollution into a water loop.
3. *Oxygen* — the *Oxygen Diffuser*, your first real oxygen production.
4. *Interior Decor* — paintings and plants, better morale for everyone.
5. *Power* — the *Coal Generator* and batteries, power without a dupe on a wheel.

A suggestion, not a law — every asteroid is different — but food, air, and water always beat cosmetics.

*Why research speed matters.* Every machine in this chapter sits behind one of those researches. A colony with an idle Research Station — no dupe assigned, or the researcher drafted for digging — stalls even with plenty of algae and coal. Once the basics are built, keep someone researching most of the time.

=== Common Beginner Mistakes

- *Heat creep.* Every machine — the diffuser, generators, the grill — bleeds heat into the base. A base that starts pleasant slowly creeps toward crop-killing heat if it is never considered. Do not panic in the first fifty cycles; do not ignore it either.
- *Running out of algae.* The diffuser is hungry and algae runs out faster than it looks. Mine it whenever you see it.
- *CO2 pockets.* Digging down without a plan traps your dupes in suffocating low pockets. Keep low rooms open so the CO2 settles harmlessly.
- *Over-expanding.* A big base needs light, power, cooling and dupes to maintain it. Grow one room at a time instead of mining in every direction.
- *Dupes sleeping on the floor.* Cots are nearly free; a floor-sleeper starts every day exhausted and stresses faster.
- *Ignoring morale.* Spending skill points while morale is low is the stress spiral. Keep the seesaw balanced.
- *Digging straight down into hazards.* Below the start waits the slime biome — slimelung germs, hot pockets, buried water. Dig down slowly and with an escape route.
- *Building pumps before understanding them.* A pump does nothing until it has power, a pipe to push into, and somewhere to send the liquid. Plan the whole line first.

None are fatal, and Wave 0 expects you to make all of them — that is what the hundred cycles are for. Fix each one as the alerts name it, and the colony gets stronger every time.

=== The First Breathe's First Session

If you want to close the chapter with your hands on the keyboard, here is one 15–20 minute sitting that touches every system and leaves the colony able to breathe on its own:

- *Minute 0–5:* pause. Dig a small chamber around the pod, place an *outhouse* and *wash basin* side by side, and build a *Cot* per dupe in the corner (*Your First Minutes*).
- *Minute 5–10:* build a *Research Station*, set one dupe's research priority high, and queue *Basic Farming*. Unpause and start digging (*Research*, *Duplicants*).
- *Minute 10–15:* once the Planter Box unlocks, build a small mealwood farm near your water and plant it. Build a *Manual Generator* and a *Small Battery* so you have a circuit ready to power the Oxygen Diffuser you are about to build (*Food & Farming*, *Power & the Electric Grid*).
- *Minute 15–20:* research *Oxygen* and build an *Oxygen Diffuser* on the battery circuit. Feed it the algae you mined, keep research moving with a second dupe, and empty the outhouse when the alert appears (*Oxygen & Water Production*, *Plumbing & Sanitation*, *Duplicants*).

*Checkpoint:* the colony can breathe on its own — the diffuser runs, the research station is busy, food is growing, the outhouse loop is staffed. That is the first stable breath, and the definition of winning Wave 0's first session. Stop there; everything after is the same loop, just bigger.
