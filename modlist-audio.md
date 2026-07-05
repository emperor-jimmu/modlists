# Audio and Feedback

**MO2 Separator:** `Audio` → `Audio - Music`, `Audio - SFX & Ambience`

## Music Overhaul Strategy → `Audio - Music`

This subsection owns the soundtrack direction: how much the list should expand or replace Skyrim's music, how close it should stay to the Jeremy Soule baseline, and whether the music layer should mainly support exploration tone or aggressively redefine it. It stays separate from ambient-world soundscape ownership in `modlist-world-feel.md`. → `Audio - Music`

### Baseline

- **Chapter II - Jeremy Soule Inspired Music (by Dreyma Music)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/37792)) — Main music baseline. Enough night and exploration coverage to push `Elder Wilds` toward darker, more emotional melancholy without breaking from the Jeremy Soule shape of Skyrim. → `Audio - Music`
- **The Northerner Diaries - Immersive Edition (music by Jeremy Soule)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/33903)) — Locked music expansion. Authentic Jeremy Soule compositions — 19 new exploration tracks that integrate seamlessly into the existing soundtrack identity. → `Audio - Music`
- **The Southerner Diaries - A Soundtrack Expansion** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/32593)) — Locked companion expansion. 22 Soule-inspired tracks covering exploration and town ambience, complementing `The Northerner Diaries` without overlapping. → `Audio - Music`
- **Melodies of Civilization - Skyrim Fan-Made Music** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/37533)) — Locked civilization-music expansion. 20+ town, tavern, and settlement tracks making social spaces feel musically distinct from wilderness exploration. → `Audio - Music`
- **Nyghtfall - Dark Fantasy Music** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/39011)) — Complementary expansion. ~7 hours of 98 original dark-fantasy tracks with location-specific exploration, combat, dungeon, tavern, and town coverage. Best evaluated after baseline is in place. → `Audio - Music`
- **Nordenhamr - Viking Music** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/58080)) — Complementary expansion for Norse / Viking identity reinforcement on top of whatever Norse flavor `Yggdrasil` provides. → `Audio - Music`

### Alternatives

- **Yggdrasil Music and SoundFX Overhaul SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/21578)) — High-commitment branch if the project later decides it wants Skyrim to feel stranger, harsher, and more ritualistic instead of merely moodier. Last updated April 2021; functionally stable but unmaintained. → `Audio - Music`
- **Silent Combat Music** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/5148)) — Support option only if combat music itself starts feeling too loud, too repetitive, or too intrusive during testing. → `Audio - Music`
- Minimalist route — keep the vanilla soundtrack if the world tone is already carrying enough identity through visuals and pacing.

### Installation Notes

- If the final music stack combines multiple music mods, use the Synthesis music-merge plugin during install so playlists are merged deliberately instead of depending on load order.
- Keep the generated music-merge output in its own dedicated mod in `Mod Organizer 2`, and rebuild it whenever the active music stack changes. → `Audio - Music`
- For detailed Synthesis pipeline configuration, see `modlist-performance-patches.md` (Synthesis pipeline). → `Audio - Music`

### Notes

- A very large combined soundtrack can make the music layer feel incoherent if the tracks do not share a common tonal identity.
- Multiple music mods must be merged via Synthesis to avoid overlapping `MUSTT` records. The Synthesis music-merge plugin handles this.
- Any music mod older than 2020 may lack native AE support; verify before locking.

## Weapon, Magic, And Impact SFX → `Audio - SFX & Ambience`

This subsection owns the sound-effects layer for combat, magic, items, UI, and impact — what the player hears when swinging a sword, casting a spell, drinking a potion, or opening a menu. It stays separate from ambient-world and creature soundscape ownership in `modlist-world-feel.md` and `modlist-npcs.md`. The bar is a modern, weighty, and clear audio experience that reads well across all categories so UI feedback is crisp enough to be usable in third-person without visual confirmation. → `Audio - SFX & Ambience`

### Baseline

- **Immersive Sounds - Compendium** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/523)) — Weapon-and-armor SFX baseline. Thousands of new sound effects for weapons, magic, armor, items, and UI. Broadest patch ecosystem of any audio mod. Works cleanly with `Audio Overhaul for Skyrim SE` when loaded in the correct order. → `Audio - SFX & Ambience`
- **Audio Overhaul for Skyrim SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/12341)) — Full-audio overhaul baseline. Overhauls the entire ambient, weather, acoustic, and reverb system; serves as the master reverb-and-attenuation layer. Strongest community maintenance story (27K endorsements, actively maintained, v4.1.4 as of April 2026). ↔ `Audio - SFX & Ambience`
- **Airgetlam - Shouts SFX** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/33993)) — Shout-audio companion. Overhauls shout sounds with higher-fidelity recordings. No record conflicts with `ISC` or `AOS` — replaces raw `.wav` files, not audio records. → `Audio - SFX & Ambience`
- **Strange Runes** — Magic audio layer included as part of the locked magic-VFX baseline (cross-referenced in `modlist-expanded-systems.md`). → `Audio - SFX & Ambience`

