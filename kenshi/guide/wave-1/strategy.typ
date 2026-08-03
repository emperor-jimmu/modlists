#let callout(title, body) = block(
  fill: rgb("#f7e8d8"), inset: 8pt, radius: 4pt,
  stroke: 0.5pt + rgb("#d97b3a"),
)[*#title* #body]

== The Outlander: Strategy

Wave 0 ended with you leaving The Hub — a few hundred cats richer, a recruit or two by your side, and the survival loop running on muscle memory. Wave 1 is the next rung up the ladder: leaving the town's walls behind and building a home of your own. This chapter is the strategy for that leap — how to read the land, lay out an outpost that can grow, feed people, dig up stone and iron, and survive the first time somebody decides your outpost should not exist. The mods in this wave make survival and settlement richer, not easier; every card in the mod sections exists to deepen the problem, not to solve it for you.

The single most important thing to internalise is that an outpost is a *declaration*. The moment your buildings form a town, the world notices. You stop being a wanderer to be robbed and become a settlement to be taxed, prayed at, and raided. Everything in this chapter flows from that fact: you build walls because raids exist, you farm because food has to come from somewhere, and you choose your land carefully because what the land gives you decides how hard the first year will be.

#callout("Warning:", [Do not build your first outpost until your squad can beat a starving-bandit pack cleanly, you have a few thousand cats in reserve, and at least one character can carry their own weight in Building Materials without crawling. An outpost is a *commitment* — the moment it exists, the game starts sending you bills.])

=== Reading the Landscape

A base site is a bundle of resources, and Kenshi's *Prospecting* action is how you read them. Have a character with some *Science* use Prospecting on the spot you are considering, and the results screen gives you the environment and four resource values you actually care about:

- *Environment* — which soil type the zone is on (Arid, Green, or Swamp). The environment is fixed per zone, and it sets a hard ceiling on what you can farm there.
- *Water* — how efficiently *wells* will draw. The wiki notes that, broadly, lower elevation means higher water, which is why valley floors and riverbanks prospect better than ridgelines.
- *Fertility* — how efficiently *farms* will grow crops. This is the number that decides whether your first wheatstraw field is a larder or a graveyard.
- *Stone* — how efficiently *stone mines* will produce building stone.
- *Iron* — how efficiently you can mine *raw iron*, and it also shows you where the iron outcrops sit on the prospecting map. Copper appears on the same map when you toggle it.

Read the whole map, not just your own spot. The site you build on matters, but the site you build *near* matters just as much: a base a day's walk from a trading town is a different beast from one planted in the deep wilderness. Fertile land near a town means you can sell surplus crops; deep land with high ore means you will haul every loaf in yourself.

#callout("Tip:", [Prospect at least three candidate sites before you commit a single Building Material. Kenshi has no "undo" for a bad base — you can move, but dismantling and rebuilding an outpost costs days. Ten minutes of scouting is cheaper than a week of rebuilding.])

The wiki's own community guide names the classic early spots, and each one teaches a different lesson:

- *Shem* — "the promised land" to the veterans: big deposits (100 iron, 80 copper on many sites), wide flat ground for a town that will grow, and fields of high-richness stone. It is also home to roaming Garru and Beak Things — free meat and skins, and a danger to a weak squad.
- *Okran's Pride* — fertile, safe, and well-guarded by roving Holy Nation paladins, which makes it the classic "safe" early base. The catch is the prayer day: the Holy Nation will visit your outpost and expects everyone home, and passing sentinels take issue with any non-humans working there.
- *The Border Zone / Howler Maze belt* — near the familiar ground of The Hub, with decent copper and iron, and the same lawlessness you already know how to survive.

#callout("Warning:", [Never build in a faction's territory without understanding the faction. The Holy Nation visits with Prayer Day, the United Cities with tax men, the Shek Kingdom with tribute rounds, and the Hounds with plain extortion — the wiki documents all four as outpost visits. Pick the landlord you can live with before you pick the view.])

Proximity is part of the deal too. The wiki's raid page ties raids to distance: a base planted near the camps of hostile factions invites their attention, and the closer you sit, the more often they come calling. That is not an argument for building far from everything — it is an argument for knowing who your neighbours are *before* you build. A base near Starving Bandit camps gets starving-bandit raids; a base near nothing gets nothing, and also no trade, no bounties and no safety net. Choose the radius, do not stumble into it.

=== First Outpost Layout

Start smaller than you want to, and make room for what comes next. The first outpost is not your forever city; it is a farm and a workshop that earns the money and food to build the real thing. The build menu is organised into categories — Buildings, Camping, Crafting, Defence, Farming, Food, Interior, Lights, Mining, Power, Storage, Tech, Training, and Walls — and you will touch almost all of them in the first month, so leave clear lanes between buildings for the walls you will add later.

A footprint that scales, in order of construction:

1. *A well, on high water.* Water first, because everything — farms, cooking, your own thirst — runs on it. The wiki is blunt: "a vital source of water, you won't last long without it." Prospecting found the spot; build the well there, not where the flat ground is.
2. *One or two farms, on high fertility, matching your environment.* At first the only crop that matters is the one that grows well where you are. A farm needs a worker and a water supply — set a *Work* job for the field and an *Auto-haul* job to carry water from the well to the farm's storage.
3. *A stone mine and an ore store.* Stone becomes Building Materials, which becomes every wall you will ever place. Iron and copper become your income. Put their storage boxes close to the mines — hauling time is the real cost of an outpost.
4. *Sleeping quarters and a fire.* A building shell to shelter your people and a campfire or stove to turn raw food into meals. Beds multiply healing, which matters the moment the first raid happens.
5. *Leave a ring of empty ground.* The single most expensive mistake in base building is filling your footprint before you need it. Walls want space, and a wall that has to be squeezed around already-built structures is a wall with holes in it.

#callout("Tip:", [Farms can be upgraded in place — a Small farm becomes Medium becomes Large, and crops still in the field count toward the upgrade. Build your farms small and cheap on day one, then upgrade them as your farming skill and water supply grow. The wiki confirms upgrades carry over the crops still planted.])

#callout("Warning:", [An outpost with no walls and no gate is a buffet. The wiki's own outpost guide warns that until you build walls and a gate, wild animals and bandits will "constantly harass you." Build the well, the farms and the mines on day one, but schedule the walls before the end of the first month — not after the first night they were needed.])

=== Walls, Gates & Defense-in-Depth

Walls are the difference between an outpost and an invitation. The research chain is short and mandatory: *Makeshift Walls* first, then *Defensive Walls*, which the in-game description sums up as "solid walls that we can actually stand and build turrets on." Defensive walls let you mount turrets, and from that moment your wall stops being a delay and becomes a weapon platform.

Defense-in-depth for a growing outpost, in layers:

1. *The wall itself.* A continuous ring with no gaps, built on the flat lanes you reserved. Gap-free matters more than thick: raiders path through the first opening they find.
2. *The gate.* The gate is the weakest point on purpose — raiders break gates down, so the gate gets the most turrets and the most guards. The wiki's raid description has raiders literally "breaking down gates" to get in, which is why every gate in your wall should be covered by fire.
3. *Turrets on the wall line.* After Defensive Walls, put turrets on the wall segments beside the gate and on corners. A turret on a wall sees raiders approach while they are still out of melee range.
4. *A kill lane.* Keep the ground just inside the gate clear of buildings, so anyone who breaks through lands in open ground where your gunners and heavies can meet them — not in your farm.
5. *Water as a moat.* The wiki's community guide notes that water can act as an excellent defensive measure if you build around it, "forcing hostiles to swim and slowing them down." A base tucked against a pond or river needs fewer wall segments for the same defense.

#callout("Tip:", [Build the gate first, not last. A gate alone with walls still under construction gives you a chokepoint to defend while the rest of the ring catches up — and a chokepoint beats an open field every time.])

#callout("Warning:", [Walls do not stop everything. The wiki's guide warns that some animals — Beak Things are the famous example — "can get stuck on and sometimes phase through any defensive walls you build." A wall slows most raiders and stops most bandits, but it is not a force field. Keep your gate shut, keep someone awake, and keep your best fighters near the wall line, not in the kitchen.])

=== Food Production: Farming vs Hunting vs Trade

Every mouth in your outpost eats, and food comes from three places — farming, hunting, and trade. The right mix depends on your land, and reading the land correctly is what makes the difference between a food surplus and a famine.

*Farming* is the backbone, and it is the most land-dependent. Kenshi has six farmable crops — Cactus, Cotton, Greenfruit, Hemp, Riceweed, and Wheatstraw — and each grows only in certain environments. The wiki's environment table is worth memorising in its essentials:

| Crop | Arid | Green | Swamp |
|---|---|---|---|
| Cactus | 100% | 0% | 0% |
| Cotton | 0% | 100% | 0% |
| Greenfruit | 0% | 100% | 0% |
| Hemp | 40% | 100% | 100% |
| Riceweed | 0% | 0% | 100% |
| Wheatstraw | 50% | 100% | 0% |

Every farm also needs a worker and a *water* supply, and growth rate depends on the site's fertility on top of the environment. The practical read: on arid land (most of the Border Zone), Cactus and Wheatstraw are your food crops; in Green zones you can grow anything except cactus and riceweed; in the Swamp, Riceweed and Hemp are king. Cotton feeds nothing directly but becomes fabric, and Hemp becomes textiles and hashish — both are cash crops as much as food crops.

There is an escape hatch, and it is a late-game one: *hydroponics*. The wiki's hydroponics pages are specific about the cost — Research Bench V and an AI Core to unlock the tree, then Ancient Science Books for each crop you want to grow indoors. Hydroponic farms ignore environment and fertility entirely, which is the long-term answer to the resource table above: a swamp lord or desert hermit who gets tired of growing only what the land allows can, eventually, grow anything anywhere. That is not a Wave 1 priority — the AI Cores alone put it out of reach for a first-year outpost — but knowing it exists changes how you read your land. The environment is not a cage; it is a timetable.

*Hunting* is the protein your farms cannot provide quickly. Garru, wild bulls, bonedogs and (carefully) Beak Things drop meat and skins; the wiki's outpost guide highlights roaming animals as "free meat and skins" in several recommended start areas. Hunting trains combat stats while it feeds you, but it is dangerous and unpredictable — a food plan that relies on hunting is a food plan that can have a very bad week.

*Trade* is the backstop. Food can always be bought in towns, and the wiki notes that price randomization means deals vary between shops. An outpost near a town can sell its surplus crops and buy what its land cannot grow; a deep-wilderness outpost must be self-sufficient or die proud. The classic pattern is: farm a staple, hunt the meat, and trade only the difference.

#callout("Tip:", [Farming skill matters more than field size. The wiki's farming page warns that untrained farmers "waste many crops and will likely lead to a food shortage." Train your farmers cheaply first: work the town farms of a nearby settlement for free — the wiki confirms nobody minds, the crops you take have no stolen tag, and with no outpost you face no raids. When your farmer is skilled, *then* plant your own fields.])

#callout("Warning:", [Do not plant a field that outruns your water. Farms consume water every growth cycle, and a well on low-water ground will not keep up. Build the well on the prospected water first, upgrade it to Well II and III as the fields grow, and only plant as much as the well can actually water.])

=== Stone & Iron Logistics

Your outpost runs on stone and iron as much as on food. Stone becomes Building Materials — every wall, gate, turret and building shell consumes them — and iron and copper become both your income and your future weapons. The logistics of moving raw ore around are the hidden workload of base building, and jobs are how you automate it.

The wiki's prospecting page separates the two resources cleanly: *stone* measures how efficiently *stone mines* produce, and *iron* measures how efficiently you mine raw iron, with the map showing you where the outcrops sit. Both are mined with the *Labouring* skill you already trained on copper in The Hub — an outpost turns that first-wave skill into a full-time job.

The flow to automate, in job terms:

- *Mining* — a *Work* job on the stone mine and the ore outcrops. One worker per node, on repeat.
- *Hauling* — an *Auto-haul* job carrying the raw ore and stone from the machine to the storage box next to it. The wiki's jobs list describes auto-haul exactly: characters carry items to the related storage building from their inventory, the ground, or the machine itself.
- *Processing* — a second Work job turning stone into Building Materials and raw iron into iron plates at the appropriate workbench. This is the step that turns rocks into walls.

#callout("Tip:", [One miner, one hauler, one processor is a complete economic cell. Three jobs, three characters, and a pile of stone that grows while you are off trading. Add storage boxes as the bottleneck moves — the bottleneck in every outpost is almost always hauling distance, not production.])

#callout("Warning:", [Storage boxes that sit too far from the mine double your hauling time and your hauler's hunger. Put the ore store beside the mine and the finished-goods store beside the workbench, and let the hauler run a short loop, not a marathon.])

=== The Outpost Job Board

An outpost only works when the work runs without you. The wiki's jobs page is precise about the system: jobs are an ordered command list — set them up with Shift+right-click — and a character works top-to-bottom, skipping to the next job when the current one can't be done, and returning to it when it can. That behaviour is the whole engine of a self-running outpost, and it rewards you for designing job lists the way you design walls: with fallbacks.

The job types matter as much as the order. *Work* jobs keep a station manned (mining, farming, crafting). *Auto-haul* jobs carry items from the machine, the ground, or the character's own inventory to the related storage building — the wiki describes it exactly that way, which is why a well placed next to a farm with an auto-haul to the field's storage waters it without a single click. *First Aid / Medic* and *Collection* round out the list, and a medic job on your weakest character is worth more than a third wall segment.

A healthy outpost job board, in order:

1. *Auto-haul (well to farm storage)* — water, non-negotiable, runs all day.
2. *Work (field)* — the farmer tends the crops.
3. *Work (kitchen)* — cook what the field brings in.
4. *Work (mines)* then *Work (workbench)* — ore to plates, stone to Building Materials.
5. *First Aid / Medic* — on every character; the job list skips it until someone is hurt, and then it is the difference between a wound and a funeral.

#callout("Tip:", [Give every fighter a medic job as their *last* priority. The list skips down to it only when no one needs rescuing, so the job costs you nothing in peacetime and saves the squad in the one minute it matters. Wave 0 taught you to bandage; the job board just makes it automatic.])

=== Managing the First Raid

The first raid is not a failure state — it is the moment the outpost stops being a construction project and becomes a settlement. Kenshi's raids are *territorial events*: the wiki's raid page documents that raids trigger when your base sits near the camps of hostile factions, with the chance scaling with proximity. A base in the Border Zone earns its place in the world; the Starving Bandits, Dust Bandits, or Black Dragon Ninjas will come to collect.

Raid behaviour is predictable once you know what to expect. Raiders assault your base in squads, and the raid description has them give a speech before "ordering the attack to begin, breaking down gates, attacking characters." They path to the gate, they break it down, and they flood through the kill lane. That predictability is the whole point of defense-in-depth: the raid arrives at the gate, and the gate is where you have the turrets, the gunners, and the heavies.

Scale scales. The wiki's raid page documents a mid-game example — the Band of Bones, who assault bases with two to four squads of four to seven raiders each — and the numbers matter for planning: a squad of that size is a fight, not a skirmish, and it arrives as *waves* rather than a single push. Small raids are single squads; the number of squads and the numbers in them both grow with your settlement's footprint. Your first raid is usually manageable; your tenth raid, on a richer outpost, is a small army that expects to win.

On top of the armed raids come the *visits*: tax men from the United Cities, prayer days from the Holy Nation, tribute rounds from the Shek Kingdom, and extortion from the Hounds. The wiki's outpost guide is specific about the options: you can respond to these squads in a way that avoids conflict, or you can refuse — in which case "they might be immediately attacked, or the squad will retreat with the promise of returning with an army." Paying the tax is cheaper than fighting the army, when the tax is affordable.

#callout("Tip:", [Let the first raid come to the gate. Do not chase raiders across the countryside — every bandit you fight at the wall is one your turrets softened first. Fall back inside, hold the kill lane, and let the raid break itself against the gate while your gunners work.])

#callout("Warning:", [Raid size tracks your settlement's reputation. A tiny two-building shack earns small, disorganised raids; a rich, sprawling city attracts proper armies. Grow your walls and your squad at the same speed, or the first time the world notices how big you have become will also be the last time you underestimate a raid.])

#callout("Tip:", [After the fight, the wounded heal eight times faster in beds than standing around, and unbandaged cuts bleed out while you celebrate. Bandage first, drag the heavy casualties to beds, and only then loot the corpses and check what the raiders dropped. Wave 0's rules still apply — the difference is now you have a home to defend.])

=== The Outlander's First Year

The arc of Wave 1 is the arc of building something permanent in a world that does not want it. It will not go to plan, and that is the plan.

*Month one — the foothold.* Prospect, choose your land, and build the five-item footprint: well, farms, stone mine, ore storage, and a place to sleep. No walls yet — you are too small to attract armies, and the animals you can handle. Your goal is a single full food cycle: plant, water, harvest, cook, eat. Until that loop closes, you have an expensive camp; once it closes, you have an outpost.

*Months two and three — the ring.* Research Makeshift Walls, then Defensive Walls, and build the ring around the footprint. Your first genuine raid likely arrives in this window — probably from whoever owns the nearest camps. Let it come to the gate. You will lose people, or nearly; bandage, bury, and learn why the raid found you, because the answer is usually "your base is big enough to matter now."

*Months four through six — the economy.* With the ring up, expand production: more farms, a proper workshop, a surplus of stone and food. Trade the surplus to nearby towns, buy the seeds and blueprints your land cannot produce, and hire. A settlement that only feeds itself is a farm; a settlement with a surplus is a town.

*Months seven through twelve — the choice.* By the end of the first year the outpost runs without you micromanaging it — jobs drive the mines, the fields and the storages, and the raids are routine. Now the world starts offering the deeper questions: the faction that keeps taxing you, the ruins just over the ridge, the forge that wants a smith. That is where Wave 1 hands off to the next chapter: a survivor who built a home, about to decide what to make of it.

#callout("Tip:", [Nothing in Kenshi forgives you for not writing things down — the game remembers for you, in the bodies you bury and the walls you build. The outpost that survives its first year is the one whose owner treated every raid as tuition: each one told you where the wall was thin, which fighter was weak, and how much food you needed to hold out. Listen, and the second year is easy.])

#callout("Warning:", [Do not over-expand into debt. Every new building, recruit and farm is a mouth and a target. Kenshi's economy punishes the glorious over-reach exactly once, and that once is how many settlements the world needs. Grow the footprint, hold the ring, feed the mouths you have — the first year is about surviving your own ambition.])
