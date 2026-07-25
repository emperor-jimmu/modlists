#set document(
  title: "Void Enhanced",
  author: "Void Enhanced Modlist",
)

#set text(
  font: "Inter",
  size: 10pt,
  fill: white,
)

#set page(
  paper: "a4",
  fill: rgb("#0d0d12"),
  margin: (top: 2cm, bottom: 2cm, left: 2.5cm, right: 2.5cm),
)

// Heading styles
#show heading.where(level: 1): set text(
  fill: rgb("#00d4ff"),
  size: 18pt,
  weight: "bold",
)

#show heading.where(level: 2): set text(
  fill: rgb("#ff6b35"),
  size: 14pt,
)

#show heading.where(level: 3): set text(
  fill: rgb("#c0c4cc"),
  size: 11pt,
)

// Link style
#show link: set text(fill: rgb("#ff6b35"))

// Inline code
#show raw.where(block: false): set text(fill: rgb("#7fdbff"))

// --- Cover Page (no page number) ---
#set page(numbering: none)
#align(center)[
  #v(5cm)
  #image("assets/logo.jpg", height: 6cm)
  #v(2.5cm)
  #text(size: 36pt, fill: rgb("#00d4ff"), weight: "bold")[VOID ENHANCED]
  #v(0.5cm)
  #text(size: 16pt)[A Starfield Modlist & Guide]
  #v(0.8cm)
  #text(size: 10pt, fill: rgb("#888888"))[v1.0 — Starfield 1.16.244]
]

#pagebreak()

// --- Main content starts with page numbering ---
#set page(numbering: "1", number-align: center + bottom)

// --- Introduction ---
= Introduction

Welcome to *Void Enhanced*, a curated modlist and guide for Starfield version 1.16.244.

This document is organized in two waves:

- *Wave 0 — The Drifter*: A vanilla+/QoL experience designed for new players. Complete how-to-play guide included.
- *Wave 1 — The Void Walker*: An advanced experience with content, mechanics, and graphics mods. Strategy guide included.

Each wave is a **separate MO2 profile** — start a new game for each wave. Mods do not carry over between waves.

// --- Table of Contents ---
#pagebreak()
#outline()

// --- Setup ---
#pagebreak()
#include "guide/setup/00-mo2-installation.typ"
#include "guide/setup/01-sfse-and-script-extenders.typ"
#include "guide/setup/02-ini-and-configuration.typ"
#include "guide/setup/03-load-order-and-archive-invalidation.typ"
#include "guide/setup/04-troubleshooting.typ"

// --- Wave 0 ---
#pagebreak()
= Wave 0: The Drifter
#h(1cm)
#include "guide/wave-0/00-background-story.typ"
#v(2cm)
#include "guide/wave-0/01-guide.typ"
#v(2cm)
#include "guide/wave-0/02-ui-mods.typ"
#v(2cm)
#include "guide/wave-0/03-graphics-mods.typ"
#v(2cm)
#include "guide/wave-0/04-mod-installation.typ"

// --- Wave 1 ---
#pagebreak()
= Wave 1: The Void Walker
#h(1cm)
#include "guide/wave-1/00-background-story.typ"
#v(2cm)
#include "guide/wave-1/01-guide.typ"
#v(2cm)
#include "guide/wave-1/02-content-mods.typ"
#v(2cm)
#include "guide/wave-1/03-mechanics-mods.typ"
#v(2cm)
#include "guide/wave-1/04-graphics-mods.typ"
#v(2cm)
#include "guide/wave-1/05-mod-installation.typ"
