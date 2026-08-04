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

== Wave 0: Modlist

Wave 0 adds no gameplay content. Every mod in this chapter exists for one of three reasons: to make the game easier to *see*, easier to *operate*, or easier to *plan*. Nothing here changes a recipe, a resource, a building stat, or a research tree — that is the wave's hard rule. Wave 0 admits only *CLIENT-ONLY* mods (purely visual, UI, or informational; they never touch the simulation) and *BEHAVIORAL-NEUTRAL* mods (they change how you interact with buildings — copy settings, plan layouts, filter sweeps — without changing any value the simulation uses). Anything that alters a stat, a recipe, or a balance number is Wave 1+ material and must clear the power-spike gate first.

As of this release, every card below is *pending addition*: per project decision, this project does not research or select mods — you do. When you are ready, paste one verified mod card per mod into the placeholder blocks in the Mechanics and Graphics sections that follow. Each card needs a real Workshop URL, a classification tag, and a power-spike pass, per the rules in the project's STATUS.

The mods you add split across the next two sections by what they change: *Mechanics* for tools that change how you work, and *Graphics* for mods that only change how the game looks and how it tells you what is happening.
