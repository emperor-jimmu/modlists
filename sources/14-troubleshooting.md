# Troubleshooting

Common issues encountered when installing and running a heavily modded ETS2 profile, along with their causes and fixes.

---

## Quick Reference Table

| Issue | Cause | Fix |
|-------|-------|-----|
| Game crashes on launch | `r_buffer_page_size` too low | Increase to 50-100 in `config.cfg` |
| Grey/black sectors on map | Map mod load order wrong | Move ProMods definition file to top of load order |
| CTD entering a specific city | Map conflict or missing connector | Check required map connectors for that city |
| Missing textures (pink/magenta) | Texture mod too low in priority | Move graphics/texture mods above map mods in load order |
| Performance stutters / micro-freeze | VRAM overload | Reduce scaling from 400% to 300% or disable some graphics mods |
| Truck Mod Manager shows no mods | Wrong mod folder path | Verify mods are in `Documents\Euro Truck Simulator 2\mod` |
| ProMods compatibility error on load | Missing map DLC | Install all required DLCs (go to Steam, verify ownership) |
| Reshade not appearing in-game | DirectX hook failure | Launch with `-dx11` flag; run `ReShade_Setup.exe` again and select ETS2 .exe |
| Game log spam: `Failed to load resource` | `mm_max_resource_size` too low | Increase to 50-60 in `config.cfg` |
| Mods not applying in-game | Profile using wrong mod set | Confirm the correct profile is selected at profile picker and mods are checked |
| New map sectors not appearing after install | Mod not activated in profile manager | Open Mod Manager, enable all map mods, confirm load order matches appendix |
| AI traffic disappears after mod install | Traffic mod at wrong load order slot | Move Jazzycat / Brutal Traffic packs below maps but above gameplay mods |
| Engine sound missing on new truck | Sound mod conflict with another truck mod | Disable conflicting sound packs; enable only one sound mod per truck |
| Crash when opening truck dealer | Conflicting truck or interior mod | Disable truck mods one by one to isolate the conflict |
| Console not opening with tilde key | `g_developer` and `g_console` not set | Enable both in `config.cfg` (see Section 3) |

---

## Detailed Fixes

### Game Crashes on Launch

The most common cause is an insufficient `r_buffer_page_size`. The default value of 10 is too low for mod-heavy profiles. Edit `config.cfg` in `Documents\Euro Truck Simulator 2\` and set:

```ini
r_buffer_page_size "50"
```

If you run a large map combo (ProMods + RusMap + ROEX + additional maps), set it to `100`. Values above 100 offer no additional benefit.

### Grey or Black Sectors on the Map

This indicates that the map mod definition files are not loading in the correct priority order. In the Mod Manager, ensure:

1. **ProMods Definition File** is at the very top of the right-hand list (highest priority).
2. Map background files (`promods-map`, `rusmap-map`) are below the definition file.
3. Map connector files are below all map mods.

Refer to the load order appendix for the exact sequence.

### Missing Textures (Pink/Magenta)

Pink textures mean the game cannot load a texture file. This usually happens when a graphics or texture mod is placed below a map mod in load order (lower priority), and the map mod's sector references the texture but a higher-priority mod has overwritten it with an incompatible version.

**Fix:** Move all standalone texture packs (highway signs, building textures, road textures) above map mods in the load order. The rule of thumb: graphics mods load first, maps second, gameplay third.

### Performance Stutters

Heavy mod profiles at 4K can exhaust VRAM quickly. MSI Afterburner overlay will show VRAM usage near 100% when stuttering occurs. Mitigation steps in order:

1. Reduce scaling from 400% to 300%.
2. Lower Grass Density from High to Medium.
3. Disable the most demanding graphics mods (4K tree packs, high-res building textures).
4. Reduce Mirror Resolution in game settings.

### Truck Mod Manager Shows No Mods

The Mod Manager reads from `Documents\Euro Truck Simulator 2\mod\`. If the folder does not exist or mods were placed elsewhere (e.g., the Steam Workshop folder), the manager will appear empty.

**Fix:** Verify the path exists. Create it if missing. Move all `.scs` files into this folder. Ensure the files are not nested inside subdirectories — the Mod Manager reads flat `.scs` files only.

### ProMods Compatibility Error

ProMods checks for specific DLCs at startup. The error message lists which DLC is missing. Common missing DLCs:

- **Iberia** (required for ProMods 2.70+)
- **Road to the Black Sea**
- **Beyond the Baltic Sea**
- **Scandinavia**
- **France**
- **Italy**
- **Going East!**

**Fix:** Purchase and install the missing DLCs through Steam. After installation, re-download the ProMods definition file (the definition file generation page detects your installed DLCs and creates a compatible version).

### Reshade Not Appearing

Reshade may fail to hook into the ETS2 executable if launched with DirectX 11 or if the installation was interrupted.

**Fix:** Add `-dx11` to the game's launch options in Steam (Properties → General → Launch Options). If Reshade still does not appear, run `ReShade_Setup.exe` again, select `eurotrucks2.exe`, re-select the preset file, and confirm the DirectX 10/11/12 option during setup.

### Failed to Load Resource Warnings

The game log (`Documents\Euro Truck Simulator 2\game.log.txt`) contains `Failed to load resource` lines when a texture or model file exceeds the engine's per-file size limit.

**Fix:** Increase `mm_max_resource_size` in `config.cfg`:

```ini
mm_max_resource_size "60"
```

If errors persist for files larger than 60 MB, increase to 80. Monitor the game log after each change.

---

## Reading the Game Log

The game log (`Documents\Euro Truck Simulator 2\game.log.txt`) is the primary diagnostic tool. Key patterns to search for:

| Pattern | Meaning |
|---------|---------|
| `00:00:00.000 : [mods] Active ` | Mod loaded successfully. |
| `00:00:00.000 : [mods] Cannot find `/` | A mod archive is corrupted or missing a required file. |
| `00:00:00.000 : [dx11] Failed to create vertex buffer` | VRAM exhausted or buffer size settings too low. |
| `00:00:00.000 : <ERROR> [unit] File `/` ` | A unit definition (truck, trailer, cargo) failed to parse — usually a mod conflict. |
| `00:00:00.000 : <ERROR> [fs] Failed to open file` | A referenced file is missing from a mod or the base game. |
| `00:00:00.000 : <ERROR> [traffic] Error parsing traffic rule` | AI traffic mod conflict. |

Search the log for `ERROR` and `WARNING` lines. A clean log from a vanilla profile has fewer than five errors. A modded profile will have some errors by nature — look for recurring or severe errors rather than chasing every warning.

---

## Safe Mode Launch

If the game refuses to start due to a mod conflict, launch with all mods disabled:

1. Right-click ETS2 in Steam → Properties → General → Launch Options.
2. Add `-force_mods` (this disables the mod check without removing files).
3. Launch the game and enter the Mod Manager.
4. Disable all mods, then re-enable them one group at a time to isolate the culprit.
5. Remove `-force_mods` from launch options once resolved.

---

## When All Else Fails

If you cannot resolve a crash or graphical issue:

1. **Clean profile:** Create a new profile in the profile picker with no mods. If it works, add mods one category at a time.
2. **Verify game files:** Steam → Properties → Installed Files → Verify Integrity of Game Files.
3. **Reinstall mods:** Delete all mods from `Documents\Euro Truck Simulator 2\mod` and re-download them fresh.
4. **Ask the community:** Post your `game.log.txt` (use a pastebin service) on the [SCS Forum](https://forum.scssoft.com) or the [ProMods forum](https://promods.net) for expert troubleshooting.
