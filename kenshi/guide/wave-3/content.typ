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

== The Expedition: Content

These five mods are the places and the people of the expedition — the corrected geography that makes the map honest, forty-two unique recruits scattered across it, a new hive race in the northern wastes, hidden dwarven weapons and their finders, and an Ashlander frontier on the far southeast. Everything here rewards travel and discovery: the recruits must be found and earned, the dwarven craft sits behind map-hint clues, and the Ashlander towns are deep in hazard territory. This is content that exists to be *walked to*.

#mod-entry(
  "Accurate Zones Patch",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=3379831802",
  version: "Posted and updated 11 Feb 2025",
  verified: "YES — Steam Workshop page fetched (2026-08-03); title matches; Steam API confirms posted/updated 2025-02-11, 34,124 subscribers",
  deps: "None — edits areasmap.tga (zone borders); independent of the GUI map texture (Nice Map) and terrain textures (Biome Edits)",
  impact: "Rebuilds the zone-border texture so borders match where the land actually changes: zones now extend to the coasts (no more 'NONE' border zones), Obedience is expanded, the Burning Forest is shifted to its true location, Dreg is bigger, and Shun is connected to Spider Plains by a coastal bridge next to Arach. Adds habitable islands, redraws the Sinkuun/Great Desert and Swamp borders, and — per the author — leaves *no safe spaces in the Ashlands*.",
  notes: "A cartographer's mod: it fixes the map so the world reads true, which pairs perfectly with the expedition's mapmaking arc and with any map mod. The author notes it does not change biome gameplay effects, only where they begin and end. 34,124 subscribers, tags Map/Gameplay.",
)

#mod-entry(
  "42 Unique Recruits",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=2013487537",
  version: "Posted 3 Mar 2020, updated 4 Jul 2026",
  verified: "YES — Steam Workshop page fetched (2026-08-03); title matches; Steam API confirms posted 2020-03-03, updated 2026-07-04, 19,333 subscribers",
  deps: "None — standalone; a pinned spoiler-tagged Recruiting Guide on the workshop page maps every recruit",
  impact: "Adds 42 findable unique recruits scattered across the map, each with their own name, stats, dialogue and story, starting with a trail that begins at The Hub. Unlike generic bar recruits they are finite — each appears once per playthrough (subject to import), so finding them is a genuine expedition goal, and several are tied to world states like vanilla uniques.",
  notes: "The wave's largest people-add. The pinned Recruiting Guide is spoilered so you can discover them on your own — the whole point of the expedition. A Japanese translation (id 3682385469) exists for non-English players. 19,333 subscribers, by Rezzurekt.",
)

#mod-entry(
  "Race | Northern Hive",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=3061446030",
  version: "Posted and updated 11 Mar 2024",
  verified: "YES — Steam Workshop page fetched (2026-08-03); title matches; part of the author's 'Trinity' collection; Steam API confirms posted/updated 2024-03-11, 1,991 subscribers",
  deps: "None — standalone new race; repopulates the vanilla Distant Hive Village in the north with its own NPCs",
  impact: "Adds a Northern Hive race to the vanilla Distant Hive Village (a real Western Hive settlement in the far north, in Sinkuun/Great Desert territory) and its surrounding region. Four subraces — Prince, Soldier Drone, Worker Drone and Queen — with a perk mix drawn from both the Western and Southern Hives, plus the unique recruit Buup. The village becomes a distinct culture with its own residents instead of a copy-paste hive.",
  notes: "Exploration content that repurposes vanilla territory rather than bolting on a new landmass — it gives the far north a reason to be visited. 1,991 subscribers, tags Characters/Race.",
)

#mod-entry(
  "Dwarven Weapons",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=2604131774",
  version: "Updated 23 Feb 2025 (posted 6 Nov 2021)",
  verified: "YES — Steam Workshop page fetched (2026-08-03); title matches; Steam API confirms posted 2021-11-06, updated 2025-02-23, 2,094 subscribers",
  deps: "None — author asks it load behind GUI/texture/weather mods; the latest update requires an import to activate",
  impact: "Adds a full dwarven content pack: six weapon types, a dwarven race with three clan subraces, and unique weapons and recruits *hidden in the world* with map-hint clues that point you to their locations — discovery content, not shop stock. Also adds a brewing chain (hops, malt and stout) and a crafting economy around it. Blueprints appear at the map-selling shops.",
  notes: "The definition of expedition loot: the best pieces are found, not bought, and the map-hints make the finding the gameplay. 2,094 subscribers, tags Weapons/Race/Gameplay. The import requirement on the latest update is a one-time cost worth paying before a long playthrough.",
)

#mod-entry(
  "Behind Enemy Lines - Ashlanders",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=3608066482",
  version: "Posted and updated 28 May 2026",
  verified: "YES — Steam Workshop page fetched (2026-08-03); title matches; Steam API confirms posted/updated 2026-05-28, 3,796 subscribers",
  deps: "None — standalone; expands the vanilla southeastern frontier toward and around the Ashlands",
  impact: "Fleshes out the far southeast, the expedition's true endgame: the Ashlanders faction with the towns Cinder Point and The Wracklight, the Reed Corsairs (pirates of Green Beach), a full Ashforge gear set, new NPCs and recruits, and a 'The Long March' survival start that drops you on the frontier with nothing. An optional debt-collector story thread runs through it. It makes the wasteland past the map's edge a place with people in it.",
  notes: "The newest mod in this wave (May 2026) and the capstone of the expedition: it gives the deadlands a living culture to discover. 3,796 subscribers, tags Characters/Gameplay/Faction.",
)
