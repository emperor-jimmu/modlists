// theme.typ — Iron Valley: dark "night freight" palette and shared helpers.
// Content files import it with: #import "theme.typ": *
// Document-level page/text/heading rules live in main.typ.

// ---- Palette ----
#let ink      = rgb("#d9d6cc")   // body text — warm bone
#let muted    = rgb("#8e9189")   // secondary text
#let amber    = rgb("#e8a33d")   // headings, links — headlight amber
#let steel    = rgb("#8fb0c9")   // secondary accent — steel blue
#let signal   = rgb("#7fbf7f")   // positive accent — signal green
#let danger   = rgb("#d06a5a")   // warnings — brake red
#let bg       = rgb("#131722")   // page background — indigo night
#let panel    = rgb("#1a202d")   // cards / info panels
#let panel2   = rgb("#222a3a")   // lighter panel
#let banner   = rgb("#29324a")   // chapter banner fill
#let hairline = rgb("#39425a")   // borders
#let tipfill  = rgb("#1c2b26")   // tip box fill — pine
#let warnfill = rgb("#3a2320")   // warning box fill

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

#let tip(body)  = callout("Tip", tipfill, signal, body)
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
    #text(size: 9pt, fill: signal)[#tag]
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
