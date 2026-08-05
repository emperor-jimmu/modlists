#import "helpers.typ": *

=== Flight Basics

+ *VFR / IFR* — Visual Flight Rules (fly by looking outside, good weather) vs Instrument Flight Rules (fly by instruments, any weather). Waves 0-1 are VFR-first; Waves 2+ add IFR.
+ *Traffic pattern* — the standard rectangular circuit around an airport: upwind, crosswind, downwind, base, final.
+ *Downwind / Base / Final* — the three legs before landing: parallel to the runway (downwind), turning across the threshold (base), and the final straight-in approach.
+ *Rotate* — pulling back on the yoke to lift off at takeoff speed (Vr).
+ *Flare* — the gentle nose-up just before touchdown that lets the wheels settle, not slam.
+ *V-speeds* — design speeds: Vs (stall), Vr (rotation), Vx/Vy (best angle/best rate climb), V1/V2 (takeoff decision/initial climb in jets). The numbers live in each aircraft's documentation.
+ *IAS / TAS* — Indicated vs True Airspeed: what the instrument shows vs actual speed through the air (they differ with altitude and temperature).
+ *AGL / MSL* — height Above Ground Level vs Above Mean Sea Level (altimeter setting reference).
+ *QNH* — the altimeter pressure setting that makes the altimeter read field elevation on the ground; set it from ATIS or the local METAR.
+ *ATIS* — recorded airport information (weather, runways in use) played on a loop.
+ *METAR / TAF* — the routine weather report / the terminal forecast.
+ *Squawk / Transponder* — the aircraft's identification code and the transponder that answers ATC radar; 7700 = emergency, 7500 = hijack, 7600 = radio failure.
+ *Cold & dark* — an aircraft parked with everything off; starting from cold & dark means doing the full start flow yourself.

=== Instruments & Avionics

+ *PFD / MFD* — Primary Flight Display (attitude, airspeed, altitude, heading) and Multi-Function Display (map, flight plan, systems) on glass-cockpit aircraft.
+ *ASI / Altimeter / VSI / Attitude / Heading* — the "six pack": airspeed, altitude, vertical speed, artificial horizon (attitude), heading indicator, plus turn coordinator.
+ *FMS / FMC* — Flight Management System / Computer: the route computer that flies waypoints, procedures, and vertical profiles.
+ *Autopilot modes* — HDG (heading), ALT/ALT hold, V/S (vertical speed), LNAV/VNAV (lateral/vertical navigation along the route), APP (approach tracking), and in jets FLCH and managed/selected modes.
+ *ILS* — Instrument Landing System: localizer (lateral) + glideslope (vertical) guidance for approaches; CAT I/II/III are categories of decreasing minimums.
+ *VOR / DME / NDB* — classic navaids: VHF omnidirectional range (radial navigation), distance measuring equipment, and non-directional beacon (A/N needle).
+ *RNAV / GPS* — area navigation: flying direct between waypoints by satellite rather than toward a ground navaid.

=== Airspace & Procedures

+ *SID / STAR* — Standard Instrument Departure / Standard Terminal Arrival Route: the published highways out of and into busy airports.
+ *Approach plate* — the chart for an instrument approach: courses, altitudes, minimums, missed-approach procedure.
+ *Holding pattern* — the racetrack you fly while waiting for clearance.
+ *CTAF / UNICOM* — the radio frequency where non-towered airports self-coordinate ("traffic, Cessna one-seven-two, downwind, runway two-four, Bayfield").
+ *Tower / Ground / Clearance* — the ATC positions at towered airports: clearance delivery, ground (taxi), tower (runway), approach/departure, center.
+ *Vectors* — headings ATC assigns you, usually toward a fix or final approach.

=== Aircraft & Systems

+ *Yoke / Stick* — the control column (pitch and roll); rudder pedals steer on the ground and coordinate turns in the air; trim removes steady control pressure.
+ *Flaps / Slats* — high-lift devices that allow slower, steeper approaches and short landings.
+ *Mixture* — the fuel/air ratio control (piston aircraft): lean as you climb, rich for takeoff.
+ *Torque / ITT* — turboprop instruments: engine torque (power) and turbine inlet temperature (temperature limit — the one to watch on hot days).
+ *N1 / N2* — turbofan compressor speeds: N1 (fan) is the thrust gauge, N2 (core) the "engine running" gauge; thrust is managed against N1 targets.
+ *EGT* — exhaust gas temperature: the turbofan's critical limit gauge on hot days and at high power.
+ *Beta range / Reverse* — turboprop propeller pitch below flight idle: beta for precise ground control, reverse for stopping.
+ *Pressurization* — the cabin pressure system that lets turbine aircraft fly high without masks; set the cruise altitude and the cabin climbs/descends gently.
+ *Fly-by-wire* — computer-mediated flight controls (modern airliners); the computer protects the envelope.

=== Weather

+ *Wind / Crosswind* — wind direction/speed (e.g., "240 at 12") and the component across the runway that you must correct with crab or sideslip.
+ *Ceiling / Visibility* — cloud base and horizontal visibility; the two numbers in most weather minimums.
+ *Icing* — frozen moisture on wings/surfaces; anti-ice and de-ice systems exist for a reason — avoid it early, escape it if you meet it.
+ *Fronts & pressure* — low pressure + fronts = weather; high pressure = fair skies. The sim's weather engine honors real-world (live) weather if you enable it.

=== X-Plane & Modding

+ *Scenery pack* — any folder in `Custom Scenery/`; an airport, an overlay, ortho tiles, or a library. Load order is set by `scenery_packs.ini`.
+ *scenery_packs.ini* — the text file in `Custom Scenery/` listing every pack top-to-bottom; higher = drawn on top.
+ *Ortho* — photoreal ground textures from satellite/aerial imagery (AutoOrtho streams them).
+ *Mesh* — the terrain height field the textures are draped over.
+ *Plugin* — a program that runs inside X-Plane (folder in `Resources/plugins/`); the foundational tools are plugins.
+ *Livery* — an aircraft's paint scheme (folder inside the aircraft's `liveries/`).
+ *Navdata / AIRAC* — navigation databases; AIRAC is the 28-day update cycle (Navigraph).
+ *Log.txt* — the sim's log file at the root; the first place to look when something does not load.
+ *FMS plan (.fms)* — the sim's flight-plan file format (LittleNavMap exports it).
