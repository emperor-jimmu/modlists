# Audio and Feedback

**MO2 Separator:** `Audio` → `Audio - Music`, `Audio - SFX & Ambience`

## Music Overhaul Strategy → `Audio - Music`

### Core Idea

- This subsection owns the soundtrack direction: how much the list should expand or replace Skyrim's music, how close it should stay to the Jeremy Soule baseline, and whether the music layer should mainly support exploration tone or aggressively redefine it.
- It should stay separate from ambient-world soundscape ownership in `modlist-world-feel.md`. → `Audio - Music`

### Options

- Dark melancholy within vanilla boundaries: `Chapter II - Jeremy Soule Inspired Music (by Dreyma Music)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/37792> → `Audio - Music`
- Dark mythic replacement route: `Yggdrasil Music and SoundFX Overhaul SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/21578> (last updated April 2021; audio content, functionally stable but unmaintained) → `Audio - Music`
- Dark fantasy expansion route: `Nyghtfall - Dark Fantasy Music` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/39011>. ~7 hours of 98 original dark-fantasy tracks by `nyghttones`, with location-specific exploration, combat, dungeon, tavern, and town coverage. Pitched as darker and more melancholic than vanilla without straying from the Soule shape, which makes it a clean companion to `Chapter II` rather than a competing replacement. → `Audio - Music`
- Norse fantasy expansion route: `Nordenhamr - Viking Music` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/58080>. Norse-themed fantasy music that is widely used alongside `Yggdrasil` in community music stacks (and is the third leg of the long-running `Nyghtfall` + `Nordenhamr` + `Yggdrasil` combination seen in `r/skyrimmods` dark-fantasy mod lists). → `Audio - Music`
- Exploration music expansion: `The Northerner Diaries - Immersive Edition (music by Jeremy Soule)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/33903> — adds 19 new exploration tracks composed by Jeremy Soule himself, originally released via his Northerner Diaries project. Fits seamlessly into the vanilla soundtrack because it is the same composer. → `Audio - Music`
- Exploration music expansion (companion): `The Southerner Diaries - A Soundtrack Expansion` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/32593> — adds 22 original tracks inspired by Jeremy Soule's style, covering exploration and town ambience. By NEVERMOREPJM. Complements `The Northerner Diaries` without overlapping in content. → `Audio - Music`
- Civilization music expansion: `Melodies of Civilization - Skyrim Fan-Made Music` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/37533> — adds 20+ original tracks for towns, taverns, and civilized areas, making settlements feel musically distinct from wilderness exploration. By OrganicView. → `Audio - Music`
- Combat-restraint support route: `Silent Combat Music` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/5148> (last updated November 2019; simple mute, functionally stable) → `Audio - Music`
- Minimalist route: keep the vanilla soundtrack if the world tone is already carrying enough identity through visuals and pacing.

### Recommendation

- Start with `Chapter II` as the main music baseline because it now has enough night and exploration coverage to push `Elder Wilds` toward darker, more emotional melancholy without breaking from the Jeremy Soule shape of Skyrim. → `Audio - Music`
- Treat `Chapter II` as the default answer when the list wants sadness, isolation, and wilderness weight rather than a total soundtrack identity rewrite. → `Audio - Music`
- Keep `Yggdrasil` as the high-commitment branch if the project later decides it wants Skyrim to feel stranger, harsher, and more ritualistic instead of merely moodier. Note that Yggdrasil has not been updated since April 2021; as a pure music replacer this does not affect functionality, but community support and compatibility patches may be frozen. → `Audio - Music`
- Treat `Nyghtfall - Dark Fantasy Music` and `Nordenhamr - Viking Music` as complementary expansion picks rather than subsection baselines. They are best evaluated after `Chapter II` (and possibly `Yggdrasil`) are in place: use `Nyghtfall` if the chosen baseline still feels too restrained or too Soule-shaped and the project wants more authored dark-fantasy exploration, combat, dungeon, and tavern cues; use `Nordenhamr` if the Norse / Viking identity of the world needs stronger musical reinforcement on top of whatever Norse flavor `Yggdrasil` already provides. They are also the long-standing community pair for dark-fantasy stacks together with `Yggdrasil`, so they are safe to layer on top of the existing music direction rather than replacing it. → `Audio - Music`
- Add `The Northerner Diaries - Immersive Edition` as a locked music expansion. These are authentic Jeremy Soule compositions — same composer as vanilla Skyrim — so they integrate seamlessly into the existing soundtrack identity rather than changing it. The 19 new exploration tracks extend the wilderness music pool without stylistic clash. → `Audio - Music`
- Add `The Southerner Diaries - A Soundtrack Expansion` as a locked companion music expansion. Its 22 tracks are Soule-inspired rather than Soule-composed, but the stylistic match is close enough to complement `The Northerner Diaries` without a jarring composer shift. Covers exploration and town ambience. → `Audio - Music`
- Add `Melodies of Civilization - Skyrim Fan-Made Music` as a locked civilization-music expansion. Its 20+ town, tavern, and settlement tracks make social spaces feel musically distinct from wilderness exploration, addressing a gap in the vanilla soundtrack where cities and taverns recycle the same small pool of tracks. → `Audio - Music`
- Keep `Silent Combat Music` as a support option only if combat music itself starts feeling too loud, too repetitive, or too intrusive during testing. → `Audio - Music`
- Treat soundtrack replacement as a tone decision, not as filler content to make the list feel busier.

### Installation Notes

- If the final music stack combines multiple music mods, use the Synthesis music-merge plugin during install so playlists are merged deliberately instead of depending on load order.
- Keep the generated music-merge output in its own dedicated mod in `Mod Organizer 2`, and rebuild it whenever the active music stack changes. → `Audio - Music`
- For detailed Synthesis pipeline configuration, see `modlist-performance-patches.md` (Synthesis pipeline). → `Audio - Music`

### Risks & Compatibility

- A very large combined soundtrack can make the music layer feel incoherent if the tracks do not share a common tonal identity.
- Multiple music mods must be merged via Synthesis to avoid overlapping `MUSTT` records. The Synthesis music-merge plugin handles this.
- Any music mod older than 2020 may lack native AE support; verify before locking.
- Layering similar-sounding music expansions can accidentally dilute the tone with too much variety.

### Acceptance Criteria

- `Elder Wilds` has one clear music baseline, one high-commitment comparison, and complementary expansion picks rather than a growing pile of soundtrack mods. → `Audio - Music`
- The chosen direction makes travel and exploration feel tonally richer without turning the soundtrack into a constant mix-tape.
- Later combat, survival, and ambient world-sound decisions still have room to be heard.

## Weapon, Magic, And Impact SFX → `Audio - SFX & Ambience`

### Core Idea

- This subsection owns the sound-effects layer for combat, magic, items, UI, and impact — what the player hears when swinging a sword, casting a spell, drinking a potion, or opening a menu.
- It should stay separate from ambient-world and creature soundscape ownership in `modlist-world-feel.md` and `modlist-npcs.md`. → `Audio - SFX & Ambience`
- The bar is a modern, weighty, and clear audio experience that reads well across all categories: weapons have heft, magic has presence, and UI feedback is crisp enough to be usable in third-person without visual confirmation.

### Options

- Weapon-and-armor SFX baseline: `Immersive Sounds - Compendium` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/523> → `Audio - SFX & Ambience`
- Full-audio overhaul route: `Audio Overhaul for Skyrim SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/12341> → `Audio - SFX & Ambience`
- magic VFX + audio visual upgrade: `Strange Runes` (also listed in `modlist-expanded-systems.md`; the mod includes audio as well as the visual runes, and the two sections should cross-reference each other for the locked `Strange Runes` visual baseline). → `Audio - SFX & Ambience`
- Shout SFX route: `Airgetlam - Shouts SFX` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/33993> → `Audio - SFX & Ambience`
- Bow-and-crossbow SFX route: more modern bow sounds (`Bowgasm` or similar advanced sound replacers, but verify they are AE-compatible). → `Audio - SFX & Ambience`
- Creature SFX routes: creature sound replacers that improve animal, monster, and dragon audio — not required if the sound baseline is already strong enough.
- UI SFX route: `Immersive Sounds - Compendium` already covers UI sounds, but a dedicated UI click replacer (`Dear Diary Dark Mode` UI sounds or `Paper UI Sounds`) is an optional polish layer.

