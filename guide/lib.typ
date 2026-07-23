// lib.typ -- Shared definitions for The Final Cycle guide

// === Color Palette ===
#let clr-n7-red = rgb("#D93829")
#let clr-blue = rgb("#00BFFF")
#let clr-bg = rgb("#1A1A1A")
#let clr-content = rgb("#2D2D2D")
#let clr-amber = rgb("#FFA500")
#let clr-info = rgb("#3A5A7C")
#let clr-text = rgb("#E0E0E0")
#let clr-ok = rgb("#4CAF50")
#let clr-muted = rgb("#888888")
#let clr-le1 = rgb("#4A90D9")
#let clr-le2 = rgb("#4CAF50")
#let clr-le3 = rgb("#FFA500")
#let clr-launcher = rgb("#888888")

// === Game Badge ===
#let game-badge(game) = {
  let (color, label) = if game == "LE1" {
    (clr-le1, "LE1")
  } else if game == "LE2" {
    (clr-le2, "LE2")
  } else if game == "LE3" {
    (clr-le3, "LE3")
  } else {
    (clr-launcher, "Launcher")
  }
  box(
    fill: color,
    inset: (x: 8pt, y: 2pt),
    radius: 4pt,
    text(fill: white, size: 9pt, weight: "bold", label)
  )
}

// === Callout Box ===
#let callout(type, body) = {
  let color = if type == "info" {
    clr-info
  } else if type == "warning" {
    clr-amber
  } else if type == "tip" {
    clr-ok
  } else if type == "dependency" {
    clr-n7-red
  } else {
    clr-info
  }
  let icon = if type == "info" {
    "i"
  } else if type == "warning" {
    "!"
  } else if type == "tip" {
    "?"
  } else {
    ">"
  }

  stack(
    spacing: 0pt,
    block(
      fill: rgb("#252525"),
      inset: (top: 8pt, bottom: 8pt, left: 12pt, right: 12pt),
      radius: 4pt,
      stroke: (left: 4pt + color),
      [
        #text(fill: color, weight: "bold", size: 10pt)[#icon ]
        #body
      ],
    ),
    v(8pt),
  )
}

// === Mod Entry ===
#let mod-entry(
  name: "",
  url: "",
  game: none,
  version: "",
  last-checked: "",
  deps: (),
  impact: none,
  notes: none,
) = {
  stack(
    spacing: 0pt,
    block(
      fill: clr-content,
      inset: 12pt,
      radius: 6pt,
      stroke: 1pt + clr-content,
      [
        #if game != none {
          game-badge(game)
        }
        #text(size: 13pt, weight: "bold")[#name]

        #text(size: 9pt, fill: clr-muted)[#version | Last checked: #last-checked]

        #link(url)[#url]

        #v(6pt)

        #text(weight: "bold")[Dependencies: ]\
        #{ if deps.len() > 0 { deps.join(", ") } else { [None] } }

        #v(4pt)

        #if impact != none {
          text(weight: "bold")[Impact: ] + impact
        }

        #v(4pt)

        #if notes != none {
          text(weight: "bold")[Installation notes: ] + notes
        }
      ],
    ),
    v(10pt),
  )
}
