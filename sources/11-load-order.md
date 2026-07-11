# Load Order

The load order determines how ETS2 resolves conflicts between mods that modify the same game data. Mods at the **top** (highest priority) override mods below them. Getting the order wrong causes missing roads, broken textures, invisible trucks, or crashes to desktop.

This guide uses the standard ETS2 mod manager convention: **top = highest priority** (loads last, wins conflicts).

---

## Why Load Order Matters

Every mod in ETS2 ships a set of definition files (`.sii`), asset files (`.pmd`, `.pim`, `.tobj`), and map sectors (`.mbd`). When two mods modify the same file, the mod loaded **last** wins. The mod manager loads mods from **bottom to top**, so:

- A mod at the **top** of the list loads **last** and **overrides** anything below it.
- A mod at the **bottom** loads **first** and can be overridden by anything above it.

### Consequences of Wrong Load Order

| Symptom | Likely Cause |
|---------|-------------|
| Grey/black sectors on the map | Map files loaded out of order — a lower-priority map is overwriting a higher-priority map's sectors |
| Missing road connections at borders | Map connector placed below the maps it should connect |
| Truck appears invisible in the dealer | Truck model loaded before a required sound or interior accessory mod |
| Crash when entering a specific city | Map mod conflicting with a graphics/weather mod that overwrites its city definition |
| Textures flickering or popping | Texture replacement mod loaded below the map mod it should override |
| AI traffic cars floating or sinking | Traffic pack loaded above the map data defining road heights |

---

## Complete Load Order

From highest priority (top) to lowest priority (bottom):

```
TOP — HIGHEST PRIORITY (loads last, wins conflicts)
─────────────────────────────────────────────────────

  1.  Map Base (ProMods)
  2.  Map Addons (Middle East, RusMap, connectors)
  3.  Graphics (textures, lighting)
  4.  Weather & Environment
  5.  Audio (engine packs, sound fixes)
  6.  Trucks & Interiors
  7.  Gameplay & Economy
  8.  Trailers & Cargo — Ownable
  9.  Trailers & Cargo — AI Traffic
  10. Traffic Packs

BOTTOM — LOWEST PRIORITY (loads first, base foundation)
```

---

## Priority 1 (Top): Map Base

**What goes here:** ProMods Europe and its core asset files. The foundation upon which everything else builds.

The base map mod must be at the **top** (highest priority) so its sectors, assets, and definitions override everything below it. The map provides the world geometry — roads, cities, terrain, prefabs — and every other mod category depends on this data being final. If a lower-priority mod could overwrite map sectors, roads would disappear and jobs would break.

**From this guide:**
- **ProMods Europe 2.83** — The cornerstone. Its components load in this specific order from bottom to top:

```
  ProMods Definition File        ← Highest within this group
  ProMods High Quality Addon     ← (optional, below definition)
  ProMods Map Package
  ProMods Media Package
  ProMods Models 1
  ProMods Models 2
  ProMods Models 3               ← Lowest within this group
```

The definition file must be the highest of the ProMods files so it can declare which DLC-dependent sectors are active. Model and media packages go lowest because they only supply assets that other mods reference.

- **ProMods The Great Steppe 1.6.2** — Sits just above the main ProMods files.

```yaml
Example conflict:
  A gameplay mod adds a new company prefab with its own road connections.
  If the gameplay mod loaded above the map base, it could overwrite the
  map's sector data, causing missing roads or broken navigation in that
  area. The map base must be at the top so its world geometry and sector
  data are never overwritten by lower-priority mods.
```

---

## Priority 2: Map Addons

**What goes here:** Map expansion addons, regional maps, map connectors and patches.

