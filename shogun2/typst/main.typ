#import "theme.typ": *

// ── Cover Page ──
#include "cover.typ"

// ── Global Page Setup ──
#set page(
  paper: page-width,
  margin: page-margin,
  fill: page-bg,
  footer: context {
    align(center, counter(page).display("1 / 1", both: true))
  },
  numbering: "1",
)

// ── Global Text ──
#set text(font: body-font, size: 12pt, fill: body-dark)
#set par(justify: true, leading: 0.65em)

// ── Global Heading Styles ──
#show heading.where(level: 1): it => block(
  width: 100%,
  inset: (top: 0.5em, bottom: 0.25em),
  fill: oda-crimson,
)[
  #set text(
    font: heading-font,
    size: 24pt,
    fill: white,
    weight: "bold",
  )
  #it
]

#show heading.where(level: 2): it => [
  #set text(
    font: heading-font,
    size: 17pt,
    fill: oda-crimson,
    weight: "bold",
  )
  #it
]

#show heading.where(level: 3): it => [
  #set text(
    font: heading-font,
    size: 14pt,
    fill: oda-black,
    weight: "bold",
  )
  #it
]

// ── Link Styling ──
#show link: underline

// ── Code Block Styling ──
#show raw: it => block(
  fill: code-bg,
  inset: 8pt,
  radius: 4pt,
  width: 100%,
)[
  #set text(font: code-font, size: 10pt, fill: code-fg)
  #it
]

// ── Table of Contents ──
#pagebreak()

#outline(title: [
  #set text(fill: oda-crimson, size: 24pt, weight: "bold")
  Table of Contents
])

#pagebreak()

// ── Wave 0: The Shimazu Way ──
#show heading.where(level: 1): it => block(
  width: 100%,
  inset: (top: 0.5em, bottom: 0.25em),
  fill: shimazu-vermillion,
)[
  #set text(font: heading-font, size: 24pt, fill: white, weight: "bold")
  #it
]
#show heading.where(level: 2): set text(fill: shimazu-vermillion)
#show heading.where(level: 3): set text(fill: rgb("#7A1717"))

#include "../guide/wave-0/01-setup.typ"
#pagebreak()
#include "../guide/wave-0/02-mods.typ"
#pagebreak()
#include "../guide/wave-0/03-guide.typ"

// ── Wave 1: Tenka Fubu ──
#pagebreak()
#show heading.where(level: 1): it => block(
  width: 100%,
  inset: (top: 0.5em, bottom: 0.25em),
  fill: oda-crimson,
)[
  #set text(font: heading-font, size: 24pt, fill: white, weight: "bold")
  #it
]
#show heading.where(level: 2): set text(fill: oda-crimson)
#show heading.where(level: 3): set text(fill: oda-black)

#include "../guide/wave-1/01-setup.typ"
#pagebreak()
#include "../guide/wave-1/02-mods.typ"
#pagebreak()
#include "../guide/wave-1/03-guide.typ"

// ── Wave 2: Sekigahara's Shadow ──
#pagebreak()
#show heading.where(level: 1): it => block(
  width: 100%,
  inset: (top: 0.5em, bottom: 0.25em),
  fill: tokugawa-navy,
)[
  #set text(font: heading-font, size: 24pt, fill: white, weight: "bold")
  #it
]
#show heading.where(level: 2): set text(fill: tokugawa-navy)
#show heading.where(level: 3): set text(fill: rgb("#070F1C"))

#include "../guide/wave-2/01-setup.typ"
#pagebreak()
#include "../guide/wave-2/02-mods.typ"
#pagebreak()
#include "../guide/wave-2/03-guide.typ"
