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

== Wave 1: Graphics

Graphics mods change only how the game looks and how it tells you what is happening — the overlays you read while taming vents, the clarity of the temperature and gas views, the legibility of the whole screen. They never touch simulation values, so they carry no power-spike risk. What they must do is stay honest: clearer, not smarter — a geyser is still a geyser until you tame it yourself.

#mod-entry(
  "Thermal Tooltips",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=1983504552",
  version: "2026-01-11 · CLIENT-ONLY",
  verified: "YES · Steam API + Workshop page (2026-08-21) · 28,095 subscribers",
  deps: "Base Game + Spaced Out! + Bionic Booster Pack (all owned packs tagged)",
  impact: "Expanded tooltips show thermal properties (boiling points, specific heat) so you stop checking the codex mid-design.",
  notes: "CLIENT-ONLY — informational only, no simulation values.",
)

#mod-entry(
  "Better Automation Overlay",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=1878896484",
  version: "2026-06-15 · CLIENT-ONLY",
  verified: "YES · Steam API + Workshop page (2026-08-21) · 270,537 subscribers",
  deps: "Base Game + Spaced Out! + Bionic Booster Pack",
  impact: "Makes the automation overlay readable: ports show what they output, and gates/sensors display their settings.",
  notes: "CLIENT-ONLY — explicitly does not affect automation logic. Pairs with Combined Conduit Display.",
)

#mod-entry(
  "Pipe Flow Overlay",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=2968583663",
  version: "2023-09-04 · CLIENT-ONLY",
  verified: "YES · Steam API + Workshop page (2026-08-21) · 32,978 subscribers",
  deps: "Base Game + Spaced Out!",
  impact: "Green arrows show pipe/rail flow direction; a red cross marks where flow is impossible, so blockages are obvious.",
  notes: "CLIENT-ONLY — visual troubleshooting only. Toggle via the overlay legend checkbox.",
)

#mod-entry(
  "[Vanilla + DLC] Combined Conduit Display",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=2634633299",
  version: "2022-05-01 · CLIENT-ONLY",
  verified: "YES · Steam API + Workshop page (2026-08-21) · 64,135 subscribers",
  deps: "Base Game + Spaced Out!",
  impact: "Brings pipes and rails to the front of their overlays so the network and its connections are never hidden behind other buildings.",
  notes: "CLIENT-ONLY — display only. Old (2022) but UI-only. Recommended companion to Better Automation Overlay.",
)
