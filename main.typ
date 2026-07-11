#let version = read("VERSION").trim()
#let ck3-version = "1.15.x"
#let guide-date = "July 2026"

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2cm, left: 2cm, right: 2cm),
  footer: context {
    let page-count = counter(page).final()
    align(center, text(size: 0.8em, fill: gray, "CK3 Modlist Guide v" + version + " — " + guide-date + " — CK3 v" + ck3-version + " | Page " + counter(page).display() + " of " + page-count.display()))
  }
)

#set text(
  font: "Liberation Serif",
  size: 11pt,
  lang: "en"
)

#show heading.where(level: 1): it => [
  #block(above: 1.5em, below: 0.5em)[
    #text(size: 1.5em, weight: "bold", it.body)
  ]
]

#show heading.where(level: 2): it => [
  #block(above: 1em, below: 0.3em)[
    #text(size: 1.2em, weight: "semibold", it.body)
  ]
]

#show heading.where(level: 3): it => [
  #block(above: 0.8em, below: 0.2em)[
    #text(size: 1em, weight: "medium", style: "italic", it.body)
  ]
]

// Title page
#align(center)[
  #block(text(2.5em, weight: "bold")[CK3 Modlist Guide])
  #block(text(1.2em)[A Curated Modlist & Tutorial for Crusader Kings 3])
  #block(text(size: 0.9em, fill: gray)[v#version — #guide-date — CK3 v#ck3-version])
  #v(2em)
  #block(text(0.9em)["All DLC" · #guide-date · Steam (Windows)])
]

#pagebreak()

// Table of Contents
#heading(level: 1, outlined: false)[Table of Contents]
#outline()

#pagebreak()

// Import chapters
#include "content/01-tutorial.typ"
#include "content/02-modlist-core.typ"
#include "content/03-modlist-adult.typ"
#include "content/04-performance.typ"
#include "content/05-new-game-guide.typ"
