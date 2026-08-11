// theme.typ — shared palette and helpers for The Grand Chronicle guide.
// Content files import it with: #import "theme.typ": *
// Document-level page/text/heading rules live in main.typ.

// ---- Palette (parchment + imperial gold, Civ VI paper-map mood) ----
#let ink      = rgb("#26203a")   // body text — deep indigo-black
#let muted    = rgb("#6f6883")   // secondary text
#let gold     = rgb("#b98f2b")   // accents, hairlines, headings
#let banner   = rgb("#332b52")   // chapter banner fill (indigo)
#let cream    = rgb("#faf4e6")   // page background (parchment)
#let panel    = rgb("#f3ecdc")   // info / mod panels
#let tipfill  = rgb("#e8efe1")   // tip boxes
#let warnfill = rgb("#f7e2d8")   // warning boxes
#let hairline = rgb("#d9cfa4")   // borders

// ---- Callout boxes ----
#let callout(title, fill, body) = block(
  width: 100%,
  fill: fill,
  inset: 11pt,
  radius: 5pt,
  stroke: (bottom: 2pt + gold),
  above: 9pt,
  below: 9pt,
)[
  #text(weight: "bold", size: 10pt, fill: ink)[#title]
  #v(4pt)
  #body
]

#let tip(body)  = callout("Tip", tipfill, body)
#let info(body) = callout("Good to know", panel, body)
#let warn(body) = callout("Watch out", warnfill, body)

// ---- Mod entry (modlist chapter) ----
#let mod-entry(
  name: "user to provide",
  url: none,
  author: "user to provide",
  what: "user to provide",
  why: "user to provide",
  compat: "user to provide",
) = block(
  width: 100%,
  fill: panel,
  inset: 11pt,
  radius: 5pt,
  stroke: 1pt + hairline,
  above: 7pt,
  below: 7pt,
)[
  #if url != none {
    link(url)[#text(weight: "bold", size: 12pt, fill: ink)[#name]]
  } else {
    text(weight: "bold", size: 12pt, fill: ink)[#name]
  }
  #h(1fr)
  #text(size: 9pt, fill: muted)[by #author]
  #v(5pt)
  #text(size: 9.5pt)[#text(weight: "bold", fill: gold)[What it does: ]#what]
  #v(2pt)
  #text(size: 9.5pt)[#text(weight: "bold", fill: gold)[Why it's in the Chronicle: ]#why]
  #v(2pt)
  #text(size: 9.5pt)[#text(weight: "bold", fill: gold)[Compatibility: ]#compat]
]

// ---- Persona panel (personas chapter) ----
#let persona(
  name: "user to provide",
  tag: "user to provide",
  background: "user to provide",
) = block(
  width: 100%,
  fill: panel,
  inset: 12pt,
  radius: 5pt,
  stroke: (left: 3pt + gold),
  above: 8pt,
  below: 8pt,
)[
  #text(weight: "bold", size: 12.5pt, fill: ink)[#name]
  #h(0.6em)
  #text(size: 9.5pt, style: "italic", fill: gold)[#tag]
  #v(6pt)
  #background
]
