# Audio and Feedback

**MO2 Separator:** `Audio` → `Audio - Music`, `Audio - SFX & Ambience`

All mods in this section belong to one of the two audio separators as noted per subsection.

---

## Music Overhaul Strategy → separator: `Audio - Music`

The soundtrack direction: how much to expand Skyrim's music while staying close to the Jeremy Soule baseline.

### Baseline
- **Chapter II - Jeremy Soule Inspired Music** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/37792)) — Darker, more emotional melancholy without breaking from Soule's shape.
- **The Northerner Diaries - Immersive Edition** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/33903)) — Authentic Jeremy Soule compositions: 19 exploration tracks.
- **The Southerner Diaries** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/32593)) — 22 Soule-inspired exploration and town tracks.
- **Melodies of Civilization** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/37533)) — 20+ town, tavern, and settlement tracks.
- **Nyghtfall - Dark Fantasy Music** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/39011)) — ~7 hours, 98 dark-fantasy tracks. Evaluate after baseline is in place.
- **Nordenhamr - Viking Music** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/58080)) — Viking identity reinforcement.
- **BA Bard Songs** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/47202)) — Bard song replacer. Compatible with Skyrim's Got Talent.

### Alternatives
- **Yggdrasil Music and SoundFX Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/21578)) — Harsher, more ritualistic direction. Last updated April 2021.
- **Silent Combat Music** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/5148)) — Support option if combat music becomes intrusive.
- **Minimalist route** — Keep vanilla soundtrack.

### Installation Notes
- If combining multiple music mods, use the Synthesis music-merge plugin for deliberate playlist merging.
- Keep generated music-merge output in its own dedicated MO2 mod. Rebuild when the music stack changes.
- See → `Performance` for Synthesis pipeline configuration.

### Notes
- A very large combined soundtrack can feel incoherent if tracks don't share tonal identity.
- Multiple music mods must be merged via Synthesis to avoid overlapping `MUSTT` records.
- Any pre-2020 music mod may lack native AE support — verify before locking.

---

## Weapon, Magic, And Impact SFX → separator: `Audio - SFX & Ambience`

The sound-effects layer for combat, magic, items, UI, and impact. The bar: modern, weighty, clear audio readable in third-person without visual confirmation.

### Baseline
- **Immersive Sounds - Compendium** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/523)) — Weapon-and-armor SFX baseline. Broadest patch ecosystem.
- **Audio Overhaul for Skyrim SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/12341)) — Master reverb-and-attenuation layer. 27K endorsements, actively maintained (v4.1.4, April 2026).
- **Airgetlam - Shouts SFX** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/33993)) — Shout-audio companion. Replaces raw `.wav` files, no record conflicts.
- **Strange Runes** — Magic audio layer (cross-referenced from → `Magic & Perks`).

### Load Order
`ISC` and `AOS` both edit large numbers of sound records. Load `AOS` after `ISC` so AOS's reverb/attenuation wins over ISC's raw effect swaps. `Airgetlam` loads after both.

### Notes
- ISC is one of the oldest actively used Nexus mods (first uploaded 2013). Touches so many records that any update creates unexpected conflict pressure.
- Airgetlam replaces raw audio files — should be loaded after any mod touching shout records.

---

## Creature And NPC SFX → separator: `Audio - SFX & Ambience`

### Baseline
- Minimalist route — rely on ISC + AOS for creature sounds. Add dedicated replacers only if testing reveals weak vocalisations.
- **Talkative Dragons** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/26955)) — Dragons speak during combat via reused vanilla voice lines. ESL-flagged, only overwrites one record (`CreatureDialogueDragon`). 15,478 endorsements.

### Notes
- Creature sound `.wav` replacers are generally safe (no record conflicts). Sound descriptor editors must load after ISC and AOS.
- Talkative Dragons edits a dialogue record, not raw audio. Verify with dragon dialogue from Epic Dragon Combat REDONE.

---

## Combat And Immersion Audio → separator: `Audio - SFX & Ambience`

Combat-specific and immersion-audio mods layering on top of the weapon/magic SFX baseline.

- **Precision** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/72347)) — Already locked in → `Third-Person`; audio impact is secondary.
- **Valhalla Combat** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/64741)) — Already locked; parry/stagger/timed-block audio feedback.
- **Heart of the Beast - Werewolf Sound and Camera Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/13776)) — Werewolf audio baseline if `Growl` is adopted.
- **Heart of the Beast - Feral** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/165648)) — Alternative werewolf sounds. Choose one variant, not both.

### Notes
- Only one Heart of the Beast variant active at a time. Both installed = file conflicts.
- If `Growl` adds new werewolf forms not covered by the sound replacer, forms fall back to Growl defaults.
