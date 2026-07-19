# Audio and Feedback

**MO2 Separators:** `Audio` → `Audio - Music`, `Audio - SFX & Ambience`

All mods in this section belong to one of the two audio separators as noted per subsection.

---

## Music Overhaul Strategy
The soundtrack direction: how much to expand Skyrim's music while staying close to the Jeremy Soule baseline.

### Baseline

| Mod | Notes |
| --- | --- |
| [Chapter II - Jeremy Soule Inspired Music](https://www.nexusmods.com/skyrimspecialedition/mods/37792) | Darker, more emotional melancholy without breaking from Soule's shape. |
| [The Northerner Diaries - Immersive Edition](https://www.nexusmods.com/skyrimspecialedition/mods/33903) | Authentic Jeremy Soule compositions: 19 exploration tracks. |
| [The Southerner Diaries](https://www.nexusmods.com/skyrimspecialedition/mods/32593) | 22 Soule-inspired exploration and town tracks. |
| [Melodies of Civilization](https://www.nexusmods.com/skyrimspecialedition/mods/37533) | 20+ town, tavern, and settlement tracks. |
| [Nyghtfall - Dark Fantasy Music](https://www.nexusmods.com/skyrimspecialedition/mods/39011) | ~7 hours, 98 dark-fantasy tracks. Evaluate after baseline is in place. |
| [Nordenhamr - Viking Music](https://www.nexusmods.com/skyrimspecialedition/mods/58080) | Viking identity reinforcement. |
| [BA Bard Songs](https://www.nexusmods.com/skyrimspecialedition/mods/47202) | Bard song replacer. Compatible with Skyrim's Got Talent. |

### Alternatives

- **Yggdrasil Music and SoundFX Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/21578)) — Harsher, more ritualistic direction. Last updated April 2021.
- **Silent Combat Music** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/5148)) — Support option if combat music becomes intrusive.
- **Minimalist route** — Keep vanilla soundtrack.

### Installation Notes
- If combining multiple music mods, use the Synthesis music-merge plugin for deliberate playlist merging.
- Keep generated music-merge output in its own dedicated MO2 mod. Rebuild when the music stack changes.
- See → `Performance` for Synthesis pipeline configuration.

### Risks & Compatibility
- A very large combined soundtrack can feel incoherent if tracks don't share tonal identity.
- Multiple music mods must be merged via Synthesis to avoid overlapping `MUSTT` records.
- Any pre-2020 music mod may lack native AE support — verify before locking.

---

## Weapon, Magic, And Impact SFX
The sound-effects layer for combat, magic, items, UI, and impact. The bar: modern, weighty, clear audio readable in third-person without visual confirmation.

| Mod | Notes |
| --- | --- |
| [Immersive Sounds - Compendium](https://www.nexusmods.com/skyrimspecialedition/mods/523) | Weapon-and-armor SFX baseline. Broadest patch ecosystem. |
| [Audio Overhaul for Skyrim SE](https://www.nexusmods.com/skyrimspecialedition/mods/12341) | Master reverb-and-attenuation layer. 27K endorsements, actively maintained (v4.1.4, April 2026). |
| [Airgetlam - Shouts SFX](https://www.nexusmods.com/skyrimspecialedition/mods/33993) | Shout-audio companion. Replaces raw `.wav` files, no record conflicts. |
| Strange Runes | Magic audio layer (cross-referenced from → `Magic & Perks`). |

### Load Order
`ISC` and `AOS` both edit large numbers of sound records. Load `AOS` after `ISC` so AOS's reverb/attenuation wins over ISC's raw effect swaps. `Airgetlam` loads after both.

### Risks & Compatibility
- ISC is one of the oldest actively used Nexus mods (first uploaded 2013). Touches so many records that any update creates unexpected conflict pressure.
- Airgetlam replaces raw audio files — should be loaded after any mod touching shout records.

---

## Creature And NPC SFX
### Baseline
- Minimalist route — rely on ISC + AOS for creature sounds. Add dedicated replacers only if testing reveals weak vocalisations.
- **Talkative Dragons** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/26955)) — Dragons speak during combat via reused vanilla voice lines. ESL-flagged, only overwrites one record (`CreatureDialogueDragon`). 15,478 endorsements.

### Risks & Compatibility
- Creature sound `.wav` replacers are generally safe (no record conflicts). Sound descriptor editors must load after ISC and AOS.
- Talkative Dragons edits a dialogue record, not raw audio. Verify with dragon dialogue from Epic Dragon Combat REDONE.

---

## Combat And Immersion Audio
Combat-specific and immersion-audio mods layering on top of the weapon/magic SFX baseline.

| Mod | Notes |
| --- | --- |
| [Precision](https://www.nexusmods.com/skyrimspecialedition/mods/72347) | Already locked in → `Third-Person`; audio impact is secondary. |
| [Valhalla Combat](https://www.nexusmods.com/skyrimspecialedition/mods/64741) | Already locked; parry/stagger/timed-block audio feedback. |
| [Dynamic Impacts](https://www.nexusmods.com/skyrimspecialedition/mods/140320) | Weapon-type-vs-armor impact sounds and sparks. Requires MIF - Mu Impact Framework (95624). ISC/AOS patches available. |
| [Heart of the Beast - Werewolf Sound and Camera Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/13776) | Werewolf audio baseline if `Growl` is adopted. |
| [Heart of the Beast - Feral](https://www.nexusmods.com/skyrimspecialedition/mods/165648) | Alternative werewolf sounds. Choose one variant, not both. |

### Risks & Compatibility
- Only one Heart of the Beast variant active at a time. Both installed = file conflicts.
- If `Growl` adds new werewolf forms not covered by the sound replacer, forms fall back to Growl defaults.
- Dynamic Impacts requires **MIF - Mu Impact Framework (95624)**. Use its ISC/AOS patches if those audio mods are active.

---

## Ambient And Environmental Audio
Environmental soundscapes, creature ambient sounds, and weather audio to reinforce world immersion outside of combat.

| Mod | Notes |
| --- | --- |
| [Wildwood Echoes](https://www.nexusmods.com/skyrimspecialedition/mods/112008) | Forest and woodland soundscape expansion. |
| [Blackreach Eerie Ambience](https://www.nexusmods.com/skyrimspecialedition/mods/112114) | Blackreach-specific ambient atmosphere. |
| [Murder of Songbirds](https://www.nexusmods.com/skyrimspecialedition/mods/111766) | Ambient bird audio in wilderness areas. |
| [Nordic Winds](https://www.nexusmods.com/skyrimspecialedition/mods/112370) | Weather-specific wind sound effects for colder regions. |
| [Whispering Tomes of Apocrypha](https://www.nexusmods.com/skyrimspecialedition/mods/113423) | Apocrypha ambient soundscape. |
| [Falmer 'Dialogue' Overhaul - Echolocation](https://www.nexusmods.com/skyrimspecialedition/mods/114625) | Falmer echolocation vocalisation replacer. Creature-audio companion layer. |
| [Potema Revoiced](https://www.nexusmods.com/skyrimspecialedition/mods/123877) | Revoiced Potema dialogue. Overwrites vanilla voice files rather than dialogue records. |
| [Whispers of the Daedric Princes](https://www.nexusmods.com/skyrimspecialedition/mods/141931) | Ambient Daedric prince whispers in dungeons and Oblivion-related locations. |

### Risks & Compatibility

- All entries above are raw `.wav`/`.xwm` replacers or sound-descriptor mods - no record-level conflicts with ISC or AOS.
- Load sound-descriptor edits after ISC and AOS in left pane.
- Potema Revoiced replaces voice files only; verify compatibility with quest-expansion mods touching the Potema quest.
