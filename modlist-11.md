# Survival, Difficulty, and Balance

## Difficulty Framework

### Core Idea

- This section is not where `Elder Wilds` decides its core combat system or baseline survival framework. `modlist-04.md` already owns combat direction, and `modlist-05.md` already owns survival baseline.
- What this section does own is cross-load-order pressure: how quickly the world starts pushing back, how clearly dungeon progression reads, and whether difficulty comes from better structure instead of blunt stat inflation.

### Options

- Structured progression route: `Arena - An Encounter Zone Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/33487>
- Minimal intervention route: leave encounter zones close to vanilla and let later tuning come from enemy behavior, attrition, and player-side restraint.
- Heavy world-structure route: if the project later wants deleveled loot and stronger world gating, let that decision stay in `modlist-05.md`'s economy-and-loot ownership instead of duplicating it here.

### Recommendation

- Start with `Arena` as the main difficulty framework for this section.
- It is the cleanest way to make Skyrim feel harsher and more intentional without forcing a full scarcity or deleveling identity onto the whole list.
- Community signal consistently treats it as a strong middle ground: more progression pressure than vanilla, but still readable and open-world friendly.
- Judge it on whether early ruins, bandit camps, and faction dungeons communicate danger more clearly before any heavier enemy or attrition layers are added.

### Risks & Compatibility

- Encounter-zone structure can quietly overlap with loot and economy decisions if this section starts pretending it owns world progression by itself.
- If `Arena` is combined later with a much harsher loot-distribution philosophy, the result can overshoot from moody and dangerous into overly gated.
- If the world remains too permissive even with `Arena`, the problem is likely elsewhere in the stack rather than proof that this layer failed.

### Acceptance Criteria

- Early and midgame exploration communicates threat more clearly than vanilla without turning the map into a rigid sequence.
- Dungeon choice feels more deliberate, but wandering still feels like Skyrim rather than a hard-locked progression ladder.
- Difficulty comes more from readable world structure than from enemies becoming damage sponges.

## Combat Lethality And Pacing

### Core Idea

- This subsection is about tuning encounter harshness and time-to-kill on top of the combat framework chosen in `modlist-04.md`, not replacing that framework with a second major combat overhaul.
- The goal is shorter, tenser fights and less stat-bloat without stepping on the `Valhalla Combat` and broader third-person ownership already recorded earlier in the plan.

### Options

- Lightweight tuning route: `Simply Balanced` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/15541>
- Full combat-package route: `Blade and Blunt - A Combat Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/34549>
- Minimalist route: keep lethality mostly in the hands of the section-04 combat stack and only revisit this subsection if real testing shows that fights still drag.

### Recommendation

- Use `Simply Balanced` as the preferred pacing tool here.
- It solves the right problem for this section: final damage and progression tuning without re-owning stamina rules, injury logic, or combat behavior that already overlap heavily with `Valhalla Combat` and the section-04 stack.
- Keep `Blade and Blunt` as the strong comparison route if testing shows the list still needs a more authored stamina-and-pressure model, but treat that as a deliberate branch because it reaches far beyond simple pacing.
- Test ordinary fights first: wolves, roadside bandits, two-on-one melee skirmishes, and low-level draugr rooms. If they already feel sharp enough, avoid adding more systems just to make the file look complete.

### Risks & Compatibility

- `Simply Balanced` is powerful precisely because it is broad; careless tuning can hide deeper problems in enemy design or progression structure.
- `Blade and Blunt` is well regarded, but it is large enough to blur section ownership with both combat systems and survival-side stamina pressure.
- If lethality is pushed too far, the list can stop feeling tense and start feeling brittle, especially once archery, magic, and follower support join the equation.

### Acceptance Criteria

- Fights end faster and read more cleanly than vanilla without becoming one-shot roulette.
- The chosen pacing layer complements the section-04 combat framework instead of replacing it by stealth.
- Basic encounter tuning remains understandable and adjustable after the rest of the gameplay stack is installed.

