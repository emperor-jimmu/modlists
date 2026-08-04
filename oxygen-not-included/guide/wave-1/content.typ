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

== Wave 1: Content

Content mods add things to build, ranch, grow, or cook — new buildings, new critters and plants, new recipes. The standing rule for Wave 1 is *proportionate cost*: anything new must cost what it is worth, so a powerful building or critter comes with a matching price in materials, power, or labor. A content mod that hands out a cheap version of something expensive fails the power-spike gate.

// ============================================================================
// MOD CARDS GO HERE — added by the user (per project decision, this project
// does not research or select mods). Paste one #mod-entry(...) call per mod.
// Requirements (spec §4, §5): verified workshop URL; STAT-CHANGING mods are
// allowed in Wave 1 ONLY if they pass the power-spike gate (no ex-nihilo
// resources, no free heat deletion, no tech/labor bypass, no morale/skill
// breaks, no all-knowing info incl. geyser reveal); DLC must be owned (Base /
// Spaced Out! / Bionic Booster Pack; NOT Aquatic/Frosty/Prehistoric); record
// the power-spike verdict in each card's Notes.
// ============================================================================
