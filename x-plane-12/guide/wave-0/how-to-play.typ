#import "../helpers.typ": *

==== How to Play

This chapter is the complete beginner tutorial for Wave 0. It assumes you have never flown in X-Plane 12 and are flying the *vanilla sim* — the only additions are the foundational tools from the Foundational Plugins chapter, which make the sim easier to see, operate, and plan. Wave 0 exists to teach you to fly; the mods you add to it later only make that clearer.

===== The Story So Far

*First Solo.* Cedar Harbor Flight School, a one-runway field on a grey-blue coast, has a new student: you. Your instructor has watched you fly the sim's built-in lessons, and today she hands you the keys to the school's Cessna 172 — white, patient, and absolutely not impressed by you yet. Your mission, should you choose to accept it (you already have): one complete traffic pattern, takeoff to landing, without the instructor in the right seat. There is a thermos of coffee in it for you at the end. The pattern is a mile of sky, three turns, and one very personal moment on short final.

===== Before You Fly

+ *Controls* — a joystick (or yoke + rudder pedals) makes a different game of it; a mouse and keyboard work, but the school will notice the difference. Calibrate in Settings → Joystick, and check the response feels linear.
+ *Graphics & realism* — run Settings → Graphics to a frame rate you can read gauges at. Leave the flight-model realism settings at the sim's defaults for Wave 0; "easy" assists hide the lessons you came for.
+ *Where to start* — use the sim's Flight Configuration to place yourself on the runway at your home field (start "on the runway" for your first attempts — cold & dark can wait for Wave 1).
+ *Views* — bind the view controls you like (Settings → Keyboard): the sim's defaults cover panning and cockpit/external cycling. AviTab's tablet (Foundational chapter) is your charts and checklist holder; X-Camera adds saved custom views when you want them.

===== The Cockpit in One Page

The 172's panel tells you everything you need with a handful of instruments:

+ *Airspeed* — the tape on the left (PFD) or round gauge: how fast you are moving through the air.
+ *Attitude* — the artificial horizon: the single most important instrument. Wings level, horizon on the horizon.
+ *Altitude* — the barometric altimeter: how high above sea level you are (set QNH from the local weather).
+ *Heading* — the compass/heading indicator: which way you point.
+ *Vertical speed* — the VSI: whether you are climbing or descending, and how fast.
+ *Throttle (blue) / Mixture (red) / Flaps (lever)* — power, fuel-air, and high-lift devices. In the 172: throttle forward = more power, mixture rich = correct fuel, flaps extend for slow approaches.

Trim is your friend from flight one: hold the nose where you want it, then take the pressure off with the trim wheel so you can fly with fingertips, not fists.

===== Your First Flight

A complete circuit, step by step. Numbers are typical 172 values — your aircraft's documentation (and AviTab with the POH PDF) is the authority:

1. *Power on* — battery/master on, prime if needed, mixture rich, throttle a touch, starter until the engine catches, then idle check.
2. *Taxi* — release the parking brake, throttle up slightly, and steer with the rudder pedals (not the yoke). Brakes slow you; keep the speed walking-pace.
3. *Run-up* — at the run-up area: brakes set, throttle to about 1700-1800 rpm, check magnetos and gauges per the checklist, then idle back.
4. *Line up* — call the traffic pattern position (see Radio Basics), line up on the centerline, apply full power smoothly.
5. *Rotate* — around 55-60 knots, pull back gently; the 172 lifts off and wants to climb — hold about 70-75 knots on climb with the nose pitched for the attitude.
6. *Crosswind turn* — at about 500 ft above field elevation, turn downwind; level off at pattern altitude (typically ~1,000 ft AGL, the field's published pattern altitude), power to cruise.
7. *Downwind checks* — once abeam the threshold: carb heat on, power back, flaps 10-20° as the checklist says, pitch for approach speed.
8. *Base* — turn base when the threshold is 45° behind your wing; descend, flaps to full (30-40° in the 172), aim for ~65-70 knots on final.
9. *Final* — line up with the runway, keep the aim point fixed (not moving in the windshield), power for the speed, and hold the glide.
10. *Flare & land* — over the threshold, round out: pull the nose up just enough that the sink stops, let the mains touch, hold the nose off as long as you can, then let it down gently.
11. *Rollout & clear* — brakes to taxi speed, exit at the first taxiway you can, and stop to collect your thermos.

#callout("Tip:", [
  If a landing goes wrong, do not try to force it. Go around: full power, nose up, flaps up a notch at a time as speed builds, climb back to pattern altitude, and set up again. Going around is not failure — it is the skill. Wave 0's real goal is a pattern where going around is a calm choice, not a rescue.
])

