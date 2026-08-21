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

== Wave 2: Modlist

Wave 2 is the capstone, and the mods here are allowed to be ambitious — they exist to deepen the *Spaced Out* experience this wave is built on: rocketry aids that make building and flying rockets less fiddly, planetoid navigation tools that make the star map legible, radiation tooling that makes radbolt work readable, endgame content that stretches the run between the last tech and "done", and performance mods that keep a multi-world colony from becoming a slideshow. Where Wave 1 admitted mods that changed how the game plays, Wave 2 admits mods that change how the *network* plays.

The DLC rule is absolute here: every card must match the DLCs you own — *Spaced Out!* and the *Bionic Booster Pack* — and every card must state its DLC dependency out loud. Mods that require the *Aquatic*, *Frosty* or *Prehistoric* packs are out of scope; you do not own them, and this guide will not include mods you cannot run.

The cards below are populated and verified (decision log in the project's STATUS). Each card states its Workshop URL, DLC dependency, and power-spike verdict. The capstone set splits across three sections by what they change: *Mechanics* for rocket, planetoid, and radiation systems; *Content* for endgame buildings, critters, and recipes; and *Graphics* for overlay and UI clarity across many worlds.

