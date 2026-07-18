# 06 - Living World

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

### Dance Off

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/10615>
- **Version:** 1.1.0
- **Released:** 2024-12-22
- **Summary:** Adds the option to dance with romance partners at club dance floors. Judy, Panam, River, Kerry, Jackie, Reed, Alex, Johnny, and So Mi are all potential dance partners across Totentanz, Riot, Empathy, 7th Hell, and Heavy Hearts Club.
- **Why:** Clubs have dance floors but no partner dancing. This adds a meaningful social activity that complements the existing bar/drinking systems and strengthens partner relationships outside of quests and apartment hangouts.
- **Conflicts:** None. Fully compatible with Immersive Bartenders (shared logic prevents animation issues).
- **Dependencies:** ArchiveXL, RED4ext. Phantom Liberty optional (for Heavy Hearts Club, Reed/Alex/So Mi).
- **MO2 Notes:** Extract to game root. File goes to `archive/pc/mod/`. Visit any club dance floor, choose "Dance with someone," and select a partner. Movement (WASD) ends the dance.
- **Performance:** None

### Roller Coaster Enhanced

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/14617>
- **Version:** 1.1.3
- **Released:** 2026-03-31
- **Summary:** V can ride the Pacifica roller coaster with Songbird, Judy, Panam, or Kerry after repairing it. Partner messaging and waiting system with full date-style experience. Johnny returns for solo rides.
- **Why:** The Pacifica coaster is a memorable one-time quest moment. This makes it a repeatable activity with romance partners, adding a unique date option that rewards exploration. Updated for Tower/PL ending PONR.
- **Conflicts:** None known. River not supported (body type incompatible with coaster animations).
- **Dependencies:** ArchiveXL, Deceptious Quest Core, RED4ext. Phantom Liberty optional (for Songbird).
- **MO2 Notes:** Extract to game root. Activate by visiting H10 apartment once. Fix and ride the coaster first if not already repaired. Partner invites unlock after befriending/romancing them.
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

## Install Order

Main section mods are **Root**-category — enable Root Builder in MO2 before installing. NCI district addons require NCI Core.

1. Night City Interactions - Core
2. NCI - Watson
3. NCI - Westbrook
4. NCI - Heywood
5. NCI - Pacifica and Badlands
6. NCI - Santo Domingo
7. NCI - City Center
8. Metro System
9. Wannabe Edgerunner
10. Simple Flashlight
11. Limited Fast Travel
12. Dark Future - Urban Survival Gameplay
13. Eviction Notice - Story-Driven Rent System
14. Anti-Theft Measures
15. Immersive Road Crossing and Crashes
16. Immersive Bartenders
17. Dance Off
18. Roller Coaster Enhanced
19. Gambling Props - Poker Chips and Playing Cards
20. Playable Roulette - Gambling System
21. Perfect Vanilla - Playable Roulette Fix
22. Playable Blackjack - Gambling System
23. Playable Arcade Machines
24. Pet Your Cat
25. NCH - Lizzie's Bar
26. NCH - Jig Jig Street
27. NCH - Aldecaldo Camps
28. NCH - 7th Hell Club
29. Lizzie's Braindances
