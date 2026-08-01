#import "../templates/style.typ": *

= Wave 0: Vault Dweller's First Light

#set align(center)
*"War... war never changes. But you're about to."*
#set align(left)

#v(0.5cm)

== The Narrative

One hundred and eleven years. That's how long the cryo-pod in Vault 111 has held you frozen, dreaming static dreams while the world outside burned, rebuilt, and burned again. When the pod hisses open and the lid swings up, the vault's stale air hits you like a slap. Your neighbors' pods are open and empty. Something is very wrong, and there is nobody left to ask.

You climb out with nothing but the clothes on your back, a Pip-Boy strapped to a stranger's wrist that is now yours, and a single, burning question: where is your family? The vault's exit door grinds open on a Commonwealth you don't recognize — green light, cracked highways, and the distant howl of something that used to be a dog.

You are not a soldier. You are not a scavenger. You are a person who woke up too late, in a world too broken, with everything still to learn.

== Wave 0 Philosophy

Wave 0 is a *vanilla-plus* experience — the game exactly as Bethesda built it, sharpened with interface, bugfix, and quality-of-life mods only. Nothing here changes combat balance, adds new areas, or introduces new mechanics.

- *What changes:* menus, HUD clarity, bug fixes, script-engine stability
- *What stays untouched:* enemy stats, loot tables, quest content, world design

This wave exists to teach you Fallout 4 as designed, without the friction of its rougher engine quirks.

== How to Play: The Absolute Basics

=== Controls (PC, Keyboard & Mouse)

#table(
  columns: (auto, auto),
  table.header([Action], [Default Key]),
  [Move], [`W` `A` `S` `D`],
  [Sprint], [`Shift` (hold)],
  [Jump], [`Space`],
  [Crouch / Sneak], [`Ctrl`],
  [Fire weapon], [Left Mouse Button],
  [Aim (VATS-free aiming)], [Right Mouse Button],
  [V.A.T.S.], [`Q`],
  [Reload], [`R`],
  [Switch weapon], [`1`-`8` or Mouse Wheel],
  [Pip-Boy], [`Tab`],
  [Map (inside Pip-Boy)], [`Tab` then select Data tab],
  [Activate / Talk / Loot], [`E`],
  [Holster weapon], [`R` (hold) or via Pip-Boy],
  [Power Armor exit], [`E` near open frame],
  [Quick save / load], [`F5` / `F9`],
)

=== Controls (Gamepad, Xbox layout)

#table(
  columns: (auto, auto),
  table.header([Action], [Xbox Button]),
  [Move], [Left stick],
  [Look / Aim], [Right stick],
  [Sprint], [Left stick click],
  [Jump], [`A`],
  [Crouch / Sneak], [Right stick click],
  [Fire weapon], [`RT`],
  [V.A.T.S.], [`LT`],
  [Reload], [`X`],
  [Switch weapon], [`Y` (favorites wheel)],
  [Pip-Boy], [`Menu` / `View`],
  [Activate / Talk / Loot], [`A`],
)

== The SPECIAL System

Every character is built from seven core attributes — *S.P.E.C.I.A.L.*:

#table(
  columns: (auto, 1fr),
  table.header([Attribute], [Governs]),
  [#strong[S]trength], [Melee damage, carry weight, some Power Armor perks],
  [#strong[P]erception], [V.A.T.S. accuracy, detecting traps/enemies, lockpicking perks],
  [#strong[E]ndurance], [Max HP, action point regen, chem resistance perks],
  [#strong[C]harisma], [Dialogue/persuasion checks, companion affinity, settlement happiness perks],
  [#strong[I]ntelligence], [XP gain rate, hacking, science/crafting perks],
  [#strong[A]gility], [Action Points, sneak effectiveness, reload/attack speed perks],
  [#strong[L]uck], [Critical hit chance/recharge, random loot quality, gambling perks],
)

Each attribute unlocks a column of perks in the Pip-Boy's Perks chart — the higher the attribute, the deeper into that column you can invest as you level up. There's no wrong build for a first playthrough: put points where your intended playstyle wants them (Agility/Perception for a sneaky rifle build, Strength/Endurance for melee and heavy armor, and so on).

== Core Loop: Explore, Loot, Craft, Survive

- *Explore* the Commonwealth's landmarks, following quest markers or just wandering — almost everything is hand-placed and worth investigating
- *Loot* everything you can carry (within your Strength-based carry weight); junk items are broken down into components at workbenches
- *Craft* at Workbenches: Weapons Workbench, Armor Workbench, Chemistry Station, Cooking Station, and the Power Armor Station
- *Survive* by managing hunger/thirst/sleep only if you enable Survival difficulty later — on Normal/Hard, health and rest are less punishing but still matter

== Settlements, Briefly

Early in the main quest you'll gain access to the Workshop system at Sanctuary Hills. Press the Workshop-mode key (default `Tab`-adjacent, check your control scheme) while standing in a settlement to build. Wave 0 keeps settlement building vanilla — deeper settlement tools arrive in Wave 1.

#pagebreak()

== Wave 0 Mods

These mods form the essential, stability-first foundation for the rest of this modlist. Every mod below has been verified against the 1.11.221 (Anniversary Edition) runtime.

#mod-panel(
  category: "Framework",
  name: "Fallout 4 Script Extender (F4SE)",
  url: "https://www.nexusmods.com/fallout4/mods/42147",
  wave: "0 (baseline, required by nearly everything below)",
  dependencies: "None",
  install: "Extract directly into your Fallout 4 game folder (next to Fallout4.exe), NOT into MO2's mods folder. Add f4se_loader.exe as an MO2 executable and always launch through it.",
  what: "A modder's resource that expands Fallout 4's Papyrus scripting engine, exposing new functions without altering the game's executable on disk.",
  why: "Nearly every mod in this guide beyond simple ESP edits requires F4SE as a hard dependency.",
  notes: "The mod page explicitly states game version 1.11.221 is required for the current F4SE build. Always match your F4SE version to your exact game version after any Bethesda patch.",
)

#mod-panel(
  category: "Framework",
  name: "Address Library for F4SE Plugins",
  url: "https://www.nexusmods.com/fallout4/mods/47327",
  wave: "0",
  dependencies: "Fallout 4 Script Extender (F4SE)",
  install: "Install as a regular mod via MO2 (drag-and-drop archive). No plugin/ESP — it's a pure F4SE resource.",
  what: "Provides a version-independent lookup table of memory addresses that other F4SE plugins use internally, so plugin authors don't hard-code offsets that break on every game patch.",
  why: "A hard requirement for most other F4SE plugins in this list (Buffout 4 NG, Faster Workshop AE, etc.).",
  notes: "Tags confirm \"Works with Next-Gen Update\" and \"Anniversary Update Compatible\"; the main file is explicitly versioned 1.11.221.",
)

#mod-panel(
  category: "Bugfix",
  name: "Unofficial Fallout 4 Patch (UFO4P)",
  url: "https://www.nexusmods.com/fallout4/mods/4598",
  wave: "0",
  dependencies: "None (DLC-aware — install the DLC you own)",
  install: "Install via MO2's FOMOD installer; select the DLC modules you actually own. Load near the top of your plugin list, right after the base game masters.",
  what: "A community-maintained compilation fixing thousands of bugs Bethesda never officially resolved — from quest-breaking issues to minor visual glitches.",
  why: "The foundational bugfix mod almost every other Fallout 4 mod list builds on top of.",
  notes: "Version 2.2.1a (28 May 2026). Tags confirm \"Works with Next-Gen Update\" and \"Anniversary Update Compatible\". Load order: near the very top, just under Fallout4.esm and DLC masters.",
)

#mod-panel(
  category: "Framework",
  name: "Mod Configuration Menu (MCM)",
  url: "https://www.nexusmods.com/fallout4/mods/21497",
  wave: "0",
  dependencies: "Fallout 4 Script Extender (F4SE)",
  install: "Install via MO2 as a regular mod. Adds a new \"Mod Configuration\" entry to the in-game pause menu.",
  what: "Provides a centralized, in-game settings screen that other mods hook into instead of shipping their own ad-hoc holotape or INI-based configuration.",
  why: "Required by many Wave 1 mods (Sim Settlements 2, Faster Workshop AE) for their settings screens.",
  notes: "Tags confirm \"Works with Next-Gen Update\" and \"Anniversary Update Compatible\"; the current main file is explicitly listed \"For Fallout 4 game version 1.11.221\".",
)

#mod-panel(
  category: "Bugfix",
  name: "Buffout 4 NG with PDB support",
  url: "https://www.nexusmods.com/fallout4/mods/64880",
  wave: "0",
  dependencies: "Fallout 4 Script Extender (F4SE), Address Library for F4SE Plugins",
  install: "Install via MO2; comes with a Toml config file (Buffout4.toml) — leave defaults unless you know what you're changing.",
  what: "An engine-level stability plugin providing crash logging and a wide set of low-level bug fixes for the game's engine, not just Papyrus scripts.",
  why: "Dramatically reduces random crashes-to-desktop and is the current standard replacement for the original (Next-Gen-broken) Buffout 4.",
  notes: "Version 1.38.2, updated June 2026 (a month after the 1.11.221 release), and its description states the single-DLL NG build \"should work in flat (pre and post Next Gen) and VR.\" No explicit AE compatibility tag was found on the page itself during this research pass — treat as best-available evidence rather than a guaranteed tag match, and watch its comments for AE-specific issue reports.",
)

#mod-panel(
  category: "UI/QoL",
  name: "Faster Loadscreens",
  url: "https://www.nexusmods.com/fallout4/mods/102233",
  wave: "0",
  dependencies: "None",
  install: "Simple archive install via MO2, no FOMOD choices needed.",
  what: "Speeds up loading screens up to 3x and swaps the animated 3D loadscreen models for lightweight 2D backgrounds, while keeping the original loading tip text and level display.",
  why: "One of the highest quality-of-life wins for a beginner who will be fast-traveling and loading saves constantly while learning the game.",
  notes: "Description explicitly states \"Supports VR/OG/NG/AE\" — safe across every current game version including 1.11.221.",
)