Map addons expand the playable area or connect different map mods together. They need to load below the base map mod (so the base map's core sectors take priority) but above graphics mods (so visual mods can render over their terrain).

**From this guide:**
- **ProMods Middle East Addon 2.83** — Below base ProMods files.
- **RusMap 2.60** — Model file first, then map file.
- **Roextended 5.2** — Generated sector file highest.
- **Poland Rebuilding 2.6.4**
- **Road to Caucasus v2.8**
- **Iberia Rebuild**
- **Portugal Rebuild**
- **Bulgaria in Focus**
- **Project Russia**
- **Heart of Africa v1.60** — Standalone sector, bottom of map addons.
- **Hybrid Plus 1-2 Road Connector v2.0** — Above all individual map files.
- **Road to Caucasus + Promods RC 1.8**
- **Road to Caucasus + ProMods The Great Steppe RC v2.1**

---

## Priority 3: Graphics

**What goes here:** Texture overhauls, lighting mods, Reshade presets, comprehensive graphics packs.

Graphics mods replace textures, colour grading, lighting parameters, and shader configurations. They must load below map addons (so map sectors remain authoritative) but above weather mods (so weather lighting and sky textures do not override the graphics mod's colour grading).

**From this guide:**
- **Project Next Gen** — Lightweight texture overhaul. Load at the top of this section.
- **Nextgen Graphics Road to 2.0 Spring Update** — Comprehensive graphics overhaul. Loads below Project Next Gen if using both (though stacking comprehensive overhauls is not recommended).
- **Realistic Graphics Mod (RGM) v3.0** — Balanced colour/lighting adjustments.
- **JBX Graphics v2.9** — Premium reshade preset. Loads below other graphics mods.

```yaml
Recommendation: Avoid stacking two comprehensive graphics overhauls.
Choose one primary pack (Nextgen Graphics or RGM or JBX) and optionally
add Project Next Gen for additional texture coverage.
```

---

## Priority 4: Weather & Environment

**What goes here:** Weather overhauls, seasonal mods, skyboxes, rain effects, vegetation replacements.

Weather mods replace skybox textures, rain/snow particle definitions, lighting curves, and seasonal vegetation data. They must load below graphics mods (so texture packs apply on top of weather-changed surfaces) but above audio mods (so rain sounds are not overwritten).

**From this guide:**
- **Realistic Weather System V2.9** — Complete weather overhaul. NOT compatible with other weather or graphics mods.
- **Grimes Frosty Winter v10.7** — Full winter simulation. Place at top of weather section.
- **Grimes New Summer v6.7**
- **Grimes Spring v6.6**
- **Grimes Early Autumn v9.0**
- **Grimes Late Autumn/Mild Winter v6.6**
- **Grimes Realistic Rain Reflections Addon v1.0** — Use with the matching season mod.
- **Weather Mod V3.8** — Standalone weather.
- **Grass_Tree / Autumn_ETS** — Vegetation replacement.

```yaml
Important: Only one Grimes season mod can be active at a time. The
Realistic Weather System V2.9 cannot be stacked with any other weather
or graphics mod — it is a complete weather replacement.
```

---

## Priority 5: Audio

**What goes here:** Sound fixes packs, engine sound replacements, horn packs, ambient audio.

Audio mods replace sound banks and mixing definitions. They must load below weather mods (so rain and environment sounds can be overridden by the weather system) but above truck mods (so engine sound packs can attach to specific truck definitions).

**From this guide:**
- **Sound Fixes Pack v26.34** — Foundation for all audio. High priority within this section.
- **SFX Engine Sound Packs by Max2712**:
  - 2022 MAN TGX (TG3) 510 D2676 Sound Pack v1.3.2
  - SFX Renault Range T DTi460 Euro6C v2.05.1
  - SFX Volvo FH13 D13K 500 Euro6 v2.47.1
  - SFX Scania R410 DC13.115 Euro6 v1.29.1
- **Scania V8 Stock Sound v12.0**
- **Scania NextGen 660 DC16 V8 Sound Pack v1.3**
- **Volvo FH5 I-Save 500 D13TC Sound Pack v1.3**
- **Kriechbaum DAF Paccar MX-13 Sound v3.0**
- **Kriechbaum Volvo FH4 D13 Sound v1.1**

```yaml
Sound Fixes Pack must be above individual engine sound packs — it provides
the base sound bank that engine packs extend. Engine packs do not conflict
with each other as long as they target different trucks.
```

---

## Priority 6: Trucks & Interiors

**What goes here:** Standalone truck mods, truck reworks, interior accessories, tuning parts, physics mods.

Truck mods add new drivable vehicles or rework existing ones. They must load below audio mods (so engine sounds defined by audio packs apply correctly to each truck) but above gameplay mods (so gameplay settings like fuel consumption can reference truck parameters).

**From this guide:**
- **MAN TGX E6 by Gloover v2.2.1**
- **Volvo FH6 ALM Mod v1.60**
- **Mercedes-Benz Actros MP6 v1.60**
- **Ford F-Max Special Edition**
- **Iveco Hi-Way v8x4 and More**
- **Iveco S-Way Hi-Powered**
- **Peterbilt 350**
- **Mercedes 1632 NG v1.8+**
- **SiSL's Mega Pack** — Interior accessories. Compatible with all trucks.
- **Venus Scania NG Parts v1.60**, **Addon Scania R/S Rear Bumper**, **SRI Lightbox Pack**
- **ETS2 Add-On Compressors v1.7**, **Abasstreppas LightFix Kit v1.60**
- **Realistic Truck Physics Mod**

```yaml
Note: Truck mods are standalone — they do not replace SCS trucks. They
have minimal load order dependencies on each other. If two truck mods
conflict, place the one you prefer higher.
```

---

## Priority 7: Gameplay & Economy

**What goes here:** Economy rebalances, company management, physics overhauls, dashboard replacements, QoL mods.

Gameplay mods modify core simulation data: income, fuel costs, tolls, physics parameters, UI layouts. They must load below truck mods (so truck parameters are final before gameplay logic references them) but above trailer/cargo data (so economy mods can reference cargo types from the final cargo data below).

**From this guide:**
- **Collision Model Mod v1.60** — Tightens hitboxes and damage zones.
- **Realistic Scania SmartDash v1.60** / **Iveco S-Way Improved Dashboard v1.60** — Dashboard replacements.
- **Animated Steering Wheel v1.60** — Cosmetic animation.
- **TDS ECO Grand Garage v1.0** — Economy rebalance.
- **New Service** — Company management layer.
- **SiSL's Route Advisor** — Enhanced navigation UI.
- **Real Company Skins** — Logistics liveries for immersion.
- **Ferry Plus v5.0.1** — New ferry connections. Above map mods.
- **Indonesia Gameplay Mods v1** — Full gameplay overhaul pack.

```yaml
Rule: Only one economy-modifying mod per profile. Stacking economy mods
causes unpredictable income calculations and potential save corruption.
```

---

## Priority 8: Trailers & Cargo — Ownable

**What goes here:** Ownable trailer packs, cargo definition packs, company skin replacements.

Ownable trailers and cargo definitions need to load below gameplay and economy mods (so economy mods can reference cargo data) but above AI traffic trailers (so AI trailers do not interfere with player-owned trailer definitions).

**From this guide:**
- **Trailers and Cargo Pack by Jazzycat v11.10.5** — 175 trailers, 772 cargo types. Foundation of this section.
- **Military Cargo Pack by Jazzycat v6.8.6** — 222 military cargo items, compatible with either Jazzycat main pack.
- **TZ Express Trailer Pack v1.60** — 22 real-brand ownable trailers.
- **SGD Trailer and Container Pack v1.60** — Krone container trailers with 4K PBR textures.
- **NTM Trailers v2.1** — Kast's ownable NTM trailers with advanced coupling.
- **Mini Trailers Pack v1.60** — Small/car trailers.
- **Enhanced SCS Cargo v5.0** — Cargo reassignment. Place above other trailer packs so its cargo assignments take effect.
- **Realistic Vanilla Company Skins** — Texture-only replacement. Anywhere in this section.

```yaml
Important: Jazzycat's main Trailers and Cargo Pack and Overweight Trailers
and Cargo Pack are mutually exclusive. Use one or the other, not both.
```

---

## Priority 9: Trailers & Cargo — AI Traffic

**What goes here:** AI traffic trailer packs, clean-traffic removers.

AI trailer packs add or replace trailers that appear on AI vehicles in traffic. These need to load below ownable trailer packs (so AI trailers do not interfere with player-owned trailer definitions) but above traffic density mods (so the density mods control *how many* vehicles spawn).

**From this guide:**
- **Clean Traffic — No Default SCS Trailers v2.0** — Removes SCS trailers from AI traffic. Must load above AI trailer packs so the custom packs fill the gap.
- **Trailers Traffic Pack by TrafficManiac v12.9.3** — 1,379 AI trailer models with real company skins.
- **Ai Trailers Pack Evolution V2.8** — 150 addon AI trailers.

---

## Priority 10 (Bottom): Traffic Packs

**What goes here:** AI traffic density mods, AI vehicle packs, police enforcement, traffic behaviour overhauls.

Traffic packs must be at the very bottom (lowest priority) because they only need to override traffic-specific data: spawn definitions, vehicle models, and AI behaviour parameters. They should not conflict with any map, visual, or gameplay data — placing them lowest ensures they can only affect traffic systems without risk of overwriting critical game data from higher-priority mods.

**From this guide:**
- **Brutal Traffic v8.1** — AI behaviour and density curves. At the very bottom so its traffic-only definitions do not interfere with anything above.
- **EXPRESS PERFORMANCE MOD** — Realistic rush-hour traffic with FPS boost. Lowest priority to stay out of other systems.
- **AI Traffic Pack v2.5** — Real vehicle models replacing vanilla AI cars. Place above other traffic packs.
- **Real Traffic Density** (Steam Workshop) — Time-of-day density curves.
- **Police/parking enforcement mods** — Highest of this group but still at the bottom relative to all other mod categories.

```yaml
Example conflict:
  A map mod adds a custom prefab with its own traffic spawn points.
  If a traffic pack loaded above the map mod, the traffic pack's density
  settings could override the map's traffic definitions, partially disabling
  custom traffic spawns in that map area. Traffic packs at the bottom avoid
  interfering with map data while still controlling traffic behaviour.
```

---

## Quick Reference Template

Copy this template into Truck Mod Manager for a full profile:

```
TOP (Highest Priority)
────────────────────
  ProMods Definition File ★
  ProMods High Quality Addon
  ProMods Map Package ★
  ProMods Media Package ★
  ProMods Models 1 ★
  ProMods Models 2 ★
  ProMods Models 3 ★
  ProMods The Great Steppe
  ───
  Hybrid Plus Road Connector
  RusMap Model
  RusMap Map
  Poland Rebuilding
  Roextended (sector file)
  Road to Caucasus + Connectors
  ProMods Middle East Addon
  ───
  Project Next Gen
  Nextgen Graphics ★
  ───
  Grimes New Summer v6.7 ★
  Realistic Weather System V2.9 (or other Grimes season mod)
  Grimes Rain Reflections Addon
  Grass_Tree / Autumn_ETS
  ───
  Sound Fixes Pack ★
  MAN TGX D2676 Sound Pack
  SFX Renault Range T Sound
  SFX Volvo FH13 Sound
  SFX Scania R410 Sound
  Scania V8 Stock Sound
  ───
  MAN TGX E6 by Gloover ★
  Volvo FH6 ALM Mod ★
  Mercedes Actros MP6
  Ford F-Max Special Edition
  Iveco Hi-Way v8x4
  Iveco S-Way Hi-Powered
  Peterbilt 350
  Mercedes 1632 NG
  SiSL's Mega Pack
  Scania NG Parts / Accessories
  Realistic Truck Physics
  ───
  Collision Model Mod ★
  Dashboard replacements
  Animated Steering Wheel
  TDS ECO Grand Garage ★
  New Service
  SiSL's Route Advisor ★
  Real Company Skins ★
  Ferry Plus
  ───
  Enhanced SCS Cargo v5.0
  Jazzycat Trailers and Cargo Pack ★
  Military Cargo Pack by Jazzycat
  TZ Express Trailer Pack
  SGD Trailer and Container Pack
  NTM Trailers v2.1
  Mini Trailers Pack
  Realistic Vanilla Company Skins
  ───
  Clean Traffic — No Default SCS Trailers
  Trailers Traffic Pack by TrafficManiac
  Ai Trailers Pack Evolution
  ───
  Brutal Traffic v8.1 ★
  AI Traffic Pack v2.5 ★
  EXPRESS PERFORMANCE MOD
  Police Enforcement Mod
BOTTOM (Lowest Priority)
────────────────────

★ = Baseline mod — part of the recommended profile for the RTX 4080 Super build.
```

---

## Common Load Order Mistakes

| Mistake | Symptom | Fix |
|---------|---------|-----|
| Map mod above its own definition file | Black/grey sectors on map where DLC is missing | Place definition file above map package within the mod's group |
| Weather mod above graphics mod | Weather textures override graphics textures, causing mismatched colours | Place weather below graphics |
| Traffic pack above map mod | Traffic density definitions interfere with map sector traffic spawns | Place traffic packs at bottom |
| Engine sound pack below Sound Fixes Pack | Sound Fixes Pack overwrites engine sounds with defaults | Place Sound Fixes Pack above individual engine packs |
| Multiple economy mods active | Inconsistent income, duplicate cargo entries | Keep only one economy-modifying mod |
| Connector below both maps it connects | Missing road at border crossing | Place connector above both map mods |

---

## Changing Load Order Mid-Playthrough

**Rule of thumb:** Never change the load order of an active profile unless you are prepared to lose that save.

Some changes are safe; others will corrupt your save:

| Change | Safe? | Notes |
|--------|-------|-------|
| Adding a new mod to the bottom (traffic) | Usually safe | Must be a pure addon with no map sector changes |
| Adding a new trailer pack | Usually safe | Must not replace existing trailers |
| Adding a new truck mod | Usually safe | Standalone trucks do not affect saved game data |
| Adding a new map mod | **Risky** | Can break existing delivery routes and discovered roads |
| Removing any mod | **Risky** | Always test on a backup save first |
| Reordering map mods | **Very risky** | Almost always breaks saves in map-added cities |
| Removing ProMods | **Save-breaking** | Any save that visited a ProMods city is permanently broken |

If you must change the load order mid-playthrough:
1. Save your game manually first.
2. Exit to the main menu.
3. Make the change in Truck Mod Manager.
4. Reload the save.
5. If the game crashes or shows errors, restore the backup save and revert the change.

---

## Profile-Specific Load Orders

### Minimal Profile (Vanilla+)

For players who want light enhancements without map mods:

```
TOP
  Project Next Gen
  Sound Fixes Pack
  Jazzycat Trailers and Cargo Pack
  Brutal Traffic v8.1
BOTTOM
```

### Graphics-Focused Profile

```
TOP
  Nextgen Graphics
  JBX Graphics (Reshade)
  Grimes New Summer v6.7
  Sound Fixes Pack
  EXPRESS PERFORMANCE MOD
BOTTOM
```

### Full Map Combo Profile

The full template above, including ProMods, RusMap, Roextended, connectors, and all supporting mods. This is the profile this guide is built around. Expect 8-12 GB VRAM usage, 30-60 FPS at 4K, and 3-5 minute loading times.
