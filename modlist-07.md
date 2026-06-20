# Immersive Scale and World Feel

## Timescale And Calendar Adjustments

### Core Idea

- This subsection owns how quickly days pass, whether routine actions consume believable chunks of time, and how clearly the calendar or season layer supports the feeling that Skyrim has real passing days.
- It should strengthen day rhythm without turning the section into schedule micromanagement.

### Options

- Action-time route: `Time Flies SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/39426>
- Dynamic-timescale route: `Dynamic Timescale - Remade` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/141531>
- Seasonal-calendar route: `Seasonal Calendar (for seasonal mods)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/18164>
- Seasonal-world-change route: `Seasons of Skyrim SKSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/62861>. A SKSE-based seasonal framework that dynamically swaps terrain textures, tree models, grass, LOD, and snow coverage across four calendar seasons. Uses model and terrain swap support rather than a script loop, so performance cost is low once LOD is pre-generated per season. Requires a DynDOLOD rebuild per season — meaning 4× LOD generation — and needs `No Grass In Objects` grass caches per season. A separate companion, `Turn of the Seasons` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/63623>, adds distinct visual assets for Spring, Summer, and Autumn on top of the core framework.

### Recommendation

- Start with `Time Flies SE` as the strongest first-pass baseline because it makes ordinary play loops feel more grounded without turning the whole subsection into abstract clock tuning.
- Keep `Dynamic Timescale - Remade` as the meaningful comparison if the project wants softer pacing control through environment-aware time shifts instead of direct action-time costs.
- Keep `Seasonal Calendar` as the narrower companion if the final weather-and-season direction makes explicit calendar readability worthwhile.
- Treat `Seasons of Skyrim SKSE` as the high-commitment seasonal-world branch. It is a mature, well-supported framework (actively maintained as of mid-2025) and delivers genuinely dramatic seasonal world changes. The cost is real: four separate DynDOLOD generation passes, four grass caches, and a meaningful patch footprint (Lux, the grass stack, tree mods). Only adopt it if the project is prepared to own that LOD-generation workflow — but if the list is already running DynDOLOD for a 4K setup, the additional passes are the main extra cost and the payoff is substantial.
- Add `Turn of the Seasons` as a companion to the framework only if `Seasons of Skyrim SKSE` is adopted; it adds visual assets for the three non-winter seasons and is worth having if seasons are a real part of the list identity.
- Preserve boundaries with later travel rules, survival pacing, night visibility, and graphics-side weather decisions.

### Risks & Compatibility

- Slowing time can make ordinary play feel dutiful instead of immersive.
- Using multiple pacing systems at once makes it harder to understand why time feels right or wrong.
- Calendar visibility can be treated as inherently valuable when the list may not need more on-screen date awareness.
- `Seasons of Skyrim SKSE` multiplies LOD generation work and interacts with tree overhauls, grass mods, and road mods. Do not treat it as a casual add-on; it is a workflow commitment.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred timescale baseline, one meaningful alternate pacing route, and one narrower calendar companion.
- The distinction between action-time costs, dynamic timescale control, calendar visibility, and full seasonal world-change is explicit.
- The chosen direction strengthens world scale and day rhythm without turning ordinary play into constant bookkeeping.
- If `Seasons of Skyrim SKSE` is adopted, the LOD-rebuild workflow per season is documented before it is locked in.

## Travel Pacing And Carriage Fast Travel Rules

### Core Idea

- This subsection owns how much friction, structure, and world texture sits between major locations once the player is ready to move across Skyrim.
- It should decide whether the list strengthens vanilla carriage and ferry travel, expands stop coverage, or keeps map fast travel available but costly.

### Options

- Carriage-and-ferry baseline: `Carriage and Ferry Travel Overhaul (Formerly Complete Fast Travel Overhaul)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/8379>
- Route-coverage route: `Carriage Stops of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/10434>
- Gold-pressure route: `Fast Travel Cost` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/20200>
- Camping-and-rest route: `Campfire - Complete Camping System (Supports Skyrim VR)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/667>
- Carriage-driver dialogue route: `Carriage Drivers Are Alive` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51260> — gives carriage drivers names, schedules, and dialogue, making them feel like real people rather than silent services. Complements the carriage-overhaul baseline without conflicting with it.
- Carriage-and-stable dialogue bundle route: `Carriages and Stables Dialogue Bundle` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/79297> — adds dialogue and interactions for carriage drivers and stable owners, including bribes, rumors, and destination chat. Complements `Carriage Drivers Are Alive` and the carriage-overhaul baseline.

