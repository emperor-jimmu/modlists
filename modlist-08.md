# World Content

## Landscape Overhauls

### Core Idea

- This subsection owns large worldspace-content changes that make regions feel meaningfully different to cross, rather than just prettier to look at.
- Graphics ownership for terrain, trees, grass, lighting, and general landscape rendering still belongs to `modlist-02.md`.

### Options

- Regional transformation route: `Whiterun Forest Borealis` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/11343>
- Swamp-atmosphere route: `The Marshlands` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/23062>
- Rift-identity companion route: `Aspens Ablaze` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/39998>
- Discipline-first route: keep this layer restrained until the rest of section 08 is clearer.

### Recommendation

- Start with the discipline-first route long enough to confirm section 08 actually wants regional worldspace transformation instead of only better visuals.
- If the section does want a first transformation experiment, use `The Marshlands` as the strongest first-pass baseline because it gives Hjaalmarch a strong identity without redefining one of Skyrim's most central travel spaces.
- Keep `Whiterun Forest Borealis` as the louder comparison if the project wants a more dramatic regional rewrite.
- Treat `Aspens Ablaze` as a complementary Rift identity layer rather than the main answer, and only keep it if the section-02 tree and foliage direction can absorb it cleanly.

### Risks & Compatibility

- It is easy to confuse graphics ambition with actual world-content value.
- Broad regional edits can create heavy pressure around roads, tree placement, outskirts, lighting, snow, and LOD regeneration.
- Adding multiple regional identity mods too casually turns the subsection into an accidental patch pile.

### Acceptance Criteria

- Section 08 has a clear position on whether landscape content should stay restrained or include a regional transformation.
- The distinction between landscape content and landscape graphics treatment stays explicit.
- The chosen direction preserves room for later settlement, dungeon, quest, and home decisions.

## Cities, Towns, And Villages

### Core Idea

- This subsection owns actual settlement-content additions and stronger settlement identity.
- Section 07 already handled broader city-presence and world-feel tuning; this section is about authored places, not just denser vibes.

### Options

- Major-hold-capital overhaul route: `The Great Cities` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/320>. Arthmoor's full overhaul of the major hold capitals (Whiterun, Solitude, Windhelm, Markarth, Riften) and the parent mod that the Minor Cities and Towns extension is built on. Has a long patch ecosystem (notably with `JK's Skyrim`, `Spaghetti's Cities`, `Lux`, the `PBR textures for The Great Cities Collection` texture pack, and the `Legacy of the Dragonborn` Safehouse).
- Broad minor-settlement route: `The Great Cities - Minor Cities and Towns SSE Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/20272>
- Modular hold-capital identity route: `Cities of the North - Dawnstar` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/28952>, `Cities of the North - Morthal` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/34168>, `Cities of the North - Falkreath` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/56731>, and `Cities of the North - Winterhold` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/40088>. JPSteel2's modular four-part series (one mod per smaller hold capital) that gives each of the four underbuilt hold capitals its own architectural identity without committing to a full Arthmoor-style city overhaul. The four mods are designed to stack and each one is independent, so `Elder Wilds` can pick and choose which holds to upgrade. Endorsement range is 9.5K-12.7K, the strongest independent smaller-hold identity series on Nexus.
- Focused single-town route: `The Great Town of Ivarstead SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/34505>
- Complementary village routes: `The Great Village of Kynesgrove` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/42639> and `The Great Village of Mixwater Mill SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/36350>
- Underbuilt-settlement population pass: `Settlements Expanded` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/7777>. A standalone population-and-structures mod that adds buildings, NPCs, vendors, and guard patrols to seven underbuilt vanilla settlements (Loreius Farm, Heartwood Mill, Coldstone Mine, Silverdrift Lair area, and others) that vanilla ships with 1-2 NPCs and feel like ghost towns. Designed to load late in the load order and ships several compatibility patches for other location-changing mods.
- Solitude-only Arthmoor route: `The Great City of Solitude SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/22243>. Arthmoor's standalone Solitude overhaul (authored by soldierofwar in the Arthmoor city-family style). It expands Solitude's port with new homes, shops, and warehouses on both sides of the Karth River, reshapes the stone arch, and adds new vendors, guards, and NPCs to make Solitude feel like Skyrim's grand capital. Designed to be picked up either as a standalone add-on to vanilla Solitude or as a follow-on to `The Great Cities` parent.
- Whiterun outskirts expansion route: `JK's Whiterun Outskirts` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/78351>. A lore-friendly overhaul of Whiterun's outskirts: new buildings (including a new inn), new NPCs, overhauled farms with new crops (Pelagia Farm, Chillburrow, and Battle Born), Honningbrew Meadery exterior expansion, and the Whitewatch tower to the northeast. A standalone JK's mod that is independent of the `JK's Skyrim` AIO (which is also locked in), so it stacks cleanly with the AIO's city-interior work.
- Whiterun districts-and-quests expansion route: `Capital Whiterun Expansion` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/37982>. A major Whiterun expansion that adds two new districts to the city (new buildings, decorations, shops, merchants, and NPCs), plus a new player home and new quests. Larger in scope than `JK's Whiterun Outskirts` and complementary rather than overlapping: the JK's mod works the area between Whiterun's walls and the hold, while this mod adds new districts inside the city's footprint.
- Shor's Stone standalone route: `The Great Town of Shor's Stone SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/35977>. Another Arthmoor-family standalone town overhaul (alongside the Great Town of Ivarstead, Karthwasten, etc. that are already in the subsection). Expands Shor's Stone (a small mining town in the Rift) with new buildings, NPCs, and structures to make it feel like a real town. Stacks with `The Great Cities - Minor Cities and Towns` family because each Arthmoor town mod is designed to be independent.

