# Immersive Scale and World Feel

**MO2 Separator:** `World Feel` → `World Feel - Timescale & Travel`, `World Feel - Soundscapes`, `World Feel - Nights & Wildlife`, `World Feel - Cities & Landmarks`

## Timescale And Calendar Adjustments → `World Feel - Timescale & Travel`

### Core Idea

- This subsection owns how quickly days pass, whether routine actions consume believable chunks of time, and how clearly the calendar or season layer supports the feeling that Skyrim has real passing days.
- It should strengthen day rhythm without turning the section into schedule micromanagement.

### Options

- Action-time route: `Time Flies SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/39426> → `World Feel - Timescale & Travel`
- Dynamic-timescale route: `Dynamic Timescale - Remade` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/141531> → `World Feel - Timescale & Travel`
- Seasonal-calendar route: `Seasonal Calendar (for seasonal mods)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/18164> → `World Feel - Timescale & Travel`
- Seasonal-world-change route: `Seasons of Skyrim SKSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/62861>. A SKSE-based seasonal framework that dynamically swaps terrain textures, tree models, grass, LOD, and snow coverage across four calendar seasons. Uses model and terrain swap support rather than a script loop, so performance cost is low once LOD is pre-generated per season. Requires a DynDOLOD rebuild per season — meaning 4× LOD generation — and needs `No Grass In Objects` grass caches per season. A separate companion, `Turn of the Seasons` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/63623>, adds distinct visual assets for Spring, Summer, and Autumn on top of the core framework. → `World Feel - Timescale & Travel`

### Recommendation

- Start with `Time Flies SE` as the strongest first-pass baseline because it makes ordinary play loops feel more grounded without turning the whole subsection into abstract clock tuning. → `World Feel - Timescale & Travel`
- Keep `Dynamic Timescale - Remade` as the meaningful comparison if the project wants softer pacing control through environment-aware time shifts instead of direct action-time costs. → `World Feel - Timescale & Travel`
- Keep `Seasonal Calendar` as the narrower companion if the final weather-and-season direction makes explicit calendar readability worthwhile. → `World Feel - Timescale & Travel`
- Treat `Seasons of Skyrim SKSE` as the high-commitment seasonal-world branch. It is a mature, well-supported framework (v1.8.6, last updated June 2025, AE 1.6.1130+ compatible) and delivers genuinely dramatic seasonal world changes. The cost is real: four separate DynDOLOD generation passes, four grass caches, and a meaningful patch footprint (Lux, the grass stack, tree mods). Only adopt it if the project is prepared to own that LOD-generation workflow — but if the list is already running DynDOLOD for a 4K setup, the additional passes are the main extra cost and the payoff is substantial. → `World Feel - Timescale & Travel`
- Add `Turn of the Seasons` as a companion to the framework only if `Seasons of Skyrim SKSE` is adopted; it adds visual assets for the three non-winter seasons and is worth having if seasons are a real part of the list identity. → `World Feel - Timescale & Travel`
- Preserve boundaries with later travel rules, survival pacing, night visibility, and graphics-side weather decisions.

### Risks & Compatibility

- Slowing time can make ordinary play feel dutiful instead of immersive.
- Using multiple pacing systems at once makes it harder to understand why time feels right or wrong.
- Calendar visibility can be treated as inherently valuable when the list may not need more on-screen date awareness.
- `Seasons of Skyrim SKSE` multiplies LOD generation work and interacts with tree overhauls, grass mods, and road mods. Do not treat it as a casual add-on; it is a workflow commitment. → `World Feel - Timescale & Travel`

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred timescale baseline, one meaningful alternate pacing route, and one narrower calendar companion. → `World Feel - Timescale & Travel`
- The distinction between action-time costs, dynamic timescale control, calendar visibility, and full seasonal world-change is explicit.
- The chosen direction strengthens world scale and day rhythm without turning ordinary play into constant bookkeeping.
- If `Seasons of Skyrim SKSE` is adopted, the LOD-rebuild workflow per season is documented before it is locked in.

## Travel Pacing And Carriage Fast Travel Rules → `World Feel - Timescale & Travel`

### Core Idea

- This subsection owns how much friction, structure, and world texture sits between major locations once the player is ready to move across Skyrim.
- It should decide whether the list strengthens vanilla carriage and ferry travel, expands stop coverage, or keeps map fast travel available but costly.

### Options

- Carriage-and-ferry baseline: `Carriage and Ferry Travel Overhaul (Formerly Complete Fast Travel Overhaul)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/8379> (last updated November 2020; stable and widely used, but verify AE 1.6.1170 compatibility as the mod predates the Anniversary Edition) → `World Feel - Timescale & Travel`
- Route-coverage route: `Carriage Stops of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/10434> → `World Feel - Timescale & Travel`
- Gold-pressure route: `Fast Travel Cost` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/20200> (last updated September 2018; simple script mod that still functions, but check for AE compatibility) → `World Feel - Timescale & Travel`
- Camping-and-rest route: `Campfire - Complete Camping System (Supports Skyrim VR)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/667> → `World Feel - Timescale & Travel`
- Carriage-driver dialogue route: `Carriage Drivers Are Alive` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51260> — gives carriage drivers names, schedules, and dialogue, making them feel like real people rather than silent services. Complements the carriage-overhaul baseline without conflicting with it. → `World Feel - Timescale & Travel`
- Carriage-and-stable dialogue bundle route: `Carriages and Stables Dialogue Bundle` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/79297> — adds dialogue and interactions for carriage drivers and stable owners, including bribes, rumors, and destination chat. Complements `Carriage Drivers Are Alive` and the carriage-overhaul baseline. → `World Feel - Timescale & Travel`