### Recommendation

- Start with `Carriage and Ferry Travel Overhaul` as the strongest first-pass answer because it improves the vanilla public-travel layer directly without forcing the list into a harsher fast-travel philosophy by default.
- Keep `Carriage Stops of Skyrim` as the meaningful comparison if the project wants travel infrastructure itself to feel broader and more present in the world.
- Keep `Fast Travel Cost` as the deliberate economic-pressure branch if the real question is map fast travel remaining available but no longer consequence-free.
- Keep `Campfire` as the complementary camping-and-rest branch that affects travel pacing through a different mechanism: the player must plan campsites, manage rest, and cook in the field rather than relying only on carriages or inns. `Campfire` is already in the expanded-systems survival conversation from `modlist-05.md` but matters here as a travel-pacing tool regardless of which survival framework the list selects.
- Add `Carriage Drivers Are Alive` as the carriage-driver character layer — names, schedules, and dialogue make the carriage loop feel inhabited rather than mechanical.
- Add `Carriages and Stables Dialogue Bundle` as the dialogue companion — bribes, rumors, and destination chat complement the driver-personality layer from `Carriage Drivers Are Alive`. The two stack cleanly because one adds character records and the other adds dialogue.
- Keep this subsection focused on travel structure and carriage or ferry policy rather than survival maintenance from `modlist-05.md` or map ownership from `modlist-06.md`.

### Risks & Compatibility

- Travel can become more expensive or restricted without becoming more interesting.
- Stacking multiple travel-policy mods makes it hard to tell which one is really setting pace.
- Gold pressure can be used to solve a route-coverage problem that actually needs better travel infrastructure.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred carriage-and-ferry baseline, one meaningful route-coverage comparison, and one distinct economic-pressure alternative.
- The distinction between public-travel improvement, stop-network expansion, and map-fast-travel cost is explicit.
- Movement across Skyrim feels more deliberate without collapsing into survival upkeep or map-UI philosophy.

## Encounter Spacing And Wilderness Feel

### Core Idea

- This subsection owns how busy, calm, or deliberately spaced wilderness travel feels between destinations.
- It should decide whether roads and wilds feel more alive through additional encounters, reactive events, or larger faction-patrol presence without drifting into wildlife ecology or roadside clutter.

### Options

