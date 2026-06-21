# Audio and Feedback

## Music Overhaul Strategy

### Core Idea

- This subsection owns the soundtrack direction: how much the list should expand or replace Skyrim's music, how close it should stay to the Jeremy Soule baseline, and whether the music layer should mainly support exploration tone or aggressively redefine it.
- It should stay separate from ambient-world soundscape ownership in `modlist-07.md`.

### Options

- Dark melancholy within vanilla boundaries: `Chapter II - Jeremy Soule Inspired Music (by Dreyma Music)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/37792>
- Dark mythic replacement route: `Yggdrasil Music and SoundFX Overhaul SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/21578>
- Dark fantasy expansion route: `Nyghtfall - Dark Fantasy Music` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/39011>. ~7 hours of 98 original dark-fantasy tracks by `nyghttones`, with location-specific exploration, combat, dungeon, tavern, and town coverage. Pitched as darker and more melancholic than vanilla without straying from the Soule shape, which makes it a clean companion to `Chapter II` rather than a competing replacement.
- Norse fantasy expansion route: `Nordenhamr - Viking Music` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/58080>. Norse-themed fantasy music that is widely used alongside `Yggdrasil` in community music stacks (and is the third leg of the long-running `Nyghtfall` + `Nordenhamr` + `Yggdrasil` combination seen in `r/skyrimmods` dark-fantasy mod lists).
- Combat-restraint support route: `Silent Combat Music` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/5148>
- Minimalist route: keep the vanilla soundtrack if the world tone is already carrying enough identity through visuals and pacing.

### Recommendation

- Start with `Chapter II` as the main music baseline because it now has enough night and exploration coverage to push `Elder Wilds` toward darker, more emotional melancholy without breaking from the Jeremy Soule shape of Skyrim.
- Treat `Chapter II` as the default answer when the list wants sadness, isolation, and wilderness weight rather than a total soundtrack identity rewrite.
- Keep `Yggdrasil` as the high-commitment branch if the project later decides it wants Skyrim to feel stranger, harsher, and more ritualistic instead of merely moodier.
- Treat `Nyghtfall - Dark Fantasy Music` and `Nordenhamr - Viking Music` as complementary expansion picks rather than subsection baselines. They are best evaluated after `Chapter II` (and possibly `Yggdrasil`) are in place: use `Nyghtfall` if the chosen baseline still feels too restrained or too Soule-shaped and the project wants more authored dark-fantasy exploration, combat, dungeon, and tavern cues; use `Nordenhamr` if the Norse / Viking identity of the world needs stronger musical reinforcement on top of whatever Norse flavor `Yggdrasil` already provides. They are also the long-standing community pair for dark-fantasy stacks together with `Yggdrasil`, so they are safe to layer on top of the existing music direction rather than replacing it.
- Keep `Silent Combat Music` as a support option only if combat music itself starts feeling too loud, too repetitive, or too intrusive during testing.
- Treat soundtrack replacement as a tone decision, not as filler content to make the list feel busier.

### Installation

- If the final music stack combines multiple music mods, use the Synthesis music-merge plugin during install so playlists are merged deliberately instead of depending on load order.
- Keep the generated music-merge output in its own dedicated mod in `Mod Organizer 2`, and rebuild it whenever the active music stack changes.

### Risks & Compatibility

- A soundtrack that is strong on its own can still feel wrong once paired with the chosen weather, world-feel, and combat tone.
- `Yggdrasil` is not just darker; it is a major stylistic replacement, so even if playlist conflicts are solved by a merge patch the real question is whether its tone still fits the rest of the list.
- `Nyghtfall` and `Nordenhamr` are expansion packs rather than full replacements, so they will not conflict with the chosen baseline on a fundamental tone axis, but stacking them on top of `Chapter II` and `Yggdrasil` can produce a music stack that is heavier than the project's exploration pacing actually supports. Treat the final music stack as a curated pair (baseline + at most one expansion) rather than a three- or four-mod pile, and use the Synthesis music-merge plugin described in the installation step to avoid playlist overlap.
- Large music overhauls can dominate the emotional identity of the list more than intended.
- Music replacers are easy to like in showcase moments and harder to judge across long ordinary play sessions.

