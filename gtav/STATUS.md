# STATUS — Santos Supreme (GTA V)

**Target:** GTA V **Expanded & Enhanced** **1.0.1158.13** (July 14, 2026 update).
**Script framework:** ScriptHookV **v3889.0 / 1158.13** (Alexander Blade) + ScriptHookVDotNet Enhanced.
**Mod organizer:** CodeWalker + OpenRPF (mods folder override).

## Legend

- [x] = completed
- [ ] = pending
- [!] = blocked

## Completed

### Foundation correction (2026-08-21)
- [x] Corrected the version target from the scaffold's "v1.73" (not a real GTA V build) to the **Expanded & Enhanced** edition **1.0.1158.13**. The July 14, 2026 update produced two builds: Legacy 1.0.3889.0 and Enhanced 1.0.1158.13.
- [x] **Edition correction:** the owner runs the **Expanded & Enhanced** edition, not Legacy. Re-targeted the whole list to Enhanced 1.0.1158.13 (an earlier draft had targeted Legacy 1.0.3889.0).
- [x] Corrected the ScriptHookV URL from `dev-c.com/gtaiv/scripthookv/` (GTA IV path) to `dev-c.com/gtav/scripthookv/`.
- [x] Corrected the ASI loader filename: ScriptHookV ships `dinput8.dll` (the scaffold's `dsound.dll` was the old loader).
- [x] Documented the Enhanced toolchain: OpenIV is replaced by **OpenRPF** (Enhanced OpenIV.asi / mods folder) + **CodeWalker** (Gen9 archive editor).
- [x] Documented the Enhanced script frameworks: ScriptHookV v3889.0/1158.13 (Enhanced support) and **ScriptHookVDotNet Enhanced**.

### Wave 0 — Getting By (UI/QoL/bugfix)
- [x] Adopted **HeapAdjuster** (Dilapidated, Enhanced build) — memory-heap stability.
- [x] Adopted **Packfile Limit Adjuster** (Enhanced build) — packfile-count stability.
- [x] Adopted **Bugstar Fixes** (Alex106) — community bugfix pack (7.0, Enhanced build available).
- [x] Excluded all trainers (Simple Trainer, Menyoo, Rampage, Enhanced Native Trainer) per the no-cheating rule.

### Wave 1 — Untold Stories (graphics/content/mechanics)
- [x] Adopted **VisualV** (CP & robi29, 2.0.640 Enhanced) as the base vanilla-plus graphics overhaul.
- [x] Adopted **LA Roads 2.0** and **Real California Architecture** as layered texture/signage packs.
- [x] Adopted **Real | RAGE V - 4K Water Overhaul** (Real_Gabe) — water textures.
- [x] Adopted **IVPack** (CP) — add-on GTA IV vehicles (Enhanced build available).
- [x] Adopted **VanillaWorks Extended Pack** (VanillaWorks & other modders) — lore-friendly vehicle add-on.
- [x] Adopted **Enable All Interiors** (HKH191) — interior unlocker.
- [x] Adopted **Dispatch of Variety** — maintained traffic/population variety.
- [x] Adopted **Drive V** (PermissionToLand) — realistic handling/damage.
- [x] Adopted **Manual Transmission** (ikt) — manual shifting + wheel support.
- [x] Adopted **Simple Fuel** (LeFix) — fuel system.
- [x] Adopted **Rebalanced Dispatch Enhanced (RDE)** (Yard1 & team) — police/emergency overhaul.

## Decisions

- **Version target is the Expanded & Enhanced edition 1.0.1158.13.** The owner runs Enhanced, not Legacy. Enhanced has a different toolchain (CodeWalker + OpenRPF) and needs Enhanced-specific builds of memory tools, ScriptHookVDotNet, and the gameconfig.
- **Wave 1 builds on Wave 0.** Wave 1 keeps every Wave 0 mod and layers graphics/content/mechanics on top (no "clear the mods folder" step).
- **No-fabrication rule applied.** Only mods verified against a live source (GTA5-Mods, GitHub, LCPDFR, or the author's site) were written into the guide. Where an exact URL could not be confirmed, the mod is listed by name with a "distributed on GTA5-Mods.com" note rather than a guessed link. Version numbers are recorded as "latest (see source)" unless pinned.
- **Excluded (trainers):** Simple Trainer, Menyoo, Rampage, Enhanced Native Trainer — the no-cheating / no-all-knowing rule applies to every wave.
- **Excluded (graphics):** NaturalVision Evolved (Razed) and QuantV — paywalled lighting/weather overhauls that conflict with VisualV (same timecycle/lighting/weather files). Documented as alternatives, not adopted.
- **Excluded (content):** World of Variety (Cass) — deprecated and conflicts with IVPack. Replaced by Dispatch of Variety. LA Revo 2.0 (Adnr Studio) — paywalled all-in-one map/graphics overhaul that conflicts with the curated stack.
- **Replaced (mechanics):** Realistic Driving V (Killatomate) was abandoned in 2018; Drive V (PermissionToLand) is the maintained successor.
- **Adult mods:** none listed by default; per project rules they require explicit per-mod user approval. The section documents the policy only.

## Pending / user inputs

- Standalone UI/HUD mods (Wave 0) — "user to provide"; none included because Wave 0 keeps the vanilla UI.
- Mission packs and large map additions (Wave 1 content) — "user to provide".
- Adult mods — await per-mod user approval.
- In-game verification: confirm the ScriptHookV loader text appears and the `mods` folder override (OpenRPF) works on the user's Enhanced install before a full playthrough.

## Notes

- Research sources (verified 2026-08-21):
  - https://www.dev-c.com/gtav/scripthookv/ (ScriptHookV v3889.0/1158.13)
  - https://www.gta5-mods.com/tools/script-hook-v-net-enhanced (ScriptHookVDotNet Enhanced)
  - https://www.gta5-mods.com/tools/openrpf-openiv-asi-for-gta-v-enhanced (OpenRPF)
  - https://discord.gg/codewalker (CodeWalker)
  - https://github.com/Dilapidated/gtav-HeapAdjuster-ini (HeapAdjuster)
  - https://www.gta5-mods.com/tools/heapadjuster
  - https://www.gta5-mods.com/tools/packfile-limit-adjuster
  - https://www.gta5-mods.com/misc/visualv (VisualV 2.0.640 Enhanced)
  - https://www.gta5-mods.com/misc/fixes-improvements (Bugstar Fixes 7.0)
  - https://www.gta5-mods.com/vehicles/ivpack-gtaiv-vehicles-in-gtav (IVPack 1.0.280)
  - https://www.gta5-mods.com/vehicles/vanillaworks-extended-pack-add-on-oiv-tuning-liveries-vanillaworks-and-other-modders (VanillaWorks Extended Pack)
  - https://www.gta5-mods.com/scripts/enable-all-interiors-wip (Enable All Interiors)
  - https://www.gta5-mods.com/misc/dispatch-of-variety (Dispatch of Variety)
  - https://www.gta5-mods.com/misc/world-of-variety (World of Variety — rejected)
  - https://www.gta5-mods.com/misc/real-rage-4k-water-overhaul (Real | RAGE V - 4K Water Overhaul)
  - https://www.gta5-mods.com/vehicles/drive-v-realistic-driving-car-handling (Drive V)
  - https://www.gta5-mods.com/scripts/manual-transmission-ikt (Manual Transmission)
  - https://github.com/E66666666/GTAVManualTransmission (Manual Transmission repo)
  - https://www.gta5-mods.com/scripts/simple-fuel (Simple Fuel)
  - https://www.lcpdfr.com/downloads/gta5mods/misc/9266-rebalanced-dispatch-enhanced/ (Rebalanced Dispatch Enhanced)
  - https://razedmods.com/ (NaturalVision Evolved — alternative)