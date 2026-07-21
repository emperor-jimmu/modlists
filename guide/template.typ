// No One is Coming — Shared Template (Light Mode)
// Usage: typst compile --font-path assets/fonts guide/main.typ output/No-One-Is-Coming.pdf

// ===== FONTS =====
// Referenced by family name. Typst discovers them from --font-path directory.
#let body-font = "Atkinson Hyperlegible"
#let heading-font = "Special Elite"
#let mono-font = "JetBrains Mono"

// ===== COLOR PALETTE =====
#let white       = rgb("#FFFFFF")
#let body-color  = rgb("#1E1E1E")
#let heading-color = rgb("#2D2D2D")
#let green       = rgb("#5C7A2A")
#let amber       = rgb("#B34700")
#let red         = rgb("#8B0000")
#let blue        = rgb("#4A6A8A")
#let gray        = rgb("#666666")

#let green-light  = rgb("#EDF2E4")
#let amber-light  = rgb("#FEF0E4")
#let red-light    = rgb("#FDE8E8")
#let blue-light   = rgb("#EBF0F6")
#let gray-light   = rgb("#F4F4F4")
#let zebra        = rgb("#FAFAFA")
#let border-color = rgb("#DDDDDD")

// ===== PAGE SETUP =====
#set page(
  paper: "a4",
  margin: (left: 22mm, right: 22mm, top: 22mm, bottom: 24mm),
  header: locate(loc => {
    let h1s = query(heading.where(level: 1), loc)
    if h1s.len() > 0 {
      set text(size: 8pt, fill: gray, font: body-font)
      h1s.last().body
    }
  }),
  header-ascent: 10pt,
  footer: [
    #line(length: 100%, stroke: 0.5pt + border-color)
    #set text(size: 9pt, fill: gray, font: body-font)
    #align(center)[Page #counter(page).display("1")]
  ],
  footer-descent: 8pt,
)

// ===== BASE TEXT & PARAGRAPH =====
#set text(
  font: body-font,
  size: 11pt,
  fill: body-color,
  lang: "en",
)

#set par(
  leading: 0.65em,
  justify: true,
  first-line-indent: 0pt,
  spacing: 0.6em,
)

// ===== LISTS =====
#set list(
  indent: 1.5em,
  body-indent: 0.5em,
  spacing: 0.3em,
)

// ===== INLINE STYLING =====
#show strong: set text(font: body-font, weight: "bold")
#show emph: set text(font: body-font, weight: "italic")
#show link: set text(fill: amber)

// ===== CODE =====
#show raw: set text(font: mono-font, size: 10pt, fill: body-color)
#show raw.where(block: true): it => {
  block(
    fill: gray-light,
    inset: 10pt,
    stroke: 0.5pt + border-color,
  )[#it]
}

// ===== HEADINGS =====
#show heading: set text(font: heading-font, weight: "regular")

#show heading.where(level: 1): it => {
  set text(fill: heading-color, size: 22pt)
  v(24pt, weak: true)
  it
  v(4pt)
  line(length: 100%, stroke: 0.5pt + green)
  v(12pt, weak: true)
}

#show heading.where(level: 2): it => {
  set text(fill: heading-color, size: 17pt)
  v(20pt, weak: true)
  it
  v(10pt, weak: true)
}

#show heading.where(level: 3): it => {
  set text(fill: amber, size: 14pt)
  v(16pt, weak: true)
  it
  v(8pt, weak: true)
}
