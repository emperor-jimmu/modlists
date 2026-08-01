#import "style.typ": *

#let version = read("../VERSION").trim()

#cover-page(
  "Torque Ascension",
  "An Automobilista 2 Modlist & Career Guide",
  "V" + version + " — AMS2 V1.6+",
  "../assets/logo.jpg",
)

#pagebreak()
#set page(numbering: "1", number-align: center)
#outline(title: [Table of Contents], depth: 3)
#pagebreak()

#include "../guide/00-install.typ"
#include "../guide/01-wave-0-rookie.typ"
#include "../guide/02-wave-1-national.typ"
#include "../guide/03-wave-2-international.typ"
#include "../guide/04-wave-3-championship.typ"
#include "../guide/appendix-mod-reference.typ"
#include "../guide/appendix-glossary.typ"
