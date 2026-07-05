# World Content

**MO2 Separator:** `World Content` → `World Content - Overhauls`, `World Content - Quests`, `World Content - Homes & Bases`, `World Content - Underwater`

## Landscape Overhauls → `World Content - Overhauls`

This subsection owns large worldspace-content changes that make regions feel meaningfully different to cross, rather than just prettier to look at. Graphics ownership for terrain, trees, grass, lighting, and general landscape rendering still belongs to [`modlist-graphics-shaders.md`](modlist-graphics-shaders.md).

### Baseline

Keep this layer restrained until the rest of section 08 is clearer before committing to regional worldspace transformation. If the section does want a first transformation experiment:

- **The Marshlands** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/23062)) — Gives Hjaalmarch a strong identity without redefining one of Skyrim's most central travel spaces. → `World Content - Overhauls`

### Alternatives

- **Whiterun Forest Borealis** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/11343)) — Louder regional rewrite if the project wants a more dramatic approach. Heavier compatibility pressure with roads, tree placement, lighting, and LOD. → `World Content - Overhauls`
- **Aspens Ablaze** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/39998)) — Complementary Rift identity layer. Only keep it if the section 02 tree and foliage direction can absorb it cleanly. → `World Content - Overhauls`

### Notes

- It is easy to confuse graphics ambition with actual world-content value.
- Broad regional edits can create heavy pressure around roads, tree placement, outskirts, lighting, snow, and LOD regeneration.
- Adding multiple regional identity mods too casually turns the subsection into an accidental patch pile.

## Cities, Towns, And Villages → `World Content - Overhauls`

This subsection owns actual settlement-content additions and stronger settlement identity. Section 07 already handled broader city-presence and world-feel tuning; this section is about authored places, not just denser vibes.

### Baseline

- **The Great Cities - Minor Cities and Towns SSE Edition** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/20272)) — First-pass baseline. Gives multiple underbuilt settlements stronger structure without immediately committing to a modular city-family patch story. → `World Content - Overhauls`
- **Cities of the North** series (Dawnstar [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/28952) + Morthal [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/34168) + Falkreath [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/56731) + Winterhold [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/40088)) — Default modular lock for the four smaller hold capitals. JPSteel2's series is the only major modular identity option covering all four with matching architectural ambition; the four mods are designed to stack. Lock the full series unless a real reason emerges to skip one (e.g., Falkreath conflicts with a Lux light source). → `World Content - Overhauls`
- **Settlements Expanded** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/7777)) — Default population-and-structures companion. Makes seven underbuilt vanilla settlements feel like real inhabited places without overlapping with architectural-identity choices in `JK's Skyrim` or `The Great Cities` (no city geometry changes). Must load late in the load order. → `World Content - Overhauls`
- **The Great City of Solitude SSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/22243)) — Explicit Solitude deep-dive. Expands Solitude's port with new homes, shops, and warehouses; adds vendors, guards, and NPCs. Gives Solitude a full architectural-identity and population upgrade without forcing commitment to the entire `The Great Cities` base mod. → `World Content - Overhauls`
- **JK's Whiterun Outskirts** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/78351)) — Default Whiterun-area expansion. Adds farms, meadery exterior, and Whitewatch tower between Whiterun's walls and the hold. Independent of `JK's Skyrim` AIO; the two stack without patching. → `World Content - Overhauls`
- **JK's Raven Rock** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/141070)) — Solstheim settlement overhaul. New clutter, architecture detail, and environmental storytelling. By JPSteel2, ESL-flagged. → `World Content - Overhauls`
- **JK's Tel Mithryn** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/151512)) — Telvanni tower overhaul. Exterior and interior with detailed clutter, better lighting, and lived-in environmental storytelling. By JPSteel2, ESL-flagged. → `World Content - Overhauls`
- **FYX - Eastern Empire Company Building** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/86526)) — Solitude-specific mesh fix. Targeted stopgap before Solitude's city overhaul direction is settled. → `World Content - Overhauls`
- **FYX - Riften - Window Consistency** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/182707)) — Riften window mesh consistency fix. Targeted visual stopgap before larger city overhauls are settled. → `World Content - Overhauls`

### Alternatives