### Recommendation

- Start with the broad minor-settlement route.
- Use `The Great Cities - Minor Cities and Towns SSE Edition` as the first-pass baseline because it gives multiple underbuilt settlements stronger structure without immediately committing to a modular city-family patch story.
- Keep `The Great Cities` base mod as the explicit major-hold-capital follow-on if the project decides the major hold capitals also need authored treatment. The base mod and the Minor Cities extension are designed to stack, but adding the base pulls in a real compatibility discussion with section-07's `Spaghetti's Cities - AIO` and `JK's Skyrim` (overlap city edits, need a compatibility patch or a load-order decision) and with the `PBR textures for The Great Cities Collection` texture pack in section 02. Treat it as a deliberate second-step decision, not a default addition.
- Keep `Cities of the North - Dawnstar` as the meaningful comparison if the project wants the more bespoke architectural-identity route and is willing to treat that family as a deliberate modular commitment.
- Use the full `Cities of the North` series (Dawnstar + Morthal + Falkreath + Winterhold) as the default modular lock for the four smaller hold capitals. JPSteel2's series is the only major modular identity option that covers all four smaller holds with matching architectural ambition, and the four mods are designed to stack. `Elder Wilds` should lock in the full series unless a real reason emerges to skip one (e.g. `Falkreath` is too close to a `Lux` light source for a particular lighting setup). Skipping individual mods is a deliberate choice, not a default.
- Keep `The Great Town of Ivarstead SSE` as the focused comparison if the smarter answer is a smaller number of carefully chosen town upgrades.
- Treat `The Great Village of Kynesgrove` and `The Great Village of Mixwater Mill SSE` as complementary additions rather than primary subsection answers.
- Use `Settlements Expanded` as the default population-and-structures companion to all the city-family and village mods above. It is the cheapest way to make the seven underbuilt vanilla settlements (Loreius Farm, Heartwood Mill, Coldstone Mine, etc.) feel like real inhabited places, and it does not overlap with the architectural-identity choices in `JK's Skyrim` or `The Great Cities` because it does not change city geometry. The mod's only structural requirement is that it load late in the load order, which fits the standard Elder Wilds ordering (city-overhaul plugins above world-content plugins).
- Use `The Great City of Solitude SSE` as the explicit Solitude deep-dive. The standalone Solitude overhaul is a deliberate partial commitment to the Arthmoor city-family approach: it gives Solitude a full architectural-identity and population upgrade without forcing `Elder Wilds` to commit to the entire `The Great Cities` base mod (which would also overhaul Whiterun, Windhelm, Markarth, and Riften and pull in a much larger compatibility footprint with `JK's Skyrim`, `Spaghetti's Cities`, and the `PBR textures for The Great Cities Collection` texture pack from section 02). If the project later wants to extend the Arthmoor approach to other hold capitals, the standalone Solitude mod sets the precedent without making that future decision a default.
- Use `JK's Whiterun Outskirts` as the default Whiterun-area expansion. It is a separate mod from `JK's Skyrim` (the AIO is in the same section and overhauls Whiterun's interior and main walls) and adds the missing piece: the area between Whiterun's walls and the rest of the hold, including the farms, the meadery, and the new Whitewatch tower. Because the two JK's mods are independent, they stack without patching. Lock it in as the Whiterun-area baseline.
- Use `Capital Whiterun Expansion` as the Whiterun-content expansion if `Elder Wilds` wants Whiterun to have a real city-division identity and quest content beyond the vanilla layout. The two-new-districts scope adds substantial new space inside the walls, plus a player home and quest content. Verify it does not overlap with `JK's Skyrim`'s Whiterun edits by checking the JK's patch hub for a `Capital Whiterun Expansion` compatibility patch before locking it in. If a patch is missing, treat it as mutually exclusive with `JK's Skyrim`'s Whiterun edits (i.e. keep JK's Whiterun Outskirts but disable the JK's Skyrim Whiterun edits for that load-order slot).
- Use `The Great Town of Shor's Stone SSE` as a complementary addition to the broader `The Great Cities - Minor Cities and Towns` baseline. Shor's Stone is a small mining town in the Rift that vanilla treats as a one-building stop; this mod gives it the same Arthmoor treatment as Karthwasten and Ivarstead get, so the player can stop there and find a real community. It does not conflict with the minor-cities parent mod because each Arthmoor town mod is independent.

### Risks & Compatibility

- It is easy to re-solve the section-07 city-presence problem with heavier settlement overhauls when the real goal is authored place-content.
- Modular city-family choices can turn this subsection into a patch-collection project too early.
- Settlement edits create pressure around roads, outskirts, snow, lighting, and landscape compatibility.

### Acceptance Criteria

- Section 08 has one clear broad settlement baseline, one modular identity comparison, and one focused single-town comparison.
- The distinction between broader settlement expansion, modular architectural identity, and focused single-place enhancement stays explicit.
- Later inns, small settlements, dungeons, POIs, quests, and homes still have room to matter on their own.

## Inns, Farms, And Small Settlements

### Core Idea

- This subsection owns the smaller stopover places that make travel routes and rural Skyrim feel lived-in.
- It should answer a different question from the larger city and village subsection above: travel-stop identity, small community presence, and memorable rural pauses.

### Options

- Small-settlement restoration route: `Granite Hill` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/14658>
- Niche farmstead-overhaul route: `Lund's Hamlet - An Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/169830>. A small targeted overhaul of an otherwise mostly forgotten farmstead (Lund's Hut). Uses retextured Redbag `Shor's Stone` meshes, fully navmeshed, ships a built-in LOTD patch, and has optional compatibility patches for `Lux`, `Lux Orbis`, `Embers XD`, `Nature of the Wild Lands`, and a few settlement mods. 393 endorsements, last updated February 2026.
- Travel-stop village route: `The Great Village of Old Hroldan SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/33189>
- Inn-focused route: `Candlehearth - An Inn Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/97542>
- Complementary village routes: `The Great Town of Karthwasten SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/33032> and `Oakwood` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/61007>

### Recommendation

- Start with the travel-stop village route.
- Use `The Great Village of Old Hroldan SSE` as the strongest first-pass baseline because it gives the world a more authored roadside stop without turning the subsection into a broad restoration bundle.
- Keep `Granite Hill` as the meaningful comparison if the world would benefit more from restoring another small settlement along normal routes.
- Treat `Lund's Hamlet - An Overhaul` as a complementary niche farmstead option rather than a baseline. It is the smallest of the small-settlement picks here (Lund's Hut only) and is best evaluated after the subsection already has a travel-stop and a restoration baseline in place, so it adds rural texture without reshaping subsection priorities.
- Add `Candlehearth - An Inn Overhaul` as the locked inn-overhaul baseline. It overhauls every inn in Skyrim with new interiors, layouts, and atmosphere, making rest stops feel like memorable destinations rather than forgettable waypoints. Lock it alongside the travel-stop village route rather than treating it as a secondary branch.
- Treat `The Great Town of Karthwasten SSE` and `Oakwood` as complementary additions rather than primary subsection answers.

