// Aetherbound Typst Template — Typst 0.15+
// Paths are relative to this file (templates/aetherbound.typ)

// ── Fonts ───────────────────────────────────────────
#let heading-font = ("Space Grotesk", "sans-serif")
#let body-font = ("Inter", "sans-serif")

// ── Palette ─────────────────────────────────────────
#let clr-bg-dark = rgb("#1a103c")
#let clr-cyan = rgb("#00e5ff")
#let clr-amber = rgb("#ffb74d")
#let clr-red = rgb("#ff5252")
#let clr-bg-body = rgb("#fafaf8")
#let clr-text = rgb("#1a1a2e")
#let clr-code = rgb("#7c4dff")
#let clr-info = rgb("#5c6bc0")
#let clr-footer-light = luma(150)
#let clr-footer-dark = luma(90)

// ── Page Setup ──────────────────────────────────────
#let is-dark-page = state("is-dark-page", false)

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
// H1: page break, large, cyan rule. H2/H3: inline.
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

// ── Mod Entry Panel ─────────────────────────────────
#let mod-entry(
  name: "",
  url: "",
  category: "",
  version: "",
  dependencies: (),
  system-impact: none,
  description: [],
  install-notes: [],
  wave: 0,
) = {
  rect(
    fill: rgb("#f0f0f8"),
    stroke: 1pt + clr-cyan,
    radius: 4pt,
    inset: 8pt,
    [
      // Title row with inline badges
      #text(font: heading-font, size: 11pt, weight: "bold")[#link(url)[#name]]
      #h(6pt)

      // Category badge (inline box, not rect)
      #box(
        fill: clr-cyan,
        radius: 2pt,
        inset: (x: 4pt, y: 1pt),
        text(font: heading-font, size: 8pt, fill: white)[#category]
      )

      // System impact badge (only if impact != none)
      #if system-impact != none {
        h(4pt)
        box(
          fill: clr-amber,
          radius: 2pt,
          inset: (x: 4pt, y: 1pt),
          text(font: heading-font, size: 8pt, fill: white)[IMPACT: #system-impact]
        )
      }

      // Metadata row
      #v(4pt)
      #text(size: 9pt, fill: luma(100), font: body-font)[v#version]
      #if dependencies.len() > 0 {
        text(size: 9pt, fill: luma(100), font: body-font)[  ·  Depends on: #dependencies.join(", ")]
      }

      // Description
      #v(4pt)
      #description

      // Install notes
      #if install-notes != [] {
        v(4pt)
        text(size: 9pt, style: "italic", fill: luma(120), font: body-font)[
          *Install:* #install-notes
        ]
      }
    ]
  )
  v(8pt)
}

// ── Callout Panels (text labels, no emoji) ──────────
#let tip(body) = {
  rect(
    fill: rgb("#fff8e1"),
    stroke: (left: 4pt + clr-amber),
    inset: 8pt,
    radius: 2pt,
    [
      #text(font: heading-font, size: 9pt, fill: clr-amber, weight: "bold")[TIP]
      #h(4pt)
      #text(size: 10pt, font: body-font)[#body]
    ]
  )
  v(6pt)
}

#let concept(body) = {
  rect(
    fill: rgb("#e8eaf6"),
    stroke: (left: 4pt + clr-info),
    inset: 8pt,
    radius: 2pt,
    [
      #text(font: heading-font, size: 9pt, fill: clr-info, weight: "bold")[CONCEPT]
      #h(4pt)
      #text(size: 10pt, font: body-font)[#body]
    ]
  )
  v(6pt)
}

#let warning(body) = {
  rect(
    fill: rgb("#ffebee"),
    stroke: (left: 4pt + clr-red),
    inset: 8pt,
    radius: 2pt,
    [
      #text(font: heading-font, size: 9pt, fill: clr-red, weight: "bold")[WARNING]
      #h(4pt)
      #text(size: 10pt, font: body-font)[#body]
    ]
  )
  v(6pt)
}

// ── Wave Divider Helper ─────────────────────────────
#let wave-divider(wave-number, wave-name, blurb) = {
  pagebreak()
  is-dark-page.update(true)
  set page(fill: clr-bg-dark)
  align(center + horizon)[
    v(4cm)
    text(font: heading-font, size: 36pt, fill: white, weight: "bold")[Wave #wave-number]
    v(0.5em)
    text(font: body-font, size: 14pt, fill: clr-cyan)[#wave-name]
    v(2em)
    text(font: body-font, size: 11pt, fill: luma(170))[#blurb]
  ]
  set page(fill: clr-bg-body)
  is-dark-page.update(false)
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
