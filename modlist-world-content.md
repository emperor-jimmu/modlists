# World Content

**MO2 Separator:** `World Content` → `World Content - Overhauls`, `World Content - Quests`, `World Content - Homes & Bases`, `World Content - Underwater`

## Landscape Overhauls → `World Content - Overhauls` → `World Content - Overhauls`

### Core Idea

- This subsection owns large worldspace-content changes that make regions feel meaningfully different to cross, rather than just prettier to look at.
- Graphics ownership for terrain, trees, grass, lighting, and general landscape rendering still belongs to [`modlist-graphics-shaders.md`](modlist-graphics-shaders.md). → `World Content - Overhauls`

### Options

- Regional transformation route: `Whiterun Forest Borealis` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/11343> → `World Content - Overhauls`
- Swamp-atmosphere route: `The Marshlands` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/23062> → `World Content - Overhauls`
- Rift-identity companion route: `Aspens Ablaze` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/39998> → `World Content - Overhauls`
- Discipline-first route: keep this layer restrained until the rest of section 08 is clearer.

### Recommendation

- Start with the discipline-first route long enough to confirm section 08 actually wants regional worldspace transformation instead of only better visuals.
- If the section does want a first transformation experiment, use `The Marshlands` as the strongest first-pass baseline because it gives Hjaalmarch a strong identity without redefining one of Skyrim's most central travel spaces. → `World Content - Overhauls`
- Keep `Whiterun Forest Borealis` as the louder comparison if the project wants a more dramatic regional rewrite. → `World Content - Overhauls`
- Treat `Aspens Ablaze` as a complementary Rift identity layer rather than the main answer, and only keep it if the section-02 tree and foliage direction can absorb it cleanly. → `World Content - Overhauls`

### Risks & Compatibility

- It is easy to confuse graphics ambition with actual world-content value.
- Broad regional edits can create heavy pressure around roads, tree placement, outskirts, lighting, snow, and LOD regeneration.
- Adding multiple regional identity mods too casually turns the subsection into an accidental patch pile.

### Acceptance Criteria

- Section 08 has a clear position on whether landscape content should stay restrained or include a regional transformation.
- The distinction between landscape content and landscape graphics treatment stays explicit.
- The chosen direction preserves room for later settlement, dungeon, quest, and home decisions.

## Cities, Towns, And Villages → `World Content - Overhauls`

### Core Idea

- This subsection owns actual settlement-content additions and stronger settlement identity.
- Section 07 already handled broader city-presence and world-feel tuning; this section is about authored places, not just denser vibes.

### Options

- Major-hold-capital overhaul route: `The Great Cities` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/320>. Arthmoor's full overhaul of the major hold capitals (Whiterun, Solitude, Windhelm, Markarth, Riften) and the parent mod that the Minor Cities and Towns extension is built on. Has a long patch ecosystem (notably with `JK's Skyrim`, `Spaghetti's Cities`, `Lux`, the `PBR textures for The Great Cities Collection` texture pack, and the `Legacy of the Dragonborn` Safehouse). → `World Content - Overhauls`
- Broad minor-settlement route: `The Great Cities - Minor Cities and Towns SSE Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/20272> → `World Content - Overhauls`
- Modular hold-capital identity route: `Cities of the North - Dawnstar` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/28952>, `Cities of the North - Morthal` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/34168>, `Cities of the North - Falkreath` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/56731>, and `Cities of the North - Winterhold` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/40088>. JPSteel2's modular four-part series (one mod per smaller hold capital) that gives each of the four underbuilt hold capitals its own architectural identity without committing to a full Arthmoor-style city overhaul. The four mods are designed to stack and each one is independent, so `Elder Wilds` can pick and choose which holds to upgrade. Endorsement range is 9.5K-12.7K, the strongest independent smaller-hold identity series on Nexus. → `World Content - Overhauls`
- Focused single-town route: `The Great Town of Ivarstead SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/34505> → `World Content - Overhauls`
- Complementary village routes: `The Great Village of Kynesgrove` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/42639> and `The Great Village of Mixwater Mill SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/36350> → `World Content - Overhauls`
- Underbuilt-settlement population pass: `Settlements Expanded` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/7777>. A standalone population-and-structures mod that adds buildings, NPCs, vendors, and guard patrols to seven underbuilt vanilla settlements (Loreius Farm, Heartwood Mill, Coldstone Mine, Silverdrift Lair area, and others) that vanilla ships with 1-2 NPCs and feel like ghost towns. Designed to load late in the load order and ships several compatibility patches for other location-changing mods. → `World Content - Overhauls`
- Solitude-only Arthmoor route: `The Great City of Solitude SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/22243>. Arthmoor's standalone Solitude overhaul (authored by soldierofwar in the Arthmoor city-family style). It expands Solitude's port with new homes, shops, and warehouses on both sides of the Karth River, reshapes the stone arch, and adds new vendors, guards, and NPCs to make Solitude feel like Skyrim's grand capital. Designed to be picked up either as a standalone add-on to vanilla Solitude or as a follow-on to `The Great Cities` parent. → `World Content - Overhauls`
- Whiterun outskirts expansion route: `JK's Whiterun Outskirts` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/78351>. A lore-friendly overhaul of Whiterun's outskirts: new buildings (including a new inn), new NPCs, overhauled farms with new crops (Pelagia Farm, Chillburrow, and Battle Born), Honningbrew Meadery exterior expansion, and the Whitewatch tower to the northeast. A standalone JK's mod that is independent of the `JK's Skyrim` AIO (which is also locked in), so it stacks cleanly with the AIO's city-interior work. → `World Content - Overhauls`
- Whiterun districts-and-quests expansion route: `Capital Whiterun Expansion` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/37982>. A major Whiterun expansion that adds two new districts to the city (new buildings, decorations, shops, merchants, and NPCs), plus a new player home and new quests. Larger in scope than `JK's Whiterun Outskirts` and complementary rather than overlapping: the JK's mod works the area between Whiterun's walls and the hold, while this mod adds new districts inside the city's footprint. → `World Content - Overhauls`
- Shor's Stone standalone route: `The Great Town of Shor's Stone SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/35977>. Another Arthmoor-family standalone town overhaul (alongside the Great Town of Ivarstead, Karthwasten, etc. that are already in the subsection). Expands Shor's Stone (a small mining town in the Rift) with new buildings, NPCs, and structures to make it feel like a real town. Stacks with `The Great Cities - Minor Cities and Towns` family because each Arthmoor town mod is designed to be independent. → `World Content - Overhauls`
- Solstheim settlement overhaul route: `JK's Raven Rock` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/141070> — overhauls Raven Rock, Skyrim's only populated Dunmer settlement on Solstheim, with new clutter, architecture detail, and environmental storytelling. By JPSteel2 (also of Cities of the North and Snazzy series). ESL-flagged. Complements the existing JK's Skyrim AIO for mainland cities while adding Solstheim coverage. → `World Content - Overhauls`
- Solstheim Telvanni-tower overhaul route: `JK's Tel Mithryn` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/151512> — overhauls Neloth's Telvanni tower exterior and interior with more detailed clutter, better lighting, and lived-in environmental storytelling. By JPSteel2. ESL-flagged. Pairs with JK's Raven Rock for comprehensive JK's-style Solstheim coverage. → `World Content - Overhauls`

### Recommendation

