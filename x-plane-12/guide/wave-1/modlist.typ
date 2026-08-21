#import "../helpers.typ": *

==== Wave 1: Modlist

Wave 1 keeps Wave 0's quality-of-life base (the foundational toolset) and begins adding *content and mechanics* — but no pure power spikes. The rule for this wave: anything that adds capability must also add something to learn or manage.

Two user-supplied mods anchor this wave. The centerpiece is the aircraft: the Cirrus SR22 G1000 in the form of the Take Command SR22 G1000 Series.

#mod-entry(
  "SR22 G1000 Series (Take Command)",
  url: "https://www.x-aviation.com/catalog/product_info.php/take-command-sr22-g1000-series-p-175",
  deps: none,
  impact: "Adds the Cirrus SR22 G1000 as this wave's study aircraft — the glass-cockpit platform the wave guide is written around.",
  notes: "User-supplied aircraft (payware addon). Current version and any dependencies: user to provide. Per project rule, nothing here validates compatibility — confirm against 12.4.3 with the release-date heuristic.",
)

The second is the immersion plugin you added to this wave: XPRealistic.

#mod-entry(
  "XPRealistic v2",
  url: "https://store.x-plane.org/XPRealistic-v2_p_1241.html",
  deps: none,
  impact: "Adds cockpit immersion effects — camera shake, head movement, and sound effects tied to the flight — without changing the flight model.",
  notes: "User-supplied plugin (payware). Pairs naturally with X-Camera from the foundational toolset (the developer documents the integration). Current version and any dependencies: user to provide.",
)

Two further mods were added at your direction on 2026-08-21 — one that makes the 172 you trained in behave like the machine it is, and one that gives your hands a proper panel.

#mod-entry(
  "Reality Expansion Pack (REP) for the Cessna 172SP",
  url: "https://www.simcoders.com/reality-expansion-pack/laminar-cessna-172/",
  deps: "The stock Laminar Cessna 172SP",
  impact: "Deepens the Wave 0 trainer: a custom engine model, realistic wear and failures, a walkaround and maintenance hangar, and more accurate flight dynamics — the 172 grows up.",
  notes: "Payware addon. XP12 requires REP 4.7.0 or newer; install on a fresh XP12 Cessna (do not copy an XP11 install) and update via the SkunkCrafts Updater. It adds plenty to learn and manage — exactly this wave's rule. Current version: user to provide.",
)

#mod-entry(
  "X-KeyPad",
  url: "https://www.stickandrudderstudios.com/x-keypad/",
  deps: none,
  impact: "Drives the sim from a Stream Deck (or X-Touch Mini, X-Keys): radios, autopilot, views, and custom panels with live state — capability that costs configuration to learn.",
  notes: "Freeware plugin by Stick and Rudder Studios (the X-Camera developer). Two-part install: the sim plugin plus the companion Stream Deck plugin. Current version: user to provide.",
)
