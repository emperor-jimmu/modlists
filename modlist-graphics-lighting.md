# Lighting

**MO2 Separator:** `Graphics` → `Graphics - Lighting`

## Lighting Overhaul Strategy → `Graphics - Lighting`

Build lighting as a coherent layer that supports the shader-first visual direction, stronger world scale, and third-person readability. Interior mood matters, but so do readability, compatibility cost, and coherence with the final weather route.

### Baseline

- **Lux + Lux CS** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/43158) + [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/153919)) — Most atmospheric interior lighting with broadest patch ecosystem. Start with Lux + Lux CS, Lux Orbis (exterior lights), and Lux Via (road lights). Install the Lux Patch Hub after the full worldspace stack is settled to generate compatibility patches in one pass. → `Graphics - Lighting`

**Lux FOMOD:**
- **Patches page**: check only the mods already in your load order (SMIM, Rugnarok, etc.). Do NOT check mods you don't have — this causes missing masters.
- **Brightness**: keep **Standard** (default). Darker is atmospheric but can hurt readability in third-person; brighter washes out the mood.
- **Optional effects (Beams, Mists, Fogs)**: choose **Effect lighting** (no particle) for all three. The "with Particle" variants add ENB-specific particle lights redundant under Community Shaders.
- **Candle meshes**: keep **2K** (4K is wasted on candle-scale surfaces).
- **Lux Resources plugin**: include if prompted (required by some patches).

**Lux CS FOMOD:** single option — install the main plugin (ESL-flagged). No additional choices needed.

**Also install** (separate downloads): `Lux Orbis` (exterior lights), `Lux Via` (road/rope lights), and the `Lux Patch Hub`. Run the Patch Hub FOMOD after your full interior/worldspace mod list is settled.

### Alternatives

- **CS Light** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/138443)) + **True Light** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/135488)) + **Window Shadows Ultimate** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/150494)) — CS-native stack with lower patch burden. Falls back if Lux patch maintenance proves too high. Known issues: non-shadow-casting bulbs leak through walls; True Light author is doing a major rework; WSU can hit shadow-caster limits and flicker in certain interiors. Requires `Ambient Templates for Lighting Mods` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/153425)). → `Graphics - Lighting`
- **Relighting Skyrim SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/8586)) + **Luminosity Lighting Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/16830)) — Lightweight vanilla-plus approach. Lowest patch footprint. Falls back if both primary routes fail compatibility testing. → `Graphics - Lighting`
- **ELFX Shadows** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/63790)) — Strong alternate route if Lux proves too moody or patch-heavy. Hard-requires base `Enhanced Lights and FX` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/2424)). → `Graphics - Lighting`
- **Simple Lighting Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/124634)) — Minimalist vanilla-plus ambient light and image-space adjuster. → `Graphics - Lighting`
- **iLluminous Elementals** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/138128)) — Adds light to elemental creatures and spell effects. Layer on top of chosen lighting route. → `Graphics - Lighting`
- **Dynamic Interior Ambient Lighting (DIAL)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/149920)) — CS-native ambient template adjuster based on time of day and location. Plays well with any lighting overhaul. → `Graphics - Lighting`
- **Window Shadows RT - Updated** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/111091)) / **Ambiance** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/46383)) — Supporting/fallback, not primary picks. → `Graphics - Lighting`

### Notes

- Lux patch maintenance grows significantly as the interior and worldspace stack expands.
- Very dark interiors can look impressive in screenshots and feel worse in long play sessions.
- Choosing lighting before weather is settled can produce a mismatched overall visual tone.
- CS-native stack (CS Light + True Light + WSU) relies on Light Placer non-shadow-casting bulbs — test together before locking to verify light leaks and shadow-caster limits are acceptable.
