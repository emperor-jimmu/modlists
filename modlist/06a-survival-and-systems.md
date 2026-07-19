# 06a - Survival & Systems

**Goal:** Survival-lite mechanics, economic systems, transportation, and
world-scale systems that add friction, consequence, and meaningful choices
to daily life in Night City.

---

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

### Immersive Cyberware

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/21916>
- **Version:** 1.0.2
- **Released:** June 2025
- **Summary:** Adds visual effects and UI feedback to cyberware installation — screen glitches, distortion, and cyberware-specific HUD elements when installing new chrome.
- **Why:** Vanilla cyberware installation is a menu click with no ceremony. This makes getting chipped feel like the invasive, body-altering procedure it's supposed to be. Complements Cyberware-EX (#11077) — Immersive Cyberware handles visuals/feedback, Cyberware-EX handles slot expansion.
- **Conflicts:** None known. Compatible with Cyberware-EX (different systems).
- **Dependencies:** ArchiveXL, Codeware, RED4ext, redscript, TweakXL
- **MO2 Notes:** Extract to game root. Install after Cyberware-EX.
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
- **MO2 Notes:** Extract to game root. Configure via Mod Settings. For existing saves, run the setup command in CET console: `Game.DarkFutureSetup()`. Recommended: disable fast travel restrictions if using Limited Fast Travel.
- **Performance:** Light (HUD widgets for needs tracking)

