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

== The Conqueror: Mechanics

The single mechanics mod of this wave is the army builder — the system that turns captured enemies into paid soldiers. Everything else in the wave adds what you fight or who fights with you; this is the one that grows *your* side, and it is deliberately the strictest mod in the list. The original Recruit Prisoners handed out armies too easily — its own description admits "it was too easy to acquire an army of really strong npcs (which took the challenge and difficulty away)" — and this balanced rebuild fixes exactly that by charging cats for every loyalty. Army size is no longer a cheat; it is an expense, and the expense is the point.

#mod-entry(
  "Recruit Prisoners for Cats",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=3248118545",
  version: "Posted 17 May 2024, updated 4 Jun 2026",
  verified: "YES — Steam Workshop page fetched (2026-08-03); title matches; Steam API confirms posted 2024-05-17, updated 2026-06-04, 5,671 subscribers",
  deps: "Stand-alone overhaul of the original Recruit Prisoners — do NOT run both. Needs the 'Reactive World + RP fCats - Patch' (id 3342629343) when run with Reactive World; a community patch exists for Shrieking Bandits Expanded (id 3762173251)",
  impact: "Lets you recruit captured prisoners: knock an NPC out, cage them, then speak to them and pay cats to buy their loyalty. The cost gate is the design — a single Ninja or high-level captive is a real game-changer, so recruiting them is expensive. Adds a large pool of recruit dialogue, edits previous dialogues, and rebalances the high-stealth 'Ninja' types (lowered stealth where it would be too overpowered).",
  notes: "By STuRoK, an explicitly balanced successor to the classic mod: its own description says the original made it 'too easy to acquire an army of really strong npcs,' and this version exists to keep the challenge. Import is recommended for the stat changes but not vital. The wave's army-management core, and the one mechanic mod of Wave 4.",
)

#mod-entry(
  "Reactive World + RP fCats - Patch",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=3342629343",
  version: "Posted and updated 4 Oct 2024",
  verified: "YES — Steam Web API confirms posted/updated 2024-10-04, 1,857 subscribers, app 233860 (Kenshi)",
  deps: "Requires both Reactive World (id 1358096888) and Recruit Prisoners for Cats (id 3248118545)",
  impact: "A compatibility bridge that lets Recruit Prisoners for Cats recruit correctly inside Reactive World's reworked faction and world-state systems. Required only if you run both mods — which this list does.",
  notes: "A small patch mod with a clear, narrow job: without it, the recruit mechanic and Reactive World's faction changes can fight over the same characters. Subscribed alongside the two mods it bridges; load it directly above Recruit Prisoners for Cats.",
)
