#set page(
  paper: "a4",
  margin: (top: 2cm, bottom: 2cm, left: 2.5cm, right: 2.5cm),
  numbering: "1",
)

#import "@preview/cmarker:0.1.10"
#import "style.typ": apply
#show: apply

#let version = read("../VERSION").trim()

#align(center + horizon, [
  #block(height: 4cm)
  #text(size: 36pt, weight: "bold", fill: navy)[Getting Started]
  #block(height: 1.2cm)
  #text(size: 18pt, fill: gray)[Minecraft 1.21.1 — NeoForge]
  #block(height: 0.8cm)
  #line(length: 50%)
  #block(height: 0.8cm)
  #text(size: 14pt, fill: luma(120))[Setup guide and tutorials]
  #block(height: 2cm)
  #text(size: 11pt, fill: luma(160))[Version #version]
])

#pagebreak()

#cmarker.render(read("../GETTING-STARTED.md"), h1-level: 0, set-document-title: false)
