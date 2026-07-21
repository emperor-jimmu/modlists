// lib.typ — The Long Ascent styling helpers
// Import into main.typ with: #import "lib.typ": *
//
// Fonts are resolved via Typst's --font-path flag pointing to assets/fonts/.
// This file uses font family names (Orbitron, Inter, JetBrains Mono) which
// Typst resolves from the --font-path directory at compile time.
// See build scripts for the --font-path argument.

// ─── Color Palette ───────────────────────────────────────────────

#let space-dark   = rgb("#0B1D3A")
#let space-mid    = rgb("#162D50")
#let space-light  = rgb("#1E3A5F")
#let ksp-orange   = rgb("#F4982B")
#let ksp-teal     = rgb("#1BA1E2")
#let kerbin-green = rgb("#8BC34A")
#let mun-gray     = rgb("#B0B8C4")
#let white        = rgb("#F5F7FA")
#let warning-red  = rgb("#EF5350")
#let text-dark    = rgb("#1A1A2E")

// ─── Fonts (resolved by Typst from --font-path directory) ───────

#let heading-font = "Orbitron"
#let body-font    = "Inter"
#let code-font    = "JetBrains Mono"

// ─── Page Setup ──────────────────────────────────────────────────

#let page-setup(it) = {
  set page(
    paper: "a4",
    margin: (top: 2.5cm, bottom: 2.5cm, left: 2.5cm, right: 2.5cm),
    numbering: "1",
    header: [
      #set text(font: heading-font, size: 7pt, fill: mun-gray)
      #context page.numbering
    ],
  )
  set text(font: body-font, size: 10pt, fill: text-dark)
  set par(leading: 0.6em, justify: true)

  // Heading styling — show rules so outline() detects them
  show heading: set text(font: heading-font)
  show heading.where(level: 1): it => {
    v(1em)
    set text(weight: "bold", size: 18pt, fill: ksp-orange)
    it.body
    v(0.3em)
    line(length: 100%, stroke: 1pt + ksp-orange)
    v(0.8em)
  }
  show heading.where(level: 2): it => {
    v(0.8em)
    set text(weight: "semibold", size: 14pt, fill: space-dark)
    it.body
    v(0.5em)
  }
  show heading.where(level: 3): it => {
    v(0.6em)
    set text(weight: "regular", size: 12pt, fill: space-light)
    it.body
    v(0.3em)
  }

  it
}

// ─── Headings ────────────────────────────────────────────────────

#let chapter-heading(title) = {
  heading(level: 1, title)
}

#let section-heading(title) = {
  heading(level: 2, title)
}

#let sub-heading(title) = {
  heading(level: 3, title)
}

// ─── Wave Title Page ─────────────────────────────────────────────

#let wave-title-page(number, name, subtitle) = {
  pagebreak()
  set align(center)
  rect(
    width: 100%,
    height: 100%,
    fill: space-dark,
    radius: 0pt,
  )[
    #v(4cm)
    #set text(font: heading-font, weight: "bold", size: 14pt, fill: ksp-teal)
    [WAVE #number]
    #v(0.5cm)
    #set text(font: heading-font, weight: "extrabold", size: 28pt, fill: white)
    [#name]
    #v(0.3cm)
    #line(length: 4cm, stroke: 2pt + ksp-orange)
    #v(0.5cm)
    #set text(font: body-font, size: 12pt, fill: mun-gray)
    [#subtitle]
  ]
  pagebreak()
}

// ─── Callout Boxes ───────────────────────────────────────────────

#let callout(accent, body) = {
  block(
    inset: 10pt,
    radius: 4pt,
    fill: space-mid,
    stroke: (left: 3pt + accent),
  )[
    #set text(font: body-font, size: 9.5pt, fill: white)
    #body
  ]
  v(0.5em)
}

#let info(body) = callout(ksp-teal, body)
#let warning(body) = callout(ksp-orange, body)
#let tip(body) = callout(kerbin-green, body)
#let danger(body) = callout(warning-red, body)

// ─── Mod Entry ───────────────────────────────────────────────────

#let mod-entry(
  name: none,
  ckan_id: none,
  url: none,
  description: none,
  dependencies: (),
  impact_types: (),
  impact_description: none,
  conflicts: none,
  version_pin: none,
) = {
  v(0.8em)
  grid(
    columns: (1fr, 2fr),
    column-gutter: 1.5em,
    row-gutter: 0.3em,

    // Left column — metadata
    [
      #set text(font: heading-font, weight: "semibold", size: 11pt, fill: space-dark)
      #if url != none {
        link(url)[#name]
      } else {
        name
      }
      #v(0.2em)
      #set text(font: code-font, size: 8pt, fill: mun-gray)
      [`#ckan_id`]

      #v(0.5em)

      #if dependencies.len() > 0 {
        set text(font: body-font, size: 8pt, fill: mun-gray)
        [*Dependencies:* #dependencies.join(", ")]
        v(0.2em)
      }

      #if impact_types.len() > 0 {
        set text(font: body-font, size: 8pt, fill: mun-gray)
        [*Impact:* #impact_types.join(", ")]
        v(0.2em)
      }

      #if version_pin != none {
        set text(font: body-font, size: 8pt, fill: mun-gray)
        [*Version:* #version_pin]
        v(0.2em)
      }
    ],

    // Right column — description + impact + conflicts
    [
      #set text(font: body-font, size: 10pt)
      #description

      #if impact_description != none {
        v(0.4em)
        set text(font: body-font, size: 9pt, fill: text-dark)
        [#impact_description]
      }

      #if conflicts != none {
        v(0.4em)
        text(font: body-font, size: 8.5pt, fill: warning-red)[
          ⚠ Conflicts: #conflicts
        ]
      }
    ],
  )
  v(0.3em)
  line(length: 100%, stroke: 0.5pt + rgb("#d0d0d0"))
  v(0.5em)
}

// ─── Wave Boundary Criteria Table ────────────────────────────────

#let wave-criteria-table() = {
  set text(font: body-font, size: 8.5pt)
  table(
    columns: (auto, auto, auto, auto),
    inset: 6pt,
    align: (left, center, center, center),
    stroke: 0.5pt + mun-gray,
    table.header(
      [*Criterion*], [*Wave 0*], [*Wave 1*], [*Wave 2*],
    ),
    [Gameplay changed?], [No], [Adds content], [Adds complexity],
    [Learning curve], [None], [Parts/options], [Entirely new systems],
    [New resource chains?], [No], [Trivial or none], [Yes (LS, colony, fuel)],
    [Penalizes mistakes?], [No], [No], [Yes (dead kerbals, RUD)],
    [Save-breaking?], [No], [Unlikely], [Likely],
  )
  v(0.5em)
}

// ─── Code Block ──────────────────────────────────────────────────

#let code-block(body-text) = {
  block(
    inset: 10pt,
    radius: 4pt,
    fill: space-mid,
  )[
    #set text(font: code-font, size: 9pt, fill: ksp-teal)
    #body-text
  ]
  v(0.5em)
}

// ─── Divider ─────────────────────────────────────────────────────

#let section-divider() = {
  v(1em)
  line(length: 100%, stroke: 1pt + ksp-orange)
  v(1em)
}