- Ambient encounter route: `Extended Encounters` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/44810>
- Reactive world-event route: `Radiance Encounters` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/19720>
- Faction-patrol route: `Immersive Patrols SE AE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/718>

### Recommendation

- Start with `Extended Encounters` as the strongest first-pass baseline because it adds broad wilderness and road activity while staying lightweight and clearly centered on ordinary travel.
- Keep `Radiance Encounters` as the meaningful comparison if the list wants encounter texture to lean more into world reactivity and consequences.
- Keep `Immersive Patrols SE AE` as the deliberate larger-presence branch if faction patrol traffic and civil-war-adjacent movement should become a much more visible part of wilderness travel.
- Keep this subsection separate from wildlife ecology, roadside clutter, and broader survival friction.

### Risks & Compatibility

- Normal travel can become a stream of interruptions instead of a better-paced wilderness experience.
- Stacking several encounter systems makes the world feel busier than intended.
- Faction patrols can be used to solve an ambient-spacing problem they were never meant to answer.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred ambient wilderness-encounter baseline, one meaningful reactive-event comparison, and one distinct faction-patrol alternative.
- The distinction between ambient encounter texture, reactive world events, and visible patrol presence is explicit.
- Travel feels more inhabited without overwhelming the wilderness with constant activity.

## Soundscape And Ambient Audio

### Core Idea

- This subsection owns the ambient sound texture of the world: what roads, settlements, wilderness, and interiors sound like during ordinary exploration.
- It should make the world feel sonically alive without turning every space into constant audio clutter or absorbing the broader audio section.

### Options

- Broad ambient-world route: `Sounds of Skyrim Complete SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/8286>
- Ambient-space cleanup route: `Acoustic Space Improvement Fixes (Corrected Reverb - Ambience - Interiors - SkyPatcher)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/78992>
- Discipline-first route: keep the current sound stack restrained if real playtesting shows the world already sounds readable enough.

### Recommendation

- Start with `Sounds of Skyrim Complete SE` as the strongest first-pass baseline because it directly targets roads, wilderness, dungeons, and settled spaces as part of one exploration-facing ambient project.
- Keep `Acoustic Space Improvement Fixes` as the narrower comparison if the real weakness is not world quietness but inconsistent interior ambience and reverb treatment.
- Keep the discipline-first route alive long enough to confirm section 07 actually needs more ambient texture before escalating into the broader audio-overhaul territory that belongs in `modlist-10.md`.
- Keep broader audio-overhaul ownership out of this section.

### Risks & Compatibility

- More sounds can produce a noisier world instead of a better soundscape.
- A narrow interior-acoustics fix can be chosen when the real problem is a flat outdoor soundscape, or vice versa.
- Section 07 can quietly absorb the broader audio-overhaul ownership that should stay in `modlist-10.md`.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred broad ambient-world baseline and one narrower acoustic-space cleanup comparison.
- The distinction between worldspace ambience and interior acoustic cleanup is explicit.
- Exploration atmosphere improves without overwhelming ordinary travel with constant audio clutter.

## City Size, Outskirts, And Population Feel

### Core Idea

- This subsection owns how large, inhabited, and spatially convincing cities feel during ordinary play: arriving at gates, moving through main streets, and judging whether settlements feel too small, too empty, or too overbuilt.
- It should stay separate from roadside clutter, later world-content population additions, and the graphics-side city or road compatibility burden already tracked in `modlist-02.md`.

### Options

- Light urban-density route: `Spaghetti's Cities - AIO` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/84735>
- Stronger city-core expansion route: `Dawn of Skyrim (Director's Cut) SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/9074>
- Heavier all-in-one transformation route: `JK's Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/6289>

### Recommendation

- Start with `Spaghetti's Cities - AIO` as the strongest first-pass baseline because it makes cities feel denser and more inhabited without immediately turning section 07 into a giant patch-management project.
- Keep `Dawn of Skyrim` as the meaningful comparison if the major holds still feel too thin and the list wants a stronger city-core expansion.
- Keep `JK's Skyrim` as the deliberate heavier branch only if the list truly wants city and town transformation to become a much louder identity pillar and is prepared for the broader compatibility pressure that follows.
- Keep broad population additions for later world-content or NPC ownership instead of solving emptiness only by stacking more residents here.

### Risks & Compatibility

- A large city overhaul can be chosen because it is famous rather than because the cities actually need that much transformation.
- A lighter density pass may solve the real problem more cleanly than a heavier worldspace edit.
- Compatibility cost with roads, lighting, snow, trees, and LOD can be underestimated.

### Acceptance Criteria

- One clearly preferred light city-density baseline, one stronger city-core comparison, and one heavier all-in-one transformation route are documented.
- The distinction between light density, stronger city-core expansion, and full settlement transformation is explicit.
- City arrival, outskirts feel, and settlement presence improve without pretending section 07 owns every city and worldspace decision in the modlist.

## Roadside Clutter, Ruins, And Landmark Density

