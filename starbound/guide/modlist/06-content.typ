#import "../../lib.typ": mod-entry, warning

== Content

#warning[
  *Frackin Universe is a one-way trip.* Installing FU permanently alters your game universe and ALL characters.\
  Uninstalling FU will cause crashes. Back up your storage folder before installing.
  #link("https://frackinuniverse.miraheze.org/wiki/Main_Page")[FU Wiki]  ·  #link("https://discord.gg/xr6WNVcTH")[FU Discord]
]

// ── Major Content ──

#mod-entry(
  name: "Frackin Universe",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=729480149",
  category: "Content",
  version: "2026-07",
  dependencies: (),
  system-impact: "total conversion overhaul",
  description: [The anchor mod of this list. Massively expands every aspect of Starbound: new biomes, planets, dungeons, crafting tiers, research system, automation, bees, genetics, brewing, and much more. Hundreds of hours of additional content. The definitive Starbound overhaul.],
  install-notes: [Load early in the content section. Many mods in this list depend on FU. Make a complete backup of your storage folder before installing.],
)

#mod-entry(
  name: "Miniknog Rearmed",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2435665276",
  category: "Content",
  version: "2026-05",
  dependencies: (),
  system-impact: none,
  description: [Faction expansion for the Miniknog (Apex). Gives them distinctive white armor with glowing blue visors and bouncy plasma weaponry. Apex can craft the armor; other races find blueprints in Miniknog dungeons. Makes a common enemy type visually consistent and more interesting. FU-compatible.],
  install-notes: [Load after FU. Compatible with several other content mods.],
)

// ── Outpost Overhauls ──

#mod-entry(
  name: "Anom's Outpost Overhaul",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2468903056",
  category: "Content",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Comprehensive overhaul of the Outpost hub area. Redesigns the layout, adds new areas, improves aesthetics, and makes the Outpost feel more like a lived-in space station.],
  install-notes: [Load after FU. The Scrap Vendor and Gunsmith Shop addons below expand it further.],
)

#mod-entry(
  name: "Anom's Outpost Overhaul - Scrap Vendor Addon",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2478120319",
  category: "Content",
  version: "2024",
  dependencies: ("Anom's Outpost Overhaul",),
  system-impact: none,
  description: [Adds the Scrap Vendor to the overhauled Outpost hangar, second floor left side. She sells and buys scrap materials. Integrates with the overhaul's layout.],
  install-notes: [Load after Anom's Outpost Overhaul.],
)

#mod-entry(
  name: "Anom's Outpost Overhaul - Gunsmith Shop Addon",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2478119400",
  category: "Content",
  version: "2024",
  dependencies: ("Anom's Outpost Overhaul",),
  system-impact: none,
  description: [Adds a gunsmith shop to the overhauled Outpost. Sells and upgrades ranged weapons. Integrates with the overhaul's layout.],
  install-notes: [Load after Anom's Outpost Overhaul.],
)

#mod-entry(
  name: "More Outpost Objects",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1635522739",
  category: "Content",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Adds additional decorative and functional objects to the Outpost. More furniture, vendors, and interactive elements to flesh out the hub.],
  install-notes: [Load after the Outpost Overhaul and its addons.],
)

// ── Source: ShyDispatch Starbound Starburst Pack cross-review ──

// ── Major Content Expansions ──

#mod-entry(
  name: "Arcana",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2359135864",
  category: "Content",
  version: "2025-07",
  dependencies: (),
  system-impact: "major content expansion with planets and mechanics",
  description: [A growing techno-magic themed expansion by sleepySva. Adds 28+ new planets, 120+ custom weapons, 100+ armor pieces and cosmetics, 600+ new tiles and objects, new bosses and monsters, scythes (a lifesteal weapon type), and a new insectoid playable race (Spectwing v1.4.2). Widely used alongside FU — author states "most mods are compatible." Constantly updated.],
  install-notes: [Load after FU. Arcana adds its own planets rather than overwriting — generally safe alongside FU. Compatible with existing saves. Back up storage folder before installing.],
)

