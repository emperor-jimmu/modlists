= Wave 0: The Novice's Tale

#set align(center)

*"The checkered flag means nothing when you cannot find the racing line."*

#set align(left)

#v(0.5cm)

== The Narrative

You have just passed your driving test. Your budget is modest — a compact hatchback, a second-hand set of tires, and a fire in your chest that matches the red of the setting sun. You sign up for your first track day with nothing but a helmet, a full tank, and the will to learn.

You do not need a faster car. You need to *become* faster.

== Wave 0 Philosophy

Wave 0 is a *Vanilla+* experience. No game-changing mods. No physics overhauls. No content packs. The goal is to learn Assetto Corsa at its purest while improving the UI/UX to modern standards.

- *What changes:* Interface, HUD, quality of life
- *What stays stock:* Physics, content, graphics (as shipped)

== Understanding the HUD

The default Assetto Corsa HUD displays:

- *Speedometer & Tachometer* — Upper corners
- *Gear indicator* — Center bottom
- *Lap timer* — Top center
- *Relative display* — Left side (shows nearby cars)
- *Rearview mirror* — Toggle with `F2`

== Controls

=== Keyboard & Mouse (Basic)

#table(
  columns: (auto, auto),
  table.header([Action], [Default Key]),
  [Steer], [`A` / `D`],
  [Accelerate], [`W`],
  [Brake], [`S`],
  [Gear up / down], [`Shift` / `Ctrl`],
  [Look left / right], [`Left Arrow` / `Right Arrow`],
  [Look back], [`Down Arrow`],
  [Rearview mirror], [`F2`],
  [Toggle HUD], [`Ctrl` + `H`],
  [Change camera], [`F1` (cycle)],
  [Pause], [`Esc`],
)

=== Gamepad

#table(
  columns: (auto, auto, auto),
  table.header([Action], [Xbox], [PlayStation]),
  [Steer], [Left stick], [Left stick],
  [Accelerate], [`RT`], [`R2`],
  [Brake], [`LT`], [`L2`],
  [Gear up / down], [`A` / `X`], [`×` / `□`],
  [Clutch], [`LB`], [`L1`],
  [Look left / right], [Right stick], [Right stick],
  [Look back], [Right stick click], [`R3`],
  [Rearview mirror], [`Back`], [`Share`],
  [Toggle HUD], [`Guide` + `H`], [`PS` + `H`],
  [Change camera], [`Y`], [`△`],
  [Pause], [`Menu`], [`Options`],
)

*Tips for gamepad:*
- Set *Steering Speed* to 50—70% in Content Manager controls for linear response
- Enable *Steering Filter* at low values (0—5) to smooth input
- Increase *Deadzone* to 5—10% if the stick drifts
- Use *Vibration* (enabled in Settings → Controls) for tyre slip feedback
- For throttle control: squeeze `RT` / `R2` gradually — abrupt application causes spin

=== Wheel Users

Configure your wheel in *Controls → Axis*. Key settings:

- *Steering lock*: Match your wheel's physical rotation (e.g., 900°)
- *Gamma*: 1.00 (linear response)
- *Filter*: 0 (no smoothing)
- *Force Feedback*: 100% gain (adjust per car)

*See Configuration chapter for detailed FFB tuning.*

== Driving Curriculum: Phase 1 — Foundations

Goal: Stop crashing and build clean, repeatable laps.

=== 1.1 Seating Position & Ergonomics

Before you turn a wheel, set up your physical environment. A correct seating position is the single cheapest performance gain available.

==== Wheel Position

- Sit so your shoulders remain relaxed against the seat back when your hands are at quarter-to-three
- Your elbows should be bent at 90—120°
- You should be able to turn the wheel full lock without leaning forward or stretching

==== Pedal Placement

- Your heel should rest on the floor, allowing your foot to pivot from the ankle
- The brake pedal should be reachable without lifting your heel
- For heel-toe downshifting: the throttle and brake should be close enough in height to blip with your right foot's edge

==== Field of View (FOV)

FOV is the single most important visual setting for accuracy. Too wide and distances compress (you brake too early). Too narrow and you lose peripheral awareness.

#set align(center)
*In ideal FOV: the dashboard width matches what you see in real life when sitting in the car.*
#set align(left)

To calculate your ideal FOV:

1. Measure your monitor width (in cm) and distance from your eyes to the screen
2. Use an online FOV calculator (set result as "Vertical FOV" in AC)
3. Or start with 35—45° (single monitor) and adjust until braking points feel natural

=== 1.2 Vision Fundamentals

Your eyes lead the car. A common beginner mistake is staring at the front bumper or the track directly ahead.

==== Where to Look

- *Entry:* Look at the braking point, then the turn-in point
- *Mid-corner:* Look at the apex
- *Exit:* Look at the exit curb or track-out point
- *Between corners:* Look as far ahead as possible — ideally 2—3 turns ahead

==== Reference Points

Choose fixed objects (braking marker boards, curb colors, marshall posts) as reference points. Without reference points every lap is a guess; with them, you can measure and improve.

- *Brake marker:* "I brake when my front bumper passes the 100m board"
- *Turn-in:* "I turn when the curb pattern changes from red to white"
- *Apex:* "I clip the apex where the outer barrier has the yellow stripe"

=== 1.3 Smooth Inputs

Jerky inputs upset the car's balance. Every control movement should be gradual and deliberate.

==== Throttle

- Squeeze, do not stomp. Apply throttle progressively over about 0.3—0.5 seconds
- On exit, increase pressure as the steering straightens
- Abrupt lift-off mid-corner causes snap oversteer

==== Brake

- Apply pressure smoothly (not a stomp), building to maximum in about 0.1—0.2 seconds
- Release pressure gradually as you approach turn-in
- A sudden brake release unweights the front and reduces turn-in grip

