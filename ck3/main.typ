#let version = read("VERSION").trim()
#let ck3-version = read("data/ck3-version").trim()
#let guide-date = "July 2026"

#let gold = rgb("#C8A951")
#let dark-navy = rgb("#1A1A2E")
#let accent-red = rgb("#8B2A2A")

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2cm, left: 2.2cm, right: 2.2cm),
  footer: context {
    let pg = counter(page).get()
    let curr = pg.first()
    align(center + bottom, pad(bottom: 0.6cm, text(size: 0.75em, fill: rgb("#888888"), str(
      "A More Perfect Realm v" + version + " — " + guide-date + " — CK3 v" + ck3-version + " | Page " + numbering("1", curr)
    ))))
  }
)

#set text(
  font: "Palatino Linotype",
  size: 11pt,
  lang: "en"
)

#show link: set text(fill: accent-red)

#show heading.where(level: 1): it => {
  v(1.5em)
  block(
    fill: dark-navy,
    inset: (left: 1em, right: 1em, top: 0.4em, bottom: 0.4em),
    radius: 2pt,
    text(size: 1.5em, weight: "bold", fill: gold, it.body)
  )
  v(0.5em)
}

#show heading.where(level: 2): it => {
  v(1em)
  block(
    stroke: (left: 3pt + gold),
    inset: (left: 0.6em, top: 0.1em, bottom: 0.1em),
    text(size: 1.2em, weight: "semibold", fill: dark-navy, it.body)
  )
  v(0.3em)
}

#show heading.where(level: 3): it => {
  v(0.8em)
  text(size: 1.05em, weight: "medium", style: "italic", fill: rgb("#444444"), it.body)
  v(0.2em)
}

#show outline.entry: set text(size: 0.95em)

// Cover page
#align(center + horizon)[
  #block(height: 100%)[
    #set align(center + horizon)

    #v(1fr)

    #image("assets/logo.png", height: 7cm)

    #v(1.2cm)

    #block[
      #text(size: 2.8em, weight: "bold", fill: dark-navy)[A More Perfect Realm]
    ]
    #v(0.3cm)
    #block[
      #text(size: 1.3em, fill: rgb("#555555"), style: "italic")[A Curated Modlist & Beginner's Tutorial]
      #linebreak()
      #text(size: 1.3em, fill: rgb("#555555"), style: "italic")[for Crusader Kings 3 (2026)]
    ]
    #v(0.6cm)
    #block(
      fill: gold,
      inset: (left: 0.8em, right: 0.8em, top: 0.2em, bottom: 0.2em),
      radius: 3pt,
      width: 25%
    )[
      #text(size: 0.9em, weight: "bold", fill: white)[v#version]
    ]

    #v(1fr)

    #block[
      #text(size: 0.95em, fill: rgb("#777777"))[
        #guide-date \ All DLC Included \ Steam (Windows) \
        CK3 v#ck3-version
      ]
    ]

    #v(0.3cm)

    #block[
      #text(size: 0.85em, fill: rgb("#999999"))[
        Mod Manager: Vortex \ PDF Generated with Typst
      ]
    ]
  ]
]

#pagebreak()

// Table of Contents
#heading(level: 1, outlined: false)[Table of Contents]

#outline(
  indent: auto,
  depth: 2
)

#pagebreak()

// Import chapters
#include "content/01-tutorial.typ"
#include "content/02-modlist-core.typ"
#include "content/05-new-game-guide.typ"
#include "content/04-performance.typ"