- Start with the broad minor-settlement route.
- Use `The Great Cities - Minor Cities and Towns SSE Edition` as the first-pass baseline because it gives multiple underbuilt settlements stronger structure without immediately committing to a modular city-family patch story. → `World Content - Overhauls`
- Keep `The Great Cities` base mod as the explicit major-hold-capital follow-on if the project decides the major hold capitals also need authored treatment. The base mod and the Minor Cities extension are designed to stack, but adding the base pulls in a real compatibility discussion with section-07's `Spaghetti's Cities - AIO` and `JK's Skyrim` (overlap city edits, need a compatibility patch or a load-order decision) and with the `PBR textures for The Great Cities Collection` texture pack in section 02. Treat it as a deliberate second-step decision, not a default addition. → `World Content - Overhauls`
- Keep `Cities of the North - Dawnstar` as the meaningful comparison if the project wants the more bespoke architectural-identity route and is willing to treat that family as a deliberate modular commitment. → `World Content - Overhauls`
- Use the full `Cities of the North` series (Dawnstar + Morthal + Falkreath + Winterhold) as the default modular lock for the four smaller hold capitals. JPSteel2's series is the only major modular identity option that covers all four smaller holds with matching architectural ambition, and the four mods are designed to stack. `Elder Wilds` should lock in the full series unless a real reason emerges to skip one (e.g. `Falkreath` is too close to a `Lux` light source for a particular lighting setup). Skipping individual mods is a deliberate choice, not a default. → `World Content - Overhauls`
- Keep `The Great Town of Ivarstead SSE` as the focused comparison if the smarter answer is a smaller number of carefully chosen town upgrades. → `World Content - Overhauls`
- Treat `The Great Village of Kynesgrove` and `The Great Village of Mixwater Mill SSE` as complementary additions rather than primary subsection answers. → `World Content - Overhauls`
- Use `Settlements Expanded` as the default population-and-structures companion to all the city-family and village mods above. It is the cheapest way to make the seven underbuilt vanilla settlements (Loreius Farm, Heartwood Mill, Coldstone Mine, etc.) feel like real inhabited places, and it does not overlap with the architectural-identity choices in `JK's Skyrim` or `The Great Cities` because it does not change city geometry. The mod's only structural requirement is that it load late in the load order, which fits the standard Elder Wilds ordering (city-overhaul plugins above world-content plugins). → `World Content - Overhauls`
- Use `The Great City of Solitude SSE` as the explicit Solitude deep-dive. The standalone Solitude overhaul is a deliberate partial commitment to the Arthmoor city-family approach: it gives Solitude a full architectural-identity and population upgrade without forcing `Elder Wilds` to commit to the entire `The Great Cities` base mod (which would also overhaul Whiterun, Windhelm, Markarth, and Riften and pull in a much larger compatibility footprint with `JK's Skyrim`, `Spaghetti's Cities`, and the `PBR textures for The Great Cities Collection` texture pack from section 02). If the project later wants to extend the Arthmoor approach to other hold capitals, the standalone Solitude mod sets the precedent without making that future decision a default. → `World Content - Overhauls`
- Add `FYX - Eastern Empire Company Building` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/86526> as a Solitude-specific mesh fix for the Eastern Empire Company building — a targeted stopgap before Solitude's city overhaul direction is settled. → `World Content - Overhauls`
- Add `FYX - Riften - Window Consistency` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/182707> as a mesh consistency fix for Riften's windows, aligning their appearance across the city's buildings. A targeted visual stopgap before larger city overhauls are settled. → `World Content - Overhauls`
- Use `JK's Whiterun Outskirts` as the default Whiterun-area expansion. It is a separate mod from `JK's Skyrim` (the AIO is in the same section and overhauls Whiterun's interior and main walls) and adds the missing piece: the area between Whiterun's walls and the rest of the hold, including the farms, the meadery, and the new Whitewatch tower. Because the two JK's mods are independent, they stack without patching. Lock it in as the Whiterun-area baseline. → `World Content - Overhauls`
- Use `Capital Whiterun Expansion` as the Whiterun-content expansion if `Elder Wilds` wants Whiterun to have a real city-division identity and quest content beyond the vanilla layout. The two-new-districts scope adds substantial new space inside the walls, plus a player home and quest content. Verify it does not overlap with `JK's Skyrim`'s Whiterun edits by checking the JK's patch hub for a `Capital Whiterun Expansion` compatibility patch before locking it in. If a patch is missing, treat it as mutually exclusive with `JK's Skyrim`'s Whiterun edits (i.e. keep JK's Whiterun Outskirts but disable the JK's Skyrim Whiterun edits for that load-order slot). → `World Content - Overhauls`
- Use `The Great Town of Shor's Stone SSE` as a complementary addition to the broader `The Great Cities - Minor Cities and Towns` baseline. Shor's Stone is a small mining town in the Rift that vanilla treats as a one-building stop; this mod gives it the same Arthmoor treatment as Karthwasten and Ivarstead get, so the player can stop there and find a real community. It does not conflict with the minor-cities parent mod because each Arthmoor town mod is independent. → `World Content - Overhauls`

### Risks & Compatibility

- It is easy to re-solve the section-07 city-presence problem with heavier settlement overhauls when the real goal is authored place-content.
- Modular city-family choices can turn this subsection into a patch-collection project too early.
- Settlement edits create pressure around roads, outskirts, snow, lighting, and landscape compatibility.

### Acceptance Criteria

- Section 08 has one clear broad settlement baseline, one modular identity comparison, and one focused single-town comparison.
- The distinction between broader settlement expansion, modular architectural identity, and focused single-place enhancement stays explicit.
- Later inns, small settlements, dungeons, POIs, quests, and homes still have room to matter on their own.

## Inns, Farms, And Small Settlements → `World Content - Overhauls`

### Core Idea

- This subsection owns the smaller stopover places that make travel routes and rural Skyrim feel lived-in.
- It should answer a different question from the larger city and village subsection above: travel-stop identity, small community presence, and memorable rural pauses.

### Options

- Small-settlement restoration route: `Granite Hill` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/14658> → `World Content - Overhauls`
- Niche farmstead-overhaul route: `Lund's Hamlet - An Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/169830>. A small targeted overhaul of an otherwise mostly forgotten farmstead (Lund's Hut). Uses retextured Redbag `Shor's Stone` meshes, fully navmeshed, ships a built-in LOTD patch, and has optional compatibility patches for `Lux`, `Lux Orbis`, `Embers XD`, `Nature of the Wild Lands`, and a few settlement mods. 424 endorsements, last updated June 2026. → `World Content - Overhauls`
- Travel-stop village route: `The Great Village of Old Hroldan SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/33189> → `World Content - Overhauls`
- Inn-focused route: `Candlehearth - An Inn Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/97542> → `World Content - Overhauls`
- Complementary village routes: `The Great Town of Karthwasten SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/33032> and `Oakwood` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/61007> → `World Content - Overhauls`

### Recommendation

- Start with the travel-stop village route.
- Use `The Great Village of Old Hroldan SSE` as the strongest first-pass baseline because it gives the world a more authored roadside stop without turning the subsection into a broad restoration bundle. → `World Content - Overhauls`
- Keep `Granite Hill` as the meaningful comparison if the world would benefit more from restoring another small settlement along normal routes. → `World Content - Overhauls`
- Treat `Lund's Hamlet - An Overhaul` as a complementary niche farmstead option rather than a baseline. It is the smallest of the small-settlement picks here (Lund's Hut only) and is best evaluated after the subsection already has a travel-stop and a restoration baseline in place, so it adds rural texture without reshaping subsection priorities. → `World Content - Overhauls`
- Add `Candlehearth - An Inn Overhaul` as the locked inn-overhaul baseline. It overhauls every inn in Skyrim with new interiors, layouts, and atmosphere, making rest stops feel like memorable destinations rather than forgettable waypoints. Lock it alongside the travel-stop village route rather than treating it as a secondary branch. → `World Content - Overhauls`
- Treat `The Great Town of Karthwasten SSE` and `Oakwood` as complementary additions rather than primary subsection answers. → `World Content - Overhauls`

### Risks & Compatibility

- This subsection can easily become a second uncontrolled settlement-family pile.
- Inn-focused interior upgrades can distract from the broader question of whether the countryside has enough believable small communities.
- Roads, lighting, snow, landscape edits, and adjacent settlement overhauls create real compatibility pressure here.

### Acceptance Criteria

- Section 08 has one clear travel-stop or small-place baseline, one meaningful small-settlement comparison, and one narrower inn-focused branch.
- The distinction between roadside village identity, restored settlement presence, and inn-focused stopover improvement stays explicit.
- Later dungeons, POIs, quests, and homes remain distinct decisions rather than overflow from this subsection.

## Dungeons And Ruins → `World Content - Overhauls` → `World Content - Overhauls`

### Core Idea

- This subsection owns added dungeon-space and deeper ruin exploration.
- The goal is more worthwhile exploration, not just darker visuals or a raw increase in map markers.

### Options

