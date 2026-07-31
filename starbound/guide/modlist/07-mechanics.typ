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

// ── Source: ShyDispatch Starbound Starburst Pack cross-review ──

#mod-entry(
  name: "Improved Swim Physics!",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3280376138",
  category: "Mechanics",
  version: "2024",
  dependencies: (),
  system-impact: "overhauls swimming movement",
  description: [Makes swimming feel fluid and natural: press SPACE to begin swimming, use WASD to swim in any direction, hold JUMP and swim toward the surface to leap out of the water. Far superior to vanilla's clunky swimming. By Silver Sokolova.],
  install-notes: [Load order not critical. No FU conflicts — pure movement overhaul.],
)

#mod-entry(
  name: "Melee Aiming",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2201034764",
  category: "Mechanics",
  version: "2024",
  dependencies: (),
  system-impact: "changes melee attack targeting",
  description: [Broadswords and hammers aim toward the cursor instead of only striking horizontally left or right. Secondary (right-click) attacks are unaffected. Affects modded broadswords and hammers as well. Makes melee combat feel much more modern and responsive.],
  install-notes: [Load after any weapon or combat mods. No FU conflicts.],
)

#mod-entry(
  name: "Swap Augments!",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3251467535",
  category: "Mechanics",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [When you replace an EPP's augment while wearing it, you get the old augment back instead of it being destroyed. No more wasted augments when upgrading. Simple, logical QoL that vanilla should have had. By Silver Sokolova.],
  install-notes: [Load after FU and any augment mods.],
)

#mod-entry(
  name: "Combinable Augments",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3075840777",
  category: "Mechanics",
  version: "2024",
  dependencies: (),
  system-impact: "alters augment system",
  description: [Combine multiple augments, collars, or fishing lures into a single powerful item. Goal: one augment to rule them all. Also allows combining EPPs into multi-hazard protection. FU has its own augment system — verify no functional overlap after testing.],
  install-notes: [Load after FU and any augment mods. Review for functional overlap with FU's built-in augment mechanics after testing.],
)

#mod-entry(
  name: "EPP Effect Extractor",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3127973707",
  category: "Mechanics",
  version: "2024",
  dependencies: (),
  system-impact: "extracts armor effects into augments",
  description: [Extract armor-intrinsic effects into augments that can then be merged together using Combinable Augments. Solves the problem of juggling multiple EPPs from different mods with limited augment slots. Complements Combinable Augments.],
  install-notes: [Load after FU and any armor mods. Works with Combinable Augments for the full augment management pipeline.],
)

#mod-entry(
  name: "Upgraded Upgrades",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2606292468",
  category: "Mechanics",
  version: "2024",
  dependencies: (),
  system-impact: "extends weapon upgrade system",
  description: [Increases the target level of the Weapon Upgrade Anvil (found after completing the main story) from 6 to 7. Makes all vanilla weapons and shields upgradeable. Existing upgraded items automatically update. UU Tier Patch 9 addon extends max tier to 9 for endgame.],
  install-notes: [Load after FU and any weapon mods. UU Tier Patch 9 addon available for T9 endgame.],
)

#mod-entry(
  name: "Essential Vanilla Crafting Stations",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2856695667",
  category: "Mechanics",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Sets the rarity of all vanilla crafting stations to Essential, preventing accidental scrapping or trashing. Simple protection for your crafting infrastructure. FU does something similar — this ensures consistent behavior.],
  install-notes: [Load after FU and any crafting station mods.],
)

#mod-entry(
  name: "Lexi's Automation",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3468785533",
  category: "Mechanics",
  version: "2025",
  dependencies: ("Stardust Core Lite",),
  system-impact: "adds factory automation system",
  description: [A factory automation system for Starbound. Requires Stardust Core Lite. OpenStarbound is highly recommended — some features only work with OSB. Requires any nightly OSB build after 2026-02-06. Adds automated crafting pipelines and industrial systems.],
  install-notes: [Requires Stardust Core Lite (listed in UI & QoL). Strongly recommended to use OpenStarbound. Load after FU and all crafting mods.],
)

