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


== Wave 0 — Graphics Mods

Visual enhancements that improve the look of the vanilla game without altering gameplay.

#mod-entry("High-Res Unit Textures", "https://example.com/mod-hires-textures", "v2.0", "", "Replaces default unit textures with higher-resolution models. Minimal performance impact. Compatible with all vanilla factions.")

#mod-entry("Enhanced Ambient Lighting", "https://example.com/mod-ambience", "v1.3", "", "Adjusts the campaign map lighting to add more atmosphere — warmer tones, sharper shadows, and improved snow/rain effects.")

#mod-entry("Seasonal Map Overlay", "https://example.com/mod-seasons", "v1.0", "", "Adds seasonal visual changes to the campaign map — green in summer, brown in autumn, white in winter. Purely cosmetic.")

== Notes

Graphics mods in Wave 0 are purely cosmetic. No mechanical or gameplay impact.