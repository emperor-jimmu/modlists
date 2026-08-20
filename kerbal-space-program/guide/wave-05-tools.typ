// guide/wave-0-tools.typ

#import "../template/lib.typ": *

#section-heading([About Wave 0.5])

Wave 0.5 adds advanced planning tools, editor enhancements, and visual indicators. These mods go beyond Wave 0's pure UI/HUD — they change how you interact with the VAB/SPH, plan missions, and manage your save. By the end of this wave you will land on the Mun, dock spacecraft in orbit, and assemble your first space station. You must be able to reach orbit consistently (Wave 0) before installing these.

#wave-criteria-table()

#info([
  *Wave 0.5 Decision Rule:* These mods add no new parts or gameplay mechanics, but they change editor workflows, introduce mission planning, and affect how you build. If you're still learning the stock VAB and mission flow, stay on Wave 0 for now.
])

// ═══════════════════════════════════════════════════════════════════
// MOD ENTRIES
// ═══════════════════════════════════════════════════════════════════

#section-heading([Mod List])

// ═══ TRANSFER & TRAJECTORY ═══

#section-heading([Transfer & Trajectory])

#mod-entry(
  name: [Transfer Window Planner],
  ckan_id: "TransferWindowPlanner",
  url: "https://forum.kerbalspaceprogram.com/topic/84005-112x-transfer-window-planner-v1800-april-11/",
  description: [A porkchop-plot calculator for interplanetary transfers. Shows the most efficient departure date and delta-v required to reach any planet or moon. Generates ejection angles and suggested burn parameters for precision transfers.],
  dependencies: (),
  impact_types: (UI),
  impact_description: [Adds a planning tool accessible from the VAB and Tracking Station. No parts, no gameplay changes — purely informational. Shows delta-v over time as a porkchop plot with color-coded efficiency.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x.],
)

#mod-entry(
  name: [Trajectories],
  ckan_id: "Trajectories",
  url: "https://spacedock.info/mod/396/Trajectories",
  description: [Predicts your vessel's atmospheric trajectory accounting for drag and planetary rotation. Shows the actual landing site on the planet's surface in Map view — essential for precision landings at the KSC runway, targeted reentries, or Falcon 9-style booster recovery.],
  dependencies: ("ModuleManager", "ToolbarController"),
  impact_types: (UI),
  impact_description: [Overlays a predicted atmospheric trajectory on the Map view. Shows where you'll actually land, accounting for aerodynamics and rotation. Purely predictive — does not change flight physics.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Accuracy depends on vessel orientation during atmospheric flight. Set your attitude then read the prediction.],
)

// ═══ DOCKING AIDS ═══

#section-heading([Docking Aids])

#mod-entry(
  name: [Docking Port Alignment Indicator],
  ckan_id: "DockingPortAlignmentIndicator",
  url: "https://spacedock.info/mod/543/Docking-Port-Alignment-Indicator",
  description: [Adds a dedicated docking alignment window showing relative position, orientation, and alignment of your vessel to the target docking port. Displays a crosshair-style indicator that makes precision docking intuitive. Recommended while learning docking.],
  dependencies: ("ModuleManager"),
  impact_types: (UI),
  impact_description: [Adds a popup window during docking with alignment crosshairs, distance, and relative angle readouts. No parts — the indicator appears when you target a docking port and select "Control from Here" on your own port.],
  conflicts: [Community Navball Docking Alignment Indicator provides similar information on the navball instead of in a separate window. Choose the interface style you prefer — you do not need both. DPAI is the recommended default for this modlist.],
  version_pin: [Compatible with KSP 1.12.x. Wave 2 suggests switching to Community Navball DAI once docking becomes second nature.],
)

// ═══ SCIENCE TRACKING ═══

#section-heading([Science & Mission Tracking])

#mod-entry(
  name: [[x] Science! Continued],
  ckan_id: "xScienceContinued",
  url: "https://forum.kerbalspaceprogram.com/topic/199287-112x-x-science-continued/",
  description: [Science experiment checklist and tracker. Shows which experiments you've completed and which are still available per biome, situation, and celestial body. Eliminates the guesswork of "have I done a crew report in low Mun orbit?" — the checklist tells you exactly what science remains.],
  dependencies: (),
  impact_types: (UI),
  impact_description: [Adds a toolbar window listing all available science experiments with completion status. No new parts or gameplay changes — purely tracks what you've already done. Filterable by body, biome, and experiment type.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Essential for Career and Science mode — prevents the tedious process of manually tracking which experiments you've run where.],
)

// ═══ MISSION PLANNING ═══

#section-heading([Mission Planning & Management])

