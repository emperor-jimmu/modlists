#let mod-entry(name, url, version, deps, impact) = {
  block(
    fill: rgb("#f8f9fa"),
    inset: 10pt,
    radius: 4pt,
    stroke: 0.5pt + rgb("#dfe6e9"),
  )[
    #if url != "" and url != none {
      link(url)[#text(weight: "bold", size: 11pt, name)]
    } else {
      text(weight: "bold", size: 11pt, name)
    }
    #if version != "" and version != none [
      #v(4pt)
      *Version:* #version
    ]
    #if deps != "" and deps != none [
      #v(3pt)
      *Dependencies:* #deps
    ]
    #if impact != "" and impact != none [
      #v(3pt)
      *Impact:* #impact
    ]
  ]
}


== Wave 0 — Content Mods

Additional content additions that expand the vanilla experience without disrupting balance.

#mod-entry("Expanded Empire Units", "https://example.com/mod-empire-units", "v1.0", "", "Adds two new unit variants to the Empire roster: a heavy cavalry line and a specialist hero unit. No new factions or mechanics.")

#mod-entry("Province Flavor Events", "https://example.com/mod-events", "v0.7", "", "Adds lore-appropriate random events for each Empire province. Expands the narrative without changing gameplay systems.")

== Notes

Content mods in Wave 0 add small, vanilla-compatible additions. They do not introduce new mechanics or faction-specific systems.