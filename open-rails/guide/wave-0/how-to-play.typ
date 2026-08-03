// how-to-play.typ — Wave 0: The Rookie
== Roleplaying Background

Welcome aboard. You are the newest hire at the fictional Aysgarth & North Riding Railway, a small line that has just been granted a single short diesel turn. The yard master has handed you the morning express: a British Rail 'blue'-era diesel working out of Edinburgh Waverley as far as Linlithgow — about twenty minutes of running on a short, forgiving main line. It is deliberately easy and exactly the right place to learn the craft of driving a train.

== How to Play — Wave 0 (Beginner)

=== Installing Open Rails

Download and run the Open Rails 1.6.1 installer (Open.Rails.1.6.1.Setup.exe) and install it the usual Windows way. On first launch, a Content form pops up. Highlight the route Demo Model 1, set or confirm the Install Path, and click Install — the route needs roughly 600 MB of storage (the catalogue lists 272.42 MB to download and 329.99 MB installed). When the download and install finish, a dialog opens: press OK, then OK again to leave the Content form and reach the main menu.

Full step-by-step install and Content-system configuration is in the Installation Guide section of this document.

=== Driving Your First Train

From the main menu, click Start. A Windows Defender Firewall prompt may appear — allow access for Private networks. Open Rails starts fullscreen, and the simulation begins paused, with the Pause menu visible. Press Esc to begin driving.

You are now sitting in the driver's seat of a diesel locomotive, and the engine is already running. Press F5 to open the Train Driving Info window — the important lines are Speed, Direction, and Train Brake. Press F4 to open the Track Monitor, which shows track info, signals, and the speed limit; drag it where you like and Open Rails remembers window positions between sessions.

Drive with the mouse: move the pointer over the throttle handle and the train-brake handle on screen and click to move them — this is easier than keyboard control. Watch the speed limit on the Track Monitor and use the train brake to slow down and stop.

=== Instruments You Will Read

The F5 Train Driving Info window is your instrument panel. Press F5 to open it, and press Shift+F5 to toggle between full and abbreviated text mode — the default is full text. For the current locomotive it reports:

- Direction: the position of the Reverser, which works for electric, diesel and steam locomotives alike.
- Throttle: the current throttle position as a percentage of full throttle. A diesel shows its notches (the configured percentage of power); a steam locomotive shows the percentage of throttle.
- Train Brake: the position of the train brake system and its pressure values. Two Brake Reservoir numbers are shown: the first is the Equalization Reservoir (EQ), the second the Brake Cylinder (BC). Two BP numbers report the brake-pipe pressure in the lead engine and in the last car of the train, and the brake flow measures the rate of air flowing into the brake pipe during release and recharge.
- Engine Brake: the percentage of independent engine brake. Not fully releasing it affects the train brake pressures.
- Dynamic brake: the percentage of dynamic brake, if it is engaged.
- Engine: the running status of the engine.
- FPS: frames per second.

Watch at least Direction, Throttle and Train Brake as you drive — they tell you which way the reverser is set, how much power you are asking for, and what the brakes are doing.

=== Throttle Notches

Steam locomotives have a continuous throttle — the regulator — which can be set anywhere across its range. Many diesel and electric locomotives, by contrast, have a notched throttle that moves only in steps. Some of those steps may be "smooth", where the power is gradually and automatically adjusted to reach the setting; this avoids jerks. Don't expect a notched throttle to offer every value in between — it moves from step to step.

=== The Track Monitor

Press F4 to open the Track Monitor, which shows track info, signals, and the speed limit. Press Shift+F4 to toggle "immersive mode": the window then conceals the upcoming signal aspects and the upcoming signal speed limits, and does not display upcoming diverging switches. It still keeps the locations of signals, mileposts, permanent speed limits, sidings, and stations — the route knowledge a real driver would know by memory. While you are learning the road, leave immersive mode off; once you know it by heart, it becomes the harder, more realistic way to drive.

=== Camera & Cab Views

Press 1 for the driver's-seat view and 2 for the external (outside) view. In the external view, use the arrow keys to move around and hold the right mouse button while using the mouse wheel to look around. Press v to toggle the wipers. Use Alt+Enter to toggle between fullscreen and windowed, and Alt+F4 to stop the simulation and return to the main menu.

=== Your First Drive, Step by Step

Here is one way to spend your first twenty minutes on Demo Model 1, from cold start to a clean stop:

1. Start the simulation. From the main menu, click Start, and when the run loads press Esc to begin driving from the Pause menu. You start in the diesel's cab with the engine already running.
2. Open your instruments. Press F5 for the Train Driving Info window and F4 for the Track Monitor, and place them where you can see them while driving.
3. Take power. Use the mouse on the on-screen throttle handle and move it forward. On the F5 window, watch Speed build and Direction to confirm the reverser is set the way you want to go.
4. Watch the limit. Keep an eye on the speed limit shown on the F4 Track Monitor and let the train settle below it.
5. Prepare to stop. When you approach your stopping point, use the mouse on the train-brake handle and move it toward braking to slow down.
6. Stop and hold. Ease off as the train comes to a stop, then hold the train brake so the train stays put.

That is the whole loop of Wave 0: take power, read your instruments and the speed limit, then bring the train to a stop on the brake.

=== Config-as-QoL (Wave 0 Philosophy)

In Wave 0 there are no mods to install: every "quality of life" improvement comes from configuring Open Rails' own built-in options rather than installing content. Arrange the F4 Track Monitor and F5 Train Driving Info windows where you want them and let Open Rails remember the positions. Choose fullscreen or windowed play with Alt+Enter. Use the mouse on the in-cab handles instead of the keyboard. Open Rails' built-in settings cover the rest; later waves build on top of this configured base.

=== When You Are Ready for the Next Wave

Before moving on, check that you can:

- Start a session from the main menu and begin driving from the Pause menu.
- Move the throttle and the train brake with the mouse.
- Read Speed, Direction, and Train Brake on the F5 window.
- Keep the train within the speed limit shown on the F4 Track Monitor.
- Use the Track Monitor for track info, signals, and the speed limit.

When you can do all of that, you are ready for Wave 1.
