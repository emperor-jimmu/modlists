# 19 - Performance & Optimization

**Goal:** Run the modlist at playable framerates. Hardware recommendations,
benchmark methodology, optimization tools, engine settings, driver tuning, and
per-mod performance analysis.

## Hardware Recommendations

<!--
  PLACEHOLDER TABLE -- rows will be populated after benchmarking.
  Each tier needs CPU, GPU, and RAM specs filled in.
  Do NOT remove the table structure -- it's intentional scaffolding.
-->
| Tier        | Target       | CPU | GPU | RAM |
|-------------|--------------|-----|-----|-----|
| Minimum     | 1080p 30 FPS | --  | --  | --  |
| Recommended | 1440p 60 FPS | --  | --  | --  |
| Ultra       | 4K 60+ FPS   | --  | --  | --  |

*Hardware specs TBD -- will be filled after benchmarking.*

## Benchmark Methodology

1. Clean install of Cyberpunk 2077 v2.31 + Phantom Liberty
2. Mod Organizer 2 with all category mods installed
3. Run game on each hardware tier
4. Measure: average FPS, 1% lows, 0.1% lows, frame time consistency
5. Test locations: Little China (CPU-bound), Badlands (GPU-bound), Dogtown (mixed)

## Optimization Tools

### 0-Engine Enhanced Mods

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/28443>
- **Version:** 6.0.0
- **Released:** 2026-06-01
- **Summary:** Performance-optimized versions of popular CET mods. Rewrites per-frame polling loops into event-driven code using 0-Engine's unified lifecycle and shared state management. Reduces CET script load by eliminating unnecessary onUpdate cycles.
- **Why:** CET runs mods on a single thread — a few heavy mods can cause frame stuttering. 0-Engine rewrites the worst offenders to use event-driven architecture, reducing script load measurably. Provides optimized versions of Marmur Bank, Immersive Meditations, Card Collection, Rent a Motel, NC Courier Jobs, Dedka Car Dealership, Dedra's Truck Simulator, and Go on a Date (Panam) — all mods in this list.
- **Conflicts:** Install AFTER the original mods. Enhanced versions replace the CET scripts of the originals. Not a magic bullet — CET is still single-threaded and too many mods will still cause issues.
- **Dependencies:** Cyber Engine Tweaks. Original mods must be installed first for their assets.
- **MO2 Notes:** Extract to game root. Install AFTER all mods it enhances. Files section organizes enhanced versions by mod — install only the enhanced versions for mods you have. Retired enhancements moved to old files section.
- **Performance:** Positive (reduces CET script overhead)

> Mods and tools will be added as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

## Engine & Driver Settings

> Settings guide will be populated during the research phase.

## Per-Mod Performance Summary

<!--
  PLACEHOLDER TABLE -- rows will be populated as mods are approved.
  One row per mod with its performance tag.
  Do NOT remove -- this is intentional scaffolding for the centralized guide.
-->
| Mod | Performance Cost | Category |
|-----|------------------|----------|
| --  | --               | --       |

*Table will be populated as mods are added to the list.*

---