### Acceptance Criteria

- The chosen soundtrack direction fits the wilderness-first tone of `Elder Wilds` and supports a darker, emotional atmosphere without constantly calling attention to itself.
- Exploration, town, dungeon, and combat music feel intentionally related rather than like separate playlists.
- The final music layer improves identity without crowding out quieter exploration.

## Broad Sound Overhaul Framework

### Core Idea

- This subsection owns the broad gameplay-side sound framework: weapon impacts, Foley, magic routing, interior/exterior balance, and general responsiveness across the game.
- It does not re-own the exploration ambience layer already scoped in `modlist-07.md`.

### Options

- Compatibility-first route: `Audio Overhaul for Skyrim SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/12466>
- Dramatic modular route: `Immersive Sounds - Compendium` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/523>
- Heavy overlap route: `Regional Sounds Expansion (SRD - Wilds Dungeons Towns Ambience Birds - Fixes)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/77829>
- Ambient wind specialty route: `Nordic Winds` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/112370> — replaces regional wind loops with unique varieties per exterior region using Sound Record Distributor. No record conflicts. Optional additive layer; stacks cleanly on any framework since SRD injects sounds dynamically.
- Layered route: one broad framework plus a small number of narrowly scoped specialty audio mods.

### Recommendation

- Start with `Audio Overhaul for Skyrim SE` as the main broad audio-framework baseline.
- Keep `Immersive Sounds - Compendium` as the main alternate if the list wants a more dramatic and more configurable total sound redesign and is willing to carry more patch-management overhead.
- Treat `Regional Sounds Expansion` as an overlap-heavy alternate that should only be revisited if the repo later wants to rethink the section-07 ambient-world boundary.
- Add narrower specialty sound mods only after the broad framework is chosen, so the project does not stack several partial audio answers without a clear owner.

### Risks & Compatibility

- Mixing multiple broad audio frameworks can create a patch burden that is harder to reason about than the benefit is worth.
- It is easy to mistake louder or harsher sounds for better responsiveness.
- Broad audio changes can overlap with creature mods, weapon packs, magic overhauls, and animation-driven combat changes in ways that are annoying to debug later.

### Acceptance Criteria

- The chosen framework makes Skyrim sound more responsive and coherent than vanilla in normal play.
- Section-10 ownership is clear: broad sound design here, ambient world texture in `modlist-07.md`.
- Any additional specialty audio mods are layered on top of one clear framework rather than several competing baselines.

## Combat, Magic, And Shout Feedback

### Core Idea

- This subsection covers the most gameplay-critical feedback sounds: spells, impacts, power use, and shouts.
- The goal is cleaner combat readability and stronger feedback without turning every action into exaggerated audio spectacle.

### Options

- Broad-framework-only route: let the main audio overhaul handle most of the combat and spell sound improvement.
- Magic-specialization route: `Airgetlam -Modern Magic Sounds Rework-` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51541>
- Shout-specialization route: `Airgetlam - Shouts SFX -` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/90696>
- Voice-and-sfx bundle route: `Phoenix Compendium` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/55221>

### Recommendation

- Let the broad framework do most of the work first.
- Keep `Airgetlam -Modern Magic Sounds Rework-` as the main targeted upgrade if spells still feel weak, flat, or overly vanilla after the baseline audio framework lands.
- Keep `Airgetlam - Shouts SFX -` as the first focused shout upgrade if dragon-language power use still lacks weight.
- Keep `Phoenix Compendium` as a more aggressive all-in-one comparison only if the project later wants stronger voice and special-effect stylization rather than a restrained upgrade path.

### Risks & Compatibility