### Recommendation

- Start with `Carriage and Ferry Travel Overhaul` as the strongest first-pass answer because it improves the vanilla public-travel layer directly without forcing the list into a harsher fast-travel philosophy by default. → `World Feel - Timescale & Travel`
- Keep `Carriage Stops of Skyrim` as the meaningful comparison if the project wants travel infrastructure itself to feel broader and more present in the world. → `World Feel - Timescale & Travel`
- Keep `Fast Travel Cost` as the deliberate economic-pressure branch if the real question is map fast travel remaining available but no longer consequence-free. → `World Feel - Timescale & Travel`
- Keep `Campfire` as the complementary camping-and-rest branch that affects travel pacing through a different mechanism: the player must plan campsites, manage rest, and cook in the field rather than relying only on carriages or inns. `Campfire` is already in the expanded-systems survival conversation from `modlist-expanded-systems.md` but matters here as a travel-pacing tool regardless of which survival framework the list selects. → `World Feel - Timescale & Travel`
- Add `Carriage Drivers Are Alive` as the carriage-driver character layer — names, schedules, and dialogue make the carriage loop feel inhabited rather than mechanical. → `World Feel - Timescale & Travel`
- Add `Carriages and Stables Dialogue Bundle` as the dialogue companion — bribes, rumors, and destination chat complement the driver-personality layer from `Carriage Drivers Are Alive`. The two stack cleanly because one adds character records and the other adds dialogue. → `World Feel - Timescale & Travel`
- Keep this subsection focused on travel structure and carriage or ferry policy rather than survival maintenance from `modlist-expanded-systems.md` or map ownership from `modlist-ui.md`. → `World Feel - Timescale & Travel`

### Risks & Compatibility

- Travel can become more expensive or restricted without becoming more interesting.
- Stacking multiple travel-policy mods makes it hard to tell which one is really setting pace.
- Gold pressure can be used to solve a route-coverage problem that actually needs better travel infrastructure.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred carriage-and-ferry baseline, one meaningful route-coverage comparison, and one distinct economic-pressure alternative. → `World Feel - Timescale & Travel`
- The distinction between public-travel improvement, stop-network expansion, and map-fast-travel cost is explicit.
- Movement across Skyrim feels more deliberate without collapsing into survival upkeep or map-UI philosophy.

## Encounter Spacing And Wilderness Feel → `World Feel - Nights & Wildlife`

### Core Idea

- This subsection owns how busy, calm, or deliberately spaced wilderness travel feels between destinations.
- It should decide whether roads and wilds feel more alive through additional encounters, reactive events, or larger faction-patrol presence without drifting into wildlife ecology or roadside clutter.

### Options

