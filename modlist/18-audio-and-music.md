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

---

## Install Order

1. RadioExt
2. Make Your Own Radio Station
3. PHONKWAVE RADIO (radioExt)
4. Volume Lock Fix

**Notes:**
- **RadioExt** must be installed before any custom radio stations
- All custom radio stations (Make Your Own, PHONKWAVE) depend on RadioExt
- **Volume Lock Fix** should be installed after all other audio mods to capture their volume changes
