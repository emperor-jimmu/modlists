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

#mod-entry(
  "Rocketry Expanded",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=2837919908",
  version: "2026-06-30 · STAT-CHANGING",
  verified: "YES · Steam API + Workshop page (2026-08-21) · 16,775 subscribers",
  deps: "Requires Spaced Out! (also tagged Bionic Booster Pack + Frosty)",
  impact: "Adds new rocket modules and rocketry mechanics; highly modular, so you enable only the features you want.",
  notes: "Gate: PASS — an expansion with proportionate cost, not a shortcut. By Sgt_Imalas.",
)

#mod-entry(
  "Improved Rocket Controls",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=2873511998",
  version: "2026-08-16 · BEHAVIORAL-NEUTRAL",
  verified: "YES · Steam API + Workshop page (2026-08-21) · 764 subscribers",
  deps: "Requires Spaced Out!",
  impact: "A 'Limit' access setting between All and Crew stops non-crew dupes boarding a capsule, plus controlled/uncontrolled atmo-suit checkpoints.",
  notes: "Gate: PASS — access permissions only, no stat or recipe change.",
)
