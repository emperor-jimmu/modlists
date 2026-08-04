#set page(
  margin: (x: 2cm, y: 2.5cm),
  footer: context {
    align(center)[
      #counter(page).display("1 / 1", both: true)
    ]
  },
)

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

// == Typography
#set text(font: "Georgia", size: 11pt, fill: navy)
#set par(justify: true, leading: 0.65em, spacing: 0.6em)
#set heading(numbering: none)
#show heading: set block(above: 1.4em, below: 0.5em)
#show heading.where(level: 1): set text(fill: teal, weight: "bold", size: 22pt, font: "Bahnschrift")
#show heading.where(level: 2): set text(fill: teal, weight: "bold", size: 16pt, font: "Bahnschrift")
#show heading.where(level: 3): set text(fill: deepgreen, weight: "bold", size: 13pt, font: "Bahnschrift")
#show heading.where(level: 1): it => { it; line(length: 100%, stroke: 0.5pt + teal) }
#show link: set text(fill: teal)

// == Cover Page
#v(2.5cm)
#align(center)[#image("assets/logo.jpg", width: 34%)]
#v(2.5cm)
#align(center)[
  #text(size: 36pt, weight: "bold", fill: teal, font: "Cinzel", "Aetherial Purity")
  #v(0.8em)
  #text(size: 16pt, fill: navy, "No Man's Sky")
  #v(0.2em)
  #text(size: 14pt, fill: navy, "Modlist & Guide")
  #v(0.6em)
  #text(size: 11pt, fill: gray, "Version 6.45.1 · 2026")
]
#pagebreak()

// == Table of Contents
== Table of Contents
#v(0.5em)
#outline(depth: 3)
#pagebreak()

// == Installation
== Installation Guide
#include "guide/installation.typ"
#pagebreak()

// == Waves
== Waves & New-Game Setups

#block[
  #show heading.where(level: 2): set text(fill: teal)
  #show heading.where(level: 3): set text(fill: teal)
  === Wave 0: First Light
  #include "guide/wave-0/how-to-play.typ"
  #include "guide/wave-0/modlist.typ"
  #include "guide/wave-0/mechanics.typ"
  #include "guide/wave-0/graphics.typ"
]
#pagebreak()

#block[
  #show heading.where(level: 2): set text(fill: navy)
  #show heading.where(level: 3): set text(fill: navy)
  === Wave 1: The Cartographer
  #include "guide/wave-1/strategy.typ"
  #include "guide/wave-1/modlist.typ"
  #include "guide/wave-1/mechanics.typ"
  #include "guide/wave-1/content.typ"
  #include "guide/wave-1/graphics.typ"
]
#pagebreak()

#block[
  #show heading.where(level: 2): set text(fill: deepgreen)
  #show heading.where(level: 3): set text(fill: deepgreen)
  === Wave 2: The Astral Architect
  #include "guide/wave-2/strategy.typ"
  #include "guide/wave-2/modlist.typ"
  #include "guide/wave-2/mechanics.typ"
  #include "guide/wave-2/content.typ"
  #include "guide/wave-2/graphics.typ"
]
#pagebreak()

// == Glossary
== Glossary
#include "guide/glossary.typ"
