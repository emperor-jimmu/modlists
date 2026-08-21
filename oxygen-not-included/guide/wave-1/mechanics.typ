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

== Wave 1: Mechanics

Mechanics mods change how the *systems* behave — the automation that runs your loops, the heat transfer your base lives with, the behavior of the geysers and vents you tame. These are the first Wave 1 mods allowed to touch simulation values, so every one must clear the power-spike gate: no free resources, no free heat deletion, no skipped work. A mechanics mod should make taming deeper or clearer, never cheaper.

#mod-entry(
  "Piped Everything",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=3033409170",
  version: "2026-08-16 · STAT-CHANGING",
  verified: "YES · Steam API + Workshop page (2026-08-21) · 15,141 subscribers",
  deps: "Base Game + Spaced Out! + Bionic Booster Pack",
  impact: "Adds liquid, gas, and solid pipe ports to many buildings so outputs can be plumbed directly instead of hauled.",
  notes: "Gate: PASS — proportionate cost (you still build the pipe network; a blocked output fills internal storage, then disables the building). Config lives in PipedEverything.json.",
)

#mod-entry(
  "Waste Not, Want Not",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=2567122431",
  version: "2025-04-06 · STAT-CHANGING",
  verified: "YES · Steam API + Workshop page (2026-08-21) · 100,196 subscribers",
  deps: "Base Game + Spaced Out! + Bionic Booster Pack (all owned packs tagged)",
  impact: "Dupes prefer eating the stalest leftovers first, and refrigerators/ration boxes gain a freshness-control slider.",
  notes: "Gate: PASS — reduces spoilage waste, creates no food and changes no nutrition values.",
)