#mod-entry(
  name: [Kerbal Alarm Clock],
  ckan_id: "KerbalAlarmClock",
  url: "https://github.com/linuxgurugamer/KerbalAlarmClock",
  description: [Advanced alarm system for managing multiple concurrent missions. Set alarms for maneuver nodes, transfer windows, SOI changes, and periapsis/apoapsis crossings. Automatically pauses timewarp or kills warp before the event. More feature-rich than the stock alarm clock.],
  dependencies: ("ToolbarController"),
  impact_types: (UI),
  impact_description: [Adds an alarm clock interface accessible via toolbar. Alarms can trigger at specific times, orbit events, or transfer windows. No gameplay changes — purely a mission management tool.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Optional — the stock alarm clock (added in KSP 1.12) handles basic use cases. Use KAC if you manage 5+ concurrent missions.],
)


#mod-entry(
  name: [Waypoint Manager],
  ckan_id: "WaypointManager",
  url: "https://spacedock.info/mod/3107/Waypoint-Manager",
  description: [Displays custom waypoints in the flight view and on the navball for navigation. Create waypoints at specific coordinates, at your current position, or at nearby vessels. Useful for marking landing sites, biome boundaries, or base locations during flight.],
  dependencies: ("ToolbarController"),
  impact_types: (UI),
  impact_description: [Adds in-flight waypoint markers visible in the world and on the navball. Waypoints are persistent and can be created/edited in flight. No parts or gameplay changes.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Waypoints persist across flights in the same save. Essential for precision surface operations and base-building in later waves.],
)

#mod-entry(
  name: [Tracking Station Evolved],
  ckan_id: "TrackingStationEvolved",
  url: "https://github.com/linuxgurugamer/TrackingStationEvolved",
  description: [Overhauls the Tracking Station interface with sortable, filterable vessel lists, customizable columns, and bulk vessel management. When you have dozens of flights, debris, and stations across the Kerbol system, the stock tracking station becomes unwieldy — this fixes that.],
  dependencies: (),
  impact_types: (UI),
  impact_description: [Replaces the stock Tracking Station vessel list with a sortable, filterable table. Add/remove columns for orbit info, crew, resources, and vessel type. Bulk-terminate debris, rename vessels, and sort by any parameter.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Essential once you have 20+ active flights. Particularly useful for relay networks and multi-mission campaigns.],
)

#mod-entry(
  name: [CapCom — Mission Control On The Go],
  ckan_id: "CapCom",
  url: "https://forum.kerbalspaceprogram.com/topic/107789-18x-capcom-mission-control-on-the-go/",
  description: [Review and accept contracts without returning to Mission Control. Access the contract list from any scene via a toolbar button — accept new contracts, review active ones, and check deadlines while in flight or the tracking station.],
  dependencies: ("ToolbarController"),
  impact_types: (UI),
  impact_description: [Adds a toolbar button to access the contract list from any scene. No gameplay changes — contracts still function identically, you just don't need Mission Control for management.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Manual install from SpaceDock — not on CKAN. Requires ToolbarController.],
)

#mod-entry(
  name: [Contract Configurator],
  ckan_id: "ContractConfigurator",
  url: "https://forum.kerbalspaceprogram.com/topic/91625-1101-contract-configurator-v1305-2020-10-05/",
  description: [Framework for custom contract packs. Does nothing on its own — other mods use it to add new contract types (exploration, tourism, base-building, etc.) to Mission Control. Required if you want to expand KSP's career mode contract variety beyond the stock offerings.],
  dependencies: (),
  impact_types: (UI),
  impact_description: [Provides the contract infrastructure that custom contract packs build on. No gameplay changes by itself — install alongside contract packs to see new contracts. Framework-only mod.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Framework only — no effect without contract packs. Install now so it's ready when you add career-expanding packs.],
)

// ═══ VAB/SPH TOOLS ═══

#section-heading([VAB/SPH Tools])

#mod-entry(
  name: [Conformal Decals],
  ckan_id: "ConformalDecals",
  url: "https://github.com/JPLRepo/ConformalDecals",
  description: [Apply customized flags and decals directly onto part surfaces. Decals conform to curved surfaces and can be scaled, rotated, and positioned anywhere on your craft. Purely cosmetic — the Kerbal equivalent of nose art and mission patches on real spacecraft.],
  dependencies: (),
  impact_types: (UI, Graphics),
  impact_description: [Adds decal parts that project your chosen flag onto any surface. Decals are physicsless — no mass, no drag, no gameplay impact. Complements Reforged Materials (recoloring) for complete visual customization.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Works on any part surface. Decals are purely visual — no effect on vessel performance.],
)

#mod-entry(
  name: [Buoyancy Adjuster],
  ckan_id: "BuoyancyAdjuster",
  url: "https://github.com/linuxgurugamer/BuoyancyAdjuster",
  description: [Adjust the buoyancy of any part to make submersibles, submarines, and floating bases practical. Stock KSP has no built-in buoyancy control — this mod lets you tune whether a part floats, sinks, or hovers at neutral buoyancy. Essential for underwater exploration.],
  dependencies: ("ModuleManager"),
  impact_types: (UI),
  impact_description: [Adds a buoyancy slider to part right-click menus. Positive values = float higher. Negative = sink. Zero = neutral. No new parts — every existing part gains configurable buoyancy.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Makes submarine and underwater base construction feasible without part mass manipulation.],
)

