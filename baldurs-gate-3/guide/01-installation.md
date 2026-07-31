# Installation Guide

This guide walks you through installing and configuring BG3 Mod Manager (BG3MM) and setting up your mods for both waves of Mythic Crucible.

## Installing BG3 Mod Manager

### Download

Download BG3 Mod Manager from the official GitHub releases page:

**https://github.com/LaughingLeader/BG3ModManager/releases**

Download the latest release `.zip` file (not the source code). As of this writing, the latest version supports Patch 8.

### Installation

1. Extract the downloaded `.zip` file to a folder of your choice (e.g., `C:\Games\BG3ModManager\`). Do not put it inside the Baldur's Gate 3 game directory.

2. Run `BG3ModManager.exe`.

3. On first launch, BG3MM will ask you to locate your Baldur's Gate 3 installation:
   - The default Steam path is: `C:\Program Files (x86)\Steam\steamapps\common\Baldurs Gate 3\`
   - For GOG: `C:\Program Files (x86)\GOG Galaxy\Games\Baldurs Gate 3\`
   - Point it to the folder containing `bg3.exe` or `bg3_dx11.exe`.

4. BG3MM will detect the game and display the main interface with your installed mods. On a fresh install, the list will be empty.

### First-Launch Configuration

1. Go to **Settings > Preferences** (or click the gear icon):
   - **Game Data Path:** Should point to your BG3 `Data` folder. BG3MM usually detects this correctly.
   - **Mods Directory:** Where your downloaded `.pak` mod files are stored. Default is `%LocalAppData%\Larian Studios\Baldur's Gate 3\Mods\`. Keep this default — it's where the game expects mods.

2. Go to **Settings > Open Mods Folder** to confirm the mods directory exists and is accessible.

3. **Create a profile:** Click **File > New Profile** (or the profile dropdown at the top). Name it **"Mythic Crucible — Wave 0"**. This profile will contain only your Wave 0 mods.

### Verifying Game Detection

Check the status bar at the bottom of BG3MM:
- It should show your game version (e.g., "v4.1.1.7209685" for Patch 8).
- The profile name should appear in the top dropdown.
- If it says "Game not found," re-check the game path in Settings.

---

## Setting Up Mods

### Downloading Mods from Nexus Mods

1. Visit the mod URL listed in each mod entry in this guide.

2. On the mod's Nexus page, go to the **Files** tab.

3. Click **Manual Download** on the main file. For mods with multiple files, read the description to choose the correct one (some mods have "Patch 8" specific versions).

4. If prompted, choose **Slow Download** (free) or **Fast Download** (Premium). The file will download as a `.zip` or `.pak` file.

5. If the download is a `.zip`, extract it. You're looking for `.pak` files inside. Most mods include the `.pak` directly.

### Importing Mods into BG3MM

1. Drag and drop the `.pak` file(s) from your downloads folder into the BG3MM window. Alternatively, use **File > Import Mod** and browse to the `.pak` file.

2. The mod will appear in the **Inactive Mods** list (right panel).

3. To activate a mod, drag it from **Inactive Mods** to **Active Mods** (left panel) or double-click it.

4. The order of mods in the Active Mods list (top to bottom) is your load order. See the Load Order section of this guide (`guide/06-load-order.md`) for the recommended order.

### Saving and Exporting

1. After arranging your mods, click **File > Save Order** (or Ctrl+S). This saves your load order within BG3MM.

2. Click **File > Export Order to Game** (or the export button in the toolbar). This writes your load order to the game's `modsettings.lsx` file so Baldur's Gate 3 knows which mods to load.

3. You must export every time you change your mod list. If you add, remove, or reorder mods without exporting, the changes won't take effect.

### Verifying Mods Are Active In-Game

1. Launch Baldur's Gate 3.

2. On the main menu, you'll see a **Mod Manager** option (this is the game's built-in mod manager, separate from BG3MM). Click it.

3. You should see all your activated mods listed. If any are missing:
   - Go back to BG3MM and verify the mod is in the Active Mods list.
   - Click **Export Order to Game** again.
   - Restart the game.

4. **Do not enable or disable mods in the in-game Mod Manager** — it can conflict with BG3MM. Use BG3MM exclusively for managing your mods.

### Troubleshooting Common Issues

| Issue | Likely Cause | Fix |
|-------|-------------|-----|
| Game crashes on launch | Load order conflict or outdated mod | Disable all mods, verify game launches vanilla. Re-enable mods one by one. Check mod page for Patch 8 compatibility. |
| Mod not appearing in game | Not exported to game, or load order issue | In BG3MM: File > Export Order to Game. Restart game. Check mod is in Active Mods. |
| "Mod mismatch" warning in multiplayer | Different mods than other players | Only relevant for multiplayer. Ignore for single player. |
| Save won't load | Missing a mod that was active when saving | Re-enable the mod or start a new game. Never remove mods mid-playthrough unless the mod author explicitly says it's safe. |
| BG3MM doesn't detect game | Wrong game path | Settings > Preferences > Game Data Path. Point to BG3's `Data` folder. |
| Mod `.pak` won't import | Corrupted download or unsupported format | Re-download the mod. Ensure you're importing a `.pak` file, not `.zip` or other archives. |

---

## Wave Setup

### Wave 0 Setup

1. In BG3MM, select (or create) the profile **"Mythic Crucible — Wave 0"**.

2. Import and activate ALL mods listed in `guide/03-wave-0-modlist.md` (Wave 0 Modlist).

3. Arrange them in the load order specified in `guide/06-load-order.md`.

4. Click **File > Save Order**.

5. Click **File > Export Order to Game**.

6. Launch BG3 and start a new game. You're ready for "First Steps into Faerun."

### Wave 1 Setup (After Completing Wave 0)

1. In BG3MM, create a new profile: **"Mythic Crucible — Wave 1"**.

2. Import and activate ALL Wave 0 mods PLUS ALL Wave 1 mods listed in `guide/05-wave-1-modlist.md`.

3. Arrange them in the Wave 1 load order specified in `guide/06-load-order.md`. Wave 0 mods load first, then Wave 1 mods.

4. Save the order and export to game.

5. **Start a NEW game.** Wave 1 is not an upgrade to your Wave 0 save. Many Wave 1 mods (new races, classes, quests, areas) require a new game to function. Your Wave 0 playthrough remains intact as a separate save.

6. You're ready for "Mythic Crucible."

### Profile Switching

BG3MM profiles make it easy to switch between waves:
- Select the profile from the dropdown at the top of BG3MM.
- Export to game before launching.
- Your Wave 0 save is safe — it simply won't load if Wave 1 mods are active (and vice versa).

### Important Notes

- **Never remove mods mid-playthrough** unless the mod author explicitly says it's safe. Removing a mod can corrupt your save.
- **Always export after changing mods.** The game reads `modsettings.lsx` at launch. If you forget to export, the game loads with your last exported configuration.
- **Backup your saves** before installing large mod sets. Saves are located at: `%LocalAppData%\Larian Studios\Baldur's Gate 3\PlayerProfiles\<ProfileName>\Savegames\Story\`
