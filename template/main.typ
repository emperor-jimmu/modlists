// ============================================
// Assetto Maximus — PDF Template (Typst 0.15)
// ============================================

// Colors
#let primary = rgb("#C8102E")
#let secondary = rgb("#2B2B2B")
#let accent = rgb("#D4A843")
#let dark = rgb("#1A1A1A")
#let midgrey = rgb("#555555")
#let lightgry = rgb("#F8F8F8")
#let linkclr = rgb("#2563EB")

// Page setup
#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 2.5cm, right: 2.5cm),
  footer: context {
    set text(font: ("Segoe UI"), size: 9pt, fill: luma(180))
    align(center, counter(page).display())
  }
)

// Text defaults
#set text(font: ("Segoe UI", "Libertinus Serif"), size: 10.5pt, fill: dark)
#set par(justify: true, leading: 0.55em)

// Link styling
#show link: it => {
  set text(fill: linkclr)
  underline(it)
}

// ============================================
// Heading Styles
// ============================================
#show heading: it => {
  set text(font: ("Segoe UI", "Arial"), weight: "bold")

  if it.level == 1 {
    v(1.5em)
    text(size: 22pt, fill: primary, it.body)
    v(0.3em)
    line(length: 100%, stroke: 1.5pt + primary)
    v(1em)
  } else if it.level == 2 {
    v(1em)
    text(size: 16pt, fill: secondary, it.body)
    v(0.2em)
    line(length: 60%, stroke: 0.5pt + luma(200))
    v(0.7em)
  } else if it.level == 3 {
    v(0.7em)
    text(size: 13pt, fill: secondary, it.body)
    v(0.4em)
  } else if it.level == 4 {
    v(0.5em)
    text(size: 11.5pt, fill: midgrey, style: "italic", it.body)
    v(0.3em)
  }
}

// ============================================
// Code & Raw
// ============================================
#show raw: it => {
  if it.block {
    block(
      fill: lightgry,
      inset: 8pt,
      radius: 4pt,
      width: 100%,
      text(font: ("Consolas", "DejaVu Sans Mono"), size: 9pt, it),
    )
  } else {
    box(
      fill: lightgry,
      inset: (x: 3pt, y: 0.5pt),
      radius: 2pt,
      text(font: ("Consolas", "DejaVu Sans Mono"), size: 9pt, fill: secondary, it),
    )
  }
}

// ============================================
// Tables
// ============================================
#show table: set table(align: left, stroke: 0.5pt + luma(200))
#show table.header: set text(fill: white, weight: "bold")
#show table.header: set table.cell(fill: secondary)

// ============================================
// COVER PAGE
// ============================================
#page(fill: dark, margin: (top: 4cm, bottom: 3cm, left: 3cm, right: 3cm))[
  #align(center + horizon, image("../assets/logo.jpg", height: 8.5cm))

  #v(0.3cm)
  #line(length: 60%, stroke: 2pt + primary)
  #v(0.3cm)

  #set text(fill: luma(220))
  #align(center, text(size: 16pt, style: "italic")[
    A Curated Modlist & Guide for Assetto Corsa
  ])

  #v(1.5cm)

  #set text(fill: luma(180), size: 11pt)
  #align(center, text("Version 1.0 — July 2026"))
  #v(0.15cm)
  #align(center, text("Compatible with Assetto Corsa v1.16.4 (August 2020)"))

  #v(2cm)

  #set text(fill: luma(130), size: 10pt, style: "italic")
  #align(center, text("Prepared for the driving enthusiast who wants a curated, stable,"))
  #align(center, text("and progressively-enhancing modding experience — from stock to spectacular,"))
  #align(center, text("one wave at a time."))
]

// ============================================
// TABLE OF CONTENTS
// ============================================
#page[
  #set text(font: ("Segoe UI", "Arial"))
  #outline(depth: 1, indent: auto)
]

// ============================================
// CONTENT
// ============================================
#include "../guide/00-preamble.typ"
#include "../guide/01-introduction.typ"
#include "../guide/02-installation.typ"
#include "../guide/03-wave-0.typ"
#include "../guide/04-wave-1.typ"
#include "../guide/05-wave-2.typ"
#include "../guide/05-modlist-graphics.typ"
#include "../guide/06-modlist-content.typ"
#include "../guide/07-modlist-mechanics.typ"
#include "../guide/08-modlist-ui-qol.typ"
#include "../guide/09-configuration.typ"
#include "../guide/10-appendix.typ"
