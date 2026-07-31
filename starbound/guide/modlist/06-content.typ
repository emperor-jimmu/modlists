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
