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
