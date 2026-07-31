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