### Risks & Compatibility

- This subsection can easily become a second uncontrolled settlement-family pile.
- Inn-focused interior upgrades can distract from the broader question of whether the countryside has enough believable small communities.
- Roads, lighting, snow, landscape edits, and adjacent settlement overhauls create real compatibility pressure here.

### Acceptance Criteria

- Section 08 has one clear travel-stop or small-place baseline, one meaningful small-settlement comparison, and one narrower inn-focused branch.
- The distinction between roadside village identity, restored settlement presence, and inn-focused stopover improvement stays explicit.
- Later dungeons, POIs, quests, and homes remain distinct decisions rather than overflow from this subsection.

## Dungeons And Ruins

### Core Idea

- This subsection owns added dungeon-space and deeper ruin exploration.
- The goal is more worthwhile exploration, not just darker visuals or a raw increase in map markers.

### Options

- Broad radiant-dungeon route: `Forgotten Dungeons (SSE)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/449>
- Authored dungeon-pack route: `Hammet's Dungeon Pack 1 SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/12186>
- Deep-underground route: `Skyrim Underground SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/131>
- Vanilla-ruin enhancement route: `Dungeons - Revisited` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51798>
- Ancient-Nordic ruin diversity route: `Children of the North Wind - Ruins of the Ancient Nords` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/147701>. Reworks the Ancient Nordic crypts and ruins across eleven locations (Bleakwind Bluff, Dragon Bridge, Forelhost, High Gate Ruins, Kilkreath Temple, North Skybound Watch, Ragnvald, and more) with new meshes, clutter, bespoke architecture, and exterior overhauls that aim for the "ancient population center" identity cut from vanilla. 1,106 endorsements, ~135K unique downloads, last updated March 2026.

### Recommendation

- Start with the broad radiant-dungeon route.
- Use `Forgotten Dungeons (SSE)` as the first-pass baseline because it adds more places to discover without forcing the entire section to revolve around one giant bespoke underground project.
- Keep `Hammet's Dungeon Pack 1 SE` as the meaningful comparison if the project wants a stronger hand-authored dungeon-adventure identity.
- Treat `Children of the North Wind - Ruins of the Ancient Nords` as the high-commitment ancient-Nordic-specific branch. It is heavier and more opinionated than the other ruin picks here because it replaces architecture across a curated location set rather than adding new dungeons, so it is the right comparison when the list wants Nordic ruin identity to feel like a real population-center ruin layer rather than just more generic crypts.
- Keep `Skyrim Underground SSE` as the high-commitment branch if the list wants a much larger subterranean layer than vanilla suggests.
- Treat `Dungeons - Revisited` as the strongest complementary branch rather than the main answer, because it improves existing ruins instead of deciding whether section 08 wants more destinations.
- `Iconic's Crown of Barenziah` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/137469> upgrades the Crown of Barenziah, its gem boxes, and display stand with high-quality meshes, parallax gems, and environment mapping. 4K/2K options, compatible with everything except other crown retextures. Adds quest-reward visual payoff without gameplay changes. (Note: correct mod ID is 137469, not the 115249 originally cited.)

