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

== Wave 2: Graphics

Graphics mods change only how the game looks and how it tells you what is happening — the overlays and map clarity you depend on while running a network of worlds. They never touch simulation values, so they carry no power-spike risk; they must simply stay honest — clearer, not smarter.

// ============================================================================
// MOD CARDS GO HERE — added by the user (per project decision, this project
// does not research or select mods). Paste one #mod-entry(...) call per mod.
// Requirements (spec §4, §5): verified workshop URL; DLC dependency must be
// explicitly stated on each card and MUST be owned (Base / Spaced Out! /
// Bionic Booster Pack; NOT Aquatic/Frosty/Prehistoric); STAT-CHANGING mods
// must pass the power-spike gate (no ex-nihilo resources, no free heat
// deletion, no tech/labor bypass, no morale/skill breaks, no all-knowing info
// incl. geyser reveal); record the power-spike verdict in each card's Notes.
// ============================================================================