- Stacking several combat-sfx mods can make the soundscape harsher and less readable rather than more satisfying.
- Magic-audio changes can collide conceptually with later magic-overhaul choices from `modlist-05.md`.
- Voice-heavy reworks are easy to overdo and can shift the game's tone faster than intended.

### Acceptance Criteria

- Magic, shouts, and combat actions are easier to read by ear in real encounters.
- Audio feedback feels stronger without becoming cartoonish or fatiguing.
- Specialty combat-sfx mods remain clearly subordinate to the chosen broad framework.

## Weapons, Bows, Creatures, And Transformation Foley

### Core Idea

- This subsection covers narrower sound-design upgrades for gear handling, creature presence, and transformation states.
- These mods should add texture where the baseline framework still feels thin, not become a pile of disconnected novelty replacements.

### Options

- Bow specialization route: `A Bow's Whisper - Bow sound overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/47437>
- Footstep specialization route: `Cataphract - Armored Footsteps Rework -` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/102213>
- Heavy-armor presence route: `Sanguine Symphony Realistic Heavy Armor Sounds` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/162883>
- Transformation specialization route: `Heart of the Beast - Werewolf Sound - Remastered - SSE PORT` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/49263>
- Broad dramatic route: `Immersive Sounds - Compendium`
- Discipline-first route: keep creature and weapon Foley mostly inside the broad framework unless a specific category still feels weak.

### Recommendation

- Stay disciplined by default.
- Keep `A Bow's Whisper` as the first narrow specialty comparison because bows are common enough in Skyrim that weak archery audio is noticeable quickly.
- Keep `Cataphract - Armored Footsteps Rework -` as the main footstep and movement-presence comparison if player movement still sounds too soft or too generic after the broad framework lands.
- Keep `Sanguine Symphony Realistic Heavy Armor Sounds` as the heavier armor-presence branch if heavy gear still lacks weight once footsteps and combat audio are in place.
- Keep `Heart of the Beast` as the werewolf/transformation branch if the list later invests enough in beast-form play to justify dedicated sound treatment.
- Let `ISC` or the chosen broad framework carry most armor, movement, and weapon Foley unless testing shows a specific category is clearly lagging behind.

### Risks & Compatibility

- Narrow Foley mods can add flavor in one category while making the total soundscape feel less unified.
- Footstep and armor-sound replacers can overemphasize player movement and make every surface or equipment choice sound too loud.
- Creature and transformation sounds can quickly cross from immersive to theatrical.
- Specialty archery or creature audio is easy to overvalue if tested in isolation instead of across long normal play.

### Acceptance Criteria

- Narrow Foley additions solve real weak spots rather than just adding extra sound variety.
- Movement, armor, bow, and transformation sounds each improve categories that the baseline framework still leaves weak.
- Bow, creature, and transformation sounds remain coherent with the broader audio framework.
- No single specialty mod hijacks the overall sonic identity.

## Taverns, Bards, And Social Audio Texture

### Core Idea

- This subsection handles music and performance in social spaces rather than the broader settlement ambience that belongs in section 07.
- The target is better inn and bard identity without making social spaces sound overproduced or tonally disconnected.

### Options

- Bard refresh route: `BA Bard Songs` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/47202>
- Vanilla-plus route: keep bard performance close to vanilla and rely on the main music direction to carry tone.
- Broader fantasy route: adopt stronger tavern or performance replacements if the list later wants social spaces to feel much more authored.

### Recommendation

- Keep `BA Bard Songs` as the main tavern and bard comparison.
- Favor a vanilla-plus social-music direction unless real testing shows inns and bard spaces feel too repetitive after the main music strategy is chosen.
- Keep tavern-performance upgrades clearly narrower than the world-music and ambient-sound decisions.

### Risks & Compatibility

- Bard-song replacement can feel charming at first and repetitive later if the style is too conspicuous.
- Strong tavern-music identity can clash with a restrained wilderness-first tone.
- Social audio can start solving a content-density problem it was never meant to answer.

