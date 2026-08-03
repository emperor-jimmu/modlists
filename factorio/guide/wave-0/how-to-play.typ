#let callout(title, body) = block(
  fill: rgb("#f2ede0"), inset: 8pt, radius: 4pt,
  stroke: 0.5pt + rgb("#e8590c"),
)[*#title* #body]

== The Castaway: How to Play

The survey ship *Nightjar* came apart over Nauvis and you are what survived: a burner drill, a stone furnace, a burner inserter, a wooden chest, and the engineer's instinct to bootstrap a factory from raw ore before the biters notice you. This chapter teaches everything a castaway needs, in the order you will actually need it: how to control the game and read the interface, how to survive your first minutes, how to automate the first machine lines, and then the whole bootstrap campaign — science, oil, rail, defense — that ends with the first rocket leaving the planet.

Everything here describes vanilla Factorio 2.0.77. Wave 0 installs no content mods; the seven mods in the Modlist chapter only make the game easier to see, easier to operate, and easier to plan.

=== The Castaway's Roadmap

Before the keybindings and the machinery, here is the whole wave in one glance — six goals that take you from crash site to rocket, each one building on the last. You do not need to follow them exactly; they exist so you always know what "progress" means next.

1. *Survive the first hour.* Mine by hand, build the burner loop, and reach electricity — one offshore pump, one boiler, one steam engine, and electric drills on coal and iron. This is *Your First Minutes*.
2. *Automate iron.* Belts, inserters and an assembling machine turn the smelting loop into a machine line that runs while you build something else. This is *Automation Basics*.
3. *Research red and green science.* Two assembler lines feeding labs unlock belts, inserters and automation 2 — the tools you will scale with. This is *Science Packs & Research*.
4. *Face oil.* Pumpjacks, a refinery and cracking deliver plastic and sulfur, unlocking chemical science and the whole mid-game economy. This is *Oil Processing*.
5. *Bring the ore to the base.* When the starter patches thin out, a train line hauls coal and iron from afar instead of a thousand belts. This is *Early Rail*.
6. *Hold the line, then fly.* Walls and turrets buy the peace you need to build the rocket silo and its three ingredient belts, and the satellite carries you home. This is *Biters & Defense* and *Launching the Rocket*.

Each goal is small enough to finish in one sitting, and each one leaves you with a machine that keeps producing while you move to the next. That is the whole trick of Factorio — the factory never sleeps, so neither does progress.

=== Controls & Keybindings

Factorio is a top-down factory simulator: you walk an engineer around, build machines, and the machines do the work. Almost everything has a keyboard default, and every one of them can be remapped under *Settings → Controls*. The defaults below are what 2.0.77 ships with.

#callout("Tip:", [Alt-mode is the most important toggle in the game. Press *Alt* once and every machine, chest and belt shows what it contains or produces on top of its sprite. New players who skip it are flying blind — press Alt before you do anything else, and never turn it off. In short, it shows every entity's recipe, contents and direction at a glance.])

#table(
  columns: (auto, 1fr, auto),
  inset: 4pt,
  align: (left, left, left),
  [*Category*], [*Action*], [*Input*],
  [Movement], [Move the engineer], [WASD],
  [Camera], [Zoom in / out], [Mouse wheel],
  [Camera], [Rotate the camera], [Hold Shift + mouse wheel],
  [Mining], [Mine a tile / entity], [Hold Left mouse (or F)],
  [Build], [Place the selected item], [Left mouse],
  [Select], [Pipette an entity (pick its item)], [Q],
  [Build], [Rotate / reverse-rotate a ghost], [R / Shift + R],
  [Build], [Copy an entity's settings], [Shift + Right mouse],
  [Build], [Paste settings onto entities], [Shift + Left mouse],
  [Build], [Place a ghost / blueprint], [Shift + Left mouse],
  [Build], [Blueprint library], [B],
  [Build], [Undo / redo last action], [Ctrl + Z / Ctrl + Y],
  [Inventory], [Transfer item stack quickly], [Ctrl + Left mouse],
  [Inventory], [Split a stack in half], [Ctrl + Right mouse],
  [Inventory], [Set an inventory slot filter], [Middle mouse],
  [Interface], [Open inventory & crafting], [E],
  [Interface], [Show info overlay (alt-mode)], [Alt],
  [Interface], [Toggle map], [M],
  [Interface], [Production statistics], [P],
  [Interface], [Logistics network view], [N],
  [Interface], [Quickbar slots], [1–0],
  [Interface], [Cycle quickbar pages], [#sym.tilde key (the key above Tab)],
  [Interface], [Debug / FPS overlays], [F4 / F5 / F6 / F7],
)

#callout("Tip:", [The mouse does most of the work. *Left-click* places what is in your cursor, *right-click* (with nothing selected) deconstructs a single entity, and holding *Ctrl* while clicking makes the stack transfer fast. When you are lost, press *Q* while hovering a machine — it puts that machine's item in your hand so you can build more of it without hunting through menus.])

#callout("Warning:", [Don't fight the copy-and-paste system. To replicate one assembler's settings across a row, *Shift + right-click* the original, then *Shift + left-click* (or drag across) the row — recipes, requesters and filters all copy. Hand-rebuilding ten identical machines instead of copying is the most common early time-waster.])

*The build tools.* Beyond placing entities directly, three tools do the planner's work and all live in the shortcuts bar or the toolbar:
- *Ghosts* — place a building you do not yet have the materials for (Shift + left-click) and it appears as a translucent outline that gets filled in later, either by you or by construction robots once you reach Wave 1. Ghosting a layout first means the factory is planned before it is paid for.
- *Deconstruction planner* — pick it up and drag it over anything to mark it for removal; deconstructing returns the materials, and in 2.0 the ghosts and markers can be placed straight from the map view too.
- *Upgrade planner* — drag it over a row of yellow belts and it replaces them with red belts (if you have them) in one gesture. This is how an early factory scales without being torn down.

#callout("Tip:", [The deconstruction planner doubles as the eraser for your own mistakes. Mark a mislaid line, walk away, and the engineers who return to a tidy site are not the ones who panic — deconstruction in Factorio is free and full-value, so there is never a reason to live with a layout you dislike.])

=== The Interface Tour

The whole HUD is built around a few panels, and once you know what each one tells you, the game opens up.

- *Toolbar / quickbar (bottom):* the hotbar of building items, split into pages. Pick a slot with the number keys or the #sym.tilde key to switch pages; whatever is in your hand, you place with Left mouse. The shortcuts bar at the far right holds the blueprints, deconstruction planner, and special tools.
- *Crafting menu (E):* the inventory and the hand-crafting list side by side. Anything you can currently craft is shown; click a recipe to craft one, *Shift + click* to queue five. The queue at the top-left keeps the list of things you are making.
- *Minimap (top-right):* a live satellite view of the world around you. Press *M* for the full map, where you can zoom, plot with ghost markers, and see radar range. Build a radar early — it reveals the map around your base so you can plan instead of guess.
- *Production statistics (P):* graphs of every item, fluid and energy source over time. When something is slowing down, P shows you exactly which line stopped producing — the castaway's best diagnosis tool.
- *Logistics network view (N):* the status of your logistic network — which chests are in it, what they hold, how many robots are working. Nothing uses this at Wave 0's start; it matters once construction and logistics robots arrive.
- *Alt-mode overlay (Alt):* recipes on assemblers, contents on chests, arrows on inserters. Keep it on. Always.
- *Tooltips:* hover anything — an entity, a recipe, a research card — and a tooltip explains what it is and what it needs. The game's entire documentation lives in these tooltips, and the wiki is the reference companion.

*Reading the factory.* Once the panels are familiar, learn to read them as a diagnosis. The *Production statistics* screen (P) graphs every item, fluid and energy source over time: a flat iron-plate line with hungry consumers downstream is a smelting bottleneck; a climbing power line that suddenly stops is a dead coal feed. The *Kills* tab shows how many biters you have cleared, which matters because killing spawners raises evolution. And the *alert icons* that flash along the top of the screen when something is under attack, out of ammo, or out of power are the factory telling you its problems in real time — a factory that alerts you about its own failures is a factory you can actually manage.

#callout("Tip:", [The minimap and the full map are your planning canvas. Press *M*, then right-click to drop a marker on the map — a reminder of where the iron patch you promised yourself actually is. Markers survive sessions and are the cheapest project tracker the game gives you (the *Todo List* mod in the Modlist chapter adds the human-readable version).])

=== Your First Minutes

Your starting kit — burner mining drill, stone furnace, burner inserter, wooden chest — is enough to leave the crash site and make the first iron that the whole factory will be built from. The loop you are about to build is the loop that never stops: *mine ore, burn fuel to smelt it, turn the plates into machines*.

*Mining by hand.* Walk to a stone, iron or coal patch — the black-ish rocks are coal, the brown ones are iron — hold Left mouse on a tile and the engineer chips it out. Everything you pick up lands in your inventory. Hand-mining is slow on purpose: it exists to motivate the machine that does it for you.

*The starter burner loop.* Place the *burner mining drill* on an iron or coal patch. A burner drill feeds itself: give it a little fuel once (any flammable item), and it will keep mining and eat from its own output while it runs. Put the *stone furnace* right where the drill's output tile lands, put coal in the furnace's fuel slot, and iron ore fed from the drill will smelt into iron plates automatically. The *burner inserter* and *wooden chest* complete the scene — the inserter pulls coal off the drill and pushes it into the furnace, and the chest holds overflow.

#callout("Warning:", [Burner machines are self-contained but hungry: a burner drill stops the moment its own fuel runs out, and if you let it eat the coal it is mining you get no coal at all. In the first minutes, mine a coal patch by hand into a separate stack before you trust the drill to fuel itself. The wiki notes the same caution applies to boilers — "if no power is being produced, then powered inserters fueling a boiler cannot operate", which is why the first boiler should be fed by a burner inserter.])

*Coal, furnace, steam power.* Before you build anything electrical you need fuel and power. The burner drill mines coal; the furnace burns it. The jump to electricity is the classic *boiler → steam engine* line: an *offshore pump* on a lake edge, one *boiler* beside it, and a *steam engine* beside the boiler. Boilers turn water into 165°C steam (a boiler produces 60 steam per second and burns a piece of coal roughly every 2.2 seconds); the steam engine turns it into electricity (900 kW per engine, 30 steam per second). The 2.0.7 ratio is two steam engines per boiler, and one offshore pump feeds up to 200 boilers. A single pump → 200 boilers → 400 engines is roughly 360 MW — far more than you will need for many hours.

*The first ten minutes, step by step.* If you want a concrete script rather than theory, here is one that works on almost any map:
1. Walk to the nearest iron patch and hand-mine a few stacks of iron ore while you scout for coal and a lake. Keep the coal patch in sight.
2. Place your burner mining drill on the coal patch and feed it one piece of fuel by hand — it now mines coal forever on its own.
3. Place the stone furnace on the coal drill's output tile, and the burner inserter between the coal drill and the furnace so coal flows into the furnace automatically. Drop iron ore into the furnace's input slot and it smelts while you work.
4. Hand-craft and place an *offshore pump* on the lake edge, a *boiler* right beside it, and a *steam engine* beside the boiler. Feed the boiler by hand once with coal (or let a burner inserter do it) — you now have your first electricity.
5. Craft *electric mining drills*, *assembling machines*, more *furnaces*, and the belts and inserters that connect them. From here the factory builds itself; you just keep feeding it goals.

#callout("Tip:", [The boiler must be fed even after it is running — a boiler that runs out of coal goes cold, and a cold boiler makes no steam. Until you have an electric miner belt-feeding it, keep a chest of coal and a burner inserter on it; the wiki is blunt that powered inserters "cannot operate" when no power is being produced, so the first boiler should always be hand- or burner-fed.])

*Hand-crafting vs machines.* Pressing *E* and clicking a recipe makes it by hand while you stand there. Hand-crafting is free and instant-on-demand, but it costs *your* time and it is capped at one queue. The moment you need more than a handful of something, the rule is: *build a machine that makes it automatically*. The *assembling machine 1* is the first of these — it crafts a recipe on its own as long as inserters keep it fed, and you are free to go do something else.

#callout("Tip:", [Your first electricity milestone: one offshore pump, one boiler, one steam engine, two or three *electric mining drills* on the coal and iron patches, and a line of stone furnaces. The moment the drills and furnaces are electric, the burner loop's manual feeding is over — you have graduated from castaway to apprentice.])

=== Power & the Electric Grid

Before the belts get complicated, one detour pays for itself all session: how electricity actually behaves. Everything electrical draws from the same *grid* — power poles carry the wires, machines connect within reach of a pole, and the grid feeds whatever is attached. Understanding the grid answers most of the "why is nothing working" questions of your first hours.

*Demand vs supply.* The grid only produces what is being used — steam engines throttle up and down automatically as demand changes. If demand exceeds what the grid can produce, every machine slows to a crawl (a *brownout*), and once the grid collapses it can be hard to restart. The fix is almost always *more generation*, not fewer machines: another boiler, another engine, or more coal reaching them. Click any pole to open the electric network panel and see the real numbers.

*Poles and reach.* Small poles cover a short radius and are the cheapest way to extend power; medium poles reach further, and substations come much later. Power does not flow through a gap — a pole line that skips a link blackouts everything beyond it. The smart-placement trick: hold left mouse and drag while placing poles and they auto-spread at their maximum reach, so a power line lays itself along your walking path.

*Steam vs solar.* At Wave 0, steam is the answer: it is cheap, burns coal, and works day and night. Solar panels only produce in daylight and *accumulators* store power for night — both are researched later and become the better economics for huge bases, but a steam line is what carries the Castaway. The ratio to remember: one offshore pump line (200 boilers + 400 steam engines) is about 360 MW, which is more than an early base will ever draw.

*The diagnosis, not the tool.* The exact tools to ration power deliberately (power switches, circuit control) arrive in Wave 1. What Wave 0 needs is the diagnosis: a factory where every machine runs at half speed and the electric panel shows "no power" is a generation problem, and the cure is always more boilers or more coal.

#callout("Tip:", [Keep a buffer chest of coal next to the boiler line. Boilers eat coal continuously — a piece every 2.2 seconds each — and the moment the coal belt runs dry, the power fails, the miners stop, and the coal belt stays dry in a nasty deadlock. A chest of coal on the line is the insurance that breaks the cycle.])

=== Automation Basics

Automation in Factorio means three machines working together: a *belt* carries things, an *inserter* moves things between them, and an *assembling machine* turns inputs into outputs. Understanding how these three behave is the entire game in miniature.

- *Transport belts* move items in one direction at a fixed speed — a yellow belt moves 15 items per second. Items sit on the belt waiting for a hand to pick them up. *Underground belts* dive under obstacles and *splitters* divide a belt into two, which is how one raw line becomes two demand lines.
- *Inserters* grab one item from behind them and place it in front of them. Point the green arrow at where it picks from, the yellow arrow at where it drops. A basic inserter swings a 90° arc every second or so; it can pull from a belt, a chest, or a machine, and push into any of those.
- *Assembling machines* hold one recipe each and craft it continuously while inputs arrive. The recipe is set from its panel (or copied with Shift + click). Assembling machine 1 is slow and handles only simple two-ingredient recipes — that is exactly what you need at Wave 0.

*Turning a manual loop into a machine line.* Take the red science loop as the worked example: an assembler needs *copper plates and iron gear wheels*. To feed it automatically, you build a line: a belt carrying iron plates past a gear-wheel assembler (an inserter pulls plates off the belt, the assembler makes gears, another inserter puts them back on a second belt), and alongside it a belt carrying copper plates. Feed both belts into a science assembler, and red science now produces itself while you do anything else. This "belt feeds assembler, assembler feeds belt" pattern is the DNA of every factory you will ever build.

*Belt patterns worth knowing.* Belts are simple, but three patterns carry most of a factory's traffic:
- *The supply line:* one belt carries a material past a row of consumers, and each consumer pulls what it needs with an inserter. This is how one iron plate belt feeds ten gear assemblers at once.
- *The crossing:* when two belts must cross, an *underground belt* dives under the other so neither line is interrupted. Never let one belt dump onto another by accident — a crossed belt is a corrupted belt.
- *The splitter:* a *splitter* divides one belt into two (or merges two into one). This is how a single smelter output becomes two separate demand lines, and it is the seed of the *main bus* that Wave 1 turns into an art form.

*A worked example — the gear line.* Iron plates on a belt, an assembler with the iron gear wheel recipe beside it, an inserter pulling plates in, an inserter dropping gears back onto a second belt running alongside. Two belts, one assembler, two inserters, one recipe copied from a neighbour. That is the smallest possible factory, and it is worth building by hand once so you can spot it instantly inside any bigger build — because the bigger builds are just the same cell repeated.

#callout("Tip:", [Read the arrows. Every belt, inserter, pipe and underground has direction arrows that show in alt-mode. A whole factory "not working" is, nine times out of ten, one inserter or belt pointing the wrong way — the *Bottleneck Lite* mod from the Modlist chapter turns a red dot onto the exact machine that is starved, which makes these fixes take seconds.])

#callout("Warning:", [Do not hand-feed assemblers from your inventory for long. An assembler that is fed by *you* stops every time you walk away, and walking away is the whole point of a factory. If a machine line needs an item, build a belt or a chest that provides it — the moment your hands leave the loop, the loop is real.])

#callout("Tip:", [Use the copy-paste tools relentlessly: *Shift + right-click* an assembler, then *Shift + left-click* a row of empty ones to give them all the same recipe. A row of ten machines configured in two clicks beats ten machines configured one-by-one every time.])

=== Science Packs & Research

Everything you are allowed to build is locked behind *research*, and research is paid for with *science packs* fed into *labs*. The entire early game is one loop: automate a science pack, feed it to labs, and research unlocks the machines that make the next, harder science pack.

- *Automation science (red):* 1 copper plate + 1 iron gear wheel, crafted in an assembler (5 seconds per pack). This is your first fully automated line — the worked example in the last section. Red science unlocks basic automation, the assembler-2 upgrade, and the next science tier.
- *Logistic science (green):* 1 transport belt + 1 inserter (6 seconds per pack). Green science needs a second assembler line that makes belts and inserters — both things you already use — and it unlocks belts upgrades, splitters, and the logistics items.
- *Military science:* 2 packs per crafting cycle from gun turrets, piercing rounds and stone walls. Optional until the biters force the issue; it unlocks the defense tree.
- *Chemical science (blue):* the first science that drags in oil — plastic bars and sulfur come out of the petroleum chain. Blue science is the moment the factory stops being about plates and starts being about chemistry (next section).

Labs are the consumers: build a row of them, feed every science pack you make into the same line, and select a research from the technology screen. The *research queue* lets you line up several technologies — always keep the queue full so the labs never idle.

*Building the red-and-green line.* The classic Wave 0 science build is two cells side by side. For red science: an iron-plate belt feeds a row of gear assemblers (gears back on a belt), and that gear belt plus a copper-plate belt feed a row of science assemblers. For green science, the same shape: a belt of transport belts and a belt of inserters feeding another science row. Feed all the science belts into the same lab line and the labs swallow red and green together. It is the Automation Basics pattern, repeated twice, and it produces a *continuous stream* of both packs instead of a trickle — the difference between "research takes forever" and "research just happens".

#callout("Tip:", [The research screen is the game's roadmap. Click any technology and its tooltip lists the exact science packs it needs and what it unlocks. Rule of thumb for the first hour: *automation* first (unlocks assembler lines and red science), then *logistics* and *automation 2* for belts and inserters — and keep red and green science feeding labs continuously from the moment you can.])

#callout("Warning:", [Do not research everything at once. Science packs take real resources, and spreading thin means nothing gets done. Pick a goal (better belts, red science, the next science tier) and research toward it — the queue is for chaining related goals, not for spending every spare pack.])

#callout("Tip:", [The *Factory Planner* mod from the Modlist chapter is built for this moment: instead of guessing how many assemblers a science line needs, plan it — set a target (say, one science pack per second) and it tells you exactly how many gear assemblers, plate furnaces and miners the chain needs. *Rate Calculator* measures the answer for lines you have already built. Together they end ratio-guessing forever.])

=== Oil Processing

Blue science demands *plastic*, and plastic demands *crude oil* — which means you must find oil, pump it, and process it. Oil is the first resource that does not come out of the ground as a usable product.

*Finding and pumping.* Crude oil sits in pools of black liquid on the map, usually a little way from your base. Place a *pumpjack* over a well (pumpjacks need electricity, unlike burner drills) and it extracts crude. Pipes — laid like belts but for fluids — carry it to the refinery. Note that pumpjacks run at a fixed rate that declines as the well depletes; the *YARM* mod in the Modlist chapter can track how fast each well is draining.

*Refining.* A *oil refinery* runs basic oil processing: it turns crude oil into three fractions at once — *petroleum gas*, *light oil*, and *heavy oil*. All three are useful, but petroleum gas is the one you need first, because plastic bars come from it, and plastic is blue science's gate. If your heavy and light oil tanks fill up while you still want petroleum, the refinery stops — that is the classic oil problem.

*Cracking.* The answer is *cracking*: chemical plants convert the heavier fractions into lighter ones — heavy oil into light oil, light oil into petroleum gas. Cracking is researchable and turns your crude oil almost entirely into petroleum when you need it. The flow is: *pumpjack → refinery → storage tanks → crackers (heavy → light → petroleum) → plastic plant → sulfur → batteries*. Batteries and rocket fuel — both needed much later for the rocket — are also oil products.

*The plastic chain, step by step.* Plastic bars are the whole point of the early oil phase, and the chain is short enough to hold in your head:
1. Pump crude with *pumpjacks* and pipe it to a *oil refinery* set to basic oil processing.
2. Pipe the petroleum gas output into a *chemical plant* making *plastic bars* (petroleum gas + coal).
3. Pipe more petroleum into a chemical plant making *sulfur*, which turns into *sulfuric acid* for batteries and blue science's needs.
4. When your heavy and light oil tanks creep toward full, add the *cracking* recipes so the excess flows downhill to petroleum.

That one refinery block unlocks chemical science, and chemical science is the gate to everything that follows — batteries for mining productivity and utility science, plastic for advanced circuits and low density structures.

#callout("Tip:", [Build storage tanks as buffers before every consumer, and crack only when a tank is nearly full. A simple rule that prevents 90% of oil deadlocks: if heavy oil is above half a tank, crack heavy → light; if light is above half, crack light → petroleum. Your refinery line then never jams on a full tank.])

#callout("Warning:", [Oil refineries and chemical plants are *fluid* machines: they connect by pipes, not belts. Check that every pipe's arrows point the right way and that nothing is fed by an inserter — a pipe with no connection looks almost identical to a working one, and a refinery with full outputs quietly stops. *Alt-mode* shows fluid levels in the pipe tooltips.])

=== Early Rail

The castaway's instinct is to build everything next to everything else. By the time your iron demand outgrows the starter patch, a train line becomes the better answer — and the moment it earns its place is the moment hauling by belt would mean dragging ore halfway across the map.

*When a train justifies itself.* If your mining outpost is farther than your yellow belts and underground belts comfortably reach, or you are hand-walking coal and ore back to the base, it is rail time. A single *locomotive*, one or two *cargo wagons*, and a loop of track is the whole system — the train hauls ore from a far patch to your base, and fuel (coal works fine, solid fuel better) keeps it running.

*Track layout.* Rails connect in two basic ways: a *two-way line* with a turnaround loop at each end (simplest, good for one train), or a *one-way pair* of parallel rails for throughput. Place *train stops* at the loader and the unloader, give them distinct names ("Iron Mine", "Iron Drop"), and set the locomotive's *schedule*: go to Iron Mine until full, go to Iron Drop until empty. Train *limits* on each stop (a number in the stop's panel) keep one train per station and stop pile-ups.

*Signals.* With a single train you barely need signals. With two or more on shared track, you need them: *rail signals* divide the track into blocks and a train only enters an empty block; *chain signals* read ahead and are used before crossings. The rule every beginner needs: signal the track so a train always has a green block ahead of it, and put a chain signal anywhere a train could wait on a crossing.

*Designing your first line.* Here is a line that earns its keep in an afternoon: a coal or iron patch a couple of screens away, plus a hungry smelting block back at base.
1. Lay a single rail track from a *train stop* at the mine to a *train stop* at the base, with a turnaround loop (a big "O" of track) at each end.
2. Name the stops "Coal Mine" and "Coal Drop". Place the locomotive, one or two cargo wagons, and one more locomotive facing the other way if you want symmetric acceleration.
3. Open the locomotive and set the schedule: *go to Coal Mine, wait until cargo full; go to Coal Drop, wait until cargo empty.*
4. Feed the mine stop from electric miners and unload the base stop into chests with fast inserters, then belt the ore onward.
5. Add a second train when the first can't keep up, and signals where the two share the main line.

A working single-train loop moves more ore per hour than you will ever hand-carry, and it is the smallest thing in Factorio that feels like a real logistics system.

#callout("Tip:", [Name your stops clearly and keep schedules simple. The built-in schedule editor is forgiving — a train with two stops and the 'until full / until empty' conditions runs itself forever. Start with one train and a loop; a working loop is worth more than a sprawling network that you never finish.])

#callout("Warning:", [Trains do not stop for you. Standing on a rail is a death sentence, and at Wave 0 there is no respawn-at-base shortcut for a crushed engineer. Build a footbridge over or a gap under your tracks, and treat live rails as walls until you have crossed safely.])

=== Biters & Defense

Nauvis is not empty. *Biters* are the native life, and they are the only thing on the planet that actively wants your factory destroyed. The good news: they are predictable, and defense is a solved problem.

*Pollution is the trigger.* Every machine you build emits *pollution*, a cloud that spreads across the map (each chunk absorbs and disperses it; trees soak up some too). When that cloud reaches a biter nest, the nest's *spawners* absorb the pollution and use it to muster biters into attack waves, launched every 1 to 10 minutes against the source. Build quiet, and the natives leave you alone; build loud, and they come.

*Evolution is the difficulty dial.* The *evolution factor* — the world's overall threat level — creeps up from three sources: the passage of time (slow), the total pollution you produce (faster), and *destroying nests* (the biggest jump by far). Higher evolution means bigger, tougher biters. The practical takeaway: do not go nest-clearing until you have real weapons, because every nest you kill makes the whole world harder.

*The basic defensive line.* A ring of *gun turrets* fed with *magazines* (a chest or belt of ammo behind them) backed by *walls* will hold off the early waves. Turrets are cheap and their ammo is cheap; wall segments are cheap. Repair packs fix the damage between waves. When you can, upgrade turret ammo (piercing rounds come from military science) and add *flamethrower turrets* for the wall-crawlers. Place your line *outside* the base footprint and leave a gap so you can reach the walls to repair them.

*Knowing your enemy.* Biters come in escalating sizes — small, medium, big, behemoth — and *spitters* lob corrosive fluid over your walls, which is exactly why the walls exist: they give the spitters something expensive to chew while the turrets shoot back. *Worms* guard nests and will hit you if you stroll up to clear them. The evolution dial decides which sizes appear: early on the attacks are small biters that a gun turret eats for breakfast; late in the game they are big and behemoth hordes that demand real firepower. Reading the pollution map (red overlay on *M*) shows you how far your pollution cloud extends — and whether it is reaching biter nests; reading the evolution bar — hover the *Enemies* entry on the map — tells you how hard the next attack will be.

#callout("Tip:", [Watch the pollution cloud on the map (press *M* and check the red overlay). If the cloud is still short of the nearest nest, you are safe; the moment it touches a spawner, expect an attack within the hour. Use the radar to watch both.])

#callout("Warning:", [The pistol is a tool of desperation, not a plan. If biters overrun your wall, the correct response is not to stand and shoot — it is to retreat, repair the gap, and build more turrets. A wall with turrets behind it beats any amount of personal firepower at Wave 0.])

=== Launching the Rocket

Everything in The Castaway leads to one building: the *rocket silo*. This is the wave's goal — not a new game plus, not an expansion ending, just the vanilla victory condition you can reach entirely with the systems in this chapter.

*The research gate.* The Rocket silo technology takes *every science pack except military* — automation, logistic, chemical, production, and utility. By the time you research it you have already built the whole game's economy: the science chain that made blue science is the same chain that makes production and utility science, just with more steps and more machines.

*The parts.* A rocket needs *100 rocket parts*, and since 2.0.7 each part costs 10 *low density structures*, 10 *processing units*, and 10 *rocket fuel* (crafted in 3 seconds). That is 1,000 of each ingredient per rocket — a serious but entirely mechanical logistics problem: LDS from copper/steel/plastic, processing units from the circuit chain, rocket fuel from oil. Feed all three to the silo and it assembles the parts automatically.

*The three belts.* If the ingredient list feels like a wall, reduce it to the three production chains it actually is:
- *Low density structures* (copper + steel + plastic) — your smelting lines and the plastic plant from the oil section, scaled up. This is the "heavy metal" belt.
- *Processing units* (electronic circuits + advanced circuits + batteries) — the circuit chain you have been building since green science. This is the "brains" belt.
- *Rocket fuel* (solid fuel from light oil and petroleum) — the oil refinery from the same section. This is the "thrust" belt.

Each belt is already something you built for an earlier goal; the rocket just asks for a lot of it. When all three converge on the silo, it assembles a part every few seconds, and a hundred parts later the launch button lights up.

#callout("Note:", [This whole chapter assumes the base game, because Waves 0-1 run with the Space Age expansion disabled. If you do fire up a Space Age-enabled save, the rocket is a very different beast — the silo unlocks far earlier and a rocket part costs 1 of each ingredient instead of 10. The guide will say exactly when and how in Wave 2, where Space Age comes back on. For The Castaway, the base-game recipe above is the one to learn.])

*The payload.* Before the first launch you need a payload: a *satellite* (the classic choice). Launch with a satellite and the rocket returns *1,000 space science packs* to your cargo landing pad about 29 seconds after launch — the game's reward loop for launching. The first launch triggers the victory screen.

#callout("Tip:", [The rocket is the capstone, not the stopping point. After it launches you are welcome to keep growing — space science opens the infinite research and the post-rocket game. But for The Castaway, the launch is the win: every system you built on the way is the factory you just proved. Wave 1: The Architect takes that proof and makes it scale.])

#callout("Warning:", [Don't let the rocket's ingredient list scare you. It is the same three belts you already built — copper-and-steel for LDS, circuits for processing units, oil products for rocket fuel — just scaled up. If a line stalls, the *Production statistics* (P) screen shows you which one, and *Rate Calculator* tells you how many machines are missing. The rocket is a logistics check, not a wall.])

=== Common Beginner Mistakes

- *Spaghetti paralysis.* Waiting for a "perfect" layout before building anything. The factory you can build now, badly, produces more than the perfect one you never place. Build it, and rebuild it later — deconstruction is free, and blueprints (B) make moving a production block a minute of work.
- *Ratio blindness.* Building one of everything and wondering why nothing keeps up. Every recipe has a ratio: how many miners feed a furnace, how many furnaces feed an assembler, how many assemblers feed a science line. You can count them on paper — or let *Factory Planner* and *Rate Calculator* do it for you. "One of each" is not a plan.
- *Hand-feeding.* Running around stuffing chests and machines from your inventory instead of building belts. Every time you hand-feed, the machine stops when you leave. The fix is always the same: a belt, an inserter, or a chest — never your hands.
- *Ignoring pollution.* Not watching the map, and being surprised by the first attack. If the cloud touches a nest, biters are coming. Watch the map, keep turrets and ammo stocked, and treat the first attack as a scheduled appointment, not an ambush.
- *Skipping alt-mode.* Playing half-blind. Press Alt once at the start and the whole factory becomes readable — the single highest-value keystroke in the game.
- *Building on the ore.* Placing your smelting line on top of the very patch you need to mine. Leave the patch clear for miners; build the factory beside it, not on it.
- *One-way belts everywhere.* Running a single belt line out to a distant outpost and back instead of two parallel belts or undergrounds. Dedicated lanes — one out, one back — keep throughput clean and debugging easy.
- *Ignoring the grid.* Treating a brownout as a mystery. If every machine runs at half speed and the electric panel says "no power", that is generation shortfall — add boilers or coal, not more machines. Diagnosing power first clears half of all "nothing works" moments.
- *Starving the boilers.* Forgetting the power line eats coal every second. A boiler without coal makes no steam, the grid dies, and the miners that would have refuelled the boiler are dead too — the classic deadlock. A buffer chest of coal on the boiler line is cheap insurance.
- *Expanding into the biters.* Clearing nests "because they're there". Destroying spawners is the single biggest evolution jump in the game; only clear the nests that threaten your pollution cloud, and only when your turrets can hold the new frontier.

None of these mistakes are fatal. Factorio expects you to make them, fix them, and come back stronger — that is the loop. By the time the rocket leaves the pad, you will have made all of them and learned from each, and that is exactly what The Castaway is for. The factory grows, and so do you.

=== The Castaway's First Session

If you want to close the guide with your hands on the keyboard, here is a single sitting that touches every system in this chapter and leaves a factory that outlasts the session:

- *Minute 0–20:* work the *first ten minutes* script from *Your First Minutes* — burner loop, then electricity. Build two or three electric drills on coal and iron and a short line of stone furnaces.
- *Minute 20–40:* build the *Automation Basics* cells — a gear assembler fed by belts, then a red science assembler fed by gears and copper. Two labs on the same belts. Research *automation* and *logistics*.
- *Minute 40–60:* expand to *green science* — belt and inserter assemblers feeding the same lab line. Queue the research. Watch the pollution cloud on *M* to see how close the nearest nest is.
- *Minute 60+:* call the session done when red and green science are streaming into labs unattended. Everything after that — oil, rail, the rocket — is the same loop repeated at higher stakes.

End the session with the factory still running: science producing, drills mining, labs researching. That is the castaway's definition of progress, and every future session in this guide is just that loop made bigger.
