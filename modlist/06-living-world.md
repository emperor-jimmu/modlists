# 06 -- Living World

**Goal:** Make Night City feel alive. Daily activities, survival-lite features,
NPC routines and schedules, interactivity with the environment, immersion
elements, metro/NCART, food/drink systems, and world reactivity.

> Mods will be added as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

---

### Night City Interactions - Core

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/5519>
- **Version:** 4.1.0
- **Released:** 2026-03-10
- **Summary:** Framework for social interactions at bars and venues across Night City. Includes Edgerunners Tour meta quest (find locales from the anime). Required for NCI district addons.
- **Why:** Core living world mod — adds meaningful social activities with romance partners outside of quests. The Edgerunners Tour gives structure to exploration.
- **Conflicts:** Low — edits a few vanilla quest phase and world sector files. Compatible with most mods.
- **Dependencies:** ArchiveXL, Codeware, Native Settings UI, RED4ext, TweakXL
- **MO2 Notes:** Extract to game root. On first install, travel to H10 apartment to trigger setup popup. Supports alcoholic/non-alcoholic toggle via Native Settings UI -> Mods. District addons (Watson, Westbrook, Heywood, etc.) are separate mod pages.
- **Performance:** None

### Metro System

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/3560>
- **Version:** 1.92
- **Released:** 2023-11-03
- **Summary:** Fully functional NCART metro system with 19 handbuilt explorable stations. First/third person views, controller support, radio integration. Accessible via fast travel gate icons on world map.
- **Why:** Transformational — makes the metro a real gameplay option for traversal. Each station is handcrafted and worth exploring. Pairs with Limited Fast Travel to make city travel meaningful.
- **Conflicts:** None known
- **Dependencies:** ArchiveXL, Codeware, Cyber Engine Tweaks, Native Settings UI
- **MO2 Notes:** Extract to game root. Configure via Native Settings UI -> Mods (train speed, camera distance, station wait time, price per station). Install manually, not via Vortex.
- **Performance:** None

### Wannabe Edgerunner - A simple Cyberpsychosis mod

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/5646>
- **Version:** 2.3.3
- **Released:** 2026-06-01
- **Summary:** Adds Humanity stat that degrades from cyberware usage and kills. Low Humanity causes visual glitches and combat debuffs; zero triggers Cyberpsychosis (VFX buffs, police/MaxTac spawn). Humanity restored via sleep, shower, petting cat/iguana, apartment interactions.
- **Why:** Essential survival-lite layer — gives gameplay consequences to cyberware installation and lethal approaches. Makes apartment amenities meaningful beyond cosmetics.
- **Conflicts:** Compatible with Stealthrunner (optical camo support). Compatible with Cyberware-EX.
- **Dependencies:** ArchiveXL, Codeware, Mod Settings, RED4ext, redscript, TweakXL
- **MO2 Notes:** Extract to game root. Configure via Mod Settings. Neuroblockers sold at med vendors (or craftable). To uninstall safely: restore humanity first, run `Game.EdgerunnerClear()` in CET console, save, then delete mod files.
- **Performance:** None

### Simple Flashlight

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/2913>
- **Version:** 2.5
- **Released:** 2023-10-01
- **Summary:** Adds a toggleable flashlight for dark areas. Configurable beam size, intensity, and falloff. Keyboard hotkey via CET bindings; controller uses hold D-Pad Left.
- **Why:** Practical immersion tool — Cyberpunk 2077 has no built-in flashlight despite many dark interiors. Essential for exploration without relying on gamma settings.
- **Conflicts:** None known
- **Dependencies:** Cyber Engine Tweaks, Native Settings UI
- **MO2 Notes:** Extract to `Cyberpunk 2077/bin/x64/plugins/cyber_engine_tweaks/mods/flashlight/`. Set hotkey via CET overlay -> Bindings. Configure via Native Settings UI -> Mods.
- **Performance:** None

### Limited Fast Travel

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/1889>
- **Version:** 1.3
- **Released:** 2025-08-06
- **Summary:** Reduces the number of active fast travel terminals to a configurable subset. Only metro stations and key hubs remain active by default; individual terminals can be toggled on/off via Mod Settings.
- **Why:** Encourages exploration and use of the metro system. Turns fast travel from an everywhere-anywhere convenience into a meaningful navigation choice.
- **Conflicts:** None known
- **Dependencies:** Mod Settings, RED4ext, redscript, TweakXL
- **MO2 Notes:** Extract to game root. Configure via Mod Settings. Reload save after changes. Metro station terminals enabled by default; all others disabled.
- **Performance:** None

---

## Add-ons — NCI District Mods

These are companion mods for **Night City Interactions - Core** that add social drinking spots with romance partners in each district. Each requires NCI Core and is compatible with all others.

### NCI - Watson

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/14804>
- **Summary:** Partner drinks at Tom's Diner, Lizzie's Bar, and Afterlife. Solo drink spots included.
- **MO2 Notes:** Extract to game root. Requires NCI Core.

### NCI - Westbrook

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/14805>
- **Summary:** Partner drinks at Lele Park, Dark Matter, and Xiao Xiongma. Solo drink spots included.
- **MO2 Notes:** Extract to game root. Requires NCI Core.

### NCI - Heywood

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/14806>
- **Summary:** Partner drinks at Chubby Buffalo's, Dicky Twister, El Pinche Pollo, and El Coyote Cojo.
- **MO2 Notes:** Extract to game root. Requires NCI Core.

### NCI - Pacifica and Badlands

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/15138>
- **Summary:** Partner drinks at both Nomad Camps and Sunset Motel. Solo spots included.
- **MO2 Notes:** Extract to game root. Requires NCI Core.

### NCI - Santo Domingo

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/19005>
- **Summary:** Partner drinks at Buryger, Red Dirt, Kenmore Diner, the Market, PieZ, and Capitan Caliente.
- **MO2 Notes:** Extract to game root. Requires NCI Core.
