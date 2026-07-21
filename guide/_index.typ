// _index.typ — Entry point for typst compile
// Assembly order for "No Crown Without Blood"
#import "typst/template.typ": *

// Cover page
#cover-page()

// Body setup (fonts, colors, page layout, TOC)
#setup-document()

// --- Shared Content ---
#include "guide/shared/installation.typ"
#include "guide/shared/troubleshooting.typ"

// --- Wave 0: The Exile ---
#wave-header(0, "The Exile", wave-0-accent)
#include "guide/waves/wave-0/00-introduction.typ"
#include "guide/waves/wave-0/01-how-to-play.typ"
#include "guide/waves/wave-0/02-getting-started.typ"
#include "guide/waves/wave-0/03-mods.typ"
#include "guide/waves/wave-0/load-order.typ"

// --- Wave 1: The Alliance ---
#wave-header(1, "The Alliance", wave-1-accent)
#include "guide/waves/wave-1/00-introduction.typ"
#include "guide/waves/wave-1/01-strategy.typ"
#include "guide/waves/wave-1/02-mechanics.typ"
#include "guide/waves/wave-1/03-mods.typ"
#include "guide/waves/wave-1/load-order.typ"

// --- Wave 2: The Reckoning ---
#wave-header(2, "The Reckoning", wave-2-accent)
#include "guide/waves/wave-2/00-introduction.typ"
#include "guide/waves/wave-2/01-strategy.typ"
#include "guide/waves/wave-2/02-mechanics.typ"
#include "guide/waves/wave-2/03-mods.typ"
#include "guide/waves/wave-2/load-order.typ"
