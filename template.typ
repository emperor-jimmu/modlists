#set page(
  margin: (x: 2cm, y: 2.5cm),
  header: [],
  footer: [],
)

#set text(
  font: "New Computer Modern",
  size: 10pt,
)

#set heading(numbering: none)

#show heading: it => {
  if it.level == 1 {
    v(0.5em, weak: true)
    text(weight: "bold", size: 22pt, rgb("#c0392b"), it.body)
    v(0.2em, weak: true)
    line(length: 100%, stroke: 1pt + rgb("#c0392b"))
    v(0.5em, weak: true)
  } else if it.level == 2 {
    v(0.4em, weak: true)
    text(weight: "bold", size: 16pt, rgb("#2c3e50"), it.body)
    v(0.2em, weak: true)
  } else if it.level == 3 {
    v(0.3em, weak: true)
    text(weight: "bold", size: 13pt, rgb("#34495e"), it.body)
    v(0.15em, weak: true)
  }
}

#show link: it => {
  text(rgb("#c0392b"), it.body) + h(0.1em)
}

#let mod-entry(name, url, version, deps, impact) = {
  grid(
    columns: (auto, 1fr),
    rows: (auto, auto),
    gutter: 0.15em,
    {
      text(weight: "bold", size: 9.5pt, name)
      if url != "" and url != none [
        #link(url)[🔗]
      ]
    },
    {
      v(-0.15em)
      if version != "" and version != none [
        *Version:* #version
      ]
      if deps != "" and deps != none [
        *Dependencies:* #deps
      ]
      if impact != "" and impact != none [
        *Impact:* #impact
      ]
    },
  )
}

#pagebreak()

// == Cover Page
#align(center + horizon)[
  #image("assets/logo.png", width: 100%)
]

#v(4cm)

#align(center)[
  #text(size: 36pt, weight: "bold", rgb("#c0392b"), "When Gods Bleed")
  #v(1em)
  #text(size: 16pt, rgb("#2c3e50"), "Total War: Warhammer III Modlist & Guide")
  #v(0.5em)
  #text(size: 12pt, rgb("#7f8c8d"), "Version 8.1.1 — July 2026")
  #v(0.3em)
  #text(size: 10pt, rgb("#95a5a6"), "RPFM Mod Manager & Typst Documentation")
]

#pagebreak()

// == Table of Contents
== Table of Contents

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
Conflicting mods are listed in `$project-root$/conflicts.conf` and are excluded from this guide. See `conflicts.conf` for the current conflict list. Mods listed in `mod-ideas.md` are not yet implemented and are excluded from this PDF.

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