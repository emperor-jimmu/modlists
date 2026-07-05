# Survival & Needs

**MO2 Separator:** `Expanded Systems` → `Expanded Systems - Survival & Needs`

Part of the [`Expanded Systems`](modlist-expanded-systems.md) section. See also: `UI - Framework & HUD` (Character & Progression), `UI - Inventory & Items` (Magic & Perks), `06d` (Crafting & Economy), `06e` (Followers & Reputation).

## Survival Systems → `Expanded Systems - Survival & Needs`

### Core Idea

- This subsection decides how much day-to-day bodily upkeep `Elder Wilds` actually wants: enough hunger, fatigue, cold, weather, disease, and wilderness friction to support roleplay and travel texture, or a heavier survival framework that becomes one of the list's central systems. → `Expanded Systems - Survival & Needs`
- This section owns the baseline survival direction; `modlist-survival-combat.md` still owns later survival-compatibility, difficulty-pressure, and balance interactions across the full load order. → `Expanded Systems - Survival & Needs`

### Options

- Simonrim-aligned route: `Starfrost - A Survival Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/97536> → `Expanded Systems - Survival & Needs`
- Restrained modern route: `SunHelm Survival and needs` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/39414> → `Expanded Systems - Survival & Needs`
- Heavier classic route: `Last Seed - Survival Needs and Diseases` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/56393> → `Expanded Systems - Survival & Needs`
- Harsh wilderness route: `Frostfall - Hypothermia Camping Survival` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/671> with `Campfire - Complete Camping System (Supports Skyrim VR)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/667> → `Expanded Systems - Survival & Needs`

### Recommendation

- Start with `Starfrost` as the main baseline because the rest of `modlist-expanded-systems.md` already leans toward a readable Simonrim-style progression family. → `Expanded Systems - Survival & Needs`
- Keep `SunHelm` as the practical comparison route if `Starfrost` proves too tightly tuned or too dependent on that ecosystem. → `Expanded Systems - Survival & Needs`
- Keep `Last Seed` and `Frostfall` plus `Campfire` as deliberate heavier branches only if the list decides survival should become one of its dominant identities. → `Expanded Systems - Survival & Needs`
- Judge survival primarily on travel texture, downtime rhythm, and world feel rather than on maximum hardship alone.

### Risks & Compatibility

- A heavy survival system can dominate pacing and crowd out other expanded systems the file still needs room to evaluate.
- A very light survival setup can undershoot the immersive-travel pillar if later world-scale and downtime decisions expect more texture.
- Cold, disease, food, sleep, and camping systems can blur together and make ownership between survival, cooking, roleplay, and religion harder to read.
- If the survival baseline fights the intended third-person travel rhythm, the result may feel dutiful rather than immersive.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred survival baseline, one practical comparison route, and heavier alternatives that stay alive only if the list intentionally wants that identity. → `Expanded Systems - Survival & Needs`
- The chosen baseline complements the current progression stack instead of forcing the whole systems layer into hardcore survival.
- Later religion, economy, follower, and roleplay decisions still have visible room to matter.

## Roleplay Upkeep And Hygiene → `Expanded Systems - Survival & Needs`

### Core Idea

- This subsection owns the lighter day-to-day body-maintenance layer that sits between full survival needs and pure visual flavor.
- The goal is to add believable downtime rituals and world-living texture without turning hygiene into a second dominant survival framework.

### Options

- Modern hygiene route: `Bathing in Skyrim - Renewed` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/135288> → `Expanded Systems - Survival & Needs`
- Minimalist route: leave hygiene implied through inns, rivers, and roleplay without a dedicated system.

### Recommendation

- Add `Bathing in Skyrim - Renewed` as the leading hygiene-and-downtime route. → `Expanded Systems - Survival & Needs`
- It fits the list's living-the-world pillar better than older bathing mods because it is actively maintained, heavily customizable, and technically modernized around SKSE plus Papyrus-extender dependencies instead of feeling like a brittle relic from an older scripting era.
- Treat it as a roleplay-support system, not as the main survival baseline. The point is to make inns, camp stops, rivers, and home downtime feel more embodied, not to bury the list under another mandatory needs meter.
- Keep the optional basin, description, and merchant integrations secondary; the baseline value is the bathing loop itself.

### Risks & Compatibility

- Hygiene can become fussy busywork if the mod is configured too aggressively.
- `Bathing in Skyrim - Renewed` touches equipment handling, overlays, follower participation, and optional integrations, so it needs stricter discipline than a simple immersion add-on. → `Expanded Systems - Survival & Needs`
- The mod page lists several addon dependencies and integrations, but only the hard runtime requirements should be treated as mandatory for the baseline install.
- For the target Steam runtime `1.6.1170`, its listed `Backported Extended ESL Support` requirement does not apply and should not be installed. → `Expanded Systems - Survival & Needs`

### Acceptance Criteria

- The modlist has one explicit answer for hygiene and downtime instead of leaving the living-the-world pillar vague.
- The chosen hygiene layer supports inns, rivers, camp routines, and follower travel texture without becoming a second full survival overhaul.
- Hard dependencies are recorded clearly and optional addon integrations stay optional.

## Death Alternative System → `Expanded Systems - Survival & Needs`

### Core Idea

- This subsection owns what happens when the player falls in combat: whether death is the only outcome, or whether a modern death-alternative system can create memorable setbacks and emergent storytelling instead of a reload screen.
- The goal is to add consequence and narrative texture to defeat without making every lost fight a permanent character-ending event.

### Options

- Nemesis-style death route: `Shadow of Skyrim - Nemesis and Alternative Death System` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/72924> — upon defeat, the player respawns at the nearest safe location with debuffs and the enemy who defeated them gains a name, buffs, and persistent presence in the world. Defeating that nemesis later restores lost progress and removes the debuff. Creates personal antagonists from organic gameplay. By SoloManGames. 8K+ endorsements. → `Expanded Systems - Survival & Needs`
- Discipline-first route: rely on the vanilla death-and-reload loop.

### Recommendation

- Add `Shadow of Skyrim` as a locked death-alternative baseline. It turns defeat from a reload-screen punishment into an emergent storytelling mechanic — the enemy who killed you becomes a named nemesis with persistent world presence and buffs, creating organic revenge arcs. Fits the "modern mechanics" and "living the world" pillars by making failure interesting rather than only frustrating. → `Expanded Systems - Survival & Needs`

### Risks & Compatibility

- Death-alternative systems interact with every combat mod in the list. Verify `Shadow of Skyrim` does not conflict with `Valhalla Combat`, `Precision`, `TK Dodge`, or any combat-animation mod from `modlist-animations.md`. → `Expanded Systems - Survival & Needs`
- The nemesis system adds persistent NPCs and effects to the world; verify save file size remains reasonable over long playthroughs with multiple nemeses active. → `Expanded Systems - Survival & Needs`
- Death-alternative mods can create edge cases with scripted-death sequences in quests. Check compatibility with `Alternate Perspective`, `Wyrmstooth`, `The Forgotten City`, and major quest mods from `modlist-world-content.md`. → `Expanded Systems - Survival & Needs`
- Confirm the mod is compatible with Steam `1.6.1170` and the SKSE plugin stack from `modlist-foundations.md`. → `Expanded Systems - Survival & Needs`

### Acceptance Criteria

- `Elder Wilds` has one locked death-alternative baseline. → `Expanded Systems - Survival & Needs`
- Defeat creates a named nemesis with persistent world presence rather than just a reload screen.
- The nemesis system does not interfere with scripted quest deaths or main-quest progression.
- Combat mods and death-alternative system coexist without edge-case crashes or save bloat.
