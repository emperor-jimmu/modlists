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

== Wave 2: Graphics

Graphics mods change only how the game looks and how it tells you what is happening — the overlays and map clarity you depend on while running a network of worlds. They never touch simulation values, so they carry no power-spike risk; they must simply stay honest — clearer, not smarter.

#mod-entry(
  "Rename Asteroids U59",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=3613508049",
  version: "2026-06-12 · CLIENT-ONLY",
  verified: "YES · Steam API + Workshop page (2026-08-21) · 246 subscribers",
  deps: "Requires Spaced Out!",
  impact: "Rename asteroids (and keep the star map legible) by double-clicking their icons.",
  notes: "CLIENT-ONLY — naming only. U59-compatible fork of asquared31415's original.",
)