#mod-entry(
  name: "K'Rakoth Mod",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2761528375",
  category: "Content",
  version: "2024",
  dependencies: (),
  system-impact: "adds dungeons, biomes, and lore",
  description: [Adds K'Rakoths — an ancient aquatic race with advanced technology and servant species. Features new dungeons, biomes, enemies, and extensive lore about this fallen civilization. Has cross-mod patches for Elithian Races, Arcana, and Project Ancient Cosmos. Designed to coexist alongside other content mods. By Angry Turret (More NPC Ships author).],
  install-notes: [Load after FU and Arcana. No dedicated FU patch found but designed for cross-mod compatibility. Back up saves before installing.],
)

#mod-entry(
  name: "Shellguard: Starbound Expansion Remastered",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1590588444",
  category: "Content",
  version: "2024",
  dependencies: (),
  system-impact: "major faction expansion with quests and gear",
  description: [A full expansion focused on Shellguard — a large-scale mercenary group. Adds extensive questlines, unique weapons and armor, faction-themed outposts, and original boss encounters. A complete faction experience integrated into the Starbound universe. Shellguard Engineer Fix (2966564431) and Shellguard Fullbright addons available.],
  install-notes: [Load after FU. Faction-based content typically works alongside FU without conflicts. Shellguard Engineer Fix and Fullbright addons load after this.],
)

#mod-entry(
  name: "Project Irisil",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2912817589",
  category: "Content",
  version: "2026-07",
  dependencies: (),
  system-impact: "adds monsters, dungeons, vanilla+ content",
  description: [A vanilla+ content mod by LoftyLoftyLoftyLoftyLofty. Adds several new monster species including the Irisil — recently updated to v1.6.0.4 (July 30, 2026). Features new dungeons, unique creature behaviors, and expands monster variety without overhauling core systems. Actively maintained.],
  install-notes: [Load after FU. Vanilla+ style — no known FU conflicts. Very recently updated.],
)

#mod-entry(
  name: "Galactic Dungeons",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1890395068",
  category: "Content",
  version: "2024",
  dependencies: (),
  system-impact: "adds race-themed dungeons",
  description: [Adds 9 new dungeons themed around each playable race: Apex Mansion, Avian Raider Fleet, Floran Hollow, Glitch Siege Camp, Glitch Towers, Human Settlement, Hylotl Monastery, Hylotl Ronin Fortress, and Novakid Fortress. Works with More Planet Info for dungeon visibility. May not spawn on FU-exclusive planet types without a community patch.],
  install-notes: [Load after FU. Dungeons will appear on vanilla-compatible planet types. May need a community patch for FU-exclusive biomes.],
)

#mod-entry(
  name: "GyroJets!",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2968046825",
  category: "Content",
  version: "2024",
  dependencies: (),
  system-impact: "adds new weapon type",
  description: [Introduces gyrojet weapons — a new weapon type with unique animations and mechanics. Includes 12 generic themed gyro-weapons in the New Tech Update. NPCs can wield them and they can be found in dungeon chests as loot. New animations for all gyrojet weapons. By InkWarrior101 (Universal Wardrobe author).],
  install-notes: [Load after FU and any weapon mods. Weapons-only — no worldgen or progression changes.],
)

#mod-entry(
  name: "More NPC Ships",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2836719652",
  category: "Content",
  version: "2024",
  dependencies: (),
  system-impact: "adds space encounter variety",
  description: [Adds variety to NPC ship encounters in space. Includes friendly ships (Cargo Ship, Astronaut Shuttle), enemy ships, and space dungeons. Ships feel more diverse and the space layer becomes more interesting to explore. By Angry Turret (K'Rakoth Mod author).],
  install-notes: [Load after FU and any ship mods. Space encounter mod — no conflicts.],
)

#mod-entry(
  name: "Neb's Snails!",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3126981954",
  category: "Content",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Adds a variety of snail critters to the game. Explicitly compatible with Frackin Universe — an FU addon is available separately. Pure creature addition — no system changes.],
  install-notes: [Load after FU. FU addon available for expanded integration.],
)

