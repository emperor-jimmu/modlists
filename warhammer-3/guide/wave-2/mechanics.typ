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


== Wave 2 — Mechanics Mods (continued)

Additional mechanics overhauls that deepen End Times gameplay.

#mod-entry("Faction Collapse System", "https://example.com/mod-collapse", "v1.0", "Loyalty & Mutiny System", "Factions now have a collapse mechanic. Lose too many provinces and the faction enters terminal decline — unable to recruit, trade, or negotiate. Adds urgency to every battle.")

#mod-entry("Hero Permadeath Mode", "https://example.com/mod-permadeath", "v0.8", "Veteran Retention Pack", "Heroes killed in battle are gone permanently for that campaign. Adds weight to every tactical decision and every unit deployment.")

#mod-entry("Dynamic War Exhaustion", "https://example.com/mod-exhaustion", "v1.1", "Scarce Resources Overhaul", "A fatigue system that affects the entire war effort. Prolonged campaigns cause war exhaustion — reduced recruitment capacity, increased unrest, and economic penalties scaling with time at war.")

== Notes

These mechanics mods are the most impactful in the modlist. They are designed to be used together but can be activated selectively if you want a lighter challenge.