// style.typ — Red & Graphite racing theme for GRID Control
#let apply(body) = {
  set text(font: ("Inter", "Segoe UI", "DejaVu Sans"), size: 12pt, lang: "en", fill: rgb("#15151E"))
  set par(leading: 0.65em)

  show raw.where(block: true): it => {
    set text(font: ("JetBrains Mono", "Consolas", "DejaVu Sans Mono"), size: 10pt, fill: rgb("#C0C6CC"))
    block(
      fill: rgb("#1A1A2E"),
      inset: (x: 10pt, y: 8pt),
      radius: 3pt,
      width: 100%,
      stroke: 0.5pt + rgb("#38383F"),
    )[#it]
  }

  show raw.where(block: false): set text(size: 10pt, fill: rgb("#C0C6CC"), font: ("JetBrains Mono", "Consolas"))

  show heading.where(level: 1): it => {
    set text(size: 26pt, weight: "bold", fill: rgb("#E10600"))
    it
  }

  show heading.where(level: 2): it => {
    set text(size: 20pt, weight: "bold", fill: rgb("#15151E"))
    block(stroke: (bottom: 1pt + rgb("#E10600")), width: 100%)[#it]
  }

  show heading.where(level: 3): it => {
    set text(size: 15pt, weight: "semibold", fill: rgb("#6E6E78"))
    it
  }

  show heading.where(level: 4): it => {
    set text(size: 13pt, weight: "semibold", fill: rgb("#15151E"))
    it
  }

  show link: set text(fill: rgb("#E10600"))

  show table: it => {
    set table(
      fill: (rgb("#FFFFFF"), rgb("#F4F4F4")),
      stroke: none,
      inset: (x: 8pt, y: 5pt),
    )
    show table.cell.where(y: 0): cell => {
      set text(fill: white, weight: "bold", size: 10pt)
      block(
        fill: rgb("#15151E"),
        inset: (x: 8pt, y: 4pt),
      )[#cell]
    }
    it
  }

  show quote: it => {
    block(
      fill: rgb("#F4F4F4"),
      inset: (x: 12pt, y: 8pt),
      radius: 2pt,
      width: 100%,
      stroke: (left: 4pt + rgb("#E10600"), top: none, right: none, bottom: none),
    )[#it]
  }

  body
}
