# Survival, Difficulty, and Balance

**MO2 Separator:** `Survival & Combat` → `Survival & Combat - Difficulty & Lethality`, `Survival & Combat - Enemy AI`, `Survival & Combat - Resources & Injuries`

## Difficulty Framework → `Survival & Combat - Difficulty & Lethality`

This section does not decide the core combat system or baseline survival framework — `modlist-third-person.md` owns combat direction, and `modlist-expanded-systems.md` owns survival baseline. What this section owns is cross-load-order pressure: how quickly the world starts pushing back, how clearly dungeon progression reads, and whether difficulty comes from better structure instead of blunt stat inflation.

### Baseline

- **Arena - An Encounter Zone Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/33487)) — Cleanest way to make Skyrim feel harsher and more intentional without forcing a full scarcity or deleveling identity. Community signal consistently treats it as a strong middle ground: more progression pressure than vanilla, still readable and open-world friendly. → `Survival & Combat - Difficulty & Lethality`

### Alternatives

- Minimal intervention route — leave encounter zones close to vanilla and let later tuning come from enemy behavior, attrition, and player-side restraint.
- Heavy world-structure route — if the project later wants deleveled loot and stronger world gating, let that decision stay in `modlist-expanded-systems.md`'s economy-and-loot ownership instead of duplicating it here. → `Survival & Combat - Difficulty & Lethality`

### Notes

- Encounter-zone structure can quietly overlap with loot and economy decisions if this section starts pretending it owns world progression by itself.
- If `Arena` is combined later with a much harsher loot-distribution philosophy, the result can overshoot from moody and dangerous into overly gated. → `Survival & Combat - Difficulty & Lethality`
- If the world remains too permissive even with `Arena`, the problem is likely elsewhere in the stack rather than proof that this layer failed. → `Survival & Combat - Difficulty & Lethality`

## Combat Lethality And Pacing → `Survival & Combat - Difficulty & Lethality`

This subsection tunes encounter harshness and time-to-kill on top of the combat framework chosen in `modlist-third-person.md` — not replacing that framework with a second major combat overhaul. The goal is shorter, tenser fights and less stat-bloat without stepping on the `Valhalla Combat` and broader third-person ownership already recorded earlier in the plan. → `Survival & Combat - Difficulty & Lethality`

### Baseline

- **Simply Balanced** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/15541)) — Preferred pacing tool. Solves final damage and progression tuning without re-owning stamina rules, injury logic, or combat behavior that already overlap heavily with `Valhalla Combat` and the section-04 stack. → `Survival & Combat - Difficulty & Lethality`

### Alternatives

- **Blade and Blunt - A Combat Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/34549)) — Strong comparison route if testing shows the list still needs a more authored stamina-and-pressure model, but treat as a deliberate branch because it reaches far beyond simple pacing. → `Survival & Combat - Difficulty & Lethality`
- Minimalist route — keep lethality mostly in the hands of the section-04 combat stack and only revisit this subsection if real testing shows that fights still drag.

### Notes

- `Simply Balanced` is powerful precisely because it is broad; careless tuning can hide deeper problems in enemy design or progression structure. → `Survival & Combat - Difficulty & Lethality`
- `Blade and Blunt` is well regarded, but it is large enough to blur section ownership with both combat systems and survival-side stamina pressure. → `Survival & Combat - Difficulty & Lethality`
- If lethality is pushed too far, the list can stop feeling tense and start feeling brittle, especially once archery, magic, and follower support join the equation.

## Enemy AI Improvements → `Survival & Combat - Enemy AI`

This subsection decides whether `Elder Wilds` wants a broad, authored enemy-behavior overhaul or whether encounter pressure should mostly come from structure, roster composition, and existing combat choices. The goal is more dangerous enemies, not random complexity for its own sake. → `Survival & Combat - Enemy AI`

### Baseline

- Restrained route — rely on `Arena`, the section-04 combat stack, and targeted creature or faction additions elsewhere instead of adopting one giant enemy overhaul.
- **Less Sniperlike NPCs** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/34199)) — Reduces NPC projectile accuracy for bows and crossbows by adjusting `fCombatAimProjectileRandomOffset`. Prefer applying this tweak via Wrye Bash (set to ~70.0) to avoid adding an extra plugin. → `Survival & Combat - Enemy AI`

### Alternatives

- **Skyrim Revamped - Complete Enemy Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/14598)) — High-commitment comparison if the list later needs enemies to feel much more specialized, aggressive, and dangerous across the board, but should stay a branch rather than an automatic baseline. Strong reputation and real encounter impact, but authored enough that it changes the feel of the whole game rather than simply sharpening existing pressure. Add only if ordinary testing shows that better progression, tighter pacing, and the current combat stack still leave enemy behavior too flat. → `Survival & Combat - Enemy AI`
- Future targeted route — prefer smaller faction-specific overhauls later if broad enemy redesign proves too blunt for the final list tone.

### Notes

- A broad enemy overhaul makes the whole list harder to reason about because every faction starts changing at once.
- SRCEO is compatible in the broad sense with encounter-zone overhauls, but it still meaningfully changes combat expectations and should be treated as a major identity choice.
- If this subsection solves flat encounters by making everything more dangerous, subtle differences between dungeon types may actually become less readable.

