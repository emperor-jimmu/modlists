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


== Wave 2 — Modlist: Mechanics

This wave introduces mechanics overhaul mods that change core gameplay systems. SFO: Grimhammer III is the foundation — every other mechanic in this wave is chosen to work with it. Start a new campaign when activating this wave.

== Total Overhaul

#mod-entry("SFO: Grimhammer III - Call of Bretonnia", "https://steamcommunity.com/sharedfiles/filedetails/?id=2792731173", "v8.1 (Jul 2026)", "None required; fully standalone", "The flagship lore-flavoured total overhaul: longer battles, faction-mechanic reworks, slower XP progression, optional unit caps, and everything rebalanced against the tabletop-inspired vision. Completely replaces vanilla balance — this is the single biggest change in the whole modlist.")

== Campaign Systems

#mod-entry("Victory Conditions Overhaul", "https://steamcommunity.com/sharedfiles/filedetails/?id=3140200173", "v8.1 (Jul 2026)", "VCO - SFO Compatibility Patch (required with SFO)", "Replaces the short/long victory objectives with 3 thematic routes per faction (50–70 turns), each with unique rewards, quest battles and epilogues. Reshapes what \"winning\" means. Must be enabled at campaign start — objectives are set on turn 1.")

#mod-entry("Diplomacy Logic and Balance Katsuko", "https://steamcommunity.com/sharedfiles/filedetails/?id=3503667132", "v8.1 (Dec 2025)", "None; stated compatible with all mods incl. SFO", "Rebalances every core diplomatic factor: distance-aware war declarations, no instant trust between enemies, selling/gifting/purchasing settlements, and dynamic alliances. Diplomacy becomes logical and strategic instead of arbitrary.")

== Army & Battle

#mod-entry("Tabletop Caps: Reborn", "https://steamcommunity.com/sharedfiles/filedetails/?id=3386989556", "v8.1 (Dec 2025)", "Optional: Mod Configuration Tool for tuning", "Tabletop-style Core/Special/Rare unit caps per army, applied to the player AND the AI. Kills doomstacks and forces balanced, lore-like army compositions. The primary army-cap system for this wave.")

#mod-entry("AI Recruitment & Army Compositions (8.1.1)", "https://steamcommunity.com/sharedfiles/filedetails/?id=2789853654", "v8.1.1 (Jul 2026)", "None; incompatible with mods touching cdir_military_generator", "Rewrites how the AI builds armies: more line infantry, capped ranged/artillery/monsters, and themed templates per legendary lord. AI fielding balanced armies instead of spam. Incompatible with Campaign AI Tweaks — do not run both.")

#mod-entry("Siege AI & Mechanics Overhaul", "https://steamcommunity.com/sharedfiles/filedetails/?id=2846183349", "v8.1 (May 2026)", "None; compatible with most garrison mods", "Reworks sieges: the AI attacks instead of attrition-starving, defensive buildings grant attrition/ammo/upkeep bonuses, no post-battle tower building, healthier gates and walls, and reworked settlement battle types.")

== Notes

Wave 2 mechanics mods are deep gameplay changes. Activate SFO first, then the rest. The VCO-SFO compatibility patch and SFO content patches for Wave 1 mods are listed in the mechanics and content sections — read those before launching. Never pair SFO with Radious Total War (see conflicts.conf). Start a fresh campaign.
