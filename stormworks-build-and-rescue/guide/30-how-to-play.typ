// 30-how-to-play.typ — Whitecap: field manual for the modded Stormworks.
#import "theme.typ": *

= How to Play

_A field manual for the modded Stormworks: what the game is, how the career loop works, how to design vehicles that float, fly and function — and what the mods change once you are in._

== What the game actually is

Stormworks is a *block-based physics sandbox with a rescue career on top*. You build vehicles — boats, planes, helicopters, submarines, trucks — from voxel blocks, wire them with electrics, fuel and logic, and then use them to run a search-and-rescue service in a 15,000 km² ocean world with islands, an arctic, dynamic weather and day/night cycles. Physics are the game: displacement-based buoyancy, modular engines, drag, damage, fires.

There are four entry points:

- *Career* — the full sim: you start with a budget, buy vehicles and bases, and complete missions to fund growth.
- *Classic Career* — the original career structure: pre-placed missions around the world, no economy creep.
- *Creative* — unlimited building; the sandbox for designing without cost or survival constraints.
- *Custom* — a career with a huge settings panel: you toggle *survival options* (fuel consumption, engine overheat, electricity, vehicle damage, fires, weather, player health…) and the economy. This is where "game creation" actually happens — see chapter 4.

#tip[
  Most players' first 20 hours are Creative — learning to build. The career is the goal; the sandbox is the school.
]

== The rescue loop

Career gameplay is a loop: *take mission → pick the right vehicle → go out → complete it → get paid → build better*. Missions generate around the world and tell you what you need:

- *Sea rescue* — survivors in the water or on a sinking vessel; you need a fast, seaworthy boat (and a winch or deck space).
- *Fire* — burning vehicles or structures; you need a water tank, pumps and hoses.
- *Cargo & logistics* — move containers, fluids or passengers between ports; you need carrying capacity and range.
- *Exploration* — reach coordinates and investigate; range and navigation matter.
- *Salvage / deep-sea* — recover wrecks or work underwater; you need winches, divers or a submarine.

Every mission pays, and the payouts fund the next vehicle. Vehicles are spawned at *workbenches* — the build/spawn pads at each base — and bases are bought and upgraded as you expand. Money is the career's only real pressure: it decides what you can build, not what you can do.

#info[
  In Layer 1 this is exactly the vanilla career, prettier and with more build room. In Layer 2, Mango Cargo Overhaul turns the cargo branch into a proper logistics game (kiosks, port types, ferry routes), R.A.M.B.O. makes every vehicle you design a real engineering problem, and ARCTIC+ gives the map's far edge somewhere to go.
]

== Your first 20 minutes

_A guided first sortie: from the menu to your first completed mission. The exact keys are the game's defaults — the Settings screen shows every binding, and vehicle dashboards often add their own buttons (power, starter, reverse)._

#table(
  columns: (1.1fr, 2.6fr),
  inset: 6pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { panel2 },
  align: (left, left),
  [*Control (default)*], [*What it does*],
  [W / A / S / D], [Move on foot; from a seat: throttle / brake / steer (W and S control speed, A and D turn)],
  [Mouse], [Look; scroll to zoom the camera],
  [E], [Interact — enter/exit seats, pick up items, use switches, grab survivors],
  [M], [Open the world map with mission markers],
  [Shift (hold)], [Sprint on foot],
  [Start engine], [Per-vehicle: a dashboard starter button, or the game's start-engine key — check Settings],
)

=== Minutes 0–2 — start the right world

1. *New Game → Career* (this guide assumes the Layer 1 mods from chapter 1 are enabled — see chapter 1 for the "Enabled Mods" flow).
2. Confirm the world and you spawn at the starter base on the main island (Sawyer Island): a dock, a small workbench, and your first vessel — the game's *Starter Boat* preset.
3. Walk around for a minute: find the dock, the workbench pad, and the fuel pump. You will use all three constantly.

=== Minutes 2–5 — read the boat and the map

1. Board the starter boat (interact) and sit in the pilot seat.
2. Read the dashboard: a *master power* switch, an *engine starter* button, a *reverse* toggle, and the gauges (fuel, RPM, speed). Find the *hose anchor* — that is where fuel docks connect.
3. Open the map (M). A *mission marker* should already be there — the game spawns a tutorial rescue shortly after you start. Note the transponder locator on the dash: it points you at mission signals directly.

#info[
  The starter boat has a gyro stabilizer — it fights rolls for you. That is a hint about how most good small boats are built: stable first, fast second.
]

=== Minutes 5–10 — first sortie

