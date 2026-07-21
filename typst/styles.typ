// styles.typ — Design system for "No Crown Without Blood"
// Colors, fonts, and helper functions

// --- Font families (with fallbacks) ---
#let body-font = ("Crimson Pro", "Libertinus Serif")
#let heading-font = ("Libre Baskerville", "Libertinus Serif")
#let mono-font = ("Fira Code", "Libertinus Mono")
#let display-font = ("Cinzel", "Libre Baskerville")

// --- Colors ---
// Cover
#let charcoal = rgb("#1A1A2E")
#let cover-gold = rgb("#D4AF37")
#let cover-cream = rgb("#E8DCC8")

// Body
#let parchment = rgb("#F5F0E6")
#let body-text-color = rgb("#3B2F2F")
#let header-color = rgb("#8B6914")
#let link-color = rgb("#1A4B8C")
#let emphasis-color = rgb("#7B1818")
#let code-bg = rgb("#EDE5D8")

// Wave accent colors
#let wave-0-accent = rgb("#1A4B8C")
#let wave-1-accent = rgb("#2D5A27")
#let wave-2-accent = rgb("#8B1A1A")

// Callout box colors
#let tip-bg = rgb("#E6F0E6")
#let warning-bg = rgb("#F5EDE0")
#let danger-bg = rgb("#F2DEDE")

// --- Page layout ---
#let body-margin = (left: 2.5cm, right: 2cm, top: 2cm, bottom: 2cm)

// --- Heading show rule ---
#let apply-heading-style(it) = {
  if it.level == 1 {
    block(
      above: 1.6em,
      below: 0.8em,
      stroke: (bottom: 1.5pt + header-color),
      inset: (bottom: 4pt),
    )[
      #text(font: heading-font, size: 22pt, fill: header-color, weight: "bold")[#it.body]
    ]
  } else if it.level == 2 {
    block(
      above: 1.3em,
      below: 0.6em,
    )[
      #text(font: heading-font, size: 16pt, fill: header-color, weight: "bold")[#it.body]
    ]
  } else if it.level == 3 {
    block(
      above: 1em,
      below: 0.4em,
    )[
      #text(font: heading-font, size: 13pt, fill: header-color, weight: "bold")[#it.body]
    ]
  } else {
    block(
      above: 0.8em,
      below: 0.3em,
    )[
      #text(font: heading-font, size: 11.5pt, fill: header-color, weight: "bold")[#it.body]
    ]
  }
}

// --- Wave section header ---
#let wave-header(wave-num, title, accent) = {
  pagebreak()
  block(
    fill: accent.transparentize(88%),
    stroke: (bottom: 3pt + accent),
    inset: (left: 10pt, right: 10pt, top: 8pt, bottom: 8pt),
  )[
    #text(font: display-font, size: 30pt, fill: accent, weight: "bold")[Wave #wave-num]
    #v(0.3em)
    #text(font: heading-font, size: 22pt, fill: accent)[#title]
  ]
  v(1em)
}

// --- Mod entry (real mod) ---
#let mod-entry(name, url, category, dependencies, impact, config, load-order, compat) = {
  block(
    fill: code-bg,
    stroke: 1pt + header-color,
    radius: 6pt,
    inset: 12pt,
    breakable: true,
    width: 100%,
  )[
    === #text(fill: header-color, weight: "bold")[#name]
    #link(url)[Nexus Mods page]

    #v(0.3em)
    #table(
      columns: (auto, 1fr),
      stroke: none,
      [*Category*], [#category],
      [*Dependencies*], [#dependencies],
      [*Impact*], [#impact],
      [*Configuration*], [#config],
      [*Load order*], [#load-order],
      [*Compatibility*], [#compat],
    )
  ]
  v(0.6em)
}

// --- Placeholder mod block ---
#let mod-placeholder(category, examples, requirements) = {
  block(
    fill: code-bg,
    stroke: (dash: "dashed") + 1.5pt + header-color.transparentize(50%),
    radius: 6pt,
    inset: 10pt,
    breakable: true,
    width: 100%,
  )[
    *=== #text(fill: header-color)[#category Mod Placeholder]*

    A #category mod will go here.

    *Examples of what this slot should contain:*
    #for e in examples [
      - #e
    ]

    *Requirements:* #requirements
  ]
  v(0.4em)
}

// --- Callout boxes ---
#let tip-box(body) = block(
  fill: tip-bg,
  stroke: (left: 4pt + rgb("#2E6B3E")),
  inset: 10pt,
  radius: 4pt,
  breakable: true,
)[
  *#text(fill: rgb("#2D5A27"))[Tip:]* #body
]

#let warning-box(body) = block(
  fill: warning-bg,
  stroke: (left: 4pt + rgb("#C9A041")),
  inset: 10pt,
  radius: 4pt,
  breakable: true,
)[
  *#text(fill: rgb("#8B6914"))[Warning:]* #body
]

#let danger-box(body) = block(
  fill: danger-bg,
  stroke: (left: 4pt + rgb("#8B1A1A")),
  inset: 10pt,
  radius: 4pt,
  breakable: true,
)[
  *#text(fill: rgb("#8B1A1A"))[Danger:]* #body
]