### Risks & Compatibility

- It is easy to add dungeon count without adding meaningful exploration value.
- Combining several dungeon packs too casually creates content fatigue, overlap, and patch debt.
- Entrance placement, lighting, encounter balance, quest aliases, and underground-space conflicts all matter here.

### Acceptance Criteria

- Section 08 has one clear broad dungeon baseline, one authored-dungeon comparison, one high-commitment underground branch, and one selective vanilla-ruin enhancement branch.
- The distinction between new delves, a major underground layer, and deeper treatment of existing ruins stays explicit.
- Later POI, quest, and home decisions still have room to matter.

## Points Of Interest And Roadside Content

### Core Idea

- This subsection owns the smaller discoverable places between headline destinations: guarded crossings, hidden shelters, and minor landmarks that reward curiosity during normal travel.
- Section 07 already owns roadside ambience and travel texture; this subsection owns actual stop-worthy additions.

### Options

- Border-post and checkpoint route: `Hold Border Guards - Definitive Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/61170>
- Lightweight landmark route: `Nordic Ruins of Skyrim SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/20382>
- Hidden-shelter route: `Hidden Hideouts of Skyrim SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/2625>
- Narrower companion route: `Hidden Hideouts of Skyrim City Edition SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/2626>
- Rejected caution branch: `Master The Summit` stays out because current community signal points too strongly toward support and navmesh-risk concerns.
- Daedric shrine locations route: `Daedric Shrines - All in One` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/78772> — adds physical shrines to each Daedric Prince at lore-appropriate locations across Skyrim. Each shrine is a discoverable point of interest with unique architecture matching the Prince's domain. Complements the Pilgrim/Pilgrim religion system from `modlist-05.md` without requiring it.
- Abandoned-building restoration route: `Environs - Abandoned Abodes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/82410> — restores and refurbishes several abandoned buildings across Skyrim (Hoddminir, Tumbledown Shack, Hellfire Chasm, and others) into inhabited, lootable locations with new clutter and environmental storytelling. ESL-flagged, authored by Tx12001, widely compatible with landscape and city overhauls.
- Daedric Shrines patch collection: `Daedric Shrines - All in One by Xtudo - Wintersun Lakeview Teldryn Cure Wyrmstooth Antennaria Evil Aemer Thieves Helgen Death Cut Content Moon Leaf Rest Talos` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/78809> — a compatibility patch bundle for Daedric Shrines covering Wintersun, Wyrmstooth, Legacy of the Dragonborn, Lakeview, and other mods in the list. Required companion if Daedric Shrines is locked.

### Recommendation

- Start with the hidden-shelter route.
- Use `Hidden Hideouts of Skyrim SE` as the first-pass baseline because it adds practical refuges and quiet off-road discoveries that fit the list's travel-and-exploration tone especially well.
- Keep `Hold Border Guards - Definitive Edition` as the meaningful comparison if the project wants roadside content to feel more geopolitical and structured.
- Keep `Nordic Ruins of Skyrim SSE` as the lightest branch if the right answer is more discoverable landmarks rather than more useful stops.
- Consider `7000 Steps of Sanctum` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/128478> as a targeted pilgrimage enhancement. Removes hostile encounters (except the troll), swaps vegetation for climate-appropriate growth at altitude, adds a map marker for the troll encounter area, and realigns the High Hrothgar map marker. Soft-requirements `Cathedral - 3D Pine Shrubs` and `Happy Little Trees` for full aesthetic effect. Highly compatible (no navmesh edits, no cell-record conflicts), fits the tone of a more atmospheric journey. 243 endorsements.
- Only revisit `Hidden Hideouts of Skyrim City Edition SE` if the countryside hideout concept lands well and the project later wants city-adjacent hideaways to follow the same philosophy.

Add `Daedric Shrines - All in One` as a Daedric-shrine discovery layer. Each shrine is a bespoke point of interest with unique architecture matching the Prince's domain, rewarding exploration with visual payoff rather than loot. Complements the religion layer from `modlist-05.md` without requiring it.

Add `Daedric Shrines - All in One by Xtudo` as the required patch companion. Its patch collection covers Wintersun, Wyrmstooth, LotD, Lakeview, and other mods in `Elder Wilds` that add or modify shrine-related locations.

Add `Environs - Abandoned Abodes` as an abandoned-building restoration layer. It targets specific abandoned locations (Hoddminir, Tumbledown Shack, Hellfire Chasm, and others) that vanilla leaves as empty shells and gives them new clutter, loot, and environmental storytelling. ESL-flagged, zero script overhead, compatible with most landscape and city overhauls. It fits the "lots of new content" pillar by converting forgettable empty buildings into discoverable locations without adding new cell records.

### Risks & Compatibility

- This subsection can easily duplicate section-07 roadside-atmosphere logic instead of choosing real micro-destinations.
- Too many small worldspace edits make travel cluttered rather than more interesting.
- Roads, borders, city outskirts, survival systems, and landscape changes create real placement pressure.

### Acceptance Criteria

- Section 08 has one clear roadside-content baseline, one structured-roadside comparison, and one lighter landmark branch.
- The distinction between practical shelters, guarded crossings, and lightweight discoverable ruins stays explicit.
- The chosen direction improves ordinary travel and off-road curiosity without duplicating section-07 ownership.

## Side Activities: Fishing, Hunting, And Downtime

### Core Idea

- This subsection owns the non-combat downtime activities that make Skyrim feel like a lived-in world when the player is not dungeon-delving or quest-running: fishing, hunting for food and materials, foraging, and small craft-hobby loops.
- It closes the pillar-5 gap ("Living the world") by giving the player purposeful things to do during ordinary travel and rest stops that are neither combat nor quest objectives.

### Options

- Fishing-enhancement route: `Simple Fishing Overhaul - Animations and Improved Quest Dialogue` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/103440>
- Comprehensive hunting route: `Hunterborn SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/7900>
- Fishing-support companion: `Streamlined Fishing` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/80683>
- Lightweight alternative branch: skip dedicated activity mods and rely on the base AE fishing addon plus `Hunterborn` as an optional add-on rather than a core recommendation.

