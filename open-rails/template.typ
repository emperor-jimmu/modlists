#set page(
  margin: (x: 2cm, y: 2.5cm),
  footer: context {
    align(center)[
      #counter(page).display("1 / 1")
    ]
  },
)

#set text(font: "Georgia", size: 11pt)
#set par(justify: true, leading: 0.65em, spacing: 0.6em)
#set heading(numbering: none)
#show heading: set block(above: 1.4em, below: 0.5em)

#show heading.where(level: 1): set text(fill: rgb("#3b6ea5"), weight: "bold", size: 22pt, font: "Bahnschrift")
#show heading.where(level: 2): set text(fill: rgb("#2c3e50"), weight: "bold", size: 16pt, font: "Bahnschrift")
#show heading.where(level: 3): set text(fill: rgb("#34495e"), weight: "bold", size: 13pt, font: "Bahnschrift")
#show heading.where(level: 1): it => { it; line(length: 100%, stroke: 0.5pt + rgb("#3b6ea5")) }
#show link: set text(fill: rgb("#3b6ea5"))

// == Cover Page
#v(3.5cm)
#align(center)[#image("assets/logo.jpg", width: 45%)]
#v(3.5cm)
#align(center)[
  #text(size: 36pt, weight: "bold", fill: rgb("#3b6ea5"), font: "Cinzel", "Steel Genesis")
  #v(0.8em)
  #text(size: 16pt, fill: rgb("#2c3e50"), "Open Rails 1.6.1")
  #v(0.2em)
  #text(size: 14pt, fill: rgb("#2c3e50"), "Modlist & Guide")
  #v(0.6em)
  #text(size: 11pt, fill: rgb("#7f8c8d"), "Version 1.6.1 — January 2026")
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
=== Wave 0: The Rookie
#include "guide/wave-0/how-to-play.typ"
#include "guide/wave-0/modlist.typ"
#include "guide/wave-0/mechanics.typ"
#include "guide/wave-0/content.typ"
#include "guide/wave-0/graphics.typ"
#pagebreak()

=== Wave 1: The Road Freight
#include "guide/wave-1/strategy.typ"
#include "guide/wave-1/modlist.typ"
#include "guide/wave-1/mechanics.typ"
#include "guide/wave-1/content.typ"
#include "guide/wave-1/graphics.typ"
#pagebreak()

=== Wave 2: The Yard
#include "guide/wave-2/strategy.typ"
#include "guide/wave-2/modlist.typ"
#include "guide/wave-2/mechanics.typ"
#include "guide/wave-2/content.typ"
#include "guide/wave-2/graphics.typ"
#pagebreak()

=== Wave 3: The Limited
#include "guide/wave-3/strategy.typ"
#include "guide/wave-3/modlist.typ"
#include "guide/wave-3/mechanics.typ"
#include "guide/wave-3/content.typ"
#include "guide/wave-3/graphics.typ"
#pagebreak()

// == Glossary
== Glossary
#include "guide/glossary.typ"