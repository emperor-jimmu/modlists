# Expanded Systems

## Character Creation And Starting Choices

### Core Idea

- This subsection decides how `Elder Wilds` begins: a grounded alternate start, a classic utility-first start, a more configurable route, or a more abstract sandbox opening.
- The decision should improve replayability and roleplay expression without pre-answering later race, progression, religion, survival, or follower choices.

### Options

- Grounded modern route: `Alternate Perspective - Alternate Start` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/50307>
- Classic fallback route: `Alternate Start - Live Another Life` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/272>
- Configurable middle-ground route: `Skyrim Unbound Reborn (Alternate Start)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/27962>
- Freeform sandbox route: `Realm of Lorkhan - Freeform Alternate Start` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/18223>
- Origins-and-starting-stats companion: `Dealing with Backstories` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/61106>
- Character-journal companion: `Take Notes - Journal of the Dragonborn SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/13570>
- Character-background flavor: `Roleplaying In Skyrim - Origins` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/150186> — adds background narrative with optional bonuses based on character history. Requires SKSE and `Papyrus Ini Manipulator`. Soft-requires `Actor Value Generator` (from section 01) for learning-rate modifiers and `SkyUI` for MCM. 198 endorsements, 10k downloads, by DrPharmDawg. (Optional)

### Recommendation

- Start with `Alternate Perspective - Alternate Start` as the main baseline candidate.
- Keep `Dealing with Backstories` as the main origins-and-starting-stats companion if the list wants character identity to begin before the player earns the first perk. It is the cleanest answer to the user's request for more stats/sheets/origins because it generates background-driven starting skills, bonuses, drawbacks, and gear instead of just moving the player to a different start cell.
- Keep `Take Notes` as the low-risk roleplay-sheet companion. It does not rebalance the character the way `Dealing with Backstories` does; it gives the player a persistent in-game journal, which is the lightest way to make origins, beliefs, and personal goals actually visible in play.
- Keep `Alternate Start - Live Another Life` as the conservative fallback comparison if the more immersive route is harder to justify in the final stack.
- Keep `Skyrim Unbound Reborn` as the configurable middle-ground comparison if the list wants more setup freedom without moving fully into sandbox-start territory.
- Treat `Realm of Lorkhan` as the deliberate freeform branch, not the default baseline.
- Add `Roleplaying In Skyrim - Origins` as an optional character-background companion if the list wants origin-driven flavor and optional bonuses at character creation. It integrates with the RoleRim ecosystem (Classic Attributes, MiscStats) for learning-rate modifiers. Requires SKSE and `Papyrus Ini Manipulator`.

### Risks & Compatibility

- Start frameworks can carry world-state assumptions that ripple into later quest, city, survival, or follower decisions.
- `Dealing with Backstories` pushes character identity into starting stats, gear, and drawbacks, so it must be judged against the chosen race, standing-stone, perk, and survival stack instead of being treated as a harmless flavor add-on.
- `Take Notes` is mechanically light, but it only earns a slot if the list expects real roleplay or long-form character journaling rather than a pure action-combat playstyle.
- A more immersive start loses value quickly if it adds onboarding friction without materially improving the early-game tone.
- A more abstract start can undermine world coherence if it feels like a detached configuration room instead of a beginning.
- This subsection gets muddy if race, perk, religion, or survival decisions leak into it too early.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred starting framework and explicit decisions on whether `Dealing with Backstories` and `Take Notes` are part of that opening experience.
- The chosen route improves replayability and roleplay identity without undermining world coherence.
- The opening hands the player into normal play cleanly and matches the intended tone.

## Race, Standing Stone, And Progression Overhauls

### Core Idea

- This subsection decides how strongly race traits and standing stones should shape long-term character identity.
- The goal is to choose one clear progression philosophy before perks, magic, alchemy, and religion build on top of it.

### Options

- Balanced modern route: `Aetherius - A Race Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/26686> with `Evenstar - Minimalistic Standing Stones of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/41256>
- Restrained route: `Morningstar - Minimalistic Races of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/22298> with `Evenstar`
- High-expression route: `Imperious - Races of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/1315> with `Andromeda - Unique Standing Stones of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/14910>
- Classic attributes companion: `Roleplaying in Skyrim - Classic Attributes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/151476> — adds 10 classic RPG attributes (Strength, Fortitude, Endurance, Intelligence, Wisdom, Perception, Agility, Dexterity, Charisma, Luck) that govern various traits and mechanics. Requires `Actor Value Generator` (from section 01). Integrates with other RoleRim mods for attribute bonuses based on race, origin, and misc stats. 204 endorsements, 10.5k downloads, by DrPharmDawg. (Optional)
- Biological race overhaul: `Roleplaying in Skyrim - Races` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/149544> — race overhaul based on biological and physiological differences between races. Requires SKSE, `Keyword Item Distributor (KID)`, and `Spell Perk Item Distributor (SPID)`. Soft-requires `SkyUI` for MCM. 186 endorsements, 9.3k downloads, by DrPharmDawg. (Optional)
- Subrace expansion: `Roleplaying in Skyrim - Lineages` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/174443> — adds subraces (4 per vanilla race) with unique abilities and roleplay-encouraging rewards. Supplements `Races`. Requires SKSE, `KID`, `SPID`, and `Papyrus Ini Manipulator`. Soft-requires `SkyUI` for MCM and `Extended Vanilla Menus` for custom race support. 90 endorsements, 3.1k downloads, by DrPharmDawg. (Optional)
- Standing stone overhaul: `Roleplaying in Skyrim - Standing Stones` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/157053> — overhaul of the 13 standing stone effects to be worthy of the Dragonborn. Requires SKSE, `aTweaks and Utilities`, `KID`, `Perk Entry Point Extender` (via aTweaks), and `SkyUI` for MCM. 83 endorsements, 2.1k downloads, by DrPharmDawg. (Optional)
- Birthsign reintroduction: `Roleplaying in Skyrim - Birthsigns` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/154610> — lore-inspired reintroduction of 13 birthsigns with monthly waxing/waning effects. Requires SKSE, `KID`, and `Papyrus Ini Manipulator`. Soft-requires `SPID` for NPC integration and `SkyUI` for MCM. 146 endorsements, 12.6k downloads, by DrPharmDawg. (Optional)
- Misc stats progression: `Roleplaying in Skyrim - Useful MiscStats` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/149142> — makes miscellaneous stats useful and reduces crafting grinding by using them for character building. Requires `Actor Value Generator` (from section 01). Soft-requires SKSE and `SkyUI` for MCM. 177 endorsements, 8.9k downloads, by DrPharmDawg. (Optional)
- Skill-based stat growth: `Roleplaying in Skyrim - Skill Based Stat Growth` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/147455> — primary stats (Health, Magicka, Stamina) grow as skills develop. Requires SKSE and `Papyrus Ini Manipulator`. Soft-requires `SkyUI` for MCM. 247 endorsements, 12k downloads, by DrPharmDawg. (Optional)

### Recommendation

