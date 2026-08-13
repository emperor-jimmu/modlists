#import "../templates/style.typ": *
#pagebreak()
#wave-banner(3, "World Championship", "The pinnacle. Everything led here.")
#story-intro[*"Green light in the pit box. 340 km/h at Le Mans. Twelve years from rental kart to prototype. The engine fires in your chest before it fires in the car. Last hour of the greatest race on Earth. Everything led here."*]

= Wave 3 — World Championship

== Wave Overview

Wave 3 is the pinnacle. Mastery, refinement, full-immersion. You'll drive F1-grade machinery with hybrid energy deployment systems, pilot the fastest prototypes in multi-class endurance battles spanning hours, wrestle historic Formula 1 cars from four different eras with zero electronics, and engineer your own setups from scratch. Every assist is off. Every mistake has consequences. Every lap is yours alone.

== Final Assists

No more transition. This is racing as it was meant to be — raw, mechanical, and entirely in your hands.

#styled-table(
  columns: 2,
  table.header([Assist], [Setting]),
  [All driver aids], [*Off*],
  [Auto Gears], [*Off*],
  [Auto Clutch], [*Off* (manual clutch + heel-and-toe)],
  [Racing Line], [*Off*],
  [Damage], [*Full*],
  [Mechanical Failures], [*On*],
  [Tyre Wear], [*Authentic*],
  [Fuel Usage], [*Authentic*],
)

With Mechanical Failures on, the engine can blow if you money-shift or over-rev. Full damage means the wall ends your race, not just your lap. Authentic wear rates mean your tyres behave exactly as they would in reality — no compression, no safety net.

== Car Classes

=== Formula Ultimate Gen 2 (F1-class)

1000+ horsepower with a hybrid Energy Recovery System that adds 160 HP of electric boost. DRS zones on the straights. 8G cornering forces. Aero grip so extreme that the car is physically incapable of taking Eau Rouge flat in the wet but does it one-handed in the dry. This is the fastest, most demanding machinery in the simulator.

*ERS Modes:*
- *Qualifying* — Maximum deployment. Battery depletes rapidly. For one-lap heroics
- *Attack* — Aggressive deployment. Use when overtaking or defending
- *Balanced* — Sustainable deployment. Default race mode
- *Build* — Harvesting mode. Charges battery by sacrificing lap time. Use behind safety car or when managing a gap

*Setup sensitivity:* One click of rear wing angle changes the car's entire personality — from understeering and stable to loose and lethal. Tyre compound choice (Soft/Medium/Hard) is critical; the wrong compound for track temperature costs seconds per lap, not tenths.

- *Tracks:* Silverstone GP, Spa-Francorchamps, Monza, Interlagos, Azure Circuit, Suzuka
- *Key skill:* Braking. You experience 5G under deceleration. Trail-braking at this level is measured in single-digit meters and milliseconds.

=== LMDh / GTP

The fastest prototypes in modern racing. 340+ km/h on the Mulsanne. A hybrid system that harvests under braking and deploys automatically — no manual ERS management needed, so you focus purely on driving. The defining challenge of LMDh is multi-class traffic management. You will catch GT3 cars at closing speeds of 80+ km/h in braking zones. Navigating slower traffic without losing time is what separates prototype drivers from prototype passengers.

*Night racing:* Le Mans at night transforms the circuit. Corner references disappear. You rely on headlights, memory, and peripheral vision. Braking markers that were obvious in daylight become invisible — you learn to brake by feel, by gear, by the count of seconds between landmarks. Night racing in LMDh is the single most immersive experience in AMS2.

*Endurance setup philosophy:* Downforce is a pace-vs-tyre-life compromise. High downforce chews rear tyres faster but gives you confidence in traffic. Low downforce preserves tyres but makes the car nervous in high-speed corners. For a 2+ hour race, prioritize tyre life over single-lap pace.

- *Tracks:* Le Mans (Circuit de la Sarthe), Daytona Road Course, Sebring, Road Atlanta
- *Key skill:* Multi-class traffic management. Patience costs tenths; impatience costs the race.

=== Historic Formula 1

Four generations of Formula 1, each with its own personality, none with a single electronic aid. No traction control. No ABS. No power steering. Just an engine, a gearbox, and your nerve.

