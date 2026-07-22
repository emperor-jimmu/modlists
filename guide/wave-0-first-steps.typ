// guide/wave-0-first-steps.typ

#import "../template/lib.typ": *

#section-heading([About Wave 0])

Wave 0 is for new players or veterans returning to stock KSP. It adds only UI and quality-of-life mods — nothing that changes gameplay, parts, or physics. You will learn core skills in the stock game before any mechanics become more complex.

#wave-criteria-table()

#info[[
  *Wave 0 Decision Rule:* If a mod does not change any game mechanic, it belongs here. If it adds parts, resources, or new failure conditions, it belongs in Wave 1 or 2.
]]

// ═══════════════════════════════════════════════════════════════════
// MOD ENTRIES
// ═══════════════════════════════════════════════════════════════════

#section-heading([Mod List])

// ═══ UI & HUD ═══

#mod-entry(
  name: [Kerbal Engineer Redux],
  ckan_id: "KerbalEngineerRedux",
  url: "https://forum.kerbalspaceprogram.com/topic/17833-130-kerbal-engineer-redux-1130-2017-05-28/",
  description: [Displays critical flight data (delta-v, TWR, orbital info, biome, and more) in a customizable HUD. Essential for knowing your rocket's capabilities before you launch.],
  dependencies: (),
  impact_types: (UI),
  impact_description: [Adds readout panels to VAB/SPH and flight view. No new parts, no gameplay changes. Replaces guesswork with numbers.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x.],
)

#mod-entry(
  name: [BetterTimeWarp Continued],
  ckan_id: "BetterTimeWarpCont",
  url: "https://forum.kerbalspaceprogram.com/topic/154935-112x-bettertimewarpcontinued-customizable-time-warp-and-lossless-physics-warp/",
  description: [Adds custom warp speed levels and fixes stock time warp behavior. Lets you fine-tune warp rates for long burns or interplanetary transfers.],
  dependencies: (),
  impact_types: (UI),
  impact_description: [Replaces the stock warp rate list with customizable levels. No gameplay changes — just more control over how fast you wait.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x.],
)

#mod-entry(
  name: [Transfer Window Planner],
  ckan_id: "TransferWindowPlanner",
  url: "https://forum.kerbalspaceprogram.com/topic/84005-112x-transfer-window-planner-v1800-april-11/",
  description: [A porkchop-plot calculator for interplanetary transfers. Shows the most efficient departure date and delta-v required to reach any planet or moon.],
  dependencies: (),
  impact_types: (UI),
  impact_description: [Adds a planning tool accessible from the VAB and Tracking Station. No parts, no gameplay changes. Purely informational.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x.],
)

// ═══════════════════════════════════════════════════════════════════
// HOW TO USE THESE MODS
// ═══════════════════════════════════════════════════════════════════

#pagebreak()
#chapter-heading([Wave 0 Mods — How to Use Them])

#section-heading([Kerbal Engineer Redux (KER)])

KER adds two things: a toolbar button in the VAB/SPH, and a toolbar button in flight. Both open customizable readout panels.

*In the VAB:* Click the KER button to open the build engineer panel. This shows your rocket's delta-v per stage, TWR, and burn time — all calculated live as you build. You'll see two delta-v columns: *atmospheric* and *vacuum*. Atmospheric is for the first ~20 km of ascent (engines are less efficient in thick air). Vacuum is for everything above. For transfer stages and landers, always plan using the vacuum number.

The most important VAB readouts: *Delta-V*, *TWR*, and *Burn Time*. If TWR is below 1.0 at launch, you won't leave the pad. If delta-v to orbit is below 3,400 m/s, you're cutting it close.

*In flight:* Press the KER toolbar button (or the hotkey you set in settings) to open the flight HUD. You can click and drag readouts anywhere on screen. The essential flight readouts for a beginner:

- *Orbit: Apoapsis / Periapsis* — watch these during ascent and after maneuvers
- *Vessel: Altitude (Surface)* — shows your true height above terrain, not sea level
- *Surface: Vertical Speed* — critical for landings. Keep this low and decreasing
- *Orbit: Time to Apoapsis / Periapsis* — timing your circularization burns
- *Vessel: Total Delta-V* — how much gas you have left

#tip[[
  KER's readouts are deeply customizable, but don't go overboard. Start with the five listed above. Add more as you learn what each number means. A cluttered HUD is harder to read than no HUD at all.
]]

