# Tutorial Progression Restructure — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Restructure tutorial content so Wave 0 ends at stable orbit, Wave 0.5 teaches Mun/docking/space stations, and Wave 1 starts at interplanetary. No mod changes — content moves only.

**Spec:** `docs/superpowers/specs/2026-07-23-tutorial-progression-restructure.md`

---

### Task 1: Rewrite Wave 0 to end at stable orbit

**Files:**
- Modify: `guide/wave-0-first-steps.typ`

**Read the file before editing.**

- [ ] **Step 1: Remove Mun + Docking + WhereToGo from W0**

Cut everything from `#section-heading([Going to the Mun])` through end of file (the entire Mun, Docking, WhereToGo block). Replace with a single blank line.

oldString uses `replaceAll: false` — match the exact block start and delete from there to EOF. Read the file, note the index where `#section-heading([Going to the Mun])` starts, and remove everything from that point to end of file.

- [ ] **Step 2: Add new orbit-only "Where to Go from Here"**

After the `#section-heading([Reaching Orbit])` / gravity turn section ends (after the `#tip` callout about rocket flipping), add:

```

#section-heading([Where to Go from Here])

At this point you can reach a stable Kerbin orbit. You understand the gravity turn, how to read the navball, and how to use KER's readouts to plan your burns. Congratulations — you're no longer ground-bound.

From here, you have options:
- *Practice:* Launch to different orbit altitudes and inclinations. Try a polar orbit (heading north instead of east).
- *Experiment:* Build progressively larger rockets. See how much payload you can lift to orbit.
- *Progress:* When you can consistently reach orbit without reverting flights, install Wave 0.5. It adds advanced planning tools and teaches you to go further — Mun landings, docking, and space stations.

```

The insertion point is right after the gravity turn `#tip` block. So find:

```
rocket flips during the gravity turn: add fins at the bottom, make the rocket taller rather than wider, and keep your speed below ~300 m/s while still in the thick lower atmosphere (below 10 km).
]]
```

And append the new "Where to Go from Here" section right after the closing `]]`.

- [ ] **Step 3: Fix Station Keeping mod entry**

The Station Keeping mod entry's `version_pin` references stations and relay networks which aren't taught in W0 anymore:

```
oldString: version_pin: [Compatible with KSP 1.12.x. If you have stations or relay networks, this mod is essential. Without it, every timewarp session slowly degrades your orbits.],
newString: version_pin: [Compatible with KSP 1.12.x. Without it, every timewarp session slowly degrades your orbits. Essential once you start building stations and relay networks in later waves.],
```

- [ ] **Step 4: Commit**

```bash
git add guide/wave-0-first-steps.typ
git commit -m "fix: trim Wave 0 tutorial to end at stable orbit"
```

---

### Task 2: Insert Mun, Docking, and Space Station content into Wave 0.5

**Files:**
- Modify: `guide/wave-05-tools.typ`

**Read the file before editing.**

The insertion point is between the guide chapter heading and the first section:

```
#chapter-heading([Wave 0.5 Guide — Building & Planning])

#section-heading([Building Better Rockets])
```

All new content should be inserted between these two elements (after the chapter heading, before Building Better Rockets).

- [ ] **Step 1: Insert Mun content before Building Better Rockets**

Find the line `#chapter-heading([Wave 0.5 Guide — Building & Planning])`. After it (and after its trailing blank line), insert the Mun section. Use this exact text. Replace:

```
#chapter-heading([Wave 0.5 Guide — Building & Planning])
```

with:

```
#chapter-heading([Wave 0.5 Guide — Building & Planning])

Now that you can reach orbit consistently, it's time to go further. Wave 0.5's tools — TWP for planning, DPAI for docking, KAC for mission timing — all come together here.

#section-heading([Going to the Mun])

#section-heading([Transfer Burn])

From low Kerbin orbit (80–100 km circular, equatorial):
1. Switch to Map view. Rotate the camera so you can see the Mun's orbit.
2. The Mun rises over Kerbin's horizon — when it's about 45 degrees ahead of your craft in its orbit, you're at the transfer window.
3. Create a maneuver node on your orbit. Drag prograde until the projected path intersects the Mun's sphere of influence (SoI). It should take about 860 m/s.
4. Execute the burn at the node. Keep the craft pointed at the maneuver marker on the navball.

#info[[
  If you miss the Mun's SoI entirely, your burn timing was wrong. Adjust the maneuver node position along your orbit (drag the center circle of the node) — this changes *when* you burn, which changes *where* the Mun is when you arrive.
]]

#section-heading([Mun Capture and Landing])

When you enter the Mun's SoI, you'll be on a flyby trajectory. At Mun periapsis (Pe marker), burn retrograde to slow down and enter orbit. Target a 15–20 km circular orbit.

To land:
1. From low Mun orbit, burn retrograde until your trajectory line hits the surface. Target a flat area (the Mun's large craters — maria — are dark, flat regions).
2. As you descend, keep burning retrograde. Watch your surface velocity indicator (click the navball speed readout until it says "Surface").
3. When below ~2,000 m altitude, your speed should drop below 100 m/s.
4. In the final ~500 m, keep velocity below 20 m/s. Land at less than ~6 m/s to avoid breaking anything.
5. SAS set to "Retrograde Hold" (if unlocked) keeps you oriented for the burn — use Stability Assist otherwise and steer manually.

#tip[[
  Kill horizontal velocity first (retrograde marker centered on the horizon line), then control vertical descent. If you tip over on landing, your horizontal velocity was too high.
]]

#section-heading([Returning from the Mun])

1. Launch eastward from the Mun's surface (the Mun rotates slowly — east is still the efficient direction)
2. Establish a low circular orbit (~15 km)
3. Burn prograde to escape the Mun — your trajectory will bend back toward Kerbin
4. Target a Kerbin periapsis of ~35 km for aerocapture
5. Detach the command pod, deploy parachute, land in the ocean

```

