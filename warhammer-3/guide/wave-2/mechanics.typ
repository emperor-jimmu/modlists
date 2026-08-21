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


== Wave 2 — Mechanics Mods (continued)

Additional mechanics that tie the Wave 2 systems together under SFO.

#mod-entry("Victory Conditions Overhaul - SFO Compatibility Patch", "https://steamcommunity.com/sharedfiles/filedetails/?id=3742809144", "v8.1 (Jul 2026)", "Victory Conditions Overhaul; SFO: Grimhammer III; (optional) Tabletop Caps: Reborn", "Updates VCO rewards, reward units, effects and script support for current SFO balance while preserving the route-based campaign structure. Adds guarded Tabletop Caps support for VCO reward units. Load order (top to bottom): this patch, VCO, SFO, Tabletop Caps.")

== Notes

These mechanics mods are the most impactful in the modlist. They are designed to be used together but can be activated selectively if you want a lighter challenge.

The VCO-SFO patch is required whenever Victory Conditions Overhaul and SFO are active together. Do not use multiple VCO-SFO patches at once. A new campaign is recommended after any major update to VCO, SFO, Tabletop Caps or the game.
