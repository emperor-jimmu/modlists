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
#show emph: set text(font: body-font, style: "italic")
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

// ===== CALLOUT BLOCKS =====
#let callout-block(label, body, bg, border-c, label-c) = {
  block(
    fill: bg,
    inset: 12pt,
    radius: 0pt,
    stroke: (left: 1.5pt + border-c),
    [
      #set par(spacing: 0.4em)
      #text(size: 10pt, weight: "bold", fill: label-c)[#label: ]
      #body
    ]
  )
  v(6pt, weak: true)
}

#let tip(body) = callout-block("Tip", body, green-light, green, green)
#let warning(body) = callout-block("Warning", body, amber-light, amber, amber)
#let danger(body) = callout-block("Danger", body, red-light, red, red)
#let info(body) = callout-block("Info", body, blue-light, blue, blue)
#let note(body) = callout-block("Note", body, gray-light, border-color, gray)

// ===== COVER PAGE =====
#let cover-page() = {
  set align(center + horizon)
  set par(justify: false)
  v(40mm)
  image("assets/logo.png", width: 50%)
  v(20mm)
  text(size: 40pt, font: heading-font, fill: heading-color)[NO ONE IS COMING]
  v(8mm)
  text(size: 14pt, font: body-font, fill: gray)[A Project Zomboid Build 42 Modlist & Survival Guide]
  v(16mm)
  text(size: 10pt, font: body-font, fill: gray)[Build 42.12.3 · October 2025]
  v(4mm)
  text(size: 10pt, font: body-font, fill: gray)[Compiled #datetime.today().display("[month repr:long] [day] [year]")]
  v(4mm)
  text(size: 10pt, font: body-font, fill: gray, style: "italic")[Best viewed digitally. Print at your own toner expense.]
  pagebreak()
}

// ===== WAVE DIVIDER PAGE =====
#let wave-divider(number, name, story) = {
  set align(center + horizon)
  set par(justify: false)
  v(60mm)
  text(size: 28pt, font: heading-font, fill: heading-color)[WAVE #number]
  v(8mm)
  line(length: 40mm, stroke: 1pt + green)
  v(8mm)
  text(size: 36pt, font: heading-font, fill: amber)[#name]
  v(16mm)
  text(size: 12pt, font: body-font, fill: gray, style: "italic")[#story]
  v(24mm)
  line(length: 40mm, stroke: 0.5pt + border-color)
  v(8mm)
  text(size: 10pt, font: body-font, fill: gray)[Begin Wave #number]
  pagebreak()
}

// ===== MOD ENTRY =====
#let tag-badge(body, bg, fg) = box(
  fill: bg,
  inset: (x: 5pt, y: 2pt),
  outset: (y: 1pt),
  radius: 2pt,
  [#text(size: 9pt, fill: fg, weight: "bold")[#body]],
)

#let mod-entry(name, workshop-id, category, dependencies, system-impact, description) = {
  block(
    fill: gray-light,
    inset: (x: 16pt, y: 14pt),
    radius: 0pt,
    stroke: none,
    [
      #set par(spacing: 0.45em)

      #grid(
        columns: (1fr, auto),
        gutter: 8pt,
        [#text(size: 14pt, font: heading-font, fill: amber)[#name]],
        [#link("https://steamcommunity.com/sharedfiles/filedetails/?id=" + workshop-id)[
          #text(size: 10pt, fill: amber, style: "italic")[WS: #workshop-id]
        ]],
      )

      #v(3pt)

      #tag-badge(category, green-light, green)
      #if dependencies != "None" [
        #h(4pt)
        #tag-badge("Dep: " + dependencies, blue-light, blue)
      ]

      #v(6pt)

      #text(size: 10.5pt, fill: body-color, weight: "bold", style: "italic")[#system-impact]

      #v(3pt)

      #text(size: 11pt, fill: body-color)[#description]
    ]
  )
  v(8pt, weak: true)
}

// ===== SETTINGS TABLE =====
#let settings-table(rows) = {
  let cells = rows.map(((key, value)) => (
    text(weight: "bold", fill: body-color)[#key],
    text(fill: body-color)[#value],
  )).flatten()

  set table(
    columns: (auto, 1fr),
    stroke: 0.5pt + border-color,
    inset: (x: 10pt, y: 6pt),
    fill: (_, y) => if calc.rem(y, 2) == 0 { white } else { zebra },
  )
  table(
    ..cells,
  )
  v(12pt, weak: true)
}
