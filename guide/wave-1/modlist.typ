#let mod-entry(name, url, version, deps, impact) = {
  grid(
    columns: (auto, 1fr),
    rows: (auto, auto),
    gutter: 0.2em,
    {
      text(weight: "bold", size: 9.5pt, name)
      if url != "" and url != none [
        #link(url)[🔗]
      ]
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


== Wave 1 — Modlist: Content

This wave expands the game with new factions, units, and campaign features.

== New Factions

#mod-entry("Kislev Expedition Pack", "https://example.com/mod-kislev", "v1.4", "", "Adds Kislev as a playable faction with unique lord choices and the Ice Court mechanics. Introduces the harsh northern climate as a gameplay factor.")

#mod-entry("Vampire Coast Expansion", "https://example.com/mod-vampcoast", "v2.1", "Kislev Expedition Pack", "Adds the Vampire Coast faction with sea-based campaign mechanics, necromantic army roster, and coastal raiding system.")

== New Units & Army Rosters

#mod-entry("Empire War Machine Pack", "https://example.com/mod-war-machines", "v1.2", "", "Adds siege engines and war machines to the Empire roster. Includes cannons of increased caliber and new rocket batteries.")

#mod-entry("Chaos Warrior Variants", "https://example.com/mod-chaos-variants", "v0.9", "", "Adds three new Chaos Warrior unit variants with unique loadouts. Each variant fills a different tactical role: frontline anchor, flanker, or terror unit.")

== Campaign Features

#mod-entry("Relic Hunting System", "https://example.com/mod-relics", "v1.0", "Kislev Expedition Pack", "Adds a dedicated relic-hunting mechanic across the campaign map. Relics provide gameplay bonuses and trigger unique events.")

#mod-entry("Trade Route Overhaul", "https://example.com/mod-traderoutes", "v1.3", "Empire War Machine Pack", "Revamps the trade system with new trade nodes and route-building mechanics. Income now scales with controlled trade infrastructure.")

== Notes

Wave 1 mods add significant content. Some mods have dependencies — ensure all dependency chains are active before launching the game.