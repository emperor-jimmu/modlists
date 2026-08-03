#set page(
  margin: (x: 2cm, y: 2.5cm),
  footer: context {
    align(center)[
      #counter(page).display("1 / 1", both: true)
    ]
  },
)

// NOTE: This #callout is template-scope and dead code — included files cannot see
// template scope, so each per-wave file (e.g. guide/wave-0/how-to-play.typ) redefines
// it identically and carries the document. Keep the per-wave copies in sync to avoid drift.
#let callout(title, body) = block(
  fill: rgb("#f7e8d8"), inset: 8pt, radius: 4pt,
  stroke: 0.5pt + rgb("#d97b3a"),
)[*#title* #body]

#set text(font: "Georgia", size: 11pt, fill: rgb("#2b2622"))
#set par(justify: true, leading: 0.65em, spacing: 0.6em)
#set heading(numbering: none)
#show heading: set block(above: 1.4em, below: 0.5em)
#show heading.where(level: 1): set text(fill: rgb("#b3492e"), weight: "bold", size: 22pt, font: "Bahnschrift")
#show heading.where(level: 2): set text(fill: rgb("#8c2b2b"), weight: "bold", size: 16pt, font: "Bahnschrift")
#show heading.where(level: 3): set text(fill: rgb("#4a3a30"), weight: "bold", size: 13pt, font: "Bahnschrift")
#show heading.where(level: 1): it => { it; line(length: 100%, stroke: 0.5pt + rgb("#b3492e")) }
#show link: set text(fill: rgb("#8c2b2b"))

// == Cover Page
#v(3.5cm)
#align(center)[#image("assets/logo.jpg", width: 45%)]
#v(3.5cm)
#align(center)[
  #text(size: 36pt, weight: "bold", fill: rgb("#b3492e"), font: "Cinzel", "Scars of the Horizon")
  #v(0.8em)
  #text(size: 16pt, fill: rgb("#2b2622"), "Kenshi 1.0.68")
  #v(0.2em)
  #text(size: 14pt, fill: rgb("#2b2622"), "Modlist & Guide")
  #v(0.6em)
  #text(size: 11pt, fill: rgb("#6b5b4e"), "Version 1.0.68 - 2026")
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
  #show heading.where(level: 2): set text(fill: rgb("#b3492e"))
  #show heading.where(level: 3): set text(fill: rgb("#b3492e"))
  === Wave 0: The Wanderer
  #include "guide/wave-0/how-to-play.typ"
  #include "guide/wave-0/modlist.typ"
  #include "guide/wave-0/mechanics.typ"
  #include "guide/wave-0/graphics.typ"
]
#pagebreak()

#block[
  #show heading.where(level: 2): set text(fill: rgb("#d97b3a"))
  #show heading.where(level: 3): set text(fill: rgb("#d97b3a"))
  === Wave 1: The Outlander
  #include "guide/wave-1/strategy.typ"
  #include "guide/wave-1/modlist.typ"
  #include "guide/wave-1/mechanics.typ"
  #include "guide/wave-1/content.typ"
  #include "guide/wave-1/graphics.typ"
]
#pagebreak()

#block[
  #show heading.where(level: 2): set text(fill: rgb("#8c2b2b"))
  #show heading.where(level: 3): set text(fill: rgb("#8c2b2b"))
  === Wave 2: The Smith
  #include "guide/wave-2/strategy.typ"
  #include "guide/wave-2/modlist.typ"
  #include "guide/wave-2/mechanics.typ"
  #include "guide/wave-2/content.typ"
  #include "guide/wave-2/graphics.typ"
]
#pagebreak()

#block[
  #show heading.where(level: 2): set text(fill: rgb("#4a3a30"))
  #show heading.where(level: 3): set text(fill: rgb("#4a3a30"))
  === Wave 3: The Expedition
  #include "guide/wave-3/strategy.typ"
  #include "guide/wave-3/modlist.typ"
  #include "guide/wave-3/mechanics.typ"
  #include "guide/wave-3/content.typ"
  #include "guide/wave-3/graphics.typ"
]
#pagebreak()

#block[
  #show heading.where(level: 2): set text(fill: rgb("#5d2a1f"))
  #show heading.where(level: 3): set text(fill: rgb("#5d2a1f"))
  === Wave 4: The Conqueror
  #include "guide/wave-4/strategy.typ"
  #include "guide/wave-4/modlist.typ"
  #include "guide/wave-4/mechanics.typ"
  #include "guide/wave-4/content.typ"
  #include "guide/wave-4/graphics.typ"
]
#pagebreak()

// == Glossary
== Glossary
#include "guide/glossary.typ"

#label("end")
