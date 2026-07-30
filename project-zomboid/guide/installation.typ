#import "template.typ": *

= Installation & Troubleshooting

== Before You Begin

#warning[
  Mods can break your game. Back up saves before adding mods. Saves are at:
  `C:\Users\<YourName>\Zomboid\Saves`
]

#info[
  All mods in this guide are verified for Build 42.12.3. If you encounter issues, check Troubleshooting below.
]

== Installing Mods

=== Step 1: Subscribe on Steam Workshop

Each mod entry includes a clickable Steam Workshop link. Click it, then click the green *Subscribe* button. Steam downloads the mod automatically.

=== Step 2: Enable in Mod Manager

#list(
  [Launch Project Zomboid.],
  [Click *Mod Manager* on the main menu.],
  [Select your wave profile (or create one).],
  [Move mods from *Available* to *Enabled*.],
)

=== Step 3: Arrange Load Order

#list(
  [*Libraries and frameworks first* — modding APIs, script extenders, UI libraries.],
  [*Core overhauls* — major gameplay changes, profession systems.],
  [*Content mods* — items, weapons, vehicles, clothing.],
  [*Map mods* — new locations, map expansions.],
  [*Graphics and visual mods* — textures, models, animations.],
  [*UI mods* — interface improvements, panels, tooltips.],
  [*QoL mods* — minor tweaks and convenience features.],
  [*Compatibility patches* — mods that fix conflicts between other mods.],
  [*Overrides and tweaks* — mods that change specific behaviors (load last).],
)

#danger[
  Incorrect load order is the #1 cause of mod conflicts and crashes.
]

=== Step 4: Start a New Game

#warning[
  Most mods require a *new game*. Do not add mods mid-save unless the mod explicitly says save-compatible. Each wave is designed as a fresh start.
]

== Wave-Specific Load Order

=== Wave 0 (5 mods)
1. [B42] Mod Manager
2-5. UI/QoL mods (order flexible)

=== Wave 1 (99 mods)
1. [B42] Mod Manager
2. UI Framework (NeatUI Framework, Neat Rocco's UI)
3. that DAMN Library (Continued)
4. Professions & Traits
5. Content & Locations
6. Map & Navigation
7. Items & Equipment
8. Vehicles
9. Graphics
10. Visual & Environment (includes animations)
11. UI & Quality of Life (load last for UI overrides)

=== Wave 2 (62 mods)
1. [B42] Mod Manager
2. Frameworks & Libraries (Profession Framework, MDTF, Skill Recovery Journal, Distillery & Biofuel)
3. Survival Overhauls (Recipes of Death, Lifestyle, Temperature, Weather, Death Burden, Hygiene, Plumbing, Immersive Water/Blackout, Rats Mice, Exercise Gear)
4. Zombie Overhauls (Horde Night, Horde Filter, Thriller Time, Raining Zombies, Wake Them Up)
5. Realism Systems (Firearms Fix, Shoot Through Barricades, Water Pipes, PlumbingPlus, Burnt Ground, Propane, Realistic Weights, Adrenaline)
6. Professions & Traits (New Professions, Seinar's Extended, Survivor Contracts, Custom Start)
7. Crafting Expansions (Practice Crafting, Vehicle Restoration, Lanterns, Propane, Rain Barrel, Desensitized, Industrial Works, Food Preservation, Backpack Upgrades)
8. Maps & Locations (Bridge Detonation, Predators, Helicopter, Chimera)
9. Building & Base (Garage Doors, Repairable Windows)
10. Immersion & Atmosphere (Nuclear Protocol, Clothing, Armor, Hazmat, UI, Checklist, Weapons, Vehicle Repair, Headlights, Taillights, Stairs Alert, Danger Awareness)
11. Compatibility patches (if any)

== Troubleshooting

=== Game Won't Start (Black Screen / CTD)

#list(
  [Check for missing dependencies — Mod Manager shows red warnings.],
  [Verify load order. Move UI/QoL mods lower.],
  [Disable mods one by one to find the culprit.],
  [Verify game cache via Steam: Right-click PZ > Properties > Installed Files > Verify.],
)

=== Red Error Box

A red error box means Lua errors. Usually:
#list(
  [The mod is not B42 compatible.],
  [A dependency is missing or loading after the mod.],
  [Two mods are conflicting.],
)

=== Mods Not Showing in Game

#list(
  [Did you start a *new game*?],
  [Is the mod enabled in *Mod Manager* (not just the vanilla Mods screen)?],
  [Some mods require enabling in Sandbox settings — check the mod's Workshop page.],
)

=== Save Corrupted

#danger[
  Adding/removing mods from an existing save can corrupt it beyond repair. Always start a new game for a new wave. Back up saves before any mod changes.
]

=== Still Stuck?

Check the mod's Steam Workshop comments, search `r/projectzomboid`, or the official PZ Discord.
