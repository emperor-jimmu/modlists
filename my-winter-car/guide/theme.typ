// theme.typ — Routa: dark "winter night garage" palette and shared helpers.
// Content files import it with: #import "theme.typ": *
// Document-level page/text/heading rules live in main.typ.

// ---- Palette ----
#let ink      = rgb("#dbe6f2")   // body text — ice white
#let muted    = rgb("#8aa0b8")   // secondary text — steel blue-grey
#let amber    = rgb("#f0a93c")   // headings — garage / headlight amber
#let orange   = rgb("#ffc14d")   // links, highlights — bright warm amber
#let frost    = rgb("#7fd4e8")   // secondary accent — frost cyan
#let danger   = rgb("#e05c5c")   // warnings — tail-light red
#let bg       = rgb("#0a1420")   // page background — frozen midnight blue
#let panel    = rgb("#101c2c")   // cards / info panels
#let panel2   = rgb("#15233a")   // lighter panel
#let banner   = rgb("#1b2c46")   // chapter banner fill
#let hairline = rgb("#2a3f5c")   // borders
#let tipfill  = rgb("#0f242e")   // tip box fill — dark frost
#let warnfill = rgb("#3a2118")   // warning box fill

// ---- Callout boxes ----
#let callout(title, fill, accent, body) = block(
  width: 100%,
  fill: fill,
  inset: 11pt,
  radius: 5pt,
  stroke: (bottom: 2pt + accent),
  above: 9pt,
  below: 9pt,
)[
  #text(weight: "bold", size: 10pt, fill: accent)[#title]
  #v(4pt)
  #body
]

#let tip(body)  = callout("Tip", tipfill, frost, body)
#let info(body) = callout("Good to know", panel2, amber, body)
#let warn(body) = callout("Watch out", warnfill, danger, body)

// ---- Keycap ----
#let key(k) = box(
  fill: panel2,
  stroke: 0.5pt + hairline,
  radius: 3pt,
  inset: (x: 4.5pt, y: 1.5pt),
  text(size: 8.5pt, fill: ink)[#k],
)

// ---- Mod entry card ----
#let mod(
  name: "",
  tag: "",
  what: "",
  source: "",
  install: "",
  risk: "",
) = block(
  width: 100%,
  fill: panel,
  inset: 11pt,
  radius: 5pt,
  stroke: 1pt + hairline,
  above: 8pt,
  below: 8pt,
)[
  #grid(columns: (1fr, auto), column-gutter: 8pt, align: (left, top), [
    #text(weight: "bold", size: 12pt, fill: amber)[#name]
  ], [
    #text(size: 9pt, fill: orange)[#tag]
  ])
  #v(4pt)
  #text(size: 9.5pt)[#what]
  #if source != "" [
    #v(2pt)
    #text(size: 9pt)[#text(weight: "bold", fill: muted)[Where: ]#source]
  ]
  #if install != "" [
    #v(2pt)
    #text(size: 9pt)[#text(weight: "bold", fill: muted)[Install: ]#install]
  ]
  #if risk != "" [
    #v(2pt)
    #text(size: 9pt)[#text(weight: "bold", fill: danger)[Risk: ]#risk]
  ]
]
