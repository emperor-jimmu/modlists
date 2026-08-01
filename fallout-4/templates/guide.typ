#import "style.typ": *

#let version = read("../VERSION").trim()

#cover-page(
  "Glowing Horizon",
  "A Fallout 4 Modlist & Survival Guide",
  "V" + version + " — Fallout 4 AE 1.11.221",
  "../assets/logo.jpg",
)

#pagebreak()
#set page(numbering: "1", number-align: center)
#outline(title: [Table of Contents], depth: 3)
#pagebreak()

#include "../guide/00-installation.typ"
#include "../guide/01-wave-0.typ"
#include "../guide/02-wave-1.typ"
#include "../guide/03-appendix-mod-reference.typ"
#include "../guide/04-glossary.typ"
