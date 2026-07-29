// _index.typ — Entry point for typst compile
// Assembly order for "No Crown Without Blood"
#import "../typst/template.typ": *

// Cover page
#cover-page()

// Page setup — MUST be top-level. set rules in functions do not persist in Typst.
#set page(
  paper: "a4",
  fill: parchment,
  margin: body-margin,
  numbering: "1",
  header: align(
    right,
    text(font: heading-font, size: 10pt, fill: header-color)[*No Crown Without Blood*],
  ),
  footer: context align(
    center,
    text(font: heading-font, size: 10pt, fill: header-color)[— #counter(page).display() —],
  ),
)

// Body setup (fonts, colors, show rules, TOC)
#setup-document()

// --- Shared Content ---
#include "shared/installation.typ"
#include "shared/troubleshooting.typ"

// --- Wave 0: The Exile ---
#wave-header(0, "The Exile", wave-0-accent)
#include "waves/wave-0/00-introduction.typ"
#include "waves/wave-0/01-how-to-play.typ"
#include "waves/wave-0/02-getting-started.typ"
#include "waves/wave-0/03-mods.typ"
#include "waves/wave-0/load-order.typ"

// --- Wave 1: The Alliance ---
#wave-header(1, "The Alliance", wave-1-accent)
#include "waves/wave-1/00-introduction.typ"
#include "waves/wave-1/01-strategy.typ"
#include "waves/wave-1/02-mechanics.typ"
#include "waves/wave-1/03-mods.typ"
#include "waves/wave-1/load-order.typ"

// --- Wave 1.5: The Forging ---
#wave-header("1.5", "The Forging", wave-1d5-accent)
#include "waves/wave-1.5/00-introduction.typ"
#include "waves/wave-1.5/01-strategy.typ"
#include "waves/wave-1.5/02-mechanics.typ"
#include "waves/wave-1.5/03-mods.typ"
#include "waves/wave-1.5/load-order.typ"

// --- Wave 2: The Reckoning ---
#wave-header(2, "The Reckoning", wave-2-accent)
#include "waves/wave-2/00-introduction.typ"
#include "waves/wave-2/01-strategy.typ"
#include "waves/wave-2/02-mechanics.typ"
#include "waves/wave-2/03-mods.typ"
#include "waves/wave-2/load-order.typ"
