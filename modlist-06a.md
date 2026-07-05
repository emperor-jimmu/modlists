# Character & Progression

**MO2 Separator:** `05 Expanded Systems` → `05a Character & Progression`

Part of the [`Expanded Systems`](modlist-06.md) section. See also: `06b` (Magic & Perks), `06c` (Survival & Needs), `06d` (Crafting & Economy), `06e` (Followers & Reputation).

## Character Creation And Starting Choices → `05a`

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

## Race, Standing Stone, And Progression Overhauls → `05a`

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

## Character Traits And Identity Hooks → `05a`

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

## Religion Or Roleplay Systems → `05a`

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

## Race-Specific Overhauls → `05a`

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
