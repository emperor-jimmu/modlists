// modlist.typ — Wave 3: The Limited
#let mod-entry(name, url, version: none, deps: none, impact: none, notes: none) = {
  block(fill: rgb("#f4f7fb"), inset: 10pt, radius: 4pt, stroke: 0.5pt + rgb("#d5dee8"))[
    #link(url)[#text(weight: "bold", size: 11pt, name)]
    #if version != none [#v(4pt) *Version:* #version]
    #if deps != none [#v(3pt) *Dependencies:* #deps]
    #if impact != none [#v(3pt) *Impact:* #impact]
    #if notes != none [#v(3pt) *Notes:* #notes]
  ]
}

== Wave 3 — Modlist: The Limited

Steam-era capstone: a mountain-engineering-marvel route with progressive steam tutorials.

== Routes

#mod-entry(
  "Great Zig Zag Railway",
  "http://www.zigzag.coalstonewcastle.com.au/",
  version: "Freeware — 2026 (site version)",
  deps: "None — self-contained",
  impact: "Blue Mountains NSW heritage line from Mt Victoria toward Bowenfels, west of Lithgow. An international engineering marvel with reversing zig-zag moves and steep gradients, plus 7 progressive tutorial activities that teach steam locomotive handling step by step.",
  notes: "Install via the Content form. ~210 MB download. Play the tutorial activities in order.",
)
