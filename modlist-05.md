# Expanded Systems

**MO2 Separator:** `05 Expanded Systems` → `05a Character & Progression`, `05b Magic & Perks`, `05c Survival & Needs`, `05d Crafting & Economy`, `05e Followers & Reputation`

## Character Creation And Starting Choices → `05a Character & Progression`

### Core Idea

- This subsection decides how `Elder Wilds` begins: a grounded alternate start, a classic utility-first start, a more configurable route, or a more abstract sandbox opening. → `05a`
- The decision should improve replayability and roleplay expression without pre-answering later race, progression, religion, survival, or follower choices.

### Options

- Grounded modern route: `Alternate Perspective - Alternate Start` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/50307> → `05a`
- Classic fallback route: `Alternate Start - Live Another Life` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/272> → `05a`
- Configurable middle-ground route: `Skyrim Unbound Reborn (Alternate Start)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/27962> → `05a`
- Freeform sandbox route: `Realm of Lorkhan - Freeform Alternate Start` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/18223> → `05a`
- Origins-and-starting-stats companion: `Dealing with Backstories` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/61106> → `05a`
- Character-journal companion: `Take Notes - Journal of the Dragonborn SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/13570> → `05a`
- Character-background flavor: `Roleplaying In Skyrim - Origins` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/150186> — adds background narrative with optional bonuses based on character history. Requires SKSE and `Papyrus Ini Manipulator`. Soft-requires `Actor Value Generator` (from section 01) for learning-rate modifiers and `SkyUI` for MCM. 198 endorsements, 10k downloads, by DrPharmDawg. (Optional) → `05a`

### Recommendation

- Start with `Alternate Perspective - Alternate Start` as the main baseline candidate. → `05a`
- Keep `Dealing with Backstories` as the main origins-and-starting-stats companion if the list wants character identity to begin before the player earns the first perk. It is the cleanest answer to the user's request for more stats/sheets/origins because it generates background-driven starting skills, bonuses, drawbacks, and gear instead of just moving the player to a different start cell. → `05a`
- Keep `Take Notes` as the low-risk roleplay-sheet companion. It does not rebalance the character the way `Dealing with Backstories` does; it gives the player a persistent in-game journal, which is the lightest way to make origins, beliefs, and personal goals actually visible in play. → `05a`
- Keep `Alternate Start - Live Another Life` as the conservative fallback comparison if the more immersive route is harder to justify in the final stack. → `05a`
- Keep `Skyrim Unbound Reborn` as the configurable middle-ground comparison if the list wants more setup freedom without moving fully into sandbox-start territory. → `05a`
- Treat `Realm of Lorkhan` as the deliberate freeform branch, not the default baseline. → `05a`
- Add `Roleplaying In Skyrim - Origins` as an optional character-background companion if the list wants origin-driven flavor and optional bonuses at character creation. It integrates with the RoleRim ecosystem (Classic Attributes, MiscStats) for learning-rate modifiers. Requires SKSE and `Papyrus Ini Manipulator`. → `05a`

### Risks & Compatibility

- Start frameworks can carry world-state assumptions that ripple into later quest, city, survival, or follower decisions.
- `Dealing with Backstories` pushes character identity into starting stats, gear, and drawbacks, so it must be judged against the chosen race, standing-stone, perk, and survival stack instead of being treated as a harmless flavor add-on. → `05a`
- `Take Notes` is mechanically light, but it only earns a slot if the list expects real roleplay or long-form character journaling rather than a pure action-combat playstyle. → `05a`
- A more immersive start loses value quickly if it adds onboarding friction without materially improving the early-game tone.
- A more abstract start can undermine world coherence if it feels like a detached configuration room instead of a beginning.
- This subsection gets muddy if race, perk, religion, or survival decisions leak into it too early.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred starting framework and explicit decisions on whether `Dealing with Backstories` and `Take Notes` are part of that opening experience. → `05a`
- The chosen route improves replayability and roleplay identity without undermining world coherence.
- The opening hands the player into normal play cleanly and matches the intended tone.

## Race, Standing Stone, And Progression Overhauls → `05a Character & Progression`

### Core Idea

- This subsection decides how strongly race traits and standing stones should shape long-term character identity.
- The goal is to choose one clear progression philosophy before perks, magic, alchemy, and religion build on top of it.

### Options

- Balanced modern route: `Aetherius - A Race Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/26686> with `Evenstar - Minimalistic Standing Stones of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/41256> → `05a`
- Restrained route: `Morningstar - Minimalistic Races of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/22298> with `Evenstar` → `05a`
- High-expression route: `Imperious - Races of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/1315> with `Andromeda - Unique Standing Stones of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/14910> → `05a`
- Classic attributes companion: `Roleplaying in Skyrim - Classic Attributes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/151476> — adds 10 classic RPG attributes (Strength, Fortitude, Endurance, Intelligence, Wisdom, Perception, Agility, Dexterity, Charisma, Luck) that govern various traits and mechanics. Requires `Actor Value Generator` (from section 01). Integrates with other RoleRim mods for attribute bonuses based on race, origin, and misc stats. 204 endorsements, 10.5k downloads, by DrPharmDawg. (Optional) → `05a`
- Biological race overhaul: `Roleplaying in Skyrim - Races` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/149544> — race overhaul based on biological and physiological differences between races. Requires SKSE, `Keyword Item Distributor (KID)`, and `Spell Perk Item Distributor (SPID)`. Soft-requires `SkyUI` for MCM. 186 endorsements, 9.3k downloads, by DrPharmDawg. (Optional) → `05a`
- Subrace expansion: `Roleplaying in Skyrim - Lineages` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/174443> — adds subraces (4 per vanilla race) with unique abilities and roleplay-encouraging rewards. Supplements `Races`. Requires SKSE, `KID`, `SPID`, and `Papyrus Ini Manipulator`. Soft-requires `SkyUI` for MCM and `Extended Vanilla Menus` for custom race support. 91 endorsements, 3.1k downloads, by DrPharmDawg. (Optional) → `05a`
- Standing stone overhaul: `Roleplaying in Skyrim - Standing Stones` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/157053> — overhaul of the 13 standing stone effects to be worthy of the Dragonborn. Requires SKSE, `aTweaks and Utilities`, `KID`, `Perk Entry Point Extender` (via aTweaks), and `SkyUI` for MCM. 83 endorsements, 2.1k downloads, by DrPharmDawg. (Optional) → `05a`
- Birthsign reintroduction: `Roleplaying in Skyrim - Birthsigns` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/154610> — lore-inspired reintroduction of 13 birthsigns with monthly waxing/waning effects. Requires SKSE, `KID`, and `Papyrus Ini Manipulator`. Soft-requires `SPID` for NPC integration and `SkyUI` for MCM. 146 endorsements, 12.6k downloads, by DrPharmDawg. (Optional) → `05a`
- Misc stats progression: `Roleplaying in Skyrim - Useful MiscStats` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/149142> — makes miscellaneous stats useful and reduces crafting grinding by using them for character building. Requires `Actor Value Generator` (from section 01). Soft-requires SKSE and `SkyUI` for MCM. 177 endorsements, 8.9k downloads, by DrPharmDawg. (Optional) → `05a`
- Skill-based stat growth: `Roleplaying in Skyrim - Skill Based Stat Growth` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/147455> — primary stats (Health, Magicka, Stamina) grow as skills develop. Requires SKSE and `Papyrus Ini Manipulator`. Soft-requires `SkyUI` for MCM. 247 endorsements, 12k downloads, by DrPharmDawg. (Optional) → `05a`

### Recommendation

- Start with `Aetherius` plus `Evenstar` as the main baseline. → `05a`
- Keep `Morningstar` plus `Evenstar` as the restrained fallback if the final list wants less systemic pressure. → `05a`
- Treat `Imperious` plus `Andromeda` as the intentional high-expression comparison route, not the default baseline. → `05a`
- Add `Roleplaying in Skyrim - Classic Attributes` as an optional attribute-depth companion if the list wants classic RPG-style stat progression on top of the chosen race overhaul. It integrates with the RoleRim ecosystem (Races, Origins, MiscStats) and adds meaningful character variation without dominating the perk/magic layers. Requires `Actor Value Generator` from section 01. → `05a`
- Add `Roleplaying in Skyrim - Races` as an optional biological race overhaul if the list wants race identity grounded in physiological differences rather than cultural flavor alone. Requires SKSE, `KID`, and `SPID`. → `05a`
- Add `Roleplaying in Skyrim - Lineages` as an optional subrace expansion that supplements `Races` with 4 subraces per vanilla race, each with unique abilities. Requires SKSE, `KID`, `SPID`, and `Papyrus Ini Manipulator`. → `05a`
- Add `Roleplaying in Skyrim - Standing Stones` as an optional standing stone overhaul if the list wants the 13 stones to feel more impactful for the Dragonborn. Requires SKSE, `aTweaks and Utilities`, `KID`, `Perk Entry Point Extender`, and `SkyUI`. → `05a`
- Add `Roleplaying in Skyrim - Birthsigns` as an optional birthsign reintroduction with monthly waxing/waning effects, as an alternative or supplement to the standing stone choice. Requires SKSE, `KID`, and `Papyrus Ini Manipulator`. → `05a`
- Add `Roleplaying in Skyrim - Useful MiscStats` as an optional misc-stat progression layer that makes miscellaneous stats meaningful for character building. Requires `Actor Value Generator` from section 01. → `05a`
- Add `Roleplaying in Skyrim - Skill Based Stat Growth` as an optional stat-progression companion where Health, Magicka, and Stamina grow as skills develop. Requires SKSE and `Papyrus Ini Manipulator`. → `05a`
- Judge race and stone picks as a pair so the progression baseline stays easy to explain.

### Risks & Compatibility

- Race and stone overhauls can quietly pre-decide too much of the character-building experience before perk and magic systems are chosen.
- A very expressive route can push the list toward optimization-heavy play even if the broader project wants a more immersive tone.
- A very light route can undershoot if later systems assume stronger identity hooks.
- Mixing progression philosophies later can create a stack that is individually interesting but mechanically incoherent.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred race-and-stone philosophy, one restrained fallback, and one more dramatic comparison route. → `05a`
- The chosen baseline supports replayability and character identity without dominating the rest of the progression stack.
- Later perk, magic, and religion decisions still have visible room to matter.

## Perk Overhaul Compatibility → `05b Magic & Perks`

### Core Idea

- This subsection chooses the perk philosophy that the rest of `Expanded Systems` must live with. → `05b`
- The goal is to decide how much rules density and specialization pressure the list actually wants once race and standing-stone choices are already in place.

### Options

