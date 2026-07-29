// style.typ — Driftwood palette for the merged guide
#let apply(body) = {
  set text(font: ("Cambria", "Georgia"), size: 13pt, lang: "en", fill: rgb("#2C1810"))
  set par(leading: 0.65em)

  // Code blocks — dark warm background
  show raw.where(block: true): it => {
    set text(font: ("Consolas", "Courier New"), size: 11pt, fill: rgb("#E8D8C0"))
    block(
      fill: rgb("#2C2418"),
      inset: (x: 10pt, y: 8pt),
      radius: 3pt,
      width: 100%,
      stroke: 0.5pt + rgb("#4A3C30"),
    )[#it]
  }

  // Inline code — blue text, no background
  show raw.where(block: false): set text(size: 11pt, fill: rgb("#5B7B8A"), font: "Consolas")

  // H1 — driftwood dark (used for the document title only)
  show heading.where(level: 1): it => {
    set text(size: 24pt, weight: "bold", fill: rgb("#403020"))
    it
  }

  // H2 — driftwood brown (wave section headers)
  show heading.where(level: 2): it => {
    set text(size: 18pt, weight: "bold", fill: rgb("#604020"))
    it
  }

  // H3 — driftwood blue (subsections)
  show heading.where(level: 3): it => {
    set text(size: 14pt, weight: "semibold", fill: rgb("#5B7B8A"))
    it
  }

  // Links — deeper blue for contrast
  show link: set text(fill: rgb("#2B5F7A"))

  // Tables — brown header row with white text, cream alternating body rows
  show table: it => {
    set table(
      fill: (luma(255), rgb("#F5EDE0")),
      stroke: none,
      inset: (x: 6pt, y: 4pt),
    )
    // Style header row: brown fill, white text
    show table.cell.where(y: 0): cell => {
      set text(fill: white, weight: "bold", size: 11pt)
      block(
        fill: rgb("#604020"),
        inset: (x: 6pt, y: 3pt),
      )[#cell]
    }
    it
  }

  // Blockquotes -> callout boxes (cream bg, gold left border)
  show quote: it => {
    block(
      fill: rgb("#F5EDE0"),
      inset: (x: 10pt, y: 6pt),
      radius: 2pt,
      width: 100%,
      stroke: (left: 4pt + rgb("#C4A882"), top: none, right: none, bottom: none),
    )[#it]
  }

  body
}
