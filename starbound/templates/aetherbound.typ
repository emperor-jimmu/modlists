// Aetherbound Typst Template — Typst 0.15+
// Build: typst compile --font-path assets/fonts templates/aetherbound.typ output/aetherbound.pdf

#import "../lib.typ": *

// ── Page Setup ──────────────────────────────────────
#set page(
  paper: "a4",
  margin: (x: 20mm, y: 20mm),
  footer: context [
    #set text(size: 8pt, fill: luma(160), font: body-font)
    #align(center)[#counter(page).display()]
  ],
)

#set text(font: body-font, size: 11pt, fill: clr-text)
#set par(leading: 0.7em, justify: true)

// ── Heading Styles (no auto pagebreak) ──────────────
#show heading: it => {
  set text(font: heading-font, fill: clr-bg-dark)
  if it.level == 1 {
    v(1em)
    text(size: 26pt, weight: "bold", it.body)
    v(4pt)
    line(length: 100%, stroke: 1pt + clr-cyan)
    v(12pt)
  } else if it.level == 2 {
    v(0.8em)
    text(size: 20pt, weight: "bold", it.body)
    v(4pt)
  } else if it.level == 3 {
    v(0.5em)
    text(size: 15pt, weight: "bold", it.body)
    v(2pt)
  }
}

// ── Cover Page ──────────────────────────────────────
#set page(fill: clr-bg-dark)
#align(center + horizon)[
  #v(3cm)
  #image("../assets/logo.jpg", width: 13cm)
  #v(1cm)
  #text(font: body-font, size: 18pt, fill: clr-cyan)[A Starbound Modlist Guide]
  #v(2cm)
  #text(font: body-font, size: 13pt, fill: luma(150))[Starbound 1.4.4  ·  v1.0]
]

// ── Body ────────────────────────────────────────────
#pagebreak()
#set page(fill: clr-bg-body)

// ── Table of Contents ───────────────────────────────
= Contents
#outline(title: none, indent: 2em, depth: 1)

// ── Prose Chapters ──────────────────────────────────
#pagebreak()

#include "../guide/introduction.typ"

#pagebreak()
#include "../guide/install.typ"

// ── Primer ──────────────────────────────────────────
#pagebreak()
#set page(fill: clr-bg-dark)
#align(center + horizon)[
  #v(3cm)
  #text(font: heading-font, size: 36pt, fill: white, weight: "bold")[Getting Started]
  #v(0.4em)
  #text(font: body-font, size: 14pt, fill: clr-cyan)[A new protector awakens]
  #v(1.5cm)
  #text(font: body-font, size: 12pt, fill: luma(170))[
    Frackin Universe is a one-way trip. \
    Your universe, your characters, your journey — \
    everything changes from this point forward. \
    Here is what you need to know.
  ]
]

#pagebreak()
#set page(fill: clr-bg-body)

#include "../guide/primer.typ"

// ── Strategy ────────────────────────────────────────
#pagebreak()
#include "../guide/strategy.typ"

// ── Modlist ─────────────────────────────────────────
#pagebreak()
= Modlist

#include "../guide/modlist/01-foundations.typ"
#include "../guide/modlist/02-ui-qol.typ"
#include "../guide/modlist/03-graphics.typ"
#include "../guide/modlist/04-audio.typ"
#include "../guide/modlist/05-races.typ"
#include "../guide/modlist/06-content.typ"
#include "../guide/modlist/07-mechanics.typ"
#include "../guide/modlist/08-ships.typ"
#include "../guide/modlist/09-building.typ"
#include "../guide/modlist/10-adult.typ"