- Broad radiant-dungeon route: `Forgotten Dungeons (SSE)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/449> → `World Content - Overhauls`
- Authored dungeon-pack route: `Hammet's Dungeon Pack 1 SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/12186> → `World Content - Overhauls`
- Deep-underground route: `Skyrim Underground SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/131> → `World Content - Overhauls`
- Vanilla-ruin enhancement route: `Dungeons - Revisited` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51798> → `World Content - Overhauls`
- Ancient-Nordic ruin diversity route: `Children of the North Wind - Ruins of the Ancient Nords` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/147701>. Reworks the Ancient Nordic crypts and ruins across nine locations (Bleakwind Bluff, Forelhost, High Gate Ruins, Kilkreath Temple, North Skybound Watch, Ragnvald, Shroud Hearth Barrow, Valthume, Volunruud) with new meshes, clutter, bespoke architecture, and exterior overhauls that aim for the "ancient population center" identity cut from vanilla. 1,137 endorsements, ~146K unique downloads, last updated June 2026. → `World Content - Overhauls`

### Recommendation

- Start with the broad radiant-dungeon route.
- Use `Forgotten Dungeons (SSE)` as the first-pass baseline because it adds more places to discover without forcing the entire section to revolve around one giant bespoke underground project. → `World Content - Overhauls`
- Keep `Hammet's Dungeon Pack 1 SE` as the meaningful comparison if the project wants a stronger hand-authored dungeon-adventure identity. → `World Content - Overhauls`
- Treat `Children of the North Wind - Ruins of the Ancient Nords` as the high-commitment ancient-Nordic-specific branch. It is heavier and more opinionated than the other ruin picks here because it replaces architecture across a curated location set rather than adding new dungeons, so it is the right comparison when the list wants Nordic ruin identity to feel like a real population-center ruin layer rather than just more generic crypts. → `World Content - Overhauls`
- Keep `Skyrim Underground SSE` as the high-commitment branch if the list wants a much larger subterranean layer than vanilla suggests. → `World Content - Overhauls`
- Treat `Dungeons - Revisited` as the strongest complementary branch rather than the main answer, because it improves existing ruins instead of deciding whether section 08 wants more destinations. → `World Content - Overhauls`
- Supplemental navmesh patch: `Navigator - Navmesh Fixes - Patch Collection` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/111379> — FOMOD collection of compatibility patches for `Navigator - Navmesh Fixes` covering content mods used in this section (Dungeons Revisited, Legacy of the Dragonborn, Helgen Reborn, JK's interiors, Skyrim Sewers, and others). Install after both the content mods and Navigator are in place. 692 endorsements, by ra2phoenix. (Optional) → `World Content - Overhauls`
- `Iconic's Crown of Barenziah` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/137469> upgrades the Crown of Barenziah, its gem boxes, and display stand with high-quality meshes, parallax gems, and environment mapping. 4K/2K options, compatible with everything except other crown retextures. Adds quest-reward visual payoff without gameplay changes. (Note: correct mod ID is 137469, not the 115249 originally cited.) → `World Content - Overhauls`

### Risks & Compatibility

- It is easy to add dungeon count without adding meaningful exploration value.
- Combining several dungeon packs too casually creates content fatigue, overlap, and patch debt.
- Entrance placement, lighting, encounter balance, quest aliases, and underground-space conflicts all matter here.

### Acceptance Criteria

- Section 08 has one clear broad dungeon baseline, one authored-dungeon comparison, one high-commitment underground branch, and one selective vanilla-ruin enhancement branch.
- The distinction between new delves, a major underground layer, and deeper treatment of existing ruins stays explicit.
- Later POI, quest, and home decisions still have room to matter.

## Points Of Interest And Roadside Content → `World Content - Overhauls`

### Core Idea

- This subsection owns the smaller discoverable places between headline destinations: guarded crossings, hidden shelters, and minor landmarks that reward curiosity during normal travel.
- Section 07 already owns roadside ambience and travel texture; this subsection owns actual stop-worthy additions.

### Options

- Border-post and checkpoint route: `Hold Border Guards - Definitive Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/61170> → `World Content - Overhauls`
- Lightweight landmark route: `Nordic Ruins of Skyrim SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/20382> → `World Content - Overhauls`
- Hidden-shelter route: `Hidden Hideouts of Skyrim SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/2625> → `World Content - Overhauls`
- Narrower companion route: `Hidden Hideouts of Skyrim City Edition SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/2626> → `World Content - Overhauls`
- Rejected caution branch: `Master The Summit` stays out because current community signal points too strongly toward support and navmesh-risk concerns. → `World Content - Overhauls`
- Daedric shrine locations route: `Daedric Shrines - All in One` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/78772> — adds physical shrines to each Daedric Prince at lore-appropriate locations across Skyrim. Each shrine is a discoverable point of interest with unique architecture matching the Prince's domain. Complements the Pilgrim/Pilgrim religion system from `modlist-expanded-systems.md` without requiring it. → `World Content - Overhauls`
- Abandoned-building restoration route: `Environs - Abandoned Abodes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/82410> — restores and refurbishes several abandoned buildings across Skyrim (Hoddminir, Tumbledown Shack, Hellfire Chasm, and others) into inhabited, lootable locations with new clutter and environmental storytelling. ESL-flagged, authored by Tx12001, widely compatible with landscape and city overhauls. → `World Content - Overhauls`
- Daedric Shrines patch collection: `Daedric Shrines - All in One by Xtudo - Wintersun Lakeview Teldryn Cure Wyrmstooth Antennaria Evil Aemer Thieves Helgen Death Cut Content Moon Leaf Rest Talos` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/78809> — a compatibility patch bundle for Daedric Shrines covering Wintersun, Wyrmstooth, Legacy of the Dragonborn, Lakeview, and other mods in the list. Required companion if Daedric Shrines is locked. → `World Content - Overhauls`

### Recommendation

- Start with the hidden-shelter route.
- Use `Hidden Hideouts of Skyrim SE` as the first-pass baseline because it adds practical refuges and quiet off-road discoveries that fit the list's travel-and-exploration tone especially well. → `World Content - Overhauls`
- Keep `Hold Border Guards - Definitive Edition` as the meaningful comparison if the project wants roadside content to feel more geopolitical and structured. → `World Content - Overhauls`
- Keep `Nordic Ruins of Skyrim SSE` as the lightest branch if the right answer is more discoverable landmarks rather than more useful stops. → `World Content - Overhauls`
- Consider `7000 Steps of Sanctum` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/128478> as a targeted pilgrimage enhancement. Removes hostile encounters (except the troll), swaps vegetation for climate-appropriate growth at altitude, adds a map marker for the troll encounter area, and realigns the High Hrothgar map marker. Soft-requirements `Cathedral - 3D Pine Shrubs` and `Happy Little Trees` for full aesthetic effect. Highly compatible (no navmesh edits, no cell-record conflicts), fits the tone of a more atmospheric journey. 243 endorsements. → `World Content - Overhauls`
- Only revisit `Hidden Hideouts of Skyrim City Edition SE` if the countryside hideout concept lands well and the project later wants city-adjacent hideaways to follow the same philosophy. → `World Content - Overhauls`

Add `Daedric Shrines - All in One` as a Daedric-shrine discovery layer. Each shrine is a bespoke point of interest with unique architecture matching the Prince's domain, rewarding exploration with visual payoff rather than loot. Complements the religion layer from `modlist-expanded-systems.md` without requiring it.

Add `Daedric Shrines - All in One by Xtudo` as the required patch companion. Its patch collection covers Wintersun, Wyrmstooth, LotD, Lakeview, and other mods in `Elder Wilds` that add or modify shrine-related locations.

Add `Environs - Abandoned Abodes` as an abandoned-building restoration layer. It targets specific abandoned locations (Hoddminir, Tumbledown Shack, Hellfire Chasm, and others) that vanilla leaves as empty shells and gives them new clutter, loot, and environmental storytelling. ESL-flagged, zero script overhead, compatible with most landscape and city overhauls. It fits the "lots of new content" pillar by converting forgettable empty buildings into discoverable locations without adding new cell records.

- `Gildergreen Regrown` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/348> — makes the Gildergreen sapling in Whiterun grow into a full tree over ~6 in-game months after completing the Blessings of Nature quest via the peaceful (sapling) route. Authored by Arthmoor, 24K endorsements, last updated February 2026. Hard-requires USSEP. Add as an optional quest-driven world-change layer: it only affects Whiterun's tree and only if the player chose the sapling path, so it is a narrow targeted addition with no landscape or cell-record pressure. → `World Content - Overhauls`
- `The Gildergreen Grows` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/147742> — the primary alternative to Gildergreen Regrown, using a faster 4-month growth cycle, ESL-flagged, with added dialogue lines and a watering mechanic that grants a temporary buff. Does not require USSEP. Incompatible with Gildergreen Regrown. Use one or the other depending on preference for growth speed and feature scope. → `World Content - Overhauls`

- `Hagraven Houses Animated` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/101952> — a Base Object Swapper mesh replacer that adds wind animation to hagraven houses and fences. 1,354 endorsements, by StoneSpiralGaming. Hard-requires `Base Object Swapper`. Does not change cell records or placement — purely a visual upgrade that makes hagraven structures feel alive. Add as an optional world-object animation layer for hagraven encounter spaces. → `World Content - Overhauls`

Add the `Evolving Locations` series as a dynamic overhauls layer: three shack locations that evolve and expand over playtime based on the player's actions and visit frequency. The series fits the "lots of new content" pillar by making previously static locations respond to the player's presence and grow more rewarding with repeated visits. All three are authored by Suinier (5-9K unique downloads each, ESL-flagged), and each changes interior and exterior over time rather than being a one-time set-dressing swap:

- `Evolving Locations - Riverside Shack` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/124268> → `World Content - Overhauls`
- `Evolving Locations - Lucky Shack` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/123700> → `World Content - Overhauls`
- `Evolving Locations - Cliffside Retreat` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/124524> → `World Content - Overhauls`

Add `Lore Friendly Roadside Ruins` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/130581> as a roadside-points-of-interest layer. Adds small, lore-friendly ruined structures along Skyrim's roadsides. Each ruin is a discoverable point of interest with loot and environmental storytelling, filling empty roadside stretches without adding new cell records or large landscape edits. Complements the existing hidden-shelter and abandoned-building restoration layers.

Add `Reinforced Civil War Camps` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/153645> as a Civil War camp overhaul that adds fortifications, tents, supplies, and more lived-in camp details to both Imperial and Stormcloak military camps. Improves an often-overlooked worldspace element that players encounter frequently during travel and Civil War quests. → `World Content - Overhauls`

Add `HAG Occult Orphan Rock` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/137996> as a location overhaul of Orphan Rock (the Forsworn/hagravens location near Falkreath) with occult-themed environmental storytelling, new clutter, and improved atmosphere. Part of the HAG series by Maggie. Complements the hagraven-animation and witch-themed content in the list. → `World Content - Overhauls`

### Risks & Compatibility

- This subsection can easily duplicate section-07 roadside-atmosphere logic instead of choosing real micro-destinations.
- Too many small worldspace edits make travel cluttered rather than more interesting.
- Roads, borders, city outskirts, survival systems, and landscape changes create real placement pressure.

### Acceptance Criteria

- Section 08 has one clear roadside-content baseline, one structured-roadside comparison, and one lighter landmark branch.
- The distinction between practical shelters, guarded crossings, and lightweight discoverable ruins stays explicit.
- The chosen direction improves ordinary travel and off-road curiosity without duplicating section-07 ownership.

## Underwater → `World Content - Underwater` Content

### Core Idea

- This subsection owns underwater world enhancement and discoverable underwater content: visual overhauls to the seafloor, underwater flora and fauna, and lootable treasure locations beneath the surface.
- Depths of Skyrim provides the visual and environmental overhaul of the Sea of Ghosts; More Underwater Treasures adds discoverable loot locations throughout Skyrim and Solstheim.

### Options

- Underwater visual overhaul route: `Depths of Skyrim - An Underwater Overhaul SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/26913> → `World Content - Underwater`
- Underwater mesh fixes companion: `Depths of Skyrim - Mesh fixes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/174995> → `World Content - Underwater`
- Underwater treasure content route: `More Underwater Treasures - AIO` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/128247> → `World Content - Underwater`

### Recommendation

- Use all three together. Depths of Skyrim overhauls the underwater environment (new grass, coral, giant kelp, 1000+ fish, unmarked treasures, horker groups, exposed-rock fixes, ocean-floor seam fixes) and specifically targets the Sea of Ghosts. The mesh fixes companion resolves known visual issues in the base mod. More Underwater Treasures adds 56 underwater treasures across Skyrim and 35 across Solstheim with clean landscape edits, vanilla chest replacements, and is explicitly marked **Compatible** with Depths of Skyrim.
- Use **SSE-Terrain-Tamriel-Extend.esm** (documented in `modlist-performance.md`) as the terrain-boundary ESM for LOD generation, because Depths of Skyrim adds content in the Sea of Ghosts north of the standard terrain-data boundary. → `World Content - Underwater`

### Risks & Compatibility

- Depths of Skyrim requires `iMaxGrassTypesPerTexure=7` or above in `Skyrim.ini`. Set this via `MO2 → Tools → INI Editor` under `[Grass]` (`iMaxGrassTypesPerTexure=7` is the BethINI Pie default at grass density 60). → `World Content - Underwater`
- Depths of Skyrim is script-free but adds 1000+ fish references; verify this does not create unexpected Papyrus load or navmesh pressure alongside other world-content mods.
- More Underwater Treasures has replaced landscape edits with vanilla chests; confirm this still works with any mod that overhauls the same underwater cells.
- Underwater visual changes may interact with the chosen water mod (Water for ENB / Realistic Water Two / A Water Made For CS in mind) — test underwater visibility and seafloor blending.

### Acceptance Criteria

- The Sea of Ghosts has visible kelp forests, coral, and fish populations when explored underwater.
- Underwater treasures are discoverable at the listed locations and contain appropriate leveled loot.
- No underwater-cell conflicts between Depths of Skyrim, More Underwater Treasures, and the chosen water mod.
- `SSE-Terrain-Tamriel-Extend.esm` is loaded during xLODGen terrain LOD generation and provides LOD coverage for the extended northern cells. → `World Content - Underwater`

## Side Activities: Fishing, Hunting, And Downtime → `World Content - Quests`

### Core Idea

- This subsection owns the non-combat downtime activities that make Skyrim feel like a lived-in world when the player is not dungeon-delving or quest-running: fishing, hunting for food and materials, foraging, and small craft-hobby loops.
- It closes the pillar-5 gap ("Living the world") by giving the player purposeful things to do during ordinary travel and rest stops that are neither combat nor quest objectives.

### Options

- Fishing-enhancement route: `Simple Fishing Overhaul - Animations and Improved Quest Dialogue` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/103440> → `World Content - Quests`
- Comprehensive hunting route: `Hunterborn SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/7900> → `World Content - Quests`
- Bounty-rework route: `Headhunter - Bounties Redone` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/119228> — reworks the vanilla bounty system with named targets, bounty notes, and NPC interactions at jails and taverns. Integrates with `Missives` for a unified bounty-and-missive board experience. By jayserpa. 28K+ endorsements. → `World Content - Quests`
- Bard-gameplay route: `Skyrim's Got Talent - Improve As a Bard` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/106106> — lets the player practice and improve at playing musical instruments, with skill progression, NPC reactions, and performance events at inns. Adds a meaningful downtime activity that makes taverns and social spaces feel more purposeful. By jayserpa. 19K+ endorsements. → `World Content - Quests`
- Fishing-support companion: `Streamlined Fishing` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/80683> → `World Content - Quests`
- Lightweight alternative branch: skip dedicated activity mods and rely on the base AE fishing addon plus `Hunterborn` as an optional add-on rather than a core recommendation. → `World Content - Quests`

### Recommendation

- Start with the fishing-enhancement route and the comprehensive hunting route together, because they serve different downtime needs and complement rather than overlap.
- Use `Simple Fishing Overhaul` as the fishing baseline. It adds third-person and first-person fishing animations, ~200 lines of improved quest dialogue, NPC reactions, an optional bait-cost mechanic, and MCM configuration — all atop the free AE fishing addon. It is ESL-flagged, lightweight, and widely compatible (5.2K endorsements, 660K unique downloads from author JaySerpa). → `World Content - Quests`
- Use `Hunterborn SE` as the hunting baseline. It replaces the one-click animal-loot system with a process: dress, skin, harvest, butcher. It adds hunting knives, new alchemy ingredients, animal meats, recipes, foraging, and a scrimshaw crafting line. It has been the community-standard hunting mod for years (20K endorsements, last updated August 2025) and fits the survival-and-progression tone of `Elder Wilds`. → `World Content - Quests`
- Add `Headhunter - Bounties Redone` as a locked bounty-system companion. It transforms vanilla bounty quests from anonymous radiant targets into named NPCs with bounty notes, jail dialogue, and tavern rumors, and integrates cleanly with `Missives` for a unified bounty-and-missive board experience. By the same author as `Simple Fishing Overhaul` (jayserpa), with 28K+ endorsements — one of the most popular gameplay-immersion mods on Nexus. → `World Content - Quests`
- Add `Skyrim's Got Talent - Improve As a Bard` as a locked bard-gameplay companion. It turns the bard performance loop from a one-click animation into a progression system where the player practices instruments, improves over time, receives NPC reactions, and performs at inns. Adds meaningful downtime activity that fits the "living the world" pillar. 19K+ endorsements, by jayserpa. → `World Content - Quests`
- Keep `Streamlined Fishing` as a fishing-support companion rather than a replacement if the QoL gap in the vanilla fishing loop proves too wide even after `Simple Fishing Overhaul`. → `World Content - Quests`
- Keep the lightweight alternative branch alive long enough to judge whether the downtime-activity layer needs dedicated mods at all, but treat the fishing+hunting baseline as the likely correct answer for the modlist's tone.

### Risks & Compatibility

- Adding two activity systems at once can feel like feature creep if the rest of the list does not reinforce the same living-world tone.
- `Hunterborn` requires creature-type patching for any mod that adds new creatures (use `Hunterborn Extender` via Synthesis to handle this). → `World Content - Quests`
- `Simple Fishing Overhaul` requires the free AE fishing addon (already included in Skyrim AE 1.6.1170) and OAR/DAR (already a baseline dependency from `modlist-animations.md`). → `World Content - Quests`
- Add `Immersive Fishing` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/115249> as a fishing-content expansion that adds new fishing spots, craftable rods, new fish types, and radiant fishing quests. It is a content-first companion to `Simple Fishing Overhaul` (which provides the animation and dialogue improvements) rather than a replacement. The two mods are designed to stack: SFO fixes fishing feel, Immersive Fishing fixes fishing scope. → `World Content - Quests`
- Add `Fishing Extension Framework` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/139626> as the encounter-zone and biome registration framework for adding fishing to new worldspaces. Required if the list includes new-lands mods where fishing should be available (e.g., Beyond Skyrim - Bruma). → `World Content - Quests`
- Add `Fishing Voiced Narrative - Simple Fishing Overhaul Voice Patch` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/113771> as a compatibility patch between Voiced Narrative - Fishing and Simple Fishing Overhaul. Required if both Voiced Narrative - Fishing and SFO are installed; routes the voiced narrative through SFO's quest dialogue hooks. → `World Content - Quests`
- Add `Fishing Extension for Beyond Skyrim - Bruma` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/152152> as a worldspace-specific fishing extension if Beyond Skyrim - Bruma is adopted. Adds fishing biomes, new fish species, and quest integration for Bruma's rivers and Lake Rumare. Requires the `Fishing Extension Framework` as a dependency. → `World Content - Quests`
- Add `Fishermen Fish - Brings the Fish to You` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/134408> as a lightweight immersion add-on that overlays fish meshes on NPCs who are fishing, carrying fish, or selling fish in markets. No ESP, purely a mesh replacer — safe to add or remove at any time. → `World Content - Quests`
- Add `Garbage Loot - Barrels and Sacks` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/18047> as a scavenging-content add-on that adds lootable trash containers (barrels, sacks, crates, garbage piles) throughout the world. Each container provides believable low-value loot (rotten food, rags, bones, empty bottles) — reinforcing the survival and scavenging tone of the living-world pillar. ESL-flagged, lightweight, no conflicts with location or container overhauls. → `World Content - Quests`
- Both mods should be checked against `modlist-lotd.md` for Legacy of the Dragonborn display integration if they add unique items. → `World Content - Quests`

### Acceptance Criteria

- `Elder Wilds` has one clear fishing baseline and one comprehensive hunting baseline. → `World Content - Quests`
- Fishing feels more animated and rewarding than the vanilla click-wait-click loop.
- Hunting involves a believable process (dressing, skinning, butchering) rather than a single loot click.
- Both activities integrate cleanly with the survival systems chosen in `modlist-expanded-systems.md` and the camping layer noted in `modlist-world-feel.md`. → `World Content - Quests`

## Weapons, Armor, And Equipment Additions → `World Content - Quests`

### Core Idea

- This subsection owns the bulk-added weapons, armor sets, shields, and supporting equipment that expand what the player and NPCs can wear, wield, and find.
- It is the content-side counterpart to the smithing subsection in `modlist-expanded-systems.md`: smithing is the systems layer, this is the actual item library. → `World Content - Quests`
- The goal is to add meaningful equipment variety without bloating leveled lists, fighting the chosen perk overhaul, or overwhelming the body and outfit pipeline from [`modlist-graphics-shaders.md`](modlist-graphics-shaders.md). → `World Content - Quests`

### Options

- Bulk weapons pack: `Immersive Weapons` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/16788> → `World Content - Quests`
- Bulk armors pack: `Immersive Armors` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/3479> → `World Content - Quests`
- Modern texture and mesh upgrade for the armor pack: `Immersive Armors Retexture and Mesh Fixes SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/75891> → `World Content - Quests`
- Dawnguard equipment expansion: `Dawnguard Arsenal SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/25094> — adds new Dawnguard weapons, armors, shields, and ammunition to the Dawnguard questline. The `Dawnguard Arsenal SSE - SkyPatched` variant (Nexus 113677) converts the mod to use `SkyPatcher` (already a core dependency in `modlist-foundations.md`) for record patching instead of a full plugin, reducing load-order impact. → `World Content - Quests`
- Discipline-first route: rely on vanilla weapons and armor and let smithing, perk, and quest-reward mods carry the equipment identity, with no bulk item packs added at all.

### Recommendation

- Use `Immersive Weapons` as the weapons baseline. It adds around 230 new weapons spread across 21 weapon archetypes (more than double vanilla's 8), all craftable, upgradeable, enchantable, and integrated through leveled lists, vendors, and dungeon placement. Authored by Hothtrooper44 and collaborators, with 114K endorsements and 2.2M unique downloads. → `World Content - Quests`
- Use `Immersive Armors` as the armor baseline. It adds around 55 armor sets (60+ with variants), 396 new shields, plus eye patches, capes, earrings, and scarves. Like the weapons pack, all items are craftable, upgradeable, enchantable, and integrated through leveled lists, quest rewards, and dungeon placement. The mod has an MCM or spell menu for distribution tuning. Authored by Hothtrooper44, with 206K endorsements and 3.16M unique downloads, making it one of the most-used content mods in the SE ecosystem. → `World Content - Quests`
- Use `Immersive Armors Retexture and Mesh Fixes SE` as the visual upgrade for the armor pack. The base `Immersive Armors` assets look dated next to modern 4K PBR textures from [`modlist-graphics-shaders.md`](modlist-graphics-shaders.md), and this retexture pack brings the armor visuals in line with the rest of the graphics stack (9.8K endorsements, 490K unique downloads). → `World Content - Quests`
- Use `Dawnguard Arsenal SSE - SkyPatched` as the Dawnguard-themed equipment expansion. Use the SkyPatched variant (113677) because `SkyPatcher` is already a core dependency — the SkyPatched version avoids adding a full plugin, reducing load-order pressure. It adds Dawnguard weapons, armors, and ammunition that slot naturally into the Dawnguard questline content. → `World Content - Quests`
- Keep the discipline-first route alive long enough to confirm the project actually wants bulk equipment content. If the chosen quest mods and smithing content already add enough unique gear, the bulk packs can be skipped to reduce leveled-list bloat.
- Keep this subsection separate from smithing in `modlist-expanded-systems.md`, perk overhauls in `modlist-expanded-systems.md`, and the crafting helpers in `modlist-expanded-systems.md`. This subsection owns the item library, not the systems that consume it. → `World Content - Quests`

### Risks & Compatibility

- Bulk item packs can create heavy leveled-list edits that conflict with encounter-zone, loot, and economy mods from `modlist-expanded-systems.md` and `modlist-survival-combat.md`. Resolve overlap by giving the bulk packs load-order priority for new items and tuning distribution through the mod's MCM.
- New armor sets must be tested against the chosen body base (`CBBE 3BA` / `HIMBO`) and the BodySlide pipeline from [`modlist-graphics-shaders.md`](modlist-graphics-shaders.md). Some vanilla-rigged armor pieces will need outfit conversions. → `World Content - Quests`
- Bulk packs can also affect NPC visual identity if `modlist-npcs.md` later bundles NPC overhauls; check for distribution or appearance conflicts. → `World Content - Quests`
- The base `Immersive Armors` mesh and texture work looks visibly dated without the retexture pack. Skipping the retexture makes the armor feel out of place in a 4K grim-dark presentation. → `World Content - Quests`
- New weapons and armor can dwarf unique items from `modlist-lotd.md` (Legacy of the Dragonborn) if display integration is not considered; verify the display ecosystem handles the new items cleanly. → `World Content - Quests`

### Acceptance Criteria

- `Elder Wilds` has one clear weapons-content baseline and one clear armor-content baseline, both with modern visual upgrades where applicable. → `World Content - Quests`
- The bulk packs do not create leveled-list or loot conflicts that the economy and difficulty layers cannot resolve.
- The new armor pieces display correctly on the chosen body base without clipping or stretching under the chosen lighting and weather setup.
- The chosen direction supports the "lots of new content" pillar without making the equipment pool feel bloated or generic.

## Quest Additions → `World Content - Quests`

### Core Idea

- This subsection owns additional quest content that makes Skyrim feel more alive or more worth revisiting without breaking the grounded exploration tone.
- It should decide what kind of quest addition fits `Elder Wilds`: more everyday local work, a compact authored story, or one larger expansion-scale commitment. → `World Content - Quests`

### Options

- Everyday emergent-quest route: `Sidequests of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/54245> → `World Content - Quests`
- Radiant-board baseline: `Missives` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/17576> — adds missive boards in each hold capital with 264 localized radiant quest variants (courier, deliver, fetch, hunt, bounty, and thief quests). Covers the everyday-content pillar more directly than Sidequests of Skyrim by providing structured, board-based radiant quests the player can browse and pick from at any hold. → `World Content - Quests`
- Missives notes retexture: `Missives - Notes Retexture` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/46201> — replaces the blank notes on missive boards with textured, readable notes by JaySerpa. Cosmetic only, no gameplay change. → `World Content - Quests`
- Missives voice and quest expansion: `Missives - Voice and Quest Expansion` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/166094> — adds 20 new missive quest types and more voiced NPC dialogue variety via audio splicing. By JaySerpa and GiraPomba. Adds meaningful quest variety to the missive board system. → `World Content - Quests`
- Missives worldspace support: `Missives - Worldspace Additions` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/26788> — compatibility patches that add missive boards to new-land mods (Beyond Skyrim - Bruma, Falskaar, Beyond Reach, Wyrmstooth, and others). Required companion if any new-land mod is adopted. → `World Content - Quests`
- Compact authored-quest route: `Moon and Star` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/4301> → `World Content - Quests`
- Large quest-expansion route: `Wyrmstooth` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/45565> → `World Content - Quests`
- Prestige specialty branch: `The Forgotten City` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/1179> → `World Content - Quests`
- Additional expansion-scale branch: `Beyond Skyrim - Bruma SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/10917> → `World Content - Quests`
- Bruma fishing companion: `Fishing Extension for Beyond Skyrim - Bruma` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/152152> — adds fishing biomes, new fish species, and quest integration for Bruma's rivers and Lake Rumare. Requires the `Fishing Extension Framework` (listed in the Side Activities subsection above). → `World Content - Quests`
- Darker specialty branch: `Beyond Reach` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/3008> → `World Content - Quests`
- High-commitment specialty branch: `VIGILANT SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/11849> → `World Content - Quests`
- Weird Dwemer-side branch: `The Wheels of Lull - Unwound Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/748> → `World Content - Quests`
- Legacy comparison point: `Falskaar` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/2057> → `World Content - Quests`
- Compact sea-monster quest: `Whispers of the Depths - A Sea Monster Quest` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/127087> — a compact quest mod by nimwraith that sends the player on an Argonian fisherman's hunt for a sea monster. Lightweight (~1 hour play time), fits the fishing/side-activity identity of the section, and keeps the grounded exploration tone. → `World Content - Quests`
- Compact voiced quest: `Before the End - Quest Mod` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/142238> — a compact voiced quest mod by nimwraith (same author as Whispers of the Depths). Lightweight, lore-friendly, with new NPC dialogue. Fits the same compact-authored-quest category as Whispers of the Depths. → `World Content - Quests`
- Telvanni quest-mod route: `Path of the Telvanni` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/182427> — a large quest-driven mod exploring old regions of Vvardenfell with new characters, spells, and gameplay mechanics as the player rises through House Telvanni ranks. Separate worldspaces, compatible with JK's Tel Mithryn and Better Tel Mithryn. Caution: released June 2026 (very new), tagged AI-Generated Content, minimal community vetting at time of writing. → `World Content - Quests`
- AE-gated caution branch: `Sirenroot - Deluge of Deceit` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/70917> → `World Content - Quests`
- Creation-overhaul route: `Saints and Seducers Extended Cut` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/72772>. A fully-voiced overhaul of the Saints and Seducers Creation that expands it into a proper return-to-the-Shivering-Isles questline with new scenes, locations, and voiced NPCs. Transforms the thin vanilla Creation into a real quest mod. → `World Content - Quests`
- Vanilla-quest-enhancement route: JaySerpa's Quest Expansions — a suite of individual mods that each expand one vanilla quest with new dialogue, scenes, and alternate paths. Key entries: `House of Horrors - Quest Expansion` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/57285>, `Paarthurnax - Quest Expansion` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51711>, `The Only Cure - Quest Expansion` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/57683>. All fully voiced by JaySerpa, one of the most prolific and well-regarded quest-expansion authors in the SE ecosystem. A central patches hub exists at Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/113083>. → `World Content - Quests`
- Thieves Guild quest overhaul route: `A Chance Arrangement Plus Plus - A Quest Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/175885> — a comprehensive overhaul of the "A Chance Arrangement" quest (the Thieves Guild initiation). Rewrites the quest with new scenes, dialogue, alternate routes, and expanded consequences. Fits the vanilla-quest-enhancement pattern alongside JaySerpa's suite but is specific to the TG start. → `World Content - Quests`
- Thieves Guild visual-progression route: `Opulent Thieves Guild` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/10932> — upgrades the Thieves Guild headquarters and Ragged Flagon visually as the guild's influence grows, making progress through the TG questline feel tangible. By Sokkvabekk. Pairs naturally with the TG quest overhaul above: one fixes the quest, the other visually reflects quest progress. → `World Content - Quests`
- Companions questline-pacing route: `Improved Companions - Questline Tweaks` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/120609> — improves the pacing of the Companions questline by spacing out radiant quests between story missions and removing the radiant-quest spam that vanilla forces on the player. By Parapets. Fixes one of the most common complaints about the Companions faction without rewriting character identity or quest content. → `World Content - Quests`
- Custom-follower-with-quest route: `Val Serano - Pirate Custom Voiced Follower and Quest Adventure` - by Axarien. A fully custom-voiced male pirate follower with ~2000 lines of dialogue and a multi-stage quest adventure. Has LoTD museum integration via the Followers Patch at Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/40816>. _(Nexus URL pending verification — unable to confirm base mod page ID via search.)_ → `World Content - Quests`
- Dark Brotherhood alternative faction route: `Penitus Oculatus` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/21061>. A joinable-faction mod that replaces the Dark Brotherhood with the Penitus Oculatus after completing the vanilla "Destroy the Dark Brotherhood!" quest. Adds radiant quests (steal Thalmor documents, assassinate Thalmor agents, hunt rogue agents, kill remnant DB assassins) and a final quest line to eliminate the rest of the Brotherhood. 11.5K endorsements, by wSkeever. Requires USSEP. Treat as an optional alternative faction route for characters who choose to destroy the DB — not a baseline recommendation. → `World Content - Quests`
- Quest-discovery map-helper route: `Quests Are In Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/18416>. Adds quest-giver and quest-start location markers to the world map for vanilla and DLC quests, making discoverable content easier to find without relying on radiant broadcasts or journal entries. Synthesis patcher at Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/129513> forwards its changes against other quest-modifying mods. By SarthesArai. Add as an optional map-navigation helper for quest-content discovery. → `World Content - Quests`
- Forgotten City companion entry: `The Forgotten City - Delayed Start` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/56958>. Delays the Forgotten City's starting quest trigger from level 5 to level 25. Requires The Forgotten City v1.8+ (already listed above). 1.6K endorsements. Add as an optional companion if the player wants a later start for that questline. → `World Content - Quests`
- Thief-themed new-lands route: `The Gray Cowl of Nocturnal - 10th Anniversary` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/141327>. MannyGT's DLC-sized quest mod centered on the Gray Cowl of Nocturnal from Oblivion, with a stealth-focused questline (~8-15 hours), new lands (Alik'r Desert area of Hammerfell, Coldharbour island), and custom assets. 2.2K endorsements, version 1.51, recommended level 15+. Triggered by stealing/pickpocketing at level 10+. Add as an optional large quest addition. → `World Content - Quests`
- Gray Cowl addons repository: `The Gray Cowl of Nocturnal - Addons Repository` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/126661>. Collection of addons for the 10th Anniversary edition including imp spawns, Modpocalypse NPC patches, and FLM compatibility patches. 293 endorsements, by urbon. Requires the Gray Cowl base mod. Add as an optional companion. → `World Content - Quests`
- Gray Cowl bounty and leveled-list fix: `The Gray Cowl of Nocturnal - Bounty Fix and Leveled List Integration` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/94939>. Fixes the bounty bug where guards attack on sight when wearing the cowl, adds a separate Gray Fox bounty, and merges player/Gray Fox bounty if a guard spots the player equipping/removing the cowl. 617 endorsements. Add as an optional companion fix. → `World Content - Quests`
- Gray Cowl board-duplicate fix: `The Gray Cowl of Nocturnal - We Don't Need Two Boards` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/107288>. Removes the duplicate Notice Board from Ben Erai and moves its four quests to the Missive Board patch. Add as an optional cleanup patch for players using Missives. → `World Content - Quests`
- New-lands frozen-island route: `The Isle Of Valefrost SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/103215>. A new land mod set far north of Solitude on a frozen island along the Sea of Ghosts. Fully voiced questline with 50+ quests, branching narrative, dynamic world progression (a village rebuilds as quests are completed), and multiple enemy factions (House Malvak, Sea Vipers pirates, Greyfang vampires). 1K endorsements, version 2.40, by venjhammet. Uses only vanilla assets for environments. Note: v2.x requires a new playthrough for existing v1.x players. Add as an optional new-lands addition. → `World Content - Quests`
- Frozen-realm quest route: `The Frozen Heart` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/159911>. A quest mod by wSkeever and Kreiste featuring a cursed frozen realm worldspace, 5 new locations, 4 quests, a new voiced Snow Elf follower, a new player home, and branching dialogue choices. Highly compatible — no vanilla location edits. Requires Slow Time and Fire Breath shouts (FOMOD toggle available). Start by purchasing the Snow Elf Mirror from Belethor's Goods. Add as an optional compact-to-mid-size quest addition. → `World Content - Quests`
- Aurora-themed new-lands route: `Midnight Sun` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/163295>. A new-lands quest mod by Kittytail featuring an aurora-themed new worldspace with new locations and quests. Lore-friendly. Add as an optional new-lands addition. → `World Content - Quests`
- Oblivion-themed quest route: `Echoes of Oblivion` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/153979>. A lore-friendly quest mod exploring Oblivion-themed content with new dialogue and NPCs. Tagged AI-Generated Content — evaluate voice quality during playtesting before locking. Add as an optional quest addition with AI-content caveat. → `World Content - Quests`

### Recommendation

- Start with the everyday emergent-quest route.
- Use `Sidequests of Skyrim` and `Missives` together as the dual everyday-quest baseline. Sidequests of Skyrim improves quest texture and world reactivity; Missives provides the structured board-based radiant quest layer. They serve the same pillar in complementary ways — Sidequests makes the world feel more alive, Missives gives the player a reliable source of localized content they can browse and pick from. → `World Content - Quests`
- Add `Missives - Voice and Quest Expansion` as the quest-variety upgrade for the Missives layer. The 20 new quest types and voiced dialogue expansion make the missive board system feel less repetitive during extended play. → `World Content - Quests`
- Add `Missives - Notes Retexture` as the cosmetic companion for the missive board visuals. → `World Content - Quests`
- Add `Missives - Worldspace Additions` only if the chosen new-land mods are confirmed to include Bruma, Falskaar, Beyond Reach, or Wyrmstooth — these patches add missive boards to those worldspaces. → `World Content - Quests`
- Keep `Moon and Star` as the meaningful compact-authored comparison if the project wants one smaller handcrafted quest experience that still feels restrained. → `World Content - Quests`
- Add `Before the End - Quest Mod` as a compact companion to `Whispers of the Depths`, by the same author (nimwraith). Both are lightweight, lore-friendly, voiced quests that fit the grounded exploration tone — add either or both as optional compact content. → `World Content - Quests`
- Keep `Wyrmstooth` as the high-commitment branch if the list eventually wants one major lore-friendly quest-expansion pillar. → `World Content - Quests`
- Treat `The Forgotten City` as a locked quest-mod baseline for `Elder Wilds`. It is the most decorated Skyrim quest mod (Writers' Guild Award, Australian Game of the Year), delivers a self-contained murder-mystery investigation with multiple endings, has no new-landmass overhead, and integrates cleanly with LotD via the official patch collection. Its grounded narrative tone and player-agency focus match the project's exploration and content pillars better than sprawling high-fantasy quest mods. Lock it as a core recommendation. → `World Content - Quests`
- Treat `Beyond Reach`, `VIGILANT SE`, and `The Wheels of Lull - Unwound Edition` as specialty branches rather than tonal baselines. → `World Content - Quests`
- Keep `Beyond Skyrim - Bruma SE` as the clearest expansion-scale comparison if the list wants a polished lore-friendly new-lands branch. → `World Content - Quests`
- Treat `Falskaar` as a legacy comparison point, not a default recommendation. → `World Content - Quests`
- Treat `Sirenroot - Deluge of Deceit` as AE-gated unless later verification proves otherwise; do not let it quietly become a baseline requirement while the project still targets no paid AE dependency. → `World Content - Quests`
- Use `Saints and Seducers Extended Cut` as the default Creation-overhaul pick. Saints and Seducers is already bundled with AE 1.6.1170, but the vanilla Creation quest is thin and undercooked; this overhaul transforms it into a proper Shivering Isles return questline. Essentially free content upgrade that gives the existing Creation real value. → `World Content - Quests`
- Use JaySerpa's Quest Expansions as the default vanilla-quest-enhancement layer. The suite is modular (each mod is standalone), so `Elder Wilds` can pick individual expansions that match the quests the player is most likely to encounter. Start with the three flagship entries (`House of Horrors`, `Paarthurnax`, `The Only Cure`) and expand from there. The mods add meaningful decision branches and alternate paths to vanilla Daedric and story quests without adding new worldspaces or overwhelming the load order.
- Add `A Chance Arrangement Plus Plus` as a targeted Thieves Guild quest overhaul. It follows the same vanilla-quest-enhancement philosophy as JaySerpa's suite but focuses on a single TG quest with deeper rewrite (new scenes, alternate routes, expanded consequences). Lock it in if the Thieves Guild is a likely early-game path; skip it if the run intends to avoid TG content. → `World Content - Quests`
- Add `Opulent Thieves Guild` as a locked Thieves Guild visual-progression companion. It visually upgrades the Ragged Flagon and Guild headquarters as the player progresses through the TG questline, making guild advancement feel tangible rather than purely numerical. Pairs naturally with `A Chance Arrangement Plus Plus`. → `World Content - Quests`
- Add `Improved Companions - Questline Tweaks` as a locked Companions faction-fix companion. It removes the forced radiant-quest spam between Companions story missions, making the faction questline feel like a natural story progression rather than a grind. By Parapets, whose other mods (`Barter Limit Fix`, `MCM Helper`) are already core to the stack. → `World Content - Quests`
- Use `Val Serano - Pirate Custom Voiced Follower and Quest Adventure` as the custom-follower-with-quest baseline. It fills a different niche from the large worldspace mods: a character-driven pirate story with ~2000 voiced lines that integrates into the existing Skyrim world rather than adding a new landmass. Has LoTD museum integration, which matters for `modlist-lotd.md`. Verify the Nexus URL before final lock-in. → `World Content - Quests`
- Review any chosen quest route later against `modlist-lotd.md` so `Legacy of the Dragonborn` integration value and patch pressure are considered on purpose. → `World Content - Quests`
- Add `Penitus Oculatus` as a locked alternative-faction route. It gives players who choose the "Destroy the Dark Brotherhood!" path a meaningful replacement faction with radiant quests and a final elimination mission. The mod ensures the anti-DB choice has real gameplay payoff rather than being a dead-end quest branch. Lock it as a core recommendation — it does not replace the DB for players who join them, only activates for the destroy path. → `World Content - Quests`
- Add `Quests Are In Skyrim` as an optional map-navigation helper. Its Synthesis patcher (`QuestsAreInSkyrimPatcher`, listed in `modlist-performance.md`) is needed to forward its changes alongside other quest-modifying mods. Keep it optional because it changes how the player discovers quests (map markers rather than natural exploration) and should be a player-preference toggle. → `World Content - Quests`
- Add `The Forgotten City - Delayed Start` as an optional companion for `The Forgotten City`. The base mod's default level-5 trigger is too early for the story's weight; this delays it to level 25. Lock it only if The Forgotten City is locked in the core list. → `World Content - Quests`
- Add `The Gray Cowl of Nocturnal - 10th Anniversary` as an optional large quest addition in the thief-themed new-lands category. It is a substantial DLC-sized mod that overlaps tonally with stealth/rogue playthroughs. Keep it optional because its trigger condition (stealing/pickpocketing at level 10+) assumes a thief character, and its new lands add content pressure (Missives support, LoTD patch, landscape compatibility). If locked, add the companion patches (`Addons Repository` for optional addons, `Bounty Fix` for the bounty bug, `We Don't Need Two Boards` for Missives users) as optional stacked fixes. → `World Content - Quests`
- Add `The Isle Of Valefrost SE` as an optional new-lands addition in the frozen-island category. It is a fully voiced new-lands mod with 50+ quests and dynamic village progression, distinct from the other new-lands entries in the section (Bruma, Wyrmstooth, Beyond Reach). Keep it optional because its v2.x save-incompatibility note (requires new game for v1.x upgraders) and its restrictive mod policy (no patches/translations without author permission) make it a commit decision rather than a casual add-on. → `World Content - Quests`
- Add `The Frozen Heart` as an optional mid-size quest addition by wSkeever (author of Penitus Oculatus) and Kreiste. Its frozen-realm worldspace, branching dialogue, and voiced Snow Elf follower fit the "lots of new content" pillar without requiring a large new-lands commitment. No vanilla location edits — compatible with most load orders. Add as an optional pick alongside other compact-to-mid-size quest content. → `World Content - Quests`
- Add `Midnight Sun` as an optional new-lands addition by Kittytail. Its aurora-themed worldspace fills a different visual identity from the other optional landmass mods. Keep it optional pending playtesting for worldspace quality, quest density, and LotD integration. → `World Content - Quests`
- Add `Echoes of Oblivion` as an optional quest addition with an AI-generated-content caveat. Evaluate voice quality, writing tone, and compatibility with the rest of the quest stack during playtesting before committing. Keep it tagged as a tentative branch rather than a locked pick. → `World Content - Quests`

### Risks & Compatibility

- This subsection can easily become a generic list of famous quest mods instead of a real tonal decision.
- One large quest mod can dominate section 08 when the rest of the section is still built around distributed world discovery.
- Museum integration, settlement patching, travel-flow disruption, and AE requirements all matter here.

### Acceptance Criteria

- Section 08 has one clear everyday-quest baseline, one meaningful compact-authored comparison, and one major quest-expansion branch.
- The distinction between emergent local questing, smaller handcrafted questing, and large expansion-style content stays explicit.
- Specialty or caution branches are documented without overtaking the main direction.

## Player Homes And Base-Building Considerations → `World Content - Homes & Bases`

### Core Idea

- This subsection owns where `Elder Wilds` should let the player settle, recover, organize gear, and invest long-term effort. → `World Content - Homes & Bases`
- It must stay disciplined enough that display-heavy housing does not quietly duplicate the role already reserved for `Legacy of the Dragonborn` in `modlist-lotd.md`. → `World Content - Homes & Bases`

### Options

- Grounded everyday-home route: `Leaf Rest` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/15191> → `World Content - Homes & Bases`
- Economic homestead route: `Heljarchen Farm` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/4108> → `World Content - Homes & Bases`
- Buildable estate route: `LC_Build Your Noble House` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/18308> → `World Content - Homes & Bases`
- Business-property comparison: `Windstad Mine` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/4160> → `World Content - Homes & Bases`
- Ambitious caution branch: `Blackthorn - A Buildable Town in The Rift (SE)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/2242> → `World Content - Homes & Bases`
- Purchasable castle route: `Stormwatch Castle` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/65088> — a smaller castle east of Whiterun, purchasable for 35,000 gold. Includes main hall (dining, bar, kitchen, pool, master bedroom), undercroft (crafting, 24 planters), library, armory, and loft with 6 kids beds. Auto-undressing for NPCs at pools, teleport spell, and toggle for converting kids rooms to follower rooms. Requires `Hearthfire multiple adoptions` for family move-in. → `World Content - Homes & Bases`
- Family-housing companion: `Hearthfire multiple adoptions` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/3862> — allows adoption of up to 6 children and provides family-housing support for homes like `Stormwatch Castle` that depend on it. Adds "Bless Home" spell for family move-in. → `World Content - Homes & Bases`

### Recommendation

- Start with the grounded everyday-home route.
- Use `Leaf Rest` as the strongest first-pass baseline because it supports the broader world-content plan without turning the home decision into the dominant identity of section 08. → `World Content - Homes & Bases`
- Keep `Heljarchen Farm` as the meaningful economic-property comparison if the project wants the home layer to do more work as a gold sink, business, and progression system. → `World Content - Homes & Bases`
- Keep `LC_Build Your Noble House` as the larger buildable-estate branch if the list wants one explicit construction-and-expansion commitment. → `World Content - Homes & Bases`
- Keep `Windstad Mine` in mind if the business-property concept is right but the agricultural identity is not. → `World Content - Homes & Bases`
- Keep `Blackthorn - A Buildable Town in The Rift (SE)` in the caution bucket unless modern testing proves its terrain and compatibility concerns are manageable. → `World Content - Homes & Bases`
- Add `Stormwatch Castle` as the purchasable-castle comparison — a mid-budget castle home (35K gold) that fills the gap between small inn room and full estate. Its `Hearthfire multiple adoptions` dependency means it works best as a family home for players who want the adoption layer. → `World Content - Homes & Bases`
- Add `Hearthfire multiple adoptions` as the required family-housing companion if `Stormwatch Castle` (or any other family-compatible home) is selected. It is a foundational mod for any home that supports child adoption beyond the vanilla 2-child limit, not a standalone home pick. → `World Content - Homes & Bases`
- Keep display-heavy mansions separate from the museum or safehouse question reserved for `modlist-lotd.md`. → `World Content - Homes & Bases`

### Risks & Compatibility

- It is easy to choose a home because it looks impressive in screenshots rather than because it improves actual play rhythm.
- The home layer can drift into an oversized trophy-display answer that should really belong to the `Legacy of the Dragonborn` track. → `World Content - Homes & Bases`
- Terrain, navmesh, family-support, autosort, and settlement-overhaul conflicts matter here, especially for the larger property mods.
- `Stormwatch Castle` is a single-file light mod with no hard dependencies beyond `Hearthfire multiple adoptions` for family support. Its main risk is its small size and static nature — it does not grow or evolve, so it works best as a mid-tier purchase rather than the endgame home. → `World Content - Homes & Bases`
- `Hearthfire multiple adoptions` touches vanilla adoption and housing records; verify compatibility with any mod touching Hearthfire player homes, child AI, or family dialogue before locking it as a dependency. → `World Content - Homes & Bases`

### Acceptance Criteria

- Section 08 has one clear grounded-home baseline, one economic-property comparison, one larger buildable-estate branch, and one purchasable-castle comparison.
- The distinction between a lived-in home, a business property, a construction project, and a purchasable castle stays explicit.
- `Hearthfire multiple adoptions` is documented as a family-housing dependency, not a standalone home pick.
- The chosen direction supports long-term play without duplicating the museum-safehouse role reserved for `Legacy of the Dragonborn`.

## Candidate TODO Additions

### Overhauls → `World Content - Overhauls`

- `Winterhold docks` — Winterhold dock structure addition → `World Content - Overhauls`
- `Merchant Chests on display` — merchant chest visual display → `World Content - Overhauls`
- `Dynamic boats at docks` — boat movement at docks → `World Content - Overhauls`
- `Imperial Towers Overhaul - Exterior` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/179653>) — Imperial tower world edits → `World Content - Overhauls`
- `JK's Thieves Guild HQ` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/133787>), `GG's Thieves Guild Headquarters` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/64018>) — Thieves Guild HQ overhaul (choose one; GG's has Patch Collection: <https://www.nexusmods.com/skyrimspecialedition/mods/63967>) → `World Content - Overhauls`
- `BIOMES I` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/138300>) — landscape overhaul (need to review) → `World Content - Overhauls`
- `Imperial Castles of Skyrim - Fort Battlements v2` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/129327>) — Imperial fort architecture overhaul → `World Content - Overhauls`

### Quests & Content → `World Content - Quests`

- `Apocryphal Archives` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/174267>) — Apocrypha quest expansion → `World Content - Quests`
- `Dwemer Tech, Weapons and Armor` — Dwemer item/equipment content pack → `World Content - Quests`
- `The Skyrim Bestiary` — animal lore book item → `World Content - Quests`
- `Moonpath to Elsweyr` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/4341>) — new lands quest mod → `World Content - Quests`
- `Ballad of the Bards Vol.1 - College Bard Outfit` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/180492>) — bard outfit item → `World Content - Quests`
- `Fish Anywhere - Streamlined Fishing (Patch)` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/85070>) — combo patch for Streamlined Fishing + Fish Anywhere → `World Content - Quests`
- `Thieves Guild Requirements SE` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/33256>) — Thieves Guild progression requirement → `World Content - Quests`