#styled-table(
  columns: 5,
  table.header([Generation], [Era], [Power], [Downforce], [Character]),
  [Formula Classic Gen 1], [1960s], [~220 HP], [None], [Narrow tyres, body roll, engines that demand revs. Pure mechanical grip. The Lotus 49C feels alive because it's trying to kill you gently],
  [Formula Classic Gen 2], [1970s], [~450 HP], [Early wings], [Ground effect beginning. Wider tyres. Still no downforce to speak of — cornering is about weight transfer, not aero],
  [Formula Classic Gen 3], [1980s], [~650–850 HP], [Significant], [Turbo lag that arrives like a punch. Qualifying engines with boost turned to grenade settings. The Brabham BT52 is a rocket — 1400 HP in qualifying trim],
  [Formula Classic Gen 4], [1990s–2000s], [~750–900 HP], [High], [Modern enough to feel fast, old enough to kill. V10 scream. The McLaren MP4/4 and Ferrari F2004 bridge the gap between historic and ultimate],
)

*Heel-and-toe is mandatory.* H-pattern gearboxes in Gen 1–3 require simultaneous brake, clutch, and throttle control on every downshift. Practice on a short track with low stakes until the motion is automatic. If you're thinking about your feet, you're not thinking about your line.

- *Tracks:* Nordschleife (Nürburgring Nordschleife), Historic Spa, Historic Interlagos, Historic Silverstone
- *Key skill:* Mechanical sympathy. These cars reward smooth inputs and punish aggression. Drive them like you paid for the rebuild.

== Setup Engineering

The final frontier. A good setup won't make you fast, but a bad setup will make you slow. The goal is to build a car that gives you confidence — that does what you expect when you ask it.

=== Workflow

+ *Baseline 5 laps* — Use the default setup. Note what the car does that you don't like
+ *One change at a time* — Change one parameter, drive 3 laps to evaluate. Never change two things simultaneously
+ *Document everything* — Keep a simple text file: track, date, change made, lap times, subjective feel
+ *A-B test* — After finding a promising direction, switch back to baseline for 2 laps to confirm the improvement is real, not a placebo

=== Setup Priority Order

#styled-table(
  columns: 3,
  table.header([Priority], [Parameter], [Why First]),
  [1], [Tyre Pressures], [Influences all grip, wear, and temperature behavior. Wrong pressures undermine every other adjustment],
  [2], [Brake Bias], [Affects every corner entry. The single most accessible adjustment — and the most commonly wrong one],
  [3], [Downforce (Wings)], [Biggest direct influence on lap time. Sets the fundamental character: stable vs. agile],
  [4], [Differential], [Affects exit traction and rotation. Power-down behavior and mid-corner balance],
  [5], [Suspension], [Track-specific. Spring rates and damping for bumps, curbs, and weight transfer],
  [6], [Gearing], [Top speed vs. acceleration trade-off. Only adjust after aero and mechanical balance is right],
  [7], [Camber/Toe], [Fine-edge adjustments. Requires telemetry data to set correctly — don't guess],
)

=== Track-Specific Philosophy

*Monza* — Low downforce, long gears, stable brake bias (rearward). Everything is sacrificed for straight-line speed because you spend 80% of the lap at full throttle. One braking zone per lap that matters (Turn 1). Get the exit of Parabolica right and you're ahead all the way to Turn 1.

*Monaco (Azure Circuit)* — Maximum downforce, shortest possible gears, agile differential. Mechanical grip is everything because there are no straights long enough for aero to dominate. The car must rotate on command. Camber and suspension travel take priority over top speed — you'll never hit the limiter here anyway.

*Spa-Francorchamps* — The eternal compromise. Medium-high downforce that lets you take Eau Rouge flat without the car bottoming out, but not so much that you're a sitting duck from La Source to Les Combes. Gearing must reach top speed at the end of Kemmel straight with DRS open. Brake bias forward for the heavy braking zones (La Source, Bus Stop), but not so forward that you lock fronts into Pouhon.

== Multi-Class Endurance

The ultimate test. Two to four hours. Two or more classes sharing the track with enormous speed differentials. A race you don't just drive — you survive, manage, and strategize your way through.

=== Race Configuration

#styled-table(
  columns: 2,
  [Setting], [Value],
  [Duration], [2–4 hours],
  [Classes], [LMDh + GT3 Gen 2],
  [AI Difficulty], [95–100],
  [Fuel Usage], [Authentic],
  [Tyre Wear], [Authentic],
  [Weather], [Random (4–6 slots)],
  [Time Scale], [10x–20x],
  [Mandatory Pit Stops], [3–5],
)

Time scale at 10x–20x compresses a full 24-hour day-night cycle into your race window. You will experience dawn, midday glare, dusk, and full darkness — each requiring adjustment to braking points and reference markers.

