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

== The Smith: Content

These four mods add what you can craft and build — a structured armour-crafting system, the two top weapon grades vanilla never lets you forge, crossbows mounted as turrets, and a turret you can carry. The wave's rule holds: none of these unlock without research. Meitou-grade weapons demand Smithing 60 and AI Cores; the crossbow turrets sit behind the Mounted Crossbows research chain; the portable kit needs Mounted Crossbow 2, Crossbow Crafting, an Engineering Research and two Ancient Science Books before the first plate is hammered.

#mod-entry(
  "Armor Crafting Redux - Core",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=3585383286",
  version: "Posted and updated 12 Oct 2025",
  verified: "YES — Steam Workshop page fetched (2026-08-03); title matches; part of the 'Crafting Redux Series' collection (id 3586168016) by 2PercentNate; Steam API 820 subscribers",
  deps: "None — fully modular; core of the 10-module Crafting Redux Series",
  impact: "A modular overhaul of Kenshi's armour-crafting system: recipes are alphabetised and organised by bench and research node, blueprint clutter is cut down, all Redux benches and research appear under dedicated new categories, and unlocks come through research instead of hunting tiny blueprint icons. The original vanilla benches remain intact, so you can use Redux benches, vanilla benches, or both.",
  notes: "No stat, recipe-cost or research-tree changes — its value is organisation, which is precisely why it passes the power-spike test. The Fusion module (id 3592102980) integrates other armour mods into the Redux system; the Research Fix (id 3585385588) addresses research conflicts.",
)

#mod-entry(
  "Expanded Craftable Weapons v2.1",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=1399053728",
  version: "Updated 10 Jun 2022 (posted 31 May 2018)",
  verified: "YES — Steam Workshop page + changelog fetched (2026-08-03); title matches; Steam API confirms updated 2022-06-10, 23,792 subscribers",
  deps: "Dark UI (per the 2022-06-10 changelog — Wave 0 ships it); Weapon Smith III",
  impact: "Adds the ability to research and craft Edge Type 3 and Meitou weapon grades — the top of the ladder vanilla locks away. A new 'Weapon Smith - All Grades' bench unlocks with Weapon Smith III and crafts anything from Old-Refitted Blade up to Meitou. Edge Type 1 needs Smithing 56 / Tech Level 5 / 1 AI Core; Edge Type 2 needs Smithing 60. Homemade weapons are boosted to match existing ones and crafted sell prices are raised to match. Also unlocks 7 new previously-unobtainable Meitou weapons (Flesh Cleaver, Iron Club, Iron Stick, Long Cleaver, Mercenary Club, Naginata Katana, Spiked Club).",
  notes: "Gated hard behind research and materials — the AI Cores alone keep this a late-game forge. The changelog notes v2.1 fixed Meitou criticals that were 'too OP' and broken mixed-grade crits, showing the author actively balances the top end. 23,792 subscribers.",
)

#mod-entry(
  "Vanilla Crossbow Turrets",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=2240666581",
  version: "Updated 12 Dec 2022 (posted 27 Sep 2020)",
  verified: "YES — Steam Workshop page fetched (2026-08-03); title matches; Steam API 2,146 subscribers",
  deps: "Mounted Crossbows research (Junkbow), then Mounted Crossbows II for the rest",
  impact: "Adds five vanilla crossbows as wall-mountable turrets, each with its own character: the Mounted Junkbow (quick to build, low performance), Mounted Tooth Pick (high rate of fire, low power), Mounted Ranger (very easy to handle), Mounted Spring Bat (high power, low hit rate) and Mounted Eagle's Cross (high range, high power, low rate of fire). A 'Crossbow Turret Spotlight Fitting' research adds light-bearing versions of the four mid-to-top turrets.",
  notes: "Pure research-gated content with no stat inflation — each turret is a vanilla crossbow bolted to a mount, using the existing Crossbow skill. Complements the strategy chapter's defense-in-depth from Wave 1 by filling the mid-game gap before Harpoon Turrets. 2,146 subscribers, by Ikahurula.",
)

#mod-entry(
  "Portable Crossbow Turret kit",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=2563788360",
  version: "Updated 27 Apr 2024 (posted 2 Aug 2021)",
  verified: "YES — Steam Workshop page fetched (2026-08-03); title matches; Nexus 747 confirmed as official mirror ('Steam version official'); Steam API 19,499 subscribers",
  deps: "Tier 3/4 after Mounted Crossbow 2 + Crossbow Crafting; costs 1 Engineering Research + 2 Ancient Science Books",
  impact: "Adds a Portable Crossbow technology research, one crafting recipe (the kit: 8 iron plates + 2 spring steels, ~6 hours for an experienced crafter), a camping-building Portable Crossbow Turret that works for defense, hunting, sieges or as a regular-turret substitute, and a storage furniture piece for kits and sleeping bags. In practice it replaces hauling iron plates to fixed outposts — it does NOT create an outpost when built.",
  notes: "Immersive and balance-conscious by the author's own design. 19,499 subscribers; the author notes it works without import but recommends one after sorting load order. Fits the strategy chapter's 'forge on the move' expedition smith.",
)
