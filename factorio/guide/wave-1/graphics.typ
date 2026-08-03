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

== The Architect: Graphics

The four visual mods in this section make the scaling factory *readable*. A megabase fails on information long before it fails on production: which belt is this, which way does the wire flow, is this tank full, where does the yellow line actually go. Two of these mods turn circuit signals into something you can see — glowing tube digits and pinned HUD numbers — and two of them light up the factory's arteries — belt lines and circuit wires — so the answer is a glance instead of a chase. None of them changes a single game value.

#mod-entry(
  "Nixie Tubes",
  "https://mods.factorio.com/mod/nixie-tubes",
  version: "Updated 23 Jun 2026 (page); 2.0-line build v2.0.9 (7 Nov 2025). Newer 2.1-line releases (2.1.0, Jun 2026) are outside the 2.0.77 target.",
  verified: "YES — portal page + API fetched 2026-08-03; page title 'Nixie Tubes' matches the API title exactly.",
  deps: "None — standalone.",
  impact: "Adds nixie-tube displays that connect to a circuit network and show the current value of a signal as glowing digits — storage levels, station buffers, robot counts, anything you can wire. Instead of hovering a chest or opening a panel, you read the number off the wall of the factory. It is a pure signal display: the circuit network and everything it controls behave exactly as before.",
  notes: "By justarandomgeek; 98K+ downloads, the classic circuit-display mod. It lands in graphics because its job in this wave is making circuit values visible at a glance, alongside Circuit HUD V2's always-on panel. Power-spike verdict: display only, passes untouched.",
)

#mod-entry(
  "Belt Visualizer",
  "https://mods.factorio.com/mod/belt-visualizer",
  version: "Updated 7 Jul 2026 (page); 2.0-line build v2.0.2 (22 Oct 2024). Newer 2.1-line releases (2.1.4, Jul 2026) are outside the 2.0.77 target.",
  verified: "YES — portal page + API fetched 2026-08-03; page title 'Belt Visualizer' matches the API title exactly.",
  deps: "None — standalone.",
  impact: "Press a hotkey while pointing at any belt and the entire connected line lights up; press again and it cycles through the lanes of that line. Tracing where a belt actually goes — and finding the single empty stretch that is starving a whole block — becomes a glance instead of a long walk. A visual overlay only; no belt is altered.",
  notes: "By _CodeGreen, the same author as Wave 0's Squeak Through 2; 125K downloads. Its 2.0-line build (2.0.2, 22 Oct 2024) covers the whole 2.0.x line, and the author keeps shipping 2.1 updates. Power-spike verdict: passes untouched.",
)

#mod-entry(
  "Prismatic Belts",
  "https://mods.factorio.com/mod/prismatic-belts",
  version: "Updated 20 Jul 2026 (page); 2.0-line build v3.0.4 (26 Jun 2026). Newer 2.1-line releases (3.1.3, Jul 2026) are outside the 2.0.77 target.",
  verified: "YES — portal page + API fetched 2026-08-03; page title 'Prismatic Belts' matches the API title exactly.",
  deps: "None — standalone.",
  impact: "Colors each belt's conveyor surface to match its direction arrows, so the way every belt runs is visible at a glance — which matters most on a crowded main bus and inside dense city blocks where four parallel belts can otherwise blur together. Pure visual clarity; belt behaviour is untouched. Per the author's description it also supports the loaders added by Wave 1's content mods — Miniloader and Deadlock's Stacking Beltboxes & Loaders — so those stay color-matched too.",
  notes: "By Kirazy; 20.6K downloads. A small, configurable tweak that pays off more the bigger the factory gets. Power-spike verdict: passes untouched.",
)

#mod-entry(
  "Circuit Visualizer",
  "https://mods.factorio.com/mod/circuit_visualizer",
  version: "Updated 17 Nov 2024 (page); 2.0-line build v2.0.2 (17 Nov 2024) — the latest release on any line.",
  verified: "YES — portal page + API fetched 2026-08-03; page title 'Circuit Visualizer' matches the API title exactly.",
  deps: "None — standalone.",
  impact: "Overlays every circuit wire with the signals currently flowing on it, turning a tangle of combinators into a readable diagram of values. When a decider is mis-wired or a signal is crossing where you thought it wasn't, the answer is drawn on the screen instead of guessed at. Read-only visualization of the circuit network; no signal or entity is changed.",
  notes: "By _1024; 21.5K downloads. The circuit-network companion to Belt Visualizer — one lights up belts, this lights up wires. v2.0.2 (Nov 2024) is the latest release on any line and is stable across the 2.0.x line. Power-spike verdict: passes untouched.",
)
