---
title: Installation & Setup
description: How to install The Witcher 3, set up the Mod Manager, and prepare for modding
---

# Installation & Setup

<span class="wave-badge wave-0">Wave 0</span>

## Game Installation

1. Install **The Witcher 3: Wild Hunt - Game of the Year Edition** via GOG, Steam, or Epic
2. Ensure your game is updated to **version 4.04** (released July 19, 2023)
   - GOG: Verify game executable properties
   - Steam: Properties -> Betas -> Select "4.04"
   - Epic: Auto-updates to latest
3. Run the game once to generate configuration files

## Witcher 3 Mod Manager

Download and install [Witcher 3 Mod Manager](https://www.nexusmods.com/witcher3/mods/2678) (Nexus #2678).

### Setup Steps

1. Launch the Mod Manager
2. Set your game directory (where `witcher3.exe` is located)
3. The Mod Manager will scan for existing mods
4. Create a profile named "Only Monsters Remain - Wave 0"

### Configuration

- Enable "Script Merger" integration
- Enable "Mod Deactivation" for profile switching
- Set mod staging folder to default

## Mod Limit Adjuster (Required)

The game has a built-in limit on how many mods can be loaded. Install [Mod Limit Adjuster](https://www.nexusmods.com/witcher3/mods/3711) (Nexus #3711) **before** installing any mods to raise this limit.

### Prerequisites

- [Ultimate ASI Loader](https://github.com/ThirteenAG/Ultimate-ASI-Loader/releases) (x64) — download the x64 release
- Hearts of Stone DLC
- Blood and Wine DLC
- [Microsoft Visual C++ Redistributable (2019)](https://aka.ms/vs/16/release/vc_redist.x64.exe)

### Installation

1. Copy `dinput8.dll` from the ASI Loader zip into your game's root directory (where `witcher3.exe` is located)
2. Extract `ModLimitAdjuster.asi` and `ModLimitAdjuster.cfg` from the mod zip into the same directory
3. Remove `dsound.dll` if present — only use `dinput8.dll`
4. Open `ModLimitAdjuster.cfg` and set your desired limit (default: 192)

Do **not** use the Mod Manager for this — it installs manually to the game directory.

## Script Merger (Required)

[Script Merger](https://www.nexusmods.com/witcher3/mods/484) (Nexus #484) detects conflicts between mods and helps you resolve them by merging files or configuring load order.

### Installation

1. Download and extract Script Merger anywhere on your PC
2. Launch `ScriptMerger.exe`
3. In the top textbox, enter your Witcher 3 installation directory (where `witcher3.exe` is located)
4. Script Merger will scan for mods and show conflicts

### Usage

You will need to run Script Merger every time you install, update, or remove mods that modify the same files.

1. Launch Script Merger
2. Click **Refresh** to scan for conflicts
3. **Mergeable conflicts** (green/teal) — select the conflicting files and click **Create Selected Merge**:
   - KDiff3 will open to show differences between mod versions
   - If changes don't overlap, KDiff3 auto-merges — review and save
   - If changes overlap, manually choose which changes to keep in KDiff3
4. **Non-mergeable conflicts** (red) — these are file conflicts Script Merger can't merge (e.g. textures, bundles):
   - Right-click a mod to set its **priority** (lower number loads first)
   - Or rename mod folders so the one you want to win loads first alphabetically
5. Repeat until no mergeable conflicts remain
6. Click **Pack** to bundle merged files, then launch the game

### Tips

- Always run Script Merger after installing a batch of mods, not after each one
- If you update a mod, Script Merger will prompt you to delete affected merges — do so, then re-merge
- Merged files go into `mod0000_MergedFiles` which loads before all other mods
- KDiff3 basics: left panel = your changes, right panel = their changes, bottom = result

## Community Patch Mods

These mods provide shared resources and frameworks for other mods to build on. Install them via the Mod Manager in this order:

1. [**Community Patch - Shared Imports**](https://www.nexusmods.com/witcher3/mods/2110) (#2110) — Shared class imports baseline. Reduces merge conflicts between mods that import the same engine classes.
2. [**Community Patch - Menu Strings**](https://www.nexusmods.com/witcher3/mods/3650) (#3650) — Pre-made localized strings for Options->Mods menu subcategories. Needed by Bootstrap.
3. [**Community Patch - Bootstrap and Utilities**](https://www.nexusmods.com/witcher3/mods/2109) (#2109) — Autostartup framework and utility functions. Depends on Shared Imports and Menu Strings.

## Brothers In Arms - Ultimate Edition

[**Brothers In Arms - Ultimate Edition**](https://www.nexusmods.com/witcher3/mods/11260) (Nexus #11260) is a massive bug fix and restored content collection (5,825 fixes). Install via Mod Manager.

- Requires Hearts of Stone and Blood and Wine DLCs
- Optional content can be toggled in-game via Options -> Mods -> Brothers In Arms
- Run Script Merger after installing

## Clever Main Menu (Redux)

[**Clever Main Menu (Redux)**](https://www.nexusmods.com/witcher3/mods/12271) (Nexus #12271) replaces the main menu with a customizable version featuring infinite mod categories.

- Requires Hearts of Stone and Blood and Wine DLCs
- Install via Mod Manager or manually to game root
- **After installing**, edit `dx11filelist.txt` and `dx12filelist.txt` in `bin/config/r4game/user_config_matrix/pc/`:
  - Add `modCleverMainMenu.xml;` to the bottom of each file
  - Ensure a comma at the end of every line except the last
- Do **not** use Menu Organizer or similar mods alongside this — CMM has its own menu system

## Next Steps

After setup, proceed to the [Wave 0 Modlist](./01-modlist-wave0).
