# Modlist Conflict Resolution — Design Spec

**Date:** 2026-07-23
**Status:** Approved

## Problem

A full audit of all 128 mod entries across Waves 0, 0.5, 1, and 2 revealed:

- 14 mod pairs with explicit conflicts or functional redundancies
- 1 duplicate mod entry (listed in two waves)
- Several niche overloads (9 planet packs, 5 shuttle mods, 3 interstellar mods)

## Design Decisions

### Wave 0.5 (Tools)

| Decision          | Keep                          | Drop                  | Reason                                                                                                                                   |
|-------------------|-------------------------------|-----------------------|------------------------------------------------------------------------------------------------------------------------------------------|
| Transfer planning | TransferWindowPlanner         | Astrogator            | TWP provides superior precision (porkchop plots, ejection angles). Precision matters for Wave 2 life support and interstellar transfers. |
| Docking alignment | DPAI (W0.5), Navball DAI (W2) | Navball DAI from W0.5 | DPAI for learning (W0.5), Navball DAI for advanced (W2). Not both in W0.5.                                                               |

### Wave 1 (Going Further)

| Decision           | Keep                                                                         | Drop                            | Reason                                                                                                                                                                                                                                                                                                           |
|--------------------|------------------------------------------------------------------------------|---------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Planet reflections | Deferred                                                                     | PlanetShine                     | Deferred handles planet reflections natively. Modern deferred renderer supersedes PlanetShine.                                                                                                                                                                                                                   |
| SLS/Orion          | Artemis Construction Kit                                                     | ORANGES, reDIRECT               | Artemis CK is CKAN-supported, actively developed, highest quality. reDIRECT is older/lighter by same author. ORANGES is WIP beta, manual install.                                                                                                                                                                |
| Orbital survey     | SCANsat                                                                      | OrbitalSurveyPlus               | SCANsat provides comprehensive altimetry, biome, and slope maps essential for Wave 2 colonization. OSP is a lighter stock-adjacent alternative.                                                                                                                                                                  |
| Part recoloring    | TURD + SimpleRepaint                                                         | —                               | Complementary: TURD for high-quality PBR on configured parts; SimpleRepaint covers unconfigured parts. Not redundant.                                                                                                                                                                                            |
| Heavy lifters      | NearFutureLaunchVehicles                                                     | SpaceY-Lifters, SpaceY-Expanded | NF Launch Vehicles is part of the Nertea ecosystem already committed to (all Near Future packs, Restock, Waterfall, System Heat, Space Dust). Visual consistency.                                                                                                                                                |
| Planet packs       | OPM, MinorPlanetsExpansion, QuackPack, KcalbelohSystem, GrannusExpansionPack | PromisedWorlds, CosmicSerenity  | Three Kerbol extensions (OPM + Minor Planets + QuackPack; QuackPack recommends OPM in NetKAN) plus two interstellar destinations (Kcalbeloh black hole system + Grannus binary star; Blueshift recommends Grannus). Promised Worlds is KSP2 nostalgia — less unique. Cosmic Serenity has compatibility concerns. |
| Shuttle parts      | Artemis CK, Tantares, TantaresLV, TantaresSP                                 | SOCK, BuranOrbiterCK            | Artemis CK covers modern era (SLS/Orion). Drop shuttle era replicas — add parts without gameplay depth beyond what Artemis CK already provides. Tantares provides Soviet launcher parts for historical contrast.                                                                                                 |

### Wave 2 (The Long Ascent)

| Decision                | Keep                              | Drop                    | Reason                                                                                                                                                                                                                                                                                   |
|-------------------------|-----------------------------------|-------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Interstellar propulsion | FarFutureTechnologies + Blueshift | KSPInterstellarExtended | FFT is the Nertea ecosystem standard (matching Wave 1), CKAN-supported, high visual quality. Blueshift adds complementary FTL with mandatory infrastructure mechanic. Blueshift recommends GrannusExpansionPack (kept). KSPIE is kitchen-sink complexity, manual install, dated visuals. |
| Docking alignment       | CommunityNavballDockingIndicator  | DPAI (by Wave 2)        | Guide already says "prefer Navball DAI by Wave 2." Keep the W2 note recommending the switch.                                                                                                                                                                                             |

### Bug Fix

| Issue                                                        | Fix                                                                |
|--------------------------------------------------------------|--------------------------------------------------------------------|
| CommunityNavballDockingIndicator appears in both W0.5 and W2 | Remove from W0.5. Keep in W2 as the advanced replacement for DPAI. |

## NetKAN Dependency Verification

All dependencies verified against `https://raw.githubusercontent.com/KSP-CKAN/NetKAN/master/NetKAN/<id>.netkan`:

