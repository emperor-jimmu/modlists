#set page(
  margin: (x: 2cm, y: 2.5cm),
  footer: context {
    align(center)[
      #text(fill: gray, size: 9pt)[#counter(page).display("1 / 1", both: true)]
    ]
  },
)

// == Shared helpers (palette, callouts, mod cards)
#import "guide/helpers.typ": *

// == Typography
#set text(font: "Georgia", size: 11pt, fill: navy)
#set par(justify: true, leading: 0.65em, spacing: 0.6em)
#set heading(numbering: none)
#show heading: set block(above: 1.4em, below: 0.5em)
#show heading.where(level: 1): set text(fill: sky, weight: "bold", size: 22pt, font: "Bahnschrift")
#show heading.where(level: 2): set text(fill: sky, weight: "bold", size: 17pt, font: "Bahnschrift")
#show heading.where(level: 3): set text(fill: navy, weight: "bold", size: 13.5pt, font: "Bahnschrift")
#show heading.where(level: 4): set text(fill: navy, weight: "bold", size: 12pt, font: "Bahnschrift")
#show heading.where(level: 5): set text(fill: sky, weight: "bold", size: 11pt, font: "Bahnschrift")
#show heading.where(level: 2): it => { it; line(length: 100%, stroke: 0.6pt + gold) }
#show link: set text(fill: sky)

// == Cover Page
#v(1.2cm)
#align(center)[#image("assets/logo.jpg", width: 28%)]
#v(1.8cm)
#align(center)[
  #text(size: 46pt, weight: "bold", fill: navy, font: "Bahnschrift", tracking: 0.03em, "Ace's Realm")
  #v(0.7em)
  #text(size: 19pt, weight: "bold", fill: gold, font: "Bahnschrift", tracking: 0.35em, "X-PLANE 12")
  #v(0.4em)
  #text(size: 14pt, fill: navy, "Modlist & Flight Guide")
  #v(0.8em)
  #text(size: 11pt, fill: gray, "Target version 12.4.3 · Six waves · 2026")
]
#pagebreak()

// == Table of Contents
#heading(level: 2, outlined: false)[Table of Contents]
#v(0.5em)
#outline(title: none, depth: 3)
#pagebreak()

// == Installation
== Installation Guide
#include "guide/installation.typ"
#pagebreak()

// == Foundational Plugins
== Foundational Plugins & Tools
#include "guide/foundational.typ"
#pagebreak()

// == Waves
== Waves & New-Game Setups

#block[
  #show heading.where(level: 3): set text(fill: sky)
  === Wave 0: First Solo
  #include "guide/wave-0/how-to-play.typ"
  #include "guide/wave-0/modlist.typ"
  #include "guide/wave-0/mechanics.typ"
  #include "guide/wave-0/graphics.typ"
]
#pagebreak()

#block[
  #show heading.where(level: 3): set text(fill: gold)
  === Wave 1: The Ferry
  #include "guide/wave-1/strategy.typ"
  #include "guide/wave-1/modlist.typ"
  #include "guide/wave-1/mechanics.typ"
  #include "guide/wave-1/content.typ"
  #include "guide/wave-1/graphics.typ"
]
#pagebreak()

#block[
  #show heading.where(level: 3): set text(fill: navy)
  === Wave 2: The Charter
  #include "guide/wave-2/strategy.typ"
  #include "guide/wave-2/modlist.typ"
  #include "guide/wave-2/mechanics.typ"
  #include "guide/wave-2/content.typ"
  #include "guide/wave-2/graphics.typ"
]
#pagebreak()

#block[
  #show heading.where(level: 3): set text(fill: rust)
  === Wave 3: The Line
  #include "guide/wave-3/strategy.typ"
  #include "guide/wave-3/modlist.typ"
  #include "guide/wave-3/mechanics.typ"
  #include "guide/wave-3/content.typ"
  #include "guide/wave-3/graphics.typ"
]
#pagebreak()

#block[
  #show heading.where(level: 3): set text(fill: tan)
  === Wave 4: The Dash Ace
  #include "guide/wave-4/strategy.typ"
  #include "guide/wave-4/modlist.typ"
  #include "guide/wave-4/mechanics.typ"
  #include "guide/wave-4/content.typ"
  #include "guide/wave-4/graphics.typ"
]
#pagebreak()

#block[
  #show heading.where(level: 3): set text(fill: navy)
  === Wave 5: The Heavy Ace
  #include "guide/wave-5/strategy.typ"
  #include "guide/wave-5/modlist.typ"
  #include "guide/wave-5/mechanics.typ"
  #include "guide/wave-5/content.typ"
  #include "guide/wave-5/graphics.typ"
]
#pagebreak()

// == Glossary
== Glossary
#include "guide/glossary.typ"
