// The 3rd Coming - Weapons & Gear category
// Cards transcribed from the user-supplied [WOTC] Core Collection baseline (2026-08-12).
// Card format:
//   #mod-entry(name: "Mod name", url: "https://steamcommunity.com/...", deps: "...", impact: "...", notes: "...")
// A field the user did not supply stays out of the card.

// mod card renderer (include scope does not share #let bindings from template.typ)
#let mod-entry(name: none, url: none, deps: none, impact: none, notes: none) = {
  let cyan = rgb("#00e5ff")
  let card = rgb("#131a26")
  let hairline = rgb("#263449")
  v(5pt)
  block(
    fill: card, inset: (x: 12pt, y: 10pt), radius: 6pt, stroke: 0.6pt + hairline,
    width: 100%,
  )[
    #if name != none [
      #if url != none [
        #link(url)[#text(weight: "bold", size: 12pt, fill: cyan, font: "Bahnschrift", name)]
      ] else [
        #text(weight: "bold", size: 12pt, fill: cyan, font: "Bahnschrift", name)
      ]
    ]
    #if deps != none [#v(5pt) #text(weight: "bold", fill: cyan)[Dependencies:] #deps]
    #if impact != none [#v(3pt) #text(weight: "bold", fill: cyan)[Impact:] #impact]
    #if notes != none [#v(3pt) #text(weight: "bold", fill: cyan)[Notes:] #notes]
  ]
  v(4pt)
}

== Weapons & Gear

Items, equipment, and loadout options: new weapons, armor, and utilities for the squad. Check each card's Impact field for balance changes, and Notes for where the new gear appears (proving ground, engineering, loot, or starting kit).

=== Weapon & Upgrade Fixes

#mod-entry(
  name: "[WotC] Weapon Fixes",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1737532501",
  notes: "This mod fixes a few issues with weapons and their upgrades, especially if you use mods which allow upgrades for (auto)pistols. (eg Primary Secondaries, Pistol Overhaul, Autopistol Overhaul)",
)

#mod-entry(
  name: "Remove Weapon Upgrades",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1162274976",
  notes: "Allow you to remove weapon upgrades and PCS instead of just replacing them when you are allowed to reuse them (such as Interchangeable Upgrades breakthrough), so you don't need all the placeholder upgrades/PCS to move your weapon upgrades/PCS around.",
)

#mod-entry(
  name: "Improved Rocket Targeting",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2067720616",
  notes: "Improves Rocket Launcher Targeting in conjunction with recent changes done by the X2WotCCommunityHighlander (although it's not a requirement).",
)

=== Armor Fixes

#mod-entry(
  name: "[WOTC] R.A.G.E. Armor Tech Fix",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2235945732",
  notes: "A simple fix to a minor bug: R.A.G.E. Armor Tech category is set to Plated when it should be Powered. This mod simply changes it to Powered. This is useful if you have mods that add/alter effects based on the Armor Tech category.",
)

#mod-entry(
  name: "More Effective Blast Padding",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1379047477",
  notes: "Makes explosions from cars and other destructible objects (think gas tanks) be affected by blast padding. Should work in any situation except when loading into a tactical mission (you will need to complete the mission before it'll take effect).",
)
