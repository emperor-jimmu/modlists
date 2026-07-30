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


== Wave 0 — Graphics Mods

Base visual enhancements that improve the look of vanilla Warhammer III across all races and factions.

#mod-entry("Colourless' Radious HD Texture Pack", "https://steamcommunity.com/sharedfiles/filedetails/?id=3051876615", "v8.1 (July 24 2026)", "", "Comprehensive HD texture replacement covering Empire, Dwarfs, Greenskins, Vampire Counts, Bretonnia, Wood Elves, Beastmen, and more. Sharper unit details, improved armour textures, and cleaner faction heraldry with minimal performance impact.")

#mod-entry("Warhammer 1 Texture Update Project", "https://steamcommunity.com/sharedfiles/filedetails/?id=3237873696", "v8.1", "", "Upgrades low-resolution textures for races carried over from Warhammer 1 — brings Empire State Troops, Dwarf Warriors, Greenskin Boyz, and other legacy units up to Warhammer 3 visual standards.")

#mod-entry("Campaign Map Lighting", "https://steamcommunity.com/sharedfiles/filedetails/?id=2818403447", "v8.1", "", "Improves campaign map lighting with warmer tones, deeper shadows, and better contrast between day and night cycles. Enhances snow, desert, and jungle region visuals.")

== Notes

All Wave 0 graphics mods are purely cosmetic. No mechanical or gameplay impact. Mods are compatible with all DLC and other visual overhauls in later waves.
