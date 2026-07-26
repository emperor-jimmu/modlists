// ── Page Setup ──────────────────────────────────
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2cm),
)
#set text(font: ("Georgia", "Times New Roman"), size: 11pt)
#set par(justify: true, leading: 0.45em)
#set heading(numbering: "1.")
#show heading.where(level: 1): set text(size: 20pt, weight: "bold", fill: rgb("#8B6914"))
#show heading.where(level: 2): set text(size: 15pt, weight: "bold", fill: rgb("#6B4E0A"))
#show heading.where(level: 3): set text(size: 12pt, weight: "bold", fill: rgb("#5A3E08"))
#show link: text.with(fill: rgb("#2E5A88"))
#show list.item: set text(size: 10.5pt)

// ── Cover Page ──────────────────────────────────
#set page(fill: rgb("#1a1a1a"))
#align(center + middle, [
  #image("assets/logo.jpg", width: 55%)
  #v(1.5cm)
  #text(size: 38pt, weight: "bold", fill: rgb("#D4A843"))[Santos Supreme]
  #v(0.6cm)
  #text(size: 16pt, fill: rgb("#C0B090"), weight: "regular")[A Curated GTA V Modlist & Guide]
  #v(0.4cm)
  #text(size: 12pt, fill: rgb("#A09080"))[Version 1.73 — July 2026]
])
#pagebreak()

// ── Table of Contents ───────────────────────────
#set page(fill: white)
#set text(fill: rgb("#2A2A2A"))
#outline(title: [Table of Contents])
#pagebreak()

// ── Wave divider helper ─────────────────────────
#let wave-divider(title) = {
  pagebreak()
  set page(fill: rgb("#1a1a1a"))
  align(center + middle, text(size: 28pt, weight: "bold", fill: rgb("#D4A843"))[#title])
  pagebreak()
  set page(fill: white)
  set text(fill: rgb("#2A2A2A"))
}

// ═════════════════════════════════════════════
//  WAVE 0: Getting By
// ═════════════════════════════════════════════
#wave-divider("Wave 0: Getting By")

#set heading(numbering: "0.")

#include "guide/wave0/00-roleplay.typ"
#include "guide/wave0/01-before-you-begin.typ"
#include "guide/wave0/02-modlist.typ"
#include "guide/wave0/03-gameplay-guide.typ"

// ═════════════════════════════════════════════
//  WAVE 1: Untold Stories
// ═════════════════════════════════════════════
#wave-divider("Wave 1: Untold Stories")

#include "guide/wave1/00-roleplay.typ"
#include "guide/wave1/01-migration-guide.typ"
#include "guide/wave1/02-modlist-graphics.typ"
#include "guide/wave1/03-modlist-content.typ"
#include "guide/wave1/04-modlist-mechanics.typ"
#include "guide/wave1/05-modlist-adult.typ"
#include "guide/wave1/06-advanced-guide.typ"