- Balanced modern route: `Adamant - A Perk Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/30191> → `05b`
- Restrained fallback route: `Vokrii - Minimalistic Perks of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/26176> → `05b`
- High-expression route: `Ordinator - Perks of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/1137> → `05b`

### Recommendation

- Start with `Adamant` as the main baseline. → `05b`
- Keep `Vokrii` as the restrained comparison if `Adamant` still feels more system-forward than the final tone wants. → `05b`
- Keep `Ordinator` as the deliberate high-complexity branch only if the list decides perks should become one of the dominant sources of build identity. → `05b`
- Compare perk candidates against the already-preferred race-and-stone direction so the full progression stack stays coherent.

### Risks & Compatibility

- A dense perk framework can dominate the entire character-building experience and make later systems feel secondary.
- A restrained perk framework can make the overall list feel under-committed if other expanded systems also land on the conservative side.
- Mixing perk philosophy poorly with race, stone, and later magic choices can create a stack that is busy but not coherent.
- Choosing based on reputation alone can hide whether the most famous perk overhaul actually matches the intended tone.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred perk philosophy, one restrained fallback, and one intentionally high-complexity comparison route. → `05b`
- The chosen baseline leaves visible room for later magic, crafting, religion, and economy decisions to matter.
- Race, standing stones, and perks read as one coherent progression stack.

## Magic System Expansion → `05b Magic & Perks`

### Core Idea

- This subsection chooses the spell-system philosophy for `Elder Wilds`: how broad, readable, and build-defining magic should feel once the race, standing-stone, and perk baseline are in place. → `05b`
- The goal is to pick one clear magic direction that complements the progression stack instead of overwhelming it.

### Options

- Balanced modern route: `Mysticism - A Magic Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/27839> → `05b`
- Moderate expansion route: `Odin - Skyrim Magic Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/46000> → `05b`
- High-expression route: `Apocalypse - Magic of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/1090> → `05b`
- Standalone spell-pack route: `Lost Grimoire SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/4455> — adds 115+ lore-friendly spells across all schools with matching scrolls and staves. Standalone design compatible with any primary overhaul. No continuously running scripts. 6.9K endorsements. → `05b`
- Mage-archetype expansion route: `Triumvirate - Mage Archetypes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/39170> — adds 75 spells across 5 themed mage archetypes (Cleric, Druid, Shadow Mage, Shaman, Warlock) by EnaiSiaion. Designed to complement rather than compete with the primary spell overhaul — each archetype is a self-contained spell package that adds identity-driven magic without diluting the chosen baseline's core schools. 42K endorsements, actively maintained. → `05b`
- Magic-visual route: `Strange Runes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/19438> — adds floating Nordic runes that appear around the player's hands during spell charging, with configurable appearance and density. By powerofthree. Purely visual — no spell changes, no balance impact. 22K endorsements. Adds modern magic-casting visual feedback that reads clearly in third-person. → `05b`
- Compatibility note: `Mysticism` and `Odin` should be treated as competing primary overhauls, not a default combined baseline; if the list later explores combined setups, that should be a deliberate compatibility project. → `05b`

### Recommendation

- Start with `Mysticism` as the main baseline. → `05b`
- Keep `Odin` as the comparison route if `Mysticism` ends up feeling too restrained for the final identity. → `05b`
- Keep `Apocalypse` as the deliberate high-expression route, and the most plausible later additive layer, only if the list wants spell variety and magical experimentation to become a dominant system pillar. → `05b`
- Add `Triumvirate - Mage Archetypes` as a locked companion spell pack. It adds identity-driven archetype spells (Cleric, Druid, Shadow Mage, Shaman, Warlock) that complement whichever primary overhaul is chosen without overriding its core spell list. Each archetype is self-contained and can be engaged with or ignored — a Cleric playthrough uses Cleric spells, a pure mage uses the primary overhaul's spells, and the two coexist in the same load order without record conflicts. → `05b`
- Add `Strange Runes` as a locked magic-visual companion. It adds floating Nordic runes during spell charging with zero gameplay or balance impact — purely a visual feedback upgrade that makes spellcasting feel more modern and reads clearly in third-person. Compatible with all primary spell overhauls; no record conflicts. → `05b`
- Choose one primary magic overhaul first and only then decide whether extra spell volume is actually needed.

### Risks & Compatibility

- A very large spell ecosystem can dominate progression and make race, perk, and religion choices feel secondary.
- Layering multiple spell packages too casually turns this subsection into a compatibility problem instead of a clean design decision.
- A restrained spell overhaul can undershoot the `Expanded Systems` pillar if too many adjacent systems also land on conservative choices. → `05b`
- Mixing a high-volume magic package with a more restrained perk philosophy can make the overall progression stack feel internally inconsistent.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred magic-system philosophy, one moderate comparison route, and one intentionally high-expression branch. → `05b`
- The chosen baseline complements the current race, standing-stone, and perk direction instead of pulling against it.
- Later alchemy, religion, economy, and crafting decisions still have visible room to matter.

## Alchemy Overhaul → `05d Crafting & Economy` → `05d`

### Core Idea

- This subsection decides whether alchemy is a disciplined support system for potions, poisons, and ingredients or a much larger rework that also starts reshaping cooking and survival-adjacent loops.
- The goal is to choose one clear alchemy philosophy before moving into cooking, crafting, and economy decisions that depend on it.

### Options

- Balanced modern route: `Apothecary - An Alchemy Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/52130> → `05d`
- Large integrated route: `Complete Alchemy and Cooking Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/19924> → `05d`
- Lightweight cleanup route: `Alchemy Potions and Food Adjustments` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/5877> → `05d`

### Recommendation

- Start with `Apothecary` as the main baseline. → `05d`
- Keep `Complete Alchemy and Cooking Overhaul` as the deliberate large-system comparison if `Elder Wilds` decides alchemy and cooking should become a major combined pillar. → `05d`
- Keep `Alchemy Potions and Food Adjustments` as the lighter fallback if the modern overhaul route proves to be more system weight than the list actually needs. → `05d`
- Treat large food-and-cooking coverage as a deliberate expansion choice, not something that should quietly hitchhike into the alchemy baseline.

### Risks & Compatibility

- A very large alchemy package can quietly absorb cooking and food design, leaving the next subsection with little real room to decide anything.
- A restrained alchemy overhaul can undershoot the `Expanded Systems` pillar if too many adjacent systems also land on conservative choices. → `05d`
- Potion, poison, and ingredient balance can become hard to reason about if the list mixes multiple overlapping consumable philosophies.
- If alchemy becomes too central, ordinary characters may feel pressured to engage with it even when the broader list tone does not need that much consumable optimization.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred alchemy philosophy, one larger comparison route, and one lighter fallback option. → `05d`
- The chosen baseline complements the current race, standing-stone, perk, and magic direction instead of pulling the progression stack sideways.
- Later cooking, economy, crafting, and religion decisions still have visible room to matter.

## Survival Systems → `05c Survival & Needs` → `05c`

### Core Idea

- This subsection decides how much day-to-day bodily upkeep `Elder Wilds` actually wants: enough hunger, fatigue, cold, weather, disease, and wilderness friction to support roleplay and travel texture, or a heavier survival framework that becomes one of the list's central systems. → `05c`
- This section owns the baseline survival direction; `modlist-11.md` still owns later survival-compatibility, difficulty-pressure, and balance interactions across the full load order. → `05c`

### Options

- Simonrim-aligned route: `Starfrost - A Survival Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/97536> → `05c`
- Restrained modern route: `SunHelm Survival and needs` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/39414> → `05c`
- Heavier classic route: `Last Seed - Survival Needs and Diseases` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/56393> → `05c`
- Harsh wilderness route: `Frostfall - Hypothermia Camping Survival` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/671> with `Campfire - Complete Camping System (Supports Skyrim VR)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/667> → `05c`

### Recommendation

- Start with `Starfrost` as the main baseline because the rest of `modlist-05.md` already leans toward a readable Simonrim-style progression family. → `05c`
- Keep `SunHelm` as the practical comparison route if `Starfrost` proves too tightly tuned or too dependent on that ecosystem. → `05c`
- Keep `Last Seed` and `Frostfall` plus `Campfire` as deliberate heavier branches only if the list decides survival should become one of its dominant identities. → `05c`
- Judge survival primarily on travel texture, downtime rhythm, and world feel rather than on maximum hardship alone.

### Risks & Compatibility

- A heavy survival system can dominate pacing and crowd out other expanded systems the file still needs room to evaluate.
- A very light survival setup can undershoot the immersive-travel pillar if later world-scale and downtime decisions expect more texture.
- Cold, disease, food, sleep, and camping systems can blur together and make ownership between survival, cooking, roleplay, and religion harder to read.
- If the survival baseline fights the intended third-person travel rhythm, the result may feel dutiful rather than immersive.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred survival baseline, one practical comparison route, and heavier alternatives that stay alive only if the list intentionally wants that identity. → `05c`
- The chosen baseline complements the current progression stack instead of forcing the whole systems layer into hardcore survival.
- Later religion, economy, follower, and roleplay decisions still have visible room to matter.

## Roleplay Upkeep And Hygiene → `05c Survival & Needs`

### Core Idea

- This subsection owns the lighter day-to-day body-maintenance layer that sits between full survival needs and pure visual flavor.
- The goal is to add believable downtime rituals and world-living texture without turning hygiene into a second dominant survival framework.

### Options

- Modern hygiene route: `Bathing in Skyrim - Renewed` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/135288> → `05c`
- Minimalist route: leave hygiene implied through inns, rivers, and roleplay without a dedicated system.

### Recommendation

- Add `Bathing in Skyrim - Renewed` as the leading hygiene-and-downtime route. → `05c`
- It fits the list's living-the-world pillar better than older bathing mods because it is actively maintained, heavily customizable, and technically modernized around SKSE plus Papyrus-extender dependencies instead of feeling like a brittle relic from an older scripting era.
- Treat it as a roleplay-support system, not as the main survival baseline. The point is to make inns, camp stops, rivers, and home downtime feel more embodied, not to bury the list under another mandatory needs meter.
- Keep the optional basin, description, and merchant integrations secondary; the baseline value is the bathing loop itself.

### Risks & Compatibility

- Hygiene can become fussy busywork if the mod is configured too aggressively.
- `Bathing in Skyrim - Renewed` touches equipment handling, overlays, follower participation, and optional integrations, so it needs stricter discipline than a simple immersion add-on. → `05c`
- The mod page lists several addon dependencies and integrations, but only the hard runtime requirements should be treated as mandatory for the baseline install.
- For the target Steam runtime `1.6.1170`, its listed `Backported Extended ESL Support` requirement does not apply and should not be installed. → `05c`

### Acceptance Criteria

- The modlist has one explicit answer for hygiene and downtime instead of leaving the living-the-world pillar vague.
- The chosen hygiene layer supports inns, rivers, camp routines, and follower travel texture without becoming a second full survival overhaul.
- Hard dependencies are recorded clearly and optional addon integrations stay optional.

## Character Traits And Identity Hooks → `05a Character & Progression`

### Core Idea

- This subsection owns opt-in character-defining quirks that shape a run from the start without replacing the broader race, perk, and standing-stone progression stack.
- The goal is stronger roleplay identity and replayability, not a giant second character-build framework.

### Options

- Trait-package route: `Biggie Traits` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/136384> → `05a`
- Cosmetic-progression route: `Pumping Iron - Dynamic Muscle Growth` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/13434> — character muscles visually grow based on combat skill increases and sleep. Purely cosmetic; does not affect stats or gameplay. Requires SKSE. → `05a`
- Minimalist route: leave identity mostly to race, standing stones, perks, and self-imposed roleplay.

### Recommendation

- Add `Biggie Traits` as the main traits-layer comparison for this section. → `05a`
- It is a cleaner fit for `Elder Wilds` than heavier custom-class frameworks because it adds immediate run-defining tradeoffs in a compact form, closer to Fallout-style traits than to a total rules rewrite. → `05a`
- Keep it clearly subordinate to the main progression baseline. Traits should sharpen character identity and replayability, not replace the race-and-perk decisions already owned above.
- Judge it on whether the picked traits create distinct runs and memorable constraints without forcing gimmick play.
- Keep `Pumping Iron - Dynamic Muscle Growth` as an optional cosmetic-progression companion, not part of the core traits layer. It adds visual character progression tied to combat activity without affecting stats, perks, or gameplay — a flavour win for players who want their character model to reflect adventuring lifestyle, but zero system weight if skipped. → `05a`

### Risks & Compatibility

- Trait systems can quietly duplicate what race, perk, religion, or survival choices are already trying to do.
- If the best traits are too obviously optimal, the whole idea collapses into routine min-maxing instead of character identity.
- `Biggie Traits` has no listed hard dependencies, so its value has to come entirely from design fit and clean behavior, not from framework complexity. → `05a`

### Acceptance Criteria

- The modlist has one explicit traits-layer option for stronger character identity.
- Traits add meaningful replayability and roleplay hooks without crowding out the main progression stack.
- The section keeps a clear boundary between traits, race identity, perk design, and survival pressure.

## Cooking Systems → `05d Crafting & Economy` → `05d`

### Core Idea

- This subsection decides whether food and cooking are mostly ambient support for travel and downtime or a more deliberate progression-and-preparation layer in their own right.
- The goal is to choose a cooking baseline that complements the survival decision without making cooking entirely dependent on a heavy needs framework.

### Options

- Balanced modern route: `Gourmet - A Cooking Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/96876> → `05d`
- Large integrated route: `Complete Alchemy and Cooking Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/19924> → `05d`
- Lightweight cleanup route: `Alchemy Potions and Food Adjustments` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/5877> → `05d`
- Recipe-expansion route: `Mealtime - A Food and Recipe Mod` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/22496> — adds new foods and recipes to cooking menus while sticking close to vanilla ingredient logic. Lighter than a full CACO-style overhaul but denser than the cleanup-only route. → `05d`

### Recommendation

- Start with `Gourmet` as the main baseline. → `05d`
- Keep `Complete Alchemy and Cooking Overhaul` as the deliberate integrated comparison only if the list later decides alchemy and cooking should be tightly fused. → `05d`
- Keep `Alchemy Potions and Food Adjustments` as the lighter fallback if the modern cooking route turns out to be more system weight than the list actually needs. → `05d`
- Keep `Mealtime` as a recipe-density companion if `Gourmet`'s recipe scope feels too narrow after playtesting. It layers on top of the chosen baseline rather than replacing it. → `05d`
- Judge cooking on inns, camps, home bases, travel prep, and downtime rhythm rather than on recipe volume alone.

### Risks & Compatibility

- Cooking can become too dependent on the survival framework and stop making sense as its own system.
- A very large cooking package can quietly absorb alchemy and economy ownership, leaving later sections with less real room to decide anything.
- A very light cooking layer can make inns, food, and downtime loops too forgettable to justify separate attention.
- Choosing a cooking package for feature count alone can hide whether it actually improves ordinary play rhythm.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred cooking baseline, one integrated high-complexity comparison route, and one lighter fallback option. → `05d`
- The chosen baseline complements the survival and alchemy direction instead of collapsing them into one oversized consumables bucket.
- Later economy, roleplay, and religion decisions still have visible room to matter.

#### Visual Companions

- `Hyper Realistic Cooked Beef` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/173752> and `Hyper Realistic Bread` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/173283> replace the vanilla cooked-beef and bread models with photorealistic versions. Both are mesh/texture-only replacers with zero plugin overhead. Add at the end of the food-texture layer to make cooking output feel more appetizing in survival contexts. → `05d`
- `Skyrim 3D Cooking` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/23007> — replaces cooking pot, oven, and food-prep meshes with higher-detail 3D versions. Mesh-only, zero plugin overhead. Pairs with the food-texture layer to make cooking stations and food items look more credible. → `05d`
- `Realistic HD Food Remastered` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/22087> — replaces vanilla food textures with higher-resolution, photorealistic versions covering bread, meat, fruits, vegetables, and prepared dishes. Complements the 3D mesh replacers for a full food-visual upgrade. → `05d`

## Smithing And Crafting Expansion → `05d Crafting & Economy`

### Core Idea

- This subsection decides what crafting is supposed to do in `Elder Wilds`: lightly improve the vanilla smithing loop, become a broader rules-and-materials framework, or shift more responsibility toward NPC services and roleplay texture. → `05d`
- The goal is to choose one clear crafting philosophy before moving into economy and roleplay decisions that depend on it.

### Options

- Balanced practical route: `Ars Metallica - Smithing Enhancement` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/321> → `05d`
- Large integrated route: `Complete Crafting Overhaul Remastered` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/28608> → `05d`
- Roleplay-service route: `Honed Metal -NPC Crafting and Enchanting Services` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/61015> → `05d`
- Enchanting overhaul companion: `Thaumaturgy - An Enchanting Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/57138> — a Simonrim-aligned enchanting overhaul by SimonMagus that rebalances enchantment effects, costs, and progression. Designed to pair with the already-locked `Mysticism` (magic) and `Adamant` (perks) baselines, keeping the Simonrim progression family coherent. → `05d`
- Enchantment variety companion (optional, needs research): `Summermyst - Enchantments of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/6285> — adds ~140 new enchantment effects to weapons, armor, and jewelry. By EnaiSiaion. Sits alongside a system overhaul like `Thaumaturgy` rather than replacing it: Summermyst adds variety (new effects to find on loot), Thaumaturgy defines progression (how enchanting works). Needs compatibility verification against `Thaumaturgy`, `Adamant`, `Mysticism`, and the chosen artifact overhaul before locking. → `05d`

### Recommendation

- Use `Ars Metallica` as the player-crafting baseline. It handles smithing XP, tanning, mining, and basic crafting-loop improvements without heavy rules restructuring. → `05d`
- Add `Honed Metal - NPC Crafting and Enchanting Services` as the locked NPC-service companion. It lets the player pay smiths and enchanters to craft, temper, enchant, and recharge items, which makes town services and gold economy matter without replacing the player crafting loop. The two mods serve different purposes: `Ars Metallica` improves the player-side smithing experience, `Honed Metal` makes NPC crafters useful. Lock both together as complementary rather than competing. → `05d`
- Keep `Complete Crafting Overhaul Remastered` as the deliberate high-complexity comparison if `Elder Wilds` decides material logic and crafting rules should become a major progression pillar. → `05d`
- Add `Thaumaturgy` as the enchanting overhaul companion. It closes the Simonrim crafting loop (enchanting alongside `Mysticism` magic and `Adamant` perks) without requiring a heavy all-in-one crafting framework. It also serves as a prerequisite for artifact-overhaul content in the `Artifact And Unique Item Overhauls` subsection. → `05d`

### Risks & Compatibility

- A very large crafting framework can quietly absorb economy and loot-balance ownership before those sections have a chance to make their own decisions.
- A very light crafting route can leave smithing too forgettable to justify separate attention within `Expanded Systems`. → `05d`
- Mixing player-centric crafting expansion with strong NPC-service assumptions can produce an incoherent progression loop.
- If crafting becomes too central, too many character paths may feel pressured into material optimization even when the broader list tone does not need that level of system weight.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred crafting baseline, one larger integrated comparison route, and one distinct roleplay-facing alternative. → `05d`
- The chosen baseline complements the perk, magic, alchemy, survival, and cooking direction instead of collapsing multiple later sections into one crafting answer.
- Later economy, roleplay, and religion decisions still have visible room to matter.

## Economy And Loot Balance → `05d Crafting & Economy`

### Core Idea

- This subsection decides what economy and loot are supposed to feel like in `Elder Wilds`: a lightly rebalanced merchant-and-pricing layer, a more deliberate loot-distribution framework, or a harsher scarcity-driven progression model. → `05d`
- The goal is to choose one clear economy philosophy before moving into religion, crime, and follower systems that will sit on top of it.

### Options

- Merchant-pricing route: `Trade and Barter - Skyrim Special Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/23081> → `05d`
- Loot-distribution route: `Open World Loot - Encounter Zone and Loot Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/49681> → `05d`
- Heavy scarcity route: `MorrowLoot Ultimate - Skyrim Special Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/3058> → `05d`
- Regional currency route: `C.O.I.N. - Coins of Interesting Nature` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51439> — adds regional coinage (hold-specific coin types and weights) that gives immersive economic texture: coins from different holds look distinct, encouraging the player to notice where money comes from. Lightweight, no scripts. → `05d`
- Currency exchange companion: `C.O.I.N. - Treasury Exchange` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/131682> — adds currency exchange mechanics at merchants, letting the player convert regional coin types. Adds gameplay purpose to the C.O.I.N. system beyond visual variety. → `05d`
- Ownership note: keep `Barter Limit Fix` in `modlist-01.md` (Targeted Bugfix Mods) as a targeted fix if merchant-gold caps become relevant; it is not the economy-framework answer by itself. → `05d`
- Encounter zone overhaul: `Roleplaying in Skyrim - Encounter Zones` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/149899> — comprehensive overhaul of all encounter zones reworked for realism and variety based on NPC type, location, and quest significance, with a randomizer for unpredictability. No hard requirements. ESL flagged. 272 endorsements, 15.4k downloads, by DrPharmDawg. (Optional) → `05d`
- Dynamic economy: `Roleplaying in Skyrim - Evolving Economy` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/149830> — dynamic pricing based on area resources, season, distance from cities, Civil War progress, reputation, and land hostility. Requires SKSE, `Papyrus Ini Manipulator`, and `powerofthree's Papyrus Extender`. Soft-requires `SkyUI` for MCM. 1,497 endorsements, 483.5k downloads, by DrPharmDawg. (Optional) → `05d`
- Rarity-driven loot: `Roleplaying in Skyrim - Loot Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/157259> — rarity-driven, contextually-aware loot overhaul with combat equipment breakage and deleveled artifacts. Requires SKSE, `Papyrus Ini Manipulator`, and `SkyUI`. Soft-requires `powerofthree's Papyrus Extender` for breakage system. 189 endorsements, 6.1k downloads, by DrPharmDawg. (Optional) → `05d`
- Environmental-loot route: `Narrative Loot` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/12812> — adds 1,629 lore-friendly miscellaneous items (paintings, dinnerware, decorative books, bones, missives, pottery) to chests, pockets, and vendor lists. Emphasizes environmental storytelling through loot rather than combat-centric gear progression. Includes a unique Windhelm shop with rotating inventory. Does not rebalance prices or weapon/armor distribution — stacks cleanly on top of the chosen economy baseline. Last updated January 2020 — additive item injector, likely functional, but verify AE compatibility before locking. → `05d`

