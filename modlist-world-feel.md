# Immersive Scale and World Feel

**MO2 Separator:** `World Feel` → `World Feel - Timescale & Travel`, `World Feel - Soundscapes`, `World Feel - Nights & Wildlife`, `World Feel - Cities & Landmarks`

## Timescale And Calendar Adjustments → `World Feel - Timescale & Travel`

This subsection owns how quickly days pass, whether routine actions consume believable chunks of time, and how clearly the calendar or season layer supports the feeling that Skyrim has real passing days. It should strengthen day rhythm without turning into schedule micromanagement.

### Baseline

- **Time Flies SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/39426)) — Makes ordinary play loops feel more grounded without turning the subsection into abstract clock tuning. → `World Feel - Timescale & Travel`
- **Seasonal Calendar** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/18164)) — Narrow companion if the final weather-and-season direction makes explicit calendar readability worthwhile. → `World Feel - Timescale & Travel`
- **Seasons of Skyrim SKSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/62861)) + **Turn of the Seasons** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/63623)) — High-commitment seasonal-world branch. Mature framework (v1.8.6, last updated June 2025, AE 1.6.1130+ compatible) with dramatic seasonal world changes. Cost: 4× DynDOLOD generation passes, 4× grass caches, and a meaningful patch footprint (Lux, grass stack, tree mods). Only adopt if the project owns that LOD-generation workflow — if the list already runs DynDOLOD for 4K, the additional passes are the main extra cost. → `World Feel - Timescale & Travel`

### Alternatives

- **Dynamic Timescale - Remade** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/141531)) — Environment-aware time shifts instead of direct action-time costs. Weaker grounding for routine actions than the action-time route. → `World Feel - Timescale & Travel`

### Notes

- Slowing time can make ordinary play feel dutiful instead of immersive.
- Using multiple pacing systems at once makes it harder to understand why time feels right or wrong.
- `Seasons of Skyrim SKSE` multiplies LOD generation work and interacts with tree overhauls, grass mods, and road mods. Not a casual add-on; it is a workflow commitment. → `World Feel - Timescale & Travel`
- Preserve boundaries with later travel rules, survival pacing, night visibility, and graphics-side weather decisions.

## Travel Pacing And Carriage Fast Travel Rules → `World Feel - Timescale & Travel`

This subsection owns how much friction, structure, and world texture sits between major locations once the player is ready to move across Skyrim. It should decide whether the list strengthens vanilla carriage and ferry travel, expands stop coverage, or keeps map fast travel available but costly.

### Baseline

- **Carriage and Ferry Travel Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/8379)) — Improves the vanilla public-travel layer directly without forcing a harsher fast-travel philosophy. → `World Feel - Timescale & Travel`
- **Carriage Drivers Are Alive** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/51260)) — Carriage-driver character layer: names, schedules, and dialogue make the carriage loop feel inhabited rather than mechanical. Complements the overhaul. → `World Feel - Timescale & Travel`
- **Carriages and Stables Dialogue Bundle** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/79297)) — Dialogue companion adding bribes, rumors, and destination chat. Stacks cleanly with `Carriage Drivers Are Alive` (one adds character records, the other adds dialogue). → `World Feel - Timescale & Travel`

### Alternatives

- **Carriage Stops of Skyrim** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/10434)) — Route-coverage expansion if travel infrastructure itself should feel broader. More infrastructure but less direct improvement to the existing layer. → `World Feel - Timescale & Travel`
- **Fast Travel Cost** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/20200)) — Economic-pressure branch if map fast travel should remain available but no longer consequence-free. Solves a cost problem rather than a travel-structure problem. → `World Feel - Timescale & Travel`
- **Campfire** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/667)) — Complementary camping-and-rest branch affecting travel pacing through campsite planning and field cooking. Already in the expanded-systems survival conversation; relevant here as a travel-pacing tool regardless of which survival framework is selected. → `World Feel - Timescale & Travel`
- **Journeyman - A Fast Travel Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/92220)) — Fast-travel friction layer by Simon Magus. Restricts fast travel unless the player has crafted or purchased a Travel Pack (leather + leather strips + firewood + torch). A compromise between full fast-travel removal (survival-mode approach) and unrestricted map-clicking — travel remains possible but requires preparation. Built-in support for COCKS and I4; optional Survival Mode-only mode. Fits the "living the world" pillar without forcing a no-fast-travel commitment. → `World Feel - Timescale & Travel`
    - **Main file:** `Journeyman` (the SKSE plugin + ESP). One main file; no optional variants needed.

