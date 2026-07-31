## Wave 2 — Apex Predator

**Roleplaying Background:** You don't just drive the car anymore — you define it. Every click of wing angle, every tenth of a psi, every suspension millimeter is a deliberate choice. You don't react to strategy — you script it before the lights go out. The car is an extension of your will. Now make it sing.

---

### 2.1 — Advanced Car Setup

#### The Full Aerodynamic Map

The aerodynamic platform of an F1 car is a system, not a collection of independent parts. Changing one element affects everything else.

**The Floor and Diffuser — The Real Source of Downforce**

In modern F1, approximately 60% of total downforce comes from the floor and diffuser, not the wings. The wings' primary job is to condition airflow for the floor. This is why ride height matters so much — a 2mm change in rear ride height can be worth more downforce than 2 clicks of rear wing.

| Parameter | Aero Effect | Secondary Effect |
|-----------|-------------|-----------------|
| **Lower front ride height** | Seals the front of the floor, increasing front downforce | Risk of porpoising (oscillation) and bottoming on bumps |
| **Higher rear ride height** | Increases diffuser expansion ratio, more rear downforce | More drag, more pitch sensitivity |
| **Rake (rear higher than front)** | Increases overall floor downforce by feeding the diffuser | Car becomes more sensitive to braking (front dives, loses rake, loses downforce) |
| **Stiffer front suspension (heave spring)** | Maintains front ride height under braking — stabilizes aero platform | Less mechanical grip over bumps and kerbs |
| **Softer rear suspension (heave spring)** | Allows rear to squat under acceleration — increases diffuser effectiveness | Car can become unstable in high-speed direction changes |

**Porpoising:** A phenomenon where the car oscillates vertically at high speed — the floor gets sucked too close to the ground, stalls, the car rises, gets sucked down again, repeat. It's destructive to both lap time and driver comfort. If you experience porpoising:
1. Raise the rear ride height (2-3mm)
2. Increase rear heave spring stiffness
3. If severe, reduce rear wing angle (less suction on the floor)

#### Advanced Suspension Tuning

**Springs (Heave and Torsion):**

Modern F1 cars use two types of springs:
- **Heave springs** control vertical movement (bumps, braking dive, acceleration squat). These affect the aero platform.
- **Torsion bars / Torsion springs** control roll (cornering lean). These affect mechanical grip and responsiveness.

| Spring Setting | Stiffer | Softer |
|---------------|---------|--------|
| Front Heave | Less dive under braking, stable aero | Better bump absorption, better kerb riding |
| Rear Heave | Less squat under acceleration, stable diffuser | Better traction over bumps and kerbs |
| Front Torsion | Sharper turn-in, less body roll | More mechanical grip mid-corner |
| Rear Torsion | More responsive direction change | Better rear traction on exit |

**Spring stiffness by track type:**

| Track Type | Front Heave | Rear Heave | Front Torsion | Rear Torsion |
|------------|-------------|------------|---------------|--------------|
| Smooth, high-speed (Monza, Silverstone) | Stiff | Stiff | Medium-stiff | Medium-stiff |
| Bumpy street circuit (Monaco, Singapore) | Soft | Soft | Soft-medium | Soft |
| Mixed, flowing (Spa, Suzuka) | Medium | Medium-stiff | Medium | Medium |
| High-kerb (COTA, Austria) | Soft-medium | Medium | Soft | Soft-medium |

**Dampers (Bump and Rebound):**

Dampers control the SPEED of suspension movement. Springs control how MUCH the suspension moves; dampers control how FAST it moves. Getting dampers wrong is worse than getting springs wrong — bad damper settings make the car unpredictable.

| Damper Setting | Stiffer | Softer |
|---------------|---------|--------|
| **Front Bump (compression)** | Less dive under braking, more responsive turn-in | Better bump absorption, better kerb compliance |
| **Front Rebound (extension)** | Slower weight transfer rearward on throttle — more stable | Faster weight transfer — car rotates better on exit |
| **Rear Bump** | More stable under acceleration, resists squat | Better traction over bumps on exit |
| **Rear Rebound** | Slower weight transfer forward on brakes — more stable entry | Faster transfer — more rotation on entry |

