// 30-how-to-play.typ — Routa: field manual for the modded My Winter Car.
#import "theme.typ": *

= How to Play

_A field manual for the modded My Winter Car: what the game is, how the January loop works, how to build and start a cold engine in -20°C, how to drive on ice — and what the mods change once you are in._

== What the game actually is

My Winter Car is a *survival simulator and a project-car simulator at the same time*. You play the same nameless protagonist as in My Summer Car, back in the same region of rural Finland — Alivieska — in *January 1999*, when the markka is still the currency, the ground is frozen solid, and the sun barely shows up. Your needs are real: hunger, thirst, and above all *temperature*. Your project is real: a 1971–76 *Corris Rivett*, bought as a bare frame with a handful of loose parts and rebuilt by hand, bolt by bolt, into a car that passes inspection and wins races.

The core facts to hold onto:

- *You do not start with the project car.* You own a *Sorbet 1600 LTD* hatchback (the daily driver) and must earn the Rivett: it costs *500 mk* and is sold as a disassembled frame with 10–12 random loose parts in randomized condition.
- *Money is the pressure.* Jobs pay in markka; parts come from the *classifieds magazine* (ordered by phone), *Fleetari's repair shop*, and the *flea market*.
- *Time advances in one-hour steps* and the winter day is brutally short. Planning the day matters more than reflexes.
- *The endgame is racing and restoration:* the *ice track race*, the *rally sprint*, and restoring the Rivett to its exact factory spec for *historic black-and-white plates*.

#tip[
  The game punishes the unprepared — that is the point and the fun. The mods in this list never remove that friction; they just make the world look and run better while you live in it.
]

== The daily loop

A day in January Alivieska is a loop, and the order of the loop is the game:

1. *Wake up warm.* Check your needs — eat, drink, and get warm before stepping out. Cold drains you fast and kills outright if ignored.
2. *Earn.* Pick a job for the day: a factory shift at the *Futufon* charger-packing plant, a taxi fare, leaflet delivery, firewood for the elderly (with the *Kekmet* tractor), or flipping finds at the *flea market*.
3. *Spend smart.* Order the part you need from the classifieds (dial the number, listen — never hang up early), buy from Fleetari, or wait for a better deal.
4. *Build.* In the garage, work the car: bolts, gaskets, wiring, fluids. Every part you tighten is progress you can feel.
5. *Survive the night.* The dark is not decoration — it is cold, it is long, and your heater is the difference between a productive evening and a hospital bill (or worse).

#info[
  In Layer 1 this is exactly the vanilla loop, prettier and smoother. In Layer 2, Rivett Revamp makes the car itself a richer thing to build and admire. Neither changes the loop — the loop is the game.
]

== Your first days in Alivieska

_What to actually do with the first sessions, grounded in how the game's systems connect. Keybinds are the game's defaults — check Settings; mod-added keys are marked (mod)._

#table(
  columns: (1.1fr, 2.6fr),
  inset: 6pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { panel2 },
  align: (left, left),
  [*Control (default)*], [*What it does*],
  [W / A / S / D], [Move; in a car, throttle / brake / steer],
  [Mouse], [Look; interact with objects, pick things up],
  [E], [Interact — open doors, use tools, enter vehicles, answer phones],
  [NumPad], [Dial numbers on the phone and classifieds order form],
  [G (mod)], [Toggle the Head Lamp on/off],
  [N / M (mod)], [Full-screen map / HUD minimap (GTA SA Style Minimap)],
  [Mod menu (loader)], [Enable/disable mods and open each mod's settings — keybind shown in the loader wiki],
)

=== Day 1 — learn the house and the shop

1. You start in the apartment. Go through it: the fridge and stove feed you, the bed saves the game, and the *mailbox* outside collects your salary letter and classifieds.
2. Walk to the *PSK* (the village shop). It is your hub: groceries, fuel, tools, the *notice board* with job flyers, and the phone.
3. Read the notice board. The *Futufon factory* job is the reliable starting wage — you pack chargers on a shift, and the shift is real work with a schedule.

=== Day 2–3 — get the Sorbet working

