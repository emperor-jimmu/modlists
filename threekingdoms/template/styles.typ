// Color palette
#let crimson = rgb("#8B0000")
#let gold = rgb("#C9A84C")
#let ink = rgb("#2C1810")
#let parchment = rgb("#FFF8F0")
#let card-white = rgb("#FFFFFF")
#let muted = rgb("#666666")
#let conflict-red = rgb("#CC3333")
#let mechanic-blue = rgb("#336699")
#let category-bg = rgb("#F0E6D3")

// Font configuration
#let body-font = "Source Serif 4"
#let heading-font = "Playfair Display"
#let mono-font = "JetBrains Mono"

// Page setup
#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 2.5cm, right: 2.5cm),
  background: [ #box(fill: parchment, width: 100%, height: 100%) ]
)

#set text(font: body-font, size: 10pt, fill: ink)
#set par(justify: true, leading: 0.6em)

// Heading styles
#show heading.where(level: 1): set text(font: heading-font, size: 18pt, weight: 700, fill: crimson)
#show heading.where(level: 2): set text(font: heading-font, size: 14pt, weight: 600, fill: crimson)
#show heading.where(level: 3): set text(font: heading-font, size: 11pt, weight: 600, fill: ink)

// Link styling
#show link: text.with(fill: gold)

// Auto-style all table headers with crimson bg and white text
#show table.cell.where(y: 0): it => {
  set text(fill: white, weight: "bold")
  table.cell(fill: crimson, it)
}

// Page numbering
#set page(numbering: "1")