### Notes

- Travel can become more expensive or restricted without becoming more interesting.
- Stacking multiple travel-policy mods makes it hard to tell which one is really setting pace.
- Gold pressure can be used to solve a route-coverage problem that actually needs better travel infrastructure.
- `Carriage and Ferry Travel Overhaul` last updated November 2020; verify AE 1.6.1170 compatibility as the mod predates the Anniversary Edition.
- Keep this subsection focused on travel structure and carriage/ferry policy rather than survival maintenance from `modlist-expanded-systems.md` or map ownership from `modlist-ui.md`.

## Encounter Spacing And Wilderness Feel → `World Feel - Nights & Wildlife`

This subsection owns how busy, calm, or deliberately spaced wilderness travel feels between destinations. It should decide whether roads and wilds feel more alive through additional encounters, reactive events, or larger faction-patrol presence without drifting into wildlife ecology or roadside clutter.

### Baseline

- **Extended Encounters** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/44810)) — Broad wilderness and road activity while staying lightweight and centered on ordinary travel. → `World Feel - Nights & Wildlife`

### Alternatives

- **Radiance Encounters** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/19720)) — Reactive world-event route if encounter texture should lean more into world reactivity and consequences. → `World Feel - Nights & Wildlife`
- **Immersive Patrols SE AE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/718)) — Faction-patrol route if civil-war-adjacent movement should become a much more visible part of wilderness travel. → `World Feel - Nights & Wildlife`

### Notes

- Normal travel can become a stream of interruptions instead of a better-paced wilderness experience.
- Stacking several encounter systems makes the world feel busier than intended.
- Faction patrols can be used to solve an ambient-spacing problem they were never meant to answer.
- Keep this subsection separate from wildlife ecology, roadside clutter, and broader survival friction.

## Soundscape And Ambient Audio → `World Feel - Soundscapes`

This subsection owns the ambient sound texture of the world: what roads, settlements, wilderness, and interiors sound like during ordinary exploration. It should make the world feel sonically alive without turning every space into constant audio clutter or absorbing the broader audio section.

### Baseline

- **Sounds of Skyrim Complete SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/8286)) — Directly targets roads, wilderness, dungeons, and settled spaces as part of one exploration-facing ambient project. → `World Feel - Soundscapes`

### Alternatives

- **Acoustic Space Improvement Fixes** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/78992)) — Narrower comparison if the real weakness is inconsistent interior ambience and reverb treatment rather than world quietness. → `World Feel - Soundscapes`
- Discipline-first: keep the current sound stack restrained if playtesting shows the world already sounds readable enough. → `World Feel - Soundscapes`

### Notes

- More sounds can produce a noisier world instead of a better soundscape.
- A narrow interior-acoustics fix can be chosen when the real problem is a flat outdoor soundscape, or vice versa.
- Keep broader audio-overhaul ownership out of this section — that belongs in `modlist-audio.md`.

## City Size, Outskirts, And Population Feel → `World Feel - Cities & Landmarks`

This subsection owns how large, inhabited, and spatially convincing cities feel during ordinary play: arriving at gates, moving through main streets, and judging whether settlements feel too small, too empty, or too overbuilt. It should stay separate from roadside clutter, later world-content population additions, and the graphics-side city or road compatibility burden already tracked in [`modlist-graphics-shaders.md`](modlist-graphics-shaders.md).

### Baseline