1. Master power ON, then hold the throttle slightly open (W) *while* pressing the engine starter — a cold engine usually needs a little throttle to catch.
2. Ease off the dock, then A/D to steer toward the marker. Keep the throttle moderate — the starter boat is not a racer, and rough water will punish sharp turns.
3. If the engine dies, check fuel and re-start: throttle open a touch, starter again. If it dies instantly every time, you have no fuel — see refuelling below.

=== Minutes 10–15 — the rescue

1. Slow down as you approach the marker. Use the map and the transponder to find the survivor(s) — often a small raft or a person in the water.
2. Pull alongside gently, get close, and interact to pick them up / board them. Stow them on deck or in the cabin.
3. Head back to the base — the return trip is the part where boats flip, so keep it steady.

=== Minutes 15–20 — complete, save, and look around

1. Dock at the base. Completing the mission pays out — watch the money counter.
2. Open the *workbench* and enter the build editor. Spend the last five minutes *taking the starter boat apart and putting it back together* — deleting the engine, seeing how the propeller, rudder, fuel tank and wiring connect. This is the real first lesson; the next section is built on it.
3. Save the game (exit or the save option — the game autosaves on exit, but save explicitly after milestones).

#warn[
  Do not take the starter boat into the open ocean in bad weather, and do not ignore the fuel gauge — the refuel lesson is: dock at a fuel pump, and connect the hose from the pump to the boat's hose anchor. Running dry mid-rescue is the classic first death.
]

#tip[
  If missions come too fast (or too slow) for comfort, the world settings let you adjust mission spawn frequency — a 20–30 minute pace is a calm start. Chapter 4 shows how the same settings become your persona's difficulty dial.
]

== Engineering: building stuff that works

=== Blocks, seams and watertightness

Everything is built from *blocks* (voxels): cubes, wedges, pyramids, and the specialized parts (engines, tanks, instruments, logic). Two facts rule water:

- A hull only floats if it is *watertight* — every seam where blocks meet must be sealed. The game marks leaks: open seams show as gaps between blocks, and a leaking hull floods.
- *Displacement* does the floating: the volume of hull below the waterline pushes water aside, and that displaced water's weight is the buoyancy. Bigger submerged volume = more buoyancy. A dense, heavy vehicle sits lower in the water — its *draft* is deeper.

Practical rules: build the hull as a closed box first, place internal tanks and machinery, then *test before detailing*. If it sinks at the dock, the problem is almost always a seam, an open block face, or a hatch left unsealed.

=== Engines and power

The standard power train: *engine → generator → battery → consumers*.

- *Modular engines* are built from parts — cylinders, crankshaft, pistons, exhaust manifolds — and need *fuel, air, cooling and exhaust* to run. They produce mechanical power at an RPM (measured in *RPS*, rotations per second).
- Mechanical power turns generators, propellers, rotors, wheels and pumps. Electric power (batteries + generators) runs instruments, logic, lights and small motors.
- *Fuel systems*: tanks, pumps and pipes. A classic failure: the pump is on the wrong side of the tank, or the tank is part of a non-watertight volume.

#warn[
  The most common "why won't it start" causes, in order: no fuel (or fuel pump off), dead battery, engine not getting air or coolant, exhaust blocked, or a broken throttle/logic connection. Diagnose in that order.
]

=== Controls, rotors and lift

- *Boats*: throttle to engines/propellers, rudders or pivoting outboard drives for steering. Trim matters — a bow-heavy boat plows.
- *Helicopters*: main rotor for lift, tail rotor (or ducted fan) against torque, cyclic/pitch control via rotator servos or control surfaces. Helicopters need constant power and are unforgiving of weight.
- *Planes*: wings generate lift from forward speed; control surfaces (ailerons, elevators, rudder) steer. Underpowered = won't climb; overpowered = unstable.
- *Cars/trucks*: wheels + engine + brakes; steering via the steering mechanism, pivot wheels, or differentials for heavy rigs.

=== Logic and microcontrollers

Stormworks has a full logic system: *sensors* (GPS, gyro, compass, altitude, distance, fluid level…), *logic gates*, and *microcontrollers* — programmable chips with LUA scripting. With microcontrollers you can autopilot a ship, auto-level a helicopter, manage a power grid, or make a fuel gauge that warns you at 20%.

The basics: every sensor outputs a *composite* signal (multiple channels on one cable); every instrument displays one. The classic first project: a GPS-driven autopilot that holds a course between two waypoints. It is programming, but the pieces are small.

#tip[
  Start with the game's included example microcontrollers and the in-game tutorials — then steal from your own workshop subscriptions. Half of learning Stormworks is taking someone else's working boat apart.
]

=== Building, step by step

