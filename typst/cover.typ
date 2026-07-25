#import "theme.typ": *

#set page(
  paper: page-width,
  margin: 0pt,
  fill: oda-black,
  numbering: none,
)

#align(center + middle, text(
  font: (heading-font, cjk-font),
  size: 14pt,
  fill: oda-gold,
  weight: "regular",
)[
  #block(width: 60%)[
    #image("../assets/logo.jpg", width: 100%)
  ]

  #v(2cm)

  #set text(size: 48pt, weight: "bold", fill: oda-crimson)
  Tenka Fubu

  #v(0.5cm)

  #set text(size: 18pt, fill: rgb("#CCCCCC"), weight: "regular")
  Total War: Shogun 2

  #v(0.3cm)

  #set text(size: 14pt, fill: oda-gold)
  Modlist & Guide

  #v(3cm)

  #set text(size: 10pt, fill: rgb("#888888"))
  For the latest Steam version (patch 1.1.0, build 5934)

  Three waves — three campaigns — one sword
])
