#import "../templates/style.typ": *
#pagebreak()

= Appendix A — Mod Reference Table

This appendix contains a master table of all mods in the Torque Ascension modlist. Each mod is detailed in its respective wave chapter with full installation instructions. This table provides a quick overview.

== Mod Summary

The full Torque Ascension modlist. Every entry is verified against AMS2 V1.6+ (July 2026 target) and installs through AMS2CM unless noted. Mods accumulate: a Wave 3 setup includes everything below.

#styled-table(
  columns: 6,
  table.header([No.], [Mod Name], [Wave], [Category], [Version], [Source]),
  [1], [AMS2 Content Manager], [0], [Career App], [v0.3.0], [OverTake.gg],
  [2], [SimHub], [0], [Dashboard/Overlay], [Latest], [simhubdash.com],
  [3], [Crew Chief], [0], [Career App], [Latest], [thecrewchief.org],
  [4], [Crew Chief App Manager], [0], [Career App], [v1.0.0], [OverTake.gg],
  [5], [NAMeS: Real Drivers for AMS2], [1], [AI Files], [v5.95], [OverTake.gg],
  [6], [GT4 Skin Pack by JTN], [1], [Skins/Liveries], [v1.0], [OverTake.gg],
  [7], [IMSA MPC 2021 Pack | GT4/GS], [1], [Skins/Liveries], [v0.7], [OverTake.gg],
  [8], [AMS2 Custom FFB — rFuktor Control the Limit], [2], [Custom FFB], [v1.0.1], [OverTake.gg],
  [9], [Aces IMSA GT3 Bundle], [2], [Skins/Liveries], [2026.Phase3], [OverTake.gg],
  [10], [Aces AMS2 SimHub Overlay Suite], [2], [Dashboard/Overlay], [v1.3], [OverTake.gg],
  [11], [Omitool2 (for SimHub)], [2], [Dashboard/Overlay], [20250727a], [OverTake.gg],
  [12], [Second Monitor], [2], [Career App], [Latest], [GitLab],
  [13], [Rewind GP], [3], [Career App], [v1.6], [OverTake.gg],
  [14], [Race Pace — A Living Career App], [3], [Career App], [v20.0], [OverTake.gg],
  [15], [[IMG] F1 1990 Season], [3], [Skins/Liveries], [v1.4], [OverTake.gg],
  [16], [[AMS2] F1 1991 Season], [3], [Skins/Liveries], [v2.13], [OverTake.gg],
  [17], [Trofeo Maserati Europe 2005], [3], [Skins/Liveries], [v1.0], [OverTake.gg],
  [18], [Dodge Viper ORECA 2000 Le Mans], [3], [Skins/Liveries], [v1.5], [OverTake.gg],
  [19], [AVUS], [3], [Career App], [26.6], [OverTake.gg],
  [20], [#text("_HERVE_DASH")], [3], [Dashboard/Overlay], [V9.26], [OverTake.gg],
)

> *Note:* The Aces AMS2 SimHub Overlay Suite additionally requires the free *GarySwallowDataPlugin* (OverTake.gg, resource 18746) — a dependency, not a separate mod entry. Versions marked *Latest* auto-update (SimHub, Crew Chief) or are under active development (Second Monitor, last activity August 2026).

== Mods by Wave

=== Wave 0 — Rookie License

Foundation tools, installed once:

- AMS2 Content Manager — the mod manager every other mod installs through (full setup in Chapter 1)
- SimHub — dashboard/overlay platform; base for all later dashboard mods
- Crew Chief — spotter and race engineer with full AMS2 support
- Crew Chief App Manager — auto-starts and closes Crew Chief with the game

=== Wave 1 — National License

Real grids for your first championship:

- NAMeS: Real Drivers for AMS2 — real driver names for all default content (AMS2 V1.6.9.9)
- GT4 Skin Pack by JTN — 40-car GT4 livery grid with AI
- IMSA MPC 2021 Pack | GT4/GS — IMSA Michelin Pilot Challenge 2021 grid recreation

=== Wave 2 — International License

Feel, visuals, and data:

- AMS2 Custom FFB — rFuktor Control the Limit — custom FFB for control at the limit
- Aces IMSA GT3 Bundle — 2026 GTD/GTD PRO season liveries with AI names
- Aces AMS2 SimHub Overlay Suite — 18-race overlays: class leaderboards, real deltas, telemetry
- Omitool2 — SimHub dashboard for camber and tyre-pressure setup targets
- Second Monitor — lightweight second-screen timing and car monitoring

=== Wave 3 — World Championship

Career worlds, historic seasons, and pro tools:

- Rewind GP — historical Formula 1 career mode app
- Race Pace — persistent, evolving career world app
- [IMG] F1 1990 Season — full 1990 championship on Formula Classic Gen 3
- [AMS2] F1 1991 Season — full 1991 championship on Formula Classic Gen 4
- Trofeo Maserati Europe 2005 — 20-car Maserati GranSport Trofeo season grid (needs HEP2 DLC)
- Dodge Viper ORECA 2000 — works-team Vipers from the 2000 Le Mans winner
- AVUS — lap comparison and telemetry analysis for setup work
- #text("_HERVE_DASH") — professional SimHub race dashboards

#line(length: 100%)

== DLC Reference

AMS2 downloadable content available as of V1.6:

#styled-table(
  columns: 3,
  table.header([DLC], [Content], [Wave Relevance]),
  [Racin' USA Pack Pt 1], [Daytona, Long Beach, GTE cars], [Wave 1-3 (tracks)],
  [Racin' USA Pack Pt 2], [Road Atlanta, Watkins Glen, IndyCar], [Wave 2-3 (tracks, cars)],
  [Racin' USA Pack Pt 3], [Cleveland, Sebring, GTP cars], [Wave 2-3 (LMDh/GTP)],
  [Brazilian Stock Car Pro Series], [Stock Car Brasil 2023 season], [Wave 2 (core discipline)],
  [Endurance Pack Pt 1], [Le Mans, Porsche 962C, Corvette C8.R], [Wave 2-3 (endurance)],
  [Endurance Pack Pt 2], [Spa 24h layout, BMW M4 GT3, Mercedes-AMG GT3 Evo], [Wave 2-3 (GT3)],
  [Formula HiTech], [Formula Classic Gen 1-3, historic tracks], [Wave 3 (historic F1)],
  [Historical Track Pack Pt 1], [Historic Spa, Historic Interlagos, Nordschleife], [Wave 3],
  [Premium Expansion Packs], [Various cars + tracks (multiple packs)], [Wave 1-3],
  [Super Trophy Pack], [Lamborghini Super Trofeo], [Wave 1-2],
  [Adrenaline Pack Pt 1], [Rallycross cars + tracks], [Optional],
  [Adrenaline Pack Pt 2], [Additional off-road content], [Optional],
)

> *Note:* This DLC list reflects V1.6 content. Verify DLC ownership in your Steam library before purchasing.