==== Steering

- Avoid sawing at the wheel. Plan your steering input before you execute it
- Smooth, continuous rotations — not a series of small corrections
- If you need multiple corrections mid-corner, you turned in too early or too late

=== 1.4 Understanding Grip Limits

Grip is finite. Every tyre has a maximum force it can deliver. Your job as a driver is to stay under that limit — and sense when you are near it.

The grip circle (or friction circle) concept:

- A tyre can deliver 100% grip total
- If you use 80% for braking and 80% for turning, you exceed 100% — the tyre slides
- *Traction pyramid:* Brake in a straight line, then turn, then accelerate. Never do two things at full effort simultaneously

Learn to feel the limit in practice: drive a circle in low gear and slowly increase speed until the car slides. This is the limit. Back off slightly — that is where speed lives.

=== 1.5 The Racing Line

The fastest path through any corner follows the *outside-inside-outside* principle:

1. *Brake zone:* Stay wide on the outside — sets up a straighter braking zone
2. *Turn-in:* Aim for the apex (inside curb)
3. *Exit:* Let the car drift wide to the outside curb

==== Corner Types

- *90° turn:* Standard outside-inside-outside
- *Hairpin:* Very late apex to open up the exit
- *Sweeper:* Early apex, carry as much speed as possible
- *Chicane:* Connected left-right — sacrifice entry of the first to set up the second

=== 1.6 Threshold Braking

Braking at the absolute limit of grip — the point just before the wheels lock — is called threshold braking.

==== Technique

1. Apply brake firmly but progressively
2. Listen to tyre squeal and feel pedal vibration (ABS off) or slight pedal pulsation (ABS on)
3. Reduce pressure slightly if you feel a wheel lock
4. The goal: maximum deceleration without locking

==== Without ABS

Most road cars in AC do not have ABS. Practice in the Mazda MX-5 Cup (ABS off):

- Apply brakes to about 80% initially
- Increase to near-lock as you feel the grip available
- If the front wheels lock, you cannot steer — release slightly to regain steering authority

=== 1.7 Corner Phases

Every corner has three phases. Master each separately, then join them.

==== Entry (Brake Zone → Turn-in)

- Brake in a straight line
- Release brakes progressively
- Turn the wheel smoothly toward the apex

==== Mid-Corner (Apex)

- Steady throttle or coasting
- Minimum speed occurs here — feel for it
- Car should be settled, not sliding

==== Exit (Apex → Track-Out)

- Progressive throttle application
- Let the steering straighten naturally
- Track out to the outside curb

=== 1.8 Recognizing Understeer vs Oversteer

==== Understeer (Push)

- *Feeling:* The front washes wide; you turn more but the car does not respond
- *Cause:* Too much speed at entry, or too much steering angle for the grip available
- *Fix:* Reduce entry speed, trail brake slightly, or add more rear brake bias

==== Oversteer (Loose)

- *Feeling:* The rear steps out; the car tries to spin
- *Cause:* Too much throttle mid-corner, abrupt lift-off, or too much entry trail braking
- *Fix:* Smooth throttle application, reduce trail braking depth, adjust rear wing or ARB

Learn to catch oversteer with steering correction (countersteer) — this will save you hundreds of times.

=== 1.9 Building Consistent Lap Times

Clean laps are faster than spectacular laps. A spin costs 3—5 seconds. A four-wheel-off costs 1—2 seconds. A perfect lap with one mistake loses to a clean lap every time.

==== The Consistency Method

1. Run 10 laps without counting your time
2. Focus on hitting your reference points every lap
3. Once you can hit them 8/10 times, start timing
4. Your goal: 5 consecutive laps within 0.5 seconds of each other
5. *Then* push for outright speed

==== Practice Focus

- *Car:* Mazda MX-5 Cup or Abarth 500 (simple, forgiving)
- *Tracks:* Magione, Brands Hatch Indy, Monza Junior, Imola short layouts
- *Session:* 20—30 minute practice sessions — short enough to stay focused, long enough to build patterns

== Wave 0 Modlist

Wave 0 includes only UI, HUD, and quality-of-life mods. No mechanics, graphics, or content changes.

=== UI & Quality of Life

- #link("https://www.overtake.gg/downloads/sidekick.11007/")[Sidekick] — Audible spotter for proximity, gaps, and flags. *Dependencies: Content Manager*. *Impact: Audio notification system, no gameplay change*.
- #link("https://www.overtake.gg/downloads/car-radar.15743/")[Car Radar] — Visual radar display showing nearby cars. *Dependencies: Content Manager*. *Impact: Situational awareness tool, no physics change*.
- #link("https://www.overtake.gg/downloads/helicorsa.5199/")[Helicorsa] — 3D arrow indicator showing car proximity and relative position. *Dependencies: Content Manager*. *Impact: Visual overlay, no gameplay change*.
- #link("https://www.thecrewchief.org/forumdisplay.php?15-Download-CrewChief-for-PC")[Crew Chief] — External spotter and race engineer application. *Dependencies: Standalone app (runs alongside AC)*. *Impact: Voice-based spotter, pit strategy assistance, no in-game modification*.

=== Installation Instructions

1. Download each mod from the link provided
2. Drag the `.zip` / `.rar` onto Content Manager
3. CM handles extraction and installation automatically
4. Enable each mod in CM's *Mods* tab
5. Configure in-game overlays via CM's *Settings → Assetto Corsa → Apps*

=== Verification

After installing Wave 0, launch AC through Content Manager. You should see:

- The Sidekick spotter reads out gaps and flags
- Car Radar shows a 360° proximity display
- Helicorsa highlights nearby cars with arrows
- Everything else is identical to stock Assetto Corsa

#pagebreak()
