# Modernized UI

**MO2 Separators:** `UI - Framework & HUD`, `UI - Inventory & Items`, `UI - Map, Dialogue, Menus`

All mods in this section belong to one of the three UI separators as noted per subsection.

---

## UI Framework Prerequisites
The base menu and interface framework the rest of the UI stack builds on.

### Baseline

| Mod                                                | Description                                                                                                        | Nexus                                                               |
|----------------------------------------------------|--------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| SkyUI                                              | Non-negotiable baseline.                                                                                           | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/12604)  |
| Oathvein UI                                        | Locked visual direction. Grim-dark presentation matches the project tone; cleaner dependency chain than Norden UI. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/160916) |
| UIExtensions                                       | Support infrastructure, not competing UI identity.                                                                 | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/17561)  |
| Constructible Object Custom Keyword System (COCKS) | Crafting-menu category infrastructure.                                                                             | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/81409)  |
| MCM Helper                                         | Persists MCM settings across saves. Hard dependency of TDM, CNO, and others.                                       | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/53000)  |
| Stay At The System Page NG                         | Keeps System page open after loading a save. Most noticeable on gamepad.                                           | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/76927)  |
| ImGui Icons                                        | Icon font resource for ImGui-based mods (Dialogue History, etc.).                                                  | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/114790) |

### Alternatives

| Mod        | Description                                                                            | Nexus                                                               |
|------------|----------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| Norden UI  | Modern-rustic by Nithog, but depends on Extended UI (no official SE port).             | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/166086) |
| Vel'dun UI | Dunmer-themed by Nithog; too narrow a fit for Elder Wilds.                             | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/176230) |
| Prisma UI  | Web-UI framework replacing SkyUI. Incompatible with Oathvein UI and UIExtensions mods. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/148718) |
| SKSE Menu Framework | Low-level menu framework for SKSE-based UI mods. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/120352) |

---

## HUD Overhaul
Health, stamina, magicka, target readability, and permanent interface structure during ordinary play.

### Baseline

| Mod                                                          | Description                                                                                                                    | Nexus                                                               |
|--------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| SkyHUD                                                       | Baseline layout framework: widget positioning, visibility, style consistency.                                                  | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/463)    |
| TrueHUD                                                      | Combat-feedback: actor info bars, boss bars, player widgets, recent-loot logging. Same author as TDM.                          | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/62775)  |
| Casting Bar                                                  | Cast/draw timing for spells, shouts, and bow draw.                                                                             | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/80455)  |
| Floating Damage                                              | Optional combat-feedback overlay. Install only after confirming acceptable visual noise.                                       | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/14332)  |
| QuickLoot IE                                                 | Container/corpse loot window on interact. Improved controller support, third-person readability. FOMOD with placement presets. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/120075) |
| Oxygen Meter 2                                               | Breath meter when underwater. Configurable position/opacity.                                                                   | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/64532)  |
| Oxygen Meter 2 - Lung Shaped                                 | Cosmetic lung-shaped icon.                                                                                                     | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/171910) |
| Oxygen Meter 2 - Fixes and Additions                         | Bugfixes and feature tweaks.                                                                                                   | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/171916) |
| Detection Meter                                              | Stealth detection meter. Pairs with RAID.                                                                                      | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/63057)  |
| Detection Meter - AE Support             | Required for 1.6.1170.                                                                                                         | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/77350)  |
| Casting Bar Reskin - Edge UI Inspired    | Cosmetic reskin of Casting Bar. Evaluate integration with Veldun UI's own casting bar (not in Elder Wilds stack).              | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/140826) |
| STB Widgets                                                  | Lightweight modular widgets (clock, time, compass-free direction, stat bars). SKSE + MCM.                                      | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/136148) |
| Follower Stats                                               | MCM-based follower stat tracking. Pairs with Nether's.                                                                         | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/159406) |
| Tween Menu Overhaul Improved                                 | Main-menu and loading-screen visual overhaul. Updated version with additional scenes.                                          | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/155036) |
| RUMINATE - Frost and Snow - Main Menu Video Pack             | Frost-and-snow themed main menu cinematic.                                                                                     | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/160831) |
| Skeuomorphism of Skyrim - Immersive Plaque Reading Interface | 3D in-world plaque model. Requires BOS. ESL-flagged.                                                                           | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/119849) |
| Dynamic Location Pop-ups                                     | Location discovery notification banner.                                                                                        | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/153122) |
| Complete Controller Setup                                    | SKSE-based controller config: remapping, radial-menus, camera profiles for gamepad.                                            | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/99978)  |

