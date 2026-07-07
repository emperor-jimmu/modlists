# Modernized UI

**MO2 Separators:** `UI - Framework & HUD`, `UI - Inventory & Items`, `UI - Map, Dialogue, Menus`

All mods in this section belong to one of the three UI separators as noted per subsection.

---

## UI Framework Prerequisites → separator: `UI - Framework & HUD`

The base menu and interface framework the rest of the UI stack builds on.

### Baseline
- **SkyUI** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/12604)) — Non-negotiable baseline.
- **Oathvein UI** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/160916)) — Locked visual direction. Grim-dark presentation matches the project tone; cleaner dependency chain than Norden UI.
- **UIExtensions** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/17561)) — Support infrastructure, not competing UI identity.
- **Constructible Object Custom Keyword System (COCKS)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/81409)) — Crafting-menu category infrastructure.
- **MCM Helper** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/53000)) — Persists MCM settings across saves. Hard dependency of TDM, CNO, and others.
- **Stay At The System Page NG** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/76927)) — Keeps System page open after loading a save. Most noticeable on gamepad.
- **ImGui Icons** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/114790)) — Icon font resource for ImGui-based mods (Dialogue History, etc.).

### Alternatives
- **Norden UI** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/166086)) — Modern-rustic by Nithog, but depends on Extended UI (no official SE port).
- **Vel'dun UI** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/176230)) — Dunmer-themed by Nithog; too narrow a fit for Elder Wilds.
- **Prisma UI** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/148718)) — Web-UI framework replacing SkyUI. Incompatible with Oathvein UI and UIExtensions mods.

---

## HUD Overhaul → separator: `UI - Framework & HUD`

Health, stamina, magicka, target readability, and permanent interface structure during ordinary play.

### Baseline
- **SkyHUD** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/463)) — Baseline layout framework: widget positioning, visibility, style consistency.
- **TrueHUD** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/62775)) — Combat-feedback: actor info bars, boss bars, player widgets, recent-loot logging. Same author as TDM.
- **Casting Bar** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/80455)) — Cast/draw timing for spells, shouts, and bow draw.
- **Floating Damage** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/14332)) — Optional combat-feedback overlay. Install only after confirming acceptable visual noise.
- **QuickLoot IE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/120075)) — Container/corpse loot window on interact. Improved controller support, third-person readability. FOMOD with placement presets.
- **Oxygen Meter 2** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/64532)) — Breath meter when underwater. Configurable position/opacity.
    - **Oxygen Meter 2 - Lung Shaped** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/171910)) — Cosmetic lung-shaped icon.
    - **Oxygen Meter 2 - Fixes and Additions** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/171916)) — Bugfixes and feature tweaks.
- **Detection Meter** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/63057)) — Stealth detection meter. Pairs with RAID.
    - **Detection Meter - AE Support** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/77350)) — Required for 1.6.1170.
- **STB Widgets** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/136148)) — Lightweight modular widgets (clock, time, compass-free direction, stat bars). SKSE + MCM.
- **Follower Stats** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/159406)) — MCM-based follower stat tracking. Pairs with Nether's.
- **Tween Menu Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/143275)) — Main-menu and loading-screen visual overhaul.
    - **Tween Menu Overhaul Improved** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/155036)) — Updated version with additional scenes. Install instead of original.
- **RUMINATE - Frost and Snow - Main Menu Video Pack** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/160831)) — Frost-and-snow themed main menu cinematic.
- **Skeuomorphism of Skyrim - Immersive Plaque Reading Interface** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/119849)) — 3D in-world plaque model. Requires BOS. ESL-flagged.
- **Dynamic Location Pop-ups** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/153122)) — Location discovery notification banner.
- **Complete Controller Setup** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/99978)) — SKSE-based controller config: remapping, radial-menus, camera profiles for gamepad.

### Alternatives
- **Stats Tracker Menu - STM** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/180653)) — Brand new (May 2026), very low community signal. Test before locking.

---

## Inventory And Item Card Improvements → separator: `UI - Inventory & Items`

### Baseline
- **moreHUD SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/12688)) — Mandatory. Broader item-information layer.
- **moreHUD Inventory Edition** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/18619)) — Mandatory. Extends readability into inventory views.
- **Inventory Interface Information Injector** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/85702)) — Value/weight/stat-per-weight columns. Same author as moreHUD.
- **I4 Weapon Icons Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/106432)) — 30+ weapon category icons. Depends on III.
- **I4 Armor Icons Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/119824))
- **I4 Shout Icons Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/107334))
- **The Handy Icon Collection Collective (THICC)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/90508)) — Thousands of high-fidelity icons. Additive to I4 family.
- **Favorites Menu Effects Description** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/143532)) — Effect descriptions in favorites menu. SKSE plugin, no ESP. Essential for gamepad.
- **B.O.O.B.I.E.S (aka Immersive Icons)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/89241)) — Icon overhaul for SkyUI. 28K+ endorsements. FOMOD: 2K recommended.
    - **B.O.O.B.I.E.S - POTIONS** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/163838)) — Dedicated potion bottle icons.
- **P.E.N.I.S. for B.O.O.B.I.E.S.** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/90526)) — Ingredient icon pack.
- **A.S.S. for B.O.O.B.I.E.S.** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/89823)) — Food & drink icon pack.
- **Rotols More Icons** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/113657)) — Additional coverage for items B.O.O.B.I.E.S doesn't cover.

