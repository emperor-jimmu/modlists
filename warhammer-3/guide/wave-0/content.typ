#let mod-entry(name, url, version, deps, impact) = {
  grid(
    columns: (auto, 1fr),
    rows: (auto, auto),
    gutter: 0.2em,
    {
      if url != "" and url != none {
        link(url)[#text(weight: "bold", size: 10.5pt, name)]
      } else {
        text(weight: "bold", size: 10.5pt, name)
      }
    },
    {
      if version != "" and version != none [
        *Version:* #version
      ]
      if deps != "" and deps != none [
        *Dependencies:* #deps
      ]
      if impact != "" and impact != none [
        *Impact:* #impact
      ]
    },
  )
}


== Wave 0 — Content Mods

Additional content additions that expand the vanilla experience without disrupting balance.

#mod-entry("Expanded Empire Units", "https://example.com/mod-empire-units", "v1.0", "", "Adds two new unit variants to the Empire roster: a heavy cavalry line and a specialist hero unit. No new factions or mechanics.")

#mod-entry("Province Flavor Events", "https://example.com/mod-events", "v0.7", "", "Adds lore-appropriate random events for each Empire province. Expands the narrative without changing gameplay systems.")

== Notes

Content mods in Wave 0 add small, vanilla-compatible additions. They do not introduce new mechanics or faction-specific systems.