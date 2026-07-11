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

  1.  Traffic Packs
  2.  Trailers & Cargo — AI Traffic
  3.  Trailers & Cargo — Ownable
  4.  Gameplay & Economy
  5.  Trucks & Interiors
  6.  Audio (engine packs, sound fixes)
  7.  Weather & Environment
  8.  Graphics (textures, lighting)
  9.  Map Addons (Middle East, RusMap, connectors)
  10. Map Base (ProMods)

BOTTOM — LOWEST PRIORITY (loads first, base foundation)
```

---

## Priority 1 (Top): Traffic Packs

**What goes here:** AI traffic density mods, AI vehicle packs, police enforcement, traffic behaviour overhauls.

These must load last because they override the game's traffic spawn definitions, vehicle models, and AI behaviour parameters. If a map mod or graphics mod were placed above them, it could overwrite traffic density curves or remove custom AI vehicles.

**From this guide:**
- **Brutal Traffic v8.1** — AI behaviour and density curves. Must be at the very top so its definitions take precedence over any lower mod.
- **EXPRESS PERFORMANCE MOD** — Realistic rush-hour traffic with FPS boost. Its traffic density curves must win over all other traffic data.
- **AI Traffic Pack v2.5** — Real vehicle models replacing vanilla AI cars. Place above other traffic packs.
- **Real Traffic Density** (Steam Workshop) — Time-of-day density curves.
- **Police/parking enforcement mods** — Lowest of this group but still above all non-traffic mods. These need to override AI behaviour definitions.

```yaml
Example conflict:
  A map mod adds a custom prefab with its own traffic spawn points.
  If a traffic pack loads below the map mod, the map's traffic definitions
  override the pack's density settings, partially disabling the traffic mod
  in that map area. Traffic packs must be at the top to win.
```

---

## Priority 2: Trailers & Cargo — AI Traffic

**What goes here:** AI traffic trailer packs, clean-traffic removers.

AI trailer packs add or replace trailers that appear on AI vehicles in traffic. These need to load below traffic density mods (so the density mods control *how many* vehicles spawn) but above ownable trailer packs (so AI trailers do not interfere with player-owned trailer definitions).

**From this guide:**
- **Clean Traffic — No Default SCS Trailers v2.0** — Removes SCS trailers from AI traffic. Must load above AI trailer packs so the custom packs fill the gap.
- **Trailers Traffic Pack by TrafficManiac v12.9.3** — 1,379 AI trailer models with real company skins.
- **Ai Trailers Pack Evolution V2.8** — 150 addon AI trailers.

---

## Priority 3: Trailers & Cargo — Ownable

**What goes here:** Ownable trailer packs, cargo definition packs, company skin replacements.

Ownable trailers and cargo definitions need to load below AI traffic trailers (to avoid conflicting) but above gameplay and economy mods (so economy mods can reference cargo data).

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

## Priority 4: Gameplay & Economy

**What goes here:** Economy rebalances, company management, physics overhauls, dashboard replacements, QoL mods.

Gameplay mods modify core simulation data: income, fuel costs, tolls, physics parameters, UI layouts. They must load below cargo/trailer data (so they can reference correct cargo types) but above trucks (so truck mods can incorporate gameplay parameters).

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

## Priority 5: Trucks & Interiors

**What goes here:** Standalone truck mods, truck reworks, interior accessories, tuning parts, physics mods.

Truck mods add new drivable vehicles or rework existing ones. They must load below gameplay mods (so gameplay settings like fuel consumption apply correctly) but above audio mods (so engine sound packs can attach to the truck definitions).

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

## Priority 6: Audio

**What goes here:** Sound fixes packs, engine sound replacements, horn packs, ambient audio.

Audio mods replace sound banks and mixing definitions. They must load below truck mods so they can attach sounds to specific truck models, but above weather mods so rain and environment sounds do not override truck engine sounds.

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

## Priority 7: Weather & Environment

**What goes here:** Weather overhauls, seasonal mods, skyboxes, rain effects, vegetation replacements.

Weather mods replace skybox textures, rain/雪 particle definitions, lighting curves, and seasonal vegetation data. They must load below audio mods (so rain sounds are not overwritten by environment mods) but above graphics mods (so texture packs can apply on top of weather-changed surfaces).

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

## Priority 8: Graphics

**What goes here:** Texture overhauls, lighting mods, Reshade presets, comprehensive graphics packs.

Graphics mods replace textures, colour grading, lighting parameters, and shader configurations. They must load below weather mods so they can apply texture replacements on top of weather-changed terrain and buildings. They are the final visual layer before map data.

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

## Priority 9: Map Addons

**What goes here:** Map expansion addons, regional maps, map connectors and patches.

Map addons expand the playable area or connect different map mods together. They must load above the base map mods so their sectors are registered correctly, but below graphics and weather mods so visual mods can render over their terrain.

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

## Priority 10 (Bottom): Map Base

**What goes here:** ProMods Europe and its core asset files. The foundation upon which everything else builds.

The base map mod must be at the **bottom** (lowest priority) so its sectors, assets, and definitions provide the foundation. Everything above it can override specific elements, but the base map's core data must be loaded first and not be overwritten.

**From this guide:**
- **ProMods Europe 2.83** — The cornerstone. Its four components load in this specific order from bottom to top:

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

- **ProMods The Great Steppe 1.6.2** — Sits at the very bottom, below all other ProMods files.

---

## Quick Reference Template

Copy this template into Truck Mod Manager for a full profile:

```
TOP (Highest Priority)
────────────────────
  Brutal Traffic v8.1
  EXPRESS PERFORMANCE MOD
  AI Traffic Pack v2.5
  Police Enforcement Mod
  ───
  Clean Traffic — No Default SCS Trailers
  Trailers Traffic Pack by TrafficManiac
  Ai Trailers Pack Evolution
  ───
  Enhanced SCS Cargo v5.0
  Jazzycat Trailers and Cargo Pack
  Military Cargo Pack by Jazzycat
  TZ Express Trailer Pack
  SGD Trailer and Container Pack
  NTM Trailers v2.1
  Mini Trailers Pack
  Realistic Vanilla Company Skins
  ───
  Collision Model Mod
  Dashboard replacements
  Animated Steering Wheel
  TDS ECO Grand Garage
  New Service
  SiSL's Route Advisor
  Real Company Skins
  Ferry Plus
  ───
  MAN TGX E6 by Gloover
  Volvo FH6 ALM Mod
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
  Sound Fixes Pack
  MAN TGX D2676 Sound Pack
  SFX Renault Range T Sound
  SFX Volvo FH13 Sound
  SFX Scania R410 Sound
  Scania V8 Stock Sound
  ───
  Realistic Weather System V2.9 (or Grimes season mod)
  Grimes Rain Reflections Addon
  Grass_Tree / Autumn_ETS
  ───
  Project Next Gen
  Nextgen Graphics (or RGM / JBX)
  ───
  Hybrid Plus Road Connector
  RusMap Model
  RusMap Map
  Poland Rebuilding
  Roextended (sector file)
  Road to Caucasus + Connectors
  ProMods Middle East Addon
  ProMods The Great Steppe
  ProMods Definition File
  ProMods High Quality Addon
  ProMods Map Package
  ProMods Media Package
  ProMods Models 1
  ProMods Models 2
  ProMods Models 3
