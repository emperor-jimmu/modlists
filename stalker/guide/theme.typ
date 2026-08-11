// theme.typ — G.A.M.M.A Protocol: dark "Zone" palette and shared helpers.
// Content files import it with: #import "theme.typ": *
// Document-level page/text/heading rules live in main.typ.

// ---- Palette ----
#let ink      = rgb("#c6c9c0")   // body text — pale bone
#let muted    = rgb("#8b908a")   // secondary text
#let amber    = rgb("#d0a63c")   // headings, accents — zone gold
#let toxic    = rgb("#9dbd45")   // highlights — toxic green
#let danger   = rgb("#d06a58")   // warnings — rust red
#let bg       = rgb("#13150f")   // page background — olive-black
#let panel    = rgb("#1c201a")   // cards / info panels
#let panel2   = rgb("#22271f")   // lighter panel
#let banner   = rgb("#2a3320")   // chapter banner fill
#let hairline = rgb("#3a4032")   // borders
#let tipfill  = rgb("#22301f")   // tip box fill
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

#let tip(body)  = callout("Tip", tipfill, toxic, body)
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

// ---- Addon / mod entry card ----
#let addon(
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
    #text(size: 9pt, fill: toxic)[#tag]
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