#mod-entry(
  name: [Speed Unit Annex],
  ckan_id: "SpeedUnitAnnex",
  url: "https://github.com/yalov/SpeedUnitAnnex",
  description: [Changes the navball speed readout from m/s to Mach number, knots, or km/h. Displays Mach number at the top of the navball when in atmosphere — essential for supersonic flight management and realistic aircraft operations.],
  dependencies: (),
  impact_types: (UI),
  impact_description: [Adds unit conversion to the navball speed indicator. No gameplay changes — purely changes how speed is displayed. Configure your preferred unit in the mod's settings. Mach is most useful for atmospheric flight; knots for maritime.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Particularly useful for aircraft builders — knowing you're at Mach 2.2 is more intuitive than 660 m/s.],
)

#mod-entry(
  name: [KerbNote Lite],
  ckan_id: "KerbNoteLite",
  url: "https://github.com/linuxgurugamer/KerbNoteLite",
  description: [Terrain warning system and in-flight notepad. Audible and visual terrain proximity warnings prevent CFIT (controlled flight into terrain) during landing and low-altitude flight. Also adds a persistent notepad for mission notes.],
  dependencies: (),
  impact_types: (UI),
  impact_description: [Adds terrain proximity alerts with configurable warning thresholds. The "pull up" warning triggers when your descent rate and terrain proximity indicate imminent impact. Notepad feature persists across scene changes for mission tracking.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Terrain warnings are most useful for night landings, IVA-only flights, and landing on bodies with poor visibility.],
)

#mod-entry(
  name: [KerbVision IR],
  ckan_id: "KerbVisionIR",
  url: "https://github.com/linuxgurugamer/KerbVisionIR",
  description: [Night vision and infrared camera overlay for dark-side missions. Toggleable IR view illuminates terrain and vessels in complete darkness — essential for landing on a planet's night side, docking in shadow, or navigating unlit terrain.],
  dependencies: (),
  impact_types: (UI),
  impact_description: [Adds a night-vision camera overlay accessible via toolbar. The IR view shows terrain and vessels in grayscale thermal-style rendering. No gameplay changes — purely a visual aid for low-light conditions.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Particularly useful for outer-planet missions (OPM, Jool) where solar illumination is extremely weak. Toggle on/off as needed — no permanent HUD change.],
)

#mod-entry(
  name: [The Janitor's Closet],
  ckan_id: "JanitorsCloset",
  url: "https://spacedock.info/mod/944/The-Janitors-Closet",
  description: [Parts management tool for the VAB/SPH. Filter, sort, and hide parts by mod, category, or custom rules. When you have dozens of parts packs installed, this keeps the editor part list manageable by letting you hide parts you never use.],
  dependencies: ("ModuleManager"),
  impact_types: (UI),
  impact_description: [Adds a part-filtering interface in the VAB/SPH. Can permanently hide parts from the editor list or temporarily filter by mod. No parts removed from the game — just hidden from the editor menu.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Particularly useful after installing large parts packs in Waves 1 and 2.],
)

#mod-entry(
  name: [RCS Build Aid],
  ckan_id: "RCSBuildAidCont",
  url: "https://github.com/linuxgurugamer/RCSBuildAid",
  description: [Shows your vessel's center of mass with dry tanks (fuel drained) and visualizes RCS thrust vectors in the VAB/SPH. Displays torque caused by misaligned RCS — critical for building balanced craft that translate cleanly without unwanted rotation during docking.],
  dependencies: ("ModuleManager"),
  impact_types: (UI),
  impact_description: [Adds CoM visualization and RCS thrust-vector display in the editor. Shows how your CoM shifts as fuel drains and whether RCS placement will cause rotation. Pure build aid — no flight-time changes.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Essential for designing balanced RCS systems, VTOL craft, and precision landers. Use the dry-CoM marker to ensure stability throughout all fuel states.],
)

#mod-entry(
  name: [VAB Organizer],
  ckan_id: "VABOrganizer",
  url: "https://github.com/Bezzier/VABOrganizer",
  description: [Organizes the VAB/SPH part list into collapsible, sortable categories far beyond the stock tabs. Group parts by mod, function, size, or custom rules. Complementary to Janitor's Closet — VAB Organizer reorganizes parts; Janitor's Closet hides them.],
  dependencies: (),
  impact_types: (UI),
  impact_description: [Reorganizes the editor part list with custom categories and sorting. Mod configs available for popular parts packs to auto-sort their parts into logical groups. Use alongside Janitor's Closet for full editor organization.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Pairs with Janitor's Closet for complete editor part management. Most effective after installing large parts packs in Waves 1 and 2.],
)

