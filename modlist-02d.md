# Lighting

**MO2 Separator:** `02 Graphics` → `02d Lighting`

## Lighting Overhaul Strategy → `02d Lighting`

### Core Idea

- Build lighting as a coherent layer that supports the shader-first visual direction, stronger world scale, and third-person readability.
- Interior mood matters, but so do readability, compatibility cost, and coherence with the final weather route.

### Decision

The approach is **hybrid**: stronger authored lighting where it matters most (interiors, cities, dungeons) with compatibility-conscious coverage elsewhere. Three viable CS-friendly routes exist; the project should evaluate the first two in testing and keep the third as a fallback.

#### Primary Route: Lux + Lux CS

`Lux` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/43158> plus `Lux CS` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/153919> — the most atmospheric and best-supported lighting overhaul. Maximum compatibility patches available for almost every location mod. Trade-off: patch maintenance grows significantly as the interior and worldspace stack expands. → `02d`

**Lux FOMOD:**

- **Patches page**: check only the mods already in your load order (SMIM, Rugnarok, etc.). Do NOT check mods you don't have — this causes missing masters.
- **Brightness**: keep **Standard** (default). Darker is atmospheric but can hurt readability in third-person; brighter washes out the mood.
- **Lux Optional effects (Beams, Mists and Fogs)**: each has two options — **Effect lighting** and **Effect lighting with Particle**. Choose **Effect lighting** (no particle) for all three. The "with Particle" variants add ENB-specific particle lights that are redundant and wasteful under Community Shaders.
- **Candle meshes**: keep **2K** (4K is wasted on candle-scale surfaces).
- **Lux Resources plugin**: include if prompted (required by some patches).

**Lux CS FOMOD:** single option — install the main plugin (ESL-flagged). No additional choices needed.

**Also install** (separate downloads): `Lux Orbis` (exterior lights), `Lux Via` (road/rope lights), and the `Lux Patch Hub`. Run the Patch Hub FOMOD after your full interior/worldspace mod list is settled to generate all needed compatibility patches.

#### Alternative Route: CS Light + True Light + Window Shadows Ultimate

A CS-native stack with no ENB bridge, lower patch burden, and full Community Shaders integration. The three mods occupy different layers and are designed to work together:

- **`CS Light`** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/138443> — light-bulb placement overhaul via Light Placer. Adds non-shadow-casting bulbs to interiors. Known issue: non-shadow-casting lights can leak through walls (not occluded by geometry). → `02d`
- **`True Light`** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/135488> — CS-tonemapping overhaul. Has a built-in auto-detect patch for Window Shadows Ultimate. Known issue: inverse-square bulbs can leak through walls; author is doing a major rework. → `02d`
- **`Window Shadows Ultimate`** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/150494> — CS-native window-shadow companion (window shadow textures/effects, not light placement). Hard-requires `Ambient Templates for Lighting Mods` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/153425>. Known issue: windows can hit shadow-caster limits and flicker in certain interiors (author acknowledged, fix in progress). → `02d`

**Recommended load order** (community consensus): Light Placer → Ambient Templates → CS Light → True Light → Window Shadows Ultimate → WSU Patch Hub. → `02d`

#### Fallback: Relighting Skyrim + Luminosity

`Relighting Skyrim SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/8586> plus `Luminosity Lighting Overhaul - The Cathedral Concept` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/16830> — lightweight vanilla-plus approach. Lowest patch footprint. Falls back to this if both primary routes prove too costly or conflict-heavy. → `02d`

#### Other Options (not primary picks)

- `ELFX Shadows` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/63790> — strong alternate route if Lux proves too moody or patch-heavy. Hard-requires base `Enhanced Lights and FX` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/2424>. → `02d`
- `Simple Lighting Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/124634> — minimalist vanilla-plus ambient light and image-space adjuster. → `02d`
- `Window Shadows RT - Updated` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/111091> and `Ambiance - A Vanilla(plus) Ambient Lighting Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/46383> — supporting/fallback, not primary picks. → `02d`
- `iLluminous Elementals` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/138128> — elemental-creature and magic-glow companion, adds light to creatures and spell effects. Layer on top of the chosen lighting route. → `02d`
- `NAT.CS III` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/139567> is a weather decision, not a reason to choose an interior-lighting stack. → `02d`
- `Dynamic Interior Ambient Lighting (DIAL)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/149920> — dynamically adjusts interior ambient lighting based on time of day, light source presence, and location type. CS-native, no ENB dependency. Plays well with any lighting overhaul since it operates on ambient templates rather than individual light placements. → `02d`

### Risks & Compatibility

- `Lux` patch maintenance grows significantly as the interior and worldspace stack expands. → `02d`
- Very dark interiors can look impressive in screenshots and feel worse in long play sessions.
- Choosing lighting before weather is settled can produce a mismatched overall visual tone.
- The CS-native stack (CS Light + True Light + WSU) relies on Light Placer non-shadow-casting bulbs — test together before locking to verify light leaks and shadow-caster limits are acceptable. → `02d`

### Acceptance Criteria

- Interiors feel atmospheric without becoming frustrating to navigate or fight in.
- Major interior spaces remain readable in third person with the planned UI and camera style.
- Patch burden remains reasonable for the chosen city, dungeon, and player-home stack.
- Lighting mood stays coherent with the final shader, texture, and weather direction.