### Recommendation

- Start with `Trade and Barter` as the main baseline. → `05d`
- Keep `Open World Loot` as the deliberate structure-focused comparison if the project wants loot progression and encounter rewards to feel more curated. → `05d`
- Keep `MorrowLoot Ultimate` as the intentional heavy-scarcity comparison only if the list truly wants rare-item access and deleveled loot to become a defining identity pillar. → `05d`
- Add `C.O.I.N. - Coins of Interesting Nature` as a lightweight economic texture layer. It adds regional coin variety without touching prices or loot distribution — purely immersive world-building through currency. The companion `C.O.I.N. - Treasury Exchange` adds mechanical purpose by letting merchants convert coin types. → `05d`
- Treat pricing changes and loot-distribution changes as related but distinct philosophies rather than interchangeable answers to the same problem.
- Add `Roleplaying in Skyrim - Encounter Zones` as an optional encounter zone overhaul if the list wants enemy levels to feel more realistic and varied based on location type, NPC category, and quest significance. No hard requirements; ESL flagged. → `05d`
- Add `Roleplaying in Skyrim - Evolving Economy` as an optional dynamic pricing layer if the list wants barter costs to fluctuate based on resources, season, Civil War, reputation, and distance from cities. Requires SKSE, `Papyrus Ini Manipulator`, and `powerofthree's Papyrus Extender`. The most popular mod in the RoleRim series (1,497 endorsements, 483.5k downloads). → `05d`
- Add `Roleplaying in Skyrim - Loot Overhaul` as an optional rarity-driven loot overhaul if the list wants loot to feel contextual and rarity-based rather than purely level-scaled. Includes equipment breakage and deleveled artifacts. Requires SKSE, `Papyrus Ini Manipulator`, and `SkyUI`. Extensively reworks leveled lists; other loot overhauls will conflict. → `05d`
- Add `Narrative Loot` as an optional environmental-storytelling layer. It does not change economy balance, prices, or weapon/armor distribution — it adds lore-friendly miscellaneous items to loot lists for world-building texture. Stacks cleanly with `Trade and Barter`, `C.O.I.N.`, or any other economy baseline without leveled-list conflicts. Treat as a world-content companion rather than an economy-system pick. → `05d`