### Recommendation

- Lock `Immersive Sounds - Compendium` as the weapon-and-armor SFX baseline. It adds thousands of new sound effects for weapons, magic, armor, items, and UI, and has the broadest patch ecosystem of any audio mod in the category. It works cleanly with `Audio Overhaul for Skyrim SE` when loaded in the correct order. → `Audio - SFX & Ambience`
- Lock `Audio Overhaul for Skyrim SE` (AOS) as the full-audio overhaul baseline. It overhauls the entire ambient, weather, acoustic, and reverb system and serves as the master reverb-and-attenuation layer that the rest of SFX builds on. It has the strongest community maintenance story of any full-audio mod (27K endorsements, actively maintained, version 4.1.4 in April 2026). ↔ `Audio - SFX & Ambience`
- Lock `Airgetlam - Shouts SFX` as the shout-audio companion. It overhauls shout sounds with higher-fidelity recordings and does not conflict with `ISC` or `AOS` (it replaces the raw shout `.wav` files, not the audio records). → `Audio - SFX & Ambience`
- Keep the `Strange Runes` audio layer as part of the locked magic-VFX baseline — the mod includes both visual and audio changes for spellcasting. → `Audio - SFX & Ambience`
- Judge weapon and magic SFX first; creature and UI SFX can come later as polish layers rather than baseline requirements.

### Risks & Compatibility

