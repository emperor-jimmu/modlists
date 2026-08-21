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


== Wave 1 — Content Mods: World & Characters

These content mods expand the campaign world itself — new lands to conquer, landmarks to build, and a deeper cast of characters. They pair with the faction mods in the Wave 1 modlist and all share the MIXER framework.

#mod-entry("Immortal Empires Expanded", "https://steamcommunity.com/sharedfiles/filedetails/?id=3007996493", "v8.1 (Jul 2026)", "MIXER - Mixu's Unlocker (required); incompatible with other startpos mods", "Expands the Immortal Empires map with 184 new settlements, 74 provinces and 55 factions across Ind, Khuresh, the Lost Isles of Elithis, Eastern Steppes, Khosun and Nippon. Fills the empty map edges with vanilla-plus world content.")

#mod-entry("Landmarks of Eternity", "https://steamcommunity.com/sharedfiles/filedetails/?id=3025510782", "v8.1 (May 2026)", "MIXER recommended; some landmarks require it", "Adds 420+ new landmarks to Immortal Empires (290 for the Old World) with unique dilemmas, items, icons and roughly 50 Regiments of Renown. Has an official \"Landmarks of Eternity IEE Edition\" submod for pairing with Immortal Empires Expanded.")

#mod-entry("Legendary Characters - 8.1", "https://steamcommunity.com/sharedfiles/filedetails/?id=3305404052", "v8.1 (Aug 2026)", "Mod Configuration Tool (required)", "Adds 103 lore characters (legendary lords and heroes) with custom skill trees, quest items and some units/factions. Every character can be toggled on/off via the Mod Configuration Tool. Complements Mixu's Legendary Lords without overlapping it.")

== Notes

World content in Wave 1 significantly expands the campaign map and character roster. Ensure all dependencies are met before activation — MIXER first, then the content chain. For Landmarks of Eternity + Immortal Empires Expanded, use the official IEE Edition submod (id 3079915520) instead of the base version.
