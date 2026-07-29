# Missing Mods

A catalogue of mods that do not yet exist (to the author's knowledge) but would meaningfully enhance the ETS2 experience. These range from technically feasible with existing tools to aspirational concepts that would require engine-level changes.

---

## Mod Idea: Dynamic GPS with Real Landmarks

**Concept:**
The in-game GPS navigation display shows only route lines and generic markers. This mod would replace the GPS map with a dynamic display that renders real landmarks — visible buildings, unique bridges, toll booths, and scenic viewpoints — as the player passes them. The GPS would show a simplified elevation profile of the upcoming terrain.

**Why it doesn't exist (yet):**
The GPS rendering pipeline is hard-coded into the ETS2 engine and not exposed to modders via SCS's tools. Adding dynamic landmark rendering would require either reverse-engineering the GPS UI component (fragile across game versions) or a significant SDK extension from SCS.

**Design sketch:**
- Hook into the camera position and heading data from the game's API.
- Maintain a JSON database of landmark positions (latitude, longitude, name, type) keyed to map sectors.
- Render 2D silhouettes or simplified icons on the GPS screen using an overlay (external overlay application drawing over the game window).
- Elevation profile from sector heightmap data.

**Role-Playing Value:**
Makes navigation feel real. Instead of following an abstract blue line, the player sees recognisable landmarks and can navigate by them — closer to how real truckers use GPS.

**Priority:** Medium

---

## Mod Idea: Truck Maintenance & Repair Simulation

**Concept:**
Adds depth to the existing damage/repair system. Trucks would accumulate wear on individual components (engine, transmission, brakes, tyres, suspension, electrical) based on mileage, load weight, terrain, and driving habits. Components have service intervals; skipping maintenance increases breakdown risk and degrades performance. Players would visit dedicated repair shops for diagnostics, order parts with delivery times, and schedule service.

**Why it doesn't exist (yet):**
The game's damage model is shallow — a single HP value for the whole truck. Overhauling it to track per-component wear would require extensive reverse-engineering of the vehicle simulation layer. The UI for a parts catalogue, service scheduler, and diagnostic screen would be a substantial standalone project.

**Design sketch:**
- Use the game's accessory/part slots to represent components with hidden wear variables stored in the save file (via SII hooks).
- Wear rate formulas: each km multiplies base wear by load factor (heavy = more), terrain factor (off-road = more), driver behaviour (hard braking = brake wear).
- Trigger dashboard warning lights when service is due.
- Spawn repair-service jobs in the job market with parts-delivery cargo tasks.

**Role-Playing Value:**
Transforms the truck from an invincible machine into something that needs care. Builds attachment to the vehicle and adds a meaningful money sink to the economy loop.

**Priority:** High

---

## Mod Idea: Realistic Parking Tickets & Fines

**Concept:**
The base game fines the player for running red lights, speeding, and collisions but ignores parking violations. This mod would add realistic parking enforcement: fines for blocking loading zones, parking on sidewalks, double parking, parking in bus lanes, and exceeding time limits at rest stops. Police vehicles would patrol rest areas and city zones, scanning for violations.

**Why it doesn't exist (yet):**
Requires detection of the truck's position relative to fine-grained map zones (loading zone, bus lane, sidewalk) that the game does not natively tag. The map data from SCS includes road types but not curb markings or parking restriction metadata.

**Design sketch:**
- Define restricted zones as invisible polygons overlaid on map sectors.
- Track elapsed time when the truck is stationary in a restricted zone.
- Trigger fine event when the engine is off and the parking brake is set within a restricted zone beyond the allowed period.
- Police AI scan at predefined intervals; spawn a fine notification overlay.

**Role-Playing Value:**
Encourages careful parking behaviour. Adds consequence to the "park anywhere" habit most players develop, pushing the simulation toward realism.

**Priority:** Low

---

## Mod Idea: Personal Assistant / Radio Chatter

**Concept:**
A cabin AI assistant that provides contextual audio and information during the drive: upcoming rest stop announcements, fuel prices ahead, traffic alerts from citizen-band (CB) radio simulation, weather warnings, and company dispatch messages. The assistant would be configurable per driver — voice style, talkativeness, information priority.

**Why it doesn't exist (yet):**
Requires a complex event-driven audio system that monitors game state (position, time, weather, fuel level, job status) and triggers appropriate voice lines. Creating the voice assets alone is a multi-hundred-line script project. Integration with the game's audio engine for spatial mixing (sounds coming from the CB speaker vs. the dashboard) adds further complexity.

**Design sketch:**
- External application reads game state from the telemetry SDK (SCS provides a native telemetry DLL).
- A state machine decides what information to announce based on priority queue: urgent (low fuel, damage) > route (upcoming turn, rest stop) > ambient (weather, traffic).
- Voice lines generated via text-to-speech or pre-recorded samples organised by category.
- Output routed to a virtual audio device that the game's audio engine can spatialise.

**Role-Playing Value:**
Solves the lonely-highway problem. A voice in the cabin creates the feeling of being connected to a dispatcher and a trucking community, even in single-player.

**Priority:** Medium

---

## Mod Idea: Fuel Station Brand Loyalty Programs

**Concept:**
Each fuel station brand (Shell, BP, Esso, Total, Lukoil, Aral) tracks the player's total fuel purchased. Reaching spend thresholds unlocks discounts (every 10th litre free, 5% discount at Gold tier, free truck wash at Platinum). Stations of the same brand display the player's loyalty tier on the pump screen. Competing brands offer sign-up bonuses to steal loyalty.

**Why it doesn't exist (yet):**
The game does not track per-station-brand purchase history. Adding this requires a persistent data store keyed by brand ID that the save system must maintain across sessions. The UI for loyalty screens is not part of the standard display system.

**Design sketch:**
- Assign each fuel station prefab to a brand group via a data patch on the map sector files.
- Store loyalty points in the player profile save (extend the save schema via SII file editing).
- Apply discount as a price multiplier at the pump UI hook.
- Display tier progress on the company browser as a new tab.

**Role-Playing Value:**
Adds a layer of economic strategy to refuelling. Players make route decisions based on brand preference rather than picking the nearest pump. Builds a sense of progression outside of jobs and garages.

**Priority:** Low

---

## Mod Idea: Loading / Unloading Cargo Animations

**Concept:**
Current cargo loading and unloading is instantaneous — the player reverses to the dock, presses Enter, and the cargo vanishes/appears. This mod would add timed, animated sequences: fork-lifts moving pallets, pump hoses connecting for liquid cargo, conveyor belts for bulk goods, and security checks for high-value cargo. Duration depends on cargo type and quantity.

**Why it doesn't exist (yet):**
Animating cargo handling requires scripting events that interact with both the player's truck (trailer doors opening) and the delivery prefab (dock equipment). The game's animation system is designed for vehicle and character animation, not cargo-object manipulation, so each cargo type would need custom model work.

**Design sketch:**
- Define animation templates per cargo category (palletised, liquid, bulk, vehicle, container).
- Trigger the sequence when the player confirms delivery: lock the truck in place, play the timed animation, update the cargo state in stages.
- Use camera interpolation to allow the player to watch or skip the sequence.
- Store animation state in the job data to handle save-load mid-animation.

**Role-Playing Value:**
Turns the moment of delivery from a button press into a reward sequence. Watching the cargo unload reinforces the reality of the haul — you see what you carried.

**Priority:** High

---

## Mod Idea: Customs & Border Crossing Simulation

**Concept:**
When crossing between non-Schengen countries in the ProMods / map combo areas (e.g., UK ↔ France, Turkey ↔ Bulgaria, Ukraine ↔ Poland), the player must stop at a customs checkpoint. A border guard inspects the truck (cargo documents, truck registration, driver ID, cab inspection). The process varies by country pair — some are quick (EU internal), others are thorough (non-EU borders). Random inspection events add uncertainty. Missing documents result in fines or denied entry.

**Why it doesn't exist (yet):**
Requires custom prefabs (customs booths with animated barriers, inspection bays) placed at every border crossing on every map mod in the combo. The game does not natively distinguish border-crossing roads from regular roads, so each crossing site must be hand-placed. Coordination with map mod authors is necessary for crossing points that span mod boundaries.

**Design sketch:**
- Define border zones as trigger regions at known crossing points (maintained as a JSON map of coordinates by country pair).
- On entry, trigger a GUI overlay: "You are approaching a border checkpoint. Have your documents ready."
- Spawn an inspection sequence: stop at booth, present documents (simulated inventory check), possible cab inspection (opens the interior camera).
- Apply time penalty (5-15 minutes of game time) for standard crossings; longer for inspections.
- Random events: document check fails (generate a fine), cargo inspection finds undeclared goods (heavy fine, impound), random vehicle search (time penalty only).

**Role-Playing Value:**
The current game treats all border crossings as seamless. Adding border formality enforces the geography of Europe and turns country-to-country travel into a meaningful event. Especially valuable for ProMods users who drive through Eastern Europe and the Middle East.

**Priority:** Medium

---

## Mod Idea: Dynamic Cargo Damage from Road Conditions

**Concept:**
Cargo damaged based on road quality, driving behaviour, and weather, tracked per pallet/crate. Poor road surfaces in Eastern European map mods, harsh braking, sharp cornering, and heavy rain all apply damage. At delivery, the player sees a condition report — damaged cargo pays less. Specialised cargo (glass, electronics, pharmaceuticals) is more sensitive. Players can invest in better suspension, air-ride trailers, and cushioning materials to reduce damage rates.

**Why it doesn't exist (yet):**
The game tracks cargo as a single unit with no internal damage state. Adding per-cargo-type fragility values and road-quality metadata to every map sector would be a massive data-modelling task. The cargo market UI would need new columns for fragility ratings.

**Design sketch:**
- Assign a fragility multiplier to each cargo definition (SII edit).
- Calculate road quality per sector from the road mesh roughness data (extracted from map tiles).
- Every physics tick, compute damage = fragility × road roughness × speed × lateral acceleration, accumulate per cargo item.
- On delivery, display damage report and apply penalty to payout.

**Role-Playing Value:**
Makes cargo selection a strategic choice: high-paying fragile loads are a risk on rough routes. Raises the stakes for careful driving beyond the existing "no collisions" bonus.

**Priority:** Medium

---

## Mod Idea: Truck Stop & Rest Area Variety Pack

**Concept:**
The base game and most map mods use a small number of rest area prefabs repeated across the map. This mod would add dozens of unique rest stop designs: small roadside pull-offs with a single bench, medium truck stops with fast food and showers, large travel centres with repair bays, fuel stations with dedicated truck lanes, scenic viewpoints with picnic areas, and weigh station / inspection site rest zones. Each tier offers different services (shower, food, repair, fuel discount).

**Why it doesn't exist (yet):**
Creating 30+ unique prefabs is a significant modelling, texturing, and placement effort. Each rest stop must be hand-placed in the map editor, and the map sectors across multiple map mods (ProMods, RusMap, ROEX) would need coordination to avoid overlaps.

**Design sketch:**
- Define a prefab library of rest stop types with service capabilities.
- Place them at realistic intervals (every 50-100 km on highways, every 200 km on motorways outside cities).
- Service availability shown on the rest stop info card when pulling in: fuel, repair, food, shower, Wi-Fi, parking fee.
- Higher-tier travel centres offer better rest recovery rates.

**Role-Playing Value:**
Breaks the monotony of identical rest areas. Each stop becomes a deliberate choice based on what the driver needs — fuel, rest, repairs — rather than a random pull-over.

**Priority:** Medium

---

## Mod Idea: Tow Truck & Roadside Assistance

**Concept:**
When the truck is immobilised (engine damage, fuel exhaustion, major collision), instead of auto-recovering to a service station the player calls roadside assistance. A tow truck arrives (real-time delay based on proximity to the nearest service centre), hooks up, and tows the truck to the nearest repair facility. Cost depends on distance and cargo type. Players with a high repair skill or premium roadside membership get faster response times and discounts.

**Why it doesn't exist (yet):**
Requires a complex state machine that takes control of the player's truck away and attaches it to a tow-truck AI vehicle pathing to the nearest repair prefab. The auto-recovery system is deeply embedded — replacing it without breaking the existing save integrity logic is challenging.

**Design sketch:**
- Hook into the damage-state detection when the truck speed drops to 0 and engine damage exceeds 80%.
- Disable auto-recovery; display a roadside assistance UI with cost estimate.
- Spawn a tow-truck AI vehicle at the nearest service centre and path it to the player's location.
- Attach the player's truck to the tow truck via the articulation joint system.
- Camera switches to cinematic view of the tow or stays in cabin; player waits in accelerated game time.
- Deliver to the nearest repair prefab; calculate tow cost (base + per-km + cargo surcharge).

**Role-Playing Value:**
Breaks the immersion-breaking "poof, you're at a garage" auto-recovery. Every breakdown becomes a memorable story event. Encourages preventive maintenance and careful driving.

**Priority:** Low

---

## Mod Idea: Co-Driver / Relief Driver System

**Concept:**
Players can hire a co-driver who rides in the passenger seat on long hauls. The co-driver takes over driving when the player needs rest (simulating real team-trucking operations). Co-drivers have skill levels (driving, navigation, fuel efficiency, safety rating) that improve over time. They can also handle drop-off/pick-up paperwork, reducing rest-stop delays. Visual presence in the passenger seat with idle animations.

**Why it doesn't exist (yet):**
The AI driver system exists only for owned trucks (garage management) and does not control the player's truck. Giving the AI control of the player's current vehicle while the player watches from the passenger seat requires a significant extension of the AI driving model, including the ability to handle the player's specific truck configuration.

**Design sketch:**
- Extend the garage driver system: assign a driver to the "co-driver" slot on the player's truck.
- Co-driver gains experience per km driven with the player.
- At rest stops, option to switch seats: co-driver takes the wheel, player rests in sleeper (accelerated time).
- Co-driver skill affects fuel efficiency, damage avoidance, and rest-stop speed.
- Visual model in passenger seat with basic idle animations.

**Role-Playing Value:**
Simulates team driving, which is common in long-haul real-world trucking. Adds a management layer to the in-cab experience and creates attachment to specific driver characters.

**Priority:** Low
