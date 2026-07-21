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
  font: ("Inter", "Segoe UI", "DejaVu Sans", "Arial"),
  size: 11pt,
  fill: rgb("#E0E0E0"),
  hyphenate: true,
)

#set par(
  leading: 0.65em,
  justify: true,
)

#set heading(
  font: ("Orbitron", "Segoe UI", "DejaVu Sans", "Arial"),
)

// === Color Palette ===
#let clr-n7-red = rgb("#D93829")
#let clr-blue = rgb("#00BFFF")
#let clr-bg = rgb("#1A1A1A")
#let clr-content = rgb("#2D2D2D")
#let clr-amber = rgb("#FFA500")
#let clr-info = rgb("#3A5A7C")
#let clr-text = rgb("#E0E0E0")
#let clr-w0 = rgb("#4A90D9")
#let clr-w1 = rgb("#E07B39")
#let clr-ok = rgb("#4CAF50")
#let clr-muted = rgb("#888888")

// === Custom Functions ===

// Wave badge -- colored pill badge(s) for wave membership
#let wave-badge(waves) = {
  for wave in waves {
    let (color, label) = if wave == 0 {
      (clr-w0, "Wave 0")
    } else {
      (clr-w1, "Wave 1")
    }
    box(
      fill: color,
      inset: (x: 8pt, y: 2pt),
      radius: 4pt,
      text(fill: white, size: 9pt, weight: "bold", label)
    )
    h(4pt)
  }
}

// Callout box -- colored left-border block
#let callout(type, body) = {
  let color = if type == "info" {
    clr-info
  } else if type == "warning" {
    clr-amber
  } else if type == "tip" {
    clr-ok
  } else if type == "dependency" {
    clr-n7-red
  } else {
    clr-info
  }
  let icon = if type == "info" {
    "i"
  } else if type == "warning" {
    "!"
  } else if type == "tip" {
    "?"
  } else {
    ">"
  }

  stack(
    spacing: 0pt,
    block(
      fill: rgb("#252525"),
      inset: (top: 8pt, bottom: 8pt, left: 12pt, right: 12pt),
      radius: 4pt,
      stroke: (left: 4pt + color),
      [
        #text(fill: color, weight: "bold", size: 10pt)[#icon\ ]
        #body
      ],
    ),
    v(8pt),
  )
}

// Mod entry -- consistent, styled mod listing
#let mod-entry(
  name: "",
  url: "",
  waves: (),
  version: "",
  last-checked: "",
  deps: (),
  impact: none,
  notes: none,
) = {
  stack(
    spacing: 0pt,
    block(
      fill: clr-content,
      inset: 12pt,
      radius: 6pt,
      stroke: 1pt + clr-content,
      [
        #wave-badge(waves)
        #text(size: 13pt, weight: "bold")[#name]

        #text(size: 9pt, fill: clr-muted)[v\ #version \ | \ Last checked: #last-checked]

        #link(url)[#url]

        #v(6pt)

        #text(weight: "bold")[Dependencies: ]\
        #{ if deps.len() > 0 { deps.join(", ") } else { [None] } }

        #v(4pt)

        #if impact != none {
          text(weight: "bold")[Impact: ] + impact
        }

        #v(4pt)

        #if notes != none {
          text(weight: "bold")[Installation notes: ] + notes
        }
      ],
    ),
    v(10pt),
  )
}

// Global show rules
#show heading: set text(fill: clr-n7-red)
#show link: set text(fill: clr-blue)

// === Cover (front matter; no page number) ===
#include "00-cover.typ"

// === Table of Contents ===
#counter(page).update(1)
#set page(numbering: "i")
#outline(
  title: [Table of Contents],
  indent: 2em,
  depth: 2,
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
#include "04-how-to-play-wave0.typ"
#include "05-how-to-play-wave1.typ"
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
#include "98-conflicts.typ"
#include "99-mod-ideas.typ"
