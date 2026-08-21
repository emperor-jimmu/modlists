#import "../helpers.typ": *

==== Wave 5: Modlist

Wave 5's centerpiece is a *user-supplied aircraft addon*: the Boeing 777 Freighter. It is the final and most demanding wave, and the capstone of the foundational toolset plus every system added in Waves 1-4.

#mod-entry(
  "FlightFactor 777-200ERF v2 Ultimate (777F)",
  url: "https://store.x-plane.org/FlightFactor-777-200ERF-v2-ultimate_p_2114.html",
  deps: none,
  impact: "Adds the 777-200ERF widebody freighter as this wave's study aircraft — the largest and most complex aircraft in the guide.",
  notes: "User-supplied aircraft (payware addon). Current version and any dependencies: user to provide. Per project rule, nothing here validates compatibility — confirm against 12.4.3 with the release-date heuristic.",
)

One further mod was added at your direction on 2026-08-21 — the dispatcher's desk.

#mod-entry(
  "SimBrief",
  url: "https://www.simbrief.com",
  deps: "A free Navigraph account (sign-in is required); a Navigraph subscription unlocks current AIRAC data",
  impact: "Dispatch-grade flight planning: routes, fuel planning for 120+ aircraft profiles, weather, NOTAMs, and ETOPS — the long-haul briefing desk the 777F's operation runs on.",
  notes: "Free web service by Navigraph. Plans load into the 777F's EFB (and the Wave 4 Zibo/ToLiss aircraft) via SimBrief uplink or the FMS Downloader. Current version: user to provide.",
)
