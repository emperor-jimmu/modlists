// theme.typ — shared palette and helpers for the Throne of Titans guide.
// Content files import it with: #import "theme.typ": *
// Document-level page/text/heading rules live in main.typ.

// ---- Palette ----
#let ink      = rgb("#3b2b1c")   // body text — deep warm brown-black
#let muted    = rgb("#7a6a4a")   // secondary text
#let bronze   = rgb("#8a5a2b")   // headings, banners
#let gold     = rgb("#c9a227")   // accents, hairlines
#let cream    = rgb("#fdf7ea")   // page background
#let panel    = rgb("#f6ecd6")   // info / story panels
#let tipfill  = rgb("#eaf2dc")   // tip boxes
#let warnfill = rgb("#f7e4dc")   // warning boxes
#let hairline = rgb("#d9c9a3")   // borders

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
  #text(weight: "bold", size: 10pt, fill: bronze)[#title]
  #v(4pt)
  #body
]

#let tip(body)  = callout("Tip", tipfill, body)
#let info(body) = callout("Good to know", panel, body)
#let warn(body) = callout("Watch out", warnfill, body)

// ---- Roleplaying story panel ----
#let storybox(body) = block(
  width: 100%,
  fill: panel,
  inset: 12pt,
  radius: 5pt,
  stroke: 1pt + gold,
  above: 8pt,
  below: 10pt,
)[
  #text(weight: "bold", style: "italic", size: 12pt, fill: bronze)[The Story]
  #v(4pt)
  #body
]

// ---- Mod entry (modlist chapter) ----
#let mod-entry(
  name: "user to provide",
  url: none,
  deps: "user to provide",
  impact: "user to provide",
  notes: "user to provide",
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
    link(url)[#text(weight: "bold", size: 12pt, fill: bronze)[#name]]
  } else {
    text(weight: "bold", size: 12pt, fill: bronze)[#name]
  }
  #v(5pt)
  #text(size: 9.5pt)[#text(weight: "bold", fill: muted)[Dependencies: ]#deps]
  #v(2pt)
  #text(size: 9.5pt)[#text(weight: "bold", fill: muted)[System / mechanic impact: ]#impact]
  #v(2pt)
  #text(size: 9.5pt)[#text(weight: "bold", fill: muted)[Notes: ]#notes]
]
