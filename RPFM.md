# RPFM Setup Guide

## What is RPFM?

RPFM is the mod manager for Total War: Warhammer III. It handles downloading, installing, and activating mods through a graphical interface.

- Website: https://frodo45127.github.io/rpfm/
- GitHub: https://github.com/frodo45127/rpfm

## Installation

1. Download the latest release from the [RPFM releases page](https://github.com/frodo45127/rpfm/releases).
2. Extract the archive to a location of your choice.
3. Run `RPFM.exe` — the application will self-locate your Total War: Warhammer III installation.

## First-Time Setup

1. Launch RPFM and let it auto-detect your TWWH3 installation path.
2. If it does not auto-detect, set the path manually:
   - Open Settings (gear icon)
   - Under **Game**, set the **Warhammer 3 Directory** to your TWWH3 install folder (e.g., `C:\Program Files\Steam\steamapps\common\Total War WARHAMMER 3`)
3. The mod folder will default to `<TWWH3 Directory>\Data\Base\` unless you create a custom mod folder.

## Configuring a Custom Mod Folder

1. In RPFM, go to **Settings** > **Mods**.
2. Under **Mod Folder**, set a dedicated path for your modlist mods (e.g., `C:\TWWH3\Mods\WhenGodsBleed\`).
3. This keeps Wave-specific mods organized and prevents conflicts with other modlists.

## Activating Mods

1. In RPFM, navigate to **Mods** in the left sidebar.
2. Click **Add Mod** and locate the mod's `.pack` or folder.
3. Toggle the mod to **Active** (green checkmark).
4. Check the dependency chain — any mod listed as a dependency must also be active.
5. Click **Launch Game** to start TWWH3 with your selected mods.

## Modpack Installation (from URLs)

1. Click **Add Mod** > **Download from URL**.
2. Paste the mod's URL (e.g., a Total Workshop link).
3. RPFM will download and add the mod to your library.
4. Activate it following the steps above.

## Troubleshooting

| Issue | Solution |
|-------|----------|
| RPFM can't find the game | Manually set the TWWH3 directory in Settings |
| Mod crashes on launch | Check for version compatibility; ensure all dependencies are active |
| Conflicting mods | Check `conflicts.conf` for known conflicts; deactivate one of the conflicting pair |
| Game doesn't start | Verify the mod folder path is correct; ensure RPFM is up to date |