**Damper tuning process:**
1. Leave dampers at default until springs and ARBs are dialed in
2. If the car feels lazy and unresponsive: increase bump stiffness (both axles)
3. If the car feels nervous and twitchy: decrease bump stiffness
4. If the car understeers on exit: soften rear rebound (lets weight transfer forward, gives front more grip)
5. If the car oversteers on entry: soften front rebound (slows weight transfer to front, gentler turn-in)
6. Change ONE damper setting at a time, by ONE click. Test. The difference between one click too much and one click too little can be the difference between a planted car and an undriveable one.

#### Corner Weight, Wedge, and Cross-Weight

While F1 25 doesn't give you direct corner weight adjustment, understanding the principle helps with asymmetric setup choices:

- **Cross-weight (wedge):** The percentage of the car's weight on the right-front and left-rear tyres combined. More cross-weight = tighter on corner entry, looser on exit. For clockwise tracks, slightly higher cross-weight can help the car turn left better.
- **Asymmetric tyre pressures:** On a predominantly clockwise or anti-clockwise track, running slightly different pressures left-to-right compensates for the fact that one side of the car is always more loaded. Example at a clockwise track: right-side tyres 0.5-1.0 PSI higher than left-side (right side is more loaded, generates more heat, needs slightly higher pressure to maintain optimal contact patch).

#### The Setup Change Log

Professional drivers keep a log of every setup change they make. You should too. For each session:

```
Track: [Name]
Date / Session: [Date]
Conditions: [Dry/Wet, Track Temp]
Base Setup: [Name or default]

Changes Made:
- [Parameter]: [Old Value] → [New Value] — [Why you changed it]
- ...

Result:
- Best Lap: [Time]
- Long Run Pace: [Average over 10 laps]
- Balance: [Understeer/Neutral/Oversteer — and where in the corner]
- Notes: [What felt good, what felt bad, what to try next session]
```

Over a season, this log becomes your most valuable setup resource. Arriving at a track for the second time with a log of what worked and what didn't last season is an enormous advantage.

---

### 2.2 — Qualifying Mastery

#### Track Evolution Modeling

The track gains grip as rubber is laid down during a session. Understanding the rate of evolution lets you time your runs perfectly.

| Session | Typical Evolution | What It Means |
|---------|------------------|---------------|
| FP1 | 1-3 seconds over the hour | Low-grip start ("green" track). First runs are slow. Don't judge pace until the final 15 minutes. |
| FP2 | 0.5-1.5 seconds over the hour | Track already has some rubber. Evolution is more steady. |
| FP3 | 0.3-1.0 seconds | Approach race conditions. Good for qualifying simulation. |
| Q1 | 0.5-1.0 seconds over 18 minutes | Track rubbers in as cars run. Late runs are worth 0.2-0.5 seconds over identical early runs. |
| Q2 | 0.3-0.6 seconds over 15 minutes | More cars, more rubber. But less time — evolution matters less. |
| Q3 | 0.2-0.4 seconds over 12 minutes | Track is nearly saturated. Differences between runs are mostly driver and tyre prep. |

**The two-run qualifying strategy:**
1. **Run 1 (early):** Banker lap. Go out in the first 2-3 minutes. Set a clean, safe lap. This guarantees you a time. If it rains, if there's a red flag, if you make a mistake on Run 2 — you have a backup.
2. **Run 2 (late):** Push lap. Go out with 3-4 minutes remaining (for Q1, adjust for session length). The track is at its grippiest. Your tyres should be fresh. Push everything.

**Never put all your eggs in one late run.** One yellow flag, one mistake, and you start from the back.

#### Tow Strategy and Traffic Management

