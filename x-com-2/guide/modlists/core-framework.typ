// The 3rd Coming - Core & Framework category
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

== Core & Framework

Foundational systems other mods build on: engine-level fixes, framework libraries, and utilities that sit underneath the rest of the load. Cards in this category usually load first and are required by other categories' mods - check each card's Dependencies field.

=== Engine & Framework

#mod-entry(
  name: "X2WOTCCommunityHighlander v1.31.0",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1134256495",
  notes: "Highlander replaces a big portion of the game's code in order to make it more moddable and mod-compatible, as well as fix a lot of bugs. As implied by the name, only one Highlander mod can be used at a time.",
)

#mod-entry(
  name: "[WotC] Mod Config Menu",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=667104300",
  notes: "This mod (MCM) is a shared settings menu. Some mods require this mod in order for you to use the in-game configuration menus.",
)

#mod-entry(
  name: "[WOTC] Core Collection Meta Mod",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2166295671",
  notes: "This meta mod contains various compatibility patches, configuration and bug fixes for the mods in the Core Collection and the game itself. Other than Highlander, Core Collection Meta Mod is the closest thing we have to a 'community patch mod'.",
)

=== Stability & Performance

#mod-entry(
  name: "[WOTC] Less Overwatch Lock Ups!",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1276342555",
  notes: "'Less Overwatch Lock Ups!' is a bugfix mod, to hopefully cut down on 'soft locks' during complex overwatch/reaction fire situations, and also when a soldier is revealed by enemy movement. A 'soft lock' is when the game doesn't crash as such, but is stuck.",
)

#mod-entry(
  name: "Visibility Condition Bandaid For Rapid Fire And Friends",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2847640303",
  notes: "In high population tactical missions, abilities with followup shots can result in the game lagging whenever the unit with them moves due to the game evaluating it's use against every single target on the mission.",
)
