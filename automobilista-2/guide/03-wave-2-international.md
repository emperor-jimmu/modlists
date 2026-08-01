# Wave 2 — International License

## Wave Overview

Wave 2 transitions you from competent racer to genuine competitor. You'll master high-downforce formula cars where cornering speed defies intuition, GT3 machinery where tenths separate the podium from the midfield, and 1980s Group C monsters that demand equal parts bravery and restraint. Endurance racing introduces pit strategy, fuel calculations, and tyre management over race distances measured in hours. Telemetry analysis becomes a core skill — you'll learn to read your own data and turn it into lap time.

## Assists Adjustment

Wave 2 strips away the remaining safety nets. By the end, you'll be driving with almost no electronic intervention — just you and the car.

| Assist | Wave 1 | Wave 2 |
|--------|--------|--------|
| Traction Control | Medium | **Low** (Off in dry) |
| Stability Control | On | **Off** |
| ABS | Low | **Low** (Off in dry) |
| Auto Gears | On (or manual) | **Manual** (auto-clutch OK) |
| Racing Line | Corners Only | **Off** |
| Damage | Visual Only | **Performance-impacting** |

Stability Control off is the biggest step change — you are now solely responsible for catching slides. The Racing Line disappears entirely, forcing you to find your own braking references. Performance-impacting damage means a mistake in the wall isn't just cosmetic anymore — limp back to the pits with a bent steering arm and your race is effectively over.

## Car Classes

### GT3

500–600 HP production-based race cars. High downforce for a GT car but nowhere near formula levels. ABS and traction control are present but set to minimally intrusive levels — trail-braking still matters because the electronics won't save a botched entry. The field spread in GT3 is famously tight; in a 20-car grid, positions 5 through 15 can be covered by half a second. Racecraft, consistency, and tyre preservation win GT3 races more often than raw pace.

- **Cars:** Porsche 911 GT3 R, Mercedes-AMG GT3, BMW M6 GT3, McLaren 720S GT3
- **Tracks:** Spa-Francorchamps, Nürburgring GP, Bathurst (Mount Panorama), Silverstone GP

Start with the Porsche 911 GT3 R — rear-engine layout teaches weight management on corner entry without the knife-edge behavior of a mid-engine car at the limit.

### Formula 3 (F309)

The proving ground for Formula 1. 200 horsepower through a naturally aspirated 2.0L four-cylinder, genuine aerodynamic downforce from wings and diffuser, no ABS or traction control, and carbon brakes that bite harder than anything you've experienced. The car weighs under 550 kg with driver — every bump in the road surface unsettles the chassis. You'll learn that downforce is trust: the faster you go, the more grip you have, but only if you commit.

- **Tracks:** Spielberg (Red Bull Ring), Monza, Imola, Montreal (Circuit Gilles Villeneuve)
- **Key skill:** Carrying minimum corner speed. An F3 car loses 0.3 seconds per km/h you give away at the apex.

The F309 rewards commitment and punishes hesitation. If you lift at a corner that requires full throttle, the aero grip vanishes and you understeer off. The car must be driven with conviction.

### Stock Car Brasil

500+ HP V8 sedans racing door-to-door on Brazilian circuits. These cars have high mechanical grip from wide tyres and moderate aerodynamic downforce, but the real challenge is the pronounced weight transfer — nearly two tons of metal and rubber pitching and rolling through every corner. The racing is physical, aggressive, and incredibly close. Bump-drafting is common, panel contact is expected, and patience is a perishable commodity.

- **Tracks:** Interlagos, Goiânia, Curitiba, Velopark
- **Key skill:** Managing weight transfer. Smooth brake release and progressive throttle are the only way to keep the rear planted.

Stock Car Brasil teaches racecraft under pressure better than any other class in AMS2. When you can go three-wide into Turn 1 at Interlagos without contact, you're ready for anything.

### Group C

The legends. Porsche 962C, Sauber-Mercedes C9 — 800+ horsepower from turbocharged engines with lag measured in geological eras, zero driver aids, and ground-effect aerodynamics that suck the car to the track at speed. Top speeds exceed 350 km/h on the Mulsanne Straight. These cars do not forgive. The turbo delivery is violent — the boost arrives in a wave that can break traction in fourth gear. You must drive with your right foot as much as your hands, modulating the throttle to manage boost rather than simply going flat.

- **Cars:** Porsche 962C, Sauber-Mercedes C9
- **Tracks:** Le Mans (Circuit de la Sarthe), Spa-Francorchamps, Daytona Road Course
- **Key skill:** Throttle discipline. Never apply full throttle until the steering wheel is straight. Never.

Treat Group C with genuine respect. These cars have killed people in real life and they will kill your race in the sim if you disrespect the boost.

