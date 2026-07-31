## Wave 1 — Building Speed

**Roleplaying Background:** You've completed a season in F1. You've scored points, maybe even stood on a podium. But the car still feels like it holds secrets from you. The telemetry screens in the garage look like alien language. Time to peel back the first layer. Time to understand what the machine is actually doing.

---

### 1.1 — Driving Technique

#### Trail Braking

Trail braking is the technique of gradually releasing the brake as you turn into a corner, rather than completing all braking in a straight line. It shifts weight to the front tyres during turn-in, improving front-end grip and rotation.

**How to practice:**
1. Approach the corner and brake hard in a straight line (80-90% pressure)
2. Begin turning in while releasing brake pressure to ~20-30%
3. Trail the brake off completely as you reach the apex
4. Apply throttle on exit

Start with medium-speed corners (Turn 1 at Bahrain, Turn 4 at Spain). Don't try this on hairpins until you're comfortable.

#### Corner Exit Priority

In Formula 1, corner exit is more important than corner entry. A fast exit means higher speed on the following straight, which compounds into lap time. Sacrifice a tiny bit of entry speed to get a better exit.

**The rule:** "Slow in, fast out." It's a cliche because it's true.

#### Weight Transfer

Every input shifts the car's weight:
- **Braking** shifts weight forward — more front grip, less rear grip (rear can slide)
- **Accelerating** shifts weight rearward — more rear grip, less front grip (understeer)
- **Steering** shifts weight to the outside tyres

Use weight transfer deliberately. A slight lift off the throttle before turn-in shifts weight forward for better rotation. A touch of throttle mid-corner settles the rear.

---

### 1.2 — Intermediate Car Setup

Car setup determines how the car behaves. Each track demands different compromises. Here are the key parameters you can adjust and what they do.

#### Aerodynamics (Front Wing / Rear Wing)

| Change | Effect |
|--------|--------|
| More wing | More downforce — better cornering grip, lower top speed |
| Less wing | Less downforce — higher top speed, less cornering grip |

**Rule of thumb:** High-downforce for Monaco, Singapore, Hungary. Low-downforce for Monza, Spa, Baku. Balanced for most other tracks.

**Front vs Rear balance:** If the car understeers (won't turn), add front wing. If it oversteers (rear slides), add rear wing or reduce front wing.

#### Differential (On-Throttle / Off-Throttle)

The differential controls how the rear wheels rotate relative to each other.

| Setting | On-Throttle Effect | Off-Throttle Effect |
|---------|--------------------|----------------------|
| Lower % | Less lock — better rotation mid-corner, easier to turn | Less lock — more rear instability on entry |
| Higher % | More lock — more traction on exit, more understeer | More lock — more stability under braking |

**Starting point:** 50-60% on-throttle, 50-55% off-throttle. Adjust based on feel.

#### Brake Bias

Brake bias distributes braking force between front and rear.

| Bias | Effect |
|------|--------|
| More front % | More stable under braking, less rotation |
| More rear % | Better turn-in rotation, risk of rear locking |

**Tip:** Move brake bias rearward (lower %) for tracks with slow corners where you need the car to rotate. Keep it forward for high-speed braking zones.

#### Brake Pressure

Higher pressure = more braking force, but easier to lock wheels. Lower pressure = more modulation control.

With ABS On: 100% is fine.
With ABS Off: 85-95% typically. Lower for wet conditions.

---

### 1.3 — ERS Strategy

With **ERS Assist Off** (manual mode), you control when the battery deploys and harvests.

#### Deployment Modes

| Mode | Behaviour |
|------|-----------|
| None | No deployment — battery charges from braking/turbo |
| Medium | Balanced deployment and harvesting |
| Hotlap | Maximum deployment — fastest but drains battery quickly |
| Overtake | Maximum deployment while button is held — use in bursts |

#### Per-Track Strategy

Each track has unique deployment zones. The general approach:

1. **Harvest on corner entry** (braking zone = free energy)
2. **Deploy on corner exit and straights** (where speed matters most)
3. **Save battery for overtaking/defending** — don't arrive at a battle with 0% charge

**Qualifying:** Hotlap mode for the entire lap. Manage battery so you don't hit 0% before the finish line.

**Race:** Medium mode for most of the lap. Switch to Hotlap when attacking or defending. Switch to None in dirty air (saving battery) or when fuel-saving.

---

### 1.4 — Fuel Management

Fuel load affects car weight significantly. A full tank at race start makes the car slower and harder to handle. As fuel burns off, the car becomes faster.

#### Fuel Mix Modes

| Mix | Consumption | Pace |
|-----|-------------|------|
| Rich | Highest | Fastest |
| Standard | Normal | Normal |
| Lean | Lowest | Slowest |

**Race strategy:**
- Start on Standard mix
- Switch to Rich when attacking or in clean air chasing lap time
- Switch to Lean when saving fuel (behind a safety car, or if you're fuel-negative)
- Lift and coast into heavy braking zones to save additional fuel (lift off throttle before braking point)

---

### 1.5 — Tyre Management

#### Temperature Windows

Each compound has an optimal temperature window. The game's tyre HUD shows per-tyre temperatures:
- **Blue** = too cold, no grip
- **Green** = optimal temperature
- **Red** = overheating, rapid wear

**Managing temperatures:**
- Weaving on straights warms tyres
- Smooth steering keeps temperatures stable
- Aggressive sliding overheats tyres rapidly
- Driving in dirty air (behind another car) reduces front-end cooling

#### Graining vs Blistering

- **Graining** — tyre surface tears and re-sticks unevenly. Caused by sliding on a cold tyre. Heals as tyre wears and temperatures rise.
- **Blistering** — air pockets form inside the tyre from overheating. Does not heal. Manage by driving smoother.

---

### 1.6 — AI Calibration

Finding the right AI difficulty is crucial for realistic racing. The game uses a 0-110 scale.

**Goal:** Qualify and race around your teammate's pace. If you consistently beat your teammate by 5+ positions, raise AI. If you're always last, lower it.

**Per-track adjustment:** AI strength varies by track. You may need 105 at Bahrain but 95 at Monaco. Don't be afraid to adjust per-race.

**General starting points:**
- Controller + full assists: 40-60
- Controller + minimal assists: 60-80
- Wheel + no assists: 80-100
- Experienced sim racer: 100-110

---

### 1.7 — Race Strategy

#### Undercut

Pitting earlier than the car ahead to gain track position. Your fresh tyres give you pace while they're still on old tyres. When they pit, you emerge ahead.

**When to undercut:** When you're within 1-2 seconds of the car ahead and tyres are dropping off.

#### Overcut

Staying out longer while others pit. If you have clean air and good pace on old tyres, you can build a gap and emerge ahead after your stop.

**When to overcut:** When you have clean air, good pace, and the track is clear ahead.

#### Safety Car Strategy

A Safety Car bunches the field. Free pit stop — you lose less time pitting under SC than under green flag conditions. If a SC is deployed and you're near your pit window, pit immediately.

#### Weather Strategy

- **Radar is your friend** — check the weather radar on the MFD
- **Inters vs Wets** — cross the line between them carefully. Inters on a drying track are faster than Wets. Wets in heavy rain prevent aquaplaning.
- **Timing the switch** — pitting one lap earlier or later for tyres can gain or lose 5+ positions in changing conditions
