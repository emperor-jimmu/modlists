#import "config.typ": project-title

// Color palette
#let color-navy = rgb("#0B1021")
#let color-cream = rgb("#F5F0E8")
#let color-gold = rgb("#D4A843")
#let color-steel = rgb("#4A7C9B")
#let color-white = rgb("#FFFFFF")
#let color-dark-text = rgb("#1A1A1A")
#let color-muted = rgb("#888888")

// Page setup
#let page-setup = {
  set page(
    paper: "a4",
    margin: (top: 2.5cm, bottom: 2.5cm, left: 2cm, right: 2cm),
    header: context {
      if counter(page).get().first() > 1 {
        align(right, smallcaps(text(color-muted, project-title)))
      }
    },
    footer: context {
      if counter(page).get().first() > 1 {
        align(center, text(color-muted, numbering("1", counter(page).get().first())))
      }
    },
    numbering: "1",
  )
  set text(font: ("Source Serif Pro", "Noto Serif", "Georgia"), size: 11pt, fill: color-dark-text)
  set heading(numbering: "1.1")
}

// Heading styles
#let wave-heading(body) = block(
  fill: color-navy,
  inset: 12pt,
  radius: 4pt,
  text(color-white, size: 18pt, weight: "bold", body)
)

// Mod card
#let mod-card(mod) = {
  let mod-url = mod.at("url", default: "")
  let is-link = mod-url != ""
  block(
    stroke: 1pt + color-steel,
    fill: color-white,
    inset: 12pt,
    radius: 4pt,
    below: 8pt,
    [
      #if is-link {
        link(mod-url)[#text(size: 12pt, weight: "bold", fill: color-steel, mod.name)]
      } else {
        text(size: 12pt, weight: "bold", mod.name)
      }
      #h(1em)
      #text(size: 9pt, fill: color-muted, style: "italic")[#mod.category]
      #linebreak()
      #mod.description
      #if "mechanics" in mod {
        linebreak()
        text(size: 10pt, fill: color-navy, weight: "semibold")[Mechanics: ]
        mod.mechanics
      }
      #if "dependencies" in mod and mod.dependencies.len() > 0 {
        linebreak()
        text(size: 10pt, fill: color-steel)[Dependencies: ]
        mod.dependencies.join(", ")
      }
      #if "dlc_required" in mod and mod.dlc_required != "" {
        linebreak()
        text(size: 9pt, fill: color-gold)[DLC Required: #mod.dlc_required]
      }
    ],
  )
}

// Category section
#let category-section(category-name, mods) = {
  if mods.len() > 0 {
    heading(level: 3, category-name)
    for mod in mods {
      mod-card(mod)
    }
  }
}