- **Spaghetti's Cities - AIO** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/84735)) — Makes cities feel denser and more inhabited without immediately turning into a giant patch-management project. → `World Feel - Cities & Landmarks`

### Alternatives

- **Dawn of Skyrim (Director's Cut) SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/9074)) — Stronger city-core expansion if major holds still feel too thin. Last updated June 2020; narrower compatibility with newer city and worldspace mods. → `World Feel - Cities & Landmarks`
- **JK's Skyrim** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/6289)) — Heavier all-in-one transformation. Only if the list truly wants city transformation to become a much louder identity pillar and is prepared for the broader compatibility pressure. → `World Feel - Cities & Landmarks`

### Notes

- A large city overhaul can be chosen because it is famous rather than because the cities actually need that much transformation.
- A lighter density pass may solve the real problem more cleanly than a heavier worldspace edit.
- Compatibility cost with roads, lighting, snow, trees, and LOD can be underestimated.
- Keep broad population additions for later world-content or NPC ownership instead of solving emptiness only by stacking more residents here.

## Roadside Clutter, Ruins, And Landmark Density → `World Feel - Cities & Landmarks`

This subsection owns the small-to-mid-scale worldspace texture between major destinations: roadside objects, old ruins, ancient remnants, signposts, and minor landmark presence. It should make the world feel richer to cross without collapsing into city overhauls, wildlife ecology, or broad world-content expansion.

### Baseline

- **Ancient Land** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/22900)) — Adds visible static worldspace flavor and distant landmark presence without turning into a heavy settlement-overhaul or content-expansion project. → `World Feel - Cities & Landmarks`
- **Point The Way** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/352)) — Road guidance and signposting for clearer travel legibility. → `World Feel - Cities & Landmarks`
- **Ryn's Standing Stones** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/64256)) — Locked standing-stone landmark baseline. Each of the 13 stones becomes a unique environmental setpiece with custom meshes, landscape work, and environmental storytelling — compatible with any standing-stone perk overhaul (world geometry only, no gameplay effects). → `World Feel - Cities & Landmarks`

### Alternatives

- **Interesting Roads** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/42749)) — Lighter roadside variety if the world mainly needs more visual variety rather than overt ancient-landmark identity. Last updated November 2020; asset-only, low compatibility risk. → `World Feel - Cities & Landmarks`
- **Giant Crab Shells - Mihail's Shards of Immersion** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/124681)) — Roadside-beauty addition. Ancient giant crab shells along the northern coast and Solstheim with loot/enemy encounters. Fits the "big, awe-inspiring world" pillar. 789 endorsements, ESL-flagged. → `World Feel - Cities & Landmarks`

### Notes

- Weak travel texture can be over-solved with too many worldspace edits at once.
- Dramatic screenshots can make a broad landmark mod look more necessary than it is in normal play.
- Compatibility pressure with roads, landscape, snow, lighting, and LOD can climb quickly.
- Keep broader new-settlement, quest-location, or population additions for later world-content ownership.

## Wildlife And Creature Ecology → `World Feel - Nights & Wildlife`

This subsection owns the living-animal side of world feel: how varied wildlife is, how predators and prey feel in the landscape, and whether creatures contribute to a believable ecological texture rather than existing only as random combat spawns. It should make wilderness travel feel biologically alive without collapsing into creature-animation ownership, encounter-density spam, or broader NPC and world-content scope.

### Baseline

- **Animallica SE - Skyrim Wildlife Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/20456)) — Makes Skyrim feel more biologically varied and alive during ordinary travel without assuming the subsection should become primarily about harsher combat behavior. → `World Feel - Nights & Wildlife`
- **Butterflies Land True** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/29434)) — Lightweight insect-behavior layer. Makes butterflies land on surfaces rather than hovering indefinitely. No scripts, ESL-flagged, ~1 KB. → `World Feel - Nights & Wildlife`

### Alternatives

