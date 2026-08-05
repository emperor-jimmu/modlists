// main.typ — Throne of Titans: document assembly (cover, TOC, chapters).
#import "theme.typ": *

#set document(
  title: "Throne of Titans — Civilization IV: Beyond the Sword Modlist & Guide",
  author: "Throne of Titans",
)

#set page(
  paper: "a4",
  margin: (top: 2.4cm, bottom: 2.2cm, left: 2.2cm, right: 2.2cm),
  background: box(width: 100%, height: 100%, fill: cream),
  footer: context [
    #set text(size: 8.5pt, fill: muted)
    #h(1fr)
    #counter(page).display("1 / 1", both: true)
    #h(1fr)
  ],
)

#set text(font: ("Georgia", "Segoe UI"), size: 10.5pt, fill: ink)
#set par(justify: true, leading: 0.55em, spacing: 0.5em)

#set heading(numbering: "1.1")

#show heading: it => block(
  width: 100%,
  above: if it.level == 1 { 1.2em } else { 0.9em },
  below: if it.level == 1 { 0.6em } else { 0.4em },
  fill: if it.level == 1 { bronze } else { none },
  inset: if it.level == 1 { (x: 12pt, y: 7pt) } else { 0pt },
  radius: if it.level == 1 { 5pt } else { 0pt },
)[
  #text(
    fill: if it.level == 1 { cream } else { bronze },
    size: if it.level == 1 { 17pt } else if it.level == 2 { 13.5pt } else { 11.5pt },
    weight: "bold",
  )[#it]
]

// ================= Cover =================
#page(footer: none)[
  #set align(center)
  #v(2.2cm)
  #image("../assets/logo.jpg", width: 50%)
  #v(1.7cm)
  #text(size: 42pt, weight: "bold", fill: bronze)[Throne of Titans]
  #v(0.5cm)
  #rect(width: 42%, height: 1.2pt, fill: gold)
  #v(0.5cm)
  #text(size: 14pt, fill: muted)[Sid Meier's Civilization IV: Beyond the Sword]
  #v(0.25cm)
  #text(size: 12pt, fill: muted)[Modlist & Game Guide — Patch 3.19]
  #v(2.4cm)
  #text(size: 10.5pt, fill: muted)[Four waves — from first settler to the Throne of Titans]
  #v(0.25cm)
  #text(size: 10.5pt, fill: muted)[Mods organized with the CIV 4 — All Mod Chooser]
]

// ================= Table of contents =================
#outline(
  title: text(size: 18pt, weight: "bold", fill: bronze)[Table of Contents],
  indent: 1.5em,
)
#pagebreak()

// ================= Chapters =================
#include "10-installation.typ"
#include "20-modlist.typ"
#include "30-wave-0.typ"
#include "40-wave-1.typ"
#include "50-wave-2.typ"
#include "60-wave-3.typ"
#include "70-glossary.typ"
