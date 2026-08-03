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

== The Wanderer: Graphics

The two mods in this section change how the game *looks* — the interface skin and the world map — without changing how the game plays. Wave 0 keeps the world's own textures and colours untouched; these two purely improve readability and comfort.

#mod-entry(
  "Dark UI",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=1200632417",
  version: "Updated 9 Aug 2020 (posted 13 Nov 2017)",
  verified: "YES — Steam Workshop page fetched; title matches",
  deps: "None — self-contained",
  impact: "Recolours the entire interface to a dark, high-contrast theme that is much easier to read through dust storms and long nights, and is the community-standard base skin that other UI mods build on.",
  notes: [11,897 Steam ratings, the most-subscribed Kenshi UI mod. Best at 1920x1080 borderless; Kenshi's UI scales poorly on some resolutions. Nexus mirror: #link("https://www.nexusmods.com/kenshi/mods/253")[Dark UI].],
)

#mod-entry(
  "Nice Map [Zones + Zone names + Roads]",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=1613829988",
  version: "Updated 29 Jan 2019 (posted 3 Jan 2019)",
  verified: "YES — Steam Workshop page fetched; title matches",
  deps: "None — self-contained",
  impact: "Replaces the world-map texture with a hand-crafted version that shows zone outlines, zone names and roads, making travel planning dramatically clearer for a new wanderer.",
  notes: "8,103 ratings, 626k+ subscribers. Pure GUI_Map.dds texture swap; author confirmed in Nov 2025 that Kenshi's map texture is unchanged and the mod still works. The road-only 'Nice Map' style also exists for purists.",
)
