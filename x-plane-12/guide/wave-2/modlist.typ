#import "../helpers.typ": *

==== Wave 2: Modlist

Wave 2 builds on the foundational toolset and Wave 1's additions, focused on the IFR systems: navigation data, charts, and planning tools are now *assumed* — the foundational Navigraph and LittleNavMap are central to this wave.

The wave's centerpiece is a *user-supplied aircraft addon*: the Challenger 650 in the form of the Hot Start Challenger 650 you supplied.

#mod-entry(
  "Hot Start Challenger 650",
  url: "https://www.x-aviation.com/catalog/product_info.php/take-command-hot-start-challenger-650-p-212",
  deps: none,
  impact: "Adds the Challenger 650 big-cabin business jet as this wave's study aircraft — the aircraft the wave guide is written around.",
  notes: "User-supplied aircraft (payware addon). Current version and any dependencies: user to provide. Per project rule, nothing here validates compatibility — confirm against 12.4.3 with the release-date heuristic.",
)

One further mod was added at your direction on 2026-08-21 — the FMS you already know, in your hand.

#mod-entry(
  "WebFMC Pro",
  url: "https://greenarcstudios.com/",
  deps: none,
  impact: "Puts the aircraft's FMS/CDU in any web browser on your network — plan, monitor, and fly the approach from a tablet or second screen.",
  notes: "Payware plugin; the free version covers only the Zibo 737. The Pro version supports this wave's Hot Start Challenger 650 (all three CDUs) and later waves' aircraft (Q4XP, Zibo, ToLiss, 777v2). Current version: user to provide.",
)
