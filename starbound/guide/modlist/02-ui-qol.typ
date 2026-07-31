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
  install-notes: [Load after any HUD or interface mods. Install the FU + Extended GUI Patch below for full FU crafting station coverage.],
)

#mod-entry(
  name: "FU + Extended GUI Patch",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1681880007",
  category: "Patch",
  version: "2024",
  dependencies: ("Extended GUI", "Frackin Universe"),
  system-impact: none,
  description: [Patches Extended GUI to properly handle FU's expanded crafting station interfaces and numerous menus. Without this patch, many FU-specific windows won't benefit from Extended GUI's improvements.],
  install-notes: [Load after Extended GUI and FU. Essential for full Extended GUI coverage with FU.],
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
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2512589532",
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
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2957136802",
  category: "UI",
  version: "2024",
  dependencies: ("Stardust Core Lite",),
  system-impact: "restores original quickbar",
  description: [Restores and updates the original pre-1.0 Quickbar. Requires Stardust Core Lite. Alternative to Beta Hotbar — choose based on preference.],
  install-notes: [Requires Stardust Core Lite. This is an alternative to Beta Hotbar — pick one.],
)

#mod-entry(
  name: "Skippable Cinematics",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=729428037",
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
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2849237095",
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

// ── Source: Dreaming Worlds [oSB] cross-review ──

// ── OpenStarbound-native UI ──

#mod-entry(
  name: "[oSB] OpenUI",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3546647977",
  category: "UI",
  version: "2025",
  dependencies: (),
  system-impact: "OpenStarbound UI framework",
  description: [A comprehensive UI framework built specifically for OpenStarbound. Provides the foundation for Cleaner UI Bars, Race Extender, UID Disabler, and other OpenUI-based mods. One of the key OSB-native UI improvements.],
  install-notes: [Requires OpenStarbound. Load before any OpenUI-dependent mods. Incompatible with OpenUI - UID Disabler if you want the full framework.],
)

#mod-entry(
  name: "OpenUI - Cleaner UI Bars",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3577752941",
  category: "UI",
  version: "2025",
  dependencies: ("[oSB] OpenUI",),
  system-impact: none,
  description: [Cleaner, more minimal UI bars built on the OpenUI framework. Replaces the default chunky health/energy bars with sleeker alternatives. AnomNom Edition (2399451206) is an alternative with a different style.],
  install-notes: [Requires OpenStarbound and OpenUI. Load after both. Alternative: Cleaner UI Bars (AnomNom Edition) (2399451206).],
)

#mod-entry(
  name: "OpenUI - Race Extender (40 Slots)",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3546654953",
  category: "UI",
  version: "2025",
  dependencies: ("[oSB] OpenUI",),
  system-impact: "adds 40 character slots",
  description: [Extends the character creator with 40 additional race slots via the OpenUI framework. An alternative to SP Race Extender — pick one based on which UI framework you prefer.],
  install-notes: [Requires OpenStarbound and OpenUI. Alternative to SP Race Extender — use one, not both.],
)

#mod-entry(
  name: "[oSB] Is this Printable?",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3507216031",
  category: "QoL",
  version: "2025",
  dependencies: (),
  system-impact: none,
  description: [Shows whether an item in your inventory can be printed at the Pixel Printer without needing to check manually. Complements [OSB] Automatically Scan Objects! for a complete printing workflow.],
  install-notes: [Requires OpenStarbound. Client-side. Load after any inventory mods.],
)

#mod-entry(
  name: "[oSB] OCD Tooltip Fix",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3355387636",
  category: "Fix",
  version: "2025",
  dependencies: (),
  system-impact: none,
  description: [Fixes alignment issues in item tooltips that have bothered players for years. Small, satisfying, purely visual tooltip corrections. Requires OpenStarbound.],
  install-notes: [Requires OpenStarbound. Client-side. Load order not critical.],
)

#mod-entry(
  name: "[oSB] All Items are Stackable!",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3370469697",
  category: "QoL",
  version: "2025",
  dependencies: (),
  system-impact: "makes all items stackable",
  description: [Makes all items stackable in inventory. Dramatically reduces inventory clutter. NOTE: FU has its own stacking systems — verify this mod doesn't conflict with or duplicate FU's item stacking after testing. Requires OpenStarbound.],
  install-notes: [Requires OpenStarbound. WARNING: Verify compatibility with FU's item stacking before locking. Load after FU.],
)

#mod-entry(
  name: "[oSB] All Reward Items Faster & Stackable",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3714760211",
  category: "QoL",
  version: "2025",
  dependencies: (),
  system-impact: none,
  description: [Makes all quest reward items stackable and removes the slow reward-popup delay. No more waiting through slow reward animations. Requires OpenStarbound.],
  install-notes: [Requires OpenStarbound. Client-side. Load order not critical.],
)

#mod-entry(
  name: "[oSB] Hunger Fighting Chairs",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3546473893",
  category: "QoL",
  version: "2025",
  dependencies: (),
  system-impact: none,
  description: [Stops hunger depletion while sitting in chairs. A small but logical QoL improvement — sitting and resting should stop hunger drain. Requires OpenStarbound.],
  install-notes: [Requires OpenStarbound. Load after any chair or furniture mods.],
)