### Alternatives

| Mod                      | Description                                                           | Nexus                                                               |
|--------------------------|-----------------------------------------------------------------------|---------------------------------------------------------------------|
| Stats Tracker Menu - STM | Brand new (May 2026), very low community signal. Test before locking. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/180653) |
| Kill feed | Kill notification overlay. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/179053) |

---

## Inventory And Item Card Improvements
### Baseline

| Mod                                          | Description                                                                        | Nexus                                                               |
|----------------------------------------------|------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| moreHUD SE                                   | Mandatory. Broader item-information layer.                                         | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/12688)  |
| moreHUD Inventory Edition                    | Mandatory. Extends readability into inventory views.                               | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/18619)  |
| Inventory Interface Information Injector     | Value/weight/stat-per-weight columns. Same author as moreHUD.                      | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/85702)  |
| I4 Weapon Icons Overhaul                     | 30+ weapon category icons. Depends on III.                                         | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/106432) |
| I4 Armor Icons Overhaul                      |                                                                                    | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/119824) |
| I4 Shout Icons Overhaul                      |                                                                                    | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/107334) |
| The Handy Icon Collection Collective (THICC) | Thousands of high-fidelity icons. Additive to I4 family.                           | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/90508)  |
| Favorites Menu Effects Description           | Effect descriptions in favorites menu. SKSE plugin, no ESP. Essential for gamepad. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/143532) |
| B.O.O.B.I.E.S (aka Immersive Icons)          | Icon overhaul for SkyUI. 28K+ endorsements. FOMOD: 2K recommended.                 | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/89241)  |
| B.O.O.B.I.E.S - POTIONS                      | Dedicated potion bottle icons.                                                     | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/163838) |
| P.E.N.I.S. for B.O.O.B.I.E.S.                | Ingredient icon pack.                                                              | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/90526)  |
| A.S.S. for B.O.O.B.I.E.S.                    | Food & drink icon pack.                                                            | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/89823)  |
| Rotols More Icons                            | Additional coverage for items B.O.O.B.I.E.S doesn't cover.                         | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/113657) |

### Alternatives

| Mod                             | Description                                         | Nexus                                                               |
|---------------------------------|-----------------------------------------------------|---------------------------------------------------------------------|
| SkyUI Item Card Fixes           | Cleaner item-card presentation.                     | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/29116)  |
| Aura's Inventory Tweaks         | Stronger sorting and icon structure.                | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/68557)  |
| Weapon Stat Viewer V2           | Weapon-stat overlay. Lock only if rendered cleanly. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/127249) |
| Enchanted Icon Overhaul         | Depends on Dynamic Inventory Icon Injector.         | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/174246) |
| Dynamic Inventory Icon Injector |                                                     | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/174136) |
| Book 'Em                        | Book reading/collecting tracking UI.                | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/84213)  |

### Item Description Cards

Add descriptive text to inventory item cards for better readability. All by the same author, share a consistent style. Install as a set.

| Mod | Nexus |
|-----|-------|
| Weapons Have Description | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/116785) |
| Ingredients Have Description | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/129755) |
| Scrolls Have Descriptions | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/107202) |
| Soul Gems Have Description | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/118941) |
| Food and Drink Have Descriptions | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/107292) |

---

## Map Improvements
### Baseline

| Mod                                                                   | Description                                              | Nexus                                                               |
|-----------------------------------------------------------------------|----------------------------------------------------------|---------------------------------------------------------------------|
| Flat World Map Framework (FWMF)                                       | Non-negotiable map foundation.                           | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/29932)  |
| Local Map Upgrade                                                     | Local-map for interior/close-range navigation.           | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/129756) |
| HD Local Map                                                          | HD textures for the local map upgrade.                   | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/74722)  |
| Atlas Map Markers SE - Updated with MCM                               | Expanded map markers with MCM configuration.             | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/24104)  |
| Traditional (8K) Skyrim and Solstheim Paper Maps for FWMF (AE and SE) | High-fidelity paper-map replacer for FWMF.               | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/64493)  |
| Custom Map Markers for Traditional Skyrim and Solstheim Paper Maps    | Cosmetic map marker styling for the Traditional map set. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/64777)  |
| Updates to various maps for FWMF                                      | Coverage patches for additional FWMF worldspaces.        | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/84112)  |

