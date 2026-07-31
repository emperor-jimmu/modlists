#import "../../lib.typ": mod-entry, warning

== Foundations & Bugfixes

#warning[
  This modlist requires *OpenStarbound* — an open-source fork of the Starbound engine.
  Download from #link("https://github.com/OpenStarbound/OpenStarbound/releases/latest")[github.com/OpenStarbound] and copy `packed.pak` from your Steam Starbound install before launching.
]

#mod-entry(
  name: "Starbound Patch Project",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1543219534",
  category: "Bugfix",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Community patch collection fixing hundreds of typos, incorrect item properties, texture issues, and rare crashes. Over a thousand bugs fixed. Safe to install or uninstall at any time.],
  install-notes: [Load near the top of your mod order, before content mods.],
)

#mod-entry(
  name: "Anter583's Utility Library",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2144215143",
  category: "Library",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Shared Lua library used by several mods in this list. No gameplay changes on its own.],
  install-notes: [Required dependency. Place above mods that depend on it.],
)

#mod-entry(
  name: "Smart drops objects",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3720232044",
  category: "Bugfix",
  version: "2025",
  dependencies: (),
  system-impact: none,
  description: [Fallen objects (dirt, blocks, etc.) merge into single stacks instead of spreading across the ground. Prevents FPS drops when mining large areas.],
  install-notes: [Load after any block or terrain mods.],
)

#mod-entry(
  name: "Bench Platform Collision",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3377663311",
  category: "Bugfix",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Fixes collision issues with bench platforms so they behave as expected when placed against walls.],
  install-notes: [Load order not critical.],
)

// ── Source: ShyDispatch Starbound Starburst Pack cross-review ──

#mod-entry(
  name: "OmeLib",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2875423997",
  category: "Library",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Shared utility library by Omeruin. Required dependency for The Nomadic De'nelaun and Race Traits. No gameplay changes on its own.],
  install-notes: [Place above mods that depend on it.],
)

#mod-entry(
  name: "Fixed Critters",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2809593202",
  category: "Bugfix",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Fixes any critter that is unable to walk up tiles. Includes support for Frackin Universe, More Critters, and Elithian Races. Updated by ShyDispatch.],
  install-notes: [Load after FU and any critter mods.],
)

#mod-entry(
  name: "Bug Spawn Improvement",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2557634814",
  category: "Bugfix",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Vanilla Starbound only spawns a single bug species per planet. This mod allows all bugs from a biome to spawn, dramatically increasing bug variety on each planet.],
  install-notes: [Load order not critical. Compatible with FU.],
)

// ── Source: Dreaming Worlds [oSB] cross-review ──

#mod-entry(
  name: "Recipe Cache Unloading Fix — aka anti-pickup-lag",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3416715754",
  category: "Bugfix",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Fixes a long-standing engine bug where recipe caches fail to unload properly, causing increasing lag over time as more items are picked up. Dramatically improves long-session performance. Essential for large modlists.],
  install-notes: [Load early. No known conflicts.],
)

#mod-entry(
  name: "Safely Uninstall Mods Which Add New Tech",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2127561004",
  category: "Utility",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Provides a safe method to uninstall mods that add new tech slots. Tech mods are normally save-corrupting on removal — this mod adds a safety mechanism. Useful for modlist maintenance and testing.],
  install-notes: [Install before you need it. Follow the mod's instructions before removing any tech-adding mod.],
)

#mod-entry(
  name: "Futara's Dragon Engine [oSB Optional Support]",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2297133082",
  category: "Library",
  version: "2024",
  dependencies: (),
  system-impact: "rendering engine",
  description: [A custom rendering engine for Starbound with optional OpenStarbound support. Required by Futara's Dragon Pixel Full Bright Shader and related visual mods. May be optional if using other shader solutions — verify against your graphics stack.],
  install-notes: [Load early. Only needed if using Futara's shader mods. May conflict with OSB's built-in rendering — verify after testing.],
)
