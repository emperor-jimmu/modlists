// guide/wave-0-first-steps.typ

#import "../template/lib.typ": *

#section-heading([About Wave 0])

Wave 0 is for new players or veterans returning to stock KSP. It adds only the most essential HUD, QoL, and bugfix mods — nothing that changes gameplay, parts, or physics. By the end of this wave you will reach stable Kerbin orbit, the foundation for everything that follows.

#wave-criteria-table()

#info([
  *Wave 0 Decision Rule:* Only UI/HUD overlays, readouts, and bugfixes. No docking aids, no VAB tools, no planning utilities. If a mod changes how you build or plan rather than what information you see, it belongs in Wave 0.5 or later.
])

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

// ═══ BUGFIXES & FOUNDATION ═══

#mod-entry(
  name: [KSP Community Fixes],
  ckan_id: "KSPCommunityFixes",
  url: "https://forum.kerbalspaceprogram.com/topic/204002-kspcommunityfixes/",
  description: [Comprehensive bugfix and QoL patch collection. Fixes dozens of stock bugs (resource handling, physics quirks, UI glitches) and adds optional quality-of-life tweaks like better maneuver node handling, SAS improvements, and part-action-window enhancements.],
  dependencies: ("ModuleManager", "Harmony2"),
  impact_types: (UI),
  impact_description: [Patches stock bugs and adds optional UI/QoL improvements. All fixes can be individually toggled via config. No new parts or mechanics — just makes the stock game work better.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Requires Harmony2. Settings configurable via the in-game difficulty options menu.],
)

#mod-entry(
  name: [Station Keeping],
  ckan_id: "StationKeeping",
  url: "https://forum.kerbalspaceprogram.com/topic/173518-112x-station-keeping/",
  description: [Fixes orbit drift during timewarp. In stock KSP, a vessel's orbit subtly changes every time you enter and exit timewarp — this mod locks orbits precisely on rails during warp so your carefully-placed station or satellite constellation stays exactly where you left it.],
  dependencies: ("ModuleManager"),
  impact_types: (UI),
  impact_description: [Prevents orbital drift during timewarp transitions. No new parts or mechanics — purely a precision fix for the stock physics engine. Critical for maintaining station orbits and relay networks.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Without it, every timewarp session slowly degrades your orbits. Essential once you start building stations and relay networks in later waves.],
)

// ═══ FLIGHT INFORMATION ═══

#mod-entry(
  name: [BetterBurnTime],
  ckan_id: "BetterBurnTime",
  url: "https://spacedock.info/mod/21/BetterBurnTime",
  description: [Shows more accurate burn time and countdown information next to the navball during maneuvers. Displays time-to-burn, estimated burn duration, and a "time-to-impact" readout during landings or rendezvous approach.],
  dependencies: ("ModuleManager"),
  impact_types: (UI),
  impact_description: [Improves the burn-time indicator next to the navball with more accurate predictions and additional context. No parts, no gameplay changes — just better numbers.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Does not conflict with KER — provides complementary burn-time data displayed directly on the navball.],
)

#mod-entry(
  name: [Precise Maneuver],
  ckan_id: "PreciseManeuver",
  url: "https://forum.kerbalspaceprogram.com/topic/207261-precisemaneuver/",
  description: [Replaces and overhauls the stock maneuver node editor with a precision window. Edit maneuver components numerically (prograde, normal, radial), fine-tune burn timing, and increment/decrement with configurable step sizes. For players who want exact numbers rather than dragging gizmos.],
  dependencies: (),
  impact_types: (UI),
  impact_description: [Replaces the stock maneuver gizmo with a numerical editor window. No gameplay changes — the maneuver node system works identically, you just get precise numeric control instead of click-and-drag.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Complements MechJeb's Maneuver Planner (Wave 1) — use both for full maneuver control.],
)

// ═══ TOOLBAR ═══

