#import "styles.typ": *
#import "cover.typ": cover-page

// Load mod data (converted JSON)
#let wave-0-data = json("../guide/mod-data-converted/wave-0.json")
#let wave-1-data = json("../guide/mod-data-converted/wave-1.json")
#let wave-2-data = json("../guide/mod-data-converted/wave-2.json")
#let wave-3-data = json("../guide/mod-data-converted/wave-3.json")

// Cumulative mod fetching: all mods with wave <= N
// Uses sequential let rebinding since Typst for-loop scope is isolated
#let mods-up-to(wave-n) = {
  let s0 = wave-0-data
  let s1 = if 1 <= wave-n { s0 + wave-1-data } else { s0 }
  let s2 = if 2 <= wave-n { s1 + wave-2-data } else { s1 }
  let s3 = if 3 <= wave-n { s2 + wave-3-data } else { s2 }
  s3
}

// Group mods by category
#let group-by-category(mods) = {
  let result = (
    "total-conversion": (),
    "overhaul": (),
    "standalone": (),
    "utility": (),
    "visual": (),
    "audio": (),
    "ui": (),
  )
  for mod in mods {
    let cat = mod.at("category", default: "standalone")
    let key = if cat in result { cat } else { "standalone" }
    let current = result.at(key)
    result.insert(key, current + (mod,))
  }
  result
}

// Wave names
#let wave-names = ("The Uncharted", "The Opportunist", "The Warlord", "Stellar Dominion")

// Render
#cover-page()

#page-setup

#set heading(numbering: "1.1")

#pagebreak()

= Table of Contents
#outline(indent: auto)

#pagebreak()

// MO2 Installation Guide
= Mod Organizer 2 Installation Guide
#include "../guide/mo2-installation-guide.typ"

#pagebreak()

// Wave Setup
= Wave Setup & Roleplaying Backgrounds
#include "../guide/wave-setup.typ"

// Wave sections
#for wave-num in range(0, 4) {
  pagebreak()
  wave-heading[Wave #wave-num: #wave-names.at(wave-num)]

  if wave-num == 0 {
    include("../guide/wave-0-how-to-play.typ")
  } else if wave-num == 1 {
    include("../guide/wave-1-strategy.typ")
  } else if wave-num == 2 {
    include("../guide/wave-2-strategy.typ")
  } else if wave-num == 3 {
    include("../guide/wave-3-strategy.typ")
  }

  heading(level: 2)[Mod List]

  let wave-mods = mods-up-to(wave-num)
  let grouped = group-by-category(wave-mods)

  category-section("Total Conversions", grouped.at("total-conversion"))
  category-section("Overhauls", grouped.at("overhaul"))
  category-section("Standalone Additions", grouped.at("standalone"))
  category-section("Utilities & Libraries", grouped.at("utility"))
  category-section("Visual", grouped.at("visual"))
  category-section("Audio", grouped.at("audio"))
  category-section("UI", grouped.at("ui"))
}

#pagebreak()
= Appendix: Additional Notes
Mod conflicts and incompatibilities are tracked in `conflicts.md` (not included in this PDF).
