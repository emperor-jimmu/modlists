# Wave 3 — World Championship

> Green light in the pit box. 340 km/h at Le Mans. Twelve years from rental kart to prototype. The engine fires in your chest before it fires in the car. Last hour of the greatest race on Earth. Everything led here.

## Wave Overview

Wave 3 is the pinnacle. Mastery, refinement, full-immersion. You'll drive F1-grade machinery with hybrid energy deployment systems, pilot the fastest prototypes in multi-class endurance battles spanning hours, wrestle historic Formula 1 cars from four different eras with zero electronics, and engineer your own setups from scratch. Every assist is off. Every mistake has consequences. Every lap is yours alone.

## Final Assists

No more transition. This is racing as it was meant to be — raw, mechanical, and entirely in your hands.

| Assist | Setting |
|--------|---------|
| All driver aids | **Off** |
| Auto Gears | **Off** |
| Auto Clutch | **Off** (manual clutch + heel-and-toe) |
| Racing Line | **Off** |
| Damage | **Full** |
| Mechanical Failures | **On** |
| Tyre Wear | **Authentic** |
| Fuel Usage | **Authentic** |

With Mechanical Failures on, the engine can blow if you money-shift or over-rev. Full damage means the wall ends your race, not just your lap. Authentic wear rates mean your tyres behave exactly as they would in reality — no compression, no safety net.

## Car Classes

### Formula Ultimate Gen 2 (F1-class)

1000+ horsepower with a hybrid Energy Recovery System that adds 160 HP of electric boost. DRS zones on the straights. 8G cornering forces. Aero grip so extreme that the car is physically incapable of taking Eau Rouge flat in the wet but does it one-handed in the dry. This is the fastest, most demanding machinery in the simulator.

**ERS Modes:**
- **Qualifying** — Maximum deployment. Battery depletes rapidly. For one-lap heroics
- **Attack** — Aggressive deployment. Use when overtaking or defending
- **Balanced** — Sustainable deployment. Default race mode
- **Build** — Harvesting mode. Charges battery by sacrificing lap time. Use behind safety car or when managing a gap

**Setup sensitivity:** One click of rear wing angle changes the car's entire personality — from understeering and stable to loose and lethal. Tyre compound choice (Soft/Medium/Hard) is critical; the wrong compound for track temperature costs seconds per lap, not tenths.

- **Tracks:** Silverstone GP, Spa-Francorchamps, Monza, Interlagos, Azure Circuit, Suzuka
- **Key skill:** Braking. You experience 5G under deceleration. Trail-braking at this level is measured in single-digit meters and milliseconds.

### LMDh / GTP

The fastest prototypes in modern racing. 340+ km/h on the Mulsanne. A hybrid system that harvests under braking and deploys automatically — no manual ERS management needed, so you focus purely on driving. The defining challenge of LMDh is multi-class traffic management. You will catch GT3 cars at closing speeds of 80+ km/h in braking zones. Navigating slower traffic without losing time is what separates prototype drivers from prototype passengers.

**Night racing:** Le Mans at night transforms the circuit. Corner references disappear. You rely on headlights, memory, and peripheral vision. Braking markers that were obvious in daylight become invisible — you learn to brake by feel, by gear, by the count of seconds between landmarks. Night racing in LMDh is the single most immersive experience in AMS2.

**Endurance setup philosophy:** Downforce is a pace-vs-tyre-life compromise. High downforce chews rear tyres faster but gives you confidence in traffic. Low downforce preserves tyres but makes the car nervous in high-speed corners. For a 2+ hour race, prioritize tyre life over single-lap pace.

- **Tracks:** Le Mans (Circuit de la Sarthe), Daytona Road Course, Sebring, Road Atlanta
- **Key skill:** Multi-class traffic management. Patience costs tenths; impatience costs the race.

### Historic Formula 1

Four generations of Formula 1, each with its own personality, none with a single electronic aid. No traction control. No ABS. No power steering. Just an engine, a gearbox, and your nerve.

