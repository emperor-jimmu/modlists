// Shared helpers for Aetherial Purity (included by template.typ and every guide file).

// == Palette (derived from assets/logo.jpg)
#let teal = rgb("#2C9293")
#let navy = rgb("#2D4144")
#let deepgreen = rgb("#1F6F5E")
#let sage = rgb("#4F7A6E")
#let rust = rgb("#773E3E")
#let ice = rgb("#F4F9F8")
#let palesage = rgb("#A6C6BD")
#let gray = rgb("#6b6b6b")

// == Callouts
#let callout(title, body, fill: ice, stroke: teal) = block(
  fill: fill, inset: 8pt, radius: 4pt,
  stroke: 0.5pt + stroke,
)[#text(weight: "bold", fill: stroke)[#title] #body]

#let warncall(title, body) = callout(title, body, fill: rgb("#F8EDEC"), stroke: rust)

// == Mod card
#let mod-entry(name, url: none, deps: none, impact: none, notes: none) = {
  block(fill: ice, inset: 10pt, radius: 4pt, stroke: 0.5pt + teal)[
    #if url == none [
      #text(weight: "bold", size: 11pt, fill: teal, name)
    ] else [
      #link(url)[#text(weight: "bold", size: 11pt, fill: teal, name)]
    ]
    #v(4pt) *Dependencies:* #if deps == none [*user to provide*] else [#deps]
    #v(3pt) *Impact:* #if impact == none [*user to provide*] else [#impact]
    #v(3pt) *Notes:* #if notes == none [*user to provide*] else [#notes]
  ]
}