#mod-entry(
  name: [Editor Extensions Redux],
  ckan_id: "EditorExtensionsRedux",
  url: "https://github.com/linuxgurugamer/EditorExtensionsRedux",
  description: [Advanced build tools for the VAB/SPH: higher symmetry modes (up to 50×), angle snap customization, vertical/horizontal snapping, and fine-offset controls. Unlocks build precision that the stock editor's 8× symmetry and coarse angle snap can't achieve.],
  dependencies: (),
  impact_types: (UI),
  impact_description: [Extends the stock editor with additional symmetry modes, angle options, and alignment tools. No new parts — just more precise ways to place them. Enables builds that are impractical or impossible with stock editor constraints.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Higher symmetry counts useful for ring stations, engine clusters, and RCS placement. Angle snap customization enables precise truss and fairing angles.],
)

#mod-entry(
  name: [Hangar Extender],
  ckan_id: "HangerExtenderExtended",
  url: "https://spacedock.info/mod/1428/HangarExtender",
  description: [Expands the VAB and SPH build boundaries so you can construct rockets and planes larger than the stock editor allows. Essential for large historical rockets, interplanetary motherships, and massive space stations assembled in the editor.],
  dependencies: (),
  impact_types: (UI),
  impact_description: [Removes the editor build-area size limits. No new parts or mechanics — you can simply build larger. Extends build area in all directions — horizontal for SPH, vertical for VAB.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Particularly useful in Wave 1 when building large historical launchers and space stations.],
)

// ═══ KSC & LAUNCH SITES ═══

#section-heading([KSC & Launch Sites])

#mod-entry(
  name: [Kerbal Konstructs],
  ckan_id: "KerbalKonstructs",
  url: "https://forum.kerbalspaceprogram.com/topic/204210-ksp-18-kerbal-konstructs-continued/",
  description: [Framework for adding new static buildings, structures, and launch sites to KSP. Required by Water Launch Sites, Tundra's Space Center, and Kerbin Side Remastered for placing additional locations on planetary surfaces.],
  dependencies: (),
  impact_types: (UI),
  impact_description: [Provides the framework that other mods use to place static structures and alternate launch sites. No visible effect on its own — install alongside site-adding mods to see new locations.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Required by Water Launch Sites (this wave) and several Wave 1 mods.],
)

#mod-entry(
  name: [Water Launch Sites],
  ckan_id: "WaterLaunchSites",
  url: "https://forum.kerbalspaceprogram.com/topic/183937-1122-water-launch-sites-2021-09-11/",
  description: [Adds water-based launch sites to Kerbin. Launch seaplanes, boats, and amphibious craft directly from the ocean. Adds several water launch locations around Kerbin for varied maritime and seaplane operations.],
  dependencies: ("KerbalKonstructs"),
  impact_types: (UI),
  impact_description: [Adds water launch sites via KerbalKonstructs. Purely additional launch location options for seaplane and maritime missions. Requires KerbalKonstructs (included in this wave).],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Manual install from forum thread — not on CKAN. Requires KerbalKonstructs.],
)

// ═══ TECH TREE ═══

#section-heading([Tech Tree])

#mod-entry(
  name: [Hide Empty Tech Tree Nodes],
  ckan_id: "HideEmptyTechNodes",
  url: "https://spacedock.info/mod/577/HideEmptyTechNodes",
  description: [Removes empty tech tree nodes from the R&D Center view. When you install a modified tech tree like Community Tech Tree, not all nodes will be populated by your mods — this hides the empty ones for a cleaner interface.],
  dependencies: (),
  impact_types: (UI),
  impact_description: [Hides technology nodes in the R&D Center that have no parts available to unlock. Purely cosmetic — does not change the tech tree structure or part assignments.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Most useful when paired with Community Tech Tree (Wave 1). Does nothing noticeable with the stock tech tree since all stock nodes are populated.],
)

// ═══ VISUAL INDICATORS ═══

#section-heading([Visual Indicators])

#mod-entry(
  name: [IndicatorLights],
  ckan_id: "IndicatorLights",
  url: "https://spacedock.info/mod/566/IndicatorLights",
  description: [Adds functional LED indicators to stock parts. Batteries show charge level with colored lights, probe cores show signal status, docking ports show alignment, and more. Parts that were once opaque black boxes now visually communicate their state.],
  dependencies: ("ModuleManager"),
  impact_types: (UI, Graphics),
  impact_description: [Adds colored light indicators to stock parts that reflect actual part state (charge, signal, control, etc.). Purely visual — part functionality is unchanged. The indicators provide at-a-glance status without opening right-click menus.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. IndicatorLights Community Extensions adds indicators for mod parts (see below).],
)

