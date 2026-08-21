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


== Wave 2 — Content Mods: SFO Integration

The End Times setting is built on SFO: Grimhammer III, so all Wave 1 content must be rebalanced to SFO's pacing. These official-style compatibility patches (by Fesir) adapt the Wave 1 content mods to SFO combat, economy and unit-cap logic. Activate each patch for the content mods you carry over from Wave 1.

#mod-entry("Mixu's Legendary Lords - SFO Compatibility Patch", "https://steamcommunity.com/sharedfiles/filedetails/?id=3743482152", "v8.1 (Jul 2026)", "Mixu's Legendary Lords; Mixu's Legendary Lords: Asset Pack; SFO: Grimhammer III", "Adapts Mixu's lords, heroes, mounts and units to SFO combat pacing, costs, recruitment and unit-cap logic. Load order (top to bottom): this patch, Mixu's Legendary Lords, Asset Pack, SFO.")

#mod-entry("Cataph's Southern Realms - SFO Compatibility Patch", "https://steamcommunity.com/sharedfiles/filedetails/?id=3743493125", "v8.1 (Aug 2026)", "Cataph's Southern Realms (TEB); MIXER - Mixu's Unlocker; SFO: Grimhammer III", "Rebalances the Southern Realms roster for SFO: unit stats, costs, upkeep, recruitment, Dogs of War unit capacities, buildings, skills and starting armies. Load order (top to bottom): this patch, TEB, SFO, MIXER.")

#mod-entry("Landmarks of Eternity — SFO Compatibility Patch", "https://steamcommunity.com/sharedfiles/filedetails/?id=3728577520", "v8.1 (Jul 2026)", "Landmarks of Eternity; SFO: Grimhammer III; (optional) Landmarks of Eternity IEE add-on + Immortal Empires Expanded", "Rebalances Landmarks of Eternity landmark units and Regiments of Renown for SFO's battle pacing and economy. Load order (top to bottom): this patch, LoE IEE add-on, Landmarks of Eternity, Immortal Empires Expanded, SFO, MIXER.")

== Notes

These patches are compatibility layers, not new content — they make Wave 1 content playable under SFO. Only install the patches for content mods you actually use. A new campaign is strongly recommended after enabling SFO. Do not stack multiple SFO patches for the same mod.
