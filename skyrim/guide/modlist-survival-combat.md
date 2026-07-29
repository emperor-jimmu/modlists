# Survival, Difficulty, and Balance

---

## Difficulty Framework
Cross-load-order pressure: how quickly the world pushes back, how clearly dungeon progression reads, and whether difficulty comes from better structure instead of blunt stat inflation.

### Baseline

- **Arena - An Encounter Zone Overhaul** `[#1, #4]` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/33487)) — Cleanest middle ground: more progression pressure than vanilla, still readable and open-world friendly.

### Alternatives

- **Minimal intervention** `[#3]` — Leave encounter zones close to vanilla.
- **Heavy world-structure** `[#1]` — Deleveled loot and stronger world gating (owned by → `Crafting & Economy`).

### Risks & Compatibility

- Encounter-zone structure can overlap with loot/economy decisions if this section pretends it owns world progression.
- If `Arena` is combined with much harsher loot distribution, the result can overshoot from moody into over-gated.

---

## Combat Lethality And Pacing
Tunes encounter harshness and time-to-kill on top of the combat framework from → `Third-Person`, not replacing it.

### Baseline

- **Simply Balanced** `[#1, #2, #4]` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/15541)) — Preferred pacing tool. Final damage/progression tuning without re-owning stamina, injury, or combat behavior.

### Alternatives

- **Blade and Blunt - A Combat Overhaul** `[#1]` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/34549)) — Deliberate branch — it reaches far beyond simple pacing.
- **Wildcat - Combat of Skyrim** `[#1, #4]` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/1368)) — Injury system, combat AI, and lethality tweaks. Legacy baseline.
- **Minimalist route** `[#3]` — Keep lethality in the section-04 combat stack.

### Candidate

- **Relentless** `[#1]` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/114022)) — Difficulty and pacing mod. Research before adding; evaluate how it interacts with the Section-04 combat stack and Arena encounter zones.

---

## Enemy AI Improvements
### Baseline

- Restrained route — rely on `Arena`, the section-04 combat stack, and targeted creature/faction additions.
- **Less Sniperlike NPCs** `[all]` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/34199)) — Reduces NPC projectile accuracy. Prefer applying via Wrye Bash (~70.0) to avoid an extra plugin.

### Alternatives

- **Skyrim Revamped - Complete Enemy Overhaul** `[#1, #4]` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/14598)) — High-commitment. Add only if ordinary testing shows enemy behavior still too flat.
- **SkyTactics - Dynamic Combat Styles** `[#1, #4]` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/131148)) — SkyPatcher-based NPC combat style variety.
- **NPCs Take Cover - Smarter Anti-Cheese AI** `[all]` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/111890)) — NPCs take cover during combat instead of standing in the open. Lightweight, no new records.

---

## Injury, Stamina, And Resource Pressure
Attrition that lingers beyond a single swing: drained stamina, enforced downtime, the feeling that repeated bad fights accumulate a cost.

### Baseline

- **Stress and Fear - A Dynamic Sanity System** `[#1, #2, #4]` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/116522)) — Emotional/pacing consequences encouraging rest, food, inns, and quieter recovery. Design is light enough to create stories without shouting over the rest of the list.
- **Light the Way - A Stress and Fear Add-On** `[#1, #2, #4]` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/171532)) — Light-flicker effect during high-stress moments.
- **Bathing in Skyrim - Renewed - Stress and Fear patch** `[#1, #2, #4]` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/141564)) — Cleanliness affects sanity. Required if both mods installed.

### Alternatives

- **Blade and Blunt** `[#1]` — Overlapping alternative for harsher stamina-and-combat pressure.
- **Minimalist route** `[#3]` — Keep resource pressure inside existing combat/survival layers.

---

## Enemy Resistances And Knowledge Checks
### Baseline

- **Know Your Enemy 2** `[#1, #4]` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/93258)) — Different creatures call for different tools; inspect system makes knowledge legible. Scope: tactical differentiation, not full enemy-ecosystem ownership.
- **Know Your Enemy 2 — Armors** `[#1, #4]` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/94067)) — Armor-based resistance module. Adds resistances to NPC armor materials.
- **Know Your Enemy 2 — Integration Patch** `[#1, #4]` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/94078)) — Unifies creature + armor inspect spell. Removes duplicate features between modules.
- **The Dragonborn's Bestiary — KYE2 Patch** `[#1, #4]` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/124145)) — Bridges Bestiary and KYE2 systems.

**Install order:** KYE2 → Armors → Integration Patch → Bestiary Patch.

### Risks & Compatibility

- Resistance systems can feel punishing if the player doesn't have enough ways to adapt mid-run.
- For Steam 1.6.1170, the listed `Backported Extended ESL Support` requirement does not apply.
- If the inspect flow or resistance spread feels too noisy, the concept may be better than the lived experience.

---

## Survival Systems Compatibility
How difficulty and pressure choices interact with the chosen survival framework.

### Baseline

- Additive route — use pressure layers that reward existing survival behaviors (eating, resting, warming up, returning to town).
- `Stress and Fear` naturally plugs into meals, inns, sleep, and calmer downtime.
- If `Starfrost` remains the baseline, this section should amplify recovery need without forcing menu babysitting.
- **Cold Breath - NG** `[all]` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/174838)) (v1.8, May 2026) — Higher-fidelity fogged breath in cold environments. Mesh/particle replacer, no ESP.

### Alternatives

- **Navigation Restrictions - NG** `[#1]` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/129086)) — Fast travel and survival restrictions. Adds survival-oriented travel pressure.

### Environmental Hazards
Environmental damage layers that make fire, traps, and dungeon hazards genuinely threatening.

| Mod | Notes |
| --- | --- |
| [Fires Hurt - OIF](https://www.nexusmods.com/skyrimspecialedition/mods/157720) | Fire sources deal damage over time when stood in. Requires OIF framework. Adds meaningful hazard pressure to dungeons and campfires. |
