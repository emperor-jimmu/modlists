#import "../templates/style.typ": *
#pagebreak()
#wave-banner(1, "National License", "Faster machinery. Real competition.")
#story-intro[*"The local kart track is in the rearview mirror. Now there's a proper garage, a crew chief who expects results, and faster machinery than you've ever touched. The national series aren't here to teach you — they're here to see if you belong."*]

= Wave 1 — National License

== Wave Overview

Wave 1 bridges the gap from learning to competing. You'll step into production-based GT4 machinery, lightweight P4 prototypes, and heavy V8 Copa Classics over 10–20 minute races. For the first time, tyre wear and fuel load matter. You'll learn racecraft — overtaking, defending, and pit stop procedure — against faster AI on longer tracks.

== Assists Adjustment

Before your first Wave 1 session, update your assists. Wave 1 begins the gradual transition to full driver control.

#figure(
  table(
    columns: 3,
    table.header([Assist], [Wave 0], [Wave 1]),
    [Steering Assist], [Low], [*Off*],
    [Braking Assist], [Low], [*Off*],
    [Traction Control], [High], [*Medium*],
    [Stability Control], [On], [*On*],
    [ABS], [High], [*Low*],
    [Auto Gears], [On], [On (manual if ready)],
    [Racing Line], [Full], [*Corners Only*],
    [Damage], [Visual Only], [Visual Only],
  ),
  placement: none)

With Steering and Braking assists off, the car will feel heavier and more communicative through the wheel. The Racing Line set to Corners Only removes the full-track guide — you now only see braking zones and corner entry indicators. Traction Control at Medium allows some wheelspin on exit, requiring more careful throttle application.

== Car Classes

=== GT4

GT4 cars are production-based race cars producing 400–500 HP. They have ABS and traction control — less intrusive than road cars, but more forgiving than GT3. The chassis is biased toward understeer, making them stable and predictable. This is the ideal class for learning racecraft because the cars communicate clearly and give you time to think.

- *Cars:* Porsche Cayman GT4 Clubsport, McLaren 570S GT4, BMW M4 GT4
- *Tracks:* Cascavel, Curitiba, Brands Hatch Indy, Oulton Park Island

Start with the Porsche Cayman GT4 Clubsport — it has a balanced mid-engine layout and progressive breakaway characteristics that make it the best teacher in the class.

=== P4 Prototypes

P4 cars are lightweight (~650 kg), mid-engine prototypes with no driver aids. They respond instantly to every input and generate significant mechanical grip through lightweight construction rather than aerodynamics. The open cockpit gives excellent visibility, but there's no roof to hide mistakes behind.

- *Cars:* MetalMoro MRX P4, Sigma P1 P4
- *Tracks:* Taruma, Goiania, Velopark

The P4 class teaches precision. Every unnecessary steering input costs momentum. Drive these after you're comfortable in GT4.

=== Copa Classics

Brazilian touring car legends. Heavy V8 sedans with pronounced weight transfer, body roll, and an H-pattern gearbox. The Copa Classic B (Chevrolet Opala) and Copa Classic FL (Volkswagen Fusca) demand respect — they'll punish late braking and reward smooth, patient hands.

- *Cars:* Copa Classic B (Opala), Copa Classic FL (Fusca)
- *Tracks:* Interlagos, Curitiba, Guapore

Use auto-clutch if you're not yet comfortable with heel-and-toe — the H-pattern adds complexity, but the weight transfer lessons are valuable regardless.

== Strategy Basics

=== Tyre Management

Fast laps come from looking after your tyres, not destroying them. Key principles:

- *Avoid sliding* — every slide overheats the tread surface and reduces grip for the next corner. Smooth is fast.
- *Warm-up lap* — your first lap on cold tyres has significantly less grip. Build temperature gradually.
- *Even wear* — if your fronts are dying faster than your rears, adjust brake bias rearward. If the rears go first, bias forward.

=== Fuel Management

- *Minimum fuel* — in sprint races, carry only what you need plus one lap of margin. Less weight = faster laps.
- *Per-lap consumption* — run a few practice laps at race pace and note your fuel use. Multiply by race laps to calculate your starting load.

=== Pit Stops

Even if your Wave 1 race doesn't require a pit stop, practice the procedure:

+ *Pit entry* — slow to the pit lane speed limit before the entry line
+ *Pit limiter* — engage the speed limiter (default: a button mapping you should set in Controls)
+ *Box* — follow AMS2's pit markers to your box
+ *Lollipop* — watch for the lollipop man; do not move until released
+ *Pit exit* — disengage limiter after the exit line, merge safely

== Racecraft

=== Overtaking

+ *Set up on the straight* — position your car for the inside line before the braking zone, not during it
+ *Out-brake them* — brake slightly later, but only if you can still make the corner
+ *Hold the inside line* — once you're alongside at turn-in, the corner is yours. Do not drift wide into them
+ *Get it done before the apex* — if you're not ahead by the apex, tuck back in and try the next corner

=== Defending

+ *One defensive move* — pick your line and commit. Weaving or moving under braking is illegal in real racing and dangerous in sim
+ *Cover the inside* — the most common defensive line. Force them to go around the outside
+ *Brake at your normal point* — braking early because you're looking in the mirrors loses you the corner
+ *Exit is everything* — a good exit with early throttle application beats a hero move into the corner

=== Traffic

- *Don't fixate on the car ahead* — look through them to your own braking point
- *Lift, don't swerve* — if you're closing too fast on a slower car, a brief lift is safer than a sudden lane change
- *Blue flags* — you're not required to jump out of the way, but facilitate the pass by holding a predictable line on a straight

== Your First Wave 1 Race

#figure(
  table(
    columns: 2,
    [Setting], [Value],
    [Track], [Cascavel],
    [Car], [Porsche Cayman GT4 Clubsport],
    [AI Opponents], [12],
    [AI Difficulty], [70],
    [AI Aggression], [Medium],
    [Practice], [10 min],
    [Qualifying], [10 min],
    [Race Laps], [10],
    [Damage], [Visual Only],
  ),
  placement: none)

Cascavel is a fast, flowing circuit with a mix of medium and high-speed corners — ideal for learning GT4. Use the 10-minute practice session to dial in your braking points at the new speed. The 10-lap race gives enough time for the field to spread out and for you to settle into a rhythm.

== Mods

// MODS: Pending — Skin packs, additional tracks, SimHub overlays to be added here

*Awaiting mod list from user.*

== Completion Checklist

- Clean 10-lap GT4 race at Cascavel (finish top 8, AI 70)
- Trail-brake consistently without triggering ABS intervention
- Qualifying lap within 2 seconds of the fastest AI (AI 70)
- Execute 3 clean overtakes in a single race (no contact)
- Defend a position successfully for 2 consecutive laps

#line(length: 100%)

*Next:* #link("03-wave-2-international.md")[Wave 2 — International License]
