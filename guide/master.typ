#import "theme.typ": *

// ========================
//        COVER PAGE
// ========================
#set page(numbering: none)

#align(center + top)[
  #v(2cm)
  #image("../assets/logo.jpg", width: 60%)

  #v(1.5cm)

  #text(size: 36pt, weight: "bold", font: "Playfair Display", fill: heading-color)[
    Outlaw Overhaul
  ]

  #v(0.3cm)
  #text(size: 14pt, font: "Inter", fill: body-color)[
    A Red Dead Redemption 2 Modlist & Guide
  ]

  #v(1.5cm)
  #line(length: 60%, stroke: 0.5pt + heading-color)

  #v(1cm)
  #text(size: 11pt, font: "Inter", fill: luma(120))[
    Version 1.32 · July 2026
  ]

  #v(2cm)
  #outline(depth: 1, indent: auto)
]

#pagebreak()

// ========================
//     MAIN CONTENT
// ========================
#set page(numbering: "1")
#counter(page).update(1)

#include "00-foreword.typ"
#include "01-installation.typ"
#include "02-wave0-guide.typ"
#include "03-wave1-guide.typ"
#include "04-modlist.typ"
#include "05-appendix.typ"
