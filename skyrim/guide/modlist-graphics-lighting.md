# Lighting

---

## Lighting Overhaul Strategy
Build lighting as a coherent layer supporting the shader-first visual direction, stronger world scale, and third-person readability. Interior mood matters, but so do readability, compatibility cost, and coherence with the final weather route. The baseline is a Community Shaders-native stack with much lower patch burden than the LUX family.

**⏱ Install order:** SLT → CS Light + True Light + WSU → Based Lighting Configs → Ambient Templates → Helios → Embers XD → Luminous Atronachs.

### Core CS-Native Stack

| Mod | Role | Notes |
| --- | --- | --- |
| [Standard Lighting Templates (SLT)](https://www.nexusmods.com/skyrimspecialedition/mods/66943) | Foundation | Standardized light template records. Replaces per-cell template work. |
| [CS Light](https://www.nexusmods.com/skyrimspecialedition/mods/138443) | Core | CS-native interior/exterior lighting. |
| [True Light](https://www.nexusmods.com/skyrimspecialedition/mods/135488) | Exterior bulbs | Exterior bulb placement via Light Placer. **Pin v3.4.1** — v3.5.x breaks LoS II lamppost ground illumination. |
| [Window Shadows Ultimate (WSU)](https://www.nexusmods.com/skyrimspecialedition/mods/150494) | Interior | Interior shadowed windows. |
| [Ambient Templates for Lighting Mods](https://www.nexusmods.com/skyrimspecialedition/mods/153425) | Required | Required by the CS-native stack. |

> **True Light FOMOD:** Select **Exterior mode** — attaches bulbs to exterior meshes (braziers, campfires, torches, lanterns) via Light Placer. This replaces Lux Orbis's exterior lighting role.

### Configuration & Ambient

| Mod | Role | Notes |
| --- | --- | --- |
| [Based Lighting Configs](https://www.nexusmods.com/skyrimspecialedition/mods/136870) | Presets | Standardizes tone/behavior across interiors/exteriors. |
| [Helios](https://www.nexusmods.com/skyrimspecialedition/mods/181533) | Ambient | Dynamic auto-ambient adjustment for interiors and exteriors via Community Shaders. |

### Fire & Effects

| Mod | Role | Notes |
| --- | --- | --- |
| [Embers XD](https://www.nexusmods.com/skyrimspecialedition/mods/37085) | Fire | 140K+ endorsements. Install after main lighting overhauls. → `Graphics - Lighting` |
| [Luminous Atronachs](https://www.nexusmods.com/skyrimspecialedition/mods/27732) | Effects | Self-illuminating atronachs via particle lights. |
| [KD Realistic Fireplaces](https://www.nexusmods.com/skyrimspecialedition/mods/28877) | Fire | Optional fireplace visual upgrade. Cosmetic only. |

### Alternatives

- **EmbersXD Torch Edit** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/134219)) — Torch visual replacer for Embers XD. Optional cosmetic.
- **Relighting Skyrim SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/8586)) + **Luminosity Lighting Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/16830)) — Lightest vanilla-plus route. Falls back if the CS-native stack fails compatibility testing.
- **ELFX Shadows** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/63790)) — Strong alternate if CS-native proves insufficient for interior mood. Hard-requires base `Enhanced Lights and FX` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/2424)).
- **iLluminous Elementals** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/138128)) — Broader elemental-light approach. Alternative to Luminous Atronachs.
- **Window Shadows RT - Updated** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/111091)) / **Ambiance** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/46383)) — Fallback interior shadow mods.

### Risks & Compatibility

- The CS-native stack has ~35-55 total patches versus LUX's ~80-120 across the Patch Hub.
- CS Light + True Light + WSU relies on Light Placer non-shadow-casting bulbs — test together before locking.
- WSU can hit shadow-caster limits and flicker in certain interiors — monitor during playtesting.
- Very dark interiors look impressive in screenshots and feel worse in long play sessions.
- Choosing lighting before weather is settled can produce a mismatched visual tone.
- True Light author is doing a major rework — monitor for a post-v3.5.x fix for the LoS II lamp post bug.
- SLT provides template-level standardization; verify it does not conflict with CS Light's template expectations.
