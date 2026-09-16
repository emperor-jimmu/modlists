# Shader comparison — Solas vs Photon vs Bliss (Driftwood)

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

## 3. Bliss Shaders (X0nk — Chocapic13 V9 edit)

- Latest version supporting MC 1.21.1 + Iris: **v2.1.2** (2025-11-23), loaders `iris` + `optifine`,
  game versions include 1.21.1. Note: v2.0.4 and older explicitly carry "(NO DISTANT HORIZONS
  SUPPORT)" in their release names — DH support starts with v2.1.0 (2025-09-03: "added Distant
  Horizons support. huge thanks to Null").
  Sources: [Bliss versions](https://api.modrinth.com/v2/project/bliss-shader/version?limit=8),
  [v2.1.0 changelog](https://api.modrinth.com/v2/project/bliss-shader/version?limit=8).
- **Distant Horizons support: native, with the largest DH settings menu of the three.**
  `shaders.properties` gates `dh_terrain`/`dh_water` programs per dimension behind
  `DISTANT_HORIZONS && IS_IRIS`, with a `DISTANT_HORIZONS_SHADOWMAP` → `dhShadow` toggle, and a
  dedicated `DISTANT_HORIZONS_SETTINGS` screen: `DH_OVERDRAW_PREVENTION`, `OVERDRAW_MAX_DISTANCE`,
  `DH_AMBIENT_OCCLUSION`, `DH_SUBSURFACE_SCATTERING`, `DH_SCREENSPACE_REFLECTIONS`,
  `DH_NOISE_TEXTURE` + `NOISE_RESOLUTION/INTENSITY/DROPOFF`, `TOGGLE_VL_FOG` + `VOLUMETRIC_CLOUDS`
  for LODs, and DH shadowmap resolution/distance reuse. The repo ships
  `shaders/dimensions/DH_solid.*` + `DH_translucent.*` programs, and the DH vertex shader applies
  the seasonal-color path to LODs (`DH_SEASONS`).
  Sources: [`shaders.properties`](https://raw.githubusercontent.com/X0nk/Bliss-Shader/main/shaders/shaders.properties),
  [`DH_solid.vsh`](https://raw.githubusercontent.com/X0nk/Bliss-Shader/main/shaders/dimensions/DH_solid.vsh).
- **Known LOD bug (primary source): snow/seasonal colors turn LODs pink/green/blue.**
  Issue [#246 "Snow in DH LODs messes with seasonal colours"](https://github.com/X0nk/Bliss-Shader/issues/246)
  (1.21 + Iris + DH: snow-covered grass/leaves LODs go bright green/pink/blue with Seasonal Colours ON)
  and issue [#357 "Snow LODs rendering as green/pink/blue with seasonal colors turned on"](https://github.com/X0nk/Bliss-Shader/issues/357)
  (1.21.1, same symptom; cleared by shader reload, returns when seasonal colors re-enabled).
  Both are currently **closed as `not_planned`**. Practical consequence: keep Bliss's
  Seasons/Seasonal Colours OFF when running DH, or expect discolored winter LODs.
- **Volumetrics / clouds / fog:** `TOGGLE_VL_FOG` (VL samples default 8), three cloud layers
  (250 / 500 / 2000 height defaults) + `CLOUDS_SHADOWS`, per-time-of-day uniform/cloudy fog
  densities, per-biome fog environments (swamp/jungle/dark forest), cave + border fog, bloom-fed
  fog, daily-weather system (10 rotating weather profiles driving coverage/density/fog).
  Far LODs can keep VL fog + volumetrics via the DH settings toggles above.
  Source: [`settings.glsl`](https://raw.githubusercontent.com/X0nk/Bliss-Shader/main/shaders/lib/settings.glsl).
- **PBR / materials:** LabPBR support (specular reflections f0/roughness/metalness, SSS,
  emissives incl. translucent emissives, POM with dynamic quality, porosity/puddles, material AO,
  per the author's [gallery captions](https://modrinth.com/shader/bliss-shader)). Like Photon,
  **no generated-PBR fallback** — on map-less Faithful 32x the image relies on lighting/fog
  rather than invented surface detail. Source: [Modrinth gallery](https://modrinth.com/shader/bliss-shader),
  [`settings.glsl` LabPBR section](https://raw.githubusercontent.com/X0nk/Bliss-Shader/main/shaders/lib/settings.glsl).
- **ColorWheel / Create:** weakest of the three. No `colorwheel.properties` exists in the Bliss
  repo (fetch returns 404), so there is no official in-shader ColorWheel integration; the
  [ColorWheel mod page](https://modrinth.com/mod/colorwheel) lists only "Bliss 2.1.1 – 2.1.2"
  under **non-official** Colorwheel-Patcher support. (The officially supported
  [Eclipse shader](https://github.com/Merlin1809/Eclipse-Shader) is a Bliss edit, not Bliss
  itself.) Expect Create contraptions on the fallback path at best. [UNVERIFIED] in-game.
- **Performance / presets:** **no Low/Medium/High/Ultra quality profiles** — the only `profile.*`
  lines in `shaders.properties` are tonemap presets (`SHADER_VERSION_LABEL` = AgX default,
  `OLD_BLISS_TONEMAP` = Hejl2015). Cost control is purely per-setting (shadow resolution 2048 /
  distance 128 defaults, SSRT ray count/steps, cloud raymarch steps, SSR steps, POM iterations,
  TAA upscaling `SCALE_FACTOR`). Self-described "well performing"; the v2.1.1 changelog fixed a
  4K-specific bug ("random sparkly colors / broken cave lighting at high window resolution").
  Sources: [`shaders.properties`](https://raw.githubusercontent.com/X0nk/Bliss-Shader/main/shaders/shaders.properties),
  [v2.1.1 changelog](https://api.modrinth.com/v2/project/bliss-shader/version?limit=8).
- **Config surface:** the widest but least guided (Direct_Light / World / Ambient_light / Fog /
  Post_Processing / Clouds / Resource_Pack_Support / Climate / Misc / Mod_support, plus 10 daily
  weather profiles and per-season color curves). Key DH-relevant levers: the whole
  `DISTANT_HORIZONS_SETTINGS` screen (above), `shadowMapResolution`/`shadowDistance`,
  `SCREENSPACE_CONTACT_SHADOWS`, cloud raymarch steps, `VOLUMETRIC_CLOUDS` on/off.

## 4. Comparison table

| Dimension | Solas V3.7b | Photon v1.3b | Bliss v2.1.2 |
|---|---|---|---|
| DH support | Native `dh_terrain`/`dh_water`; no shader-side setup; V3.7 fixed LOD translucency | Native via `lod_mod_support.glsl` (DH + Voxy branches); v1.3 added LOD SS-shadows + SSS | Native `DH_solid`/`DH_translucent` per dimension + `dhShadow`; added v2.1.0 |
| Far-LOD legibility | Screen-space shadows past realtime distance; Fancy LOD reflections; DH fog applies | Overdraw distance/fade + LOD noise; LOD SSS + screen-space shadows | Per-LOD AO/SSS/SSR/noise/VL toggles; richest LOD menu — but snow LODs discolor with Seasons ON ([#246](https://github.com/X0nk/Bliss-Shader/issues/246), [#357](https://github.com/X0nk/Bliss-Shader/issues/357)) |
| GPU cost (4K) | Moderate by design; High default well-defined; voxel-192 + VL8 + 2048 shadows | Heaviest ceiling (voxel colored lights + caustics + shafts are Ultra-only); TAAU upscaler as reserve lever | No profiles to anchor cost; per-knob tuning only; 4K sparkle bug fixed in v2.1.1 |
| Config friction | Lowest: 4 profiles + focused screens | Medium: huge menu but clear profile ladder | Highest: biggest menu, no profiles, 10 weather profiles + season curves to learn |
| Faithful-32x fit | Best: generated PBR invents normals/specular/emission on map-less textures | Flat micro-surface (lighting-only); needs a LabPBR pack to shine | Same as Photon: lighting/fog carry the image, no generated detail |
| Create / ColorWheel | Official support since v3.2, in-repo integration | Patcher-only (1.3a) or djefrey fork; [UNVERIFIED] live | Patcher-only (2.1.1–2.1.2); no in-repo integration; weakest |

## 5. Per-shader DH recommendations (RTX 4080 SUPER, 4K, LODs 128–256)

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
- **Bliss:** start LOD distance **128** with shadows 2048/128, `DH_AMBIENT_OCCLUSION` +
  `DH_SCREENSPACE_REFLECTIONS` ON, `DH_NOISE_TEXTURE` ON, LOD `VOLUMETRIC_CLOUDS` ON; keep
  **Seasons/Seasonal Colours OFF** (pink/green/blue snow-LOD bug, issues linked above). First
  levers: cloud `min/maxRayMarchSteps`, SSRT `RAY_COUNT`/`STEPS`, shadow 2048→1024, TAA upscaling
  scale. Push LODs to 256 only after a winter-biome check passes without discoloration. Basis:
  [`shaders.properties` DH screen](https://raw.githubusercontent.com/X0nk/Bliss-Shader/main/shaders/shaders.properties).
  [UNVERIFIED] end-to-end FPS on this pack.

## 6. Limitations — what could not be verified from primary sources

- **No in-game benchmarking was done** (per assignment non-goals). All FPS reasoning is derived
  from profile definitions and each author's qualitative performance claims ("moderate cost" /
  "gameplay-focused" / "well performing"), not measurements. Any 70–80 FPS statement for Photon
  or Bliss on the RTX 4080 SUPER is [UNVERIFIED].
- **Photon and Bliss ColorWheel behavior is second-hand**: the only primary source is the
  [ColorWheel mod page](https://modrinth.com/mod/colorwheel) listing patcher-supported versions
  (Photon 1.3a, Bliss 2.1.1–2.1.2). Whether Create 6 contraptions render correctly with the
  patcher on this pack's exact mod set is [UNVERIFIED].
- **Bliss pink-LOD status**: issues [#246](https://github.com/X0nk/Bliss-Shader/issues/246) and
  [#357](https://github.com/X0nk/Bliss-Shader/issues/357) are primary (author's own tracker) but
  both are closed `not_planned`, so it is unknown whether v2.1.2 fixed, sidestepped, or still
  carries the seasonal-LOD discoloration. Treat "keep Seasons OFF" as load-bearing until tested.
- **Version-mismatch quirk**: Bliss v2.0.x releases are explicitly "(NO DISTANT HORIZONS
  SUPPORT)" — any guide or video showing Bliss without LODs is almost certainly on that line;
  only v2.1.x is comparable. Source: [Bliss versions](https://api.modrinth.com/v2/project/bliss-shader/version?limit=8).
- **Iris pin**: the pack targets Iris 1.8.14; the Modrinth query for 1.21.1 returns
  `1.8.14-beta.1+1.21.1-neoforge` (beta, 2026-06-13) alongside release 1.8.12, so 1.8.14
  availability on the NeoForge loader train is beta-grade. Source: [Iris 1.21.1 versions](https://api.modrinth.com/v2/project/iris/version?limit=5&game_versions=%5B%221.21.1%22%5D).
- **Faithful 32x PBR**: stated as "ships no PBR maps" on the basis that its
  [Modrinth page](https://modrinth.com/resourcepack/faithful-32x) lists no PBR content; the
  pack's partial-PBR overlays (Fire Rekindled normals/specular) are GUIDE-scope, not re-verified here.
