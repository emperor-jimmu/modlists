// modlist.typ — Wave 1: The Road Freight
#let mod-entry(name, url, version: none, deps: none, impact: none, notes: none) = {
  block(fill: rgb("#f4f7fb"), inset: 10pt, radius: 4pt, stroke: 0.5pt + rgb("#d5dee8"))[
    #link(url)[#text(weight: "bold", size: 11pt, name)]
    #if version != none [#v(4pt) *Version:* #version]
    #if deps != none [#v(3pt) *Dependencies:* #deps]
    #if impact != none [#v(3pt) *Impact:* #impact]
    #if notes != none [#v(3pt) *Notes:* #notes]
  ]
}

== Wave 1 — Modlist: Road Freight

Adds the first real route plus a complete diesel-freight trainset and activities, all self-contained.

== Routes

#mod-entry(
  "BNSF Starter Route",
  "https://ts-files.com/files/TS_STARTER_ROUTE.zip",
  version: "Catalogue freeware — 2026",
  deps: "None — self-contained (includes trainsets and activities)",
  impact: "BNSF Scenic Subdivision, Pacific Northwest (USA). Modern diesel freight on a main line: signals, longer consists, throttle and train-brake discipline, and basic timetable running through the included activities.",
  notes: "Install via the Content form. ~598 MB download / ~894 MB installed. Pick a BNSF freight activity to start.",
)

== Train Sets

#mod-entry(
  "BNSF Starter Trainsets",
  "https://ts-files.com/files/TS_STARTER_ROUTE.zip",
  version: "Included with BNSF Starter Route",
  deps: "BNSF Starter Route",
  impact: "Ships the diesel locomotives and freight cars needed by the route's activities — no separate download required.",
  notes: "Bundled with the route; no extra install step.",
)
