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


== Wave 1 — Graphics Mods

Enhanced visual overhauls that add depth and detail to battles and campaign maps.

#mod-entry("ULTIMATE LIGHTING 2.0", "https://steamcommunity.com/sharedfiles/filedetails/?id=2922534576", "v2.0", "", "Complete battle lighting overhaul — deeper shadows, realistic sun positioning, improved ambient occlusion, and enhanced fog effects. Dramatically improves battle atmosphere across all climate types.")

#mod-entry("Details Matter: True Grit Textures (The Empire)", "https://steamcommunity.com/sharedfiles/filedetails/?id=2961327160", "v8.1", "", "High-detail texture upgrade for Empire units — adds realistic wear, dirt, and battle damage to armour and clothing. Gritty visual style fitting the End Times setting.")

#mod-entry("Lore Soldiers: Units Reskin as Miniatures and Books", "https://steamcommunity.com/sharedfiles/filedetails/?id=2789877586", "v8.1", "", "Reskins units across multiple factions to match tabletop Warhammer miniature aesthetics and official art. Covers High Elves, Dark Elves, Lizardmen, and more.")

== Notes

Wave 1 graphics mods are designed to complement each other. ULTIMATE LIGHTING 2.0 works alongside texture mods without conflict.
