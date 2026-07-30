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


== Wave 3 — Graphics Mods

Faction-specific texture upgrades and visual polish for individual races.

#mod-entry("Dark Elves Dark Textures", "https://steamcommunity.com/sharedfiles/filedetails/?id=3392092308", "v8.1", "", "Darkens and sharpens Dark Elf unit textures — deeper blacks on armour, richer crimson accents on cloaks, and more defined scale patterns on monsters. Fits the darker tone of the End Times.")

#mod-entry("Dwarf Lore Reskin (Visual Overhaul Compilation)", "https://steamcommunity.com/sharedfiles/filedetails/?id=3236382945", "v8.1", "", "Updated Dwarf unit models with lore-accurate helmet designs, shield heraldry, and armour variants. Covers Dwarf Warriors, Longbeards, Ironbreakers, Hammerers, and Slayers.")

#mod-entry("Tomb Kings Reskin (Lore Visual Overhaul)", "https://steamcommunity.com/sharedfiles/filedetails/?id=3160900040", "v8.1", "", "Visual overhaul for Tomb Kings — reshaded constructs, refined hieroglyphic details on war machines, and improved Lord/Hero model fidelity.")

#mod-entry("3D Porthole Lighting Fix", "https://steamcommunity.com/sharedfiles/filedetails/?id=3039004186", "v8.1", "", "Fixes the flat lighting on 3D character portraits in the campaign UI. Restores proper shading and specular highlights to lord and hero porthole portraits.")

== Notes

Wave 3 adds race-specific visual detail on top of the base texture upgrades from Waves 0-2. All mods are purely cosmetic with no gameplay impact.