- **One With Nature - Dynamic Animals and Creatures SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/13343)) — Creature relationship tuning and ecological feel rather than raw wildlife variety. Last updated September 2019; script-heavy — verify AE compatibility and confirm no save-bloat risk before adopting. → `World Feel - Nights & Wildlife`
- **Savage Skyrim** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/37768)) — Heavier danger-and-behavior route. Only if the list truly wants wilderness creatures to become much more threatening as part of the world-feel identity. → `World Feel - Nights & Wildlife`
- **Frogs - Mihail Monsters and Animals** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/120998)) — Lightweight creature ambient addition. 4 frog variants, new food item (frog legs), ESL-flagged, 2,986 endorsements. → `World Feel - Nights & Wildlife`

### Notes

- Weak wilderness feel can be over-solved by piling on more creature content than the world actually needs.
- Ecology tuning can drift into encounter-density or combat-balance ownership.
- Heavier danger-oriented creature behavior can overpower the calmer ecological texture this subsection is supposed to judge.
- Keep creature-animation ownership in `modlist-animations.md`, encounter-density ownership earlier in this section, and broader world-content additions in later sections.

## Road Network And Surface Overhaul → `World Feel - Cities & Landmarks`

This subsection owns the physical road network: whether the roads themselves feel like built infrastructure or just a painted texture on the ground. It is separate from roadside landmark density and from road-texture ownership in [`modlist-graphics-shaders.md`](modlist-graphics-shaders.md). This section is about road presentation at the mesh and geometry level, not surface materials.

### Baseline

- **Blended Roads - Light Plugin (ESL)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/171554)) — Locked baseline. Seamless road-to-terrain texture blending with no worldspace edits, no patch requirements, and no grass-cache regeneration. Best visual improvement-to-complexity ratio for this stack. → `World Feel - Cities & Landmarks`
- **Interesting Roads** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/42749)) — Lightweight roadside character addition (barrels, carts, signs). Asset-only, no patching required. → `World Feel - Cities & Landmarks`
- **Point The Way** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/352)) — Navigational signposting at junctions. Asset-only, no patching required. → `World Feel - Cities & Landmarks`

### Alternatives

- Discipline-first: let [`modlist-graphics-shaders.md`](modlist-graphics-shaders.md) texture replacers carry all road visual improvement with no extra geometry or object additions. → `World Feel - Cities & Landmarks`

### Notes

- `Blended Roads - Light Plugin` is a visual improvement, not a road geometry overhaul. Roads will not read as deliberately constructed infrastructure the way authored road meshes would achieve. → `World Feel - Cities & Landmarks`
- Roadside object mods (`Interesting Roads`, `Point The Way`) stack additively with city overhauls but may clip with mod-added structures near road edges. Visual concern, not gameplay. → `World Feel - Cities & Landmarks`
- **Heavier option rejected:** `Northern Roads` (authored road meshes, full network overhaul) was evaluated and rejected due to the patch burden at this modlist's complexity level — the official patch collection alone covers six major mods, and every new content mod that touches roads creates another unresolved conflict. If the project later decides it wants authored road geometry, adopting it retroactively requires re-generating grass caches, adding the full patch collection, and resolving any new content mod conflicts that have accumulated since the lock-in. → `World Feel - Cities & Landmarks`
- Road surface texture quality is still owned by [`modlist-graphics-shaders.md`](modlist-graphics-shaders.md) (`Blended Roads` handles blending, not surface material). → `World Feel - Cities & Landmarks`

## Environmental Atmosphere: Wind And Dynamic Effects → `World Feel - Soundscapes`

This subsection owns how wind, atmospheric movement, and dynamic environmental effects make the world feel physically alive during ordinary exploration. It should add perceptible world-layer motion — wind through trees and grass, dynamic cloth physics, and airborne particle behavior — without collapsing into weather-system ownership or graphics-side shader territory.

### Baseline

