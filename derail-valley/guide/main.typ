// main.typ — Iron Valley: document assembly (cover, TOC, chapters).
#import "theme.typ": *

#set document(
  title: "Iron Valley — Derail Valley Modlist & Guide",
  author: "Iron Valley",
)

#set page(
  paper: "a4",
  margin: (top: 2.2cm, bottom: 2.1cm, left: 1.9cm, right: 1.9cm),
  background: box(width: 100%, height: 100%, fill: bg),
  footer: context [
    #set text(size: 8.5pt, fill: muted)
    #h(1fr)
    #counter(page).display("1 / 1", both: true)
    #h(1fr)
  ],
)

#set text(font: ("Georgia", "Segoe UI"), size: 10.5pt, fill: ink)
#set par(justify: true, leading: 0.78em, spacing: 0.7em)
#set heading(numbering: "1.1")
#show link: set text(fill: amber)

#show heading: it => block(
  width: 100%,
  above: if it.level == 1 { 1.5em } else { 1.15em },
  below: if it.level == 1 { 1.05em } else { 0.75em },
  fill: if it.level == 1 { banner } else { none },
  inset: if it.level == 1 { (x: 12pt, y: 7pt) } else { 0pt },
  radius: if it.level == 1 { 5pt } else { 0pt },
)[
  #text(
    fill: if it.level == 1 { amber } else { amber },
    size: if it.level == 1 { 17pt } else if it.level == 2 { 13.5pt } else { 11.5pt },
    weight: "bold",
  )[#it]
]

// ================= Cover =================
#page(footer: none)[
  #set align(center)
  #v(1.4cm)
  #image("../assets/logo.jpg", height: 57%)
  #v(1.1cm)
  #text(size: 38pt, weight: "bold", fill: amber)[Iron Valley]
  #v(0.4cm)
  #rect(width: 46%, height: 1.2pt, fill: amber)
  #v(0.5cm)
  #text(size: 13pt, fill: ink)[Derail Valley B99.7 + Unity Mod Manager]
  #v(0.2cm)
  #text(size: 11pt, fill: muted)[Modlist · Installation · Field Manual · Personas]
  #v(2.4cm)
  #text(size: 9.5pt, fill: muted)[Compiled August 2026 — Derail Valley B99.7 / Unity Mod Manager 0.32.5]
]

// ================= Table of contents =================
#outline(
  title: text(size: 18pt, weight: "bold", fill: amber)[Table of Contents],
  indent: 1.5em,
)
#pagebreak()

// ================= Chapters =================
#include "10-installation.typ"
#include "20-modlist.typ"
#include "30-how-to-play.typ"
#include "40-personas.typ"
