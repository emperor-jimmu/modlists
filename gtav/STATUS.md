# STATUS — Santos Supreme (GTA V)

**Target:** GTA V **Legacy** **1.0.3889.0** (July 14, 2026 update).
**Script framework:** ScriptHookV **v3889.0 / 1158.13** (Alexander Blade) + ScriptHookVDotNet (nightly).
**Mod organizer:** OpenIV (mods folder override).

## Legend

- [x] = completed
- [ ] = pending
- [!] = blocked

## Completed

### Foundation correction (2026-08-21)
- [x] Corrected the version target from the scaffold's "v1.73" (not a real GTA V build) to **Legacy 1.0.3889.0**. The July 14, 2026 update produced two builds: Legacy 1.0.3889.0 and Enhanced 1.0.1158.13. Legacy is the modding target (Enhanced has anti-cheat and restrictive modding).
- [x] Corrected the ScriptHookV URL from `dev-c.com/gtaiv/scripthookv/` (GTA IV path) to `dev-c.com/gtav/scripthookv/`.
- [x] Corrected the ASI loader filename: ScriptHookV ships `dinput8.dll` (the scaffold's `dsound.dll` was the old loader).
- [x] Corrected the ScriptHookVDotNet repo to the `scripthookvdotnet` org, and documented the **nightly requirement**: game >= 1.0.3258.0 needs nightly v3.6.0-nightly.89+ (stable v3.6.0/v3.5.1 have a compatibility bug).

### Wave 0 — Getting By (UI/QoL/bugfix)
- [x] Adopted **HeapAdjuster** (Dilapidated) — memory-heap stability.
- [x] Adopted **Packfile Limit Adjuster** — packfile-count stability.
- [x] Adopted **Bugstar Fixes** (Alex106) — community bugfix pack (7.0 Legacy).
- [x] Excluded all trainers (Simple Trainer, Menyoo, Rampage, Enhanced Native Trainer) per the no-cheating rule.

### Wave 1 — Untold Stories (graphics/content/mechanics)
- [x] Adopted **VisualV** (CP & robi29, 1.0.630 Legacy) as the base vanilla-plus graphics overhaul.
- [x] Adopted **LA Roads 2.0** and **Real California Architecture** as layered texture/signage packs.
- [x] Adopted **IVPack** (CP) — add-on GTA IV vehicles.
- [x] Adopted **Enable All Interiors** (HKH191) — interior unlocker.
- [x] Adopted **Dispatch of Variety** — maintained traffic/population variety.
- [x] Adopted **Drive V** (PermissionToLand) — realistic handling/damage.
- [x] Adopted **Manual Transmission** (ikt) — manual shifting + wheel support.
- [x] Adopted **Simple Fuel** (LeFix) — fuel system.
- [x] Adopted **Rebalanced Dispatch Enhanced (RDE)** (Yard1 & team) — police/emergency overhaul.

## Decisions

- **Version target is Legacy 1.0.3889.0.** The scaffold's "v1.73" is not a real GTA V build. Legacy is the modding-standard target; Enhanced (1.0.1158.13) is out of scope because of anti-cheat and restricted modding.
- **No-fabrication rule applied.** Only mods verified against a live source (GTA5-Mods, GitHub, LCPDFR, or the author's site) were written into the guide. Where an exact URL could not be confirmed, the mod is listed by name with a "distributed on GTA5-Mods.com" note rather than a guessed link. Version numbers are recorded as "latest (see source)" unless pinned.
- **Excluded (trainers):** Simple Trainer, Menyoo, Rampage, Enhanced Native Trainer — the no-cheating / no-all-knowing rule applies to every wave.
- **Excluded (graphics):** NaturalVision Evolved (Razed) — photorealism overhaul behind a Patreon paywall that conflicts with VisualV (same timecycle/lighting/weather files). Documented as an alternative, not adopted.
- **Excluded (content):** World of Variety (Cass) — deprecated for current builds and conflicts with IVPack (shared spawn-config files). Replaced by Dispatch of Variety.
- **Replaced (mechanics):** Realistic Driving V (Killatomate) was abandoned in 2018; Drive V (PermissionToLand) is the maintained successor.
- **Adult mods:** none listed by default; per project rules they require explicit per-mod user approval. The section documents the policy only.

## Pending / user inputs

- Standalone UI/HUD mods (Wave 0) — "user to provide"; none included because Wave 0 keeps the vanilla UI.
- Mission packs and large map additions (Wave 1 content) — "user to provide".
- Adult mods — await per-mod user approval.
- In-game verification: confirm the ScriptHookV loader text appears and the `mods` folder override works on the user's install before a full playthrough.

## Notes

- Research sources (verified 2026-08-21):
  - https://www.dev-c.com/gtav/scripthookv/ (ScriptHookV v3889.0/1158.13)
  - https://github.com/scripthookvdotnet/scripthookvdotnet (ScriptHookVDotNet)
  - https://github.com/Dilapidated/gtav-HeapAdjuster-ini (HeapAdjuster)
  - https://www.gta5-mods.com/tools/heapadjuster
  - https://www.gta5-mods.com/tools/packfile-limit-adjuster
  - https://www.gta5-mods.com/misc/visualv (VisualV 1.0.630 Legacy)
  - https://www.gta5-mods.com/misc/fixes-improvements (Bugstar Fixes 7.0 Legacy)
  - https://www.gta5-mods.com/vehicles/ivpack-gtaiv-vehicles-in-gtav (IVPack 1.0.280)
  - https://www.gta5-mods.com/scripts/enable-all-interiors-wip (Enable All Interiors)
  - https://www.gta5-mods.com/misc/dispatch-of-variety (Dispatch of Variety)
  - https://www.gta5-mods.com/misc/world-of-variety (World of Variety — rejected)
  - https://www.gta5-mods.com/vehicles/drive-v-realistic-driving-car-handling (Drive V)
  - https://www.gta5-mods.com/scripts/manual-transmission-ikt (Manual Transmission)
  - https://github.com/E66666666/GTAVManualTransmission (Manual Transmission repo)
  - https://www.gta5-mods.com/scripts/simple-fuel (Simple Fuel)
  - https://www.lcpdfr.com/downloads/gta5mods/misc/9266-rebalanced-dispatch-enhanced/ (Rebalanced Dispatch Enhanced)
  - https://razedmods.com/ (NaturalVision Evolved — alternative)
