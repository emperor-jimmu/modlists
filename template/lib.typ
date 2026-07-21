// Color palette
#let copper = rgb("#B87333")
#let silver = rgb("#8A9BBA")
#let gold = rgb("#B8860B")
#let body-text = rgb("#2D2D2D")
#let bg-cream = rgb("#FFF8F0")

// Callout boxes
#let tip(body) = {
  block(
    fill: rgb("#E8F5E9"),
    inset: 10pt,
    radius: 4pt,
    stroke: rgb("#4CAF50") + 1pt,
    body,
  )
}

#let warning(body) = {
  block(
    fill: rgb("#FFF3E0"),
    inset: 10pt,
    radius: 4pt,
    stroke: rgb("#FF9800") + 1pt,
    body,
  )
}

#let note(body) = {
  block(
    fill: rgb("#E3F2FD"),
    inset: 10pt,
    radius: 4pt,
    stroke: rgb("#2196F3") + 1pt,
    body,
  )
}

// Mechanic impact badges
#let impact-badge(label) = {
  box(
    fill: rgb("#5C6BC0"),
    inset: (x: 6pt, y: 3pt),
    radius: 3pt,
    text(fill: white, size: 9pt)[#label],
  )
}

// Chapter heading with wave color
#let chapter-heading(title, color) = {
  set text(fill: color)
  heading(level: 1, title)
  set text(fill: body-text)
}
