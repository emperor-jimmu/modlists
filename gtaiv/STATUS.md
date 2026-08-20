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

## Decisions

- **Version target stays 1.0.8.0** (per AGENTS.md). Rationale: 1.0.8.0 is the only build that runs IV-SDK .NET content/mechanics scripts and the legacy mod catalog. Caveat recorded: FusionFix officially supports only the Complete Edition; on 1.0.8.0 it runs via the Legacy Addon with best-effort (not officially supported) status.
- **No-fabrication rule applied.** Only mods verified against a live source (GitHub repo/release) were written into the guide. Unverifiable content/mechanics/audio picks are "user to provide", not padded.
- **Excluded (redundant):** IV Centered Vehicle Cam and IV Centered OnFoot Cam (gennariarmando) — both merged into FusionFix.
- **Excluded (conflict):** ZolikaPatch — overlaps FusionFix; using both requires disabling ~30 overlapping options; violates the "no conflicting/redundant mods" rule.
- **Excluded (non-standalone):** GTAIV.EFLC.FusionShaders (Parallellines0451) is the shader source repo of FusionFix, not a separate user-facing mod.

## Pending / user inputs

- Standalone UI/QoL mods (Wave 0) — "user to provide".
- Specific content/mechanics/audio mods (Wave 1) — "user to provide"; install via IV-SDK .NET (scripts) or asset replacement.
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