### Core Idea

- This subsection owns the small-to-mid-scale worldspace texture between major destinations: roadside objects, old ruins, ancient remnants, signposts, and minor landmark presence.
- It should make the world feel richer to cross without collapsing into city overhauls, wildlife ecology, or broad world-content expansion.

### Options

- Broad landmark route: `Ancient Land` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/22900>
- Light roadside-texture route: `Interesting Roads` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/42749>
- Road-guidance route: `Point The Way` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/352>

### Recommendation

- Start with `Ancient Land` as the strongest first-pass baseline because it adds visible static worldspace flavor and distant landmark presence without turning this subsection into a heavy settlement-overhaul or content-expansion project.
- Keep `Interesting Roads` as the meaningful comparison if the world mainly needs lighter roadside variety rather than more overt ancient-landmark identity.
- Keep `Point The Way` as the narrower route-guidance branch if the real missing piece is clearer travel legibility and signposting rather than broader worldspace flavor.
- Consider `Giant Crab Shells - Mihail's Shards of Immersion` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/124681> as a roadside-beauty addition. Adds ancient giant crab shells along the northern coast and Solstheim with loot/enemy encounters inside some. Fits the "big, awe-inspiring world" pillar — 789 endorsements, ESL-flagged, compatible with most landscape stacks.
- Keep broader new-settlement, quest-location, or population additions for later world-content ownership.

### Risks & Compatibility

- Weak travel texture can be over-solved with too many worldspace edits at once.
- Dramatic screenshots can make a broad landmark mod look more necessary than it is in normal play.
- Compatibility pressure with roads, landscape, snow, lighting, and LOD can climb quickly.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred broad landmark and worldspace baseline, one lighter roadside-texture comparison, and one narrower route-guidance alternative.
- The distinction between landmark flavor, roadside variety, and road-guidance support is explicit.
- Roads and in-between spaces feel richer without overwhelming travel routes with clutter.

## Wildlife And Creature Ecology

### Core Idea

- This subsection owns the living-animal side of world feel: how varied wildlife is, how predators and prey feel in the landscape, and whether creatures contribute to a believable ecological texture rather than existing only as random combat spawns.
- It should make wilderness travel feel biologically alive without collapsing into creature-animation ownership, encounter-density spam, or broader NPC and world-content scope.

### Options

- Wildlife-variety route: `Animallica SE - Skyrim Wildlife Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/20456>
- Ecology-tuning route: `One With Nature - Dynamic Animals and Creatures SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/13343>
- Heavier danger-and-behavior route: `Savage Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/37768>
- Insect-behavior route: `Butterflies Land True` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/29434> — makes butterflies land on surfaces and flowers instead of hovering endlessly, adding a small but noticeable wildlife-behavior improvement. ESL-flagged, zero script overhead.

### Recommendation

- Start with `Animallica SE - Skyrim Wildlife Overhaul` as the strongest first-pass baseline because it makes Skyrim feel more biologically varied and alive during ordinary travel without assuming the subsection should become primarily about harsher combat behavior.
- Keep `One With Nature` as the meaningful comparison if the bigger weakness is creature relationship tuning and ecological feel rather than raw wildlife variety.
- Add `Butterflies Land True` as a lightweight insect-behavior layer. It makes butterflies land on surfaces rather than hovering indefinitely — a small visual and behavioral upgrade that makes the wilderness feel more biologically grounded without affecting gameplay or adding scripts.
- Keep `Savage Skyrim` as the deliberate heavier branch only if the list truly wants wilderness creatures to become much more threatening and physically intense as part of the world-feel identity.
- Consider `Frogs - Mihail Monsters and Animals` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/120998> as a lightweight creature ambient addition. Adds harmless frogs (4 variants) in lakes and puddles with new food items (frog legs). ESL-flagged, 2,982 endorsements, lore-friendly, negligible performance impact.
- Keep creature-animation ownership in `modlist-03.md`, encounter-density ownership earlier in section 07, and broader world-content additions in later sections.

### Risks & Compatibility

- Weak wilderness feel can be over-solved by piling on more creature content than the world actually needs.
- Ecology tuning can drift into encounter-density or combat-balance ownership.
- Heavier danger-oriented creature behavior can overpower the calmer ecological texture this subsection is supposed to judge.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred wildlife-variety baseline, one ecology-tuning comparison, and one heavier danger-oriented creature branch.
- The distinction between wildlife variety, ecology tuning, and heavier creature-pressure philosophy is explicit.
- The wilderness feels more biologically alive without turning every journey into constant creature interruption.

## Road Network And Surface Overhaul

### Core Idea

- This subsection owns the physical road network: whether the roads themselves feel like built infrastructure or just a painted texture on the ground.
- It is separate from roadside landmark density (above) and from road-texture ownership in `modlist-02.md`. This section is about road presentation at the mesh and geometry level, not surface materials.

### Options

- Texture-blending route: `Blended Roads - Light Plugin (ESL)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/171554>. Seamless road-to-terrain texture blending without new meshes or authored geometry. Lightweight, ESL-flagged, zero patch burden.
- Roadside detail route: `Interesting Roads` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/42749>. Adds roadside objects (barrels, carts, signs) to make traveled roads feel more lived-in, without touching road geometry.
- Signage route: `Point The Way` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/352>. Adds road signposts at junctions for navigational clarity.
- Discipline-first route: let `modlist-02.md` texture replacers carry all road visual improvement with no extra geometry or object additions.

