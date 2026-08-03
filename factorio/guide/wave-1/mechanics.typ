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

== The Architect: Mechanics

The four system mods in this section change *how the factory decides things*, not what it can produce. Cybersyn turns the rail network into a circuit-driven logistics network. Circuit HUD V2 puts the network's vital signals on the screen. Module Inserter hands the module slots over to machines and robots. Auto Deconstruct makes a depleted outpost flag itself for teardown. Each one deepens one of the scaling systems — trains, circuits, modules, expansion — and each one is a control or convenience change with no balance number moved. That is the wave's whole contract: the systems get smarter, the numbers stay vanilla.

#mod-entry(
  "Project Cybersyn - Logistics Train Dispatcher",
  "https://mods.factorio.com/mod/cybersyn",
  version: "Updated 26 Jun 2026 (page); 2.0-line build v2.0.53 (15 Mar 2026). Newer 2.1-line releases (2.1.2, Jun 2026) are outside the 2.0.77 target.",
  verified: "YES — portal page + API fetched 2026-08-03; page title 'Project Cybersyn - Logistics Train Dispatcher' matches the API title exactly.",
  deps: "None — standalone.",
  impact: "Turns trains into a logistics network. Place a cybernetic combinator beside a train stop and set it to 'station' or 'depot'; a positive circuit signal on the combinator means that stop *provides* that cargo, a negative signal means it *requests* it. A handful of trains parked at depots are then dispatched automatically to carry requested goods to requesting stations — the same provider/requester idea as robot chests, scaled to rail. Hand-written schedules give way to circuit-driven dispatching, which is exactly the 'circuit-linked logistics' this wave is built to teach.",
  notes: "By lesbian_mami; 56K+ downloads; designed for 2.0's train features and the actively maintained modern successor in spirit to the older LTN mod. Not a throughput buff and not a cheat — it automates *control*, and its demands are circuit signals, so it rewards the combinator skills the Strategy chapter teaches. Power-spike verdict: passes untouched.",
)

#mod-entry(
  "Circuit HUD V2",
  "https://mods.factorio.com/mod/CircuitHUD-V2",
  version: "Updated 22 Jul 2026 (page); 2.0-line build v2.5.1 (24 Jun 2025). Newer 2.1-line releases (3.0.0, Jul 2026) are outside the 2.0.77 target.",
  verified: "YES — portal page + API fetched 2026-08-03; page title 'Circuit HUD V2' matches the API title exactly.",
  deps: "None — standalone.",
  impact: "Pins any circuit-network signal to the on-screen HUD — robot counts, chest stock, station buffers, fluid levels — so the vital signs of a whole megabase stay visible without opening a single panel. It reads the circuit network and draws numbers; nothing about the network or the factory is modified. For the city-block era it is the missing instrument panel: wire a pole, pin a signal, and every block reports in.",
  notes: "By Xiomax; 12.5K downloads. Pairs naturally with Nixie Tubes (in-world readouts) and Circuit Visualizer (wiring clarity) — this is the always-on panel version of the same idea. Power-spike verdict: display only, passes untouched.",
)

#mod-entry(
  "Module Inserter",
  "https://mods.factorio.com/mod/module-inserter",
  version: "Updated 5 Feb 2026 (page); 2.0-line build v1.0.4 (5 Feb 2026) — the latest release on any line.",
  verified: "YES — portal page + API fetched 2026-08-03; page title 'Module Inserter' matches the API title exactly.",
  deps: "None — standalone.",
  impact: "Lets inserters reach the module slots that are normally off-limits to them — the slots inside crafting machines and labs — so modules can be inserted, swapped and removed by belts, inserters and robots instead of by hand. As module-heavy production lines take over the mid-game, this is the difference between re-fitting a build by clicking a hundred machines and re-fitting it by stamping a blueprint with a requester chest of modules feeding the line. Pure QoL around the modules-and-beacons system: no module stat, recipe or cost is changed.",
  notes: "By protocol_1903; 17K downloads. Deferred from Wave 0 precisely because modules only matter from Wave 1 onward — this is where it earns its place. Re-verified fresh for this wave: v1.0.4 (5 Feb 2026), factorio_version 2.0, newest release on any line. Power-spike verdict: passes untouched.",
)

#mod-entry(
  "Auto Deconstruct",
  "https://mods.factorio.com/mod/AutoDeconstruct",
  version: "Updated 30 Jul 2026 (page); 2.0-line build v1.0.14 (30 Jul 2026). Newer 2.1-line releases (2.1-line build v1.1.2, 30 Jul 2026) are outside the 2.0.77 target.",
  verified: "YES — portal page + API fetched 2026-08-03; page title 'Auto Deconstruct' matches the API title exactly.",
  deps: "None — standalone.",
  impact: "Automatically marks a mining drill for deconstruction the instant its patch runs dry, so a spent outpost flags itself for the construction robots instead of sitting dead with four drills on empty ground. In a scaling factory, outposts are born and die continuously; this turns the teardown half of that lifecycle into the same hands-off process as the build. A marker helper only — it changes no recipe, cap or balance value.",
  notes: "By mindmix; 359K downloads, one of the portal's most-installed utilities. Deferred from Wave 0 because it belongs to the expansion-logistics theme this wave covers. Re-verified fresh for this wave: 2.0-line build v1.0.14 (30 Jul 2026). Power-spike verdict: passes untouched.",
)
