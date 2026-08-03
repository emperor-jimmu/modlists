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

== The Smith: Graphics

The two mods in this section make the tools of the trade *look* like they went through a forge — quality-progressive weapon textures and reflective metal plate. Neither touches gameplay numbers, so the power-spike test is passed untouched. The rule for Wave 2's visuals is that they have to reward your investment in smithing: a Meitou you forged with your own AI Cores should look like it.

#mod-entry(
  "Radiant Vanilla Reborn Weapons",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=2722854590",
  version: "Posted and updated 17 Jan 2022",
  verified: "YES — Steam Web API (title + description + metadata, 2026-08-03); Workshop page was HTML 429-rate-limited on fetch, so verification rests on the authoritative API record; Steam API 7,931 subscribers, ~30 MB",
  deps: "None — texture replacement only; do NOT run with 'Radiant Asamarume Weapons' (already integrated into its v2.0)",
  impact: "Retextures all 15+15 base-game weapon texture files for a real quality progression: better contrasts, more realistic and varied metal takes (bronze, copper, brass, darkened iron, steel, tamahagane), new reflections and varnished tones, less white wood, less trashy iron/steel, and less rust on mid-game grades.",
  notes: "The author's own description states it 'works only as a texture replacement' — zero gameplay impact. The quality progression visual makes the strategy chapter's 'your forge gets visibly better' arc real on-screen.",
)

#mod-entry(
  "Shiny Plate Armor",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=2932417009",
  version: "Updated 27 Feb 2023 (posted 12 Feb 2023)",
  verified: "YES — Steam Web API (title + description + metadata, 2026-08-03); Workshop page was HTML 429-rate-limited on fetch, so verification rests on the authoritative API record; Steam API 175 subscribers, ~319 MB",
  deps: "None — model files unchanged; author recommends placing it last in the mod list except for GUI mods",
  impact: "Makes all possible plate armour reflective and shiny — from the old heart protector and plated boots up to the full samurai armour set — visually separating metal from cloth and strap armour. All models stay exactly as they are; only the metallic surface is added.",
  notes: "A pure visual mod with no stat change. 175 subscribers is the smallest audience in this wave; the author openly asks for feedback and notes one test-character texture quirk that they suspect is a load-order issue — the reason it sits at the bottom of the list. ~319 MB is large because it repaints many vanilla armour textures.",
)
