#import "../templates/style.typ": *

= Wave 1: Architect of the Commonwealth

#set align(center)
*"A settlement isn't just walls and a bed. It's a promise that tomorrow is worth building for."*
#set align(left)

#v(0.5cm)

== The Narrative

Months have passed since the vault door opened on a ruined world. You've learned to read the Commonwealth's dangers, to loot smart, to survive a firefight without panicking. Sanctuary Hills is no longer just a ruin with your name on the deed — it's the first real foothold you've built, and word is spreading.

Settlers are arriving on their own now, drawn by rumors of a place with working turrets and a roof that doesn't leak. The Minutemen general's coat you inherited feels a little less like someone else's uniform. You start noticing things you didn't before: a synth watching too closely from a doorway, a settlement's crops failing quietly, a trade caravan that never quite makes it through.

It's time to build something bigger than survival. It's time to build a home worth defending — and to start shaping the Commonwealth instead of just passing through it.

== Wave 1 Philosophy

Wave 1 keeps every Wave 0 mod active and adds *new content and new mechanics* — deeper settlement building, expanded crafting, and quality-of-life tools for managing a growing empire of settlements. Nothing here is a pure power spike: these mods add systems and options, not bigger numbers.

- *What's new:* settlement building depth, crafting/armor systems, workshop performance tools
- *What's still off the table:* god-mode items, all-knowing detection mods, cheat menus

== Strategy: Settlements as a System

By this point you should think of settlements less as decoration and more as a network:

- *Happiness* drives settler productivity and unlocks certain worker assignments — keep food, water, beds, and defense above the settlement's population count
- *Supply lines* (assign a settler as a Provisioner between two settlements) share workshop resources across your network, letting you build with materials stockpiled anywhere
- *Defense rating* should meaningfully exceed your threat level in the area, or you'll face costly raids
- *Local Leader* (Charisma perk) unlocks supply lines and a wider crafting recipe pool at the Chemistry/Cooking stations — a near-mandatory perk investment for this wave

== Deeper Crafting

With an Armor Workbench and the mods below, armor pieces can be broken down into more granular components, letting you mix-and-match cosmetic slots (e.g. wearing a hat under a helmet, or a coat under power armor) far more flexibly than the vanilla keyword system allows.

== Advanced Combat Notes

- Legendary enemies (marked with a star icon on their health bar) always drop a Legendary item — worth actively hunting once you're geared for the fight
- V.A.T.S. critical hits are banked via Luck-based critical charge; time your V.A.T.S. usage around a full charge meter for burst damage
- Power Armor consumes fusion cores continuously while worn and moving — always carry spares before a long expedition

#pagebreak()

== Wave 1 Mods

These mods build on every Wave 0 mod above. All have been verified against the 1.11.221 (Anniversary Edition) runtime.

#mod-panel(
  category: "Framework",
  name: "Workshop Framework",
  url: "https://www.nexusmods.com/fallout4/mods/35004",
  wave: "1",
  dependencies: "Fallout 4 Script Extender (F4SE)",
  install: "Install via MO2's FOMOD installer. Load directly after Unofficial Fallout 4 Patch, before any mod that requires it (Sim Settlements 2, Faster Workshop AE).",
  what: "Opens up the settlement/workshop system for the modding community — faster, more stable workshop scripts, and new resource types other mods can build on.",
  why: "The load-bearing framework for the settlement-focused mods in this wave; required by Sim Settlements 2.",
  notes: "Version 2.5.0, updated July 2026. Tag confirms \"Works with Next-Gen Update.\" No pure content changes on its own — it's infrastructure.",
)

#mod-panel(
  category: "Content",
  name: "Sim Settlements 2",
  url: "https://www.nexusmods.com/fallout4/mods/47976",
  wave: "1",
  dependencies: "Workshop Framework, Fallout 4 Script Extender (F4SE)",
  install: "Install the main file via MO2's FOMOD installer. Load after Workshop Framework and Unofficial Fallout 4 Patch. Start the associated quest from a radio signal once in-game to begin the tutorial.",
  what: "Adds an entirely new settlement-building layer: settlers construct and upgrade their own plots automatically based on templates you (or the community) design, plus an original questline explaining why settlements matter to the wider Commonwealth.",
  why: "Turns settlement building from a manual chore into an emergent system, and gives Wave 1's \"architect\" narrative real mechanical teeth without granting the player character any new combat power.",
  notes: "Version 3.6.1, updated July 2026. Tag confirms \"Anniversary Update Compatible\" (visible on the Chapter 3 sub-page for the same mod family). Very large download — the All Chapters Pack is several GB.",
)

#mod-panel(
  category: "Mechanics",
  name: "Scrap Everything",
  url: "https://www.nexusmods.com/fallout4/mods/5320",
  wave: "1",
  dependencies: "None",
  install: "Simple archive install via MO2. Load after Unofficial Fallout 4 Patch and any precombine/previs-related mods.",
  what: "Allows scrapping of static clutter, foliage, and structural pieces in settlements that are normally locked in place — grass, garbage piles, fences, entire pre-existing buildings.",
  why: "Gives real control over how a settlement looks and is laid out, which matters once you're building at the scale Sim Settlements 2 encourages.",
  notes: "Tag confirms \"Anniversary Update Compatible.\" Can affect precombined meshes in some cells; since Wave 0 already installs Previsibines Repair Pack (PRP), check for a location-specific PRP compatibility patch before reporting any visual glitch as broken.",
)