**Getting a tow:** A tow from a car ahead on a straight is worth 0.2-0.4 seconds per straight. In qualifying at power-sensitive tracks (Monza, Spa, Baku), a good tow can be the difference between P1 and P6.

**Tow etiquette and strategy:**
- **The ideal gap:** 3-4 seconds behind the car ahead. Close enough to catch the slipstream on straights, far enough to avoid dirty air in corners.
- **Don't be the tow-giver:** If a car is behind you clearly using you for a tow, slow on the straight and let them pass. You're losing lap time from the distraction and they're gaining from your wake. Better to reset and go again.
- **Coordinate with your teammate (Career Mode):** Ask your engineer to arrange a tow from your teammate. They'll slow on the straight to give you a slipstream. Return the favour on the next lap.
- **Traffic in the final sector:** The worst place to catch traffic is the final sector of your hot lap — your entire lap is ruined. Build your gap at the start of the out lap so the car ahead is 5+ seconds ahead by the time you start your hot lap.

#### Tyre Preparation for Qualifying

**The out lap is the most important lap of qualifying.** A poorly prepared out lap costs you 0.5+ seconds on your hot lap.

| Out Lap Phase | What to Do | Why |
|---------------|------------|-----|
| Pit exit to Turn 2 | Weave aggressively (3-4 full weaves) | Bring tyre surface temperatures into the window. Cold tyres have no grip. |
| Turns 2-5 | Smooth pace, focused on temperature, not speed | Maintain temperature without overheating the surface while the carcass is still cold |
| Mid-lap | Switch to Hotlap ERS mode, begin building speed | Battery should be nearing 100% |
| Final 2-3 corners | Final aggressive weave, then settle the car | Last temperature push before the lap starts. Then stabilize — a settled car is a fast car. |
| Start line | 100% battery, Rich fuel mix, tyres green | Everything must be optimal when you cross the timing line |

**Tyre temperature targets for qualifying (optimal green zone):**
- Front tyres: 90-100°C surface
- Rear tyres: 95-105°C surface
- Brake temperatures: 400-600°C (front), 300-500°C (rear)

**Common out-lap mistakes:**
- **Under-weaving:** Tyres are blue (cold) at the start of the hot lap. Sector 1 time is ruined — you can't recover.
- **Over-weaving:** Tyres are red (overheated) at the start. Grip is already falling off before you've started.
- **Poor gap management:** You catch the car ahead in sector 3. Dirty air ruins your final sector and your lap time.
- **Battery mismanagement:** Arriving at the start line with 80% charge means you can't deploy fully on the first straight.

#### One-Shot Qualifying (Wet or Changing Conditions)

When rain threatens or conditions are changing, qualifying becomes a game of timing:

- **Go early:** The track is at its driest right now. Rain is expected in 5 minutes. Set a banker lap NOW, even if it's not perfect. If rain comes and no one else can improve, your early banker becomes pole.
- **Wait for the track:** The track is drying after rain. Every minute that passes, the track gets faster. Wait as long as possible, but leave enough time for an out lap + hot lap. The last car across the line in drying conditions usually gets pole.
- **The crossover lap:** In drying conditions, there's a specific lap where the track transitions from "wet tyre" to "dry tyre." The driver who switches to dry tyres at exactly the right moment gains multiple seconds. Go too early and you're sliding on Inters on a dry track. Go too late and everyone else is already on dries setting faster times.

---

### 2.3 — Wet Weather Racing

#### Reading the Track Surface

Wet weather driving is about reading the track, not just driving on it. Every surface has different grip in the wet:

| Surface | Wet Grip Level | How to Use It |
|---------|---------------|---------------|
| **Racing line (rubbered)** | Low in heavy rain, medium in light rain | In light rain, the rubber provides grip. In heavy rain, the rubber becomes slick — move off-line. |
| **Off-line (marbles)** | Very low | Avoid. The marbles are like driving on ball bearings in the wet. |
| **Painted lines (start/finish, grid boxes, white lines)** | Extremely low | AVOID AT ALL COSTS. Painted lines are ice in the wet. Do not brake, accelerate, or turn on them. |
| **Concrete / tarmac runoff** | Low-medium | Can be grippier than the track in heavy rain. If you go off, the runoff may actually have more grip than the racing line. |
| **Kerbs (standard, painted)** | Very low | Avoid. Wet kerbs are unpredictable. The car will slide or bounce. |
| **Standing water / rivers** | None (aquaplaning risk) | Avoid at all costs. If you must cross standing water, do it in a straight line with no throttle or brake input. |

#### Advanced Wet Driving Technique

**The "wet line" concept:** In very wet conditions, the traditional racing line (rubbered from dry running) can be more slippery than the offline line. The rubber, polished smooth by hundreds of dry laps, offers less grip when wet than the grippier, less-worn asphalt offline.

Look for the dark, grippy asphalt — often a car's width or two outside the normal dry line. This is the "wet line." It may feel unnatural to drive off the racing line, but it's often 0.5-1.0 seconds faster per lap in heavy rain.

**Braking in the wet:**
- Brake earlier (~20-30m earlier than dry), with less initial pressure (~70% instead of 100%)
- Avoid the painted braking marker boards — they're exactly where you DON'T want to brake in the wet
- Use engine braking (downshifting) more than pedal braking — it's smoother and less likely to lock wheels
- If you lock a wheel, release immediately. A locked wheel on a wet track is a flat-spotted tyre for the rest of the race
- Braking for a corner in the wet is often done partially off the rubbered line, where the asphalt has more texture

**Cornering in the wet:**
- Turn in earlier but with less steering angle. The car responds slower in the wet — anticipate the delay.
- Carry less speed through the corner apex. Slow in, (relatively) fast out.
- Use a higher gear than you would in the dry. 3rd gear instead of 2nd reduces wheelspin.
- Avoid the kerbs completely. What was a helpful track extension in the dry is a slip-and-slide in the wet.

**Throttle application in the wet:**
- Short-shift: upshift at 10,500-11,000 RPM instead of 12,000. Lower RPM = less torque = less wheelspin.
- Roll onto the throttle over 1-2 seconds instead of immediately. Listen for wheelspin — if you hear the engine note rise without a corresponding speed increase, you're spinning. Lift slightly and reapply more gently.
- Use a higher gear mid-corner than dry. 4th instead of 3rd keeps the car stable and reduces the chance of a snap oversteer on exit.

#### Wet Weather Strategy

**Timing the crossover between Wet and Dry tyres:**

The crossover from Wets to Inters (or Inters to dries) is the single most important strategic decision in a wet-to-dry race. Getting it right can gain you 10+ positions. Getting it wrong can cost you 10+ positions.

**The drying track decision sequence:**
1. The rain stops.
2. The racing line begins to dry (visible dark line appearing on the grey track).
3. Lap times on Inters begin to drop rapidly as the dry line expands.
4. Inters begin to overheat on the drying line. You'll see tyre temperatures creeping into the red.
5. **THE CROSSOVER:** When a driver on dry tyres (Slicks) can match or beat the lap time of a driver on Inters, it's time to switch.
6. Pit for dry tyres.

**Key indicators to watch:**
- Your Inters tyre temperatures are overheating (red) even when driving off the dry line to cool them
- Your lap times are 1-2 seconds slower than your peak Inters pace
- You see other drivers pitting for dry tyres and immediately setting competitive lap times
- The racing line is visibly dry for more than 50% of the track width

**The risk-reward calculus of an early switch:**
- **Switch early (before the crossover):** You'll be slow for 2-3 laps on dries while the track is still damp. You lose time now. BUT — when the track dries fully, you're already on the right tyre while others still need to pit. Net gain if the track dries quickly.
- **Switch late (after the crossover):** You maximize your time on the right wet tyre. BUT — when you finally pit, half the field has already switched and you lose positions to everyone who pitted earlier. Net gain if the track dries slowly or rain returns.