### Acceptance Criteria

- Inns and bard performances feel fresher without breaking the overall tone.
- Social-audio upgrades remain a supporting layer rather than a competing soundtrack system.
- The subsection stays clearly scoped away from broader town ambience ownership.

## UI Sound Redesign And Feedback Tones

### Core Idea

- This subsection covers menu clicks, activation feedback, and other interface-adjacent sounds that shape moment-to-moment feel.
- It does not own the UI framework, HUD layout, or controller-navigation choices already tracked in `modlist-06.md`.

### Options

- Conservative route: keep vanilla UI sounds unless they become a noticeable weak point.
- Ambient menu refresh route: `New UI Sounds Dungeon Music Ambient Sounds` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/86372>
- Click-reduction route: `NO MORE CLICK SOUND (ui_activatefail.wav Remover) (E Click Sound Remover)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/115367>
- Level-feedback restraint route: `quieter levelup and skill increase sound` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/90278>
- Level-feedback replacement route: `Improved Level Up Sound FX - Sound Replacer` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/136290>
- Soul-feedback route: `Dragon Soul Acquired Sound` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/161732>
- Broad stylization route: use a larger sound bundle such as `Phoenix Compendium` if the list later wants more dramatic interface-adjacent feedback.

### Recommendation

- Stay conservative by default.
- Let the main sound framework and music choices land before deciding whether UI-sound redesign is even needed.
- Keep `NO MORE CLICK SOUND` as the first micro-tuning branch if the real issue is simply an irritating repeated interaction sound rather than a full UI-audio problem.
- Compare `quieter levelup and skill increase sound` against `Improved Level Up Sound FX - Sound Replacer` if progression feedback needs tuning, because one solves loudness and the other changes character.
- Keep `Dragon Soul Acquired Sound` and `New UI Sounds Dungeon Music Ambient Sounds` as narrower flavor branches only if specific moments still feel weak after the main framework lands.
- Revisit `Phoenix Compendium` only if the project later decides it wants stronger overall sound stylization, including interface-adjacent feedback.
- Keep interface-sound changes subordinate to readability and tone rather than novelty.

### Risks & Compatibility

- UI-sound redesign can become gimmicky faster than visual UI changes.
- Tiny UI-sound replacers are easy to stack until the menu layer becomes inconsistent and overly curated.
- Heavier feedback bundles can blur the line between useful confirmation and constant noise.
- Interface-audio changes are easy to evaluate in menus and harder to judge in the flow of real play.

### Acceptance Criteria

- Interface-adjacent sounds support usability without turning menus and activations into a constant performance.
- Any UI-sound changes solve specific irritants or weak spots instead of existing only because replacement mods were available.
- Section-10 ownership remains limited to sound and feedback tone, not UI structure.
- The final UI-sound layer remains subtle enough to coexist with the chosen HUD and music direction.

## Voice, Creature Calls, And Entity Reworks

### Core Idea

- This subsection covers optional voice-side and creature-call reworks that can make specific enemy or entity categories feel more memorable.
- It still needs firm boundaries, because broad dialogue UI work and silent-voice bugfixing belong elsewhere.

### Options

- Restrained route: keep voices mostly vanilla and focus on music and sound-effects improvements.
- NPC voice-diversity route: `Skyrim Revoiced` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/163710> — introduces new voice types for NPCs using professional voice actors, reducing the number of NPCs sharing the same voice. Covers 81 NPCs with 14 voice types and 7500+ lines (v2.0). Requires FormList Manipulator. Skypatcher version available for maximum compatibility with NPC overhauls.
- Giant and large-creature route: `Colossus -Giants SFX Voice Rework` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/52041>
- Ghost and undead-presence route: `Phantasmagoria -Ghosts SFX Voice Rework-` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/50060>
- Daedric-entity stylization route: `Daedric Enigma -Daedric Princes Voice Rework- SSE (Old Version)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/35529>
- Broad stylization route: consider broader voice-side audio reworks such as `Phoenix Compendium` only if the project explicitly wants stronger character-audio stylization.
- Bugfix-only route: keep subtitle and silent-dialogue support in `modlist-01.md` (Targeted Bugfix Mods).

