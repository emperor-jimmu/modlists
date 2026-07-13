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

### Dark Future - Urban Survival Gameplay

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/16300>
- **Version:** 2.0.3
- **Released:** 2026-01-19
- **Summary:** Fully-featured survival system with Basic Needs (Hydration, Nutrition, Energy), Anxiety, Addiction, and more. Adds temperature effects, fast travel restrictions, and survival-lite mechanics that integrate with the existing game systems.
- **Why:** Core survival layer that makes exploration, preparation, and resource management meaningful. Every food item, drink, and rest stop becomes a gameplay decision rather than set dressing. Complements Wannabe Edgerunner's Humanity system for a complete survival experience.
- **Conflicts:** None known. Compatible with Wannabe Edgerunner, Cyberware-EX. Dark Future Core is a streamlined subset — use full Dark Future for this modlist.
- **Dependencies:** ArchiveXL, Codeware, Input Loader, Mod Settings, RED4ext, redscript, TweakXL
- **MO2 Notes:** Extract to game root. Tag as **Root**. Configure via Mod Settings. For existing saves, run the setup command in CET console: `Game.DarkFutureSetup()`. Recommended: disable fast travel restrictions if using Limited Fast Travel.
- **Performance:** Light (HUD widgets for needs tracking)

### Eviction Notice - Story-Driven Rent System

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/23187>
- **Version:** 1.0.3
- **Released:** 2025-08-08
- **Summary:** Adds a fully-featured apartment rent system with recurring payments, late fees, and eviction consequences. Includes new characters to meet via text and lightweight quest content around housing.
- **Why:** Transforms apartments from a one-time purchase into an ongoing financial decision. Makes earning eddies meaningful beyond gear upgrades and creates natural downtime between missions. Story-driven approach fits the "no cheat" philosophy.
- **Conflicts:** None known
- **Dependencies:** ArchiveXL, Codeware, Mod Settings, RED4ext, redscript, TweakXL
- **MO2 Notes:** Extract to game root. Tag as **Root**. Configure via Mod Settings. Rent is due every 7 in-game days by default (configurable). Supports all owned apartments.
- **Performance:** None

### Anti-Theft Measures

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/27229>
- **Version:** 2.1.1
- **Released:** 2026-01-31
- **Summary:** Stealing vehicles requires breaching the security system. Vehicles may have deflating tires, jammed brakes, tracking devices, and other anti-theft countermeasures that activate if you fail the breach.
- **Why:** Vanilla car theft is consequence-free — walk up to any vehicle and drive off. This adds a meaningful theft minigame and makes owned vehicles feel valuable. Pairs with Limited Fast Travel to make transportation choices matter.
- **Conflicts:** None known
- **Dependencies:** ArchiveXL, Codeware, Mod Settings, NightlyNow Core, RED4ext, redscript, TweakXL
- **MO2 Notes:** Extract to game root. Tag as **Root**. Configure via Mod Settings. Optional Audioware recommended for audio feedback during breach attempts.
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

### Gambling Props - Poker Chips and Playing Cards

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/15229>
- **Version:** 1.0.0
- **Released:** 2024-07-01
- **Summary:** 3D model assets for poker chips and playing cards used by the Playable Roulette and Playable Blackjack gambling systems.
- **Why:** Required dependency for Playable Roulette and Playable Blackjack — provides the visual chip and card assets needed for the gambling UI animations.
- **Conflicts:** None known
- **Dependencies:** None (asset-only mod)
- **MO2 Notes:** Extract to game root. Install BEFORE Playable Roulette and Playable Blackjack. Asset-only — no configuration needed.
- **Performance:** None

### Playable Roulette - Gambling System

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/15450>
- **Version:** 1.1.3
- **Released:** 2026-06-13
- **Summary:** Adds fully playable roulette tables with animated wheel, ball physics, chip system, and immersive UI at locations including Ho-Oh Bar and Tyger Claws underground casino.
- **Why:** Night City has casinos and gambling dens that are purely decorative in vanilla. This makes them functional minigames, adding an immersive side activity and optional money sink that fits the "no cheat" philosophy (configurable bet limits).
- **Conflicts:** None known
- **Dependencies:** ArchiveXL, Codeware, Cyber Engine Tweaks, Gambling Props - Poker Chips and Playing Cards, RED4ext, TweakXL
- **MO2 Notes:** Extract to game root. Configure via CET overlay. Do NOT save/load during active play — chips will be lost. Install after Gambling Props. Phantom Liberty required for full sound effects.
- **Performance:** Light (CET-based UI only during play)

