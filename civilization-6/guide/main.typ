// main.typ — The Grand Chronicle: document assembly (cover, TOC, chapters).
#import "theme.typ": *

#set document(
  title: "The Grand Chronicle — Civilization VI Modlist & Guide",
  author: "The Grand Chronicle",
)

#set page(
  paper: "a4",
  margin: (top: 2.2cm, bottom: 2.1cm, left: 1.9cm, right: 1.9cm),
  background: box(width: 100%, height: 100%, fill: cream),
  footer: context [
    #set text(size: 8.5pt, fill: muted)
    #h(1fr)
    #counter(page).display("1 / 1", both: true)
    #h(1fr)
  ],
)

#set text(font: ("Georgia", "Segoe UI"), size: 10.5pt, fill: ink)
#set par(justify: true, leading: 0.62em, spacing: 0.5em)
#set heading(numbering: "1.1")
#show link: set text(fill: gold)

#show heading: it => block(
  width: 100%,
  above: if it.level == 1 { 1.3em } else { 0.95em },
  below: if it.level == 1 { 0.7em } else { 0.45em },
  fill: if it.level == 1 { banner } else { none },
  inset: if it.level == 1 { (x: 12pt, y: 7pt) } else { 0pt },
  radius: if it.level == 1 { 5pt } else { 0pt },
)[
  #text(
    fill: if it.level == 1 { cream } else { gold },
    size: if it.level == 1 { 17pt } else if it.level == 2 { 13.5pt } else { 11.5pt },
    weight: "bold",
  )[#it]
]

// Cover artwork is embedded when the user has dropped assets/logo.jpg into
// place; build-pdf.bat signals that with --input logo=yes.
#let has-logo = sys.inputs.at("logo", default: "no") == "yes"

// ================= Cover =================
#page(footer: none)[
  #set align(center)
  #v(1.6cm)
  #if has-logo [
    #image("../assets/logo.jpg", height: 46%)
    #v(1.2cm)
  ] else [
    #text(size: 60pt, weight: "bold", fill: gold)[✦]
    #v(1.2cm)
  ]
  #text(size: 40pt, weight: "bold", fill: banner)[The Grand Chronicle]
  #v(0.45cm)
  #rect(width: 46%, height: 1.2pt, fill: gold)
  #v(0.55cm)
  #text(size: 13pt, fill: ink)[Sid Meier's Civilization VI]
  #v(0.2cm)
  #text(size: 11pt, fill: muted)[Complete Edition · Final build 1.0.12.68 (July 2024)]
  #v(0.2cm)
  #text(size: 10.5pt, fill: muted)[26 mods · Installation · How to Play · Six Personas]
  #v(2.6cm)
  #text(size: 9.5pt, fill: muted)[Compiled August 2026 — for the last version of the game]
]

// ================= Table of contents =================
#outline(
  title: text(size: 18pt, weight: "bold", fill: banner)[Table of Contents],
  indent: 1.5em,
)
#pagebreak()

// ================= Chapters =================
#include "10-installation.typ"
#include "20-modlist.typ"
#include "30-how-to-play.typ"
#include "40-personas.typ"
