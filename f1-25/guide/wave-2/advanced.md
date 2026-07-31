## Wave 2 — Apex Predator

**Roleplaying Background:** You don't just drive the car anymore — you define it. Every click of wing angle, every tenth of a psi, every suspension millimeter is a deliberate choice. You don't react to strategy — you script it before the lights go out. The car is an extension of your will. Now make it sing.

---

### 2.1 — Advanced Car Setup

By now, you understand the basics of wings, differential, and brake bias. Advanced setup is about the fine details — the relationships between parameters that experienced engineers spend careers mastering.

#### Full Aerodynamic Map

The front and rear wings don't exist in isolation. Their relationship to ride height, suspension stiffness, and tyre pressures creates the car's aerodynamic platform.

| Parameter | Aero Effect |
|-----------|-------------|
| **Lower front ride height** | Increases front downforce — better turn-in, risk of bottoming |
| **Higher rear ride height** | Increases rear downforce — more stability, more drag |
| **Rake (rear higher than front)** | Increases overall downforce — gives the diffuser more air to work with |
| **Stiff front suspension** | Maintains aero platform, less mechanical grip |
| **Soft rear suspension** | Better rear traction, risk of aero instability |

**Principle:** Change one thing at a time. If you change rear wing, front ride height, and differential all at once, you won't know what improved or ruined the car.

#### Suspension Kinematics

| Parameter | More (Higher Setting) | Less (Lower Setting) |
|-----------|----------------------|---------------------|
| **Front Camber** | Better mid-corner front grip, worse braking stability | Better braking, less cornering grip |
| **Rear Camber** | Better rear grip on exit, less straight-line traction | More straight-line stability, less corner grip |
| **Front Toe** | Toe-out = better turn-in response | Toe-in = more stability |
| **Rear Toe** | Toe-in = stability under braking | Toe-out = better rotation |
| **Front Anti-Roll Bar** | More understeer, sharper response | Less understeer, smoother response |
| **Rear Anti-Roll Bar** | More oversteer on entry | Less oversteer, better traction |

#### Ride Height & Rake

Ride height directly affects aerodynamics. Lower = more downforce from the floor, but risk of bottoming out on bumps and kerbs. Bottoming causes sudden loss of downforce — dangerous in high-speed corners.

**Ride height targets (mm):**
- Monaco / Singapore: Higher (45-50mm) — bumpy, lots of kerbs
- Monza / Spa: Lower (35-40mm) — smooth, high-speed, need low drag
- Most tracks: 40-45mm front, 50-55mm rear (3-8mm rake)

#### Corner Weight & Balance

Corner weights aren't adjustable in F1 25's setup screen directly, but ballast (if available in career) and asymmetric setups matter:

- More weight on the left side helps clockwise circuits (most F1 tracks)
- Adjust tyre pressures per-side for asymmetric tracks (e.g., higher right-side pressures at clockwise tracks)

---

### 2.2 — Qualifying Mastery

#### Track Evolution

The track gets faster as rubber is laid down. Q3 is typically 1-2 seconds faster than Q1 on the same tyre compound. Plan your runs knowing the track will improve.

#### Tow Strategy

Running behind another car on a straight gives you a slipstream (tow) — worth 0.2-0.4 seconds. In qualifying, teams coordinate to give their drivers tows. As a solo player:

- If you're behind a faster car on a straight, stay in their slipstream
- Don't follow too closely in corners — dirty air reduces downforce more than the tow is worth

#### One-Lap Preparation

**Out lap:**
- Weave aggressively to bring tyres to temperature
- Manage battery — arrive at the start line with 100% charge
- Build gap to the car ahead — 5+ seconds for clean air

**Hot lap:**
- ERS in Hotlap mode
- Rich fuel mix
- Use every inch of track — curbs are your friend (except sausage kerbs — avoid those)

**Cooldown lap:**
- Harvest energy in EV-only or low deployment mode
- Stay off the racing line so you don't impede others

---

### 2.3 — Wet Weather Racing

#### Inters vs Full Wet Crossover

The crossover point where Full Wets become faster than Inters depends on track and conditions:

| Condition | Tyre |
|-----------|------|
| Damp track, no spray | Inters |
| Light rain, light spray | Inters (they clear water adequately) |
| Standing water visible | Full Wets |
| Heavy spray, poor visibility | Full Wets |
| Drying line appearing | Inters are faster — switch early |

**Key indicator:** If the AI starts pitting for Wet tyres, you probably should too.

#### Driving in Wet Conditions

- Brake earlier and with less pressure — grip is reduced
- Use higher gears — short-shift to reduce wheelspin
- Avoid kerbs and painted lines — they're extremely slippery when wet
- Aquaplaning: if the car suddenly floats and steering goes light, lift off gently, don't brake
- The racing line is the most rubbered-in part of the track — it can actually be MORE slippery in very wet conditions. The offline line may have more grip.

#### Setup Changes for Wet

| Parameter | Dry Setup | Wet Adjustment |
|-----------|-----------|----------------|
| Wings | Track-dependent | Add 2-4 clicks front and rear |
| Ride Height | Low | Raise 5-10mm (avoid bottoming with less downforce from slower speeds) |
| Brake Pressure | 95-100% | Reduce to 85-90% |
| Brake Bias | Track-dependent | Move forward 2-3% (more stability) |
| Differential (on-throttle) | Track-dependent | Reduce 10-15% (less wheelspin on exit) |
| Tyre Pressures | Optimal | Increase slightly (tyres run cooler) |

---

### 2.4 — Custom Championships

F1 25 allows you to create custom championship seasons with modified calendars, regulations, and cars.

#### Building a Custom Season

1. Go to **Solo > Custom Championship**
2. Choose the number of races (full 24-race calendar, or a mini-season)
3. Select tracks — try themed seasons:
   - **European Tour:** Silverstone, Spa, Monza, Monaco, Barcelona, Zandvoort
   - **Asian Swing:** Suzuka, Singapore, Shanghai, Baku, Yas Marina
   - **Americas:** COTA, Mexico, Interlagos, Montreal, Miami, Las Vegas
4. Set regulations: points system, parc ferme rules, qualifying format
5. Choose cars: equal performance or realistic (team performance differences)

---

### 2.5 — Data Analysis

#### Reading Telemetry

Telemetry comparison is how real drivers find lap time. F1 25 doesn't have a built-in telemetry tool, but third-party tools (SimHub, custom dashboards) can export data.

**What to compare (vs your best lap or a faster ghost):**
1. **Throttle trace** — are you getting to full throttle later than optimal?
2. **Brake trace** — are you braking too early? Too hard? Trailing properly?
3. **Speed trace** — where are you losing minimum speed mid-corner?
4. **Steering trace** — are you sawing at the wheel? Smooth inputs = faster laps.

#### Identifying Time Loss

1. Find the corner where you lose the most time (use delta comparison)
2. Focus on that one corner for 5-10 laps
3. Try different lines, braking points, and throttle applications
4. Move to the next corner only after you've improved

**Typical patterns:**
- Losing time on entry = braking too early or too hard
- Losing time mid-corner = not enough minimum speed, or too much steering angle
- Losing time on exit = getting on throttle too late, or too aggressively