- **The Great Cities** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/320)) — Major-hold-capital follow-on if the project decides major hold capitals also need authored treatment. Stacks with the Minor Cities extension but pulls in real compatibility discussion with section 07's `Spaghetti's Cities - AIO` and `JK's Skyrim`, plus `PBR textures for The Great Cities Collection` from section 02. Treat as a deliberate second-step decision, not a default addition. → `World Content - Overhauls`
- **Capital Whiterun Expansion** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/37982)) — Whiterun-content expansion with two new districts, player home, and quest content. Verify JK's patch hub for a compatibility patch before locking. If a patch is missing, treat as mutually exclusive with `JK's Skyrim`'s Whiterun edits. → `World Content - Overhauls`
- **The Great Town of Ivarstead SSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/34505)) — Focused single-town comparison if a smaller number of carefully chosen town upgrades is the smarter answer. → `World Content - Overhauls`
- **The Great Village of Kynesgrove** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/42639)) and **The Great Village of Mixwater Mill SSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/36350)) — Complementary village additions rather than primary answers. → `World Content - Overhauls`
- **The Great Town of Shor's Stone SSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/35977)) — Complementary addition to the Minor Cities baseline. Independent, does not conflict with the parent mod. → `World Content - Overhauls`

### Notes

- It is easy to re-solve the section 07 city-presence problem with heavier settlement overhauls when the real goal is authored place-content.
- Modular city-family choices can turn this subsection into a patch-collection project too early.
- Settlement edits create pressure around roads, outskirts, snow, lighting, and landscape compatibility.
- Later inns, small settlements, dungeons, POIs, quests, and homes still need room to matter on their own.

## Inns, Farms, And Small Settlements → `World Content - Overhauls`

This subsection owns the smaller stopover places that make travel routes and rural Skyrim feel lived-in. It should answer a different question from the larger city and village subsection above: travel-stop identity, small community presence, and memorable rural pauses.

### Baseline

- **The Great Village of Old Hroldan SSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/33189)) — First-pass baseline. Gives the world a more authored roadside stop without turning the subsection into a broad restoration bundle. → `World Content - Overhauls`
- **Candlehearth - An Inn Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/97542)) — Locked inn-overhaul baseline. Overhauls every inn in Skyrim with new interiors, layouts, and atmosphere, making rest stops feel like memorable destinations. → `World Content - Overhauls`

### Alternatives

- **Granite Hill** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/14658)) — Small-settlement restoration. Choose if the world would benefit more from restoring another small settlement along normal routes than from a single authored roadside stop. → `World Content - Overhauls`
- **Lund's Hamlet - An Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/169830)) — Niche farmstead option. Lund's Hut only, with built-in LotD patch and optional compatibility patches for Lux, Lux Orbis, Embers XD, Nature of the Wild Lands. Best evaluated after a travel-stop and restoration baseline are in place. → `World Content - Overhauls`
- **The Great Town of Karthwasten SSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/33032)) and **Oakwood** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/61007)) — Complementary additions rather than primary answers. → `World Content - Overhauls`

### Notes

- This subsection can easily become a second uncontrolled settlement-family pile.
- Inn-focused interior upgrades can distract from the broader question of whether the countryside has enough believable small communities.
- Roads, lighting, snow, landscape edits, and adjacent settlement overhauls create real compatibility pressure here.

## Dungeons And Ruins → `World Content - Overhauls`

This subsection owns added dungeon-space and deeper ruin exploration. The goal is more worthwhile exploration, not just darker visuals or a raw increase in map markers.

### Baseline

- **Forgotten Dungeons (SSE)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/449)) — First-pass baseline. Adds more places to discover without forcing the entire section to revolve around one giant bespoke underground project. → `World Content - Overhauls`
- **Dungeons - Revisited** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/51798)) — Strongest complementary branch. Improves existing ruins rather than adding new destinations, so it does not gate the larger decision of whether section 08 wants more destinations. → `World Content - Overhauls`
- **Iconic's Crown of Barenziah** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/137469)) — Upgrades the Crown of Barenziah, its gem boxes, and display stand with high-quality meshes, parallax gems, and environment mapping. Adds quest-reward visual payoff without gameplay changes. → `World Content - Overhauls`

### Alternatives

- **Hammet's Dungeon Pack 1 SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/12186)) — Stronger hand-authored dungeon-adventure identity if the project wants more curated dungeon experiences. → `World Content - Overhauls`
- **Children of the North Wind - Ruins of the Ancient Nords** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/147701)) — High-commitment ancient-Nordic-specific branch. Replaces architecture across nine curated locations (Bleakwind Bluff, Forelhost, High Gate Ruins, Kilkreath Temple, etc.) with bespoke architecture and exterior overhauls. Heavier and more opinionated. → `World Content - Overhauls`
- **Skyrim Underground SSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/131)) — High-commitment branch if the list wants a much larger subterranean layer than vanilla suggests. → `World Content - Overhauls`

### Notes

- It is easy to add dungeon count without adding meaningful exploration value.
- Combining several dungeon packs too casually creates content fatigue, overlap, and patch debt.
- Entrance placement, lighting, encounter balance, quest aliases, and underground-space conflicts all matter here.
- Supplemental navmesh patch: **Navigator - Navmesh Fixes - Patch Collection** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/111379)) — FOMOD patch collection covering Dungeons Revisited, Legacy of the Dragonborn, Helgen Reborn, JK's interiors, Skyrim Sewers, and others. Install after both the content mods and Navigator are in place. (Optional) → `World Content - Overhauls`

## Points Of Interest And Roadside Content → `World Content - Overhauls`

This subsection owns the smaller discoverable places between headline destinations: guarded crossings, hidden shelters, and minor landmarks that reward curiosity during normal travel. Section 07 already owns roadside ambience and travel texture; this subsection owns actual stop-worthy additions.

### Baseline

- **Hidden Hideouts of Skyrim SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/2625)) — First-pass baseline. Adds practical refuges and quiet off-road discoveries that fit the list's travel-and-exploration tone. → `World Content - Overhauls`
- **Daedric Shrines - All in One** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/78772)) — Daedric-shrine discovery layer. Each shrine is a bespoke point of interest with unique architecture matching the Prince's domain. Complements the religion layer from `modlist-expanded-systems.md` without requiring it. → `World Content - Overhauls`
- **Daedric Shrines - All in One by Xtudo - Patch Collection** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/78809)) — Required patch companion covering Wintersun, Wyrmstooth, LotD, Lakeview, and other mods in `Elder Wilds`. → `World Content - Overhauls`
- **Environs - Abandoned Abodes** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/82410)) — Abandoned-building restoration layer. Converts forgettable empty buildings (Hoddminir, Tumbledown Shack, Hellfire Chasm) into discoverable locations with new clutter and environmental storytelling. ESL-flagged, zero script overhead. → `World Content - Overhauls`
- **Evolving Locations** series (Riverside Shack [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/124268) + Lucky Shack [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/123700) + Cliffside Retreat [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/124524)) — Dynamic overhauls layer. Three shack locations that evolve and expand over playtime based on player actions and visit frequency. By Suinier, ESL-flagged. → `World Content - Overhauls`
- **Reinforced Civil War Camps** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/153645)) — Civil War camp overhaul adding fortifications, tents, supplies, and more lived-in camp details to Imperial and Stormcloak camps. → `World Content - Overhauls`
- **Hagraven Houses Animated** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/101952)) — Optional world-object animation layer. BOS mesh replacer adding wind animation to hagraven houses and fences. 1,354 endorsements, requires `Base Object Swapper`. → `World Content - Overhauls`

### Alternatives

- **Hold Border Guards - Definitive Edition** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/61170)) — Structured roadside comparison if the project wants roadside content to feel more geopolitical. → `World Content - Overhauls`
- **Nordic Ruins of Skyrim SSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/20382)) — Lightest branch if the right answer is more discoverable landmarks rather than more useful stops. → `World Content - Overhauls`
- **Hidden Hideouts of Skyrim City Edition SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/2626)) — Narrower companion for city-adjacent hideaways. Revisit only if the countryside hideout concept lands well and city-adjacent expansion makes sense. → `World Content - Overhauls`
- **7000 Steps of Sanctum** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/128478)) — Targeted pilgrimage enhancement for the High Hrothgar climb. Removes hostile encounters (except the troll), swaps vegetation for altitude-appropriate growth. Soft-requires `Cathedral - 3D Pine Shrubs` and `Happy Little Trees`. → `World Content - Overhauls`
- **Gildergreen Regrown** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/348)) — Quest-driven world-change layer for Whiterun's tree after Blessings of Nature. Requires USSEP. → `World Content - Overhauls`
- **The Gildergreen Grows** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/147742)) — Alternative to Gildergreen Regrown with faster 4-month growth, ESL-flagged, added dialogue, watering mechanic with buff. No USSEP requirement. Incompatible with Gildergreen Regrown. → `World Content - Overhauls`
- **HAG Occult Orphan Rock** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/137996)) — Location overhaul of Orphan Rock with occult-themed environmental storytelling. Part of HAG series by Maggie. → `World Content - Overhauls`
- **Lore Friendly Roadside Ruins** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/130581)) — Roadside POI layer. Small lore-friendly ruined structures along roadsides with loot and environmental storytelling. No new cell records or large landscape edits. → `World Content - Overhauls`

### Notes

- This subsection can easily duplicate section 07 roadside-atmosphere logic instead of choosing real micro-destinations.
- Too many small worldspace edits make travel cluttered rather than more interesting.
- Roads, borders, city outskirts, survival systems, and landscape changes create real placement pressure.
- **Rejected:** `Master The Summit` — community signal points toward support and navmesh-risk concerns. → `World Content - Overhauls`

## Underwater → `World Content - Underwater` Content

This subsection owns underwater world enhancement and discoverable underwater content: visual overhauls to the seafloor, underwater flora and fauna, and lootable treasure locations beneath the surface.

### Baseline

- **Depths of Skyrim - An Underwater Overhaul SSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/26913)) — Underwater visual overhaul for the Sea of Ghosts: new grass, coral, giant kelp, 1000+ fish, unmarked treasures, horker groups, exposed-rock fixes, ocean-floor seam fixes. → `World Content - Underwater`
- **Depths of Skyrim - Mesh fixes** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/174995)) — Resolves known visual issues in the base mod. → `World Content - Underwater`
- **More Underwater Treasures - AIO** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/128247)) — 56 underwater treasures across Skyrim and 35 across Solstheim. Clean landscape edits, vanilla chest replacements, explicitly marked compatible with Depths of Skyrim. → `World Content - Underwater`

### Notes

- Use `SSE-Terrain-Tamriel-Extend.esm` (documented in `modlist-performance.md`) as the terrain-boundary ESM for LOD generation — Depths of Skyrim adds content north of the standard terrain-data boundary. → `World Content - Underwater`
- Depths of Skyrim requires `iMaxGrassTypesPerTexure=7` or above in `Skyrim.ini`. Set via `MO2 → Tools → INI Editor` under `[Grass]`. → `World Content - Underwater`
- Depths of Skyrim is script-free but adds 1000+ fish references; verify no unexpected Papyrus load or navmesh pressure.
- More Underwater Treasures has replaced landscape edits with vanilla chests; confirm compatibility with any mod overhauling the same underwater cells.
- Test underwater visibility and seafloor blending with the chosen water mod (Water for ENB / Realistic Water Two / A Water Made For CS in mind).

## Side Activities: Fishing, Hunting, And Downtime → `World Content - Quests`

This subsection owns the non-combat downtime activities that make Skyrim feel like a lived-in world when the player is not dungeon-delving or quest-running: fishing, hunting for food and materials, foraging, and small craft-hobby loops. It closes the pillar-5 gap ("Living the world") by giving the player purposeful things to do during ordinary travel and rest stops that are neither combat nor quest objectives.

### Baseline

- **Simple Fishing Overhaul - Animations and Improved Quest Dialogue** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/103440)) — Fishing baseline. Adds third-person and first-person fishing animations, ~200 lines of improved quest dialogue, NPC reactions, optional bait-cost mechanic, MCM configuration. ESL-flagged, requires AE fishing addon (included in AE 1.6.1170) and OAR/DAR (baseline dependency from `modlist-animations.md`). 5.2K endorsements, by jayserpa. → `World Content - Quests`
- **Hunterborn SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/7900)) — Hunting baseline. Replaces one-click animal-loot with dressing, skinning, harvesting, butchering. Adds hunting knives, alchemy ingredients, animal meats, recipes, foraging, scrimshaw crafting. 20K endorsements, last updated August 2025. Use `Hunterborn Extender` via Synthesis for creature-type patching. → `World Content - Quests`
- **Headhunter - Bounties Redone** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/119228)) — Locked bounty-system companion. Transforms vanilla bounty quests into named NPCs with bounty notes, jail dialogue, tavern rumors. Integrates with `Missives`. By jayserpa, 28K+ endorsements. → `World Content - Quests`
- **Skyrim's Got Talent - Improve As a Bard** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/106106)) — Locked bard-gameplay companion. Instrument practice, skill progression, NPC reactions, inn performances. Meaningful downtime activity fitting the "living the world" pillar. By jayserpa, 19K+ endorsements. → `World Content - Quests`
- **Immersive Fishing** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/115249)) — Fishing-content expansion. New fishing spots, craftable rods, new fish types, radiant fishing quests. Content-first companion to Simple Fishing Overhaul (SFO fixes fishing feel, this fixes fishing scope). → `World Content - Quests`
- **Fishermen Fish - Brings the Fish to You** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/134408)) — Lightweight immersion add-on. Overlays fish meshes on NPCs who are fishing, carrying fish, or selling fish. No ESP, mesh replacer only. → `World Content - Quests`
- **Garbage Loot - Barrels and Sacks** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/18047)) — Scavenging-content add-on. Lootable trash containers with believable low-value loot. ESL-flagged, reinforces survival and scavenging tone. → `World Content - Quests`

### Alternatives

- **Streamlined Fishing** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/80683)) — Fishing-support companion if the QoL gap in the vanilla fishing loop proves too wide even after Simple Fishing Overhaul. → `World Content - Quests`
- Lightweight alternative: skip dedicated activity mods and rely on the base AE fishing addon plus `Hunterborn` as an optional add-on. Keep alive long enough to judge whether the downtime-activity layer needs dedicated mods at all. → `World Content - Quests`
- **Fishing Extension Framework** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/139626)) — Encounter-zone and biome registration framework for fishing in new worldspaces. Required if the list includes new-lands mods. → `World Content - Quests`
- **Fishing Voiced Narrative - Simple Fishing Overhaul Voice Patch** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/113771)) — Compatibility patch between Voiced Narrative - Fishing and SFO. Required if both are installed. → `World Content - Quests`
- **Fishing Extension for Beyond Skyrim - Bruma** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/152152)) — Worldspace-specific fishing extension if Beyond Skyrim - Bruma is adopted. Requires Fishing Extension Framework. → `World Content - Quests`

### Notes

- Adding two activity systems at once can feel like feature creep if the rest of the list does not reinforce the same living-world tone.
- `Hunterborn` requires creature-type patching for any mod that adds new creatures. → `World Content - Quests`
- `Simple Fishing Overhaul` requires the free AE fishing addon (already included in AE 1.6.1170) and OAR/DAR (baseline dependency). → `World Content - Quests`
- Check both fishing and hunting additions against `modlist-lotd.md` for Legacy of the Dragonborn display integration if they add unique items. → `World Content - Quests`

## Weapons, Armor, And Equipment Additions → `World Content - Quests`

This subsection owns the bulk-added weapons, armor sets, shields, and supporting equipment that expand what the player and NPCs can wear, wield, and find. It is the content-side counterpart to the smithing subsection in `modlist-expanded-systems.md`: smithing is the systems layer, this is the actual item library. The goal is to add meaningful equipment variety without bloating leveled lists, fighting the chosen perk overhaul, or overwhelming the body and outfit pipeline from [`modlist-graphics-shaders.md`](modlist-graphics-shaders.md).

### Baseline

- **Immersive Weapons** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/16788)) — Weapons baseline. ~230 new weapons across 21 archetypes, all craftable, upgradeable, enchantable, integrated through leveled lists, vendors, and dungeon placement. 114K endorsements, 2.2M unique downloads. → `World Content - Quests`
- **Immersive Armors** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/3479)) — Armor baseline. ~55 armor sets (60+ with variants), 396 new shields, plus eye patches, capes, earrings, scarves. Craftable, upgradeable, enchantable, MCM/spell menu for distribution tuning. 206K endorsements, 3.16M unique downloads. → `World Content - Quests`
- **Immersive Armors Retexture and Mesh Fixes SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/75891)) — Visual upgrade for the armor pack. Base Immersive Armors assets look dated next to modern 4K PBR textures; this retexture brings visuals in line with the graphics stack. 9.8K endorsements. → `World Content - Quests`
- **Dawnguard Arsenal SSE - SkyPatched** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/25094), use SkyPatched variant Nexus 113677) — Dawnguard-themed equipment expansion. Adds Dawnguard weapons, armors, shields, ammunition. SkyPatched variant uses `SkyPatcher` (already a core dependency) instead of a full plugin, reducing load-order pressure. → `World Content - Quests`

### Alternatives

- Discipline-first: rely on vanilla weapons and armor and let smithing, perk, and quest-reward mods carry equipment identity, with no bulk item packs. Keep alive long enough to confirm the project actually wants bulk equipment content. → `World Content - Quests`

### Notes

- Bulk item packs can create heavy leveled-list edits conflicting with encounter-zone, loot, and economy mods from `modlist-expanded-systems.md` and `modlist-survival-combat.md`. Resolve by giving bulk packs load-order priority for new items and tuning distribution through MCM.
- New armor sets must be tested against the chosen body base (`CBBE 3BA` / `HIMBO`) and the BodySlide pipeline from [`modlist-graphics-shaders.md`](modlist-graphics-shaders.md). Some vanilla-rigged armor pieces will need outfit conversions. → `World Content - Quests`
- Bulk packs can affect NPC visual identity if `modlist-npcs.md` later bundles NPC overhauls.
- The base `Immersive Armors` mesh and texture work looks visibly dated without the retexture pack. Skipping it makes the armor feel out of place in a 4K grim-dark presentation. → `World Content - Quests`
- New weapons and armor can dwarf unique items from `modlist-lotd.md` if display integration is not considered; verify the display ecosystem handles new items cleanly. → `World Content - Quests`

## Quest Additions → `World Content - Quests`

This subsection owns additional quest content that makes Skyrim feel more alive or more worth revisiting without breaking the grounded exploration tone. It should decide what kind of quest addition fits `Elder Wilds`: more everyday local work, a compact authored story, or one larger expansion-scale commitment.

### Baseline

- **Sidequests of Skyrim** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/54245)) and **Missives** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/17576)) — Dual everyday-quest baseline. Sidequests improves quest texture and world reactivity; Missives provides structured board-based radiant quests (264 variants: courier, deliver, fetch, hunt, bounty, thief) the player can browse and pick from at any hold. Complementary approaches to the same pillar. → `World Content - Quests`
- **Missives - Voice and Quest Expansion** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/166094)) — Quest-variety upgrade. 20 new missive quest types and voiced NPC dialogue via audio splicing. By jayserpa and GiraPomba. → `World Content - Quests`
- **Missives - Notes Retexture** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/46201)) — Cosmetic companion. Replaces blank notes on missive boards with textured, readable notes by jayserpa. → `World Content - Quests`
- **Missives - Worldspace Additions** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/26788)) — Required if new-land mods (Bruma, Falskaar, Beyond Reach, Wyrmstooth) are adopted. Adds missive boards to those worldspaces. → `World Content - Quests`
- **The Forgotten City** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/1179)) — Locked quest-mod baseline. Most decorated Skyrim quest mod (Writers' Guild Award, Australian Game of the Year). Self-contained murder-mystery investigation with multiple endings, no new-landmass overhead, integrates cleanly with LotD via the official patch collection. Grounded narrative tone matches the project's exploration and content pillars. → `World Content - Quests`
- **Saints and Seducers Extended Cut** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/72772)) — Default Creation-overhaul pick. Transforms the thin vanilla Saints and Seducers Creation into a proper Shivering Isles return questline with new scenes, locations, and voiced NPCs. Essentially free content upgrade for an existing AE asset. → `World Content - Quests`
- **JaySerpa's Quest Expansions** (House of Horrors [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/57285) + Paarthurnax [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/51711) + The Only Cure [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/57683) + patches hub [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/113083)) — Default vanilla-quest-enhancement layer. Modular, standalone. Start with the three flagship entries and expand from there. Meaningful decision branches and alternate paths without new worldspaces. → `World Content - Quests`
- **A Chance Arrangement Plus Plus - A Quest Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/175885)) — Targeted Thieves Guild quest overhaul. New scenes, alternate routes, expanded consequences for the TG initiation quest. Lock if Thieves Guild is a likely early-game path. → `World Content - Quests`
- **Opulent Thieves Guild** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/10932)) — Locked TG visual-progression companion. Upgrades Ragged Flagon and Guild headquarters visually as the player advances through the TG questline. → `World Content - Quests`
- **Improved Companions - Questline Tweaks** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/120609)) — Locked Companions faction-fix companion. Removes forced radiant-quest spam between Companions story missions. By Parapets (also of `Barter Limit Fix`, `MCM Helper`). → `World Content - Quests`
- **Penitus Oculatus** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/21061)) — Locked alternative-faction route. Gives players who choose "Destroy the Dark Brotherhood!" a meaningful replacement faction with radiant quests and a final elimination mission. Does not replace the DB for joiners, only activates for the destroy path. 11.5K endorsements, requires USSEP. → `World Content - Quests`

### Alternatives

- **Moon and Star** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/4301)) — Compact authored comparison if the project wants one smaller handcrafted quest experience. → `World Content - Quests`
- **Whispers of the Depths - A Sea Monster Quest** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/127087)) and **Before the End - Quest Mod** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/142238)) — Compact quests by nimwraith. Lightweight, lore-friendly, voiced. Fit the grounded exploration tone as optional content. → `World Content - Quests`
- **Wyrmstooth** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/45565)) — High-commitment branch if the list eventually wants one major lore-friendly quest-expansion pillar. → `World Content - Quests`
- **Beyond Skyrim - Bruma SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/10917)) — Clearest expansion-scale comparison for a polished lore-friendly new-lands branch. → `World Content - Quests`
- **Beyond Reach** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/3008)) — Darker specialty branch. → `World Content - Quests`
- **VIGILANT SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/11849)) — High-commitment specialty branch. → `World Content - Quests`
- **The Wheels of Lull - Unwound Edition** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/748)) — Weird Dwemer-side branch. → `World Content - Quests`
- **Falskaar** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/2057)) — Legacy comparison point, not a default recommendation. → `World Content - Quests`
- **Val Serano - Pirate Custom Voiced Follower and Quest Adventure** — Custom-follower-with-quest baseline. Character-driven pirate story with ~2000 voiced lines, LoTD museum integration via Followers Patch (_Nexus URL pending verification_). → `World Content - Quests`
- **The Forgotten City - Delayed Start** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/56958)) — Optional companion to delay the start trigger from level 5 to level 25. Lock only if The Forgotten City is in the core list. → `World Content - Quests`
- **The Gray Cowl of Nocturnal - 10th Anniversary** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/141327)) — Optional large quest addition in the thief-themed new-lands category (~8-15 hours, Alik'r Desert, Coldharbour island). Keep optional — trigger condition assumes a thief character. Companion patches: Addons Repository ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/126661)), Bounty Fix ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/94939)), We Don't Need Two Boards ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/107288)). → `World Content - Quests`
- **The Isle Of Valefrost SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/103215)) — Optional new-lands addition. Fully voiced, 50+ quests, dynamic village progression. v2.x save-incompatibility note — commit decision, not casual add-on. → `World Content - Quests`
- **The Frozen Heart** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/159911)) — Optional mid-size quest addition by wSkeever and Kreiste. Frozen-realm worldspace, branching dialogue, voiced Snow Elf follower. No vanilla location edits. → `World Content - Quests`
- **Midnight Sun** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/163295)) — Optional new-lands addition by Kittytail. Aurora-themed worldspace. Pending playtesting for worldspace quality and LotD integration. → `World Content - Quests`
- **Echoes of Oblivion** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/153979)) — Optional quest addition with AI-generated-content caveat. Tagged AI-Generated Content — evaluate voice quality and writing tone during playtesting. → `World Content - Quests`
- **Leaps of Faith - A Misc Quest** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/53074)) — Lightweight pilgrimage quest. The player is challenged to make a series of daring leaps of faith between high ledges across Skyrim, each tied to a shrine and a small blessing reward. Complements the religion layer from `modlist-expanded-character.md` (Pilgrim baseline) without adding quest overhead. ESL-flagged, zero script latency. → `World Content - Quests`
- **New Treasure Hunt SSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/19469)) — Treasure-hunt quest addition. Adds 16 treasure maps with hand-written clues leading to buried loot across Skyrim. Each treasure has a unique container, custom loot, and environmental storytelling. → `World Content - Quests`
    - **Treasure Hunter for SSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/5789)) — Adds a radiant treasure-hunting system via a named NPC who sells treasure maps. Complements the static treasure maps from New Treasure Hunt with repeatable content. → `World Content - Quests`
- **Marked Treasure SSE (NG)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/46011)) — Adds 40+ treasure chests hidden across Skyrim in out-of-the-way locations, each with meaningful loot. Clean landscape edits, no quest trigger, no script overhead — pure discovery content for explorers. ESL-flagged. → `World Content - Quests`
- **The Dragonborn's Bestiary** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/123521)) — Lore-friendly bestiary book item that tracks creatures the player has encountered. Automatically updates entries as new creatures are discovered, recording combat stats, lore notes, and resistances. Complements the completionist angle of Completionist and the creature-addition mods. → `World Content - Quests`
    - **Main file:** `The Dragonborn's Bestiary` (the base ESP).
    - **The Dragonborn's Bestiary - Addons** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/123389)) — Adds support for creatures from popular mods. Install after the base mod. → `World Content - Quests`
    - **The Dragonborn's Bestiary - Small Creature Addon** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/160334)) — Extends tracking to small creatures (rats, mudcrabs, butterflies, fish). → `World Content - Quests`
    - **The Dragonborn's Fishiary - Bestiary Addon** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/134739)) — Fishing-specific tracking companion. Logs every fishable species with catch data and lore entries. Pairs with Simple Fishing Overhaul from the Side Activities subsection. → `World Content - Quests`
