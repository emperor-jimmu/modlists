// Minimal test with BIG RED FOOTER
#set page(
  paper: "a4",
  margin: (left: 20mm, right: 20mm, top: 20mm, bottom: 20mm),
  fill: rgb("#1A1A1A"),
  header: none,
  footer: context [
    #set text(fill: rgb("#FF0000"), size: 18pt)
    #align(center)[PAGE #counter(page).display()]
  ],
)
#set text(fill: rgb("#F5F0E8"), size: 11pt)
= Test Heading
This is page 1.
#pagebreak()
= Page 2
This is page 2.
