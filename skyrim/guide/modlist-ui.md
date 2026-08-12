# Modernized UI

---

## UI Framework Prerequisites

The base menu and interface framework the rest of the UI stack builds on.

### Baseline

| Mod                                                                                                             | Description                                                                                                                                                                                                                |
|-----------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [SkyUI](https://www.nexusmods.com/skyrimspecialedition/mods/12604)                                              | Non-negotiable baseline.                                                                                                                                                                                                   |
| [Oathvein UI](https://www.nexusmods.com/skyrimspecialedition/mods/160916)                                       | Locked visual direction. Grim-dark presentation; cleaner dependency chain than Norden UI. Pre-reqs: STB Active Effects (140002) + Widescreen Scale Removed (136793) — rows below.                                          |
| [STB Active Effects](https://www.nexusmods.com/skyrimspecialedition/mods/140002)                                | Prerequisite of Oathvein UI. Replaces SkyUI active-effects HUD icons with a configurable widget (position, scale, time/magnitude, source grouping). Requires Address Library (→ `Foundations`) + SKSE Menu Framework.      |
| [Widescreen Scale Removed for 1.6.1130+](https://www.nexusmods.com/skyrimspecialedition/mods/136793)            | Hard requirement of Oathvein UI on AE 1.6.1130+ (list target 1.6.1170). Removes Bethesda's widescreen scaling so Oathvein SWFs render unsquished. Supersedes unsquish fixes — do not combine with Complete Widescreen Fix. |
| [SKSE Menu Framework](https://www.nexusmods.com/skyrimspecialedition/mods/120352)                               | Low-level menu framework for SKSE-based UI mods. Hard dependency of STB Active Effects (140002).                                                                                                                           |
| [Infinity UI](https://www.nexusmods.com/skyrimspecialedition/mods/74483)                                        | SWF patch-loading framework for menu/HUD element replacement. Hard prerequisite of Compass Navigation Overhaul (74484); also used by Local Map Upgrade (129756). Requires Address Library (→ `Foundations`).               |
| [UIExtensions](https://www.nexusmods.com/skyrimspecialedition/mods/17561)                                       | Support infrastructure, not competing UI identity.                                                                                                                                                                         |
| [Constructible Object Custom Keyword System (COCKS)](https://www.nexusmods.com/skyrimspecialedition/mods/81409) | Crafting-menu category infrastructure.                                                                                                                                                                                     |
| [MCM Helper](https://www.nexusmods.com/skyrimspecialedition/mods/53000)                                         | Persists MCM settings across saves. Hard dependency of TDM, CNO, and others.                                                                                                                                               |
| [Stay At The System Page NG](https://www.nexusmods.com/skyrimspecialedition/mods/76927)                         | Keeps System page open after loading a save. Most noticeable on gamepad.                                                                                                                                                   |
| [ImGui Icons](https://www.nexusmods.com/skyrimspecialedition/mods/114790)                                       | Icon font resource for ImGui-based mods (Dialogue History, etc.).                                                                                                                                                          |

---

## HUD Overhaul

Health, stamina, magicka, target readability, and permanent interface structure during ordinary play.

### Baseline

| Mod                                                                                                                        | Description                                                                                                                    |
|----------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------|
| [SkyHUD](https://www.nexusmods.com/skyrimspecialedition/mods/463)                                                          | Baseline layout framework: widget positioning, visibility, style consistency.                                                  |
| [TrueHUD](https://www.nexusmods.com/skyrimspecialedition/mods/62775)                                                       | Combat-feedback: actor info bars, boss bars, player widgets, recent-loot logging. Same author as TDM.                          |
| [Casting Bar](https://www.nexusmods.com/skyrimspecialedition/mods/80455)                                                   | Cast/draw timing for spells, shouts, and bow draw.                                                                             |
| [Floating Damage](https://www.nexusmods.com/skyrimspecialedition/mods/14332)                                               | Optional combat-feedback overlay. Install only after confirming acceptable visual noise.                                       |
| [QuickLoot IE](https://www.nexusmods.com/skyrimspecialedition/mods/120075)                                                 | Container/corpse loot window on interact. Improved controller support, third-person readability. FOMOD with placement presets. |
| [Oxygen Meter 2](https://www.nexusmods.com/skyrimspecialedition/mods/64532)                                                | Breath meter when underwater. Configurable position/opacity.                                                                   |
| [Oxygen Meter 2 - Lung Shaped](https://www.nexusmods.com/skyrimspecialedition/mods/171910)                                 | Cosmetic lung-shaped icon.                                                                                                     |
| [Oxygen Meter 2 - Fixes and Additions](https://www.nexusmods.com/skyrimspecialedition/mods/171916)                         | Bugfixes and feature tweaks.                                                                                                   |
| [Detection Meter](https://www.nexusmods.com/skyrimspecialedition/mods/63057)                                               | Stealth detection meter. Pairs with RAID.                                                                                      |
| [Detection Meter - AE Support](https://www.nexusmods.com/skyrimspecialedition/mods/77350)                                  | Required for 1.6.1170.                                                                                                         |
| [STB Widgets](https://www.nexusmods.com/skyrimspecialedition/mods/136148)                                                  | Lightweight modular widgets (clock, time, compass-free direction, stat bars). SKSE + MCM.                                      |
| [Follower Stats](https://www.nexusmods.com/skyrimspecialedition/mods/159406)                                               | MCM-based follower stat tracking. Pairs with Nether's.                                                                         |
| [Tween Menu Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/143275)                                          | Main-menu and loading-screen visual overhaul. Updated version with additional scenes.                                          |
| [RUMINATE - Frost and Snow - Main Menu Video Pack](https://www.nexusmods.com/skyrimspecialedition/mods/160831)             | Frost-and-snow themed main menu cinematic.                                                                                     |
| [Skeuomorphism of Skyrim - Immersive Plaque Reading Interface](https://www.nexusmods.com/skyrimspecialedition/mods/119849) | 3D in-world plaque model. Requires BOS. ESL-flagged.                                                                           |
| [Dynamic Location Pop-ups](https://www.nexusmods.com/skyrimspecialedition/mods/153122)                                     | Location discovery notification banner.                                                                                        |
| [Complete Controller Setup](https://www.nexusmods.com/skyrimspecialedition/mods/99978)                                     | SKSE-based controller config: remapping, radial-menus, camera profiles for gamepad.                                            |

### Alternatives

| Mod                                                                                    | Description                                      |
|----------------------------------------------------------------------------------------|--------------------------------------------------|
| [Stats Tracker Menu - STM](https://www.nexusmods.com/skyrimspecialedition/mods/180653) | Very low community signal — test before locking. |
| [Kill feed](https://www.nexusmods.com/skyrimspecialedition/mods/179053)                | Kill notification overlay.                       |

---

## Inventory And Item Card Improvements

### Baseline

| Mod                                                                                                       | Description                                                                        |
|-----------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------|
| [moreHUD SE](https://www.nexusmods.com/skyrimspecialedition/mods/12688)                                   | Mandatory. Broader item-information layer.                                         |
| [moreHUD Inventory Edition](https://www.nexusmods.com/skyrimspecialedition/mods/18619)                    | Mandatory. Extends readability into inventory views.                               |
| [Inventory Interface Information Injector](https://www.nexusmods.com/skyrimspecialedition/mods/85702)     | Value/weight/stat-per-weight columns. Same author as moreHUD.                      |
| [I4 Weapon Icons Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/106432)                    | 30+ weapon category icons. Depends on III.                                         |
| [I4 Armor Icons Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/119824)                     |                                                                                    |
| [I4 Shout Icons Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/107334)                     |                                                                                    |
| [The Handy Icon Collection Collective (THICC)](https://www.nexusmods.com/skyrimspecialedition/mods/90508) | Thousands of high-fidelity icons. Additive to I4 family.                           |
| [Favorites Menu Effects Description](https://www.nexusmods.com/skyrimspecialedition/mods/143532)          | Effect descriptions in favorites menu. SKSE plugin, no ESP. Essential for gamepad. |
| [B.O.O.B.I.E.S (aka Immersive Icons)](https://www.nexusmods.com/skyrimspecialedition/mods/89241)          | Icon overhaul for SkyUI. FOMOD: 2K recommended.                                    |
| [B.O.O.B.I.E.S - POTIONS](https://www.nexusmods.com/skyrimspecialedition/mods/163838)                     | Dedicated potion bottle icons.                                                     |
| [P.E.N.I.S. for B.O.O.B.I.E.S.](https://www.nexusmods.com/skyrimspecialedition/mods/90526)                | Ingredient icon pack.                                                              |
| [A.S.S. for B.O.O.B.I.E.S.](https://www.nexusmods.com/skyrimspecialedition/mods/89823)                    | Food & drink icon pack.                                                            |
| [Rotols More Icons](https://www.nexusmods.com/skyrimspecialedition/mods/113657)                           | Additional coverage for items B.O.O.B.I.E.S doesn't cover.                         |

### Alternatives

| Mod                                                                                           | Description                                         |
|-----------------------------------------------------------------------------------------------|-----------------------------------------------------|
| [SkyUI Item Card Fixes](https://www.nexusmods.com/skyrimspecialedition/mods/29116)            | Cleaner item-card presentation.                     |
| [Aura's Inventory Tweaks](https://www.nexusmods.com/skyrimspecialedition/mods/68557)          | Stronger sorting and icon structure.                |
| [Weapon Stat Viewer V2](https://www.nexusmods.com/skyrimspecialedition/mods/127249)           | Weapon-stat overlay. Lock only if rendered cleanly. |
| [Enchanted Icon Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/174246)         | Depends on Dynamic Inventory Icon Injector.         |
| [Dynamic Inventory Icon Injector](https://www.nexusmods.com/skyrimspecialedition/mods/174136) |                                                     |
| [Book 'Em](https://www.nexusmods.com/skyrimspecialedition/mods/84213)                         | Book reading/collecting tracking UI.                |

### Item Description Cards

Add descriptive text to inventory item cards for better readability. All by the same author, share a consistent style. Install as a set.

| Mod                                                                                            |
|------------------------------------------------------------------------------------------------|
| [Weapons Have Description](https://www.nexusmods.com/skyrimspecialedition/mods/116785)         |
| [Ingredients Have Description](https://www.nexusmods.com/skyrimspecialedition/mods/129755)     |
| [Scrolls Have Descriptions](https://www.nexusmods.com/skyrimspecialedition/mods/107202)        |
| [Soul Gems Have Description](https://www.nexusmods.com/skyrimspecialedition/mods/118941)       |
| [Food and Drink Have Descriptions](https://www.nexusmods.com/skyrimspecialedition/mods/107292) |

---

## Map Improvements

### Baseline

| Mod                                                                                                                                | Description                                              |
|------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------|
| [Flat World Map Framework (FWMF)](https://www.nexusmods.com/skyrimspecialedition/mods/29932)                                       | Non-negotiable map foundation.                           |
| [Local Map Upgrade](https://www.nexusmods.com/skyrimspecialedition/mods/129756)                                                    | Local-map for interior/close-range navigation.           |
| [HD Local Map](https://www.nexusmods.com/skyrimspecialedition/mods/74722)                                                          | HD textures for the local map upgrade.                   |
| [Atlas Map Markers SE - Updated with MCM](https://www.nexusmods.com/skyrimspecialedition/mods/24104)                               | Expanded map markers with MCM configuration.             |
| [Traditional (8K) Skyrim and Solstheim Paper Maps for FWMF (AE and SE)](https://www.nexusmods.com/skyrimspecialedition/mods/64493) | High-fidelity paper-map replacer for FWMF.               |
| [Custom Map Markers for Traditional Skyrim and Solstheim Paper Maps](https://www.nexusmods.com/skyrimspecialedition/mods/64777)    | Cosmetic map marker styling for the Traditional map set. |
| [Updates to various maps for FWMF](https://www.nexusmods.com/skyrimspecialedition/mods/84112)                                      | Coverage patches for additional FWMF worldspaces.        |

### Alternatives

| Mod                                                                                                                |
|--------------------------------------------------------------------------------------------------------------------|
| [The Nightmare Paper Map for FWMF by Limon](https://www.nexusmods.com/skyrimspecialedition/mods/143113)            |
| [Skyrim and Solstheim Paper Maps by Mirhayasu for FWMF](https://www.nexusmods.com/skyrimspecialedition/mods/53788) |
| [Immersive Paper Map (3rd Edition)](https://www.nexusmods.com/skyrimspecialedition/mods/54710)                     |
| [Skyrim Paper Map by FreelanceCartography for FWMF](https://www.nexusmods.com/skyrimspecialedition/mods/78995)     |
| [Legendary Map](https://www.nexusmods.com/skyrimspecialedition/mods/157397)                                        |
| [Pastel Map Markers](https://www.nexusmods.com/skyrimspecialedition/mods/3195)                                     |
| [Wyrmstooth Paper Map for FWMF](https://www.nexusmods.com/skyrimspecialedition/mods/124686)                        |
| [Apocrypha Paper Map for FWMF](https://www.nexusmods.com/skyrimspecialedition/mods/92774)                          |
| [Beyond Reach Paper Map for FWMF](https://www.nexusmods.com/skyrimspecialedition/mods/119215)                      |
| [Blackreach Paper Map for FWMF](https://www.nexusmods.com/skyrimspecialedition/mods/53878)                         |
| [Soul Cairn Paper Map for FWMF](https://www.nexusmods.com/skyrimspecialedition/mods/55387)                         |

---

## Magic And Journal Improvements

### Baseline

| Mod                                                                                                            | Description                                                                                 |
|----------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------|
| [Convenient Reading UI - SE](https://www.nexusmods.com/skyrimspecialedition/mods/50202)                        | Reading comfort for normal play.                                                            |
| [Wider MCM Menu for SkyUI](https://www.nexusmods.com/skyrimspecialedition/mods/22825)                          | Support fix for cramped config menus.                                                       |
| [Modern Wait Menu](https://www.nexusmods.com/skyrimspecialedition/mods/117661)                                 | Clock-face interface showing time, weather preview. Gamepad-friendly. SKSE plugin, no ESP.  |
| [Completionist - Skyrim Completion Tracker (NG)](https://www.nexusmods.com/skyrimspecialedition/mods/46358)    | MCM-based quest/item/location/book/shout completion tracker. Run the Automated GUI Patcher. |
| [Completionist Addons](https://www.nexusmods.com/skyrimspecialedition/mods/112406)                             | Mod-added content tracking.                                                                 |
| [Quest Journal Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/172488)                           | Journal UI redesign with quest tracking improvements.                                       |
| [Quest Journal Overhaul - Unofficial Mods Support](https://www.nexusmods.com/skyrimspecialedition/mods/141837) | Extended mod support patch. Install after the main QJO.                                     |
| [Character Menu SE](https://www.nexusmods.com/skyrimspecialedition/mods/173074) | Character stats/sheet UI replacement. Alternative. | |
| [Character Menu SE - More Factions](https://www.nexusmods.com/skyrimspecialedition/mods/175026) | Additional faction tracking for Character Menu SE. | |
| [Even Better Quest Objectives SE](https://www.nexusmods.com/skyrimspecialedition/mods/159) | Quest objective text clarifications and journal improvements. Alternative. | |
| [Knotwork](https://www.nexusmods.com/skyrimspecialedition/mods/128235) | Custom quest journal knotwork art for non-vanilla questlines. Complements Quest Journal Overhaul. SKSE plugin. Alternative. | |

---

## Dialogue UI Improvements

### Baseline

| Mod                                                                                                 | Description                                               |
|-----------------------------------------------------------------------------------------------------|-----------------------------------------------------------|
| [Better Dialogue Controls](https://www.nexusmods.com/skyrimspecialedition/mods/1429)                | First-pass dialogue friction fix.                         |
| [Better MessageBox Controls](https://www.nexusmods.com/skyrimspecialedition/mods/1428)              | Same for message boxes.                                   |
| [Dialogue History](https://www.nexusmods.com/skyrimspecialedition/mods/114238)                      | Scrollable dialogue log. Essential for gamepad.           |
| [Improved Alternate Conversation Camera](https://www.nexusmods.com/skyrimspecialedition/mods/68210) | Dialogue camera baseline. Test for CS letterbox conflict. |

### Alternatives

| Mod                                                                                                       | Description                                                                             |
|-----------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|
| [Dialogue Interface ReShaped](https://www.nexusmods.com/skyrimspecialedition/mods/46546)                  | Visual dialogue flow.                                                                   |
| [Convenient Dialogue UI - SE](https://www.nexusmods.com/skyrimspecialedition/mods/57943)                  |                                                                                         |
| [Smart Talk (Dialogue Menu Enhancer)](https://www.nexusmods.com/skyrimspecialedition/mods/161500)         | Highlights quest options, reorders choices, gamepad-friendly skip.                      |
| [Various Dialogue Tags](https://www.nexusmods.com/skyrimspecialedition/mods/103920)                       | Adds contextual tags to dialogue options (e.g., [Lie], [Persuade], [Ask]). ESL-flagged. |
| [Various Book Tags](https://www.nexusmods.com/skyrimspecialedition/mods/151404)                           | Adds contextual tags to book-reading prompts. Same author as Various Dialogue Tags.     |
| [Skyrim Autocorrect - Dialogue Grammar Fixes](https://www.nexusmods.com/skyrimspecialedition/mods/141632) | Fixes grammar, spelling, and punctuation in vanilla dialogue. Text-only, no records.    |

---

## Controller-Friendly UI Support

### Baseline

| Mod                                                                                            | Description                                                                             |
|------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|
| [Skyrim SE Controller Interface Fix](https://www.nexusmods.com/skyrimspecialedition/mods/1147) |                                                                                         |
| [Show Player In Menus](https://www.nexusmods.com/skyrimspecialedition/mods/122648)             | Renders player character in menus for gear previews. Essential for third-person parity. |

### Alternatives

| Mod                                                                                       | Description                                 |
|-------------------------------------------------------------------------------------------|---------------------------------------------|
| [Gamepad Plus Plus](https://www.nexusmods.com/skyrimspecialedition/mods/27007)            | Broader controller-input answer.            |
| [Wheeler - Quick Action Wheel](https://www.nexusmods.com/skyrimspecialedition/mods/97345) | Radial interaction layer.                   |
| [WHEELER - Refined](https://www.nexusmods.com/skyrimspecialedition/mods/167380)           | Updated visuals, better controller support. |
| [Auto Input Switch](https://www.nexusmods.com/skyrimspecialedition/mods/54309)            | Automatically switches input device.        |
| [Show Player In Inventory](https://www.nexusmods.com/skyrimspecialedition/mods/178689)    | Renders player model in inventory screen.   |

---

## UI Scaling For Ultrawide And High Resolution

| Mod                                                                                         | Description                                                                                                                                                 |
|---------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [Sovngarde - Mist's Font Replacer](https://www.nexusmods.com/skyrimspecialedition/mods/386) | Text readability for 16:9 4K HDR. Prefer Bold V8.9 first.                                                                                                   |
| [Complete Widescreen Fix](https://www.nexusmods.com/skyrimspecialedition/mods/1778)         | Secondary for ultrawide layouts. **Superseded by Widescreen Scale Removed (136793) — do not combine** (unsquish-fix class; author's compatibility warning). |

---

## Compass, Markers, And Minimal HUD

### Baseline

| Mod                                                                                              | Description                                   |
|--------------------------------------------------------------------------------------------------|-----------------------------------------------|
| [Compass Navigation Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/74484)         | First-pass navigational layer. Requires Infinity UI (74483) → `UI Framework Prerequisites`. |
| [CoMAP - Common Marker Addon Project](https://www.nexusmods.com/skyrimspecialedition/mods/56123) | Marker consistency across the FWMF ecosystem. |

### Alternatives

| Mod                                                                                  | Description                                                                 |
|--------------------------------------------------------------------------------------|-----------------------------------------------------------------------------|
| [Immersive HUD - iHUD SE](https://www.nexusmods.com/skyrimspecialedition/mods/12440) | Minimal-HUD branch.                                                         |
| [MiniMap](https://www.nexusmods.com/skyrimspecialedition/mods/49490)                 | Very optional. Last updated May 2021; occasional crash reports on 1.6.1170. |

---

## Crafting Menu Improvements

| Mod                                                                                        | Description                                  |
|--------------------------------------------------------------------------------------------|----------------------------------------------|
| [COCKS](https://www.nexusmods.com/skyrimspecialedition/mods/81409)                         | See Framework Prerequisites above.           |
| [SkyUI - Vanilla Crafting menu](https://www.nexusmods.com/skyrimspecialedition/mods/18717) | Fallback for vanilla-style split categories. |

---

## Loading Screens

### Baseline

| Mod                                                                                                                  | Description                                                                                                                                                                                                       | Notes                                                                  |
|----------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
| [Lore-Friendly Load Screen Compendium (Loading Screens)](https://www.nexusmods.com/skyrimspecialedition/mods/138294) | Locked baseline. Lore-friendly loading screens with in-world art and text. Requires Improved Loading Screen Colors (61712) and SSE Display Tweaks (34705) for the load screen filter — both already in the stack. | By ChildofDragons. Install at 100% frequency to suppress vanilla tips. |

### Alternatives

| Mod                                                                                                      | Description                                                                                       | Notes                |
|----------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------|----------------------|
| [The Elder Scrolls Legends - Loading Screens](https://www.nexusmods.com/skyrimspecialedition/mods/37929) | 110 Legends card-art loading screens. Install at 100% frequency in 16:9 with Fixed Height border. | Known-good fallback. |

---

## Optional HUD

| Mod                                                                                                        | Description                                                                                                                                       |
|------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------|
| [Skyrim Party Sheet - Follower and Player HUD](https://www.nexusmods.com/skyrimspecialedition/mods/167538) | Persistent overlay for player attributes and follower info. Research before installing — verify no conflicts with TrueHUD, Oathvein, or Nether's. |