### Risks & Compatibility

- A heavy loot-distribution framework can quietly absorb crafting and progression ownership before later sections have a chance to make their own decisions.
- A pricing-only route can undershoot if loot progression remains too close to vanilla to support the expanded-systems pillar.
- Harsh scarcity can make exploration, crafting, and reward pacing feel punitive rather than immersive.
- Mixing merchant-tuning and deleveled-loot assumptions too casually can create an incoherent economy loop.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred economy baseline, one loot-structure comparison route, and one heavy-scarcity alternative. → `05d`
- The chosen baseline complements the perk, magic, alchemy, survival, cooking, and crafting direction instead of collapsing multiple later sections into one economy answer.
- Later religion, crime, roleplay, and follower decisions still have visible room to matter.

## Religion Or Roleplay Systems → `05a Character & Progression`

### Core Idea

- This subsection decides how much explicit spiritual identity and day-to-day roleplay texture `Elder Wilds` wants: a light faith layer, a modern religion framework aligned with the current progression stack, or a heavier deity-centered system that becomes a defining part of character identity. → `05a`
- The goal is to choose one clear religion or roleplay direction without letting it absorb survival, economy, crime, or follower ownership.

### Options

- Balanced religion route: `Pilgrim - A Religion Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/54099> → `05a`
- Minimal faith route: `Trua - Minimalistic Faiths of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/32549> → `05a`
- High-expression deity route: `Wintersun - Faiths of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/22506> → `05a`

### Recommendation

- Start with `Pilgrim` as the main baseline because it fits the current Simonrim-leaning progression family without making religion the dominant system in the file. → `05a`
- Keep `Trua` as the restrained fallback if the list wants faith flavor without much system weight. → `05a`
- Keep `Wintersun` as the deliberate high-expression comparison only if `Elder Wilds` decides religion should become a much stronger roleplay and progression pillar. → `05a`
- Judge the candidates by ordinary play rhythm: prayer habits, shrine relevance, exploration texture, and whether faith makes the world feel richer during normal travel and downtime.

### Risks & Compatibility

- A very light religion route can undershoot the subsection and leave roleplay identity too close to vanilla.
- A heavy deity-centered framework can make religion dominate character identity so strongly that other systems feel secondary.
- Survival, economy, and follower expectations can drift into this section if faith routines are not scoped carefully.
- Mixing multiple faith philosophies too casually can make the overall roleplay layer incoherent.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred religion baseline, one restrained fallback, and one heavier roleplay-focused alternative. → `05a`
- The chosen baseline complements the perk, magic, alchemy, survival, cooking, crafting, and economy direction instead of collapsing multiple later sections into one religion answer.
- Later crime, roleplay, and follower decisions still have visible room to matter.

## Crime, Reputation, And Social Systems → `05e Followers & Reputation`

### Core Idea

- This subsection decides how much the world should notice what the player does socially: whether reputation should quietly shape reactions across the province, whether stealth and criminal behavior should gain more expressive tools, or whether city-side suspicion and guard behavior should become more active.
- The goal is to choose one clear social-pressure direction without letting this subsection absorb religion, economy, or follower ownership.

### Options

- Reputation-first route: `Skyrim Reputation` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/22374> → `05e`
- Crime-expression route: `Book Of Shadows - Behaviour Based Stealth Additions` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/76086> → `05e`
- Guard-pressure route: `Suspicious City Guards` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/38762> → `05e`
- Quest-pacing companion route: `The Choice is Yours` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/3850> → `05e`
- Greeting-discipline companion route: `To Your Face SE - AE - VR` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/24720> → `05e`
- Ownership note: keep targeted fixes such as `Simple Offence Suppression` in `modlist-01.md` (Targeted Bugfix Mods); they are support fixes, not the social-system answer. → `05e`

### Recommendation

- Start with `Skyrim Reputation` as the main baseline. → `05e`
- Keep `Suspicious City Guards` as the more focused comparison if the main goal is grounded urban tension around suspicious behavior. → `05e`
- Keep `Book Of Shadows` as the deliberate high-expression branch if the project wants crime and stealth to become a much larger playstyle pillar rather than a world-reaction layer. → `05e`
- Add `The Choice is Yours` as the clearest roleplay-facing companion when the list wants stricter control over quest auto-start pressure in a content-heavy run. → `05e`
- Add `To Your Face SE - AE - VR` as the low-drama social-polish companion if normal city and tavern play still feels too noisy from vanilla greeting behavior. → `05e`
- Keep stealth-expression tooling separate from broader world-reaction goals so this subsection does not become a stealth overhaul by accident.
- Optional pickpocketing-fidelity mod: `Steal off Scoundrels - Pickpocketing Criminals is Not Stealing` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/171870> (v0.1.2, Feb 2026, by wSkeever, 778 endorsements) — prevents pickpocketing from being flagged as stealing when the target is a criminal (bandits, forsworn, etc.). Lightweight SKSE plugin, no ESP, no conflicts with crime or reputation systems. Adds roleplay consistency to the crime layer without expanding the social-response footprint. → `05e`

### Risks & Compatibility

- A very light social-response layer can undershoot the subsection and leave crime and reputation too close to vanilla.
- A stealth-heavy crime toolkit can make one playstyle dominate a subsection that should still support broader roleplay.
- City suspicion systems can become annoying if they create constant friction without enough payoff.
- `The Choice is Yours` improves pacing and roleplay control, but it matters only if the list actually wants tighter discipline over when quests enter the journal. → `05e`
- `To Your Face` is a narrow polish win, but it is still a preference-shaped social-cleanup mod rather than a core world-reaction framework. → `05e`
- Mixing multiple social philosophies too casually can make guard behavior, stealth expectations, and world reaction feel incoherent.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred crime-and-social baseline, one narrower guard-pressure comparison, and one more expressive stealth-and-crime branch. → `05e`
- Companion picks such as `The Choice is Yours` and `To Your Face` stay documented as focused complements rather than replacements for the main social-system baseline.
- The chosen baseline complements religion, economy, survival, and follower direction instead of collapsing several later sections into one crime answer.
- Later follower and world-content decisions still have visible room to matter.

## Followers And Companion Systems → `05e Followers & Reputation`

### Core Idea

- This subsection decides how `Elder Wilds` wants companions to function at the systems level: whether follower management should be modern and flexible, whether a lighter older framework is enough, or whether the project wants a more intervention-heavy companion-control layer. → `05e`
- The goal is to choose one clear follower-framework direction without letting this subsection absorb custom-follower content, broader NPC overhauls, or world-content ownership.

### Options

- Modern flexible route: `Nether's Follower Framework` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/55653> → `05e`
- Classic management route: `EFF - Extensible Follower Framework` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/7003> → `05e`
- Heavy intervention route: `Amazing Follower Tweaks SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/6656> → `05e`

### Recommendation

- Start with `Nether's Follower Framework` as the main baseline. → `05e`
- Keep `EFF` as the classic comparison if the project wants a simpler established management route. → `05e`
- Keep `Amazing Follower Tweaks SE` as the deliberate heavy-management branch only if the list truly wants follower control and party behavior to become a more dominant systems pillar. → `05e`
- Keep follower-framework choice separate from later custom-follower picks; this subsection owns party-management philosophy, not named companion selection.

### Risks & Compatibility

- A very light or dated framework can undershoot the subsection and leave companions awkward to manage once the list grows.
- A heavy follower-control framework can make party management dominate ordinary play more than intended.
- Generic follower frameworks can conflict with custom companions that are better left outside them.
- Mixing multiple follower-management philosophies too casually can make companion behavior and custom-follower support incoherent.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred follower-framework baseline, one older established comparison, and one heavier management branch. → `05e`
- The chosen baseline complements religion, crime, exploration, and later NPC/world-content direction instead of collapsing several future sections into one companion answer.
- The framework decision stays disciplined enough that later custom-follower work can build on it cleanly.

