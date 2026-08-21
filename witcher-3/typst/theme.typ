#let c = (
  body: rgb("#2d2d2d"),
  heading: rgb("#8b4513"),
  amber: rgb("#b8860b"),
  gold: rgb("#c49a3c"),
  muted: rgb("#6b6b6b"),
  card-bg: rgb("#faf8f3"),
  card-border: rgb("#c4a97d"),
  link: rgb("#2b5797"),
  wave-line: rgb("#c4a97d"),
  heading-font: "Georgia",
  body-font: "Palatino Linotype",
)

#let title-page(ttl: "", sbtl: "", logo-path: "logo.png") = {
  page(paper: "a4", margin: (top: 5cm, bottom: 2.5cm, left: 2.5cm, right: 2.5cm))[
    #align(center, image(logo-path, height: 7.5cm))
    #v(2.5cm)
    #align(center, text(size: 34pt, weight: "bold", fill: c.heading)[#ttl])
    #v(0.4cm)
    #line(length: 40%, stroke: 0.5pt + c.amber)
    #v(0.4cm)
    #align(center, text(size: 16pt, fill: c.gold)[#sbtl])
    #v(0.3cm)
    #align(center, text(size: 10pt, fill: c.muted)[A Witcher 3 Modlist & Game Guide])
    #v(3cm)
    #align(center, text(size: 10pt, fill: c.muted)[Generated #datetime.today().display("[day] [month repr:long] [year]")])
  ]
}

#let wave-header(num: 0, wave-title: "", wave-sub: "") = {
  pagebreak(weak: true)
  block(
    inset: (top: 1cm, bottom: 0.8cm, left: 0.5cm),
    fill: rgb("#fdfaf5"),
    width: 100%,
  )[
    #text(size: 9pt, weight: "bold", fill: c.muted)[WAVE #num]
    #v(2pt)
    #text(size: 26pt, weight: "bold", fill: c.heading)[#wave-title]
    #v(3pt)
    #text(size: 12pt, fill: c.gold)[#wave-sub]
  ]
  line(length: 100%, stroke: 0.5pt + c.wave-line)
  v(0.5cm)
}

#let mod-card(name: "", url: "", author: "", category: "", version: "", wave: "", dependencies: (), mechanic-impact: none, body) = {
  block(
    inset: 12pt,
    fill: c.card-bg,
    stroke: 0.5pt + c.card-border,
    radius: 4pt,
    width: 100%,
  )[
    #grid(
      columns: (1fr, auto),
      gutter: 8pt,
      {
        par(leading: 0.6em)[
          #text(size: 13pt, weight: "bold", fill: c.heading)[#name]
        ]
      },
      {
        box(
          inset: (x: 6pt, y: 3pt),
          radius: 3pt,
          fill: rgb("#e8e0d0"),
        )[
          #link(url)[#text(size: 9pt, weight: "medium", fill: c.link)[Download]]
        ]
      },
    )
    #v(6pt)
    #grid(
      columns: (1fr, 1fr),
      gutter: (12pt, 4pt),
      [
        #par(leading: 0.5em)[
          #text(size: 10pt, fill: c.muted)[Author:] #text(size: 9pt, fill: c.body)[#author]
        ]
      ],
      [
        #par(leading: 0.5em)[
          #text(size: 10pt, fill: c.muted)[Category:] #text(size: 9pt, fill: c.body)[#category]
        ]
      ],
      [
        #par(leading: 0.5em)[
          #text(size: 10pt, fill: c.muted)[Version:] #text(size: 9pt, fill: c.body)[#version]
        ]
      ],
      [
        #par(leading: 0.5em)[
          #text(size: 10pt, fill: c.muted)[Wave:] #text(size: 9pt, fill: c.body)[#wave]
        ]
      ],
    )
    #if dependencies.len() > 0 [
      #v(4pt)
      #par(leading: 0.5em)[
        #text(size: 10pt, fill: c.muted)[*Dependencies:*] #text(size: 9pt, fill: c.body)[#dependencies.join(", ")]
      ]
    ]
    #if mechanic-impact != none [
      #v(4pt)
      #par(leading: 0.5em)[
        #text(size: 10pt, fill: c.muted)[*Mechanic Impact:*] #text(size: 9pt, fill: c.body)[#mechanic-impact]
      ]
    ]
    #v(6pt)
    #par(leading: 0.6em)[
      #text(size: 10.5pt, fill: c.body)[#body]
    ]
  ]
  v(8pt)
}

#let info-box(ititle: "", body: []) = {
  block(
    inset: 10pt,
    fill: rgb("#f0f5fa"),
    stroke: 0.5pt + rgb("#4a7fa5"),
    radius: 3pt,
  )[
    #text(size: 10pt, weight: "bold", fill: rgb("#2b5797"))[#ititle]
    #v(3pt)
    #body
  ]
  v(6pt)
}

#let tip-box(body: []) = {
  v(6pt)
  block(
    inset: 8pt,
    fill: rgb("#f7f7f2"),
    stroke: 0.5pt + c.amber,
    radius: 3pt,
  )[
    #text(size: 10pt, fill: c.amber)[*Tip:* ]#body
  ]
  v(6pt)
}

#let tbl(cols: 2, ..args) = {
  grid(
    columns: (1fr,) * cols,
    fill: (x, y) => if y == 0 { rgb("#f5f0e1") } else if calc.even(y) { rgb("#faf8f3") } else { none },
    stroke: 0.3pt + luma(180),
    inset: 4pt,
    ..args,
  )
}
