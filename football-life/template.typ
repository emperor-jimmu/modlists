#set page(
  margin: (x: 2cm, y: 2.5cm),
  footer: context {
    align(center)[
      #counter(page).display("1 / 1", both: true)
    ]
  },
)

#set text(font: "Georgia", size: 11pt, fill: rgb("#2b2622"))
#set par(justify: true, leading: 0.65em, spacing: 0.6em)
#set heading(numbering: none)
#show heading: set block(above: 1.4em, below: 0.5em)
#show heading.where(level: 1): set text(fill: rgb("#1a5c2a"), weight: "bold", size: 22pt, font: "Bahnschrift")
#show heading.where(level: 2): set text(fill: rgb("#2d8a4e"), weight: "bold", size: 16pt, font: "Bahnschrift")
#show heading.where(level: 3): set text(fill: rgb("#3a3a3a"), weight: "bold", size: 13pt, font: "Bahnschrift")
#show heading.where(level: 1): it => { it; line(length: 100%, stroke: 0.5pt + rgb("#1a5c2a")) }
#show link: set text(fill: rgb("#2d8a4e"))

// == Cover Page
#v(3.5cm)
#align(center)[#image("assets/logo.jpg", width: 45%)]
#v(3.5cm)
#align(center)[
  #text(size: 36pt, weight: "bold", fill: rgb("#1a5c2a"), font: "Bahnschrift", "Apex Life 26")
  #v(0.8em)
  #text(size: 16pt, fill: rgb("#2b2622"), "SP Football Life 2026")
  #v(0.2em)
  #text(size: 14pt, fill: rgb("#2b2622"), "Modlist & Manager's Guide")
  #v(0.6em)
  #text(size: 11pt, fill: rgb("#6b6b6b"), "Version 2.2 — 2026")
]
#pagebreak()

// == Table of Contents
== Table of Contents
#v(0.5em)
#outline(depth: 3)
#pagebreak()

// == Installation & Mod Stack
== Installation & Mod Stack
#include "guide/installation.typ"
#pagebreak()

// == Sider Configuration
== Sider Configuration
#include "guide/sider-config.typ"
#pagebreak()
== Manager's Dossier
#include "guide/lets-play.typ"
#pagebreak()