#mod-entry(
  name: [IndicatorLights Community Extensions],
  ckan_id: "IndicatorLightsCommunityExtensions",
  url: "https://spacedock.info/mod/974/IndicatorLights-Community-Extensions",
  description: [Extends IndicatorLights with LED indicators for popular mod parts including ReStock, Near Future Technologies, and others. Ensures your entire part catalog benefits from visual status indicators.],
  dependencies: ("IndicatorLights"),
  impact_types: (UI, Graphics),
  impact_description: [Adds IndicatorLights compatibility patches for mod parts. No new functionality — just extends the visual indicator system to more parts. Requires IndicatorLights.],
  conflicts: none,
  version_pin: [Compatible with KSP 1.12.x. Requires IndicatorLights. Only useful if you install parts mods (Wave 1+).],
)

// ═══════════════════════════════════════════════════════════════════
// HOW TO USE THESE MODS
// ═══════════════════════════════════════════════════════════════════

#pagebreak()
#chapter-heading([Wave 0.5 Mods — How to Use Them])

#section-heading([Transfer Window Planner])

TWP shows you optimal departure windows via porkchop plots — color-coded charts of delta-v cost over time. Pick the most efficient window and TWP provides the ejection angle and burn parameters. You'll use it constantly once you go interplanetary in Wave 1.

#section-heading([Docking Alignment])

Install both DPAI and Navball DAI. Use DPAI's dedicated window while learning — the crosshair makes alignment intuitive. Once docking becomes automatic (usually after 10–15 successful docks), try switching to Navball DAI. The navball-integrated approach is faster once you can interpret the markers without thinking. Wave 2 suggests dropping DPAI entirely.

#section-heading([[x] Science!])

Open the [x] Science! window from the toolbar in flight or at the Space Center. The main view shows every science situation (biome × experiment type) for your current body. Green checkmark = completed. Empty box = available, go get it. Red = impossible here. Filter by body to plan science-gathering missions efficiently. Use this before every landing to ensure you're not revisiting biomes you've already exhausted.

#section-heading([Kerbal Alarm Clock])

KAC is most useful when you have 3+ concurrent missions. Create alarms for: maneuver nodes (reminds you 1 minute before burn), SOI changes (entering Duna's sphere of influence), transfer windows (don't miss the Duna window), and periapsis/apoapsis crossings (circularization points). The "Warp to Next" button handles timewarp automatically. KAC's advantage over the stock alarm clock is the ability to set alarms for events that haven't happened yet (future transfer windows, upcoming SOI changes).

#section-heading([VAB/SPH Tools])

*Janitor's Closet vs VAB Organizer:* They solve different problems. Janitor's Closet *hides* parts you never use (e.g., hide all airplane parts when building rockets). VAB Organizer *reorganizes* the part list into better categories. Use both: Janitor's Closet to declutter, VAB Organizer to sort what's left.

*RCS Build Aid:* In the VAB, enable the CoM marker (bottom-left toolbar). RCS Build Aid adds a second "dry" CoM marker showing where the center of mass will be when tanks are empty. If CoM shifts dramatically as fuel drains, your RCS becomes unbalanced — add or reposition thrusters so they're equally distant from both the full and dry CoM.

*Editor Extensions:* The most impactful features are the extra symmetry modes (useful for engine clusters on large rockets) and angle snap customization. For trusses and custom fairings, 5° or 15° snap is often better than stock's 15°-only option. Vertical/horizontal snapping helps align radially-attached parts precisely.

*Hangar Extender:* Install before building large historical rockets (Saturn V, SLS) or interplanetary motherships. The extended boundaries are automatic — no configuration needed. If your craft is already hitting the VAB ceiling, save it as-is before installing, then reload and continue building.

#section-heading([Trajectories])

Trajectories predicts where your craft will land — accounting for atmospheric drag and planetary rotation. Toggle it on from the toolbar (the icon looks like a trajectory arc).

- *Red X:* Predicted impact point. This is where you'll hit the ground if you do nothing.
- *Blue line:* Your trajectory through the atmosphere, showing how drag bends your path.
- *Body-fixed mode (default):* The X stays locked to the rotating planet surface. Use this for landings.
- *Inertial mode:* The X shows where you'd land if the planet stopped rotating. Use this for orbital planning only.

#tip([
  When aerobraking at Duna or Jool, set Trajectories to body-fixed mode. Adjust your periapsis until the predicted exit trajectory has the apoapsis you want. A 15 km Duna periapsis captures you; a 25 km one just bends your path.
])

#section-heading([SCANsat])

SCANsat adds persistent planetary maps. Open the map viewer from the SCANsat toolbar button (a radar dish icon).

- *Altimetry map:* Height above sea level. Use this to find flat landing zones and mountain peaks.
- *Biome map:* Color-coded biomes. Essential for science farming — plan your lander's route to visit multiple biomes per trip.
- *Slope map:* Terrain steepness. Red = steep, blue = flat. Land in the blue.
- *Coverage:* Maps start blank and fill in as your scanner passes over the surface. A polar orbit at 80° inclination scans everything.