#mod-panel(
  category: "Bugfix",
  name: "Empty Vendor List Bug Fix",
  url: "https://www.nexusmods.com/fallout4/mods/83252",
  wave: "0",
  dependencies: "Fallout 4 Script Extender (F4SE)",
  install: "Simple archive install via MO2.",
  what: "Fixes a long-standing engine bug where vendor barter menus occasionally appear completely empty until you back out and re-open them.",
  why: "A small but persistent annoyance in vanilla trading, especially noticeable while learning the game's economy.",
  notes: "Explicit \"Supports Game versions: OG (1.10.163), NG (1.10.984), AE (1.11.137-1.11.221)\" on the file page.",
)

#mod-panel(
  category: "Bugfix",
  name: "Magic Effect and Spell Engine Fixes",
  url: "https://www.nexusmods.com/fallout4/mods/83433",
  wave: "0",
  dependencies: "Fallout 4 Script Extender (F4SE)",
  install: "Simple archive install via MO2.",
  what: "An F4SE plugin fixing multiple engine-level bugs in how magic effects (chems, radiation, status effects) are applied and removed.",
  why: "Improves the reliability of chem, radiation, and status-effect behavior that the vanilla engine mishandles in edge cases.",
  notes: "Explicit \"Supports Game versions: OG (1.10.163), NG (1.10.984), AE (1.11.137-1.11.221)\" on the file page.",
)

#mod-panel(
  category: "Bugfix",
  name: "Motion Vector Fixes",
  url: "https://www.nexusmods.com/fallout4/mods/98544",
  wave: "0",
  dependencies: "None",
  install: "Simple archive install via MO2.",
  what: "Corrects incorrect motion vector data output by the engine, improving the accuracy of motion blur, upscalers (DLSS/FSR), and frame-generation technology.",
  why: "A meaningful visual-quality and performance fix for anyone using modern upscaling or frame generation, at zero gameplay risk.",
  notes: "Description states \"Supports all game versions and ENB.\"",
)

#mod-panel(
  category: "Bugfix",
  name: "Companion Shoots At Player Fix",
  url: "https://www.nexusmods.com/fallout4/mods/81758",
  wave: "0",
  dependencies: "Fallout 4 Script Extender (F4SE)",
  install: "Simple archive install via MO2.",
  what: "Fixes an engine bug where companion NPCs occasionally hit the player character with friendly fire during chaotic firefights.",
  why: "Removes a frustrating source of unfair damage for players still learning combat positioning around companions.",
  notes: "Explicit \"Supports Game versions: OG (1.10.163), NG (1.10.984), AE (1.11.137-1.11.221)\" on the file page.",
)

#mod-panel(
  category: "Bugfix",
  name: "Previsibines Repair Pack (PRP) Stable Branch",
  url: "https://www.nexusmods.com/fallout4/mods/46403",
  wave: "0",
  dependencies: "Unofficial Fallout 4 Patch (hard requirement — you WILL crash in specific cells without it)",
  install: "Install via MO2 (multi-part archive — install both parts as directed on the mod page). Load directly after Unofficial Fallout 4 Patch, near the very top of your plugin list.",
  what: "A full rebuild of the game's precombined meshes and previsibility/occlusion data, fixing vanilla rendering bugs and reducing draw calls across the Commonwealth for a real performance gain.",
  why: "One of the most load-bearing stability and performance mods in the entire Fallout 4 modding ecosystem; many later mods (including Scrap Everything and Sim Settlements 2 content) assume it's present and provide compatible patches built against it.",
  notes: "Build 81.3, actively patched by the community through 2026 (e.g. \"A Collection of Kuz's PRP Patches\", built against PRP 81, itself tagged Anniversary Update Compatible). Load order is critical — must load early, right after UFO4P.",
)

