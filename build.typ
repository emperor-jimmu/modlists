#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 2cm, right: 2cm),
  numbering: "1",
  number-align: center
)

#set text(font: "Segoe UI", size: 11pt)

#set heading(numbering: "1.1")

#set par(justify: true, leading: 0.65em)

// Title page
#align(center, text(size: 28pt, weight: "bold")[ETS2 Modlist Guide])
#align(center, text(size: 14pt)[Game Version 1.60])
#v(1cm)
#align(center, text(size: 10pt)[Compiled from community mods, curated for stability and performance])
#pagebreak()

// Import table of contents
#outline(title: "Table of Contents", indent: auto)
#pagebreak()

// Import each source section
#include "sources/00-introduction.typ"
#include "sources/01-getting-started.typ"
#include "sources/02-mod-manager.typ"
#include "sources/03-configuration.typ"
#include "sources/04-maps.typ"
#include "sources/05-graphics.typ"
#include "sources/06-weather.typ"
#include "sources/07-trucks.typ"
#include "sources/08-audio.typ"
#include "sources/09-gameplay.typ"
#include "sources/10-trailers.typ"
#include "sources/11-load-order.typ"
#include "sources/12-installation.typ"
#include "sources/13-performance.typ"
#include "sources/14-troubleshooting.typ"
#include "sources/15-missing-mods.typ"
