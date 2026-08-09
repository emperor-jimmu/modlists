# Immersive Scale and World Feel

---

## Timescale And Calendar Adjustments
How quickly days pass, whether routine actions consume believable chunks of time, and season/calendar support.

### Baseline
- **Time Flies SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/39426)) — Grounded play loops without turning into abstract clock tuning.
- **Seasons of Skyrim SKSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/62861)) + **Turn of the Seasons** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/63623)) — **Locked seasonal baseline.** Full summer/autumn/winter/spring asset swaps. v1.0.8 (Jun 2026, actively maintained). Requires Seasons of Skyrim SKSE (62861); **Shrubs of Snow - Seasons of Skyrim SKSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/63463)) is highly recommended to cover winter assets missed by SoS. **Operational cost is owned by the seasonal LOD workflow** (4× DynDOLOD passes, 4× grass caches, seasonal terrain/object LOD — see → `Performance`/`Graphics - LOD`). Azurite III (locked weather baseline) is the season-driving layer.
- **Seasonal Calendar** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/18164)) — Companion for calendar readability now that the seasonal branch is baseline.

### Alternatives
- **[Extended Stay - Longer inn](https://www.nexusmods.com/skyrimspecialedition/mods/156)** — Optional longer-stay inn mechanic. Adopt only if the project leans into "living the world."
- **[Sleep Tight SE](https://www.nexusmods.com/skyrimspecialedition/mods/20680)** — NPC sleep schedule enforcement and sleepwear.
- **[Sleep Tight - NPCs wear underwear](https://www.nexusmods.com/skyrimspecialedition/mods/87132)** — NPC sleepwear variant without sleep schedule changes.

---

## Sleep And Bedtime Life
NPC-side sleep realism and downtime interaction — sleeping without dead-mannequin stillness, context-aware bed routines, and believable reactions for the "living the world" layer.

| Mod | Type | Notes |
|-----|------|-------|
| [Sleeping Expanded - Animations and NPC reactions](https://www.nexusmods.com/skyrimspecialedition/mods/59250) | Add-on | JaySerpa. NPC breathing/sleeping animations, ~100 fully-voiced woken-up reactions, context-aware bed enter/exit speeds (fast combat exit = no more dying while slowly getting up). v1.23 (Aug 2023), 15,444 endorsements. ESL, no vanilla edits. OAR baseline satisfies its DAR-based animations (OAR loads DAR folders). **Choose main file** (DAR-less only if OAR absent). |
| [Sleep Tight SE](https://www.nexusmods.com/skyrimspecialedition/mods/20680) | Alternative | NPC sleep-schedule enforcement + sleepwear (see `## Timescale` Alternatives). |

### Risks & Compatibility

- No cell or record conflicts (vanilla-free edits); verify the OAR-animation interplay with any other bed/keep animation mods in → `Animations`.
- Pairing with `Snores of Skyrim` (→ `Audio`) layers sleep ambience cleanly — no overlap.

---

## Travel Pacing And Carriage Fast Travel Rules
How much friction, structure, and world texture sits between major locations.

### Baseline
- **Carriage and Ferry Travel Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/8379)) — Improves vanilla public-travel layer. Verify 1.6.1170 compatibility (predates AE).
- **Carriage Drivers Are Alive** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/51260)) — Names, schedules, dialogue for carriage drivers.
- **Carriages and Stables Dialogue Bundle** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/79297)) — Bribes, rumors, destination chat. Stacks cleanly with above.

### Alternatives
- **Carriage Stops of Skyrim** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/10434)) — Broader route coverage.
- **Fast Travel Cost** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/20200)) — Economic pressure on map fast travel.
- **Journeyman - A Fast Travel Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/92220)) — Restricts fast travel unless a Travel Pack is crafted/purchased. SKSE plugin + ESP. Fits "living the world" without forcing no-fast-travel.
- **Detailed Carriages 2.0** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/89604)) — Unique redesigned look for every carriage, Hearthfire support, SMIM patch. Conflicts with the `Snazzy Diverse Carriages - BOS` baseline (→ `Textures & Meshes`) — choose one carriage visual identity. Compatible with Carriages and Stables Dialogue Bundle + Carriage Drivers Are Alive (baseline above).

---

## Horse Travel
Horse riding overhaul and mounted NPC transport — making horse travel feel modern and functional rather than the vanilla stiff-silhouette experience.

