// Aetherbound Typst Template — Typst 0.15+
// Entry point for PDF generation. Imports shared functions from lib.typ.
// Build: typst compile --root . --font-path assets/fonts templates/aetherbound.typ output/aetherbound.pdf

#import "../lib.typ": *

// ── Page Setup ──────────────────────────────────────
#set page(
  paper: "a4",
  margin: (x: 20mm, y: 20mm),
  footer: context {
    let dark = is-dark-page.get()
    set text(
      size: 8pt,
      fill: if dark { clr-footer-dark } else { clr-footer-light },
      font: body-font,
    )
    counter(page).display()
  },
)

#set text(font: body-font, size: 10pt, fill: clr-text)
#set par(leading: 0.65em, justify: true)

// ── Heading Styles ──────────────────────────────────
#show heading: it => {
  set text(font: heading-font, fill: clr-bg-dark)
  if it.level == 1 {
    pagebreak()
    v(1em)
    text(size: 24pt, weight: "bold", it.body)
    v(4pt)
    line(length: 100%, stroke: 1pt + clr-cyan)
    v(8pt)
  } else if it.level == 2 {
    v(0.8em)
    text(size: 18pt, weight: "bold", it.body)
    v(4pt)
  } else if it.level == 3 {
    v(0.5em)
    text(size: 14pt, weight: "bold", it.body)
    v(2pt)
  }
}

// ── Cover Page ──────────────────────────────────────
is-dark-page.update(true)
#set page(fill: clr-bg-dark)
#align(center + horizon)[
  #v(4cm)
  #image("../assets/logo.jpg", width: 6cm)
  #v(1cm)
  #text(font: heading-font, size: 48pt, fill: white, weight: "bold")[Aetherbound]
  #v(0.5cm)
  #text(font: body-font, size: 18pt, fill: clr-cyan)[A Starbound Modlist Guide]
  #v(2cm)
  #text(font: body-font, size: 12pt, fill: luma(140))[Starbound 1.4.4  ·  v1.0]
  #v(0.3cm)
  #text(font: body-font, size: 10pt, fill: luma(120))[Mod Manager: SBMM by korsir]
]

// ── Body ────────────────────────────────────────────
#set page(fill: clr-bg-body)
is-dark-page.update(false)

// ── Table of Contents ───────────────────────────────
= Contents
#outline(indent: 2em, depth: 1)
#pagebreak()

// ── Prose Chapters ──────────────────────────────────
#include "../guide/introduction.typ"

#include "../guide/install.typ"

// ── Wave 0 ──────────────────────────────────────────
#wave-divider(0, "First Steps", [
  Fresh Protectorate academy graduate. \
  First planetary posting. \
  Wide-eyed explorer armed with a basic \
  Matter Manipulator and academy training, \
  setting out into the unknown.
])

#include "../guide/wave-0/story.typ"
#include "../guide/wave-0/how-to-play.typ"

= Wave 0 Modlist
#include "../guide/wave-0/modlist/01-qol-ui.typ"
#include "../guide/wave-0/modlist/02-bugfixes.typ"

// ── Wave 1 ──────────────────────────────────────────
#wave-divider(1, "Beyond the Horizon", [
  Veteran protector reassigned to fringe space. \
  Deeper mysteries await beyond charted territory. \
  Seasoned explorer with resources, reputation, \
  and the honed instinct that only comes from \
  surviving the unknown.
])

#include "../guide/wave-1/story.typ"
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
