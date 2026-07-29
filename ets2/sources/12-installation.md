# Installation

This guide walks through the complete setup process: from a fresh ETS2 installation to a fully modded profile with the correct load order. Follow these steps sequentially — skipping ahead or reordering steps will cause errors.

---

## Prerequisites

| Requirement | Minimum | Recommended |
|-------------|---------|-------------|
| Operating System | Windows 10 | Windows 11 |
| GPU VRAM | 8 GB | 12+ GB |
| RAM | 16 GB | 32 GB |
| Storage | 30 GB free | 50 GB free (SSD) |
| Display | 1920 × 1080 | 3840 × 2160 (4K) |
| Internet | Broadband | Broadband (for mod downloads) |

---

## Step 1: Install ETS2 + All DLCs (Steam)

1. Launch Steam and log in to your account.
2. Purchase and install **Euro Truck Simulator 2**.
3. Purchase and install all required map DLCs:

   | DLC | Required By | Priority |
   |-----|-------------|----------|
   | Going East! | ProMods (base requirement) | Essential |
   | Scandinavia | ProMods (base requirement) | Essential |
   | Vive la France! | ProMods (base requirement) | Essential |
   | Italia | ProMods (base requirement) | Essential |
   | Beyond the Baltic Sea | ProMods (base requirement) | Essential |
   | Iberia | ProMods (base requirement) | Essential |
   | Road to the Black Sea | ProMods (base requirement) | Essential |
   | Heart of Russia | ProMods (base requirement) | Essential |
   | West Balkans | ProMods (base requirement) | Essential |
   | Greece | ProMods (base requirement) | Essential |
   | Nordic Horizons | ProMods (base requirement) | Essential |

4. (Optional but recommended) Cargo DLCs for trailer/cargo variety:
   - Heavy Cargo Pack
   - Special Transport
   - Krone Trailer Pack
   - Feldbinder Trailer Pack
   - Volvo Construction Equipment

