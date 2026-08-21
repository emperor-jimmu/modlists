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

This wave activates ALL mods from Waves 0–3 simultaneously. This is the complete modlist. Activate in wave order: QoL (below), graphics (below + Wave 3 graphics section), then content and mechanics from the Wave 1/2 sections.

== UI / QoL (Wave 0 Carryover)

#mod-entry("Better Camera Mod", "https://steamcommunity.com/sharedfiles/filedetails/?id=2789858755", "v8.1 (Jul 2026)", "", "Unlocked camera heights in battles and campaign; zoom without unit culling.")

#mod-entry("Cpecific's Skill Queue: Jazzed Edition", "https://steamcommunity.com/sharedfiles/filedetails/?id=3720243387", "v8.1 (Jul 2026)", "Memreader (win64)", "Skill presets that auto-assign points to new lords/heroes.")

#mod-entry("Memreader (win64)", "https://steamcommunity.com/sharedfiles/filedetails/?id=2789863945", "v8.1", "", "Memory library required by Skill Queue.")

#mod-entry("The Tooltip Project", "https://steamcommunity.com/sharedfiles/filedetails/?id=3588380343", "v8.1 (Jul 2026)", "", "Rewrites unit/spell tooltips with hidden stats and mechanics.")

#mod-entry("Building Progression Icons III", "https://steamcommunity.com/sharedfiles/filedetails/?id=2790007728", "v8.1 (Dec 2025)", "", "Building icons change as buildings upgrade.")

#mod-entry("Speedy Turn Camera", "https://steamcommunity.com/sharedfiles/filedetails/?id=2792727547", "v8.1 (May 2026)", "", "Faster end-turn camera pan between factions.")

#mod-entry("High Resolution UI Improvements", "https://steamcommunity.com/sharedfiles/filedetails/?id=2790774407", "v8.1 (Dec 2025)", "", "Resizes UI panels for 1440p+ monitors.")

#mod-entry("Skip Intro", "https://steamcommunity.com/sharedfiles/filedetails/?id=2811310125", "v8.1 (May 2026)", "", "Skips startup intros and the epilepsy warning.")

== Graphics (Waves 0–2 Carryover)

#mod-entry("Colourless' Radious HD Texture Pack", "https://steamcommunity.com/sharedfiles/filedetails/?id=3051876615", "v8.1 (Jul 2026)", "", "Comprehensive HD texture replacement across all base races.")

#mod-entry("Warhammer 1 Texture Update Project", "https://steamcommunity.com/sharedfiles/filedetails/?id=3237873696", "v8.1", "", "Upgrades WH1 legacy race textures to WH3 standards.")

#mod-entry("Campaign Map Lighting", "https://steamcommunity.com/sharedfiles/filedetails/?id=2818403447", "v8.1", "", "Warmer campaign map lighting with deeper shadows and day/night contrast.")

#mod-entry("ULTIMATE LIGHTING 2.0", "https://steamcommunity.com/sharedfiles/filedetails/?id=2922534576", "v2.0", "", "Complete battle lighting overhaul with deeper shadows and better ambient occlusion.")

#mod-entry("Details Matter: True Grit Textures (The Empire)", "https://steamcommunity.com/sharedfiles/filedetails/?id=2961327160", "v8.1", "", "High-detail Empire texture upgrade with realistic wear and battle damage.")

#mod-entry("Lore Soldiers: Units Reskin as Miniatures and Books", "https://steamcommunity.com/sharedfiles/filedetails/?id=2789877586", "v8.1", "", "Tabletop-miniature-accurate reskins across multiple factions.")

#mod-entry("Grim Lighting", "https://steamcommunity.com/sharedfiles/filedetails/?id=3363516919", "v8.1", "", "Dark, oppressive battle lighting with reduced saturation — the End Times look.")

#mod-entry("Chaos Visual Overhaul", "https://steamcommunity.com/sharedfiles/filedetails/?id=2791113369", "v8.1", "", "Comprehensive visual overhaul for all Chaos factions.")

#mod-entry("Better Chaos Waste Lighting Effect", "https://steamcommunity.com/sharedfiles/filedetails/?id=2853785889", "v8.1", "Chaos Visual Overhaul", "Unique atmospheric lighting for Chaos Waste regions.")

== Notes

Wave 3 is the final wave. All mods from Waves 0–3 are active. Respect all dependency chains: Skill Queue needs Memreader, VCO needs its SFO patch, Wave 1 content needs MIXER and its SFO patches. Check conflicts.conf before activation — some mods may conflict even if not within the same wave.
