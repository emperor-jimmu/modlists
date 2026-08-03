// strategy.typ — Wave 1: The Road Freight
== Roleplaying Background

Your shortline training run is behind you. The yard master at the fictional Aysgarth & North Riding Railway had nothing but praise, and a word has been passed to the regional Class I road — fictional, like the line that taught you. You are now promoted to road-freight service: a through-freight engineer on a mountain-grade main line, moving manifest freight between yards on a fast, busy railroad. It is a step up in every way that matters — longer trains, tighter timekeeping, and signals that decide whether you keep moving or come to a stop.

== Strategy — Main-Line Freight (Intermediate)

=== Reading Signals

On a main line, signals govern your movement: a clear signal lets you proceed at the line's speed, while other aspects tell you to expect a stop or slow down ahead. The Track Monitor from Wave 0 shows the next signal along with the speed limit, so you can read what is coming before you reach it. Approach every signal expecting to stop or slow until you can see what it actually says — that habit keeps you out of trouble more reliably than any single aspect.

=== Longer Consists

The BNSF Starter Route's trainsets are noticeably longer than the Wave 0 run. A longer train takes more distance and time to pick up speed, and it takes far more distance to stop. Braking distance grows with the size of the train, so begin slowing for a stop or a speed restriction earlier than feels natural. Let the train tell you what it needs instead of fighting it.

=== Throttle & Train-Brake Discipline

You still drive with the mouse on the handles, exactly as you learned on Demo Model 1. What changes is the discipline around them. A long freight has a lot of mass, and slamming the throttle or the brake forward makes that mass complain — the train bunches up and stretches out, and control suffers. Move the handles in smooth, deliberate steps, give the train time to respond, and it will stay stretched and steady underneath you.

=== Basic Timetables & Activities

The route's built-in activities give you a proper job: a start point, a destination, and a time window to run within. Follow the activity instructions — they tell you where you are starting, where you are expected, and what is being asked of you. You are no longer just keeping under a speed limit; you are keeping a schedule, which is the real shape of a road-freight engineer's day.

=== Dynamic Braking

Dynamic braking turns the locomotive's traction motors into generators: instead of driving the wheels, they resist them and slow the train down, working as a brake without touching the air system. It was originally developed for mountainous territory, where conventional freight-car brakes were prone to overheating on long downgrades — though historically it was limited to speeds above about 10 mph. On the diesel-electrics of the BNSF Starter Route the dynamic brake controls are notched, and in Open Rails you move them with the comma (,) and period (.) keys. One hard rule governs the whole system: the dynamic brake is not available unless the throttle is fully closed, and the throttle is not available unless the dynamic brake is fully released (off). On the BNSF's mountain grades this matters, because a long descent is exactly the situation dynamic braking was built for — holding the train on its motors keeps the freight-car brakes cool for the stretches where you truly need them. Just plan the transition: close the throttle before you notch the dynamic brake in, and release the dynamic brake fully before you try to take power again.

=== Reading Your Brake System

On a long freight, the F5 Train Driving Info window is how you read your brake system. It shows two Brake Reservoir numbers — the Equalization Reservoir (EQ) and the Brake Cylinder (BC) — along with two BP numbers reporting the brake-pipe pressure in the lead engine and in the last car of the train, and the brake flow showing the rate of air moving into the brake pipe during release and recharge. What those numbers tell a freight driver is how fast the air system is propagating down the train. The brake pipe charges and recharges from the front toward the rear, so the difference between the lead-engine and last-car brake-pipe pressures is a direct measure of how quickly the pipe is filling down the length of a long train; a wide gap means air is still working its way back, and the train has not fully recovered from an application. The brake flow readout is the same story in motion — air moving into the brake pipe means the system is still releasing and recharging. There is also an Options setting for graduated release, which allows a partial release of the brakes: with it checked, braking behaves like passenger-standard; unchecked, freight-standard. Freight operation generally releases the brakes fully rather than partially, so read these numbers and wait for the whole train to recover before you ask for another application.

=== Refuelling

A diesel locomotive has to eat, and on a road freight that makes refuelling a real operational duty rather than a detail to ignore. Diesel and steam locomotives must refill their supplies of fuel occasionally — perhaps daily on a hard-running freight. On the BNSF route, pull up alongside a fuel or water supply location and hold down the T key to refill: the refill happens as the key is held down, as long as the locomotive is next to the pickup point. Water works the same way where the route calls for it — press Y to take water from a water trough while moving over it. And if you are simply out on the road, Ctrl+T provides an immediate refill at any time. Treat fuelling stops like the scheduled duty they are: a mainline freight that runs dry is a dead train on the line.