**The ideal timing:** Switch to dry tyres on the exact lap that the track transitions from "too wet for dries" to "dry enough for dries." This is impossible to predict perfectly, but you can get close by watching temperatures and lap times.

---

### 2.4 — Custom Championships

#### League Racing Setup

Custom Championships enable league racing — the deepest F1 25 experience. Whether solo or with friends, building a well-designed championship makes every race matter.

**Designing a championship calendar:**

| Season Type | Races | Recommended Tracks | Why |
|-------------|-------|-------------------|-----|
| **Full Season** | 24 | All tracks | Complete F1 experience |
| **European Mini-Season** | 8 | Silverstone, Spa, Monza, Monaco, Zandvoort, Barcelona, Hungaroring, Imola | Classic circuits, maximum variety |
| **Power Tracks** | 6 | Monza, Spa, Baku, Silverstone, Austria, Las Vegas | High-speed, overtaking-heavy. Power-sensitive cars dominate. |
| **Driver's Championship** | 8 | Monaco, Singapore, Hungaroring, Zandvoort, Imola, Suzuka, COTA, Interlagos | Technical, challenging. Driver skill > car performance. |
| **Americas Tour** | 6 | COTA, Mexico, Interlagos, Montreal, Miami, Las Vegas | Time zone-friendly for western hemisphere. Diverse circuits. |

**Championship settings to configure:**

| Setting | Options | Recommendation |
|---------|---------|----------------|
| **Points System** | F1 (25-18-15-12-10-8-6-4-2-1 + 1 FL), F2, MotoGP, Custom | F1 standard for authenticity |
| **Qualifying Format** | Q1/Q2/Q3, One-Shot, Sprint Qualifying | Q1/Q2/Q3 for most seasons; One-Shot for short seasons (more tension) |
| **Parc Ferme** | On/Off | On — forces setup compromise between qualifying and race |
| **Car Performance** | Equal, Realistic, Random | Equal for driver skill comparison; Realistic for team-management depth |
| **Weather** | Dynamic, Dry Only, Wet Only, Custom Slots | Dynamic — unpredictable weather makes championships memorable |
| **Session Length** | Full, 50%, 35%, 25% | 25% for faster seasons; 50% for realistic strategy depth |
| **AI Difficulty** | 0-110 | Same as your Career Mode setting |
| **Damage** | Reduced, Full, Simulation | Full for realism; Reduced if you want fewer DNFs from AI collisions |
| **Corner Cutting** | Regular, Strict | Strict — fair competition requires strict track limits |

**Creating a narrative through a custom season:**
- **Rivalries:** Designate a rival driver or team before the season starts. Track your head-to-head record. Every race becomes a battle within the battle.
- **Progression:** Start with backmarker cars, work up to midfield (mid-season), finish with frontrunners. Or the reverse — start strong and fight to maintain.
- **Themed restrictions:** "No assists allowed" season. "Only one tyre compound" season. "Wet weather only" season. Constraints create creativity.

---

### 2.5 — Data Analysis

#### The Telemetry Mindset

Telemetry is the difference between guessing where you're losing time and KNOWING where you're losing time. A driver who uses telemetry improves 3x faster than one who doesn't.

#### What to Compare