- Ambient encounter route: `Extended Encounters` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/44810> → `World Feel - Nights & Wildlife`
- Reactive world-event route: `Radiance Encounters` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/19720> → `World Feel - Nights & Wildlife`
- Faction-patrol route: `Immersive Patrols SE AE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/718> → `World Feel - Nights & Wildlife`

### Recommendation

- Start with `Extended Encounters` as the strongest first-pass baseline because it adds broad wilderness and road activity while staying lightweight and clearly centered on ordinary travel. → `World Feel - Nights & Wildlife`
- Keep `Radiance Encounters` as the meaningful comparison if the list wants encounter texture to lean more into world reactivity and consequences. → `World Feel - Nights & Wildlife`
- Keep `Immersive Patrols SE AE` as the deliberate larger-presence branch if faction patrol traffic and civil-war-adjacent movement should become a much more visible part of wilderness travel. → `World Feel - Nights & Wildlife`
- Keep this subsection separate from wildlife ecology, roadside clutter, and broader survival friction.

### Risks & Compatibility

- Normal travel can become a stream of interruptions instead of a better-paced wilderness experience.
- Stacking several encounter systems makes the world feel busier than intended.
- Faction patrols can be used to solve an ambient-spacing problem they were never meant to answer.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred ambient wilderness-encounter baseline, one meaningful reactive-event comparison, and one distinct faction-patrol alternative. → `World Feel - Nights & Wildlife`
- The distinction between ambient encounter texture, reactive world events, and visible patrol presence is explicit.
- Travel feels more inhabited without overwhelming the wilderness with constant activity.

## Soundscape And Ambient Audio → `World Feel - Soundscapes`

### Core Idea

- This subsection owns the ambient sound texture of the world: what roads, settlements, wilderness, and interiors sound like during ordinary exploration.
- It should make the world feel sonically alive without turning every space into constant audio clutter or absorbing the broader audio section.

### Options

- Broad ambient-world route: `Sounds of Skyrim Complete SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/8286> → `World Feel - Soundscapes`
- Ambient-space cleanup route: `Acoustic Space Improvement Fixes (Corrected Reverb - Ambience - Interiors - SkyPatcher)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/78992> → `World Feel - Soundscapes`
- Discipline-first route: keep the current sound stack restrained if real playtesting shows the world already sounds readable enough.

### Recommendation

- Start with `Sounds of Skyrim Complete SE` as the strongest first-pass baseline because it directly targets roads, wilderness, dungeons, and settled spaces as part of one exploration-facing ambient project. → `World Feel - Soundscapes`
- Keep `Acoustic Space Improvement Fixes` as the narrower comparison if the real weakness is not world quietness but inconsistent interior ambience and reverb treatment. → `World Feel - Soundscapes`
- Keep the discipline-first route alive long enough to confirm section 07 actually needs more ambient texture before escalating into the broader audio-overhaul territory that belongs in `modlist-audio.md`. → `World Feel - Soundscapes`
- Keep broader audio-overhaul ownership out of this section.

### Risks & Compatibility

- More sounds can produce a noisier world instead of a better soundscape.
- A narrow interior-acoustics fix can be chosen when the real problem is a flat outdoor soundscape, or vice versa.
- Section 07 can quietly absorb the broader audio-overhaul ownership that should stay in `modlist-audio.md`. → `World Feel - Soundscapes`

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred broad ambient-world baseline and one narrower acoustic-space cleanup comparison. → `World Feel - Soundscapes`
- The distinction between worldspace ambience and interior acoustic cleanup is explicit.
- Exploration atmosphere improves without overwhelming ordinary travel with constant audio clutter.

## City Size, Outskirts, And Population Feel → `World Feel - Cities & Landmarks`

### Core Idea

- This subsection owns how large, inhabited, and spatially convincing cities feel during ordinary play: arriving at gates, moving through main streets, and judging whether settlements feel too small, too empty, or too overbuilt.
- It should stay separate from roadside clutter, later world-content population additions, and the graphics-side city or road compatibility burden already tracked in [`modlist-graphics-shaders.md`](modlist-graphics-shaders.md). → `World Feel - Cities & Landmarks`

### Options

- Light urban-density route: `Spaghetti's Cities - AIO` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/84735> → `World Feel - Cities & Landmarks`
- Stronger city-core expansion route: `Dawn of Skyrim (Director's Cut) SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/9074> (last updated June 2020; a complete overhaul that remains functional, but its age means narrower compatibility with newer city and worldspace mods) → `World Feel - Cities & Landmarks`
- Heavier all-in-one transformation route: `JK's Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/6289> → `World Feel - Cities & Landmarks`

### Recommendation

- Start with `Spaghetti's Cities - AIO` as the strongest first-pass baseline because it makes cities feel denser and more inhabited without immediately turning section 07 into a giant patch-management project. → `World Feel - Cities & Landmarks`
- Keep `Dawn of Skyrim` as the meaningful comparison if the major holds still feel too thin and the list wants a stronger city-core expansion. → `World Feel - Cities & Landmarks`
- Keep `JK's Skyrim` as the deliberate heavier branch only if the list truly wants city and town transformation to become a much louder identity pillar and is prepared for the broader compatibility pressure that follows. → `World Feel - Cities & Landmarks`
- Keep broad population additions for later world-content or NPC ownership instead of solving emptiness only by stacking more residents here.

### Risks & Compatibility

- A large city overhaul can be chosen because it is famous rather than because the cities actually need that much transformation.
- A lighter density pass may solve the real problem more cleanly than a heavier worldspace edit.
- Compatibility cost with roads, lighting, snow, trees, and LOD can be underestimated.

