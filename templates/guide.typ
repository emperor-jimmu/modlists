#set page(
  paper: "a4",
  margin: (top: 2cm, bottom: 2cm, left: 2.5cm, right: 2.5cm),
  numbering: "1",
)

#import "@preview/cmarker:0.1.10"
#import "style.typ": apply
#show: apply

#let version = read("../VERSION").trim()
#let logo-path = "../assets/driftwood-logo.png"

// ---- Cover Page ----
#set page(numbering: none)
#align(center + horizon, [
  #block(height: 1.5cm)
  #image(logo-path, width: 60%)
  #block(height: 1cm)
  #text(size: 36pt, weight: "bold", fill: rgb("#604020"))[Driftwood]
  #block(height: 0.5cm)
  #text(size: 18pt, fill: rgb("#5B7B8A"))[Setup & Mod Guide]
  #block(height: 0.8cm)
  #line(length: 40%, stroke: 0.5pt + luma(180))
  #block(height: 0.4cm)
  #text(size: 13pt, fill: luma(120))[Minecraft 1.21.1 -- NeoForge]
  #block(height: 1.5cm)
  #text(size: 11pt, fill: luma(160))[Version #version]
])

// ---- Table of Contents ----
#set page(numbering: "i")
#pagebreak()
#set outline.entry(fill: line(length: 100%, stroke: 0.5pt + luma(200)))
#outline(indent: 1.2em, depth: 2)

// ---- Body ----
#set page(numbering: "1", number-align: center)
#pagebreak()
#cmarker.render(read("../GUIDE.md"), h1-level: 0, set-document-title: false)