- Start with `Aetherius` plus `Evenstar` as the main baseline.
- Keep `Morningstar` plus `Evenstar` as the restrained fallback if the final list wants less systemic pressure.
- Treat `Imperious` plus `Andromeda` as the intentional high-expression comparison route, not the default baseline.
- Add `Roleplaying in Skyrim - Classic Attributes` as an optional attribute-depth companion if the list wants classic RPG-style stat progression on top of the chosen race overhaul. It integrates with the RoleRim ecosystem (Races, Origins, MiscStats) and adds meaningful character variation without dominating the perk/magic layers. Requires `Actor Value Generator` from section 01.
- Add `Roleplaying in Skyrim - Races` as an optional biological race overhaul if the list wants race identity grounded in physiological differences rather than cultural flavor alone. Requires SKSE, `KID`, and `SPID`.
- Add `Roleplaying in Skyrim - Lineages` as an optional subrace expansion that supplements `Races` with 4 subraces per vanilla race, each with unique abilities. Requires SKSE, `KID`, `SPID`, and `Papyrus Ini Manipulator`.
- Add `Roleplaying in Skyrim - Standing Stones` as an optional standing stone overhaul if the list wants the 13 stones to feel more impactful for the Dragonborn. Requires SKSE, `aTweaks and Utilities`, `KID`, `Perk Entry Point Extender`, and `SkyUI`.
- Add `Roleplaying in Skyrim - Birthsigns` as an optional birthsign reintroduction with monthly waxing/waning effects, as an alternative or supplement to the standing stone choice. Requires SKSE, `KID`, and `Papyrus Ini Manipulator`.
- Add `Roleplaying in Skyrim - Useful MiscStats` as an optional misc-stat progression layer that makes miscellaneous stats meaningful for character building. Requires `Actor Value Generator` from section 01.
- Add `Roleplaying in Skyrim - Skill Based Stat Growth` as an optional stat-progression companion where Health, Magicka, and Stamina grow as skills develop. Requires SKSE and `Papyrus Ini Manipulator`.
- Judge race and stone picks as a pair so the progression baseline stays easy to explain.

### Risks & Compatibility

- Race and stone overhauls can quietly pre-decide too much of the character-building experience before perk and magic systems are chosen.
- A very expressive route can push the list toward optimization-heavy play even if the broader project wants a more immersive tone.
- A very light route can undershoot if later systems assume stronger identity hooks.
- Mixing progression philosophies later can create a stack that is individually interesting but mechanically incoherent.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred race-and-stone philosophy, one restrained fallback, and one more dramatic comparison route.
- The chosen baseline supports replayability and character identity without dominating the rest of the progression stack.
- Later perk, magic, and religion decisions still have visible room to matter.

## Perk Overhaul Compatibility

### Core Idea

- This subsection chooses the perk philosophy that the rest of `Expanded Systems` must live with.
- The goal is to decide how much rules density and specialization pressure the list actually wants once race and standing-stone choices are already in place.

### Options

- Balanced modern route: `Adamant - A Perk Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/30191>
- Restrained fallback route: `Vokrii - Minimalistic Perks of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/26176>
- High-expression route: `Ordinator - Perks of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/1137>

### Recommendation

- Start with `Adamant` as the main baseline.
- Keep `Vokrii` as the restrained comparison if `Adamant` still feels more system-forward than the final tone wants.
- Keep `Ordinator` as the deliberate high-complexity branch only if the list decides perks should become one of the dominant sources of build identity.
- Compare perk candidates against the already-preferred race-and-stone direction so the full progression stack stays coherent.

### Risks & Compatibility

- A dense perk framework can dominate the entire character-building experience and make later systems feel secondary.
- A restrained perk framework can make the overall list feel under-committed if other expanded systems also land on the conservative side.
- Mixing perk philosophy poorly with race, stone, and later magic choices can create a stack that is busy but not coherent.
- Choosing based on reputation alone can hide whether the most famous perk overhaul actually matches the intended tone.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred perk philosophy, one restrained fallback, and one intentionally high-complexity comparison route.
- The chosen baseline leaves visible room for later magic, crafting, religion, and economy decisions to matter.
- Race, standing stones, and perks read as one coherent progression stack.

## Magic System Expansion

### Core Idea

- This subsection chooses the spell-system philosophy for `Elder Wilds`: how broad, readable, and build-defining magic should feel once the race, standing-stone, and perk baseline are in place.
- The goal is to pick one clear magic direction that complements the progression stack instead of overwhelming it.

### Options

- Balanced modern route: `Mysticism - A Magic Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/27839>
- Moderate expansion route: `Odin - Skyrim Magic Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/46000>
- High-expression route: `Apocalypse - Magic of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/1090>
- Compatibility note: `Mysticism` and `Odin` should be treated as competing primary overhauls, not a default combined baseline; if the list later explores combined setups, that should be a deliberate compatibility project.

### Recommendation

- Start with `Mysticism` as the main baseline.
- Keep `Odin` as the comparison route if `Mysticism` ends up feeling too restrained for the final identity.
- Keep `Apocalypse` as the deliberate high-expression route, and the most plausible later additive layer, only if the list wants spell variety and magical experimentation to become a dominant system pillar.
- Choose one primary magic overhaul first and only then decide whether extra spell volume is actually needed.

### Risks & Compatibility

- A very large spell ecosystem can dominate progression and make race, perk, and religion choices feel secondary.
- Layering multiple spell packages too casually turns this subsection into a compatibility problem instead of a clean design decision.
- A restrained spell overhaul can undershoot the `Expanded Systems` pillar if too many adjacent systems also land on conservative choices.
- Mixing a high-volume magic package with a more restrained perk philosophy can make the overall progression stack feel internally inconsistent.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred magic-system philosophy, one moderate comparison route, and one intentionally high-expression branch.
- The chosen baseline complements the current race, standing-stone, and perk direction instead of pulling against it.
- Later alchemy, religion, economy, and crafting decisions still have visible room to matter.

## Alchemy Overhaul

### Core Idea

- This subsection decides whether alchemy is a disciplined support system for potions, poisons, and ingredients or a much larger rework that also starts reshaping cooking and survival-adjacent loops.
- The goal is to choose one clear alchemy philosophy before moving into cooking, crafting, and economy decisions that depend on it.

### Options

- Balanced modern route: `Apothecary - An Alchemy Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/52130>
- Large integrated route: `Complete Alchemy and Cooking Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/19924>
- Lightweight cleanup route: `Alchemy Potions and Food Adjustments` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/5877>

### Recommendation

- Start with `Apothecary` as the main baseline.
- Keep `Complete Alchemy and Cooking Overhaul` as the deliberate large-system comparison if `Elder Wilds` decides alchemy and cooking should become a major combined pillar.
- Keep `Alchemy Potions and Food Adjustments` as the lighter fallback if the modern overhaul route proves to be more system weight than the list actually needs.
- Treat large food-and-cooking coverage as a deliberate expansion choice, not something that should quietly hitchhike into the alchemy baseline.

### Risks & Compatibility

- A very large alchemy package can quietly absorb cooking and food design, leaving the next subsection with little real room to decide anything.
- A restrained alchemy overhaul can undershoot the `Expanded Systems` pillar if too many adjacent systems also land on conservative choices.
- Potion, poison, and ingredient balance can become hard to reason about if the list mixes multiple overlapping consumable philosophies.
- If alchemy becomes too central, ordinary characters may feel pressured to engage with it even when the broader list tone does not need that much consumable optimization.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred alchemy philosophy, one larger comparison route, and one lighter fallback option.
- The chosen baseline complements the current race, standing-stone, perk, and magic direction instead of pulling the progression stack sideways.
- Later cooking, economy, crafting, and religion decisions still have visible room to matter.

## Survival Systems

### Core Idea

- This subsection decides how much day-to-day bodily upkeep `Elder Wilds` actually wants: enough hunger, fatigue, cold, weather, disease, and wilderness friction to support roleplay and travel texture, or a heavier survival framework that becomes one of the list's central systems.
- This section owns the baseline survival direction; `modlist-11.md` still owns later survival-compatibility, difficulty-pressure, and balance interactions across the full load order.

### Options

- Simonrim-aligned route: `Starfrost - A Survival Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/97536>
- Restrained modern route: `SunHelm Survival and needs` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/39414>
- Heavier classic route: `Last Seed - Survival Needs and Diseases` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/56393>
- Harsh wilderness route: `Frostfall - Hypothermia Camping Survival` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/671> with `Campfire - Complete Camping System (Supports Skyrim VR)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/667>

### Recommendation

- Start with `Starfrost` as the main baseline because the rest of `modlist-05.md` already leans toward a readable Simonrim-style progression family.
- Keep `SunHelm` as the practical comparison route if `Starfrost` proves too tightly tuned or too dependent on that ecosystem.
- Keep `Last Seed` and `Frostfall` plus `Campfire` as deliberate heavier branches only if the list decides survival should become one of its dominant identities.
- Judge survival primarily on travel texture, downtime rhythm, and world feel rather than on maximum hardship alone.

