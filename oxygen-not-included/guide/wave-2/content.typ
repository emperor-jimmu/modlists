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

== Wave 2: Content

Content mods add things to build, ranch, grow, or research at the endgame scale — new buildings, new critters, new recipes for the last stretch of Spaced Out. The standing rule is *proportionate cost*: anything powerful must cost what it is worth in materials, power, or labor, or it fails the power-spike gate.

#mod-entry(
  "Ronivan's Legacy - Industrial Revolution",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=3557584850",
  version: "2026-07-19 · STAT-CHANGING",
  verified: "YES · Steam API + Workshop page (2026-08-21) · 42,015 subscribers",
  deps: "Base Game + Spaced Out! + Bionic Booster Pack (all owned packs tagged); requires Mod Updater",
  impact: "Consolidates twelve industrial mods into one configurable expansion of the production/processing tree, with per-building toggles.",
  notes: "Gate: PASS — a content expansion with researched, material-costed chains, not free output. Install Mod Updater first. By Sgt_Imalas (preserving Ronivan's work).",
)

#mod-entry(
  "Helium Reborn",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=2915321826",
  version: "2026-08-08 · STAT-CHANGING",
  verified: "YES · Steam API + Workshop page (2026-08-21) · 281 subscribers",
  deps: "Requires Spaced Out! (also tagged Bionic Booster Pack + Frosty)",
  impact: "Re-enables Helium as a usable element, produced when radbolts pass through dense hydrogen.",
  notes: "Gate: PASS — proportionate cost: radbolts + dense hydrogen, extreme reaction heat and radiation germs to manage.",
)
