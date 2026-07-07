# Lighting

**MO2 Separator:** `Graphics` → `Graphics - Lighting`

All mods in this section belong to the `Graphics - Lighting` MO2 separator unless noted.

## Lighting Overhaul Strategy

Build lighting as a coherent layer supporting the shader-first visual direction, stronger world scale, and third-person readability. Interior mood matters, but so do readability, compatibility cost, and coherence with the final weather route. The baseline is a Community Shaders-native stack with much lower patch burden than the LUX family.

**⏱ Install order:** SLT → CS Light + True Light + WSU → Based Lighting Configs → Ambient Templates → DIAL → Embers XD → Luminous Atronachs.

### Core CS-Native Stack

- **Standard Lighting Templates - SLT** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/66943)) — Standardized light template records. Replaces the per-cell template work that Lux/ELFX normally do. Foundation layer.
- **CS Light** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/138443)) — CS-native interior and exterior lighting.
- **True Light** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/135488)) — Exterior bulb placement via Light Placer.

  > **Version pin: v3.4.1.** v3.5.x has a known bug where ground illumination breaks on Lanterns of Skyrim II lampposts (lamps light up, ground stays dark). Do not upgrade until the fix is confirmed.
  >
  > **FOMOD:** Select **Exterior mode** — attaches bulbs to exterior meshes (braziers, campfires, torches, lanterns) via Light Placer. This replaces Lux Orbis's exterior lighting role.

- **Window Shadows Ultimate (WSU)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/150494)) — Interior shadowed windows.
- **Ambient Templates for Lighting Mods** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/153425)) — Required by the CS-native stack.

### Configuration & Ambient

- **Based Lighting Configs** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/136870)) — CS lighting configuration presets. Standardizes tone/behavior across interiors and exteriors.
- **Dynamic Interior Ambient Lighting (DIAL)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/149920)) — CS-native ambient template adjuster based on time of day and location.

### Fire & Effects

- **Embers XD** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/37085)) — Fire-and-ember category answer (140K+ endorsements). Install after main lighting overhauls so it inherits campfire and hearth placements. → separator: `Graphics - Lighting`
- **Luminous Atronachs** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/27732)) — Self-illuminating flame/frost/storm atronachs via particle lights.

### Alternatives

- **Relighting Skyrim SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/8586)) + **Luminosity Lighting Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/16830)) — Lightest vanilla-plus route. Falls back if the CS-native stack fails compatibility testing.
- **ELFX Shadows** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/63790)) — Strong alternate if CS-native proves insufficient for interior mood. Hard-requires base `Enhanced Lights and FX` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/2424)).
- **iLluminous Elementals** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/138128)) — Broader elemental-light approach. Alternative to Luminous Atronachs.
- **Window Shadows RT - Updated** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/111091)) / **Ambiance** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/46383)) — Fallback interior shadow mods.

### Notes

- The CS-native stack has ~35-55 total patches versus LUX's ~80-120 across the Patch Hub.
- CS Light + True Light + WSU relies on Light Placer non-shadow-casting bulbs — test together before locking.
- WSU can hit shadow-caster limits and flicker in certain interiors — monitor during playtesting.
- Very dark interiors look impressive in screenshots and feel worse in long play sessions.
- Choosing lighting before weather is settled can produce a mismatched visual tone.
- True Light author is doing a major rework — monitor for a post-v3.5.x fix for the LoS II lamp post bug.
- SLT provides template-level standardization; verify it does not conflict with CS Light's template expectations.