### Risks & Compatibility

- A heavy survival system can dominate pacing and crowd out other expanded systems the file still needs room to evaluate.
- A very light survival setup can undershoot the immersive-travel pillar if later world-scale and downtime decisions expect more texture.
- Cold, disease, food, sleep, and camping systems can blur together and make ownership between survival, cooking, roleplay, and religion harder to read.
- If the survival baseline fights the intended third-person travel rhythm, the result may feel dutiful rather than immersive.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred survival baseline, one practical comparison route, and heavier alternatives that stay alive only if the list intentionally wants that identity.
- The chosen baseline complements the current progression stack instead of forcing the whole systems layer into hardcore survival.
- Later religion, economy, follower, and roleplay decisions still have visible room to matter.

## Roleplay Upkeep And Hygiene

### Core Idea

- This subsection owns the lighter day-to-day body-maintenance layer that sits between full survival needs and pure visual flavor.
- The goal is to add believable downtime rituals and world-living texture without turning hygiene into a second dominant survival framework.

### Options

- Modern hygiene route: `Bathing in Skyrim - Renewed` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/135288>
- Minimalist route: leave hygiene implied through inns, rivers, and roleplay without a dedicated system.

### Recommendation

- Add `Bathing in Skyrim - Renewed` as the leading hygiene-and-downtime route.
- It fits the list's living-the-world pillar better than older bathing mods because it is actively maintained, heavily customizable, and technically modernized around SKSE plus Papyrus-extender dependencies instead of feeling like a brittle relic from an older scripting era.
- Treat it as a roleplay-support system, not as the main survival baseline. The point is to make inns, camp stops, rivers, and home downtime feel more embodied, not to bury the list under another mandatory needs meter.
- Keep the optional basin, description, and merchant integrations secondary; the baseline value is the bathing loop itself.

### Risks & Compatibility

- Hygiene can become fussy busywork if the mod is configured too aggressively.
- `Bathing in Skyrim - Renewed` touches equipment handling, overlays, follower participation, and optional integrations, so it needs stricter discipline than a simple immersion add-on.
- The mod page lists several addon dependencies and integrations, but only the hard runtime requirements should be treated as mandatory for the baseline install.
- For the target Steam runtime `1.6.1170`, its listed `Backported Extended ESL Support` requirement does not apply and should not be installed.

### Acceptance Criteria

- The modlist has one explicit answer for hygiene and downtime instead of leaving the living-the-world pillar vague.
- The chosen hygiene layer supports inns, rivers, camp routines, and follower travel texture without becoming a second full survival overhaul.
- Hard dependencies are recorded clearly and optional addon integrations stay optional.

## Character Traits And Identity Hooks

### Core Idea

- This subsection owns opt-in character-defining quirks that shape a run from the start without replacing the broader race, perk, and standing-stone progression stack.
- The goal is stronger roleplay identity and replayability, not a giant second character-build framework.

### Options

- Trait-package route: `Biggie Traits` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/136384>
- Cosmetic-progression route: `Pumping Iron - Dynamic Muscle Growth` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/13434> — character muscles visually grow based on combat skill increases and sleep. Purely cosmetic; does not affect stats or gameplay. Requires SKSE.
- Minimalist route: leave identity mostly to race, standing stones, perks, and self-imposed roleplay.

### Recommendation

- Add `Biggie Traits` as the main traits-layer comparison for this section.
- It is a cleaner fit for `Elder Wilds` than heavier custom-class frameworks because it adds immediate run-defining tradeoffs in a compact form, closer to Fallout-style traits than to a total rules rewrite.
- Keep it clearly subordinate to the main progression baseline. Traits should sharpen character identity and replayability, not replace the race-and-perk decisions already owned above.
- Judge it on whether the picked traits create distinct runs and memorable constraints without forcing gimmick play.
- Keep `Pumping Iron - Dynamic Muscle Growth` as an optional cosmetic-progression companion, not part of the core traits layer. It adds visual character progression tied to combat activity without affecting stats, perks, or gameplay — a flavour win for players who want their character model to reflect adventuring lifestyle, but zero system weight if skipped.

### Risks & Compatibility

- Trait systems can quietly duplicate what race, perk, religion, or survival choices are already trying to do.
- If the best traits are too obviously optimal, the whole idea collapses into routine min-maxing instead of character identity.
- `Biggie Traits` has no listed hard dependencies, so its value has to come entirely from design fit and clean behavior, not from framework complexity.

### Acceptance Criteria

- The modlist has one explicit traits-layer option for stronger character identity.
- Traits add meaningful replayability and roleplay hooks without crowding out the main progression stack.
- The section keeps a clear boundary between traits, race identity, perk design, and survival pressure.

## Cooking Systems

### Core Idea

- This subsection decides whether food and cooking are mostly ambient support for travel and downtime or a more deliberate progression-and-preparation layer in their own right.
- The goal is to choose a cooking baseline that complements the survival decision without making cooking entirely dependent on a heavy needs framework.

### Options

- Balanced modern route: `Gourmet - A Cooking Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/96876>
- Large integrated route: `Complete Alchemy and Cooking Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/19924>
- Lightweight cleanup route: `Alchemy Potions and Food Adjustments` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/5877>

### Recommendation

- Start with `Gourmet` as the main baseline.
- Keep `Complete Alchemy and Cooking Overhaul` as the deliberate integrated comparison only if the list later decides alchemy and cooking should be tightly fused.
- Keep `Alchemy Potions and Food Adjustments` as the lighter fallback if the modern cooking route turns out to be more system weight than the list actually needs.
- Judge cooking on inns, camps, home bases, travel prep, and downtime rhythm rather than on recipe volume alone.

### Risks & Compatibility

- Cooking can become too dependent on the survival framework and stop making sense as its own system.
- A very large cooking package can quietly absorb alchemy and economy ownership, leaving later sections with less real room to decide anything.
- A very light cooking layer can make inns, food, and downtime loops too forgettable to justify separate attention.
- Choosing a cooking package for feature count alone can hide whether it actually improves ordinary play rhythm.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred cooking baseline, one integrated high-complexity comparison route, and one lighter fallback option.
- The chosen baseline complements the survival and alchemy direction instead of collapsing them into one oversized consumables bucket.
- Later economy, roleplay, and religion decisions still have visible room to matter.

#### Visual Companions

- `Hyper Realistic Cooked Beef` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/173752> and `Hyper Realistic Bread` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/173283> replace the vanilla cooked-beef and bread models with photorealistic versions. Both are mesh/texture-only replacers with zero plugin overhead. Add at the end of the food-texture layer to make cooking output feel more appetizing in survival contexts.

## Smithing And Crafting Expansion

### Core Idea

- This subsection decides what crafting is supposed to do in `Elder Wilds`: lightly improve the vanilla smithing loop, become a broader rules-and-materials framework, or shift more responsibility toward NPC services and roleplay texture.
- The goal is to choose one clear crafting philosophy before moving into economy and roleplay decisions that depend on it.

### Options

- Balanced practical route: `Ars Metallica - Smithing Enhancement` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/321>
- Large integrated route: `Complete Crafting Overhaul Remastered` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/28608>
- Roleplay-service route: `Honed Metal -NPC Crafting and Enchanting Services` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/61015>
- Enchanting overhaul companion: `Thaumaturgy - An Enchanting Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/57138> — a Simonrim-aligned enchanting overhaul by SimonMagus that rebalances enchantment effects, costs, and progression. Designed to pair with the already-locked `Mysticism` (magic) and `Adamant` (perks) baselines, keeping the Simonrim progression family coherent.
- Enchantment variety companion (optional, needs research): `Summermyst - Enchantments of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/6285> — adds ~140 new enchantment effects to weapons, armor, and jewelry. By EnaiSiaion. Sits alongside a system overhaul like `Thaumaturgy` rather than replacing it: Summermyst adds variety (new effects to find on loot), Thaumaturgy defines progression (how enchanting works). Needs compatibility verification against `Thaumaturgy`, `Adamant`, `Mysticism`, and the chosen artifact overhaul before locking.

