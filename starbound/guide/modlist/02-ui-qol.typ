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

// ── Source: ShyDispatch Starbound Starburst Pack cross-review ──

#mod-entry(
  name: "Lagless Pixel Printer!",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3256653058",
  category: "QoL",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Fixes the notoriously laggy Pixel Printer UI by replacing it with a memory-efficient Lua recreation. Previously scanned objects must be re-scanned or imported. A dramatic performance improvement for anyone who uses the Pixel Printer regularly.],
  install-notes: [Client-side. Load after any Pixel Printer mods. Re-scan objects to populate the new UI.],
)

#mod-entry(
  name: "Compact Crafting!",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3276508903",
  category: "UI",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Replaces scrolling crafting lists with a grid layout. Much faster to browse and find recipes. Unsupported mods fall back to the standard list. By Silver Sokolova (Betabound author).],
  install-notes: [Load after all crafting station mods. Client-side.],
)

#mod-entry(
  name: "Auto Trash",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2842172286",
  category: "QoL",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Automatically removes unwanted items from your inventory. Configurable rules for what gets trashed. No more manually deleting stacks of junk. By sleepySva (Arcana author).],
  install-notes: [Load order not critical. Configure rules via the in-game menu.],
)

#mod-entry(
  name: "Planet Search",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3031798952",
  category: "QoL",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Adds a search button to the navigation console. Search nearby galaxies for specific planet types instead of manually flying to and inspecting each system. Massive time-saver for finding specific biomes or ores.],
  install-notes: [Load after More Planet Info and any nav mods.],
)

#mod-entry(
  name: "[OSB] Unde Venis",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3230765544",
  category: "QoL",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Shows which mod an item comes from in its tooltip. Essential for identifying item sources in a large modlist. Requires OpenStarbound >= 0.1.9. Client-side.],
  install-notes: [Requires OpenStarbound. Client-side. Load order not critical.],
)

#mod-entry(
  name: "Extended Teleportation Dialog",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2223497181",
  category: "UI",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Extends the size of the teleportation dialog to show more destinations at once. Follows the same design philosophy as Extended GUI.],
  install-notes: [Load after any teleporter mods.],
)

#mod-entry(
  name: "Collection numberer",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3309982462",
  category: "UI",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [The collections tab shows item counts instead of just the internal order value. Helps identify duplicate or missing entries from modded collection items. Has a toggle.],
  install-notes: [Client-side. Load order not critical.],
)

#mod-entry(
  name: "Hoarder's Inventory",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3313741619",
  category: "QoL",
  version: "2024",
  dependencies: (),
  system-impact: "adds inventory slots and hotbar sets",
  description: [More inventory space for hoarders and collectors: extra item slots, additional hotbar sets, and more bags. Never worry about inventory space again. WARNING: Due to Starbound engine limitations, this only works on FRESH (newly created) CHARACTERS.],
  install-notes: [Must be installed before creating a new character. Does not work on existing saves. Load order not critical.],
)

#mod-entry(
  name: "Infiniter Inventory",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3290989094",
  category: "QoL",
  version: "2024",
  dependencies: (),
  system-impact: "adds secondary inventory window",
  description: [Adds a second client-side inventory window that expands infinitely. Open from the Quickbar or with a keybind via OpenStarbound. Inspired by Silver's Infinite Inventory mod but implemented differently.],
  install-notes: [Requires OpenStarbound for keybind. Client-side. Load after any inventory mods.],
)

#mod-entry(
  name: "Stardust Core Lite",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3010521475",
  category: "Library",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Library mod providing Quickbar, metaGUI, and a unified settings panel. A vanilla-server-friendly subset of Stardust Core. Required by Classic Quickbar and Lexi's Automation.],
  install-notes: [Load early. Required by several mods in this list.],
)

#mod-entry(
  name: "[OSB] Beta Hotbar!",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3248499283",
  category: "UI",
  version: "2024",
  dependencies: (),
  system-impact: "replaces vanilla hotbar",
  description: [Replaces the vanilla hotbar with a Lua recreation of the beta hotbar. 10 slots, rebindable number keys, scroll to change selection. Requires OpenStarbound. By Silver Sokolova.],
  install-notes: [Requires OpenStarbound. This is an alternative to Classic Quickbar — pick one.],
)

#mod-entry(
  name: "Classic Quickbar",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3010595372",
  category: "UI",
  version: "2024",
  dependencies: ("Stardust Core Lite",),
  system-impact: "restores original quickbar",
  description: [Restores and updates the original pre-1.0 Quickbar. Requires Stardust Core Lite. Alternative to Beta Hotbar — choose based on preference.],
  install-notes: [Requires Stardust Core Lite. This is an alternative to Beta Hotbar — pick one.],
)

#mod-entry(
  name: "Skippable Cinematics",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=730116342",
  category: "QoL",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Skip any cinematic with the ESC key. Does not reduce loading times covered by cinematics. Client-side only. By v6.],
  install-notes: [Client-side. Load order not critical.],
)

#mod-entry(
  name: "No Tech Quest",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=729773412",
  category: "QoL",
  version: "2024",
  dependencies: (),
  system-impact: "removes tech obstacle courses",
  description: [Removes the obstacle courses required to unlock techs. Just talk to the NPC once to complete. Adds a second quest so quest #6 is completed for mods that extend the questline. Supports Phase Shift Tech quest.],
  install-notes: [Load order not critical.],
)

#mod-entry(
  name: "Skippable Mech Quest",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3065492221",
  category: "QoL",
  version: "2024",
  dependencies: (),
  system-impact: "removes mech obstacle courses",
  description: [Removes mech obstacle courses entirely. Complements No Tech Quest for a complete removal of mandatory tutorial-style quests.],
  install-notes: [Load order not critical.],
)

#mod-entry(
  name: "tech ui highlight fix but good",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3357067478",
  category: "Fix",
  version: "2025",
  dependencies: (),
  system-impact: none,
  description: [Fixes the character highlight glow in the tech UI. Implemented correctly — patches only the relevant config entry instead of overwriting the entire file.],
  install-notes: [Load after any tech UI mods. Client-side.],
)

#mod-entry(
  name: "Hiraki Corale Codex Tab",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2109841611",
  category: "UI",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Moves all vanilla and many modded Hiraki Corale codices into a dedicated codex tab. Includes a post-beta tab icon option. Makes Hiraki Corale lore accessible in one place. By jss2a98aj (Starbound Patch Project author).],
  install-notes: [Load after any codex mods.],
)
