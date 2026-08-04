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

== Wave 0: Mechanics

Mechanics mods change how you *interact* with the colony, not how the colony behaves. For a quality-of-life wave that means the tools of comfortable operation: larger and more readable menus, copy-settings helpers that clone one building's configuration onto a row, planning aids that make layouts easier to think about, and sweep or selection filters that keep the chore of tidying the base fast. None of these touch a building stat, a recipe, or a balance value — they make the game easier to run, not easier to cheat.

// ============================================================================
// MOD CARDS GO HERE — added by the user (per project decision, this project
// does not research or select mods). Paste one #mod-entry(...) call per mod.
// Requirements (spec §4, §5): verified workshop URL; CLIENT-ONLY or
// BEHAVIORAL-NEUTRAL only for Wave 0; DLC must be owned (Base / Spaced Out!
// / Bionic Booster Pack; NOT Aquatic/Frosty/Prehistoric); power-spike gate
// must pass (no ex-nihilo resources, no free heat deletion, no tech/labor
// bypass, no morale/skill breaks, no all-knowing info incl. geyser reveal).
// ============================================================================
