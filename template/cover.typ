#import "styles.typ": *

#set page(
  margin: (top: 1cm, bottom: 1cm, left: 1cm, right: 1cm),
  background: [ #box(fill: parchment, width: 100%, height: 100%) ]
)

#align(center + middle, text(
  font: heading-font,
  weight: 700,
  size: 36pt,
  fill: crimson,
  [
    #image("../assets/logo.jpg", height: 45%)

    #v(1cm)

    Beneath a Crimson Banner

    #v(0.3cm)
    #line(length: 40%, stroke: 1pt + gold)
    #v(0.3cm)

    #text(size: 14pt, fill: ink, weight: 400)[
      A Total War: Three Kingdoms Modlist for v1.7.2
    ]

    #v(1.5cm)

    #text(size: 10pt, fill: muted)[
      Three Waves · Three Campaigns · One Destiny
    ]
  ]
))

#pagebreak()
