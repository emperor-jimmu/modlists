# 18 - Audio & Music

**Goal:** Sound and music. Sound overhauls, custom radio stations, ambient
soundscapes, weapon audio, and vehicle sounds.

> More mods will be added as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

---

### RadioExt

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/4591>
- **Version:** 2.81
- **Released:** 2022-06-05
- **Summary:** Framework for adding custom radio stations. No modding tools required — copy songs into folders, edit a JSON file, and they appear as radio stations in-game. Supports custom icons, web stream sources, and in-world physical radios.
- **Why:** Essential foundation for all custom radio stations. Without this, no custom radio mods work. Also supports playback through Pocket Radio. 615 mods use this as a dependency — it's the backbone of the audio modding scene.
- **Conflicts:** None known
- **Dependencies:** Cyber Engine Tweaks, RED4ext
- **MO2 Notes:** Extract to game root. RadioExt creates `radioExt` folders in `bin/x64/plugins/cyber_engine_tweaks/mods/`. All custom radio station mods install into this structure. Install **before** any custom radio stations.
- **Performance:** None

### Make Your Own Radio Station

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/31298>
- **Version:** 1.1
- **Released:** 2026-07-08
- **Summary:** Blank radio station template — drop your own MP3 files into a folder and listen via the user radio station in-game. Includes icon variants.
- **Why:** Simple way to add personal music without needing to build a RadioExt station from scratch. The blank template handles all the wiring — just add music files.
- **Conflicts:** None known
- **Dependencies:** RadioExt (hard requirement)
- **MO2 Notes:** Extract to game root. Music files go into the station's `music` folder. Supports all common audio formats readable by the game engine.
- **Performance:** None

### PHONKWAVE RADIO (radioExt)

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/31179>
- **Version:** 1.0.5
- **Released:** 2026-07-04
- **Summary:** Curated 63-track phonkwave radio station with 125+ minutes of music, 19 lore-friendly in-game advertisements, and in-world radio streaming at Maelstrom and Aldecaldo bases. All tracks used with producer permission.
- **Why:** Phonk and phonkwave are authentically cyberpunk genres that fit Night City's aesthetic. This is the highest-quality genre-specific custom radio station on Nexus, with 3.4K+ downloads in its first two weeks.
- **Conflicts:** None known
- **Dependencies:** RadioExt, RED4ext, Cyber Engine Tweaks. Optional: Skip Radio Song for track skipping.
- **MO2 Notes:** Extract to game root. Radio station installs into the RadioExt structure. 19 advertisements are lore-appropriate — fits the world without breaking immersion.
- **Performance:** Light (additional audio streaming)

### Volume Lock Fix

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/30873>
- **Version:** 1
- **Released:** 2026-06-26
- **Summary:** Locks volume settings at user-defined levels, preventing mods from resetting them. Includes Native Settings UI integration — no manual file editing.
- **Why:** Multiple mods in the modlist can reset volume settings on load. This ensures consistent audio levels without manual intervention after every game restart.
- **Conflicts:** None known
- **Dependencies:** Native Settings UI (for in-game configuration panel)
- **MO2 Notes:** Extract to game root. Configure via Native Settings UI -> Mods -> Volume Lock Fix. Set desired lock levels for each audio channel (master, music, SFX, dialogue, vehicle).
- **Performance:** None

### Deadeye Sound Remover

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/12787>
- **Version:** 1.0
- **Released:** 2024-02-04
- **Summary:** Removes the cartoonish "DOINK!" sound effect that plays when the Deadeye perk triggers, while keeping the perk bonuses intact.
- **Why:** The Deadeye perk sound is jarring and immersion-breaking. This is the lightest possible fix — one TweakXL folder, zero dependencies, zero performance cost. Included in 51 Nexus collections including Welcome to Night City and NCR Core.
- **Conflicts:** None known
- **Dependencies:** None
- **MO2 Notes:** Extract to game root. Creates `r6/tweaks/DeadeyeNoSound/`. To uninstall, delete the folder. No REDmod or script extenders required.
- **Performance:** None

