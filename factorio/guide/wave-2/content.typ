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

== The Krastorio Prodigy: Content

Wave 2 is anchored by the two overhauls in this section: *Krastorio 2* — an end-game-focused overhaul of nearly every system in the game — and *Krastorio 2 Spaced Out*, the bridge that lets Krastorio 2 run correctly with the Space Age expansion, which is enabled for this wave. They ship first, as a pair: Krastorio 2's own page states that it does not properly support Space Age on its own ("the game will load, but progression will be broken") and that the bridge add-on is required, and the bridge in turn requires Krastorio 2. Every other mod in this wave was checked against *both* anchors before it earned a card. Two more content mods complete the section: one that turns K2's signature end-game resource into a space resource for the K2SO bridge, and one of Krastorio 2's officially recommended companions that makes the wave's combat genuinely dangerous. All four cards are verified on the official Factorio Mod Portal against Factorio 2.0.77, with each verdict logged in STATUS.md.

#mod-entry(
  "Krastorio 2",
  "https://mods.factorio.com/mod/Krastorio2",
  version: "Updated 29 Jun 2026 (page, 2.1-line v2.1.2); 2.0-line build v2.0.19 (26 Jun 2026), factorio_version 2.0. Newer 2.1-line releases (2.1.x, Jun 2026) are outside the 2.0.77 target.",
  verified: "YES — portal page + API re-fetched 2026-08-03; page title 'Krastorio 2' matches the API title exactly. Re-confirms the original Task 3 verdict (2.0.19, factorio_version 2.0, COMPATIBLE).",
  deps: "Requires Factorio 2.0 base plus its own libraries (flib, Krastorio2Assets, Krastorio2MenuSimulations) which the built-in mod manager installs automatically. To run alongside Space Age it requires the Krastorio 2 Spaced Out bridge below — the K2 page states that without the bridge 'the game will load, but progression will be broken'.",
  impact: "The anchor overhaul, focused on 'end-game technologies and moderately increased complexity'. It adds over 40 new buildings, over 100 new technologies and more than 300 new unique icons; three new resources (imersite, mineral water, rare metals); a research overhaul built on tech cards and research computers; a full combat overhaul in which bullets become physical projectiles; radioactivity; more granular fuel trade-offs; and equipment grids on almost all vehicles.",
  notes: "By raiguard (originally created by Krastor and Linver); 385K+ downloads — the most-installed total overhaul on the portal. Everything else in this wave is verified against K2's rebalanced recipes; nothing in the wave restores the vanilla behaviour K2 intentionally replaced.",
)

#mod-entry(
  "Krastorio 2 Spaced Out",
  "https://mods.factorio.com/mod/Krastorio2-spaced-out",
  version: "Updated 28 Jul 2026 (page, 2.1-line v2.0.14); 2.0-line build v1.6.21 (7 Jul 2026), factorio_version 2.0, feature_flags [\"space-travel\"]. Newer 2.1-line releases (2.0.x, Jul 2026) are outside the 2.0.77 target.",
  verified: "YES — portal page + API re-fetched 2026-08-03; page title 'Krastorio 2 Spaced Out' matches the API title exactly. Re-confirms the original Task 3 verdict (1.6.21, factorio_version 2.0, space-travel feature flag, COMPATIBLE).",
  deps: "Requires Krastorio 2, the Space Age expansion (the space-travel feature flag; owned), and its own asset pack (k2so-assets, auto-installed). Declared as a conflicting dependency: factorioplus.",
  impact: "The bridge that merges Krastorio 2 with Space Age, and the wave's second anchor. Per its page: it adds K2's resources (rare metals, mineral water, imersite) to Nauvis, remixes the mid-game planets, expands the research tree around collecting and processing planetary data, adds advanced tech cards that unlock new buildings on Space Age planets (advanced furnace on Vulcanus, laser artillery on Fulgora, advanced chemical lab on Gleba, and more), matter tech cards that enable material transmutation, and singularity tech cards — space-exclusive science made of pure matter and asteroid chunks — plus two new labs including a space-exclusive singularity lab. Promethium science becomes mandatory for the win condition.",
  notes: "By Polka_37; 53K+ downloads. The page notes development has moved to Factorio 2.1; the 2.0 line is stable at v1.6.21 for a 2.0.77 install. K2SO's changelog records that the intergalactic transceiver must be made in space under the bridge.",
)

#mod-entry(
  "Krastorio 2 Imersite Asteroids",
  "https://mods.factorio.com/mod/Imersite-Asteroids",
  version: "Updated 30 Jun 2026 (page, 2.1-line v1.3.0); 2.0-line build v1.2.2 (14 Jun 2026), factorio_version 2.0.",
  verified: "YES — portal page + API fetched 2026-08-03; page title 'Krastorio 2 Imersite Asteroids' matches the API title exactly.",
  deps: "Requires Krastorio 2 Spaced Out (declared dependency on the portal). Optional: Asteroid Belt.",
  impact: "Gives the K2SO bridge a space source for K2's signature end-game resource: a new type of asteroid — the imersite asteroid — encountered only in the asteroid belt between Aquilo and the inner planets, gated behind a pre-Aquilo technology. Imersite, which K2 describes as useless on its own but crucial to advanced manufacturing, becomes something a late-space engineer can harvest instead of only mining on the ground.",
  notes: "By snakeru; 6.4K downloads. Recommended by the K2SO author on the Krastorio 2 Spaced Out page. Power-spike verdict: no early handout — the imersite asteroids sit at the late-game belt region and follow the bridge's existing tech gates.",
)

#mod-entry(
  "Armoured Biters",
  "https://mods.factorio.com/mod/ArmouredBiters",
  version: "Updated 7 Apr 2026 (page); 2.0-line build v2.0.2 (7 Apr 2026), factorio_version 2.0 — the latest release on any line.",
  verified: "YES — portal page + API fetched 2026-08-03; page title 'Armoured Biters' matches the API title exactly.",
  deps: "None — standalone (optional dependencies: Space Age, Alien Biomes). No Krastorio 2 dependency is declared, but the Krastorio 2 page lists Armoured Biters under its 'Recommended companion mods' — the K2 team's own compatibility confirmation.",
  impact: "Adds a new enemy type — the Snappers — heavily armoured but slower than regular biters, with custom sprites and animations. Under K2's reworked combat, where bullets are physical projectiles that can miss, an armoured enemy that soaks the early weaponry forces the engineer to respect defence instead of kiting biters in a circle. The author describes the mod as compatible with most other mods, and it is on K2's official companion list.",
  notes: "By CybranM; 217K downloads. Krastorio 2's officially recommended combat companion. Power-spike verdict: passes — it makes combat harder and requires more defence investment, it does not raise any of the player's numbers.",
)
