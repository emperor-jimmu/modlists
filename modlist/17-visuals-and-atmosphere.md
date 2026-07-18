# 17 - Visuals & Atmosphere

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

### Environment Textures Overhaul - ETO

- **Nexus:** https://www.nexusmods.com/cyberpunk2077/mods/13372
- **Version:** Verify
- **Released:** 2024-03-08
- **Summary:** Comprehensive overhaul of environment textures including roads, sidewalks, buildings, and terrain at 4K resolution.
- **Why:** Supports the modlist's 4K baseline with high-resolution environment textures. Replaces vanilla textures that look blurry at 4K, significantly improving visual fidelity of Night City's surfaces.
- **Conflicts:** Will be overwritten by any mod that changes the same textures. Install early in load order.
- **Dependencies:** None (texture replacer)
- **MO2 Notes:** Extract to `archive/pc/mod/`. Install early -- other texture mods should overwrite ETO where they conflict. Large download size. Tag as **Root**.
- **Performance:** Heavy (increased VRAM usage from 4K textures)

---

### Immersive Night City Fixes

- **Nexus:** https://www.nexusmods.com/cyberpunk2077/mods/20588
- **Version:** Verify
- **Released:** 2025-04-01
- **Summary:** Fixes various visual bugs, floating objects, z-fighting, and misplaced props across Night City.
- **Why:** Even after CDPR's patches, visual bugs persist in the open world. This mod fixes floating props, clipping geometry, and visual errors that break immersion during exploration.
- **Conflicts:** Low -- uses ArchiveXL patching where possible
- **Dependencies:** ArchiveXL, TweakXL
- **MO2 Notes:** Extract to game root. Tag as **Root**. Safe to install mid-playthrough.
- **Performance:** None

---

### General Shadows Fixes

- **Nexus:** https://www.nexusmods.com/cyberpunk2077/mods/20405
- **Version:** Verify
- **Released:** 2025-03-28
- **Summary:** Fixes shadow rendering issues including flickering, banding, and incorrect shadow casting across the game world.
- **Why:** Shadow artifacts break visual consistency at 4K resolution. These fixes address engine-level shadow bugs that CDPR never patched, improving image quality without performance cost.
- **Conflicts:** None known (shader-level fixes)
- **Dependencies:** None (standalone)
- **MO2 Notes:** Extract to game root. Tag as **Root**. Works alongside other visual mods.
- **Performance:** None

---

### Preem Mirrors - Reflective Mirror Materials

- **Nexus:** https://www.nexusmods.com/cyberpunk2077/mods/25633
- **Version:** Verify
- **Released:** 2025-12-04
- **Summary:** Upgrades mirror materials across Night City with proper reflective shaders, replacing the low-quality vanilla mirror surfaces.
- **Why:** Vanilla mirrors use blurry, low-resolution reflections that look dated. This mod applies proper reflective materials to mirrors, enhancing visual quality in apartments, bathrooms, and storefronts.
- **Conflicts:** May conflict with other mirror/reflection mods
- **Dependencies:** None (material override)
- **MO2 Notes:** Extract to game root. Tag as **Root**. Performance impact depends on the number of reflective surfaces in view -- generally Light.
- **Performance:** Light

---

### Cyberpunk 2077 HD Reworked Project

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/7652>
- **Version:** 2.0
- **Released:** 2023-03-12
- **Summary:** Comprehensive texture overhaul by Halk Hogan PL (Witcher 3 HD Reworked author). Covers terrain, models/meshes, textures, and foliage across Night City with high-resolution replacements.
- **Why:** The definitive texture pack for Cyberpunk 2077 — 18K+ endorsements from a proven mod author. Vanilla textures look blurry at 4K resolution (this modlist's baseline). Halk Hogan's replacements are optimized to be performance-neutral or better than vanilla while providing significantly higher visual fidelity.
- **Conflicts:** Will be overwritten by other texture mods (ETO, Nova Rain, ReLUX). Install early in load order as a baseline texture layer.
- **Dependencies:** None (standalone texture replacer). REDmod tagged — uses .archive file replacement.
- **MO2 Notes:** Extract to `archive/pc/mod/`. Tag as **Root**. Install BEFORE ETO and other texture mods — let other visual mods overwrite where they conflict. Large download (multi-GB). Performance testing at 4K recommended.
- **Performance:** Moderate (increased VRAM usage from high-resolution textures; author's optimizations aim to offset this)

## Install Order

All mods are **Root**-category — enable Root Builder in MO2 before installing.

1. Cyberpunk 2077 HD Reworked Project
2. Environment Textures Overhaul - ETO
3. Immersive Night City Fixes
4. General Shadows Fixes
5. Preem Mirrors - Reflective Mirror Materials
6. Nova Rain (and Improved Ripples)
7. ReLUX (Lighting Redux)
