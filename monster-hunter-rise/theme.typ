// ============================================================================
// Primal Quarry — Theme Module
// Palette, fonts, and reusable building blocks for the guide.
// Import with:  #import "../theme.typ": *
// (or "theme.typ" from template.typ)
// ============================================================================

// ---- Palette: Kamura ember, Elgado teal, quarry gold on warm paper ---------
#let PAPER     = rgb("#FAF4E6")   // page background (warm cream)
#let INK       = rgb("#2B2119")   // body text (warm near-black)
#let MUTED     = rgb("#7A6C5C")   // secondary text
#let LINE      = rgb("#E2D5BF")   // hairline rules
#let CARD      = rgb("#FFF8EA")   // card background
#let COVERBG   = rgb("#1B130E")   // cover charcoal
#let FOG       = rgb("#A99A86")   // muted text on dark
#let CODEBG    = rgb("#241A13")   // code block background
#let CODETXT   = rgb("#F2E8D4")   // code text

#let EMBER     = rgb("#C6401E")   // Kamura vermilion
#let EMBER_DK  = rgb("#8F2D12")
#let GOLD      = rgb("#C98A1B")   // quarry gold
#let GOLD_DK   = rgb("#8A5D0C")
#let TEAL      = rgb("#14707B")   // Elgado sea-teal
#let TEAL_DK   = rgb("#0C4A52")
#let SNOW      = rgb("#F6EFE2")   // text on dark fills

// ---- Fonts ------------------------------------------------------------------
#let DISPLAY = "Bahnschrift"
#let BODY    = "Georgia"
#let CODE    = "Consolas"

// ---- Callouts -----------------------------------------------------------------
#let callout(title, body, fill: CARD, accent: EMBER, accent-dk: EMBER_DK) = block(
  fill: fill, inset: (x: 11pt, y: 8pt), radius: 4pt, width: 100%,
  stroke: (left: 3pt + accent, bottom: 0.5pt + LINE),
  above: 0.7em, below: 0.7em,
)[
  #set text(size: 11pt)
  #text(weight: "bold", fill: accent-dk)[#title]
  #v(2pt)
  #body
]

#let tip(body)   = callout("Tip", body, accent: GOLD, accent-dk: GOLD_DK)
#let note(body)  = callout("Note", body, accent: TEAL, accent-dk: TEAL_DK)
#let warn(body)  = callout("Warning", body)

// ---- Story block ----------------------------------------------------------------
#let story(title, body) = block(
  fill: rgb("#F1E6CE"), inset: (x: 13pt, y: 11pt), radius: 4pt, width: 100%,
  stroke: (left: 4pt + EMBER), above: 0.8em, below: 1em,
)[
  #set text(style: "italic")
  #text(font: DISPLAY, weight: "bold", fill: EMBER_DK, style: "normal")[#title]
  #v(4pt)
  #body
]

// ---- Pending banner ---------------------------------------------------------------
#let pending(what) = block(
  fill: rgb("#FBE3D7"), inset: 10pt, radius: 4pt, width: 100%,
  stroke: (left: 3pt + EMBER), above: 0.6em, below: 0.6em,
)[
  #set text(size: 11pt)
  #text(weight: "bold", fill: EMBER_DK)[#what]
  #v(2pt)
  Pending owner input. These entries are added only at the owner's direction — the owner may supply them, or direct the project to research them (as it did for Wave 0).
]

// ---- Mod card ----------------------------------------------------------------------
#let modcard(
  name,
  url: none,
  version: none,
  deps: none,
  impact: none,
  notes: none,
) = block(
  fill: CARD, inset: (x: 12pt, y: 9pt), radius: 4pt, width: 100%,
  stroke: (left: 3pt + EMBER, bottom: 0.6pt + LINE),
  above: 0.6em, below: 0.6em,
)[
  #set text(size: 11pt)
  #if url != none [
    #link(url)[#text(weight: "bold", size: 11.5pt, fill: EMBER_DK)[#name]]
  ] else [
    #text(weight: "bold", size: 11.5pt, fill: EMBER_DK)[#name]
  ]
  #if version != none [#v(3pt) *Version:* #version]
  #if deps != none [#v(3pt) *Dependencies:* #deps]
  #if impact != none [#v(3pt) *System / mechanic impact:* #impact]
  #if notes != none [#v(3pt) *Notes:* #notes]
]

// ---- Wave part wrapper: scoped accent colors -----------------------------------------
#let wavepart(accent, accent-dk, body) = block[
  #show heading.where(level: 1): it => block(
    width: 100%, fill: accent-dk, radius: 5pt,
    inset: (x: 14pt, y: 10pt), above: 1.8em, below: 1em,
  )[#set text(fill: SNOW, font: DISPLAY, size: 20pt, weight: "bold"); #it]
  #show heading.where(level: 2): it => block(
    width: 100%, stroke: (left: 3.5pt + accent), inset: (left: 9pt),
    above: 1.3em, below: 0.4em,
  )[#set text(fill: accent-dk, font: DISPLAY, size: 14pt, weight: "bold"); #it]
  #show heading.where(level: 3): it => [
    #set text(fill: accent-dk, font: DISPLAY, size: 11.5pt, weight: "bold")
    #it
  ]
  #body
]