### Perfect Vanilla - Playable Roulette Fix

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/29866>
- **Version:** 1
- **Released:** 2026-05-21
- **Summary:** Over a dozen bug fixes for Playable Roulette: fixes wheel disappearing on save load, speeds up chip animation, caps max bet at 1,000, disables save-scumming in casino, and silences repetitive dealer dialogue.
- **Why:** Playable Roulette has several persistent bugs (vanishing wheel, slow chip handling, repetitive NPC dialogue) that detract from the experience. This fix mod resolves them all while adding vanilla-friendly polish like round-end notifications.
- **Conflicts:** Requires Playable Roulette (15450). Overwrites some of its files — install after.
- **Dependencies:** Same as Playable Roulette. Files overwrite the base mod's.
- **MO2 Notes:** Extract to game root, overwrite Playable Roulette files. Install AFTER Playable Roulette. Max bet capped at 1,000 eddies per round to prevent money farming.
- **Performance:** None

### Playable Blackjack - Gambling System

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/19575>
- **Version:** 1.1.4
- **Released:** 2025-12-11
- **Summary:** Adds playable blackjack with animated card dealing, randomized shuffles, chip management, and a live hand calculator. Located at Ho-Oh Bar in Kabuki.
- **Why:** Complements Playable Roulette with a second casino game. Blackjack with proper card mechanics gives players another immersive gambling option in Night City, reinforcing the living-world feel.
- **Conflicts:** Known conflict with Immersive First Person — disable via CET before sitting at the table.
- **Dependencies:** ArchiveXL, Codeware, Cyber Engine Tweaks, Gambling Props - Poker Chips and Playing Cards, Native Settings UI, RED4ext, TweakXL
- **MO2 Notes:** Extract to game root. Configure via Native Settings UI -> Mods. Do NOT save/load during active play. Install after Gambling Props.
- **Performance:** Light (CET-based UI only during play)

### Playable Arcade Machines

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/4213>
- **Version:** 1.4
- **Released:** 2024-02-15
- **Summary:** Makes arcade machines throughout Night City playable — approach and interact to play classic-style minigames.
- **Why:** Arcade machines are decorative set-dressing in vanilla despite being scattered across bars and apartments. Making them playable adds a fun downtime activity that fits Night City's cyberpunk aesthetic.
- **Conflicts:** None known
- **Dependencies:** Cyber Engine Tweaks
- **MO2 Notes:** Extract to game root. Configure via CET overlay. Approach any arcade machine and interact to play.
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

### Lizzie's Braindances

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/11077>
- **Version:** 1.67.1
- **Released:** 2023-11-27
- **Summary:** Adds a braindance viewing menu to Lizzie's Bar with characters
  and location selection. Fully integrated into the native quest system.
- **Why:** Lizzie's Bar is iconic as a BD club but has no functional braindances
  in vanilla. This restores the intended purpose of the venue, making it a real
  entertainment destination with immersive BD viewing.
- **Conflicts:** None known — built in native quest system, no file conflicts
- **Dependencies:** None (standalone — uses native game quest system)
- **MO2 Notes:**
    - Extract to game root. Tag as **Root**.
    - Access menu in Lizzie's Bar main room. Select performer and location.
    - Beta stage — limited character selection, more in future updates.
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

---

## Install Order

Main section mods are **Root**-category — enable Root Builder in MO2 before installing. NCI district addons require NCI Core.

1. Night City Interactions - Core
2. NCI - Watson
3. NCI - Westbrook
4. NCI - Heywood
5. NCI - Pacifica and Badlands
6. NCI - Santo Domingo
7. Metro System
8. Wannabe Edgerunner
9. Simple Flashlight
10. Limited Fast Travel
11. Dark Future - Urban Survival Gameplay
12. Eviction Notice - Story-Driven Rent System
13. Anti-Theft Measures
14. Immersive Road Crossing and Crashes
15. Immersive Bartenders
16. Gambling Props - Poker Chips and Playing Cards
17. Playable Roulette - Gambling System
18. Perfect Vanilla - Playable Roulette Fix
19. Playable Blackjack - Gambling System
20. Playable Arcade Machines
21. Pet Your Cat
22. Lizzie's Braindances