## Enemy AI Improvements

### Core Idea

- This subsection decides whether `Elder Wilds` wants a broad, authored enemy-behavior overhaul or whether encounter pressure should mostly come from structure, roster composition, and existing combat choices.
- The goal is more dangerous enemies, not random complexity for its own sake.

### Options

- Restrained route: rely on `Arena`, the section-04 combat stack, and targeted creature or faction additions elsewhere instead of adopting one giant enemy overhaul.
- Heavy authored route: `Skyrim Revamped - Complete Enemy Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/14598>
- Future targeted route: prefer smaller faction-specific overhauls later if broad enemy redesign proves too blunt for the final list tone.
- Ranged-accuracy tuning: `Less Sniperlike NPCs` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/34199> — reduces NPC projectile accuracy for bows and crossbows by adjusting the `fCombatAimProjectileRandomOffset` game setting. Prefer applying this tweak via Wrye Bash (set `fCombatAimProjectileRandomOffset` to ~70.0) to avoid adding an extra plugin; document the mod as the alternative if the Wrye Bash approach is impractical.

### Recommendation

- Keep the restrained route as the default for now.
- `Skyrim Revamped - Complete Enemy Overhaul` is the right high-commitment comparison if the list later needs enemies to feel much more specialized, aggressive, and dangerous across the board, but it should stay a branch rather than an automatic baseline.
- This mod has strong reputation and real encounter impact, but it is authored enough that it can change the feel of the whole game rather than simply sharpening existing pressure.
- Add it only if ordinary testing shows that better progression, tighter pacing, and the current combat stack still leave enemy behavior too flat.

### Risks & Compatibility

- A broad enemy overhaul can make the whole list harder to reason about because every faction starts changing at once.
- SRCEO is compatible in the broad sense with encounter-zone overhauls, but it still meaningfully changes combat expectations and should be treated as a major identity choice.
- If this subsection solves flat encounters by making everything more dangerous, subtle differences between dungeon types may actually become less readable.

### Acceptance Criteria

- Enemy groups feel more dangerous because of behavior and role variety, not just because numbers went up.
- Broad enemy-overhaul adoption only happens if lighter structure-and-pacing changes clearly fail.
- If `SRCEO` is used, the result still feels like `Elder Wilds` rather than a separate combat rebalance project.

## Injury, Stamina, And Resource Pressure

### Core Idea

- This subsection is about attrition that lingers beyond a single swing: drained stamina, shaken nerves, enforced downtime, and the feeling that repeated bad fights accumulate a cost.
- It should reinforce travel rhythm and danger, not duplicate the entire survival framework from `modlist-05.md` or replace the combat rules from `modlist-04.md`.

### Options

- Narrative-attrition route: `Stress and Fear - A Dynamic Sanity System` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/116522>
- Combat-rules attrition route: `Blade and Blunt - A Combat Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/34549>
- Minimalist route: keep resource pressure mostly inside the existing combat and survival layers unless testing shows downtime never matters.

### Recommendation

- Start with `Stress and Fear` as the main comparison for this subsection.
- It fits the section's actual job better than a second combat framework does: getting battered in a ruin or barely surviving a predator attack should have emotional and pacing consequences that encourage rest, food, inns, and quieter recovery loops.
- Reddit signal around the mod is strong, and its design is intentionally light enough to create stories and pauses without constantly shouting over the rest of the list.
- Keep `Blade and Blunt` here only as the overlapping alternative if the project decides it wants harsher stamina-and-combat pressure as a central identity, not as a casual add-on.

### Risks & Compatibility

- Too much attrition can make the wilderness feel exhausting rather than haunting or immersive.
- `Stress and Fear` is lighter than a full wound system, but it is still another MCM-driven rules layer that needs clear boundaries.
- If both combat and survival are already demanding, this subsection can become the point where the whole list tips from moody into overmanaged.

### Acceptance Criteria

