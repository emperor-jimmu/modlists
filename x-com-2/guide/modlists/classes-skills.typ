// The 3rd Coming - Classes & Skills category
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

== Classes & Skills

Soldier classes, abilities, and skill trees: how your operatives grow and what they can do in a fight. These cards carry the heaviest mechanic impact - read each card's Impact field before enabling, and check Dependencies for class-framework requirements.

=== Ability Fixes

#mod-entry(
  name: "Avenger Defense Bondmates Fix",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1176368634",
  notes: "Fixes soldiers not having bondmate abilities if their partner spawned as reinforcements on Avenger Defense. Checks and fixes both bondmates at the point the second one is added to the map.",
)

#mod-entry(
  name: "[WOTC] Reliable Ever Vigilant",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2071833199",
  notes: "ALL CREDITS FOR THIS MOD GO TO -bg-. I HAVE MERELY COMPILED AND FIXED THE MOD FOR WOTC.",
)

#mod-entry(
  name: "[WOTC] Ability Interaction Fixes",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1129878719",
  notes: "This is a War of the Chosen mod. 'Ability Interaction Fixes' primarily fixes several 'Ability Interactions' which are in some way bugged.",
)

#mod-entry(
  name: "[WotC] Scanning Protocol Fix",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2365326252",
  notes: "Scanning Protocol Fix fixes the highlighted effect of Scanning Protocol and Battlescanners still being applied even if you can see the enemy. Scanning Protocol will no longer fill the battlefield with ugly red blobs!",
)

=== Class Mechanics

#mod-entry(
  name: "[WOTC] SPARK Repair Fix",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1440747908",
  notes: "'Send the BIT to a damaged robotic ally and repair it. Advanced BITs can repair slightly more.' 'Upgrading your BIT will lead to more HP repaired.' 'The upgraded plated model improves the damage and healing capabilities of the BIT.'",
)

#mod-entry(
  name: "[WOTC] More Psionic Units",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1489268865",
  notes: "This mod makes the following combatants count as Psionic units: The Assassin, The Hunter, The Warlock, Spectral Lancers, Spectral Zombies, Psi Zombies, Templars, Templar Ghosts, Templar Disciples - If you have Additional Mission Types Redux installed.",
)

#mod-entry(
  name: "WotC: \"Increase Combat Intelligence\" for everyone",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1134537412",
  notes: "There are covert actions that allow you to improve combat intelligence for soldiers... except for hero classes, who ironically need them the most.",
)