### Recommendation

- Start with `Ars Metallica` as the main baseline.
- Keep `Complete Crafting Overhaul Remastered` as the deliberate high-complexity comparison if `Elder Wilds` decides material logic and crafting rules should become a major progression pillar.
- Keep `Honed Metal` as the distinct roleplay-facing comparison if the list wants to reduce player-made item churn and make towns, smiths, and specialists matter more.
- Treat NPC-service crafting as a different philosophy from player-centric crafting expansion, not as a small add-on to the same route.
- Add `Thaumaturgy` as the enchanting overhaul companion. It closes the Simonrim crafting loop (enchanting alongside `Mysticism` magic and `Adamant` perks) without requiring a heavy all-in-one crafting framework. It also serves as a prerequisite for artifact-overhaul content in the `Artifact And Unique Item Overhauls` subsection.

### Risks & Compatibility

- A very large crafting framework can quietly absorb economy and loot-balance ownership before those sections have a chance to make their own decisions.
- A very light crafting route can leave smithing too forgettable to justify separate attention within `Expanded Systems`.
- Mixing player-centric crafting expansion with strong NPC-service assumptions can produce an incoherent progression loop.
- If crafting becomes too central, too many character paths may feel pressured into material optimization even when the broader list tone does not need that level of system weight.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred crafting baseline, one larger integrated comparison route, and one distinct roleplay-facing alternative.
- The chosen baseline complements the perk, magic, alchemy, survival, and cooking direction instead of collapsing multiple later sections into one crafting answer.
- Later economy, roleplay, and religion decisions still have visible room to matter.

## Economy And Loot Balance

### Core Idea

- This subsection decides what economy and loot are supposed to feel like in `Elder Wilds`: a lightly rebalanced merchant-and-pricing layer, a more deliberate loot-distribution framework, or a harsher scarcity-driven progression model.
- The goal is to choose one clear economy philosophy before moving into religion, crime, and follower systems that will sit on top of it.

### Options

- Merchant-pricing route: `Trade and Barter - Skyrim Special Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/23081>
- Loot-distribution route: `Open World Loot - Encounter Zone and Loot Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/49681>
- Heavy scarcity route: `MorrowLoot Ultimate - Skyrim Special Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/3058>
- Regional currency route: `C.O.I.N. - Coins of Interesting Nature` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51439> — adds regional coinage (hold-specific coin types and weights) that gives immersive economic texture: coins from different holds look distinct, encouraging the player to notice where money comes from. Lightweight, no scripts.
- Currency exchange companion: `C.O.I.N. - Treasury Exchange` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/131682> — adds currency exchange mechanics at merchants, letting the player convert regional coin types. Adds gameplay purpose to the C.O.I.N. system beyond visual variety.
- Ownership note: keep `Barter Limit Fix` in `modlist-01.md` (Targeted Bugfix Mods) as a targeted fix if merchant-gold caps become relevant; it is not the economy-framework answer by itself.
- Encounter zone overhaul: `Roleplaying in Skyrim - Encounter Zones` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/149899> — comprehensive overhaul of all encounter zones reworked for realism and variety based on NPC type, location, and quest significance, with a randomizer for unpredictability. No hard requirements. ESL flagged. 272 endorsements, 15.4k downloads, by DrPharmDawg. (Optional)
- Dynamic economy: `Roleplaying in Skyrim - Evolving Economy` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/149830> — dynamic pricing based on area resources, season, distance from cities, Civil War progress, reputation, and land hostility. Requires SKSE, `Papyrus Ini Manipulator`, and `powerofthree's Papyrus Extender`. Soft-requires `SkyUI` for MCM. 1,400 endorsements, 481.3k downloads, by DrPharmDawg. (Optional)
- Rarity-driven loot: `Roleplaying in Skyrim - Loot Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/157259> — rarity-driven, contextually-aware loot overhaul with combat equipment breakage and deleveled artifacts. Requires SKSE, `Papyrus Ini Manipulator`, and `SkyUI`. Soft-requires `powerofthree's Papyrus Extender` for breakage system. 189 endorsements, 6.1k downloads, by DrPharmDawg. (Optional)

### Recommendation

- Start with `Trade and Barter` as the main baseline.
- Keep `Open World Loot` as the deliberate structure-focused comparison if the project wants loot progression and encounter rewards to feel more curated.
- Keep `MorrowLoot Ultimate` as the intentional heavy-scarcity comparison only if the list truly wants rare-item access and deleveled loot to become a defining identity pillar.
- Add `C.O.I.N. - Coins of Interesting Nature` as a lightweight economic texture layer. It adds regional coin variety without touching prices or loot distribution — purely immersive world-building through currency. The companion `C.O.I.N. - Treasury Exchange` adds mechanical purpose by letting merchants convert coin types.
- Treat pricing changes and loot-distribution changes as related but distinct philosophies rather than interchangeable answers to the same problem.
- Add `Roleplaying in Skyrim - Encounter Zones` as an optional encounter zone overhaul if the list wants enemy levels to feel more realistic and varied based on location type, NPC category, and quest significance. No hard requirements; ESL flagged.
- Add `Roleplaying in Skyrim - Evolving Economy` as an optional dynamic pricing layer if the list wants barter costs to fluctuate based on resources, season, Civil War, reputation, and distance from cities. Requires SKSE, `Papyrus Ini Manipulator`, and `powerofthree's Papyrus Extender`. The most popular mod in the RoleRim series (1,400 endorsements, 481.3k downloads).
- Add `Roleplaying in Skyrim - Loot Overhaul` as an optional rarity-driven loot overhaul if the list wants loot to feel contextual and rarity-based rather than purely level-scaled. Includes equipment breakage and deleveled artifacts. Requires SKSE, `Papyrus Ini Manipulator`, and `SkyUI`. Extensively reworks leveled lists; other loot overhauls will conflict.

### Risks & Compatibility

- A heavy loot-distribution framework can quietly absorb crafting and progression ownership before later sections have a chance to make their own decisions.
- A pricing-only route can undershoot if loot progression remains too close to vanilla to support the expanded-systems pillar.
- Harsh scarcity can make exploration, crafting, and reward pacing feel punitive rather than immersive.
- Mixing merchant-tuning and deleveled-loot assumptions too casually can create an incoherent economy loop.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred economy baseline, one loot-structure comparison route, and one heavy-scarcity alternative.
- The chosen baseline complements the perk, magic, alchemy, survival, cooking, and crafting direction instead of collapsing multiple later sections into one economy answer.
- Later religion, crime, roleplay, and follower decisions still have visible room to matter.

## Religion Or Roleplay Systems

### Core Idea

- This subsection decides how much explicit spiritual identity and day-to-day roleplay texture `Elder Wilds` wants: a light faith layer, a modern religion framework aligned with the current progression stack, or a heavier deity-centered system that becomes a defining part of character identity.
- The goal is to choose one clear religion or roleplay direction without letting it absorb survival, economy, crime, or follower ownership.

### Options