## Injury, Stamina, And Resource Pressure → `Survival & Combat - Resources & Injuries`

This subsection covers attrition that lingers beyond a single swing: drained stamina, shaken nerves, enforced downtime, and the feeling that repeated bad fights accumulate a cost. It should reinforce travel rhythm and danger, not duplicate the entire survival framework from `modlist-expanded-systems.md` or replace the combat rules from `modlist-third-person.md`. → `Survival & Combat - Resources & Injuries`

### Baseline

- **Stress and Fear - A Dynamic Sanity System** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/116522)) — Main comparison for this subsection. Fits the section's actual job better than a second combat framework: getting battered in a ruin or barely surviving a predator attack should have emotional and pacing consequences that encourage rest, food, inns, and quieter recovery loops. Reddit signal is strong, and its design is intentionally light enough to create stories and pauses without constantly shouting over the rest of the list. → `Survival & Combat - Resources & Injuries`

### Alternatives

- **Blade and Blunt - A Combat Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/34549)) — Overlapping alternative if the project decides it wants harsher stamina-and-combat pressure as a central identity, not as a casual add-on. → `Survival & Combat - Resources & Injuries`
- Minimalist route — keep resource pressure mostly inside the existing combat and survival layers unless testing shows downtime never matters.

### Notes

- Too much attrition can make the wilderness feel exhausting rather than haunting or immersive.
- `Stress and Fear` is lighter than a full wound system, but it is still another MCM-driven rules layer that needs clear boundaries. → `Survival & Combat - Resources & Injuries`
- If both combat and survival are already demanding, this subsection can become the point where the whole list tips from moody into overmanaged.

## Enemy Resistances And Knowledge Checks → `Survival & Combat - Enemy AI`

This subsection owns whether enemies should ask the player to identify weaknesses and vary damage types, rather than only hitting harder or soaking more damage. The goal is more tactical combat texture and creature differentiation without accidentally committing the whole list to a giant enemy-overhaul stack.

### Baseline

- **Know Your Enemy 2** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/93258)) — Leading resistance-and-knowledge route. Changes how the player reads enemies: different creatures call for different tools, and the inspect system makes that knowledge legible instead of purely hidden trivia. Keep it scoped to tactical differentiation, not full enemy-ecosystem ownership — `modlist-npcs.md` still owns creature rosters and faction variety. → `Survival & Combat - Enemy AI`

### Alternatives

- Minimalist route — leave resistances close to vanilla and get encounter variety from roster changes, pacing, and player-side restraint.

### Notes

- Resistance systems can feel punishing if the player does not have enough practical ways to adapt mid-run.
- `Know Your Enemy 2` overlaps with large alchemy, poison, and combat-balance overhauls more than a casual install suggests; patch expectations must stay visible. → `Survival & Combat - Enemy AI`
- The mod page still mentions `Backported Extended ESL Support` for older runtimes, but for the target Steam runtime `1.6.1170` it should not be installed. → `Survival & Combat - Enemy AI`
- If the inspect flow, MCM tuning, or resistance spread feels too noisy in ordinary play, the concept may be better than the lived experience.

## Survival Systems Compatibility → `Survival & Combat - Resources & Injuries`

`modlist-expanded-systems.md` already owns which survival framework wins. This subsection owns how later difficulty and pressure choices interact with that framework once the rest of the load order is in place. The goal is to make survival, combat pressure, and downtime feel mutually reinforcing rather than like separate punishment meters. → `Survival & Combat - Resources & Injuries`

### Baseline

- Additive route — use pressure layers that reward existing survival behaviors such as eating, resting, warming up, and returning to town.
- `Stress and Fear` naturally plugs into meals, inns, sleep, and calmer downtime instead of trying to become a second survival overhaul. → `Survival & Combat - Resources & Injuries`
- If `Starfrost` remains the baseline from `modlist-expanded-systems.md`, section 11 should amplify the need to recover without forcing constant menu babysitting or a pile of overlapping bodily debuffs. → `Survival & Combat - Resources & Injuries`
- **Cold Breath NG** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/174838)) (v1.8, May 2026) — Replaces the vanilla breath-vapor effect with higher-fidelity, more visible fogged breath in cold environments. Mesh and particle replacer, no ESP, compatible with all weather and survival frameworks. Adds atmosphere to cold-region and survival travel without script overhead. → `Survival & Combat - Resources & Injuries`

### Alternatives

- Competitive route — stack multiple heavy attrition systems and accept that survival becomes one of the list's dominant identities.
- Minimal route — keep survival isolated from the difficulty layer and let it remain mostly travel flavor.

### Notes

- Survival compatibility becomes incoherent quickly if each layer assumes it should be the main source of exhaustion, injury, hunger, or downtime.
- A system that feels immersive in isolation can become oppressive once cold, sleep, food, combat recovery, and defeat penalties all stack together.
- If this subsection is too light, the chosen survival framework may feel disconnected from the actual danger layer.

## Candidate TODO Additions

### Survival & Needs → `Survival & Combat - Resources & Injuries`

- `Dirt and Blood` — visual dirt/blood accumulation on character (also cross-referenced in `Expanded Systems - Survival & Needs`; primary ownership should be in whichever section the hygiene/survival system lands) → `Survival & Combat - Resources & Injuries`