Launch one scanner satellite per body you plan to visit. Even a tiny CubeSat with a scanning antenna and solar panels works. The maps persist across saves.

#info([
  SCANsat scanning generates science points passively. A single scanner in polar orbit around the Mun will complete several "Scan [Body]" contracts with zero additional effort.
])

// ═══════════════════════════════════════════════════════════════════
// TUTORIAL: BUILDING & PLANNING
// ═══════════════════════════════════════════════════════════════════

#pagebreak()
#chapter-heading([Wave 0.5 Guide — Building & Planning])

Now that you can reach orbit consistently, it's time to go further. Wave 0.5's tools — TWP for planning, DPAI for docking, KAC for mission timing — all come together here.

#section-heading([Going to the Mun])

#section-heading([Transfer Burn])

From low Kerbin orbit (80–100 km circular, equatorial):
1. Switch to Map view. Rotate the camera so you can see the Mun's orbit.
2. The Mun rises over Kerbin's horizon — when it's about 45 degrees ahead of your craft in its orbit, you're at the transfer window.
3. Create a maneuver node on your orbit. Drag prograde until the projected path intersects the Mun's sphere of influence (SoI). It should take about 860 m/s.
4. Execute the burn at the node. Keep the craft pointed at the maneuver marker on the navball.

#info([
  If you miss the Mun's SoI entirely, your burn timing was wrong. Adjust the maneuver node position along your orbit (drag the center circle of the node) — this changes *when* you burn, which changes *where* the Mun is when you arrive.
])

#section-heading([Mun Capture and Landing])

When you enter the Mun's SoI, you'll be on a flyby trajectory. At Mun periapsis (Pe marker), burn retrograde to slow down and enter orbit. Target a 15–20 km circular orbit.

To land:
1. From low Mun orbit, burn retrograde until your trajectory line hits the surface. Target a flat area (the Mun's large craters — maria — are dark, flat regions).
2. As you descend, keep burning retrograde. Watch your surface velocity indicator (click the navball speed readout until it says "Surface").
3. When below ~2,000 m altitude, your speed should drop below 100 m/s.
4. In the final ~500 m, keep velocity below 20 m/s. Land at less than ~6 m/s to avoid breaking anything.
5. SAS set to "Retrograde Hold" (if unlocked) keeps you oriented for the burn — use Stability Assist otherwise and steer manually.

#tip([
  Kill horizontal velocity first (retrograde marker centered on the horizon line), then control vertical descent. If you tip over on landing, your horizontal velocity was too high.
])

#awe([
  *You are standing on another world.*

  Four hundred thousand kilometers from home. The sky is black at noon. Kerbin hangs in the sky — a blue-and-white marble that contains everyone you've ever known. It looks small from here. It is small. And you just flew here in a contraption of aluminum and explosives.

  Plant the flag. Take a screenshot. Breathe.
])

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

#info([
  RCS thrusters must be placed symmetrically around your craft's center of mass to avoid unwanted rotation during translation. In the VAB, toggle the center of mass indicator to check. RCS Build Aid (Wave 0.5) makes this much easier.
])

#awe([
  *Two ships meet in the dark.*

  For a moment, there was empty space between them. Now there is a sealed docking port, and two vessels have become one. You brought them together across kilometers of vacuum, matched velocities to centimeters per second, and touched aluminum to aluminum without a scratch.

  If you can dock, you can build anything. Stations. Interplanetary ships. Colonies. Docking is not a skill. Docking is a door.
])

#section-heading([Space Stations])

Now that you can dock, you can build stations.

#section-heading([Why Build a Station?])

- *Refueling depot* — dock tankers, mine on Minmus, ferry fuel to orbit
- *Science lab* — the Mobile Processing Lab multiplies science value over time
- *Crew rotation hub* — swap kerbals between missions without landing
- *Relay hub* — high-orbit station with powerful relay antennas extends comms coverage

#section-heading([Station Assembly])

1. Launch the core (lab, docking hub, power, probe core)
2. Dock additional modules (fuel tanks, habitation, antennas, extra docking ports)
3. Keep part count reasonable — too many parts and the physics engine crawls. Aim for under 200 parts per station.

#tip([
  Always include a probe core on every station module. If you undock the wrong port and lose control of a drifting section, a probe core lets you recover it. Also: reaction wheels. Stations in KSP get wobbly without them.
])

#awe([
  *You built this.*

  It did not exist an hour ago. Now there is a space station in orbit — your space station. Modules you designed, launched, and docked yourself. Solar panels you angled toward the sun. Docking ports waiting for ships that haven't been built yet.

  This station wasn't in the game. You put it there. The Kerbol system now contains something that wouldn't exist without you. Every station you build from here adds to a universe that is increasingly, irreversibly yours.
])

