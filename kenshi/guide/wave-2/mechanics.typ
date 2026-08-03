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

== The Smith: Mechanics

These four mods change how the engine under the forge works — how research is produced, how crops grow indoors, how production buildings fit on your land, and what the by-products of smithing are worth. None of them hands you a finished product for free: research still consumes bench time and books, hydroponics still carries the vanilla Bench V + AI Core gate, indoor machines keep the same power and material costs as outdoor ones, and leather goods still need their own research and a dedicated workbench. They widen the *paths* the strategy chapter describes, not the free lunch.

#mod-entry(
  "RIY+ (The Scientific Method)",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=2051512703",
  version: "Updated 16 Apr 2020 (posted 7 Apr 2020)",
  verified: "YES — Steam Workshop page fetched (2026-08-03); title matches; Steam API confirms created 2020-04-07, updated 2020-04-16, 5,039 subscribers",
  deps: "None — self-contained; replaces the author's earlier RIY mod (dismantle that mod's buildings first)",
  impact: "Lets you research how to do your own research: after a one-time cost of 4 books upfront, you can craft Books, Ancient Science Books and Engineering Research at dedicated benches in a new 'RESEARCH' build category. Ancient Science Books and Engineering Research require higher tech levels to learn to make, and AI Cores remain uncraftable.",
  notes: "For outpost players who cannot spare time for book-hunting with bandits at the door. The author kept it 'reasonably balanced' by design and confirmed artifact prices are unchanged. 5,039 subscribers, tags Buildings/Gameplay/Research.",
)

#mod-entry(
  "Better Hydroponics",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=2962052586",
  version: "Updated 25 Apr 2023 v1.0.1 (posted 14 Apr 2023)",
  verified: "YES — Steam Workshop page + changelog fetched (2026-08-03); title matches; Nexus 1202 mirror confirms v1.0.1 and the 25 Apr 2023 riceweed fix; Steam API 27,531 subscribers",
  deps: "Vanilla Hydroponics research first (Research Bench V + AI Core), then each crop's and tier's own research",
  impact: "A full hydroponics overhaul: 3 tiers per hydroponic crop, each with relevant research — efficient sprinklers cut water consumption 25% per tier, improved thermoregulators slow plant death 50% per tier, engineering speeds harvest/clear times 50% per tier, and genetic mutations cut growth time 25% and raise crop output 100% per tier. Adds Cactus and Cotton hydroponic variants (missing from vanilla) and rebalances harvest, growth, death, output and water consumption realistically.",
  notes: "Keeps the vanilla gate: hydroponics still needs Research Bench V + an AI Core. v1.0.1 fixed the T2 Riceweed grow time from 1 hour to the correct 7.5 hours after a user report. 27,531 subscribers, tags Buildings/Gameplay/Total Overhaul/Research.",
)

#mod-entry(
  "Industrial Expansion [Beta]",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=3019311187",
  version: "Updated 4 Aug 2024 (posted 13 Aug 2023)",
  verified: "YES — Steam Workshop page fetched (2026-08-03); title matches; author nato187 confirmed in comments; Steam API 9,055 subscribers",
  deps: "None — research stays aligned with the vanilla tech tree (e.g., researching Wells II unlocks Indoor Wells II)",
  impact: "Lets you place production machines indoors by adding compact 0.5-scale indoor versions — indoor well, refineries, corpse/item furnaces, grain silos, and more — plus an RTG power source. Power and resource requirements are the same as the outdoor versions, so you trade footprint for convenience, not for free energy or materials.",
  notes: "Author-labeled beta with a 'I can't build xyz' discussion thread for support; author noted a 'kenshi burnout' in Aug 2025 so updates may pause. Its niche is dense, walled production floors — the automation half of the strategy chapter's material economy.",
)

#mod-entry(
  "Leather Expansion: Leathercraft",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=3607509354",
  version: "Posted and updated 17 Nov 2025",
  verified: "YES — Steam Workshop page fetched (2026-08-03); title matches; Steam API confirms created/updated 2025-11-17, 8,928 subscribers",
  deps: "'Leathercrafting Techniques' research, then craft at the dedicated Leathercraft Workbench",
  impact: "Gives the excess leather that piles up during armour-smithing training a purpose: craft sellable, tradeable leather goods at the Leathercraft Workbench — carved leather wallets (popular in the United Cities), Holy-Flame book covers (safe from Paladin hassle), horn accessories, and more. Characters gain Dexterity while working the bench.",
  notes: "A material-economy mod, not a power one: it monetises a by-product rather than creating anything that hits harder. Fits the strategy chapter's 'smith by day, sell by dusk' arc. 8,928 subscribers.",
)
