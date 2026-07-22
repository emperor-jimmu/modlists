// main.typ — The Long Ascent master template
// Compile with: typst compile --root . --font-path assets/fonts template/main.typ output/the-long-ascent.pdf
//
// Fonts are resolved from assets/fonts/ via the --font-path CLI flag.
// All paths are relative to project root (--root .).

#import "lib.typ": *

// ─── Page Setup ──────────────────────────────────────────────────
// Apply the default page style for all content pages.
// The cover page overrides this explicitly — see the cover() function below.

#show: page-setup

// ─── Cover Page ──────────────────────────────────────────────────
// Render cover as a standalone page with its own full-bleed dark background.
// Using a state flag is the safest way to override page settings
// for a single page in Typst.

#let is-cover = state("is-cover", true)

#context {
  if is-cover.get() {
    set page(
      fill: space-dark,
      margin: (top: 0cm, bottom: 0cm, left: 0cm, right: 0cm),
    )
    set align(center)

    v(3cm)
    image("../assets/logo.png", width: 12cm)
    v(1.5cm)

    set text(font: heading-font, weight: "extrabold", size: 32pt, fill: white)
    [The Long Ascent]

    v(0.3cm)
    line(length: 6cm, stroke: 2pt + ksp-orange)
    v(0.5cm)

    set text(font: body-font, size: 14pt, fill: mun-gray)
    [A Kerbal Space Program Modlist \& Guide]

    v(2cm)

    set text(font: heading-font, size: 10pt, fill: ksp-teal)
    [Version 1.0 — July 2026]

    v(1cm)

    set text(font: body-font, size: 9pt, fill: space-light)
    [For Kerbal Space Program 1.12.5]
    v(0.3em)
    [Compatible with Breaking Ground \& Making History]

    is-cover.update(false)
    pagebreak()
  }
}

// ─── Table of Contents ───────────────────────────────────────────

#outline(
  indent: 1em,
)

// ─── Installation ────────────────────────────────────────────────

#pagebreak()
#include "../guide/installation.typ"

// ─── Wave 0 ──────────────────────────────────────────────────────

#wave-title-page(
  0,
  [First Steps],
  [UI & Quality of Life — Learning to Fly],
)
#chapter-heading([Wave 0 — Mod List])
#include "../guide/wave-0-first-steps.typ"

// ─── Wave 0.5: Building & Planning Tools ─────────────────────────

#wave-title-page(
  0.5,
  [Building Blocks],
  [Advanced Tools, Planning & Editor Enhancements],
)
#chapter-heading([Wave 0.5 — Mod List])
#include "../guide/wave-05-tools.typ"

// ─── Wave 1 ──────────────────────────────────────────────────────

#wave-title-page(
  1,
  [Going Further],
  [Graphics, Parts & Expanded Horizons],
)
#chapter-heading([Wave 1 — Mod List])
#include "../guide/wave-1-going-further.typ"

// ─── Wave 2 ──────────────────────────────────────────────────────

#wave-title-page(
  2,
  [The Long Ascent],
  [Colonization, Life Support & Interstellar Travel],
)
#chapter-heading([Wave 2 — Mod List])
#include "../guide/wave-2-the-long-ascent.typ"

// ─── Appendix ────────────────────────────────────────────────────

#pagebreak()
#chapter-heading([Appendix])
#include "../guide/appendix.typ"
