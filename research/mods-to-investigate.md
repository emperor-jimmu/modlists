# Mods to Investigate

Candidates under evaluation for inclusion in the modlist. Each mod goes through:
`candidate` -> `testing` -> `approved` or `rejected`.

Rejected mods stay documented -- never deleted.

---

### Quickhack Hotkeys

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/7238>
- **Status:** candidate
- **Category:** UI & HUD
- **Pros:** Number-key quickhack selection and chaining support. Same author as Limited HUD, Stash Filters, etc.
- **Cons:** Heavier dependency chain (ArchiveXL, Input Loader, RED4ext, redscript, optional Mod Settings)
- **Alternatives:** Vanilla quickhack wheel
- **Notes:** v2.3.2, updated for patch 2.3. Evaluate whether quickhack hotkeys fit the "no cheat" philosophy or are pure QoL.

### Native Settings UI Side Menu Add-on

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/16218>
- **Status:** candidate
- **Category:** UI & HUD
- **Pros:** Adds a navigable side menu to Native Settings UI for easier mod list navigation.
- **Cons:** Requires Native Settings UI mod as additional dependency. Adds complexity to settings menu.
- **Alternatives:** Default Native Settings UI tab navigation
- **Notes:** v1.5.1. Evaluate if the modlist grows large enough to warrant this. Useful for heavy modlists.

### Informative Widgets

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/31261>
- **Status:** candidate
- **Category:** UI & HUD
- **Pros:** Unified HUD widget system showing core stats and mod-integrated data (Humanity, Toxicity, Bank Balance, etc.) in customizable panels.
- **Cons:** Very new (July 2026, only 16 endorsements). Heavy dependency chain. May overlap with other HUD mods.
- **Alternatives:** Informative Healthbar (same author, more focused), Limited HUD
- **Notes:** v1.1.3.1. Promising but needs more community validation. Integrates with Wannabe Edgerunner, SynthDose, Dark Future, Armor Up, and other mods.

### Wrist HUD - Minimal Watch and Compass

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/31097>
- **Status:** candidate
- **Category:** UI & HUD
- **Pros:** Immersive watch+compass that appears on looking down. No dependencies beyond CET.
- **Cons:** Very new (v1, 0 endorsements). Limited features. May conflict with Immersive First Person body visibility.
- **Alternatives:** In-game clock via menus, Limited HUD minimap
- **Notes:** v1. Nice concept for HUDless playthroughs. Needs testing for body-presence conflicts and stability.

### Let There Be Flight

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/5208>
- **Status:** candidate
- **Category:** Gameplay Overhaul (or Vehicles)
- **Pros:** Full flight system for all vehicles with thruster models, VFX, and sound. Multiple flight modes (Hover, Drone, Hybrid). Vehicle combat during flight. Very popular (16.7K endorsements).
- **Cons:** Heavy dependency chain. Still in development (v0.3.17, not 1.0). May conflict with Limited HUD temporarily per changelog. Last updated Aug 2025.
- **Alternatives:** Vanilla ground-only vehicles
- **Notes:** Transformational mod but may fit better in Vehicles section. Evaluate whether flight breaks intended map design / quest progression.

### Custom Level Cap

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/2909>
- **Status:** candidate
- **Category:** Gameplay Overhaul
- **Pros:** Change level cap and starting attribute points. Configurable via Native Settings UI.
- **Cons:** Tagged as "Cheating" on Nexus. No enemy scaling past 50. Last updated Feb 2022 (pre-2.0). May not work with 2.31.
- **Alternatives:** Vanilla level cap of 60 (with PL)
- **Notes:** Needs compatibility verification for 2.31. Evaluate whether raising level cap fits the "no cheat" philosophy — could enable full 20-all-attributes build, which may undermine build specialization.

### Reduced Loot

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/2678>
- **Status:** candidate
- **Category:** Living World
- **Pros:** Reduces the amount of junk loot and crafting materials from containers, making loot discoveries feel meaningful rather than clutter. Configurable via Mod Settings.
- **Cons:** Tagged as "Fair and balanced" but reduces loot availability — may conflict with economy balance from other mods.
- **Alternatives:** Smarter Scrapper (auto-disassemble junk), vanilla loot
- **Notes:** v2.1.1, by djkovrik (same author as many other mods in this list). Pairs with Smarter Scrapper for a complete loot cleanup solution. Evaluate whether reduced loot enhances RPG depth or creates scarcity frustration.

---

