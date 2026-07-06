# Lighting

**MO2 Separator:** `Graphics` → `Graphics - Lighting`

## Lighting Overhaul Strategy → `Graphics - Lighting`

Build lighting as a coherent layer that supports the shader-first visual direction, stronger world scale, and third-person readability. Interior mood matters, but so do readability, compatibility cost, and coherence with the final weather route. The baseline is a Community Shaders-native stack with much lower patch burden than the LUX family.

### Baseline

- **CS Light** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/138443)) + **True Light** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/135488)) + **Window Shadows Ultimate** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/150494)) — CS-native interior and exterior lighting stack. Lower patch burden than LUX, purpose-built for Community Shaders. → `Graphics - Lighting`

**True Light version pin:** Use **v3.4.1**. v3.5.x has a known bug where ground illumination breaks on Lanterns of Skyrim II lampposts (lamps light up but ground stays dark). Do not upgrade until the fix is confirmed.

**True Light FOMOD:** select the **Exterior mode** option — attaches bulbs to existing exterior meshes (braziers, campfires, torches, lanterns) via Light Placer. This replaces Lux Orbis's exterior lighting role.

**Also install** (separate downloads): `Ambient Templates for Lighting Mods` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/153425)) — required by the CS-native stack.

- **Based Lighting Configs** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/136870)) — Community Shaders lighting configuration presets. Standardizes CS lighting tone and behavior across interiors and exteriors. → `Graphics - Lighting`

- **Standard Lighting Templates - SLT** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/66943)) — Standardized light template records. Replaces the template-level work that Lux, ELFX, and other lighting overhauls normally do at the per-cell level. Works as a foundation layer under CS Light + True Light. → `Graphics - Lighting`

- **Luminous Atronachs** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/27732)) — Adds self-illumination to flame, frost, and storm atronachs via particle lights. CS-compatible elemental creature VFX that makes atronachs read as light sources in dark environments. Layer on top of the CS-native lighting stack. → `Graphics - Lighting`

- **Dynamic Interior Ambient Lighting (DIAL)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/149920)) — CS-native ambient template adjuster based on time of day and location. Plays well with any lighting overhaul. → `Graphics - Lighting`

### Alternatives

- **Relighting Skyrim SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/8586)) + **Luminosity Lighting Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/16830)) — Lightweight vanilla-plus approach. Lowest patch footprint. Falls back if the CS-native stack fails compatibility testing. → `Graphics - Lighting`
- **ELFX Shadows** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/63790)) — Strong alternate route if the CS-native stack proves insufficient for interior mood. Hard-requires base `Enhanced Lights and FX` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/2424)). → `Graphics - Lighting`
- **iLluminous Elementals** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/138128)) — Adds light to elemental creatures and spell effects. Alternative to Luminous Atronachs if a broader elemental-light approach is preferred. Layer on top of chosen lighting route. → `Graphics - Lighting`
- **Window Shadows RT - Updated** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/111091)) / **Ambiance** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/46383)) — Supporting/fallback interior shadow mods, not primary picks. → `Graphics - Lighting`

### Notes

- The CS-native stack has a significantly lower patch burden than LUX — ~35-55 total patches vs LUX's ~80-120 across the Patch Hub.
- CS Light + True Light + WSU relies on Light Placer non-shadow-casting bulbs — test together before locking to verify light leaks and shadow-caster limits are acceptable.
- WSU can hit shadow-caster limits and flicker in certain interiors — monitor during playtesting.
- Very dark interiors can look impressive in screenshots and feel worse in long play sessions.
- Choosing lighting before weather is settled can produce a mismatched overall visual tone.
- True Light author is doing a major rework — monitor for a post-v3.5.x release that fixes the LoS II lamp post bug.
- SLT provides template-level standardization that reduces the need for per-cell light record patching — verify it does not conflict with CS Light's own template expectations.
