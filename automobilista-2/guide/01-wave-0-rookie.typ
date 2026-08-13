#import "../templates/style.typ": *
#pagebreak()
#wave-banner(0, "Rookie License", "From rental karts to the world championship")
#story-intro[*"You've never turned a wheel in anger. The first time you sit in a kart at a dusty karting track, the engine rattles your bones and the steering wheel feels alive in your hands. This is where the dream begins — one corner, one lap, one clean race at a time."*]

= Wave 0 — Rookie License

== Wave Overview

Wave 0 is your introduction to sim racing. You'll learn the core controls, how assists work, the different session types available in AMS2, and the fundamentals of the racing line. By the end, you'll complete a clean sprint race at Velo Citta — no spins, no track limits, and laps you can be proud of.

== Tools for This Wave

Before starting, verify you have:

- AMS2CM installed and configured (see #link("00-install.md")[Installation & Setup])
- AMS2 launched at least once to generate config files
- Assists configured as per the Installation chapter (Steering Low, Braking Low, TC High, ABS High, Auto Gears On, Racing Line Full)
- A wheel or gamepad connected and calibrated — do not attempt with keyboard
- Stable 60+ FPS at Medium settings

== Your First Cars

=== Rental Kart (GX390)

The Rental Kart is the purest learning tool in AMS2. No suspension, no downforce, no gears — just a chassis, four wheels, and a ~13 HP Honda engine. Every bump, every weight shift, every mistake goes straight through your hands.

- *Teaches:* Weight transfer, momentum conservation, steering feel
- *Tracks:* Velo Citta Short, Buskerud Short, Interlagos Kart Track

Drive the Rental Kart until you can complete three consecutive laps within one second of each other. The kart rewards smoothness and punishes aggression — exactly what you need before stepping up to anything faster.

=== Formula Trainer

Your first open-wheel car. The Formula Trainer adds gearing and suspension to the equation while remaining lightweight and forgiving. You'll feel the chassis load up in corners and the rear step out when you're too aggressive — but it'll catch you before you spin.

- *Teaches:* Manual gears (optional at this stage), suspension feedback through FFB, trail braking introduction
- *Tracks:* Velo Citta, Cascavel, Taruma

=== Formula Vee (Advanced / Challenge)

The Formula Vee is a rear-engine, zero-downforce classic powered by an air-cooled VW Beetle engine. It has no driver aids, a swing-axle rear end, and a vengeful attitude toward abrupt inputs. Mastering the Vee means mastering car control.

- *Teaches:* Rear-engine dynamics (lift-off oversteer), momentum preservation, smooth inputs
- *Challenge:* Complete a clean 5-lap race at Velo Citta in the Formula Vee to finish Wave 0

== Session Types

AMS2 offers three main session types. Understanding when to use each is critical to your progression.

*Test Day* — Unlimited time, no pressure, no AI opponents. This is your primary learning tool. Use Test Day to learn tracks, experiment with braking points, and build muscle memory. You can reset to the pits instantly via the pause menu.

*Time Trial* — Solo lapping with your best lap recorded. No traffic, no distractions. Use Time Trial to measure improvement against yourself. Goal for Wave 0: five clean laps at Velo Citta within two seconds of each other.

*Race Weekend* — Full event: Practice → Qualifying → Race. This is where everything comes together. Set AI difficulty to 50–60 for Wave 0. The AI at these settings is competitive without being overwhelming.

== Your First Lap — Step by Step

=== 1. Track Walk (Velo Citta)

Before you ever press the throttle, open a Test Day session at Velo Citta in the Formula Trainer and just look around. Identify each corner: Where does the track go left? Where does it go right? Which corners are tight, which are fast? Count them — Velo Citta has a short, simple layout perfect for this exercise.

=== 2. Out Lap

Your first lap should be at 50% pace. Ignore the racing line entirely. Focus on finding reference points: a trackside barrier, a braking marker board, a change in kerb color. Pick one reference point for every corner.

=== 3. Build Speed

Now progressively increase your pace. Start at 60% of what feels like maximum, run three laps, then step up to 75%, then 90%. Do not jump to full speed — your brain needs time to recalibrate its sense of speed.

=== 4. The Racing Line

The racing line is the fastest path through a corner. It follows a simple principle:

```text
Outside entry → Apex (inside) → Outside exit

    [Outside entry]
         \
          \_____[Apex]
                  /
                 /
    [Outside exit]
```

- *Outside entry:* Position the car on the outside edge of the track before the corner. This opens up the corner radius.
- *Apex:* The innermost point of the corner where the car clips the kerb. You should be at your slowest speed here.
- *Outside exit:* Let the car drift back to the outside edge on corner exit. This straightens the exit and lets you get on throttle earlier.

*Common mistakes:*
- *Early apex* — turning in too soon forces you wide on exit. Better to apex late than early.
- *Missing the apex* — staying too far from the inside kerb costs time. Use the whole track width.
- *Over-slowing* — braking too much kills momentum. The car can carry more speed than you think.

=== 5. Braking Technique

Braking is the hardest skill in racing. Do it correctly from day one:

+ *Hard initial press* — stomp the brake firmly to transfer weight to the front tyres
+ *Modulate* — as speed drops, ease off the brake pressure. Less weight transfer = less grip available for braking
+ *Trail off* — gently release the brake as you turn in. This keeps the front loaded and helps rotation
+ *No coasting* — the moment you come off the brake, you should be transitioning to throttle

With ABS set to High in Wave 0, you can learn braking points without fear of lock-ups. Focus on consistent pressure rather than pedal feel — that comes later.

=== 6. Throttle

- *Squeeze, don't stomp.* Apply throttle progressively as you unwind the steering wheel.
- *Wait for the car to settle* after turn-in before adding power.
- *Full throttle only when the steering wheel is straight or nearly straight.*
- In the Rental Kart: every unnecessary throttle input scrubs speed. Be patient.

== Your First Race Configuration

#styled-table(
  columns: 2,
  [Setting], [Value],
  [Track], [Velo Citta],
  [Car], [Formula Trainer],
  [AI Opponents], [8],
  [AI Difficulty], [50],
  [AI Aggression], [Low],
  [Practice], [5 min],
  [Qualifying], [5 min],
  [Race Laps], [5],
  [Damage], [Visual Only],
  [Tyre Wear], [Off],
  [Fuel Usage], [Off],
  [Weather], [Clear / Dry],
  [Time], [14:00],
)

