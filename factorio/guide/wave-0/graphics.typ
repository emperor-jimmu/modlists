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

The two mods in this section change how the game *looks* and how it talks to you — the interface panel and the status dots on every machine. None of them changes what the factory produces; they change how clearly you can see it. Wave 0 keeps every recipe and balance number exactly as vanilla ships them.

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
  "Bottleneck Lite",
  "https://mods.factorio.com/mod/BottleneckLite",
  version: "Updated 23 Jun 2026 (page); 2.0-line build v1.3.4 (6 Jun 2025).",
  verified: "YES — portal page + API fetched 2026-08-03; page title 'Bottleneck Lite' matches the API title.",
  deps: "None — standalone.",
  impact: "Shows a small coloured dot on every machine — green while running, yellow when full or waiting on output, red when starved of input — so a dying belt is visible from across the factory instead of hiding inside a tooltip. It runs with zero runtime overhead and updates instantly. Display-only: it changes nothing about how machines behave, so no cap or cost is touched.",
  notes: "By raiguard; 222K+ downloads. The original Bottleneck mod does the same job but stopped updating in Dec 2024; Lite is the actively maintained 2.0 choice (its 2.1-line build shipped Jun 2026). The 2.0.77 install uses v1.3.4.",
)