The *rule of three* covers every first build: keep the engine low (stability), make the hull/body fully enclosed (watertightness or sealed volume), and keep fuel, air and exhaust lines separate and connected. Every build below follows it.

==== The first boat (your first build, every time)

A 10–15 block long, 4–5 block wide rescue boat — nothing more.

1. *Hull:* build a closed box of blocks with wedges at the bow and a flat stern. Inside the box, nothing touches the outer skin — that is your volume.
2. *Seal it:* walk the hull and check every seam. A leak here sinks the whole career start.
3. *Engine:* place a small engine low and roughly centered — low mass = stable boat. Add a *generator* beside it and a *battery* somewhere dry.
4. *Drive:* a *propeller* at the stern, waterline-high, driven by the engine; a *rudder* directly behind it for steering.
5. *Fuel:* a *fuel tank* connected by pipes to a *fuel pump*, then to the engine. Add a *hose anchor* on deck for refuelling at docks.
6. *Air & exhaust:* an intake pipe to the surface and an exhaust pipe out the stern — blocked pipes stall engines.
7. *Seat & wiring:* a driver seat. Wire: seat *throttle* → engine throttle node; seat *steering* → rudder (through a pivot or steering block). Add a push-button wired to the engine's start node if you want a starter button.
8. *Test:* spawn it, check the waterline (it should sit with a modest draft), motor around the dock, then go fast in a straight line and turn hard — if it leans dangerously, add ballast low or widen the hull.

#warn[
  The classic first-boat failures, in order: an unsealed seam (it sinks at the dock), the fuel pump wired backwards (it never reaches the engine), and a propeller above the waterline (lots of noise, no thrust).
]

==== The helicopter (once the boat floats)

1. *Core:* a compact fuselage box, a *driver/helo seat* in the middle, engine + generator + battery low in the frame.
2. *Lift:* a *main rotor* on top, driven by the engine; a *tail rotor* at the rear — without it the fuselage spins. Wire the tail rotor's throttle to keep it fighting the torque.
3. *Control:* the seat's *cyclic* (pitch/roll) and *collective* (throttle) outputs to the rotor's control nodes, or use rotators/control surfaces on the rotor head for pitch.
4. *Weight:* balance the center of mass under the rotor — a tail-heavy helicopter pitches back and crashes. Test in short hops, not full climbs.
5. *Automate later:* a gyro microcontroller that trims cyclic output is the difference between "it flies" and "it flies itself".

==== The plane (fixed-wing)

1. *Fuselage:* a long closed box, seat in the middle, engine + fuel low in the nose or belly.
2. *Lift:* a pair of *wings* at the center of mass; *control surfaces* (ailerons on the wings, elevator on the tail, rudder on the fin).
3. *Propulsion:* a *propeller* at the nose (or two on the wings); thrust must exceed total drag or it will not climb.
4. *Trim:* the elevator should hold level flight with neutral stick — if the nose drops, move the center of mass forward of the wing center, and vice versa.
5. *Test:* taxi fast on land or water first; only climb once it reaches takeoff speed in a straight line. Landings are just slow glides — cut throttle, hold the nose up, touch down gently.

==== The car or truck

1. *Chassis:* a low flat box, 4+ *wheels* (small for a buggy, medium for a truck), engine + fuel in the middle.
2. *Drive:* wheels on the engine axle (direct) or through a gearbox for torque; *brakes* on at least the front axle — a Stormworks truck without brakes is a one-way trip.
3. *Steering:* a steering block or pivoting front wheels wired to the seat's steering output; keep the turning radius honest for the wheelbase.
4. *Weight:* keep the center of mass between the axles and low — a tall, heavy build rolls on the first turn.

#info[
  Every one of these builds changes under R.A.M.B.O.: mass is heavier, thrust is weaker, and shape decides drag. The rules stay the same — sealed volume, low engine, balanced mass, honest power — but the *tolerances* get real. Build the Layer 2 fleet deliberately; that is the point.
]

== Engineering under R.A.M.B.O. (Layer 2)

R.A.M.B.O. changes the physics *philosophy*, not the rules of play — the documented changes that matter when you design:

- *Mass is real.* Components weigh what they should: engines, fuel, weapons and seats are significantly heavier; basic blocks are lighter and standardized (0.25 per voxel). What you carry now determines how your vehicle behaves.
- *Thrust is nerfed.* Propellers and engines produce less relative to weight — a realistic thrust-to-weight. The stock game's "slap an engine on it" shortcut stops working.
- *Shape matters.* Water drag is lower overall, but hull shape — especially the *rear* — now decides it. Air drag is dominated by the *front* shape; streamlined builds genuinely fly faster.
- *Buoyancy is fixed and consistent* (0.5 mass/L, with enclosed fluids at double density). A sealed hull floats more naturally; ballast and weight blocks become real tools for stability and trim.
- *Lift is proportional to wing size.* Wings work like wings; control surfaces have realistic deflection limits.

