# How-To Updates + Player Challenges — Implementation Plan

> **For agentic workers:** Use superpowers:subagent-driven-development. Steps use checkbox (`- [ ]`) syntax.

**Goal:** Add missing "How to Use" mod entries, fix stale graphics/parts references, and add player challenge sections to all 4 waves.

**Spec:** `docs/superpowers/specs/2026-07-23-howto-updates-challenges.md`

**Style:** Use existing `#section-heading([Title])`, `#tip[[...]]`, numbered steps. Tone: direct tutorial.

---

### Task 1: Wave 0 + Wave 0.5 — How-To additions + challenges

**Files:**
- Modify: `guide/wave-0-first-steps.typ`
- Modify: `guide/wave-05-tools.typ`

**Read each file before editing.**

- [ ] **Step 1: W0 — Add BetterBurnTime how-to**

In the "Wave 0 Mods — How to Use Them" section, after the Precise Maneuver section, insert:

```

#section-heading([BetterBurnTime])

BetterBurnTime replaces the stock burn-time indicator next to the navball. When you create a maneuver node, it shows three numbers:

- *Time to burn:* Countdown until you should start burning. The indicator turns green when it's time.
- *Burn duration:* How long the burn will take at full throttle.
- *Time to impact:* Shows during landings — how many seconds until you hit the surface. Watch this on final descent.

Start your burn so that half the burn happens before the node and half after. BetterBurnTime handles the timing — when the countdown hits zero, throttle up. When the "Est. Burn" counter reaches zero, cut engines.

#tip[[
  During landings, BetterBurnTime's impact timer is more responsive than the altimeter alone. When it counts down to ~3 seconds at high speed, you're about to lithobrake. Burn retrograde immediately.
]]

```

- [ ] **Step 2: W0.5 — Add Trajectories how-to**

In "Wave 0.5 Mods — How to Use Them", after the VAB/SPH Tools section, insert:

```

#section-heading([Trajectories])

Trajectories predicts where your craft will land — accounting for atmospheric drag and planetary rotation. Toggle it on from the toolbar (the icon looks like a trajectory arc).

- *Red X:* Predicted impact point. This is where you'll hit the ground if you do nothing.
- *Blue line:* Your trajectory through the atmosphere, showing how drag bends your path.
- *Body-fixed mode (default):* The X stays locked to the rotating planet surface. Use this for landings.
- *Inertial mode:* The X shows where you'd land if the planet stopped rotating. Use this for orbital planning only.

#tip[[
  When aerobraking at Duna or Jool, set Trajectories to body-fixed mode. Adjust your periapsis until the predicted exit trajectory has the apoapsis you want. A 15 km Duna periapsis captures you; a 25 km one just bends your path.
]]

#section-heading([SCANsat])

SCANsat adds persistent planetary maps. Open the map viewer from the SCANsat toolbar button (a radar dish icon).

- *Altimetry map:* Height above sea level. Use this to find flat landing zones and mountain peaks.
- *Biome map:* Color-coded biomes. Essential for science farming — plan your lander's route to visit multiple biomes per trip.
- *Slope map:* Terrain steepness. Red = steep, blue = flat. Land in the blue.
- *Coverage:* Maps start blank and fill in as your scanner passes over the surface. A polar orbit at 80° inclination scans everything.

Launch one scanner satellite per body you plan to visit. Even a tiny CubeSat with a scanning antenna and solar panels works. The maps persist across saves.

#info[[
  SCANsat scanning generates science points passively. A single scanner in polar orbit around the Mun will complete several "Scan [Body]" contracts with zero additional effort.
]]

```

- [ ] **Step 3: W0 — Add Player Challenges**

At the end of the Wave 0 guide (after the "Where to Go from Here" section), append:

```

#pagebreak()
#chapter-heading([Player Challenges — Wave 0])

These are optional goals to test your orbital skills. No mods beyond Wave 0 required.

- *Single-Stage to Orbit:* Reach orbit without decoupling anything. The entire rocket goes to space together.
- *SRB Only:* Orbit using only solid rocket boosters — no liquid engines. Throttle management is... creative.
- *Minimalist:* Orbit with a rocket under 10 parts. Every part must earn its place.
- *High Orbit:* Achieve a circular orbit at 500 km altitude (stock contracts consider this "high orbit" — science bonus).
- *Polar Orbit:* Launch north from KSC into a 90° inclination orbit. Harder than east because you get no rotation assist.
- *Precision Landing:* De-orbit and splash down within 5 km of the Kerbal Space Center. Use your trajectory prediction skill.
```