### Recommendation

- Start with the fishing-enhancement route and the comprehensive hunting route together, because they serve different downtime needs and complement rather than overlap.
- Use `Simple Fishing Overhaul` as the fishing baseline. It adds third-person and first-person fishing animations, ~200 lines of improved quest dialogue, NPC reactions, an optional bait-cost mechanic, and MCM configuration — all atop the free AE fishing addon. It is ESL-flagged, lightweight, and widely compatible (5.2K endorsements, 660K unique downloads from author JaySerpa).
- Use `Hunterborn SE` as the hunting baseline. It replaces the one-click animal-loot system with a process: dress, skin, harvest, butcher. It adds hunting knives, new alchemy ingredients, animal meats, recipes, foraging, and a scrimshaw crafting line. It has been the community-standard hunting mod for years (20K endorsements, last updated August 2025) and fits the survival-and-progression tone of `Elder Wilds`.
- Keep `Streamlined Fishing` as a fishing-support companion rather than a replacement if the QoL gap in the vanilla fishing loop proves too wide even after `Simple Fishing Overhaul`.
- Keep the lightweight alternative branch alive long enough to judge whether the downtime-activity layer needs dedicated mods at all, but treat the fishing+hunting baseline as the likely correct answer for the modlist's tone.

### Risks & Compatibility

