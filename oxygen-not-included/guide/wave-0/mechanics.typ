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

#mod-entry(
  "Blueprints fixed",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=2435244304",
  version: "2026-05-23 · BEHAVIORAL-NEUTRAL",
  verified: "YES · Steam API + Workshop page (2026-08-21) · 104,794 subscribers",
  deps: "Base Game + Spaced Out! (no DLC required)",
  impact: "Copy a build and paste it as a blueprint; the mod auto-places the dig and build orders so dupes do only what is needed.",
  notes: "Gate: PASS — no recipe, resource, or stat changes. Blueprints save to your Klei folder and can be shared. Instant-complete only in sandbox/debug.",
)

#mod-entry(
  "Research Queue",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=1893887916",
  version: "2025-06-01 · BEHAVIORAL-NEUTRAL",
  verified: "YES · Steam API + Workshop page (2026-08-21) · 349,254 subscribers",
  deps: "Base Game + Spaced Out! + Bionic Booster Pack (all owned packs tagged)",
  impact: "Queue several technologies at once so research continues without you re-checking the tree.",
  notes: "Gate: PASS — no research cost or tech changed; pure scheduling. By Stephen (Mod Updater author).",
)

#mod-entry(
  "Sweep By Type",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=1863428350",
  version: "2026-07-20 · BEHAVIORAL-NEUTRAL",
  verified: "YES · Steam API + Workshop page (2026-08-21) · 148,388 subscribers",
  deps: "Base Game + Spaced Out! + Bionic Booster Pack (all owned packs tagged)",
  impact: "Adds a filter to the Sweep tool so you sweep only the debris types you choose.",
  notes: "Gate: PASS — no values change; it only narrows what dupes haul.",
)

#mod-entry(
  "ChainedDeconstruction",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=1737893485",
  version: "2025-01-24 · BEHAVIORAL-NEUTRAL",
  verified: "YES · Steam API + Workshop page (2026-08-21) · 101,916 subscribers",
  deps: "Base Game + Spaced Out! + Bionic Booster Pack",
  impact: "Deconstruct one connected building to tear down every marked, connected copy — ladders, pipes, and wall runs in one order.",
  notes: "Gate: PASS — no stat or recipe change; errand convenience only.",
)

#mod-entry(
  "Customizable Speed",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=2002421412",
  version: "2026-07-28 · BEHAVIORAL-NEUTRAL",
  verified: "YES · Steam API + Workshop page (2026-08-21) · 127,878 subscribers",
  deps: "Base Game + Spaced Out! + Bionic Booster Pack (all owned packs tagged)",
  impact: "Set custom game-speed presets from the mod menu — finer time pacing than the stock 1x/2x/3x.",
  notes: "Gate: PASS — time scale only, no simulation values. Keep it under x15; higher speeds cause lag and critter-timing quirks.",
)
