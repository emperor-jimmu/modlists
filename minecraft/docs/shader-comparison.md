# Shader comparison — Solas vs Photon (Driftwood)

> **Bliss removed from the pack (Sep 16, 2026)** — user decision, same day it was added. Weakest Create/ColorWheel support, no generated PBR, no quality profiles, and the snow-LOD discoloration upstream closed as `not_planned`. Bliss section stripped below; kept in git history (`git show c7058fe:minecraft/docs/shader-comparison.md`).

Target context: NeoForge 1.21.1, Iris 1.8.14, RTX 4080 SUPER at 4K (70–80 FPS target),
Distant Horizons LODs 128–256, Faithful 32x base (no PBR maps), Create contraptions via ColorWheel.
Pack status: Solas is the current main shader; this file is research only and changes nothing
(see `minecraft/GUIDE.md` Shaderpack section for the live recommendation).

Latest-version facts below are from the Modrinth API (Sep 2026). Shader-internals facts are from
each shader's own repo (`shaders.properties`, language files, includes) and each author's
Modrinth/ColorWheel project page. Secondary claims are marked [UNVERIFIED].

## 1. Solas Shader (Septonious)

- Latest version supporting MC 1.21.1 + Iris: **V3.7b** (2026-08-23; "small fixes for Intel Arc"),
  loaders `iris` + `optifine`, game versions include 1.21.1.
  Sources: [Modrinth project](https://modrinth.com/shader/solas-shader),
  [V3.7b version entry](https://api.modrinth.com/v2/project/solas-shader/version?limit=10).
- V3.7 changelog (2026-07-01) fixed exactly this pack's pain points: "Fixed incorrect translucency
  blending with Voxy and Distant Horizons LODs", "Fixed Colorwheel compatibility", reworked PBR
  system (works on entities/held objects, closer to LabPBR). V3.6 had "Fixed broken reflections
  with Distant Horizons". Source: [V3.7 changelog](https://api.modrinth.com/v2/project/solas-shader/version?limit=10).
- **Distant Horizons support: native, zero shader-side setup.** The repo ships dedicated
  `shaders/dh_terrain.*` + `shaders/dh_water.*` LOD programs (they `#include "/programs/dh_terrain.glsl"`),
  and `shaders.properties` sets `dhClouds=off`. DH-relevant toggles that do exist:
  `SS_SHADOWS` (Screen Space Shadows — the in-shader comment reads "Very useful with Voxy and
  Distant Horizons": shadows keep rendering past the realtime shadow distance) and
  `REFLECTION_LOD` (LOD Reflection — "Determines the quality of DH and Voxy chunks in reflections",
  Fast/Fancy). Sources: [Solas repo shader list](https://github.com/Septonious/Solas-Shader),
  [`shaders.properties`](https://raw.githubusercontent.com/Septonious/Solas-Shader/main/shaders/shaders.properties),
  [`en_US.lang`](https://raw.githubusercontent.com/Septonious/Solas-Shader/main/shaders/lang/en_US.lang).
- **Volumetrics / clouds / fog:** ray-marched 3D `VOLUMETRIC_CLOUDS` + crepuscular-ray `VL`
  (samples: Low —, Medium 7, High 8, Ultra 12), LPV fog, Nether smoke, exponential height/distance
  fog (`FOG_DENSITY`, `FOG_HEIGHT`, `DISTANT_FADE`). Far LOD terrain is lit/fogged by the same
  pipeline; DH draws its own clouds OFF by default so the shader sky owns the horizon.
  Sources: [Modrinth features](https://modrinth.com/shader/solas-shader),
  [`shaders.properties` profiles](https://raw.githubusercontent.com/Septonious/Solas-Shader/main/shaders/shaders.properties).
- **PBR / materials:** integrated **generated PBR** (`GENERATED_NORMALS`, `GENERATED_SPECULAR`,
  `GENERATED_EMISSION` — all ON at High) plus external-pack support for **both LabPBR and
  OldPBR/SEUS** (`ADVANCED_MATERIALS`, `MATERIAL_FORMAT`). On Faithful 32x (which ships no PBR
  maps — its [Modrinth page](https://modrinth.com/resourcepack/faithful-32x) lists no PBR/normal/specular
  content), generated PBR is what gives vanilla blocks depth; it degrades gracefully to the flat
  32x look rather than breaking. Do NOT combine Generated Specular with an external PBR pack
  (the shader's own warning). Sources: [Modrinth features](https://modrinth.com/shader/solas-shader),
  [`shaders.properties` PBR screens](https://raw.githubusercontent.com/Septonious/Solas-Shader/main/shaders/shaders.properties).
- **ColorWheel / Create:** first-class. The repo ships `clrwl_gbuffers*` + `clrwl_shadow` programs
  and a `colorwheel.properties`; the [ColorWheel mod page](https://modrinth.com/mod/colorwheel)
  lists "Solas Shader, since v3.2" as officially compatible (works out of the box, no patcher).
- **Performance / presets:** Low / Medium / **High (default)** / Ultra profiles. Exact deltas:
  Low = 1024 shadows, distance 128, voxel 128, no volumetrics/generated-PBR; Medium adds
  refraction/bloom/VL(7 samples)/shadow color; High = 2048 shadows, distance 192, voxel 192,
  VL 8 samples, volumetric clouds, aurora, generated normals+specular; Ultra = 4096 shadows,
  distance 512, voxel 256, VL 12 samples, entity shadows. Self-described as "stunning visuals at
  a moderate performance cost". Source: [`shaders.properties`](https://raw.githubusercontent.com/Septonious/Solas-Shader/main/shaders/shaders.properties), [README](https://github.com/Septonious/Solas-Shader).
- **Config surface:** profile picker + screens SOLAS / ATMOSPHERICS / WATER / PBR / LIGHTING /
  COLOR / POST / OTHER. Key DH-relevant levers: `VOXEL_VOLUME_SIZE` (128/192/256 — "higher values
  greatly decrease performance"), `shadowMapResolution`, `shadowDistance`, `VL_SAMPLES`,
  `SS_SHADOWS`, `REFLECTION_LOD`. Source: [`shaders.properties`](https://raw.githubusercontent.com/Septonious/Solas-Shader/main/shaders/shaders.properties).

## 2. Photon Shaders (sixthsurge)

- Latest version supporting MC 1.21.1 + Iris: **v1.3b** (2026-04-14, hotfix on top of v1.3),
  loaders `iris` + `optifine`, game versions include 1.21.1.
  Source: [Photon versions](https://api.modrinth.com/v2/project/photon-shader/version?limit=10).
- **Distant Horizons support: native + actively developed.** The [Modrinth page](https://modrinth.com/shader/photon-shader)
  lists Distant Horizons (and Voxy) under Mods compatibility; v1.3 changelog: "Added support for
  Voxy; Added screen-space shadows and subsurface-scattering for distant terrain".
  The repo has a dedicated LOD abstraction, [`lod_mod_support.glsl`](https://raw.githubusercontent.com/sixthsurge/photon/main/shaders/include/misc/lod_mod_support.glsl),
  with separate `DISTANT_HORIZONS` and `VOXY` branches (combined depth/projection handling per LOD API).
- Own config surface for DH (screen `mods → distant_horizons`): `DH_OVERDRAW_DISTANCE` (default 16),
  `DH_OVERDRAW_FADE_LENGTH` (default 16), `NOISE_ON_DH_TERRAIN` (high-frequency detail noise on
  LOD terrain). Source: [`shaders.properties`](https://raw.githubusercontent.com/sixthsurge/photon/main/shaders/shaders.properties),
  [`settings.glsl`](https://raw.githubusercontent.com/sixthsurge/photon/main/shaders/settings.glsl).
- **Volumetrics / clouds / fog:** `VL` volumetric lighting, `VOLUMETRIC`-style multi-layer clouds
  (cumulus with 40×20 primary steps + lighting/ambient steps, altocumulus, cumulus congestus,
  cirrus, noctilucent, blocky/Minecrafty second layer), analytic + raymarched overworld fog with
  per-biome Rayleigh/Mie density controls, cloud shadows, crepuscular rays. Far LODs get
  screen-space shadows + SSS (v1.3) and the overdraw/fade controls above, i.e. LOD shading is a
  deliberate feature, not an afterthought.
  Sources: [Modrinth features](https://modrinth.com/shader/photon-shader),
  [`shaders.properties`](https://raw.githubusercontent.com/sixthsurge/photon/main/shaders/shaders.properties).
- **PBR / materials:** **full LabPBR resource-pack support only** (normal/specular mapping, POM
  with depth/samples/shadow settings, hardcoded specular/emission/SSS tables, rain puddles).
  There is **no generated-PBR fallback** in the repo — on Faithful 32x with no PBR maps the
  material pipeline has nothing to chew on, so blocks render with correct lighting but flat
  micro-surface (no invented normals). This is the biggest look-difference vs Solas on this pack's
  texture stack. Source: [Modrinth features](https://modrinth.com/shader/photon-shader),
  [`shaders.properties` materials screen](https://raw.githubusercontent.com/sixthsurge/photon/main/shaders/shaders.properties).
- **ColorWheel / Create:** partial. The repo ships a [`colorwheel.properties`](https://raw.githubusercontent.com/sixthsurge/photon/main/shaders/colorwheel.properties)
  (OIT config + `clrwl_*` blend rules), but the [ColorWheel mod page](https://modrinth.com/mod/colorwheel)
  lists only "Photon 1.3a" under **non-official** Colorwheel-Patcher support — i.e. needs the
  patcher mod, and upstream Photon is not in the official out-of-box list. The page also notes a
  [djefrey Photon fork](https://github.com/djefrey/photon) with colored lighting on contraptions +
  Voxy compat. Expect Create contraptions to render (fallback/OIT path) but without guaranteed
  full ColorWheel lighting unless via patcher/fork. [UNVERIFIED] in-game on this pack's Create version.
- **Performance / presets:** Low / Medium / High / Ultra profiles. Exact deltas: Low = 1024
  shadows, PCF only, no GTAO/VL/colored-lights/SSRT; Medium = 2048 shadows + VL, still no colored
  lights; High = + shadow color, variable penumbra, entity shadows, environment reflections, GTAO,
  water parallax, SSRT shadows; Ultra = + block-entity shadows, water caustics, colored lights
  (voxel volume 128 default, up to 512), air-fog colored light shafts. Notable: **voxel colored
  lighting is Ultra-only and Iris-only**; temporal upscaling (`TAAU`) exists but is **disabled by
  default** — a ready-made emergency FPS lever. Self-described "gameplay-focused".
  Sources: [`shaders.properties`](https://raw.githubusercontent.com/sixthsurge/photon/main/shaders/shaders.properties),
  [README](https://github.com/sixthsurge/photon).
- **Config surface:** very wide (world / lighting / sky / fog / materials / water / post / misc /
  mods). Key DH-relevant levers: `DH_OVERDRAW_DISTANCE`, `DH_OVERDRAW_FADE_LENGTH`,
  `NOISE_ON_DH_TERRAIN`, `SHADOW_SSRT` + steps, `shadowMapResolution`, `shadowDistance`,
  `VOXEL_VOLUME_SIZE` (Ultra only), per-cloud-type step counts, `TAAU_RENDER_SCALE` (0.75 default
  when enabled). Source: [`shaders.properties`](https://raw.githubusercontent.com/sixthsurge/photon/main/shaders/shaders.properties).

## 3. Comparison table

| Dimension | Solas V3.7b | Photon v1.3b |
|---|---|---|
| DH support | Native `dh_terrain`/`dh_water`; no shader-side setup; V3.7 fixed LOD translucency | Native via `lod_mod_support.glsl` (DH + Voxy branches); v1.3 added LOD SS-shadows + SSS |
| Far-LOD legibility | Screen-space shadows past realtime distance; Fancy LOD reflections; DH fog applies | Overdraw distance/fade + LOD noise; LOD SSS + screen-space shadows |
| GPU cost (4K) | Moderate by design; High default well-defined; voxel-192 + VL8 + 2048 shadows | Heaviest ceiling (voxel colored lights + caustics + shafts are Ultra-only); TAAU upscaler as reserve lever |
| Config friction | Lowest: 4 profiles + focused screens | Medium: huge menu but clear profile ladder |
| Faithful-32x fit | Best: generated PBR invents normals/specular/emission on map-less textures | Flat micro-surface (lighting-only); needs a LabPBR pack to shine |
| Create / ColorWheel | Official support since v3.2, in-repo integration | Patcher-only (1.3a) or djefrey fork; [UNVERIFIED] live |

## 4. Per-shader DH recommendations (RTX 4080 SUPER, 4K, LODs 128–256)

- **Solas:** start LOD distance **128** on the **High** profile (2048 shadows / 192 distance /
  voxel 192 / VL 8). First FPS levers in order: voxel 192→128, VL samples 8→7, shadow
  resolution 2048→1024, shadow distance 192→128; keep `SS_SHADOWS` ON and LOD Reflection Fancy.
  Push LODs to 256 only with headroom. Basis: profile definitions + GUIDE baseline
  (consistent with [`shaders.properties`](https://raw.githubusercontent.com/Septonious/Solas-Shader/main/shaders/shaders.properties)).
- **Photon:** start LOD distance **128** on the **High** profile (VL + GTAO + SSRT shadows without
  Ultra's voxel colored lights). First levers: cloud primary/lighting steps, `SHADOW_SSRT_STEPS`,
  shadow 2048→1024, then enable `TAAU` (0.75 scale) before touching LOD distance; keep
  `DH_OVERDRAW_DISTANCE/FADE` at 16 and `NOISE_ON_DH_TERRAIN` ON for LOD legibility; colored
  lights stay OFF unless Ultra headroom is proven. Basis: [`shaders.properties`](https://raw.githubusercontent.com/sixthsurge/photon/main/shaders/shaders.properties).
  [UNVERIFIED] end-to-end FPS on this pack.
## 5. Limitations — what could not be verified from primary sources

- **No in-game benchmarking was done** (per assignment non-goals). All FPS reasoning is derived
  from profile definitions and each author's qualitative performance claims ("moderate cost" /
  "gameplay-focused"), not measurements. Any 70–80 FPS statement for Photon on the RTX 4080 SUPER is [UNVERIFIED].
- **Photon ColorWheel behavior is second-hand**: the only primary source is the
  [ColorWheel mod page](https://modrinth.com/mod/colorwheel) listing patcher-supported versions
  (Photon 1.3a). Whether Create 6 contraptions render correctly with the
  patcher on this pack's exact mod set is [UNVERIFIED].
- **Iris pin**: the pack targets Iris 1.8.14; the Modrinth query for 1.21.1 returns
  `1.8.14-beta.1+1.21.1-neoforge` (beta, 2026-06-13) alongside release 1.8.12, so 1.8.14
  availability on the NeoForge loader train is beta-grade. Source: [Iris 1.21.1 versions](https://api.modrinth.com/v2/project/iris/version?limit=5&game_versions=%5B%221.21.1%22%5D).
- **Faithful 32x PBR**: stated as "ships no PBR maps" on the basis that its
  [Modrinth page](https://modrinth.com/resourcepack/faithful-32x) lists no PBR content; the
  pack's partial-PBR overlays (Fire Rekindled normals/specular) are GUIDE-scope, not re-verified here.
