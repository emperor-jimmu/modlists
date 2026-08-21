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

== Wave 0: Graphics

Graphics mods change only how the game looks and how it tells you what is happening — nothing about the simulation underneath. Expect cleaner overlays, color-coding that makes statuses readable at a glance, and clearer or quieter notifications. A mod in this section should make the colony easier to read, never easier to cheat.

#mod-entry(
  "Bigger Camera Zoom Out",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=1717463209",
  version: "2022-10-10 · CLIENT-ONLY",
  verified: "YES · Steam API + Workshop page (2026-08-21) · 684,876 subscribers",
  deps: "Base Game + Spaced Out!",
  impact: "Zoom out far beyond the stock limit and pan past the map edges for easier side-of-map work.",
  notes: "CLIENT-ONLY — pure camera, no simulation. Old (2022) but UI-only; staleness is weak evidence of breakage here. If you hit a black screen, press H to recenter.",
)

#mod-entry(
  "Show Building Ranges",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=1960996649",
  version: "2024-07-22 · CLIENT-ONLY",
  verified: "YES · Steam API + Workshop page (2026-08-21) · 435,161 subscribers",
  deps: "Base Game + Spaced Out! + Bionic Booster Pack (all owned packs tagged)",
  impact: "Draws the active reach of pumps, deodorizers, sensors, and other range-based buildings while placing or selecting them.",
  notes: "CLIENT-ONLY — informational overlay, no stat change.",
)

#mod-entry(
  "Better Info Cards",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=1960947963",
  version: "2026-06-16 · CLIENT-ONLY",
  verified: "YES · Steam API + Workshop page (2026-08-21) · 330,209 subscribers",
  deps: "Base Game + Spaced Out! + Bionic Booster Pack",
  impact: "Overhauls info cards: groups similar cards, shows more of a busy tile's contents, and fixes base-game display bugs.",
  notes: "CLIENT-ONLY — display only. Most behaviors are toggled in its options screen.",
)

#mod-entry(
  "True Tiles (texture mod)",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=2815406414",
  version: "2026-08-19 · CLIENT-ONLY",
  verified: "YES · Steam API + Workshop page (2026-08-21) · 86,454 subscribers",
  deps: "Base Game + Spaced Out!",
  impact: "Replaces tile artwork with material-matched textures so a sandstone wall looks like sandstone.",
  notes: "CLIENT-ONLY — purely cosmetic, gameplay unaffected; achievements unaffected.",
)

#mod-entry(
  "GasOverlay",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=1737859934",
  version: "2023-03-04 · CLIENT-ONLY",
  verified: "YES · Steam API + Workshop page (2026-08-21) · 120,061 subscribers",
  deps: "Base Game + Spaced Out! + Bionic Booster Pack",
  impact: "Replaces the oxygen overlay with a gas overlay that gives every gas its own color and shows pressure by intensity.",
  notes: "CLIENT-ONLY — visual only. Toggle with F1.",
)

#mod-entry(
  "Pip Plant Overlay",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=2493100777",
  version: "2026-06-10 · CLIENT-ONLY",
  verified: "YES · Steam API + Workshop page (2026-08-21) · 70,349 subscribers",
  deps: "Base Game + Spaced Out! + Bionic Booster Pack (all owned packs tagged)",
  impact: "Shows exactly where pips can plant seeds and why they cannot, so you stop guessing at pip-ranching layouts.",
  notes: "CLIENT-ONLY — informational overlay, no stat change.",
)

#mod-entry(
  "Suppress Notifications",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=1832319118",
  version: "2026-04-25 · CLIENT-ONLY",
  verified: "YES · Steam API + Workshop page (2026-08-21) · 78,375 subscribers",
  deps: "Base Game + Spaced Out!",
  impact: "Hide persistent alerts, status icons, and damage bars on objects you choose to mute.",
  notes: "CLIENT-ONLY — notifications only; the simulation is untouched.",
)
