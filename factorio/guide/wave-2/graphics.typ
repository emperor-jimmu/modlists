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

== The Krastorio Prodigy: Graphics

The three visual mods in this section make the K2 era *legible*. Two of them are Krastorio 2's own ecosystem: one is the K2 team's recommended progress tracker, and one makes Space Age's science packs carry K2-style tech-card icons so the whole research line matches the wave's signature mechanic. The third is a tiny clarity tweak for K2's roboports. None of them changes a game value; each one is a small investment that pays back across a very long wave.

#mod-entry(
  "Milestones",
  "https://mods.factorio.com/mod/Milestones",
  version: "Updated 23 Jun 2026 (page, 2.1-line v1.5.0); 2.0-line build v1.4.7 (24 Nov 2025), factorio_version 2.0.",
  verified: "YES — portal page + API fetched 2026-08-03; page title 'Milestones' matches the API title exactly.",
  deps: "flib (a library the built-in mod manager installs automatically). No Krastorio 2 dependency is declared, but the Krastorio 2 page lists Milestones under its 'Recommended companion mods' — the K2 team's own compatibility confirmation.",
  impact: "Tracks the factory's key milestones — the first time you craft each important item, and how fast you reached it — and keeps a history you can look back on. K2's progress ladder is far longer than the base game's, so Milestones turns the whole wave into a scored, self-aware journey: the Prodigy knows exactly when the intergalactic transceiver became reachable, and how long the deep-science push took.",
  notes: "By Wiwiweb; 334K downloads. Krastorio 2's officially recommended progress companion. Pure UI and record-keeping; power-spike verdict: passes untouched.",
)

#mod-entry(
  "K2 Tech Card Icons for Space Age",
  "https://mods.factorio.com/mod/k2sa-tech-card-icons",
  version: "Updated 1 Jul 2025 (page); 2.0-line build v0.1.2 (1 Jul 2025), factorio_version 2.0 — the latest release on any line.",
  verified: "YES — portal page + API fetched 2026-08-03; page title 'K2 Tech Card Icons for Space Age' matches the API title exactly.",
  deps: "Requires Space Age (built-in dependency) and Krastorio 2 Spaced Out (declared dependency on the portal). Optional: Maraxsis.",
  impact: "Gives Space Age's science packs Krastorio-2-style tech card icons, so the Space Age research line visually matches the K2 tech cards that this wave's research overhaul is built around. In a K2SO run the lab screen stays visually coherent from the first tech card to the singularity.",
  notes: "By jwinters2; 290 downloads. Small adoption but verified, active, and dependent on the K2SO bridge itself — which makes it provably K2SO-compatible. Pure icon reskin; no recipe, icon size or balance value changes. Power-spike verdict: passes untouched.",
)

#mod-entry(
  "Krastorio2 - roboport mode colored textures",
  "https://mods.factorio.com/mod/Krastorio2-roboport-mode-colored-textures",
  version: "Updated 24 Jun 2025 (page); 2.0-line build v2.0.4 (24 Jun 2025), factorio_version 2.0 — the latest release on any line.",
  verified: "YES — portal page + API fetched 2026-08-03; page title 'Krastorio2 - roboport mode colored textures' matches the API title exactly.",
  deps: "None required — the mod declares Krastorio 2 and Krastorio 2 Spaced Out as optional dependencies, so its textures light up automatically when either anchor is present.",
  impact: "Tints the rings of Krastorio 2's roboports normal, green or orange based on which mode each roboport is set to, so the state of the robot network — connected, disconnected, passive — is visible across the factory at a glance. A small clarity win on the logistics layer of a very long wave.",
  notes: "By Quezler; 1.27K downloads. Pure visual; no roboport behaviour, mode or balance value is touched. Power-spike verdict: passes untouched.",
)