| Kept Mod               | NetKAN Depends                                                                                                                                           | Status     |
|------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------|------------|
| MinorPlanetsExpansion  | ModuleManager, Kopernicus, KSPCommunityFixes, OuterPlanetsMod                                                                                            | All kept ✓ |
| ArtemisConstructionKit | ModuleManager, B9PartSwitch, AnimatedDecouplers, Benjee10-SharedAssets, HabTechProps, DeployableEngines, CommunityResourcePack, SimpleAdjustableFairings | All kept ✓ |
| Blueshift              | ModuleManager, FireflyAPI                                                                                                                                | All kept ✓ |
| QuackPack              | ModuleManager, Kopernicus, CommunityTerrainTexturePack, (vertex height libs)                                                                             | All kept ✓ |
| KcalbelohSystem        | ModuleManager, Kopernicus, Singularity, KSPCommunityFixes, KopernicusExpansionContinueder, (vertex libs), KcalbelohSystem-Textures                       | All kept ✓ |
| NewTantares            | ModuleManager, B9PartSwitch                                                                                                                              | All kept ✓ |
| NewTantaresLV          | ModuleManager, Waterfall, B9PartSwitch                                                                                                                   | All kept ✓ |
| SCANsat                | ModuleManager                                                                                                                                            | Kept ✓     |

**Additional synergies found:**

- QuackPack recommends OuterPlanetsMod (both kept)
- Blueshift recommends GrannusExpansionPack (both kept)
- Blueshift recommends Kopernicus (kept)

**No kept mod depends on a dropped mod.** Confirmed by NetKAN metadata. No cascade issues.

**Dropped mods not on NetKAN (404):** GrannusExpansionPack, ShuttleOrbiterConstructionKit, BuranOrbiterConstructionKit, ORANGES, reDIRECT, PromisedWorlds, CosmicSerenity, KSPInterstellarExtended. These are manual-install only in the guide, so no CKAN dependency concerns from dropping them.

## Changes to Guide Files

### 1. wave-05-tools.typ

**Remove mod-entry blocks:**

- Astrogator (lines ~110–118)
- CommunityNavballDockingIndicator (lines ~67–76)

**Fix stale cross-references (not inside dropped mod-entry blocks):**

| Line | Current text                                                            | Fix                                                     |
|------|-------------------------------------------------------------------------|---------------------------------------------------------|
| 34   | `version_pin: [...For a simpler alternative, Astrogator integrates...]` | Remove Astrogator mention from TWP's version_pin        |
| 356  | `#section-heading([Transfer Window Planner & Astrogator])`              | Rename to `#section-heading([Transfer Window Planner])` |
| 358  | `TWP and Astrogator solve the same problem...Astrogator skips...`       | Rewrite paragraph to describe TWP only                  |
| 484  | `*Use TWP or Astrogator:* Open the planner...`                          | Remove Astrogator mention                               |

### 2. wave-1-going-further.typ

**Remove mod-entry blocks:**

- PlanetShine (lines ~98–107)
- SpaceY-Lifters (lines ~465–476)
- SpaceY-Expanded (lines ~478–483)
- OrbitalSurveyPlus (lines ~611–620)
- ShuttleOrbiterConstructionKit (lines ~733–748)
- BuranOrbiterConstructionKit (lines ~1035–1047)
- PromisedWorlds (lines ~1011–1020)
- CosmicSerenity (lines ~1023–1033)
- ORANGES (lines ~1058–1068)
- reDIRECT (lines ~1070–1080)

**Fix stale cross-references:**

| Line | Current text                                                      | Fix                                                          |
|------|-------------------------------------------------------------------|--------------------------------------------------------------|
| 81   | Deferred's conflicts: `PlanetShine is redundant...`               | Remove PlanetShine mention from conflict field               |
| 751  | Artemis CK conflicts: `ReDIRECT and ORANGES are alternative...`   | Remove. Artemis CK has no remaining conflicts. Set to `none` |
| 1163 | `disable PlanetShine if you keep Deferred`                        | Remove PlanetShine reference from troubleshooting            |
| 1166 | `PlanetShine + Deferred = redundant planet lighting. Choose one.` | Remove this line                                             |
| 1217 | `Uninstall PlanetShine if using Deferred (redundant)`             | Remove this line                                             |

### 3. wave-2-the-long-ascent.typ

**Remove mod-entry blocks:**

- KSPInterstellarExtended (lines ~105–115)

**Fix stale cross-references:**

| Line                | Current text                                            | Fix                                                                              |
|---------------------|---------------------------------------------------------|----------------------------------------------------------------------------------|
| FFT conflicts       | `KSP Interstellar Extended (KSPIE) is the competing...` | Remove KSPIE mention. Set to `none`                                              |
| Blueshift conflicts | `FFT and KSPIE provide their own...`                    | Remove KSPIE mention. Simplify to note FFT's sub-light approach as complementary |