### Alternatives

| Mod                                                   | Nexus                                                               |
|-------------------------------------------------------|---------------------------------------------------------------------|
| The Nightmare Paper Map for FWMF by Limon             | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/143113) |
| Skyrim and Solstheim Paper Maps by Mirhayasu for FWMF | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/53788)  |
| Immersive Paper Map (3rd Edition)                     | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/54710)  |
| Skyrim Paper Map by FreelanceCartography for FWMF     | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/78995)  |
| Legendary Map                                         | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/157397) |
| [Pastel Map Markers](https://www.nexusmods.com/skyrimspecialedition/mods/3195) | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/3195) |
| Wyrmstooth Paper Map for FWMF                        | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/124686) |
| Apocrypha Paper Map for FWMF                         | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/92774)  |
| Beyond Reach Paper Map for FWMF                      | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/119215) |
| Blackreach Paper Map for FWMF                        | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/53878)  |
| Soul Cairn Paper Map for FWMF                        | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/55387)  |

---

## Magic And Journal Improvements
### Baseline

| Mod                                              | Description                                                                                 | Nexus                                                               |
|--------------------------------------------------|---------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| Convenient Reading UI - SE                       | Reading comfort for normal play.                                                            | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/50202)  |
| Wider MCM Menu for SkyUI                         | Support fix for cramped config menus.                                                       | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/22825)  |
| Modern Wait Menu                                 | Clock-face interface showing time, weather preview. Gamepad-friendly. SKSE plugin, no ESP.  | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/117661) |
| Completionist - Skyrim Completion Tracker (NG)   | MCM-based quest/item/location/book/shout completion tracker. Run the Automated GUI Patcher. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/46358)  |
| Completionist Addons                             | Mod-added content tracking.                                                                 | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/112406) |
| Quest Journal Overhaul                           | Journal UI redesign with quest tracking improvements.                                       | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/172488) |
| Quest Journal Overhaul - Unofficial Mods Support | Extended mod support patch. Install after the main QJO.                                     | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/141837) |
| [Character Menu SE](https://www.nexusmods.com/skyrimspecialedition/mods/173074) | Character stats/sheet UI replacement. Alternative. | |
| [Character Menu SE - More Factions](https://www.nexusmods.com/skyrimspecialedition/mods/175026) | Additional faction tracking for Character Menu SE. | |
| [Even Better Quest Objectives SE](https://www.nexusmods.com/skyrimspecialedition/mods/159) | Quest objective text clarifications and journal improvements. Alternative. | |
| [Knotwork](https://www.nexusmods.com/skyrimspecialedition/mods/128235) | Custom quest journal knotwork art for non-vanilla questlines. Complements Quest Journal Overhaul. SKSE plugin. Alternative. | |

---

## Dialogue UI Improvements
### Baseline

| Mod                                    | Description                                               | Nexus                                                               |
|----------------------------------------|-----------------------------------------------------------|---------------------------------------------------------------------|
| Better Dialogue Controls               | First-pass dialogue friction fix.                         | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/1429)   |
| Better MessageBox Controls             | Same for message boxes.                                   | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/1428)   |
| Dialogue History                       | Scrollable dialogue log. Essential for gamepad.           | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/114238) |
| Improved Alternate Conversation Camera | Dialogue camera baseline. Test for CS letterbox conflict. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/68210)  |

### Alternatives

| Mod                                 | Description                                                                           | Nexus                                                               |
|-------------------------------------|---------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| Dialogue Interface ReShaped         | Visual dialogue flow.                                                                 | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/46546)  |
| Convenient Dialogue UI - SE         |                                                                                       | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/57943)  |
| Smart Talk (Dialogue Menu Enhancer) | Highlights quest options, reorders choices, gamepad-friendly skip. 5.5K endorsements. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/161500) |
| Various Dialogue Tags | Adds contextual tags to dialogue options (e.g., [Lie], [Persuade], [Ask]). ESL-flagged. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/103920) |
| Various Book Tags | Adds contextual tags to book-reading prompts. Same author as Various Dialogue Tags. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/151404) |
| Skyrim Autocorrect - Dialogue Grammar Fixes | Fixes grammar, spelling, and punctuation in vanilla dialogue. Text-only, no records. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/141632) |

