# STATUS — Enhanced Liberty (GTA IV)

**Target:** GTA IV **1.0.8.0**.
**Base framework:** FusionFix **v5.0.1** (ThirteenAG) + Legacy Addon.
**Script framework:** IV-SDK .NET **1.9.1** (ClonkAndre).
**Mod organizer:** none (manual install; ASI/.NET loading via FusionFix's bundled Ultimate ASI Loader).

## Legend

- [x] = completed
- [ ] = pending
- [!] = blocked

## Completed

### Foundation correction (2026-08-20)
- [x] Corrected FusionFix attribution: it is **ThirteenAG** (`ThirteenAG/GTAIV.EFLC.FusionFix`), not ClonkAndre. The scaffold's `ClonkAndre/GTAIVFusionFix` URL returned HTTP 404.
- [x] Pinned FusionFix to **v5.0.1** (latest, released 2026-05-12); the scaffold's "v3.18.0" was not a real release.
- [x] Documented that 1.0.8.0 requires the **Legacy Addon** (`GTAIV.EFLC.FusionFixLegacyAddon.zip`); FusionFix fully supports only the Complete Edition.
- [x] Corrected the downgrade tool to **GTA IV Downgrader v2.2** (ClonkAndre); the scaffold pointed at an unrelated GTAForums guide.
- [x] Rewrote `06-fusionfix-config.md`: FusionFix config is an in-game menu + a single `GTAIV.EFLC.FusionFix.ini`, not the fictional `Graphics.ini`/`Controls.ini`/etc. files the scaffold described.

### Wave 0 — Fresh Off the Boat (UI & QoL)
- [x] Documented FusionFix as the wave's UI/QoL layer, with a verified feature list.
- [x] Added "user to provide" slots for standalone QoL mods (see Decisions).

### Wave 1 — City of Dreams (graphics/content/mechanics/audio)
- [x] Documented the FusionFix graphics feature set (AO, tone mapping, console gamma, sun shafts, volumetric fog, AA, FPS limiter, Vulkan/DXVK).
- [x] Adopted **IV-SDK .NET 1.9.1** (ClonkAndre) as the content/mechanics script framework (1.0.7.0/1.0.8.0 only).
- [x] Adopted **Radio Restoration** via the Downgrader's radio-downgrade option (restores ~50 songs removed in 2018).
- [x] Added "user to provide" slots for specific content/mechanics/audio mods.

### Curation batch 2 (2026-08-20)
- [x] Adopted **OpenIV** (openiv.com) — asset-install tool for vehicles/weapons/textures.
- [x] Adopted **Potential Grim** (iiCriminnaaL) — realism/mechanics overhaul; 1.0.7.0/1.0.8.0 compatible.
- [x] Adopted **Responsive Plus** (iiCriminnaaL) — combat/weapon/vehicle balance; pairs with Potential Grim.
- [x] Rejected **First Degree 154 Vehicle Addon Pack** — Complete Edition-only; does not target 1.0.8.0.
- [x] Reconsidered **ZolikaPatch** — unmaintained (author retired) and redundant with FusionFix; exclusion stands (see Decisions).

### Curation batch 3 — graphics (2026-08-20)
- [x] Adopted **Various Fixes** (valentyn-l) — texture LOD/prop/shader fixes + console restoration.
- [x] Adopted **Higher Resolution Vehicle Pack** — HD vehicle textures (1.0.8.0 compatible).
- [x] Adopted **DayL's Natural Timecycle** — vanilla-plus lighting/weather.
- [x] Rejected **RTX Remix** (xoxor4d) — Complete Edition 1.2.0.59-only.
- [x] Rejected **iCEnhancer 4.0** — requires 1.0.4.0.

## Decisions

- **Version target stays 1.0.8.0** (per AGENTS.md). Rationale: 1.0.8.0 is the only build that runs IV-SDK .NET content/mechanics scripts and the legacy mod catalog. Caveat recorded: FusionFix officially supports only the Complete Edition; on 1.0.8.0 it runs via the Legacy Addon with best-effort (not officially supported) status.
- **No-fabrication rule applied.** Only mods verified against a live source (GitHub repo/release) were written into the guide. Unverifiable content/mechanics/audio picks are "user to provide", not padded.
- **Excluded (redundant):** IV Centered Vehicle Cam and IV Centered OnFoot Cam (gennariarmando) — both merged into FusionFix.
- **Excluded (conflict + unmaintained):** ZolikaPatch — overlaps FusionFix (~30 options) and is no longer maintained (author Zolika1351 retired); FusionFix is the actively-maintained standard, so ZolikaPatch stays out.
- **Excluded (non-standalone):** GTAIV.EFLC.FusionShaders (Parallellines0451) is the shader source repo of FusionFix, not a separate user-facing mod.
- **Adopted (batch 2):** OpenIV, Potential Grim, Responsive Plus — verified via community/GTAForums sources. Exact version numbers are not pinned for the GTAForums-hosted mods (threads are Cloudflare-blocked to direct reads); versions are recorded as "latest (see thread)" rather than fabricated.
- **Rejected (CE-only):** First Degree 154 Vehicle Addon Pack — built for the Complete Edition; the 1.0.8.0 target keeps it out. Popular CE content packs will not drop into a downgraded install.
- **Adopted (batch 3 — graphics):** Various Fixes, Higher Resolution Vehicle Pack, DayL's Natural Timecycle — all 1.0.8.0-compatible; versions recorded as "latest (see source)" where a hard number could not be pinned without fabrication.
- **Rejected (CE/legacy-only graphics):** RTX Remix (CE 1.2.0.59, custom FusionFix fork) and iCEnhancer 4.0 (1.0.4.0). Both are the wrong patch target for this 1.0.8.0 modlist.

## Pending / user inputs

- Standalone UI/QoL mods (Wave 0) — "user to provide".
- Content mods (Wave 1) — "user to provide"; most vehicle packs are CE-only, so verify patch target. Audio mods (Wave 1) — "user to provide".
- In-game verification: confirm the FusionFix menu appears and the Legacy Addon loads on the user's 1.0.8.0 install before a full playthrough.

## Notes

- Research sources (verified 2026-08-20):
  - https://github.com/ThirteenAG/GTAIV.EFLC.FusionFix (v5.0.1)
  - https://github.com/ClonkAndre/GTAIVDowngrader (v2.2)
  - https://github.com/ThirteenAG/Ultimate-ASI-Loader
  - https://github.com/ClonkAndre/IV-SDK-DotNet (1.9.1)
  - https://github.com/gennariarmando/iv-centered-vehicle-cam (merged into FusionFix)
  - https://github.com/gennariarmando/iv-centered-onfoot-cam (merged into FusionFix)
  - https://github.com/Parallellines0451/GTAIV.EFLC.FusionShaders (FusionFix shader source)
  - https://openiv.com/ (OpenIV tool)
  - https://gtaforums.com/topic/945227-iveflc-potential-grim/ (Potential Grim)
  - https://gtaforums.com/topic/931069-iveflc-responsive-plus/ (Responsive Plus)
  - https://zolika1351.pages.dev/games/gtaiv (ZolikaPatch — unmaintained)
  - https://github.com/valentyn-l/GTAIV.EFLC.Various.Fixes (Various Fixes)
  - https://libertycity.net/files/gta-4/236950-higher-resolution-vehicle-pack-15th.html (Higher Resolution Vehicle Pack)
  - https://www.gtaall.com/gta-4/mods/147781-dayls-natural-timecycle.html (DayL's Natural Timecycle)
  - https://github.com/xoxor4d/gta4-rtx (RTX Remix — CE 1.2.0.59 only)