#mod-panel(
  category: "Mechanics",
  name: "Faster Workshop AE (F4SE)",
  url: "https://www.nexusmods.com/fallout4/mods/100532",
  wave: "1",
  dependencies: "Fallout 4 Script Extender (F4SE), Address Library for F4SE Plugins",
  install: "Simple archive install via MO2.",
  what: "An F4SE plugin that removes the artificial delay when entering/exiting Workshop build mode and speeds up the loading of build-menu categories.",
  why: "Sim Settlements 2 and Scrap Everything both make you spend far more time in Workshop mode than vanilla — this mod removes the friction of that increased time investment.",
  notes: "Explicit \"Supports the Anniversary Editions (1.11.137.0 and later)\" on the file page — directly covers 1.11.221.",
)

#mod-panel(
  category: "Content",
  name: "Armorsmith Extended",
  url: "https://www.nexusmods.com/fallout4/mods/2228",
  wave: "1",
  dependencies: "None (standalone as of v7.0; older versions required AWKCR — this list uses the standalone v7.0)",
  install: "Simple archive install via MO2's FOMOD installer. Load late in your plugin order, after any other armor/clothing content mods it might need to patch.",
  what: "Expands armor and clothing slot compatibility, letting you layer outfits, hats, glasses, and armor pieces in combinations the vanilla keyword system normally blocks — plus new crafting recipes for existing armor.",
  why: "Directly supports Wave 1's deeper-crafting focus: it does not add new stats or power, only more flexible ways to wear and craft what already exists.",
  notes: "Version 7.0, updated January 2026. Tags confirm \"Works with Next-Gen Update\" and \"Anniversary Update Compatible.\"",
)

#mod-panel(
  category: "Graphics",
  name: "Vivid Weathers - Fallout 4 Edition",
  url: "https://www.nexusmods.com/fallout4/mods/15466",
  wave: "1",
  dependencies: "None",
  install: "Install via MO2's FOMOD installer. Select your preferred colour palette and season preset during installation. Includes an in-game holotape (craftable at the Chemistry Station) for adjusting weather chances and colour temperature on the fly.",
  what: "A comprehensive weather and climate overhaul adding dozens of new weather types — volumetric fog, enhanced cloud systems, seasonal colour grading, and dynamic night-time darkness. Replaces the entire vanilla weather pool with a richer, more atmospheric palette of storm, fog, clear, and overcast conditions.",
  why: "The Commonwealth's visual identity is its strongest asset, yet the vanilla weather system cycles through a small pool of near-identical grey-skies conditions. Vivid Weathers replaces the game's visual backdrop without touching gameplay balance, loot tables, or combat.",
  notes: "The mod page carries the explicit \"Works with Next-Gen Update\" tag. If using an ENB preset, select the ENB-compatible installation option in the FOMOD and disable the mod's built-in depth-of-field. Load late in your plugin order — weather mods should win conflicts against any other mod touching exterior lighting or image-space records.",
)

#mod-panel(
  category: "Content",
  name: "America Rising 2 - Legacy of the Enclave",
  url: "https://www.nexusmods.com/fallout4/mods/75767",
  wave: "1",
  dependencies: "Extended Dialogue Interface (XDI)",
  install: "Install via MO2's FOMOD installer. Load after Sim Settlements 2 and any other large quest or content mods.",
  what: "A fully voiced, multi-mission questline that lets the player join — or oppose — a resurgent Enclave faction operating from a new worldspace. Adds new Enclave-themed NPCs, weapons, armour, a player-operable base, and branching story decisions that integrate with the vanilla main quest and faction system.",
  why: "The Enclave is Fallout's most iconic antagonist faction, and the vanilla game gives them almost no presence in the Commonwealth. America Rising 2 fills that gap with a questline that meshes mechanically with Wave 1's settlement-network narrative — the Enclave's industrial projects require a functioning supply chain of player settlements.",
  notes: "The mod page carries the explicit \"Works with Next-Gen Update\" tag and is actively patched through 2026. This mod adds to the vanilla main quest rather than replacing it — no alternative-start or faction-replacement mods are required.",
)

#mod-panel(
  category: "Content",
  name: "Homemaker - Expanded Settlements",
  url: "https://www.nexusmods.com/fallout4/mods/1478",
  wave: "1",
  dependencies: "All official DLC (Automatron, Wasteland Workshop, Far Harbor, Contraptions Workshop, Vault-Tec Workshop, Nuka-World)",
  install: "Install via MO2's FOMOD installer, selecting the DLC modules you own. Load after Scrap Everything in your plugin order.",
  what: "Adds over a thousand new buildable objects to the settlement Workshop menu — furniture sets, structural pieces, plantable foliage, decorative clutter, and modular building components inspired by pre-War, military, industrial, and wasteland architectural styles. Includes clean, restored, and weathered variants of most pieces.",
  why: "Sim Settlements 2 handles the macro-scale settlement automation — settlers building and upgrading their own plots. Homemaker handles the micro-scale, giving Wave 1's architect the full palette of buildable assets needed to make every settlement feel distinct and hand-crafted rather than a grid of identical SS2 plots.",
  notes: "The mod page carries both \"Works with Next-Gen Update\" and \"Anniversary Update Compatible\" tags. Version 1.79.6 (June 2025). Menu injection can add a few seconds of load time to the Workshop menu on first open per session — lighter than most equivalent content packs and well within tolerance with Faster Workshop AE active.",
)

#checklist(title: "Wave 1 Completion Checklist")[
  - You have Local Leader rank 2 and at least one active supply line between settlements
  - You've built or adopted a Sim Settlements 2 plot in at least two settlements
  - You've completed the Sim Settlements 2 introductory questline
  - Your settlement defense rating meaningfully exceeds the local threat level
  - You've crafted at least one layered outfit using Armorsmith Extended's expanded slots
]

#pagebreak()