*Goals for your first race:*
- Complete all 5 laps without spinning or leaving the track
- Finish the race (position doesn't matter)
- Notice improvement from lap 1 to lap 5

== Post-Race Analysis

After every race, watch the replay from chase cam. Focus on one corner where you felt slow or made a mistake. Compare your line to the AI's line. Pick that one corner as your focus for the next practice session. Improvement comes one corner at a time.

== Mods

Wave 0 is about foundations: the tools that make modding safe and racing feel alive. Install all four before your first race — the Installation chapter walks through the first two in detail.

#mod-panel(
  category: "Career App",
  name: "AMS2 Content Manager",
  version: "v0.3.0",
  url: "https://www.overtake.gg/downloads/automobilista-2-content-manager.59727/",
  source: "OverTake.gg",
  wave: "0",
  dependencies: ".NET 6 Desktop Runtime (auto-prompted on first launch)",
  install: "Covered step-by-step in the Installation & Setup chapter. Extract the archive, run AMS2CM.exe, and point it at your AMS2 installation. From then on, drag-and-drop any mod archive onto the window, tick it, and press Apply.",
  what: "The community-standard mod manager for AMS2, by paoloambrosio. Drag-and-drop mod archives (zip, 7z, rar) onto the window and Apply — it handles bootfiles, skin imports, AI files, and clean uninstalls automatically.",
  why: "Every other mod in this guide is installed and managed through AMS2CM. It is the backbone of the modlist: it prevents file conflicts, keeps the game folder clean, and makes removing a mod a one-click operation. Master it now and every later wave becomes trivial.",
  notes: "Free and open-source (github.com/OpenSimTools/AMS2CM). Mods install in alphabetical order of archive names — use name prefixes to control load order. Always launch AMS2 through AMS2CM once mods are active; the vanilla Steam launch bypasses mod loading.",
)