BOTTOM (Lowest Priority)
────────────────────
```

---

## Common Load Order Mistakes

| Mistake | Symptom | Fix |
|---------|---------|-----|
| Map mod above its own definition file | Black/grey sectors on map where DLC is missing | Place definition file above map package within the mod's group |
| Weather mod below graphics mod | Weather textures override graphics textures, causing mismatched colours | Place weather above graphics |
| Traffic pack below map mod | Traffic density reduced to defaults in map-added cities | Place traffic packs at top |
| Engine sound pack below Sound Fixes Pack | Sound Fixes Pack overwrites engine sounds with defaults | Place Sound Fixes Pack above individual engine packs |
| Multiple economy mods active | Inconsistent income, duplicate cargo entries | Keep only one economy-modifying mod |
| Connector below both maps it connects | Missing road at border crossing | Place connector above both map mods |

---

## Changing Load Order Mid-Playthrough

**Rule of thumb:** Never change the load order of an active profile unless you are prepared to lose that save.

Some changes are safe; others will corrupt your save:

| Change | Safe? | Notes |
|--------|-------|-------|
| Adding a new mod to the top (traffic) | Usually safe | Must be a pure addon with no map sector changes |
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
  Brutal Traffic v8.1
  Jazzycat Trailers and Cargo Pack
  Sound Fixes Pack
  Project Next Gen
BOTTOM
```

### Graphics-Focused Profile

```
TOP
  EXPRESS PERFORMANCE MOD
  Sound Fixes Pack
  Grimes New Summer v6.7
  Nextgen Graphics
  JBX Graphics (Reshade)
BOTTOM
```

### Full Map Combo Profile

The full template above, including ProMods, RusMap, Roextended, connectors, and all supporting mods. This is the profile this guide is built around. Expect 8-12 GB VRAM usage, 30-60 FPS at 4K, and 3-5 minute loading times.
