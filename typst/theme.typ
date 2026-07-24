#let witcher-colors = (
  amber: rgb("#b8860b"),
  gold: rgb("#d4a017"),
  dark-amber: rgb("#8b6914"),
  deep-red: rgb("#8b0000"),
  cream: rgb("#f5f0e1"),
  dark-bg: rgb("#1a1a2e"),
  dark-text: rgb("#e0dcd0"),
  accent: rgb("#c49a3c"),
)

#let heading-font = "Georgia"
#let body-font = "Palatino Linotype"

#let title-page(title, subtitle, logo-path) = {
  page(size: "a4", margin: (top: 6cm, bottom: 3cm, left: 2.5cm, right: 2.5cm))[
    #align(center, image(logo-path, height: 5cm))
    #v(2cm)
    #align(center, text(size: 36pt, weight: "bold", fill: witcher-colors.amber)[#title])
    #v(0.5cm)
    #align(center, text(size: 18pt, fill: witcher-colors.gold)[#subtitle])
    #v(1cm)
    #align(center, text(size: 11pt, fill: witcher-colors.dark-amber)[A Witcher 3 Modlist & Game Guide])
    #v(2cm)
    #align(center, text(size: 10pt, fill: luma(120))[Generated #datetime.today().display("[day] [month repr:long] [year]")])
  ]
}

#let wave-header(number, title, subtitle) = {
  pagebreak(weak: true)
  block(stroke: 2pt + witcher-colors.amber, width: 100%)[#v(1cm)]
  text(size: 8pt, fill: witcher-colors.dark-amber)[WAVE #number]
  v(0.2cm)
  text(size: 24pt, weight: "bold", fill: witcher-colors.amber)[#title]
  v(0.3cm)
  text(size: 12pt, fill: witcher-colors.gold)[#subtitle]
  v(1cm)
}

#let mod-card(name, url, author, category, version, wave, dependencies: (), mechanic-impact: none, body: []) = {
  rect(stroke: 0.5pt + witcher-colors.amber, inset: 12pt, margin: (bottom: 8pt))[
    #text(size: 13pt, weight: "bold", fill: witcher-colors.amber)[#name]
    #h(4pt)
    #text(size: 9pt, fill: blue, link(url))[[Link]]
    #v(4pt)
    #grid(
      columns: (1fr, 1fr),
      [Author: #author],
      [Category: #category],
      [Version: #version],
      [Wave: #wave],
    )
    #if dependencies.len() > 0 [
      #v(2pt)
      Dependencies: #dependencies.join(", ")
    ]
    #if mechanic-impact != none [
      #v(2pt)
      *Mechanic Impact:* #mechanic-impact
    ]
    #v(4pt)
    #body
  ]
}
