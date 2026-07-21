#import "lib.typ": *

#set page(paper: "a4", margin: (top: 2cm, bottom: 2cm, left: 2.5cm, right: 2.5cm))
#set text(font: "Inter", size: 11pt, fill: body-text)
#set heading(numbering: "1.")

// Cover page
#page(fill: bg-cream)[
  #align(center)[
    #v(2cm)
    #image("../assets/logo.png", width: 60%)
    #v(2cm)
    #text(size: 32pt, font: "Press Start 2P", fill: copper)[Beyond the Surface]
    #v(1cm)
    #text(size: 16pt)[Terraria 1.4.5 Modlist & Guide]
    #v(0.5cm)
    #text(size: 12pt)[3-Wave Progressive Modlist]
    #v(1cm)
    #text(size: 10pt, style: "italic")[Generated #datetime.today().display()]
  ]
]

// Table of contents
#pagebreak()
#outline(title: [Table of Contents], depth: 2)

// Setup chapter
#pagebreak()
#chapter-heading("tModLoader Setup & Configuration", copper)
#include "generated/setup.typ"

// Wave 0
#pagebreak()
#chapter-heading("Wave 0 — First Steps", copper)
#text(size: 14pt, style: "italic")[Classic (Softcore) | Medium World | Corruption]
#v(0.5cm)
#include "generated/wave-0/story.typ"
#pagebreak()
#include "generated/wave-0/guide.typ"
#pagebreak()
#include "generated/wave-0/modlist.typ"

// Wave 1
#pagebreak()
#chapter-heading("Wave 1 — Digging Deeper", silver)
#text(size: 14pt, style: "italic")[Expert (Softcore) | Medium World | Corruption or Crimson]
#v(0.5cm)
#include "generated/wave-1/story.typ"
#pagebreak()
#include "generated/wave-1/guide.typ"
#pagebreak()
#include "generated/wave-1/modlist.typ"

// Wave 2
#pagebreak()
#chapter-heading("Wave 2 — Beyond the Surface", gold)
#text(size: 14pt, style: "italic")[Expert (Softcore) | Large World | Corruption]
#v(0.5cm)
#include "generated/wave-2/story.typ"
#pagebreak()
#include "generated/wave-2/guide.typ"
#pagebreak()
#include "generated/wave-2/modlist.typ"