- Adding two activity systems at once can feel like feature creep if the rest of the list does not reinforce the same living-world tone.
- `Hunterborn` requires creature-type patching for any mod that adds new creatures (use `Hunterborn Extender` via Synthesis to handle this).
- `Simple Fishing Overhaul` requires the free AE fishing addon (already included in Skyrim AE 1.6.1170) and OAR/DAR (already a baseline dependency from `modlist-03.md`).
- Both mods should be checked against `modlist-13.md` for Legacy of the Dragonborn display integration if they add unique items.

### Acceptance Criteria

- `Elder Wilds` has one clear fishing baseline and one comprehensive hunting baseline.
- Fishing feels more animated and rewarding than the vanilla click-wait-click loop.
- Hunting involves a believable process (dressing, skinning, butchering) rather than a single loot click.
- Both activities integrate cleanly with the survival systems chosen in `modlist-05.md` and the camping layer noted in `modlist-07.md`.

## Weapons, Armor, And Equipment Additions

### Core Idea

- This subsection owns the bulk-added weapons, armor sets, shields, and supporting equipment that expand what the player and NPCs can wear, wield, and find.
- It is the content-side counterpart to the smithing subsection in `modlist-05.md`: smithing is the systems layer, this is the actual item library.
- The goal is to add meaningful equipment variety without bloating leveled lists, fighting the chosen perk overhaul, or overwhelming the body and outfit pipeline from `modlist-02.md`.

### Options

- Bulk weapons pack: `Immersive Weapons` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/16788>
- Bulk armors pack: `Immersive Armors` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/3479>
- Modern texture and mesh upgrade for the armor pack: `Immersive Armors Retexture and Mesh Fixes SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/75891>
- Dawnguard equipment expansion: `Dawnguard Arsenal SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/25094> — adds new Dawnguard weapons, armors, shields, and ammunition to the Dawnguard questline. The `Dawnguard Arsenal SSE - SkyPatched` variant (Nexus 113677) converts the mod to use `SkyPatcher` (already a core dependency in `modlist-01.md`) for record patching instead of a full plugin, reducing load-order impact.
- Discipline-first route: rely on vanilla weapons and armor and let smithing, perk, and quest-reward mods carry the equipment identity, with no bulk item packs added at all.

### Recommendation