#mod-entry(
  name: "Enable Monster Special Attacks Revise",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2957696214",
  category: "Mechanics",
  version: "2024",
  dependencies: (),
  system-impact: "re-enables disabled monster attacks",
  description: [Re-enables monster special attacks that were disabled in the base game, including the rainbow vomit attack (re-enabled May 2025). Addon options available for no touch damage, low touch damage, and gross attacks. Compatible with FU.],
  install-notes: [Load after FU. Addon mods available for touch damage control. Compatible with each other.],
)

#mod-entry(
  name: "Space Enemy Health Reduction",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3005344858",
  category: "Mechanics",
  version: "2024",
  dependencies: (),
  system-impact: "reduces space enemy HP",
  description: [Space encounter enemies are balanced for mech firepower but have extremely high HP, making them tedious tank-fests — especially when thrown at you in large numbers. This mod reduces their health to more reasonable levels. By ShyDispatch.],
  install-notes: [Load after FU and any space encounter mods.],
)

// ── Source: Dreaming Worlds [oSB] cross-review ──

#mod-entry(
  name: "[oSB] Universal Upgradeable Weapons Patch",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3595603580",
  category: "Mechanics",
  version: "2025",
  dependencies: ("Upgraded Upgrades",),
  system-impact: "extends weapon upgrade compatibility",
  description: [Patches ALL modded weapons to work with the Weapon Upgrade Anvil system from Upgraded Upgrades. No more finding a great modded weapon that can't be upgraded. Requires OpenStarbound. Complements Upgraded Upgrades + UU Tier Patch 9 for the complete weapon upgrade pipeline.],
  install-notes: [Requires OpenStarbound and Upgraded Upgrades. Load after both. Makes every weapon upgradeable.],
)

#mod-entry(
  name: "Terrestrial Mech Flight — Mech Core",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3385438513",
  category: "Mechanics",
  version: "2025",
  dependencies: (),
  system-impact: "enables planetary mech flight",
  description: [Enables mech flight on planetary surfaces, not just in space. A lighter-weight alternative to Mech Overhaul focused specifically on flight mechanics. Complements or replaces Mech Overhaul depending on preference.],
  install-notes: [Alternative to Mech Overhaul — pick based on preference. Load after any mech mods.],
)

#mod-entry(
  name: "Augment Extractor",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=855668523",
  category: "Mechanics",
  version: "2024",
  dependencies: (),
  system-impact: "extracts augments from equipment",
  description: [Extracts augments from equipment without destroying either the item or the augment. Simpler than EPP Effect Extractor — focused purely on augment removal rather than effect extraction. Complements Swap Augments! for a complete augment management toolkit.],
  install-notes: [Load after FU and any augment mods. Complements Swap Augments! and EPP Effect Extractor for different use cases.],
)

#mod-entry(
  name: "Reclaimable Turrets",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=749138636",
  category: "Mechanics",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Placed turrets can be reclaimed instead of being destroyed. No more wasted resources when repositioning your base defenses. Simple, logical QoL that should have been in vanilla.],
  install-notes: [Load after any turret or defense mods. No conflicts.],
)

#mod-entry(
  name: "Neb's Multi-turrets!",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3113711937",
  category: "Mechanics",
  version: "2024",
  dependencies: (),
  system-impact: "adds turret variety",
  description: [Adds a variety of new turret types for base defense. More options for protecting your colonies and outposts. Complements Reclaimable Turrets for the full turret management experience.],
  install-notes: [Load after FU and any turret mods. Pairs with Reclaimable Turrets.],
)

#mod-entry(
  name: "Unbreakable Teleporters",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=741194961",
  category: "Mechanics",
  version: "2024",
  dependencies: (),
  system-impact: "removes teleporter durability",
  description: [Makes all teleporters unbreakable. Removes the durability mechanic from teleportation devices. Unbreakable Mod Teleporters variant (3607914014) extends this to modded teleporters. Purely a convenience choice — vanilla teleporter durability adds nothing meaningful.],
  install-notes: [Load after any teleporter mods. Use the Mod Teleporters variant for full mod coverage.],
)

#mod-entry(
  name: "Resource Extractor",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=895898053",
  category: "Mechanics",
  version: "2024",
  dependencies: (),
  system-impact: "adds resource extraction",
  description: [Adds a resource extraction system for automated material gathering. Complements Lexi's Automation for a complete automated production pipeline. Place extractors on resource nodes for passive collection.],
  install-notes: [Load after FU and any automation mods. May overlap with FU's extraction systems — verify after testing.],
)
