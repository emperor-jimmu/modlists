# Maps

Map mods are the backbone of any ETS2 modlist. They add thousands of kilometres of new roads, new cities, and entirely new countries to explore. At 4K resolution, map mods place the highest demand on VRAM and buffer settings — the configuration in `03-configuration.md` is tuned for a heavy map combo.

---

## Essential Map Mods

These are the core maps that form the foundation of a large map combo. All confirmed compatible with ETS2 **1.60**.

---

### ProMods Europe 2.83 {★ Baseline}

- **Version:** 2.83
- **Source:** [promods.net](https://promods.net) (free download after registration)
- **Category:** Maps

**Description:**
The gold standard for ETS2 map mods. ProMods overhauls the entire European base map with detailed custom assets, new road networks, rebuilt cities, and thousands of kilometres of new roads. Every country in the base game is improved, and many new regions (Iceland, Faroe Islands, expanded Scandinavia, remade UK, extended Baltics) are added. ProMods also adds realistic ferry connections between many ports.

**Compatibility:**

- Known conflicts with: other map mods require connectors
- Required load order: **Highest priority** — place the ProMods Definition File at the top, followed by the ProMods Map package, then ProMods Media, then ProMods Models 1–3
- Required connectors: RusMap, Roextended, Poland Rebuilding, and Great Steppe all need dedicated connectors
- Middle East Addon loads below main ProMods files

**Performance Impact:**

- FPS cost estimate: 5–15 FPS loss in rebuilt cities; minimal impact on highways
- VRAM usage notes: 2–3 GB additional VRAM at 4K with the High Quality addon. Close to 4 GB in rebuilt urban areas.

**Dependencies:**

- Requires **all** map DLCs: Going East!, Scandinavia, Vive la France!, Italia, Beyond the Baltic Sea, Iberia, Road to the Black Sea, Heart of Russia, West Balkans, Greece, Nordic Horizons
- ProMods High Quality Addon (recommended, optional download from promods.net)

---

### ProMods Middle East Addon 2.83

- **Version:** 2.83
- **Source:** [promods.net](https://promods.net) (bundled with ProMods download)
- **Category:** Maps

**Description:**
Official ProMods addon that extends the map into the Middle East. Covers Lebanon, Israel, Palestine, Jordan, parts of Syria, and the Sinai Peninsula. Adds cities such as Beirut, Tel Aviv, Jerusalem, Amman, and connecting highways through the region.

**Compatibility:**

- Known conflicts with: Project Palestine (has its own addon for this area)
- Required load order: Below all ProMods Europe files, above map connectors
- Required connectors: None for ProMods — designed as a direct addon

**Performance Impact:**

- FPS cost estimate: 3–5 FPS loss in dense urban areas
- VRAM usage notes: ~500 MB additional VRAM

**Dependencies:**

- ProMods Europe 2.83
- All map DLCs (same as ProMods)

---

### ProMods The Great Steppe 1.6.2

- **Version:** 1.6.2
- **Source:** [promods.net](https://promods.net) (separate download)
- **Category:** Maps

**Description:**
An official ProMods addon that extends the map east into the Kazakh and Russian steppe regions. Covers parts of Kazakhstan and southern Russia with vast open landscapes, long highways, and remote settlements. Connects to Road to Caucasus and RusMap via optional connectors.

**Compatibility:**

- Known conflicts with: Requires careful load order with other Russian-region maps
- Required load order: Below ProMods Europe and Middle East, above connectors
- Required connectors: Road to Caucasus + ProMods The Great Steppe RC v.2.1 for Road to Caucasus compatibility

**Performance Impact:**

- FPS cost estimate: 3–8 FPS loss (long draw distances over flat terrain)
- VRAM usage notes: ~600 MB additional VRAM

**Dependencies:**

- ProMods Europe 2.83
- All map DLCs (same as ProMods)

---

### RusMap 2.60

- **Version:** 2.60 (updated 20 June 2026)
- **Source:** [ets2.lt](https://ets2.lt/en/project-rusmap-2-60-update-20-06-2026/) (Download: modsfire.com)
- **Category:** Maps

**Description:**
A long-standing map mod covering the European part of Russia (Moscow, Leningrad, Tver, Murmansk, Volgograd, Saratov, and many more regions) and the Republic of Belarus (Minsk, Brest, Vitebsk, Gomel, and others). Over 60 Russian cities and 16 Belarusian cities are represented. The map is compatible with ProMods, Roextended, SibirMap, Southern Region, and Volga Map through dedicated connectors.

**Compatibility:**

- Known conflicts with: Standalone — no conflicts when used with the correct connector
- Required load order: Load order: `rusmap_model` → `rusmap_map` → connectors
- Required connectors: Promods-RusMap road connection, Hybrid Plus connector for multi-map combos

**Performance Impact:**

- FPS cost estimate: 3–10 FPS loss (heavy vegetation and snow areas in the north)
- VRAM usage notes: ~1.5 GB additional VRAM at 4K

**Dependencies:**

- All map DLCs recommended for full compatibility
- ProMods 2.83 (if used in combo)

---

### Roextended 5.2

- **Version:** 5.2
- **Source:** [roextended.ro](https://roextended.ro)
- **Category:** Maps

**Description:**
Roextended (ROEX) focuses on Romania, Bulgaria, Moldova, and the Black Sea region. It adds detailed recreations of cities, industrial zones, and roads in eastern Europe, with connections to ProMods and RusMap. The mod includes a launcher tool that generates a custom sector file for compatibility.

**Compatibility:**

- Known conflicts with: Requires connector for ProMods and RusMap combos
- Required load order: ROEX files load below ProMods, with the generated sector file highest
- Required connectors: Hybrid Plus 1-2 Road Connector v2.0, or the dedicated Promods-RusMap-ROEX connection

**Performance Impact:**

- FPS cost estimate: 3–8 FPS loss in built-up areas
- VRAM usage notes: ~800 MB additional VRAM

**Dependencies:**

- All map DLCs
- ProMods 2.83 and RusMap 2.60 (for combo usage)
- ROEX Launcher to generate sector file

---

### Poland Rebuilding 2.6.4

- **Version:** 2.6.4
- **Source:** [polandrebuilding.pl](https://polandrebuilding.pl/en/download/poland-rebuilding-2-6) (official download page) / [SCS Forum](https://forum.scssoft.com/viewtopic.php?t=242280)
- **Category:** Maps

**Description:**
A detailed rebuild of Poland that adds more cities, realistic road layouts, and improved scenery compared to the default SCS Poland. Integrates with ProMods seamlessly. Often included in big map combos alongside ProMods, RusMap, and Roextended.

**Compatibility:**

- Known conflicts with: Requires correct load order with ProMods
- Required load order: Below ProMods, above connectors
- Required connectors: Hybrid Plus 1-2 Road Connector v2.0 includes Poland Rebuilding support

**Performance Impact:**

- FPS cost estimate: 2–5 FPS loss
- VRAM usage notes: ~400 MB additional VRAM

**Dependencies:**

- ProMods 2.83
- All map DLCs

---

## Additional Map Mods

These mods add specific regions or rebuild existing ones. Not all are compatible with every combo — check the compatibility notes.

---

### Heart of Africa v1.60

- **Version:** v1.60 (updated July 2026)
- **Source:** [TruckyMods](https://truckymods.io/euro-truck-simulator-2/maps/heart-of-africa)
- **Category:** Maps

**Description:**
A standalone map mod that adds regions of West and Central Africa, including Gambia, Senegal, and Liberia. Features varied terrain types such as arid deserts, dense jungles, and coastal highways. A complete departure from European driving.

**Compatibility:**

- Known conflicts with: Can be used alongside ProMods combos — place as a standalone profile or at the very bottom of the load order
- Required load order: Bottom of load order (standalone sector)
- Required connectors: None

**Performance Impact:**

- FPS cost estimate: 2–5 FPS loss (less dense than European maps)
- VRAM usage notes: ~400 MB additional VRAM

**Dependencies:**

- All map DLCs

---

### Road to Caucasus v2.8

- **Version:** v2.8 (updated 6 July 2026)
- **Source:** [ets2.lt](https://ets2.lt/en/road-to-caucasus-v-2-8/) (Download: modsfire.com, 246 MB)
- **Category:** Maps

**Description:**
A scenic map that covers the Caucasus region, including parts of Georgia, Russia, and the surrounding territories. Features mountain passes, Black Sea coastal roads, and cities such as Vladikavkaz and Beslan. Has dedicated connectors for ProMods and The Great Steppe.

**Compatibility:**

- Known conflicts with: None with correct connectors
- Required load order: Below ProMods and Great Steppe, with connectors above
- Required connectors: Road to Caucasus + Promods RC 1.8 (for ProMods 2.83 / 1.60), Road to Caucasus + ProMods The Great Steppe RC v2.1

**Performance Impact:**

- FPS cost estimate: 3–6 FPS loss (mountain terrain with long viewsheds)
- VRAM usage notes: ~500 MB additional VRAM

**Dependencies:**

- All map DLCs
- ProMods 2.83 (if using ProMods connector)

---

### Iberia Rebuild

- **Version:** Ongoing (check mod page for latest)
- **Source:** [TruckyMods](https://truckymods.io/euro-truck-simulator-2/maps/iberia-rebuild)
- **Category:** Maps

**Description:**
Expands and remakes the Iberia DLC with new cities, reworked roads, and additional detail across Spain, Portugal, Andorra, and Gibraltar. Works as both a standalone enhancement and with ProMods via the dedicated "Iberia Promods Rework" version.

**Compatibility:**

- Known conflicts with: Portugal Rebuild (overlapping areas)
- Required load order: Above ProMods if using the ProMods version
- Required connectors: None

**Performance Impact:**

- FPS cost estimate: 3–8 FPS loss in rebuilt cities
- VRAM usage notes: ~600 MB additional VRAM

**Dependencies:**

- Iberia DLC
- ProMods 2.83 (for the ProMods-compatible version)

---

### Portugal Rebuild

- **Version:** v01
- **Source:** [TruckyMods](https://truckymods.io/euro-truck-simulator-2/maps/portugal-rebuild-v01)
- **Category:** Maps

**Description:**
A ProMods addon that recreates and improves Portugal with new logistics areas, real company branding, VTC companies, new cities, and new roads.

**Compatibility:**

- Known conflicts with: Iberia Rebuild (overlapping areas — choose one)
- Required load order: Below ProMods, above the ProMods Definition File
- Required connectors: None (works as a direct ProMods addon)

**Performance Impact:**

- FPS cost estimate: 2–5 FPS loss
- VRAM usage notes: ~300 MB additional VRAM

**Dependencies:**

- ProMods 2.83
- Iberia DLC

---

### Bulgaria in Focus

- **Version:** Latest (1.60 compatible)
- **Source:** [TruckyMods](https://truckymods.io/euro-truck-simulator-2/maps/bulgaria-in-focus)
- **Category:** Maps

**Description:**
A detailed enhancement of Bulgaria that adds new cities, roads, and scenery. Reworks the default SCS Bulgaria with more realistic road layouts and additional towns.

**Compatibility:**

- Known conflicts with: None reported
- Required load order: Below ProMods
- Required connectors: None

**Performance Impact:**

- FPS cost estimate: 2–4 FPS loss
- VRAM usage notes: ~200 MB additional VRAM

**Dependencies:**

- Road to the Black Sea DLC

---

### Project Russia

- **Version:** Latest (1.60 compatible)
- **Source:** [TruckyMods](https://truckymods.io/euro-truck-simulator-2/maps/project-russia)
- **Category:** Maps

**Description:**
A high-quality map of Central Russia with detailed cities, realistic road infrastructure, and scenic landscapes. Covers territories around Moscow and surrounding regions with attention to local architecture and road signage.

**Compatibility:**

- Known conflicts with: RusMap (overlapping areas — not recommended to use both)
- Required load order: Below ProMods
- Required connectors: None known

**Performance Impact:**

- FPS cost estimate: 3–6 FPS loss
- VRAM usage notes: ~500 MB additional VRAM

**Dependencies:**

- All map DLCs recommended

---

### Eurotunnel Refresh - A ProMods Addon v1.0

- **Version:** v1.0
- **Source:** [ets2.lt](https://ets2.lt/en/eurotunnel-refresh-a-promods-addon-v1-0/)
- **Category:** Maps (ProMods addon)

**Description:**
A ProMods addon that modernises and improves the Eurotunnel experience on both the UK and French sides of the Channel. Focuses on making one of the busiest border crossings in ETS2 feel more realistic and up to date while keeping the original ProMods style.

- Refreshed Eurotunnel terminals with improved road layout and scenery
- Updated and modernised signage and approach roads

**Compatibility:**
- Requires ProMods 2.83
- Place on top of all ProMods files in load order

**Performance Impact:** Negligible.

---

### El Enclaves ProMods Addon v1.60

- **Version:** v1.60
- **Source:** [ets2.lt](https://ets2.lt/en/el-enclaves-promods-addon-v1-60/)
- **Category:** Maps (ProMods addon)
- **Size:** 5 MB

**Description:**
A ProMods addon that adds the African territorial parts of Spain — Ceuta, Melilla, and Menorca Island — to the game map. Small but detailed expansion for players running ProMods.

**Compatibility:**
- Requires ProMods 2.83 and all map DLCs
- Place on top of all ProMods files in load order

**Performance Impact:** Negligible — very small map area.

---

## Connectors & Patches

Connectors are small `.scs` files that stitch two map mods together so roads line up and navigation works across the border. They are essential for any multi-map combo.

---

### Hybrid Plus 1-2 Road Connector v2.0

- **Version:** v2.0 (updated 29 June 2026)
- **Source:** [ets2.lt](https://ets2.lt/en/hybrid-plus-1-2-road-connector-v2-0/)
- **Category:** Map Patches

**Description:**
Road connector for the common ProMods + RusMap + Roextended + Poland Rebuilding combo. Two variants: Hybrid Plus 1 (excludes Middle East Addon) and Hybrid Plus 2 (includes Middle East Addon). Place above all four map files in the mod manager.

**Compatibility:**

- Game version: 1.60.x only
- Supports: Roextended 5.2, RusMap 2.60, ProMods 2.83, Poland Rebuilding 2.6.4, Middle East Addon 2.83

---

### Road to Caucasus + Promods RC 1.8

- **Version:** 1.8 (updated 20 June 2026)
- **Source:** [ets2.lt](https://ets2.lt/en/road-to-caucasus-promods-rc-1-8/)
- **Category:** Map Patches

**Description:**
Connects Road to Caucasus v2.8 to ProMods 2.83. Optimised for ETS2 1.60.

---

### Road to Caucasus + ProMods The Great Steppe RC v2.1

- **Version:** 2.1 (updated 20 June 2026)
- **Source:** [ets2.lt](https://ets2.lt/en/road-to-caucasus-promods-the-great-steppe-rc-v-2-1/)
- **Category:** Map Patches

**Description:**
Connects Road to Caucasus to ProMods The Great Steppe 1.6.2. Optimised for ETS2 1.60.

---

## Recommended Load Order

For a full map combo with ProMods, Middle East, RusMap, Roextended, and Poland Rebuilding:

```md
Top (Highest Priority)
─────────────────────
ProMods Definition File
ProMods High Quality Addon (optional)
ProMods Middle East Addon
RusMap Model
RusMap Map
Poland Rebuilding
Roextended (generated sector file)
Hybrid Plus Road Connector
Road to Caucasus + Connectors
ProMods Map Package
ProMods Media Package
ProMods Models 1
ProMods Models 2
ProMods Models 3
ProMods The Great Steppe
Bottom (Lowest Priority)
```

This order matches the standard convention used by the ProMods team and the Hybrid Plus connector. The definition file must be highest so it can define which DLC-dependent sectors are active. Model and media packages go lowest because they only supply assets.

---

## Performance Notes at 4K

Running 5+ map mods simultaneously at 3840 × 2160 is VRAM-intensive. With all maps above active:

- **VRAM usage:** 8–12 GB at 4K with scaling at 300–400%
- **FPS range:** 30–60 FPS depending on location (urban areas are heavier)
- **Loading times:** 3–5 minutes on an NVMe SSD; 8–15 minutes on a SATA SSD

The `r_buffer_page_size "100"` and `mm_max_tmp_buffers_size "1000"` settings from the configuration section are strongly recommended for any multi-map combo.

If performance is a concern, start with ProMods alone, then add RusMap and the connector, and only add Roextended and Poland Rebuilding if your system has VRAM headroom.