#mod-entry(
  name: [Toolbar Controller],
  ckan_id: "ToolbarController",
  url: "https://github.com/linuxgurugamer/ToolbarControl",
  description: [Modern maintained toolbar framework. Provides a unified toolbar button system used by many mods (KAC, Waypoint Manager, Trajectories). Required dependency for several Wave 0.5 mods.],
  dependencies: (),
  impact_types: (UI),
  impact_description: [Provides a framework for toolbar buttons. No visible impact on its own — other mods use it to add their buttons.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Required dependency for mods in later waves.],
)

// ═══ UI THEME ═══

#mod-entry(
  name: [ZTheme],
  ckan_id: "ZTheme",
  url: "https://forum.kerbalspaceprogram.com/topic/217396-112x-ztheme-v121-a-dark-theme-for-ksp-2025-07-26/",
  description: [Dark UI theme for KSP's interface. Replaces the stock light-gray UI panels with a sleek dark theme across all scenes. Easier on the eyes during long play sessions.],
  dependencies: (),
  impact_types: (UI, Graphics),
  impact_description: [Replaces UI textures and color schemes with a dark theme. No gameplay changes — purely cosmetic UI reskin. Applies globally to all KSP interface elements.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Installed via CKAN. No dependencies. Can be toggled or uninstalled at any time without affecting saves.],
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

*In flight:* Press the KER toolbar button (or the hotkey you set in settings) to open the flight HUD. The essential flight readouts for a beginner:
- *Orbit: Apoapsis / Periapsis* — watch these during ascent and after maneuvers
- *Vessel: Altitude (Surface)* — shows your true height above terrain, not sea level
- *Surface: Vertical Speed* — critical for landings. Keep this low and decreasing
- *Orbit: Time to Apoapsis / Periapsis* — timing your circularization burns
- *Vessel: Total Delta-V* — how much gas you have left

#tip([
  KER's readouts are deeply customizable, but don't go overboard. Start with the five listed above. Add more as you learn what each number means. A cluttered HUD is harder to read than no HUD at all.
])

#section-heading([BetterTimeWarp Continued])

BetterTimeWarp replaces the stock warp bar (the arrows next to the MET clock) with a customizable warp menu. Click the toolbar button (a clock icon) to open settings.

*Key features:*
- *Custom warp rates:* You can add intermediate speeds (8×, 15×, etc.) for more granular time compression.
- *Physics warp override:* Normally, physics warp (Alt+period) caps at 4×. BetterTimeWarp lets you push it higher.
- *Lossless physics warp:* At moderate rates (up to ~10× physical), BetterTimeWarp runs extra physics steps to reduce wobble and explosion risk.

#tip([
  Set a custom physics warp of 6× for long ion-engine burns. At 6×, most craft can handle the physics load without spontaneous disassembly. Above 10×, save first.
])

#section-heading([Precise Maneuver])

Open Precise Maneuver by clicking its icon (a maneuver node with a gear) in the toolbar when you have a maneuver node selected. The window shows numerical values for prograde, normal, and radial components. Use the +/− buttons for fine adjustments, or type exact values. The "Snap" dropdown controls increment size — use 1.0 m/s for rough planning, 0.1 or 0.01 for fine-tuning intercepts.

#section-heading([Station Keeping])

Station Keeping works automatically — install it and forget it. Your station and satellite orbits will remain stable across timewarp sessions. No configuration needed. If you notice a station's orbit still drifting, check that the mod is installed correctly (look for a "StationKeeping" folder in GameData).

#section-heading([BetterBurnTime])

BetterBurnTime replaces the stock burn-time indicator next to the navball. When you create a maneuver node, it shows three numbers:

- *Time to burn:* Countdown until you should start burning. The indicator turns green when it's time.
- *Burn duration:* How long the burn will take at full throttle.
- *Time to impact:* Shows during landings — how many seconds until you hit the surface. Watch this on final descent.

Start your burn so that half the burn happens before the node and half after. BetterBurnTime handles the timing — when the countdown hits zero, throttle up. When the "Est. Burn" counter reaches zero, cut engines.

#tip([
  During landings, BetterBurnTime's impact timer is more responsive than the altimeter alone. When it counts down to ~3 seconds at high speed, you're about to lithobrake. Burn retrograde immediately.
])