- **Dynamic Wind Framework - SKSE Plugin** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/177023)) — Infrastructure baseline. Enables weather-aware wind physics for trees, grass, and environmental elements. Requires Address Library for SKSE Plugins (already in the foundation layer). → `World Feel - Soundscapes`
- **Dynamic Wind - Skyrim** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/177024)) — Required data companion. Provides Skyrim-specific wind profiles tied to weather and location cells. → `World Feel - Soundscapes`
- **Particle Wind - SKSE Plugin** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/174812)) — Particle-level companion. Makes dust, leaves, snow, and ash particles respond to wind direction in real time. By the same author as Dynamic Wind Framework; integration expected to be clean. → `World Feel - Soundscapes`
- **Realistic Boat Bobbing SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/26080)) — Optional water-surface companion. Boats bob with idle animations that were shipped but never enabled in vanilla. Purely cosmetic. → `World Feel - Soundscapes`
- **Realistic Boat Bobbing SE - BOS Edition** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/88885)) — Extends boat-bobbing to mod-added boats. Requires `Base Object Swapper` and the base mod. → `World Feel - Soundscapes`
- **R.A.S.S. - Rain Ash And Snow Shaders** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/22745)) — Optional environmental-visual companion. Applies visible rain droplets, snow accumulation, ash particles, and frost shaders to player and NPCs during appropriate weather. Visual-only, no gameplay changes. 33K+ endorsements. → `World Feel - Soundscapes`

### Notes

- **R.A.S.S. + Community Shaders coexistence:** `Community Shaders` includes its own `Wetness Effects` module. R.A.S.S. applies droplets to actor surfaces; CS Wetness applies environmental wetness to terrain and objects, so they should coexist without visual conflicts. Verify in testing that the combined output does not create double-wetness artifacts or performance issues. If conflicts arise, disable CS Wetness Effects or R.A.S.S. accordingly. → `World Feel - Soundscapes`
- Dynamic wind is a visual-enhancement layer, not a gameplay system. If performance is a concern, it is the easiest subsection to skip.
- Verify the framework works cleanly with the chosen tree mod, grass stack, and ENB/community shader before locking. Last updated May 2026.
- Keep this subsection separate from broader weather-system ownership (belongs in [`modlist-graphics-shaders.md`](modlist-graphics-shaders.md)'s Weather and Lighting subsection) and from graphics-side cloth physics (belongs in [`modlist-graphics-shaders.md`](modlist-graphics-shaders.md)'s physics decisions).

## Night Darkness And Visibility Balance → `World Feel - Nights & Wildlife`

This subsection owns how dark Skyrim nights should feel during ordinary travel and what kind of visibility support still keeps that darkness readable rather than annoying. The goal is to make nighttime travel feel more consequential and atmospheric without collapsing into broader weather, lighting, or survival-overhaul ownership handled elsewhere.

### Baseline

- **Weather/shader darkness** — Darkness baseline comes from the weather mod and ENB/Community Shaders pair selected in [`modlist-graphics-shaders.md`](modlist-graphics-shaders.md) first. If nights still need more punch after that stack is locked, add **Simply Darker Nights (SSE)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/14269)) as a simple image-space overlay, but verify it is not redundant. → `World Feel - Nights & Wildlife`
- **Lux Via** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/63588)) — Modern world-lighting baseline for road and travel path readability at night. Actively maintained (v2.2, February 2025), large patch ecosystem, integrates with the broader Lux family. The 2016-era `Lanterns of Skyrim SE` and 2017-era `CLARALUX SSE` are functionally superseded. → `World Feel - Nights & Wildlife`
- **Simple Wearable Lanterns - Remastered** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/132196)) — Preferred carried-visibility branch. Modern, lightweight, no SKSE requirement, covers the basic use case without feature creep. → `World Feel - Nights & Wildlife`

### Alternatives

