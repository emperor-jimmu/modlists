# Mod Manager

## Why Use a Mod Manager?

ETS2's built-in mod manager works, but it has real limitations when you are managing 50+ mods across multiple profiles:

- **No drag-and-drop reordering** — You move mods one at a time with up/down buttons.
- **No mod thumbnails** — You identify mods by filename alone.
- **No cloud backup** — Load orders are stored locally per profile with no export option.
- **No profile comparison** — Switching profiles means manually re-enabling everything.

Truck Mod Manager solves all of these. It is a third-party open-source desktop app built in Python by the ETS2 community. It sits alongside your game — it does not modify ETS2 executables or memory — and manages the `profile` and `mod` configuration files that the game already uses. SCS Software has never objected to this class of tool.

## Installing Truck Mod Manager

### Step 1: Install Python 3.10+

Truck Mod Manager is a Python application. You need Python 3.10 or newer installed on your system **before** you download the tool.

1. Go to [python.org/downloads](https://python.org/downloads).
2. Download the latest **Python 3.10+** installer for Windows.
3. Run the installer.
4. **Important:** Check the box **"Add Python to PATH"** at the bottom of the installer window.
5. Click **Install Now** and wait for the installation to finish.
6. Verify the installation by opening a Command Prompt or PowerShell window and running:

```powershell
python --version
```

You should see output like `Python 3.13.x`. If you see an error, Python was not added to PATH — re-run the installer and make sure the checkbox is checked.

### Step 2: Download Truck Mod Manager

1. Visit the GitHub repository: [github.com/cortexstudiosinfo/ETS2-MOD-MANAGER-UI](https://github.com/cortexstudiosinfo/ETS2-MOD-MANAGER-UI)
2. Click the green **Code** button, then **Download ZIP**.
3. Extract the ZIP file to a permanent location, e.g. `C:\Programs\TruckModManager` or `D:\Tools\ETS2-Mod-Manager`.
4. Open the extracted folder. You should see files including `main.py`, `requirements.txt`, and `run.cmd`.

### Step 3: Run the Launcher

Double-click `run.cmd`. This script does the following automatically:

1. Checks that Python is installed and available.
2. Creates a Python virtual environment (`venv\`) inside the folder if one does not exist.
3. Installs all required Python packages from `requirements.txt`:

   - `customtkinter` — Modern UI toolkit for the interface
   - `pillow` — Image handling for mod thumbnails
   - `requests` — HTTP requests for Workshop thumbnails and cloud presets
   - `google-cloud-firestore` + `firebase-admin` — Cloud preset storage backend

4. Launches the application.

The first run takes longer because packages are being downloaded. Subsequent launches skip the install step and open immediately.

![Truck Mod Manager console during first launch](screenshots/installation/mm-console-first-run.png)

If the console window shows no errors, the main application window opens within a few seconds.

## First-Time Setup

When you launch Truck Mod Manager for the first time, it needs to know where ETS2 is installed. The tool attempts to detect this automatically from the Steam library, but you should verify the path.

### Setting the Game Install Directory

1. In the Truck Mod Manager window, locate the **Settings** section (gear icon or menu bar depending on version).
2. Find the field labelled **ETS2 Install Path** or **Game Directory**.
3. Verify or enter the correct path. Typical locations:

   | Installation Type | Path |
   |-------------------|------|
   | Default Steam | `C:\Program Files (x86)\Steam\steamapps\common\Euro Truck Simulator 2` |
   | Steam on another drive | `D:\SteamLibrary\steamapps\common\Euro Truck Simulator 2` |
   | Non-Steam | Your custom install location |

4. The tool also needs the **ETS2 Documents Path**, where your profiles and mod folder live. This is typically:

   ```
   %USERPROFILE%\Documents\Euro Truck Simulator 2
   ```

   The launcher usually detects this automatically from your Windows user folder.

5. Click **Save** or **Apply**.

### What Happens Next

The manager reads two key locations:

| Location | Purpose |
|----------|---------|
| `Documents\Euro Truck Simulator 2\mod\` | Your manually downloaded mod `.scs` and `.zip` files |
| `Documents\Euro Truck Simulator 2\profiles\` | Your saved game profiles, each containing a `manifest.sii` with its load order |
| `steamapps\workshop\content\227300\` | Steam Workshop mod files cached on disk |

If all three paths resolve, the manager is ready to use.

## Profile Detection and Management

Truck Mod Manager automatically lists every ETS2 profile it finds in your documents folder. Each profile is displayed by its in-game name (not the folder hash), making it easy to identify your profiles.

![Profile selection dropdown in Truck Mod Manager](screenshots/installation/mm-profile-selection.png)

### Creating and Switching Profiles

- **Selecting a profile** — Click on a profile name in the manager to load its mod list and current load order.
- **Creating a new profile** — You can create profiles from within the manager. A new empty profile is created in your ETS2 documents folder and appears in the game's profile selection screen next time you launch ETS2.
- **Renaming profiles** — Some versions of the manager allow renaming profiles directly. Otherwise, rename them from the game's profile screen.

### Recommended Profile Setup

As discussed in the [Getting Started](01-getting-started.md#profile-management-keep-modded-and-vanilla-separate) section, maintain at least two profiles visible in the manager:

1. **Vanilla** — No mods enabled. Safe for achievement hunting and testing performance baselines.
2. **Modded — ProMods** — The full modlist from this guide. Never load this profile without mods active.

The manager shows you which profile is currently selected and lets you switch instantly.

## Scanning Mods

Once a profile is selected, the manager scans two sources for available mods:

### Local Mods

Your `Documents\Euro Truck Simulator 2\mod\` folder is scanned for `.scs` and `.zip` files. Each mod appears in the manager's mod list with:

- **Filename** (e.g., `promods-v280.scs`)
- **Mod name** as declared inside the mod manifest
- **Thumbnail** if available (auto-downloaded from the Workshop or extracted from the mod)

### Workshop Mods

If you have subscribed to mods on the Steam Workshop, the manager detects them in your Steam cache at `steamapps\workshop\content\227300\`. These appear in a separate section or with a Workshop badge.

Workshop mods cannot be re-ordered independently through Truck Mod Manager — Workshop load order is controlled by Steam's internal mechanism when the game launches. The manager shows them so you have the full picture of what will be active.

### Thumbnail Downloads

For Steam Workshop mods, the manager automatically fetches the official Workshop thumbnail and displays it in the list. This makes visual identification much faster than reading filenames.

![Mod list with thumbnails in Truck Mod Manager](screenshots/installation/mm-mod-list.png)

## Drag-and-Drop Load Order Management

The single biggest improvement over the in-game manager is **drag-and-drop reordering**.

### The Load Order Panel

The load order panel shows all mods assigned to the currently selected profile, arranged top-to-bottom. The **top** of the list is loaded **last** and has the **highest priority** (it overrides mods below it).

This matches the convention used in the in-game mod manager: the mod at the top of the list wins conflicts.

### Reordering Mods

1. Click and hold any mod in the active load order list.
2. Drag it up or down to the desired position.
3. Release the mouse button. The order updates instantly.

The change is written to your profile's configuration file automatically. You do not need to click a separate "Save" button.

![Drag-and-drop reordering in Truck Mod Manager](screenshots/installation/mm-drag-drop.png)

### Enabling and Disabling Mods

- **Checkbox** next to each mod toggles it on or off without removing it from the profile.
- Disabled mods are greyed out but stay in the list, ready to be re-enabled with one click.
- This is useful for testing: disable one mod to see if a crash stops, then re-enable it.

### Adding Mods to a Profile

Mods detected in your `mod\` folder appear in a separate "Available Mods" panel. Drag a mod from the available list onto the active load order to add it to the profile.

### Removing Mods from a Profile

Right-click a mod in the active list and select **Remove** or drag it back to the available mods panel. The mod is removed from the profile's load order but stays in your `mod\` folder — it is not deleted.

## Cloud Presets for Backup and Sharing

One of the most valuable features of Truck Mod Manager is **cloud presets**. A cloud preset captures the complete load order for a profile and saves it to a cloud backend so you can restore it later or apply it on another machine.

### How Cloud Presets Work

The manager uses Firebase Firestore (Google's cloud database) as the storage backend. When you save a preset, the manager uploads:

- The full list of enabled mods in order
- Each mod's filename and internal name
- A timestamp for version tracking

The preset is keyed to your Firebase account or a unique identifier you create.

### Saving a Preset

1. Arrange your load order to your liking.
2. Click the **Cloud Presets** button in the toolbar.
3. Click **Save Preset**.
4. Give your preset a name (e.g., "ProMods Full — v2.80" or "Graphics Only Light").
5. Confirm. The preset is uploaded to the cloud.

### Restoring a Preset

1. Click **Cloud Presets**.
2. Select a preset from the list of saved configurations.
3. Click **Restore**.
4. The manager downloads the preset and applies the load order to the currently selected profile.

This is particularly useful when:

- **Reinstalling Windows or moving to a new PC** — Set up ETS2 fresh, install Truck Mod Manager, restore your preset, and your load order is back in seconds.
- **Experimenting with different mod combinations** — Save a working preset before trying new mods. If something breaks, restore the known-good preset.
- **Sharing load orders with friends** — Cloud presets can be shared between users, though this depends on the preset's scope setting in the manager.

### Preset Management

The **Cloud Presets** panel also lets you:

- **Rename** existing presets
- **Delete** presets you no longer need
- **Overwrite** a preset with the current load order
- **View preset metadata** — creation date, mod count, and associated profile

![Cloud presets panel](screenshots/installation/mm-cloud-presets.png)

## Crash Reporting and Logs

If Truck Mod Manager encounters an error, it shows a built-in crash reporting window with:

- A **log viewer** that displays recent application activity
- A **stack trace** showing where the error occurred
- **Contact information** for reporting the issue to the developer

You can also access logs manually by opening `log.txt` in the Truck Mod Manager installation folder. Always include this log when seeking help on the repository's Issues page.

## Re-launching After Setup

Once everything is configured, you can launch Truck Mod Manager at any time by:

1. Double-clicking `run.cmd` in the installation folder.
2. Optionally creating a shortcut to `run.cmd` on your desktop or Start Menu.

The launcher reuses the existing virtual environment, so subsequent launches are fast — the dependencies are already installed.

## Next Steps

With Truck Mod Manager installed and configured, you are ready to start building your modlist. The next chapter introduces the **Core Framework** — the essential mods and libraries that every profile needs as a foundation, starting with the ProMods map pack and its required connectors.