When comparing your lap against a faster reference lap (your own best, a ghost, a teammate's data), look at these channels:

| Channel | What It Tells You | Red Flags |
|---------|------------------|-----------|
| **Throttle Position (%)** | How early you get to full throttle on exit | Your trace reaches 100% throttle later than the reference on a corner exit |
| **Brake Pressure (bar or %)** | How hard and how long you brake | You brake earlier and/or lighter than the reference. Or your brake trace is "stepped" (not smooth). |
| **Speed (km/h)** | Minimum corner speed and straight-line speed | Your minimum speed mid-corner is lower than the reference. This is the #1 place amateur drivers lose time. |
| **Steering Angle (degrees)** | How smoothly you steer and how much lock you use | Your trace is jagged (sawing at the wheel) while the reference is smooth. Or you use more steering angle for the same corner — you're scrubbing speed. |
| **Gear** | Whether you're in the right gear for each corner | You're a gear lower or higher than the reference. Both cost time. |
| **ERS Deployment** | When you're deploying vs harvesting | You're deploying on sections where the reference harvests (or vice versa) |
| **Throttle + Brake Overlap** | How well you're trail braking | You have a "coast" gap between brake release and throttle application. The reference has none. |

#### How to Read a Telemetry Trace

**Method — compare corner by corner:**

1. Load your best lap telemetry and the reference lap telemetry side by side
2. Isolate one corner — zoom in on the 5 seconds before the corner to 5 seconds after
3. Compare the SPEED trace first. Find where the reference carries more speed. This is usually mid-corner — your minimum speed is lower.
4. Compare the BRAKE trace. If you're braking earlier than the reference, that's why your minimum speed is lower — you're arriving at the corner slower than necessary.
5. Compare the THROTTLE trace. If the reference gets to 100% throttle earlier on exit, that's the second source of lost time — your exit is compromised.
6. Fix one corner at a time. Don't try to fix everything at once. Master one corner, then move to the next.

**Common telemetry patterns and what they mean:**

| Pattern | Diagnosis | Fix |
|---------|-----------|-----|
| Your speed trace drops below the reference mid-corner | You're not carrying enough minimum speed | Brake slightly less and/or trail brake to rotate the car without scrubbing speed |
| Your throttle trace reaches 100% later than the reference | Your exit is compromised — probably from a poor mid-corner phase or early apex | Adjust your line: later apex, earlier throttle |
| Your brake trace is above the reference (braking harder) but your speed trace is below | You're over-slowing the car — braking too hard, too early | Brake slightly later and with less peak pressure. Carry more entry speed. |
| Your steering trace has multiple peaks (sawing) | You're correcting the car mid-corner — scrubbing speed with every correction | Be smoother. Commit to one steering input. If the car won't hold the line, fix the setup, not your hands. |
| Gap between brake release and throttle application | You're coasting | Overlap brake release and throttle application. Every tenth of coasting is a tenth lost. |

#### The 80/20 Rule of Lap Time Improvement

80% of your lap time deficit comes from 20% of the corners. Find those corners first — the ones where your delta to the reference is largest in absolute time (seconds, not percentage). A 0.5-second loss in one corner is worth more attention than 0.05-second losses in ten corners.

**The iterative process:**
1. Find your worst corner (largest time loss vs reference)
2. Focus on ONLY that corner for 10-15 laps
3. Try different braking points, lines, and throttle applications
4. When your telemetry in that corner matches (or beats) the reference, move to the next worst corner
5. After fixing 3-4 corners, do a full-lap comparison — you'll often find that fixing one corner improves the next corner automatically (better exit = better entry to the next)

#### Using Telemetry for Setup Validation

Telemetry doesn't just find driving errors — it validates setup changes:

- **Understeer diagnosis via telemetry:** If your steering trace is consistently higher than the reference (more steering angle for the same corner) AND your minimum speed is lower, the car is understeering. Add front wing, soften front ARB, or reduce front tyre pressures.
- **Oversteer diagnosis via telemetry:** If your steering trace shows corrections (counter-steering) on corner exit AND your throttle trace is lower than the reference (can't get to full throttle), the car is oversteering. Add rear wing, soften rear ARB, or reduce rear tyre pressures.
- **Tyre overheating diagnosis:** If your lap times drop off faster than the reference's over a stint, compare tyre temperature traces. If your tyres hit red (overheating) earlier, you're either sliding too much (driving) or have insufficient cooling (setup — more wing, less aggressive camber).