- Balanced religion route: `Pilgrim - A Religion Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/54099>
- Minimal faith route: `Trua - Minimalistic Faiths of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/32549>
- High-expression deity route: `Wintersun - Faiths of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/22506>

### Recommendation

- Start with `Pilgrim` as the main baseline because it fits the current Simonrim-leaning progression family without making religion the dominant system in the file.
- Keep `Trua` as the restrained fallback if the list wants faith flavor without much system weight.
- Keep `Wintersun` as the deliberate high-expression comparison only if `Elder Wilds` decides religion should become a much stronger roleplay and progression pillar.
- Judge the candidates by ordinary play rhythm: prayer habits, shrine relevance, exploration texture, and whether faith makes the world feel richer during normal travel and downtime.

### Risks & Compatibility

- A very light religion route can undershoot the subsection and leave roleplay identity too close to vanilla.
- A heavy deity-centered framework can make religion dominate character identity so strongly that other systems feel secondary.
- Survival, economy, and follower expectations can drift into this section if faith routines are not scoped carefully.
- Mixing multiple faith philosophies too casually can make the overall roleplay layer incoherent.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred religion baseline, one restrained fallback, and one heavier roleplay-focused alternative.
- The chosen baseline complements the perk, magic, alchemy, survival, cooking, crafting, and economy direction instead of collapsing multiple later sections into one religion answer.
- Later crime, roleplay, and follower decisions still have visible room to matter.

## Crime, Reputation, And Social Systems

### Core Idea

- This subsection decides how much the world should notice what the player does socially: whether reputation should quietly shape reactions across the province, whether stealth and criminal behavior should gain more expressive tools, or whether city-side suspicion and guard behavior should become more active.
- The goal is to choose one clear social-pressure direction without letting this subsection absorb religion, economy, or follower ownership.

### Options

- Reputation-first route: `Skyrim Reputation` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/22374>
- Crime-expression route: `Book Of Shadows - Behaviour Based Stealth Additions` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/76086>
- Guard-pressure route: `Suspicious City Guards` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/38762>
- Quest-pacing companion route: `The Choice is Yours` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/3850>
- Greeting-discipline companion route: `To Your Face SE - AE - VR` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/24720>
- Ownership note: keep targeted fixes such as `Simple Offence Suppression` in `modlist-01.md` (Targeted Bugfix Mods); they are support fixes, not the social-system answer.

### Recommendation

- Start with `Skyrim Reputation` as the main baseline.
- Keep `Suspicious City Guards` as the more focused comparison if the main goal is grounded urban tension around suspicious behavior.
- Keep `Book Of Shadows` as the deliberate high-expression branch if the project wants crime and stealth to become a much larger playstyle pillar rather than a world-reaction layer.
- Add `The Choice is Yours` as the clearest roleplay-facing companion when the list wants stricter control over quest auto-start pressure in a content-heavy run.
- Add `To Your Face SE - AE - VR` as the low-drama social-polish companion if normal city and tavern play still feels too noisy from vanilla greeting behavior.
- Keep stealth-expression tooling separate from broader world-reaction goals so this subsection does not become a stealth overhaul by accident.

### Risks & Compatibility

- A very light social-response layer can undershoot the subsection and leave crime and reputation too close to vanilla.
- A stealth-heavy crime toolkit can make one playstyle dominate a subsection that should still support broader roleplay.
- City suspicion systems can become annoying if they create constant friction without enough payoff.
- `The Choice is Yours` improves pacing and roleplay control, but it matters only if the list actually wants tighter discipline over when quests enter the journal.
- `To Your Face` is a narrow polish win, but it is still a preference-shaped social-cleanup mod rather than a core world-reaction framework.
- Mixing multiple social philosophies too casually can make guard behavior, stealth expectations, and world reaction feel incoherent.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred crime-and-social baseline, one narrower guard-pressure comparison, and one more expressive stealth-and-crime branch.
- Companion picks such as `The Choice is Yours` and `To Your Face` stay documented as focused complements rather than replacements for the main social-system baseline.
- The chosen baseline complements religion, economy, survival, and follower direction instead of collapsing several later sections into one crime answer.
- Later follower and world-content decisions still have visible room to matter.

## Followers And Companion Systems

### Core Idea

- This subsection decides how `Elder Wilds` wants companions to function at the systems level: whether follower management should be modern and flexible, whether a lighter older framework is enough, or whether the project wants a more intervention-heavy companion-control layer.
- The goal is to choose one clear follower-framework direction without letting this subsection absorb custom-follower content, broader NPC overhauls, or world-content ownership.

### Options

- Modern flexible route: `Nether's Follower Framework` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/55653>
- Classic management route: `EFF - Extensible Follower Framework` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/7003>
- Heavy intervention route: `Amazing Follower Tweaks SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/6656>

### Recommendation

- Start with `Nether's Follower Framework` as the main baseline.
- Keep `EFF` as the classic comparison if the project wants a simpler established management route.
- Keep `Amazing Follower Tweaks SE` as the deliberate heavy-management branch only if the list truly wants follower control and party behavior to become a more dominant systems pillar.
- Keep follower-framework choice separate from later custom-follower picks; this subsection owns party-management philosophy, not named companion selection.

### Risks & Compatibility

- A very light or dated framework can undershoot the subsection and leave companions awkward to manage once the list grows.
- A heavy follower-control framework can make party management dominate ordinary play more than intended.
- Generic follower frameworks can conflict with custom companions that are better left outside them.
- Mixing multiple follower-management philosophies too casually can make companion behavior and custom-follower support incoherent.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred follower-framework baseline, one older established comparison, and one heavier management branch.
- The chosen baseline complements religion, crime, exploration, and later NPC/world-content direction instead of collapsing several future sections into one companion answer.
- The framework decision stays disciplined enough that later custom-follower work can build on it cleanly.

## Stealth And Detection

### Core Idea

- This subsection owns the modern-mechanics pillar's stealth side: how Skyrim's famously janky detection system should be recalibrated, and whether the player should gain better stealth tools without those tools replacing the existing perk, magic, and combat layers.
- It is intentionally kept separate from the crime and reputation subsection above. That subsection is about how the world reacts after the fact; this one is about how the player interacts with detection in the moment.
- It also stays separate from NPC AI overhauls, which belong in `modlist-09.md` if a separate AI overhaul is later chosen, and from the targeted bugfix bucket in `modlist-01.md` (Targeted Bugfix Mods).

### Options

- Detection-recalibration route: `Realistic AI Detection (RAID)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/2345>
- Discipline-first route: rely on the perk overhaul chosen earlier in section 05 and the targeted bugfix mods in `modlist-01.md` (Targeted Bugfix Mods) to handle detection edge cases.
- Deferred high-commitment branch: do not add a full stealth-toolkit overhaul until the rest of section 05 has settled, because stacking stealth systems creates more playstyle incoherence than improvement.

### Recommendation

- Use `Realistic AI Detection (RAID)` as the detection-recalibration baseline. It is script-free, has 23.7K endorsements, and recalibrates the detection formula (line of sight, lighting, distance, sneaking skill, race) without rewriting the AI itself. It is the cleanest way to make Skyrim's stealth feel modern without dragging in a stealth overhaul that would fight the perk and combat layers.
- Keep the discipline-first route alive if the chosen perk overhaul plus the targeted bugfix mods from `modlist-01.md` (Targeted Bugfix Mods) are judged to handle detection adequately. The cost of RAID is low but the discipline-first route is valid when the project wants a lighter systems footprint.
- Keep the deferred high-commitment branch alive only if real playtesting proves detection still feels too forgiving or too punishing after the perk and bugfix layers are in place.
- Keep this subsection separate from the crime and reputation subsection above. Detection is a moment-to-moment mechanical layer; reputation and guard pressure are social and world-reaction layers.

### Risks & Compatibility

- Detection recalibration can make some encounter zones feel too easy or too hard if it interacts badly with encounter-zone or difficulty mods from `modlist-11.md`; verify the chosen balance works across hold capitals, wilderness, and dungeon encounters.
- A detection overhaul can make stealth-only play too dominant if it stacks with a perk overhaul that already buffs sneak; check the perk mod's sneak tree for conflicts.
- Detection changes can also affect follower behavior, since followers inherit some detection rules; verify follower behavior under RAID if the chosen follower framework exposes detection settings.

### Acceptance Criteria

- `Elder Wilds` has one clear detection-recalibration baseline or a deliberate discipline-first decision.
- Sneak gameplay feels more readable and less random under the new detection rules without making stealth-only play dominate.
- Detection work stays separated from crime, reputation, perk, magic, and combat decisions in load order, MCM, and visual identity.

## Romance, Marriage, And Companionship

### Core Idea

- This subsection owns the SFW romance and marriage layer: how marriage mechanics should be expanded, how dialogue with spouses and romance interests should feel modern, and which opt-in quest-driven romance arcs the list should support.
- It is intentionally kept SFW. The chosen baseline is fade-to-black, not explicit content, and the Amorous Adventures variant locked in here is the clean build that omits the explicit scenes.
- It is a systems-and-dialogue layer, not a follower-content layer. Custom named followers still belong in `modlist-09.md`. Marriage machinery and dialogue expansion for vanilla and recognized spouses belong here.

### Options

- Dialogue-expansion baseline: `Relationship Dialogue Overhaul - RDO SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/1187>
- Opt-in romance-quest route: `Amorous Adventures` (clean variant) - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/7305>
- Marriage-machinery route: `Marriage Mod - To Have And To Hold` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/8589>
- Best-in-class single-companion route: `Serana Dialogue Add-On` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/32161>
- Discipline-first route: rely on vanilla marriage mechanics and skip dedicated romance and marriage content. Realistic only if `Elder Wilds` treats romance as out of scope.

