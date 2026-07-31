#import "../../lib.typ": mod-entry, tip

== UI & Quality of Life

#tip[Mods marked #[OSB] require OpenStarbound to function. OSB is required for this entire modlist — see ::Foundations & Bugfixes.::]

#mod-entry(
  name: "Extended GUI",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=729426797",
  category: "UI",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Extends most GUI windows to show more items at once. Client-side only. The companion Extended Songbook is available separately.],
  install-notes: [Load after any HUD or interface mods.],
)

#mod-entry(
  name: "Extended Songbook",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=729427264",
  category: "UI",
  version: "2024",
  dependencies: ("Extended GUI",),
  system-impact: none,
  description: [Companion to Extended GUI. Extends the songbook window for easier instrument browsing. Client-side only.],
  install-notes: [Load after Extended GUI.],
)

#mod-entry(
  name: "Food Stack",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=729427436",
  category: "QoL",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Food items stack up to 1000 instead of being limited to single stacks. Food with different rot times must be placed in a container to stack. Client and server-side.],
  install-notes: [Load after any food or farming mods.],
)

#mod-entry(
  name: "Enhanced Storage",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=731220462",
  category: "QoL",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Major overhaul of the storage system. Adds container sorting, naming, search, and quick-stack. Also adds new storage container types and improves existing ones.],
  install-notes: [Load after any container or inventory mods. Use the #[OSB] Enhanced Storage Cumulative Patch below for full container coverage.],
)

#mod-entry(
  name: "[OSB] Enhanced Storage Cumulative Patch",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3432475751",
  category: "QoL",
  version: "2025",
  dependencies: ("Enhanced Storage",),
  system-impact: none,
  description: [OpenStarbound script that patches all normal storage containers to support Enhanced Storage features. Also increases slot counts. Requires OpenStarbound.],
  install-notes: [Load after Enhanced Storage and any mods that add containers. Requires OpenStarbound.],
)

#mod-entry(
  name: "Alternative Mods Menu Button",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=744929741",
  category: "UI",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Replaces the small corner 'Mods' button on the main menu with a full-sized button alongside the other menu options. Compatible with all resolutions.],
  install-notes: [Cosmetic only. Load order not critical.],
)

#mod-entry(
  name: "What Menu?",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1421523226",
  category: "UI",
  version: "2023",
  dependencies: (),
  system-impact: none,
  description: [Hides the open-menu icon that appears when your inventory is open. Purely cosmetic — removes the immersion-breaking icon.],
  install-notes: [Client-side. Load order not critical.],
)

#mod-entry(
  name: "More Planet Info (work with 1.4.X not guaranteed)",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1117007107",
  category: "UI",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Adds detailed planet information to the navigation console: weather, biome, threat level, and more. Essential for informed exploration. The official FU patch is included below.],
  install-notes: [Load before its patches. The title warning is outdated — the mod works with 1.4 when patched.],
)

#mod-entry(
  name: "[More Planet Info] 1.4 Quest Marker Fix",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1772643711",
  category: "Fix",
  version: "2024",
  dependencies: ("More Planet Info",),
  system-impact: none,
  description: [Patches More Planet Info to properly render quest markers added in Starbound 1.4. Replaces an outdated Lua file with one that merges MPI and 1.4 quest data.],
  install-notes: [Load after More Planet Info but before the FU Official Patch.],
)

#mod-entry(
  name: "Frackin Universe: More Planet Info Official Patch",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2141522956",
  category: "Patch",
  version: "2024",
  dependencies: ("More Planet Info", "Frackin Universe"),
  system-impact: none,
  description: [Official FU team patch that combines the Lush Planet Fix and various MPI+FU patches into one. Keeps More Planet Info working with all Frackin Universe planet types.],
  install-notes: [Load after More Planet Info and the Quest Marker Fix. Supersedes older separate patches.],
)

#mod-entry(
  name: "Flight Path",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3698077233",
  category: "UI",
  version: "2025",
  dependencies: (),
  system-impact: none,
  description: [Tracks systems you visit and displays a continuous faint trail in the nav menu from your first to last visited system. Inspired by similar mechanics in other space games.],
  install-notes: [Load order not critical. Fully client-side.],
)

#mod-entry(
  name: "Redone Ship Encounters - Names, Icons, Descriptions, and Horizons",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1974816168",
  category: "UI",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Improves ship encounter details in the navigation menu. Better names, icons, descriptions, and encounter previews so you know what you are flying into.],
  install-notes: [Load order not critical.],
)

#mod-entry(
  name: "Frackin Interface",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1264107917",
  category: "UI",
  version: "2024",
  dependencies: ("Frackin Universe",),
  system-impact: none,
  description: [FU-branded UI overhaul by Sayter. Changes health, energy, and food bars. Updated quest tracker, chat interface, and mech crafting UI. Includes a bk3k inventory skin.],
  install-notes: [Load after FU and any HUD mods.],
)

#mod-entry(
  name: "Frackin Stations Interface",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1988654567",
  category: "UI",
  version: "2024",
  dependencies: ("Frackin Universe",),
  system-impact: none,
  description: [Extends the Frackin Interface style to crafting station UIs. Companion to Frackin Interface — install both for consistent styling.],
  install-notes: [Load after Frackin Interface.],
)

// ── OpenStarbound-specific QoL ──

#mod-entry(
  name: "[OSB] Universal Instant Crafting for All Mods",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3251274439",
  category: "QoL",
  version: "2024",
  dependencies: (),
  system-impact: "removes crafting timers",
  description: [Patches all recipes from all mods to remove the crafting timer. No more waiting at crafting stations. Client-side. Requires OpenStarbound.],
  install-notes: [Requires OpenStarbound. Client-side only. Load after all content and crafting mods.],
)

#mod-entry(
  name: "[OSB] Automatically Scan Objects!",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3545869822",
  category: "QoL",
  version: "2025",
  dependencies: (),
  system-impact: none,
  description: [Any printable object in your inventory is automatically added to the Pixel Printer. No more manually scanning everything before discarding. Requires OpenStarbound.],
  install-notes: [Requires OpenStarbound. Client-side. Load order not critical.],
)

#mod-entry(
  name: "Matter Manipulator Keybinds [StarExtensions / OpenSB]",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3266061335",
  category: "QoL",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Adds keybinds to control Matter Manipulator mining size, toggle liquid collection, and toggle tile damaging. Requires OpenStarbound.],
  install-notes: [Requires OpenStarbound. Client-side. Use /binds to configure.],
)

#mod-entry(
  name: "Save Inventory Position [OpenSB]",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3331093074",
  category: "QoL",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Saves the position of your inventory window when you close the game. It will reopen exactly where you left it. Requires OpenStarbound.],
  install-notes: [Requires OpenStarbound. Client-side. Load order not critical.],
)

#mod-entry(
  name: "[OSB] [FU] Space Station Terminal Quick Sell QoL",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3723886096",
  category: "QoL",
  version: "2025",
  dependencies: ("Frackin Universe",),
  system-impact: none,
  description: [Adds quick-sell functionality to FU space station terminals. Requires both OpenStarbound and Frackin Universe.],
  install-notes: [Requires OpenStarbound and FU. Load after both.],
)
