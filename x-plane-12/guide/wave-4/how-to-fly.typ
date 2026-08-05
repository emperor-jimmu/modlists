#import "../helpers.typ": *

==== The FMC, Step by Step

The Flight Management Computer is the 737's cockpit brain: route, performance, and vertical profile in one box. Learn the flow once and every FMC in this guide — the Q400's, the 777's — is the same idea in different clothes. Exact page names follow the aircraft's manual; the order is universal.

===== The Pages

Every FMC is organized into pages, and the flow is always roughly this:

+ *IDENT/INIT* — who you are, where you are: the aircraft identity and the initial position.
+ *ROUTE* — the flight plan: departure, waypoints, arrival, approach.
+ *PERF/PERFORMANCE* — the numbers: weights, fuel, speeds, and the takeoff/landing data.
+ *DEP/ARR* — the departure and arrival procedures: SID, STAR, and the approach to load.
+ *LEGS/RTE LEGS* — the route in detail: each leg, its course, its distance, and the vertical targets.

===== Load the Plan

1. *Build it outside* — the plan lives first in LittleNavMap: route, altitudes, the SID/STAR you expect, the approach. The FMC should confirm the plan, not invent it.
2. *Enter the route* — from the INIT page through the route pages: waypoint by waypoint, or from a saved plan if the aircraft supports it. Watch the box build the legs.
3. *Add the procedures* — DEP for the departure, ARR for the arrival and the approach: the FMC inserts the published fixes and the vertical profile.
4. *Cross-check the LEGS page* — the route as the box sees it, leg by leg: distances sane, altitudes legal, nothing doubled. This is the step that catches the mistakes.

===== Performance & Takeoff

1. *Enter the weights* — zero fuel weight, fuel load, and the V-speeds the FMC computes from the runway and the weather: V1, Vr, V2.
2. *Set the thrust* — the takeoff thrust setting from the performance pages; the auto-throttle arms for the departure.
3. *Brief the takeoff* — speeds out loud, the departure out loud, the abort plan out loud. Then fly it.

===== Fly the Path

1. *LNAV* — lateral navigation: the box flies the route, turn by turn. Engage it after takeoff when the departure allows; watch the first turn — it tells you the box has the right plan.
2. *VNAV* — vertical navigation: the box flies the profile — climb at the computed speeds, level at the constraints, descend at the top of descent. The box only knows what you entered: the constraints on the LEGS page are the contract.
3. *Monitor, don't stare* — the FMC is a crewmember, not a babysitter: cross-check altitude, speed, and position against the plate and the map, and always know what the box thinks it is doing.

===== The Arrival & Approach

1. *The descent* — the box starts down at its computed top of descent; the arrival loads the constraints. If the descent looks late or early, the energy is the lever — speedbrakes and speed, not panic.
2. *Arm the approach* — before the final approach fix: approach mode armed, the ILS frequency or RNAV approach loaded, the minimums set.
3. *Watch the capture* — the localizer captures, then the glideslope: the box flies the approach, you fly the briefing — the decision altitude, the runway in sight, and the call.

===== The Autoland Brief

Some 737 approaches can go all the way to touchdown on the automation:

1. *Brief it like any approach* — the setup, the path, the minimums, the missed — plus the autoland specifics: both autopilots engaged where the aircraft requires it, the flare armed.
2. *Monitor the capture* — the box does the work; you watch the needles, the speed, and the mode annunciations like a hawk.
3. *The call* — at minimums, the decision is still yours: continue to the automatic flare, or take it by hand. The automation is a tool, not a witness.

===== The Cross-Check Habit

The FMC is only as good as its data, and its data is only as good as your entry. The habit:

1. *Once on the ground* — the route you loaded matches the plan you briefed.
2. *Once in the climb* — the LEGS page still matches the clearance.
3. *Once before the approach* — the loaded approach is the briefed approach.
4. *Every time* — the box gets no free pass. That is the airline way, and it is the point of Wave 4.