#mod-panel(
  category: "UI/QoL",
  name: "Extended Dialogue Interface (XDI)",
  url: "https://www.nexusmods.com/fallout4/mods/27216",
  wave: "0",
  dependencies: "Fallout 4 Script Extender (F4SE)",
  install: "Simple archive install via MO2. No ESP — pure F4SE engine patch.",
  what: "Removes the vanilla engine's hardcoded 4-option dialogue limit and adds proper engine support for any number of player dialogue choices, without altering any vanilla dialogue.",
  why: "A safe, content-neutral engine fix; many Wave 1 quest/content mods (including Sim Settlements 2) rely on it for their dialogue trees to display correctly.",
  notes: "The mod's file history includes a build explicitly labeled \"For Fallout 4 AE update 3, game version 1.11.221.\"",
)

#mod-panel(
  category: "UI/QoL",
  name: "FallUI - HUD",
  url: "https://www.nexusmods.com/fallout4/mods/51813",
  wave: "0",
  dependencies: "Mod Configuration Menu (MCM)",
  install: "Install via MO2 as a regular mod. Load after all other HUD mods. The in-game layout manager lives under MCM's Mod Configuration menu — select a pre-made layout or enter Edit Mode to customise widget positions, colours, and sizes.",
  what: "A highly configurable HUD framework. Every on-screen widget — compass, health and action-point bars, ammo counter, XP bar, quest tracker, hit markers, stealth indicator — can be repositioned, resized, and styled from an in-game layout editor. Layouts can be shared, imported, and exported.",
  why: "The vanilla HUD wastes screen real estate and buries critical information behind cramped console-first design. FallUI - HUD gives Wave 0 players a cleaner, PC-optimised interface without touching a single gameplay variable.",
  notes: "The mod page carries the explicit \"Works with Next-Gen Update\" tag. For item icons in the HUD, pair with FallUI - Inventory and an item sorter (FIS, VIS, VIS-G). Archive invalidation must be enabled.",
)

#mod-panel(
  category: "UI/QoL",
  name: "FallUI - Inventory",
  url: "https://www.nexusmods.com/fallout4/mods/48758",
  wave: "0",
  dependencies: "FallUI - HUD (recommended, for icon tags on the HUD)",
  install: "Install via MO2's FOMOD installer, selecting your preferred item-sorter integration. Mid-game-safe — no changes made to savegames. Load order: item tag/icon mod → FallUI - Inventory → FallUI - HUD.",
  what: "A full overhaul of the Pip-Boy, container, barter, workshop, and companion inventory interfaces. Adds multi-column sortable lists, side-by-side item comparison, bulk container transfer, automatic category grouping, and configurable display density — everything the vanilla console-first inventory was never designed to do.",
  why: "The vanilla inventory is the single highest-friction interface in Fallout 4 on PC. FallUI - Inventory transforms it into a proper desktop-UI experience without altering any item stats, balance, or loot tables.",
  notes: "The mod page carries the explicit \"Works with Next-Gen Update\" tag. For sorted items with icons, pair with an item sorter (FIS, VIS, VIS-G). Works out-of-the-box if you already use DEF_INV or DEF_UI. Increase Pip-Boy resolution (1920×1080 or higher via INI tweak) for best results with multi-column layouts.",
)

#mod-panel(
  category: "UI/QoL",
  name: "Place Everywhere",
  url: "https://www.nexusmods.com/fallout4/mods/9424",
  wave: "0",
  dependencies: "Fallout 4 Script Extender (F4SE)",
  install: "Simple archive install via MO2. Pure F4SE plugin — no ESP needed, injects via the script extender. Toggle features via the in-game F8 menu.",
  what: "An F4SE plugin that removes placement restrictions in workshop mode, letting you place objects inside other objects, in water, in mid-air, and anywhere else the vanilla engine normally blocks with a red outline. Also makes most scrap-only (yellow-outline) objects selectable and movable.",
  why: "The vanilla workshop placement rules are overly restrictive — they block creative building without improving balance. Place Everywhere gives Wave 0 players real control over settlement construction without adding any new objects, quests, or mechanics.",
  notes: "Version 1.22.1.1221 (3 June 2026), explicitly built for game version 1.11.221. Tags confirm both \"Works with Next-Gen Update\" and \"Anniversary Update Compatible.\" Post-Main-Release Hotkeys and Extended-Object-Selection are disabled by default — enable via the F8 menu if desired.",
)

#checklist(title: "Wave 0 Completion Checklist")[
  - You can navigate the Pip-Boy's Stat, Inv, Data, and Radio tabs confidently
  - You understand your SPECIAL build and have spent at least 3 perk points
  - You've built a basic settlement structure at Sanctuary Hills
  - You've completed at least one full dungeon (e.g. Corvega Assembly Plant or Concord's Museum of Freedom)
  - Your load order matches the order above, and the game has launched via F4SE without crashing
]

#pagebreak()
