#import "../../lib.typ": mod-entry

== Mechanics & Systems

#mod-entry(
  name: "Omnicrafter!",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2844996935",
  category: "Mechanics",
  version: "2024",
  dependencies: (),
  system-impact: "single crafting station access point",
  description: [A single crafting station that can access any other crafting station you add to its database. Place one Omnicrafter instead of running between dozens of stations. Works with modded crafting stations.],
  install-notes: [Load after all crafting station mods. The wall-mounted version below saves floor space.],
)

#mod-entry(
  name: "[OSB] Wall-Mounted Omnicrafter",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3488372244",
  category: "Mechanics",
  version: "2025",
  dependencies: ("Omnicrafter!",),
  system-impact: none,
  description: [Wall-mounted version of the Omnicrafter. Saves floor space without sacrificing functionality. Requires OpenStarbound. Requires the base Omnicrafter mod.],
  install-notes: [Requires OpenStarbound. Load after Omnicrafter!.],
)

#mod-entry(
  name: "Better Crew",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3031599475",
  category: "Mechanics",
  version: "2024",
  dependencies: (),
  system-impact: "improves crew behavior and management",
  description: [Major improvements to crew members: better AI, more responsive behavior, expanded roles, and improved crew management. Crew feel like actual shipmates rather than passive NPCs.],
  install-notes: [Load after FU. No conflicts with race mods.],
)

#mod-entry(
  name: "Universal Wardrobe (0.2.1)",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3492414889",
  category: "Mechanics",
  version: "2025",
  dependencies: (),
  system-impact: "adds cosmetic wardrobe system",
  description: [Adds a wardrobe system for saving and swapping cosmetic outfits without affecting equipped armor stats. Works with all races and modded armor. Version 0.2.1 — actively developed.],
  install-notes: [Load after race and armor mods. Compatible with Miniknog Rearmed and other faction equipment mods.],
)

#mod-entry(
  name: "Recipe Adjustment: Campfire to Kitchen",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=756729190",
  category: "Mechanics",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Moves campfire cooking recipes to the kitchen counter crafting station. Makes campfires simple and kitchens the primary cooking hub. Better progression and base organization.],
  install-notes: [Load after FU and any food or cooking mods.],
)
