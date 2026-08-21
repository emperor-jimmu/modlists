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

#mod-entry(
  "Smart Pumps",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=1887986467",
  version: "2026-07-14 · STAT-CHANGING",
  verified: "YES · Steam API + Workshop page (2026-08-21) · 33,991 subscribers",
  deps: "Base Game + Spaced Out! + Bionic Booster Pack (all owned packs tagged)",
  impact: "Three late-game pumps (filtered gas pump and precision liquid/gas movers) for high-efficiency, targeted flow.",
  notes: "Gate: PASS — gated behind late research and materials; nothing free.",
)

#mod-entry(
  "Airlock Door",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=2094698134",
  version: "2026-05-20 · STAT-CHANGING",
  verified: "YES · Steam API + Workshop page (2026-08-21) · 118,725 subscribers",
  deps: "Base Game + Spaced Out! + Bionic Booster Pack (all owned packs tagged)",
  impact: "A proper airlock building that lets dupes pass while keeping full atmospheric isolation — retire your liquid locks.",
  notes: "Gate: PASS — costs materials and power; it replaces an exploit (the liquid lock), not a paid feature.",
)

#mod-entry(
  "Transit Tubes Expanded",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=3430960564",
  version: "2026-06-18 · STAT-CHANGING",
  verified: "YES · Steam API + Workshop page (2026-08-21) · 11,134 subscribers",
  deps: "Base Game + Spaced Out! + Bionic Booster Pack (all owned packs tagged)",
  impact: "New transit-tube crossings (insulated, bunker, ladder, fire-pole, door, bridge) for compact, symmetric tube networks.",
  notes: "Gate: PASS — every piece costs materials (raw mineral, steel, or plastic).",
)

#mod-entry(
  "Freezer",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=2618339179",
  version: "2024-11-29 · STAT-CHANGING",
  verified: "YES · Steam API + Workshop page (2026-08-21) · 33,429 subscribers",
  deps: "Base Game + Spaced Out!",
  impact: "A freezer building that holds food at deep-freeze temperature (−19°C) to arrest spoilage.",
  notes: "Gate: PASS — 480 W active cooling (40 W standby); you still need a sterile atmosphere to fully stop spoilage.",
)
