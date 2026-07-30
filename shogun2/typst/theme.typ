// Tenka Fubu — Theme Constants

// ── Clan Colors ──
// Wave 0: Shimazu
#let shimazu-white = rgb("#FFFFFF")
#let shimazu-vermillion = rgb("#B22222")
#let shimazu-gold = rgb("#D4A017")

// Wave 1: Oda (overall document identity)
#let oda-crimson = rgb("#BA0020")
#let oda-gold = rgb("#C8A020")
#let oda-black = rgb("#1A1A1A")

// Wave 2: Tokugawa
#let tokugawa-navy = rgb("#0B1D3A")
#let tokugawa-gold = rgb("#B8960C")
#let tokugawa-ivory = rgb("#F5F0E8")

// ── Global Colors ──
#let body-dark = rgb("#2D2D2D")
#let page-bg = rgb("#FCFAF5")
#let code-bg = rgb("#1D2433")
#let code-fg = rgb("#A2AABC")

// ── Fonts ──
#let body-font = "Crimson Pro"
#let heading-font = "Crimson Pro"
#let code-font = ("Consolas", "Courier New")

// ── Mod Panel ──
#let mod-panel(name, url, accent, body) = {
  let border-color = rgb("#D8D4CB")
  block(
    width: 100%,
    inset: (left: 14pt, right: 14pt, top: 11pt, bottom: 11pt),
    stroke: (left: 4pt + accent, top: 0.5pt + border-color, bottom: 0.5pt + border-color, right: 0.5pt + border-color),
    fill: rgb("#F9F7F3"),
    radius: 4pt,
    outset: (bottom: 10pt),
  )[
    #set text(size: 14pt, weight: "bold", fill: accent)
    #link(url)[#name]

    #v(6pt)
    #set text(size: 11pt, weight: "regular", fill: body-dark)
    #body

    #v(8pt)
    #align(right)[
      #set text(size: 8pt, fill: rgb("#AAAAAA"))
      #link(url)[Workshop page #sym.arrow.r]
    ]
  ]
}

// ── Page Dimensions ──
#let page-width = "a4"
#let page-margin = (x: 2.54cm, y: 2.54cm)