### Recommendation

- Use `Relationship Dialogue Overhaul - RDO SE` as the dialogue-expansion baseline. It adds 5,000+ fully-voiced new lines for vanilla NPCs, followers, and spouses using their original voices, restores cut dialogue, and fixes dialogue bugs. It is the community-canonical dialogue expansion (137K endorsements) and is fully SFW. It is also the most compatible choice because it does not change mechanics, only dialogue.
- Use `Amorous Adventures` (clean variant) as the opt-in romance-quest route. The mod ships a clean build that omits the explicit scenes and keeps every quest as fade-to-black, which fits the SFW rule. It adds fully voiced romance arcs for Lydia, Serana, Elisif, and several other marriage-eligible NPCs. Lock only the clean variant into the load order; the explicit version is out of scope for `Elder Wilds`.
- Use `Marriage Mod - To Have And To Hold` as the marriage-machinery expansion. It supports up to 11 simultaneous spouses, adds divorce and remarriage, enhances the wedding ceremony, and ties dynamic events to player progress. This is the systems-layer change that lets the dialogue and romance content above actually matter mechanically.
- Use `Serana Dialogue Add-On` as the best-in-class single-companion expansion. It adds 7,000+ new fully-voiced lines for Serana, plus new story arcs, romance progression, and quest commentary. Serana is the most-recruited companion in vanilla Dawnguard content, and 51K endorsements show this is the canonical Serana enhancement. It complements RDO rather than overlapping it because Serana is one of the few NPCs RDO does not deeply cover.
- Keep the discipline-first route alive only if `Elder Wilds` explicitly decides romance is out of scope. Locking in zero romance content is internally consistent but would leave RDO's most popular use case unsupported.

### Risks & Compatibility

- The wrong Amorous Adventures variant breaks the SFW rule. The download must be the clean build, not the explicit build, and the load order must keep the clean variant active.
- Marriage-machinery mods can conflict with each other; do not stack `To Have And To Hold` with another multi-spouse mod or with custom marriage overhauls from other sections.
- Romance dialogue expansion can conflict with custom-voiced follower mods from `modlist-09.md` that replace the same NPC's voice; verify any new custom follower does not double-voice a romance-interest NPC.
- Romance quest mods add non-trivial content to the world and can affect pacing, which means they should be reviewed against the quest section in `modlist-08.md` to avoid doubling up on a single NPC's quest line.
- Marriage events triggered by `To Have And To Hold` can fire during unintended moments if not configured; check the MCM for event timing and cooldown settings.

### Acceptance Criteria

- `Elder Wilds` has one clear dialogue-expansion baseline, one opt-in romance-quest route (clean variant), one marriage-machinery expansion, and one best-in-class single-companion expansion.
- The locked Amorous Adventures variant is the clean build. The explicit variant is not in the load order.
- Marriage feels like a meaningful long-term choice rather than a stat boost, with the machinery to support up to 11 simultaneous spouses if the player wants that.
- Romance dialogue and quest work stays separated from custom-follower content in `modlist-09.md` so the two systems do not double-voice or double-quest the same NPC.

## Artifact And Unique Item Overhauls

### Core Idea

- This subsection owns the unique-item and artifact content packs that add depth to the named items the player finds in the world: Daedric artifacts, dragon priest masks, unique weapons, and miscellaneous quest items that vanilla treats as stat-sticks.
- `Elder Wilds` treats these mods as a separate ownership layer from crafting (which lives in `Smithing And Crafting Expansion`) because artifact overhauls change what named items are, not how the player makes generic items.
- The right baseline is balanced-and-lore-friendly. These mods should make the player's first Ahzidal discovery or first encounter with the Warlock's Ring feel meaningful, not give every artifact a +50% damage enchant and break the loot ladder.

### Options

- Comprehensive balanced overhaul: `Reliquary of Myth - Artifacts of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/31612>
- Model-replacement pass: `ArteFakes - Unique Artifacts Replacer` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/41254>
- Dragon-priest specific: `Konahrik's Accoutrements` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/22206>
- Gap-filler for the unique-items left behind: `Unique Items Tweaks - Improved Miscellaneous Artifacts` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/33723>
- Simonrim-aligned artifact overhaul: `Artificer - An Artifact Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/99619> — an artifact overhaul that rebalances and re-enchants Daedric artifacts and unique items using the Simonrim design philosophy. **Requires** `Thaumaturgy - An Enchanting Overhaul` and `Mysticism - A Magic Overhaul` as hard prerequisites, both of which are already locked in the list. Treat as an alternative to `Reliquary of Myth` rather than a stackable companion — the two overhaul the same artifact records and should be evaluated as competing directions, not additive layers.
- Discipline-first route: rely on vanilla artifact stats and skip the dedicated overhauls, since most of the named items in the base game already have functional effects.

### Recommendation

- Use `Reliquary of Myth` as the artifact-stat and effect baseline. It rebalances nearly all of Skyrim's legendary artifacts with unique enchantments, new stats, and lore-friendly effects, and is tagged Lore-Friendly on Nexus. It is the canonical mid-size artifact overhaul and does not invent a new artifact set the way `Legacy of the Dragonborn`-style mods do; it only improves what is already in the game.
- Keep `Artificer - An Artifact Overhaul` as the Simonrim-aligned alternative to `Reliquary of Myth`. It rebalances the same artifact records using the Simonrim design philosophy and requires `Thaumaturgy` and `Mysticism` as prerequisites (both locked in above). Treat the two as competing directions — choose one artifact overhaul baseline, not both. Prefer `Artificer` if the list wants full Simonrim ecosystem coherence; prefer `Reliquary of Myth` if broader community support and patch coverage matter more.
- Use `ArteFakes` as the model-replacement companion. Where Reliquary of Myth changes the numbers and effects, ArteFakes swaps the actual 3D models of the unique items for higher-detail versions. The two stack cleanly because they touch different record types (stats vs meshes).
- Use `Konahrik's Accoutrements` as the dragon-priest-specific companion. It upgrades the named Dragon Priest encounters with new gear, masks with their own stat curves, and harder fights. This is the only one of the four that adds new encounters, and it is the only one the Legacy of the Dragonborn museum integration cares about directly (it is the dragon-priest exhibit).
- Use `Unique Items Tweaks` as the gap-filler. It improves the miscellaneous artifacts Reliquary of Myth does not cover (Warlock's Ring, Muiri's Ring, the various amulets, etc.) so the list does not end up with most named items buffed and a few stragglers still vanilla.
- Keep the discipline-first route alive only if `Elder Wilds` explicitly decides named-item balance is not in scope. Vanilla artifact stats are functional but very front-loaded toward the late-game Daedric items, which makes the early-game finds feel like stat padding.