### Alternatives
- **SkyUI Item Card Fixes** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/29116)) — Cleaner item-card presentation.
- **Aura's Inventory Tweaks** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/68557)) — Stronger sorting and icon structure.
- **Weapon Stat Viewer V2** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/127249)) — Weapon-stat overlay. Lock only if rendered cleanly.
- **Enchanted Icon Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/174246)) — Depends on Dynamic Inventory Icon Injector ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/174136)).

---

## Map Improvements → separator: `UI - Map, Dialogue, Menus`

### Baseline
- **Flat World Map Framework (FWMF)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/29932)) — Non-negotiable map foundation.
- **Local Map Upgrade** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/129756)) — Local-map for interior/close-range navigation.
- **Skyrim and Solstheim Paper Maps by Mirhayasu for FWMF** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/53788)) — Strongest first-pass paper-map art.

### Alternatives
- **Immersive Paper Map (3rd Edition)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/54710))
- **Skyrim Paper Map by FreelanceCartography for FWMF** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/78995))
- **Legendary Map** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/157397)) — Hand-painted world-map replacer.
- **HD Local Map** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/74722)) — Higher-res local map textures.

---

## Magic And Journal Improvements → separator: `UI - Map, Dialogue, Menus`

### Baseline
- **Convenient Reading UI - SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/50202)) — Reading comfort for normal play.
- **Wider MCM Menu for SkyUI** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/22825)) — Support fix for cramped config menus.
- **Modern Wait Menu** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/117661)) — Clock-face interface showing time, weather preview. Gamepad-friendly. SKSE plugin, no ESP.
- **Completionist - Skyrim Completion Tracker (NG)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/46358)) — MCM-based quest/item/location/book/shout completion tracker. Run the Automated GUI Patcher.
    - **Completionist Addons** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/112406)) — Mod-added content tracking.

---

## Dialogue UI Improvements → separator: `UI - Map, Dialogue, Menus`

### Baseline
- **Better Dialogue Controls** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/1429)) — First-pass dialogue friction fix.
- **Better MessageBox Controls** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/1428)) — Same for message boxes.
- **Dialogue History** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/114238)) — Scrollable dialogue log. Essential for gamepad.
- **Improved Alternate Conversation Camera** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/68210)) — Dialogue camera baseline. Test for CS letterbox conflict.

### Alternatives
- **Dialogue Interface ReShaped** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/46546)) — Visual dialogue flow.
- **Convenient Dialogue UI - SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/57943))
- **Smart Talk (Dialogue Menu Enhancer)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/161500)) — Highlights quest options, reorders choices, gamepad-friendly skip. 5.5K endorsements.

---

## Controller-Friendly UI Support → separator: `UI - Framework & HUD`

### Baseline
- **Skyrim SE Controller Interface Fix** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/1147))
- **Show Player In Menus** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/122648)) — Renders player character in menus for gear previews. Essential for third-person parity.

### Alternatives
- **Gamepad Plus Plus** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/27007)) — Broader controller-input answer.
- **Wheeler - Quick Action Wheel** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/97345)) — Radial interaction layer.
    - **WHEELER - Refined** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/167380)) — Updated visuals, better controller support.

---

## UI Scaling For Ultrawide And High Resolution → separator: `UI - Framework & HUD`

- **Sovngarde - Mist's Font Replacer** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/386)) — Text readability for 16:9 4K HDR. Prefer Bold V8.9 first.
- **Complete Widescreen Fix** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/1778)) — Secondary for ultrawide layouts.

---

## Compass, Markers, And Minimal HUD → separator: `UI - Framework & HUD`

### Baseline
- **Compass Navigation Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/74484)) — First-pass navigational layer.
- **CoMAP - Common Marker Addon Project** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/56123)) — Marker consistency across the FWMF ecosystem.

### Alternatives
- **Immersive HUD - iHUD SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/12440)) — Minimal-HUD branch.
- **MiniMap** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/49490)) — Very optional. Last updated May 2021; occasional crash reports on 1.6.1170.

---

## Crafting Menu Improvements → separator: `UI - Inventory & Items`

- **COCKS** — See Framework Prerequisites above. Directly improves the Constructible Object Menu.
- **SkyUI - Vanilla Crafting menu** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/18717)) — Fallback for vanilla-style split categories.

---

## Loading Screens → separator: `UI - Map, Dialogue, Menus`

- **The Elder Scrolls Legends - Loading Screens** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/37929)) — Locked baseline. 110 lore-friendly Legends artworks. Install at 100% frequency in 16:9 with Fixed Height border. At 100% frequency, vanilla lore tips are suppressed.

---

## Optional HUD → separator: `UI - Framework & HUD`

- **Skyrim Party Sheet - Follower and Player HUD** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/167538)) — Persistent overlay for player attributes and follower info. v2.7 (June 2026). Research before installing — verify no conflicts with TrueHUD, Oathvein, or Nether's.

---

## Candidate TODO Additions

### Framework & System UI → separator: `UI - Framework & HUD`
- `Character Menu SE` — character appearance menu enhancer
- `Kill feed` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/179053))
- `SKSE Menu Framework` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/120352))
- `Auto Input Switch` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/54309))

### Inventory → separator: `UI - Inventory & Items`
- `Unread books glow redone` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/138451))
- `Show Player In Inventory` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/178689))

### HUD, Map & Dialogue → separator: `UI - Map, Dialogue, Menus`
- `Pastel Map Markers`
- `Smart Talk (Dialogue Menu Enhancer)` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/171449))
- `Quest Journal Overhaul` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/172488))
- `Even Better Quest Objectives SE` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/159))
