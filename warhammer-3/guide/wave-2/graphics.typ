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


== Wave 2 — Graphics Mods

Darkened visuals reinforcing the End Times apocalyptic setting.

#mod-entry("Grim Lighting", "https://steamcommunity.com/sharedfiles/filedetails/?id=3363516919", "v8.1", "", "Dark, oppressive battle lighting with reduced saturation and increased shadow density. Creates a grim atmosphere that suits the End Times — overcast skies, blood-drenched battlefields, and muted colour palette.")

#mod-entry("Chaos Visual Overhaul", "https://steamcommunity.com/sharedfiles/filedetails/?id=2791113369", "v8.1", "", "Comprehensive visual overhaul for all Chaos factions — Warriors of Chaos, Daemons of Chaos, and Beastmen. Updated armour textures, corrupted banner designs, and Daemon model refinements.")

#mod-entry("Better Chaos Waste Lighting Effect", "https://steamcommunity.com/sharedfiles/filedetails/?id=2853785889", "v8.1", "Chaos Visual Overhaul", "Adds unique atmospheric lighting to Chaos Waste regions on the campaign map — eerie green glows, volatile skies, and corruption-based visual effects that intensify as Chaos influence spreads.")

== Notes

Wave 2 graphics mods reinforce the End Times atmosphere. Some are chained to other mods. Compatible with Waves 0-1 graphics.
