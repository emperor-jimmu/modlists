#let mod-entry(name, url, version, deps, impact) = {
  block(
    fill: rgb("#f8f9fa"),
    inset: 10pt,
    radius: 4pt,
    stroke: 0.5pt + rgb("#dfe6e9"),
  )[
    #if url != "" and url != none {
      link(url)[#text(weight: "bold", size: 11pt, name)]
    } else {
      text(weight: "bold", size: 11pt, name)
    }
    #if version != "" and version != none [
      #v(4pt)
      *Version:* #version
    ]
    #if deps != "" and deps != none [
      #v(3pt)
      *Dependencies:* #deps
    ]
    #if impact != "" and impact != none [
      #v(3pt)
      *Impact:* #impact
    ]
  ]
}


== Wave 1 — Modlist: Content

This wave expands the game with new factions, units, legendary characters, and campaign features. Everything in this wave builds on the MIXER startpos framework, so install MIXER first and keep every dependency chain active.

== Required Framework

#mod-entry("MIXER - Mixu's Unlocker", "https://steamcommunity.com/sharedfiles/filedetails/?id=2859968660", "v8.1 (Jul 2026)", "Mod Configuration Tool (recommended)", "The startpos unlocker that makes all factions playable (458 lords in Immortal Empires) and the modder framework nearly every content mod in this wave is built on. Activate this first — content mods will not function without it. Note: single-player only for now; Aug 2026 CA update broke multiplayer.")

== New Factions

#mod-entry("Cataph's Southern Realms (TEB) [It Works in 8.1]", "https://steamcommunity.com/sharedfiles/filedetails/?id=2927296206", "v8.1 (Dec 2025)", "MIXER - Mixu's Unlocker; free WH3 Jade/Grey/Amethyst Wizard packs", "Turns Tilea, Estalia, the Border Princes and New World Colonies into a full culture: 8 playable factions, 10 legendary lords and 1 legendary hero, 30+ new units, custom tech and building trees, landmarks, and the Plutocracy and mercenary-camp mechanics. Not for the Realms of Chaos campaign.")

#mod-entry("OvN Lost Factions: Fimir", "https://steamcommunity.com/sharedfiles/filedetails/?id=2899955636", "v8.1 (Jul 2026)", "MIXER - Mixu's Unlocker (required); not multiplayer-campaign compatible", "Adds the Fimir as a complete new playable race: full custom roster, 2 playable factions (Tendrils of Doom, Rancor Hold), and custom mechanics including Godhood Ascension, Gifts of Chaos and the Death Quest.")

#mod-entry("Cataph's Kraka Drak: the Norse Dwarfs [It Works in 8.1]", "https://steamcommunity.com/sharedfiles/filedetails/?id=2878423760", "v8.1 (Dec 2025)", "MIXER - Mixu's Unlocker (required)", "Adds the Norse Dwarf sub-faction under Great King Thorgard Cromson: 11+ new units, 8 Regiments of Renown, a custom legendary lord type, and new tech tree, buildings and landmarks. For Immortal Empires / The Old World campaigns.")

== New Legendary Lords & Characters

#mod-entry("Mixu's Legendary Lords", "https://steamcommunity.com/sharedfiles/filedetails/?id=2802810577", "v8.1 (Jul 2026)", "Mixu's Legendary Lords: Asset Pack", "The community-standard legendary lord pack: 50+ lore-accurate legendary lords and heroes across existing races, with custom skill trees and new start positions. MIXER is recommended to play the added lords.")

#mod-entry("Mixu's Legendary Lords: Asset Pack", "https://steamcommunity.com/sharedfiles/filedetails/?id=2802811244", "v8.1 (Jul 2026)", "", "Required asset pack for Mixu's Legendary Lords — without it you will get missing character models and other broken assets. Install alongside the main mod.")

#mod-entry("[DEER24] Walk with the Dragon (Cathay Units Patch)", "https://steamcommunity.com/sharedfiles/filedetails/?id=2789903784", "v8.1 (Aug 2026)", "Mixu's faction unlocker (required); optional English-patch submod", "Cathay mega-pack: 14 legendary lords, 11 legendary heroes, 2 new hero types, 60+ new units and a 50-turn event chain. Chinese-language text by default (English patch submod exists). Immortal Empires only.")

== Notes

Wave 1 mods add significant content. MIXER is the mandatory hub — activate it before anything else. Mixu's Legendary Lords requires its Asset Pack. All mods here are single-player focused; check conflicts.conf for startpos interactions (e.g. Immortal Empires Expanded + Landmarks of Eternity pairing is covered in the content section).
