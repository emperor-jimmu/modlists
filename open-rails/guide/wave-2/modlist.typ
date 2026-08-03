// modlist.typ — Wave 2: The Yard
#let mod-entry(name, url, version: none, deps: none, impact: none, notes: none) = {
  block(fill: rgb("#f4f7fb"), inset: 10pt, radius: 4pt, stroke: 0.5pt + rgb("#d5dee8"))[
    #link(url)[#text(weight: "bold", size: 11pt, name)]
    #if version != none [#v(4pt) *Version:* #version]
    #if deps != none [#v(3pt) *Dependencies:* #deps]
    #if impact != none [#v(3pt) *Impact:* #impact]
    #if notes != none [#v(3pt) *Notes:* #notes]
  ]
}

== Wave 2 — Modlist: The Yard

Adds a small industrial route built around switching and industry work.

== Routes

#mod-entry(
  "Craven Timber Railway",
  "http://www.craven.coalstonewcastle.com.au/",
  version: "Freeware — 2026 (site version)",
  deps: "None — self-contained",
  impact: "5.8-mile NSW timber tramway from The Glen to a sawmill at Craven Station. Two saddle-tank steam locomotives (PWD32 and 529X), tight 120-metre curves, and six Wards River crossings. Small enough to learn switching, runaround moves and industry spotting.",
  notes: "Install via the Content form. Download page on the creator's site.",
)
