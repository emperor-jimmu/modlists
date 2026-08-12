# Adult Content

---

## Framework Prerequisites
OStim Standalone — a modern, standalone adult animation framework that does not require OSA or SexLab. The OStim Romance and Amorous Adventures patch layer depend on this.

| Mod                                                                                                              | Type     | Notes                                                   |
|------------------------------------------------------------------------------------------------------------------|----------|---------------------------------------------------------|
| [OStim Standalone](https://www.nexusmods.com/skyrimspecialedition/mods/98163)                                    | Baseline | Does not require OSA.                                        |
| [OStim Community Resource](https://www.nexusmods.com/skyrimspecialedition/mods/106519)                           | Baseline | Shared framework for OStim add-ons.                     |
| [Night-blooming Violets for OStim Standalone](https://www.nexusmods.com/skyrimspecialedition/mods/98276)         | Baseline | Scene framework addon.                                  |
| [OARE - Open Animations Romance and Erotica](https://www.nexusmods.com/skyrimspecialedition/mods/80594)          | Baseline | Recommended animation pack baseline.                    |
| [Additional Leito's Animations for Ostim Standalone](https://www.nexusmods.com/skyrimspecialedition/mods/104995) | Baseline | ~150 animations.                                        |
| [Anub's animations for Ostim Standalone](https://www.nexusmods.com/skyrimspecialedition/mods/101918)             | Baseline | ~685 animations.                                        |
| [PPA - Procedural Penis Animations](https://www.nexusmods.com/skyrimspecialedition/mods/172002)                  | Baseline | CBPC collision physics addon.                           |
| [OSmp - Automatic SMP physics toggle for OStim](https://www.nexusmods.com/skyrimspecialedition/mods/72547)       | Baseline | ESL-flagged, supports CBBE 3BA and HIMBO.               |
| [Female Moan Voicesets For Ostim Standalone](https://www.nexusmods.com/skyrimspecialedition/mods/121383)         | Baseline | 38 voicesets keyed to voice types.                      |
| [Ostim SA-Sound Replacer-Blowjob](https://www.nexusmods.com/skyrimspecialedition/mods/131890)                    | Baseline | Sound replacer.                                         |
| [Male Orgasm Sounds For Ostim Standalone](https://www.nexusmods.com/skyrimspecialedition/mods/132396)            | Baseline | Sound replacer for male animations.                     |
| [OCum Ascended](https://www.nexusmods.com/skyrimspecialedition/mods/77506)                                       | Baseline | Cum and orgasm mechanics with visual layers.            |
| [Clean Navigation Icons for OStim Standalone](https://www.nexusmods.com/skyrimspecialedition/mods/181886)        | Baseline | 62 navigation icons.                                    |
| [Animation Pack Icons for OStim Standalone](https://www.nexusmods.com/skyrimspecialedition/mods/181880)          | Baseline | 18 icons.                                               |
| [OTooTiredToMove](https://www.nexusmods.com/skyrimspecialedition/mods/154112)                                    | Baseline | Temporary immobilisation after climax.                  |
| [OStim Prism](https://www.nexusmods.com/skyrimspecialedition/mods/174750)                                        | Baseline | OStim framework visual/settings enhancement.            |
| [OSquirt - OCum Expansion](https://www.nexusmods.com/skyrimspecialedition/mods/167025)                           | Baseline | Expands OCum Ascended mechanics.                        |
| [Ostim Standalone Sound Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/120663)                    | Baseline | Audio overhaul for OStim animations.                    |

### Risks & Compatibility

- OStim Standalone must not be loaded alongside legacy OSA or SexLab.
- OStim Romance and AA OStim patch must match the same OStim Standalone version.
- Keep auto-start settings conservative to avoid script load.

---

## Romance Content
Opt-in quest-driven romance content running on top of the OStim framework.

### Baseline

| Mod | Notes |
| --- | --- |
| [OStim Romance](https://www.nexusmods.com/skyrimspecialedition/mods/107671) | Primary romance-content baseline. Active maintenance. |
| [OComfort - OStim Romance Fork](https://www.nexusmods.com/skyrimspecialedition/mods/139333) | Romance fork adding comfort/affection mechanics. Alternative to OStim Romance. |
| [Amorous Adventures OStim Standalone - OStim Sequences](https://www.nexusmods.com/skyrimspecialedition/mods/106773) | Ports classic Amorous Adventures to OStim with sequence scenes. |
| [Amorous Adventures OStim Standalone - Rewrite and MCM Patch with Fixes - Sequences Edition](https://www.nexusmods.com/skyrimspecialedition/mods/150577) | Updated rewrite with MCM patch and fixes. Supersedes the base patch. |
| [Amorous Adventures MCM](https://www.nexusmods.com/skyrimspecialedition/mods/100112) | MCM configuration for Amorous Adventures. |
| [Amorous Adventures - Player Dialogue Rewritten](https://www.nexusmods.com/skyrimspecialedition/mods/38989) | Reworks player dialogue options for Amorous Adventures. |
| [Caught Red Handed - Quest Expansion - OStim Patch](https://www.nexusmods.com/skyrimspecialedition/mods/69711) | OStim integration for the Caught Red Handed quest expansion. |

### Risks & Compatibility

- Lock the framework version first, then verify romance mod compatibility.
- Romance quests add dialogue/quest records that may conflict with → `World Content` or → `NPCs` overhauls.
- Verify load order with `RDO` and `Serana Dialogue Add-On` for overlapping NPCs.
- `Amorous Adventures OStim Standalone - Rewrite` (150577) is the preferred version over the base OStim Sequences patch (106773).

---

## NPC Relationship Content
NPC relationship simulation — schedules, pairings, and partner-swapping running on OStim.

### Baseline

| Mod | Notes |
| --- | --- |
| [OStim NPCs - NPC Sex Lives Improved](https://www.nexusmods.com/skyrimspecialedition/mods/82888) | NPC relationship schedules and partner variety. Requires OStim Standalone. |

### Risks & Compatibility

- Verify NPC schedules don't conflict with AI Overhaul SSE or other NPC behavior mods from → `NPCs`.
- Heavy script load — test for Papyrus performance on longer playthroughs.

---

## Pregnancy & Family
Pregnancy, childbirth, family systems, and child NPC overhauls. These mods form an interconnected ecosystem — evaluate as a set.

### Baseline

| Mod | Notes |
| --- | --- |
| [SkyChild](https://www.nexusmods.com/skyrimspecialedition/mods/128779) | Child NPC appearance overhaul. Replaces vanilla child models. |
| [Wild Side - A SkyChild Add-On](https://www.nexusmods.com/skyrimspecialedition/mods/135462) | Adds wild/feral child variants. Companion add-on for SkyChild. |

### Alternatives & Tentative

| Mod | Notes |
| --- | --- |
| [Beeing Female NG](https://www.nexusmods.com/skyrimspecialedition/mods/168434) | Tentative. Pregnancy and female reproductive system framework. |
| [Beeing Female - FM - FMR - Skychild Patch](https://www.nexusmods.com/skyrimspecialedition/mods/169104) | Tentative. Compatibility patch for Beeing Female + SkyChild. |
| [Seeds of Skyrim - Lore Pregnant NPCs](https://www.nexusmods.com/skyrimspecialedition/mods/55112) | Lore-friendly pregnant NPCs. Evaluate for overlap with Beeing Female pregnancy system. |

### Risks & Compatibility

- Pregnancy frameworks add persistent actor data and scripts — monitor save file growth.
- SkyChild replaces child NPC models; verify compatibility with any mod that adds or modifies child NPCs.


