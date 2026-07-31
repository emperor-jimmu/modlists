#import "../../lib.typ": mod-entry

== Ships & Travel

#mod-entry(
  name: "[OSB] Universal BYOS Patcher",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3648814036",
  category: "Ships",
  version: "2025",
  dependencies: (),
  system-impact: "unifies Build Your Own Ship across mods",
  description: [OpenStarbound script that patches all supported BYOS mods to work together seamlessly. Supports Frackin Universe BYOS, Build Your Own Ship, and other compatible mods. Requires OpenStarbound and at least one BYOS mod.],
  install-notes: [Requires OpenStarbound. Load after all BYOS mods. Run with at least one supported BYOS mod active.],
)

#mod-entry(
  name: "[OpenSB] Ztarbound S.A.I.L. All-in-One Race Support",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3506162421",
  category: "Ships",
  version: "2025",
  dependencies: (),
  system-impact: "replaces SAIL interface for all races",
  description: [Replaces the default SAIL interface with Ztarbound's unique SAIL design. This patch enables it for all races, including modded ones. Requires OpenStarbound. Separate standalone version available for non-FU users.],
  install-notes: [Requires OpenStarbound. Load after FU and all race mods. This is the FU-patched version — use the standalone if not using FU.],
)

#mod-entry(
  name: "More Teleportz",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1543782525",
  category: "Ships",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Adds more teleporter objects and teleporter-related decorations. Expand your ship or base with additional teleportation options.],
  install-notes: [Load after any ship mods. No conflicts.],
)

// ── Source: ShyDispatch Starbound Starburst Pack cross-review ──

#mod-entry(
  name: "Mech Overhaul",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3433865946",
  category: "Ships",
  version: "2024",
  dependencies: (),
  system-impact: "overhauls mech energy and flight systems",
  description: [Completely overhauls the mech energy system: separate health and energy bars, mechs run on fuel that can be replenished anywhere, mech flight works anywhere (not just space). Makes mechs feel like proper vehicles instead of gimmicky space-only tools. FU-compatible.],
  install-notes: [Load after FU and any mech mods. Compatible with FU's mech content.],
)

#warning[
  *Station Upgrade Modules!* has NOT been verified for FU compatibility. FU overhauls space stations completely — this mod may conflict with FU's station expansion system. Install after verifying or skip.
]

#mod-entry(
  name: "Station Upgrade Modules!",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3241437922",
  category: "Ships",
  version: "2024",
  dependencies: (),
  system-impact: "expands space station mechanics",
  description: [Space station expansion adding upgrade modules for your station. NOTE: FU has its own comprehensive space station system. This mod may conflict or be redundant alongside FU's station mechanics. Install only after verifying compatibility with FU's station content. By Silver Sokolova.],
  install-notes: [WARNING: Verify FU compatibility before installing. FU overhauls stations — this mod may conflict. Load after FU if using.],
)
