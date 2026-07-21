// Color palette
#let copper = rgb("#B87333")
#let silver = rgb("#8A9BBA")
#let gold = rgb("#B8860B")
#let body-text = rgb("#2D2D2D")
#let bg-cream = rgb("#FFF8F0")
#let link-blue = rgb("#2979FF")

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

// Chapter heading with wave color
#let chapter-heading(title, color) = {
  set text(fill: color)
  heading(level: 1, title)
  set text(fill: body-text)
}

// Mod card
#let mod-card(name, url, description, dependencies: (), impact: (), color: copper) = {
  let deps = if type(dependencies) == array { dependencies } else if dependencies != () { (dependencies,) } else { () }
  block(
    fill: rgb("#FFFFFF"),
    inset: 14pt,
    radius: 8pt,
    stroke: color + 1.5pt,
    {
      text(size: 14pt, weight: "bold", fill: color, link(url)[#name])
      v(0.4em)
      description
      if deps.len() > 0 {
        v(0.4em)
        text(size: 10pt)[*Dependencies:* #deps.join(", ")]
      }
      v(0.5em)
      text(size: 10pt, weight: "bold")[System/Mechanic Impact:]
      v(0.3em)
      for (label, active) in impact {
        let badge-c = if active { rgb("#4CAF50") } else { rgb("#BDBDBD") }
        box(fill: badge-c, inset: (x: 6pt, y: 3pt), radius: 3pt,
          text(fill: white, size: 8pt)[#label]
        )
        h(4pt)
      }
    },
  )
  v(10pt)
}

// Mod list load order section
#let load-order-section(wave-num, order) = {
  v(1em)
  heading(level: 2)[Load Order for Wave #wave-num]
  [Enable mods in this exact order:]
  for (i, mod) in order.enumerate() {
    [#i. #mod]
    parbreak()
  }
}