1. Your *Sorbet 1600 LTD* is the daily driver — but it is January, and a car that has been sitting in the cold will not just start. Check its battery and fluids first; a warm garage helps enormously (a saved-while-cold car can lose accessory power until it thaws).
2. Refuel properly: *hold the mouse button* while the nozzle is in the tank — releasing early stops the pump.
3. Drive carefully: rear-wheel drive on snow and ice, short daylight. Use the minimap (Layer 1) to learn the roads before relying on them in the dark.

=== Day 4+ — buy the Rivett

1. Earn 500 mk. (This is the wall every player hits — see the economy section below.)
2. At the phone, dial *08609553* — Reijo Livaloinen. *Wait until he finishes talking and hangs up*; only then a pin appears on the map: "Car for sale".
3. Bring it home. The *Kekmet* tractor's fork is the recommended way (through the boot opening, tilt the fork up); the *Gifu* tow truck works under ~40 km/h to avoid windshield damage; the trailer is slow but safe.
4. Now the project begins: inventory the frame and the 10–12 loose parts, order the rest from the classifieds, and start with the assemblies that make the car roll (see "Building the Rivett" below).

=== Day 5+ — the taxi (once the Rivett is yours)

After buying the Rivett, the notice board in the PSK carries the taxi flyer. Dial *08-712112*, then meet the taxi guy in the PSK parking lot at *12:00 the next weekday*. You become a taxi driver in a *Machtwagen* — a diesel Mercedes-W124-style taxi with a taximeter, a car phone, and a receipt printer. See the taxi section below for how the job actually works.

#warn[
  The two classic ways to ruin a run: forgetting the passenger's *luggage*, and hanging up the phone before the customer finishes speaking. Both lose you customers — the taxi owner will take the cab back if you get lazy.
]

== The economy: jobs and money

- *Futufon factory* — the main job: packing chargers on a shift. Steady, honest, grindable. Your "second job" anchor early on.
- *Taxi* — the map-mastery job (detailed below). Pays 40% of the gross fare plus 3.7 mk per kilometer, minus phone expenses, paid to your bank account on *Wednesday at midnight*.
- *Leaflet delivery* — drive the routes, stuff the boxes. Pays per delivery.
- *Firewood* — the Kekmet tractor, a trailer, and the village's woodpiles; cut, haul, stack.
- *Flea market* — buy low (classifieds, bargains), sell at the stall.
- *Septic orders, lottery, classifieds flipping* — the side economy. The classifieds magazine is also where car parts are ordered — it is the pipeline for your build, so read every issue.
- *The bank* — you have a bank account; check the interest rate on *Teletext page 172*, and remember salary lands Wednesday night.

=== The taxi job, properly

The Machtwagen is diesel, rear-wheel drive, and near-indestructible with half a million kilometers on it. The taximeter has five modes — this is your job:

- *Minus mode* — idle; you receive calls with the roof light on. Do not drive a fare in this mode.
- *Mode 1* — starting fare 21 mk; weekdays 06:00–18:00.
- *Mode 2* — starting fare 32 mk; weekdays after 18:00 and all weekend.
- *Mode A / B* — distance and income readouts.
- *Lotto mode* — generates lottery numbers from the taxi light button. It is a real feature; it does not do anything for the job.

Work flow: roof light on + minus mode → wait for the call → set mode 1 or 2, turn the roof light off → pick up passenger *and luggage* → drive to the destination → turn the roof light on, print the receipt, take payment → back to minus mode.

The dev-documented quirks are worth knowing: after loading a save, scroll the taximeter through mode 1 and 2 once before going back to minus mode, or customers never call. Never go to sleep with a customer in the car. You may drive 90% of your on-duty kilometers off-duty for free — exceeding that reduces your next payment. Keep sandbags in the trunk for traction, and give the diesel's glow plugs a moment before cranking.

#info[
  The taxi is the best map-teaching machine in the game: every fare is a real address on the map behind the sun visor, and by the time you have run thirty of them you know Alivieska's winter roads by heart. It is also the persona fuel for two of the five personas in chapter 4.
]

