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


== Wave 0 — Modlist: Vanilla + UI/QoL

This wave contains only vanilla-compatible and QoL UI mods. No gameplay-altering mechanics are included.

== UI & Quality of Life

#mod-entry("Better Camera Mod", "https://steamcommunity.com/sharedfiles/filedetails/?id=2789858755", "v8.1 (Jul 2026)", "", "Unlocks closer and further camera zoom heights in battles and on the campaign map, and lets you zoom without units popping out of view. Makes battles feel more cinematic and easier to watch. Purely camera QoL with no gameplay change.")

#mod-entry("Cpecific's Skill Queue: Jazzed Edition", "https://steamcommunity.com/sharedfiles/filedetails/?id=3720243387", "v8.1 (Jul 2026)", "Memreader (win64)", "Lets you build skill templates and auto-assign skill points to every new lord and hero as they level up — never hand-click a skill tree again. The community-maintained fork of the original Skill Queue, with saved-game and faction templates plus auto-granted-skill detection. Saves hours; gives no gameplay advantage.")

#mod-entry("Memreader (win64)", "https://steamcommunity.com/sharedfiles/filedetails/?id=2789863945", "v8.1", "", "Required memory-access library for Skill Queue and similar QoL mods. Windows x64 only. Install before any mod that lists it as a dependency.")

#mod-entry("The Tooltip Project", "https://steamcommunity.com/sharedfiles/filedetails/?id=3588380343", "v8.1 (Jul 2026)", "", "Rewrites unit and spell tooltips so they tell you what actually matters: collision attacks, melee regeneration, hidden stat mechanics, and whether a buff spell is single- or multi-target. Information-only UI clarity — the author states it will never touch gameplay.")

#mod-entry("Building Progression Icons III", "https://steamcommunity.com/sharedfiles/filedetails/?id=2790007728", "v8.1 (Dec 2025)", "", "Replaces flat building icons with artwork that visibly changes as each building is upgraded, so settlement state is readable at a glance. Purely cosmetic.")

#mod-entry("Speedy Turn Camera", "https://steamcommunity.com/sharedfiles/filedetails/?id=2792727547", "v8.1 (May 2026)", "", "Speeds up the camera pan between factions during the AI's turn, so long end turns feel much faster. Changes a single database value — it does not speed up AI processing, just the camera travel.")

#mod-entry("High Resolution UI Improvements, YES IT STILL WORKS", "https://steamcommunity.com/sharedfiles/filedetails/?id=2790774407", "v8.1 (Dec 2025)", "", "Resizes the recruitment, diplomacy, lord/hero, objectives, army-view and custom-battle panels so they display correctly on 1440p+ monitors. Note: some users report the recruitment panel can lag or freeze on 3440x1440 ultrawide.")

#mod-entry("Skip Intro", "https://steamcommunity.com/sharedfiles/filedetails/?id=2811310125", "v8.1 (May 2026)", "", "Skips the startup intro videos and the epileptic-seizure warning at launch. Small convenience; be aware that running any mod adds a \"Modified Game\" confirmation popup at launch.")

== Notes

Wave 0 is designed for new players. The mods here only improve the interface and quality of life — nothing changes core game balance or mechanics. Skill Queue requires Memreader; install both or the preset features will misbehave.