#section-heading([Building Better Rockets])

#section-heading([The Rocket Equation])

Every rocket design is a tradeoff between three things: payload mass (what you want to deliver), delta-v (how far you want to go), and TWR (how fast you accelerate). Adding more fuel increases delta-v but adds mass, requiring bigger engines to maintain TWR, which adds more mass. This is the tyranny of the rocket equation.

*Rules of thumb for efficient designs:*
- Each stage should provide roughly 1,500–2,500 m/s of delta-v. More than 3,000 m/s in a single stage wastes mass.
- Liftoff TWR should be 1.3–2.0. Below 1.3 you waste fuel fighting gravity; above 2.0 you risk aerodynamic stress.
- Upper stage TWR can be as low as 0.5 — you're already in space, fighting gravity with orbital velocity.
- For every ton of payload to LKO, expect 4–6 tons of launch vehicle. Better designs push this toward 4.

#tip([
  KER's VAB readout shows atmospheric and vacuum delta-v. Use *atmospheric* for your first stage (it burns in thick air). Use *vacuum* for upper stages, transfer stages, and landers. Switching mid-design avoids surprises when your 3,400 m/s vacuum-rated first stage can't actually reach orbit.
])

#section-heading([Staging Strategies])

*Serial staging (asparagus-adjacent):* Boosters feed fuel inward, dropping empty tanks as they go. Most efficient for pure delta-v but complex to build and fly. Used for heavy payloads and interplanetary injection stages.

*Parallel staging (boosters + sustainer):* Solid or liquid boosters augment a central core. Boosters burn out first and are discarded; the core continues burning. The most common real-world approach — easier to build and more forgiving of asymmetry than serial staging.

*SSTO (Single Stage To Orbit):* One stage does everything — ascent, circularization, return. Requires RAPIER engines or nuclear thermal rockets in spaceplane configurations. Covered in detail in the Wave 1 spaceplane guide.

#section-heading([Engine Selection])

- *Liftoff engines:* High thrust (ASL), moderate Isp. Swivel, Reliant, Skipper, Vector. Mammoth for 5m+ rockets.
- *Upper stage engines:* High vacuum Isp, lower thrust acceptable. Terrier, Poodle, Cheetah, Wolfhound. Vacuum Isp differences matter — a 350s vs 380s Isp upper stage is 8% more delta-v with the same fuel.
- *Deep space engines:* Very high Isp, very low thrust. Nuclear (NERVA), ion (Dawn), or electric (from Near Future Propulsion in Wave 1). Burns measured in minutes to hours.
- *Lander engines:* High TWR for descent braking, good throttle response. Spark, Terrier, Cub. Radial engines for wide landing bases.

#section-heading([Aerodynamics & Stability])

Rockets flip during ascent for two reasons: center of drag ahead of center of mass (the dart thrown backward problem), or excessive angle of attack at high dynamic pressure.

*Fixes for flipping rockets:*
- Add fins at the very bottom. Fins move the center of pressure rearward.
- Make the rocket taller, not wider. A long, thin rocket is more stable than a short, fat one.
- Keep your gravity turn gentle. Below 10 km, stay within 5° of prograde. Above 30 km, the atmosphere is thin enough that aggressive steering is safe.
- Keep speed below 300 m/s while in the thick atmosphere (below 10 km). Faster = more drag = more flipping force.

#section-heading([Designing Aircraft & Spaceplanes])

#section-heading([Center of Mass vs Center of Lift])

In the SPH, toggle all three indicators (CoM, CoL, CoT). The relationship between these determines whether your plane flies:

- *CoL behind CoM:* Stable. The plane naturally returns to prograde after a disturbance. Good for beginners and long-range cruisers.
- *CoL at CoM:* Neutrally stable. The plane stays where you point it. Requires constant attention but allows maximum maneuverability. Fighter jet territory.
- *CoL ahead of CoM:* Unstable. The plane tries to flip backward. Only flyable with SAS and careful design.

The critical check: drain all fuel tanks in the SPH (right-click each tank, set fuel to zero) and check CoM vs CoL again. Fuel is heavy — your CoM will shift as it burns. If CoM moves *behind* CoL when tanks are empty, your plane will become unstable mid-flight.

#danger([
  The #1 cause of spaceplane failure: CoM shifts behind CoL as fuel drains. Always check dry-CoM position. If CoM moves backward, move wings slightly aft or add a small fuel tank at the nose to keep the dry CoM forward.
])

#section-heading([Wing Design])

