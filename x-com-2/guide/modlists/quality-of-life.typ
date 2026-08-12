// The 3rd Coming - Quality of Life category
// Cards transcribed from the user-supplied [WOTC] Core Collection baseline (2026-08-12)
// and the LWOTC Community QoL Collection (2026-08-12, advanced-wave suggestions).
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

=== Speed & Pacing

#mod-entry(
  name: "Stop Wasting My Time - WotC",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=620600092",
  notes: "Speeds up the game by removing pointless pauses and other time-wasters. All changes are purely cosmetic. UPDATED TO SUPPORT WAR OF THE CHOSEN!",
)

#mod-entry(
  name: "[WOTC] Faster Reload Animations",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1140240051",
  notes: "Significantly increases reload animation speed so you don't have to wait for them before performing the next action.",
)

#mod-entry(
  name: "Instant Avenger Menus - WotC",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1124410215",
  notes: "Makes all transitions in the Avenger instant + other time savers. Creates a much smoother experience, particularly on lower framerates. UPDATED TO SUPPORT WAR OF THE CHOSEN!",
)

#mod-entry(
  name: "Still Stop Wasting My Time",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1793418015",
  notes: "Port of the vanilla mod Quicker Abilities + geoscape speedup. Increases the speed on the geoscape (everything from scanning to avenger/skyranger movement) by three times and makes certain slow abilities animate much quicker.",
)

=== Geoscape & Time

#mod-entry(
  name: "Pause World Time In Hours",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2949521981",
  notes: "Combines Pause World Time and Hours Instead of Days to make them compatible and feature complete. The geoscape clock will not tick forward until you scan at a site or fly somewhere. Missions and scan sites will display how long they will last.",
)

#mod-entry(
  name: "Pause Scanning [WOTC]",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1154579172",
  notes: "Automatically stop scanning when a soldier heals, recovers from being shaken, finishes removing negative traits in the infirmary, or completes leveling up a bond. Disabled by default: pause for ANY fatigue timer (not just if the soldier was shaken).",
)

#mod-entry(
  name: "Narrative Control",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1334298434",
  notes: "Allows you to restrict the constant flow of NPC chatter that the game throws at you. You can remove Bradford's narrative events entirely, remove narratives on the Geoscape, or remove narrative events from any part of the game.",
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

#mod-entry(
  name: "Remove Missing Mods for WotC",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1127050498",
  notes: "Designed to remove the links to mods you are no longer using. It is meant to disturb as little as possible and leave no trace.",
)

#mod-entry(
  name: "[WOTC] Controllable Put Down Unit",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2796040662",
  notes: "Allows you to control where to put down the body you are carrying. You can do cool things with it, like Phantom Evac and Corpses Alert Enemies + Hideable Bodies.",
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

#mod-entry(
  name: "[WotC] Instant Loot",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1440233515",
  notes: "Removes popup and animations on loot pick ups. You can configure what to disable using Mod Config Menu (Options -> Mod Settings -> Instant Loot).",
)

#mod-entry(
  name: "[WOTC] Dude, Where's My Loot?",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2878818143",
  notes: "Fixes issues with loot not dropping when it arguably should. Essentially a fixed version of Loot Mind Control. Fixes loot picked up by player-controlled units that are not your own soldiers (Double Agent) and related cases.",
)

=== Stat & Gear Fixes

#mod-entry(
  name: "Negative Mobility Fix",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2806444314",
  notes: "It's not just for LWOTC / Mod Jam players, it's for all WOTC players, but it's going to be more relevant to you the more mods you have that add things like enemies, abilities, and gear.",
)

=== Recovery

#mod-entry(
  name: "[WOTC] Reliable Wounds",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1149730999",
  notes: "This mod makes wound/repair times depend on wound severity, like MachDelta's Wound Recalibration. A soldier with a lighter wound will never take longer to heal than a soldier with a heavier wound.",
)