// ═══════════════════════════════════════════════════════════════════
// TUTORIAL: FIRST STEPS
// ═══════════════════════════════════════════════════════════════════

#pagebreak()
#chapter-heading([Wave 0 Guide — First Steps])

#section-heading([Before You Launch])

#section-heading([Game Mode Choice])

Start a *Science* or *Career* save on Normal difficulty. Sandbox is tempting but overwhelming — you unlock all parts at once without context. Science mode gates parts behind experiments, teaching you one set of parts at a time. Career adds funds and contracts, giving you goals and constraints that mirror real space programs.

#tip([
  If you choose Career, use default settings. Don't touch the difficulty sliders yet — the stock balance is well-tested for new players.
])

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

#info([
  There are two kinds of delta-v: *atmospheric* (inside a planet's atmosphere) and *vacuum* (in space). Atmospheric delta-v is always lower because engines are less efficient when fighting air pressure. Always check which number you're looking at — the VAB shows atmospheric by default. Switch to vacuum in the delta-v panel for transfer and landing calculations.
])

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

#tip([
  As you burn fuel, your rocket gets lighter, so TWR increases during flight. A rocket that starts at TWR 1.3 might be at TWR 4.0 by the time the first stage burns out. Watch your throttle — you may need to reduce it to avoid going too fast too low.
])

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

#info([
  *The Golden Rule of Rocket Design:* Heavy stuff goes at the top, engines at the bottom. Your center of mass should be above your center of thrust. If the rocket flips during ascent, you have a stability problem — add fins at the bottom.
])

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

#tip([
  If your rocket flips during the gravity turn: add fins at the bottom, make the rocket taller rather than wider, and keep your speed below ~300 m/s while still in the thick lower atmosphere (below 10 km).
])

#awe([
  *Look down.*

  You are in orbit. Not "almost in orbit." Not "in space but falling back." You are circling an entire planet at 2,300 meters per second, and it is not pulling you down. The blue arc of Kerbin fills the window. The stars are steady. You did this with math, engineering, and a rocket you built yourself.

  This is not a loading screen. This is a planet. And you are flying around it.
])

#section-heading([Where to Go from Here])

At this point you can reach a stable Kerbin orbit. You understand the gravity turn, how to read the navball, and how to use KER's readouts to plan your burns. Congratulations — you're no longer ground-bound.

From here, you have options:
- *Practice:* Launch to different orbit altitudes and inclinations. Try a polar orbit (heading north instead of east).
- *Experiment:* Build progressively larger rockets. See how much payload you can lift to orbit.
- *Progress:* When you can consistently reach orbit without reverting flights, install Wave 0.5. It adds advanced planning tools and teaches you to go further — Mun landings, docking, and space stations.

#pagebreak()

#awe([
  *Every landing is a controlled crash.*

  When BetterBurnTime's impact timer counts down and your engine bell kisses the surface, you are completing a journey that began on the launchpad. Fuel tanks emptied, stages discarded, parachutes deployed — every gram of your rocket was accounted for in the math that brought you here. The kerbal in the pod just traveled farther than most humans in history. Take a moment before you hit "Recover Vessel."
])

#chapter-heading([Player Challenges — Wave 0])

These are optional goals to test your orbital skills. No mods beyond Wave 0 required.

- *Single-Stage to Orbit:* Reach orbit without decoupling anything. The entire rocket goes to space together.
- *SRB Only:* Orbit using only solid rocket boosters — no liquid engines. Throttle management is... creative.
- *Minimalist:* Orbit with a rocket under 10 parts. Every part must earn its place.
- *High Orbit:* Achieve a circular orbit at 500 km altitude (stock contracts consider this "high orbit" — science bonus).
- *Polar Orbit:* Launch north from KSC into a 90° inclination orbit. Harder than east because you get no rotation assist.
- *Precision Landing:* De-orbit and splash down within 5 km of the Kerbal Space Center. Use your trajectory prediction skill.
