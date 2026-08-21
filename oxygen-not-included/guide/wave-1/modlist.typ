#let mod-entry(name, url, version: none, verified: none, deps: none, impact: none, notes: none) = {
  block(fill: rgb("#f5efe2"), inset: 10pt, radius: 4pt, stroke: 0.5pt + rgb("#1fa2a0"))[
    #link(url)[#text(weight: "bold", size: 11pt, fill: rgb("#1fa2a0"), name)]
    #if version != none [#v(4pt) *Version/Updated:* #version]
    #if verified != none [#v(3pt) *Verified:* #verified]
    #if deps != none [#v(3pt) *Dependencies:* #deps]
    #if impact != none [#v(3pt) *Impact:* #impact]
    #if notes != none [#v(3pt) *Notes:* #notes]
  ]
}

== Wave 1: Modlist

Wave 1 is where the colony stops surviving and starts engineering, and the mods in this chapter are allowed to change how the game plays — not how the game cheats. Where Wave 0 admitted only mods that changed nothing about the simulation, Wave 1 opens the door to *STAT-CHANGING* mods: mods that alter a recipe, a resource, a building's numbers, or how a system works. That door has one lock on it — the *power-spike gate*. A Wave 1 mod passes only if it does not hand the colony free resources, free heat deletion, or free power — nothing that lets a player skip the taming work this wave is about. Mods that reveal geysers, drain heat for nothing, spawn water or oil from empty rooms, or remove the cost of an important build are out, because they delete the very game this wave teaches.

The cards below are populated and verified (decision log in the project's STATUS). Each card carries its Workshop URL, its classification, and a note recording its power-spike verdict. The mods split across three sections by what they change: *Mechanics* for automation, thermal, and geyser tools; *Content* for new buildings, critters, plants, and recipes; and *Graphics* for overlay and visual clarity.

