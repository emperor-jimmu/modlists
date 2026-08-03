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

== The Conqueror: Content

These five mods are what Wave 4 is actually about: the world-state engine that makes conquest matter, two faction-expansion packs that make the north's enemies formidable, a minor faction you can earn as an ally, and a roaming war machine to test your ranged doctrine. Everything here makes the *world* respond — to your conquests, to the leaders you remove, and to the territories you push into. The one thing none of them do is hand you victory cheaply: the enemies get stronger, the world reacts harder, and the allies are earned through a rescue, not purchased.

#mod-entry(
  "Reactive World",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=1358096888",
  version: "Posted 10 Apr 2018, updated 12 Apr 2026",
  verified: "YES — Steam Workshop page fetched (2026-08-03); title matches; Steam API confirms posted 2018-04-10, updated 2026-04-12, 570,088 subscribers",
  deps: "None required — highly-suggested companion KenshiExtensionPlugin requires RE_Kenshi (Nexus 847), which this list rejects for its 1.0.65 downgrade, so it is NOT included here; needs the 'Reactive World + RP fCats - Patch' if run with Recruit Prisoners for Cats",
  impact: "The world-state overhaul: fills out the areas left lacking by the developers' world-reaction systems. Factions act on your deeds — the Western Hive goes crazy if their Queen is kidnapped and push to rescue her; the Holy Nation's remnants gather around new hidden leaders after you take out theirs, launching regular raids until you hunt the leaders down; The Hub rebuilds under the Shek Kingdom or Holy Nation if their forces take territory; cannibals are given separated faction dynamics; a world-state-checking character and a spawner tool are added to Waystations for debugging world-state triggers.",
  notes: "By Shidan, one of the most-adopted Kenshi overhaul mods (570,088 subscribers) and the wave's centrepiece: it turns world conquest from a bare mechanic into a reactive story. Now built on Rustled's Unique Settlement Placements base for better compatibility with other mods that move settlements. The companion plugin's RE_Kenshi requirement is flagged, not hidden — this list stays strict-1.0.68.",
)

#mod-entry(
  "Cannibals Expanded",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=1654903438",
  version: "Posted 14 Feb 2019, updated 1 Aug 2019",
  verified: "YES — Steam Workshop page fetched (2026-08-03); title matches; Steam API confirms posted 2019-02-14, updated 2019-08-01, 241,074 subscribers",
  deps: "None — author states 'should be compatible with reactive world'; only conflicts with mods that change what equipment the cannibals use; a compatibility patch exists for New Weapons Dissemination (id 1655162336) if that mod is also run",
  impact: "Expands the cannibal faction with new armours, weapons and enemies: new powerful units (the Mancatchers, Tenderizers and Punishers), upgraded high-ranking leaders (the Grand Wizard, Meat Lord and Canhead) with new gear, and all-new weapons with rare quality grades to find. Author warning: this makes the cannibals 'a more formidable force.' Requires import.",
  notes: "Part of the author's faction-expansion series alongside Shrieking Bandits Expanded (same modlist, same wave). 241,074 subscribers — the most-adopted endgame-enemy expansion on the Workshop. The author notes the mod is on indefinite hiatus, but the content is complete and the page is explicit about compatibility.",
)

#mod-entry(
  "Shrieking Bandits Expanded",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=1648289968",
  version: "Posted 8 Feb 2019, updated 4 Aug 2019",
  verified: "YES — Steam Workshop page fetched (2026-08-03); title matches; Steam API confirms posted 2019-02-08, updated 2019-08-04, 92,851 subscribers",
  deps: "None — same author and design language as Cannibals Expanded; a community patch exists for Recruit Prisoners for Cats (id 3762173251)",
  impact: "Expands the Shrieking Bandit faction with all-new original armour, weapons and enemies: themed squads (the Babblers, the Howlers, the Moaning Samurai, the Screeching Beasts and the mysterious footmen), each led by a new squad leader, plus unique armour and weapons to find on them. Author warning: 'this will make the Shrieking forest a more dangerous location!'",
  notes: "The companion to Cannibals Expanded in the author's faction-expansion series — together they make the two northern threats genuinely formidable. 92,851 subscribers. Also flagged as on indefinite hiatus by the author; content complete. Load below Reactive World so its new gear applies to the reworked faction.",
)

#mod-entry(
  "Minor Faction Overhaul - Sand Ninjas",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=3007370629",
  version: "Posted 20 Jul 2023, updated 27 Mar 2025",
  verified: "YES — Steam Workshop page fetched (2026-08-03); title matches; part of the author's 'Shears' Faction Expanded Mods' series; Steam API confirms posted 2023-07-20, updated 2025-03-27, 14,356 subscribers",
  deps: "None — standalone faction edit; import needed only to trigger the ally quest (the armour and patrols work without it)",
  impact: "Improves the Sand Ninja faction into an allyable one: rescue one of their strongest Jounins from the United Cities to ally with them, after which they protect your squad when you pass them in the desert and assist in Slaver and Hero League raids. Adds two unique armours (the Assassin's Plate and the Ninja Hood, found in armour shops) and extends their patrols into Skimsands and Heng.",
  notes: "Diplomacy as a quest chain: the ally is earned by a rescue, not bought. The author's series (12 mods) expands minor factions one at a time; this is the desert one and the natural fit for a conquest wave. 14,356 subscribers, tags Characters/Factions.",
)

#mod-entry(
  "Thrashers - New 'Old Machines' Enemy Type",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=1867833366",
  version: "Posted 20 Sep 2019, updated 21 Jan 2020",
  verified: "YES — Steam Workshop page fetched (2026-08-03); title matches; Steam API confirms posted 2019-09-20, updated 2020-01-21, 59,776 subscribers",
  deps: "None — adds a roaming enemy type to the world; loads anywhere above content",
  impact: "Adds a new enemy type: thrashers — slow, plodding 'mobile ranged platforms' from the old wars that can fire walls of razor-sharp harpoons. Unmatched at range and nearly defenceless at close range, they 'can waste your squad from 500 meters away before you even see it' — the author's stated purpose is a walking gun platform 'to test your party's raiding potential on the fly.'",
  notes: "The endgame-enemy capstone and the mod that rewards a ranged-approach doctrine: close distance fast or pay the price. 59,776 subscribers. Fills an empty niche — a mid-to-late-game threat that punishes standing off and shooting it out at range.",
)