=== Traffic Management (LMDh / Faster Class)

- *Patience* — You close on a GT3 car at 80 km/h in the braking zone. Wait for the straight. Losing 0.3 seconds behind a GT3 through the Porsche Curves is better than losing 30 seconds in the wall
- *Predict the GT line* — GT3 cars brake earlier, carry less mid-corner speed, and apex later than prototypes. Know their line so you can plan yours
- *Light flash* — One quick flash to announce your presence. Not three — you're not bullying a backmarker, you're communicating
- *Exit speed is everything* — If you're unsure about a pass, lift slightly on entry and prioritize exit. Overtake them on the following straight with momentum

=== Being Lapped (GT3 / Slower Class)

- *Hold your line* — The prototype is already planning their pass around your predictable path. A sudden move to "help" will cause a crash
- *Lift on the straight* — The safest place to facilitate a pass. A brief lift on a straight costs you 0.2 seconds and saves the prototype 2 seconds of dirty air
- *Blue flag* — You are not required to jump out of the way, but you must not defend. Hold a predictable line and the faster car will find their way through

== Building a Championship

Custom championships are AMS2's most underrated feature. Design an 8–16 round season with full points, parc fermé rules, and the calendar of your choice. The format rewards consistency over single-race heroics — a driver who finishes every race on the podium will beat a driver who wins half and crashes out of the rest.

*Championship structure:*
- 12 rounds, mixed track types (4 power circuits, 4 technical circuits, 4 street/road courses)
- Full qualifying (20 minutes)
- Race distance: 45–60 minutes
- Parc fermé: car setup locked between qualifying and race
- Points: 25-18-15-12-10-8-6-4-2-1 with bonus point for fastest lap

The championship forces you to race, not just hot-lap. When you're P4 with three laps to go and the championship leader is P2, the calculus changes. Points matter. Finishing matters. This is where racecraft becomes instinct.

== Mods

Wave 3 is the full immersion layer: career worlds that give your championship a story, historic F1 seasons recreated to the helmet, period-correct grids for the DLC cars you race, and professional analysis tools for setup engineering.

#mod-panel(
  category: "Career App",
  name: "Rewind GP",
  version: "v1.6",
  url: "https://www.overtake.gg/downloads/rewind-gp.82303/",
  source: "OverTake.gg",
  wave: "3",
  dependencies: "None (ships with a fictional 1996 season; optional season packs extend it)",
  install: "Download and run the app alongside AMS2. It reads AMS2's shared memory automatically — launch order does not matter, but starting it before the game is smoothest.",
  what: "A historical Formula 1 career mode app by MazzFrascuorno. Multi-season progression with a driver market, team reputation, scenario (what-if) mode, wild-card entries, and dynamic liveries and helmets — it turns AMS2's Formula Classic classes into a living F1 career with GPL-style presentation.",
  why: "AMS2 has historic cars but no career scaffolding around them. Rewind GP supplies the context Wave 3's Historic F1 section is built for: you are not hot-lapping a 1990s car, you are negotiating a contract and racing a season with consequences.",
  notes: "Fully compatible with the IMG 1990 and 1991 season packs below — the app and the liveries/AI target the same classes and are designed to work together. Season packs for other years (1995, 1997, 1998) are separate downloads.",
)

#mod-panel(
  category: "Career App",
  name: "Race Pace — A Living Career App",
  version: "v20.0",
  url: "https://www.overtake.gg/downloads/race-pace-a-living-career-app.81848/",
  source: "OverTake.gg",
  wave: "3",
  dependencies: "None",
  install: "Download and run alongside AMS2. Results are detected automatically from the game — no spreadsheets or manual entry.",
  what: "A career companion by whyl_ that turns a collection of races into a persistent motorsport world. Hundreds of fully simulated AI drivers with rivalries and career life cycles, performance-based contract offers, 50+ real-life-inspired series (GT, endurance, open-wheel), custom livery support, and smart race scaling that preserves the day/night cycle.",
  why: "Wave 3's championship section asks you to design a season and race it with intent. Race Pace gives that season memory between sessions: your reputation, your rivals, and the grid that evolves around you — the 'consequence and context' the base game lacks.",
  notes: "Complements Rewind GP rather than competing: Rewind GP is a focused historic-F1 career; Race Pace simulates a broad racing world across every class you drive in this wave. Fully compatible with community livery packs.",
)

