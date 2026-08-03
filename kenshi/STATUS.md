# Scars of the Horizon - STATUS

Target: Kenshi 1.0.68 (released Apr 1, 2024). Mod organizer: KMM (Kenshi Mod Manager,
Nexus mod 1765) - verdict: COMPATIBLE (Task 3, 2026-08-03).
Mod sources: Steam Workshop (primary), Nexus Mods (secondary).

## Audit Trail
| Date | Item | Verdict | Evidence |
|---|---|---|---|

## Decisions
| Date | Decision | Rationale |
|---|---|---|
| 2026-08-03 | KMM (Nexus mod 1765) = COMPATIBLE with Kenshi 1.0.68 | Last updated 2025-10-19, originally uploaded 2025-10-12 by Aze4ka, v1.0.0-release, 97 endorsements. Actively maintained (.NET 9.0 / WPF, self-contained), requires "Kenshi (Steam or GOG version)" with no version pin - well after 1.0.68 (2024-04-01). No breakage reports found. Sources: https://www.nexusmods.com/kenshi/mods/1765 , https://github.com/nonniks/KenshiModManager |
| 2026-08-03 | Load order "later in list = higher priority" = VERIFIED | Steam guide: "Mods lower in the order overwrite mods higher in the order" (https://steamcommunity.com/sharedfiles/filedetails/?id=1850250979). Kenshi wiki FAQ: "the mod loaded AFTER, will override the value above it" (https://kenshi.fandom.com/wiki/Why_load_order_matters_and_other_FAQ_about_using_mods). Load order file = mods.cfg in game data folder (https://steamcommunity.com/sharedfiles/filedetails/?id=1684604012 , https://kenshi.fandom.com/wiki/Mods) |

## Accepted Mods
| Wave | Mod | URL | Last updated | Verified | Method | Deps | Compat | Notes |
|---|---|---|---|---|---|---|---|---|

## Rejected Mods
| Wave | Mod | Reason |
|---|---|---|

## Conflicts
| Mod A | Mod B | Issue | Mitigation |
|---|---|---|---|

## Notes
- KMM facts (Nexus mod 1765, fetched 2026-08-03): "KMM - Kenshi Mod Manager" by Aze4ka (user 155501568).
  Original upload 2025-10-12, last updated 2025-10-19, v1.0.0-release. Requirements: Windows 10+ (64-bit),
  Kenshi (Steam or GOG), self-contained (NO .NET install needed). Features: playsets (each a separate .cfg file),
  drag & drop reordering, Steam/local/custom mod detection, one-click launch, auto-updates. GitHub:
  https://github.com/nonniks/KenshiModManager (32 commits, .NET 9.0/WPF/MVVM).
- DISCREPANCY: Nexus id 1765 now points to a NEW KMM by Aze4ka (released Oct 2025), NOT the classic
  MillerScout "Kenshi Mod Manager" (https://github.com/millerscout/Kenshi-Mod-Manager, .NET Core 3.1.7, Genesis
  Modding Guild). The COMPATIBLE verdict applies to the current holder of Nexus 1765.
- VERIFIED: Steam install detection = "Automatically finds Kenshi and Steam installation paths" (GitHub README
  features). Load order managed by drag & drop reordering (GitHub usage: "Drag mods to reorder load priority");
  playsets saved as separate .cfg files, "Save & Launch" applies changes and starts Kenshi (Nexus description).
- UNVERIFIED: (1) Whether KMM writes the game's {Kenshi}/data/mods.cfg directly - page says playsets are separate
  .cfg files but the exact write target is not confirmed. (2) Mechanism of Steam path detection (registry vs
  library scan) - not documented. (3) The 41 Nexus community posts could not be fetched (JS-rendered); no explicit
  user confirmation of running KMM under Kenshi 1.0.68 was obtained. (4) Whether KMM's drag & drop direction
  (top = first-loaded) matches Kenshi's "later = higher priority" - not documented by the tool.