- `ISC` and `AOS` both edit large numbers of sound records. They are designed to be used together with a specific load order: `AOS` should load after `ISC` so AOS's reverb and attenuation win over ISC's raw effect swaps. Verify this load order works with `LOOT` and xEdit. → `Audio - SFX & Ambience`
- `ISC` is one of the oldest actively used mods on Nexus (first uploaded 2013). While its continued maintenance is exceptional, it touches so many records that any update can create unexpected conflict pressure. Verify its load order after any major content mod update. → `Audio - SFX & Ambience`
- `Airgetlam` replaces raw audio files and should be loaded after any mod that touches shout records. Ensure it is below `ISC` and `AOS` in load order. → `Audio - SFX & Ambience`

### Acceptance Criteria

- Weapons have audible weight — a greatsword swing sounds different from a dagger slash.
- Magic spells have clear audio identity — fire, frost, and shock are immediately distinguishable.
- UI sounds are crisp enough to navigate menus in third-person without looking at the screen.
- ISC, AOS, and Airgetlam coexist without audio gaps or overlapping sound conflicts.

## Creature And NPC SFX → `Audio - SFX & Ambience`

### Core Idea

- This subsection owns creature, animal, and NPC sound effects that are not already covered by `AOS` or `ISC` — monster vocalisations, dragon roars, horse whinnies, and ambient creature sounds.
- It should stay separate from the ambience-and-soundscape ownership in `modlist-world-feel.md`. → `Audio - SFX & Ambience`

### Options

- Creature SFX expansion: `Creatures of Skyrim` sound replacers or specific mods that replace creature vocalisations with higher-fidelity recordings.
- Dragon SFX upgrade: specific dragon-roar and wing-flap sound replacers.
- Minimalist route: rely on the `ISC` + `AOS` baseline for creature sounds.

### Recommendation

Start with the minimalist route. The `ISC` + `AOS` baseline already covers most creature audio. If testing reveals weak creature vocalisations, add dedicated replacers as controlled additions rather than as a blanket creature-audio mod.

### Risks & Compatibility

- Creature sound mods that replace `.wav` files are generally safe — no record conflicts — but any mod that edits creature sound descriptors must be loaded after `ISC` and `AOS`.

### Acceptance Criteria

- Creature and NPC sounds feel modern and weighty under the `ISC` + `AOS` baseline.
- Dragons, horses, and common creatures have distinct and recognisable audio.

## Combat And Immersion Audio → `Audio - SFX & Ambience`

### Core Idea

- This subsection owns combat-specific and immersion-audio mods — hit sounds, pain grunts, block impacts, slow-time audio, and heartbeat effects — that layer on top of the weapon and magic SFX baseline.
- These are polish mods that improve the combat feedback loop for third-person gamepad play.

### Options

- **Precision** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/72347> — adds accurate hit detection and impact sounds based on weapon trajectory rather than the vanilla dice-roll system. Listed as a core combat mod in `modlist-third-person.md`; its audio impact is relevant here. → `Audio - SFX & Ambience`
- **Valhalla Combat** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/64741> — adds parry, stagger, and timed-block mechanics with associated audio feedback. Also locked in `modlist-third-person.md`. → `Audio - SFX & Ambience`
- **Heart of the Beast - Werewolf Sound and Camera Overhaul** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/13776> — replaces werewolf howl, growl, and transformation sounds with higher-fidelity recordings. Pairs with the `Growl` werewolf overhaul from `modlist-expanded-systems.md`. → `Audio - SFX & Ambience`
- **Heart of the Beast - Feral - A Werewolf Sound Replacer** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/165648> — an alternative werewolf sound replacer with more savage vocalisations. Choose one of the two Heart of the Beast variants, not both. → `Audio - SFX & Ambience`

### Recommendation

- Lock **Precision** and **Valhalla Combat** as core combat-audio layers — they are already in the list for gameplay reasons and their audio feedback is part of the third-person experience.
- Lock **Heart of the Beast - Werewolf Sound and Camera Overhaul** as the werewolf audio baseline if `Growl` is adopted from `modlist-expanded-systems.md`. If the project prefers more savage vocalisations, use `Heart of the Beast - Feral` instead. Choose one variant, not both. → `Audio - SFX & Ambience`

### Risks & Compatibility

- Precision and Valhalla Combat are gameplay mods first; their audio is secondary. Do not change the gameplay mod's version or config for audio reasons.
- Heart of the Beast replaces `.wav` files for werewolf sounds. If `Growl` adds new werewolf forms that the sound replacer does not cover, those forms will fall back to Growl's default sounds. → `Audio - SFX & Ambience`
- Only one Heart of the Beast variant should be active. Installing both will cause file conflicts.

### Acceptance Criteria

- Precision hit detection produces audible impact feedback on weapon contact.
- Valhalla Combat parry and stagger sounds provide clear combat feedback in third-person.
- Werewolf sounds (if Growl is adopted) match the chosen Heart of the Beast variant.
