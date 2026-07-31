// Aetherbound Typst Template — Typst 0.15+
// Build: typst compile --root . --font-path assets/fonts templates/aetherbound.typ output/aetherbound.pdf

#import "../lib.typ": *

// ── Page Setup ──────────────────────────────────────
#set page(
  paper: "a4",
  margin: (x: 20mm, y: 20mm),
  footer: context [
    #set text(size: 8pt, fill: luma(160), font: body-font)
    #counter(page).display()
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
  #image("../assets/logo.jpg", width: 5cm)
  #v(1cm)
  #text(font: heading-font, size: 48pt, fill: white, weight: "bold")[Aetherbound]
  #v(0.4cm)
  #text(font: body-font, size: 18pt, fill: clr-cyan)[A Starbound Modlist Guide]
  #v(2cm)
  #text(font: body-font, size: 13pt, fill: luma(150))[Starbound 1.4.4  ·  v1.0]
  #v(0.2cm)
  #text(font: body-font, size: 11pt, fill: luma(130))[Mod Manager: SBMM by korsir]
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

// ── Wave 0 Divider ──────────────────────────────────
#pagebreak()
#set page(fill: clr-bg-dark)
#align(center + horizon)[
  #v(3cm)
  #text(font: heading-font, size: 36pt, fill: white, weight: "bold")[Wave 0]
  #v(0.4em)
  #text(font: body-font, size: 14pt, fill: clr-cyan)[First Steps]
  #v(1.5cm)
  #text(font: body-font, size: 12pt, fill: luma(170))[
    Fresh Protectorate academy graduate. \
    First planetary posting. \
    Wide-eyed explorer armed with a basic \
    Matter Manipulator and academy training, \
    setting out into the unknown.
  ]
]

#pagebreak()
#set page(fill: clr-bg-body)

#include "../guide/wave-0/story.typ"

#pagebreak()
#include "../guide/wave-0/how-to-play.typ"

= Wave 0 Modlist
#include "../guide/wave-0/modlist/01-qol-ui.typ"
#include "../guide/wave-0/modlist/02-bugfixes.typ"

// ── Wave 1 Divider ──────────────────────────────────
#pagebreak()
#set page(fill: clr-bg-dark)
#align(center + horizon)[
  #v(3cm)
  #text(font: heading-font, size: 36pt, fill: white, weight: "bold")[Wave 1]
  #v(0.4em)
  #text(font: body-font, size: 14pt, fill: clr-cyan)[Beyond the Horizon]
  #v(1.5cm)
  #text(font: body-font, size: 12pt, fill: luma(170))[
    Veteran protector reassigned to fringe space. \
    Deeper mysteries await beyond charted territory. \
    Seasoned explorer with resources, reputation, \
    and the honed instinct that only comes from \
    surviving the unknown.
  ]
]

#pagebreak()
#set page(fill: clr-bg-body)

#include "../guide/wave-1/story.typ"

#pagebreak()
#include "../guide/wave-1/strategy.typ"

= Wave 1 Modlist
#include "../guide/wave-1/modlist/01-graphics.typ"
#include "../guide/wave-1/modlist/02-races.typ"
#include "../guide/wave-1/modlist/03-content.typ"
#include "../guide/wave-1/modlist/04-mechanics.typ"
#include "../guide/wave-1/modlist/05-ships.typ"
#include "../guide/wave-1/modlist/06-weapons-armor.typ"
#include "../guide/wave-1/modlist/07-building.typ"
#include "../guide/wave-1/modlist/08-audio.typ"
#include "../guide/wave-1/modlist/09-adult.typ"
