# Synaptic Overproduction - STATUS

Target: Factorio 2.0.77 (released May 21, 2026), Space Age owned. Mod organizer: built-in
mod manager (main menu -> Mods). Mod source: official Factorio Mod Portal (mods.factorio.com).

## Audit Trail
| Date | Item | Verdict | Evidence |
|---|---|---|---|
| 2026-08-03 | Krastorio 2 (portal API + page) 2.0.77 compatibility | VERIFIED - COMPATIBLE | API `mods.factorio.com/api/mods/Krastorio2`: title "Krastorio 2", owner raiguard, category overhaul, 385,329 downloads. Latest 2.0-line release **2.0.19 (2026-06-26)**, factorio_version "2.0" (covers 2.0.77); 2.1-line (2.1.2, 2026-06-28) is for Factorio 2.1, outside target. Changelog shows active maintenance through 2.0.19. |
| 2026-08-03 | Krastorio 2 vs Space Age conflict | CONFLICT - RESOLVED via K2SO bridge | K2 page Compatibility section: "Krastorio 2 does not properly support the Space Age mod. The game will load, but progression will be broken. Please install an add-on such as Krastorio 2 Spaced Out." |
| 2026-08-03 | Krastorio 2 Spaced Out (K2SO, portal API) 2.0.77 compatibility | VERIFIED - COMPATIBLE | API `mods.factorio.com/api/mods/Krastorio2-spaced-out`: title "Krastorio 2 Spaced Out", owner Polka_37, summary "Overhaul merging Krastorio 2 with Space Age", 53,565 downloads. Latest 2.0-line release **1.6.21 (2026-07-07)**, factorio_version "2.0", feature_flags ["space-travel"] (requires Space Age - owned). NOTE: the page's displayed "2.0.14" is the 2.1-line version; the 2.0 line uses 1.6.x numbers. |

## Decisions
| Date | Decision | Rationale |
|---|---|---|
| 2026-08-03 | Wave 2 = Krastorio 2 + Krastorio 2 Spaced Out bridge (user choice) | K2 does not properly support Space Age on its own (page: progression broken). K2SO (Polka_37) merges K2 with Space Age. Space Age is owned, so the bridge is eligible. Wave 2 thus has two anchor overhauls; every other Wave 2 mod must be verified compatible with BOTH. |
| 2026-08-03 | K2SO 2.0-line build = 1.6.21, not "2.0.14" | The API shows the 2.0-line releases use 1.6.x versioning (1.6.21, 2026-07-07, factorio_version 2.0); the page's "Latest Version: 2.0.14" is the 2.1-line branch. For a 2.0.77 install the built-in manager selects the 2.0-compatible 1.6.21. |
| 2026-08-03 | Wave 2 install: Space Age stays ENABLED | The K2SO bridge requires the space-travel feature flag, so Wave 2 is the Space Age-enabled wave. Wave 0/1 remain base-game-compatible (Space Age mods excluded there). |

## Accepted Mods
| Wave | Mod | URL | Last updated | Factorio version | Verified | Method | Deps | Compat | Notes |
|---|---|---|---|---|---|---|---|---|---|

## Rejected Mods
| Wave | Mod | Reason |
|---|---|---|

## Conflicts
| Mod A | Mod B | Issue | Mitigation |
|---|---|---|---|

## Notes
