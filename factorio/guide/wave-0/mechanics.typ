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

== The Castaway: Mechanics

The five system mods in this section change how you drive the factory, not what the factory produces. Three of them are pure convenience (walking, stacking, distributing), two are pure information (measuring and planning), and none of them moves a single balance number. If a mod ever started changing recipes or caps, it would fail this wave's one rule — and every card below carries the evidence that it does not.

#mod-entry(
  "Even Distribution",
  "https://mods.factorio.com/mod/even-distribution",
  version: "Updated 24 Jun 2026 (page); 2.0-line build v2.0.2 (22 Oct 2024). Newer 2.1-line releases (2.1.0, Jun 2026) are outside the 2.0.77 target.",
  verified: "YES — portal page + API fetched 2026-08-03; page title 'Even Distribution' matches the API title.",
  deps: "None — standalone.",
  impact: "Hold Ctrl and drag a stack across several machines, chests or wagons and the items split evenly between them; Shift+C flushes spare inventory items into the nearest buildings. Vanilla 2.0 can dump a stack into one entity at a time — this distributes it across a whole row. Pure convenience: nothing about recipes or production numbers changes.",
  notes: "By 321freddy; 517K+ downloads; the long-standing community standard for filling many buildings in one gesture. The author is actively maintaining the mod (the 2.1-line build shipped Jun 2026); a 2.0.77 install automatically picks the newest 2.0-line build, v2.0.2.",
)

#mod-entry(
  "Squeak Through 2",
  "https://mods.factorio.com/mod/squeak-through-2",
  version: "Updated 23 Jun 2026 (page); 2.0-line build v0.1.5 (23 Apr 2026).",
  verified: "YES — portal page + API fetched 2026-08-03; page title 'Squeak Through 2' matches the API title.",
  deps: "None — standalone.",
  impact: "Lets the engineer walk — and later drive — between buildings, pipes and machines that would normally block movement, so a dense factory stops being an obstacle course. Movement and collision QoL only; no machine, recipe or balance value is touched.",
  notes: "By _CodeGreen; 270K+ downloads. A from-scratch, highly configurable 2.0 rewrite of the classic Squeak Through — the original mod (by Nexela) was not carried forward to 2.0, and this is its 2.0 successor. The 2.0.77 install uses v0.1.5.",
)

#mod-entry(
  "Rate Calculator",
  "https://mods.factorio.com/mod/RateCalculator",
  version: "Updated 14 Jul 2026 (page); 2.0-line build v3.3.8 (18 Jan 2026).",
  verified: "YES — portal page + API fetched 2026-08-03; page title 'Rate Calculator' matches the API title.",
  deps: "None — standalone.",
  impact: "Drag a selection box across any machines, miners or belts and it reports exactly what the build produces and consumes per second, and which machines are running below full throughput. Purely informational — it reads the factory and never changes it, so it cannot raise or lower any cap.",
  notes: "By raiguard; 426K+ downloads. Complements Factory Planner: Rate Calculator measures what already exists, Factory Planner designs what comes next. Running the two together is the standard planning stack. The 2.0.77 install uses v3.3.8.",
)

#mod-entry(
  "Factory Planner",
  "https://mods.factorio.com/mod/factoryplanner",
  version: "Updated 1 Aug 2026 (page); 2.0-line build v2.0.50 (19 Apr 2026).",
  verified: "YES — portal page + API fetched 2026-08-03; page title 'Factory Planner' matches the API title.",
  deps: "None — standalone.",
  impact: "Adds a spreadsheet-like planner that works out the whole chain — inputs, machines, ratios, speed and module choices — for any target throughput before you place a single building. It plans on paper only: nothing is placed in the world and no game value is touched.",
  notes: "By Therenas; 329K+ downloads. This is the tool that turns 'ratio blindness' into a solved problem from day one. Pairs with Rate Calculator (measure what exists, plan what comes next). The 2.0.77 install uses v2.0.50.",
)

#mod-entry(
  "YARM - Resource Monitor",
  "https://mods.factorio.com/mod/YARM",
  version: "Updated 1 Jan 2025 (page); 2.0-line build v1.0.5 (1 Jan 2025) — the latest release on any line.",
  verified: "YES — portal page + API fetched 2026-08-03; page title 'YARM - Resource Monitor' matches the API title.",
  deps: "None — standalone.",
  impact: "Tracks every ore patch you mark, showing percent mined and estimated time to depletion, and warns you when a patch is about to run dry. Vanilla 2.0 shows a patch's remaining amount when you hover it; YARM extends that into persistent tracking, a history graph and alerts, so a dying iron patch never ambushes you. A monitoring aid only — it cannot change a patch or a miner.",
  notes: "By Narc; 168K+ downloads. Its single 2.0-line build (v1.0.5, Jan 2025) is also its newest release on any line, so there is no version divergence to watch for on 2.0.77.",
)
