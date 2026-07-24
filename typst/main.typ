#import "theme.typ": *

#set page(
  size: "a4",
  margin: (top: 1.5cm, bottom: 1.5cm, left: 2cm, right: 2cm),
  header: align(right + top, text(size: 8pt, fill: luma(160))[Only Monsters Remain]),
  footer: align(center + bottom, text(size: 8pt, fill: luma(160))[#context(numbering("1"))]),
  numbering: "1",
)

#set text(font: body-font, size: 10pt, fill: witcher-colors.dark-text)
#set par(justify: true, leading: 0.65em)
#show heading: it => {
  set text(font: heading-font, weight: "bold", fill: witcher-colors.amber)
  it
}

#title-page(
  title: "Only Monsters Remain",
  subtitle: "A Curated Witcher 3 Modlist & Game Guide",
  logo-path: "../guide/assets/logo.png",
)

#pagebreak()
#set heading(numbering: "1.1")
#outline(
  title: [Table of Contents],
  indent: auto,
)

// ============================================================
// WAVE 0
// ============================================================
#wave-header(0, "A Witcher's Apprentice", "Vanilla + Quality of Life - For New Players")

= Installation & Setup
== Game Installation
Instructions for installing Witcher 3 v4.04...
== Mod Manager Setup
Instructions for Witcher 3 Mod Manager (Nexus #2678)...

= Modlist - Wave 0
#mod-card(
  name: "Placeholder Mod",
  url: "https://www.nexusmods.com/witcher3/mods/1",
  author: "AuthorName",
  category: "UI",
  version: "1.0",
  wave: "0",
)[
  Placeholder description for the mod.
]

= Beginner's Guide
== Getting Started
== Core Mechanics

= Controls & UI
== Keyboard & Mouse
== Controller

= Combat Basics
== Swordplay
== Signs
== Alchemy

= Progression Guide
== Leveling
== Skills & Perks
== Equipment

// ============================================================
// WAVE 1
// ============================================================
#wave-header(1, "A Witcher's Journey", "Enhanced Graphics & Content - For Experienced Players")

= Upgrading to Wave 1

= Modlist - Wave 1

= Advanced Strategy
== Build Theory
== Sign vs Combat vs Alchemy

= Advanced Combat
== Enemy Weaknesses
== Oils & Bombs
== Parrying & Dodging

= Gear & Crafting
== Witcher Gear Sets
== Grandmaster Diagrams
== Runewords & Glyphwords

= Gwent Guide
== Deck Building
== Card Locations
== Tournament Strategy

= Exploration
== Points of Interest
== Hidden Treasures
== Question Mark Locations

// ============================================================
// WAVE 2
// ============================================================
#wave-header(2, "Master Witcher", "Mechanics Overhauls - For Veteran Players")

= Upgrading to Wave 2

= Modlist - Wave 2

= Roleplay Background

= Mastery Mechanics
== New Systems from Mods
== Difficulty Overhauls
== Survival Mechanics

= Specialized Builds
== Pure Signs
== Pure Alchemy
== Hybrid Builds
== Endgame Optimized

= Endgame & NG+
== New Game Plus Prep
== Blood and Wine Endgame
== Hearts of Stone Endgame

// ============================================================
// REFERENCE
// ============================================================
#pagebreak()
#set heading(numbering: "1.1")
= Reference
== Complete Mod Reference
== Load Order Guide
== Mod Manager Guide
== Troubleshooting
