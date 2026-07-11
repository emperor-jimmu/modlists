# Configuration

Before enabling any mods, you need to prepare ETS2's configuration files. Some settings live outside the in-game Options menu and must be edited directly in `config.cfg`. Other settings are accessible from the graphics menu but should be set to specific values for a heavy mod load at 4K.

---

## Backup Your Config Files

Always back up your configuration files before editing them. A single typo can reset all your bindings or prevent the game from starting. Navigate to:

```
Documents\Euro Truck Simulator 2\
```

Copy the following files to a safe location:

- `config.cfg` — Core settings, key bindings, and graphics options.
- `controls.sii` — Controller and steering wheel mappings.
- `profile_config.ini` — Per-profile settings (save in a modded profile's folder if you have one).

Keep the backup outside the ETS2 directory (e.g., `Documents\ETS2 Config Backups`) so updates from future game versions do not overwrite it. If the game resets your configuration or behaves unexpectedly after an edit, restore the originals and start again.

---

## Editing config.cfg

The file `Documents\Euro Truck Simulator 2\config.cfg` is a plain-text key-value store. Open it in Notepad or any text editor (not a word processor). ETS2 reads this file at startup. Lines that start with a number are key bindings; lines that start with a letter are configuration variables. The game writes to this file on exit, so your edits persist only if you do not change them from the in-game menu — if you do, the game will overwrite your manual changes.

The recommended approach: make the edits, launch the game, confirm they took effect, and then avoid changing those specific settings from the Options menu.

---

### Developer Console

The developer console is disabled by default. Enable it so you can load map sectors, teleport for testing, and inspect mod errors:

```ini
g_developer "1"
g_console "1"
```

After enabling, press the **tilde key** (`~`) or the key above Tab to open the console in-game. Common console commands for modded profiles:

| Command | Purpose |
|---------|---------|
| `edit` | Opens the map editor (use sparingly). |
| `goto x y` | Teleport to map coordinates (useful for testing mod placement at a specific city). |
| `quit` | Saves and exits to desktop. |
| `screenshot` | Captures a screenshot without UI elements. |
| `r_buffer_page_size` | (Read-only display) Shows the current buffer page size. |

---

### Buffer & Memory Tweaks

Mod-heavy profiles load significantly more geometry, textures, and map data than vanilla. The default values for three buffer-related settings are too low for a 50+ mod profile at 4K and will cause stuttering, pop-in, or crashes.

```ini
# Increase from default 10 to 50 or 100
r_buffer_page_size "50"

# Increase from default 30 to 50
mm_max_resource_size "50"

# Increase from default 300 to 1000
mm_max_tmp_buffers_size "1000"
```

#### r_buffer_page_size

Controls the size of the geometry buffer that holds vertex data for visible objects. At 4K with map mods, the default of 10 is inadequate. Set it to **50** for most modlists or **100** if you run map combos covering all of Europe plus ProMods, RusMap, and ROEX. Values above 100 do not provide additional benefit and may waste VRAM.

#### mm_max_resource_size

Controls the maximum file size (in MB) that the asset manager loads into memory at once. Map mods and high-resolution texture packs include files larger than the default 30 MB cap. Raising this to **50** prevents texture-loading errors for most 4K packs. If a mod uses files larger than 50 MB, you will see a `Failed to load resource` warning in the game log — in that case, increase further.

#### mm_max_tmp_buffers_size

Controls the temporary buffer pool for streaming assets. Heavy map combos and texture mods exhaust the default (300) quickly. Raising to **1000** ensures enough headroom for smooth asset streaming across sector boundaries on map combos with 5+ map mods.

---

## Recommended 4K Graphics Settings

The following settings assume a 3840 × 2160 display and a GPU with at least 8 GB of VRAM (12+ GB recommended). Set these from the in-game **Options → Graphics** menu.

| Setting | Value | Rationale |
|---------|-------|-----------|
| Resolution | 3840 × 2160 | Native 4K baseline. |
| Scaling | 400% | Renders each frame at 150% of 4K then downscales for superb anti-aliasing. FPS cost is high but image quality is unmatched. If performance is tight, drop to 300% or 200%. |
| Shadows | Ultra | Final pixel count for shadow maps. Ultra reduces aliasing on shadow edges. Minimal FPS cost on modern GPUs compared to High. |
| Reflection Detail | High | Cubemap resolution for truck mirrors and reflective surfaces. High is visually close to Ultra but faster. |
| HDR | On | Enables high dynamic range colour grading. Required for weather and Reshade mods. Disabling HDR washes out modded skyboxes and weather packs. |
| Anti-aliasing | MLAA | Morphological AA is lightweight and works well at 4K. TAA produces smoother motion but adds slight blur to dashboard text. Choose MLAA for sharpness or TAA for motion smoothness — not both. |
| Grass Density | Medium | Grass rendering at 4K is expensive. High and Ultra double vegetation draw calls. Medium looks acceptable with weather mods and recovers 5–10 FPS. |
| SSAO | On | Screen-space ambient occlusion adds depth to shadows under trucks and around buildings. Off makes the scene look flat. Performance cost is moderate — 2–4 FPS at 4K. |
| Depth of Field | Off | Blurs distant objects in photo mode. Interferes with dashboard readability and has no gameplay benefit. |
| Motion Blur | Off | Blurs during camera movement. Disorienting during parking manoeuvres. Keep off. |
| Colour Correction | On | Allows Reshade and weather mods to apply post-processing correctly. Required for modded LUTs. |

### Scaling Notes

The scaling setting is a multiplier applied to each rendered frame before downscaling to your monitor's resolution. At 400% scaling on a 4K display, the internal render target is approximately 7680 × 4320. This eliminates almost all aliasing without using aggressive post-process AA. The trade-off is significant GPU load:

| Scaling | Internal Resolution | GPU Load (Relative) |
|---------|-------------------|---------------------|
| 100% | 3840 × 2160 | Baseline |
| 200% | 5430 × 3054 | ~1.8× |
| 300% | 6653 × 3741 | ~2.7× |
| 400% | 7680 × 4320 | ~3.8× |

If your GPU runs out of VRAM (monitored via the in-game console `r_buffer_page_size` or third-party tools), reduce scaling to 300% before lowering other quality settings.

---

## Mod-Specific Configuration Tips

Many mods in this guide have their own configuration files, in-game menus, or console variables. Below is a summary of common per-mod settings to check after installing. Detailed instructions appear in each mod's entry in later sections.

### Graphics & Weather Mods

- **Reshade presets:** Most require HDR to be On and Colour Correction to be On in the game's graphics settings. Disable in-game Depth of Field and Motion Blur — Reshade shaders handle these better.
- **Weather packs (Grimes seasons, Realistic Brutal Weather):** Set **Rain Probability** to **Medium** in the mod's in-game settings if it offers one. Max rain probability increases GPU load from raindrop effects and wet-road reflections.
- **Texture overhauls (4K highway signs, realistic building textures):** These have no configuration requirement beyond the `mm_max_resource_size` tweak above. If textures fail to load, check the game log (`game.log.txt`) for `Failed to load resource` lines.

### Map Mods

- **ProMods:** Requires the ProMods Definition File to be active and placed near the top of your load order (highest priority). The definition file includes options for rusmap, middle-east add-on, and ferry connections — select these during the ProMods download process before installing.
- **ProMods High Quality Add-on:** Place directly below the ProMods Definition File. Has no configurable options — it replaces ProMods default assets with higher-resolution versions.
- **RusMap:** Requires `rusmap_model` and `rusmap_map` to be loaded in that order. No in-game configuration.
- **ROEX (Realistic Overall Expansion):** Includes a launcher executable (`ROEX Launcher.exe`) that generates a sector file. Run the launcher after installation and point it to your ETS2 install directory. The launcher patches compatibility with ProMods and RusMap.
- **Map connectors (RoExtended, ProMods-RusMap connection):** These are single `.scs` files with no configuration. Place them in the correct load order slot as specified in the Appendices.

### Truck Mods

- **Sound packs (Zeemod, Kriechbaum, Slavik):** Volume levels for engine, horn, and interior sounds are adjustable per mod. Some provide a console variable (e.g., `s_engine_volume`). Others expose sliders in the truck dealer's customisation menu. Leave at default and adjust per truck.
- **Interior add-ons (SiSL's Mega Pack, Cabin Accessories):** Configurable from the truck upgrade menu at any service station. No external config files.
- **Physics mods (realistic truck physics, tyre friction):** Some physics mods include a `physics_config.txt` in their archive. Adjust values at your own risk — default values are balanced for the included truck mods in this guide.

### Gameplay Mods

- **Economy re-baselines (Real Fuel Prices, Real Companies):** These are data-only mods. No configuration. They must be placed high in the load order (near the top) so their data overrides default game data.
- **AI traffic packs (Jazzycat traffic packs, Brutal Traffic):** The number of AI vehicles can be configured from the console via `g_traffic` (default 1.0). Increase to 1.5–3.0 for denser traffic. Higher values increase CPU load.

---

## Verifying Configuration Changes

After editing `config.cfg` and launching the game, confirm your changes were applied:

1. Open the developer console (~ key).
2. Type each variable name to see its current value:
   - `r_buffer_page_size` — should display your chosen value.
   - `mm_max_resource_size` — should display your chosen value.
   - `mm_max_tmp_buffers_size` — should display your chosen value.
   - `g_developer` — should display `1`.
   - `g_console` — should display `1`.
3. Navigate to **Options → Graphics** and verify that the settings from the table above match.

If any variable shows a different value, the game may have overwritten `config.cfg` on exit. Re-open the file and confirm the line is present and not commented out. If `config.cfg` was regenerated (e.g., after a game update or a `-noworkshop` launch parameter change), restore your backup and reapply the edits.

---

## Troubleshooting Configuration Issues

| Symptom | Likely Cause | Solution |
|---------|-------------|----------|
| Console does not open with ~ | `g_developer` or `g_console` not set to `1` | Verify both lines exist and are uncommented in `config.cfg`. |
| Game crashes on startup after config edit | Typo in `config.cfg` | Restore backup. The game is strict about quotation marks and equal signs. |
| Textures missing or purple | `mm_max_resource_size` too low | Increase to 50 or 60. Check `game.log.txt` for `Failed to load resource` errors. |
| Stuttering when crossing map sectors | `r_buffer_page_size` too low | Increase to 50 or 100. Also verify `mm_max_tmp_buffers_size` is 1000. |
| Low FPS at 4K | Scaling too high or VRAM exhausted | Drop scaling to 300% or 200%. Lower Grass Density to Medium or Low. |
| Settings reset after closing game | In-game Options menu saved over `config.cfg` | Re-apply manual edits after changing any in-game setting. Or make all changes from `config.cfg` and avoid the Options menu for those settings. |
| Modded map shows black sectors | Missing map DLC or outdated ProMods definition | Verify all required DLCs are installed and ProMods definition file matches your DLC set. |
