# Primordial Outpost Reborn - STATUS

**Target:** ONI Build 744825, released 2026-07-28 (resolved 2026-08-04, build gate).
**DLCs:** Base + Spaced Out! + Bionic Booster Pack.

## Audit Trail
- 2026-08-04: Mod Updater (2018291283) verified: VERIFIED as organizer. Live Workshop item for ONI (app 457140) — 4,540 ratings, 508,196 subscribers, last-updated 29 Jun 2024.
- 2026-08-04: Build gate resolved -> Build 744825 (2026-07-28). Stated target "Build 744825 / July 28, 2026" / "June 11, 2026 update" — MATCHED. Sources: https://steamdb.info/app/457140/patchnotes/, https://steamcommunity.com/app/457140/allnews/.
- 2026-08-04: Project started. Spec + plan written (docs/superpowers/).

## Decisions
- **Mod organizer (2026-08-04):** Mod Updater (page creator "Stephen"; brief attributes it to Peter Han; https://steamcommunity.com/sharedfiles/filedetails/?id=2018291283) = VERIFIED as organizer; installation chapter uses Mod Updater path. Evidence: live page (Playwright snapshot 2026-08-04) shows title "Mod Updater", creator shown as "Stephen" (profile 76561198025154321), description links source to github.com/peterhaneve/ONIMods; description states it updates subscribed mods to their latest ONI Workshop versions, fixing outdated-mod serving caused by Workshop CDN caching; 4,540 ratings, 508,196 current subscribers, 18,774 favorites; file size 169 KB; posted 9 Mar 2020; last-updated: 2024-06-29 (page renders "28 Jun, 2024 @ 4:07pm" — timezone-display dependent).
- **Build gate (2026-08-04):** resolved to Build 744825, released 2026-07-28. Stated target was "Build 744825 (July 28, 2026)" / "June 11, 2026 update" — MATCHED. Sources: SteamDB patch notes (https://steamdb.info/app/457140/patchnotes/), Steam community news (https://steamcommunity.com/app/457140/allnews/).

## Accepted Mods
| Mod | URL | Author | Class | Last updated | DLC | Wave | Verdict date | Evidence |
|---|---|---|---|---|---|---|---|---|

## Rejected Mods
| Mod | URL | Reason | Date |
|---|---|---|---|

## Conflicts
- (see conflicts-mods.md)

## Notes
- The June 11, 2026 update is the Aquatic Planet Pack DLC launch. Aquatic Planet Pack is NOT owned; exclude any mod requiring it. Owned DLCs: Base + Spaced Out! + Bionic Booster Pack.
- Mod organizer facts for the installation chapter (verified 2026-08-04): install = subscribe on the Workshop page (id=2018291283); ONI downloads it on next launch. It integrates with the in-game Mods dialog: shows per-mod last-update date, flags outdated mods, "Update All" button at the bottom of the Mods dialog (visible only when at least one mod is outdated), warning text on the Main Menu when mods are out of date. Enable/disable of mods remains the in-game Mods menu. Works for Steam-purchased ONI only (not Epic Games Store / WeGame). OneDrive on Windows can still break mod updates even with Mod Updater installed — known failure mode: mod update/restart loops (see guide 3522703974 "Mod Update Restart Loop"). No support for the CS-469300 previous version or public testing releases. The page does NOT state the local mods folder path — do not assert one in the guide from this page.
- Attribution: Workshop page lists the creator as "Stephen" (profile 76561198025154321); the description credits github.com/peterhaneve/ONIMods ("Peter Han" per project brief). Guide should use page-visible metadata or note the discrepancy.
- (open items, pending verifications, discrepancies)