- Use `Immersive Weapons` as the weapons baseline. It adds around 230 new weapons spread across 21 weapon archetypes (more than double vanilla's 8), all craftable, upgradeable, enchantable, and integrated through leveled lists, vendors, and dungeon placement. Authored by Hothtrooper44 and collaborators, with 114K endorsements and 2.2M unique downloads.
- Use `Immersive Armors` as the armor baseline. It adds around 55 armor sets (60+ with variants), 396 new shields, plus eye patches, capes, earrings, and scarves. Like the weapons pack, all items are craftable, upgradeable, enchantable, and integrated through leveled lists, quest rewards, and dungeon placement. The mod has an MCM or spell menu for distribution tuning. Authored by Hothtrooper44, with 206K endorsements and 3.16M unique downloads, making it one of the most-used content mods in the SE ecosystem.
- Use `Immersive Armors Retexture and Mesh Fixes SE` as the visual upgrade for the armor pack. The base `Immersive Armors` assets look dated next to modern 4K PBR textures from `modlist-02.md`, and this retexture pack brings the armor visuals in line with the rest of the graphics stack (9.8K endorsements, 490K unique downloads).
- Use `Dawnguard Arsenal SSE - SkyPatched` as the Dawnguard-themed equipment expansion. Use the SkyPatched variant (113677) because `SkyPatcher` is already a core dependency — the SkyPatched version avoids adding a full plugin, reducing load-order pressure. It adds Dawnguard weapons, armors, and ammunition that slot naturally into the Dawnguard questline content.
- Keep the discipline-first route alive long enough to confirm the project actually wants bulk equipment content. If the chosen quest mods and smithing content already add enough unique gear, the bulk packs can be skipped to reduce leveled-list bloat.
- Keep this subsection separate from smithing in `modlist-05.md`, perk overhauls in `modlist-05.md`, and the crafting helpers in `modlist-05.md`. This subsection owns the item library, not the systems that consume it.

### Risks & Compatibility

- Bulk item packs can create heavy leveled-list edits that conflict with encounter-zone, loot, and economy mods from `modlist-05.md` and `modlist-11.md`. Resolve overlap by giving the bulk packs load-order priority for new items and tuning distribution through the mod's MCM.
- New armor sets must be tested against the chosen body base (`CBBE 3BA` / `HIMBO`) and the BodySlide pipeline from `modlist-02.md`. Some vanilla-rigged armor pieces will need outfit conversions.
- Bulk packs can also affect NPC visual identity if `modlist-09.md` later bundles NPC overhauls; check for distribution or appearance conflicts.
- The base `Immersive Armors` mesh and texture work looks visibly dated without the retexture pack. Skipping the retexture makes the armor feel out of place in a 4K grim-dark presentation.
- New weapons and armor can dwarf unique items from `modlist-13.md` (Legacy of the Dragonborn) if display integration is not considered; verify the display ecosystem handles the new items cleanly.

### Acceptance Criteria

- `Elder Wilds` has one clear weapons-content baseline and one clear armor-content baseline, both with modern visual upgrades where applicable.
- The bulk packs do not create leveled-list or loot conflicts that the economy and difficulty layers cannot resolve.
- The new armor pieces display correctly on the chosen body base without clipping or stretching under the chosen lighting and weather setup.
- The chosen direction supports the "lots of new content" pillar without making the equipment pool feel bloated or generic.

### Core Idea

- This subsection owns additional quest content that makes Skyrim feel more alive or more worth revisiting without breaking the grounded exploration tone.
- It should decide what kind of quest addition fits `Elder Wilds`: more everyday local work, a compact authored story, or one larger expansion-scale commitment.

### Options

- Everyday emergent-quest route: `Sidequests of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/54245>
- Radiant-board alternative: `Missives` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/17576>
- Compact authored-quest route: `Moon and Star` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/4301>
- Large quest-expansion route: `Wyrmstooth` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/45565>
- Prestige specialty branch: `The Forgotten City` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/1179>
- Additional expansion-scale branch: `Beyond Skyrim - Bruma SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/10917>
- Darker specialty branch: `Beyond Reach` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/3008>
- High-commitment specialty branch: `VIGILANT SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/11849>
- Weird Dwemer-side branch: `The Wheels of Lull - Unwound Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/748>
- Legacy comparison point: `Falskaar` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/2057>
- AE-gated caution branch: `Sirenroot - Deluge of Deceit` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/70917>
- Creation-overhaul route: `Saints and Seducers Extended Cut` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/72772>. A fully-voiced overhaul of the Saints and Seducers Creation that expands it into a proper return-to-the-Shivering-Isles questline with new scenes, locations, and voiced NPCs. Transforms the thin vanilla Creation into a real quest mod.
- Vanilla-quest-enhancement route: JaySerpa's Quest Expansions — a suite of individual mods that each expand one vanilla quest with new dialogue, scenes, and alternate paths. Key entries: `House of Horrors - Quest Expansion` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/57285>, `Paarthurnax - Quest Expansion` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51711>, `The Only Cure - Quest Expansion` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/57683>. All fully voiced by JaySerpa, one of the most prolific and well-regarded quest-expansion authors in the SE ecosystem. A central patches hub exists at Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/113083>.
- Thieves Guild quest overhaul route: `A Chance Arrangement Plus Plus - A Quest Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/175885> — a comprehensive overhaul of the "A Chance Arrangement" quest (the Thieves Guild initiation). Rewrites the quest with new scenes, dialogue, alternate routes, and expanded consequences. Fits the vanilla-quest-enhancement pattern alongside JaySerpa's suite but is specific to the TG start.
- Custom-follower-with-quest route: `Val Serano - Pirate Custom Voiced Follower and Quest Adventure` - by Axarien. A fully custom-voiced male pirate follower with ~2000 lines of dialogue and a multi-stage quest adventure. Has LoTD museum integration via the Followers Patch at Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/40816>. _(Nexus URL pending verification — unable to confirm base mod page ID via search.)_

### Recommendation

- Start with the everyday emergent-quest route.
- Use `Sidequests of Skyrim` as the strongest first-pass baseline because it improves day-to-day quest texture without demanding that section 08 revolve around one giant quest production.
- Keep `Missives` as the strongest alternative expression of the same everyday-content need rather than as an automatic companion.
- Keep `Moon and Star` as the meaningful compact-authored comparison if the project wants one smaller handcrafted quest experience that still feels restrained.
- Keep `Wyrmstooth` as the high-commitment branch if the list eventually wants one major lore-friendly quest-expansion pillar.
- Treat `The Forgotten City`, `Beyond Reach`, `VIGILANT SE`, and `The Wheels of Lull - Unwound Edition` as specialty branches rather than tonal baselines.
- Keep `Beyond Skyrim - Bruma SE` as the clearest expansion-scale comparison if the list wants a polished lore-friendly new-lands branch.
- Treat `Falskaar` as a legacy comparison point, not a default recommendation.
- Treat `Sirenroot - Deluge of Deceit` as AE-gated unless later verification proves otherwise; do not let it quietly become a baseline requirement while the project still targets no paid AE dependency.
- Use `Saints and Seducers Extended Cut` as the default Creation-overhaul pick. Saints and Seducers is already bundled with AE 1.6.1170, but the vanilla Creation quest is thin and undercooked; this overhaul transforms it into a proper Shivering Isles return questline. Essentially free content upgrade that gives the existing Creation real value.
- Use JaySerpa's Quest Expansions as the default vanilla-quest-enhancement layer. The suite is modular (each mod is standalone), so `Elder Wilds` can pick individual expansions that match the quests the player is most likely to encounter. Start with the three flagship entries (`House of Horrors`, `Paarthurnax`, `The Only Cure`) and expand from there. The mods add meaningful decision branches and alternate paths to vanilla Daedric and story quests without adding new worldspaces or overwhelming the load order.
- Add `A Chance Arrangement Plus Plus` as a targeted Thieves Guild quest overhaul. It follows the same vanilla-quest-enhancement philosophy as JaySerpa's suite but focuses on a single TG quest with deeper rewrite (new scenes, alternate routes, expanded consequences). Lock it in if the Thieves Guild is a likely early-game path; skip it if the run intends to avoid TG content.
- Use `Val Serano - Pirate Custom Voiced Follower and Quest Adventure` as the custom-follower-with-quest baseline. It fills a different niche from the large worldspace mods: a character-driven pirate story with ~2000 voiced lines that integrates into the existing Skyrim world rather than adding a new landmass. Has LoTD museum integration, which matters for `modlist-13.md`. Verify the Nexus URL before final lock-in.
- Review any chosen quest route later against `modlist-13.md` so `Legacy of the Dragonborn` integration value and patch pressure are considered on purpose.

### Risks & Compatibility

- This subsection can easily become a generic list of famous quest mods instead of a real tonal decision.
- One large quest mod can dominate section 08 when the rest of the section is still built around distributed world discovery.
- Museum integration, settlement patching, travel-flow disruption, and AE requirements all matter here.

### Acceptance Criteria

- Section 08 has one clear everyday-quest baseline, one meaningful compact-authored comparison, and one major quest-expansion branch.
- The distinction between emergent local questing, smaller handcrafted questing, and large expansion-style content stays explicit.
- Specialty or caution branches are documented without overtaking the main direction.

## Player Homes And Base-Building Considerations

### Core Idea

- This subsection owns where `Elder Wilds` should let the player settle, recover, organize gear, and invest long-term effort.
- It must stay disciplined enough that display-heavy housing does not quietly duplicate the role already reserved for `Legacy of the Dragonborn` in `modlist-13.md`.

### Options

- Grounded everyday-home route: `Leaf Rest` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/15191>
- Economic homestead route: `Heljarchen Farm` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/4108>
- Buildable estate route: `LC_Build Your Noble House` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/18308>
- Business-property comparison: `Windstad Mine` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/4160>
- Ambitious caution branch: `Blackthorn - A Buildable Town in The Rift (SE)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/2242>

### Recommendation

- Start with the grounded everyday-home route.
- Use `Leaf Rest` as the strongest first-pass baseline because it supports the broader world-content plan without turning the home decision into the dominant identity of section 08.
- Keep `Heljarchen Farm` as the meaningful economic-property comparison if the project wants the home layer to do more work as a gold sink, business, and progression system.
- Keep `LC_Build Your Noble House` as the larger buildable-estate branch if the list wants one explicit construction-and-expansion commitment.
- Keep `Windstad Mine` in mind if the business-property concept is right but the agricultural identity is not.
- Keep `Blackthorn - A Buildable Town in The Rift (SE)` in the caution bucket unless modern testing proves its terrain and compatibility concerns are manageable.
- Keep display-heavy mansions separate from the museum or safehouse question reserved for `modlist-13.md`.

### Risks & Compatibility

- It is easy to choose a home because it looks impressive in screenshots rather than because it improves actual play rhythm.
- The home layer can drift into an oversized trophy-display answer that should really belong to the `Legacy of the Dragonborn` track.
- Terrain, navmesh, family-support, autosort, and settlement-overhaul conflicts matter here, especially for the larger property mods.

### Acceptance Criteria

- Section 08 has one clear grounded-home baseline, one economic-property comparison, and one larger buildable-estate branch.
- The distinction between a lived-in home, a business property, and a bigger construction project stays explicit.
- The chosen direction supports long-term play without duplicating the museum-safehouse role reserved for `Legacy of the Dragonborn`.
