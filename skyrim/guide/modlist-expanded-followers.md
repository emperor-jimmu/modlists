# Followers & Reputation

---

## Crime, Reputation, And Social Systems
How much the world should notice what the player does socially — reputation, crime tools, city suspicion, and guard behavior.

| Mod                                                                                 | Type        | Dial           | Notes                                                                  |
|-------------------------------------------------------------------------------------|-------------|----------------|------------------------------------------------------------------------|
| [Skyrim Reputation](https://www.nexusmods.com/skyrimspecialedition/mods/22374)      | Baseline    | #1, #2, #3, #4 | Main reputation baseline.                                              |
| [The Choice is Yours](https://www.nexusmods.com/skyrimspecialedition/mods/3850)     | Baseline    | #1, #2, #3, #4 | Quest auto-start control for content-heavy runs.                       |
| [To Your Face SE](https://www.nexusmods.com/skyrimspecialedition/mods/24720)        | Baseline    | #1, #2, #3, #4 | Social polish for city/tavern greetings.                               |
| [Steal off Scoundrels](https://www.nexusmods.com/skyrimspecialedition/mods/171870)  | Baseline    | #1, #2, #3, #4 | SKSE plugin — pickpocketing criminals not flagged as stealing. No ESP. |
| [Suspicious City Guards](https://www.nexusmods.com/skyrimspecialedition/mods/38762) | Alternative | all            | Urban tension around suspicious behavior.                              |
| [Book Of Shadows](https://www.nexusmods.com/skyrimspecialedition/mods/76086)        | Alternative | all            | High-expression crime and stealth pillar.                              |

### Risks & Compatibility

- Targeted fixes like `Simple Offence Suppression` belong in → `Foundations` (Targeted Bugfix Mods), not as the social-system answer.

---

## Followers And Companion Systems
How companion management should function at the systems level.

| Mod                                                                                             | Type        | Dial           | Notes                           |
|-------------------------------------------------------------------------------------------------|-------------|----------------|---------------------------------|
| [Nether's Follower Framework](https://www.nexusmods.com/skyrimspecialedition/mods/55653)        | Baseline    | #1, #2, #3, #4 | Modern flexible route.          |
| [EFF — Extensible Follower Framework](https://www.nexusmods.com/skyrimspecialedition/mods/7003) | Alternative | all            | Simpler established management. |
| [Amazing Follower Tweaks SE](https://www.nexusmods.com/skyrimspecialedition/mods/6656)          | Alternative | all            | Heavy-management branch.        |

### Risks & Compatibility

- Generic frameworks can conflict with custom companions better left outside them.
- This subsection owns party-management philosophy, not named companion selection (→ `NPCs`).

---

## Romance, Marriage, And Companionship
The SFW romance and marriage layer: expanded marriage mechanics, modern dialogue with spouses and romance interests, and opt-in quest-driven romance arcs. Baseline is fade-to-black, not explicit content. Custom named followers belong in → `NPCs`.

| Mod                                                                                              | Type        | Dial           | Notes                                                                         |
|--------------------------------------------------------------------------------------------------|-------------|----------------|-------------------------------------------------------------------------------|
| [Relationship Dialogue Overhaul — RDO](https://www.nexusmods.com/skyrimspecialedition/mods/1187) | Baseline    | #1, #2, #3, #4 | 5,000+ voiced lines for NPCs/followers/spouses. Fully SFW. |
| [Amorous Adventures](https://www.nexusmods.com/skyrimspecialedition/mods/7305) (clean variant)   | Baseline    | #1, #2, #3, #4 | Opt-in romance quests, fade-to-black. **Lock only clean build.**              |
| [Marriage Mod — To Have And To Hold](https://www.nexusmods.com/skyrimspecialedition/mods/8589)   | Baseline    | #1, #2, #3, #4 | Up to 11 spouses, divorce, enhanced wedding, dynamic events.                  |
| [Serana Dialogue Add-On](https://www.nexusmods.com/skyrimspecialedition/mods/32161)              | Baseline    | #1, #2, #3, #4 | 7,000+ voiced lines, new story arcs, romance.               |
| [I'm Glad You're Here](https://www.nexusmods.com/skyrimspecialedition/mods/41856)              | Add-on      | all            | Fully-voiced follower/spouse/adopted-kids appreciation via dialogue + hug animation. Reqs FLM, KID, SPID, OAR, MCM Helper, SKSE — all baseline. |
| Discipline-first route                                                                           | Alternative | all            | Vanilla marriage mechanics.                                                   |

### Risks & Compatibility

- The wrong Amorous Adventures variant breaks the SFW rule. Download must be the clean build.
- Do not stack `To Have And To Hold` with another multi-spouse mod.
- Romance dialogue can conflict with custom-voiced follower mods from → `NPCs` that replace the same NPC's voice.
- Romance quest mods add non-trivial content — review against → `World Content` to avoid doubling up on a single NPC's quest line.
- Marriage events triggered by `To Have And To Hold` can fire during unintended moments; check MCM for event timing/cooldown settings.
- `I'm Glad You're Here` dialogue sits in the same spouse/follower topic space as the `RDO` baseline — verify in testing that topics coexist (expected: different topics, no overwrite). Hug animation depends on OAR (baseline); the load-game "welcome back" hug can be disabled in MCM.
