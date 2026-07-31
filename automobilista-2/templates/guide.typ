#import "@preview/cmarker:0.1.10"
#import "style.typ": *

#let version = read("../VERSION").trim()

#cover-page(
  "Torque Ascension",
  "An Automobilista 2 Modlist & Career Guide",
  "V" + version + " — AMS2 V1.6+",
  "../assets/logo.jpg",
)

#pagebreak()
#outline(title: [Table of Contents], depth: 3)
#pagebreak()

#cmarker.render(read("../guide/00-install.md"))
#pagebreak()
#cmarker.render(read("../guide/01-wave-0-rookie.md"))
#pagebreak()
#cmarker.render(read("../guide/02-wave-1-national.md"))
#pagebreak()
#cmarker.render(read("../guide/appendix-glossary.md"))
