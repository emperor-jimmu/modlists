#set page(
  margin: (x: 2cm, y: 2.5cm),
  header: [],
  footer: [],
)

#set text(
  font: "New Computer Modern",
  size: 10pt,
)

#set par(
  justify: true,
  leading: 0.65em,
  spacing: 0.6em,
)

#set heading(numbering: none)

#show heading: set block(above: 1.4em, below: 0.5em)

#show heading.where(level: 1): set text(fill: rgb("#c0392b"), weight: "bold", size: 22pt)
#show heading.where(level: 2): set text(fill: rgb("#2c3e50"), weight: "bold", size: 16pt)
#show heading.where(level: 3): set text(fill: rgb("#34495e"), weight: "bold", size: 13pt)

#show heading.where(level: 1): it => {
  it
  line(length: 100%, stroke: 0.5pt + rgb("#c0392b"))
}

#show link: set text(fill: rgb("#c0392b"))

// == Cover Page
#v(4cm)
#align(center)[
  #image("assets/logo.png", width: 50%)
]
#v(4cm)
#align(center)[
  #text(size: 36pt, weight: "bold", fill: rgb("#c0392b"), "When Gods Bleed")
  #v(0.8em)
  #text(size: 16pt, fill: rgb("#2c3e50"), "Total War: Warhammer III")
  #v(0.2em)
  #text(size: 14pt, fill: rgb("#2c3e50"), "Modlist & Guide")
  #v(0.6em)
  #text(size: 11pt, fill: rgb("#7f8c8d"), "Version 8.1.1 — July 2026")
  #v(0.3em)
  #text(size: 9pt, fill: rgb("#95a5a6"), "RPFM Mod Manager & Typst Documentation")
]
#pagebreak()

// == Table of Contents
== Table of Contents
#v(0.5em)
#outline(depth: 3)

#pagebreak()

// == Installation Guide
== Installation Guide

=== RPFM Setup (Recommended)
#include "guide/RPFM.typ"

=== Wave 0 Installation
#include "guide/wave-0/modlist.typ"

=== Wave 1 Installation
#include "guide/wave-1/modlist.typ"

=== Wave 2 Installation
#include "guide/wave-2/modlist.typ"

=== Wave 3 Installation
#include "guide/wave-3/modlist.typ"

=== Mod Activation Order
Activate mods in wave order (Wave 0 first, then Wave 1, Wave 2, Wave 3). Each wave builds on the previous wave's setup. Do not activate mods from multiple waves simultaneously unless explicitly noted.

=== Conflicts & Exclusions
Conflicting mods are listed in `conflicts.conf` and are excluded from this guide.

#pagebreak()

// == Waves & Campaign Setups
== Waves & Campaign Setups

=== Wave 0: The Old World
#include "guide/wave-0/how-to-play.typ"
#include "guide/wave-0/modlist.typ"
#include "guide/wave-0/graphics.typ"
#include "guide/wave-0/content.typ"
#include "guide/wave-0/mechanics.typ"

#pagebreak()

=== Wave 1: The Gathering Storm
#include "guide/wave-1/strategy.typ"
#include "guide/wave-1/modlist.typ"
#include "guide/wave-1/graphics.typ"
#include "guide/wave-1/content.typ"
#include "guide/wave-1/mechanics.typ"

#pagebreak()

=== Wave 2: The End Times
#include "guide/wave-2/guide.typ"
#include "guide/wave-2/modlist.typ"
#include "guide/wave-2/graphics.typ"
#include "guide/wave-2/content.typ"
#include "guide/wave-2/mechanics.typ"

#pagebreak()

=== Wave 3: When Gods Bleed
#include "guide/wave-3/guide.typ"
#include "guide/wave-3/modlist.typ"
#include "guide/wave-3/graphics.typ"
#include "guide/wave-3/content.typ"
#include "guide/wave-3/mechanics.typ"