### Acceptance Criteria

- One clearly preferred light city-density baseline, one stronger city-core comparison, and one heavier all-in-one transformation route are documented.
- The distinction between light density, stronger city-core expansion, and full settlement transformation is explicit.
- City arrival, outskirts feel, and settlement presence improve without pretending section 07 owns every city and worldspace decision in the modlist.

## Roadside Clutter, Ruins, And Landmark Density → `World Feel - Cities & Landmarks`

### Core Idea

- This subsection owns the small-to-mid-scale worldspace texture between major destinations: roadside objects, old ruins, ancient remnants, signposts, and minor landmark presence.
- It should make the world feel richer to cross without collapsing into city overhauls, wildlife ecology, or broad world-content expansion.

### Options

- Broad landmark route: `Ancient Land` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/22900> (last updated November 2020; static worldspace edits that still function, but verify compatibility with the chosen road, tree, and snow stacks) → `World Feel - Cities & Landmarks`
- Light roadside-texture route: `Interesting Roads` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/42749> (last updated November 2020; asset-only additions, low compatibility risk but check for clipping with city or road overhauls) → `World Feel - Cities & Landmarks`
- Road-guidance route: `Point The Way` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/352> → `World Feel - Cities & Landmarks`
- Standing-stone overhaul route: `Ryn's Standing Stones` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/64256> — overhauls each of Skyrim's 13 standing stones with unique meshes, landscape edits, and environmental storytelling, making each stone feel like a distinct ancient monument rather than a copy-pasted rock. By Ryn2g. Complements any standing-stone perk overhaul without conflicting with their gameplay effects. → `World Feel - Cities & Landmarks`

### Recommendation

- Start with `Ancient Land` as the strongest first-pass baseline because it adds visible static worldspace flavor and distant landmark presence without turning this subsection into a heavy settlement-overhaul or content-expansion project. → `World Feel - Cities & Landmarks`
- Keep `Interesting Roads` as the meaningful comparison if the world mainly needs lighter roadside variety rather than more overt ancient-landmark identity. → `World Feel - Cities & Landmarks`
- Keep `Point The Way` as the narrower route-guidance branch if the real missing piece is clearer travel legibility and signposting rather than broader worldspace flavor. → `World Feel - Cities & Landmarks`
- Consider `Giant Crab Shells - Mihail's Shards of Immersion` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/124681> as a roadside-beauty addition. Adds ancient giant crab shells along the northern coast and Solstheim with loot/enemy encounters inside some. Fits the "big, awe-inspiring world" pillar — 789 endorsements, ESL-flagged, compatible with most landscape stacks. → `World Feel - Cities & Landmarks`
- Add `Ryn's Standing Stones` as a locked standing-stone landmark baseline. Each of the 13 stones becomes a unique environmental setpiece with custom meshes, landscape work, and environmental storytelling — compatible with any standing-stone perk overhaul (the mod only changes world geometry, not gameplay effects). Makes one of Skyrim's most repeated environmental assets feel intentional rather than copy-pasted. → `World Feel - Cities & Landmarks`
- Keep broader new-settlement, quest-location, or population additions for later world-content ownership.

### Risks & Compatibility

- Weak travel texture can be over-solved with too many worldspace edits at once.
- Dramatic screenshots can make a broad landmark mod look more necessary than it is in normal play.
- Compatibility pressure with roads, landscape, snow, lighting, and LOD can climb quickly.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred broad landmark and worldspace baseline, one lighter roadside-texture comparison, and one narrower route-guidance alternative. → `World Feel - Cities & Landmarks`
- The distinction between landmark flavor, roadside variety, and road-guidance support is explicit.
- Roads and in-between spaces feel richer without overwhelming travel routes with clutter.

## Wildlife And Creature Ecology → `World Feel - Nights & Wildlife`

### Core Idea

- This subsection owns the living-animal side of world feel: how varied wildlife is, how predators and prey feel in the landscape, and whether creatures contribute to a believable ecological texture rather than existing only as random combat spawns.
- It should make wilderness travel feel biologically alive without collapsing into creature-animation ownership, encounter-density spam, or broader NPC and world-content scope.

### Options

