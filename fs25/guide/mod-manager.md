# Mod Manager V0.7.11 Guide

## Overview

Mod Manager V0.7.11 is an external Windows tool for managing Farming Simulator 25 mod profiles. Instead of manually swapping mod folders, it changes the active mod path in `gameSettings.xml`, letting you quickly switch between setups for different playthroughs.

**Key concept:** The tool does NOT move or delete mods. It only changes which mod folder the game looks at. Each wave in this guide uses a different mod folder, so you can switch between them without reinstalling anything.

## Installation

1. Download from [fs25.net/mod-manager-v0-7-11/](https://fs25.net/mod-manager-v0-7-11/)
2. Extract the ZIP file to a permanent location
3. Run **LS25_ModManager_v0.7.11.exe**

**Windows SmartScreen warning:** On first launch, Windows may block the EXE because it lacks a digital signature. Click **More information** → **Run anyway**.

4. If the FS25 folder is not auto-detected, select it manually
5. The tool will auto-detect your Documents / OneDrive path for mod folders

## Configuration

1. **Game path**: Set to your FS25 install folder (if not auto-detected)
2. **Mod folder location**: Defaults to `Documents\My Games\FarmingSimulator2025\mods\`
3. **Backup**: Automatic `gameSettings.xml` backup before each profile switch

## Setting Up Wave Profiles

The mod manager works by switching which mod folder is active. Create a separate folder for each wave:

### Step 1: Create mod folders
In your FS25 mods directory, create one folder per wave:
```
Documents\My Games\FarmingSimulator2025\
├── mods_FVB_Wave0\    # Wave 0 mods go here
├── mods_FVB_Wave1\    # Wave 0 + Wave 1 mods go here
└── mods_FVB_Wave2\    # Wave 0 + Wave 1 + Wave 2 mods go here
```

### Step 2: Place mod files
Copy mod ZIP files into the appropriate folder:
- **Wave 0**: Place all Wave 0 mods into `mods_FVB_Wave0\`
- **Wave 1**: Place all Wave 0 mods + Wave 1 mods into `mods_FVB_Wave1\`
- **Wave 2**: Place all Wave 0 + Wave 1 + Wave 2 mods into `mods_FVB_Wave2\`

### Step 3: Activate a profile
1. Open Mod Manager
2. Select the mod folder you want to use (e.g., `mods_FVB_Wave0`)
3. Click **Activate**

The tool updates `gameSettings.xml` to point to that folder. The game will now load mods from that folder on launch.

### Step 4: Verify
Launch FS25. Check the mods list in-game to confirm all mods are loaded.

## Switching Between Waves

1. **Close Farming Simulator 25 completely** (the tool blocks switching while LS25 is running)
2. Open Mod Manager
3. Select a different mod folder
4. Click **Activate**
5. Launch FS25

Your game saves are independent of the mod profile, but remember: loading a save from Wave 0 with Wave 2 mods active may cause issues. Start a new save for each wave.

## Features

- Download FTP mods directly through the tool
- Automatically replace existing mods when updating
- History/log of profile switches
- Dark modern design

## Troubleshooting

- **Mod not showing in-game**: Verify the mod ZIP file is in the active mod folder. Check the game log at `Documents\My Games\FarmingSimulator2025\log.txt`.
- **Profile won't activate**: Ensure LS25 is fully closed (check Task Manager).
- **GameSettings.xml not found**: Manually point the tool to your Documents folder.
- **Mod conflicts**: Check `conflicts.md` in this project for known incompatibilities between specific mods.
