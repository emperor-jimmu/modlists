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

== Content (Waves 1–2 Carryover)

#mod-entry("Kislev Expedition Pack", "https://example.com/mod-kislev", "v1.4", "", "Adds Kislev as a playable faction with Ice Court mechanics.")

#mod-entry("Vampire Coast Expansion", "https://example.com/mod-vampcoast", "v2.1", "Kislev Expedition Pack", "Adds Vampire Coast faction with sea-based campaign mechanics.")

#mod-entry("Empire War Machine Pack", "https://example.com/mod-war-machines", "v1.2", "", "Adds siege engines and war machines to the Empire roster.")

#mod-entry("Chaos Warrior Variants", "https://example.com/mod-chaos-variants", "v0.9", "", "Three new Chaos Warrior unit variants.")

#mod-entry("Relic Hunting System", "https://example.com/mod-relics", "v1.0", "Kislev Expedition Pack", "Dedicated relic-hunting mechanic across the campaign map.")

#mod-entry("Trade Route Overhaul", "https://example.com/mod-traderoutes", "v1.3", "Empire War Machine Pack", "New trade nodes and route-building mechanics.")

#mod-entry("Northern Territories Map Pack", "https://example.com/mod-northlands", "v0.8", "Kislev Expedition Pack", "Explorable northern territories with unique settlements and resources.")

#mod-entry("Hero Skill Expansions", "https://example.com/mod-hero-skills", "v1.1", "Relic Hunting System", "15 new hero skills across all factions.")

#mod-entry("Minor Faction Encounters", "https://example.com/mod-minorfactions", "v0.9", "Northern Territories Map Pack", "Minor faction encounters on the campaign map.")

#mod-entry("Expanded Empire Units", "https://example.com/mod-empire-units", "v1.0", "", "Two new Empire unit variants and a specialist hero unit.")

#mod-entry("Province Flavor Events", "https://example.com/mod-events", "v0.7", "", "Lore-appropriate random events for each Empire province.")

#mod-entry("Chaos Invasion Force Pack", "https://example.com/mod-chaosis", "v2.0", "Apocalyptic Atmosphere Pack", "Fully playable Chaos invasion faction with unique lords and Corruption Spread mechanic.")

#mod-entry("Warhammer Fantasy Realm Expansion", "https://example.com/mod-realms", "v1.4", "Chaos Invasion Force Pack", "New regions and sub-factions from Warhammer Fantasy lore.")

#mod-entry("Catastrophe Events Pack", "https://example.com/mod-catastrophes", "v1.0", "Chaos Invasion Force Pack", "Volcanic eruptions, earthquakes, and dimensional rifts reshaping the map.")

== Mechanics (Waves 2 Carryover)

#mod-entry("Loyalty & Mutiny System", "https://example.com/mod-loyalty", "v1.0", "", "Overhauled army loyalty. Affects performance, defection risk, and mutiny likelihood.")

#mod-entry("Veteran Retention Pack", "https://example.com/mod-veterans", "v0.7", "Loyalty & Mutiny System", "Experienced units carry over battle bonuses but are permanently lost on army destruction.")

#mod-entry("Scarce Resources Overhaul", "https://example.com/mod-scarcity", "v1.2", "Loyalty & Mutiny System", "Drastically reduced resource availability. Economy requires careful supply line management.")

#mod-entry("Destruction & Decay Mechanics", "https://example.com/mod-decay", "v1.1", "Scarce Resources Overhaul", "Provinces and infrastructure degrade over time. Unmaintained buildings collapse.")

#mod-entry("Fatigue & Retreat System", "https://example.com/mod-fatigue", "v1.0", "Loyalty & Mutiny System", "Redefined army stamina. Exhausted units rout easily. Forced marches cause combat penalties.")

#mod-entry("Tactical Command Overhaul", "https://example.com/mod-tactics", "v0.6", "Fatigue & Retreat System", "Revamped battle command system with new order types and context-sensitive commands.")

#mod-entry("Faction Collapse System", "https://example.com/mod-collapse", "v1.0", "Loyalty & Mutiny System", "Factions enter terminal decline after losing too many provinces. Cannot recruit, trade, or negotiate.")

#mod-entry("Hero Permadeath Mode", "https://example.com/mod-permadeath", "v0.8", "Veteran Retention Pack", "Heroes killed in battle are gone permanently for that campaign.")

#mod-entry("Dynamic War Exhaustion", "https://example.com/mod-exhaustion", "v1.1", "Scarce Resources Overhaul", "War fatigue scaling with time at war. Reduces recruitment, increases unrest, and penalizes economy.")

== Notes

Wave 3 is the final wave. All mods from Waves 0–3 are active. Respect all dependency chains. Check conflicts.conf before activation — some mods may conflict even if not within the same wave.