| Generation | Era | Power | Downforce | Character |
|------------|-----|-------|-----------|-----------|
| Formula Classic Gen 1 | 1960s | ~220 HP | None | Narrow tyres, body roll, engines that demand revs. Pure mechanical grip. The Lotus 49C feels alive because it's trying to kill you gently |
| Formula Classic Gen 2 | 1970s | ~450 HP | Early wings | Ground effect beginning. Wider tyres. Still no downforce to speak of — cornering is about weight transfer, not aero |
| Formula Classic Gen 3 | 1980s | ~650–850 HP | Significant | Turbo lag that arrives like a punch. Qualifying engines with boost turned to grenade settings. The Brabham BT52 is a rocket — 1400 HP in qualifying trim |
| Formula Classic Gen 4 | 1990s–2000s | ~750–900 HP | High | Modern enough to feel fast, old enough to kill. V10 scream. The McLaren MP4/4 and Ferrari F2004 bridge the gap between historic and ultimate |

**Heel-and-toe is mandatory.** H-pattern gearboxes in Gen 1–3 require simultaneous brake, clutch, and throttle control on every downshift. Practice on a short track with low stakes until the motion is automatic. If you're thinking about your feet, you're not thinking about your line.

- **Tracks:** Nordschleife (Nürburgring Nordschleife), Historic Spa, Historic Interlagos, Historic Silverstone
- **Key skill:** Mechanical sympathy. These cars reward smooth inputs and punish aggression. Drive them like you paid for the rebuild.

## Setup Engineering

The final frontier. A good setup won't make you fast, but a bad setup will make you slow. The goal is to build a car that gives you confidence — that does what you expect when you ask it.

### Workflow

1. **Baseline 5 laps** — Use the default setup. Note what the car does that you don't like
2. **One change at a time** — Change one parameter, drive 3 laps to evaluate. Never change two things simultaneously
3. **Document everything** — Keep a simple text file: track, date, change made, lap times, subjective feel
4. **A-B test** — After finding a promising direction, switch back to baseline for 2 laps to confirm the improvement is real, not a placebo

### Setup Priority Order

| Priority | Parameter | Why First |
|----------|-----------|-----------|
| 1 | Tyre Pressures | Influences all grip, wear, and temperature behavior. Wrong pressures undermine every other adjustment |
| 2 | Brake Bias | Affects every corner entry. The single most accessible adjustment — and the most commonly wrong one |
| 3 | Downforce (Wings) | Biggest direct influence on lap time. Sets the fundamental character: stable vs. agile |
| 4 | Differential | Affects exit traction and rotation. Power-down behavior and mid-corner balance |
| 5 | Suspension | Track-specific. Spring rates and damping for bumps, curbs, and weight transfer |
| 6 | Gearing | Top speed vs. acceleration trade-off. Only adjust after aero and mechanical balance is right |
| 7 | Camber/Toe | Fine-edge adjustments. Requires telemetry data to set correctly — don't guess |

### Track-Specific Philosophy

**Monza** — Low downforce, long gears, stable brake bias (rearward). Everything is sacrificed for straight-line speed because you spend 80% of the lap at full throttle. One braking zone per lap that matters (Turn 1). Get the exit of Parabolica right and you're ahead all the way to Turn 1.

**Monaco (Azure Circuit)** — Maximum downforce, shortest possible gears, agile differential. Mechanical grip is everything because there are no straights long enough for aero to dominate. The car must rotate on command. Camber and suspension travel take priority over top speed — you'll never hit the limiter here anyway.

**Spa-Francorchamps** — The eternal compromise. Medium-high downforce that lets you take Eau Rouge flat without the car bottoming out, but not so much that you're a sitting duck from La Source to Les Combes. Gearing must reach top speed at the end of Kemmel straight with DRS open. Brake bias forward for the heavy braking zones (La Source, Bus Stop), but not so forward that you lock fronts into Pouhon.

## Multi-Class Endurance

The ultimate test. Two to four hours. Two or more classes sharing the track with enormous speed differentials. A race you don't just drive — you survive, manage, and strategize your way through.

