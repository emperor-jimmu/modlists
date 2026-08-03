// strategy.typ — Wave 2: The Yard
== Roleplaying Background

The main-line runs are behind you, and the fictional railway's management has decided where you are most useful. You are promoted to yard foreman and posted to a remote timber branch, a little sawmill line where the whole of the day's working rests on two saddle-tank steam locomotives and a handful of timber wagons. Your job is no longer to take a train from one place to another, but to make it up and split it apart: putting empty wagons under the loading point at the sawmill, pulling the loaded ones out, and building and breaking the consists that the branch lives on. It is slower, more deliberate railroading — and it is where you learn to feel every wagon you are handling.

== Strategy — Switching Operations (Advanced)

=== Coupler Work

Switching is mostly coupler work. You move up to a wagon at little more than walking pace so that the couplers meet and engage, then make sure they are properly locked together before you take any strain. Pulling away with a coupler that never fully engaged means dragging the wagon a few feet and then stopping dead when it lets go — at best an inconvenience, at worst a damaged coupling and a derailed car. The discipline is simple: couple slowly, check the engagement, and only then pull.

=== Runaround Moves

Most of the yard work depends on the runaround, the move that lets a locomotive get to the other end of its train. When there is no loop or runaround track — which is common on a branch like this — you pull past the train, uncouple, reverse back along the parallel track beside it, and couple onto the other end. It looks elaborate, but it is the basic grammar of making up and splitting trains, and you will do it over and over. Learning to read the track layout so you know when a runaround is possible, and to plan the sequence of moves before you start, is half of yard craft.

=== Industry Spotting

The sawmill only works if the wagons arrive in the right place. Spotting is the art of placing an empty wagon precisely at the loading point and pulling the loaded one away when it is full. Load and unload only happen when the wagon is properly in position, so getting the stop right matters: too short and the mill can't reach the wagon, too long and it hangs over into the runaround. Judge your speed so you roll to a stop with the wagon where the work is — that exactness is what separates a yard foreman from someone just moving trains.

=== Working at Reduced Speed

Everything in the yard happens slowly. A wagon being shoved into position has no tolerance for speed — a mistake at speed means a derailment, a crushed buffer, or a coupler torn off. Short, deliberate movements, patience between each one, and a steady hand on the controls are the whole of the job. The route rewards that patience: there is no timetable pressure in the yard, only the pressure you put on yourself to do the move cleanly the first time.

=== The Train Operations Monitor

Press `<Ctrl+Alt+F9>` to open the Open Rails Train Operations window. It is similar to the F9 window in MSTS, but with extra features, and it is the yard foreman's real working tool. The window lets you control the air brake connections of individual cars: you can control the connection of the air brake hoses between individual cars, uncouple cars without losing the air pressure in the train's air brake hose, or uncouple cars with their air brakes released so that they will coast — the classic humping move. The unit you control (the lead unit) is shown in red in this window. Cars are numbered according to their UiD in the Consist file (.con) or the Activity file (.act); scroll with the arrows at the left and right bottom corners to see the full consist. Clicking on the coupler icon between any two cars uncouples the consist at that point.

=== Uncoupling by Hand

You can also uncouple cars from your player train without the operations window: press the `<U>` key and click with the mouse on the couplers in the main window. This is the quickest way to drop a wagon mid-move, but it puts the work on your eye and your timing — you must place the cursor exactly on the coupler you mean to release, at the moment you mean to release it.

=== The Car Operation Menu

Clicking on any car in the Train Operations window opens the Car Operation Menu. From it you can apply and release the handbrake, and release the air brakes so that the car can be moved without brakes — the humping setting, where a car rolls freely once pushed or shoved. Applied to a car you are about to set out, the handbrake holds it where it lands; released, the car is ready to be moved again without fighting its brakes.

=== Pathless Trains & Recovering from SPAD

Not every train in the yard has a path. In the Train List window, drivable static consists are listed in yellow, named STATIC plus an ID number. The first click on a static consist line moves the camera to it; the second click enters its cab. If that second click happens with the Shift key pressed, the old player train goes into a suspended state; otherwise it enters autopilot mode, moving itself along its path. The static consist becomes a standard train without a path — pathless — running in manual mode. In that mode signals can be cleared in the dispatcher window or permission requested, switches moved, direction changed, and cars coupled and uncoupled, which makes a pathless train the natural tool for building the yard's moves.

If the train goes out of control — for example because of a SPAD, a signal passed at danger — press `<Ctrl+M>` to exit emergency braking.
