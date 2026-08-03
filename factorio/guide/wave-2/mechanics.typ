#let mod-entry(name, url, version: none, verified: none, deps: none, impact: none, notes: none) = {
  block(fill: rgb("#f2ede0"), inset: 10pt, radius: 4pt, stroke: 0.5pt + rgb("#e8590c"))[
    #link(url)[#text(weight: "bold", size: 11pt, fill: rgb("#e8590c"), name)]
    #if version != none [#v(4pt) *Version/Updated:* #version]
    #if verified != none [#v(3pt) *Verified:* #verified]
    #if deps != none [#v(3pt) *Dependencies:* #deps]
    #if impact != none [#v(3pt) *Impact:* #impact]
    #if notes != none [#v(3pt) *Notes:* #notes]
  ]
}

== The Krastorio Prodigy: Mechanics

The two system mods in this section exist because Krastorio 2 makes the engineer's information and fluid problems *bigger* before it makes them harder to solve. K2 rebalances every recipe and adds hundreds of new ones, so the recipe browser that was merely useful in the base game becomes the wave's primary reference tool. And K2's rebalanced recipes stress fluid throughput in ways the base game never does, which is exactly why the Krastorio team ships its own fluid companion. Neither mod moves a number the player relies on: one reads the game's data, the other adds new buildings that the engineer must research and build. Both are verified against the 2.0.77 target and against both wave anchors — the K2 team's own recommendations carry the strongest compatibility evidence this wave has.

#mod-entry(
  "FNEI",
  "https://mods.factorio.com/mod/FNEI",
  version: "Updated 11 Jul 2026 (page, 2.1-line v0.4.7); 2.0-line build v0.4.6 (30 Mar 2025), factorio_version 2.0.",
  verified: "YES — portal page + API re-fetched 2026-08-03; page title 'FNEI' matches the API title exactly. Re-verified fresh from mod-ideas.md, where it was deferred to this wave for exactly this reason.",
  deps: "None — standalone, and pure client-side: it reads the game's recipe data, so it works with any overhaul including Krastorio 2.",
  impact: "The recipe and usage browser: for any item, it lists every recipe that produces it and every recipe that consumes it, plus the relevant machines and fuel values. In K2's overhaul — hundreds of new recipes, new resources, a rebuilt research tree — FNEI is the difference between guessing a chain from memory and tracing it from the data. Where vanilla players could learn the handful of vanilla chains, a K2 engineer leans on FNEI constantly to answer 'what makes this?' and 'where is this used?'.",
  notes: "By npo6ka; 357K downloads. Deferred from Wave 0 and Wave 1 precisely because its value peaks in an overhaul wave. Complements the Wave 0 tools: Factory Planner plans the chain, Rate Calculator measures it, FNEI explains what anything in it is. Power-spike verdict: informational only, passes untouched.",
)

#mod-entry(
  "Fluid Must Flow",
  "https://mods.factorio.com/mod/FluidMustFlow",
  version: "Updated 25 Jun 2026 (page, 2.1-line v1.5.0); 2.0-line build v1.4.4 (22 Sep 2025), factorio_version 2.0.",
  verified: "YES — portal page + API fetched 2026-08-03; page title 'Fluid Must Flow' matches the API title exactly.",
  deps: "None — standalone. No Krastorio 2 dependency is declared, but the Krastorio 2 page lists Fluid Must Flow under its 'Recommended companion mods', and it is by the Krastorio team (author raiguard, K2's maintainer) — the strongest compatibility evidence available.",
  impact: "Adds very large pipes with enormous throughput capabilities, giving a scaling factory a way to move oil, gas and water by the pipe-load instead of by walls of parallel pipes. K2's rebalanced recipes push fluid volumes well past what base-game pipe mechanics handle comfortably; this is the Krastorio team's own answer to that demand.",
  notes: "By raiguard; 244K downloads. *Borderline power-spike verdict (written in STATUS.md):* it raises the effective throughput a pipe can carry above vanilla caps, but the new pipes are separate buildings with their own recipes, gated behind research, and the mod exists specifically to serve K2's increased fluid demand — the K2 team recommends it in the K2 page's companion list. ACCEPTED.",
)
