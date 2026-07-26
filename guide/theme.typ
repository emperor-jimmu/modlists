// Colors
#let bg-color = rgb("#f5eedc")
#let heading-color = rgb("#5c3a21")
#let body-color = rgb("#2c2c2c")
#let accent-color = rgb("#8b2500")
#let code-bg = rgb("#3a2a1a")
#let code-text = rgb("#f0d060")
#let wave0-color = rgb("#4a7c59")
#let wave1-color = rgb("#8b2500")
#let both-color = rgb("#5c3a21")

// Page setup
#set page(
  paper: "us-letter",
  margin: (x: 1.2in, y: 1in),
  background: bg-color,
)

// Body text defaults
#set text(font: "Inter", size: 10pt, fill: body-color)
#set par(justify: true, leading: 0.65em)

// Heading styles
#show heading: set text(font: "Playfair Display", fill: heading-color)
#show heading.where(level: 1): set text(size: 22pt, weight: "bold")
#show heading.where(level: 2): set text(size: 16pt)
#show heading.where(level: 3): set text(size: 13pt)

// Link styling
#show link: set text(fill: accent-color)
#show link: underline

// Code / config blocks
#show raw: set text(font: "Inter", size: 9pt, fill: code-text)
#show raw: set block(
  fill: code-bg,
  inset: 8pt,
  radius: 4pt,
  width: 100%,
)

// Wave badge helper — colored pill for Wave 0, Wave 1, or Both
#let wave-badge(wave) = {
  let (label, col) = if wave == "0" {
    ("Wave 0", wave0-color)
  } else if wave == "1" {
    ("Wave 1", wave1-color)
  } else {
    ("Both", both-color)
  }
  box(
    fill: col,
    inset: (x: 6pt, y: 2pt),
    radius: 3pt,
    text(size: 8pt, weight: "bold", fill: white)[#label],
  )
}

// Mod entry card helper — renders a bordered block with all mod metadata
#let mod-entry(name, url, author, category, wave, desc, deps, impact, notes: "", conflicts: "") = {
  v(6pt)
  block(
    inset: 10pt,
    radius: 4pt,
    fill: luma(245),
    stroke: 1pt + luma(220),
  )[
    #text(size: 13pt, weight: "bold", fill: heading-color)[
      #link(url)[#name]
    ]
    #wave-badge(wave)
    #h(4pt)
    #text(size: 9pt, fill: luma(120))[by _#author_  ·  #category]

    #v(4pt)
    #desc

    #v(2pt)
    #text(size: 9pt, fill: luma(100))[
      *Deps:* #deps \
      *Impact:* #impact \
    ]

    #if notes != "" {
      #text(size: 9pt, fill: luma(100))[*Install:* #notes]
    }
    #if conflicts != "" {
      #v(2pt)
      #text(size: 9pt, fill: accent-color)[*Conflicts:* #conflicts]
    }
  ]
  v(6pt)
}
