#let mod-entry(name, url, version, deps, impact) = {
  grid(
    columns: (auto, 1fr),
    rows: (auto, auto),
    gutter: 0.2em,
    {
      text(weight: "bold", size: 10pt, name)
      if url != "" and url != none [ (#link(url)[🔗]) ]
    },
    {
      v(-0.2em)
      if version != "" and version != none [ *Version:* #version ]
      if deps != "" and deps != none [ *Dependencies:* #deps ]
      if impact != "" and impact != none [ *Impact:* #impact ]    },
  )
}


== Wave 2 — Mechanics Mods (continued)

Additional mechanics overhauls that deepen End Times gameplay.

#mod-entry("Faction Collapse System", "https://example.com/mod-collapse", "v1.0", "Loyalty & Mutiny System", "Factions now have a collapse mechanic. Lose too many provinces and the faction enters terminal decline — unable to recruit, trade, or negotiate. Adds urgency to every battle.")

#mod-entry("Hero Permadeath Mode", "https://example.com/mod-permadeath", "v0.8", "Veteran Retention Pack", "Heroes killed in battle are gone permanently for that campaign. Adds weight to every tactical decision and every unit deployment.")

#mod-entry("Dynamic War Exhaustion", "https://example.com/mod-exhaustion", "v1.1", "Scarce Resources Overhaul", "A fatigue system that affects the entire war effort. Prolonged campaigns cause war exhaustion — reduced recruitment capacity, increased unrest, and economic penalties scaling with time at war.")

== Notes

These mechanics mods are the most impactful in the modlist. They are designed to be used together but can be activated selectively if you want a lighter challenge.