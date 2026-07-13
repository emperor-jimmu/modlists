# 17 -- Visuals & Atmosphere

**Goal:** Visual quality and atmosphere. Lighting, weather, LUTs/color grading,
texture improvements, and environmental effects. Performance-conscious choices
only -- every visual mod must justify its frametime cost.

> Mods will be added as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

---

### Nova Rain (and Improved Ripples)

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/13483>
- **Version:** 1.0.1a
- **Released:** 2024-03-10
- **Summary:** Subtle, realistically-sized rain particles that respect lighting
  conditions. Includes optional higher-quality water ripple textures.
- **Why:** Vanilla rain has oversized, in-your-face particles that glow
  unnaturally in shadow. This replaces them with subtle, light-responsive drops
  that look natural at night and in shadows, with improved ground ripple effects.
- **Conflicts:** Not compatible with other rain mods. Compatible with weather
  and lighting mods that don't edit rain textures/particles.
- **Dependencies:** None
- **MO2 Notes:**
    - Extract to game root. Tag as **Root**.
    - Optional improved ripples file available for download separately.
    - Works with path tracing, RT, and raster modes.
- **Performance:** Light

### ReLUX (Lighting Redux)

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/20808>
- **Version:** 2.2.0
- **Released:** 2026-02-15
- **Summary:** Overhauls interior lighting across major locations — removes
  fake GI bounces and replaces them with accurate emission from each light
  source. Covers Afterlife, Vik's, Misty's, Judy's, River's, All Foods, and
  fast travel terminals.
- **Why:** Vanilla interiors use baked fake global illumination and random
  light sources that don't match the actual fixtures. ReLUX replaces these
  with carefully placed real lights that respect the environment, creating
  grounded, cinematic interiors that shine in path tracing.
- **Conflicts:** None known — replaces vanilla lighting files
- **Dependencies:** ArchiveXL, ReImagined (required for v2.31+)
- **MO2 Notes:**
    - Extract to game root. Tag as **Root**.
    - Designed for path tracing but functional in RT and raster modes.
    - Modular updates released as separate downloads before being merged into AIO.
- **Performance:** Light (asset replacement, no per-frame overhead)

---

## Install Order

All mods are **Root**-category — enable Root Builder in MO2 before installing.

1. Nova Rain (and Improved Ripples)
2. ReLUX (Lighting Redux)
