# Survival, Difficulty, and Balance

**MO2 Separator:** `Survival & Combat` → `Survival & Combat - Difficulty & Lethality`, `Survival & Combat - Enemy AI`, `Survival & Combat - Resources & Injuries`

All mods in this section belong to one of the three survival/combat separators as noted per subsection.

---

## Difficulty Framework → separator: `Survival & Combat - Difficulty & Lethality`

Cross-load-order pressure: how quickly the world pushes back, how clearly dungeon progression reads, and whether difficulty comes from better structure instead of blunt stat inflation.

### Baseline
- **Arena - An Encounter Zone Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/33487)) — Cleanest middle ground: more progression pressure than vanilla, still readable and open-world friendly.

### Alternatives
- **Minimal intervention** — Leave encounter zones close to vanilla.
- **Heavy world-structure** — Deleveled loot and stronger world gating (owned by → `Crafting & Economy`).

### Notes
- Encounter-zone structure can overlap with loot/economy decisions if this section pretends it owns world progression.
- If `Arena` is combined with much harsher loot distribution, the result can overshoot from moody into over-gated.

---

## Combat Lethality And Pacing → separator: `Survival & Combat - Difficulty & Lethality`

Tunes encounter harshness and time-to-kill on top of the combat framework from → `Third-Person`, not replacing it.

### Baseline
- **Simply Balanced** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/15541)) — Preferred pacing tool. Final damage/progression tuning without re-owning stamina, injury, or combat behavior.

### Alternatives
- **Blade and Blunt - A Combat Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/34549)) — Deliberate branch — it reaches far beyond simple pacing.
- **Minimalist route** — Keep lethality in the section-04 combat stack.

---

## Enemy AI Improvements → separator: `Survival & Combat - Enemy AI`

### Baseline
- Restrained route — rely on `Arena`, the section-04 combat stack, and targeted creature/faction additions.
- **Less Sniperlike NPCs** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/34199)) — Reduces NPC projectile accuracy. Prefer applying via Wrye Bash (~70.0) to avoid an extra plugin.

### Alternatives
- **Skyrim Revamped - Complete Enemy Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/14598)) — High-commitment. Add only if ordinary testing shows enemy behavior still too flat.

---

## Injury, Stamina, And Resource Pressure → separator: `Survival & Combat - Resources & Injuries`

Attrition that lingers beyond a single swing: drained stamina, enforced downtime, the feeling that repeated bad fights accumulate a cost.

### Baseline
- **Stress and Fear - A Dynamic Sanity System** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/116522)) — Emotional/pacing consequences encouraging rest, food, inns, and quieter recovery. Design is light enough to create stories without shouting over the rest of the list.
- **Light the Way - A Stress and Fear Add-On** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/171532)) — Light-flicker effect during high-stress moments.
- **Bathing in Skyrim - Renewed - Stress and Fear patch** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/141564)) — Cleanliness affects sanity. Required if both mods installed.

### Alternatives
- **Blade and Blunt** — Overlapping alternative for harsher stamina-and-combat pressure.
- **Minimalist route** — Keep resource pressure inside existing combat/survival layers.

---

## Enemy Resistances And Knowledge Checks → separator: `Survival & Combat - Enemy AI`

### Baseline
- **Know Your Enemy 2** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/93258)) — Different creatures call for different tools; inspect system makes knowledge legible. Scope: tactical differentiation, not full enemy-ecosystem ownership.

### Notes
- Resistance systems can feel punishing if the player doesn't have enough ways to adapt mid-run.
- For Steam 1.6.1170, the listed `Backported Extended ESL Support` requirement does not apply.
- If the inspect flow or resistance spread feels too noisy, the concept may be better than the lived experience.

---

## Survival Systems Compatibility → separator: `Survival & Combat - Resources & Injuries`

How difficulty and pressure choices interact with the chosen survival framework.

### Baseline
- Additive route — use pressure layers that reward existing survival behaviors (eating, resting, warming up, returning to town).
- `Stress and Fear` naturally plugs into meals, inns, sleep, and calmer downtime.
- If `Starfrost` remains the baseline, this section should amplify recovery need without forcing menu babysitting.
- **Cold Breath NG** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/174838)) (v1.8, May 2026) — Higher-fidelity fogged breath in cold environments. Mesh/particle replacer, no ESP.