#mod-entry(
  name: "Less Dead Moons - Moon Dungeons",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3013176449",
  category: "Content",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Moons feel empty and boring in vanilla. This mod adds multiple structures and dungeons to moons scattered across the surface, giving them more depth and exploration value. FU has its own moon content — minor thematic overlap but no hard conflicts.],
  install-notes: [Load after FU. May add structures alongside FU's existing moon content — review for redundancy after testing.],
)

// ── Story & Progression Optionality ──

#mod-entry(
  name: "Story Disabler",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2803873905",
  category: "Content",
  version: "2024",
  dependencies: (),
  system-impact: "disables main story questline",
  description: [Disables Starbound's main storyline entirely for a true sandbox experience. Goes further than mods that simply make the story optional — this outright prevents story triggers. Still allows access to story-gated content through alternative means. For players who want pure sandbox exploration.],
  install-notes: [Load order not critical. Only use if you want a fully story-free experience.],
)

// ── Codex & Lore ──

#mod-entry(
  name: "Novakid Codices",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2109845614",
  category: "Content",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Adds over a dozen new codices for the Novakids, distributed throughout the world. Most new codices are found in Novakid Villages, with a few in Apex Bases. Puts all new codices in a dedicated Novakid codex tab. By jss2a98aj (Starbound Patch Project author).],
  install-notes: [Load after any codex or Novakid mods.],
)

#mod-entry(
  name: "The Bookstore",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2464486703",
  category: "Content",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Adds a bookstore to the Outpost. Functions as a framework for codex entries — other modders can add their own book categories. The companion Codex addon (2502865782) purchasable versions of all vanilla codex entries organized by race, mission, and other categories.],
  install-notes: [Load after any Outpost mods. Install the Codex addon (2502865782) for vanilla codex integration.],
)

#mod-entry(
  name: "Hiraki Corale's Book Store",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3271725764",
  category: "Content",
  version: "2024",
  dependencies: ("The Bookstore",),
  system-impact: none,
  description: [An addon for The Bookstore that replaces the generic info booth lady with the legendary beta character Hiraki Corale. Adds the Hiraki Corale Tab with post-beta content icon options. Puts Hiraki Corale codices from mods like Elithian Races in a dedicated tab. By ShyDispatch.],
  install-notes: [Load after The Bookstore and the Codex addon.],
)

// ── Source: Dreaming Worlds [oSB] cross-review ──

#mod-entry(
  name: "Project Redemption",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1397217904",
  category: "Content",
  version: "2024",
  dependencies: (),
  system-impact: "adds questlines and faction content",
  description: [A major faction-based content mod adding new questlines, encounters, weapons, and armor centered around a redemption narrative. Has cross-mod patches for K'Rakoth (2821879793), Anom's Outpost Overhaul (2672213160), and Starforge (2581675840). Widely used in the Dreaming Worlds modlist.],
  install-notes: [Load after FU. Install K'Rakoth and Anom patches if using those mods. Back up saves before installing.],
)

#mod-entry(
  name: "Super Dungeon Pack",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2979678524",
  category: "Content",
  version: "2024",
  dependencies: (),
  system-impact: "adds dungeons",
  description: [A large pack of new dungeons and encounter areas. Complements Galactic Dungeons with additional variety. More Planet Info patch available for dungeon visibility on the nav screen.],
  install-notes: [Load after FU and Galactic Dungeons. Install the More Planet Info patch (2980863873) for nav integration.],
)

#mod-entry(
  name: "Extra Dungeons",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=729769243",
  category: "Content",
  version: "2024",
  dependencies: (),
  system-impact: "adds dungeons",
  description: [A classic dungeon expansion mod. Adds additional dungeons across the universe. Extra Dungeons Ultimate Fix (3334763920) resolves long-standing issues. Mission icons addon (3412262127) adds proper HUD markers.],
  install-notes: [Load after FU and other dungeon mods. Install Extra Dungeons Ultimate Fix for stability. Install mission icons for HUD markers.],
)