== Engineering: building the Rivett

=== The engine, assembly by assembly

The community counts the Rivett's build at *well over 200 parts* — the engine alone is far more detailed than My Summer Car's. The engine is a *2.0-litre SOHC inline-four* (based on the Ford Pinto TL20H), making about 98 hp stock — low-revving, high-torque, rear-wheel drive. It is built in this order of assemblies:

1. *Short block* — the block itself, crankshaft, main and rod bearings, pistons, rings, connecting rods. Everything torqued, nothing left loose.
2. *Cylinder head* — head gasket (never reuse a damaged one), head, valves, springs, and the valve adjustment that is a classic first-build failure point.
3. *Timing* — timing belt and covers; the Rivett's belt cover famously still said "1600 SOHC" for the first weeks after launch.
4. *Ancillaries* — oil pump, water pump, alternator (which has its own friction and horsepower draw), starter, fuel pump, carburetor, radiator and its fan.
5. *Fuelling & spark* — lines, the single-barrel carburetor (or the high-performance two-barrel on sporty trims), ignition timing, and the *carburetor mixture* — community wisdom puts the cold-start A/F area in the 12–15 range, and a wrong mixture is the classic "built it right but it won't run" cause.

The whole car follows the same logic: *chassis → suspension (springs, shocks) → brakes (lines and all) → driveline (gearbox, differential, axles) → engine → body panels → electrics → interior*. Every assembly has gaskets, nuts, and bolts that simply must be there — the wiki and the Steam guide "Rivett Parts List" are the checklists you will live by on your first build.

#warn[
  The most common "why won't it start" causes, in order: a missed gasket or loose bolt in the intake, the carburetor mixture wrong for the cold, a dead or cold-soaked battery, no fuel (fuel tank door left closed, empty tank), and — new in winter — *the engine itself being frozen*. Diagnose in that order.
]

=== Bolts, tools and the feel of the build

Every bolt has a size and a tool; you will learn the sizes by working, and the wrench rack in the garage is your memory. Two golden rules:

- *Tighten everything you touch.* Loose bolts rattle, leak, and fail inspection. Torque to the sound and feel — the game rewards deliberate work.
- *Carry spares of the small things.* Starters die (you will hear the tell-tale "Ruscko noise" when it is time to replace it) — the community standard is to collect starters from mailboxes and keep one in the trunk.

== The cold start (the signature skill)

Starting the Rivett in January is the game's most famous mechanic, and it is teachable. The engine has a hidden "CarbChamber" value (0–30) that a running engine holds near 15.75; *above 17.75 the car will not start below freezing*. If the Rivett refuses to start, that value is probably maxed at 30 — reset it by disconnecting the carburetor from the engine and saving/loading. The reliable cold-start procedure, from the game's wiki:

1. Turn on the ignition and *hold the gas* (W). Turn the headlights off if you like — it helps the battery. Do *not* pull the choke yet.
2. Crank the starter for 4–5 seconds, keeping the gas pedal fully down. This drops the CarbChamber to roughly 13.
3. Release ignition and gas. Pull the choke fully out, then push it back in a *millimeter below* the maximum position.
4. Hold the ignition again — no gas, or at most one or two short taps.
5. The engine starts within a few seconds. Immediately move the choke to the middle and keep touching the gas to hold the revs; if it stalls, it likely will not restart — the CarbChamber has climbed to ~18 and the battery lost half its charge.
6. Once warm, retract the choke fully. A strange number on the mixture gauge is your reminder.

#tip[
  This procedure is reliable outdoors down to about *-26°C*. Below that, take the *Sorbet* — with a *block heater* connected it is the honest answer to extreme cold. And store the Rivett in the warm garage: saving it in a cold place can leave it without accessory power until it thaws.
]

=== Oil, battery, and the redline