- **Path of the Telvanni** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/182427)) — Large quest-driven mod exploring old regions of Vvardenfell. New worldspaces, compatible with JK's Tel Mithryn. Caution: released June 2026 (very new), tagged AI-Generated Content, minimal community vetting. → `World Content - Quests`
- **Sirenroot - Deluge of Deceit** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/70917)) — AE-gated caution branch. Do not let it become a baseline requirement while the project targets no paid AE dependency. → `World Content - Quests`
- **Quests Are In Skyrim** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/18416)) — Optional map-navigation helper. Synthesis patcher ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/129513)) forwards changes against other quest-modifying mods. Player-preference toggle. → `World Content - Quests`
- **Fishing Extension for Beyond Skyrim - Bruma** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/152152)) — Bruma fishing companion if Beyond Skyrim - Bruma is adopted. Requires Fishing Extension Framework. → `World Content - Quests`

### Notes

- This subsection can easily become a generic list of famous quest mods instead of a real tonal decision.
- One large quest mod can dominate section 08 when the rest of the section is still built around distributed world discovery.
- Museum integration, settlement patching, travel-flow disruption, and AE requirements all matter here.
- Review any chosen quest route against `modlist-lotd.md` so Legacy of the Dragonborn integration value and patch pressure are considered on purpose. → `World Content - Quests`

