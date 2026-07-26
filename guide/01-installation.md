# Installation Guide

## Prerequisites

- A legitimate copy of GTA IV (Steam or retail)
- GTA IV must be patched to **version 1.0.8.0** (November 29, 2016)
- ~20 GB free disk space
- Windows 7 or later

## Step 1: Clean Installation

If you already have GTA IV installed, verify your version:

1. Right-click `GTAIV.exe` → Properties → Details
2. File version should read `1.0.8.0`

### Downgrading (if needed)

If you are on a newer version (e.g., Complete Edition) you will need to downgrade. Follow the [GTA IV Downgrade Guide](https://gtaforums.com/topic/980300-guide-downgrading-gta-iv-from-1020-to-1080/) to get to 1.0.8.0.

### Clean Install

1. Uninstall any existing GTA IV installation
2. Delete the remaining GTA IV folder (usually `C:\Program Files (x86)\Rockstar Games\Grand Theft Auto IV`)
3. Delete `Documents\Rockstar Games\GTA IV` (backup saves first)
4. Reinstall GTA IV
5. Patch to 1.0.8.0 if your installer doesn't include it

## Step 2: FusionFix Installation

[FusionFix](https://github.com/ClonkAndre/GTAIVFusionFix/) is a comprehensive compatibility and bug-fix framework. It is **required** for both waves.

**Current tested version:** `v3.18.0`

1. Download version v3.18.0 from the [FusionFix releases page](https://github.com/ClonkAndre/GTAIVFusionFix/releases/tag/v3.18.0)
2. Extract the archive to your GTA IV root folder (where `GTAIV.exe` lives)
3. When prompted, **overwrite all files**
4. Launch the game once to verify it works

### Verifying FusionFix is working

- Launch GTA IV
- You should see the FusionFix version number in the bottom-right corner of the main menu
- Open the in-game console (~ key) — if it opens, FusionFix is active

## Step 3: Mod Installation Order

When installing mods, always follow this order to avoid conflicts:

1. **FusionFix** — always first (handles compatibility)
2. **Script hook / mod loaders** — any dependencies that mods require
3. **Graphics mods** — ENB, textures, lighting (applied last to avoid overwrites)
4. **Content mods** — vehicles, weapons, map additions
5. **Mechanics mods** — physics, AI, damage models
6. **Audio mods** — radio, sound effects
7. **Configuration edits** — `.ini` and `.xml` tweaks

## Step 4: First Launch

1. Launch `GTAIV.exe` (or `PlayGTAIV.exe` depending on your install)
2. Go to **Graphics** settings and set:
   - Resolution: your monitor's native
   - Texture Quality: High
   - View Distance: 30-40 (adjust based on performance)
3. Go to **Controls** and configure key bindings to your preference
4. Start a new game to verify everything works

## Troubleshooting

| Problem | Solution |
|---------|----------|
| Game crashes on startup | Verify FusionFix is installed correctly. Check `Documents\Rockstar Games\GTA IV\Logs\` |
| Black screen on launch | Try windowed mode (`-windowed` launch parameter) |
| Low FPS | Reduce View Distance and Shadow Quality in graphics settings |
| Missing textures | Set Texture Quality to High or Medium |
| Controls not working | Verify control bindings in Settings → Controls, then reinstall FusionFix |
