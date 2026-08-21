#import "../helpers.typ": *

==== Wave 3: Modlist

Wave 3's centerpiece is a *user-supplied aircraft addon*: the Dash 8 Q400 in the form of the FlyJSim Q4XP you supplied. Everything else in this wave rides on the foundational toolset and the systems added in Waves 1-2.

#mod-entry(
  "FlyJSim Q4XP (Dash 8 Q400)",
  url: "https://store.x-plane.org/FlyJSim-Q4XP_p_1511.html",
  deps: none,
  impact: "Adds the Dash 8 Q400 turboprop airliner as this wave's study aircraft — the aircraft the wave guide is written around.",
  notes: "User-supplied aircraft (payware addon). Current version and any dependencies: user to provide. Per project rule, nothing here validates compatibility — confirm against 12.4.3 with the release-date heuristic.",
)

One further mod was added at your direction on 2026-08-21 — the regional pilot's flow coach.

#mod-entry(
  "XChecklist",
  url: "https://forums.x-plane.org/files/file/20785-xchecklist-linwinmac/",
  deps: none,
  impact: "Interactive in-cockpit checklists with an optional co-pilot voice — the Q400's flows read to you while you fly the minute game.",
  notes: "Freeware. The plugin goes in Resources/plugins/; each aircraft's checklist file (clist.txt) sits in that aircraft's folder — community files exist for most addons. Current version: user to provide.",
)
