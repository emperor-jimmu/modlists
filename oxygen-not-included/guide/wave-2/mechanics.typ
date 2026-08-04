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

== Wave 2: Mechanics

Mechanics mods change how Wave 2's *systems* behave — the rockets you build and fly, the planetoids you navigate between, the radiation you generate and direct. These are STAT-CHANGING mods in the capstone wave, so every one must clear the power-spike gate: no free resources, no free heat deletion, no skipped work. A Wave 2 mechanics mod should make rocketry, colonization, or radiation deeper or clearer — never cheaper.

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
