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

// ── Avali Visual Enhancements ──
// Source: ShyDispatch Starbound Starburst Pack cross-review

#mod-entry(
  name: "Improved Avali Colors",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3005344858",
  category: "Races",
  version: "2024",
  dependencies: ("Avali (Triage) Race Mod",),
  system-impact: none,
  description: [Improves the base colors of the Avali race by providing better contrast between shades and decreasing saturation of certain colors. Prevents Avali from becoming a muddy agglomeration of poorly-defined colors. By ShyDispatch.],
  install-notes: [Load after Avali Triage. Cosmetic only.],
)

#mod-entry(
  name: "Alternative Avali Head",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3262126439",
  category: "Races",
  version: "2024",
  dependencies: ("Avali (Triage) Race Mod",),
  system-impact: none,
  description: [Changes Avali heads and headpieces to be at a 3/4 angle. All Triage hairs and armor have been accounted for — they fit perfectly on the redesigned heads. All emotes tweaked for consistency with vanilla species.],
  install-notes: [Load after Avali Triage and any Avali armor mods. Cosmetic only.],
)

#mod-entry(
  name: "Avali Sprite Fix",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3186146100",
  category: "Races",
  version: "2024",
  dependencies: ("Avali (Triage) Race Mod",),
  system-impact: none,
  description: [Fixes several frames of miscolored pixels for both male and female Avali. Adds a remade back arm frame. Also adds a costume Avali skull sprite visible on dead hardcore characters.],
  install-notes: [Load after Avali Triage and any Avali visual mods. May not be compatible with other Avali sprite replacers.],
)

// ── Additional Races ──

#mod-entry(
  name: "SP Race Extender",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3034688280",
  category: "Races",
  version: "2024",
  dependencies: (),
  system-impact: "adds 80 character slots",
  description: [A personal race extender with 80 additional character slots beyond the default. Necessary if using many race mods. By ShyDispatch.],
  install-notes: [Load early in the race section, before race mods. Required when adding 4+ race mods beyond the vanilla slots.],
)

#mod-entry(
  name: "OmeLib",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2875423997",
  category: "Library",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Shared utility library by Omeruin. Required by The Nomadic De'nelaun and Race Traits. Also listed in Foundations. No gameplay changes on its own.],
  install-notes: [Already listed in Foundations. This entry is a reference for race-section dependencies.],
)

#mod-entry(
  name: "Race Traits",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2875442705",
  category: "Races",
  version: "2024",
  dependencies: ("OmeLib",),
  system-impact: "adds racial stat bonuses",
  description: [Gives each species unique racial traits and bonuses. Works with modded races. Adds meaningful mechanical distinction between race choices beyond visuals. Requires OmeLib.],
  install-notes: [Load after all race mods and OmeLib.],
)

#mod-entry(
  name: "The Saturnians",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2422986190",
  category: "Races",
  version: "2025-03",
  dependencies: (),
  system-impact: "adds Saturnian playable race with custom villages and content",
  description: [Adds the Saturnians — a well-established moth-like race by Cyan Sky Knight. Features: custom ships, armor, villages, dialogue, and extensive visual polish. Latest update added Armor Adapt support. One of the most popular third-party race mods. FU community patches exist separately.],
  install-notes: [Requires a Character Creator extender. Load after Elithian Races and Avali. Back up saves before installing. Separate FU patches available via Workshop.],
)

#mod-entry(
  name: "The Nomadic De'nelaun",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2875406781",
  category: "Races",
  version: "2024",
  dependencies: ("OmeLib",),
  system-impact: "adds De'nelaun playable race",
  description: [Adds the Nomadic De'nelaun as a playable race by Omeruin (OmeLib and Race Traits author). Includes custom ship, armor, and lore. Requires OmeLib.],
  install-notes: [Requires OmeLib and a Character Creator extender. Load after other race mods. Back up saves before installing.],
)

#mod-entry(
  name: "Scyphojel, Space Jellyfish!",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2868908590",
  category: "Races",
  version: "2024",
  dependencies: (),
  system-impact: "adds Scyphojel playable race",
  description: [Adds the Scyphojel — space-dwelling jellyfish beings — as a playable race by Cyan Sky Knight (Saturnians author). Custom sprites designed to support Futara's Full Bright mod. Includes ship, armor, and unique jellyfish aesthetics.],
  install-notes: [Requires a Character Creator extender. Load after Saturnians and other race mods. Back up saves before installing.],
)

#mod-entry(
  name: "The NostOS Race",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2875413382",
  category: "Races",
  version: "2024",
  dependencies: (),
  system-impact: "adds NostOS playable robot race",
  description: [Adds the NostOS — mysterious scientific robots of unknown origin — as a playable race by Pixelflame (Project Ancient Cosmos author). Distinct from Glitch despite surface similarities. Custom ship, unique robotic aesthetics, and original lore. NostOS Full Bright addon available separately.],
  install-notes: [Requires a Character Creator extender. Load after other race mods. Back up saves before installing.],
)

// ── Race Cosmetic Addons ──

#mod-entry(
  name: "Avian Tipped Hair",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2946573701",
  category: "Races",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Adds additional Avian hairstyles with the tips dyed white — matching the color of Avian faces and stomachs. Also fixes the default Avian hair to no longer hide the beak. Works with color mods that change white feathers. By ShyDispatch.],
  install-notes: [Load after any Avian or hair mods. Cosmetic only.],
)

#mod-entry(
  name: "Nuu Descriptions",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3253573535",
  category: "Races",
  version: "2024",
  dependencies: (),
  system-impact: none,
  description: [Adds Nuu unique object descriptions to approximately 460 vanilla objects. Enables Nuu crew members to describe these objects and gives Nuu players unique scan dialog. By Lemon Drops (Maple32 author).],
  install-notes: [Only relevant if using Nuu race. Load after any race or dialogue mods.],
)
