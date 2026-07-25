// Fidelitas Suprema — Typst PDF Template
// Requires Typst 0.15
// Military-themed styling: navy/gold accents, sans-serif headings, serif body

// ── Colors ──
#let navy       = rgb("1a2332")
#let gold       = rgb("c9a84c")
#let white      = rgb("ffffff")
#let charcoal   = rgb("2c3e50")
#let slate      = rgb("b0b8c4")
#let light-gray = rgb("f5f5f5")

// ── Mod type colors ──
#let color-content   = rgb("27ae60")
#let color-ui        = rgb("2980b9")
#let color-mechanics = rgb("e74c3c")
#let color-graphics  = rgb("8e44ad")

// ── Page setup (body pages) ──
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: none,
  footer: context align(center, text(size: 9pt, fill: slate)[
    Fidelitas Suprema — Arma 3 Modlist & Guide
    \  —  \
    #counter(page).display("1 / 1")
  ]),
  numbering: "1",
)

// ── Fonts ──
#set text(
  font: ("Source Serif 4", "Georgia"),
  size: 11pt,
  fill: charcoal,
  lang: "en",
)

#show heading.where(level: 1): set text(
  font: ("Archivo Narrow", "Segoe UI"),
  weight: "bold",
  fill: navy,
)

#show heading.where(level: 2): set text(
  font: ("Archivo Narrow", "Segoe UI"),
  weight: "semibold",
  fill: charcoal,
)

#show heading.where(level: 3): set text(
  font: ("Archivo Narrow", "Segoe UI"),
  weight: "regular",
  fill: charcoal,
)

// ── Heading numbering ──
#set heading(numbering: "1.1")

// ── Justified paragraphs ──
#set par(justify: true, leading: 0.65em)

// ── Link styling ──
#show link: set text(fill: gold)

// ── Table of contents ──
#show outline.entry.where(
  level: 1
): set text(font: ("Archivo Narrow", "Segoe UI"), weight: "bold", size: 11pt)

#show outline.entry.where(
  level: 2
): set text(font: ("Source Serif 4", "Georgia"), size: 10pt, fill: charcoal)

// ═══════════════════════════════════════════
// COVER PAGE
// ═══════════════════════════════════════════

#set page(
  margin: (x: 0cm, y: 0cm),
  fill: navy,
  footer: none,
  numbering: none,
)

#place(center + horizon, block(
  width: 100%,
  height: 100%,
  fill: navy,
)[
  #v(4cm)
  #align(center, image("assets/logo.jpg", width: 60%))
  #v(2cm)
  #align(center, text(size: 36pt, font: ("Archivo Narrow", "Segoe UI"), weight: "bold", fill: gold)[
    FIDELITAS SUPREMA
  ])
  #v(0.5cm)
  #align(center, text(size: 14pt, font: ("Archivo Narrow", "Segoe UI"), fill: gold)[
    Arma 3 Modlist & Guide — Version 2.20
  ])
  #v(1cm)
  #align(center, text(size: 11pt, font: ("Archivo Narrow", "Segoe UI"), style: "italic", fill: white)[
    A 5-Wave Progression from Recruit to Commander
  ])
])

// ═══════════════════════════════════════════
// RESET PAGE STYLE FOR BODY
// ═══════════════════════════════════════════

#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  fill: white,
  footer: context align(center, text(size: 9pt, fill: slate)[
    Fidelitas Suprema — Arma 3 Modlist & Guide
    \  —  \
    #counter(page).display("1 / 1")
  ]),
  numbering: "1",
)

#pagebreak()

// ═══════════════════════════════════════════
// TABLE OF CONTENTS
// ═══════════════════════════════════════════

#outline(title: [Table of Contents], indent: 1.5em)

#pagebreak()

// ═══════════════════════════════════════════
// META
// ═══════════════════════════════════════════

= About Fidelitas Suprema
#include "guide/meta/about.typ"

#pagebreak()

= Installation & Setup
#include "guide/meta/installation-setup.typ"

// ═══════════════════════════════════════════
// WAVE 0 — TIROCINIUM
// ═══════════════════════════════════════════

#pagebreak()

// Part divider
#set page(fill: navy, margin: (x: 2.5cm, y: 4cm), footer: none, numbering: none)
#align(center, text(size: 28pt, font: ("Archivo Narrow", "Segoe UI"), weight: "bold", fill: gold)[
  Wave 0 \ Tirocinium
])
#v(1cm)
#align(center, text(size: 14pt, font: ("Archivo Narrow", "Segoe UI"), fill: gold)[
  Basic Training
])

#set page(fill: white, margin: (x: 2.5cm, y: 2.5cm), footer: context align(center, text(size: 9pt, fill: slate)[
  Fidelitas Suprema — Arma 3 Modlist & Guide
  \  —  \
  #counter(page).display("1 / 1")
]), numbering: "1")

