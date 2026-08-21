#import "../helpers.typ": *

==== Wave 0: Modlist

Wave 0 adds no gameplay content. Everything in this wave exists to make the sim easier to *see*, easier to *operate*, or easier to *plan*. Nothing here changes an aircraft's performance, the weather, or the flight model — that is the wave's hard rule. Wave 0 admits *UI and quality-of-life* mods and the foundational toolset from the Foundational Plugins chapter — plus, as the one deliberate exception, the alternate trainer at the end of this section that you supplied.

The active Wave 0 loadout is therefore:

+ The *foundational toolset* (Foundational Plugins chapter): Navigraph (optional), LittleNavMap, AutoOrtho (optional), X-Camera, AviTab, X-ATC-Chatter, openSAM, Better Pushback. These are installed once and stay available in every wave.
+ The *training and quality-of-life cards* in Mechanics below — each one makes the pattern easier to fly or easier to learn, without touching any aircraft's numbers.
+ The *visual cards* in Graphics below — each one only changes how the sim looks.
+ The *alternate trainer* at the end — the DA20-SV you supplied: a second seat for the same lessons, not a change to the 172.

The cards below were added at your direction on 2026-08-21. Each card carries the fields this guide's rules demand: a clickable name with URL, dependencies, system/mechanic impact, and notes. Anything not supplied stays marked *"user to provide"* — confirm current versions and compatibility against your 12.4.3 install with the release-date heuristic.

The mods you add split across the next two sections by what they change: *Mechanics* for tools that change how you work with the sim, and *Graphics* for mods that change how it looks.

===== Mechanics (UI & Quality-of-Life)

Tools that make the sim easier to operate and plan — navigation aids, information displays, ground-handling conveniences — without changing any aircraft's numbers.

#mod-entry(
  "X-RAAS2",
  url: "https://github.com/olivierbutler/X-RAAS2-xp12",
  deps: none,
  impact: "Aural and visual runway awareness advisories in the style of the Honeywell RAAS — \"approaching runway\", \"on runway\", \"long landing\" callouts — a second pair of ears for pattern work.",
  notes: "Freeware (open source). XP12-compatible community build — get the release archive from the GitHub releases page and install the plugin folder into Resources/plugins/. It scans installed scenery to build its runway database; remove the old FlyWithLua-based X-RAAS 1.0 before installing. Current version: user to provide.",
)

#mod-entry(
  "FlyWithLua NG+",
  url: "https://forums.x-plane.org/files/file/82888-flywithlua-ng-next-generation-plus-edition-for-x-plane-12-win-lin-mac/",
  deps: none,
  impact: "Lua scripting engine for X-Plane 12 — the runtime many quality-of-life scripts and visual tweaks (including some in later waves) depend on.",
  notes: "Freeware. Install into Resources/plugins/; scripts go in the plugin's Scripts folder, and failing scripts are moved to Scripts (Quarantine). Current version: user to provide.",
)

===== Graphics (Visual & Interface)

Mods that only change how the sim looks or reads: textures, colors, HUD styling, readability. Nothing here changes behavior.

#mod-entry(
  "X-Clouds Enhancer",
  url: "https://forums.x-plane.org/files/file/100781-x-clouds-enhancer/",
  deps: none,
  impact: "Refines the sim's cloud rendering — more natural cloud shapes and density, cloud self-shadowing and lighting, and atmospheric blending — cosmetic only.",
  notes: "User-supplied visual mod (freeware, Scenery Enhancement Packs section of the X-Plane.org forums). Read its page for compatibility notes with other sky and lighting mods. Current version: user to provide.",
)

===== Alternate Trainer (user-supplied)

The one deliberate exception to the wave's UI/QoL rule: the DA20-SV you supplied is another aircraft to fly the *same* lessons in, not a change to the 172's numbers. Fly it when you want a second opinion on the pattern; the wave guide stays written around the stock 172.

#mod-entry(
  "Diamond DA20-SV (Aerobask)",
  url: "https://store.x-plane.org/Diamond-DA20-SV-by-Aerobask_p_1980.html",
  deps: none,
  impact: "Adds the two-seat Diamond DA20 trainer as an optional second study aircraft — Dynon SkyView glass cockpit or a classic six-pack, switchable in the cockpit.",
  notes: "User-supplied aircraft (payware, XP12-only). The wave still centers on the stock 172; this card adds a second seat for the same lessons, not a change to the 172's numbers. Current version and any dependencies: user to provide.",
)
