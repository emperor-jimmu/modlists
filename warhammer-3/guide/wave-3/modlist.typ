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


== Wave 3 — Modlist: Full Chaos

This wave activates ALL mods from Waves 0–3 simultaneously. This is the complete modlist.

== UI / QoL (Wave 0 Carryover)

#mod-entry("Improved Campaign UI", "https://example.com/mod-campaign-ui", "v1.0", "", "Improves tooltip readability and streamlines the campaign map interface.")

#mod-entry("Streamlined Army Management", "https://example.com/mod-army-ui", "v0.9", "Improved Campaign UI", "Reduces clicks needed to manage army reinforcement, auto-sort, and embark.")

#mod-entry("Better Turn Flow", "https://example.com/mod-turnflow", "v1.2", "", "Speeds up non-combat turn processing and adds batch-end-turn functionality.")

#mod-entry("Enhanced Notification Panel", "https://example.com/mod-notifications", "v1.1", "", "Consolidates in-game notifications into a single, sortable panel.")

#mod-entry("Quick Select Toolbar", "https://example.com/mod-quickselect", "v0.8", "Better Turn Flow", "Customizable quick-access toolbar for frequently used commands.")

== Graphics (Waves 0–2 Carryover)

#mod-entry("High-Res Unit Textures", "https://example.com/mod-hires-textures", "v2.0", "", "Replace default unit textures with higher-resolution models.")

#mod-entry("Enhanced Ambient Lighting", "https://example.com/mod-ambience", "v1.3", "", "Adjusts campaign map lighting for better atmosphere.")

#mod-entry("Seasonal Map Overlay", "https://example.com/mod-seasons", "v1.0", "", "Adds seasonal visual changes to the campaign map.")

#mod-entry("Faction-Specific Banners", "https://example.com/mod-banners", "v1.5", "", "Custom battle banners for all factions including sub-factions.")

#mod-entry("Enhanced Siege Battle Assets", "https://example.com/mod-siege-vfx", "v1.0", "", "Improved siege battle visuals and destruction physics.")

#mod-entry("Atmospheric Weather Pack", "https://example.com/mod-weather", "v1.2", "", "Dynamic weather effects including blizzards, storms, and volcanic ash.")

#mod-entry("Apocalyptic Atmosphere Pack", "https://example.com/mod-apocalypse-vfx", "v1.0", "", "Darker skies, blood-red sunsets, and permanent overcast for End Times setting.")

#mod-entry("Destroyed Province Visuals", "https://example.com/mod-destruction", "v1.2", "Apocalyptic Atmosphere Pack", "Province borders show destruction — burnt fields, shattered walls, skeletal forests.")

#mod-entry("Chaos Corruption Overlays", "https://example.com/mod-chaos-overlays", "v0.9", "Destroyed Province Visuals", "Visual corruption overlays spreading across affected regions.")



== Notes

Wave 3 is the final wave. All mods from Waves 0–3 are active. Respect all dependency chains. Check conflicts.conf before activation — some mods may conflict even if not within the same wave.