---
title: Mod Manager Guide
description: Complete guide to using Witcher 3 Mod Manager (Nexus #2678)
---

# Mod Manager Guide

<span class="wave-badge wave-0">All Waves</span>

## About Witcher 3 Mod Manager

[Witcher 3 Mod Manager](https://www.nexusmods.com/witcher3/mods/2678) (Nexus ID: 2678) is the recommended mod manager for this modlist. It provides:

- Easy mod installation and removal
- Profile-based mod management
- Script Merger integration
- Mod conflict detection
- Load order management

## Installation

1. Download from [Nexus Mods](https://www.nexusmods.com/witcher3/mods/2678)
2. Extract the archive to a folder of your choice
3. Run `Witcher3ModManager.exe`
4. Point it to your Witcher 3 installation directory

## Profile Management

### Creating Profiles
1. Click "Profiles" -> "New Profile"
2. Name it (e.g., "Only Monsters Remain - Wave 0")
3. Select the profile from the dropdown
4. Mods can be enabled/disabled per profile

### Switching Profiles
1. Select profile from the dropdown
2. Click "Apply" to refresh mod list
3. Changes take effect immediately

## Installing Mods

### Automatic (Recommended)
1. Download a mod from Nexus Mods (usually a `.zip` or `.7z` archive)
2. Drag and drop the archive onto the Mod Manager window
3. Or use "File" -> "Install Mod" and select the archive
4. The Mod Manager extracts it to the correct location

### Manual
1. Extract the mod archive
2. Copy the mod folder to `[Witcher 3]\Mods\`
3. Refresh the Mod Manager

## Script Merger

Script Merger resolves conflicts between mods that edit the same files.

### Usage
1. After installing all mods, click "Script Merger" in the Mod Manager
2. The tool scans for conflicts
3. Select merge options (usually "Auto-Merge")
4. Apply the merged files

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Mod not showing in-game | Check it's enabled in Mod Manager |
| Script compilation errors | Run Script Merger |
| Game crashes on load | Check load order, remove conflicting mods |
| Textures missing | Verify mod integrity, reinstall |