- *Motor oil* matters in winter: white oil for short commutes; blue oil protects better on long runs but damages parts (especially the oil filter) during cold starts; *redline oil is only for engines that actually live at the redline*. If you lower the rev limiter from 8900 to 6900, you do not need it.
- *Do not rev a cold engine.* Cold, thick oil does not lubricate — the game will damage the engine if you drive hard before it warms up.
- *Over-revving above about 9100 RPM damages engine components.* Once you start tuning, a rev limiter is not a luxury — it is a spare engine.
- *The battery is the cold's first victim.* Heated garage storage is the best "mod" in the game; a spare battery and a good alternator (see the 2026 patch notes — the alternator's power draw is real) keep the daily driver honest.

== Winter driving

- *Rear-wheel drive on snow and ice* understeers into ditches: drive in the highest gear that pulls, brake early and straight, and *add weight over the driven axle* — the taxi tradition of sandbags in the trunk applies to the Rivett too.
- *Diesel takes a moment* — the Machtwagen's glow plugs need a beat before cranking.
- *Police checkpoints* patrol the highway; wear your seatbelt (the taxi fines you for not wearing one — the police logic was patched in May 2026), mind your lights, and know that a fine hits the bank account.
- *The ice track* is a real race surface on the lake — studs and a tuned car are the difference between winning and spinning. The ice-track inspections are *strict* (they were tightened in the January 2026 patch), so bring a properly built car, not a hopeful one.

== Inspection, racing and historic plates

- *Inspections* gate your progress: the Rivett must pass before serious racing. Everything matters — bolts, brakes, lights, bodywork, trim correctness.
- *Two races matter:* the *ice track race* on the frozen lake and the *rally sprint* — the Rivett is the only car eligible for both. The GT trim's high-performance engine, LSD, quick steering and tachometer cluster are the factory head-start; aftermarket cams, carbs and the 5-speed gearbox are the tuner's path.
- *Historic plates:* restore the Rivett to its exact *factory-original* specification — VIN-correct seats, instrument panel, rims, every VIN-listed part, all in good condition — and it can be registered as a historic vehicle with special black-and-white plates. The VIN plate lives under the hood on the front right; decode it at amistech.com/mwc/vinplate.html (the dealer options sheet is at amistech.com/mwc/dealersheet.html). This is the completionist endgame, and it demands the discipline the whole game teaches.

== Music, mail and small pleasures

- *Custom music is vanilla:* put `.ogg` files named `track1.ogg`, `track2.ogg`… into the game's `CD1`, `CD2`, `CD3` folders and use *Import Music Files* on the main menu; the CDs appear in your house and play on the home stereo or the car's CD player.
- *Mail matters:* salary rundown letters and classifieds arrive in the mailbox; read them.
- *Teletext* has the bank page, and the lottery runs on real draws — a Lotto-mode taxi fare line is a free ticket.

== The modded experience

What the two layers change once you are playing:

- *Enhanced Graphics* — the frozen lake, the long sunsets, the headlights in the dark: all simply look right. If frames drop, disable effects one at a time in the mod's settings before blaming the game.
- *Better FPS* — the sim stays smooth where it used to chug; test it yourself with `fpstest` in the loader console.
- *GTA SA Style Minimap* — the map becomes a tool: waypoints for taxi fares, icons for the shop and mechanic, taxi blips for active jobs. The winter roads stop being guesswork.
- *AI Highbeam Nerf* — night driving stops being a strobe show; AI traffic keeps its low beams and your eyes keep working.
- *Head Lamp* — work on the car after dark without squinting; the beam is configurable in the loader's Mod Settings.
- *Rivett Revamp* (Layer 2) — the Corris looks like the real Taunus: proper dash, proper grilles and lights, proper bumpers. All options are in the mod's settings menu; build your car, then make it *yours*.

== Basic terms