### Dark Future - Urban Survival Gameplay

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/16300>
- **Status:** approved
- **Category:** Living World (06)
- **Install:** Survival-lite needs system (Hydration, Nutrition, Energy, Anxiety). See `modlist/06-living-world.md`.

### Flesh and Chrome

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/27988>
- **Status:** approved
- **Category:** Gameplay Overhaul (05)
- **Install:** Fatigue/recovery stamina expansion. See `modlist/05-gameplay-overhaul.md`. Optional addon: Carry Overhaul (#28375).

### Eviction Notice - Story-Driven Rent System

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/23187>
- **Status:** approved
- **Category:** Living World (06)
- **Install:** Apartment rent system with characters and quests. See `modlist/06-living-world.md`.

### Combat Evolved

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/29125>
- **Status:** approved
- **Category:** Gameplay Overhaul (05)
- **Install:** Comprehensive enemy AI overhaul. See `modlist/05-gameplay-overhaul.md`.

### Immersive Fixers

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/15460>
- **Status:** approved
- **Category:** Quests & Stories (07)
- **Install:** Makes fixer introductions less abrupt. See `modlist/07-quests-and-stories.md`.

### They Will Remember

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/19747>
- **Status:** approved
- **Category:** Gameplay Overhaul (05)
- **Install:** Gang reputation/retaliation/disguise system. See `modlist/05-gameplay-overhaul.md`.

### Much Better Netrunning

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/27237>
- **Status:** approved
- **Category:** Gameplay Overhaul (05)
- **Install:** Dangerous/rewarding netrunning overhaul. See `modlist/05-gameplay-overhaul.md`.

### Dead Body Alert

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/26746>
- **Status:** approved
- **Category:** Gameplay Overhaul (05)
- **Install:** Enemies react to dead bodies. See `modlist/05-gameplay-overhaul.md`.

### Immersive Stealth Weapon

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/27149>
- **Status:** approved
- **Category:** Gameplay Overhaul (05)
- **Install:** Strategic stealth combat overhaul. See `modlist/05-gameplay-overhaul.md`.

### Immersive Healing

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/26281>
- **Status:** approved
- **Category:** Gameplay Overhaul (05)
- **Install:** Item-based healing overhaul. See `modlist/05-gameplay-overhaul.md`.

### Immersive Grenades

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/25334>
- **Status:** approved
- **Category:** Gameplay Overhaul (05)
- **Install:** Individual grenade items. See `modlist/05-gameplay-overhaul.md`.

### Immersive Throwables

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/25074>
- **Status:** approved
- **Category:** Gameplay Overhaul (05)
- **Install:** Thrown weapons drop at impact location. See `modlist/05-gameplay-overhaul.md`.

### Throwable Weapon Reworked

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/27255>
- **Status:** approved
- **Category:** Gameplay Overhaul (05)
- **Install:** Stamina-based throwable recovery. See `modlist/05-gameplay-overhaul.md`.

### Anti-Theft Measures

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/27229>
- **Status:** approved
- **Category:** Living World (06)
- **Install:** Vehicle security breach system. See `modlist/06-living-world.md`.

### Weapon Conditioning (Tier System Overhaul)

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/10479>
- **Status:** approved
- **Category:** Gameplay Overhaul (05)
- **Install:** Weapon degradation and repair. See `modlist/05-gameplay-overhaul.md`.

### Skillful Attributes

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/9281>
- **Status:** approved
- **Category:** Gameplay Overhaul (05)
- **Install:** Attribute progression via skill use. See `modlist/05-gameplay-overhaul.md`. Requires Skillful (#9309).

### Skillful

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/9309>
- **Status:** approved
- **Category:** Gameplay Overhaul (05)
- **Install:** EXP multipliers and perk/cyberware milestones. See `modlist/05-gameplay-overhaul.md`.

### Watch Your Back

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/27792>
- **Status:** approved
- **Category:** Gameplay Overhaul (05)
- **Install:** Ambusher encounter system. See `modlist/05-gameplay-overhaul.md`.

### Immersive Road Crossing and Crashes

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/26131>
- **Status:** approved
- **Category:** Living World (06)
- **Install:** Traffic/pedestrian behavior overhaul. See `modlist/06-living-world.md`.

### No More Limp Bollards (And Road Barriers)

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/26568>
- **Status:** approved
- **Category:** Bug Fixes (03)
- **Install:** Physics fix for roadside objects. See `modlist/03-bug-fixes.md`.

---
*Mods will be added here as they are discovered on Nexus Mods.*