#mod-panel(
  category: "Skins/Liveries",
  name: "[IMG] F1 1990 Season",
  version: "v1.4",
  url: "https://www.overtake.gg/downloads/img-f1-1990-season.64765/",
  source: "OverTake.gg",
  wave: "3",
  dependencies: "Brazilian Racing Legends Pack Pt 1 DLC (adds the McLaren MP4/5B); AMS2CM recommended",
  install: "Install via AMS2CM (delete any older version first). Then run the F1 1990 Selector.bat in your AMS2 folder and type the scenario number before launching the game — it swaps liveries and AI per round.",
  what: "The IMMERSION Modding Group's full recreation of the 1990 Formula 1 World Championship on the Formula Classic Gen 3 class: detailed liveries, Reiza-style menu previews, custom AI, driver helmets, race suits and gloves, plus an XML Selector with a preset for every 1990 round and what-if scenarios (Andretti's Chance, Capelli's Dilemma).",
  why: "Wave 3's Historic F1 section explicitly covers the Formula Classic generations — Gen 3 is the 1980s turbo era, and the 1990 season is where it matured into the modern era. This pack makes the class a specific, authentic championship instead of a generic formula car.",
  notes: "Recommended settings from the author: Medium AI aggression, 25 opponents (or 26 to add an extra car). The selector's AI file governs the F-Classic classes when active — see conflicts-mods.md for how that interacts with NAMeS.",
)

#mod-panel(
  category: "Skins/Liveries",
  name: "[AMS2] F1 1991 Season",
  version: "v2.13",
  url: "https://www.overtake.gg/downloads/ams2-f1-1991-season.38880/",
  source: "OverTake.gg",
  wave: "3",
  dependencies: "None",
  install: "Run the F1_Season_1991_XML_Selector.bat in your AMS2 folder and choose a scenario (early-season, European, Silverstone no-tobacco, Spa, late-season, Adelaide finale, or the Alesi-at-Williams what-if) before launching the game.",
  what: "A complete 1991 Formula 1 season pack by AFry: ~40 liveries covering the full grid across the Classic Gen 4 V12, V10, and V8 models plus the McLaren MP4/6, with Reiza-style previews, HD helmets, and a custom AI file.",
  why: "This is the modern-era bridge in your Historic F1 progression: the 1991 grid is where Gen 4 begins, and driving the Williams of Mansell against Senna's McLaren is the closest AMS2 comes to the sport's golden era — with zero electronic aids, exactly as the wave demands.",
  notes: "Actively maintained since 2021 with V1.6-era fixes (V2.08 added previews for AMS2 V1.6; the AI file fixes wet-skill handling). Same XML Selector workflow as the 1990 pack — only one season's selector should be active at a time for the F-Classic classes.",
)

#mod-panel(
  category: "Skins/Liveries",
  name: "Trofeo Maserati Europe 2005",
  version: "v1.0",
  url: "https://www.overtake.gg/downloads/trofeo-maserati-europe-2005.86091/",
  source: "OverTake.gg",
  wave: "3",
  dependencies: "Historical Endurance Pack Part 2 DLC (Maserati GranSport Trofeo) — the pack contains only liveries and AI and will not work without it",
  install: "Install the liveries and custom AI through AMS2CM like any skin pack. Drive the Maserati GranSport Trofeo class at the 2005 calendar's tracks (Monza, Barcelona, Imola, Silverstone, Spa, Nürburgring — the author suggests Jerez as a stand-in for Valencia).",
  what: "Twenty liveries and custom AI recreating the 2005 Trofeo Maserati Europe — the debut season of the GranSport Trofeo — with its real driver roster: champion Alberto Cerrai, María de Villota, Michael Bartels, Sabine Schmitz, Jodie Kidd, and Koen Wauters.",
  why: "Wave 3's LMDh/endurance section is about multi-class racing, but single-marque sprint series are where car control is refined to its sharpest. The Maserati Trofeo is a low-downforce, high-torque car that punishes sloppy exits — and this pack turns it into a real 2005 championship.",
  notes: "Fresh release (August 2026) matched to the current game version. NAMeS v5.95 already includes the Trofeo Maserati class, so names stay consistent with the grid.",
)

