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

== The Outlander: Content

These three mods add what you can build and craft — more buildings for your outpost, more ways to turn raw land into food, and more of Kenshi's look on your own characters. The rule for this wave is that content has to aid survival and settlement, not combat: nothing here makes you hit harder. Vanilla Outposts Expanded is deliberately decorative in the vanilla style, Fish and Meat Industry is a food-production chain with real research costs, and Shek Perfect Body is a cosmetic body texture replacer (never-nude) that keeps the same model, just with a crisper finish.

#mod-entry(
  "Vanilla Outposts Expanded",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=2571591923",
  version: "Updated 14 May 2022 (posted 10 Sep 2021)",
  verified: "YES — Steam Workshop page fetched twice (2026-08-03); title matches",
  deps: "None — self-contained (most blueprints bought from any construction vendor)",
  impact: "Gives you access to Kenshi assets that already exist in the world but not in the vanilla build menu: extra tables, barrels, carpets, signs, decorative chaos (smashed buildings and furniture), Holy Nation ambiance, Lagoon building variants, market stalls and tents, more lighting, old cube storage, quarry construction (scaffolds, cranes, stones) and Swamp structures — all vanilla assets, kept lore-friendly.",
  notes: "The author pitched it as the outpost that does not look like it exists 'just to make food and upgrade gear'. 393 ratings. Stays close to vanilla by construction — most changes are decorative, with a few items given a practical use.",
)

#mod-entry(
  "Fish and Meat Industry",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=3713276063",
  version: "Updated 25 Apr 2025 (posted 19 Apr 2025)",
  verified: "YES — Steam Workshop page fetched twice (2026-08-03); title matches",
  deps: "None — standalone; author warns DO NOT run together with the older 'Meat Production and Processing' (id 2985207405), which this supersedes",
  impact: "Adds alternative food-production lines for establishing bases in barren locations: Fishing (T1) and Advanced Fishing (T1) add fishing rod sets, nets, drying racks and fish recipes; Survival Cooking (T2) adds dried Gristle-Flaps, a campfire variant and a food store; Insect Farming (T2) adds a second food chain. New crafting recipes give vanilla's unused Medical Supplies a purpose.",
  notes: "By Ironmonk (author of Meat Production and Processing). The author is transparent that balancing is still settling — 'expect some balancing changes in the future'. New buildings mostly land in the Camping category and do not count as outpost buildings.",
)

#mod-entry(
  "Shek Perfect Body (never nude)",
  "https://www.nexusmods.com/kenshi/mods/1242",
  version: "v1.0 (single release)",
  verified: "YES — Nexus page fetched (2026-08-03); title matches",
  deps: "None — standalone texture replacer",
  impact: "Replaces the vanilla Shek body texture with a higher-fidelity version that keeps all clothing and underwear fully intact — the 'never nude' variant, safe for work, with no body-model change and no stat effect. Purely cosmetic.",
  notes: "196 endorsements. The only adult-category-adjacent mod in this guide, and it is the safe variant by design. Checked against the explicit-porn exclusion: this is a texture upgrade, not adult content.",
)