5. Launch ETS2 at least once to generate the configuration files and folder structure:
   - Navigate the main menu to confirm the game starts correctly.
   - Set your graphics options to your desired baseline.
   - Exit the game cleanly.

   This creates the `Documents\Euro Truck Simulator 2\` directory with all required subfolders (`mod\`, `profiles\`, `config.cfg`, etc.).

![ETS2 main menu after first launch](../screenshots/installation/ets2-main-menu.png)

---

## Step 2: Install Typst (Optional — PDF Build Only)

If you plan to build the PDF version of this guide from the Typst source, install the Typst typesetting system:

1. Visit [github.com/typst/typst/releases](https://github.com/typst/typst/releases).
2. Download the latest Windows release (`typst-x86_64-pc-windows-msvc.zip`).
3. Extract the archive to `C:\Programs\typst\` or a location in your PATH.
4. Add the extracted folder to your system PATH environment variable.
5. Verify the installation:

   ```powershell
   typst --version
   ```

6. To build the PDF, navigate to the repository root and run:

   ```powershell
   typst compile guide.typ
   ```

This step is optional — the markdown source files are fully readable on their own.

---

## Step 3: Install Truck Mod Manager

Truck Mod Manager is a Python-based desktop application for managing ETS2 mod profiles. See the [Mod Manager](02-mod-manager.md) section for a detailed walkthrough.

### Quick Install

1. **Install Python 3.10+**:
   - Download from [python.org/downloads](https://python.org/downloads).
   - Run the installer.
   - **Check the box "Add Python to PATH"** before clicking Install.
   - Verify: open a terminal and run `python --version`.

2. **Download Truck Mod Manager**:
   - Visit [github.com/cortexstudiosinfo/ETS2-MOD-MANAGER-UI](https://github.com/cortexstudiosinfo/ETS2-MOD-MANAGER-UI).
   - Click the green **Code** button, then **Download ZIP**.
   - Extract to a permanent location (e.g., `C:\Programs\TruckModManager`).

3. **Run the launcher**:
   - Double-click `run.cmd` in the extracted folder.
   - The first launch installs dependencies (Python packages: `customtkinter`, `pillow`, `requests`, `firebase-admin`).
   - The manager window opens once setup completes.

![Truck Mod Manager first launch](../screenshots/installation/mm-first-launch.png)

---

## Step 4: Clone or Download This Repository

If you have Git installed:

```powershell
git clone https://github.com/yourusername/ets2-modlist.git
cd ets2-modlist
```

Alternatively, download the repository as a ZIP archive from GitHub and extract it to your preferred location.

This repository contains:
- `sources/` — All guide sections in markdown format (including this file).
- `guide.typ` — The Typst source file for PDF generation.
- `screenshots/` — Reference screenshots for mod placement, settings, and verification.

![Repository file structure](../screenshots/installation/repo-structure.png)

---

## Step 5: Download Each Mod from Its Source URL

This is the most time-consuming step. Each mod in the guide has a source URL listed in its entry. Download every mod you intend to use before proceeding to Step 6.

### Download Checklist

| Section | Mod Count | Approximate Total Size |
|---------|-----------|----------------------|
| Maps (ProMods, RusMap, ROEX, connectors) | 10–15 files | 6–10 GB |
| Graphics (Project Next Gen, Nextgen Graphics, RGM) | 3–5 files | 4–8 GB |
| Weather (Grimes season + addons) | 2–6 files | 1–4 GB |
| Audio (Sound Fixes Pack + engine packs) | 5–10 files | 0.5–2 GB |
| Trucks (standalone trucks + accessories) | 8–15 files | 2–6 GB |
| Gameplay (economy, traffic, QoL) | 8–12 files | 0.5–3 GB |
| Trailers & Cargo (Jazzycat packs + others) | 6–10 files | 5–10 GB |

**Total: 45–80 files, approximately 20–40 GB of downloads.**

### Source Sites

All mods in this guide are sourced from third-party sites (not Steam Workshop). See the [Introduction](00-introduction.md#mod-sourcing-philosophy) for why.

| Site | Notes |
|------|-------|
| [promods.net](https://promods.net) | ProMods requires free registration. Download the main package, Middle East Addon, The Great Steppe, and High Quality Addon separately. |
| [ets2.lt/en](https://ets2.lt/en) | Main distribution site for RusMap, connectors, Jazzycat packs, and many others. |
| [ets2mods.lt](https://ets2mods.lt) | Audio mods, truck mods, dashboard replacements, interior accessories. |
| [modhub.us](https://modhub.us) | Graphics mods, gameplay mods, smaller utility mods. |
| [truckymods.io](https://truckymods.io) | Trailers, trucks, maps, gameplay mods. |
| [grimesmods.wordpress.com](https://grimesmods.wordpress.com) | Grimes seasonal weather mods. |
| [roextended.ro](https://roextended.ro) | Roextended map + launcher tool. |

### Downloading Tips

- **Create a staging folder** (e.g., `D:\ETS2-Mod-Staging\`) and download all mods there before moving them to the game folder.
- **Keep the archives** after extracting. ETS2 loads `.scs` and `.zip` files directly — you do not need to extract them.
- **Check file extensions**: Some mods download as `.zip` files, others as `.scs` files. Both work in the `mod\` folder.
- **Verify integrity**: If a mod fails to load, check its file size. A corrupted download (common on ad-supported sites) will show a partial file size. Re-download if necessary.
- **ProMods split archives**: The ProMods Europe download comes as multiple `.7z` parts. Extract the first part to get the individual `.scs` files. You will need 7-Zip or WinRAR.

![Mod staging folder with downloaded files](../screenshots/installation/mod-staging-folder.png)

---

## Step 6: Place Mod Files in the ETS2 Mod Folder

1. Navigate to your ETS2 mod folder:

   ```
   %USERPROFILE%\Documents\Euro Truck Simulator 2\mod\
   ```

   (This expands to `C:\Users\YourName\Documents\Euro Truck Simulator 2\mod\` on most systems.)

2. Copy all downloaded `.scs` and `.zip` files from the staging folder into this directory.
3. Do **not** rename mod files — many mods rely on their filenames for update detection and cloud preset matching.
4. Do **not** extract `.zip` or `.7z` archives into the mod folder. ETS2 loads compressed archives directly. Extracting them can cause duplicate file errors.
5. Keep the folder flat — one file per mod, no subdirectories.

![Mod folder with files in place](../screenshots/installation/mod-folder-contents.png)

### ProMods-Specific Placement

The ProMods download produces multiple files. Ensure all of the following are present in your `mod\` folder:

| File | Size (approx.) | Required |
|------|----------------|----------|
| `promods-def-v283.scs` | ~100 KB | Yes |
| `promods-map-v283.scs` | ~200 MB | Yes |
| `promods-media-v283.scs` | ~500 MB | Yes |
| `promods-model1-v283.scs` | ~2 GB | Yes |
| `promods-model2-v283.scs` | ~1.5 GB | Yes |
| `promods-model3-v283.scs` | ~800 MB | Yes |
| `promods-hq-v283.scs` | ~300 MB | Optional |
| `promods-me-v283.scs` | ~200 MB | Optional |
| `promods-tgs-v162.scs` | ~400 MB | Optional |

If any file is missing, re-download and re-extract the ProMods archive.

---

## Step 7: Configure config.cfg Tweaks

Before launching with mods, edit the game's configuration file. These settings prevent crashes and stuttering with a heavy mod load.

1. Navigate to:

   ```
   %USERPROFILE%\Documents\Euro Truck Simulator 2\
   ```

2. Open `config.cfg` in Notepad or any plain-text editor.

3. Find and set the following lines:

   ```ini
   # Enable developer console (for debugging and testing)
   g_developer "1"
   g_console "1"

   # Buffer and memory tweaks for mod-heavy profiles
   r_buffer_page_size "50"
   mm_max_resource_size "50"
   mm_max_tmp_buffers_size "1000"
   ```

   See the [Configuration](03-configuration.md) section for detailed explanations of each setting.

4. Save the file and close the editor.

5. Open the in-game **Options → Graphics** menu and verify:

   | Setting | Recommended Value |
   |---------|-------------------|
   | Resolution | 3840 × 2160 (or your native resolution) |
   | Scaling | 400% (or 200–300% for lower-end GPUs) |
   | Shadows | Ultra |
   | Reflections | High |
   | HDR | On |
   | Anti-aliasing | MLAA |
   | SSAO | On |
   | Depth of Field | Off |
   | Motion Blur | Off |
   | Colour Correction | On |

   ![Graphics settings menu with correct values](../screenshots/installation/graphics-settings.png)

---

## Step 8: Open Truck Mod Manager and Create a Profile

1. Launch Truck Mod Manager by double-clicking `run.cmd` in the installation folder.
2. Verify the **ETS2 Install Path** and **Documents Path** are correctly detected (Settings panel).
3. Create a new profile for the modded setup:
   - Click **Create Profile** or navigate to the profile management section.
   - Name the profile clearly, e.g., "Modded — ProMods Full".
   - Do **not** launch ETS2 to create this profile — the manager creates it directly.

![Creating a new profile in Truck Mod Manager](../screenshots/installation/mm-new-profile.png)

If you already have a profile in ETS2, the manager detects it automatically. You can use an existing profile if it was created as a modded profile (check the **Modded** box when creating it in-game).

---

## Step 9: Enable Mods in Correct Load Order

This is the critical step. The load order determines game stability.

1. In Truck Mod Manager, select the profile you just created.
2. The **Available Mods** panel lists every `.scs` and `.zip` file in your `mod\` folder.
3. Drag mods from the available panel into the active load order panel in the correct order.
4. Follow the full load order from [11-load-order.md](11-load-order.md):

   ```
   TOP (Highest Priority)
   ────────────────────────
   Traffic Packs
   Trailers & Cargo — AI Traffic
   Trailers & Cargo — Ownable
   Gameplay & Economy
   Trucks & Interiors
   Audio
   Weather & Environment
   Graphics
   Map Addons & Connectors
   Map Base (ProMods)
   ────────────────────────
   BOTTOM (Lowest Priority)
   ```

5. Use the **drag-and-drop** interface to reorder mods. The top of the list has highest priority.
6. Check the **checkbox** next to each mod to enable it.

![Mod load order in Truck Mod Manager](../screenshots/installation/mm-load-order-full.png)

### Verification

Before launching the game, confirm:

- All mods have a checkmark (enabled).
- ProMods definition file is above all other ProMods files.
- Map connectors are above the maps they connect.
- No duplicate mods are enabled (e.g., two economy mods, two versions of the same map).
- No mods are missing (filenames in the manager match your download checklist).

---

## Step 10: Launch Game and Verify Everything Works

1. With the correct profile selected in Truck Mod Manager, click **Launch ETS2** or launch the game manually from Steam.
2. The game will show a **Mods have changed** dialog — this is normal. Click **Continue**.
3. The game loads. On first launch with 40+ mods, expect:
   - **Loading time:** 3–5 minutes on an NVMe SSD, 8–15 minutes on a SATA SSD.
   - **First frame:** May take 30–60 seconds after the loading bar completes.
   - **Initial stutter:** The game compiles shader caches. Drive for 5–10 minutes before judging performance.

### Verification Checklist

| Check | How to Verify | Expected Result |
|-------|---------------|-----------------|
| Map loads correctly | Open the map (N key) and zoom to a ProMods city (Reykjavik, Faroe Islands, extended UK) | Cities are present, roads connect, no grey sectors |
| Graphics mods active | Drive through a rebuilt city at night | Improved lighting, texture quality, weather effects visible |
| Truck mods available | Visit a truck dealer | New truck brands and reworks appear in dealer listings |
| Engine sounds work | Purchase and drive a modded truck | Engine sound matches the mod's description |
| Traffic density feels right | Drive on a motorway near a city during daytime | Realistic traffic volume, no empty roads |
| AI trailers visible | Follow an AI truck | Real company liveries and varied trailer models on AI vehicles |
| No console errors | Open the developer console (~ key) | No red error messages flooding the log |
| No crash in 30 minutes | Drive across a ProMods border (e.g., UK → France via ferry) | Game does not crash when loading new sectors |

![Verifying correct map loading — ProMods Iceland visible on map](../screenshots/installation/verify-map-promods.png)

### If Something Goes Wrong

Refer to the troubleshooting section below. The most common issue is a misordered load order — double-check Step 9 before investigating individual mod conflicts.

---

## Post-Installation Checklist

Once everything is verified, do the following:

1. **Save a cloud preset** in Truck Mod Manager:
   - Click **Cloud Presets** → **Save Preset**.
   - Name it (e.g., "Full ProMods Combo — v1").
   - This lets you restore the exact load order after reinstalling the game.

2. **Save a manual backup** of your `mod\` folder contents:
   - Copy the contents of `%USERPROFILE%\Documents\Euro Truck Simulator 2\mod\` to a backup drive.
   - This saves re-downloading 20–40 GB of mods if the folder is ever wiped.

3. **Back up your profile**:
   - Locate your profile folder at `%USERPROFILE%\Documents\Euro Truck Simulator 2\profiles\`.
   - Copy the profile folder (named with a hash) to a safe location.
   - Restoring this folder + the cloud preset = a complete restore.

4. **Set game launch options** (optional but recommended):
   - Right-click ETS2 in Steam → **Properties** → **Launch Options**.
   - Add: `-unlimitedlog -mm_pool_size 16384 -mm_max_resource_size 50 -mm_max_tmp_buffers_size 1000`
   - These command-line parameters can override config.cfg values if the game resets them.

![Steam launch options for ETS2](../screenshots/installation/steam-launch-options.png)

---

## Updating Mods

Mods in this guide are pinned to specific versions for ETS2 1.60. When updating:

1. **Download the new version** from the same source URL.
2. **Replace the old file** in `%USERPROFILE%\Documents\Euro Truck Simulator 2\mod\` with the new one.
3. **Verify the filename** matches the new version (or rename if the author changed it).
4. **Reload the profile** in Truck Mod Manager — the new version appears automatically.
5. **Test on a backup save** before committing to an active profile.

### What NOT to Do

- **Do not update mods mid-delivery** — Finish all active jobs before changing any mod.
- **Do not mix Workshop and manual versions** — If a mod is in both your `mod\` folder and Workshop subscriptions, the game may load both, causing conflicts.
- **Do not force an update if the mod author has not released a 1.60 version** — Running an outdated mod on a new game version can corrupt saves.

---

## Troubleshooting

| Symptom | Likely Cause | Solution |
|---------|-------------|----------|
| Game crashes on startup | Missing mod dependency or corrupted mod file | Check `game.log.txt` in `Documents\Euro Truck Simulator 2\` for the first error line. Disable the offending mod. |
| Black/grey sectors on map | Incorrect load order or missing map DLC | Verify all required DLCs are installed and ProMods definition file is above map files. |
| Textures missing (purple/magenta) | `mm_max_resource_size` too low or corrupted texture file | Increase to 50 or 60 in `config.cfg`. Re-download the texture mod if the issue persists. |
| Truck not showing in dealer | Sound or accessory mod overwriting truck definition | Move the truck mod higher in the load order (above sound packs). |
| Crash when entering a specific city | Map conflict in overlapping region | Check if two map mods cover the same area (e.g., ProMods and a regional rebuild). Remove one. |
| Poor FPS even after config tweaks | VRAM exhausted or scaling too high | Drop scaling to 200%, reduce Grass Density to Low, disable SSAO. Monitor VRAM usage with MSI Afterburner. |
| Sound Fixes Pack not working | Loaded below individual engine sound packs | Move Sound Fixes Pack above all engine sound packs. |
| Game.log.txt shows "Failed to load resource" | `mm_max_resource_size` too low for a specific mod file | Find the file size in the error message and set `mm_max_resource_size` higher than that value. |

### Reading game.log.txt

The single most useful file for troubleshooting is `game.log.txt` in `Documents\Euro Truck Simulator 2\`. It records every mod load, every error, and every crash reason.

Open it in any text editor and search for:
- `Error:` — Fatal errors that prevent resources from loading.
- `Warning:` — Non-fatal issues that may cause visual glitches (texture mismatches, missing sounds).
- `Failed to load` — A specific file failed to load (usually a missing mod or wrong load order).
- `00:00:00.000` — The timestamp of the first error tells you what mod was loading when the crash happened.

![game.log.txt with error highlighted](../screenshots/installation/game-log-errors.png)

---

## Final Checksum

Before declaring the installation complete, confirm each of these:

- [ ] ETS2 launches without crashes.
- [ ] ProMods map shows full coverage (no grey sectors).
- [ ] At least one modded truck is available at a dealer.
- [ ] AI traffic includes custom vehicles and trailers.
- [ ] Weather/seasonal mods are visibly active.
- [ ] Engine sounds match the mods you installed.
- [ ] Config tweaks (`r_buffer_page_size`, `mm_max_resource_size`, `mm_max_tmp_buffers_size`) are applied and visible in the console.
- [ ] Truck Mod Manager has a saved cloud preset of the working load order.
- [ ] A backup of `mod\` and profile exists.

---

## Next Steps

With everything installed and verified:

- Explore the map — drive from Reykjavik to Moscow via the ProMods combo and experience the full geographic scope.
- Purchase your first modded truck from the appropriate dealer.
- Accept your first job and start building your company.
- Refer to the [Gameplay](09-gameplay.md) section for role-playing ideas to deepen the experience.
