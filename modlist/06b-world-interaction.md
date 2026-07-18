# 06b - World Interaction

**Goal:** Make Night City's venues and spaces feel alive. Bar interactions,
environmental interactivity, world reactivity, and citizen behaviors that
turn static backdrops into lived-in locations.

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

### Immersive Road Crossing and Crashes

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/26131>
- **Version:** 1.4.2
- **Released:** 2025-12-08
- **Summary:** Increases traffic density and pedestrian responsiveness. Vehicles react more dynamically to gunfire, chases, and player actions. Pedestrians flee, dive for cover, and cross roads with realistic timing.
- **Why:** Night City's streets feel empty and unresponsive in vanilla. This turns street shootouts and high-speed chases into chaotic, dynamic encounters where traffic and pedestrians react believably.
- **Conflicts:** May conflict with other traffic-modifying mods
- **Dependencies:** RED4ext, redscript, Mod Settings (optional)
- **MO2 Notes:** Extract to game root. Tag as **Root**. Configure via Mod Settings if installed. Optional: install Impact Kill Looting Fix to avoid seeing loot despawn bugs from traffic accidents.
- **Performance:** Light (additional NPC traffic calculations)

### Immersive Bartenders

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/7203>
- **Version:** 2.0.3
- **Released:** 2025-07-19
- **Summary:** Adds animated drink-pouring interactions at all bartenders across Night City. Ordering a drink now shows the bartender actually making and serving it.
- **Why:** Vanilla bartenders are static vendor menus — you buy a drink and it appears in your inventory. This makes the city's bars feel alive with proper pour-and-serve animations for every bartender including Claire (Afterlife) and Mateo (Lizzie's).
- **Conflicts:** None known. Fully compatible with Night City Interactions.
- **Dependencies:** None (standalone)
- **MO2 Notes:** Extract to game root. Saves the drink cost and buff effects. Includes a fix for Claire's garage quest step. Available as REDmod version.
- **Performance:** None

### Pet Your Cat

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/6198>
- **Version:** 2.5.0
- **Released:** 2026-02-13
- **Summary:** Lets you pet the cats in V's apartments. Dogs too (in Dogtown).
  Works with all Apartment Cats mods and vanilla cats.
- **Why:** Cats are scattered across apartments and even appear in quests, but
  vanilla has no pet interaction. This adds the ability to reach out and connect
  with the game's animal companions — a small but meaningful immersion detail.
- **Conflicts:** Compatible with all Apartment Cats mods
- **Dependencies:** None (standalone)
- **MO2 Notes:** Extract to game root. Approach any cat and press the interaction prompt. Works with Nali, Elmo, Suzi, and all vanilla cats.
- **Performance:** None

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

### NCI - City Center

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/21018>
- **Version:** 2.0.0
- **Released:** 2025-08-06
- **Summary:** Partner drinks at 7th Hell, Empathy, Memorial Park Patio, Port Cafe, and Downtown greenhouse. Plus 3 solo drinking spots. v2.0 overhauled all dialogs with drinks/leaving on the bar and conversations on the partner.
- **Why:** Completes the NCI district coverage — City Center is the only remaining district without its own addon. Partners: Judy, Panam, River, Kerry. Alcohol-free toggle supported.
- **Conflicts:** Gigs may temporarily block specific drinking spots until fully completed (e.g. An Inconvenient Killer blocks 7th Hell).
- **Dependencies:** Night City Interactions - Core (5519)
- **MO2 Notes:** Extract to game root. Requires NCI Core already installed. Popup confirms activation. Uninstall safely when not within ~50m of a City Center location.
- **Performance:** None

---

## Night City Hangouts

These mods by The Digital Soul use the Native Interactions Framework to add interactive points (sit, lean, sleep, smoke) at key Night City venues. Each requires NIF and CET.

### NCH - Lizzie's Bar

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/21842>
- **Version:** 1.1
- **Released:** 2026-02-22
- **Summary:** Adds sit, lean, sleep, and smoke interactions throughout Lizzie's Bar. Works inside the Mox-operated BD club.
- **Why:** Modlist already includes Lizzie's Braindances — this adds physical interactivity to the same venue, making it a fully functional entertainment destination rather than a static backdrop.
- **Conflicts:** NPCs may occasionally block interactable areas when the bar is busy.
- **Dependencies:** Native Interactions Framework, CET. Recommends Lizzie's Braindances (already in modlist) and NCI Core (already in modlist).
- **MO2 Notes:** Extract to game root. Interactions placed via NIF in-game UI — no manual configuration needed.
- **Performance:** None

### NCH - Jig Jig Street

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/21730>
- **Version:** 2.0
- **Released:** 2026-02-22
- **Summary:** Adds sit, lean, sleep, and smoke interactions throughout Jig-Jig Street interiors and exteriors. v2.0 improved placement and interaction names.
- **Why:** Jig-Jig Street is Night City's red-light district but has no interactive elements in vanilla. Adding environmental interactions makes the area feel lived-in and explorable rather than a pass-through corridor.
- **Conflicts:** NPCs may block interactable areas at night when the district is most crowded.
- **Dependencies:** Native Interactions Framework, CET. Optional: Jig Jig Unleashed (16580) for tweaked version.
- **MO2 Notes:** Extract to game root. Two versions available: standard and tweaked (requires Jig Jig Unleashed).
- **Performance:** None

### NCH - Aldecaldo Camps

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/24211>
- **Version:** 1.0
- **Released:** 2025-09-13
- **Summary:** Adds sit, lean, sleep, and smoke interactions to both Aldecaldo camps (pre- and post-move). Compatible with Night City Interactions.
- **Why:** The Aldecaldo camps are central to Panam's romance arc and the Nomad storyline. Adding interactivity makes these locations feel like lived-in communities rather than quest backdrops, complementing Panam Romanced Enhanced.
- **Conflicts:** NPCs may block interactable areas.
- **Dependencies:** Native Interactions Framework, CET. Recommends NCI Core (already in modlist).
- **MO2 Notes:** Extract to game root. Compatible with Night City Interactions — NCI handles camp visits separately.
- **Performance:** None

### NCH - 7th Hell Club

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/27752>
- **Version:** 1.0
- **Released:** 2026-02-22
- **Summary:** Adds sit, lean, and smoke interactions to the 7th Hell Club — a small nightclub featured in character hangouts and NCI City Center partner drinks.
- **Why:** 7th Hell is referenced by multiple mods already in the modlist (Dance Off, NCI City Center). Adding physical interactivity to this shared venue ties those systems together.
- **Conflicts:** NPCs may block interactable areas, especially when the club is most crowded.
- **Dependencies:** Native Interactions Framework, CET.
- **MO2 Notes:** Extract to game root. Pairs well with Dance Off and NCI City Center for a complete 7th Hell experience.
- **Performance:** None

---

---

## Install Order

All mods are **Root**-category — enable Root Builder in MO2 before installing.

1. Night City Interactions - Core
2. Simple Flashlight
3. Immersive Road Crossing and Crashes
4. Immersive Bartenders
5. Pet Your Cat
6. NCI - Watson
7. NCI - Westbrook
8. NCI - Heywood
9. NCI - Pacifica and Badlands
10. NCI - Santo Domingo
11. NCI - City Center
12. NCH - Lizzie's Bar
13. NCH - Jig Jig Street
14. NCH - Aldecaldo Camps
15. NCH - 7th Hell Club