- Wildlife-variety route: `Animallica SE - Skyrim Wildlife Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/20456> (last updated October 2018; consider `Bears of the North` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/40688>, `Wolves of the North` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/40689>, or `Diverse Dragons Collection SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/695> as more modern creature additions) → `World Feel - Nights & Wildlife`
- Ecology-tuning route: `One With Nature - Dynamic Animals and Creatures SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/13343> (last updated September 2019; script-heavy mod — verify AE compatibility and confirm no save-bloat risk before adopting) → `World Feel - Nights & Wildlife`
- Heavier danger-and-behavior route: `Savage Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/37768> → `World Feel - Nights & Wildlife`
- Insect-behavior route: `Butterflies Land True` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/29434> (last updated October 2019; a simple mesh replacer with zero scripts — ESL-flagged, unlikely to break, and still functional) — makes butterflies land on surfaces and flowers instead of hovering endlessly, adding a small but noticeable wildlife-behavior improvement. → `World Feel - Nights & Wildlife`

### Recommendation

- Start with `Animallica SE - Skyrim Wildlife Overhaul` as the strongest first-pass baseline because it makes Skyrim feel more biologically varied and alive during ordinary travel without assuming the subsection should become primarily about harsher combat behavior. → `World Feel - Nights & Wildlife`
- Keep `One With Nature` as the meaningful comparison if the bigger weakness is creature relationship tuning and ecological feel rather than raw wildlife variety. → `World Feel - Nights & Wildlife`
- Add `Butterflies Land True` as a lightweight insect-behavior layer. It makes butterflies land on surfaces rather than hovering indefinitely — a small visual and behavioral upgrade that makes the wilderness feel more biologically grounded without affecting gameplay or adding scripts. → `World Feel - Nights & Wildlife`
- Keep `Savage Skyrim` as the deliberate heavier branch only if the list truly wants wilderness creatures to become much more threatening and physically intense as part of the world-feel identity. → `World Feel - Nights & Wildlife`
- Consider `Frogs - Mihail Monsters and Animals` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/120998> as a lightweight creature ambient addition. Adds harmless frogs (4 variants) in lakes and puddles with new food items (frog legs). ESL-flagged, 2,986 endorsements, lore-friendly, negligible performance impact. → `World Feel - Nights & Wildlife`
- Keep creature-animation ownership in `modlist-animations.md`, encounter-density ownership earlier in section 07, and broader world-content additions in later sections. → `World Feel - Nights & Wildlife`

### Risks & Compatibility

- Weak wilderness feel can be over-solved by piling on more creature content than the world actually needs.
- Ecology tuning can drift into encounter-density or combat-balance ownership.
- Heavier danger-oriented creature behavior can overpower the calmer ecological texture this subsection is supposed to judge.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred wildlife-variety baseline, one ecology-tuning comparison, and one heavier danger-oriented creature branch. → `World Feel - Nights & Wildlife`
- The distinction between wildlife variety, ecology tuning, and heavier creature-pressure philosophy is explicit.
- The wilderness feels more biologically alive without turning every journey into constant creature interruption.

## Road Network And Surface Overhaul → `World Feel - Cities & Landmarks`

### Core Idea

- This subsection owns the physical road network: whether the roads themselves feel like built infrastructure or just a painted texture on the ground.
- It is separate from roadside landmark density (above) and from road-texture ownership in [`modlist-graphics-shaders.md`](modlist-graphics-shaders.md). This section is about road presentation at the mesh and geometry level, not surface materials. → `World Feel - Cities & Landmarks`

### Options

