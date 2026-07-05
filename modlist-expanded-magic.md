# Magic & Perks

**MO2 Separator:** `Expanded Systems` → `Expanded Systems - Magic & Perks`

Part of the [`Expanded Systems`](modlist-expanded-systems.md) section. See also: `UI - Framework & HUD` (Character & Progression), `UI - Map, Dialogue, Menus` (Survival & Needs), `06d` (Crafting & Economy), `06e` (Followers & Reputation).

## Perk Overhaul Compatibility → `Expanded Systems - Magic & Perks`

This subsection chooses the perk philosophy that the rest of `Expanded Systems` must live with. The goal is to decide how much rules density and specialization pressure the list actually wants once race and standing-stone choices are already in place.

### Baseline

- **Adamant - A Perk Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/30191)) — Main baseline. Balanced modern route. → `Expanded Systems - Magic & Perks`

### Alternatives

- **Vokrii - Minimalistic Perks of Skyrim** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/26176)) — Restrained comparison if `Adamant` still feels more system-forward than the final tone wants. → `Expanded Systems - Magic & Perks`
- **Ordinator - Perks of Skyrim** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/1137)) — High-complexity branch if the list decides perks should become one of the dominant sources of build identity. → `Expanded Systems - Magic & Perks`

### Notes

- A dense perk framework can dominate the entire character-building experience and make later systems feel secondary.
- A restrained perk framework can make the overall list feel under-committed if other expanded systems also land on the conservative side.
- Mixing perk philosophy poorly with race, stone, and later magic choices can create a stack that is busy but not coherent.
- Compare perk candidates against the already-preferred race-and-stone direction so the full progression stack stays coherent.

## Magic System Expansion → `Expanded Systems - Magic & Perks`

This subsection chooses the spell-system philosophy for `Elder Wilds`: how broad, readable, and build-defining magic should feel once the race, standing-stone, and perk baseline are in place. The goal is to pick one clear magic direction that complements the progression stack instead of overwhelming it.

### Baseline

- **Mysticism - A Magic Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/27839)) — Main baseline. Balanced modern route. → `Expanded Systems - Magic & Perks`
- **Triumvirate - Mage Archetypes** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/39170)) — Locked companion spell pack. Adds identity-driven archetype spells (Cleric, Druid, Shadow Mage, Shaman, Warlock) by EnaiSiaion that complement whichever primary overhaul is chosen without overriding its core spell list. Each archetype is self-contained and can be engaged with or ignored. → `Expanded Systems - Magic & Perks`
- **Strange Runes** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/19438)) — Locked magic-visual companion. Adds floating Nordic runes during spell charging with zero gameplay or balance impact — a visual feedback upgrade that makes spellcasting feel more modern and reads clearly in third-person. Compatible with all primary spell overhauls; no record conflicts. → `Expanded Systems - Magic & Perks`

### Alternatives

- **Odin - Skyrim Magic Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/46000)) — Moderate expansion route. Comparison if `Mysticism` feels too restrained for the final identity. → `Expanded Systems - Magic & Perks`
- **Apocalypse - Magic of Skyrim** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/1090)) — High-expression route for maximum spell variety and magical experimentation. → `Expanded Systems - Magic & Perks`
- **Lost Grimoire SSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/4455)) — Standalone spell-pack adding 115+ lore-friendly spells across all schools with matching scrolls and staves. Compatible with any primary overhaul. → `Expanded Systems - Magic & Perks`
- **Elemental Mastery Magic** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/139953)) — Spell-school specialization pack adding elemental specialization mechanics and tiered mastery bonuses for Destruction and Alteration mages. → `Expanded Systems - Magic & Perks`
- **Immersive Illusion Spells** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/142357)) — Illusion expansion adding new illusion-spell types and mechanics beyond the basic fear/calm/frenzy trinity. → `Expanded Systems - Magic & Perks`
- **360 Ward** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/156225)) — Ward-mechanics expansion allowing wards to block attacks from any direction. Significant third-person gameplay improvement — wards become usable while moving and turning. → `Expanded Systems - Magic & Perks`
- **Sanguine Symphony** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/148388)) — Blood-magic spell pack adding spells that cost Health instead of Magicka, unlocking a separate magic ecosystem for hybrid builds. Compatible with all primary spell overhauls. → `Expanded Systems - Magic & Perks`

### Notes

- A very large spell ecosystem can dominate progression and make race, perk, and religion choices feel secondary.
- Layering multiple spell packages too casually turns this subsection into a compatibility problem instead of a clean design decision.
- A restrained spell overhaul can undershoot the `Expanded Systems` pillar if too many adjacent systems also land on conservative choices. → `Expanded Systems - Magic & Perks`
- Mixing a high-volume magic package with a more restrained perk philosophy can make the overall progression stack feel internally inconsistent.
- `Mysticism` and `Odin` should be treated as competing primary overhauls, not a default combined baseline; if the list later explores combined setups, that should be a deliberate compatibility project. → `Expanded Systems - Magic & Perks`
- Choose one primary magic overhaul first and only then decide whether extra spell volume is actually needed.

## Stealth And Detection → `Expanded Systems - Magic & Perks`

This subsection owns the modern-mechanics pillar's stealth side: how Skyrim's detection system should be recalibrated, and whether the player should gain better stealth tools without replacing the existing perk, magic, and combat layers. Detection is a moment-to-moment mechanical layer; reputation and guard pressure are social and world-reaction layers. It stays separate from NPC AI overhauls (in `modlist-npcs.md`) and from the targeted bugfix bucket in `modlist-foundations.md`.

### Baseline

- **Realistic AI Detection (RAID)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/2345)) — Detection-recalibration baseline. Script-free (23.8K endorsements), recalibrates the detection formula (line of sight, lighting, distance, sneaking skill, race) without rewriting the AI itself. The cleanest way to make Skyrim's stealth feel modern without dragging in a stealth overhaul that would fight the perk and combat layers. → `Expanded Systems - Magic & Perks`

### Alternatives

- **Discipline-first route** — Rely on the perk overhaul and targeted bugfix mods from `modlist-foundations.md` for detection edge cases. Valid when the project wants a lighter systems footprint. → `Expanded Systems - Magic & Perks`
- **Deferred high-commitment branch** — Add a full stealth-toolkit overhaul only if real playtesting proves detection still feels too forgiving or too punishing after the perk and bugfix layers are in place.

### Notes

- Detection recalibration can make some encounter zones feel too easy or too hard if it interacts with encounter-zone or difficulty mods from `modlist-survival-combat.md`; verify across hold capitals, wilderness, and dungeon encounters. → `Expanded Systems - Magic & Perks`
- A detection overhaul can make stealth-only play too dominant if it stacks with a perk overhaul that already buffs sneak; check the perk mod's sneak tree for conflicts.
- Detection changes can affect follower behavior; verify follower behavior under RAID if the chosen follower framework exposes detection settings.
- `RAID` last updated April 2022 — script-free means less breakage risk, but verify detection feels right against the chosen perk overhaul. → `Expanded Systems - Magic & Perks`