- [ ] **Step 4: W0.5 — Add Player Challenges**

At the end of the Wave 0.5 guide (after "Where to Go from Here"), append:

```

#pagebreak()
#chapter-heading([Player Challenges — Wave 0.5])

Test your Mun, docking, and station skills.

- *Single-Stage Lander:* Mun landing and return with no staging during descent or ascent. One engine, one tank, one landing.
- *Apollo Style:* Design a two-part mission — Command/Service Module stays in Mun orbit while a separate lander descends. Dock them back together before returning.
- *No RCS Docking:* Dock two craft using only main engine thrust. No RCS thrusters allowed. Translation via careful tapping.
- *Three-Module Station:* Launch and dock three separate modules (core + hab + fuel depot) into a single station. No module may exceed 30 parts.
- *Polar Mun Landing:* Land on the rim of a Mun polar crater. The terrain is steep, the lighting eternal twilight. Good luck.
- *Slope Landing:* Land on Minmus in the Slopes biome. Inclination 15–30°. Your lander must not tip.
```

- [ ] **Step 5: Commit**

```bash
git add guide/wave-0-first-steps.typ guide/wave-05-tools.typ
git commit -m "feat: add BetterBurnTime/Trajectories/SCANsat how-to entries and Wave 0-0.5 challenges"
```

---

### Task 2: Wave 1 — How-To fixes + additions + challenges

**Files:**
- Modify: `guide/wave-1-going-further.typ`

**Read the file before editing.**

- [ ] **Step 1: Fix "Using the Graphics Mods" — remove PlanetShine**

Find the graphics mods section. Look for any text containing "PlanetShine" and remove those references. Replace the section's intro paragraph to remove PlanetShine mentions and add Deferred/TUFX.

Find the heading `#section-heading([Using the Graphics Mods])` and its body. Update the section to read:

```
#section-heading([Using the Graphics Mods])

Wave 1 adds a full visual overhaul stack. Here's how to configure each layer:

- *Scatterer:* Atmospheric scattering, ocean shaders, sunflare. Toggle in flight via the Scatterer toolbar menu. Adjust ocean quality if you see FPS drops during launch.
- *EVE + AVP:* Cloud layers and skybox. Installed automatically. No manual config needed unless you want to tweak cloud density.
- *Deferred:* Changes the entire render pipeline. Toggle via config file in GameData/Deferred/. If you see visual glitches, disable it — the game falls back to stock rendering. Deferred handles planet reflections, so no separate planet-lighting mod is needed.
- *TUFX + Shabby/Shaddy:* Post-processing (bloom, ambient occlusion, color grading). Switch profiles from the TUFX toolbar menu in flight. Shabby and Shaddy add extra profile presets beyond the built-in defaults. Try Shabby first for a cinematic look.
- *Parallax:* Terrain tessellation. In Parallax settings (toolbar button), reduce scatter density if you see terrain pop-in or FPS drops near the surface. High-quality setting requires a DX11-capable GPU.
- *Waterfall + Restock Waterfall Expansion:* Engine plumes. Automatic — no config needed. The plumes respond to atmospheric pressure (expand in vacuum, contract in atmosphere). Purely visual.
- *Rocket Sound Enhancement:* Audio overhaul. Sonic boom effects, distance-based attenuation. Configurable in settings — disable sonic booms if they startle you during timewarp transitions.
- *Distant Object Enhancement:* Renders distant planets and vessels as points of light. The toolbar menu lets you toggle vessel flares and adjust sky-dimming intensity.
- *Textures Unlimited + TURD + Simple Repaint:* PBR shading framework and part recoloring. TURD adds a repaint GUI in the VAB/SPH — right-click any supported part to change its color. Simple Repaint covers parts without TURD configs. Both are visual only.
```

- [ ] **Step 2: Fix "New Parts Overview" — remove dropped mod references**