## Player Homes And Base-Building Considerations → `World Content - Homes & Bases`

This subsection owns where `Elder Wilds` should let the player settle, recover, organize gear, and invest long-term effort. It must stay disciplined enough that display-heavy housing does not quietly duplicate the role already reserved for `Legacy of the Dragonborn` in `modlist-lotd.md`.

### Baseline

- **Leaf Rest** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/15191)) — First-pass baseline. Supports the broader world-content plan without turning the home decision into the dominant identity of section 08. Grounded everyday home. → `World Content - Homes & Bases`

### Alternatives

- **Heljarchen Farm** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/4108)) — Economic property comparison if the home layer should do more work as a gold sink, business, and progression system. → `World Content - Homes & Bases`
- **LC_Build Your Noble House** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/18308)) — Larger buildable-estate branch if the list wants one explicit construction-and-expansion commitment. → `World Content - Homes & Bases`
- **Windstad Mine** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/4160)) — Business-property comparison if the agricultural identity of Heljarchen is not the right fit. → `World Content - Homes & Bases`
- **Stormwatch Castle** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/65088)) — Purchasable-castle comparison. Mid-budget castle (35K gold) filling the gap between small inn room and full estate. Requires `Hearthfire multiple adoptions` for family move-in. → `World Content - Homes & Bases`
- **Hearthfire multiple adoptions** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/3862)) — Required family-housing companion if any family-compatible home is selected. Allows adoption of up to 6 children. Foundational mod, not a standalone home pick. → `World Content - Homes & Bases`
- **Blackthorn - A Buildable Town in The Rift (SE)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/2242)) — Ambitious caution branch. Keep in the caution bucket unless modern testing proves terrain and compatibility concerns are manageable. → `World Content - Homes & Bases`

### Notes

- It is easy to choose a home because it looks impressive in screenshots rather than because it improves actual play rhythm.
- The home layer can drift into an oversized trophy-display answer that should really belong to the `Legacy of the Dragonborn` track. → `World Content - Homes & Bases`
- Terrain, navmesh, family-support, autosort, and settlement-overhaul conflicts matter here, especially for larger property mods.
- `Stormwatch Castle` is a single-file light mod with no hard dependencies beyond `Hearthfire multiple adoptions`. Main risk: small and static — works best as a mid-tier purchase rather than endgame home. → `World Content - Homes & Bases`
- `Hearthfire multiple adoptions` touches vanilla adoption and housing records; verify compatibility with any mod touching Hearthfire player homes, child AI, or family dialogue. → `World Content - Homes & Bases`
- Keep display-heavy mansions separate from the museum/safehouse question reserved for `modlist-lotd.md`. → `World Content - Homes & Bases`

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