### Immersive Breathing

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/9423>
- **Version:** 2.12a
- **Released:** 2023-10-01
- **Summary:** Adds breathing sound effects and VFX to V: medium breathing when idle, heavy breathing when exhausted. Sprint, slide, and jump gain stamina costs for added realism.
- **Why:** V is a living person — breathing feedback adds physical presence and grounds the first-person experience. Stamina costs on movement actions create meaningful resource tradeoffs that pair well with survival systems.
- **Conflicts:** Known issue with Dead Eyes perk (WIP fix). May conflict with other stamina-modifying mods.
- **Dependencies:** Cyber Engine Tweaks, Immersive Stamina FX, Responsive V, TweakXL
- **MO2 Notes:** Choose CET or TweakXL version. TweakXL version installs to `r6/tweaks/`, CET version to `bin/x64/plugins/cyber_engine_tweaks/mods/`. Recommended companion mods: Player Movement Overhaul, Walk by Default 2.0. See optional file Breathing System Active Only When Sprinting for a lighter variant.
- **Performance:** Light (real-time audio + VFX)

### 80's Retrowave Synthwave Radio with FEMALE DJ VOICE - RadioEXT

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/3461>
- **Version:** 3
- **Released:** 2023-10-15
- **Summary:** Custom retrowave/synthwave radio station with a female DJ voice, using the RadioExt framework. Full station with music tracks and DJ banter.
- **Why:** Synthwave is the definitive cyberpunk music genre and fits Night City's aesthetic perfectly. 1768 endorsements and zero bug reports make this a proven, stable addition. RadioExt-based for clean integration with the game's radio system.
- **Conflicts:** None known
- **Dependencies:** Cyber Engine Tweaks, RadioExt, RED4ext
- **MO2 Notes:** Extract to game root. Station installs into RadioExt structure under `bin/x64/plugins/cyber_engine_tweaks/mods/radioExt/`. Must install RadioExt first. Custom DJ voice is pre-recorded (not AI-generated).
- **Performance:** Light (additional audio streaming)

### Cosmopolitan Night City

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/5909>
- **Version:** 3.0
- **Released:** 2022-09-29
- **Summary:** NPCs across Night City speak 11 different languages with full voice acting and lipsync. Includes Kiroshi subtitle translation effects, correct dialogue timing, and gendered lines. Available in four editions.
- **Why:** In a city where cyberware can translate any language in real time, monolingual NPCs break immersion. This mod makes Night City feel like a true global metropolis. 2523 endorsements, v2.3 compatibility confirmed. Significantly boosts replayability by letting players hear international voice casts.
- **Conflicts:** Other mods modifying NPC dialogue voice lines. Compatibility patches available for Polyglot V and Change V's Native Language.
- **Dependencies:** Codeware and RED4ext (required for v3.0 Customizable edition). Lite and Enhanced editions have no script dependencies.
- **MO2 Notes:** FOMOD installer -- choose edition carefully. **Enhanced Edition:** all features (voice+lipsync+Kiroshi effect+correct timing+gendering). **Lite Edition:** minimal changes, more lore-friendly. **Customizable Edition (v3.0):** advanced features via Codeware. Subtitles available in 19 languages -- select matching patches in FOMOD. Large download (~multiple GB depending on edition).
- **Performance:** Light to Moderate (multi-language audio streaming, Codeware runtime for v3.0)

---

## Install Order

1. RadioExt
2. Deadeye Sound Remover
3. Immersive Breathing
4. 80's Retrowave Synthwave Radio with FEMALE DJ VOICE - RadioEXT
5. Make Your Own Radio Station
6. PHONKWAVE RADIO (radioExt)
7. Cosmopolitan Night City
8. Volume Lock Fix

**Notes:**

- **RadioExt** must be installed before any custom radio stations
- All custom radio stations (80's Retrowave, Make Your Own, PHONKWAVE) depend on RadioExt
- **Deadeye Sound Remover** is a standalone TweakXL tweak with no deps — install anytime before Volume Lock Fix
- **Immersive Breathing** requires Immersive Stamina FX, Responsive V, and TweakXL — ensure those are installed first
- **Cosmopolitan Night City** has a complex FOMOD — review edition choice carefully before installing. Lite/Enhanced editions have no script deps; v3.0 Customizable requires Codeware+RED4ext
- **Volume Lock Fix** should be installed last to capture volume changes from all audio mods
