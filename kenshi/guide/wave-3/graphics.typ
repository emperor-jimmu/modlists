#let mod-entry(name, url, version: none, verified: none, deps: none, impact: none, notes: none) = {
  block(fill: rgb("#f2ead9"), inset: 10pt, radius: 4pt, stroke: 0.5pt + rgb("#b3492e"))[
    #link(url)[#text(weight: "bold", size: 11pt, fill: rgb("#8c2b2b"), name)]
    #if version != none [#v(4pt) *Version/Updated:* #version]
    #if verified != none [#v(3pt) *Verified:* #verified]
    #if deps != none [#v(3pt) *Dependencies:* #deps]
    #if impact != none [#v(3pt) *Impact:* #impact]
    #if notes != none [#v(3pt) *Notes:* #notes]
  ]
}

== The Expedition: Graphics

This single mod is the visual half of the world opening up. Wave 3's graphics slot ships one verified mod rather than padding the list: Biome Edits is a pure terrain-texture overhaul with no gameplay effect, and the alternatives that changed the land's look did so by *removing* survival hazards (less acid rain, more fertile borders), which the wave's rule rejects. One honest mod that makes fifty biomes worth walking through.

#mod-entry(
  "Biome Edits",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=3295900180",
  version: "Posted and updated 25 Jul 2024",
  verified: "YES — Steam Workshop page fetched (2026-08-03); title matches; same author as Wave 1's Mood Weather; Steam API confirms posted/updated 2024-07-25, 2,281 subscribers",
  deps: "None — pure terrain/ground textures; by the same author as Wave 1's Mood Weather, so the two are built to pair; keep Compressed Textures Project above it as with all content",
  impact: "Visual edits across 50-plus biomes: consistent ground tiling (no more visible texture seams), small rocks scattered where the ground looked bare, a Serpentine Wastes given the look of the Rakes, greener Hoodoo Badlands, a prettier Forest Land, and desert junk debris scattered across the sands. Nothing about it touches fertility, weather or gameplay — the world simply reads better.",
  notes: "The exact fit for this wave: it makes the expedition's vistas worth the walk without making the walk easier. Pairs with Mood Weather for a coherent, hand-tuned Kenshi. 2,281 subscribers, tags Visuals/Environment.",
)