- Texture-blending route: `Blended Roads - Light Plugin (ESL)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/171554>. Seamless road-to-terrain texture blending without new meshes or authored geometry. Lightweight, ESL-flagged, zero patch burden. → `World Feel - Cities & Landmarks`
- Roadside detail route: `Interesting Roads` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/42749>. Adds roadside objects (barrels, carts, signs) to make traveled roads feel more lived-in, without touching road geometry. → `World Feel - Cities & Landmarks`
- Signage route: `Point The Way` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/352>. Adds road signposts at junctions for navigational clarity. → `World Feel - Cities & Landmarks`
- Discipline-first route: let [`modlist-graphics-shaders.md`](modlist-graphics-shaders.md) texture replacers carry all road visual improvement with no extra geometry or object additions. → `World Feel - Cities & Landmarks`

### Recommendation

- Set `Blended Roads - Light Plugin (ESL)` as the locked baseline. It provides the best visual improvement-to-complexity ratio for this stack: seamless road blending with no worldspace edits, no patch requirements, and no grass-cache regeneration. → `World Feel - Cities & Landmarks`
- Add `Interesting Roads` and `Point The Way` as lightweight companions for roadside character and navigational signposting. Both are asset-only additions that do not require patching. → `World Feel - Cities & Landmarks`
- The heavier `Northern Roads` (authored road meshes, full network overhaul) was evaluated and rejected due to the patch burden it imposes at this modlist's complexity level — the official patch collection alone covers six major mods, and every new content mod that touches roads creates another unresolved conflict. → `World Feel - Cities & Landmarks`
- Road surface texture quality is still owned by [`modlist-graphics-shaders.md`](modlist-graphics-shaders.md) (`Blended Roads` handles blending, not surface material). → `World Feel - Cities & Landmarks`

### Risks & Compatibility

- `Blended Roads - Light Plugin` is a lightweight visual improvement, not a road geometry overhaul. Roads will not read as deliberately constructed infrastructure the way authored road meshes would achieve. → `World Feel - Cities & Landmarks`
- Roadside object mods (`Interesting Roads`, `Point The Way`) stack additively with city overhauls but may clip with mod-added structures near road edges. This is a visual rather than gameplay concern. → `World Feel - Cities & Landmarks`
- If the project later decides it does want authored road geometry, adopting a heavy road mesh overhaul retroactively requires re-generating grass caches, adding the full patch collection, and resolving any new content mod conflicts that have accumulated since the lock-in.

### Acceptance Criteria

- `Elder Wilds` has one locked road presentation baseline: `Blended Roads - Light Plugin (ESL)`. → `World Feel - Cities & Landmarks`
- Roadside detail and signage are handled by lightweight companions (`Interesting Roads`, `Point The Way`) rather than by a full road geometry overhaul.
- Road surfaces feel cohesive with the surrounding terrain through texture blending rather than authored geometry.
- The decision to reject `Northern Roads` is documented alongside the rationale (patch burden at current complexity level), so future contributors do not reopen the question without understanding why it was set aside. → `World Feel - Cities & Landmarks`

## Environmental Atmosphere: Wind And Dynamic Effects → `World Feel - Soundscapes`

### Core Idea

- This subsection owns how wind, atmospheric movement, and dynamic environmental effects make the world feel physically alive during ordinary exploration.
- It should add perceptible world-layer motion — wind through trees and grass, dynamic cloth physics, and airborne particle behavior — without collapsing into weather-system ownership or graphics-side shader territory.

### Options

- Wind-physics framework route: `Dynamic Wind Framework - SKSE Plugin` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/177023> — a SKSE plugin that enables dynamic wind behavior (tree sway, grass movement, cloth physics) tied to weather and location conditions. Provides the infrastructure for wind-aware environmental effects. → `World Feel - Soundscapes`
- Wind-content companion route: `Dynamic Wind - Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/177024> — config/data mod that applies the Dynamic Wind Framework to Skyrim's weather and locations. Depends on the framework plugin. → `World Feel - Soundscapes`
- Particle-wind companion route: `Particle Wind - SKSE Plugin` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/174812> — makes dust, leaves, snow, and other airborne particles react to wind direction dynamically. By RavenKZP (same author as Dynamic Wind Framework). Requires SKSE and Address Library. → `World Feel - Soundscapes`
- Water-surface companion route: `Realistic Boat Bobbing SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/26080> — adds realistic idle-bobbing animations to boats in harbors and coastal areas. Requires SKSE. → `World Feel - Soundscapes`
- Water-surface BOS variant route: `Realistic Boat Bobbing SE - BOS Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/88885> — uses Base Object Swapper to distribute boat-bobbing behavior to mod-added boats. Requires `Base Object Swapper` and the base `Realistic Boat Bobbing SE` mod. → `World Feel - Soundscapes`

### Recommendation