- [ ] **Step 2: Insert Docking content after Mun content**

After the Mun return section (the numbered list ends with `land in the ocean`), insert the Docking section. Find `land in the ocean` and append:

```

#section-heading([Basic Docking])

#section-heading([Why Dock?])

Docking lets you join two spacecraft in orbit. It's essential for Apollo-style Mun missions (leave the lander in Mun orbit, dock to return), space stations, and refueling operations.

#section-heading([Rendezvous])

1. Launch the second craft into a lower orbit than the target (faster orbit = catches up) or higher (slower = target catches you).
2. Target the other craft in Map view (click it, select "Set as Target").
3. Create a maneuver node. Adjust until the closest approach markers (orange and magenta arrows) are within 2 km of each other.
4. Execute the burn.
5. When within ~2 km, your navball switches to "Target" mode. The prograde marker now shows your velocity *relative to the target*.
6. Burn retrograde (in target mode) to zero out relative velocity.
7. Point at the target (pink circle marker) and burn gently (~10–20 m/s) toward it.
8. Repeat: close distance, zero velocity, aim again. Don't rush — docking is a slow dance.

#section-heading([Docking Proper])

1. When within ~50 m, right-click your docking port and select "Control from Here."
2. Right-click the target's docking port and select "Set as Target."
3. Switch to fine-control mode (Caps Lock — pitch/yaw/roll indicators turn blue).
4. Use RCS (R key) and translation controls (I/J/K/L for up/down/left/right, H/N for forward/back).
5. Align the prograde marker with the target marker on the navball.
6. Drift in at less than 0.5 m/s. The magnetic docking ports will snap together.

#info[[
  RCS thrusters must be placed symmetrically around your craft's center of mass to avoid unwanted rotation during translation. In the VAB, toggle the center of mass indicator to check. RCS Build Aid (Wave 0.5) makes this much easier.
]]

```

- [ ] **Step 3: Insert Space Station content after Docking**

After the Docking section's `#info` block (ends with `]]`), append the Space Station section. Use this exact text:

```

#section-heading([Space Stations])

Now that you can dock, you can build stations.

#section-heading([Why Build a Station?])

- *Refueling depot* — dock tankers, mine on Minmus, ferry fuel to orbit
- *Science lab* — the Mobile Processing Lab multiplies science value over time
- *Crew rotation hub* — swap kerbals between missions without landing
- *Relay hub* — high-orbit station with powerful relay antennas extends comms coverage

#section-heading([Station Assembly])

1. Launch the core (lab, docking hub, power, probe core)
2. Dock additional modules (fuel tanks, habitation, antennas, extra docking ports)
3. Keep part count reasonable — too many parts and the physics engine crawls. Aim for under 200 parts per station.

#tip[[
  Always include a probe core on every station module. If you undock the wrong port and lose control of a drifting section, a probe core lets you recover it. Also: reaction wheels. Stations in KSP get wobbly without them.
]]

```

- [ ] **Step 4: Add "Where to Go from Here" at end of W0.5 guide**

At the end of the W0.5 guide (after the last tutorial section, before the file ends), add:

```

#section-heading([Where to Go from Here])

You can now land on the Mun, dock spacecraft in orbit, and assemble space stations. You've mastered the core skills of orbital operations. When you're comfortable with rendezvous and can plan Mun missions without step-by-step instructions, you're ready for Wave 1 — interplanetary travel, ISRU mining, and exploring the expanded solar system.

```

- [ ] **Step 5: Commit**

```bash
git add guide/wave-05-tools.typ
git commit -m "feat: add Mun, docking, and space station tutorials to Wave 0.5"
```

---

### Task 3: Remove Space Stations from Wave 1

**Files:**
- Modify: `guide/wave-1-going-further.typ`

**Read the file before editing.**

- [ ] **Step 1: Remove Space Stations section**

Replace the entire Space Stations section (heading + both sub-sections) with empty string:

```
oldString:
#section-heading([Space Stations])

#section-heading([Why Build a Station?])

- *Refueling depot* — dock tankers, mine on Minmus, ferry fuel to orbit
- *Science lab* — the Mobile Processing Lab multiplies science value over time
- *Crew rotation hub* — swap kerbals between missions without landing
- *Relay hub* — high-orbit station with powerful relay antennas extends comms coverage

#section-heading([Station Assembly])

1. Launch the core (lab, docking hub, power, probe core)
2. Dock additional modules (fuel tanks, habitation, antennas, extra docking ports)
3. Keep part count reasonable — too many parts and the physics engine crawls. Aim for under 200 parts per station.

#tip[[
  Always include a probe core on every station module. If you undock the wrong port and lose control of a drifting section, a probe core lets you recover it. Also: reaction wheels. Stations in KSP get wobbly without them.
]]


newString: (empty string)
```

- [ ] **Step 2: Commit**

```bash
git add guide/wave-1-going-further.typ
git commit -m "fix: move space station tutorial to Wave 0.5"
```

---

### Task 4: Build verification

**Files:**
- No changes

- [ ] **Step 1: Run the build**

```bash
scripts/build.bat
```

Expected: `=== Build complete ===` with zero errors.

- [ ] **Step 2: Verify PDF size**

```bash
node -e "const s=require('fs').statSync('output/the-long-ascent.pdf'); console.log('PDF:', (s.size/1024).toFixed(0), 'KB'); console.log(s.size > 10000 ? 'PASS' : 'FAIL')"
```

Expected: `PASS`
