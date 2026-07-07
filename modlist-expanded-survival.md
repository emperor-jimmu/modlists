# Survival & Needs

**MO2 Separator:** `Expanded Systems` → `Expanded Systems - Survival & Needs`

Part of the [`Expanded Systems`](modlist-expanded-systems.md) section. See also: `Expanded Systems - Character & Progression`, `Expanded Systems - Magic & Perks`, `Expanded Systems - Crafting & Economy`, `Expanded Systems - Followers & Reputation`.

## Survival Systems → `Expanded Systems - Survival & Needs`

This subsection decides how much day-to-day bodily upkeep `Elder Wilds` actually wants: enough hunger, fatigue, cold, weather, disease, and wilderness friction to support roleplay and travel texture, or a heavier survival framework that becomes one of the list's central systems. This section owns the baseline survival direction; `modlist-survival-combat.md` still owns later survival-compatibility, difficulty-pressure, and balance interactions.

### Baseline

- **Starfrost - A Survival Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/97536)) — Main baseline. Fits the Simonrim-aligned progression family that the rest of `modlist-expanded-systems.md` already leans toward. → `Expanded Systems - Survival & Needs`

### Alternatives

- **SunHelm Survival and needs** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/39414)) — Practical comparison route if `Starfrost` proves too tightly tuned or too dependent on the Simonrim ecosystem. → `Expanded Systems - Survival & Needs`
- **Last Seed - Survival Needs and Diseases** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/56393)) — Heavier classic route if the list decides survival should become one of its dominant identities. → `Expanded Systems - Survival & Needs`
- **Frostfall - Hypothermia Camping Survival** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/671)) with **Campfire - Complete Camping System** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/667)) — Harsh wilderness route for maximum survival weight. → `Expanded Systems - Survival & Needs`

### Notes

- A heavy survival system can dominate pacing and crowd out other expanded systems.
- A very light survival setup can undershoot the immersive-travel pillar if later world-scale and downtime decisions expect more texture.
- Cold, disease, food, sleep, and camping systems can blur together and make ownership between survival, cooking, roleplay, and religion harder to read.
- If the survival baseline fights the intended third-person travel rhythm, the result may feel dutiful rather than immersive.
- Judge survival primarily on travel texture, downtime rhythm, and world feel rather than on maximum hardship alone.

## Roleplay Upkeep And Hygiene → `Expanded Systems - Survival & Needs`

This subsection owns the lighter day-to-day body-maintenance layer that sits between full survival needs and pure visual flavor. The goal is to add believable downtime rituals and world-living texture without turning hygiene into a second dominant survival framework.

### Baseline

- **Bathing in Skyrim - Renewed** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/135288)) — Leading hygiene-and-downtime route. Fits the living-the-world pillar better than older bathing mods because it is actively maintained, heavily customizable, and technically modernized around SKSE plus Papyrus-extender dependencies. Treat as a roleplay-support system, not as the main survival baseline. → `Expanded Systems - Survival & Needs`

### Alternatives

- **Minimalist route** — Leave hygiene implied through inns, rivers, and roleplay without a dedicated system.

### Notes

- Hygiene can become fussy busywork if configured too aggressively.
- `Bathing in Skyrim - Renewed` touches equipment handling, overlays, follower participation, and optional integrations — needs stricter discipline than a simple immersion add-on. → `Expanded Systems - Survival & Needs`
- Only hard runtime requirements should be treated as mandatory for the baseline install.
- For target Steam runtime `1.6.1170`, the listed `Backported Extended ESL Support` requirement does not apply and should not be installed. → `Expanded Systems - Survival & Needs`

## Death Alternative System → `Expanded Systems - Survival & Needs`

This subsection owns what happens when the player falls in combat: whether death is the only outcome, or whether a modern death-alternative system can create memorable setbacks and emergent storytelling instead of a reload screen. The goal is to add consequence and narrative texture to defeat without making every lost fight a permanent character-ending event.

### Baseline

- **Shadow of Skyrim - Nemesis and Alternative Death System** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/72924)) — Locked death-alternative baseline. Upon defeat, the player respawns at the nearest safe location with debuffs and the enemy who defeated them gains a name, buffs, and persistent world presence. Defeating that nemesis later restores lost progress. Creates personal antagonists from organic gameplay. Fits the "modern mechanics" and "living the world" pillars. → `Expanded Systems - Survival & Needs`

### Alternatives

- **Discipline-first route** — Rely on the vanilla death-and-reload loop.

### Notes

- Death-alternative systems interact with every combat mod in the list. Verify `Shadow of Skyrim` does not conflict with `Valhalla Combat`, `Precision`, `TK Dodge`, or any combat-animation mod from `modlist-animations.md`. → `Expanded Systems - Survival & Needs`
- The nemesis system adds persistent NPCs and effects; verify save file size remains reasonable over long playthroughs with multiple nemeses active. → `Expanded Systems - Survival & Needs`
- Death-alternative mods can create edge cases with scripted-death sequences in quests. Check compatibility with `Alternate Perspective`, `Wyrmstooth`, `The Forgotten City`, and major quest mods from `modlist-world-content.md`. → `Expanded Systems - Survival & Needs`
- Confirm compatibility with Steam `1.6.1170` and the SKSE plugin stack from `modlist-foundations.md`. → `Expanded Systems - Survival & Needs`