- *Wing area:* More area = more lift at low speed. If your plane needs 150+ m/s just to take off, add wing area.
- *Sweep:* Swept wings reduce supersonic drag. Straight wings are better for subsonic efficiency.
- *Control surfaces:* Elevons (combined elevator + aileron) save parts. Separate pitch, roll, and yaw surfaces give finer control. For spaceplanes, keep control surfaces away from the leading edge (they'll overheat during reentry).

#section-heading([Engine Selection for Aircraft])

- *Subsonic cruise (propellers):* Wheesley, Airplane Plus props (Wave 1). Low speed, excellent fuel efficiency. Use for science-gathering planes and early-career contracts.
- *Supersonic jets:* Panther (afterburner for supersonic), Whiplash. Efficient up to Mach 3. Good for high-altitude reconnaissance planes.
- *RAPIER:* The spaceplane workhorse. Air-breathing mode for atmospheric flight; closed-cycle rocket mode for the final push to orbit. RAPIERs auto-switch at ~23 km when intake air runs out.
- *Nuclear jets (from NF Aeronautics, Wave 1):* Work in any atmosphere (Duna, Eve, Laythe) — no oxygen needed. Extremely efficient but heavy.

#section-heading([Spaceplane Ascent Profile])

1. Accelerate to ~140 m/s on the runway, rotate to 10–15°.
2. Climb at 15–20° until ~10,000 m. At this altitude, air density drops and drag decreases.
3. At 10,000 m, level off to 5–10°. Accelerate to ~1,400 m/s at ~20,000 m. This is the RAPIER sweet spot — peak air-breathing thrust.
4. When thrust drops (~23–25 km), RAPIERs auto-switch to closed-cycle. Pitch up to 20–30°.
5. Burn to apoapsis > 70 km. Circularize at apoapsis with a small burn (50–200 m/s).
6. Reentry: keep nose at 30–40° pitch. This presents maximum surface area for aerobraking while protecting the cockpit. Don't pitch down — the underside handles heat better than the nose.

#section-heading([Mission Planning])

#section-heading([Pre-Launch Checklist])

Before launching any mission, verify in the VAB:
1. *Delta-v budget:* KER shows total mission delta-v. Compare against required amounts for your destination.
2. *TWR per stage:* Liftoff stage > 1.3, lander > 1.0 on destination body (cheat: set KER body to Duna to check Duna TWR).
3. *Communications:* Does the craft have an antenna? Can it reach Kerbin from the destination?
4. *Power:* Solar panels or RTG. Check power consumption vs generation in the VAB. If you run out of power, you lose control.
5. *Heat:* Are radiators sufficient if using ISRU or nuclear engines? Converters generate massive heat.
6. *Crew capacity vs crew count:* If you have 3 kerbals and 2 seats, someone's not coming home.

#section-heading([Transfer Window Planning])

Transfer windows tell you *when* to burn, not just *how much* delta-v you need.

- *Use TWP:* Open the planner, select origin (Kerbin) and destination (e.g., Duna). The porkchop plot shows delta-v for every departure date. Click the darkest blue region for the most efficient window.
- *Phase angles (eyeball method):* Duna should be ~44° ahead of Kerbin in its orbit. Eve ~54° behind. Jool ~96° ahead. If you can't use a planner, these rough angles get you close.
- *Depart from low circular orbit:* A 100 km circular orbit is ideal for interplanetary ejection. Elliptical orbits complicate ejection-angle calculations.
- *Mid-course correction:* About halfway to your destination, create a small correction burn (10–50 m/s) to fine-tune your encounter periapsis. This is far cheaper than correcting during the departure burn.

#tip([
  Duna is the best first interplanetary target. Its atmosphere (thin, but enough for parachutes), low gravity (0.3g), and moderate transfer cost (~1,100 m/s from LKO) make it forgiving. Ike is even easier — no atmosphere but ultra-low gravity and it's right there when you arrive at Duna.
])

#section-heading([Where to Go from Here])

You can now land on the Mun, dock spacecraft in orbit, and assemble space stations. You've mastered the core skills of orbital operations. When you're comfortable with rendezvous and can plan Mun missions without step-by-step instructions, you're ready for Wave 1 — interplanetary travel, ISRU mining, and exploring the expanded solar system.

#pagebreak()
#chapter-heading([Player Challenges — Wave 0.5])

Test your Mun, docking, and station skills.

- *Single-Stage Lander:* Mun landing and return with no staging during descent or ascent. One engine, one tank, one landing.
- *Apollo Style:* Design a two-part mission — Command/Service Module stays in Mun orbit while a separate lander descends. Dock them back together before returning.
- *No RCS Docking:* Dock two craft using only main engine thrust. No RCS thrusters allowed. Translation via careful tapping.
- *Three-Module Station:* Launch and dock three separate modules (core + hab + fuel depot) into a single station. No module may exceed 30 parts.
- *Polar Mun Landing:* Land on the rim of a Mun polar crater. The terrain is steep, the lighting eternal twilight. Good luck.
- *Slope Landing:* Land on Minmus in the Slopes biome. Inclination 15–30°. Your lander must not tip.