---

## Controller-Friendly UI Support
### Baseline

| Mod                                | Description                                                                             | Nexus                                                               |
|------------------------------------|-----------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| Skyrim SE Controller Interface Fix |                                                                                         | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/1147)   |
| Show Player In Menus               | Renders player character in menus for gear previews. Essential for third-person parity. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/122648) |

### Alternatives

| Mod                          | Description                                 | Nexus                                                               |
|------------------------------|---------------------------------------------|---------------------------------------------------------------------|
| Gamepad Plus Plus            | Broader controller-input answer.            | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/27007)  |
| Wheeler - Quick Action Wheel | Radial interaction layer.                   | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/97345)  |
| WHEELER - Refined            | Updated visuals, better controller support. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/167380) |
| Auto Input Switch            | Automatically switches input device.        | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/54309)  |
| Show Player In Inventory     | Renders player model in inventory screen.   | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/178689) |

---

## UI Scaling For Ultrawide And High Resolution
| Mod                              | Description                                               | Nexus                                                             |
|----------------------------------|-----------------------------------------------------------|-------------------------------------------------------------------|
| Sovngarde - Mist's Font Replacer | Text readability for 16:9 4K HDR. Prefer Bold V8.9 first. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/386)  |
| Complete Widescreen Fix          | Secondary for ultrawide layouts.                          | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/1778) |

---

## Compass, Markers, And Minimal HUD
### Baseline

| Mod                                 | Description                                   | Nexus                                                              |
|-------------------------------------|-----------------------------------------------|--------------------------------------------------------------------|
| Compass Navigation Overhaul         | First-pass navigational layer.                | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/74484) |
| CoMAP - Common Marker Addon Project | Marker consistency across the FWMF ecosystem. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/56123) |

### Alternatives

| Mod                     | Description                                                                 | Nexus                                                              |
|-------------------------|-----------------------------------------------------------------------------|--------------------------------------------------------------------|
| Immersive HUD - iHUD SE | Minimal-HUD branch.                                                         | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/12440) |
| MiniMap                 | Very optional. Last updated May 2021; occasional crash reports on 1.6.1170. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/49490) |

---

## Crafting Menu Improvements
| Mod                           | Description                                                                         | Nexus                                                              |
|-------------------------------|-------------------------------------------------------------------------------------|--------------------------------------------------------------------|
| COCKS                         | See Framework Prerequisites above. Directly improves the Constructible Object Menu. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/81409) |
| SkyUI - Vanilla Crafting menu | Fallback for vanilla-style split categories.                                        | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/18717) |

---

## Loading Screens

### Baseline

| Mod | Description | Notes |
|-----|-------------|-------|
| [Lore-Friendly Load Screen Compendium (Loading Screens)](https://www.nexusmods.com/skyrimspecialedition/mods/138294) | Locked baseline. Lore-friendly loading screens with in-world art and text. Requires Improved Loading Screen Colors (61712) and SSE Display Tweaks (34705) for the load screen filter — both already in the stack. | By ChildofDragons. Install at 100% frequency to suppress vanilla tips. |

### Alternatives

| Mod | Description | Notes |
|-----|-------------|-------|
| [The Elder Scrolls Legends - Loading Screens](https://www.nexusmods.com/skyrimspecialedition/mods/37929) | 110 Legends card-art loading screens. Install at 100% frequency in 16:9 with Fixed Height border. | Previously locked baseline. Keep as known-good fallback. |

---

## Optional HUD
| Mod                                          | Description                                                                                                                                                         | Nexus                                                               |
|----------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| Skyrim Party Sheet - Follower and Player HUD | Persistent overlay for player attributes and follower info. v2.7 (June 2026). Research before installing — verify no conflicts with TrueHUD, Oathvein, or Nether's. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/167538) |

---

## Open Research

Open research for the UI stack is tracked in `TODO.md`.
