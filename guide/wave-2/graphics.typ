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


== Wave 2 — Graphics Mods

Darkened visuals matching the End Times setting.

#mod-entry("Apocalyptic Atmosphere Pack", "https://example.com/mod-apocalypse-vfx", "v1.0", "", "Overhauls the campaign map lighting to reflect the dying world — darker skies, blood-red sunsets, and permanent overcast. Enhanced particle effects for Chaos-related events.")

#mod-entry("Destroyed Province Visuals", "https://example.com/mod-destruction", "v1.2", "Apocalyptic Atmosphere Pack", "Province borders now visually show destruction — burnt fields, shattered walls, and skeletal forests in conquered or decaying regions.")

#mod-entry("Chaos Corruption Overlays", "https://example.com/mod-chaos-overlays", "v0.9", "Destroyed Province Visuals", "Adds corruption visual overlays to affected regions. Corruption spreads visually across the map as Chaos rises.")

== Notes

Graphics mods in Wave 2 reinforce the dark atmosphere of the End Times. Some are chained to other mods.