- Bad fights create real recovery pressure without turning every expedition into paperwork.
- Inns, meals, sleep, and breaks matter more after hard encounters than they do in vanilla.
- The chosen attrition layer adds tension and rhythm rather than constant annoyance.

## Enemy Resistances And Knowledge Checks

### Core Idea

- This subsection owns whether enemies should ask the player to identify weaknesses and vary damage types, rather than only hitting harder or soaking more damage.
- The goal is more tactical combat texture and creature differentiation without accidentally committing the whole list to a giant enemy-overhaul stack.

### Options

- Knowledge-and-resistance route: `Know Your Enemy 2` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/93258>
- Minimalist route: leave resistances close to vanilla and get encounter variety from roster changes, pacing, and player-side restraint.

### Recommendation

- Add `Know Your Enemy 2` as the leading resistance-and-knowledge route for this section.
- It is a better fit than a generic enemy-stat inflation layer because it changes how the player reads enemies: different creatures call for different tools, and the inspect system makes that knowledge legible instead of purely hidden trivia.
- Keep it scoped to tactical differentiation, not to full enemy-ecosystem ownership. `modlist-09.md` still owns creature rosters and faction variety; this subsection is about how fights are solved once those enemies exist.
- If adopted, judge it on whether it rewards preparation and damage-type diversity without turning ordinary combat into checklist homework.

### Risks & Compatibility

- Resistance systems can feel punishing if the player does not have enough practical ways to adapt mid-run.
- `Know Your Enemy 2` overlaps with large alchemy, poison, and combat-balance overhauls more than a casual install suggests; patch expectations must stay visible.
- The mod page still mentions `Backported Extended ESL Support` for older runtimes, but for the target Steam runtime `1.6.1170` it should not be installed.
- If the inspect flow, MCM tuning, or resistance spread feels too noisy in ordinary play, the concept may be better than the lived experience.

### Acceptance Criteria

- Enemy differentiation comes from readable strengths and weaknesses, not just broader stat pressure.
- The player can learn or inspect enemy traits without needing outside notes.
- The system adds tactical variety while remaining compatible with the rest of the chosen combat and progression stack.

## Survival Systems Compatibility

### Core Idea

- `modlist-05.md` already owns which survival framework wins. This subsection owns how later difficulty and pressure choices interact with that framework once the rest of the load order is in place.
- The goal is to make survival, combat pressure, and downtime feel mutually reinforcing rather than like separate punishment meters.

### Options

- Additive route: use pressure layers that reward existing survival behaviors such as eating, resting, warming up, and returning to town.
- Competitive route: stack multiple heavy attrition systems and accept that survival becomes one of the list's dominant identities.
- Minimal route: keep survival isolated from the difficulty layer and let it remain mostly travel flavor.

### Recommendation

- Use the additive route.
- This is another reason `Stress and Fear` currently looks stronger here than a heavier injury system: it naturally plugs into meals, inns, sleep, and calmer downtime instead of trying to become a second survival overhaul.
- If `Starfrost` remains the baseline from `modlist-05.md`, section 11 should amplify the need to recover without forcing constant menu babysitting or a pile of overlapping bodily debuffs.
- Judge compatibility on travel loops: long wilderness walks, one ruin dive, return to settlement, prepare again. If those loops feel richer, this subsection is doing its job.

### Risks & Compatibility

- Survival compatibility becomes incoherent quickly if each layer assumes it should be the main source of exhaustion, injury, hunger, or downtime.
- A system that feels immersive in isolation can become oppressive once cold, sleep, food, combat recovery, and defeat penalties all stack together.
- If this subsection is too light, the chosen survival framework may feel disconnected from the actual danger layer.

### Acceptance Criteria

- Survival and pressure systems point the player toward believable recovery habits instead of toward constant micromanagement.
- The section-05 survival baseline still feels like the primary survival system rather than one participant in a pileup.
- Town visits, camps, inns, and meal prep matter more because of actual play rhythm, not because the list added arbitrary chores.