===== The Traffic Pattern

The pattern is the grammar of all aviation. Learn it by feel in Wave 0 and every later wave inherits it:

+ *Upwind* — after takeoff, climbing straight out from the runway.
+ *Crosswind* — the 90° turn off the runway heading.
+ *Downwind* — parallel to the runway, opposite direction, at pattern altitude (usually ~1,000 ft AGL).
+ *Base* — the descending turn across the runway's threshold.
+ *Final* — the straight-in approach to landing, at approach speed with full flaps.

Fly the same numbers every time — same altitude, same speeds, same turn points. The pattern should feel like a dance, not a negotiation.

===== Radio Basics

+ *Non-towered field* — announce on the CTAF/UNICOM frequency: who you are, where you are, what you are doing ("Cedar traffic, Cessna one-seven-two, downwind, runway two-four, Cedar").
+ *Towered field* — call ground for taxi, tower for takeoff/landing; read back clearances. X-Plane 12's built-in ATC does this with you — turn it on and follow it.
+ *ATIS* — listen first at controlled fields: it gives you the wind, the runway in use, and the altimeter (QNH) setting.

#callout("Note:", [
  With X-ATC-Chatter installed (Foundational chapter), the frequency will sound alive around your own calls — that is ambient background audio, not the sim's ATC. Keep it quiet enough to hear the real controller; mute it when practicing instrument work later.
])

===== Staying Alive: Speed, Fuel, Altitude

+ *Speed* — slow is not always safe: too slow is a stall (the wing stops flying). Keep the approach speeds above; if the stall warning sounds, lower the nose, add power.
+ *Fuel* — the 172 carries hours of fuel; still, glance at the gauges each lap. A full tank beats a creative forced landing.
+ *Altitude* — in the pattern, altitude is a commitment: below pattern altitude on downwind is a problem; on final, the aim point tells you if you are high or low — if it slides down the windshield, you are sinking; if it slides up, you are floating.

===== Using the Sim's Tools

+ *Flight Configuration* — start on a runway, in the air, or cold & dark; pick the aircraft and the airport. Use "start on runway" to practice circuits without the full start flow.
+ *Time warp* — speed up long cruise legs so the flying stays interesting; pause anytime (the sim pauses on its own when you lose focus, by default).
+ *ATC window* — the sim's ATC menu drives clearances and traffic; use it from Wave 0 so the phraseology starts to stick.
+ *Camera & tablet* — cycle views (default view keys) for situational awareness; AviTab holds the airport diagram and checklist; X-Camera's saved views are your personal best angles.
+ *Instant replay & screenshots* — the sim can replay your last seconds; use it after a rough landing to see what your hands actually did.

===== New-Game Checklist

1. Confirm the main menu reads version 12.4.3.
2. Confirm XFast Manager shows the foundational toolset installed (and nothing else yet).
3. Start a new flight in the Cessna 172, on the runway at your home field, clear skies.
4. Fly one complete pattern: takeoff, downwind, base, final, landing.
5. Repeat until one pattern feels calm — that is your solo.
6. When you can hold altitude and speed without fighting the controls, Wave 1's cross-country legs are waiting.
