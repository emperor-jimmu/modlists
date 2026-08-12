// The 3rd Coming - Enemies & Aliens category
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

== Enemies & Aliens

The opposition: alien behavior, roster, and threat level. Cards here change what you fight and how it fights back. Check each card's Impact field for difficulty and pacing changes, and Notes for any load-order requirements relative to class or gear mods.

=== Enemy Behavior Fixes

#mod-entry(
  name: "Tower Detection Fix [WOTC]",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1437605946",
  notes: "Scanning towers lose their detection radius when destroyed. WARNING: Will not work retroactively for mid-tactical saves.",
)

#mod-entry(
  name: "Spectre Vanish Fix",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1373960922",
  notes: "Now Spectre reveals himself when shooting. On the XCOM2 wiki you can read that Spectre is being revealed when using any non-movement action. Which was not true, but with this mod it becomes a reality.",
)

#mod-entry(
  name: "Turrets Are Cover [WOTC]",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1149340683",
  notes: "Turrets provide full cover, even when dead. Does not change any other stats and does not require Shen's Last Gift DLC. Note there is a bug in the base game that grants the cover bonus to targets standing next to the turret.",
)

#mod-entry(
  name: "[WOTC] Surgical SitRep Fix",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1319707742",
  notes: "Fixes a bug with the 'Surgical' SitRep (The one where you can only bring 3 Soldiers). The SitRep is supposed to reduce podsizes to 2.",
)

=== The Chosen

#mod-entry(
  name: "Chosen Dark Events Fix",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1126771111",
  notes: "Dark Events related to the Chosen will no longer fire if you killed them all. The Loyalty Among Thieves events already do this, this is just me finishing it up. Due to how Dark Events work, this will most likely require a new campaign to take effect.",
)

#mod-entry(
  name: "[WOTC] End of Mission Quotes Fix",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1351708150",
  notes: "When you finish a mission, the Chosen encounter screen is supposed to display a quote by the Chosen. However, only the Assassin has text for this, so when you defeat the Warlock/Hunter no quote is given.",
)

=== Enemy Equipment

#mod-entry(
  name: "[WOTC] Purifier Grenades Fix",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1371195713",
  notes: "I have released a newer version of this mod: Incendiary Grenade Damage Fix. Looks like the guys at Firaxis were too lazy to create a new grenade for the Advent Purifier so they decided to nerf our own grenades instead. This mod rectifies that.",
)