## Stealth And Detection → `05b Magic & Perks`

### Core Idea

- This subsection owns the modern-mechanics pillar's stealth side: how Skyrim's famously janky detection system should be recalibrated, and whether the player should gain better stealth tools without those tools replacing the existing perk, magic, and combat layers.
- It is intentionally kept separate from the crime and reputation subsection above. That subsection is about how the world reacts after the fact; this one is about how the player interacts with detection in the moment.
- It also stays separate from NPC AI overhauls, which belong in `modlist-09.md` if a separate AI overhaul is later chosen, and from the targeted bugfix bucket in `modlist-01.md` (Targeted Bugfix Mods). → `05b`

### Options

- Detection-recalibration route: `Realistic AI Detection (RAID)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/2345> → `05b`
- Discipline-first route: rely on the perk overhaul chosen earlier in section 05 and the targeted bugfix mods in `modlist-01.md` (Targeted Bugfix Mods) to handle detection edge cases. → `05b`
- Deferred high-commitment branch: do not add a full stealth-toolkit overhaul until the rest of section 05 has settled, because stacking stealth systems creates more playstyle incoherence than improvement.

### Recommendation

- Use `Realistic AI Detection (RAID)` as the detection-recalibration baseline. It is script-free, has 23.8K endorsements, and recalibrates the detection formula (line of sight, lighting, distance, sneaking skill, race) without rewriting the AI itself. It is the cleanest way to make Skyrim's stealth feel modern without dragging in a stealth overhaul that would fight the perk and combat layers. Last updated April 2022 — script-free means less breakage risk, but the mod is approaching four years unmaintained; verify detection feels right against the chosen perk overhaul. → `05b`
- Keep the discipline-first route alive if the chosen perk overhaul plus the targeted bugfix mods from `modlist-01.md` (Targeted Bugfix Mods) are judged to handle detection adequately. The cost of RAID is low but the discipline-first route is valid when the project wants a lighter systems footprint. → `05b`
- Keep the deferred high-commitment branch alive only if real playtesting proves detection still feels too forgiving or too punishing after the perk and bugfix layers are in place.
- Keep this subsection separate from the crime and reputation subsection above. Detection is a moment-to-moment mechanical layer; reputation and guard pressure are social and world-reaction layers.

### Risks & Compatibility

- Detection recalibration can make some encounter zones feel too easy or too hard if it interacts badly with encounter-zone or difficulty mods from `modlist-11.md`; verify the chosen balance works across hold capitals, wilderness, and dungeon encounters. → `05b`
- A detection overhaul can make stealth-only play too dominant if it stacks with a perk overhaul that already buffs sneak; check the perk mod's sneak tree for conflicts.
- Detection changes can also affect follower behavior, since followers inherit some detection rules; verify follower behavior under RAID if the chosen follower framework exposes detection settings.

### Acceptance Criteria

- `Elder Wilds` has one clear detection-recalibration baseline or a deliberate discipline-first decision. → `05b`
- Sneak gameplay feels more readable and less random under the new detection rules without making stealth-only play dominate.
- Detection work stays separated from crime, reputation, perk, magic, and combat decisions in load order, MCM, and visual identity.

## Romance, Marriage, And Companionship → `05e Followers & Reputation`

### Core Idea

- This subsection owns the SFW romance and marriage layer: how marriage mechanics should be expanded, how dialogue with spouses and romance interests should feel modern, and which opt-in quest-driven romance arcs the list should support.
- It is intentionally kept SFW. The chosen baseline is fade-to-black, not explicit content, and the Amorous Adventures variant locked in here is the clean build that omits the explicit scenes.
- It is a systems-and-dialogue layer, not a follower-content layer. Custom named followers still belong in `modlist-09.md`. Marriage machinery and dialogue expansion for vanilla and recognized spouses belong here. → `05e`

### Options

- Dialogue-expansion baseline: `Relationship Dialogue Overhaul - RDO SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/1187> → `05e`
- Opt-in romance-quest route: `Amorous Adventures` (clean variant) - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/7305> → `05e`
- Marriage-machinery route: `Marriage Mod - To Have And To Hold` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/8589> → `05e`
- Best-in-class single-companion route: `Serana Dialogue Add-On` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/32161> → `05e`
- Discipline-first route: rely on vanilla marriage mechanics and skip dedicated romance and marriage content. Realistic only if `Elder Wilds` treats romance as out of scope. → `05e`

### Recommendation

- Use `Relationship Dialogue Overhaul - RDO SE` as the dialogue-expansion baseline. It adds 5,000+ fully-voiced new lines for vanilla NPCs, followers, and spouses using their original voices, restores cut dialogue, and fixes dialogue bugs. It is the community-canonical dialogue expansion (137K endorsements) and is fully SFW. It is also the most compatible choice because it does not change mechanics, only dialogue. → `05e`
- Use `Amorous Adventures` (clean variant) as the opt-in romance-quest route. The mod ships a clean build that omits the explicit scenes and keeps every quest as fade-to-black, which fits the SFW rule. It adds fully voiced romance arcs for Lydia, Serana, Elisif, and several other marriage-eligible NPCs. Lock only the clean variant into the load order; the explicit version is out of scope for `Elder Wilds`. → `05e`
- Use `Marriage Mod - To Have And To Hold` as the marriage-machinery expansion. It supports up to 11 simultaneous spouses, adds divorce and remarriage, enhances the wedding ceremony, and ties dynamic events to player progress. This is the systems-layer change that lets the dialogue and romance content above actually matter mechanically. → `05e`
- Use `Serana Dialogue Add-On` as the best-in-class single-companion expansion. It adds 7,000+ new fully-voiced lines for Serana, plus new story arcs, romance progression, and quest commentary. Serana is the most-recruited companion in vanilla Dawnguard content, and 51K endorsements show this is the canonical Serana enhancement. It complements RDO rather than overlapping it because Serana is one of the few NPCs RDO does not deeply cover. → `05e`
- Keep the discipline-first route alive only if `Elder Wilds` explicitly decides romance is out of scope. Locking in zero romance content is internally consistent but would leave RDO's most popular use case unsupported. → `05e`

### Risks & Compatibility

- The wrong Amorous Adventures variant breaks the SFW rule. The download must be the clean build, not the explicit build, and the load order must keep the clean variant active.
- Marriage-machinery mods can conflict with each other; do not stack `To Have And To Hold` with another multi-spouse mod or with custom marriage overhauls from other sections. → `05e`
- Romance dialogue expansion can conflict with custom-voiced follower mods from `modlist-09.md` that replace the same NPC's voice; verify any new custom follower does not double-voice a romance-interest NPC. → `05e`
- Romance quest mods add non-trivial content to the world and can affect pacing, which means they should be reviewed against the quest section in `modlist-08.md` to avoid doubling up on a single NPC's quest line. → `05e`
- Marriage events triggered by `To Have And To Hold` can fire during unintended moments if not configured; check the MCM for event timing and cooldown settings. → `05e`

### Acceptance Criteria

- `Elder Wilds` has one clear dialogue-expansion baseline, one opt-in romance-quest route (clean variant), one marriage-machinery expansion, and one best-in-class single-companion expansion. → `05e`
- The locked Amorous Adventures variant is the clean build. The explicit variant is not in the load order.
- Marriage feels like a meaningful long-term choice rather than a stat boost, with the machinery to support up to 11 simultaneous spouses if the player wants that.
- Romance dialogue and quest work stays separated from custom-follower content in `modlist-09.md` so the two systems do not double-voice or double-quest the same NPC.

## Artifact And Unique Item Overhauls → `05d Crafting & Economy`

### Core Idea

- This subsection owns the unique-item and artifact content packs that add depth to the named items the player finds in the world: Daedric artifacts, dragon priest masks, unique weapons, and miscellaneous quest items that vanilla treats as stat-sticks.
- `Elder Wilds` treats these mods as a separate ownership layer from crafting (which lives in `Smithing And Crafting Expansion`) because artifact overhauls change what named items are, not how the player makes generic items. → `05d`
- The right baseline is balanced-and-lore-friendly. These mods should make the player's first Ahzidal discovery or first encounter with the Warlock's Ring feel meaningful, not give every artifact a +50% damage enchant and break the loot ladder.

### Options

- Comprehensive balanced overhaul: `Reliquary of Myth - Artifacts of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/31612> → `05d`
- Model-replacement pass: `ArteFakes - Unique Artifacts Replacer` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/41254> → `05d`
- Dragon-priest specific: `Konahrik's Accoutrements` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/22206> → `05d`
- Gap-filler for the unique-items left behind: `Unique Items Tweaks - Improved Miscellaneous Artifacts` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/33723> → `05d`
- Simonrim-aligned artifact overhaul: `Artificer - An Artifact Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/99619> — an artifact overhaul that rebalances and re-enchants Daedric artifacts and unique items using the Simonrim design philosophy. **Requires** `Thaumaturgy - An Enchanting Overhaul` and `Mysticism - A Magic Overhaul` as hard prerequisites, both of which are already locked in the list. Treat as an alternative to `Reliquary of Myth` rather than a stackable companion — the two overhaul the same artifact records and should be evaluated as competing directions, not additive layers. → `05d`
- Discipline-first route: rely on vanilla artifact stats and skip the dedicated overhauls, since most of the named items in the base game already have functional effects.

### Recommendation

- Use `Reliquary of Myth` as the artifact-stat and effect baseline. It rebalances nearly all of Skyrim's legendary artifacts with unique enchantments, new stats, and lore-friendly effects, and is tagged Lore-Friendly on Nexus. It is the canonical mid-size artifact overhaul and does not invent a new artifact set the way `Legacy of the Dragonborn`-style mods do; it only improves what is already in the game. → `05d`
- Keep `Artificer - An Artifact Overhaul` as the Simonrim-aligned alternative to `Reliquary of Myth`. It rebalances the same artifact records using the Simonrim design philosophy and requires `Thaumaturgy` and `Mysticism` as prerequisites (both locked in above). Treat the two as competing directions — choose one artifact overhaul baseline, not both. Prefer `Artificer` if the list wants full Simonrim ecosystem coherence and the most recently maintained option (last updated April 2026); prefer `Reliquary of Myth` (last updated March 2025, 12K endorsements) if broader community support and patch coverage matter more. → `05d`
- Use `ArteFakes` as the model-replacement companion. Where Reliquary of Myth changes the numbers and effects, ArteFakes swaps the actual 3D models of the unique items for higher-detail versions. The two stack cleanly because they touch different record types (stats vs meshes). → `05d`
- Use `Konahrik's Accoutrements` as the dragon-priest-specific companion. It upgrades the named Dragon Priest encounters with new gear, masks with their own stat curves, and harder fights. This is the only one of the four that adds new encounters, and it is the only one the Legacy of the Dragonborn museum integration cares about directly (it is the dragon-priest exhibit). → `05d`
- Use `Unique Items Tweaks` as the gap-filler. It improves the miscellaneous artifacts Reliquary of Myth does not cover (Warlock's Ring, Muiri's Ring, the various amulets, etc.) so the list does not end up with most named items buffed and a few stragglers still vanilla. → `05d`
- Keep the discipline-first route alive only if `Elder Wilds` explicitly decides named-item balance is not in scope. Vanilla artifact stats are functional but very front-loaded toward the late-game Daedric items, which makes the early-game finds feel like stat padding. → `05d`