### Recommendation

- Set `Blended Roads - Light Plugin (ESL)` as the locked baseline. It provides the best visual improvement-to-complexity ratio for this stack: seamless road blending with no worldspace edits, no patch requirements, and no grass-cache regeneration.
- Add `Interesting Roads` and `Point The Way` as lightweight companions for roadside character and navigational signposting. Both are asset-only additions that do not require patching.
- The heavier `Northern Roads` (authored road meshes, full network overhaul) was evaluated and rejected due to the patch burden it imposes at this modlist's complexity level — the official patch collection alone covers six major mods, and every new content mod that touches roads creates another unresolved conflict.
- Road surface texture quality is still owned by `modlist-02.md` (`Blended Roads` handles blending, not surface material).

### Risks & Compatibility

- `Blended Roads - Light Plugin` is a lightweight visual improvement, not a road geometry overhaul. Roads will not read as deliberately constructed infrastructure the way authored road meshes would achieve.
- Roadside object mods (`Interesting Roads`, `Point The Way`) stack additively with city overhauls but may clip with mod-added structures near road edges. This is a visual rather than gameplay concern.
- If the project later decides it does want authored road geometry, adopting a heavy road mesh overhaul retroactively requires re-generating grass caches, adding the full patch collection, and resolving any new content mod conflicts that have accumulated since the lock-in.

### Acceptance Criteria

- `Elder Wilds` has one locked road presentation baseline: `Blended Roads - Light Plugin (ESL)`.
- Roadside detail and signage are handled by lightweight companions (`Interesting Roads`, `Point The Way`) rather than by a full road geometry overhaul.
- Road surfaces feel cohesive with the surrounding terrain through texture blending rather than authored geometry.
- The decision to reject `Northern Roads` is documented alongside the rationale (patch burden at current complexity level), so future contributors do not reopen the question without understanding why it was set aside.

## Environmental Atmosphere: Wind And Dynamic Effects

### Core Idea

- This subsection owns how wind, atmospheric movement, and dynamic environmental effects make the world feel physically alive during ordinary exploration.
- It should add perceptible world-layer motion — wind through trees and grass, dynamic cloth physics, and airborne particle behavior — without collapsing into weather-system ownership or graphics-side shader territory.

### Options

