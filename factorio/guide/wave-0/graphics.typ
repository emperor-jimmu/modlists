#let mod-entry(name, url, version: none, verified: none, deps: none, impact: none, notes: none) = {
  block(fill: rgb("#f2ede0"), inset: 10pt, radius: 4pt, stroke: 0.5pt + rgb("#e8590c"))[
    #link(url)[#text(weight: "bold", size: 11pt, fill: rgb("#e8590c"), name)]
    #if version != none [#v(4pt) *Version/Updated:* #version]
    #if verified != none [#v(3pt) *Verified:* #verified]
    #if deps != none [#v(3pt) *Dependencies:* #deps]
    #if impact != none [#v(3pt) *Impact:* #impact]
    #if notes != none [#v(3pt) *Notes:* #notes]
  ]
}

== The Castaway: Graphics

The three mods in this section change how the game *looks* and how it talks to you — the interface panel, the world's terrain, and the status dots on every machine. None of them changes what the factory produces; they change how clearly you can see it. Wave 0 keeps every recipe and balance number exactly as vanilla ships them.

#mod-entry(
  "Todo List",
  "https://mods.factorio.com/mod/Todo-List",
  version: "Updated 28 Jun 2026 (page); 2.0-line build v19.15.2 (5 Jun 2026).",
  verified: "YES — portal page + API fetched 2026-08-03; page title 'Todo List' matches the API title.",
  deps: "None — standalone.",
  impact: "Adds a checklist panel for planning and tracking tasks — research goals, expansion jobs, things to fix. In multiplayer the list is shared, so a co-op crew can synchronise who builds what and nothing gets forgotten. A pure interface addition; no gameplay value is changed.",
  notes: "By JasonMiles; 275K+ downloads. The panel is bound to any key you like in the controls menu; pick one you will actually press. The 2.0.77 install uses the 2.0-line build v19.15.2.",
)

#mod-entry(
  "Alien Biomes",
  "https://mods.factorio.com/mod/alien-biomes",
  version: "Updated 24 Jun 2026 (page); 2.0-line build v0.7.4 (23 Jun 2025).",
  verified: "YES — portal page + API fetched 2026-08-03; page title 'Alien Biomes' matches the API title.",
  deps: "None — standalone.",
  impact: "Replaces Nauvis's single grass-and-desert palette with a far more varied terrain — snow, volcanic, crater and many dirt, sand and grass variants — plus new tree and decorative types. Environment and terrain visuals only: no ores, recipes or balance numbers are touched, and the terrain-tweak category is explicitly allowed at Wave 0.",
  notes: "By Earendel; 700K+ downloads, one of the portal's most-installed visual mods. Terrain generation is locked at world creation, so enable it before starting The Castaway's new game; it will not retroactively re-texture an existing save. The 2.0.77 install uses v0.7.4.",
)

#mod-entry(
  "Bottleneck Lite",
  "https://mods.factorio.com/mod/BottleneckLite",
  version: "Updated 23 Jun 2026 (page); 2.0-line build v1.3.4 (6 Jun 2025).",
  verified: "YES — portal page + API fetched 2026-08-03; page title 'Bottleneck Lite' matches the API title.",
  deps: "None — standalone.",
  impact: "Shows a small coloured dot on every machine — green while running, yellow when full or waiting on output, red when starved of input — so a dying belt is visible from across the factory instead of hiding inside a tooltip. It runs with zero runtime overhead and updates instantly. Display-only: it changes nothing about how machines behave, so no cap or cost is touched.",
  notes: "By raiguard; 222K+ downloads. The original Bottleneck mod does the same job but stopped updating in Dec 2024; Lite is the actively maintained 2.0 choice (its 2.1-line build shipped Jun 2026). The 2.0.77 install uses v1.3.4.",
)
