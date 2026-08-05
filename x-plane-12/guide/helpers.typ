// Shared helpers for Ace's Realm (included by template.typ and every guide file).

// == Palette (derived from assets/logo.jpg - dark navy night sky + gold highlights)
#let navy = rgb("#10233D")
#let sky = rgb("#2E6FB8")
#let gold = rgb("#C9A227")
#let tan = rgb("#C0A060")
#let rust = rgb("#B4552D")
#let ice = rgb("#F1F6FB")
#let goldpale = rgb("#FBF6E8")
#let gray = rgb("#5A6472")

// == Callouts
#let callout(title, body, fill: ice, stroke: sky) = block(
  fill: fill, inset: 8pt, radius: 4pt,
  stroke: 0.5pt + stroke,
)[#text(weight: "bold", fill: stroke)[#title] #body]

#let warncall(title, body) = callout(title, body, fill: rgb("#FBEFE7"), stroke: rust)

// == Mod card
#let mod-entry(name, url: none, deps: none, impact: none, notes: none) = {
  block(fill: goldpale, inset: 10pt, radius: 4pt, stroke: 0.5pt + gold)[
    #if url == none [
      #text(weight: "bold", size: 11pt, fill: navy, name)
    ] else [
      #link(url)[#text(weight: "bold", size: 11pt, fill: navy, name)]
    ]
    #v(4pt) *Dependencies:* #if deps == none [*user to provide*] else [#deps]
    #v(3pt) *Impact:* #if impact == none [*user to provide*] else [#impact]
    #v(3pt) *Notes:* #if notes == none [*user to provide*] else [#notes]
  ]
}