- **Torches Candlelight and Lanterns** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/162694)) — Full-featured alternative if the list wants physics-equipped lanterns, NPC distribution, and hotkey-driven hand/hip switching. Requires BOS and MCM Helper — heavier dependency. HDT-SMP variants require FSMP and may have performance cost on lower-end systems. → `World Feel - Nights & Wildlife`
- **Realistic Usable Lanterns** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/110563)) — Survival-oriented alternative if finite candles as a consumable resource is preferred over unlimited magic light. Lightweight, no SKSE. → `World Feel - Nights & Wildlife`
- **Handheld Lanterns - HDT-SMP** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/135973)) — Physics-equipped hand lantern with HDT-SMP chain/cloth physics. Equippable lantern that sways naturally with player movement, casts real-time shadows, and supports multiple lantern styles. Requires FSMP (already in the animation stack). Adds a visually striking carried-light option that feels more physical than static lantern models. → `World Feel - Nights & Wildlife`
    - **Main file:** `Handheld Lanterns - HDT-SMP` (FOMOD installer). Choose your preferred lantern style and physics intensity during installation.

### Notes

- Weak night mood can trigger stacking several visibility systems at once and losing control of the overall night identity.
- Nights can be made darker in theory but then undermined with so much added light support that the mood barely changes.
- A carried-light solution can become a constant crutch instead of a deliberate travel tool.
- `Lux Via` is a worldspace-editing mod requiring patches for city overhauls, road mods, and new-worldspace content. Factor the patch-maintenance cost into the budget. → `World Feel - Nights & Wildlife`
- Keep this subsection about nighttime feel and travel readability rather than generic display calibration, graphics-lighting philosophy, or survival maintenance.

## Activation Text → `World Feel - Timescale & Travel` And Interaction Immersion

This subsection owns whether the activation prompt text and NPC identification feel immersive and descriptive rather than generic. It should make ordinary interactions read as specific actions instead of a blanket "Activate" label, without introducing gameplay systems or survival mechanics.

### Baseline

- **Roleplaying In Skyrim - Immersive Activators** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/149908)) — Optional interaction-immersion layer. Extremely lightweight (8KB, no ongoing scripts, no SKSE), replaces generic activation prompts with descriptive text (e.g., "Read Book" instead of "Activate"), and hides NPC names until interaction (toggleable via MCM). Compatible with any mod that does not also change activation text. → `World Feel - Timescale & Travel`

### Notes

- Hiding NPC names until interaction may frustrate players who rely on visible names for quest targets or dialogue choices. The MCM toggle mitigates this.
- Any other mod that changes activation text will conflict. Verify no other list entry duplicates this function.

## Candidate TODO Additions

### Timescale & Travel → `World Feel - Timescale & Travel`

- `Extended Stay - Longer inn` — inn stay duration extension → `World Feel - Timescale & Travel`
- `Sleep Tight SE` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/20680>) — NPCs follow sleep schedules and wear sleepwear at night, reinforcing believable daily routines → `World Feel - Timescale & Travel`
- `Sleep Tight - NPCs wear underwear or lingerie` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/87132>) — NPCs wear underwear beneath their clothes, adding immersion when clothes are removed or in sleep situations. CBBE 3BA and HIMBO. → `World Feel - Timescale & Travel`

### Nights & Wildlife → `World Feel - Nights & Wildlife`

- `Wearable Lanterns` — carried lantern (compare to `Simple Wearable Lanterns - Remastered` already listed below) → `World Feel - Nights & Wildlife`

### Cities & Landmarks → `World Feel - Cities & Landmarks`

- `Nordic Runestones (?)` — runestone world objects → `World Feel - Cities & Landmarks`
- `Place of Power (?)` — standing stone visual overhaul → `World Feel - Cities & Landmarks`
- `Whiterun Horse Statues` — Whiterun landmark horse statues → `World Feel - Cities & Landmarks`
- `Solitude Statuary` — Solitude statue/decoration objects → `World Feel - Cities & Landmarks`
- `s6o6t LORE - Mundus Stones` — standing stone 3D replacer → `World Feel - Cities & Landmarks`
- `Northern Roads - Clutters Only My Version` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/126175>) — Northern Roads clutter-only variant → `World Feel - Cities & Landmarks`
