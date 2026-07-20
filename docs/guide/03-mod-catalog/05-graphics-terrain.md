# Graphics Terrain

Recolours and overhauls for outdoor tilesheets, foliage, grass, and overall world colour palette.

| Mod | Purpose | Notes | Load Order |
|-----|---------|-------|------------|
| DaisyNiko's Earthy Recolour | A warm, earth-toned recolor of all outdoor tilesheets. Includes custom trees, dig spots, grass, and revamped town buildings. | [NexusMods](https://www.nexusmods.com/stardewvalley/mods/5255) — CP-based, updated for 1.6. 40k+ endorsements. Configurable options for grass, fruit trees, minimap, etc. | Load before building retextures |
| Way Back Pelican Town | Seasonal retexture of town buildings, structures, and decor. See entry in Graphics Base. | Listed in 03-graphics-base.md. Works best with vanilla or Earthy Recolour, Starblue, or Vibrant Pastoral. | Matches building retexture order |
| Natural Color - ReShade | An on-screen colour filter that adjusts saturation, contrast, lighting, and adds subtle chromatic aberration/tilt-shift. | [NexusMods](https://www.nexusmods.com/stardewvalley/mods/1213) — Not a CP mod. Requires [ReShade](https://reshade.me/) to be installed separately (external tool). Compatible with all mods and game versions. Configurable in-game with ReShade's UI. | Applies on top of all graphics mods |
| Clear Glasses | SMAPI-based depixelation and visual enhancement — applies xBRZ smooth scaling to remove pixelation, plus configurable colour filters (saturation, brightness, temperature). Also improves load times by optimising texture caching. | [NexusMods](https://www.nexusmods.com/stardewvalley/mods/21090) — SMAPI-based by aurpine, 2k+ endorsements. Updated for 1.6. Configurable via GMCM. Alternative to ReShade-based approaches — works without external tools. Caution: can cause missing textures on some modded items; a lighter fork called [Clear Monocle](https://www.nexusmods.com/stardewvalley/mods/48768) (performance-focused, xBRZ only) is available as an alternative. | After all graphics mods, same as ReShade presets |

## Notes

- **Terrain recolours** (like Earthy Recolour) change the colour palette of the world. Only use one outdoor recolor at a time.
- **ReShade presets** (like Natural Color) are screen-space filters that work on top of any mod combination. They require the ReShade injector tool.
- **Clear Glasses** achieves a similar visual result to ReShade presets but as a SMAPI mod — no external tools needed. It also provides load time improvements. If you use both, disable colour filters in one of them to avoid double-processing.
- **Way Back Pelican Town** had its terrain/building entry moved to 03-graphics-base.md but is referenced here as it pairs well with terrain recolours.