- Wind-physics framework route: `Dynamic Wind Framework - SKSE Plugin` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/177023> — a SKSE plugin that enables dynamic wind behavior (tree sway, grass movement, cloth physics) tied to weather and location conditions. Provides the infrastructure for wind-aware environmental effects.
- Wind-content companion route: `Dynamic Wind - Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/177024> — config/data mod that applies the Dynamic Wind Framework to Skyrim's weather and locations. Depends on the framework plugin.
- Particle-wind companion route: `Particle Wind - SKSE Plugin` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/174812> — makes dust, leaves, snow, and other airborne particles react to wind direction dynamically. By RavenKZP (same author as Dynamic Wind Framework). Requires SKSE and Address Library.
- Water-surface companion route: `Realistic Boat Bobbing SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/26080> — adds realistic idle-bobbing animations to boats in harbors and coastal areas. Requires SKSE.
- Water-surface BOS variant route: `Realistic Boat Bobbing SE - BOS Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/88885> — uses Base Object Swapper to distribute boat-bobbing behavior to mod-added boats. Requires `Base Object Swapper` and the base `Realistic Boat Bobbing SE` mod.

### Recommendation

- Add `Dynamic Wind Framework - SKSE Plugin` as the infrastructure baseline. It enables weather-aware wind physics that make trees, grass, and environmental elements respond to weather conditions dynamically rather than using canned animations. Requires Address Library for SKSE Plugins (already in the foundation layer).
- Add `Dynamic Wind - Skyrim` as the required data companion. The framework plugin provides the engine; this mod provides Skyrim-specific wind profiles tied to weather and location cells.
- Add `Particle Wind - SKSE Plugin` as the particle-level companion to the Dynamic Wind Framework. It makes dust, leaves, snow, and ash particles respond to wind direction in real time, adding perceptible air movement to the visual environment. By the same author as the framework, so integration is expected to be clean. Requires SKSE and Address Library.
- Add `Realistic Boat Bobbing SE` as an optional water-surface companion for harbor and coastal immersion. Boats bob with idle animations that were shipped but never enabled in vanilla. Keep it optional — it is purely cosmetic and adds no gameplay depth, but makes docked boats feel physically alive rather than frozen.
- Add `Realistic Boat Bobbing SE - BOS Edition` as the companion for mod-added boat support. If the base mod is used, the BOS variant extends boat-bobbing to boats added by city, worldspace, or dock mods without requiring bespoke patches for each. Requires `Base Object Swapper` and the base mod.
- Keep this subsection separate from the broader weather-system ownership (which belongs in `modlist-02.md`'s Weather and Lighting subsection) and from graphics-side cloth physics (which belongs in `modlist-02.md`'s physics decisions).

### Risks & Compatibility

- Dynamic wind is a visual-enhancement layer, not a gameplay system. If performance is a concern, it is the easiest subsection to skip without breaking anything else.
- The framework is maintained by RavenKZP and has been stable since its mid-2025 release, but it is a relatively new mod (post-June 2025). Verify it works cleanly with the chosen tree mod, grass stack, and ENB/community shader before treating it as locked.

### Acceptance Criteria

- `Elder Wilds` has one clear dynamic-wind baseline (`Dynamic Wind Framework` + `Dynamic Wind - Skyrim`).
- Trees, grass, and cloth respond to weather conditions with visible dynamic movement rather than canned animation loops.
- The mods integrate cleanly with the tree mod, grass stack, and ENB/community shader without visual artifacts or performance degradation.

## Night Darkness And Visibility Balance

### Core Idea

- This subsection owns how dark Skyrim nights should feel during ordinary travel and what kind of visibility support still keeps that darkness readable rather than annoying.
- The goal is to make nighttime travel feel more consequential and atmospheric without collapsing into broader weather, lighting, or survival-overhaul ownership handled elsewhere.

### Options

- Darkness-first route: `Simply Darker Nights (SSE)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/14269>
- World-lighting support route: `Lanterns of Skyrim SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/2429>
- Carried-visibility route: `Wearable Lanterns` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/7560>

### Recommendation

- Start with `Simply Darker Nights (SSE)` as the strongest first-pass baseline because it directly answers whether nighttime in `Elder Wilds` should actually feel darker and more atmospheric during travel.
- Keep `Lanterns of Skyrim SE` as the meaningful comparison if the real weakness is not darkness itself, but how poorly roads and travel paths read once night falls.
- Keep `Wearable Lanterns` as the deliberate carried-visibility branch if the project wants nights to remain dark overall but still wants player-controlled visibility support instead of more fixed world lighting.
- Keep this subsection about nighttime feel and travel readability rather than generic display calibration, graphics-lighting philosophy, or survival maintenance.

### Risks & Compatibility

- Weak night mood can trigger stacking several visibility systems at once and losing control of the overall night identity.
- Nights can be made darker in theory but then undermined with so much added light support that the mood barely changes.
- A carried-light solution can become a constant crutch instead of a deliberate travel tool.

### Acceptance Criteria

- One clearly preferred darkness-first baseline, one meaningful fixed-world-lighting comparison, and one distinct carried-visibility branch are documented.
- The distinction between darker-night mood, world-lighting support, and carried visibility is explicit.
- Nighttime travel becomes more atmospheric without making navigation unreasonably frustrating.

## Activation Text And Interaction Immersion

### Core Idea

- This subsection owns whether the activation prompt text and NPC identification feel immersive and descriptive rather than generic.
- It should make ordinary interactions read as specific actions instead of a blanket "Activate" label, without introducing gameplay systems or survival mechanics.

### Options

- Activation-text route: `Roleplaying In Skyrim - Immersive Activators` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/149908> — replaces generic activation prompts with descriptive text (e.g., "Read Book" instead of "Activate") and hides NPC names until interaction, showing only gender and race. ESL-flagged, one-time perk script, MCM-toggleable. 163 endorsements.

### Recommendation

- Add `Roleplaying In Skyrim - Immersive Activators` as an optional interaction-immersion layer. It is extremely lightweight (8KB, no ongoing scripts, no SKSE requirement) and makes activation prompts read as specific actions rather than a generic verb. The NPC-name-hiding feature is toggleable via MCM for players who prefer vanilla identification. Compatible with any mod that does not also change activation text.

### Risks & Compatibility

- Hiding NPC names until interaction may frustrate players who rely on visible names for quest targets or dialogue choices. The MCM toggle mitigates this.
- Any other mod that changes activation text will conflict. Verify no other list entry duplicates this function.

### Acceptance Criteria

- `Elder Wilds` has one optional activation-text immersion mod documented with clear scope.
- The mod is marked optional and its MCM-toggleable NPC-name feature is called out.
- No other mod in the list changes activation text.

## Post-Install Smoke Test

After completing this section, verify stability with the coc console command at these 6 locations:

| # | Command | Location | Stress Profile |
|---|---------|----------|----------------|
| 1 | `coc Whiterun` | Whiterun | Major city — NPCs, shadows, architecture density |
| 2 | `coc Solitude` | Solitude | Large city — water reflections, long draw distances |
| 3 | `coc RiftenOrigin` | Riften | Canopy lighting, heavy NPC AI packages |
| 4 | `coc MarkarthOrigin` | Markarth | Dwemer stone, waterfalls, extreme verticality |
| 5 | `coc Riverwood` | Riverwood | Forest exterior — grass, trees, landscape LOD |
| 6 | `coc BleakFallsBarrow01` | Bleak Falls Barrow | Interior dungeon — close-quarters lighting |
| 7 | `coc WhiterunBanneredMare` | Bannered Mare (Whiterun) | Tavern interior — fire lighting, patron NPCs, confined space |

**Pass criteria:** No crash on load. No missing textures. ≥60 FPS maintained (uncap framerate, use `tgm` for god mode if needed).

If any location fails, the most recently installed mod or generation step is the first suspect.