## Telemetry Analysis

Telemetry turns feelings into facts. That corner you think you're nailing? The traces will tell you the truth.

### Key Channels

| Channel | What It Tells You | Look For |
|---------|-------------------|----------|
| Throttle trace | Acceleration smoothness and timing | Stair-step pattern (good: smooth ramp). How early you get to 100% on exit |
| Brake trace | Braking technique | Peak pressure location, trail-braking curve shape. Spikes = panic, dead zones = coasting |
| Speed trace | Minimum corner speed | The single most important number per corner. Compare your apex speed to the reference lap |
| Steering angle | Input smoothness | Jagged trace = over-correction. Large amplitude at high speed = understeer. Sudden peaks = snap corrections |
| Tyre temps | Inner/Middle/Outer spread across each tyre | >10°C spread = pressure or camber issue. Outer hotter than inner = too much positive camber |

### Analysis Workflow

1. **Baseline lap** — Run 5 laps to warm tyres. Save the fastest clean lap
2. **Export** — Use AMS2's built-in telemetry export or a third-party tool like Second Monitor
3. **Compare** — Overlay your best lap against a lap that was 9/10 effort. Where do the traces diverge?
4. **Identify** — Find the single corner where you lose the most time. One corner at a time
5. **Focus session** — Drive 10 laps targeting only that corner. Ignore the rest of the lap
6. **Re-test** — Export again and confirm improvement. If no change, adjust your approach and repeat

### Speed Trace: The Universal Truth

Minimum corner speed is the single metric most strongly correlated with lap time in any car, on any track. Before chasing tenths in braking zones or exit lines, look at your minimum speed at each apex. If you're 3 km/h slower than the reference, no amount of late braking or early throttle will recover that gap — the car behind is already 3 km/h faster down the entire following straight.

## Endurance Racing Introduction

Endurance racing is about managing resources over time. The fastest single lap means nothing if you destroy your tyres achieving it. Your first endurance event is a 45-minute GT3 race — long enough to require strategy, short enough to survive a mistake.

### Race Configuration

| Setting | Value |
|---------|-------|
| Duration | 45 min (not laps) |
| AI Difficulty | 85 |
| Fuel Usage | 2x (accelerated learning) |
| Tyre Wear | 2x (accelerated learning) |
| Mandatory Pit Stop | Yes (1) |
| Weather | Random (1–3 slots) |

Accelerated fuel and tyre wear at 2x compresses a 90-minute strategy problem into 45 minutes, giving you the same decision pressure without the time commitment.

### Fuel Strategy

- **Practice 5 laps** at race pace — note your per-lap fuel consumption
- **Race fuel** = (race laps × per-lap consumption) + 2 laps margin
- **Short-fill** = less fuel in the car, lighter, faster — but requires an extra stop
- **Full-fill** = fewer stops, more consistent pace — but you're carrying dead weight early

For a 45-minute race with one mandatory stop, split the fuel load evenly: start with enough to reach half-distance plus margin, refuel to the same level at your stop.

### Tyre Strategy

| Phase | Behaviour |
|-------|-----------|
| First 5 laps | Optimal grip. The window where qualifying pace is possible |
| Laps 5–15 | Gradual fall-off. Times drop by 0.2–0.5 seconds per lap |
| Laps 15+ | Significant degradation. Front-end wash, rear-end snap. Risk of off-track increases |

A tyre change costs approximately 15 seconds from pit entry to exit. Only change tyres if the degradation exceeds 1 second per lap over your remaining stint — otherwise, the time loss from the stop itself outweighs the gain from fresh rubber.

### Weather

Random weather in a timed race creates the most strategic depth in AMS2:

- **Rain approaching** — Stay out on slicks as long as the track is dry enough. The crossover point (when wets become faster than slicks) is later than you think
- **Wet to drying** — The first car to pit for slicks on a drying track gains enormous time. Watch the AI — if one pitted, the window is open
- **Mixed conditions** — This is where races are won. The driver who reads the conditions and commits to the right call first wins

## Mods

<!-- MODS: Pending — Custom FFB, season skin packs, telemetry dashboards, track mods to be added here -->

*Awaiting mod list from user.*

## Completion Checklist

- [ ] 45-minute GT3 endurance at Spa with one pit stop (finish top 10, AI 85)
- [ ] Qualifying lap within 1.5 seconds of fastest AI at an unfamiliar track (AI 85)
- [ ] Interpret telemetry traces and identify one specific area for improvement
- [ ] Manage wet-to-dry transition without incorrect tyre choice or off-track incident
- [ ] Clean F3 race at Monza with no contact (AI 80)

---

**Next:** [Wave 3 — World Championship](04-wave-3-championship.md)