### 4. No changes to wave-0-first-steps.typ

No references to dropped mods in Wave 0.

## Changes to CKAN Metapackages

All CKAN files use JSON with `spec_version: v1.34`, mods under `recommends` (or `suggests` for W2) as `{ "name": "..." }` arrays.

### the-long-ascent-wave-05.ckan

Remove from `recommends` array:

- `{ "name": "Astrogator" }`
- `{ "name": "CommunityNavballDockingIndicator" }`

### the-long-ascent-wave-1.ckan

Remove from `recommends` array:

- `{ "name": "PlanetShine" }`
- `{ "name": "SpaceY-Lifters" }`
- `{ "name": "SpaceY-Expanded" }`
- `{ "name": "OrbitalSurveyPlus" }` (if present — verify in full file)
- `{ "name": "ShuttleOrbiterConstructionKit" }` (if present)
- `{ "name": "BuranOrbiterConstructionKit" }` (if present)
- `{ "name": "PromisedWorlds" }` (if present)
- `{ "name": "CosmicSerenity" }` (if present)
- `{ "name": "ORANGES" }` (if present)
- `{ "name": "reDIRECT" }` (if present)

### the-long-ascent-wave-2.ckan

**KSPInterstellarExtended is NOT in the W2 CKAN file.** The W2 file uses `suggests` and contains: PlanetsideExplorationTechnologies, Pathfinder, Buffalo2, ExtraplanetaryLaunchpads, SimpleConstruction, FarFutureTechnologies, Blueshift, CommunityNavballDockingIndicator. No changes needed.

### the-long-ascent.ckan (combined)

Remove from `recommends` array:

- `{ "name": "Astrogator" }`
- `{ "name": "CommunityNavballDockingIndicator" }` (only the W0.5 entry; W2 suggests entry is OK)
- `{ "name": "PlanetShine" }`
- `{ "name": "SpaceY-Lifters" }`
- `{ "name": "SpaceY-Expanded" }`
- `{ "name": "OrbitalSurveyPlus" }` (if present)
- `{ "name": "ShuttleOrbiterConstructionKit" }` (if present)
- `{ "name": "BuranOrbiterConstructionKit" }` (if present)
- `{ "name": "PromisedWorlds" }` (if present)
- `{ "name": "CosmicSerenity" }` (if present)
- `{ "name": "ORANGES" }` (if present)
- `{ "name": "reDIRECT" }` (if present)

## Build Verification

After all edits, run the build script to verify PDF compilation:

```
scripts/build.bat
```

This invokes `typst compile --root . --font-path assets/fonts template/main.typ output/the-long-ascent.pdf`. The build must pass with zero errors. Typst will catch any broken references, missing includes, or syntax errors from the edits.

## Summary — 13 Mods Dropped

| Wave | Drop                      | CKAN ID                          | NetKAN Status                               |
|------|---------------------------|----------------------------------|---------------------------------------------|
| W0.5 | Astrogator                | Astrogator                       | On CKAN ✓                                   |
| W0.5 | Community Navball DAI     | CommunityNavballDockingIndicator | Removed from W0.5 only; stays in W2         |
| W1   | PlanetShine               | PlanetShine                      | On CKAN ✓                                   |
| W1   | ORANGES                   | ORANGES                          | Manual (not on NetKAN)                      |
| W1   | reDIRECT                  | reDIRECT                         | Manual (not on NetKAN)                      |
| W1   | Orbital Survey Plus       | OrbitalSurveyPlus                | On CKAN ✓                                   |
| W1   | SpaceY Heavy Lifters      | SpaceY-Lifters                   | On CKAN ✓                                   |
| W1   | SpaceY Expanded           | SpaceY-Expanded                  | On CKAN ✓ (depends on SpaceY-Lifters)       |
| W1   | Shuttle Orbiter CK        | ShuttleOrbiterConstructionKit    | Manual (not on NetKAN)                      |
| W1   | Buran Orbiter CK          | BuranOrbiterConstructionKit      | Manual (not on NetKAN)                      |
| W1   | Promised Worlds           | PromisedWorlds                   | Manual (not on NetKAN)                      |
| W1   | Cosmic Serenity           | CosmicSerenity                   | Manual (not on NetKAN)                      |
| W2   | KSP Interstellar Extended | KSPInterstellarExtended          | Manual (not on NetKAN, not in W2 CKAN file) |

128 → 115 mods. 3 CKAN files to update (W0.5, W1, combined). 2 guide files with stale text references.