#section-heading([BetterTimeWarp Continued])

BetterTimeWarp replaces the stock warp bar (the arrows next to the MET clock) with a customizable warp menu. Click the toolbar button (a clock icon) to open settings.

*Key features:*
- *Custom warp rates:* You can add intermediate speeds (8×, 15×, etc.) for more granular time compression. Useful for long interplanetary burns where the stock jump from 50× to 100× is too abrupt.
- *Physics warp override:* Normally, physics warp (Alt+period) caps at 4×. BetterTimeWarp lets you push it higher with less risk of kraken attacks, though your mileage may vary with high-part-count vessels.
- *Lossless physics warp:* At moderate rates (up to ~10× physical), BetterTimeWarp runs extra physics steps to reduce the wobble and explosion risk that plagues stock physics warp.

#tip[[
  Set a custom physics warp of 6× for long ion-engine burns. At 6×, most craft can handle the physics load without spontaneous disassembly. Above 10×, save first.
]]

#section-heading([Transfer Window Planner])

TransferWindowPlanner (TWP) is a porkchop-plot tool that calculates the optimal departure time and delta-v for interplanetary transfers. You won't need it in Wave 0 — Mun and Minmus transfers are measured in hours, not months — but it's worth knowing where it lives.

*Access:* Toolbar button in the VAB, SPH, and Tracking Station. Opens a large window with dropdowns for origin and destination.

*How to read a porkchop plot:*
- The Y-axis is departure date, X-axis is arrival date
- Colors represent delta-v: blue = cheap, red = expensive
- Click anywhere on the plot to see exact departure time and delta-v
- TWP can create a maneuver node for you, but you'll still need to execute it manually

#info[[
  TWP becomes essential in Wave 1 when you start going interplanetary. For now, just know it exists. When you're ready to launch for Duna, open TWP first.
]]

// ═══════════════════════════════════════════════════════════════════
// TUTORIAL: FIRST STEPS
// ═══════════════════════════════════════════════════════════════════

#pagebreak()
#chapter-heading([Wave 0 Guide — First Steps])

#section-heading([Before You Launch])

#section-heading([Game Mode Choice])

Start a *Science* or *Career* save on Normal difficulty. Sandbox is tempting but overwhelming — you unlock all parts at once without context. Science mode gates parts behind experiments, teaching you one set of parts at a time. Career adds funds and contracts, giving you goals and constraints that mirror real space programs.

#tip[[
  If you choose Career, use default settings. Don't touch the difficulty sliders yet — the stock balance is well-tested for new players.
]]

#section-heading([Key Concepts])

Before you build anything, let's get the terminology straight. These words will appear constantly throughout the guide — and the game.

#section-heading([Delta-V (Δv)])

Delta-v is your rocket's *fuel budget*. It tells you how much your rocket can change its velocity, measured in meters per second (m/s). Think of it like the range on a car — you need enough to get where you're going.

Every maneuver costs delta-v:
- Getting from the launch pad to low Kerbin orbit: ~3,400 m/s
- Transfer from Kerbin orbit to the Mun: ~860 m/s
- Landing on the Mun from low orbit: ~580 m/s
- Returning to Kerbin: ~860 m/s

The sum of these is your mission's delta-v budget. If your rocket has less than the total required, you won't make it.

#info[[
  There are two kinds of delta-v: *atmospheric* (inside a planet's atmosphere) and *vacuum* (in space). Atmospheric delta-v is always lower because engines are less efficient when fighting air pressure. Always check which number you're looking at — the VAB shows atmospheric by default. Switch to vacuum in the delta-v panel for transfer and landing calculations.
]]

#section-heading([Apoapsis and Periapsis])

Every orbit is an ellipse. The *apoapsis* (Ap) is the highest point of your orbit above the body. The *periapsis* (Pe) is the lowest point. You'll use these constantly in the Map view to plan burns.

- Burning prograde at apoapsis raises periapsis
- Burning prograde at periapsis raises apoapsis
- To circularize your orbit, burn at Ap or Pe until they're equal

#section-heading([Prograde and Retrograde])

On the navball (the big blue ball at the bottom-center of your screen during flight):

- *Prograde* (green circle, no X) — your direction of travel. Burn prograde to speed up.
- *Retrograde* (green circle with an X) — opposite your direction of travel. Burn retrograde to slow down.