### Recommendation

- Stay restrained for ordinary NPC dialogue — the vanilla voice pool, though repetitive, is consistently produced and avoids the tonal mismatch risk of introducing new actors into existing roles.
- Keep `Skyrim Revoiced` as the primary NPC voice-diversity comparison if the repetition of shared vanilla voice types becomes a noticeable immersion issue in testing. Its professional actor recordings and Skypatcher-based distribution (no direct NPC record edits) make it lower-risk than AI-voiced alternatives. Treat it as a targeted NPC voice upgrade, not a full voice overhaul — it only touches 81 NPCs with 14 new voice types.
- Keep `Colossus` as the first creature-voice specialization comparison because giant encounters are rare enough to feel special but common enough to judge in normal play.
- Keep `Phantasmagoria` as the main ghost-side comparison if undead ambience and ghost presence still feel weak after the broad framework lands.
- Keep `Daedric Enigma` as the higher-stylization branch only if the list later decides major Daedric encounters should sound much more authored than vanilla.
- Keep `Fuz Ro D-oh - Silent Voice` and similar bugfix ownership in `modlist-01.md` (Targeted Bugfix Mods).
- Keep dialogue UI ownership in `modlist-06.md`.
- Only revisit broader voice-side bundles such as `Phoenix Compendium` if later testing shows that the chosen soundtrack and sound framework make vanilla voice presentation feel uniquely out of place.

### Risks & Compatibility

- Voice-side audio redesign can alter Skyrim's identity more abruptly than almost any other audio category.
- `Skyrim Revoiced` requires `FormList Manipulator` and optionally `Skypatcher` — add these to the dependency tracking in `modlist-01.md` if locked.
- NPC voice replacers can clash with custom followers or mod-added dialogue; confirm compatibility with any locked custom followers from `modlist-09.md`.
- Creature-call and entity-voice reworks can become theatrical very quickly if several stylized branches are stacked together.
- It is easy to mix up missing subtitle or silent-voice support with a true need for voice redesign.
- Audio bundles that touch voices, UI, combat, and ambience all at once can create messy ownership boundaries across sections.

### Acceptance Criteria

- Section boundaries remain clear between audio tone, UI structure, and bugfix support.
- Any creature-call or entity-voice additions are intentional specialization branches rather than accidental bundle spillover.
- `modlist-10.md` stays focused on audio identity and feedback quality instead of absorbing unrelated support systems.

## Post-Install Smoke Test

After completing this section, verify stability with the coc console command at these 6 locations:

| # | Command | Location | Stress Profile |
|---|---------|----------|----------------|
| 1 | `coc Whiterun` | Whiterun | Major city — NPCs, shadows, architecture density |
| 2 | `coc Solitude` | Solitude | Large city — water reflections, long draw distances |
| 3 | `coc RiftenOrigin` | Riften | Canopy lighting, heavy NPC AI packages |
| 4 | `coc MarkarthOrigin` | Markarth | Dwemer stone, waterfalls, extreme verticality |
| 5 | `coc Riverwood` | Riverwood | Forest exterior — grass, trees, landscape LOD |
| 6 | `coc BleakFallsBarrow01` | Bleak Falls Barrow | Interior dungeon — close-quarters lighting |
| 7 | `coc WhiterunBanneredMare` | Bannered Mare (Whiterun) | Tavern interior — fire lighting, patron NPCs, confined space |

**Pass criteria:** No crash on load. No missing textures. ≥60 FPS maintained (uncap framerate, use `tgm` for god mode if needed).

If any location fails, the most recently installed mod or generation step is the first suspect.