#pagebreak()

= Wave 0: Tirocinium — Basic Training
#include "guide/waves/00-wave-0/narrative.typ"
#include "guide/waves/00-wave-0/mods.typ"
#include "guide/waves/00-wave-0/gameplay-guide.typ"
#include "guide/waves/00-wave-0/mission.typ"

// ═══════════════════════════════════════════
// WAVE 1 — IGNIS
// ═══════════════════════════════════════════

#pagebreak()

#set page(fill: navy, margin: (x: 2.5cm, y: 4cm), footer: none, numbering: none)
#align(center, text(size: 28pt, font: ("Archivo Narrow", "Segoe UI"), weight: "bold", fill: gold)[
  Wave 1 \ Ignis
])
#v(1cm)
#align(center, text(size: 14pt, font: ("Archivo Narrow", "Segoe UI"), fill: gold)[
  The Spark
])

#set page(fill: white, margin: (x: 2.5cm, y: 2.5cm), footer: context align(center, text(size: 9pt, fill: slate)[
  Fidelitas Suprema — Arma 3 Modlist & Guide
  \  —  \
  #counter(page).display("1 / 1")
]), numbering: "1")

#pagebreak()

= Wave 1: Ignis — The Spark
#include "guide/waves/01-wave-1/narrative.typ"
#include "guide/waves/01-wave-1/mods.typ"
#include "guide/waves/01-wave-1/strategy-guide.typ"
#include "guide/waves/01-wave-1/mission.typ"

// ═══════════════════════════════════════════
// WAVE 2 — FERRUM
// ═══════════════════════════════════════════

#pagebreak()

#set page(fill: navy, margin: (x: 2.5cm, y: 4cm), footer: none, numbering: none)
#align(center, text(size: 28pt, font: ("Archivo Narrow", "Segoe UI"), weight: "bold", fill: gold)[
  Wave 2 \ Ferrum
])
#v(1cm)
#align(center, text(size: 14pt, font: ("Archivo Narrow", "Segoe UI"), fill: gold)[
  Steel
])

#set page(fill: white, margin: (x: 2.5cm, y: 2.5cm), footer: context align(center, text(size: 9pt, fill: slate)[
  Fidelitas Suprema — Arma 3 Modlist & Guide
  \  —  \
  #counter(page).display("1 / 1")
]), numbering: "1")

#pagebreak()

= Wave 2: Ferrum — Steel
#include "guide/waves/02-wave-2/narrative.typ"
#include "guide/waves/02-wave-2/mods.typ"
#include "guide/waves/02-wave-2/mission.typ"

// ═══════════════════════════════════════════
// WAVE 3 — ACER
// ═══════════════════════════════════════════

#pagebreak()

#set page(fill: navy, margin: (x: 2.5cm, y: 4cm), footer: none, numbering: none)
#align(center, text(size: 28pt, font: ("Archivo Narrow", "Segoe UI"), weight: "bold", fill: gold)[
  Wave 3 \ Acer
])
#v(1cm)
#align(center, text(size: 14pt, font: ("Archivo Narrow", "Segoe UI"), fill: gold)[
  Sharp
])

#set page(fill: white, margin: (x: 2.5cm, y: 2.5cm), footer: context align(center, text(size: 9pt, fill: slate)[
  Fidelitas Suprema — Arma 3 Modlist & Guide
  \  —  \
  #counter(page).display("1 / 1")
]), numbering: "1")

#pagebreak()

= Wave 3: Acer — Sharp
#include "guide/waves/03-wave-3/narrative.typ"
#include "guide/waves/03-wave-3/mods.typ"
#include "guide/waves/03-wave-3/mission.typ"

// ═══════════════════════════════════════════
// WAVE 4 — SUPREMA
// ═══════════════════════════════════════════

#pagebreak()

#set page(fill: navy, margin: (x: 2.5cm, y: 4cm), footer: none, numbering: none)
#align(center, text(size: 28pt, font: ("Archivo Narrow", "Segoe UI"), weight: "bold", fill: gold)[
  Wave 4 \ Suprema
])
#v(1cm)
#align(center, text(size: 14pt, font: ("Archivo Narrow", "Segoe UI"), fill: gold)[
  The Highest
])

#set page(fill: white, margin: (x: 2.5cm, y: 2.5cm), footer: context align(center, text(size: 9pt, fill: slate)[
  Fidelitas Suprema — Arma 3 Modlist & Guide
  \  —  \
  #counter(page).display("1 / 1")
]), numbering: "1")

#pagebreak()

= Wave 4: Suprema — The Highest
#include "guide/waves/04-wave-4/narrative.typ"
#include "guide/waves/04-wave-4/mods.typ"
#include "guide/waves/04-wave-4/mission.typ"