#warn[
  R.A.M.B.O. is a fresh-design mod: vehicles built in stock will generally still work, but poorly — underpowered and overbuoyant. Build Layer 2 vehicles *for* Layer 2. And remember: load the save twice after each launch or the modded physics won't apply.
]

== Basic terms

#table(
  columns: (1fr, 2.4fr),
  inset: 6pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { panel2 },
  align: (left, left),
  [*Term*], [*Meaning*],
  [Block / voxel], [The grid unit everything is built from; hulls, decks and structures are block assemblies.],
  [Seam], [The edge where two blocks meet. A *watertight* hull has no open seams below the waterline.],
  [Displacement], [The volume of water a hull pushes aside; its weight equals the buoyant force.],
  [Draft], [How deep a vessel sits in the water — the distance from waterline to keel.],
  [Ballast], [Added weight (usually pumped fluid) used to change trim or stability.],
  [RPS], [Rotations per second — the game's unit for engine and rotor speed.],
  [Workbench], [The build/spawn pad where vehicles are constructed and launched; bigger = bigger builds (Echo's mod).],
  [Mission], [A generated scenario (rescue, fire, cargo, exploration) with a payout.],
  [Waypoint], [A navigational target coordinate used by autopilots and maps.],
  [Microcontroller], [A programmable logic chip; sensors and gates wired in, LUA code inside.],
  [Composite], [A multi-channel signal carried on one cable — how complex data moves between parts.],
  [Prefab], [A pre-built sub-assembly (engines, cockpits) saved for reuse.],
  [Mod / Addon], [Workshop items: *Mods* change game files (shaders, physics, parts); *addons/vehicles* are content you spawn.],
  [Survival options], [Custom-mode toggles: fuel, overheat, damage, fire, weather, player health.],
  [XML edit], [Editing a vehicle/save file by hand to change values the editor doesn't expose — the power user's last resort.],
)

== The modded experience

What the two layers change once you are playing:

- *Opal Shader* — the sea, sky, weather and lighting are simply better. Fog banks, storms and night rescues stop being grey mush. If frames drop, lower the game's graphics quality first; the config module can disable specific effects (snow, grass, rain reflections).
- *Echo's Bigger Workbenches* — you will rarely hit the build envelope again; large ships and aircraft are buildable without tricks.
- *Better Hitboxes* — buttons and instruments on panels stop blocking each other; docking and dense control panels behave.
- *R.A.M.B.O.* — everything in "Engineering under R.A.M.B.O." above. The same world, but design choices now have consequences.
- *Parts expansions* (Frustum, Aviation, Electric/Mechanical/Structural) — new geometry and components in the editor; search their names in the parts list.
- *Mango Cargo Overhaul* — cargo kiosks appear at ports; deliveries come in types (containers, passengers, trailers), routes and port-locked contracts. The freight career is now a real logistics puzzle.
- *ARCTIC+* — the arctic sea is a walkable ice shelf: drive, land, and dive under it.
- *Sound mods* (foghorn, thunder, turbo) — listen: the world and the machinery sound like themselves.

== Saves, backups & troubleshooting

- *Saving*: the game autosaves and saves on exit; keep manual copies of your save folder (`%AppData%\Roaming\Stormworks\saves\<save>`) before big changes.
- *Mod problems*: check the mod's *Last updated* date first — a game update is the usual culprit. Then check the mod's discussions; then disable mods one at a time to isolate.
- *R.A.M.B.O. physics not applying*: load the save twice (documented quirk). If components show modded features but physics feel stock, this is why.
- *Vehicles break after a mod update*: remove modded parts from vehicles *before* unsubscribing the mod — saves with orphaned mod parts can lock up.
- *Crashes or weirdness*: Steam → Verify integrity of game files resets the game; for manual mods, clear `%AppData%\Roaming\Stormworks\data\mods`.

== How to get good (a checklist)

- Build in Creative first; test every vehicle at the dock before committing to it in career.
- Keep the first vehicles small and simple — a good 10-block boat beats an ambitious wreck.
- Seal the hull before decorating. Water finds every seam.
- Balance: check the center of mass vs. buoyancy before adding the superstructure.
- Learn one microcontroller pattern (autopilot or power management) early; it pays for itself.
- When a mission fails, the vehicle is usually the problem — that is the game working as intended.
- In Layer 2, expect to fail more and learn more. R.A.M.B.O. rewards the careful engineer, exactly like the sea does.