### Risks & Compatibility

- Stacking `Reliquary of Myth` with `ArteFakes` and `Unique Items Tweaks` touches every unique-item record in the game. They are designed to stack, but verify the `xEdit` patcher chain in `modlist-15.md` does not re-balance the same records (the Synthesis `Armor Stat Synthesis Patcher` should be configured to skip unique items if these mods are present).
- `Konahrik's Accoutrements` adds new Dragon Priest encounters that may not be patched into Legacy of the Dragonborn's display system. Check the `LoTD Patches (Official)` hub in `modlist-13.md` for a `Konahrik's Accoutrements` integration patch before locking the mod in.
- Artifact overhauls that rebalance too aggressively can break encounter expectations (the player expects a particular named weapon to feel a certain way in a particular quest). Reliquary of Myth is the community-canonical balance pass, but verify the top three most-quested artifacts (Wuuthrad, Mehrunes' Razor, the Gauldur weapons) feel right before lock-in.
- `Unique Items Tweaks` overlaps lightly with `Reliquary of Myth` on a small number of records. The author documents which records are intentionally untouched by Reliquary, so this should not be a hard conflict, but verify with a Bashed Patch run.

### Acceptance Criteria

- `Elder Wilds` has one clear artifact-stat baseline (`Reliquary of Myth`) and one clear artifact-model baseline (`ArteFakes`).
- Dragon priest encounters and masks feel like a real reward tier (via `Konahrik's Accoutrements`).
- The miscellaneous artifacts that Reliquary of Myth does not cover have their own balance pass (`Unique Items Tweaks`).
- The artifact stack does not conflict with the `Synthesis` patcher config in `modlist-15.md`.
- Legacy of the Dragonborn museum displays for dragon priest masks integrate with the `Konahrik's Accoutrements` content if the patch is available.

## Weapon Pack Additions

### Core Idea

- This subsection owns the weapon content packs that add new named and leveled-list weapons to the world: swords, axes, maces, bows, and specialty weapons that fit vanilla's medieval-Nordic aesthetic.
- It is intentionally kept separate from `Smithing And Crafting Expansion` (which owns the crafting system) and from the weapon-quality-overhaul layer in `modlist-11.md` (which owns the balance of all weapons). This subsection owns content variety.
- The right baseline is "more variety without diluting the loot ladder". Weapons should feel like meaningful finds, not like a 30% larger leveled list where every new entry is just a renamed iron sword.

### Options

- Comprehensive weapon content pack: `Immersive Weapons` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/16788>
- Mesh-quality pass for vanilla weapons: `LeanWolf's Better-Shaped Weapons SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/2017>
- Specialty weapon route (crossbows and bows): `Legendary Skyrim Crossbows and Bows SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/8273>
- Discipline-first route: rely on vanilla weapons only.

### Recommendation

- Use `Immersive Weapons` as the content-variety baseline. It adds 230+ new weapons (one-handed, two-handed, bows, crossbows) with leveled-list integration, all designed to fit the vanilla art direction. It is the community-canonical weapon content pack (45K+ endorsements) and pairs cleanly with the synthesis patcher chain in `modlist-15.md` (the `OWLLeveledListAddition` and `SpeedandReachFixes` patchers are designed with it in mind).
- Use `LeanWolf's Better-Shaped Weapons SE` as the mesh-quality companion. Where Immersive Weapons adds new weapons, LeanWolf upgrades the silhouette of the existing vanilla weapons. The two stack cleanly because they touch different records.
- Use `Legendary Skyrim Crossbows and Bows` as the specialty route. Vanilla crossbows are a single boring model, and this mod adds new crossbow and bow models with named variants and unique variants. Lock it in only if `Elder Wilds` treats the crossbow-and-bow archetype as a real character-build option (the `modlist-11.md` difficulty decisions should support ranged combat as a viable path).
- Keep the discipline-first route alive if `Elder Wilds` decides weapon variety is not worth the extra mod count, but the `Immersive Weapons` choice is so dominant in the modlist community that locking it in is the default for any "lots of new content" list.

### Risks & Compatibility

- `Immersive Weapons` is a large mod and the synthesis patcher chain in `modlist-15.md` already has explicit `Bash Tags` and patcher entries for it. Do not skip the `OWLLeveledListAddition` and `SpeedandReachFixes` patchers if `Immersive Weapons` is present.
- `LeanWolf's Better-Shaped Weapons` can conflict with `Unique Items Tweaks` and `Reliquary of Myth` on the unique-weapon records. The two artifacts mods touch only the unique items, but verify the model swap does not affect the visual identity of a unique item the player has a strong memory of (e.g. Wuuthrad should still look like Wuuthrad).
- `Legendary Skyrim Crossbows and Bows` adds crossbows as a meaningful archetype, which means the `modlist-11.md` difficulty decisions need to account for ranged damage output. If difficulty is set to make ranged useless, this mod is wasted install.
- All three weapon mods add new models, which means the `Pandora` and `BodySlide` rebuild triggers in `modlist-15.md` fire whenever any of them is updated.

### Acceptance Criteria

- `Elder Wilds` has one clear weapon-content baseline (`Immersive Weapons`) and one clear mesh-quality baseline for vanilla weapons (`LeanWolf's Better-Shaped Weapons`).
- The chosen weapon stack does not conflict with the synthesis patcher entries in `modlist-15.md`.
- If crossbows and bows are a real build path, the specialty content mod is locked in; if not, the discipline-first decision is explicit.
- New weapons feel like meaningful finds in dungeon and bandit loot, not leveled-list padding.

## Armor Pack Additions

### Core Idea

- This subsection owns the armor content packs that add new named and leveled-list armors to the world: light, heavy, and specialty armors that fit the medieval-Nordic aesthetic of vanilla Skyrim.
- It is intentionally kept separate from `Smithing And Crafting Expansion` (which owns the crafting system) and from the weapon-content subsection above (which uses the same content-pack pattern). This subsection owns armor content variety.
- The right baseline is the same as the weapons subsection: more variety without diluting the loot ladder. New armors should slot into the tier ladder rather than fragmenting it.

### Options

- Comprehensive armor content pack: `Immersive Armors` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/3479>
- Vanilla-armor model overhaul: `NordwarUA Total Armor and Weapon Compilation` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/61423>
- Light armor diversity: `Common Clothes and Armors` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/21305>
- Carry-capacity utility: `Bandolier - Bags and Pouches Classic` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/2417>
- Discipline-first route: rely on vanilla armor sets only.

### Recommendation

- Use `Immersive Armors` as the content-variety baseline. It adds 200+ new armors (light, heavy, mage, fur, leather) with leveled-list integration, all designed to fit the vanilla art direction. It is the canonical armor content pack (50K+ endorsements) and pairs with `Immersive Weapons` for parallel content addition. The synthesis patcher chain in `modlist-15.md` already has explicit `Bash Tags` and patcher entries for it.
- Use `NordwarUA Total Armor and Weapon Compilation` as the vanilla-armor model overhaul. It compiles six NordwarUA mods (Realistic Armor, Race Armor Expansion, Guards Armor Replacer, New Legion, Vanilla Armor Replacers, Unplayable Faction Armors) into a single package that standardizes the cubemaps and removes the stat changes that the base NordwarUA mods applied to NPCs. The result is a vanilla-armor visual upgrade without NPC balance changes, which fits the `Elder Wilds` "lore-friendly" tone better than a full stat-replacer mod would.
- Use `Common Clothes and Armors` as the light-armor-diversity companion. Where `Immersive Armors` adds full armor sets, Common Clothes adds clothing-and-light-armor variants that make bandits, sellswords, and travelers feel more like individuals. This is the clothing-side companion to `NordwarUA`.
- Use `Bandolier - Bags and Pouches Classic` as the carry-capacity utility layer. It adds bags, pouches, and bandoliers that the player can equip to add inventory slots, with a MCM configuration for slot counts and visual variants. This is the only mod in this subsection that affects inventory mechanics, but the inventory system is shared between weapons and armor, so it belongs here.
- Keep the discipline-first route alive if `Elder Wilds` decides armor variety is not worth the extra mod count, but the `Immersive Armors` choice is again so dominant in the modlist community that locking it in is the default.

