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


== Wave 1 — Content Mods

Additional content that builds on Wave 0's foundation.

#mod-entry("Northern Territories Map Pack", "https://example.com/mod-northlands", "v0.8", "Kislev Expedition Pack", "Adds explorable northern territories to the campaign map. New regions with unique settlement types and resource nodes.")

#mod-entry("Hero Skill Expansions", "https://example.com/mod-hero-skills", "v1.1", "Relic Hunting System", "Adds 15 new hero skills across all factions. Includes passive abilities, combat tricks, and diplomacy options.")

#mod-entry("Minor Faction Encounters", "https://example.com/mod-minorfactions", "v0.9", "Northern Territories Map Pack", "Adds minor faction encounters on the campaign map. Interact through diplomacy, combat, or integration.")

== Notes

Content mods in Wave 1 significantly expand the game world. Ensure all dependencies are met before activation.