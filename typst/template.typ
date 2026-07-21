// template.typ — Document template for "No Crown Without Blood"
#import "styles.typ": *

// --- Cover page ---
#let cover-page() = {
  set page(
    paper: "a4",
    fill: charcoal,
    margin: (left: 1.8cm, right: 1.8cm, top: 2.5cm, bottom: 2.5cm),
  )

  v(10%)

  align(center)[
    #image("../assets/logo.png", width: 70%)
  ]

  v(2em)

  align(center)[
    #text(font: heading-font, size: 16pt, fill: cover-cream)[A Bannerlord Modlist & Guide]
  ]

  v(1.5em)

  align(center, line(length: 55%, stroke: 1pt + cover-gold))

  v(1.5em)

  align(center)[
    #text(font: body-font, size: 12pt, fill: cover-cream)[Mount & Blade II: Bannerlord]
    #v(0.3em)
    #text(font: body-font, size: 11pt, fill: cover-cream)[WS v1.2.7 / BL v1.4.7]
    #v(0.3em)
    #text(font: body-font, size: 10pt, fill: cover-gold)[July 2026]
  ]

  pagebreak()
}

// --- Body text setup ---
#let setup-document() = {
  set text(font: body-font, size: 12pt, fill: body-text-color)
  set par(justify: true, leading: 0.65em, first-line-indent: 0pt)

  show heading: apply-heading-style
  show link: it => text(fill: link-color, it)
  show strong: set text(fill: emphasis-color)
  set table(stroke: 0.5pt + header-color.transparentize(60%), inset: 6pt)

  show raw: it => block(
    fill: code-bg,
    inset: 10pt,
    radius: 4pt,
    breakable: true,
  )[
    text(font: mono-font, size: 9.5pt, it)
  ]

  // --- Table of Contents ---
  block(
    fill: code-bg,
    inset: 16pt,
    radius: 4pt,
    stroke: 1pt + header-color,
  )[
    #text(font: heading-font, size: 18pt, fill: header-color, weight: "bold")[Table of Contents]
    #v(0.6em)
    #outline(indent: 2em, depth: 2)
  ]

  pagebreak()
}