### Risks & Compatibility

- `Immersive Armors` is a large mod and the synthesis patcher chain in `modlist-15.md` already has explicit `Bash Tags` and patcher entries for it. Do not skip the `OWLLeveledListAddition` or `Armor Stat Synthesis Patcher` if `Immersive Armors` is present.
- `NordwarUA Total Armor` standardizes cubemaps across all six sub-mods. This means the mod visually overrides the cubemap of the original `NordwarUA Race Armor Expansion` etc., and any mod that depended on the original cubemaps will need to be re-tested.
- `Common Clothes and Armors` adds clothing items to many NPC leveled lists. If `Armor and Clothing Extension` is also in the list, the two should not conflict (they touch different records) but verify the NPCs in the leveled lists look right after both are active.
- `Bandolier` changes the inventory system. It does not conflict with `modlist-11.md` difficulty decisions, but the carry-weight design needs to account for the additional slots Bandolier provides.
- All three armor mods add new models, which means the `Pandora` and `BodySlide` rebuild triggers in `modlist-15.md` fire whenever any of them is updated. `Immersive Armors Retexture and Mesh Fixes SE` (already in the checklist) is the retexture companion that should be re-run after every BodySlide rebuild.

### Acceptance Criteria

- `Elder Wilds` has one clear armor-content baseline (`Immersive Armors`) and one clear mesh-quality baseline for vanilla armor (`NordwarUA Total Armor and Weapon Compilation`).
- Light-armor-diversity and carry-capacity utility layers are explicitly chosen or explicitly declined.
- The chosen armor stack does not conflict with the synthesis patcher entries in `modlist-15.md`.
- New armors feel like meaningful finds in dungeon and bandit loot, not leveled-list padding.

## Clothing And Wardrobe Extensions

### Core Idea

- This subsection owns the clothing content packs that add new clothing, cloaks, and wearable non-armor items to the world: common clothes, noble clothes, cloaks, and backpacks.
- It is intentionally kept separate from the armor packs above because clothing is non-protective and lives in a different inventory slot. The current tracked clothing set is: `Armor and Clothing Extension` (clothing slot diversity), `Common Clothes and Armors` (shared commoner coverage), `Sforzinda Imitations` (handmade outfit variety), `Cloaks of Skyrim` (cosmetic cloak slot), `Colovian Noble Clothes` (high-status clothing variants), and `Knapsack Backpacks SE` (utility backpack slot).
- The right baseline is "more wardrobe variety without making every NPC a fashion show". Clothing mods should add visual diversity to towns and cities without overwhelming the identity of the vanilla factions.

### Options

- Comprehensive clothing diversity: `Armor and Clothing Extension` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/19002>
- Common-cloth variety: `Common Clothes and Armors` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/21305> (also listed in armor subsection)
- Boutique handcrafted-outfit route: `Sforzinda Imitations` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/54346>
- Cloak slot: `Cloaks of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/6369>
- High-status clothing: `Colovian Noble Clothes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/4464>
- Carry-and-wearable utility: `Knapsack Backpacks SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/3440>
- Discipline-first route: rely on vanilla clothing only.

### Recommendation

- Use `Armor and Clothing Extension` as the clothing-diversity baseline. It adds lore-friendly clothing options and gives NPCs more appropriate attire (35K+ endorsements, by kryptopyr and Gamwich). It requires `RUSTIC CLOTHING - SE` (already in the list under section 2) and `SkyUI` (also in the list under section 1) as hard dependencies, both of which are already locked in. The mod works by adding new clothing items and redistributing them to NPCs via SPID-style keywords, so it does not break the existing NPC outfits in `modlist-09.md`.
- Use `Common Clothes and Armors` as the common-cloth variety companion. It is listed in the armor subsection above as well, but the mod primarily adds new clothing items (with armor variants for some), and it pairs naturally with `Armor and Clothing Extension` to give the bandit-and-sellsword archetype a real visual variety.
- Keep `Sforzinda Imitations` as the handmade-outfit branch for the "more clothing" request, especially on the women's side of the wardrobe stack. It is not the subsection baseline because it is a more curated boutique pack than `ACE` or `Common Clothes`, but it is the cleanest verified addition for adding distinct crafted outfits without abandoning the lore-friendly direction entirely.
- Use `Cloaks of Skyrim` as the cloak-slot addition. Vanilla Skyrim has a cloak slot that is almost never used; this mod adds 100+ new cloaks that the player can equip (and that NPCs can wear via SPID distribution). The cloak slot is the most visually impactful wearable slot because cloaks are visible in third-person, and this is the canonical cloaks mod.
- Use `Colovian Noble Clothes` as the high-status clothing variety pass. It adds new noble and high-status clothing items that fit the Colovian (Cyrodiilic-imperial) aesthetic. It pairs naturally with `modlist-08.md` world-content mods that add Imperial and noble-themed content (e.g. `Beyond Skyrim - Bruma`).
- Use `Knapsack Backpacks SE` as the carry-and-wearable utility. It adds backpacks that the player can equip to add inventory slots, with a MCM configuration for slot counts and visual variants. This is the cosmetic companion to the inventory-decision mod `Bandolier` listed in the armor subsection above; the two are complementary, not competing.
- Keep the discipline-first route alive if `Elder Wilds` decides clothing variety is not worth the extra mod count, but for a list that calls itself "big, dark, awe-inspiring" the visual diversity from these clothing mods is one of the most cost-effective ways to make towns and cities feel populated.

### Risks & Compatibility

- `Armor and Clothing Extension` requires `RUSTIC CLOTHING - SE` and `SkyUI`. Both are already in the list (RUSTIC CLOTHING in section 2, SkyUI in section 1), so the dependency chain is satisfied. Verify the load order keeps `RUSTIC CLOTHING` above `Armor and Clothing Extension` so ACE's clothing items override RUSTIC's retextures where they overlap.
- `Common Clothes and Armors` is listed in two subsections (clothing here, armor in the subsection above) because it adds both. The checklist in `mods-checklist.md` has it under the armor section for clarity, but it is referenced in both modlist-05.md subsections.
- `Sforzinda Imitations` is a more authored outfit pack than the rest of this subsection, so it should be treated as a curated add-on rather than automatic baseline coverage for every NPC. If it starts pulling the list toward a boutique-fantasy wardrobe tone, cut it.
- `Cloaks of Skyrim` adds 100+ new cloak items, which means it interacts with the cloak-slot system. If `modlist-04.md` adds a custom cloak-slot overhaul, verify the two stack cleanly.
- `Colovian Noble Clothes` is a single-author mod with a relatively small mod count. The mod is stable but does not have the same community-maintenance footprint as the other mods in this subsection, so verify the mod page for known issues before locking it in.
- `Knapsack Backpacks SE` is the cosmetic backpack mod, and `Bandolier` (armor subsection) is the inventory-extension mod. The two can stack, but verify the inventory UI does not show duplicate bag icons.

### Acceptance Criteria

- `Elder Wilds` has one clear clothing-diversity baseline (`Armor and Clothing Extension`) and one clear common-cloth variety companion (`Common Clothes and Armors`).
- Any extra handcrafted outfit layer (`Sforzinda Imitations`) is an explicit add-on branch, not an accidental tone shift.
- The cloak slot is populated with new content (`Cloaks of Skyrim`).
- High-status clothing variants are present for the Imperial and noble archetypes (`Colovian Noble Clothes`).
- The chosen backpack mod is the cosmetic and inventory companion (`Knapsack Backpacks SE` + `Bandolier` from the armor subsection).
- The chosen clothing stack does not conflict with the NPC outfit decisions in `modlist-09.md`.

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
