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


== Wave 1 — Graphics Mods

Enhanced visual additions that complement the new content from Wave 1.

#mod-entry("Faction-Specific Banners", "https://example.com/mod-banners", "v1.5", "", "Adds custom battle banners for all new factions introduced in Wave 1. Also adds variant banners for Empire sub-factions.")

#mod-entry("Enhanced Siege Battle Assets", "https://example.com/mod-siege-vfx", "v1.0", "", "Replaces siege battle visuals with improved destruction physics and projectile effects. Adds new siege engine models.")

#mod-entry("Atmospheric Weather Pack", "https://example.com/mod-weather", "v1.2", "", "Adds dynamic weather effects including blizzards for northern regions, sea storms for coastal battles, and volcanic ash for Chaos-affected territories.")

== Notes

Graphics mods in Wave 1 are designed to match the new content additions. Some are faction-specific.