| Mod | Description | Notes |
|-----|-------------|-------|
| [HorsePower - Modernized Horse Riding](https://www.nexusmods.com/skyrimspecialedition/mods/169335) | **Baseline.** Total horse riding overhaul — directional animations, in-place turning, follow-up attacks, sliding fix, ragdoll. | Requires SKSE, Address Library, Animation Motion Revolution, Pandora/Nemesis, TDM. Compatible with Convenient Horses (load HorsePower below). |
| [RSE - Shoulder Or Saddle](https://www.nexusmods.com/skyrimspecialedition/mods/170232) | Pick up NPCs/corpses, carry on shoulder, secure to horse saddle for transport. RDR2-style dead-or-alive bounty hauling. | Requires OAR, Pandora/Nemesis. Compatible with all horse mods. Custom followers supported. |

---

## Encounter Spacing And Wilderness Feel
How busy, calm, or deliberately spaced wilderness travel feels between destinations.

### Baseline
- **Extended Encounters** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/44810)) — Broad wilderness and road activity, lightweight.

### Alternatives
- **Radiance Encounters** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/19720)) — World reactivity and consequences.
- **Immersive Patrols SE AE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/718)) — Faction-patrol route.

---

## Soundscape And Ambient Audio
What roads, settlements, wilderness, and interiors sound like during ordinary exploration.

### Baseline
- **Sounds of Skyrim Complete SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/8286)) — Roads, wilderness, dungeons, settlements in one exploration-facing project.

### Alternatives
- **Acoustic Space Improvement Fixes** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/78992)) — Interior ambience and reverb treatment.
- **Discipline-first** — Keep current sound stack if playtesting shows world already sounds readable.

---

## City Size, Outskirts, And Population Feel
How large, inhabited, and spatially convincing cities feel during ordinary play.

### Baseline
- **Spaghetti's Cities - AIO** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/84735)) — Denser, more inhabited without giant patch-management.

### Alternatives
- **Dawn of Skyrim (Director's Cut)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/9074)) — Stronger city-core expansion. Last updated June 2020.
- **JK's Skyrim** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/6289)) — Heavier all-in-one. Only if city transformation should become a loud identity pillar.

---

## Roadside Clutter, Ruins, And Landmark Density
Small-to-mid-scale worldspace texture between major destinations.

### Baseline
- **Ancient Land** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/22900)) — Static worldspace flavor and distant landmark presence.
- **Point The Way** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/352)) — Road guidance and signposting.
- **Ryn's Standing Stones** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/64256)) — Locked landmark baseline. Each stone becomes a unique environmental setpiece. World geometry only, no gameplay effects.
- **Haystacks - Mihail's Shards of Immersion** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/125021)) — Haystack clutter variants with retextured shovels/pitchforks. ESP (verify ESL flag).

### Alternatives
- **Interesting Roads** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/42749)) — Lighter roadside variety. Asset-only, low compatibility risk.
- **Giant Crab Shells - Mihail's Shards of Immersion** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/124681)) — Coastal scenery. ESL-flagged.
- **[Nordic Runestones](https://www.nexusmods.com/skyrimspecialedition/mods/32019)** — Optional Nordic runestone world-object additions.
- **[Place of Power](https://www.nexusmods.com/skyrimspecialedition/mods/6109)** — Optional standing-stone mesh/texture enhancement.
- **[Whiterun Horse Statues](https://www.nexusmods.com/skyrimspecialedition/mods/51417)** — Cosmetic Whiterun landmark additions.
- **[Solitude Statuary](https://www.nexusmods.com/skyrimspecialedition/mods/94526)** — Cosmetic Solitude landmark additions.
- **[s6o6t LORE - Mundus Stones](https://www.nexusmods.com/skyrimspecialedition/mods/51191)** — Mundus standing-stone lore expansion.
- **[Immersive Laundry](https://www.nexusmods.com/skyrimspecialedition/mods/2011)** — Hanging laundry lines in cities and towns. Immersion staple.
- **[Immersive Laundry - Animated](https://www.nexusmods.com/skyrimspecialedition/mods/92814)** — Adds animation to the laundry lines. Install after Immersive Laundry.
- **[Immersive Laundry Improvement ILIM](https://www.nexusmods.com/skyrimspecialedition/mods/20346)** — High-quality laundry texture replacer by Pfuscher. Install after Immersive Laundry.
- **[Immersive Laundry - Patches for Multiple City Mods](https://www.nexusmods.com/skyrimspecialedition/mods/42423)** — Compatibility patches for city overhaul mods. Install after Immersive Laundry and city mods.
- **[Shores of Skyrim — BOS](https://www.nexusmods.com/skyrimspecialedition/mods/140081)** — Shoreline overhaul adding rocks, driftwood, and debris to lake, river, and ocean shores. BOS-based, no cell-record edits.

---

## Wildlife And Creature Ecology
How varied and biologically alive wilderness travel feels.

### Baseline
- **Animallica SE - Skyrim Wildlife Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/20456)) — More biologically varied during travel.
- **Butterflies Land True** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/29434)) — Insects land on surfaces. No scripts, ESL-flagged, ~1 KB.

### Alternatives
- **One With Nature** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/13343)) — Creature relationship tuning. Script-heavy — verify AE compatibility.
- **Savage Skyrim** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/37768)) — Heavier danger-and-behavior.
- **Frogs - Mihail** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/120998)) — 4 frog variants. ESL-flagged.
- **[Wearable Lanterns](https://www.nexusmods.com/skyrimspecialedition/mods/7560)** — Optional wearable lantern mechanic for night exploration.

---

## Road Network And Surface Overhaul
Roads as built infrastructure at mesh/geometry level (separate from surface texture ownership in → `Graphics`).

### Baseline
- **Blended Roads - Light Plugin (ESL)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/171554)) — Locked baseline. Seamless road-to-terrain blending. No worldspace edits, no patch requirements.
- **Interesting Roads** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/42749)) — Roadside character (barrels, carts, signs). Asset-only.
- **Point The Way** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/352)) — Navigational signposting at junctions.

