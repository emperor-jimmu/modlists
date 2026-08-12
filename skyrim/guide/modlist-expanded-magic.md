# Magic & Perks

---

## Perk Overhaul Compatibility
How much rules density and specialization pressure the list wants.

| Mod                                                                                      | Type        | Dial       | Notes                                                               |
|------------------------------------------------------------------------------------------|-------------|------------|---------------------------------------------------------------------|
| [Adamant — A Perk Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/30191)   | Baseline    | #1, #2, #4 | **Locked.** Simonrim progression family. |

---

## Magic System Expansion
How broad, readable, and build-defining magic should feel.

| Mod                                                                                        | Type        | Dial           | Notes                                                                           |
|--------------------------------------------------------------------------------------------|-------------|----------------|---------------------------------------------------------------------------------|
| [Mysticism — A Magic Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/27839)  | Baseline    | #1, #2, #4     | **Locked.** Primary magic overhaul. |
| [Triumvirate — Mage Archetypes](https://www.nexusmods.com/skyrimspecialedition/mods/39170) | Baseline | #1, #2, #4     | **Locked.** Identity-driven archetype spells (Cleric, Druid, Shadow Mage, Shaman, Warlock). Complements Mysticism. |
| [Strange Runes](https://www.nexusmods.com/skyrimspecialedition/mods/19438)                 | Alternative | #1, #2, #3, #4 | Floating Nordic runes during spell charging. Visual only, no records.           |
| [Elemental Mastery Magic](https://www.nexusmods.com/skyrimspecialedition/mods/139953)      | Alternative | #1, #4         | Elemental specialization and tiered mastery bonuses.                            |
| [Immersive Illusion Spells](https://www.nexusmods.com/skyrimspecialedition/mods/142357)    | Alternative | #1, #4         | New illusion types beyond fear/calm/frenzy.                                     |
| [360 Ward](https://www.nexusmods.com/skyrimspecialedition/mods/156225)                     | Alternative | all            | Wards block from any direction. Third-person improvement.                       |
| [Revealing Rune](https://www.nexusmods.com/skyrimspecialedition/mods/120935)               | Candidate   | all            | Makes rune traps visible.               |
| [Cancel Spells - Proper Spell Sheathing](https://www.nexusmods.com/skyrimspecialedition/mods/181192) | Add-on      | all            | Cancel a cast to recover magicka instead of lowering hands. QoL, no records.  |

---

## Spell Learning Mechanic
Replaces the vanilla "eat-tome-learn" system with time-based study, supporting the slow leveling and immersive pacing pillars.

| Mod                                                                                                            | Type     | Dial   | Notes                                                           |
|----------------------------------------------------------------------------------------------------------------|----------|--------|-----------------------------------------------------------------|
| [Immersive Spell Learning - DESTified](https://www.nexusmods.com/skyrimspecialedition/mods/45514)              | Baseline | #1, #2 | Time-based spell study via DEST framework. One spell at a time. |
| [Immersive Spell Learning](https://www.nexusmods.com/skyrimspecialedition/mods/33375)                          | Parent   | #1, #2 | Original mod this is based on. DESTified version preferred.     |

### Risks & Compatibility

- Works with any spell mod that uses standard spell tomes. No patches needed.
- Compatible with Survival Mode and Starfrost (studying induces Fatigue).
- Has MCM for configuration. Only one spell can be studied at a time; switching loses progress.

---

## Stealth And Detection
How Skyrim's detection system should be recalibrated for modern stealth mechanics without replacing the existing perk, magic, and combat layers.

| Mod                                                                                       | Type        | Dial   | Notes                                                    |
|-------------------------------------------------------------------------------------------|-------------|--------|----------------------------------------------------------|
| [Realistic AI Detection (RAID)](https://www.nexusmods.com/skyrimspecialedition/mods/2345) | Baseline    | #1, #4 | Script-free detection recalibration. |
| [Hide in Bushes](https://www.nexusmods.com/skyrimspecialedition/mods/170114)             | Add-on      | #1, #4 | Bush cover reduces detection. No scripts, third-person friendly. |
| [Take a Peek](https://www.nexusmods.com/skyrimspecialedition/mods/66908)                | Add-on      | #1, #4 | Peek through keyholes before opening doors. JaySerpa. Hard dependency: `Dynamic Activation Key` (currently an Alternative in → `World Content`). DAR/OAR optional for the third-person peek animation; SkyUI (baseline). Activation via hold-sneak (gamepad-friendly) or the Shift+E contextual prompt. No detection-record edits, so RAID interplay is nil. |
| [Throwing Things Makes Noise - OIF](https://www.nexusmods.com/skyrimspecialedition/mods/155761) | Add-on | #1, #4 | Thrown objects make noise and attract enemies. Requires OIF. Verify sound-triggered detection against RAID. |
| Discipline-first route                                                                    | Alternative | #2, #3 | Rely on perk overhaul + Foundations bugfix mods.         |
| Deferred high-commitment branch                                                           | Alternative | all    | Add stealth toolkit only if playtesting requires it.     |

### Risks & Compatibility

- Detection changes can affect follower behavior; verify follower behavior under RAID with the chosen follower framework.
- `RAID` last updated April 2022 — script-free, low breakage risk. Verify detection feels right against the chosen perk overhaul.
