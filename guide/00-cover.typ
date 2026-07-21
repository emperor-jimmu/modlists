// 00-cover.typ -- Cover page

#import "lib.typ": clr-n7-red, clr-blue, clr-muted

#set align(center + horizon)
#v(3cm)

#image("assets/logo.png", width: 40%)
#v(1.2cm)

#text(
  font: ("Orbitron", "Segoe UI", "Arial"),
  size: 36pt,
  fill: clr-n7-red,
  weight: "bold",
)[The Final Cycle]

#v(0.6cm)

#text(
  size: 18pt,
  fill: clr-blue,
)[Mass Effect Legendary Edition]
#text(
  size: 14pt,
  fill: clr-muted,
)[Modlist \& Game Guide]

#v(3cm)

#text(
  size: 10pt,
  fill: clr-muted,
)[Revision 1 -- July 2026]

#pagebreak()
