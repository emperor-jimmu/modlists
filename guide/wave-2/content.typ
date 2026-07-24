#let mod-entry(name, url, version, deps, impact) = {
  grid(
    columns: (auto, 1fr),
    rows: (auto, auto),
    gutter: 0.2em,
    {
      if url != "" and url != none {
        link(url)[text(weight: "bold", size: 10.5pt, name)]
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


== Wave 2 — Content Mods

New content additions tailored to the End Times setting.

#mod-entry("Chaos Invasion Force Pack", "https://example.com/mod-chaosis", "v2.0", "Apocalyptic Atmosphere Pack", "Adds a fully playable Chaos invasion faction with unique lord archetypes, corrupted unit variants, and a Corruption Spread mechanic on the campaign map.")

#mod-entry("Warhammer Fantasy Realm Expansion", "https://example.com/mod-realms", "v1.4", "Chaos Invasion Force Pack", "Adds new regions and sub-factions drawn from the Warhammer Fantasy lore not yet available in Warhammer 3. Includes new settlement types and unique narrative events.")

#mod-entry("Catastrophe Events Pack", "https://example.com/mod-catastrophes", "v1.0", "Chaos Invasion Force Pack", "Adds large-scale catastrophe events to the campaign map — volcanic eruptions, earthquakes, and dimensional rifts that reshape the strategic landscape.")

== Notes

Content mods in Wave 2 are tied to the End Times theme. Dependencies are critical — activate the full chain for the best experience.