Find the `#section-heading([New Parts Overview])` section. Update it to remove any mention of SOCK, Buran, SpaceY, ORANGES, or shuttle-era parts. The section should describe the parts landscape WITHOUT dropped mods. Find the section text and rewrite as:

```
#section-heading([New Parts Overview])

Wave 1 adds a lot of parts. Here's how they're organized:

- *Restock + Restock+:* Revamped stock parts (visual) + new stock-alike parts (functional). Your rockets look better and you get missing part sizes like 0.625m RCS tanks and 2.5m reaction wheels.
- *Near Future suite (7 packs):* The core parts expansion. Solar panels (blanket arrays for outer system), electrical (reactors + capacitors), propulsion (advanced engines), construction (trusses + structural), spacecraft (command pods), launch vehicles (5m–7.5m lifters), and aeronautics (spaceplane parts). NF Launch Vehicles covers the heavy-lift niche; NF Electrical's reactors power the entire tech tree.
- *Historical:* Bluedog Design Bureau (US rockets from Mercury to Apollo) and Tantares (Soviet spacecraft + launchers). Both are comprehensive — each adds 100+ parts. Pick one or install both for the full Cold War experience.
- *Modern:* Artemis Construction Kit (SLS + Orion), Eisenhower Astronautics (modern launchers), Tundra Exploration (SpaceX-inspired). Each covers a different modern program.
- *Station parts:* Stockalike Station Parts Expansion Redux, HabTech2, Planetside Exploration Technologies. Everything you need for orbital construction — inflatable habitats, centrifuges, trusses, docking adapters.
- *Planes:* Airplane Plus, Mk2/Mk3/MkIV expansion packs, Mk-33, OPT Spaceplane. If it flies in atmosphere, it has expanded parts here.
- *Planet packs:* Outer Planets Mod (Saturn–Pluto analogs), Minor Planets Expansion (dwarf planets between them), QuackPack (inner system), Kcalbeloh (black hole system), Grannus (binary red dwarf). Each adds new destinations with full biome and science support. You can install all five if your system handles it.
```

- [ ] **Step 3: Add Fuel System how-to**

After the New Parts Overview, insert:

```

#section-heading([The Fuel System])

Wave 1 introduces custom fuel types beyond stock LiquidFuel/Oxidizer. Three mods power this ecosystem:

#section-heading([Community Resource Pack (CRP)])

CRP defines the resources: Hydrogen, Methane, Kerosene, Hydrazine, and dozens more. You never interact with CRP directly — it's a library that other mods reference. But without it, custom fuels don't exist.

#section-heading([B9 Part Switch])

B9PartSwitch is the part you actually use. In the VAB, right-click any compatible fuel tank. A dropdown lets you switch what it holds: LFO (stock), LH2/Oxidizer (cryogenic), Methane/Ox, or Monopropellant. The tank model doesn't change — only its contents.

#tip[[
  LH2 is the most efficient fuel (highest Isp) but the least dense. A tank full of LH2 weighs less than the same tank full of LFO — but it takes up more volume. LH2 stages are physically larger for the same delta-v.
]]

#section-heading([Cryogenic Tanks — Boil-Off Management])

LH2 and Methane are cryogenic — they slowly evaporate in storage. This is "boil-off."

- *Standard tanks:* Fuel evaporates over time. Acceptable for short missions (Mun, Minmus). Unacceptable for interplanetary.
- *Insulated tanks:* CryoTanks adds insulated variants that reduce boil-off by ~90%. Use these for Duna and beyond.
- *Active cooling:* Some parts (cryo-coolers) consume ElectricCharge to eliminate boil-off entirely. Necessary for Jool missions lasting years.

#info[[
  Boil-off only matters on long time-scales. A Mun mission takes days — you'll never notice. A Grannus transit takes decades — uninsulated LH2 will be gone before you leave Kerbin's SOI.
]]

```

- [ ] **Step 4: Add AtmosphereAutopilot how-to**

After the MechJeb section in "How to Use", insert:

```

#section-heading([AtmosphereAutopilot])

AtmosphereAutopilot (AA) is a fly-by-wire system for atmospheric flight. It's more sophisticated than SAS for aircraft.

- *Auto-trim:* Automatically adjusts control surfaces so your plane flies straight hands-off. Toggle on before long cruise flights.
- *Altitude hold:* Maintains current altitude using pitch control. Good for survey contracts at constant altitude.
- *Heading hold:* Maintains current heading. Combines with altitude hold for hands-off cruise.
- *Auto-throttle:* Holds a target speed. Use for efficient subsonic cruise or supersonic dashes.
- *Fly-by-wire modes:* The "Moderation" mode smooths your inputs, preventing over-correction. "Director" mode flies toward your cursor position. Toggle between them in AA's settings.

#tip[[
  AA handles atmosphere — MechJeb handles space. Use both. AA's altitude/heading hold for the atmospheric climb, then hand off to MJ's ascent autopilot at ~30 km. They don't conflict.
]]

```

- [ ] **Step 5: Add Kerbal Atomics + System Heat how-to**

After the AtmosphereAutopilot section:

```

#section-heading([Kerbal Atomics + System Heat])

Nuclear engines and reactors produce heat. System Heat is the thermal management framework — every reactor and NERV variant in Kerbal Atomics uses it.

#section-heading([Reactor Basics])

1. *Startup:* Right-click the reactor, click "Activate." It takes time to reach operating temperature — nuclear engines produce zero thrust while warming up (30–120 seconds depending on reactor size).
2. *Shutdown:* Right-click, "Deactivate." The reactor cools passively but stays hot for hours. You cannot time-warp through cooldown.
3. *Waste heat:* Heat is stored in the reactor and radiators. If the "Waste Heat" bar fills completely, the reactor emergency-scrambles and you lose all power/thrust.

#section-heading([Radiator Rules])

- Radiators must be deployed (extendable panels) OR active (fixed panels that glow when cooling)
- One medium radiator per small reactor; 4–8 large radiators per fusion reactor
- Radiators cool everything on the same vessel — you don't need to pair them
- Place radiators symmetrically and away from other hot parts

#tip[[
  The System Heat toolbar button shows a live thermal overlay. Green = nominal, yellow = warming, red = approaching shutdown. If everything is red, deploy more radiators or reduce power.
]]

```

- [ ] **Step 6: Add Wave 1 Player Challenges**

At the end of the Wave 1 guide, append:

```

#pagebreak()
#chapter-heading([Player Challenges — Wave 1])

Interplanetary missions that test your design and piloting skills.

- *Duna Independent:* Duna round-trip with no ISRU. Bring all fuel from Kerbin. Design a ship with 6,500+ m/s from LKO.
- *Duna Double:* Land on Duna AND Ike in the same mission. Requires lander capable of two separate descents or an SSTO lander.
- *Eve Rocks:* Land on Eve, plant a flag, and return the kerbal safely to Kerbin. The hardest stock challenge. Gilly ISRU is fair game.
- *Mohole Diver:* Land on Moho and return. Requires ~8,000+ m/s from LKO. Use a nuclear transfer stage.
- *Jool-5:* Land on all 5 Jool moons (Laythe, Vall, Tylo, Bop, Pol) in one mission. Tylo is the barrier — design the mission around it.
- *Minmus Fuel Empire:* Build a fully automated Minmus mining base with miner, tanker, and orbital depot. Bonus: refuel an interplanetary ship from the depot.
- *Laythe SSTO:* Build an SSTO spaceplane that reaches Kerbin orbit, transfers to Laythe, lands, and returns — all without refueling or staging.
- *System Relay:* Deploy CommNet relay satellites to every planet and moon in the Kerbol system. Bonus: full coverage with zero dead zones.
```

- [ ] **Step 7: Commit**

```bash
git add guide/wave-1-going-further.typ
git commit -m "feat: fix how-to entries, add fuel/reactor/AA guides, and Wave 1 challenges"
```

---

### Task 3: Wave 2 — How-To additions + challenges

**Files:**
- Modify: `guide/wave-2-the-long-ascent.typ`

**Read the file before editing.**

- [ ] **Step 1: Add Navball DAI how-to**

In "Wave 2 Mods — How to Use Them", after the Planetside section, insert:

```

#section-heading([Community Navball Docking Alignment Indicator])

By Wave 2, you should be comfortable docking without DPAI's separate window. The Navball DAI replaces it with a marker directly on the navball.

- *Green marker:* Your docking port is aligned with the target port. Approach slowly.
- *Red marker:* Misaligned. Translate (I/J/K/L) to center the marker.
- *Range ring:* A circle around the marker indicates distance. It shrinks as you get closer.
- *Prograde marker:* The standard prograde marker still shows relative velocity. Keep it centered on the DAI marker for a perfect straight-in approach.

#tip[[
  Switch your camera to "Chase" mode (V key) and align the view with your docking port. The navball, camera, and DAI marker all agree — approach becomes trivial.
]]

```

- [ ] **Step 2: Add Extraplanetary Launchpads how-to**

After the Navball DAI section:

```

#section-heading([Extraplanetary Launchpads — Building Off-World])

Extraplanetary Launchpads (EL) lets you build vessels anywhere — no Kerbin required. SimpleConstruction is a lighter alternative with fewer parts.

#section-heading([The Build Chain])

1. *Mine:* Extract MetalOre with standard drills (same as stock ore drilling).
2. *Smelt:* Convert MetalOre → Metal in a smelter part.
3. *Build:* Convert Metal → RocketParts in a workshop. RocketParts are the construction currency.
4. *Construct:* Open the EL construction window (toolbar button), select a craft file, assign a survey stake or docking port as the spawn point. The workshop consumes RocketParts over time.
5. *Launch:* The vessel materializes at the spawn point — fully fueled if you supplied tanks of fuel.

#section-heading([Production Rates])

- A single workshop with 2 engineers produces ~1 ton of RocketParts per day.
- A small probe (~5 tons) takes 5 days; a large lander (~50 tons) takes 50+ days.
- Multiple workshops stack. 4 workshops + 8 engineers = 4× speed.
- Time warp works during construction. Set KAC alarm for completion.

#info[[
  Build a survey station (the EL survey part) near your mining base. The survey station increases build range and provides a construction waypoint. Without it, you can only build at the exact location of the workshop.
]]

```

- [ ] **Step 3: Add Wave 2 Player Challenges**

At the end of the Wave 2 guide, append:

```

#pagebreak()
#chapter-heading([Player Challenges — Wave 2])

Endgame challenges requiring colonies, interstellar travel, or both.

- *Duna Self-Sufficiency:* Build a Duna colony that produces all Supplies, Fuel, and RocketParts locally. No resupply from Kerbin for 5+ years.
- *Jool Gateway:* Assemble a station in Jool orbit with 200+ parts, crew capacity of 12+, and fuel reserves of 50,000+ units. It should service missions to all 5 moons.
- *Wormhole Probe:* Send an uncrewed probe through the Kcalbeloh wormhole near Jool. Map the destination system with SCANsat and transmit data back.
- *Interstellar Crewed:* Launch a crewed mission to Grannus, land on at least one planet, and return all kerbals safely to Kerbin. Use FFT engines for transit and Blueshift for return.
- *Warp Network:* Deploy Blueshift warp coils at Kerbol, Jool, Grannus, and Kcalbeloh. Any ship must be able to warp between any two coils.
- *Tylo Solo:* Land on Tylo and return using a single-stage lander — no asparagus staging, no drop tanks. Pure engineering.
- *Colony Empire:* Establish self-sustaining colonies at Minmus, Duna, Laythe, Vall, and Grannus II. Each must produce Supplies and RocketParts locally.
- *Grand Tour:* Visit every planet and moon in the Kerbol system (stock + OPM + Minor Planets + QuackPack) in a single save file. Flag on each. Interstellar destinations are bonus.
```

- [ ] **Step 4: Commit**

```bash
git add guide/wave-2-the-long-ascent.typ
git commit -m "feat: add Navball DAI/EL how-to entries and Wave 2 challenges"
```

---

### Task 4: Build verification

- [ ] **Step 1: Run build**

```bash
scripts/build.bat
```
Expected: `=== Build complete ===`

- [ ] **Step 2: Verify PDF**

```bash
node -e "const s=require('fs').statSync('output/the-long-ascent.pdf'); console.log('PDF:', (s.size/1024).toFixed(0), 'KB'); console.log(s.size > 10000 ? 'PASS' : 'FAIL')"
```
Expected: `PASS`
