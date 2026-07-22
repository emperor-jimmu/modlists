// guide/wave-0-first-steps.typ

#import "../template/lib.typ": *

#section-heading([About Wave 0])

Wave 0 is for new players or veterans returning to stock KSP. It adds only the most essential HUD, QoL, and bugfix mods — nothing that changes gameplay, parts, or physics. You will learn core skills in the stock game before any tools become more complex.

#wave-criteria-table()

#info[[
  *Wave 0 Decision Rule:* Only UI/HUD overlays, readouts, and bugfixes. No docking aids, no VAB tools, no planning utilities. If a mod changes how you build or plan rather than what information you see, it belongs in Wave 0.5 or later.
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
  version_pin: [Compatible with KSP 1.12.x. If you have stations or relay networks, this mod is essential. Without it, every timewarp session slowly degrades your orbits.],
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

#tip[[
  KER's readouts are deeply customizable, but don't go overboard. Start with the five listed above. Add more as you learn what each number means. A cluttered HUD is harder to read than no HUD at all.
]]

#section-heading([BetterTimeWarp Continued])

BetterTimeWarp replaces the stock warp bar (the arrows next to the MET clock) with a customizable warp menu. Click the toolbar button (a clock icon) to open settings.

*Key features:*
- *Custom warp rates:* You can add intermediate speeds (8×, 15×, etc.) for more granular time compression.
- *Physics warp override:* Normally, physics warp (Alt+period) caps at 4×. BetterTimeWarp lets you push it higher.
- *Lossless physics warp:* At moderate rates (up to ~10× physical), BetterTimeWarp runs extra physics steps to reduce wobble and explosion risk.

#tip[[
  Set a custom physics warp of 6× for long ion-engine burns. At 6×, most craft can handle the physics load without spontaneous disassembly. Above 10×, save first.
]]

#section-heading([Precise Maneuver])

Open Precise Maneuver by clicking its icon (a maneuver node with a gear) in the toolbar when you have a maneuver node selected. The window shows numerical values for prograde, normal, and radial components. Use the +/− buttons for fine adjustments, or type exact values. The "Snap" dropdown controls increment size — use 1.0 m/s for rough planning, 0.1 or 0.01 for fine-tuning intercepts.

#section-heading([Station Keeping])

Station Keeping works automatically — install it and forget it. Your station and satellite orbits will remain stable across timewarp sessions. No configuration needed. If you notice a station's orbit still drifting, check that the mod is installed correctly (look for a "StationKeeping" folder in GameData).

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
  RCS thrusters must be placed symmetrically around your craft's center of mass to avoid unwanted rotation during translation. In the VAB, toggle the center of mass indicator to check. RCS Build Aid (Wave 0.5) makes this much easier.
]]

#section-heading([Where to Go from Here])

At this point you can reach orbit, land on the Mun, dock two craft together, and return home safely. You've mastered the core skills. When you're comfortable with these maneuvers — able to execute them without reverting to the VAB every five minutes — you're ready for Wave 0.5.
