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
#set page(numbering: "1", number-align: center)
#outline(title: [Table of Contents], depth: 3)
#pagebreak()

#cmarker.render(read("../guide/00-install.md"))
#pagebreak()

#wave-banner(0, "Rookie License", "From rental karts to the world championship")
#story-intro[*"You've never turned a wheel in anger. The first time you sit in a kart at a dusty karting track, the engine rattles your bones and the steering wheel feels alive in your hands. This is where the dream begins — one corner, one lap, one clean race at a time."*]
#cmarker.render(read("../guide/01-wave-0-rookie.md"))
#pagebreak()

#wave-banner(1, "National License", "Faster machinery. Real competition.")
#story-intro[*"The local kart track is in the rearview mirror. Now there's a proper garage, a crew chief who expects results, and faster machinery than you've ever touched. The national series aren't here to teach you — they're here to see if you belong."*]
#cmarker.render(read("../guide/02-wave-1-national.md"))
#pagebreak()

#wave-banner(2, "International License", "The global stage. No room for error.")
#story-intro[*"The passport stamp says FIA International. Your engineer hands you the F3 steering wheel — 200 horsepower, no ABS, and a carbon tub that weighs less than your karting seat. Outside, the paddock speaks six languages and the GT3 engines are already rattling the garage door. Welcome to the global stage. They don't care where you came from, only whether you're quick."*]
#cmarker.render(read("../guide/03-wave-2-international.md"))
#pagebreak()

#wave-banner(3, "World Championship", "The pinnacle. Everything led here.")
#story-intro[*"Green light in the pit box. 340 km/h at Le Mans. Twelve years from rental kart to prototype. The engine fires in your chest before it fires in the car. Last hour of the greatest race on Earth. Everything led here."*]
#cmarker.render(read("../guide/04-wave-3-championship.md"))
#pagebreak()
#cmarker.render(read("../guide/appendix-mod-reference.md"))
#pagebreak()
#cmarker.render(read("../guide/appendix-glossary.md"))
