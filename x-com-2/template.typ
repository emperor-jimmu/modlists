// The 3rd Coming - Typst master template (XCOM 2: War of the Chosen modlist guide)
// Theme: dark background, cyan/neon accents, red highlights (matches assets/logo.jpg).
// Fonts: Bahnschrift (headings), Segoe UI (body), Cascadia Mono (mono accents).

#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2.2cm),
  fill: rgb("#0b0f17"),
  footer: context {
    align(center)[
      #text(size: 9pt, fill: rgb("#5b6472"))[
        #counter(page).display("1 / 1", both: true)
        #h(8pt) #text(fill: rgb("#3a4657"))[|]
        #h(8pt) The 3rd Coming — XCOM 2: War of the Chosen
      ]
    ]
  },
)

// ---- palette
#let ink = rgb("#e6edf3")       // body text
#let dim = rgb("#8b96a5")       // secondary text
#let cyan = rgb("#00e5ff")      // primary accent
#let red = rgb("#ff2d55")       // highlight
#let card = rgb("#131a26")      // card fill
#let hairline = rgb("#263449")  // hairlines

// ---- base text
#set text(font: "Segoe UI", size: 10.5pt, fill: ink)
#set par(justify: true, leading: 0.62em, spacing: 0.55em)

// ---- headings
#show heading: set block(above: 1.3em, below: 0.45em)
#show heading.where(level: 1): set text(font: "Bahnschrift", size: 21pt, weight: "bold", fill: cyan)
#show heading.where(level: 2): set text(font: "Bahnschrift", size: 15pt, weight: "bold", fill: cyan)
#show heading.where(level: 3): set text(font: "Bahnschrift", size: 11.5pt, weight: "bold", fill: red)
#show heading.where(level: 1): it => { it; v(2pt); line(length: 100%, stroke: 0.7pt + red) }

// ---- links
#show link: set text(fill: cyan)

// Helpers (callout, mod-entry) are defined locally inside each guide file:
// Typst include scope does not share #let bindings into the included file.
// See guide/installation.typ (callout) and guide/modlists/*.typ (mod-entry).

// ---- glitch title (layered red/cyan copies behind the main text)
#let glitch-title(t, size: 44pt) = block(width: 100%)[
  #place(dx: -1.5pt, dy: -1.2pt)[#text(font: "Bahnschrift", size: size, weight: "bold", fill: red, t)]
  #place(dx: 1.5pt, dy: 1.2pt)[#text(font: "Bahnschrift", size: size, weight: "bold", fill: cyan, t)]
  #text(font: "Bahnschrift", size: size, weight: "bold", fill: ink, t)
]

// ==================== Cover ====================
#v(1.5cm)
#align(center)[#image("assets/logo.jpg", width: 58%)]
#v(1.1cm)
#align(center)[#glitch-title("THE 3RD COMING")]
#v(0.55cm)
#align(center)[#text(font: "Bahnschrift", size: 13.5pt, fill: dim)[XCOM 2: War of the Chosen — Modlist & Guide]]
#v(0.9cm)
#align(center)[
  #block(fill: red, inset: (x: 16pt, y: 5pt), radius: 3pt)[
    #text(font: "Bahnschrift", size: 11.5pt, weight: "bold", fill: white)[STEAM WORKSHOP · ALTERNATIVE MOD LAUNCHER]
  ]
]
#v(1.9cm)
#align(center)[#text(size: 10pt, fill: dim)[Build 8270065 (24 Feb 2022) — the last official patch — no further content patches]]
#pagebreak()

// ==================== Table of Contents ====================
#outline(title: "Table of Contents", depth: 2)
#pagebreak()

// ==================== Installation ====================
= Installation
#include "guide/installation.typ"
#pagebreak()

// ==================== Overview ====================
= Overview
#include "guide/overview.typ"
#pagebreak()

// ==================== The Modlist ====================
= The Modlist

Every mod in this guide appears as a *mod card*: a clickable Workshop link plus the four facts that matter — dependencies, system / mechanic impact, other notes. The cards are supplied by the user; a field the user did not supply reads *user to provide*.

#v(6pt)
#include "guide/modlists/core-framework.typ"
#include "guide/modlists/quality-of-life.typ"
#include "guide/modlists/ui-hud.typ"
#include "guide/modlists/classes-skills.typ"
#include "guide/modlists/enemies.typ"
#include "guide/modlists/weapons-gear.typ"
#include "guide/modlists/cosmetics-visuals.typ"
#include "guide/modlists/audio.typ"

#label("end")
