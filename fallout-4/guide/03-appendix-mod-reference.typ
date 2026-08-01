#import "../templates/style.typ": *

= Appendix: Master Mod Reference

A single reference table of every mod in this guide, in recommended load-order-adjacent grouping. Mods accumulate across waves — Wave 1 includes everything from Wave 0.

== Wave 0 — Foundation

#table(
  columns: (1fr, auto, auto),
  table.header([Mod], [Category], [Nexus ID]),
  [Fallout 4 Script Extender (F4SE)], [Framework], [42147],
  [Address Library for F4SE Plugins], [Framework], [47327],
  [Unofficial Fallout 4 Patch (UFO4P)], [Bugfix], [4598],
  [Previsibines Repair Pack (PRP) Stable Branch], [Bugfix], [46403],
  [Mod Configuration Menu (MCM)], [Framework], [21497],
  [Buffout 4 NG with PDB support], [Bugfix], [64880],
  [Faster Loadscreens], [UI/QoL], [102233],
  [Empty Vendor List Bug Fix], [Bugfix], [83252],
  [Magic Effect and Spell Engine Fixes], [Bugfix], [83433],
  [Motion Vector Fixes], [Bugfix], [98544],
  [Companion Shoots At Player Fix], [Bugfix], [81758],
  [Extended Dialogue Interface (XDI)], [UI/QoL], [27216],
  [FallUI - HUD], [UI/QoL], [51813],
  [FallUI - Inventory], [UI/QoL], [48758],
  [Place Everywhere], [UI/QoL], [9424],
)

== Wave 1 — Adds to Wave 0

#table(
  columns: (1fr, auto, auto),
  table.header([Mod], [Category], [Nexus ID]),
  [Workshop Framework], [Framework], [35004],
  [Sim Settlements 2], [Content], [47976],
  [Scrap Everything], [Mechanics], [5320],
  [Faster Workshop AE (F4SE)], [Mechanics], [100532],
  [Armorsmith Extended], [Content], [2228],
  [Vivid Weathers - Fallout 4 Edition], [Graphics], [15466],
  [America Rising 2 - Legacy of the Enclave], [Content], [75767],
  [Homemaker - Expanded Settlements], [Content], [1478],
)

== Load Order Summary

1. `Fallout4.esm` + official DLC masters
2. Unofficial Fallout 4 Patch (UFO4P)
3. Previsibines Repair Pack (PRP) Stable Branch
4. Workshop Framework
5. Sim Settlements 2 (+ chapters, if using more than the base chapter)
6. America Rising 2 - Legacy of the Enclave
7. Armorsmith Extended
8. Homemaker - Expanded Settlements
9. Scrap Everything
10. Vivid Weathers - Fallout 4 Edition (weather mods load late to override exterior lighting and image-space records from other mods)
11. Everything else (pure F4SE plugins with no ESP: F4SE itself, Address Library, Buffout 4 NG, Faster Loadscreens, Empty Vendor List Bug Fix, Magic Effect and Spell Engine Fixes, Motion Vector Fixes, Companion Shoots At Player Fix, Faster Workshop AE, XDI, MCM, Place Everywhere, FallUI - HUD, FallUI - Inventory — these either inject via F4SE or are pure UI/SWF overrides with no load-order position relative to plugins)

#callout(type: "note")[
  Always run MO2's LOOT integration after adding new mods, and manually verify framework mods (Workshop Framework, Sim Settlements 2) sit where their own documentation specifies before trusting an automated sort blindly.
]

#pagebreak()
