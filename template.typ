#set page(
  margin: (x: 2cm, y: 2.5cm),
  header: [],
  footer: [],
)

#set text(
  font: "New Computer Modern",
  size: 10pt,
)

#show heading.where(level: 1): it => {
  text(weight: "bold", size: 22pt, rgb("#c0392b"), it)
  v(0.3em)
  line(length: 100%, stroke: 1pt + rgb("#c0392b"))
  v(0.5em)
}

#show heading.where(level: 2): it => {
  text(weight: "bold", size: 16pt, rgb("#2c3e50"), it)
  v(0.3em)
}

#show heading.where(level: 3): it => {
  text(weight: "bold", size: 13pt, rgb("#34495e"), it)
  v(0.2em)
}

#show link: it => {
  text(rgb("#c0392b"), it.body) + h(0.1em)
}

#let wave-accent(wave) = {
  if wave == 0 { rgb("#2c3e50") }
  else if wave == 1 { rgb("#8e44ad") }
  else if wave == 2 { rgb("#c0392b") }
  else { rgb("#d35400") }
}

#let cover-page() = {
  set page(margin: 0cm)
  place(
    dx: 0cm,
    dy: 0cm,
    image("assets/logo.png", width: 100%),
  )
  v(5cm)
  align(center + horizon)[
    #text(size: 36pt, weight: "bold", rgb("#c0392b"), "When Gods Bleed")
    #v(1em)
    #text(size: 16pt, rgb("#2c3e50"), "Total War: Warhammer III Modlist & Guide")
    #v(0.5em)
    #text(size: 12pt, rgb("#7f8c8d"), "Version 8.1.1 — July 2026")
    #v(0.5em)
    #text(size: 10pt, rgb("#95a5a6"), "RPFM Mod Manager & Typst Documentation")
  ]
  pagebreak()
}

// --- DOCUMENT START ---
cover-page()

#pagebreak()
outline(indent: true, depth: 3)

// Installation
#pagebreak()
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
Conflicting mods are listed in `conflicts.conf` and are excluded from this guide. See `conflicts.conf` for the current conflict list. Mods listed in `mod-ideas.md` are not yet implemented and are excluded from this PDF.

// Waves
#pagebreak()
== Waves & Campaign Setups

=== Wave 0: The Old World
#wave-accent(0)
#include "guide/wave-0/how-to-play.typ"
#include "guide/wave-0/modlist.typ"
#include "guide/wave-0/graphics.typ"
#include "guide/wave-0/content.typ"
#include "guide/wave-0/mechanics.typ"
#pagebreak()

=== Wave 1: The Gathering Storm
#wave-accent(1)
#include "guide/wave-1/strategy.typ"
#include "guide/wave-1/modlist.typ"
#include "guide/wave-1/graphics.typ"
#include "guide/wave-1/content.typ"
#include "guide/wave-1/mechanics.typ"
#pagebreak()

=== Wave 2: The End Times
#wave-accent(2)
#include "guide/wave-2/guide.typ"
#include "guide/wave-2/modlist.typ"
#include "guide/wave-2/graphics.typ"
#include "guide/wave-2/content.typ"
#include "guide/wave-2/mechanics.typ"
#pagebreak()

=== Wave 3: When Gods Bleed
#wave-accent(3)
#include "guide/wave-3/guide.typ"
#include "guide/wave-3/modlist.typ"
#include "guide/wave-3/graphics.typ"
#include "guide/wave-3/content.typ"
#include "guide/wave-3/mechanics.typ"