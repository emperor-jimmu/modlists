#let apply(body) = {
  set text(font: ("Cambria", "Georgia"), size: 11pt, lang: "en")
  set par(leading: 0.65em)

  show raw.where(block: true): it => {
    set text(font: ("Consolas", "Courier New"), size: 9pt)
    block(
      fill: luma(245),
      inset: (x: 10pt, y: 6pt),
      radius: 3pt,
      width: 100%,
      stroke: 0.5pt + luma(220),
    )[#it]
  }

  show raw.where(block: false): set text(size: 9pt, fill: rgb("#c7254e"), font: "Consolas")

  show heading.where(level: 1): it => {
    set text(size: 20pt, weight: "bold", fill: navy)
    it
  }

  show heading.where(level: 2): it => {
    set text(size: 15pt, weight: "bold", fill: rgb("#1a3a5c"))
    it
  }

  show link: set text(fill: rgb("#1a6dd4"))

  show table: set table(
    fill: (luma(248), luma(235)),
    stroke: 0.5pt + luma(180),
    inset: 5pt,
  )

  body
}