#mod-entry(
  name: "Voided: Expansion Mod (WIP)",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2822921122",
  category: "Content",
  version: "2024",
  dependencies: (),
  system-impact: "work-in-progress expansion",
  description: [An ambitious work-in-progress expansion mod. Adds new content, areas, and mechanics. Note: WIP status means it may change significantly between updates. Install with the understanding that it is actively developed and not yet complete.],
  install-notes: [WIP — use with caution. Load after FU. Back up saves before installing. May change significantly between updates.],
)

#mod-entry(
  name: "LostBound [v1.1.1 — Revamped]",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3440851272",
  category: "Content",
  version: "2025",
  dependencies: (),
  system-impact: "adds quests and world content",
  description: [A revamped quest and exploration mod. Adds new content to discover throughout the universe. Has patches for Arcana (3475902278), Project Ancient Cosmos (3475905331), and Overgrown Planets (3440385324). Master Add-on (3479227719) expands further.],
  install-notes: [Load after FU. Install Arcana, Overgrown Planets, and Master Add-on patches as applicable. Back up saves before installing.],
)

#mod-entry(
  name: "Overgrown Planets",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2587899098",
  category: "Content",
  version: "2024",
  dependencies: (),
  system-impact: "adds planet biome type",
  description: [Adds Overgrown planets — a new planet biome type with dense vegetation, unique flora, and atmospheric exploration. Overhauled version (3456794738) significantly expands and improves the base mod. May have minor overlap with FU's lush planet types.],
  install-notes: [Load after FU. Use the Overhauled version for the best experience. Verify no redundant overlap with FU's existing lush biomes after testing.],
)

#mod-entry(
  name: "Overhauled Overgrown Planets",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3456794738",
  category: "Content",
  version: "2025",
  dependencies: ("Overgrown Planets",),
  system-impact: "expands Overgrown Planets",
  description: [Significantly expands and improves the base Overgrown Planets mod. More biomes, better generation, additional content. Use this instead of the base version alone.],
  install-notes: [Load after Overgrown Planets. Supersedes the base mod's generation. Use this as the primary Overgrown Planets experience.],
)

#mod-entry(
  name: "Emi's Fabulous Fishatorium!",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3630895951",
  category: "Content",
  version: "2025",
  dependencies: (),
  system-impact: "adds fishing content",
  description: [A fishing-themed content expansion. Adds new fish species, fishing mechanics, and aquatic content. Has patches for Project Irisil (3631718556) and K'Rakoth (3633401822). Complements FU's existing fishing systems.],
  install-notes: [Load after FU and any fishing mods. Install Irisil and K'Rakoth patches if using those mods.],
)

#mod-entry(
  name: "The Armol: People of the Core",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3216140587",
  category: "Content",
  version: "2024",
  dependencies: (),
  system-impact: "adds faction and lore",
  description: [Adds The Armol — a subterranean race living in planetary cores. New faction with unique lore, encounters, and worldbuilding. Expands the lore of what lives deep inside planets.],
  install-notes: [Load after FU. Back up saves before installing.],
)

#mod-entry(
  name: "Job Offers",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=735253889",
  category: "Content",
  version: "2024",
  dependencies: (),
  system-impact: "adds job board system",
  description: [Adds a job board system to the Outpost and stations. Take on procedurally generated jobs for rewards. Adds repeatable, structured content for players who want directed goals between major quests.],
  install-notes: [Load after any Outpost mods. Safe to install on existing saves.],
)

#mod-entry(
  name: "Neo+",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2704778060",
  category: "Content",
  version: "2024",
  dependencies: (),
  system-impact: "adds faction and items",
  description: [Adds Neo-themed content: new items, weapons, armor sets, and faction presence. Expands the game's futuristic/cyber aesthetic with additional themed content.],
  install-notes: [Load after FU. No known conflicts.],
)
