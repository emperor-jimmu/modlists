// ============================================================================
// Primal Quarry — Master Template
// Monster Hunter Rise: Sunbreak (16.0.3.1) — modded game guide & modlist
//
// Build:  build.bat
//   =>    typst compile template.typ output/primal-quarry.pdf
// Target: Typst 0.15 / 0.15.1
//
// Theme (palette, fonts, helpers) lives in theme.typ; each guide file imports
// it directly, because Typst `include` does not share the parent scope.
// ============================================================================

#import "theme.typ": *

// ---- Page -------------------------------------------------------------------
#set page(
  paper: "a4",
  margin: (top: 21mm, bottom: 22mm, left: 19mm, right: 19mm),
  footer: context {
    set text(size: 8.5pt, fill: MUTED)
    [
      #text(style: "italic")[Primal Quarry · MHR: Sunbreak]
      #h(1fr)
      #counter(page).display("1 / 1", both: true)
    ]
  },
)

#set text(font: BODY, size: 11.5pt, fill: INK, lang: "en")
#set par(justify: true, leading: 0.64em, spacing: 0.55em)

// ---- Headings ----------------------------------------------------------------
#set heading(numbering: "1.1")

#show heading.where(level: 1): it => block(
  width: 100%, fill: EMBER_DK, radius: 5pt,
  inset: (x: 14pt, y: 10pt), above: 1.8em, below: 1em,
)[
  #set text(fill: SNOW, font: DISPLAY, size: 20pt, weight: "bold")
  #it
]

#show heading.where(level: 2): it => block(
  width: 100%, stroke: (left: 3.5pt + EMBER), inset: (left: 9pt),
  above: 1.3em, below: 0.4em,
)[
  #set text(fill: EMBER_DK, font: DISPLAY, size: 14pt, weight: "bold")
  #it
]

#show heading.where(level: 3): it => [
  #set text(fill: GOLD_DK, font: DISPLAY, size: 11.5pt, weight: "bold")
  #it
]

// ---- Links & code --------------------------------------------------------------
#show link: set text(fill: TEAL_DK)
#show raw.where(block: false): set text(font: CODE, size: 9pt, fill: EMBER_DK)
#show raw.where(block: true): it => block(
  fill: CODEBG, radius: 4pt, inset: 10pt, width: 100%,
  stroke: 0.5pt + rgb("#4A3A2C"), above: 0.6em, below: 0.6em,
)[#set text(font: CODE, size: 8.5pt, fill: CODETXT); #it]

// ============================================================================
// COVER
// ============================================================================
#page(
  paper: "a4", fill: COVERBG,
  margin: (x: 24mm, y: 18mm), footer: none,
)[
  #set text(font: DISPLAY)
  #v(1.2cm)
  #align(center)[
    #box(fill: white, radius: 10pt, inset: (x: 16pt, y: 12pt))[
      #image("assets/logo.jpg", width: 60%)
    ]
  ]
  #v(1.2cm)
  #align(center)[
    #text(size: 16pt, fill: SNOW)[Monster Hunter Rise — Sunbreak]
    #v(4pt)
    #text(size: 13pt, fill: FOG)[Modded Game Guide & Modlist]
  ]
  #v(1.6cm)
  #align(center)[
    #box(fill: EMBER, radius: 4pt, inset: (x: 11pt, y: 6pt))[
      #text(fill: SNOW, size: 10.5pt, weight: "bold")[Wave 0 · Rookie]
    ]
    #h(10pt)
    #box(fill: TEAL, radius: 4pt, inset: (x: 11pt, y: 6pt))[
      #text(fill: SNOW, size: 10.5pt, weight: "bold")[Wave 1 · Expedition]
    ]
    #h(10pt)
    #box(fill: GOLD, radius: 4pt, inset: (x: 11pt, y: 6pt))[
      #text(fill: SNOW, size: 10.5pt, weight: "bold")[Wave 2 · Warden]
    ]
  ]
  #v(1.8cm)
  #align(center)[
    #text(size: 10.5pt, fill: FOG)[Game version 16.0.3.1 · Fluffy Manager 5000 · PC (Steam)]
  ]
  #v(2.2cm)
  #align(center)[
    #text(size: 10.5pt, fill: FOG, style: "italic")[_“The quarry takes who it takes — and forges the rest.”_]
  ]
]

// Start page numbering after the cover (TOC becomes page 1).
#counter(page).update(1)

// ============================================================================
// TABLE OF CONTENTS
// ============================================================================
#block[
  #set text(font: DISPLAY, size: 20pt, weight: "bold", fill: EMBER_DK)
  Table of Contents
  #v(6pt)
  #line(length: 100%, stroke: 2pt + GOLD)
]
#v(0.6em)
#outline(title: none, depth: 2)
#pagebreak()

// ============================================================================
// PART 1 — WELCOME & SETUP
// ============================================================================
= Welcome <part-welcome>
#include "guide/00-intro/welcome.typ"
#include "guide/00-intro/fluffy-manager-5000.typ"
#pagebreak()

// ============================================================================
// PART 2 — THE MODLIST
// ============================================================================
= The Modlist <part-modlist>
#include "guide/01-modlist/modlist-rules.typ"
#include "guide/01-modlist/wave-0-mods.typ"
#include "guide/01-modlist/wave-1-mods.typ"
#include "guide/01-modlist/wave-2-mods.typ"
#pagebreak()

// ============================================================================
// PART 3 — WAVE 0: THE ROOKIE'S OATH
// ============================================================================
#wavepart(EMBER, EMBER_DK)[
  = Wave 0 — The Rookie's Oath <part-wave0>
  #include "guide/02-wave0/story.typ"
  #include "guide/02-wave0/01-first-hours.typ"
  #include "guide/02-wave0/02-the-hunt.typ"
  #include "guide/02-wave0/03-combat-basics.typ"
  #include "guide/02-wave0/04-equipment.typ"
  #include "guide/02-wave0/05-buddies-and-town.typ"
  #include "guide/02-wave0/06-quests.typ"
  #include "guide/02-wave0/07-ten-rules.typ"
]
#pagebreak()

// ============================================================================
// PART 4 — WAVE 1: THE EXPEDITION
// ============================================================================
#wavepart(TEAL, TEAL_DK)[
  = Wave 1 — The Expedition <part-wave1>
  #include "guide/03-wave1/story.typ"
  #include "guide/03-wave1/01-advanced-combat.typ"
  #include "guide/03-wave1/02-skills-and-builds.typ"
  #include "guide/03-wave1/03-sunbreak-systems.typ"
  #include "guide/03-wave1/04-economy.typ"
  #include "guide/03-wave1/05-strategy.typ"
]
#pagebreak()

// ============================================================================
// PART 5 — WAVE 2: WARDEN OF THE QUARRY
// ============================================================================
#wavepart(GOLD, GOLD_DK)[
  = Wave 2 — Warden of the Quarry <part-wave2>
  #include "guide/04-wave2/story.typ"
  #include "guide/04-wave2/01-endgame-path.typ"
  #include "guide/04-wave2/02-buildcraft.typ"
  #include "guide/04-wave2/03-hunt-etiquette.typ"
  #include "guide/04-wave2/04-checklist.typ"
]
#pagebreak()

// ============================================================================
// PART 6 — GLOSSARY
// ============================================================================
= Glossary <part-glossary>
#include "guide/05-reference/glossary.typ"
