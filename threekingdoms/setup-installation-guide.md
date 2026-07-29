# Setup & Installation Guide

## Total War Mod Manager (TWMM)

TW Mod Manager is the recommended tool for managing Total War: Three Kingdoms mods.

### Download & Install
1. Visit https://www.nexusmods.com/site/mods/1238
2. Download the latest version
3. Run the installer
4. On first launch, point TWMM to your Total War: Three Kingdoms installation folder (typically `steamapps/common/Total War THREE KINGDOMS`)

### Importing a Modlist
Each wave directory contains a `mods.yaml` file listing all mods and their sources.

1. Download each mod from its Nexus/Steam Workshop URL
2. Place `.pack` files in `Total War THREE KINGDOMS/data/`
3. Open TWMM — it scans the data folder and lists all detected mods
4. Check the mods you want to enable for your current wave
5. Arrange load order (see below)

### Load Order Rules
1. **Dependencies before dependents** — if Mod B needs Mod A, Mod A loads first
2. **UI mods load last** — UI changes should override everything else
3. **Audio mods load before content mods** — prevents conflicts
4. **Total overhauls load first** — they change the foundation everything else builds on

TWMM allows drag-and-drop reordering. Use the "Groups" feature to save load
order profiles for each wave.

### Verifying Compatibility
- TWMM checks for known conflicts and shows warnings
- Cross-reference with `conflicts.yaml` for tracked issues
- If TWMM shows a conflict, check the resolution field in the mod entry or
  conflicts.yaml

### Per-Wave Profiles
1. In TWMM, create a "Wave 0" group with those mods enabled and all others disabled
2. When moving to Wave 1, disable all Wave 0 mods first, then enable Wave 1 mods
3. This prevents cross-wave conflicts

## Manual Installation (Without TWMM)
1. Download mod `.pack` files
2. Place in `steamapps/common/Total War THREE KINGDOMS/data/`
3. Launch the game launcher
4. Go to "Mod Manager" tab
5. Enable mods in the correct order
6. Launch the game

> Note: The game's built-in mod manager is less capable than TWMM. TWMM is
> strongly recommended.
