#let mod-entry(name, url, version: none, verified: none, deps: none, impact: none, notes: none) = {
  block(fill: rgb("#f2ead9"), inset: 10pt, radius: 4pt, stroke: 0.5pt + rgb("#b3492e"))[
    #link(url)[#text(weight: "bold", size: 11pt, fill: rgb("#8c2b2b"), name)]
    #if version != none [#v(4pt) *Version/Updated:* #version]
    #if verified != none [#v(3pt) *Verified:* #verified]
    #if deps != none [#v(3pt) *Dependencies:* #deps]
    #if impact != none [#v(3pt) *Impact:* #impact]
    #if notes != none [#v(3pt) *Notes:* #notes]
  ]
}

== The Outlander: Graphics

The four mods in this section change how the world and your outpost *look* — the weather overhead, the shape of the buildings you place, the flavour of old-world construction, and the ground under everything. None of them touches gameplay numbers, so the power-spike test is passed untouched. This is the wave where your base starts to look like *yours* instead of a copy of every other camp in the Border Zone.

#mod-entry(
  "Mood Weather",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=3300660383",
  version: "Updated 12 Jan 2025 (posted 31 Jul 2024)",
  verified: "YES — Steam Workshop page fetched twice (2026-08-03); title matches",
  deps: "None — self-contained; author recommends pairing with Particle System Override and Reduced Particle Effects",
  impact: "Edits the vanilla weather system to be more beautiful and varied: recoloured clouds and fog, varying amounts of cloud in most weathers, wind and clouds in the Arm of Okran, ground-sand effects in dust storms, black rain in the Deadlands, and fog added to misty rain. Adds no new weather types and does not change how often weather occurs.",
  notes: "75,814 subscribers, 630 ratings, by crunk aint dead. The compatibility note is important: it makes existing weather *look* better without touching frequency or new weather events, so it slots into the strategy chapter's 'read the landscape' advice unchanged.",
)

#mod-entry(
  "Flipped Buildings",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=2672839646",
  version: "Updated 15 Mar 2025 (posted 4 Dec 2021)",
  verified: "YES — Steam Workshop page fetched twice (2026-08-03); title matches",
  deps: "None — unlocks via the same techs as their vanilla counterparts (Small House, Medium Building shell, Large Building shell)",
  impact: "Adds 14 mirrored versions of vanilla buildings — Small Shack, Storm House (and Lagoon variant), Bughouse, Y-house, L-House (and Lagoon), Longhouse, Snailhouse (and Lagoon), Stephouse, Stationhouse, Watchtower, Broken Watchtower — which appear in a 'BUILDINGS - Flipped' category after researching the same techs as the originals.",
  notes: "43,910 subscribers, by MARH. The author calls them 'simple mirror images of vanilla buildings' — pure layout variety for denser town planning, no stat or gameplay change. No save import required; dismantle flipped buildings before removing the mod.",
)

#mod-entry(
  "Forgotten Buildings",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=1679230269",
  version: "Updated Feb 2024 (posted 9 Jun 2019)",
  verified: "YES — Steam Workshop page fetched twice (2026-08-03); title matches",
  deps: "None — but load-order requirements (see Notes)",
  impact: "The largest collection of buildings and furniture from older Kenshi builds and non-player towns: over 400 new buildings and furniture pieces to construct plus another 300 copies with alternative textures. Includes Tier 5 and concrete walls, moor buildings, swamp buildings, platforms, walkways and fences, hive huts, cannibal shacks, metal buildings, outpost s-I/II/V, Lagoon buildings, outpost citadels and vast factory pieces.",
  notes: "~28k subscribers, by Mechanica. Load-order rules from the page: Slopeless must sit *above* Forgotten Buildings (wrong order makes some buildings impossible to place), and texture mods like Compressed Textures Project must also load *above* it or some buildings appear too bright. Gives an old-world, ruined-town look that fits the Scars theme.",
)

#mod-entry(
  "Slopeless",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=1740462542",
  version: "Updated 26 Feb 2024 (posted 13 May 2019)",
  verified: "YES — Steam Workshop page fetched (2026-08-03); title matches",
  deps: "None — self-contained",
  impact: "Makes the ground flatten under buildings and walls as you place them, so you can build level floors and straight wall lines on terrain that vanilla would reject or slope. Removes one of the biggest frustrations of base building on uneven ground.",
  notes: "5,388 ratings, 22 change notes, by Gyropilot. Author confirmed the 2024 update was reverted after testing and the current Workshop build is the stable one. Required reading for the strategy chapter's 'first outpost layout' — reserve your flat lanes, then let Slopeless keep them flat.",
)