// ── General QoL ──

#mod-entry(
  name: "Quick Stack Gun",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3149193954",
  category: "QoL",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [A gun that quick-stacks items from your inventory into nearby containers. Much faster than manually opening each container. The [oSB + Cosmetic Slots Fix] (3674332086) is the recommended version for OpenStarbound users.],
  install-notes: [Use the [oSB + Cosmetic Slots Fix] version if using OpenStarbound. Load after any inventory or container mods.],
)

#mod-entry(
  name: "Quick Stack Gun [OpenStarbound Fix]",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3149193954",
  category: "Fix",
  version: "2025",
  dependencies: ("Quick Stack Gun",),
  system-impact: none,
  description: [OpenStarbound fix for the Quick Stack Gun. Resolves issues with quick-stacking in the OSB environment. Use this version instead of the standalone if using OpenStarbound.],
  install-notes: [Requires OpenStarbound and Quick Stack Gun. Load after both. Supersedes the standalone Quick Stack Gun for OSB users.],
)

#mod-entry(
  name: "Improved Food Descriptions",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=731354142",
  category: "UI",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Adds detailed information to food descriptions: exact hunger restored, buff durations, and status effects. Essential for making informed food choices in a modlist where food matters. Train's Patch (3581473706) updates it for modern mod support.],
  install-notes: [Load after FU and any food mods. Install Train's Patch (3581473706) for latest mod compatibility.],
)

#mod-entry(
  name: "bk3k's Inventory",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=882900100",
  category: "UI",
  version: "2024",
  dependencies: (),
  system-impact: "replaces inventory interface",
  description: [A complete inventory interface replacement with improved visuals and layout. More modern and cleaner than the vanilla inventory. Optional reskin available (1150594604). BK3K-Various Mods Compatibility addon (2799920138) extends support to modded items.],
  install-notes: [Load after any HUD or inventory mods. Install BK3K-Various Mods Compatibility for modded item support.],
)

#mod-entry(
  name: "Detailed Sidebar",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3007858689",
  category: "UI",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Replaces the minimal vanilla sidebar with a more detailed information panel. Shows additional stats, effects, and contextual information at a glance.],
  install-notes: [Load after any HUD mods. Client-side.],
)

#mod-entry(
  name: "teleporter gui but big",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2494643813",
  category: "UI",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Makes the teleporter GUI significantly larger so you can see many more destinations at once. Complements Extended Teleportation Dialog for the ultimate teleportation browsing experience.],
  install-notes: [Load after any teleporter UI mods. Pairs with Extended Teleportation Dialog for maximum teleport UI coverage.],
)

#mod-entry(
  name: "Improved Chat Bar",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1276739133",
  category: "UI",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Enhances the chat interface with improved visuals and usability. Better text visibility, smarter auto-complete, and a cleaner chat experience.],
  install-notes: [Load order not critical. Client-side.],
)

#mod-entry(
  name: "Better Chairs",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1244732961",
  category: "QoL",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Improves chair sitting mechanics: better positioning, smoother transitions, and proper alignment for all chair types. Small but noticeable improvement to a fundamental interaction.],
  install-notes: [Load after any furniture mods. No conflicts.],
)

#mod-entry(
  name: "Quest Manager Optimizer",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2914211937",
  category: "QoL",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Optimizes the quest manager to reduce lag and stutter when many quests are active. Essential for modlists with lots of quest mods where the quest log can become sluggish.],
  install-notes: [Load after any quest mods. Particularly useful with Arcana, K'Rakoth, Shellguard, and FU.],
)

#mod-entry(
  name: "I Have a Quickbar!",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3634731098",
  category: "UI",
  version: "2025",
  dependencies: (),
  system-impact: none,
  description: [An alternative quickbar implementation. Simpler than Classic Quickbar or Beta Hotbar — useful if you want a lighter-weight quickbar option.],
  install-notes: [This is an alternative to Classic Quickbar and Beta Hotbar — pick one quickbar mod.],
)

#mod-entry(
  name: "Galactic Almanach — Biome Name Display",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3473429375",
  category: "UI",
  version: "2025",
  dependencies: (),
  system-impact: none,
  description: [Displays the name of the current biome on screen when you enter a new area. Great for exploration awareness — you always know what biome you're in. Has patches for Arcana and other biome-adding mods.],
  install-notes: [Load after any biome or planet mods. Install the Arcana patch (3535670883) if using Arcana.],
)

#mod-entry(
  name: "Book of Spirits — NPC & Monster Name Displayer",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3060280131",
  category: "UI",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Displays the name of NPCs and monsters on screen, similar to NPC nameplates in other games. The Patch Project (3471003713) extends coverage to modded NPCs. Essential for large modlists where you encounter unfamiliar creatures.],
  install-notes: [Load after any NPC or monster mods. Install the Patch Project for modded NPC coverage.],
)

#mod-entry(
  name: "Filter by Rarity — Extended Edition",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1814789921",
  category: "QoL",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Extends the vanilla inventory filtering system with more granular rarity-based filters. Sort and filter your inventory by item rarity for better organization. Works with modded items.],
  install-notes: [Load after any inventory mods. No conflicts with bk3k's Inventory.],
)
