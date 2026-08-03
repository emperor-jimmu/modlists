#let mod-entry(name, url, version: none, deps: none, impact: none, notes: none) = {
  block(fill: rgb("#f4f7fb"), inset: 10pt, radius: 4pt, stroke: 0.5pt + rgb("#d5dee8"))[
    #link(url)[#text(weight: "bold", size: 11pt, name)]
    #if version != none [#v(4pt) *Version:* #version]
    #if deps != none [#v(3pt) *Dependencies:* #deps]
    #if impact != none [#v(3pt) *Impact:* #impact]
    #if notes != none [#v(3pt) *Notes:* #notes]
  ]
}

== Wave 0 — Modlist: Vanilla + Config-as-QoL

This wave uses only the built-in Content system and Open Rails' own settings. No external content is installed.

== Routes

#mod-entry(
  "Demo Model 1",
  "https://static.openrails.org/files/DemoModel1.zip",
  version: "Catalogue freeware — 2026",
  deps: "None — self-contained",
  impact: "Learning route for the Wave 0 tutorial. BR 'blue'-era diesel express from Edinburgh Waverley to Linlithgow (~20 minutes). Teaches cab controls, track monitor, speed limits and brake handling on a short, forgiving run.",
  notes: "Install via the Content form at first launch (see the Installation Guide). Set the Install Path before clicking Install. ~272 MB download / ~330 MB installed.",
)
