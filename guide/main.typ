// main.typ -- The Final Cycle
// Entry point: document config, shared functions, include chain.

// === Document Setup ===
#set document(
  title: "The Final Cycle",
  author: "",
  keywords: ("Mass Effect", "Legendary Edition", "Modlist", "Guide", "MELE"),
)

#set page(
  paper: "a4",
  margin: (top: 2.2cm, bottom: 2.2cm, left: 2.2cm, right: 2.2cm),
  fill: rgb("#1A1A1A"),
)

#set text(
  font: ("Inter", "Segoe UI", "Arial"),
  size: 11pt,
  fill: rgb("#E0E0E0"),
  hyphenate: true,
)

#set par(
  leading: 0.65em,
  justify: true,
)

// === Shared Definitions ===
#import "lib.typ": *

// === Global Show Rules ===
#show heading: set text(
  font: ("Orbitron", "Segoe UI", "Arial"),
  fill: clr-n7-red,
)
#show link: set text(fill: clr-blue)
#show raw: set text(font: ("JetBrains Mono", "Consolas", "Courier New"), size: 10pt)

// === Cover (front matter; no page number) ===
#include "00-cover.typ"

// === Table of Contents ===
#counter(page).update(1)
#set page(numbering: "i")
#outline(
  title: [Table of Contents],
  indent: 2em,
  depth: 1,
)

// === Body (Arabic page numbers) ===
#pagebreak()
#counter(page).update(1)
#set page(numbering: "1")

#include "01-introduction.typ"
#include "02-installation.typ"
#include "02a-modding-best-practices.typ"
#include "02b-mem-texture-guide.typ"
#include "03-rpg-backgrounds.typ"
#include "04-how-to-play.typ"
#include "05-advanced-combat.typ"
#include "09-bugfixes-patches.typ"
#include "10-graphics.typ"
#include "11-gameplay-mechanics.typ"
#include "12-weapons-armor.typ"
#include "13-ui-qol.typ"
#include "14-quests.typ"
#include "15-content.typ"
#include "16-audio-sound.typ"
#include "17-characters-appearance.typ"
#include "18-tools-utilities.typ"
// 98-conflicts.typ and 99-mod-ideas.typ are reference files only — not included in the PDF.