### Risks & Compatibility

- Stacking `Reliquary of Myth` with `ArteFakes` and `Unique Items Tweaks` touches every unique-item record in the game. They are designed to stack, but verify the `xEdit` patcher chain in `modlist-15.md` does not re-balance the same records (the Synthesis `Weapon Stat Synthesis Patcher` should be configured to skip unique items if these mods are present). → `05d`
- `Konahrik's Accoutrements` adds new Dragon Priest encounters that may not be patched into Legacy of the Dragonborn's display system. Check the `LoTD Patches (Official)` hub in `modlist-13.md` for a `Konahrik's Accoutrements` integration patch before locking the mod in. → `05d`
- Artifact overhauls that rebalance too aggressively can break encounter expectations (the player expects a particular named weapon to feel a certain way in a particular quest). Reliquary of Myth is the community-canonical balance pass, but verify the top three most-quested artifacts (Wuuthrad, Mehrunes' Razor, the Gauldur weapons) feel right before lock-in.
- `Unique Items Tweaks` overlaps lightly with `Reliquary of Myth` on a small number of records. The author documents which records are intentionally untouched by Reliquary, so this should not be a hard conflict, but verify with a Bashed Patch run. → `05d`

### Acceptance Criteria

- `Elder Wilds` has one clear artifact-stat baseline (`Reliquary of Myth`) and one clear artifact-model baseline (`ArteFakes`). → `05d`
- Dragon priest encounters and masks feel like a real reward tier (via `Konahrik's Accoutrements`).
- The miscellaneous artifacts that Reliquary of Myth does not cover have their own balance pass (`Unique Items Tweaks`).
- The artifact stack does not conflict with the `Synthesis` patcher config in `modlist-15.md`. → `05d`
- Legacy of the Dragonborn museum displays for dragon priest masks integrate with the `Konahrik's Accoutrements` content if the patch is available.

## Weapon Pack Additions → `05d Crafting & Economy`

### Core Idea

- This subsection owns the weapon content packs that add new named and leveled-list weapons to the world: swords, axes, maces, bows, and specialty weapons that fit vanilla's medieval-Nordic aesthetic.
- It is intentionally kept separate from `Smithing And Crafting Expansion` (which owns the crafting system) and from the weapon-quality-overhaul layer in `modlist-11.md` (which owns the balance of all weapons). This subsection owns content variety. → `05d`
- The right baseline is "more variety without diluting the loot ladder". Weapons should feel like meaningful finds, not like a 30% larger leveled list where every new entry is just a renamed iron sword.

### Options

- Modern comprehensive pack: `Heavy Armory - New Weapons` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/6308> — adds 150+ lore-friendly weapons across 11 new types (halberds, spears, glaives, shortswords, quarterstaves, mauls, hatchets, clubs, long maces, shortspears, tridents) with leveled-list integration and OAR-compatible custom animations for polearms. Actively maintained (v6.1.6, 16.8K endorsements). The modern successor to the Immersive Weapons philosophy with proper animation support. → `05d`
- Legacy content pack: `Immersive Weapons` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/16788> — adds 230+ weapons via archaic leveled-list injection. 115K endorsements but last updated April 2018. Kept as a comparison route for maximum weapon volume; Heavy Armory is the preferred modern baseline. → `05d`
- Mesh-quality pass for vanilla weapons: `LeanWolf's Better-Shaped Weapons SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/2017> → `05d`
- Specialty weapon route (crossbows and bows): `Legendary Skyrim Crossbows and Bows SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/8273> → `05d`
- Discipline-first route: rely on vanilla weapons only.

### Recommendation

- Use `Heavy Armory - New Weapons` as the content-variety baseline. It adds 150+ lore-friendly weapons across 11 new types with OAR-compatible custom animations for polearms (halberds, spears, quarterstaves), leveled-list integration, and forge crafting. It is actively maintained (v6.1.6, 16.8K endorsements) and avoids the decade-unmaintained injection method of the legacy alternative. The weapon types map to familiar Elder Scrolls categories absent in vanilla Skyrim. A dedicated `Heavy Armory - Adamant Addon` (mod 144316) provides Simonrim-aligned perk integration for the new weapon types if the list uses Adamant. An `Animated Armoury - DAR Version` (mod 35978, 12.2K endorsements) companion can add custom attack animations for halberds, pikes, rapiers, and quarterstaves if the list wants per-weapon animation movesets beyond Heavy Armory's built-in OAR support. → `05d`
- Keep `Immersive Weapons` as the legacy comparison route if the list wants maximum raw weapon count (230+ vs 150+) and can tolerate an unmaintained mod approaching a decade old. It pairs with the synthesis patcher chain in `modlist-15.md` (the `OWLLeveledListAddition` and `SpeedandReachFixes` patchers are designed with it in mind). Prefer Heavy Armory unless the list specifically needs IW-exclusive weapon variants. → `05d`
- Use `LeanWolf's Better-Shaped Weapons SE` as the mesh-quality companion. Where Heavy Armory adds new weapons, LeanWolf upgrades the silhouette of the existing vanilla weapons. The two stack cleanly because they touch different records. → `05d`
- Use `Legendary Skyrim Crossbows and Bows` as the specialty route. Vanilla crossbows are a single boring model, and this mod adds new crossbow and bow models with named variants and unique variants. Lock it in only if `Elder Wilds` treats the crossbow-and-bow archetype as a real character-build option (the `modlist-11.md` difficulty decisions should support ranged combat as a viable path). → `05d`
- Keep the discipline-first route alive if `Elder Wilds` decides weapon variety is not worth the extra mod count, but adding a weapon pack is the default for any "lots of new content" list. → `05d`

### Risks & Compatibility

- `Heavy Armory` uses standard leveled-list integration and does not require synthesis patcher intervention the way `Immersive Weapons` does. If using `Immersive Weapons` instead, the synthesis patcher chain in `modlist-15.md` has explicit `Bash Tags` and patcher entries for it — do not skip `OWLLeveledListAddition` and `SpeedandReachFixes` if IW is present. → `05d`
- `LeanWolf's Better-Shaped Weapons` can conflict with `Unique Items Tweaks` and `Reliquary of Myth` on the unique-weapon records. The two artifacts mods touch only the unique items, but verify the model swap does not affect the visual identity of a unique item the player has a strong memory of (e.g. Wuuthrad should still look like Wuuthrad). → `05d`
- `Legendary Skyrim Crossbows and Bows` adds crossbows as a meaningful archetype, which means the `modlist-11.md` difficulty decisions need to account for ranged damage output. If difficulty is set to make ranged useless, this mod is wasted install. → `05d`
- All three weapon mods add new models, which means the `Pandora` and `BodySlide` rebuild triggers in `modlist-15.md` fire whenever any of them is updated. → `05d`

### Acceptance Criteria

- `Elder Wilds` has one clear weapon-content baseline (`Heavy Armory - New Weapons`) and one clear mesh-quality baseline for vanilla weapons (`LeanWolf's Better-Shaped Weapons`). The legacy route (`Immersive Weapons`) is documented as the high-volume fallback if the baseline feels too restrained. → `05d`
- The chosen weapon stack does not conflict with the synthesis patcher entries in `modlist-15.md`. → `05d`
- If crossbows and bows are a real build path, the specialty content mod is locked in; if not, the discipline-first decision is explicit.
- New weapons feel like meaningful finds in dungeon and bandit loot, not leveled-list padding.

## Armor Pack Additions → `05d Crafting & Economy`

### Core Idea

- This subsection owns the armor content packs that add new named and leveled-list armors to the world: light, heavy, and specialty armors that fit the medieval-Nordic aesthetic of vanilla Skyrim.
- It is intentionally kept separate from `Smithing And Crafting Expansion` (which owns the crafting system) and from the weapon-content subsection above (which uses the same content-pack pattern). This subsection owns armor content variety. → `05d`
- The right baseline is the same as the weapons subsection: more variety without diluting the loot ladder. New armors should slot into the tier ladder rather than fragmenting it.

### Options