- Add `Dynamic Wind Framework - SKSE Plugin` as the infrastructure baseline. It enables weather-aware wind physics that make trees, grass, and environmental elements respond to weather conditions dynamically rather than using canned animations. Requires Address Library for SKSE Plugins (already in the foundation layer). → `World Feel - Soundscapes`
- Add `Dynamic Wind - Skyrim` as the required data companion. The framework plugin provides the engine; this mod provides Skyrim-specific wind profiles tied to weather and location cells. → `World Feel - Soundscapes`
- Add `Particle Wind - SKSE Plugin` as the particle-level companion to the Dynamic Wind Framework. It makes dust, leaves, snow, and ash particles respond to wind direction in real time, adding perceptible air movement to the visual environment. By the same author as the framework, so integration is expected to be clean. Requires SKSE and Address Library. → `World Feel - Soundscapes`
- Add `Realistic Boat Bobbing SE` as an optional water-surface companion for harbor and coastal immersion. Boats bob with idle animations that were shipped but never enabled in vanilla. Keep it optional — it is purely cosmetic and adds no gameplay depth, but makes docked boats feel physically alive rather than frozen. → `World Feel - Soundscapes`
- Add `Realistic Boat Bobbing SE - BOS Edition` as the companion for mod-added boat support. If the base mod is used, the BOS variant extends boat-bobbing to boats added by city, worldspace, or dock mods without requiring bespoke patches for each. Requires `Base Object Swapper` and the base mod. → `World Feel - Soundscapes`
- Add `R.A.S.S. - Rain Ash And Snow Shaders` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/22745> as an optional environmental-visual companion. It applies visible rain droplets, snow accumulation, ash particles, and frost shaders to the player and NPCs during appropriate weather conditions. By lKocMoHaBTl. 33K+ endorsements. Visual-only, no gameplay changes. → `World Feel - Soundscapes`
- **R.A.S.S. Compatibility Note:** `Community Shaders` includes its own `Wetness Effects` module that applies rain-wetness shaders. R.A.S.S.'s rain-droplet effect and CS Wetness Effects target different visual layers (R.A.S.S. applies droplets to actor surfaces; CS Wetness applies environmental wetness to terrain and objects), so they should coexist without visual conflicts. However, verify in testing that the combined visual output does not create double-wetness artifacts or performance issues. If visual conflicts arise, disable CS Wetness Effects and rely on R.A.S.S. for actor-side wetness, or vice versa. → `World Feel - Soundscapes`
- Keep this subsection separate from the broader weather-system ownership (which belongs in [`modlist-graphics-shaders.md`](modlist-graphics-shaders.md)'s Weather and Lighting subsection) and from graphics-side cloth physics (which belongs in [`modlist-graphics-shaders.md`](modlist-graphics-shaders.md)'s physics decisions). → `World Feel - Soundscapes`

### Risks & Compatibility

- Dynamic wind is a visual-enhancement layer, not a gameplay system. If performance is a concern, it is the easiest subsection to skip without breaking anything else.
- The framework is maintained by RavenKZP and has been stable since its mid-2025 release (last updated May 2026). Verify it works cleanly with the chosen tree mod, grass stack, and ENB/community shader before locking it in.

### Acceptance Criteria

- `Elder Wilds` has one clear dynamic-wind baseline (`Dynamic Wind Framework` + `Dynamic Wind - Skyrim`). → `World Feel - Soundscapes`
- Trees, grass, and cloth respond to weather conditions with visible dynamic movement rather than canned animation loops.
- The mods integrate cleanly with the tree mod, grass stack, and ENB/community shader without visual artifacts or performance degradation.

## Night Darkness And Visibility Balance → `World Feel - Nights & Wildlife`

### Core Idea

- This subsection owns how dark Skyrim nights should feel during ordinary travel and what kind of visibility support still keeps that darkness readable rather than annoying.
- The goal is to make nighttime travel feel more consequential and atmospheric without collapsing into broader weather, lighting, or survival-overhaul ownership handled elsewhere.

### Options

