# FusionFix Configuration Reference

> FusionFix adds a real-time options menu and reads its settings from a single `.ini` file. Most options are toggled in-game; the `.ini` is for advanced users.

---

## In-game menu

Open **Settings → FusionFix** in the pause menu. Options are grouped as follows (verified against v5.0.1).

### Display

| Option | Effect |
|--------|--------|
| **FOV** | Adjusts field of view. |
| **Language** | Switches language in-game. |
| **Definition** | Toggles the old console "fuzzy" look. |
| **Console Gamma** | Restores the Xbox 360 colour curve (strongly recommended). |
| **Motion Blur** | Toggle with several intensity levels. |
| **Depth of Field** | Distant-blur intensity, separate from Definition. |
| **Bloom** | Global bloom toggle. |
| **Screen Filter** | Colour filters for the main game and episodes. |
| **Distant Lights** | Integrated Project2DFX extended light draw distance. |

### Graphics

| Option | Effect |
|--------|--------|
| **FPS Limiter** | Custom FPS cap (fixes physics/animation above 30 FPS). |
| **Anti-aliasing** | FXAA or SMAA. |
| **Volumetric Fog** | Advanced fog shader that hides world edges. |
| **Sun Shafts** | God rays faithful to the original art. |
| **Tone Mapping** | Prevents blown-out highlights. |
| **Ambient Occlusion** | Scalable AO for added depth. |
| **Shadow Filter** | Sharp / soft / contact-hardening shadows. |
| **Graphics API** | DirectX 9 or Vulkan (via DXVK); requires restart. |

### Game

| Option | Effect |
|--------|--------|
| **Skip Intro / Skip Menu** | Skips intro logos / main menu. |
| **Letterbox / Pillarbox** | Cutscene borders. |
| **Transparent Map Menu** | See-through map screen. |
| **FPS Counter** | On-screen counter. |
| **Windowed / Borderless** | Window modes. |
| **Pause On Focus Loss** | Auto-pauses when minimized. |

### Controls

| Option | Effect |
|--------|--------|
| **Always Run** | Run by default. |
| **Raw Input** | Bypasses Windows mouse acceleration. |
| **Turn Indicators** | Vehicle indicators / hazard lights. |
| **Instant Taxi Stop** | Skips the taxi-ride fade. |
| **Gamepad Icons** | Xbox / PS / Switch / Steam Deck icon styles. |
| **Mouse Look / Aim Sensitivity** | Separate look and aim sensitivity. |

## Advanced: configuration file

Advanced options are read from **`GTAIV.EFLC.FusionFix.ini`** in the game root. The file is created on first launch; FusionFix also ships a reference copy in `data/plugins/`.

Examples of `.ini`-only options (v5.0.1):

| Key | Default | Effect |
|-----|---------|--------|
| `EnablePreAlphaDepth` | `1` | Renders depth effects behind transparent objects. |
| `ReflectionMSAAQuality` | `0` | MSAA on vehicle/water/mirror reflections (may vary by GPU/API). |
| `ExtraDynamicShadows` | `0` | Extra dynamic-shadow coverage (`2` = more objects). |

> On 1.0.8.0, install the **Legacy Addon** alongside the main FusionFix archive (see the installation guide). The addon ships the compatibility shims that let FusionFix run on the legacy build.