- Comprehensive armor content pack: `Immersive Armors` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/3479> → `05d`
- Vanilla-armor model overhaul: `NordwarUA Total Armor and Weapon Compilation` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/61423> → `05d`
- Light armor diversity: `Common Clothes and Armors` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/21305> → `05d`
- Carry-capacity utility: `Bandolier - Bags and Pouches Classic` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/2417> → `05d`
- IA retexture and fix companion: `Immersive Armors Retexture and Mesh Fixes SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/75891> — retextures most IA sets, fixes broken meshes, and replaces a handful of lower-quality models. Split into three categories (retextures, mesh replacers, mesh fixes). The baseline visual patch for IA; other IA mesh mods build on top of this. 9.9K endorsements. Requires `Immersive Armors`. → `05d`
- IA female body conversion: `Immersive Armours - SSE CBBE 3BA BodySlide` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/22382> — BodySlide files for all female IA outfits including gauntlets, boots, cloaks, and necklaces. Updated to CBBE v2+ and 3BA. Standalone conversion that replaces IA's original female meshes; does not stack with the Retexture and Mesh Fixes mod's own bundled CBBE meshes. 21.5K endorsements. Requires `Immersive Armors`, `CBBE`, `BodySlide and Outfit Studio`. → `05d`
- IA male body conversion: `Immersive Armor HIMBO Conversion V2` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/76552> — BodySlide conversion of all IA armors for the HIMBO male body. Packed in a FOMOD with all variants from the latest Retexture and Mesh Fixes version. Designed to stack on top of the Retexture and Mesh Fixes mod, not replace it. Includes a compatibility patch for CBBE refits to coexist with HIMBO refits. 1.7K endorsements. Requires `Immersive Armors`, `HIMBO`, `Immersive Armors Retexture and Mesh Fixes SE`. → `05d`
- IA art-direction patch: `Immersive Armors - Realistic Armors replace SE by Xtudo` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/36746> — replaces 10 IA sets (Falkreath, Redguard Knight, Hedge Knight, Hunter, Nord Mail, Spellbinder, Shaman, Crimson Archer, Ringmail, Boiled Chitin) with NordWarUA's Realistic Armors. Keeps leveled lists untouched so NPCs still equip the replaced sets. Addresses the "too much The Witcher" criticism of some IA designs without removing content. 1.3K endorsements. Requires `Immersive Armors`, `Realistic Armor`. → `05d`
- Discipline-first route: rely on vanilla armor sets only.

### Recommendation

- Use `Immersive Armors` as the content-variety baseline. It adds 200+ new armors (light, heavy, mage, fur, leather) with leveled-list integration, all designed to fit the vanilla art direction. It is the canonical armor content pack (206K endorsements, but last updated November 2016 — functionally stable as a leveled-list injector, though approaching a decade unmaintained; verify game version compatibility before locking) and pairs with `Immersive Weapons` for parallel content addition. The synthesis patcher chain in `modlist-15.md` already has explicit `Bash Tags` and patcher entries for it. → `05d`
- Use `NordwarUA Total Armor and Weapon Compilation` as the vanilla-armor model overhaul. It compiles six NordwarUA mods (Realistic Armor, Race Armor Expansion, Guards Armor Replacer, New Legion, Vanilla Armor Replacers, Unplayable Faction Armors) into a single package that standardizes the cubemaps and removes the stat changes that the base NordwarUA mods applied to NPCs. The result is a vanilla-armor visual upgrade without NPC balance changes, which fits the `Elder Wilds` "lore-friendly" tone better than a full stat-replacer mod would. → `05d`
- Use `Common Clothes and Armors` as the light-armor-diversity companion. Where `Immersive Armors` adds full armor sets, Common Clothes adds clothing-and-light-armor variants that make bandits, sellswords, and travelers feel more like individuals. This is the clothing-side companion to `NordwarUA`. → `05d`
- Use `Bandolier - Bags and Pouches Classic` as the carry-capacity utility layer. It adds bags, pouches, and bandoliers that the player can equip to add inventory slots, with a MCM configuration for slot counts and visual variants. This is the only mod in this subsection that affects inventory mechanics, but the inventory system is shared between weapons and armor, so it belongs here. → `05d`
- Add `Immersive Armors Retexture and Mesh Fixes SE` as the required visual companion. Without it, many IA sets have visibly dated textures, broken UV maps, or missing mesh fixes. This is the foundation that other IA mesh mods build on. Install it directly after `Immersive Armors` in the load order, overwriting IA's original meshes and textures. → `05d`
- Add `Immersive Armours - SSE CBBE 3BA BodySlide` if the list uses CBBE/3BA as the female body. This is a standalone conversion that replaces IA's original female meshes; it should overwrite both `Immersive Armors` and the Retexture and Mesh Fixes mod for female armor records. Do not stack it with the Retexture and Mesh Fixes mod's own bundled CBBE meshes — choose one female conversion path, not both. The Retexture and Mesh Fixes author explicitly warns that mixing the two will produce broken meshes. → `05d`
- Add `Immersive Armor HIMBO Conversion V2` if the list uses HIMBO as the male body. Unlike the CBBE 3BA conversion, this mod is designed to stack on top of the Retexture and Mesh Fixes mod — it requires it as a hard dependency and includes variants for all the Retexture and Mesh Fixes updates. A compatibility patch lets CBBE and HIMBO refits coexist, so both body conversions can be active simultaneously as long as the female path uses this mod's CBBE compatibility patch rather than the standalone 3BA conversion. → `05d`
- Add `Immersive Armors - Realistic Armors replace SE by Xtudo` as an optional art-direction patch that swaps 10 IA sets for NordWarUA's Realistic Armors. It addresses the common criticism that some IA designs are too fantastical or Witcher-inspired, replacing them with more grounded medieval-Nordic models. It is independent of body conversions and stacks cleanly on top of the Retexture and Mesh Fixes mod. → `05d`
- **Stack order for a full IA visual pipeline:** `Immersive Armors` → `Immersive Armors Retexture and Mesh Fixes SE` → (optional) `IA - Realistic Armors replace by Xtudo` → (optional, choose one female path) `IA CBBE 3BA BodySlide` OR the CBBE compatibility patch bundled with `IA HIMBO Conversion V2` → (optional, if male body) `IA HIMBO Conversion V2`. Run BodySlide after all IA mods are installed, then rebuild all IA batches. → `05d`
- Keep the discipline-first route alive if `Elder Wilds` decides armor variety is not worth the extra mod count, but the `Immersive Armors` choice is again so dominant in the modlist community that locking it in is the default. → `05d`

### Risks & Compatibility

- `Immersive Armors` is a large mod and the synthesis patcher chain in `modlist-15.md` already has explicit `Bash Tags` and patcher entries for it. Do not skip the `OWLLeveledListAddition` or `Weapon Stat Synthesis Patcher` if `Immersive Armors` is present.
- `NordwarUA Total Armor` standardizes cubemaps across all six sub-mods. This means the mod visually overrides the cubemap of the original `NordwarUA Race Armor Expansion` etc., and any mod that depended on the original cubemaps will need to be re-tested. → `05d`
- `Common Clothes and Armors` adds clothing items to many NPC leveled lists. If `Armor and Clothing Extension` is also in the list, the two should not conflict (they touch different records) but verify the NPCs in the leveled lists look right after both are active. → `05d`
- `Bandolier` changes the inventory system. It does not conflict with `modlist-11.md` difficulty decisions, but the carry-weight design needs to account for the additional slots Bandolier provides. → `05d`
- All IA companion mods add new models, which means the `Pandora` and `BodySlide` rebuild triggers in `modlist-15.md` fire whenever any of them is updated. After any IA mesh update, run BodySlide and rebuild all IA batches, then regenerate the retexture outputs. → `05d`
- The Retexture and Mesh Fixes mod and the CBBE 3BA BodySlide conversion are **not** stackable for female meshes. The Retexture and Mesh Fixes author explicitly warns: "NONE OF THESE SETS ARE COMPATIBLE WITH ANY BODYSLIDE CONVERSIONS — these will break the mod and you will have broken meshes." Choose one female mesh path: either the Retexture and Mesh Fixes mod's own meshes (no BodySlide), or overwrite with the standalone CBBE 3BA BodySlide conversion. The HIMBO Conversion V2 avoids this conflict because it is designed to stack on top of the Retexture and Mesh Fixes mod (it requires it as a hard dependency), and its CBBE compatibility patch provides the female path without duplicating the standalone 3BA conversion.
- The Realistic Armors replace mod requires `Realistic Armor` (36151) as a hard dependency alongside `Immersive Armors`. Verify both are in the load order before installing. The mod replaces IA assets rather than adding new ones, so it does not increase the total leveled-list count. → `05d`

### Acceptance Criteria

- `Elder Wilds` has one clear armor-content baseline (`Immersive Armors`) and one clear mesh-quality baseline for vanilla armor (`NordwarUA Total Armor and Weapon Compilation`). → `05d`
- Light-armor-diversity and carry-capacity utility layers are explicitly chosen or explicitly declined.
- The chosen armor stack does not conflict with the synthesis patcher entries in `modlist-15.md`. → `05d`
- New armors feel like meaningful finds in dungeon and bandit loot, not leveled-list padding.

## Clothing And Wardrobe Extensions → `05d Crafting & Economy`

### Core Idea

- This subsection owns the clothing content packs that add new clothing, cloaks, and wearable non-armor items to the world: common clothes, noble clothes, cloaks, and backpacks.
- It is intentionally kept separate from the armor packs above because clothing is non-protective and lives in a different inventory slot. The current tracked clothing set is: `Armor and Clothing Extension` (clothing slot diversity), `Common Clothes and Armors` (shared commoner coverage), `Sforzinda Imitations` (handmade outfit variety), `Cloaks of Skyrim` (cosmetic cloak slot), `Colovian Noble Clothes` (high-status clothing variants), and `Knapsack Backpacks SE` (utility backpack slot). → `05d`
- The right baseline is "more wardrobe variety without making every NPC a fashion show". Clothing mods should add visual diversity to towns and cities without overwhelming the identity of the vanilla factions.

### Options

- Comprehensive clothing diversity: `Armor and Clothing Extension` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/19002> → `05d`
- Common-cloth variety: `Common Clothes and Armors` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/21305> (also listed in armor subsection) → `05d`
- Boutique handcrafted-outfit route: `Sforzinda Imitations` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/54346> → `05d`
- Cloak slot: `Cloaks of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/6369> → `05d`
- High-status clothing: `Colovian Noble Clothes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/4464> → `05d`
- Carry-and-wearable utility: `Knapsack Backpacks SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/3440> → `05d`
- Discipline-first route: rely on vanilla clothing only.

### Recommendation

- Use `Armor and Clothing Extension` as the clothing-diversity baseline. It adds lore-friendly clothing options and gives NPCs more appropriate attire (35K+ endorsements, by kryptopyr and Gamwich). It requires `RUSTIC CLOTHING - SE` (already in the list under section 2) and `SkyUI` (also in the list under section 1) as hard dependencies, both of which are already locked in. The mod works by adding new clothing items and redistributing them to NPCs via SPID-style keywords, so it does not break the existing NPC outfits in `modlist-09.md`. → `05d`
- Use `Common Clothes and Armors` as the common-cloth variety companion. It is listed in the armor subsection above as well, but the mod primarily adds new clothing items (with armor variants for some), and it pairs naturally with `Armor and Clothing Extension` to give the bandit-and-sellsword archetype a real visual variety. → `05d`
- Keep `Sforzinda Imitations` as the handmade-outfit branch for the "more clothing" request, especially on the women's side of the wardrobe stack. It is not the subsection baseline because it is a more curated boutique pack than `ACE` or `Common Clothes`, but it is the cleanest verified addition for adding distinct crafted outfits without abandoning the lore-friendly direction entirely. → `05d`
- Use `Cloaks of Skyrim` as the cloak-slot addition. Vanilla Skyrim has a cloak slot that is almost never used; this mod adds 100+ new cloaks that the player can equip (and that NPCs can wear via SPID distribution). The cloak slot is the most visually impactful wearable slot because cloaks are visible in third-person, and this is the canonical cloaks mod. → `05d`
- Use `Colovian Noble Clothes` as the high-status clothing variety pass. It adds new noble and high-status clothing items that fit the Colovian (Cyrodiilic-imperial) aesthetic. It pairs naturally with `modlist-08.md` world-content mods that add Imperial and noble-themed content (e.g. `Beyond Skyrim - Bruma`). → `05d`
- Use `Knapsack Backpacks SE` as the carry-and-wearable utility. It adds backpacks that the player can equip to add inventory slots, with a MCM configuration for slot counts and visual variants. This is the cosmetic companion to the inventory-decision mod `Bandolier` listed in the armor subsection above; the two are complementary, not competing. → `05d`
- Keep the discipline-first route alive if `Elder Wilds` decides clothing variety is not worth the extra mod count, but for a list that calls itself "big, dark, awe-inspiring" the visual diversity from these clothing mods is one of the most cost-effective ways to make towns and cities feel populated. → `05d`