- Darkness-first route: if the list already runs a weather mod and ENB/Community Shaders, nighttime darkness is set at the weather or image-space level. A standalone darkness tweak may be redundant. For a dedicated darkness pass where weather alone does not go far enough, `Simply Darker Nights (SSE)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/14269> (last updated April 2018) still works as a simple image-space edit, but its age means it may not be needed — test with the chosen weather and shader stack first. → `World Feel - Nights & Wildlife`
- World-lighting support route (modern baseline): the Lux ecosystem is the current gold standard. `Lux Via` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/63588> adds road lanterns, braziers, and ambient world lighting with a comprehensive FOMOD and patch collection (v2.2, last updated February 2025, 28K endorsements). Part of the broader Lux (interior) and Lux Orbis (exterior city) suite. `Lanterns of Skyrim SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/2429> (last updated November 2016) and `CLARALUX SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/2371> (last updated July 2017) are both too old to recommend as baselines for a 2026 modlist. → `World Feel - Nights & Wildlife`
- Carried-visibility route (modern baseline): `Simple Wearable Lanterns - Remastered` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/132196> (v1, last updated October 2024, 3,246 endorsements) — 4 craftable lantern variants (Iron/Magic/Alchemist/Dwemer), no fuel system, no SKSE requirement, clean integration with leveled lists. A lightweight vanilla+ replacement for `Wearable Lanterns` (last updated January 2017). → `World Feel - Nights & Wildlife`
- Carried-visibility route (full-featured alternative): `Torches Candlelight and Lanterns` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/162694> (v1.12+, last updated February 2026, 600 endorsements) — 26 unique lanterns with HDT-SMP physics, dynamic hand/hip switching in combat, SPID-based NPC distribution, and optional fuel system. Requires Base Object Swapper and MCM Helper. The most modern and feature-rich option if the list already runs BOS. → `World Feel - Nights & Wildlife`
- Carried-visibility route (survival-oriented alternative): `Realistic Usable Lanterns` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/110563> (v1.3, last updated June 2026, 116 endorsements) — 9 handheld candle-lantern variants, craft/buy/find, optional finite candles. Lightweight, no SKSE dependency. Fits a survival-oriented list with Campfire or SunHelm. → `World Feel - Nights & Wildlife`

### Recommendation

- The darkness baseline should come from the weather mod and ENB/Community Shaders pair selected in [`modlist-graphics-shaders.md`](modlist-graphics-shaders.md) first. If nights still need more punch after that stack is locked, add `Simply Darker Nights (SSE)` as a simple image-space overlay, but verify it is not redundant. → `World Feel - Nights & Wildlife`
- Set `Lux Via` as the modern world-lighting baseline if the list needs roads and travel paths to read clearly at night. It is actively maintained (v2.2, February 2025), has a large patch ecosystem, and integrates with the broader Lux family if the list also adopts Lux for interiors. The 2016-era `Lanterns of Skyrim SE` and 2017-era `CLARALUX SSE` are not recommended as baselines — both are functionally superseded. → `World Feel - Nights & Wildlife`
- Add `Simple Wearable Lanterns - Remastered` as the preferred carried-visibility branch. It is modern, lightweight, requires no SKSE, and covers the basic use case (player-controlled portable light) without feature creep. The `Torches Candlelight and Lanterns` path is the better choice if the list wants physics-equipped lanterns, NPC distribution, and hotkey-driven hand/hip switching, but the BOS and MCM Helper requirements mean it is a heavier dependency. `Realistic Usable Lanterns` is the right fit for a survival-oriented list that wants finite candles as a consumable resource rather than unlimited magic light. → `World Feel - Nights & Wildlife`
- Keep this subsection about nighttime feel and travel readability rather than generic display calibration, graphics-lighting philosophy, or survival maintenance.

### Risks & Compatibility

- Weak night mood can trigger stacking several visibility systems at once and losing control of the overall night identity.
- Nights can be made darker in theory but then undermined with so much added light support that the mood barely changes.
- A carried-light solution can become a constant crutch instead of a deliberate travel tool.
- `Lux Via` is a worldspace-editing mod that requires patches for city overhauls, road mods, and new-worldspace content. The patch collection is extensive but must be maintained as the modlist grows. This is a known cost, not a surprise — factor it into the patch-maintenance budget. → `World Feel - Nights & Wildlife`
- `Torches Candlelight and Lanterns` with HDT-SMP physics requires FSMP (Faster HDT-SMP) and may have a performance cost on lower-end systems. The non-SMP option mitigates this. → `World Feel - Nights & Wildlife`

### Acceptance Criteria

- One clearly preferred darkness source (weather/shader stack, with optional `Simply Darker Nights` overlay), one modern world-lighting baseline (`Lux Via`), and one carried-visibility baseline (`Simple Wearable Lanterns - Remastered` or `Torches Candlelight and Lanterns`) are documented. → `World Feel - Nights & Wildlife`
- The distinction between darkness-source, world-lighting support, and carried visibility is explicit.
- Nighttime travel becomes more atmospheric without making navigation unreasonably frustrating.

## Activation Text → `World Feel - Timescale & Travel` And Interaction Immersion
### Core Idea

- This subsection owns whether the activation prompt text and NPC identification feel immersive and descriptive rather than generic.
- It should make ordinary interactions read as specific actions instead of a blanket "Activate" label, without introducing gameplay systems or survival mechanics.

### Options

- Activation-text route: `Roleplaying In Skyrim - Immersive Activators` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/149908> — replaces generic activation prompts with descriptive text (e.g., "Read Book" instead of "Activate") and hides NPC names until interaction, showing only gender and race. ESL-flagged, one-time perk script, MCM-toggleable. 163 endorsements. → `World Feel - Timescale & Travel`

### Recommendation

- Add `Roleplaying In Skyrim - Immersive Activators` as an optional interaction-immersion layer. It is extremely lightweight (8KB, no ongoing scripts, no SKSE requirement) and makes activation prompts read as specific actions rather than a generic verb. The NPC-name-hiding feature is toggleable via MCM for players who prefer vanilla identification. Compatible with any mod that does not also change activation text. → `World Feel - Timescale & Travel`

### Risks & Compatibility

- Hiding NPC names until interaction may frustrate players who rely on visible names for quest targets or dialogue choices. The MCM toggle mitigates this.
- Any other mod that changes activation text will conflict. Verify no other list entry duplicates this function.

### Acceptance Criteria

- `Elder Wilds` has one optional activation-text immersion mod documented with clear scope. → `World Feel - Timescale & Travel`
- The mod is marked optional and its MCM-toggleable NPC-name feature is called out.
- No other mod in the list changes activation text.

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
