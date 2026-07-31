// Aetherbound Shared Library — Typst 0.15+
// Import from content files: #import "/lib.typ": tip, concept, warning, mod-entry

// ── Fonts ───────────────────────────────────────────
#let heading-font = ("Space Grotesk", "Segoe UI")
#let body-font = ("Inter", "Segoe UI")

// ── Palette ─────────────────────────────────────────
#let clr-bg-dark = rgb("#1a103c")
#let clr-cyan = rgb("#00e5ff")
#let clr-amber = rgb("#ffb74d")
#let clr-red = rgb("#ff5252")
#let clr-bg-body = rgb("#fafaf8")
#let clr-text = rgb("#1a1a2e")
#let clr-code = rgb("#7c4dff")
#let clr-info = rgb("#5c6bc0")
#let clr-footer-light = luma(150)
#let clr-footer-dark = luma(90)

// ── Dark page state ─────────────────────────────────
#let is-dark-page = state("is-dark-page", false)

// ── Mod Entry Panel ─────────────────────────────────
#let mod-entry(
  name: "",
  url: "",
  category: "",
  version: "",
  dependencies: (),
  system-impact: none,
  description: [],
  install-notes: [],
  wave: 0,
) = {
  rect(
    fill: rgb("#f0f0f8"),
    stroke: 1pt + clr-cyan,
    radius: 4pt,
    inset: 8pt,
    [
      // Title row with inline badges
      #text(font: heading-font, size: 11pt, weight: "bold")[#link(url)[#name]]
      #h(6pt)

      // Category badge (inline box, not rect)
      #box(
        fill: clr-cyan,
        radius: 2pt,
        inset: (x: 4pt, y: 1pt),
        text(font: heading-font, size: 8pt, fill: white)[#category]
      )

      // System impact badge (only if impact != none)
      #if system-impact != none {
        h(4pt)
        box(
          fill: clr-amber,
          radius: 2pt,
          inset: (x: 4pt, y: 1pt),
          text(font: heading-font, size: 8pt, fill: white)[IMPACT: #system-impact]
        )
      }

      // Metadata row
      #v(4pt)
      #text(size: 9pt, fill: luma(100), font: body-font)[v#version]
      #if dependencies.len() > 0 {
        text(size: 9pt, fill: luma(100), font: body-font)[  ·  Depends on: #dependencies.join(", ")]
      }

      // Description
      #v(4pt)
      #description

      // Install notes
      #if install-notes != [] {
        v(4pt)
        text(size: 9pt, style: "italic", fill: luma(120), font: body-font)[
          *Install:* #install-notes
        ]
      }
    ]
  )
  v(8pt)
}

// ── Callout Panels (text labels, no emoji) ──────────
#let tip(body) = {
  rect(
    fill: rgb("#fff8e1"),
    stroke: (left: 4pt + clr-amber),
    inset: 8pt,
    radius: 2pt,
    [
      #text(font: heading-font, size: 9pt, fill: clr-amber, weight: "bold")[TIP]
      #h(4pt)
      #text(size: 11pt, font: body-font)[#body]
    ]
  )
  v(6pt)
}

#let concept(body) = {
  rect(
    fill: rgb("#e8eaf6"),
    stroke: (left: 4pt + clr-info),
    inset: 8pt,
    radius: 2pt,
    [
      #text(font: heading-font, size: 9pt, fill: clr-info, weight: "bold")[CONCEPT]
      #h(4pt)
      #text(size: 11pt, font: body-font)[#body]
    ]
  )
  v(6pt)
}

#let warning(body) = {
  rect(
    fill: rgb("#ffebee"),
    stroke: (left: 4pt + clr-red),
    inset: 8pt,
    radius: 2pt,
    [
      #text(font: heading-font, size: 9pt, fill: clr-red, weight: "bold")[WARNING]
      #h(4pt)
      #text(size: 11pt, font: body-font)[#body]
    ]
  )
  v(6pt)
}

// ── Wave Divider Helper ─────────────────────────────
#let wave-divider(wave-number, wave-name, blurb) = {
  pagebreak()
  set page(fill: clr-bg-dark)
  [
    #is-dark-page.update(true)
    #align(center + horizon)[
      v(4cm)
      text(font: heading-font, size: 36pt, fill: white, weight: "bold")[Wave #wave-number]
      v(0.5em)
      text(font: body-font, size: 14pt, fill: clr-cyan)[#wave-name]
      v(2em)
      text(font: body-font, size: 11pt, fill: luma(170))[#blurb]
    ]
  ]
  set page(fill: clr-bg-body)
  is-dark-page.update(false)
}
