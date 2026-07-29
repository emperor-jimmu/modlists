// Enhanced Liberty — PDF Theme Template
// Color palette, fonts, and show rules for the modlist guide

#let liberty-dark-blue = rgb("#0d1117")
#let liberty-body-bg = rgb("#f5f0e8")
#let liberty-body-text = rgb("#1a1a1a")
#let liberty-gold = rgb("#d4a843")
#let liberty-heading = rgb("#1a2530")
#let liberty-link = rgb("#1a7a7a")
#let liberty-badge = rgb("#e67e22")

// Set document defaults
#set text(
  font: ("Noto Serif", "Georgia"),
  size: 11pt,
  fill: liberty-body-text,
)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 2cm, right: 2cm),
  numbering: "1",
  number-align: center,
)

// Heading styles
#show heading.where(level: 1): it => [
  #set text(font: ("Fira Sans", "Roboto"), weight: "bold", size: 22pt, fill: liberty-heading)
  #block(below: 0.5cm, above: 1cm, it)
]

#show heading.where(level: 2): it => [
  #set text(font: ("Fira Sans", "Roboto"), weight: "bold", size: 16pt, fill: liberty-heading)
  #block(below: 0.3cm, above: 0.6cm, it)
]

#show heading.where(level: 3): it => [
  #set text(font: ("Fira Sans", "Roboto"), weight: "bold", size: 12pt, fill: liberty-heading)
  #block(below: 0.2cm, above: 0.4cm, it)
]

// Link styling — clickable with color
#show link: it => {
  set text(fill: liberty-link)
  it
}

// Table styling for mod entries
#show table.cell: it => {
  set text(size: 9pt)
  it
}

// System impact badge — reserved for future mod entries
#let sys-impact(details) = {
  box(
    fill: liberty-badge,
    inset: (x: 4pt, y: 2pt),
    radius: 3pt,
  )[
    #set text(fill: white, size: 8pt, weight: "bold")
    #details
  ]
}

// Cover page template
#let cover(title: none, subtitle: none, logo_path: none, waves: none) = {
  page(
    paper: "a4",
    margin: (top: 2cm, bottom: 2cm, left: 2cm, right: 2cm),
    fill: liberty-dark-blue,
    numbering: none,
  )[
    #align(center + top, [
      #block(height: 1.5cm)
      #image(logo_path, width: 50%)
      #block(height: 1cm)
      #set text(fill: liberty-gold, size: 28pt, weight: "bold", font: ("Fira Sans", "Roboto"))
      #title
      #block(height: 0.4cm)
      #set text(fill: white, size: 14pt, font: ("Noto Serif", "Georgia"))
      #subtitle
      #block(height: 0.2cm)
      #set text(fill: rgb("#aaaaaa"), size: 10pt, font: ("Fira Sans", "Roboto"))
      #waves
    ])
  ]
}