### Risks & Compatibility

- `Armor and Clothing Extension` requires `RUSTIC CLOTHING - SE` and `SkyUI`. Both are already in the list (RUSTIC CLOTHING in section 2, SkyUI in section 1), so the dependency chain is satisfied. Verify the load order keeps `RUSTIC CLOTHING` above `Armor and Clothing Extension` so ACE's clothing items override RUSTIC's retextures where they overlap.
- `Common Clothes and Armors` is listed in two subsections (clothing here, armor in the subsection above) because it adds both. The checklist in `mods-checklist.md` has it under the armor section for clarity, but it is referenced in both modlist-05.md subsections. → `05d`
- `Sforzinda Imitations` is a more authored outfit pack than the rest of this subsection, so it should be treated as a curated add-on rather than automatic baseline coverage for every NPC. If it starts pulling the list toward a boutique-fantasy wardrobe tone, cut it. → `05d`
- `Cloaks of Skyrim` adds 100+ new cloak items, which means it interacts with the cloak-slot system. If `modlist-04.md` adds a custom cloak-slot overhaul, verify the two stack cleanly. → `05d`
- `Colovian Noble Clothes` is a single-author mod with a relatively small mod count. The mod is stable but does not have the same community-maintenance footprint as the other mods in this subsection, so verify the mod page for known issues before locking it in. → `05d`
- `Knapsack Backpacks SE` is the cosmetic backpack mod, and `Bandolier` (armor subsection) is the inventory-extension mod. The two can stack, but verify the inventory UI does not show duplicate bag icons. → `05d`

### Acceptance Criteria

- `Elder Wilds` has one clear clothing-diversity baseline (`Armor and Clothing Extension`) and one clear common-cloth variety companion (`Common Clothes and Armors`). → `05d`
- Any extra handcrafted outfit layer (`Sforzinda Imitations`) is an explicit add-on branch, not an accidental tone shift.
- The cloak slot is populated with new content (`Cloaks of Skyrim`).
- High-status clothing variants are present for the Imperial and noble archetypes (`Colovian Noble Clothes`).
- The chosen backpack mod is the cosmetic and inventory companion (`Knapsack Backpacks SE` + `Bandolier` from the armor subsection).
- The chosen clothing stack does not conflict with the NPC outfit decisions in `modlist-09.md`. → `05d`

## Death Alternative System → `05c Survival & Needs`

### Core Idea

- This subsection owns what happens when the player falls in combat: whether death is the only outcome, or whether a modern death-alternative system can create memorable setbacks and emergent storytelling instead of a reload screen.
- The goal is to add consequence and narrative texture to defeat without making every lost fight a permanent character-ending event.

### Options

- Nemesis-style death route: `Shadow of Skyrim - Nemesis and Alternative Death System` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/72924> — upon defeat, the player respawns at the nearest safe location with debuffs and the enemy who defeated them gains a name, buffs, and persistent presence in the world. Defeating that nemesis later restores lost progress and removes the debuff. Creates personal antagonists from organic gameplay. By SoloManGames. 8K+ endorsements. → `05c`
- Discipline-first route: rely on the vanilla death-and-reload loop.

### Recommendation

- Add `Shadow of Skyrim` as a locked death-alternative baseline. It turns defeat from a reload-screen punishment into an emergent storytelling mechanic — the enemy who killed you becomes a named nemesis with persistent world presence and buffs, creating organic revenge arcs. Fits the "modern mechanics" and "living the world" pillars by making failure interesting rather than only frustrating. → `05c`

### Risks & Compatibility

- Death-alternative systems interact with every combat mod in the list. Verify `Shadow of Skyrim` does not conflict with `Valhalla Combat`, `Precision`, `TK Dodge`, or any combat-animation mod from `modlist-03.md`. → `05c`
- The nemesis system adds persistent NPCs and effects to the world; verify save file size remains reasonable over long playthroughs with multiple nemeses active. → `05c`
- Death-alternative mods can create edge cases with scripted-death sequences in quests. Check compatibility with `Alternate Perspective`, `Wyrmstooth`, `The Forgotten City`, and major quest mods from `modlist-08.md`. → `05c`
- Confirm the mod is compatible with Steam `1.6.1170` and the SKSE plugin stack from `modlist-01.md`. → `05c`

### Acceptance Criteria

- `Elder Wilds` has one locked death-alternative baseline. → `05c`
- Defeat creates a named nemesis with persistent world presence rather than just a reload screen.
- The nemesis system does not interfere with scripted quest deaths or main-quest progression.
- Combat mods and death-alternative system coexist without edge-case crashes or save bloat.

## Race-Specific Overhauls (Vampire, Werewolf, Shouts) → `05a Character & Progression`

### Core Idea

- This subsection owns the dedicated overhaul mods for vampire, werewolf, and shout gameplay — three character-identity systems that vanilla Skyrim leaves shallow or repetitive, and that the broader progression stack in section 05 does not fully cover.
- These picks complete the EnaiRim suite begun with `Andromeda` (standing stones, locked in `05a`). `Sacrosanct`, `Growl`, and `Thunderchild` are all by EnaiSiaion, share the same design philosophy, and pair with `Andromeda` to form the character-systems half of the EnaiRim ecosystem alongside the Ordinator-based perk baseline. → `05a`
- The goal is to give vampire, werewolf, and Thu'um gameplay meaningful depth without letting any single transformation system dominate — `Elder Wilds` should support all three paths, not force one.

### Options

- Vampire overhaul: `Sacrosanct - Vampires of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/3928> → `05a`
- Werewolf overhaul: `Growl - Werebeasts of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/14645> → `05a`
- Shout overhaul: `Thunderchild - Epic Shouts and Immersion` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/1460> → `05a`
- Discipline-first route: rely on the vanilla vampire, werewolf, and shout systems without dedicated overhaul mods.

### Recommendation

- Lock `Sacrosanct` as the vampire overhaul baseline. It overhauls vampirism progression, feeding, powers, and NPC vampire behaviour with 4 feeding tiers and unique blood-power effects keyed to vampiric age. The community-canonical vampire overhaul (133K endorsements) and the EnaiRim-aligned choice — vanilla's vampire system is shallow and repetitive, and no other locked mod covers it. → `05a`
- Lock `Growl` as the werewolf overhaul baseline. It overhauls beast-form progression, perks, feeding mechanics, and totems with 5 werebear varieties and a dedicated perk tree. Same total-category gap — vanilla werewolf gameplay is nearly non-existent outside the Companions questline. → `05a`
- Lock `Thunderchild` as the shout overhaul baseline. It adds 19 new shouts (57 new words), meditation mechanics, shout-aware equipment, a recognition system, and boss encounters tied to the Thu'um. Completes the EnaiRim character-systems suite alongside `Andromeda`, `Sacrosanct`, and `Growl`, and adds meaningful content to a system that vanilla leaves bare after word-wall collection. → `05a`
- All three mods are by EnaiSiaion, share the same design language, and are guaranteed compatible with each other and with the locked `Ordinator`, `Andromeda`, `Apocalypse`, and `Triumvirate` baselines — no cross-patching required. → `05a`
- Keep the discipline-first route alive only if `Elder Wilds` decides vampirism, lycanthropy, and shout gameplay do not need dedicated attention. The total-category-gap argument is hard to justify for a list built on "modern mechanics" and "lots of new content". → `05a`

### Risks & Compatibility

- All three are by EnaiSiaion, designed to work together, and require no cross-patching. Compatibility with `Ordinator`, `Andromeda`, `Apocalypse`, and the broader EnaiRim ecosystem is guaranteed by design.
- `Sacrosanct` and `Growl` interact with `Heart of the Beast` (werewolf transformation audio) in section 10. Place transformation-sound replacers after the transformation-system mods in load order.
- `Thunderchild` adds 19 new shouts that interact with shout-audio mods (`Airgetlam - Shouts SFX`) from section 10. Verify shout-sfx replacements apply to Thunderchild's new shouts, not just vanilla ones.
- All three add spells, powers, and mechanics that `Ordinator`'s perk trees must coexist with. Verify Ordinator's enchantment-tree and speech-tree adjustments do not conflict with Sacrosanct's blood powers or Thunderchild's shout meditation. → `05a`
- Vampire feeding interacts with the crime-and-reputation baseline (`Skyrim Reputation` from `05e`). Test feeding in cities to confirm guard behaviour and bounty tracking remain coherent.
- `Thunderchild`'s boss encounters may overlap with encounter-zone or world-content mods from `modlist-08.md`. Verify new word-wall guardians do not duplicate vanilla boss spawns. → `05a`

### Acceptance Criteria

- `Elder Wilds` has dedicated vampire, werewolf, and shout overhaul baselines. → `05a`
- Vampire gameplay offers meaningful progression depth beyond vanilla's blood-potion-and-stage loop.
- Werewolf gameplay includes a real perk tree and feeding progression.
- Shout gameplay adds new words, meditation mechanics, and world content, making the Thu'um feel like a real character investment path.
- All three EnaiRim mods coexist with the locked `Ordinator`, `Andromeda`, `Apocalypse`, and `Triumvirate` baselines without conflict.
- Transformation-audio mods from section 10 apply correctly to Sacrosanct's and Growl's new forms.
- Shout-audio mods from section 10 apply to Thunderchild's new shouts.
- No guard-behaviour or bounty incoherence from vampire feeding under the locked crime baseline.

## Candidate TODO Additions

### Character Systems → `05a`

- `Lore and Gender Heights` — race/gender height differences → `05a`
- `Faction Ranks` — visible faction rank titles → `05a`
- `Gods and Worship` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/45011>) — religion/worship system → `05a`

### Magic & Items → `05b`

- `Better Alchemy and Enchanting` (⚠️ needs research — unsure what specific mod this refers to) → `05b`
- `Skytone runes` — sky rune visual companion to Strange Runes → `05b`
- `Strange Wards` — ward spell visual upgrade → `05b`
- `My Precious...es - Multiple Rings SKSE` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/180015>) — multi-ring equip support → `05b`
- `Enhanced invisibility` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/61950>) — invisibility spell VFX upgrade → `05b`
- `Spell cast time progression` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/163122>) — spell cast time scaling → `05b`

### Survival & Needs → `05c`

- `Dirt and Blood` — visual dirt/blood accumulation on character → `05c`

### Crafting & Economy → `05d`

- `Better Smelting` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/40965>) — smelting recipe expansion → `05d`
- `Fish anywhere with water` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/60915>) — fishing outside designated spots → `05d`

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