#table(
  columns: (1fr, 2.4fr),
  inset: 6pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { panel2 },
  align: (left, left),
  [*Term*], [*Meaning*],
  [mk], [Markka — the currency of January 1999 Finland. The Rivett costs 500 mk.],
  [Sorbet 1600 LTD], [Your starting daily-driver hatchback; the dependable one, and the one with the block-heater option for extreme cold.],
  [Corris Rivett], [The 1971–76 project car — Ford Taunus TC1 styling, 2.0L SOHC inline-four, RWD. Bought as a bare frame for 500 mk and built by hand.],
  [VIN], [The chassis code on a plate under the hood (front right) that encodes trim, options and year; the Rivett's spec is chosen at game start and decoded at amistech.com/mwc/vinplate.html.],
  [Trim (L / LX / SLX / GT)], [Factory equipment levels: base L, premium LX, luxury SLX, and the rare sporty GT with the high-performance engine, LSD and tachometer.],
  [Historic plates], [Black-and-white plates earned by restoring the Rivett to its exact factory VIN spec, all parts in good condition.],
  [CarbChamber], [The engine's hidden fuel-chamber value (0–30); a running engine holds ~15.75, and above 17.75 the car will not start below freezing.],
  [Choke], [The manual enrichment control on the dash — the heart of the cold-start dance.],
  [Block heater], [An electric engine heater for the Sorbet; the honest answer below -26°C.],
  [Glow plugs], [The diesel Machtwagen's pre-heating element; give them a moment before cranking.],
  [Ruscko noise], [The sound a dying starter makes — the community's tell that it is time to replace it.],
  [PSK], [The village shop — groceries, fuel, tools, notice board and phone: your hub.],
  [Fleetari], [The repair-shop owner; a source of parts, and the gatekeeper of some repairs.],
  [Classifieds magazine], [The mail-order parts catalog — dial the number, place an order, wait for delivery. Never hang up early.],
  [Futufon], [The charger-packing factory — the reliable main job.],
  [Machtwagen], [The taxi: a diesel Mercedes-W124-style car with taximeter, car phone and receipt printer.],
  [Kekmet], [The village tractor — fork, bucket, and the best way to move a Rivett shell without breaking glass.],
  [Gifu], [The tow truck; towing the Rivett works under ~40 km/h if you value the windshield.],
  [Ice track / rally sprint], [The two endgame races, both Rivett-only: the frozen-lake ice race and the rally sprint.],
  [Jokkis], [The Finnish hobby-racing scene the game's race cars come from — "folk racing" in spirit.],
  [Teletext], [The in-game information pages (the bank's interest rate lives on page 172).],
  [Mods folder], [Where MSCLoader loads mods from — one folder, chosen at loader install, usually the game folder.],
  [Mod menu / Mod Settings], [The loader's in-game interface for enabling mods and configuring each one.],
)

== Saves, backups & troubleshooting

- *Saves live in* `%AppData%\LocalLow\Amistech\My Winter Car` — `savefile.txt` (world state, player stats, jobs) and `carpart.txt` (vehicle wear and tightness). Copy the whole folder for a backup; it is two small text files.
- *Mod problems:* check the mod's *Last updated* date first — an Early Access game update is the usual culprit. Then check the mod's Posts tab; then disable mods one at a time in the mod menu to isolate.
- *Loader diagnostics:* the loader writes `output_log.txt` and `MSCLoader_Preloader.txt` next to the game's executable — attach both when reporting a bug.
- *Cold-start mystery:* if a built engine simply refuses to start, reset the CarbChamber (disconnect the carburetor, save/load) and re-run the procedure — and check the battery charge first.
- *Crashes or weirdness:* Steam → Verify integrity of game files resets the game; reinstall the loader with MSCLInstaller.exe and empty the Mods folder for a clean slate.

== How to get good (a checklist)

- Master the Sorbet's winter routine before touching the Rivett — the daily driver is your teacher.
- Read every classifieds issue; the parts pipeline is the build.
- Work the factory shift early and the taxi routes later — one teaches discipline, the other teaches the map.
- Build the engine in assembly order and tighten *everything*; the Rivett Parts List guide is the checklist.
- Learn the cold-start procedure until it is reflex — it is the game's hardest and most rewarding skill.
- Store the car warm, carry a spare starter, and never rev a cold engine.
- Drive like it is January: early braking, weight over the driven axle, seatbelt on.
- In Layer 2, take your time with Rivett Revamp's options — build the car, then make it yours.
- When a race fails or an inspection catches you, the car is usually the problem. That is the game working as intended — fix the car, not the rulebook.
