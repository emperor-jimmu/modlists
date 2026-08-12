#import "../helpers.typ": *

==== Wave 1: Modlist

Wave 1 opens the door to *content and new mechanics*. The wave's philosophy: mods may add systems, deepen existing ones, and open new decisions — but they may not hand out power. A mod that adds a new gameplay layer is welcome; a mod that makes you stronger, richer, or faster without adding a decision is a pure power spike and does not belong here.

The curation contract changed with this release (see STATUS.md): the cards below were selected and verified for Wave 1 on 2026-08-12 against the target game version, and every card carries its last-updated date so the compatibility heuristic applies at a glance. Sections that still show a *"user to provide"* card are slots where no maintained mod was found that fits the wave's rules — the project does not pad the list with power spikes or abandoned mods, so those stay open for you.

The cards split across two sections: *Mechanics* for mods that change or deepen how the game plays, and *Content* for mods that add new things to do.

===== Mechanics

Mods that deepen the systems Wave 1 is built on: the economy, exploration, fleet management, and upgrade paths. They must add decisions or information — never raw advantage.

#mod-entry(
  "Atmosphere Hover and Reverse - Pulse Speed Adjustments",
  url: "https://www.nexusmods.com/nomanssky/mods/688",
  deps: "None",
  impact: "Lets your starship hover at 0 u/s and reverse while in a planet's atmosphere, giving precise control for scouting and landing. Adds a control option — nothing gets faster, richer, or stronger.",
  notes: "by BigEx20 AKA Chromos, v6.11.0, updated 2025-10-24. Install exactly one option folder (hover, reverse, or both). Conflicts with any other mod editing GCSPACESHIPGLOBALS.GLOBAL — merge via the included Lua script if you ever add one. The optional pulse-speed presets change game numbers and are intentionally left off in this modlist.",
)

===== Content

Mods that add new gameplay: new mechanics, new activities, new depth to existing loops. The bar is the same — a new system must make you *choose*, not just *win*.

#mod-entry(
  "Multi Biomes - Voyagers",
  url: "https://www.nexusmods.com/nomanssky/mods/3093",
  deps: "None",
  impact: "Lets individual planets combine several of the game's biomes, so a single world can hold forest, desert, and tundra regions instead of one flat identity. Adds exploration decisions — where to land and what to seek — without touching rewards or rates.",
  notes: "by trevix, v3.0, updated 2025-08-28 (Voyagers era). The current maintained successor to the famous Better Planet Generation (which has not been updated since 2024 and is no longer compatible with modern game builds). Avoid stacking with other planet-generation mods.",
)