These are relative to what you're orbiting. In space, prograde is your orbital velocity vector. Near the ground, it's your surface velocity. Click the navball speed indicator to toggle between Orbit, Surface, and Target modes.

#section-heading([TWR — Thrust-to-Weight Ratio])

TWR is the ratio of your engine's thrust to your rocket's weight. A TWR of 1.0 means you hover. Below 1.0, you don't leave the pad. For a comfortable launch, aim for a TWR between 1.3 and 2.0 at liftoff. Higher TWR means faster acceleration but can cause aerodynamic stress and overheating in the lower atmosphere.

#tip[[
  As you burn fuel, your rocket gets lighter, so TWR increases during flight. A rocket that starts at TWR 1.3 might be at TWR 4.0 by the time the first stage burns out. Watch your throttle — you may need to reduce it to avoid going too fast too low.
]]

#section-heading([SAS — Stability Augmentation System])

SAS is your autopilot. Press T to toggle it on. When active, it holds your orientation against external forces and can automatically point at specific directions (prograde, retrograde, radial, normal, target, etc.). Higher-level pilots and probe cores unlock more SAS modes.

#section-heading([The Navball])

The navball shows your orientation in 3D space:
- *Blue half* — you're pointed at the sky
- *Brown half* — you're pointed at the ground
- The line where they meet is the horizon
- The center dot is your current heading
- Markers around the edge show cardinal directions: 0° = North, 90° = East, 180° = South, 270° = West

Most launches go *east* (90°) because Kerbin's rotation gives you a free 175 m/s of velocity in that direction.

#section-heading([The Kerbal Space Center])

Click through the buildings to understand what each one does:

- *Vehicle Assembly Building (VAB)* — build rockets (vertical launch)
- *Spaceplane Hangar (SPH)* — build planes (horizontal takeoff)
- *Tracking Station* — view and control all active flights
- *Mission Control* — accept and review contracts
- *Administration Building* — strategies (ignore for now)
- *Research and Development* — unlock parts with science points
- *Astronaut Complex* — hire and manage kerbonauts
- *Launch Pad / Runway* — where craft go up

#section-heading([Building Your First Rocket])

#section-heading([The Basics of Rocket Design])

Open the VAB. You'll see the parts list on the left and the assembly area in the center. Every rocket needs:

1. *Command Pod* — where the kerbal sits. Start with the Mk1 Command Pod.
2. *Fuel Tank* — holds liquid fuel and oxidizer. The FL-T series is standard.
3. *Engine* — burns fuel to produce thrust. The LV-T45 "Swivel" is a good first engine (it gimbals — steerable thrust).
4. *Parachute* — for landing safely. Mk16 parachute on top of the pod.
5. *Decoupler* — separates stages. Place between the pod and the tank if you want the pod to return alone, or at the bottom to eject the entire stage.

#info[[
  *The Golden Rule of Rocket Design:* Heavy stuff goes at the top, engines at the bottom. Your center of mass should be above your center of thrust. If the rocket flips during ascent, you have a stability problem — add fins at the bottom.
]]

#section-heading([Staging])

Staging is the sequence in which parts fire. The staging stack is on the right side of the VAB. The bottom-most stage fires first. A basic staging sequence:

- Stage 0 (top): Parachute deploys
- Stage 1: Decoupler fires, pod separates from tank
- Stage 2 (bottom): Engine ignites at launch

Drag parts in the staging list to reorder them. When in flight, press Space to activate the next stage.

#section-heading([The Science Jr. and Goo])

On your first rocket, add a *SC-9001 Science Jr.* (materials bay) and a *Mystery Goo Containment Unit* attached radially to the fuselage. These generate science when activated in different situations (launch pad, low atmosphere, high atmosphere, space). Press the green clipboard icon in flight to review science opportunities.

#section-heading([Reaching Orbit])

#section-heading([The Gravity Turn])

Building a rocket that reaches space is easy. Reaching *orbit* requires speed — about 2,300 m/s sideways. The most efficient ascent profile is the gravity turn:

1. Launch vertically until you reach ~100 m/s or 1,000 m altitude
2. Tilt eastward (toward the 90-degree heading mark on the navball) by about 5–10 degrees
3. Follow the prograde marker (the green circle without an X on the navball) — it will naturally drift toward the horizon
4. By 10,000 m, you should be at roughly 45 degrees pitch
5. By 30,000 m, near-horizontal
6. Switch to Map view (M) and watch your apoapsis. Cut the engine when apoapsis reaches ~80,000 m (above 70 km = space)
7. Coast to apoapsis, then burn prograde to circularize