#mod-panel(
  category: "Dashboard/Overlay",
  name: "SimHub",
  version: "Latest release (auto-updates)",
  url: "https://www.simhubdash.com/",
  source: "Official website",
  wave: "0",
  dependencies: "None (free licence covers dashboards and overlays)",
  install: "Download the installer from simhubdash.com and run it. SimHub auto-detects AMS2; leave the game's Shared Memory setting at its default (Project CARS 2) and UDP off.",
  what: "The standard dashboard and overlay platform for sim racing, supporting 100+ games including AMS2. It powers custom HUDs, live telemetry screens, leaderboards, haptics, and motion add-ons — and is the required base for every dashboard mod in this guide.",
  why: "AMS2's built-in HUD is functional but limited, and it cannot show class-relative data in multiclass racing. SimHub gives you a foundation you will build on in every wave: first overlays in Wave 1, full race suites in Wave 2, and setup tools in Wave 3.",
  notes: "Free tier covers dashboards and overlays; a one-time licence unlocks extra refresh rates, haptics and motion. It runs alongside AMS2 (not inside it) — install it once and forget it.",
)

#mod-panel(
  category: "Career App",
  name: "Crew Chief",
  version: "Latest release (auto-updates)",
  url: "https://thecrewchief.org/",
  source: "thecrewchief.org",
  wave: "0",
  dependencies: "None (installer downloads voice packs on demand)",
  install: "Download the CrewChiefV4 installer from thecrewchief.org and run it. Launch Crew Chief before AMS2. In AMS2, leave Shared Memory on Project CARS 2 (the default in this guide's configuration).",
  what: "A free, open-source team radio engineer and spotter by Mr Belowski, with full AMS2 support. It calls your position, gaps, and 'car left/clear', reads fuel and tyre state, reacts to incidents, and supports voice recognition.",
  why: "In Wave 0 you are learning the racing line with no traffic. Crew Chief adds a spotter from your very first race — 'car on your right' — so you build situational awareness habits early instead of developing them later.",
  notes: "Install the sound packs when prompted or the spotter stays silent. It is a companion app, not a mod: it reads AMS2's shared memory and never modifies the game. Fully compatible with SimHub and all mods in this guide.",
)

#mod-panel(
  category: "Career App",
  name: "Crew Chief App Manager",
  version: "v1.0.0",
  url: "https://www.overtake.gg/downloads/crew-chief-app-manager-%E2%80%93-automatically-start-stop-crew-chief-for-iracing-ams2-lmu-and-more.78606/",
  source: "OverTake.gg",
  wave: "0",
  dependencies: "Crew Chief (above)",
  install: "Download, unzip, and run Install.bat. It registers a Windows scheduled task that watches for AMS2 and auto-launches Crew Chief; Uninstall.bat removes it.",
  what: "A lightweight tool by ewsimracing that automatically starts Crew Chief when you launch AMS2 and closes it when you quit — no more forgetting the spotter.",
  why: "One fewer thing to remember at the start of every session. For beginners, any friction between 'I want to race' and 'I am racing' is worth removing.",
  notes: "Do not combine with manually launching Crew Chief — let the manager own the lifecycle. Known limitation: launching AMS2 through a virtual desktop (VR) setup may not trigger it.",
)

#checklist[
  - Completed a clean 5-lap race at Velo Citta (no spins, no track limit violations)
  - Consistent lap times within 1 second of each other (3 consecutive laps)
  - Can identify the racing line through Velo Citta's corners
  - Understand the difference between Test Day, Time Trial, and Race Weekend
  - Can modulate brake pressure (not just on/off)
  - Launch AMS2 via AMS2CM successfully
]

#line(length: 100%)

*Next:* #link("02-wave-1-national.md")[Wave 1 — National License]