### Alternatives

- Bow/crossbow SFX replacers (e.g. `Bowgasm`) — evaluate if baseline bow sounds are insufficient; verify AE compatibility.
- Dedicated UI click replacer (`Dear Diary Dark Mode` UI sounds or `Paper UI Sounds`) — optional polish layer.

### Notes

- `ISC` and `AOS` both edit large numbers of sound records. They are designed to be used together with a specific load order: `AOS` should load after `ISC` so AOS's reverb and attenuation win over ISC's raw effect swaps. Verify with LOOT and xEdit. → `Audio - SFX & Ambience`
- `ISC` is one of the oldest actively used mods on Nexus (first uploaded 2013). While its continued maintenance is exceptional, it touches so many records that any update can create unexpected conflict pressure. Verify its load order after any major content mod update. → `Audio - SFX & Ambience`
- `Airgetlam` replaces raw audio files and should be loaded after any mod that touches shout records. Ensure it is below `ISC` and `AOS` in load order. → `Audio - SFX & Ambience`

## Creature And NPC SFX → `Audio - SFX & Ambience`

This subsection owns creature, animal, and NPC sound effects not already covered by `AOS` or `ISC` — monster vocalisations, dragon roars, horse whinnies, and ambient creature sounds. It stays separate from the ambience-and-soundscape ownership in `modlist-world-feel.md`. → `Audio - SFX & Ambience`

### Baseline

- Minimalist route — rely on the `ISC` + `AOS` baseline for creature sounds. If testing reveals weak creature vocalisations, add dedicated replacers as controlled additions rather than as a blanket creature-audio mod.
- **Talkative Dragons** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/26955)) — Dragon dialogue baseline. Reuses vanilla voice lines to make dragons speak during combat, reinforcing their identity as sentient beings rather than mere beasts. ESL-flagged, 15,478 endorsements, v1.1. Only overwrites one record (`CreatureDialogueDragon`), minimal compatibility pressure. → `Audio - SFX & Ambience`

### Notes

- Creature sound mods that replace `.wav` files are generally safe (no record conflicts), but any mod that edits creature sound descriptors must be loaded after `ISC` and `AOS`.
- Talkative Dragons edits a dialogue record, not raw audio files. Verify load order with any mod touching dragon dialogue records. Dragon dialogue from Epic Dragon Combat REDONE may overlap — test both together.

## Combat And Immersion Audio → `Audio - SFX & Ambience`

This subsection owns combat-specific and immersion-audio mods — hit sounds, pain grunts, block impacts, slow-time audio, and heartbeat effects — that layer on top of the weapon and magic SFX baseline as polish for the third-person gamepad combat feedback loop.

### Baseline

- **Precision** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/72347)) — Already locked in `modlist-third-person.md` for gameplay; its audio impact (accurate hit detection sounds based on weapon trajectory) is part of the third-person experience. → `Audio - SFX & Ambience`
- **Valhalla Combat** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/64741)) — Already locked; parry, stagger, and timed-block mechanics with associated audio feedback. → `Audio - SFX & Ambience`
- **Heart of the Beast - Werewolf Sound and Camera Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/13776)) — Werewolf audio baseline if `Growl` is adopted from `modlist-expanded-systems.md`. Replaces werewolf howl, growl, and transformation sounds with higher-fidelity recordings. → `Audio - SFX & Ambience`
- **Heart of the Beast - Feral - A Werewolf Sound Replacer** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/165648)) — Alternative werewolf sound replacer with more savage vocalisations. Choose one variant, not both. → `Audio - SFX & Ambience`

### Notes

- Precision and Valhalla Combat are gameplay mods first; their audio is secondary. Do not change the gameplay mod's version or config for audio reasons.
- Heart of the Beast replaces `.wav` files for werewolf sounds. If `Growl` adds new werewolf forms that the sound replacer does not cover, those forms will fall back to Growl's default sounds. → `Audio - SFX & Ambience`
- Only one Heart of the Beast variant should be active. Installing both will cause file conflicts.