### Drug Dealer

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/27800>
- **Version:** Verify
- **Released:** 2026
- **Summary:** DLC-sized mod adding a full drug dealing gameplay loop — source, process, and distribute illicit substances across Night City with risk/reward mechanics.
- **Why:** Night City is defined by its drug trade as much as its chrome. This adds a morally grey gameplay system that fits the survival-lite philosophy — high risk, high reward, with consequences for getting caught. Complements Dark Future's drug/trafficking systems.
- **Conflicts:** Check Dark Future (#16300) compatibility — may overlap on drug-related mechanics.
- **Dependencies:** ArchiveXL, Codeware. Optional: Audioware.
- **MO2 Notes:** Extract to game root. Verify balance settings before playing — ensure it's not a cheat money printer.
- **Performance:** None

### Eviction Notice - Story-Driven Rent System

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/23187>
- **Version:** 1.0.3
- **Released:** 2025-08-08
- **Summary:** Adds a fully-featured apartment rent system with recurring payments, late fees, and eviction consequences. Includes new characters to meet via text and lightweight quest content around housing.
- **Why:** Transforms apartments from a one-time purchase into an ongoing financial decision. Makes earning eddies meaningful beyond gear upgrades and creates natural downtime between missions. Story-driven approach fits the "no cheat" philosophy.
- **Conflicts:** None known
- **Dependencies:** ArchiveXL, Codeware, Mod Settings, RED4ext, redscript, TweakXL
- **MO2 Notes:** Extract to game root. Configure via Mod Settings. Rent is due every 7 in-game days by default (configurable). Supports all owned apartments.
- **Performance:** None

### Anti-Theft Measures

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/27229>
- **Version:** 2.1.1
- **Released:** 2026-01-31
- **Summary:** Stealing vehicles requires breaching the security system. Vehicles may have deflating tires, jammed brakes, tracking devices, and other anti-theft countermeasures that activate if you fail the breach.
- **Why:** Vanilla car theft is consequence-free — walk up to any vehicle and drive off. This adds a meaningful theft minigame and makes owned vehicles feel valuable. Pairs with Limited Fast Travel to make transportation choices matter.
- **Conflicts:** None known
- **Dependencies:** ArchiveXL, Codeware, Mod Settings, NightlyNow Core, RED4ext, redscript, TweakXL
- **MO2 Notes:** Extract to game root. Configure via Mod Settings. Optional Audioware recommended for audio feedback during breach attempts.
- **Performance:** None

### Immersive Meditations - Unmarked Locations

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/23336>
- **Version:** 4
- **Released:** 2025-08-01
- **Summary:** 49 meditation spots at scenic locations across Night City and the Badlands. Sit down, wait 17 seconds, and receive a Rested buff. Dark Future nerve recovery and Wannabe Edgerunner humanity support included.
- **Why:** Complements Dark Future's survival-lite mechanics — meditation provides a natural way to recover nerves without fast-traveling to an apartment. Wannabe Edgerunner Humanity adjustments are natively supported. Makes scenic locations worth seeking out.
- **Conflicts:** None known
- **Dependencies:** ArchiveXL, Codeware, Cyber Engine Tweaks, Native Interactions Framework, RED4ext, redscript. Dark Future (optional, for nerve recovery). Wannabe Edgerunner (optional, for Humanity).
- **MO2 Notes:** Extract to game root. v4 ensured Dark Future compatibility with latest update. v3 added 21+ new spots and Dogtown locations. 49 micro-zones total — mod does nothing until you stand at one.
- **Performance:** None

### Filthy Access Points

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/27698>
- **Version:** 1.2.1
- **Released:** 2026-02-24
- **Summary:** Jacking into access points now carries risk — chance of malware infection and a Personal Link Integrity system that degrades with each connection. Repair at ripperdocs (cost scales with damage), consume RAM Jolt for partial healing. Flatline at 0% integrity. Daemon Chain Immunity: completing minimum uploads grants temporary malware immunity.
- **Why:** Vanilla access point hacking is a consequence-free mini-game. This adds meaningful risk/reward — every access point becomes a decision rather than a reflex. Rippderdoc repair costs create an eddie sink. RAM Jolt consumption ties into the consumable economy. Fits the "add friction, not remove it" philosophy perfectly.
- **Conflicts:** Repair UI hint may overlap visually with Wannabe Edgerunner's cyberware page UI, but features work independently.
- **Dependencies:** ArchiveXL, Input Loader, Mod Settings, RED4ext, redscript
- **MO2 Notes:** Extract to game root. 100% customizable via Mod Settings. External API added in v1.2 for integration with future Netrunner mods. Recommended pairing: NC Courier Jobs (uses access points for data delivery jobs). Last updated June 2026.
- **Performance:** None

### Dedra's Truck Simulator (Convoy Job Delivery)

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/24102>
- **Version:** 3.0
- **Released:** 2025-09-01
- **Summary:** Convoy job delivery system with physical cargo, truck ownership, rank progression, and real-world time penalties. Drive to load points, transport cargo, and deliver across Night City and the Badlands. Includes 2 homebases, 33+ locations, and an unlockable new truck.
- **Why:** Adds a blue-collar job system that fits Night City's working-class culture. Physical cargo (v3.0+) makes deliveries tangible. Rank system and truck ownership provide progression. Configurable payouts — balanced, not a money cheat.
- **Conflicts:** None known
- **Dependencies:** ArchiveXL, Codeware, Cyber Engine Tweaks, Native Settings UI, RED4ext, redscript, TweakXL, Vehicle Pack - Utility (#4530)
- **MO2 Notes:** Extract to game root. v1.3 specifically patched for 2.31 compatibility. Cheat rank-up option is opt-in via CET command — not the default. Payment penalties for late deliveries based on real-world time. Delete old install folder before updating from v1.x to v2.0+.
- **Performance:** None

### Immersive Odometer and Fuel System

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/23834>
- **Version:** 4.7
- **Released:** September 2025
- **Summary:** Adds a realistic odometer, fuel consumption, and refueling system for all player vehicles. Fuel depletes with distance driven and must be replenished at gas stations.
- **Why:** Vehicles in vanilla Cyberpunk have infinite range with no operating costs. Adding fuel management creates meaningful vehicle ownership decisions — do you take the fast car that guzzles fuel, or the efficient commuter? Gas stations become functional locations, adding purpose to the world.
- **Conflicts:** None known. Compatible with Virtual Car Dealer and all vehicle mods.
- **Dependencies:** ArchiveXL, Codeware, RED4ext, redscript, TweakXL. Optional: Native Settings UI.
- **MO2 Notes:** Extract to game root. Configure fuel consumption rate and odometer units via Native Settings UI. Refuel at any gas station.
- **Performance:** None

### NC Courier Jobs

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/25551>
- **Version:** 3.3
- **Released:** 2025-12-01
- **Summary:** Courier and data delivery job system. Pick up packages or data, deliver them across Night City. Uses existing netrunner chairs and dataports. XP and street cred rewards scale with character level and job distance. Customizable payouts.
- **Why:** Complements the living world economy with an honest-work income stream. Uses existing world objects (netrunner chairs, dataports) — makes infrastructure that already exists feel purposeful. Player XP/street cred integration means courier work is a viable alternative to combat grinding.
- **Conflicts:** None known
- **Dependencies:** ArchiveXL, Browser Extension, Codeware, Cyber Engine Tweaks, Native Interactions Framework, redscript, Phantom Liberty. Recommended: Filthy Access Points (#27698), Audioware (#12001).
- **MO2 Notes:** Extract to game root. Built-in job and location editor for custom content. Payout multiplier configurable. Supports addon jobs/locations from other users.
- **Performance:** None

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/26131>
- **Version:** 1.4.2
- **Released:** 2025-12-08
- **Summary:** Increases traffic density and pedestrian responsiveness. Vehicles react more dynamically to gunfire, chases, and player actions. Pedestrians flee, dive for cover, and cross roads with realistic timing.
- **Why:** Night City's streets feel empty and unresponsive in vanilla. This turns street shootouts and high-speed chases into chaotic, dynamic encounters where traffic and pedestrians react believably.
- **Conflicts:** May conflict with other traffic-modifying mods
- **Dependencies:** RED4ext, redscript, Mod Settings (optional)
- **MO2 Notes:** Extract to game root. Configure via Mod Settings if installed. Optional: install Impact Kill Looting Fix to avoid seeing loot despawn bugs from traffic accidents.
- **Performance:** Light (additional NPC traffic calculations)

---

### 1st Night City Bank

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/29412>
- **Version:** 1.6
- **Released:** 2026-05-04
- **Summary:** Full in-game banking system — deposit, withdraw, and take loans with daily compound interest. Loan system with trauma team asset recovery on default. Fraud detection, bankruptcy, push notifications, and biometric authentication.
- **Why:** Adds meaningful economic depth to Night City. Loans create risk/reward decisions — borrow for chrome but face escalating consequences on missed payments. The 3-day demand period and trauma team recovery prevent loans from being a cheat mechanic. Complements Eviction Notice and Dark Future for a complete survival-economy layer.
- **Conflicts:** None known
- **Dependencies:** Calendar (#30331), Redscript Configuration Framework (#30726), Codeware, redscript. Previous versions required Mod Settings (migrated in v1.6).
- **MO2 Notes:** Extract to game root. Configure via Redscript Configuration Framework. Yield-based taxation on interest. Drop Box ATM add-on available for physical banking interactions. Install after Calendar and Redscript Configuration Framework.
- **Performance:** None

### Stock Market and News System

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/6319>
- **Version:** 1.4
- **Released:** 2024-02-28
- **Summary:** Fully usable stock market system that dynamically reacts to quests and player actions. Also adds a news system showing articles based on quest progress and player choices. 33 corporate stocks with prices that shift based on game events.
- **Why:** One of the most iconic missing features from the E3 demos — a living, breathing corporate economy that responds to your actions. Destroy a Militech convoy and their stock drops; help Arasaka and their value rises. Creates a new layer of consequence awareness where your choices affect the market. 7,000+ endorsements, by the creator of RadioExt.
- **Conflicts:** None known
- **Dependencies:** Cyber Engine Tweaks
- **MO2 Notes:** Extract to game root. Stock market accessible via computer terminal or phone browser. Prices update dynamically based on quest completion and world events. Compatible with E3 Smart Windows for visual apartment integration.
- **Performance:** None

## Install Order

1. Metro System
2. Wannabe Edgerunner - A simple Cyberpsychosis mod
3. Immersive Cyberware
4. Limited Fast Travel
5. Dark Future - Urban Survival Gameplay
6. Drug Dealer
7. Eviction Notice - Story-Driven Rent System
8. 1st Night City Bank
9. Stock Market and News System
10. Anti-Theft Measures
11. Immersive Meditations - Unmarked Locations
12. Filthy Access Points
13. Dedra's Truck Simulator (Convoy Job Delivery)
14. Immersive Odometer and Fuel System
15. NC Courier Jobs