#tip[[
  If your rocket flips during the gravity turn: add fins at the bottom, make the rocket taller rather than wider, and keep your speed below ~300 m/s while still in the thick lower atmosphere (below 10 km).
]]

#section-heading([Going to the Mun])

#section-heading([Transfer Burn])

From low Kerbin orbit (80–100 km circular, equatorial):

1. Switch to Map view. Rotate the camera so you can see the Mun's orbit.
2. The Mun rises over Kerbin's horizon — when it's about 45 degrees ahead of your craft in its orbit, you're at the transfer window.
3. Create a maneuver node on your orbit. Drag prograde until the projected path intersects the Mun's sphere of influence (SoI). It should take about 860 m/s.
4. Execute the burn at the node. Keep the craft pointed at the maneuver marker on the navball.

#info[[
  If you miss the Mun's SoI entirely, your burn timing was wrong. Adjust the maneuver node position along your orbit (drag the center circle of the node) — this changes *when* you burn, which changes *where* the Mun is when you arrive.
]]

#section-heading([Mun Capture and Landing])

When you enter the Mun's SoI, you'll be on a flyby trajectory. At Mun periapsis (Pe marker), burn retrograde to slow down and enter orbit. Target a 15–20 km circular orbit.

To land:

1. From low Mun orbit, burn retrograde until your trajectory line hits the surface. Target a flat area (the Mun's large craters — maria — are dark, flat regions).
2. As you descend, keep burning retrograde. Watch your surface velocity indicator (click the navball speed readout until it says "Surface").
3. When below ~2,000 m altitude, your speed should drop below 100 m/s.
4. In the final ~500 m, keep velocity below 20 m/s. Land at less than ~6 m/s to avoid breaking anything.
5. SAS set to "Retrograde Hold" (if unlocked) keeps you oriented for the burn — use Stability Assist otherwise and steer manually.

#tip[[
  Kill horizontal velocity first (retrograde marker centered on the horizon line), then control vertical descent. If you tip over on landing, your horizontal velocity was too high.
]]

#section-heading([Returning from the Mun])

1. Launch eastward from the Mun's surface (the Mun rotates slowly — east is still the efficient direction)
2. Establish a low circular orbit (~15 km)
3. Burn prograde to escape the Mun — your trajectory will bend back toward Kerbin
4. Target a Kerbin periapsis of ~35 km for aerocapture
5. Detach the command pod, deploy parachute, land in the ocean

#section-heading([Basic Docking])

#section-heading([Why Dock?])

Docking lets you join two spacecraft in orbit. It's essential for Apollo-style Mun missions (leave the lander in Mun orbit, dock to return), space stations, and refueling operations.

#section-heading([Rendezvous])

1. Launch the second craft into a lower orbit than the target (faster orbit = catches up) or higher (slower = target catches you).
2. Target the other craft in Map view (click it, select "Set as Target").
3. Create a maneuver node. Adjust until the closest approach markers (orange and magenta arrows) are within 2 km of each other.
4. Execute the burn.
5. When within ~2 km, your navball switches to "Target" mode. The prograde marker now shows your velocity *relative to the target*.
6. Burn retrograde (in target mode) to zero out relative velocity.
7. Point at the target (pink circle marker) and burn gently (~10–20 m/s) toward it.
8. Repeat: close distance, zero velocity, aim again. Don't rush — docking is a slow dance.

#section-heading([Docking Proper])

1. When within ~50 m, right-click your docking port and select "Control from Here."
2. Right-click the target's docking port and select "Set as Target."
3. Switch to fine-control mode (Caps Lock — pitch/yaw/roll indicators turn blue).
4. Use RCS (R key) and translation controls (I/J/K/L for up/down/left/right, H/N for forward/back).
5. Align the prograde marker with the target marker on the navball.
6. Drift in at less than 0.5 m/s. The magnetic docking ports will snap together.

#info[[
  RCS thrusters must be placed symmetrically around your craft's center of mass to avoid unwanted rotation during translation. In the VAB, toggle the center of mass indicator to check.
]]

#section-heading([Where to Go from Here])

At this point you can reach orbit, land on the Mun, dock two craft together, and return home safely. You've mastered the core skills. When you're comfortable with these maneuvers — able to execute them without reverting to the VAB every five minutes — you're ready for Wave 1.
