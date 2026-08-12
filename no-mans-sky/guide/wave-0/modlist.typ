#import "../helpers.typ": *

==== Wave 0: Modlist

Wave 0 adds no gameplay content. Every mod in this chapter exists for one of three reasons: to make the game easier to *see*, easier to *operate*, or easier to *plan*. Nothing here changes a resource, a recipe, a ship stat, or a reward table — that is the wave's hard rule. Wave 0 admits only *UI and quality-of-life* mods: interfaces, readability, information display, and minor conveniences that do not touch the game's numbers.

The cards below are the curated Wave 0 set, verified against the game version this guide targets: every mod was checked on Nexus Mods on 2026-08-12 and is listed with the date its page last updated, so the compatibility heuristic from the installation chapter can be applied at a glance. The mods split across the next two sections by what they change: *Mechanics* for tools that change how you work with the game, and *Graphics* for mods that change how the game looks and how it tells you what is happening.

===== Mechanics (UI & Quality-of-Life)

Tools that make the game easier to operate and plan — inventory conveniences, HUD information, navigation aids — without changing any game value.

#mod-entry(
  "Fast Actions",
  url: "https://www.nexusmods.com/nomanssky/mods/1081",
  deps: "None",
  impact: "Speeds up or removes the hold-to-confirm delay on menu selection, crafting and dismantling, resource transfers to/from your ship, entering your ship, NPC dialogue, gathering small plants, launching refinery processing, and recovering deployable tech. Purely removes waiting — no game values change.",
  notes: "by Lo2k, v7.1, updated 2026-02-23. Ships two versions: instant (almost no delay) and fast (between original and instant); pick one. A classic Wave 0 pick: it only removes time.",
)

#mod-entry(
  "Instant Text Display",
  url: "https://www.nexusmods.com/nomanssky/mods/1677",
  deps: "None",
  impact: "Shows dialogue and terminal text instantly instead of the default typewriter crawl; holding the interact key skips even faster. Reading-speed QoL only.",
  notes: "by NooBzPoWaH, v6.20, updated 2026-02-12; page states compatibility with game 6.44 (The Swarm). Full-file replacement of the punctuation-delay table, so it does not merge — do not stack with another mod editing that file.",
)

===== Graphics (Visual & Interface)

Mods that only change how the game looks: colors, textures, HUD styling, readability. Nothing here changes behavior.

#mod-entry(
  "No Black Bars",
  url: "https://www.nexusmods.com/nomanssky/mods/1188",
  deps: "None",
  impact: "Removes the cinematic black bars that appear on the top and bottom of the screen when landing on a planet, reaching a milestone, activating a monolith, or meeting an alien. Pure presentation.",
  notes: "by Lo2k, v3.7, updated 2026-04-12 (game 6.32). Cannot run alongside another mod editing the HUD bars or cinematic-bars files; an AMUMSS Lua script is included for merging if you ever stack one.",
)

#mod-entry(
  "Unified Warps",
  url: "https://www.nexusmods.com/nomanssky/mods/2252",
  deps: "None",
  impact: "Unifies black-hole, portal, ship, and teleporter warp visuals into one calmer, darker effect and repositions the warp camera. Reduces flashing and visual overload during transitions.",
  notes: "by Silent369, v5.5, updated 2026-06-23 — the page states it is updated for game 6.45.1, exactly this guide's target version. Four visual variants; install exactly one.",
)
