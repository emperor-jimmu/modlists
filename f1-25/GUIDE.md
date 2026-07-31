## Wave 0 — First Lap

**Roleplaying Background:** You're a rookie driver, fresh out of karting. You've never turned a wheel in a Formula 1 car. The team will teach you everything — from what the buttons on the wheel do, to surviving your first race weekend. Take it slow. Absorb it all. Everyone starts somewhere.

> **Verification note:** The controls, assists, and game mechanics described below are written from F1 series knowledge. Specific F1 25 v1.24 menus, default bindings, and feature names should be verified against the actual game in a future pass.

---

### 0.1 — Getting Started

#### Installing F1 25

F1 25 is available on Steam, EA App, and Epic Games Store. Install via your platform of choice and ensure the game is updated to **v1.24** (released July 13, 2026).

Verify your version in the main menu — it appears in the bottom-right corner.

#### Simplified Launcher Setup

The **Simplified Launcher** by Team Simplified is the recommended mod manager for F1 25. It installs, manages, and launches mods without touching your original game files.

| Detail | Value |
|--------|-------|
| Download | [Simplified Launcher for F1 25 v3.2.10](https://www.overtake.gg/downloads/simplified-launcher-for-f1-25-used-to-quickly-manage-and-launch-mods.77451/) |
| Author | Team Simplified |
| Support | [Team Simplified Discord](https://discord.gg/GQZn5gbBdg) |
| Tutorial | [YouTube — Simplified Launcher v3.0 Tutorial](https://www.youtube.com/watch?v=de5mGVzbaso) |

**Installation Steps:**

1. Download the Simplified Launcher from OverTake.gg (requires a free OverTake.gg account)
2. Extract the ZIP file to a folder of your choice (e.g., `C:\Tools\SimplifiedLauncher`)
3. Run `SimplifiedLauncher.exe`
4. Set your F1 25 game directory when prompted — this is where F1 25 is installed:
   - Steam: `C:\Program Files (x86)\Steam\steamapps\common\F1 25`
   - EA App: `C:\Program Files\EA Games\F1 25`
   - Epic: `C:\Program Files\Epic Games\F1 25`
5. The launcher is now ready. No mods are needed for Wave 0 — we'll add them in Waves 1 and 2.

> **Note:** Some antivirus software may flag the Simplified Launcher as a false positive. The developer confirms this is due to Python self-packaging without a code signing certificate. The tool is safe to use — add an exception if needed.

**Key Features (for later waves):**
- **Drag and drop** mod archives onto the app to install
- **Backup and restore** — original game files are backed up before mod installation, restored when you quit
- **Clean online play** — when not using the launcher, your game is completely vanilla
- **Presets** — save mod combinations and share them with friends
- **Categories** — organize mods into folders (My Team, Helmets, etc.)
- **Conflict detection** — prevents two mods that replace the same files from launching together

---

### 0.2 — Controls

#### Controller vs Wheel

You can play F1 25 with either a **controller** (Xbox, PlayStation) or a **racing wheel**. Both are fully viable.

**Controller** — The default input method. Good for learning and casual play. The game's assist systems compensate for the lack of precision. Most F1 esports champions use controllers — proof that wheels aren't mandatory for speed.

**Racing Wheel** — Provides force feedback, finer steering control, and a more immersive experience. Recommended if you're serious about sim racing, but not required to enjoy or complete the game. Wheels come in three main types:

| Wheel Type | Mechanism | Price Range | Best For |
|------------|-----------|-------------|----------|
| Gear-driven | Gears transmit FFB | Budget (~$150-250) | Casual play, first wheel |
| Belt-driven | Belt + pulley FFB | Mid-range (~$300-500) | Serious hobbyists |
| Direct Drive | Motor directly connected to wheel shaft | High-end (~$600+) | Sim racing enthusiasts |

**Force Feedback Settings (Wheel Users):** Start with the game's default FFB profile. If the wheel feels too heavy, reduce FFB Strength. If you can't feel when the car is about to slide, increase it. The ideal setting lets you feel the limit of grip through the wheel without fighting the car.

#### Understanding Your Camera

F1 25 offers several camera views. Your choice affects how much of the track you can see and how the car's movement feels:

| Camera | Visibility | Sensation | Best For |
|--------|------------|-----------|----------|
| TV Pod | High — good view of track and apexes | Moderate — car movement is visible but not overwhelming | Most players, all skill levels |
| TV Pod Offset | Same as TV Pod but centred | Similar to TV Pod | Players who prefer a centred camera |
| Cockpit | Low — canopy and halo restrict view | High — most immersive, most challenging | Immersion seekers, experienced sim drivers |
| Nose | Medium-high — low to the ground | Very high — exaggerated sense of speed | Speed-focused players |
| Chase (Near/Far) | Highest — full view of car and surroundings | Low — car movement is distant | Beginners learning car positioning |

Start with **TV Pod**. It's the most popular camera among both casual players and esports professionals because it gives the best balance of visibility and car feel.

#### Essential Controls (Controller)

| Input | Action |
|--------|--------|
| Left Stick | Steer |
| Right Trigger (RT) | Accelerate |
| Left Trigger (LT) | Brake |
| A (Xbox) / X (PS) | Overtake (ERS boost) |
| B (Xbox) / Circle (PS) | DRS (when available) |
| X (Xbox) / Square (PS) | Change ERS mode |
| Y (Xbox) / Triangle (PS) | Pit limiter / request pit stop |
| D-Pad Left/Right | Change MFD panel |
| D-Pad Up/Down | Adjust within MFD panel |
| Left Bumper (LB) | Look back |
| Right Bumper (RB) | Change camera |
| Menu/Options | Pause |

**Controller Sensitivity Tips:**
- **Steering Linearity** — Lower values make the steering less sensitive near centre (better for precision), higher values make it more responsive. Start at 50.
- **Steering Saturation** — Lower values reduce maximum steering angle (faster direction changes). Start at 100.
- **Throttle/Brake Linearity** — Lower = more precision at low input. Start at 30 for smooth pedal control.

#### Essential Controls (Wheel)

If you have a wheel, customize bindings in **Settings > Controls > Custom**. At minimum, bind:
- Upshift / Downshift (paddles)
- Overtake button
- DRS button
- MFD navigation (rotary or D-Pad)
- Pit limiter
- Look back (important for wheel users — you can't flick a stick)

#### Calibration

Before your first drive:

1. Go to **Settings > Controls > Calibration**
2. Follow the on-screen prompts to calibrate steering, throttle, and brake
3. For wheel users: set **Steering Rotation** to 360 degrees for F1 cars (this is crucial — road car wheels use 900+ degrees, which is far too much rotation for an F1 car)
4. For controller users: ensure the triggers (LT/RT) register 0% when released and 100% when fully pressed

---

### 0.3 — Assists

F1 25 offers a range of driving assists that make the car easier to control. As a complete beginner, use them. You can reduce or disable them as you improve.

#### What Each Assist Actually Does

Understanding what assists do mechanically helps you know when you're ready to reduce them:

| Assist | What It Mechanically Does | What You Lose With It Off |
|--------|--------------------------|---------------------------|
| **Steering Assist** | Automatically steers the car toward the racing line | Nothing — this assist fights your deliberate inputs and should always be off |
| **Braking Assist** | Brakes for you at the optimal point for each corner | You must learn braking points yourself, which is essential for real pace |
| **ABS (Anti-Lock Brakes)** | Pulsates brake pressure to prevent wheel lockup under hard braking | You must modulate brake pressure yourself. Locking a wheel = flat-spotted tyre + longer braking distance. Trail braking becomes possible when ABS is off |
| **Traction Control (TC)** | Cuts engine power when rear wheels start to spin on throttle application | You must apply throttle smoothly, especially on corner exit. Wheelspin = lost time and overheated rear tyres |
| **Dynamic Racing Line** | Shows a coloured line on track: green = accelerate, yellow = lift/coast, red/orange = brake | You must learn braking and turn-in points yourself. Essential to turn off eventually, but keep it on while learning new tracks |
| **Gearbox (Automatic)** | Shifts gears for you at predetermined RPM points | You must shift manually. Manual gearbox enables short-shifting (fuel/tyre management), engine braking, and downshifting for rotation |
| **Pit Assist** | Controls steering, braking, and speed during pit entry and exit | You must navigate the pit lane yourself at the speed limit — easy to learn |
| **Pit Release Assist** | Holds you in the pit box and releases you when there's a gap in traffic | You must judge the pit lane traffic yourself. An unsafe release earns a penalty |
| **ERS Assist** | Automatically switches between ERS deployment modes | You must manage battery deployment and harvesting yourself — a major strategic layer |
| **DRS Assist** | Opens DRS automatically whenever you're eligible | You must press the DRS button yourself when in a DRS zone and within 1 second of the car ahead |

#### Recommended Beginner Assist Preset

| Assist | Setting | Why |
|--------|---------|-----|
| Steering Assist | Off | Can fight your inputs — leave off even as a beginner |
| Braking Assist | Off | Learn to brake yourself from day one |
| Anti-Lock Brakes (ABS) | On | Prevents wheel lock under braking |
| Traction Control | Medium | Prevents wheelspin on throttle; Full TC is too invasive |
| Dynamic Racing Line | Corners Only | Shows braking and turn-in points without cluttering straights |
| Gearbox | Automatic | Focus on steering and braking first |
| Pit Assist | On | Handles pit entry/exit for you |
| Pit Release Assist | On | Releases you into safe gaps |
| ERS Assist | On | Manages deployment automatically |
| DRS Assist | On | Opens DRS automatically when available |

#### The Assist Reduction Path

Don't turn everything off at once. Follow this progression as you gain confidence:

1. **First 10 hours:** All assists as recommended above. Focus on learning tracks and the racing line.
2. **10-20 hours:** Reduce Traction Control to Low. Feel the car's rear movement under throttle. Learn smooth throttle application.
3. **20-30 hours:** Switch Gearbox to Manual (Suggested). Learn gear management — it transforms your control over the car.
4. **30-50 hours:** Turn ABS Off. Learn brake modulation. Welcome to trail braking territory.
5. **50+ hours:** Turn ERS Assist Off. Now you're managing strategy alongside driving.

---

### 0.4 — Driving Basics

#### The Racing Line

The racing line is the fastest path through a corner. It follows this pattern:

1. **Approach** from the outside of the track — maximises corner radius
2. **Turn in** toward the apex (the innermost point of the corner) — the point of minimum speed
3. **Clip the apex** — get as close to the inside curb as possible without touching the grass or a sausage kerb
4. **Track out** to the outside on exit — use the full width of the track, let the car naturally drift wide as you apply throttle

This pattern works for every corner on every track. The differences between corners are just variations in speed, radius, and the timing of each phase.

#### Understanding Gears

Gears are one of the most important — and most overlooked — aspects of driving. Even with an Automatic gearbox, understanding what gears do will make you faster:

- **Upshift** when the rev lights turn red. The optimal shift point is just before the rev limiter cuts power.
- **Downshift under braking** to help the car rotate. Lower gears create more engine braking, which slows the car and helps it turn.
- **Don't downshift too aggressively** — shifting into too low a gear can lock the rear wheels and cause a spin. Downshift sequentially (6-5-4-3, not 6-3).

When you switch to Manual gears, start with **Manual (Suggested)** — the game suggests which gear you should be in for each corner. Use the suggestion as a guide, not a rule.

#### Braking

- Brake in a straight line **before** the corner, not during — braking while turning overloads the tyres and causes understeer
- Apply 100% brake pressure initially, then modulate. The initial hard press is where most of your speed scrubs off
- Release the brake smoothly as you turn in. This is "trail braking" — the foundation of advanced driving technique
- If you're locking wheels (smoke from tyres, steering goes light), brake earlier and with less initial pressure. With ABS On, the game prevents full lockup, but you still lose braking efficiency
- Braking is NOT on/off. Treat the brake pedal (or trigger) like a dimmer switch, not a light switch

**How to find braking points:** Every corner has a braking point — a marker on the side of the track (usually a meter board: 150, 100, 50) where you start braking. Start by braking at the 100m board for medium-speed corners. If you overshoot the apex, brake earlier (150m). If you're too slow through the corner, brake later (75m or 50m). Adjust in small increments.

#### Throttle Application

- Apply throttle smoothly on corner exit — roll onto the pedal, don't stab it
- Going full throttle too early causes wheelspin and sliding (oversteer) — wait until the car is straightened
- The moment you can go to 100% throttle without sliding is the moment you've maximized your exit speed
- With Traction Control on Medium, the game will cut power to prevent wheelspin — you'll hear the engine note change as TC activates. That sound is your signal to be smoother
- Each car and setup has a different throttle pickup point. Learn where YOUR car hooks up on each corner

#### Corner Types

| Type | Speed | Typical Gear | Approach |
|------|-------|-------------|----------|
| Hairpin | Very slow (60-90 km/h) | 1st or 2nd | Hard straight-line braking, late apex, extreme patience on throttle. Don't rush the exit — a hairpin leads onto a long straight, and exit speed is everything. |
| Medium-speed | Moderate (120-180 km/h) | 3rd or 4th | Light brake or lift off throttle, smooth turn-in, early but progressive throttle. These corners separate good drivers from great ones — the difference between lifting and braking can be 0.3 seconds. |
| High-speed | Fast (200+ km/h) | 5th, 6th, or 7th | Brief lift off throttle, minimal steering input, full throttle as early as possible. The bravery corners. The less you lift, the faster you go — but lift too little and you're in the wall. |
| Chicane | Slow to medium | 2nd-3rd (entry), 3rd (exit) | Brake for the first element, attack the kerbs aggressively, prioritize exit speed from the SECOND element. The first part of a chicane sets up the second — a slow first corner means a compromised exit from the whole complex. |

#### Track Awareness and Racing Etiquette

Good driving isn't just about speed. It's about awareness and respect:

- **Look ahead** — don't stare at the car directly in front. Look through the corner to where you want the car to go. Your hands follow your eyes.
- **Use your mirrors and look-back button** — know who's behind you and how close they are. If a car is faster, don't block them — it costs YOU time too.
- **Leave space** — when racing wheel-to-wheel, you must leave at least one car's width of space. Forcing another car off track is a penalty.
- **No weaving on straights** — you may change direction once to defend your position, then once back to take the racing line. Weaving to break a tow is illegal and dangerous.
- **Respect blue flags** — if you're being lapped, let the faster car through within three sectors. Fighting a car that's lapping you is pointless and earns penalties.

#### Practice

Start with **Time Trial** mode. Pick a track (Bahrain is a good starter — wide, forgiving, mix of corner types). Drive laps. Watch the delta timer — green means you're faster than your best, red means slower. Aim for consistency, not hero laps.

**Practice goals for your first sessions:**
1. Complete 5 consecutive laps without spinning, crashing, or going off track
2. Complete 10 consecutive laps within 1 second of each other (consistency > raw pace)
3. Beat the default ghost by loading a faster lap from the leaderboard — study their line
4. Learn the track well enough to visualize every corner with your eyes closed

Pro drivers don't set lap records by finding 2 seconds in one corner. They find 0.05 seconds in every corner. Consistency IS speed.

---

### 0.5 — Race Weekend Structure

A Formula 1 race weekend follows this format:

#### Standard Weekend (most races)

| Session | Duration | Purpose |
|---------|----------|---------|
| FP1 (Free Practice 1) | 60 minutes | Learn the track, test setups, run long-run pace (race simulation with heavy fuel) |
| FP2 (Free Practice 2) | 60 minutes | Qualifying simulations (low fuel, maximum attack), race pace runs, gather data |
| FP3 (Free Practice 3) | 60 minutes | Final setup tweaks, short qualifying simulations, confirm race strategy |
| Qualifying | Q1/Q2/Q3 format | Set your grid position for the race |
| Race | ~305 km / ~90 minutes | The main event — full distance, full fuel, tyre strategy, everything matters |

Each practice session is an hour long in real life but can be shortened or simulated in-game. Complete Practice Programmes during FP sessions to earn Resource Points for car upgrades.

#### Sprint Weekend (select races)

Sprint weekends replace one practice session with a shorter race on Saturday:

| Session | Duration |
|---------|----------|
| FP1 | 60 minutes (only practice session of the weekend — setup must be right after this) |
| Sprint Qualifying | SQ1 (12 min) / SQ2 (10 min) / SQ3 (8 min) — shorter format, mandatory tyre compounds for each segment |
| Sprint Race | ~100 km / ~30 minutes — no mandatory pit stop, points for top 8 |
| Race | Full distance Grand Prix |

Sprint weekends are high-pressure because you only get ONE practice session to nail your setup. After FP1, the car enters Parc Fermé conditions.

#### Qualifying Format (Q1/Q2/Q3)

- **Q1 (18 minutes):** All 20 drivers — slowest 5 eliminated (positions 16-20)
- **Q2 (15 minutes):** 15 fastest from Q1 — slowest 5 eliminated (positions 11-15). **Important:** The tyres you use to set your fastest Q2 time become your race-starting tyres. This forces a strategic decision — do you use Softs for a fast Q2 time (sacrificing race strategy) or Mediums (potentially slower in Q2 but better for the race start)?
- **Q3 (12 minutes):** 10 fastest from Q2 — fight for pole position (positions 1-10). Pure speed. Nothing else matters.

You get one set of tyres per qualifying segment. Plan your runs — go out early to set a banker lap (a safe, clean lap that guarantees you a time), then improve on a second run when the track has more grip. Never gamble your entire qualifying on one late run — if you make a mistake or hit traffic, you start from the back.

#### Parc Fermé Rules

**Parc Fermé** (French for "closed park") is a set of regulations that lock in the car's setup between qualifying and the race. After the car leaves the garage for the first time in Q1:

| You CAN Change | You CANNOT Change |
|----------------|-------------------|
| Front wing angle | Rear wing angle |
| Tyre pressures | Suspension geometry (camber, toe) |
| Brake bias | Ride height |
| Differential settings | Spring and damper settings |
| | Gear ratios |

This means your qualifying setup MUST also work for the race. You can't build a qualifying-special car. This is why setup is so important — you're finding a compromise, not a one-lap wonder.

#### Penalties and Stewarding

F1 25 enforces the same rules as real F1. Understanding penalties prevents ruined races:

| Infraction | Typical Penalty |
|------------|----------------|
| Causing a collision | 5-10 second time penalty or drive-through |
| Forcing another driver off track | 5 second time penalty |
| Corner cutting and gaining an advantage | Warning (3x = penalty), or 3-5 second penalty |
| Speeding in the pit lane | 5 second time penalty |
| Unsafe pit release | 5-10 second time penalty |
| Ignoring blue flags (3+ sectors) | 5 second time penalty |
| Exceeding track limits repeatedly | Warning (3x = 5 second penalty), then escalating |
| Illegal overtake (off-track, under yellows) | Give position back or 5 second penalty |
| Jumping the start | 5-10 second penalty or drive-through |

Time penalties are served at your next pit stop (you sit stationary for the penalty duration before the crew works on the car) or added to your race time at the end if you don't pit again.

---

### 0.6 — Tyres 101

F1 uses Pirelli tyres in six compounds per race weekend. Every aspect of race strategy revolves around tyres.

#### The Five Dry Compounds

| Compound | Colour | Characteristics | Best Used For |
|----------|--------|----------------|---------------|
| **C5 (Softest)** | Red | Extreme grip, degrades in 5-8 laps | Qualifying, short-race stints |
| **C4 (Soft)** | Red | High grip, degrades in 8-15 laps | Qualifying, short-to-medium stints |
| **C3 (Medium)** | Yellow | Balanced grip and life, 15-25 laps | Most common race tyre, flexible strategy |
| **C2 (Hard)** | White | Lower grip, 25-35 laps | Long stints, high-deg tracks |
| **C1 (Hardest)** | White | Longest life, 30-40+ laps | Extreme durability tracks, one-stop strategies |

Pirelli selects three compounds per weekend (Soft/Medium/Hard from the available range). A "Soft" at Monaco might be C5, while "Soft" at Silverstone might be C3 — different rubber, same colour. The game's tyre selection screen shows the actual compound numbers.

#### The Two Wet Compounds

| Compound | Colour | Characteristics | Crossover Point |
|----------|--------|----------------|-----------------|
| **Intermediate** | Green | Good water clearance, usable from damp to wet | Use when the track is damp or in light rain. Switch from Wets when a drying line appears. |
| **Full Wet** | Blue | Maximum water clearance, prevents aquaplaning | Use when standing water is visible or spray is heavy. Switch to Inters when the racing line starts drying. |

#### Tyre Allocation Per Weekend

Each driver receives a fixed number of tyre sets per weekend (dry races):
- 2 sets of Hard
- 3 sets of Medium
- 8 sets of Soft
- 4 sets of Intermediate
- 3 sets of Full Wet

This means you have limited Soft tyres — use them strategically. If you burn through all your Softs in practice, you may have none left for Q3.

#### Key Concepts

**Degradation** — Tyres lose grip as they wear. You'll feel the car slide more as tyres age; your lap times will drop 0.5-2.0 seconds from fresh to worn. The rate depends on the compound (Softs degrade fastest), track surface abrasiveness, track temperature, and your driving style (smooth = less deg).

**Temperature Window** — Each compound works best in a narrow temperature range (typically 80-110°C surface temp for dry tyres). The tyre HUD colour-codes temperatures:
- **Blue** = too cold. Grip is significantly reduced. Weave and brake to generate heat.
- **Green** = optimal. This is where you want to be.
- **Red** = overheating. Tyre wears rapidly. Drive smoother, avoid sliding.

**The Two-Compound Rule** — In a dry race, you MUST use at least two different dry compounds. You cannot do the entire race on one set of tyres. This guarantees at least one pit stop in every dry race. A typical strategy is Soft → Hard, or Medium → Hard, but Soft → Medium → Soft (two-stop) can be faster on high-deg tracks.

**Flat-Spotting** — If you lock a wheel under braking (especially without ABS), the tyre grinds flat on one spot. The resulting vibration through the steering wheel worsens with every lap. A bad flat spot may force an early pit stop. This is why smooth braking matters even with ABS on — ABS reduces, but doesn't eliminate, the risk.

---

### 0.7 — ERS 101

The Energy Recovery System (ERS) is the hybrid power unit that makes modern F1 cars so complex — and so fast.

#### How ERS Works

The ERS recovers energy from two sources and stores it in a battery:

- **MGU-K (Motor Generator Unit — Kinetic):** Recovers energy during braking. When you brake, the MGU-K acts as a generator, converting the car's kinetic energy into electrical energy stored in the battery. This is the primary source of recovered energy — and it's free, since you're braking anyway.
- **MGU-H (Motor Generator Unit — Heat):** Recovers energy from the turbocharger's exhaust heat. Less intuitive, but equally important — it harvests waste energy that would otherwise be lost.

The combined system can deploy approximately **160 horsepower** of additional power for about **33 seconds per lap** at maximum deployment. That's a massive advantage — roughly equivalent to the power difference between an F1 car and an F2 car.

#### In Wave 0: Let the Game Manage It

With **ERS Assist On** (recommended for Wave 0), the game handles all deployment and harvesting automatically. You don't need to think about modes or strategy. Your only interaction:

**Overtake Button:**
- Press for a burst of maximum ERS deployment (~160 HP extra)
- Use on straights when attacking or defending position
- Battery depletes rapidly — the burst lasts about 2-3 seconds of continuous use before the battery is drained
- Battery recharges under braking — each heavy braking zone recovers a few seconds of Overtake deployment
- You'll hear a distinct tone change in the engine when Overtake is active

> In Wave 0 with ERS Assist On, the game handles all ERS management. Press Overtake when you need a burst of speed on a straight. That's it. We'll dive into manual ERS management in Wave 1.

#### The Battery Indicator

On your HUD or steering wheel, you'll see a battery charge indicator (usually a bar or percentage). In Wave 0, just know:
- **Full battery** = good, you have power available when you need it
- **Empty battery** = you've been using Overtake heavily; it'll recharge under the next braking zone
- **The battery naturally cycles** — you don't need to micromanage it in Wave 0

---

### 0.8 — Career Mode

Career Mode is where F1 25 becomes a lifestyle, not just a racing game. You create your own driver and live the full F1 experience across multiple seasons.

#### Creating Your Driver

1. **Driver Details:**
   - Name (first and surname — this is what the commentators will call you)
   - Nationality (affects which anthem plays if you win)
   - Driver number (choose a number between 2-99; #1 is reserved for the reigning champion)
   - Helmet design (choose a base design — you can change it each season)

2. **Choose Your Starting Point:**
   - **F2 Start** — Begin your career in Formula 2, the feeder series to F1. You'll race a partial F2 season (or the full season, depending on settings), earn a Super Licence through performance, and receive F1 contract offers based on your results. This path is more immersive — you arrive in F1 with a backstory and rivalries from your junior career.
   - **F1 Start** — Jump directly into F1. Choose a team and begin your debut season immediately. Faster, but you miss the narrative buildup of earning your seat.

3. **Choose Your Team Wisely:**

| Team Tier | Teams | Performance | Expectations | Recommended For |
|-----------|-------|-------------|--------------|-----------------|
| Frontrunners | Red Bull, McLaren, Ferrari, Mercedes | Fight for wins and podiums every race | Must win — anything less is failure | Experienced players only |
| Midfield | Aston Martin, Alpine, RB (Racing Bulls) | Points every race, occasional podiums | Points are expected, podiums are celebrated | Your first career — challenging but fair |
| Backmarkers | Williams, Kick Sauber, Haas | Fighting to escape Q1, points are a victory | Points are a bonus, finishing ahead of teammate is the real goal | Learning without pressure — every point feels like a win |

**Beginner recommendation:** Start with **Aston Martin** or **RB**. These teams are quick enough to regularly score points but not so quick that you're expected to win every race. You'll learn to race in the midfield traffic — the best training there is.

#### The R&D System

Between races, you earn **Resource Points** (RP) to upgrade your car. The R&D tree has four departments:

| Department | What It Upgrades | Impact |
|------------|-----------------|--------|
| **Aerodynamics** | Front wing, rear wing, floor, sidepod, diffuser | Cornering speed — the most impactful department on most tracks |
| **Chassis** | Weight reduction, suspension geometry, stiffness | Handling feel, tyre wear, kerb riding |
| **Powertrain** | Engine power, ERS efficiency, gearbox shift speed | Straight-line speed, acceleration, battery recovery rate |
| **Durability** | Component wear resistance | Fewer grid penalties — essential for long seasons |

**R&D Strategy Tips:**
- **Focus one department per season.** Spreading points across all four departments means none of them make a meaningful difference. Pick aero first — it's the biggest time-gain per RP spent.
- **Adapt to regulations.** At the end of each season, the FIA may change regulations — certain departments may have their progress reset. If aero is about to be reset, spend your RP elsewhere that season.
- **Track-specific upgrades matter.** A floor upgrade gives more time at a high-speed track like Silverstone than at a street circuit like Monaco. Plan upgrades around the calendar.
- **Watch your durability.** If your engine components are wearing faster than expected, a Durability upgrade now saves multiple grid penalties later.

#### Practice Programmes

During Free Practice sessions, complete programmes to earn Resource Points. Each programme has three performance tiers:

| Programme | What You Do | RP Earned (Partial/Good/Perfect) |
|-----------|------------|----------------------------------|
| **Track Acclimatisation** | Drive through gates positioned on the racing line | 25 / 50 / 75 RP |
| **Tyre Management** | Complete laps while keeping tyre temperatures green | 35 / 65 / 100 RP |
| **Fuel Management** | Complete laps while hitting a fuel efficiency target | 35 / 65 / 100 RP |
| **Qualifying Simulation** | Set a fast lap on low fuel and fresh tyres. Your time predicts your qualifying position | 50 / 100 / 150 RP |
| **Race Strategy** | Complete long runs on heavy fuel to estimate tyre wear and race pace | 50 / 100 / 150 RP |

Each programme can be attempted multiple times — you keep your best score. Even partial completion earns RP, so don't skip a programme just because you can't perfect it. A 50 RP partial score is better than 0 RP from a skipped programme.

#### Driver Market and Contracts

At the end of each season, contracts expire and the driver market opens:
- **Your contract** — Your team may offer a renewal based on your performance. Meeting or exceeding season objectives makes renewal likely. Failing badly may result in being dropped — or receiving offers from worse teams.
- **Other teams** — If your reputation (built through race results, podium finishes, and media interviews) is high, faster teams may offer you a seat. A midfield driver who consistently outscores their teammate and grabs occasional podiums is prime recruitment material for a frontrunner.
- **Teammate dynamics** — Your relationship with your teammate matters. Beating them consistently builds your reputation. If you're being destroyed by your teammate, expect questions about your future.
- **Secret meetings** — Mid-season, you may receive "secret" contract offers from rival teams. Accepting triggers a mid-season transfer. Refusing keeps you where you are but may burn bridges.

**Contract Negotiation:** When negotiating a contract, you can bargain for:
- **Salary** — Affects your budget for driver perks (cosmetics, personal upgrades)
- **Number 1/2 Driver Status** — Being the #1 driver gives you priority on upgrades and strategy calls
- **Contract Length** — 1-year deals give flexibility for a better team next season; multi-year deals provide security

---

### 0.9 — UI Tour

#### MFD (Multi-Function Display)

The MFD is the screen on your steering wheel or HUD. Use D-Pad Left/Right to cycle panels:

| Panel | Shows | When to Check It |
|-------|-------|-----------------|
| **Strategy** | Tyre wear %, fuel delta (how much fuel you've saved or overspent vs target), pit window, weather forecast | Throughout the race — especially when considering a pit stop |
| **Tyres** | Per-tyre surface and carcass temperature, wear percentage for each tyre | During long stints — watch for overheating or excessive wear on one axle |
| **ERS** | Battery charge %, current deployment mode, energy harvested vs deployed per lap | When managing ERS manually (Wave 1+). In Wave 0 with ERS Assist On, check occasionally to see how much charge you have for Overtake |
| **Fuel** | Fuel remaining (kg), fuel mix mode, fuel delta to target (+0.5 means you've used 0.5 kg more than planned) | Every few laps — staying fuel-positive is key to avoiding a late-race fuel-saving crisis |
| **Damage** | Component wear % for each part (engine, turbo, MGU-H, MGU-K, ES, CE, gearbox), aero damage indicator, puncture warning | After contact with another car or a wall. Catching damage early lets you plan an earlier pit stop |
| **Race Info** | Current position, gap to car ahead, gap to car behind, fastest lap holder, last lap time | Constantly — knowing gaps helps you decide when to push and when to manage pace |

#### Engineer Communication

Your race engineer is your most valuable resource. The engineer automatically updates you on critical information:
- Gaps to cars ahead and behind (updated every sector)
- Tyre and brake temperature warnings
- Weather updates (rain expected in X minutes, intensity)
- Pit window information (optimal lap to pit, gaps in traffic)
- Damage reports after incidents
- Flag conditions and safety car status

**Requesting Information:** You can request specific updates from your engineer via the MFD request menu (D-Pad Down, then select from the menu):
- "How are my tyres?" — Get a detailed wear and temperature report
- "What's the gap to the car ahead/behind?" — Exact gap in seconds
- "What's the weather forecast?" — Rain probability and expected timing
- "When should I pit?" — Engineer's strategic recommendation
- "What's my teammate doing?" — Teammate's position, tyre strategy, lap times

#### Timing Screen (Pause Menu)

Pause during a session to access the full timing screen:
- Full timing table with gaps, tyre compounds, and lap times for every driver
- Race director messages (all penalties, flags, and official communications)
- Session standings with sector times
- Tyre usage history for all drivers (useful for predicting rivals' strategies)

---

### 0.10 — Race Flags and What They Mean

Flags are how race control communicates with drivers during a session. Ignoring flags earns penalties. Here's the complete list:

| Flag | Meaning | What You Must Do Immediately |
|------|---------|------------------------------|
| **Yellow (single waved)** | Hazard ahead (car off track, debris). No overtaking. | Slow down, be prepared to change direction. Stay off the racing line if the hazard is on it. |
| **Yellow (double waved)** | Major hazard (car stopped on track, marshals on circuit). Be prepared to stop. | Slow significantly. No overtaking. Be ready to stop or take evasive action. |
| **Green** | Track clear — hazard passed. | Resume racing speed. Overtaking permitted again. |
| **Blue** | Faster car behind attempting to lap you. Let them pass. | Allow the faster car to overtake within 3 marshalling sectors. Do NOT block them. |
| **Red** | Session stopped (heavy crash, unsafe conditions). Return to pits. | Slow down immediately. No overtaking. Return to the pit lane. The clock stops. |
| **Yellow + Red (striped)** | Slippery surface (oil, water, gravel, debris). | Reduce speed. Avoid sudden steering, braking, or throttle inputs. |
| **White** | Slow vehicle ahead (recovery truck, ambulance, course car). | Be aware of a slow vehicle on track. No overtaking. |
| **Black + Orange circle ("meatball")** | Mechanical problem with YOUR car. Return to pits. | Return to the pits immediately for repairs. Continuing with a dangerous car risks disqualification. |
| **Black (with your driver number)** | You have been disqualified. Session over for you. | Return to pits immediately. Your session is finished. |
| **Chequered** | Session finished. | Slow down after crossing the line. Return to pits. |

---

### 0.11 — F1 Glossary

For a complete A-to-Z reference of F1 terminology, see the F1 Glossary at the end of this guide. Every term used throughout the waves is defined there. When you encounter unfamiliar jargon, the glossary has you covered.

---

### Wave 0 Mods

For Wave 0, the only tool you need is the **Simplified Launcher** — and even that is optional at this stage. The goal of Wave 0 is to learn the game vanilla. No gameplay mods.

If you're eager to explore the mod ecosystem, see [Wave 1 Mods](#wave-1-mods).


### Wave 0 Mods — Tools & Launcher

Wave 0 uses no gameplay mods. The only tool is the Simplified Launcher, which is used to manage mods in later waves. It's introduced here so you're familiar with it before adding content mods.

#### [Simplified Launcher for F1 25](https://www.overtake.gg/downloads/simplified-launcher-for-f1-25-used-to-quickly-manage-and-launch-mods.77451/)

| Detail | Value |
|--------|-------|
| **Version** | v3.2.10 |
| **Author** | Team Simplified |
| **Dependencies** | None |
| **What It Changes** | Manages mod installation, backup, and launching for F1 25. Drag-and-drop mod archives (ZIP/RAR/7Z). Automatically backs up and restores original game files. Supports mod categories, favorites, presets, and conflict detection. |
| **Installation** | Download from OverTake.gg. Extract to any folder. Run `SimplifiedLauncher.exe`. Set your F1 25 game directory. No gameplay mods are installed in Wave 0 — the launcher is set up here for use in Waves 1 and 2. |


## Wave 1 — Building Speed

**Roleplaying Background:** You've completed a season in F1. You've scored points, maybe even stood on a podium. But the car still feels like it holds secrets from you. The telemetry screens in the garage look like alien language. Time to peel back the first layer. Time to understand what the machine is actually doing.

---

### 1.1 — Driving Technique

#### Trail Braking in Depth

Trail braking is the single most important advanced driving technique. It is the art of gradually releasing brake pressure as you turn into a corner, rather than completing all braking before turning.

**Why it works:** Braking shifts weight forward, increasing front tyre grip. By maintaining light brake pressure during turn-in, you keep weight on the front tyres when they need it most — at corner entry. This extra front grip allows you to carry more speed through the corner or rotate the car more sharply.

**The Five Phases of a Trail-Braked Corner:**

1. **Straight-line braking (100% → 80% pressure):** Hard initial brake application. This is where most speed scrubs off. Done entirely in a straight line.
2. **Brake release + turn-in (80% → 20% pressure):** Begin releasing the brake as you start turning the wheel. The overlap of braking and steering is what defines trail braking. Release smoothly — jerky release unsettles the car.
3. **Trail phase (20% → 5% pressure):** Light brake pressure maintained through the first half of the corner. Just enough to keep weight forward. This is the most subtle and difficult phase.
4. **Brake-to-throttle transition (5% → 0% brake, 0% → 5% throttle):** Near the apex, release the brake completely and begin applying throttle. This transition should be seamless — no coasting gap.
5. **Throttle application (5% → 100%):** Progressive throttle on corner exit. The rate depends on the corner — hairpins require patience, fast sweepers accept early full throttle.

**How to Practice Trail Braking:**
1. Pick a medium-speed corner (Turn 1 at Bahrain, Turn 4 at Barcelona, Turn 6 at Melbourne)
2. On your first attempt, brake 10m later than your normal braking point. You'll probably overshoot.
3. Gradually move your braking point earlier until you find the latest point where trail braking keeps you on the racing line.
4. Watch the delta timer — trail braking done right should improve your sector time by 0.1-0.3 seconds per corner.

**Common Trail Braking Mistakes:**
- **Releasing the brake too abruptly** — the car snaps into understeer because weight suddenly shifts rearward. Release smoothly.
- **Carrying too much brake into the apex** — the car understeers wide. You're asking the front tyres to brake AND steer; they can only do so much of both.
- **Not trail braking at all on corners that need it** — you're leaving time on the table. Not every corner needs trail braking, but most medium and high-speed corners benefit from it.

#### The Throttle-Brake Overlap

In some corners (especially chicanes and sweeping sequences), there's a moment where you transition from brake to throttle almost instantaneously. The goal is to minimize "coast time" — the period where neither pedal is pressed. Every millisecond of coasting is a millisecond you could be either decelerating (going faster longer) or accelerating (getting on the power earlier).

**The golden rule of racing:** You should always be either on the brake or on the throttle. Coasting is wasted time. The best drivers overlap brake and throttle by milliseconds — brake released at the exact instant throttle begins.

#### Corner Exit Priority

In Formula 1, corner exit is more important than corner entry. A fast exit means higher speed down the following straight, which compounds into lap time. Sacrifice entry speed to get a better exit.

**The math:** 5 km/h more exit speed = you carry that 5 km/h advantage for the entire length of the straight. At 300 km/h, 5 km/h is ~0.06 seconds per 100 meters. On a 1 km straight, that's 0.6 seconds — an eternity in F1.

**The rule:** "Slow in, fast out." It's a cliché because it's true — and because most drivers instinctively do the opposite.

#### Weight Transfer Mastery

Every input shifts the car's weight. Mastering weight transfer means using it deliberately rather than fighting it:

- **Under braking:** Weight shifts forward (~55-60% to front tyres). Front grip increases; rear grip decreases. This is why trail braking works — and why braking too hard into a corner can spin the car (rear loses grip).
- **Under acceleration:** Weight shifts rearward (~55-60% to rear tyres). Rear grip increases; front grip decreases. This is why you get understeer when you accelerate too early — the front tyres lose load and can't turn.
- **Mid-corner:** Weight is balanced side-to-side, with slightly more on the outside tyres. Smoothness preserves this balance. A sudden lift or stab of throttle shifts weight rapidly and can break traction.

**Advanced weight transfer techniques:**
- **Lift-off rotation:** A slight lift of the throttle just before turn-in shifts weight forward, giving the front more grip for better initial turn-in. Use when the car understeers on entry.
- **Throttle balance:** A small amount of throttle (5-10%) mid-corner can settle the rear of the car if it feels loose. The throttle prevents the rear from going light.

---

### 1.2 — Intermediate Car Setup

Setup is the art of compromise. Every change that improves one aspect of the car hurts another. Understanding these tradeoffs is the difference between a car that fights you and a car that dances.

#### Aerodynamics (Front Wing / Rear Wing)

| Change | Front Wing Effect | Rear Wing Effect |
|--------|------------------|-----------------|
| More angle | More front downforce, better turn-in and mid-corner front grip | More rear downforce, better rear stability and traction |
| Less angle | Less drag, higher top speed, more understeer | Less drag, higher top speed, more oversteer |

**The Aero Balance Relationship:** The difference between front and rear wing angles determines the car's fundamental balance. If front wing is 6 and rear wing is 8, the car tends toward understeer (rear has more grip proportionally). If front is 8 and rear is 6, the car tends toward oversteer (front has more grip). A balanced aero map usually has rear wing 1-2 clicks higher than front.

**Track-specific aero levels:**

| Aero Level | Wing Settings (front/rear) | Tracks | Characteristics |
|------------|---------------------------|--------|----------------|
| Maximum | 9-11 / 10-11 | Monaco, Singapore, Hungary | Maximum cornering grip, very low top speed. Overtaking is nearly impossible — qualifying position is everything. |
| High | 7-9 / 8-10 | Zandvoort, Imola, Barcelona | Strong cornering, decent top speed. Favours qualifying pace. |
| Medium | 5-7 / 6-8 | Bahrain, Melbourne, COTA | Balanced. Good at everything, best at nothing. The default. |
| Low | 3-5 / 4-6 | Silverstone, Spa, Suzuka | Good top speed, adequate cornering. Favours race pace (overtaking possible). |
| Minimum | 1-3 / 2-4 | Monza, Baku, Las Vegas | Maximum top speed, minimum cornering. You'll struggle in slow corners but fly on straights. |

**Diagnosing aero balance issues by feel:**
- **Understeer in high-speed corners (4th gear+):** Front wing too low relative to rear. Add front wing or reduce rear.
- **Oversteer in high-speed corners:** Rear wing too low relative to front. Add rear wing or reduce front.
- **Car feels sluggish everywhere:** Too much wing for the track. Reduce both.
- **Car won't stop sliding in fast sweepers:** Not enough wing. Add both.

#### Suspension Geometry

| Parameter | What It Does | Tradeoff |
|-----------|-------------|----------|
| **Front Camber** | More negative = better mid-corner front grip. Less = better braking stability and tyre life. | -3.5 for qualifying, -3.0 for race balance, -2.5 for tyre preservation |
| **Rear Camber** | More negative = better rear grip on exit. Less = more straight-line traction and less tyre wear. | -1.5 to -2.0 typically. Less than front because rear tyres are the drive wheels and need good straight-line contact |
| **Front Toe** | Toe-out = better turn-in response and rotation. Toe-in = more straight-line stability, less tyre wear. | 0.05-0.10 toe-out for responsive cars, 0.00-0.05 for stable cars |
| **Rear Toe** | Toe-in = stability under braking, predictable rear. Toe-out = better rotation but nervous rear. | ALWAYS toe-in for F1. 0.10-0.35 depending on how much stability you need |

#### Anti-Roll Bars (ARBs)

ARBs control how much the car leans (rolls) during cornering. They connect the left and right sides of the suspension.

| Setting | Front ARB Effect | Rear ARB Effect |
|---------|-----------------|-----------------|
| Stiffer | More understeer, sharper turn-in response, less body roll | More oversteer on corner entry, sharper response |
| Softer | Less understeer, more mechanical grip, more body roll | Less oversteer, better traction on exit, more body roll |

**ARB tuning approach:**
1. Start both at mid-range (5-7 on an 11-click scale)
2. If the car understeers on entry: soften front ARB OR stiffen rear ARB
3. If the car oversteers on entry: stiffen front ARB OR soften rear ARB
4. If the car feels lazy and unresponsive: stiffen both
5. If the car feels nervous and twitchy: soften both

**The ARB-Ride Height relationship:** If you run a lot of rake (rear higher than front), you may need stiffer front ARBs to keep the front aero platform stable under braking. A car that dives heavily under braking loses front downforce at the worst possible moment.

#### Differential Deep Dive

The differential is the single most powerful setup tool for changing the car's handling character on corner entry and exit. More than wings, more than suspension — the diff transforms how the car rotates.

| Scenario | On-Throttle Adjustment | Off-Throttle Adjustment |
|----------|----------------------|------------------------|
| Car won't rotate mid-corner (understeer) | Reduce on-throttle diff | Reduce off-throttle diff |
| Rear slides on exit (oversteer on power) | Increase on-throttle diff | — |
| Rear unstable on corner entry | — | Increase off-throttle diff |
| Car won't turn in on entry | — | Reduce off-throttle diff |
| Need better traction out of slow corners | Increase on-throttle diff | Increase off-throttle diff |
| Wet conditions | Reduce both by 10-20% | Reduce both by 10-20% |

#### Brake Bias and Pressure

| Track Type | Brake Bias | Brake Pressure | Reasoning |
|------------|-----------|----------------|-----------|
| Heavy braking zones (Monza, Baku) | 56-58% front | 95-100% | Need maximum stopping power, stability under hard braking |
| Technical, slow corners (Monaco, Singapore) | 52-54% front | 88-92% | Need rear rotation for tight corners, risk of locking in slow zones |
| High-deg, long race (Barcelona, Silverstone) | 55-57% front | 92-95% | Balance between performance and tyre/brake preservation |
| Wet conditions | 57-60% front | 85-90% | Maximum stability, reduced pressure to prevent locking on low grip |

**Adjusting brake bias mid-race:** F1 drivers adjust brake bias corner by corner. More rearward for hairpins (rotation), more forward for high-speed braking zones (stability). As fuel burns off and the car gets lighter, you can move bias slightly rearward for better rotation without risking rear lockup.

---

### 1.3 — ERS Strategy

With **ERS Assist Off**, you control when the battery deploys and harvests. This adds a strategic layer to every lap of every race.

#### Understanding the Battery Budget

You have a limited amount of ERS energy available per lap (regulated by the FIA — typically 4 MJ from the MGU-K to the Energy Store per lap). This means you CANNOT deploy maximum ERS for the entire lap. You must budget: harvest in some zones, deploy in others.

The battery indicator is your budget tracker. If you consistently arrive at the end of a lap with 0% charge, you either need to harvest more or deploy less.

#### The ERS Modes

| Mode | When to Use | Battery Effect |
|------|------------|----------------|
| **None** | Under braking (harvesting), behind a safety car, when fuel saving, when stuck in traffic with no overtaking opportunity | Charges battery rapidly |
| **Medium** | Default race mode. Balanced deployment and harvesting — the car manages itself to stay roughly battery-neutral | Battery stays roughly flat |
| **Hotlap** | Qualifying laps, attacking, defending, undercut laps, final 2-3 laps of the race | Drains battery rapidly (~3-5% per second) |
| **Overtake** | Burst deployment on straights when specifically overtaking or defending a position | Drains battery very rapidly (~8-10% per second) |

#### Per-Corner ERS Strategy

For each corner on a track, decide: is the corner exit more important (deploy), or is the braking zone more important (harvest)?

**Deploy priority corners:** Corners that lead onto long straights. The exit speed advantage from deploying ERS here compounds down the entire straight. Examples: Turn 16 at COTA, La Source at Spa, Turn 1 at Bahrain.

**Harvest priority corners:** Heavy braking zones. You're slowing down anyway — the MGU-K recovers energy for free. Harvest in these zones to fund deployment elsewhere. Examples: Turn 1 at Monza, Turn 1 at Mexico, the bus stop at Spa.

**A Typical Lap ERS Strategy (Bahrain):**

| Section | Mode | Reasoning |
|---------|------|-----------|
| Start/Finish straight to T1 | Hotlap | Long straight — maximum deployment for lap time and position |
| T1 braking zone | None | Heavy braking = maximum harvest |
| T1 exit through T3 | Medium | Sequence of corners, deployment not as valuable as on straights |
| T3 exit to T4 braking | Hotlap | Short straight but exit matters for the T4 sequence |
| T4-T8 (technical section) | None/Medium | Harvest in braking zones, medium deployment on short bursts |
| T10 exit to T11 braking | Hotlap | Medium-length straight, use to build speed |
| T11 braking zone | None | Harvest |
| T12-T13 | Hotlap | Fast sweeping section, deployment for mid-corner speed |
| T14 exit to T15 | Medium | Set up for the final straight |
| T15 exit to Start/Finish | Hotlap | Long straight, maximum deployment, this is where overtakes happen |

#### ERS Battle Management

**When attacking:**
- Save battery on the lap before you plan to attack. Enter the straight with 80%+ charge.
- Switch to Hotlap at the start of the straight before the overtaking zone.
- Use Overtake for the actual overtaking move — the burst of ~160 HP over 2 seconds is often enough to complete the pass.

**When defending:**
- Deploy on corner exits to maintain momentum — the attacking car is in dirty air and needs more power to keep up.
- Save Overtake for the straight where the attack is most likely. A defender with no battery is a sitting duck.
- If you have a battery advantage over the attacker, you can deploy defensively on every straight — they can't match your exits without draining their own battery.

**Qualifying:** Hotlap mode for the entire lap. The goal is to cross the finish line with exactly 0% battery — any charge remaining at the end of the lap is wasted deployment that could have been used for speed. This takes practice to calibrate.

---

### 1.4 — Fuel Management

Fuel load affects car weight: 1 kg of fuel = approximately 0.03 seconds per lap at most tracks. A full 110 kg tank at race start versus 5 kg at race end is about 3 seconds of lap time difference from weight alone. Add the fact that lighter cars are easier on tyres, and fuel management becomes a major performance factor.

#### Fuel Mix Strategy

| Mix | When to Use | Fuel Effect | Lap Time Effect |
|-----|------------|-------------|-----------------|
| **Rich** | Attacking, defending, undercut laps, in-laps before pitting, final laps when fuel is abundant | Burns fuel 10-15% faster than Standard | 0.2-0.5 seconds faster per lap |
| **Standard** | Default race pace, most of the race | Target consumption | Baseline |
| **Lean** | Behind safety car, when fuel-negative, when managing a gap, when preserving engine | Burns fuel 10-15% slower than Standard | 0.3-0.8 seconds slower per lap |

**Race fuel management strategy:**
1. Start the race in Standard mix. The car is heavy — Rich mix burns too much fuel for marginal gain.
2. When attacking for position, switch to Rich. The fuel cost is worth the position gained.
3. If you're fuel-positive (used less than planned), you can afford more Rich mix laps. If fuel-negative, find laps to run Lean.
4. Behind a Safety Car, switch to Lean immediately. You're saving fuel while everyone else is too — and you're securing a fuel surplus for the restart battle.
5. The final 3-5 laps: check your fuel delta. If you have surplus, run Rich to the flag. If you're marginal, stay in Standard.

#### Fuel Saving Techniques

**Lift and Coast:** Lift off the throttle 50-100m before your normal braking point and coast (no throttle, no brake) before applying the brakes. Saves approximately 0.05-0.1 kg of fuel per corner. Do this on 2-3 corners per lap and you save 1-2 kg over a race — often the difference between making the finish and running out on the last lap.

**Short-Shifting:** Change up 200-500 RPM earlier than the optimal shift point. Lower RPM = less fuel consumed. Use in combination with Lift and Coast for maximum fuel saving. The lap time cost is minor compared to running out of fuel.

**When to save fuel:** If your engineer tells you you're fuel-negative (using more than planned), start lifting and coasting into the heaviest braking zones. The time loss from lifting 50m early is far less than the time loss from running out of fuel on the last lap and coasting across the line at 80 km/h.

---

### 1.5 — Tyre Management

#### Temperature Windows and Performance

Each compound has an optimal operating window. Driving outside this window costs you lap time:

| Compound | Optimal Surface Temp | Overheating Threshold | Key Behaviour |
|----------|---------------------|----------------------|---------------|
| Soft (C4/C5) | 85-100°C | 105°C+ | Fastest compound but narrowest window. Overheats rapidly if you slide. |
| Medium (C3) | 90-105°C | 110°C+ | Wider window than Soft. More forgiving of aggressive driving. |
| Hard (C1/C2) | 95-110°C | 115°C+ | Hard to get into the window, very hard to overheat. Can feel vague when cold. |
| Intermediate | 60-80°C | 85°C+ | On a drying track, Inters overheat rapidly. Move off the dry racing line to cool them. |
| Full Wet | 50-70°C | 80°C+ | Wets overheat on anything less than a fully wet track. Seek standing water to cool them. |

#### Compound Strategy: When to Use What

**Race start tyre choice:** The tyres you set your fastest Q2 time on are your race-start tyres. This forces a strategic decision:
- **Start on Softs:** You qualified well (Q2 on Softs), but you'll pit early (lap 8-15). Your first stint is short and aggressive. Best when you expect to be stuck in traffic — clear the field, pit early, emerge in clean air.
- **Start on Mediums:** You sacrificed Q2 pace for race strategy. You'll go longer in the first stint (lap 15-25), giving you strategic flexibility later. Best when starting from a position where track position matters more than qualifying position.

**Two-stop vs One-stop strategy decision factors:**

| Factor | Favours Two-Stop | Favours One-Stop |
|--------|-----------------|-----------------|
| Track abrasiveness | High (Silverstone, Barcelona) | Low (Monaco, Singapore) |
| Tyre degradation | High on all compounds | Low — Hard tyres can last |
| Track position | Starting mid-pack, need to overtake | Starting near front, protecting position |
| Safety car probability | Low — unlikely to get a "free" stop | High — can convert one-stop into effective two-stop |
| Overtaking difficulty | Easy — can make up positions after pitting | Hard — track position is everything |

**Reading your tyres during a race:**
- **Wear % per tyre:** If one tyre is wearing significantly faster than the others, you have a setup or driving issue (too much front wing = front wear, too much rear wing or aggressive throttle = rear wear).
- **Temperatures across the axle:** If left tyres are hotter than right on a clockwise track, you're pushing too hard on the loaded side. Smooth out your inputs.
- **The cliff:** Tyres don't degrade linearly — they "fall off a cliff" after a certain point. You'll feel the car suddenly lose grip and lap times drop by 1-2 seconds. When you feel the cliff approaching, pit immediately — don't wait.

#### Wet Tyre Strategy

**The crossover decision — Inters vs Wets:**

| Condition | Faster Tyre | Reasoning |
|-----------|------------|-----------|
| Track is damp, no standing water, light drizzle | Inters | Inters are faster on anything less than fully wet. They clear light water adequately. |
| Track has visible standing water, heavy spray | Full Wets | Wets have deeper tread and prevent aquaplaning on standing water. |
| Rain stopping, drying line appearing | Inters | Even if the track is still wet offline, Inters on the drying line are faster than Wets everywhere. |
| Rain intensifying, Inters struggling for grip | Full Wets | The moment you feel the Inters sliding on standing water, pit for Wets before you aquaplane off track. |
| Fully wet, but rain is stopping in 5 minutes | Stay on Inters if you can | If you can survive 5 more minutes, you'll have the right tyre when the track dries while others pit twice (once for Wets, once for Inters). |

**Wet weather tyre preservation:**
- Off-line driving in wet conditions: the rubbered racing line can be MORE slippery than the offline line when very wet. Use the offline line for grip in extreme wet.
- Inters overheat on a drying track within 2-3 laps. Move off the dry line to cool them. If you can't keep them cool, pit for dry tyres — overheated Inters are slower than cold Softs.

---

### 1.6 — AI Calibration

The AI in F1 25 is sophisticated but imperfect. Calibrating it correctly makes the difference between a realistic career and a boring procession.

#### Finding Your AI Level

**The definitive calibration method (25% race at Bahrain):**

1. Set AI to a starting level based on your experience (see table below)
2. Run a 25% race weekend at Bahrain (FP1 + Qualifying + Race) with equal-performance cars
3. Compare your qualifying position to your teammate:
   - If you qualified P1-P3 and your teammate qualified P15+: AI is too low. Increase by 5.
   - If you qualified within 2 positions of your teammate: AI is correct.
   - If you qualified P20 and your teammate qualified P10+: AI is too high. Decrease by 5.
4. Run another race weekend to confirm.

| Driver Profile | Recommended AI |
|----------------|---------------|
| Controller + all assists on | 40-55 |
| Controller + TC Medium, ABS On, Auto gears | 55-70 |
| Controller + TC Off, ABS Off, Manual gears | 70-85 |
| Wheel + TC Off, ABS Off, Manual gears | 80-100 |
| Experienced sim racer, can trail brake, manage ERS | 100-110 |

#### Per-Track AI Adjustments

AI performance varies by track because the AI's driving model handles certain corner types better than others.

| AI is Stronger At | AI is Weaker At | Adjustment |
|-------------------|----------------|------------|
| High-speed tracks with flowing corners (Silverstone, Spa, Suzuka) | Street circuits with walls (Monaco, Singapore, Baku) | Lower AI by 3-5 for street circuits |
| Tracks with heavy braking zones (Monza, Montreal) | Tracks with technical, slow sequences (Hungaroring, Zandvoort) | Raise AI by 2-3 for technical tracks |
| Wet weather (AI is very consistent in rain) | — | Consider lowering AI by 3-5 in wet races or using a separate wet AI level |

Keep a personal "AI per track" reference as you progress through a season. A driver who needs AI 100 at Bahrain might need AI 90 at Monaco and AI 105 at Silverstone. This isn't cheating — it's compensating for the AI's inconsistencies to create the most realistic racing experience.

---

### 1.7 — Race Strategy

#### The Undercut — When, Why, and By How Much

The undercut is Formula 1's most common strategic move. You pit before your rival, gain time on fresh tyres while they're stuck on old rubber, and emerge ahead when they eventually pit.

**Undercut checklist:**
- [ ] You're within 1.5 seconds of the car ahead
- [ ] Your tyres are degrading (lap times dropping)
- [ ] You have clean air ahead after your stop (no traffic to slot into)
- [ ] The gap behind you is large enough that you won't lose positions to drivers who stopped even earlier

**The undercut window math:** Fresh Soft tyres are typically 1.0-1.5 seconds per lap faster than 15-lap-old Mediums. If your rival is 1.0 seconds ahead and pits 2 laps after you, you gain 2-3 seconds on them in those two laps — more than enough to emerge ahead.

**Fake the undercut:** Drive a visibly fast lap just before your rival's expected pit window. They may panic-pit to cover you off, switching to a suboptimal strategy. Meanwhile, you stay out and run long.

#### The Overcut — The Patient Strategy

The overcut is riskier but can be devastating. You stay out longer than your rivals, build a gap in clean air while they're stuck in traffic on new tyres (which need 1-2 laps to come up to temperature), and emerge ahead after your stop.

**Overcut checklist:**
- [ ] You have clean air ahead (no traffic)
- [ ] Your pace on old tyres is strong (within 0.5s of your best)
- [ ] The track is hard to overtake on (Monaco, Singapore) — track position is everything
- [ ] Your rivals are pitting into traffic (they'll lose time fighting while you're in clean air)

**The out-lap is everything:** An overcut lives or dies on your out-lap after pitting. If you emerge behind a group of cars, the overcut failed. If you emerge in clean air ahead, you've gained multiple positions without a single overtake.

#### Safety Car and Virtual Safety Car Strategy

**Safety Car (SC):** A free pit stop. Pitting under SC costs approximately 10-12 seconds less than a green-flag stop (because the field is driving slowly). If a SC is deployed and you're within 5 laps of your pit window, pit immediately.

**Virtual Safety Car (VSC):** Similar benefit but smaller — approximately 6-8 seconds saved vs green flag. VSC periods are shorter, so the decision window is tighter.

**The SC dilemma — track position vs fresh tyres:**
- If you pit under SC and everyone else stays out, you lose track position but gain fresh tyres. On a track where overtaking is possible, fresh tyres are worth more. On a street circuit, track position is worth more.
- If everyone pits under SC and you stay out, you inherit track position but are on old tyres for the restart. This only works if you can defend for at least 5-10 laps until your old tyres give up.

#### Two-Stop Strategy Design

A two-stop race (Soft → Medium → Soft, or Medium → Hard → Soft) is faster than a one-stop if the time saved from fresher tyres exceeds the time lost in the extra pit stop (~22 seconds).

**Two-stop works best when:**
- Tyre degradation is high (you're losing 0.1+ seconds per lap on older tyres)
- Overtaking is possible (you can recover positions lost during the extra stop)
- You're starting outside the top 10 and have free tyre choice (not locked into Q2 tyres)
- The track has a long pit lane time loss (wait — this actually favours one-stops)

**The aggressive two-stop:** Start on Softs, attack on the first stint to build a gap, pit early for Mediums, run a long middle stint, pit late for a final set of Softs and attack to the flag. The car is light, on fresh tyres, and you're passing cars hand over fist in the final laps.

**The conservative one-stop:** Start on Mediums, run a long first stint (25-30 laps), pit for Hards, run to the flag. Fewer variables, fewer things that can go wrong. Better when you're protecting a championship position rather than chasing a win.

#### In-Race Decision Making

Strategic decisions during a race happen fast. Use this framework:

1. **Is a safety car likely?** Check the weather radar and the track's SC probability (street circuits = high, open circuits = low). If SC probability is high, delay your stop to potentially gain a free one.
2. **What's my pace on these tyres?** If your lap times are stable, stay out. If they're dropping 0.2+ seconds per lap, pit soon.
3. **Where will I emerge?** Ask your engineer. If you'll emerge in traffic, delay your stop. If you'll emerge in clean air, pit now.
4. **What's the weather doing?** Rain in 10 minutes changes everything. If rain is coming, stay out until it arrives, then pit once for the right tyre.
5. **How many laps remain?** The last 5 laps of a race, track position > fresh tyres. Don't pit unless your tyres are completely dead. Defend with what you have.


### Wave 1 Mods

*Strategy, Cameras, Telemetry, AI, Liveries*

Wave 1 introduces your first gameplay mods. These enhance the experience without fundamentally changing the game's mechanics.

> **Mods to be inserted here by Task 5.** Categories: Telemetry/Dashboards, Cameras, Liveries, AI Tweaks. Each entry uses the standard format from AGENTS.md.


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


### Wave 2 Mods — Physics, Career, Visuals, Audio

Wave 2 introduces deeper mods that change game mechanics and visuals.

> **Mods to be inserted here by Task 5.** Categories: Physics/Handling, Career Enhancement, Graphics/Visual, Audio. Each entry uses the standard format from AGENTS.md.


### F1 Glossary — Essential Terms

These are the terms every Formula 1 driver needs to know. Refer back to this glossary whenever you encounter unfamiliar jargon in the guide.

---

#### A

**Apex** — The innermost point of a corner. The car should clip the apex (get as close to it as possible) to carry maximum speed through the turn. A "late apex" means turning in later and hitting the apex further around the corner — useful for getting better exit speed onto a long straight.

**Aquaplaning** — When a layer of water builds between the tyres and the track surface, causing the car to float and lose all steering and braking control. If it happens: lift off the throttle gently, steer straight, and do NOT brake.

---

#### B

**Blistering** — Air pockets that form inside a tyre when it overheats. The surface literally blisters. Unlike graining, blistering does not heal. The only fix is to drive smoother and keep temperatures down — or pit for fresh tyres.

**Blue Flag** — Shown to a driver who is about to be lapped by a faster car behind. You MUST let the faster car pass within three marshalling sectors. Ignoring blue flags earns a penalty.

**Brake Bias** — The distribution of braking force between the front and rear axles. More front bias = stable under braking but less rotation. More rear bias = better turn-in but risk of rear locking. Adjustable from the cockpit.

---

#### C

**Camber** — The angle of the wheels relative to vertical when viewed from the front. Negative camber (top of wheel tilted inward) improves cornering grip at the cost of braking stability. Positive camber is rarely used in F1.

**Chicane** — A sequence of two or more corners in quick succession, typically alternating direction (left-right or right-left). Requires rapid direction changes and good car balance. Famous examples: the Swimming Pool at Monaco, Variante Ascari at Monza.

**Clean Air** — Driving without another car ahead disturbing the airflow. Clean air = maximum downforce = maximum grip. The opposite of dirty air.

**Cooldown Lap** — The lap after completing a qualifying run or the lap back to the pits after a race. Used to cool the engine, brakes, and tyres gently. In qualifying, stay off the racing line so you don't impede other drivers on hot laps.

---

#### D

**Delta (Time)** — The difference between your current lap time and a reference lap (your best, or the session's fastest). Green delta = you're ahead of the reference pace. Red delta = you're behind. Displayed on the steering wheel HUD.

**Dirty Air** — Turbulent, disturbed air coming off the car ahead. Driving in dirty air reduces your car's downforce, making it harder to follow closely through corners. This is why overtaking in F1 is difficult even when you're faster.

**Downforce** — Aerodynamic grip that pushes the car into the track. Generated by the front wing, rear wing, floor, and diffuser. More downforce = faster cornering but lower top speed on straights. The fundamental tradeoff of F1 car setup.

**DRS (Drag Reduction System)** — A flap in the rear wing that opens to reduce drag on straights, increasing top speed by 10-15 km/h. Available only in designated DRS zones during the race, and only when you're within 1 second of the car ahead at the detection point. In qualifying, DRS can be used freely in DRS zones.

---

#### E

**ERS (Energy Recovery System)** — The hybrid system that harvests energy from two sources: the MGU-K (Motor Generator Unit — Kinetic) recovers energy from braking, and the MGU-H (Motor Generator Unit — Heat) recovers energy from the turbocharger's exhaust heat. The harvested energy is stored in a battery and can be deployed as extra horsepower (approximately 160 HP for ~33 seconds per lap).

---

#### F

**Flags** — Marshals use coloured flags to communicate with drivers:

| Flag | Meaning | What You Must Do |
|------|---------|-----------------|
| Yellow (single waved) | Hazard ahead, no overtaking | Slow down, be prepared to stop |
| Yellow (double waved) | Major hazard, track partially blocked | Slow significantly, be prepared to stop or change direction |
| Green | Track clear, hazard passed | Resume racing speed |
| Blue | Faster car behind, about to lap you | Let them pass within 3 sectors |
| Red | Session stopped | Return to pits immediately, no overtaking |
| Yellow + Red (striped) | Slippery surface (oil, water, debris) | Reduce speed, avoid sudden inputs |
| White | Slow vehicle ahead (recovery truck, medical car) | Be aware, no overtaking |
| Black + Orange (meatball) | Your car has a mechanical problem | Return to pits immediately |
| Black | You have been disqualified | Return to pits, session over for you |
| Chequered | Session finished | Slow down, return to pits |

**Formation Lap** — The lap before the race start. All cars drive slowly around the track in grid order to warm tyres and brakes. Weave aggressively on the formation lap to bring tyre temperatures up. No overtaking is allowed.

**Free Practice (FP1, FP2, FP3)** — Practice sessions held before qualifying. FP1 and FP2 on Friday, FP3 on Saturday morning. Used to learn the track, test car setups, run qualifying simulations, and gather data on tyre wear and fuel consumption. Each session awards Resource Points in Career Mode through Practice Programmes.

---

#### G

**Graining** — A wear pattern where the tyre surface tears and re-sticks to itself unevenly, creating a rough, low-grip surface. Caused by sliding on a cold tyre. Unlike blistering, graining can heal as the tyre wears down and temperatures rise.

**Grid Penalty** — A position drop on the starting grid, applied as punishment for rule infractions or for exceeding the season's allowed number of power unit component changes. Common causes: replacing engine, turbocharger, MGU-H, MGU-K, energy store, or control electronics beyond the season limit.

---

#### H

**Hairpin** — The tightest type of corner, typically turning 180 degrees. Requires hard braking from high speed to very low speed, a late apex, and patience on the throttle exit. Famous examples: the Grand Hotel Hairpin at Monaco, Turn 8 at Istanbul Park.

---

#### I

**Inters (Intermediate Tyres)** — The green-striped wet-weather tyre for damp or lightly wet conditions. They have tread grooves to channel water away but less grooving than Full Wets. Inters are the most versatile wet tyre — they work from barely-damp to quite-wet conditions, and are often the fastest choice on a drying track.

---

#### K

**Kerbs (Curbs)** — The raised red-and-white strips at the edge of the track. Using kerbs extends the usable track width, but they're bumpy and can unsettle the car. Standard kerbs are your friend — use them. "Sausage" kerbs (tall, rounded bumps behind a regular kerb) are NOT your friend — avoid them; they'll launch the car and can cause damage.

---

#### L

**Lift and Coast** — A fuel-saving technique: lift off the throttle well before your normal braking point and coast (no throttle, no brake) before applying the brakes. Saves fuel by reducing the time spent at full throttle. Essential for fuel-critical races.

---

#### M

**Marbles** — Small balls of rubber that shed from tyres and accumulate off the racing line. Driving on marbles drastically reduces grip. If you go off-line (e.g., during an overtake), expect reduced grip until your tyres clean themselves.

**MFD (Multi-Function Display)** — The screen on the steering wheel or HUD that shows telemetry and strategy information. Cycling through MFD panels with the D-Pad gives you access to tyre temperatures, ERS status, fuel levels, damage, and race strategy data.

---

#### O

**Out Lap** — The lap exiting the pits. In qualifying, the out lap is crucial: weave to warm tyres, manage the battery to arrive at the start line with 100% charge, and build a gap to the car ahead for clean air on your hot lap. In a race, the out lap after a pit stop is about bringing new tyres up to temperature.

**Overcut** — A strategy where you stay out on track longer than your rivals while they pit. If you have clean air and can set fast laps on old tyres, you can build enough of a gap to emerge ahead after your own stop. The opposite of an undercut.

**Oversteer** — When the rear of the car slides (the car turns more than you intend). The rear loses grip before the front. Correct with opposite lock (counter-steering). Oversteer is fastest when controlled (rotation), but can spin the car when excessive.

**Overtake Button** — A steering wheel button that triggers maximum ERS deployment for a burst of speed. Use on straights when attacking or defending. The battery drains rapidly — use it in short bursts, not continuously.

---

#### P

**Parc Fermé** — A set of rules that lock in certain car setup parameters between qualifying and the race. After the car leaves the garage for Q1, you can only make limited changes: front wing angle, tyre pressures, brake bias, and differential settings. You cannot change suspension geometry, ride height, or wing levels. This means your qualifying setup must also work for the race.

**Pit Window** — The range of laps during which a pit stop is strategically optimal. Your engineer will tell you when your pit window opens and closes. Pitting outside your window typically costs track position.

**Pole Position** — First place on the starting grid. Awarded to the fastest driver in Q3. Statistically, the pole sitter wins approximately 40% of races.

**Powertrain** — The combined engine and hybrid system. In F1 25 Career Mode, the powertrain consists of six components: Internal Combustion Engine (ICE), Turbocharger (TC), MGU-H, MGU-K, Energy Store (ES/battery), and Control Electronics (CE). Each component has a season-long usage limit — exceed it and you take a grid penalty.

---

#### Q

**Q1 / Q2 / Q3** — The three segments of Formula 1 qualifying. Q1 (18 min): all 20 cars, slowest 5 eliminated (P16-P20). Q2 (15 min): 15 cars, slowest 5 eliminated (P11-P15). Q3 (12 min): top 10 cars fight for pole position (P1-P10). Drivers who reach Q3 must start the race on the tyres they used to set their fastest Q2 time.

---

#### R

**Racing Line** — The fastest path through a corner: approach wide, turn in toward the apex, clip the apex, track out wide on exit. The racing line has the most rubber laid down and offers the most grip — except in very wet conditions, where the rubbered surface can become more slippery than the offline line.

**Rake** — The angle of the car's floor relative to the ground. Positive rake (rear higher than front) increases downforce from the diffuser. Typical F1 rake is 3-8mm (rear ride height minus front ride height). More rake = more downforce but more drag and a trickier handling balance.

**Red Flag** — Session stopped immediately due to a serious incident (heavy crash, unsafe conditions). All cars must return to the pits. No overtaking. The clock stops in qualifying. In the race, cars line up on the grid and may be allowed to change tyres.

---

#### S

**Safety Car (SC)** — A car that enters the track during dangerous conditions (heavy crash, debris, extreme weather) to control the field's speed. No overtaking allowed. All cars bunch up behind the SC, erasing any gaps that existed. A free pit stop opportunity — you lose much less time pitting under SC than under green flag conditions.

**Sausage Kerb** — A tall, rounded, extremely aggressive kerb placed behind a standard kerb to discourage drivers from cutting corners. Hitting a sausage kerb at speed can launch the car, damage the floor, and cause a spin. Always avoid these.

**Setup** — The configuration of the car's adjustable parameters: wings, suspension, differential, brake bias, tyre pressures, ride height, etc. Every track demands a unique setup. In Career Mode, you can load and save setups per track.

**Short-Shifting** — Changing up a gear earlier than the engine's redline. Reduces wheelspin in low-grip conditions (wet weather, worn tyres) and saves fuel. Crucial for wet races and fuel-critical strategies.

**Slipstream (Tow)** — The pocket of reduced air resistance behind another car on a straight. Following in the slipstream reduces drag, increasing your top speed by 5-10 km/h. Worth approximately 0.2-0.4 seconds per straight. Essential for overtaking — and for qualifying, where catching a tow from another car can mean the difference between pole and fifth.

**Sprint Weekend** — A modified race weekend format used at select Grands Prix (typically 3-6 per season). Replaces one practice session with a shorter qualifying session (Sprint Qualifying) on Friday and a Sprint Race (~100km, ~30 minutes) on Saturday before the main Grand Prix on Sunday. Sprint races award points to the top 8 finishers (8-7-6-5-4-3-2-1).

---

#### T

**Telemetry** — Real-time data from the car's sensors: throttle position, brake pressure, steering angle, speed, RPM, gear, tyre temperatures, ERS deployment, and more. Engineers analyze telemetry to find lap time and diagnose issues. Drivers compare telemetry traces against teammates or their own best laps to identify where they're losing time.

**Toe** — The angle of the wheels relative to straight ahead when viewed from above. Toe-in (wheels pointed inward) = stability. Toe-out (wheels pointed outward) = better turn-in response but less straight-line stability.

**Trail Braking** — The technique of gradually releasing brake pressure as you turn into a corner, rather than completing all braking in a straight line before turning. Trail braking shifts weight to the front tyres during turn-in, improving front-end grip and rotation. Essential for extracting maximum corner entry speed.

**Tyre Compound** — The specific rubber formulation of a tyre. F1 uses six compounds per weekend: Soft (red, fastest, wears fastest), Medium (yellow, balanced), Hard (white, most durable), Intermediate (green, light rain), Full Wet (blue, heavy rain). In a dry race, you must use at least two different compounds.

**Tyre Degradation** — The gradual loss of grip as tyres wear. All tyres degrade — the question is how quickly. High-deg tracks (Barcelona, Silverstone) demand more pit stops. Low-deg tracks (Monaco, Singapore) allow longer stints. Managing degradation is one of the core skills of race driving.

---

#### U

**Undercut** — A strategy where you pit earlier than the car ahead. Your fresh tyres give you extra pace while they're still on old, worn tyres. When they eventually pit, the gap you built on fresh rubber means you emerge ahead. Most effective when you're within 1-2 seconds of the car ahead and both of your tyres are degrading.

**Understeer** — When the front of the car won't turn enough (the car turns less than you intend). The front tyres lose grip before the rears. The car "pushes" wide. Fixed by: lifting off the throttle, waiting for grip to return, or adjusting setup (more front wing, softer front suspension, lower front tyre pressures).

---

#### V

**Virtual Safety Car (VSC)** — A less severe version of the Safety Car. Drivers must stay above a minimum lap time (displayed on the steering wheel) but don't need to bunch up behind a physical car. No overtaking. Gaps between cars are maintained. Less disruptive than a full SC but still neutralizes the race.

---

#### W

**Weight Transfer** — The shift of the car's mass forward, backward, or sideways during braking, acceleration, and cornering. Weight transfer affects which tyres have grip: forward under braking (more front grip), rearward under acceleration (more rear grip), and to the outside tyres during cornering. Skilled drivers manipulate weight transfer deliberately — a slight lift before turn-in shifts weight forward for better rotation.

**Wets (Full Wet Tyres)** — The blue-striped tyre for heavy rain conditions. Full Wets have deep tread grooves to channel standing water away and prevent aquaplaning. They're slower than Inters on a merely damp track but essential when standing water is visible or spray is heavy.

---

#### Y

**Yellow Flag** — See Flags.
