// The 3rd Coming - Quality of Life category
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

== Quality of Life

Convenience and automation that remove busywork: faster actions, smarter defaults, and information that should have been visible anyway. The stated goal is fewer clicks and fewer surprises - not easier battles. Check each card's Impact field for exactly what it changes.

=== Camera & Controls

#mod-entry(
  name: "Free Camera Rotation",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=616359783",
  notes: "Sets default rotation angle to 45 degrees. Enables free camera rotation while holding down Q and E keys (in analog mode, see hotkeys).",
)

#mod-entry(
  name: "Clean Camera Angles Fix",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1138494689",
  notes: "For use with mods that alter the camera rotation to be 45 degrees instead of the default 90 (i.e Free Camera Rotation, LW2).",
)

#mod-entry(
  name: "[WotC] Better Grappling!",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1486607466",
  notes: "Have you ever had that annoyance of grappling points highlighting but not being able to select them with the mouse? This is particularly prevalent in the final mission, but there are occurrences on other maps.",
)

#mod-entry(
  name: "[WOTC] Fixed Sniper Hotkeys",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2724738740",
  notes: "This is a WOTC port of ADVENT Avenger's Fixed Sniper Hotkeys mod, fixing the incompatibilities with Evac All of the original mod.",
)

=== Action Convenience

#mod-entry(
  name: "Overwatch All/Others WotC",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1133368143",
  notes: "Adds the ability to put all/other units with action points on Overwatch. This mod will save you a lot of time.",
)

#mod-entry(
  name: "[WOTC] One squad on new Avenger defense",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1504056921",
  notes: "Changes the chosen defense mission to use 1 squad of 10 instead of 2x5. This is much more convenient when you have robojumper's Squad Select that can display more than 6 soldiers at once.",
)

#mod-entry(
  name: "Evac All - WotC",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1126395106",
  notes: "The game is not receiving updates, nor is the mod. When they suddenly stop working for people it's inevitably a conflict/configuration issue on the user.",
)

#mod-entry(
  name: "[WOTC] Mission Launch Auto Save",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2847584316",
  notes: "This simple mod creates an Auto Save on the Avenger whenever you click 'Launch' in Squad Select, using the name of the Operation as the name of the save file. This can be useful if your game tends to crash when loading into a mission.",
)

#mod-entry(
  name: "[WOTC] Instant Color Menus",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3259657201",
  notes: "Makes color selection menus load much faster. This feature is taken from Stop Wasting My Time - WotC, all credits go to their original authors. I just wanted this one feature without other things done by that mod.",
)

=== Loot & Economy

#mod-entry(
  name: "[WOTC] Loot Post Mover",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2043070900",
  notes: "The aim of this mod is to split the loot drop posts from the centre of the drop zone to the fore and aft edges, so that should you get a Psi/Focus Loot in the same spot as a Vulture/Timed Loot, both are easily visible.",
)

#mod-entry(
  name: "[WOTC] Sell Heavy Weapons",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1473750434",
  notes: "Every item in the game, whether it be a weapon, an armor, or a utility item, has a price. The only thing that keeps XCOM from selling their entire stock to the Black Market is this set of restrictions.",
)

=== Recovery

#mod-entry(
  name: "[WOTC] Reliable Wounds",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1149730999",
  notes: "This mod makes wound/repair times depend on wound severity, like MachDelta's Wound Recalibration. A soldier with a lighter wound will never take longer to heal than a soldier with a heavier wound.",
)
