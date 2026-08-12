#import "../helpers.typ": *

==== Wave 1: Mechanics

The systems this wave deepens — and where content mods are welcome to add depth.

===== Multi-Tool & Upgrades

Your multi-tool is a Swiss-army starship: mining beam, scanner, and weaponry in one package. Wave 1 mechanics: module stacking (same-type modules boost each other), class hunting, and the trade-off between mining, scanning, and combat investments. Mods that add new technology or upgrade depth fit here; mods that multiply your damage or yield do not.

#callout("Note:", [
  This slot is open: as of 2026-08-12 no maintained mod was found that adds multi-tool upgrade depth without changing game numbers (candidates like mining-speed and tech-overload tweaks are either abandoned or edit values). See STATUS.md.
])

#mod-entry("user to provide")

===== Starships & Classes

Ship classes C/B/A/S, tech vs cargo slots, and the upgrade economy. The Wave 1 story is chasing a better hull and stacking it with modules. A mechanics mod here might add new ship systems, customization depth, or class-relevant gameplay — never free performance.

#callout("Note:", [
  This slot is open: the maintained mods that touch ship classes either inflate generation odds (a pure power spike, excluded) or are abandoned. See STATUS.md for the evaluated list.
])

#mod-entry("user to provide")

===== Exocraft & Ground Travel

Exocraft unlock through base-building quests and change how you explore a planet: mining vehicles, haulers, speeders. Wave 1 mechanics mods may add new vehicles or deepen the ground-travel loop.

#mod-entry(
  "Natural Steering",
  url: "https://www.nexusmods.com/nomanssky/mods/1971",
  deps: "None",
  impact: "Uncouples mouse-look from exocraft steering so driving uses normal WASD-style controls while you can look around freely. Pure control QoL — no vehicle stat changes.",
  notes: "by Lo2k, v2.2, updated 2025-01-31 (Worlds Part II scheme). Enables a hidden in-game option rather than replacing files.",
)

===== Base Automation

Mineral and gas extractors, supply chains, and the logistics of a working base. This is the bridge between Wave 1's economy and Wave 2's civilization systems. Mods that deepen automation — new machines, better routing decisions — are the wave's best fit; mods that make extractors free or infinite are power spikes.

#mod-entry(
  "Exosolar's and Babs' Beyond Base Building",
  url: "https://www.nexusmods.com/nomanssky/mods/1096",
  deps: "None",
  impact: "Adds extreme freedom to vanilla base building: almost a thousand vanilla parts become scalable, recolorable, placeable above and below water, and buildable on freighters and planetary bases, with hard-coded limits (extractors, terminals, base computer) respected. Does not add new parts and does not touch extraction rates — the optional Lua rate multipliers are a power spike and stay off in this modlist.",
  notes: "by Exosolar, NeptuneX3, and Babscoole, v6.40, updated 2026-05-28 (game 6.40 Swarm). Fully Lua-scripted; use AMUMSS to merge with other base-building mods if you ever stack one. You still unlock blueprints the normal way.",
)
