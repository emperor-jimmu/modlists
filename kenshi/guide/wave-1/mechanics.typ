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

== The Outlander: Mechanics

These three mods change how the survival loop works — how food is produced, how water is found, and how crops grow on hostile land. None of them hand you food or water for free; they expand the *paths* to it, and each path comes with a cost in research, skill or setup. That keeps them on the right side of the power-spike test: they raise the ceiling of what an outpost can sustain, but only at the price of the investment the strategy chapter describes.

#mod-entry(
  "Radiant Food Expansion",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=2689916593",
  version: "Updated 14 Jan 2025 (posted 16 Jun 2022)",
  verified: "YES — Steam Workshop page fetched twice (2026-08-03); title matches",
  deps: "None — self-contained; author notes most assets are independent and should not create compatibility issues",
  impact: "Expands the food economy: new cooking research, a new main food crop for the Swamp biome (sold by vendors and cultivatable), new realistic food dishes with custom lore-friendly icons at different nutrition grades, restoration of Gristle-Flaps, more uses for fish, balanced nutrition values and prices, special food for animals, a new contraband item (Devil Wine), and full fishing implementation.",
  notes: "577 Steam ratings. The author's own description banner reads 'Last updated on 13/02/2023' but the Workshop changelog shows later activity to 14 Jan 2025. Focused on the Swamp start that vanilla under-serves; pairs naturally with Wave 1's farming strategy.",
)

#mod-entry(
  "Deep Wells",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=738863246",
  version: "Posted 3 Feb 2018 (no updates since)",
  verified: "YES — Steam Workshop page fetched (2026-08-03); title matches; author comment in same thread confirms it still works on current Kenshi",
  deps: "Requires Wells III research",
  impact: "Adds a deep well that draws water from underground rivers and does not require surface water in the area — opening base sites on dry land that vanilla would starve for water.",
  notes: "~62,000 subscribers, 223 ratings. In the first comment the author wrote 'I was 90% positive mod broke somewhere along the updates... Thank you for checking this out' after a user confirmed it still works — the strongest community signal a 2018 water mod remains functional on 1.0.68.",
)

#mod-entry(
  "Moisture Farming",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=1321702013",
  version: "Posted 5 Mar 2018 (1 change note, 2018)",
  verified: "YES — Steam Workshop page fetched (2026-08-03); title matches",
  deps: "Tech level 3 + Wells 3 + 1 Ancient Science Book",
  impact: "Adds the Moisture Collector, which gathers water passively from the air and is buildable indoors and outdoors — letting desert outposts and in-town hydroponics labs water themselves without wells or micromanaged hauling.",
  notes: "3,122 ratings, 289 comments. Requires the stated research or it will not appear in the build menu. Author documents a known navmesh quirk where Collectors can stop hauling to storage (a vanilla Kenshi bug) and gives the Ctrl+Shift+F11 NavMesh rebuild as the fix.",
)
