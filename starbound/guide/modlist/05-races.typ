#import "../../lib.typ": mod-entry, warning

== Races

#warning[
  Race mods are save-dependent. Uninstalling them will break your characters and universe. Back up your storage folder before adding or removing race mods.
]

// ── Elithian Races ──

#mod-entry(
  name: "Elithian Races Mod",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=850109963",
  category: "Races",
  version: "2024",
  dependencies: (),
  system-impact: "adds multiple playable races with custom ships and content",
  description: [Adds the Elithian Alliance races as playable species with custom ships, armor, weapons, dialogue, and lore. Includes the Trink, Aegi, and Akkimari. A well-established, high-quality race expansion.],
  install-notes: [Requires a Character Creator extender. Load early in the race section. Back up saves before installing.],
)

#mod-entry(
  name: "Elithian Races Mod: Frackin Universes Patch",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1429652829",
  category: "Patch",
  version: "2024",
  dependencies: ("Elithian Races Mod", "Frackin Universe"),
  system-impact: none,
  description: [Allows Elithian Alliance encounters to appear on Frackin Universe worlds. For the Steam Workshop version of Elithian Races.],
  install-notes: [Load after both Elithian Races and FU. Use the GitHub version of this patch if using the GitHub version of Elithian Races.],
)

#mod-entry(
  name: "Frackin Universe - Elithian BYOS Ships",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2375270402",
  category: "Patch",
  version: "2024",
  dependencies: ("Elithian Races Mod", "Frackin Universe"),
  system-impact: none,
  description: [Adds Build Your Own Ship compatibility for Elithian race ships in Frackin Universe. Elithian players can use BYOS mechanics with their custom ships.],
  install-notes: [Load after both Elithian Races and FU. Requires BYOS support (included in FU).],
)

// ── Avali ──

#mod-entry(
  name: "Avali (Triage) Race Mod",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=729558042",
  category: "Races",
  version: "2024",
  dependencies: (),
  system-impact: "adds Avali playable race with custom ship, items, and lore",
  description: [Adds the Avali — feathered, pack-oriented raptor-like beings — as a fully playable race. Includes custom ship, armor, weapons, aerogel technology, and extensive lore. One of the most popular Starbound race mods.],
  install-notes: [Requires a Character Creator extender. Load early in the race section alongside Elithian Races. Back up saves before installing.],
)

#mod-entry(
  name: "FU + Avali Triage Patch",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2052758462",
  category: "Patch",
  version: "2024",
  dependencies: ("Frackin Universe", "Avali (Triage) Race Mod"),
  system-impact: none,
  description: [Compatibility patch between Frackin Universe and Avali Triage. Ensures Avali items, recipes, and mechanics work correctly within FU's overhauled systems.],
  install-notes: [Load after both FU and Avali Triage.],
)

#mod-entry(
  name: "Avali Restored Tunics",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1778990370",
  category: "Races",
  version: "2024",
  dependencies: ("Avali (Triage) Race Mod",),
  system-impact: none,
  description: [Restores original tunic designs for Avali characters that were removed or altered in the Triage update. Cosmetic addon.],
  install-notes: [Load after Avali Triage. Cosmetic only.],
)

#mod-entry(
  name: "Avali SpecOp Armor",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=738313096",
  category: "Races",
  version: "2024",
  dependencies: ("Avali (Triage) Race Mod",),
  system-impact: none,
  description: [Adds special operations armor for Avali characters. High-tier combat gear with an Avali aesthetic.],
  install-notes: [Load after Avali Triage.],
)

#mod-entry(
  name: "avali camps on frackin planets",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1432794738",
  category: "Patch",
  version: "2024",
  dependencies: ("Frackin Universe", "Avali (Triage) Race Mod"),
  system-impact: none,
  description: [Adds Avali-themed camps and encounters to Frackin Universe planets. Integrates Avali content into FU's world generation.],
  install-notes: [Load after FU, Avali Triage, and the FU+Avali patch.],
)

#mod-entry(
  name: "Crafting Menu AvaliDebloat",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3048481945",
  category: "QoL",
  version: "2024",
  dependencies: ("Avali (Triage) Race Mod",),
  system-impact: none,
  description: [Moves Avali and AvaliPLUS crafting menu entries from the empty-hand crafting menu into the nanolathe, cleaning up the bloated default crafting menu. Also allows other races to hide Avali-specific recipes.],
  install-notes: [Load after Avali Triage and any Avali addons.],
)