### Risks & Compatibility
- **Northern Roads** was evaluated and rejected due to patch burden at this modlist's complexity level. **Northern Roads - Clutters Only** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/126175)) is a lighter variant with only roadside clutter — re-evaluate if the full Northern Roads patch burden remains too high.

---

## Environmental Atmosphere: Wind And Dynamic Effects
Weather-aware wind physics, dynamic cloth, and airborne particles for physical world-layer motion.

| Mod | Notes |
| --- | --- |
| [Dynamic Wind Framework - SKSE Plugin](https://www.nexusmods.com/skyrimspecialedition/mods/177023) | Infrastructure baseline. |
| [Dynamic Wind - Skyrim](https://www.nexusmods.com/skyrimspecialedition/mods/177024) | Required data companion with weather/location profiles. |
| [Particle Wind - SKSE Plugin](https://www.nexusmods.com/skyrimspecialedition/mods/174812) | Dust, leaves, snow, ash respond to wind direction. |
| [Realistic Boat Bobbing SE](https://www.nexusmods.com/skyrimspecialedition/mods/26080) + [BOS Edition](https://www.nexusmods.com/skyrimspecialedition/mods/88885) | Boat bobbing with BOS mesh swap support. |
| [R.A.S.S. - Rain Ash And Snow Shaders](https://www.nexusmods.com/skyrimspecialedition/mods/22745) | Visible rain droplets, snow accumulation, ash/frost shaders on player/NPCs. 33K+ endorsements. |
| [Dynamic Wetness](https://www.nexusmods.com/skyrimspecialedition/mods/158207) | SKSE plugin — character wetness VFX (soak/dry gloss on skin, hair, armor, weapons) from swimming, rain, and snow. Roof/heat-source detection, NPC support, PBR-aware. 1.1K endorsements, v1.5.0a. |
| [Animated Icebergs](https://www.nexusmods.com/skyrimspecialedition/mods/121420) | Drifting iceberg meshes in northern waters. |
| [Animated Ice Floes](https://www.nexusmods.com/skyrimspecialedition/mods/90634) | Animated ice floe meshes in cold regions. |
| [Nocturnal Moths](https://www.nexusmods.com/skyrimspecialedition/mods/68288) | Moths flutter around exterior lanterns at night (10 PM–4 AM, MCM-tunable). Requires BOS (baseline) + [Lanterns of Skyrim II patch](https://www.nexusmods.com/skyrimspecialedition/mods/68288?tab=files) (road/settlement lantern layer is LoS II + CS Lantern Lights).|
| [Ships On The Horizon](https://www.nexusmods.com/skyrimspecialedition/mods/79034) | Ships visible offshore in the Sea of Ghosts near Solitude, Raven Rock, and Tel Mithryn. Animated version. Fits the living-coast world-feel; animated ships and dock layer are in → `World Content` POI. |

### OIF Ecosystem — Physics-Based Interactions & Destruction

| Mod | Notes |
| --- | --- |
| [Dynamic Inn Fireplace - OIF](https://www.nexusmods.com/skyrimspecialedition/mods/155492) | Physics-enabled inn fireplace embers, smoke, and debris via OIF. Adds ambient fire life to interiors. |
| [No Fire During The Rain](https://www.nexusmods.com/skyrimspecialedition/mods/161369) | Exterior campfires and braziers are extinguished during rain/storms. Requires OIF. |
| [Release The Soul - OIF](https://www.nexusmods.com/skyrimspecialedition/mods/149693) | Break filled soul gems to release the trapped soul. Requires OIF. No conflict with the soul-gem retexture/description stack. |
| [Burn Those Insects - OIF](https://www.nexusmods.com/skyrimspecialedition/mods/180747) | Burn frostbite spider and chaurus egg sacs to ash. Requires OIF. |
| [Stalactite Falls - OIF](https://www.nexusmods.com/skyrimspecialedition/mods/159798) | Shoot stalactites to drop them on enemies below. Requires OIF. Dungeon-hazard interaction. |

### Risks & Compatibility
- **Actor wetness stack + CS coexistence:** CS Wetness Effects handles terrain/objects; R.A.S.S. (droplets/frost/ash) and Dynamic Wetness (wet gloss, explicitly CS-compatible — "effects stack/merge with CS", TruePBR support in v1.4.4+) handle actor surfaces. All three are designed to coexist — verify in testing.
- OIF-based interactions depend on the OIF framework being installed and stable in the core library stack.

---

## Night Darkness And Visibility Balance
| Mod | Notes |
| --- | --- |
| Darkness baseline from the weather mod and CS pair selected in → `Graphics` | Base darkness level. |
| [Simply Darker Nights](https://www.nexusmods.com/skyrimspecialedition/mods/14269) | Simple image-space overlay. Verify it's not redundant before adding. |
| [Lanterns of Skyrim II](https://www.nexusmods.com/skyrimspecialedition/mods/30817) | Road and settlement exterior lantern placement. FOMOD patch hub covers ~30-50 patches. |
| [CS Lantern Lights - Lanterns of Skyrim II](https://www.nexusmods.com/skyrimspecialedition/mods/179964) | CS particle lights for LoS II. Install after LoS II. |
| [Simple Wearable Lanterns - Remastered](https://www.nexusmods.com/skyrimspecialedition/mods/132196) | Preferred carried-visibility branch. Modern, lightweight, no SKSE. |

| Mod | Notes |
| --- | --- |
| [Torches Candlelight and Lanterns](https://www.nexusmods.com/skyrimspecialedition/mods/162694) | Physics-equipped lanterns, NPC distribution. Requires BOS, MCM Helper. |
| [Realistic Usable Lanterns](https://www.nexusmods.com/skyrimspecialedition/mods/110563) | Finite candles as consumable resource. |
| [Handheld Lanterns - HDT-SMP](https://www.nexusmods.com/skyrimspecialedition/mods/135973) | Physics-equipped with sway. Requires FSMP. |
| [Dynamic Torches NG - OIF](https://www.nexusmods.com/skyrimspecialedition/mods/155838) | Torch fire reacts to movement, collisions, and wind via OIF. Requires OIF framework. |

---

## NPC Dialogue Immersion
Market trader and ambient NPC dialogue variety — making recurring NPC interactions feel less repetitive.

| Mod | Notes |
| --- | --- |
| [Shouts of Stallholders](https://www.nexusmods.com/skyrimspecialedition/mods/139025) | Adds varied voiced lines to vanilla market stall sellers (and mod-added NPCs with vanilla voice types). Uses SPID for NPC exclusion. AI-Generated Content tagged. Safe to install/uninstall mid-game. May be suppressed by idle-comment-suppressing mods. |
| [NPCs React To Fire](https://www.nexusmods.com/skyrimspecialedition/mods/148183) | NPCs comment/react when fires start or spread nearby (fire-related ambient lines). Script-free; requires SKSE64 + Address Library. Safe mid-save. |

---

## Fire And Camp Interaction
Interactive campfire behavior for survival and immersion — sitting, cooking, resting at fires.

| Mod | Notes |
| --- | --- |
| [Usable Campfires](https://www.nexusmods.com/skyrimspecialedition/mods/140915) | BOS swaps worldspaces into interactive campfire furniture (cook, light, rest). Requires BOS (baseline). Optional Unlit / Rest at Campfire integration. |
| [Campfire Animations](https://www.nexusmods.com/skyrimspecialedition/mods/112322) | OAR-based animations for campfire actions (add fuel, cook, eat at fire). Requires OAR, FormList Manipulator, MCM Helper. Campfire (Chesko) no longer hard requirement — evaluate against Starfrost-frame cooking. |

---

## Activation Text
### Baseline
- **Roleplaying In Skyrim - Immersive Activators** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/149908)) — Descriptive activation text (e.g., "Read Book" instead of "Activate"), hides NPC names until interaction (toggleable). 8KB, no scripts, no SKSE.

---

## Open Research

Open research for the world-feel stack is tracked in `TODO.md`.
