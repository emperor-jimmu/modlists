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

== The Architect: Content

The three content mods in this section are the physical building blocks of the scaling factory: a loader that moves items onto and off belts in one tile, a belt-stacking system that multiplies what a single belt lane can carry, and a family of high-capacity warehouses that the logistic network can treat like giant chests. All three are *new content* in the strict sense — new machines, new containers, new recipes — and all three obey the wave's gate: their benefits are bought with research, expensive materials, and a logistics step you build yourself. None of them hands vanilla numbers away.

#mod-entry(
  "Miniloader (Redux)",
  "https://mods.factorio.com/mod/miniloader-redux",
  version: "Updated 4 Jul 2026 (page); 2.0-line build v1.1.0 (4 Jul 2026). Newer 2.1-line releases (2.1.0, Jul 2026) are outside the 2.0.77 target.",
  verified: "YES — portal page + API fetched 2026-08-03; page title 'Miniloader (Redux)' matches the API title exactly.",
  deps: "None — standalone.",
  impact: "A one-tile loader that loads and unloads *belts* — from a belt, onto a belt, or between a belt and a chest or wagon. Vanilla 2.0's loader only connects containers and wagons; Miniloader's whole point is the belt side, where a normal inserter is the only vanilla option. It comes in normal, fast and express tiers that follow the belt research line, supports sideloading from a belt, per-lane filters, and a speed mode for containers. It is advertised by its author as UPS-friendly, so a train-station or smelter line dense with loaders stays fast.",
  notes: "By hgschmie; 21K+ downloads; the actively maintained 2.0 continuation of the classic Miniloader. Power-spike verdict: no vanilla cap is raised — a miniloader's throughput is bounded by the belt or container it touches (an express belt still moves 45 items per second), and the tiers are gated behind the same logistics research as the belts they match. The 'chute loader' option that would hand belt-loading out early is off by default.",
)

#mod-entry(
  "Deadlock's Stacking Beltboxes & Compact Loaders",
  "https://mods.factorio.com/mod/deadlock-beltboxes-loaders",
  version: "Updated 6 Jan 2025 (page); 2.0-line build v2.6.0 (6 Jan 2025) — the latest release on any line.",
  verified: "YES — portal page + API fetched 2026-08-03; page title 'Deadlock's Stacking Beltboxes & Compact Loaders' matches the API title exactly.",
  deps: "None — standalone (the Bob's/Factorio Extended integrations live in a separate mod).",
  impact: "Lets you *stack* up to five copies of certain items — ores, plates and select intermediates — into a single stacked item that rides the belt, multiplying that belt lane's effective capacity fivefold. A stacking beltbox at the start of a line compresses the flow; a beltbox at the destination unstacks it back into normal items machines can eat. The mod also bundles its own compact 1x1 loaders. This is Wave 1's 'new belts and containers' content: throughput rises only where you build the beltboxes and handle the stack-and-unstack step.",
  notes: "Originally by Deadlock989, maintained by shanemadden (the portal owner); 126K+ downloads — the canonical belt-stacking mod. *Borderline power-spike verdict:* 5x compression is a real throughput raise above vanilla belt caps, but it is bought with dedicated beltbox buildings, their material cost, and an explicit unstacking step before any machine can consume the goods — a proportionate cost. ACCEPTED per the written verdict in STATUS.md.",
)

#mod-entry(
  "Warehousing Mod",
  "https://mods.factorio.com/mod/Warehousing",
  version: "Updated 10 Dec 2024 (page); 2.0-line build v1.0.3 (10 Dec 2024) — the latest release on any line.",
  verified: "YES — portal page + API fetched 2026-08-03; page title 'Warehousing Mod' matches the API title exactly.",
  deps: "None — standalone.",
  impact: "Adds 6x6 warehouses and cheaper 3x3 storehouses, each available in the whole logistics chest family — passive provider, active provider, storage, requester and buffer — so the robot network can treat a warehouse as one enormous chest that requests and provides. Red and green wires attach at the corners, so a warehouse's contents can be read and controlled by the circuit network. Storage expansion only: no recipe, throughput or efficiency number changes, and the logistic versions inherit the same research gates as their chest equivalents.",
  notes: "By anoyomouse; 236K+ downloads, one of the most-installed logistics mods on the portal. v1.0.3 (Dec 2024) is its newest release on any line and covers the whole 2.0.x line; the mod is stable and long-shipped. The gate is material cost — warehouses are deliberately expensive, steel-heavy buildings, and the requester versions sit behind the vanilla requester-chest research.",
)
