# FusionFix Configuration Reference

> FusionFix uses ini-style configuration files located in `GTAIVFusionFix_config/` in your game root. Settings are changed by editing the relevant `.ini` file.

---

## Graphics

| Setting | File | Default | Recommended | Notes |
|---------|------|---------|-------------|-------|
| `UnlockFrameRate` | `Graphics.ini` | `false` | `true` | Removes 30 FPS cap. Required for smooth gameplay. |
| `Resolution` | `Graphics.ini` | `auto` | Native res | Use your monitor's native resolution. |
| `ShadowQuality` | `Graphics.ini` | `Medium` | `High` | Performance hit on low-end GPUs. |
| `ReflectionQuality` | `Graphics.ini` | `Medium` | `High` | Improves water and car reflections. |
| `AmbientOcclusion` | `Graphics.ini` | `false` | `true` | Adds depth to shadows. Performance impact. |
| `WaterQuality` | `Graphics.ini` | `Medium` | `High` | Improves water rendering significantly. |
| `TextureFlushEnabled` | `Graphics.ini` | `false` | `true` | Prevents texture pop-in at high settings. |

## Controls

| Setting | File | Default | Recommended | Notes |
|---------|------|---------|-------------|-------|
| `MouseSensitivity` | `Controls.ini` | `0.5` | Personal preference | Adjust if aiming feels sluggish. |
| `InvertMouse` | `Controls.ini` | `false` | Personal preference | Invert Y-axis for aiming. |
| `ControllerVibration` | `Controls.ini` | `true` | `true` | Controller feedback. |
| `Deadzone` | `Controls.ini` | `0.2` | `0.1` | Reduces stick deadzone for smoother aiming. |
| `RawMouseInput` | `Controls.ini` | `false` | `true` | Bypasses Windows mouse acceleration. |

## UI

| Setting | File | Default | Recommended | Notes |
|---------|------|---------|-------------|-------|
| `MiniMapScale` | `UI.ini` | `1.0` | `1.2` | Slightly larger radar for better navigation. |
| `RadarRefreshRate` | `UI.ini` | `30` | `60` | Smoother radar movement. |
| `ShowAllVehicles` | `UI.ini` | `false` | `true` | Shows all vehicle blips on radar. |
| `ObjectiveTextSize` | `UI.ini` | `1.0` | `1.2` | Larger mission text for readability. |

## Memory / Stability

| Setting | File | Default | Recommended | Notes |
|---------|------|---------|-------------|-------|
| `DisableClipTeleport` | `Stability.ini` | `false` | `true` | **Essential.** Prevents the "clip teleport" crash that happens when streaming can't keep up. |
| `IncreaseStreamMemory` | `Stability.ini` | `0` | `1024` | Allocates more memory for texture streaming. |
| `DisableShaderCaching` | `Stability.ini` | `false` | `false` | Keep disabled — caching improves load times. |
| `FixVehicleCollision` | `Stability.ini` | `false` | `true` | Fixes vehicle collision bugs with modded cars. |
| `PatchPedPool` | `Stability.ini` | `false` | `true` | Prevents crashes from too many pedestrians. |

## Misc

| Setting | File | Default | Recommended | Notes |
|---------|------|---------|-------------|-------|
| `SkipIntro` | `Misc.ini` | `false` | `true` | Skips the intro logos on launch. |
| `EnableConsole` | `Misc.ini` | `false` | `true` | Enables in-game console (~ key) for commands. |
| `AutoSave` | `Misc.ini` | `true` | `true` | Keep enabled as a safety net. |
| `EnableAmbientPeds` | `Misc.ini` | `false` | `true` | Adds ambient pedestrian variety. |
| `IncreaseVehicleCount` | `Misc.ini` | `1.0` | `1.0-2.0` | Multiplier for traffic density. Higher values impact performance. |
| `AllowScreenshot` | `Misc.ini` | `false` | `true` | Enables screenshot key (F12 by default). |
