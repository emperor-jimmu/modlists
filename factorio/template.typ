#set page(
  margin: (x: 2cm, y: 2.5cm),
  footer: context {
    align(center)[
      #counter(page).display("1 / 1", both: true)
    ]
  },
)

#let callout(title, body) = block(
  fill: rgb("#f2ede0"), inset: 8pt, radius: 4pt,
  stroke: 0.5pt + rgb("#e8590c"),
)[*#title* #body]

#set text(font: "Georgia", size: 11pt, fill: rgb("#232323"))
#set par(justify: true, leading: 0.65em, spacing: 0.6em)
#set heading(numbering: none)
#show heading: set block(above: 1.4em, below: 0.5em)
#show heading.where(level: 1): set text(fill: rgb("#e8590c"), weight: "bold", size: 22pt, font: "Bahnschrift")
#show heading.where(level: 2): set text(fill: rgb("#f0a202"), weight: "bold", size: 16pt, font: "Bahnschrift")
#show heading.where(level: 3): set text(fill: rgb("#2b7a42"), weight: "bold", size: 13pt, font: "Bahnschrift")
#show heading.where(level: 1): it => { it; line(length: 100%, stroke: 0.5pt + rgb("#e8590c")) }
#show link: set text(fill: rgb("#e8590c"))

// == Cover Page
#v(3.5cm)
#align(center)[#image("assets/logo.jpg", width: 45%)]
#v(3.5cm)
#align(center)[
  #text(size: 36pt, weight: "bold", fill: rgb("#e8590c"), font: "Cinzel", "Synaptic Overproduction")
  #v(0.8em)
  #text(size: 16pt, fill: rgb("#232323"), "Factorio 2.0.77")
  #v(0.2em)
  #text(size: 14pt, fill: rgb("#232323"), "Modlist & Guide")
  #v(0.6em)
  #text(size: 11pt, fill: rgb("#6b6b6b"), "Version 2.0.77 - 2026")
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
  #show heading.where(level: 2): set text(fill: rgb("#e8590c"))
  #show heading.where(level: 3): set text(fill: rgb("#e8590c"))
  === Wave 0: The Castaway
  #include "guide/wave-0/how-to-play.typ"
  #include "guide/wave-0/modlist.typ"
  #include "guide/wave-0/mechanics.typ"
  #include "guide/wave-0/graphics.typ"
]
#pagebreak()

#block[
  #show heading.where(level: 2): set text(fill: rgb("#b8860b"))
  #show heading.where(level: 3): set text(fill: rgb("#b8860b"))
  === Wave 1: The Architect
  #include "guide/wave-1/strategy.typ"
  #include "guide/wave-1/modlist.typ"
  #include "guide/wave-1/mechanics.typ"
  #include "guide/wave-1/content.typ"
  #include "guide/wave-1/graphics.typ"
]
#pagebreak()

#block[
  #show heading.where(level: 2): set text(fill: rgb("#2b7a42"))
  #show heading.where(level: 3): set text(fill: rgb("#2b7a42"))
  === Wave 2: The Krastorio Prodigy
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

#label("end")
