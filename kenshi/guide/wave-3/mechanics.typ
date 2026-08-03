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

== The Expedition: Mechanics

These three mods change how you *live* on the road — how you camp without an outpost, and how trade moves between towns without a caravan of your own. None of them erases the survival layer; they widen what a travelling squad can carry, build and sell. Camping still consumes your food and your bed-repair supplies, tents still cost materials and backpack space to carry, and the drifters' caravans are deliberately weaker and poorer than the Traders Guild's. They are tools for a journey, not a teleport.

#mod-entry(
  "Sensible Nomadism - A Camping Overhaul",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=2419780900",
  version: "Posted and updated 9 Mar 2021",
  verified: "YES — Steam Workshop page fetched (2026-08-03); title matches; part of the author's Sensible Kenshi series; Steam API confirms posted/updated 2021-03-09, 26,494 subscribers",
  deps: "None — replaces no vanilla structures; works with the vanilla Camping build category and stacks with Tents",
  impact: "A full overhaul of living without an outpost. Adds a Field Research Table (research at 60% of a Small Research Bench's speed — tech level 1, no outpost required), campsite storage, a prisoner pole, a cooking pit, a hidden stash, a Landmark (a custom map marker you can name and leave anywhere) and seating that reduces hunger rate. Seven new shelters round out the camp, and everything is designed so a squad can live in the wild indefinitely without ever claiming land.",
  notes: "By Rebitaay, the author of the Sensible Kenshi series. The Landmark alone is worth the install: it turns a known map location into a named waypoint, which is exactly what a wandering cartographer needs. 26,494 subscribers, tags Buildings/Gameplay.",
)

#mod-entry(
  "Tents",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=1861940196",
  version: "Posted 13 Sep 2019, updated 15 Sep 2019",
  verified: "YES — Steam Workshop page fetched (2026-08-03); title matches; Steam API confirms posted 2019-09-13, updated 2019-09-15, 72,614 subscribers",
  deps: "None — deployable in the wild like any camping structure; needs a Tent Kit crafted at the Kit Maker",
  impact: "Adds Survival Tents in three sizes (1x, 3x and 5x) deployable in the field, plus a Kit Maker that turns materials into Tent Kits to carry. Tents heal at the same rate as a vanilla Camp Bed (x4) and give partial acid rain protection, and critically they do *not* create a town when deployed — your squad stays nameless, anonymous and unclaimed.",
  notes: "The most-subscribed camping mod in this wave (72,614) and the natural bed layer under Sensible Nomadism's living layer. The 5x tent shelters a full squad; the 1x is a scout's lean-to. Tags Buildings/Crafting.",
)

#mod-entry(
  "Small Caravans",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=3302642548",
  version: "Posted and updated 4 Aug 2024",
  verified: "YES — Steam Workshop page fetched (2026-08-03); title matches; Steam API confirms posted/updated 2024-08-04, 274 subscribers",
  deps: "None — the author states it changes nothing in the base game, so it should not conflict with anything on this list",
  impact: "Adds drifter-controlled caravans — weaker and poorer than the Traders Guild's, so easier to rob and selling less — that appear according to world state: in Stenn Desert while Esata is alive, and in Okran's Pride and Okran's Gulf if the Phoenix is gone. A second source of trade goods and lootable packs on roads the big guilds avoid.",
  notes: "A small, world-state-aware flavour mod that fills the roads between the big trader routes. 274 subscribers — niche, but verified working and honest about its scope. Tags Characters.",
)