### Race Configuration

| Setting | Value |
|---------|-------|
| Duration | 2–4 hours |
| Classes | LMDh + GT3 Gen 2 |
| AI Difficulty | 95–100 |
| Fuel Usage | Authentic |
| Tyre Wear | Authentic |
| Weather | Random (4–6 slots) |
| Time Scale | 10x–20x |
| Mandatory Pit Stops | 3–5 |

Time scale at 10x–20x compresses a full 24-hour day-night cycle into your race window. You will experience dawn, midday glare, dusk, and full darkness — each requiring adjustment to braking points and reference markers.

### Traffic Management (LMDh / Faster Class)

- **Patience** — You close on a GT3 car at 80 km/h in the braking zone. Wait for the straight. Losing 0.3 seconds behind a GT3 through the Porsche Curves is better than losing 30 seconds in the wall
- **Predict the GT line** — GT3 cars brake earlier, carry less mid-corner speed, and apex later than prototypes. Know their line so you can plan yours
- **Light flash** — One quick flash to announce your presence. Not three — you're not bullying a backmarker, you're communicating
- **Exit speed is everything** — If you're unsure about a pass, lift slightly on entry and prioritize exit. Overtake them on the following straight with momentum

### Being Lapped (GT3 / Slower Class)

- **Hold your line** — The prototype is already planning their pass around your predictable path. A sudden move to "help" will cause a crash
- **Lift on the straight** — The safest place to facilitate a pass. A brief lift on a straight costs you 0.2 seconds and saves the prototype 2 seconds of dirty air
- **Blue flag** — You are not required to jump out of the way, but you must not defend. Hold a predictable line and the faster car will find their way through

## Building a Championship

Custom championships are AMS2's most underrated feature. Design an 8–16 round season with full points, parc fermé rules, and the calendar of your choice. The format rewards consistency over single-race heroics — a driver who finishes every race on the podium will beat a driver who wins half and crashes out of the rest.

**Championship structure:**
- 12 rounds, mixed track types (4 power circuits, 4 technical circuits, 4 street/road courses)
- Full qualifying (20 minutes)
- Race distance: 45–60 minutes
- Parc fermé: car setup locked between qualifying and race
- Points: 25-18-15-12-10-8-6-4-2-1 with bonus point for fastest lap

The championship forces you to race, not just hot-lap. When you're P4 with three laps to go and the championship leader is P2, the calculus changes. Points matter. Finishing matters. This is where racecraft becomes instinct.

## Mods

<!-- MODS: Pending — Career apps (Rewind GP, Race Pace), pro dashboards, historic skin packs, car mods to be added here -->

*Awaiting mod list from user.*

## Mastery Checklist

- [ ] Won a 2+ hour multi-class endurance race from pole position (AI 95+)
- [ ] Built a custom setup from scratch that improved lap time by 1+ second
- [ ] Completed a full 12-round championship season
- [ ] Survived a 100% distance Historic F1 race at Nordschleife without damage
- [ ] Managed a dry-wet-dry race with optimal tyre strategy calls
- [ ] Set a lap within 1% of AI 100 pace at 3 different track types
- [ ] Consistent heel-and-toe downshifts in H-pattern cars
- [ ] Reads telemetry and identifies 3+ setup improvements without assistance

## Beyond Wave 3

You've completed Torque Ascension. The license is yours. Where you go next is up to you — online racing against human opponents (the AI never rage-quits, but it also never pulls off a genius overtake), transitioning to iRacing or another competitive platform, taking your skills to a real track day, coaching newer drivers through the same journey you just completed, or upgrading your hardware — load-cell pedals and a direct-drive wheel are the next frontier.

The skills you've built are transferable. The muscle memory of catching a slide, reading a braking point, and managing tyres over a stint doesn't leave you. You're not just a sim racer anymore. You know how to drive.

## Appendices

- [Appendix A: Mod Reference](appendix-mod-reference.md)
- [Appendix B: Glossary](appendix-glossary.md)

*Torque Ascension — Built by the sim racing community, for the sim racing community.*