#mod-panel(
  category: "Skins/Liveries",
  name: "Dodge Viper Ex-WorksTeam ORECA — 2000 24H of Le Mans",
  version: "v1.5",
  url: "https://www.overtake.gg/downloads/dodge-viper-ex-worksteam-oreca-2000-24h-of-le-mans.80558/",
  source: "OverTake.gg",
  wave: "3",
  dependencies: "None",
  install: "Unzip and copy the two folders (Car #51 only, or the full team #51/#52/#53) into the Automobilista 2 root folder so the Vehicles tree merges correctly.",
  what: "The three works ORECA Vipers from the 2000 24 Hours of Le Mans — the GTS-class winner that year — as high-detail liveries for the in-game Viper GTS-R, including the car that went on to take the ALMS GTS championship with 7 of 10 wins.",
  why: "It gives the GT1-class content in Wave 3's endurance setting a real, historic identity: a specific car, a specific race, a specific team. Racing the actual winner's livery at Le Mans is the closest thing to a time machine the sim offers.",
  notes: "Each livery is a separate XML file — if you want all three team cars in one grid, merge the XMLs as the author describes in the discussion thread. Reviewers report the liveries are standalone and do not touch physics.",
)

#mod-panel(
  category: "Career App",
  name: "AVUS",
  version: "26.6",
  url: "https://www.overtake.gg/downloads/avus.80196/",
  source: "OverTake.gg",
  wave: "3",
  dependencies: "None (local server included; requires AMS2 shared memory)",
  install: "Start the bundled CREST4AVUS server, open the AVUS Studio page in your browser, drive laps in AMS2, then select two laps and click Compare Selected Laps. AMS2 system settings: Shared Memory = Project CARS 2, UDP off.",
  what: "A telemetry analysis tool by avusstudio — 'Analyse, Visualise, and Understand Speed'. It records any lap and compares two laps on time-based graphs (speed, throttle, brake, gearing, steering) with track-map overlays, auto-detected braking zones, and an animated 3D side-by-side replay of the two laps.",
  why: "This is the tool for Wave 3's setup engineering workflow: baseline lap vs change-lap A/B testing, visualised side by side. When you are hunting a tenth through one corner, seeing exactly where the traces diverge beats guessing from feel.",
  notes: "Active development (AC Evo support added June 2026). Uses a local server on your machine — no cloud, nothing leaves your PC. Complements Omitool2 (setup targets) and Second Monitor (live timing).",
)

#mod-panel(
  category: "Dashboard/Overlay",
  name: "_HERVE_DASH",
  version: "V9.26",
  url: "https://www.overtake.gg/downloads/_herve_dash.61877/",
  source: "OverTake.gg",
  wave: "3",
  dependencies: "SimHub (Wave 0)",
  install: "Unzip and open the .simhubdash files — SimHub installs them as dashboards. Follow the readme for the car-class logos and startup screen; configuration lives in _HERVE_MY_DASH_CONFIG.json.",
  what: "A professional SimHub dashboard set by herve45: a full race dash with class-relative best-lap references, a dynamic leaderboard that always keeps the leader visible (25 drivers max, class best in navy, overall best in violet), and a graph dashboard for input analysis.",
  why: "Wave 3 is about precision everywhere, including the cockpit view. A purpose-built dash with class-relative deltas and a leaderboard that survives a 48-car multiclass race gives you the full picture without lifting your eyes from the track.",
  notes: "Interface labels are in French — the dashboards are primarily graphical (numbers, leaderboards), so this is cosmetic. Older dashboard file versions are long-lived and stable; if you prefer an English alternative, the Aces suite from Wave 2 covers similar ground.",
)

#checklist(title: "Mastery Checklist")[
  - Won a 2+ hour multi-class endurance race from pole position (AI 95+)
  - Built a custom setup from scratch that improved lap time by 1+ second
  - Completed a full 12-round championship season
  - Survived a 100% distance Historic F1 race at Nordschleife without damage
  - Managed a dry-wet-dry race with optimal tyre strategy calls
  - Set a lap within 1% of AI 100 pace at 3 different track types
  - Consistent heel-and-toe downshifts in H-pattern cars
  - Reads telemetry and identifies 3+ setup improvements without assistance
]

== Beyond Wave 3

You've completed Torque Ascension. The license is yours. Where you go next is up to you — online racing against human opponents (the AI never rage-quits, but it also never pulls off a genius overtake), transitioning to iRacing or another competitive platform, taking your skills to a real track day, coaching newer drivers through the same journey you just completed, or upgrading your hardware — load-cell pedals and a direct-drive wheel are the next frontier.

The skills you've built are transferable. The muscle memory of catching a slide, reading a braking point, and managing tyres over a stint doesn't leave you. You're not just a sim racer anymore. You know how to drive.

== Appendices

- #link("appendix-mod-reference.md")[Appendix A: Mod Reference]
- #link("appendix-glossary.md")[Appendix B: Glossary]

*Torque Ascension — Built by the sim racing community, for the sim racing community.*
