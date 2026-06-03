# Elder Wilds Installation Guide

Target build: Skyrim Special Edition / Anniversary Edition runtime `1.6.1170` via Steam

This guide turns the planning files into an install order that can actually be followed in `Mod Organizer 2` (<https://github.com/ModOrganizer2/modorganizer/releases>).

This is not a "install every mod in `mods-checklist.md`" dump. Several sections are still active research areas, so this guide marks those branch points explicitly as `Choice Required` instead of pretending they are already locked.

## How To Use This Guide

- Follow the steps in order.
- Create the exact separators named in this guide.
- Install one mod at a time inside each separator unless a subsection is clearly a tight dependency cluster.
- When this guide says `Choice Required`, pick one path before continuing.
- Do not install every candidate from open sections just because it appears in `mods-checklist.md`.
- Keep generated files in dedicated output mods. Do not let them pile up in `Overwrite`.

## Step 1. Prepare Skyrim And Tool Folders

1. Install Steam and Skyrim SE/AE outside `Program Files`, ideally under a shallow path such as `C:\Games\Steam\steamapps\common\Skyrim Special Edition`.
2. Confirm the game is on runtime `1.6.1170`. The **Anniversary Upgrade** is required — this build uses all Creation Club content included with AE.
3. Ensure your Steam, drivers, and tool installations follow a clean baseline — install outside `Program Files`, verify file integrity, and set proper permissions.
4. Launch the vanilla launcher once so Skyrim creates its registry entries and INI files.
5. Create a separate modding path such as:
   - `C:\Modding`
   - `C:\Modding\Tools`
6. Install the core tooling into `C:\Modding\Tools`:
   - `Mod Organizer 2`
   - `BethINI Pie` (<https://www.nexusmods.com/site/mods/631>)
   - `LOOT` (<https://github.com/loot/loot/releases>)
   - `xEdit` (<https://github.com/TES5Edit/TES5Edit/releases>)
   - `xLODGen` (<https://dyndolod.info/Downloads>)
   - `DynDOLOD` (<https://www.nexusmods.com/skyrimspecialedition/mods/68518>) / `TexGen` (<https://dyndolod.info/Downloads>)
   - `Wrye Bash` (<https://github.com/wrye-bash/wrye-bash/releases>)
   - `Synthesis` (<https://github.com/Mutagen-Modding/Synthesis/releases>)
   - `BodySlide and Outfit Studio` (<https://www.nexusmods.com/skyrimspecialedition/mods/201>)
   - `Pandora Behaviour Engine Plus` (<https://www.nexusmods.com/skyrimspecialedition/mods/133232>)
   - `Cathedral Assets Optimizer` (<https://www.nexusmods.com/skyrimspecialedition/mods/23316>) only if a specific mod later needs it

Every named tool and mod in this guide includes a download URL at its first mention.

## Step 2. Set Up Mod Organizer 2

1. Launch `Mod Organizer 2`.
2. Create a `global instance`.
3. Select the Steam install of `Skyrim Special Edition`.
4. Name the instance something obvious like `Elder Wilds 1.6.1170`.
5. If prompted for profile settings, tick every box so the profile keeps its own INIs.
6. Connect MO2 to Nexus and allow it to handle `nxm` links.
7. In `Settings > Workarounds`, tick `Enable archives parsing (experimental)`.
8. Create a clean working profile before installing mods.

## Step 3. Create The Separator Layout

Create these separators in MO2 in this order.

1. `01 Foundations and Compatibility`
2. `02 Modern Graphics`
3. `03 Animations and Movement`
4. `04 Third-Person Gameplay`
5. `05 Expanded Systems`
6. `06 Modernized UI`
7. `07 Immersive Scale and World Feel`
8. `08 World Content`
9. `09 NPCs and Creatures`
10. `10 Audio and Feedback`
11. `11 Survival, Difficulty, and Balance`
12. `12 Targeted Bugfix Mods`
13. `13 Legacy of the Dragonborn`
14. `14 Modlist Curation Rules and Testing Plan`
15. `15 Performance and Technical Workflow`
16. `Patches`
17. `Output`

Use the subsection names from `separators.md` as visual sub-blocks inside these main separators when the section grows large enough to need them.

## Step 4. Create Output Mods

Create these empty mods in MO2 before registering tools:

- `xEdit Output`
- `SKSE Scripts`
- `SKSE Output`
- `BodySlide Output`
- `Pandora Output`
- `Grass Cache Output`
- `Terrain LOD Output`
- `TexGen Output`
- `DynDOLOD Output`
- `Occlusion Output`
- `Synthesis Output`
- `Bashed Patch Output`

Place them under the `Output` separator.

## Step 5. Register Tools In MO2

Open MO2's executable editor and register the following entries:

| Tool                   | Executable                          | Arguments                                                             | Output Handling               | Download URL                                                 |
|------------------------|-------------------------------------|-----------------------------------------------------------------------|-------------------------------|--------------------------------------------------------------|
| `BethINI Pie`          | `Bethini.exe`                       | none                                                                  | none                          | <https://www.nexusmods.com/site/mods/631>                    |
| `LOOT`                 | `LOOT.exe`                          | `--game="Skyrim Special Edition"`                                     | none                          | <https://github.com/loot/loot/releases>                      |
| `SKSE Skyrim Launcher` | `skse64_loader.exe`                 | none                                                                  | `SKSE Output`                 | <https://www.nexusmods.com/skyrimspecialedition/mods/30379>  |
| `xEdit`                | `xEdit.exe`                         | `-SSE -IKnowWhatImDoing -AllowMasterFilesEdit`                        | `xEdit Output`                | <https://github.com/TES5Edit/TES5Edit/releases>              |
| `xEditQuickAutoClean`  | `xEditQuickAutoClean.exe`           | `-SSE`                                                                | `xEdit Output`                | <https://github.com/TES5Edit/TES5Edit/releases>              |
| `xLODGen`              | `xLODGenx64.exe`                    | `-lodgen -SSE -o:"DriveLetter:\Modding\Tools\xLODGen\xLODGen_Output"` | `Terrain LOD Output`          | <https://dyndolod.info/Downloads>                            |
| `TexGen`               | `TexGen64.exe`                      | `-SSE`                                                                | `TexGen Output`               | <https://dyndolod.info/Downloads>                            |
| `DynDOLOD`             | `DynDOLODx64.exe`                   | `-SSE`                                                                | `DynDOLOD Output`             | <https://www.nexusmods.com/skyrimspecialedition/mods/68518>  |
| `Wrye Bash`            | `Wrye Bash.exe`                     | none                                                                  | `Bashed Patch Output` if used | <https://github.com/wrye-bash/wrye-bash/releases>            |
| `Synthesis`            | `Synthesis.exe`                     | none                                                                  | `Synthesis Output`            | <https://github.com/Mutagen-Modding/Synthesis/releases>      |
| `BodySlide`            | `BodySlide x64.exe`                 | none                                                                  | `BodySlide Output`            | <https://www.nexusmods.com/skyrimspecialedition/mods/201>    |
| `Pandora`              | `Pandora Behaviour Engine Plus.exe` | none                                                                  | `Pandora Output`              | <https://www.nexusmods.com/skyrimspecialedition/mods/133232> |

If `LOOT` fails through MO2, switch its arguments to `--single-process --game="Skyrim Special Edition"`.

## Step 6. Set The Working Rules Before Installing Mods

This build uses the per-mod `xEdit` method, not a giant late-stage megapatch.

For every new mod or tight mod cluster:

1. Install it and place it where you think it belongs.
2. Run `LOOT` if plugin order changed materially. `LOOT` is an iterative tool in this workflow, not a one-time end step.
3. If LOOT explicitly flags a plugin for cleaning, run `xEditQuickAutoClean` on that plugin only.
4. Run `xEdit` conflict review.
5. Try load-order adjustments before building a patch.
6. If a real conflict remains, build a small focused ESL-flagged patch and place it under the `Patches` separator.
7. Build small `ModGroups` for intentional conflicts instead of one giant catch-all group.
8. Re-open `xEdit` and confirm only intentional conflicts remain hidden.

Rules:

- `Overwrite` is a failure state.
- `Bashed Patch` owns leveled-list style merging and Bash-tag-driven imports only.
- `Synthesis` owns broad rule-based patching, not record-by-record judgment calls.
- Per-pair `xEdit` patches own the actual conflict resolution work.

## Step 7. Configure BethINI Pie

BethINI Pie must be run from Mod Organizer 2 as an executable so it targets the correct profile INIs.

1. In MO2, select `BethINI Pie` from the executable dropdown and run it.
2. Go to the **Basic** tab:
   - Click **Reset to Defaults**.
   - Select the **High** preset.
   - Click **Apply Recommended Tweaks**.
   - Set **Window Mode** to **Borderless Windowed**.
3. Go to the **Environment** tab:
   - Set **Grass Density** to `60`.
   - Untick **Reflect Sky**.
4. Go to the **View Distance** tab:
   - Leave **Tree LOD Distance** at the High preset default for now. (You will set it to `0` before DynDOLOD generation later.)
5. Go to the **Visuals** tab:
   - Set **Max Particle Render Count (Direct)** to `2000`.
   - Set **Max Particle Render Count (GPU)** to `7500`.
   - Untick **Lens Flare** (Community Shaders handles its own post-processing).
6. Click **Save and Exit**.
7. Open `MO2 → Tools → INI Editor` and confirm the values took effect in `Skyrim.ini` and `SkyrimPrefs.ini`.

## Step 8. LOOT Sort & Clean Vanilla Masters

### Run LOOT

1. In MO2, select `LOOT` from the executable dropdown and run it.
2. Click **Sort Plugins**.
3. Click **Apply**.
4. Close LOOT.

### Create The Cleaned Vanilla Masters Mod

1. In MO2, create a new empty mod named `Cleaned Vanilla Masters`.
2. Place it under the `Output` separator.
3. Leave it disabled for now.

### Clean The Vanilla Masters

`xEditQuickAutoClean` removes identical-to-master (ITM) records and undeletes deleted references from vanilla plugin files. Clean each of the following masters one at a time:

- `Skyrim.esm`
- `Update.esm`
- `Dawnguard.esm`
- `HearthFires.esm`
- `Dragonborn.esm`
- The Creation Club `.esm` files that ship with the Anniversary Edition (approximately 5 files)

For each file:

1. Select `xEditQuickAutoClean` from the MO2 executable dropdown.
2. In the plugin selection window, check ONLY the master you are cleaning.
3. Click **OK** and wait for the process to finish.
4. Close xEdit when prompted.

### Move Cleaned Masters Into The Mod

1. Open your `Skyrim Special Edition\Data` folder.
2. Locate each cleaned master (check the file modification date — they were just written).
3. Move them into `Mod Organizer 2\mods\Cleaned Vanilla Masters\`.
4. Keep only the cleaned `.esm` files. Delete any `.backup` or `.bak` files from the mod folder.

### Restore Originals

1. Open the `xEdit Backups` folder inside `Skyrim Special Edition\Data`.
2. Copy the original `.esm` files from the backups back into `Data\`.
3. The originals must be restored before proceeding — the mod provides the cleaned versions via MO2's virtual filesystem.

### Enable And Verify

1. In MO2, enable `Cleaned Vanilla Masters`.
2. Run `LOOT` again and confirm no plugins are flagged as needing cleaning.

## Step 9. Install The Core Runtime And Foundation Layer

Create or use separator `01 Foundations and Compatibility`.

### Install SKSE64 First

Before the rest of the foundation stack, install `SKSE64` the modern MO2 way.

1. Download the current `SKSE64` archive for Steam AE runtime `1.6.1170` from <https://www.nexusmods.com/skyrimspecialedition/mods/30379>.
2. Open the archive and copy these two files into the Skyrim root folder next to `SkyrimSE.exe`:
   - `skse64_loader.exe`
   - `skse64_1_6_1170.dll`
3. In MO2, create an empty mod named `SKSE Scripts` if you did not already create it in Step 4.
4. Open that mod's folder in Explorer.
5. Copy the archive's `Data\Scripts` folder into the `SKSE Scripts` mod so the final structure is `SKSE Scripts\Scripts\...`.
6. Enable `SKSE Scripts` in MO2.
7. In MO2's executable editor, add `skse64_loader.exe` as `SKSE Skyrim Launcher` if MO2 did not detect it automatically.
8. Keep all future `SKSE` configuration files inside the MO2-managed mod, for example `SKSE Scripts\SKSE\skse.ini`.
9. Create `SKSE Scripts\SKSE\skse.ini` with this minimal baseline:

```ini
[General]
ClearInvalidRegistrations=1

[Display]
iTintTextureResolution=2048
```

Notes:

- Do not install the `Data` portion of `SKSE64` directly into the game folder when you are using MO2.
- Do not use an older tutorial's file names or version numbers; the AE `1.6.1170` runtime needs the matching current AE build.
- In a modern setup, keep `skse.ini` minimal. `ClearInvalidRegistrations=1` is still a standard hygiene setting, and `iTintTextureResolution=2048` is the safe modern facegen/overlay baseline used by current guides. Do not cargo-cult older forum lists of extra `SKSE` memory or threading tweaks.
- Recent `r/skyrimmods` troubleshooting threads still mostly boil down to four mistakes: wrong SKSE version, root files placed in the wrong directory, missing `Scripts`, or launching outside MO2.

Install these baseline mods first:

- `SKSE64` (<https://www.nexusmods.com/skyrimspecialedition/mods/30379>)
- `Address Library for SKSE Plugins` (<https://www.nexusmods.com/skyrimspecialedition/mods/32444>)
- `Unofficial Skyrim Special Edition Patch - USSEP` (<https://www.nexusmods.com/skyrimspecialedition/mods/266>)
- `SSE Engine Fixes` (<https://www.nexusmods.com/skyrimspecialedition/mods/17230>)
- `SSE Display Tweaks` (<https://www.nexusmods.com/skyrimspecialedition/mods/34705>)
- `Scrambled Bugs` (<https://www.nexusmods.com/skyrimspecialedition/mods/43532>)
- `powerofthree's Tweaks` (<https://www.nexusmods.com/skyrimspecialedition/mods/51073>)
- `powerofthree's Papyrus Extender` (<https://www.nexusmods.com/skyrimspecialedition/mods/22854>)
- `PapyrusUtil` (<https://www.nexusmods.com/skyrimspecialedition/mods/13048>)
- `MCM Helper` (<https://www.nexusmods.com/skyrimspecialedition/mods/53000>)
- `JContainers` (<https://www.nexusmods.com/skyrimspecialedition/mods/16495>)
- `Keyword Item Distributor (KID)` (<https://www.nexusmods.com/skyrimspecialedition/mods/55728>)
- `Spell Perk Item Distributor (SPID)` (<https://www.nexusmods.com/skyrimspecialedition/mods/36869>)
- `Base Object Swapper (BOS)` (<https://www.nexusmods.com/skyrimspecialedition/mods/60805>)
- `Crash Logger SSE AE VR` (<https://www.nexusmods.com/skyrimspecialedition/mods/59818>)
- `RaceMenu SE` (<https://www.nexusmods.com/skyrimspecialedition/mods/29624>)
- `Dual Casting Fix` (<https://www.nexusmods.com/skyrimspecialedition/mods/92454>)
- `Andrealphus' Papyrus Functions` (<https://www.nexusmods.com/skyrimspecialedition/mods/85252>)
- `ConsoleUtilSSE NG` (<https://www.nexusmods.com/skyrimspecialedition/mods/76649>)
- `Kris's Papyrus Extender` (<https://www.nexusmods.com/skyrimspecialedition/mods/115164>)
- `SkyPatcher` (<https://www.nexusmods.com/skyrimspecialedition/mods/106659>)
- `Particle Patch` (<https://www.nexusmods.com/skyrimspecialedition/mods/65720>)
- `Assorted Mesh Fixes` (<https://www.nexusmods.com/skyrimspecialedition/mods/32117>)
- `Unofficial Material Fix` (<https://www.nexusmods.com/skyrimspecialedition/mods/21027>)
- `Flickering Meshes Fix` (<https://www.nexusmods.com/skyrimspecialedition/mods/53957>)

### Smoke Test — Foundation Layer

Stop here and do a clean boot test before moving on:

1. Launch Skyrim via `SKSE` from MO2.
2. Verify the game reaches the main menu without crashing.
3. Start a new game and confirm no immediate CTD on cell load.
4. Exit the game.

## Step 10. Install The UI Foundation Early

Create or use separator `06 Modernized UI`.

Install these locked or strongly preferred baseline picks early because later systems depend on them:

- `SkyUI` (<https://www.nexusmods.com/skyrimspecialedition/mods/12604>)
- `UIExtensions` (<https://www.nexusmods.com/skyrimspecialedition/mods/17561>)
- `Oathvein UI` (<https://www.nexusmods.com/skyrimspecialedition/mods/160916>)
- `SkyHUD` (<https://www.nexusmods.com/skyrimspecialedition/mods/463>)
- `TrueHUD` (<https://www.nexusmods.com/skyrimspecialedition/mods/62775>)
- `Casting Bar` (<https://www.nexusmods.com/skyrimspecialedition/mods/80455>)
- `Flat World Map Framework (FWMF)` (<https://www.nexusmods.com/skyrimspecialedition/mods/29932>)
- `Infinity UI` (<https://www.nexusmods.com/skyrimspecialedition/mods/74483>)
- `Local Map Upgrade` (<https://www.nexusmods.com/skyrimspecialedition/mods/129756>)
- `Skyrim and Solstheim Paper Maps by Mirhayasu for FWMF` (<https://www.nexusmods.com/skyrimspecialedition/mods/53788>)
- `Compass Navigation Overhaul` (<https://www.nexusmods.com/skyrimspecialedition/mods/74484>)
- `moreHUD SE` (<https://www.nexusmods.com/skyrimspecialedition/mods/12688>)
- `moreHUD Inventory Edition` (<https://www.nexusmods.com/skyrimspecialedition/mods/18619>)
- `Constructible Object Custom Keyword System` (<https://www.nexusmods.com/skyrimspecialedition/mods/81409>)
- `Sovngarde - Mist's Font Replacer` (<https://www.nexusmods.com/skyrimspecialedition/mods/386>)
- `Better Dialogue Controls` (<https://www.nexusmods.com/skyrimspecialedition/mods/1429>)
- `Better MessageBox Controls` (<https://www.nexusmods.com/skyrimspecialedition/mods/1428>)
- `Convenient Reading UI - SE` (<https://www.nexusmods.com/skyrimspecialedition/mods/50202>)
- `More Informative Console` (<https://www.nexusmods.com/skyrimspecialedition/mods/19250>)
- `Quest Journal Fix for SkyUI` (<https://www.nexusmods.com/skyrimspecialedition/mods/108618>)
- `SkyUI Ghost Item Bug Fix` (<https://www.nexusmods.com/skyrimspecialedition/mods/49106>)
- `Yes Im Sure NG` (<https://www.nexusmods.com/skyrimspecialedition/mods/76892>)

### Choice Required

- Inventory helper path:
    - locked baseline: `moreHUD SE` (<https://www.nexusmods.com/skyrimspecialedition/mods/12688>) and `moreHUD Inventory Edition` (<https://www.nexusmods.com/skyrimspecialedition/mods/18619>)
    - organizational alternative: `Aura's Inventory Tweaks` (<https://www.nexusmods.com/skyrimspecialedition/mods/68557>)
- Dialogue presentation path:
    - baseline control fix: `Better Dialogue Controls`
    - presentation alternatives: `Dialogue Interface ReShaped` (<https://www.nexusmods.com/skyrimspecialedition/mods/46546>) or `Convenient Dialogue UI - SE` (<https://www.nexusmods.com/skyrimspecialedition/mods/57943>)
- Controller extras:
    - baseline: `Skyrim SE Controller Interface Fix` (<https://www.nexusmods.com/skyrimspecialedition/mods/1147>)
    - optional expansion: `Gamepad Plus Plus` (<https://www.nexusmods.com/skyrimspecialedition/mods/27007>)
    - optional quick-access layer: `Wheeler - Quick Action Wheel Of Skyrim` (<https://www.nexusmods.com/skyrimspecialedition/mods/97345>)
- High-resolution support:
    - install `Complete Widescreen Fix for Vanilla and SkyUI` (<https://www.nexusmods.com/skyrimspecialedition/mods/1778>) if the display setup actually needs it

Install `UIExtensions` now even if it feels auxiliary, because later follower and utility mods depend on it.

### Smoke Test — UI Foundation

1. Launch via `SKSE` and load a save or start a new game.
2. Open the MCM and verify `SkyUI` registers all expected pages.
3. Confirm the `Oathvein UI` theme renders correctly.
4. Verify `TrueHUD`, compass (`Compass Navigation Overhaul`), and SkyHUD elements display.
5. Exit the game.

## Step 11. Install The Graphics Framework And Visual Baseline

Create or use separator `02 Modern Graphics`.

### Install Now

Under `02.01 Community Shaders Core Setup` and `02.02 Community Shaders Add-Ons And Required Features`:

- `Community Shaders` (<https://www.nexusmods.com/skyrimspecialedition/mods/86492>)
- `Screen Space Shadows - Community Shaders` (<https://www.nexusmods.com/skyrimspecialedition/mods/93209>)
- `Grass Lighting - Community Shaders` (<https://www.nexusmods.com/skyrimspecialedition/mods/86502>)
- `Water Effects - Community Shaders` (<https://www.nexusmods.com/skyrimspecialedition/mods/112762>)
- `Wetness Effects - Community Shaders` (<https://www.nexusmods.com/skyrimspecialedition/mods/112739>)
- `Terrain Shadows - Community Shaders` (<https://www.nexusmods.com/skyrimspecialedition/mods/135817>)
- `Subsurface Scattering - Community Shaders` (<https://www.nexusmods.com/skyrimspecialedition/mods/114114>)
- `Skylighting - Community Shaders` (<https://www.nexusmods.com/skyrimspecialedition/mods/139352>)
- `Screen Space Global Illumination (SSGI)` (<https://www.nexusmods.com/skyrimspecialedition/mods/130375>)

Under `02.04 Texture Overhauls By Material Type` and `02.05 Mesh Improvements And Parallax Support` install the strongest non-controversial baseline pieces:

- `Skyland AIO` (<https://www.nexusmods.com/skyrimspecialedition/mods/34179>)
- `RUSTIC CLUTTER COLLECTION - Special Edition` (<https://www.nexusmods.com/skyrimspecialedition/mods/5795>)
- `RUSTIC CLOTHING - Special Edition` (<https://www.nexusmods.com/skyrimspecialedition/mods/4703>)
- `Dwemer Armors and Weapons Retexture SE` (<https://www.nexusmods.com/skyrimspecialedition/mods/93088>)
- `Static Mesh Improvement Mod - SMIM` (<https://www.nexusmods.com/skyrimspecialedition/mods/659>)
- `Enhanced Rocks and Mountains - Complex Material and PBR` (<https://www.nexusmods.com/skyrimspecialedition/mods/121336>)
- `Enhanced Rocks and Mountains - Fix and Addon` (<https://www.nexusmods.com/skyrimspecialedition/mods/142493>)
- `Nordic Snow` (<https://www.nexusmods.com/skyrimspecialedition/mods/670>)
- `Simplicity of Snow` (<https://www.nexusmods.com/skyrimspecialedition/mods/56235>)
- `FYX - Water Mesh Optimization` (<https://www.nexusmods.com/skyrimspecialedition/mods/97713>)
- `Natural Waterfalls` (<https://www.nexusmods.com/skyrimspecialedition/mods/87261>)
- `Rally's Water Foam` (<https://www.nexusmods.com/skyrimspecialedition/mods/28922>)

Under `02.13 Character, Skin, And Creature Visuals` install the current strongest baseline:

- `CBBE NSFW - Caliente's Beautiful Bodies Enhancer` (<https://www.nexusmods.com/skyrimspecialedition/mods/74257>)
- `CBBE 3BA (3BBB)` (<https://www.nexusmods.com/skyrimspecialedition/mods/30174>)
- `Highly Improved Male Body Overhaul - HIMBO` (<https://www.nexusmods.com/skyrimspecialedition/mods/74174>)
- `BnP - Female Skin` (<https://www.nexusmods.com/skyrimspecialedition/mods/65274>)
- `BnP - Male Skin` (<https://www.nexusmods.com/skyrimspecialedition/mods/65402>)
- `Expressive Facial Animation -Female Edition-` (<https://www.nexusmods.com/skyrimspecialedition/mods/19181>)
- `Expressive Facial Animation -Male Edition-` (<https://www.nexusmods.com/skyrimspecialedition/mods/19532>)
- `FitnessGoal CBBE 3BA 3BBB Bodyslide Preset for Modest Players` (<https://www.nexusmods.com/skyrimspecialedition/mods/69681>)
- `BodySlide and Outfit Studio`
- `KS Hairdos SSE` (<https://www.nexusmods.com/skyrimspecialedition/mods/6817>)
- `Eyes Nouveaux` (<https://www.nexusmods.com/skyrimspecialedition/mods/131210>)
- `AURORA S.E.` (<https://www.nexusmods.com/skyrimspecialedition/mods/6021>)
- `Bellyaches Animal and Creature Pack SSE` (<https://www.nexusmods.com/skyrimspecialedition/mods/6839>)
- `CC's HD Dwemer Automatons - Remastered` (<https://www.nexusmods.com/skyrimspecialedition/mods/32267>)
- `Skeleton Replacer HD - SE` (<https://www.nexusmods.com/skyrimspecialedition/mods/52845>)

Under `02.12 LOD Generation And Distant Detail`, install the LOD resources now so later generation has its dependencies ready:

- `DynDOLOD Resources SE 3` (<https://www.nexusmods.com/skyrimspecialedition/mods/52897>)
- `DynDOLOD DLL NG` (<https://www.nexusmods.com/skyrimspecialedition/mods/97720>)
- `HD LODs Textures SE` (<https://www.nexusmods.com/skyrimspecialedition/mods/3333>)
- `xLODGen Resource - SSE Terrain Tamriel` (<https://www.nexusmods.com/skyrimspecialedition/mods/54680>)

### Choice Required

- Lighting branch:
    - `Lux` (<https://www.nexusmods.com/skyrimspecialedition/mods/43158>) + `Lux Orbis` (<https://www.nexusmods.com/skyrimspecialedition/mods/56095>) + `Lux Via` (<https://www.nexusmods.com/skyrimspecialedition/mods/63588>) + `Lux CS` (<https://www.nexusmods.com/skyrimspecialedition/mods/153919>)
    - or `Relighting Skyrim SE` (<https://www.nexusmods.com/skyrimspecialedition/mods/8586>) + `Luminosity Lighting Overhaul - The Cathedral Concept` (<https://www.nexusmods.com/skyrimspecialedition/mods/16830>)
    - or `Enhanced Lights and FX` (<https://www.nexusmods.com/skyrimspecialedition/mods/2424>) + `ELFX Shadows` (<https://www.nexusmods.com/skyrimspecialedition/mods/63790>)
    - or lighter `Community Shaders`-first path with `CS Light` (<https://www.nexusmods.com/skyrimspecialedition/mods/138443>)
- Weather branch:
    - `NAT.CS III` (<https://www.nexusmods.com/skyrimspecialedition/mods/139567>)
    - or `Azurite Weathers III - Enhanced` (<https://www.nexusmods.com/skyrimspecialedition/mods/150269>) + `Azurite III CS` (<https://www.nexusmods.com/skyrimspecialedition/mods/162153>)
    - or `RAID Weathers` (<https://www.nexusmods.com/skyrimspecialedition/mods/63116>) + `Raid Weathers CS` (<https://www.nexusmods.com/skyrimspecialedition/mods/171041>)
- Water branch:
    - preferred current comparison: `A Water Made For CS in mind` (<https://www.nexusmods.com/skyrimspecialedition/mods/172959>)
    - alternative branch: `Simplicity of Sea - Water Color and Transparency Tweaks` (<https://www.nexusmods.com/skyrimspecialedition/mods/148761>) + `Simplicity of Sea - Water Mod with ENB and Community Shaders Displacement Textures` (<https://www.nexusmods.com/skyrimspecialedition/mods/56520>)
- Roads branch:
    - safer baseline: `Blended Roads - Light Plugin (ESL)` (<https://www.nexusmods.com/skyrimspecialedition/mods/171554>)
    - unresolved heavier branch: `Northern Roads` (<https://www.nexusmods.com/skyrimspecialedition/mods/77530>) if chosen later with dedicated patch planning
- Tree branch:
    - `Happy Little Trees` (<https://www.nexusmods.com/skyrimspecialedition/mods/50961>)
    - or `Traverse the Ulvenwald - 3.3 - Trees and Forests of Skyrim` (<https://www.nexusmods.com/skyrimspecialedition/mods/57874>)
    - do not install both as if they were complementary full tree replacements
- Grass branch:
    - quality-heavy route: `Skoglendi - A Grass Mod` (<https://www.nexusmods.com/skyrimspecialedition/mods/93944>) + `Flora Orientalis` (<https://www.nexusmods.com/skyrimspecialedition/mods/64041>) + `Folkvangr - Grass and Landscape Overhaul` (<https://www.nexusmods.com/skyrimspecialedition/mods/44899>) + `Waterplants` (<https://www.nexusmods.com/skyrimspecialedition/mods/6092>) + `Vinland Grass Patch`
    - lighter alternatives remain open research
- PBR / parallax coverage level:
    - choose how deep to go with `PBR Hub` (<https://www.nexusmods.com/skyrimspecialedition/mods/139889>), `Complex Parallax Materials` (<https://www.nexusmods.com/skyrimspecialedition/mods/95134>), `PGPatcher` (<https://www.nexusmods.com/skyrimspecialedition/mods/120946>), `Auto Parallax` (<https://www.nexusmods.com/skyrimspecialedition/mods/79473>), and the PBR texture packs before installing them all
- Optional performance helper:
    - `Skyrim Upscaler - DLSS FSR2 XeSS` (<https://www.nexusmods.com/skyrimspecialedition/mods/80343>) only if hardware and display goals justify it
- Optional mesh expansion:
    - `High Poly Project` (<https://www.nexusmods.com/skyrimspecialedition/mods/12029>) remains a deliberate branch, not a default lock

Do not finalize LOD generation yet. Only install the resources and frameworks here.

## Step 12. Build Bodies Before Armor Proliferates

Run `BodySlide` after the body stack is installed and before broad armor expansion.

1. Build the chosen `CBBE 3BA` preset.
2. Send the output to `BodySlide Output`.
3. Enable `BodySlide Output`.
4. Rebuild later any time the body, skin, or outfit stack changes.

## Step 13. Install Animations And Movement

Create or use separator `03 Animations and Movement`.

### Install Now

- `Pandora Behaviour Engine Plus`
- `XP32 Maximum Skeleton Special Extended - XPMSSE` (<https://www.nexusmods.com/skyrimspecialedition/mods/44252>)
- `CBPC - Physics with Collisions for SSE and VR` (<https://www.nexusmods.com/skyrimspecialedition/mods/21224>)
- `Open Animation Replacer` (<https://www.nexusmods.com/skyrimspecialedition/mods/92109>)
- `SkyParkour v3 - Procedural Parkour and Climbing Framework (SPPF)` (<https://www.nexusmods.com/skyrimspecialedition/mods/132292>)
- `Beam Walking Assist` (<https://www.nexusmods.com/skyrimspecialedition/mods/175511>)
- `Comprehensive First Person Animation Overhaul - CFPAO` (<https://www.nexusmods.com/skyrimspecialedition/mods/87169>)
- `Conditional Armor Type Animations` (<https://www.nexusmods.com/skyrimspecialedition/mods/51507>)
- `EVG Conditional Idles` (<https://www.nexusmods.com/skyrimspecialedition/mods/34006>)
- `EVG Animated Traversal` (<https://www.nexusmods.com/skyrimspecialedition/mods/63232>)
- `Immersive Interactions - Animated Actions` (<https://www.nexusmods.com/skyrimspecialedition/mods/47670>)
- `Precision - Accurate Melee Collisions` (<https://www.nexusmods.com/skyrimspecialedition/mods/72347>)
- `SCAR - Skyrim Combos AI Revolution` (<https://www.nexusmods.com/skyrimspecialedition/mods/72014>)
- `IFrame Generator RE (AE Support)` (<https://www.nexusmods.com/skyrimspecialedition/mods/82737>)

### Choice Required

- Locomotion set:
    - preferred current male route: `Leviathan Animations II - Male Idle Walk And Run` (<https://www.nexusmods.com/skyrimspecialedition/mods/81463>)
    - preferred current female route: `Leviathan Animations II - Female Idle Walk And Run` (<https://www.nexusmods.com/skyrimspecialedition/mods/80760>)
    - alternative route: `Vanargand Animations II - Male Idle Walk And Run` (<https://www.nexusmods.com/skyrimspecialedition/mods/99999>)
- Female idle flavor:
    - `Goetia Animations - Female Idle Walk And Run` (<https://www.nexusmods.com/skyrimspecialedition/mods/68625>)
    - `Goetia Animations - Conditional Shuffled Idle for Pretty Female idles` (<https://www.nexusmods.com/skyrimspecialedition/mods/68005>)
- Optional traversal / flavor add-ons:
    - `RaySense - Jumping over obstacles` (<https://www.nexusmods.com/skyrimspecialedition/mods/175506>) + `Open Animation Replacer - RaySense` (<https://www.nexusmods.com/skyrimspecialedition/mods/175498>)
    - `Go to bed` (<https://www.nexusmods.com/skyrimspecialedition/mods/4224>)
- Creature animation add-ons:
    - `New Creature Animation - Giant` (<https://www.nexusmods.com/skyrimspecialedition/mods/83317>)
    - `New Creature Animation - Falmer` (<https://www.nexusmods.com/skyrimspecialedition/mods/83572>)
    - `New Creature Animation - Werewolf` (<https://www.nexusmods.com/skyrimspecialedition/mods/83806>)
- Off-baseline combat branch:
    - `MCO ADXP - Modern Movement Combat Overhaul` (<https://www.nexusmods.com/skyrimspecialedition/mods/117115>)
    - `Animation Motion Revolution` (<https://www.nexusmods.com/skyrimspecialedition/mods/50258>)
    - `Payload Interpreter` (<https://www.nexusmods.com/skyrimspecialedition/mods/65089>)
    - do not install this branch casually; it changes the combat framework direction

After any real animation stack change, run `Pandora` and send the output to `Pandora Output`.

## Step 14. Install Third-Person Gameplay And Camera

Create or use separator `04 Third-Person Gameplay`.

### Install Now

- `SmoothCam` (<https://www.nexusmods.com/skyrimspecialedition/mods/41252>)
- `True Directional Movement - Modernized Third Person Gameplay` (<https://www.nexusmods.com/skyrimspecialedition/mods/51614>)
- `Better Third Person Selection - BTPS` (<https://www.nexusmods.com/skyrimspecialedition/mods/64339>)
- `Improved Camera SE` (<https://www.nexusmods.com/skyrimspecialedition/mods/93962>)

### Choice Required

- Camera support:
    - baseline path: `SmoothCam`
    - optional companion: `Customizable Camera` (<https://www.nexusmods.com/skyrimspecialedition/mods/12201>)
- Dodge path:
    - preferred current route: `TK Dodge RE - Script Free` (<https://www.nexusmods.com/skyrimspecialedition/mods/56956>) plus `TK Dodge SE` (<https://www.nexusmods.com/skyrimspecialedition/mods/15309>) meshes
    - alternative: no dedicated dodge mod yet
- Horse path:
    - `Convenient Horses` (<https://www.nexusmods.com/skyrimspecialedition/mods/9519>)
    - or `Immersive Horses` (<https://www.nexusmods.com/skyrimspecialedition/mods/13402>)
- Ranged physics / newer experiments:
    - `Ricochet - Arrow Physics Framework` (<https://www.nexusmods.com/skyrimspecialedition/mods/160603>)
    - `Dodge for all` (<https://www.nexusmods.com/skyrimspecialedition/mods/174544>)
    - treat both as deliberate extras, not assumed baseline locks

### Smoke Test — Third-Person Gameplay

1. Launch via `SKSE` and load a save.
2. Toggle to third-person view.
3. Test camera movement with `SmoothCam` — camera should track smoothly, not stutter.
4. Test `True Directional Movement` — character faces mouse/controller direction.
5. Test `Better Third-Person Selection` — targeting interactable objects works.
6. Test `Improved Camera SE` (if installed) — first-person transitions are seamless.
7. Exit the game.

## Step 15. Install Expanded Systems And Item Ecosystem

Create or use separator `05 Expanded Systems`.

### Install Now

- `Aetherius - A Race Overhaul` (<https://www.nexusmods.com/skyrimspecialedition/mods/26686>)
- `Evenstar - Minimalistic Standing Stones of Skyrim` (<https://www.nexusmods.com/skyrimspecialedition/mods/41256>)
- `Adamant - A Perk Overhaul` (<https://www.nexusmods.com/skyrimspecialedition/mods/30191>)
- `Mysticism - A Magic Overhaul` (<https://www.nexusmods.com/skyrimspecialedition/mods/27839>)
- `Apothecary - An Alchemy Overhaul` (<https://www.nexusmods.com/skyrimspecialedition/mods/52130>)
- `Starfrost - A Survival Overhaul` (<https://www.nexusmods.com/skyrimspecialedition/mods/97536>)
- `Biggie Traits` (<https://www.nexusmods.com/skyrimspecialedition/mods/136384>)
- `Bathing in Skyrim - Renewed` (<https://www.nexusmods.com/skyrimspecialedition/mods/135288>)
- `Gourmet - A Cooking Overhaul` (<https://www.nexusmods.com/skyrimspecialedition/mods/96876>)
- `Ars Metallica - Smithing Enhancement` (<https://www.nexusmods.com/skyrimspecialedition/mods/321>)
- `Trade and Barter - Skyrim Special Edition` (<https://www.nexusmods.com/skyrimspecialedition/mods/23081>)
- `Pilgrim - A Religion Overhaul` (<https://www.nexusmods.com/skyrimspecialedition/mods/54099>)
- `Skyrim Reputation` (<https://www.nexusmods.com/skyrimspecialedition/mods/22374>)
- `Nether's Follower Framework` (<https://www.nexusmods.com/skyrimspecialedition/mods/55653>)
- `Realistic AI Detection (RAID)` (<https://www.nexusmods.com/skyrimspecialedition/mods/2345>)
- `Relationship Dialogue Overhaul - RDO SE` (<https://www.nexusmods.com/skyrimspecialedition/mods/1187>)
- `Amorous Adventures` (<https://www.nexusmods.com/skyrimspecialedition/mods/7305>) (clean variant)
- `Marriage Mod - To Have And To Hold` (<https://www.nexusmods.com/skyrimspecialedition/mods/8589>)
- `Serana Dialogue Add-On` (<https://www.nexusmods.com/skyrimspecialedition/mods/32161>)

For the item / artifact / wardrobe side, install the current preferred baseline:

- `Reliquary of Myth - Artifacts of Skyrim` (<https://www.nexusmods.com/skyrimspecialedition/mods/31612>)
- `ArteFakes - Unique Artifacts Replacer` (<https://www.nexusmods.com/skyrimspecialedition/mods/41254>)
- `Konahrik's Accoutrements` (<https://www.nexusmods.com/skyrimspecialedition/mods/22206>)
- `Unique Items Tweaks - Improved Miscellaneous Artifacts` (<https://www.nexusmods.com/skyrimspecialedition/mods/33723>)
- `Armor and Clothing Extension` (<https://www.nexusmods.com/skyrimspecialedition/mods/19002>)
- `Common Clothes and Armors` (<https://www.nexusmods.com/skyrimspecialedition/mods/21305>)
- `Cloaks of Skyrim` (<https://www.nexusmods.com/skyrimspecialedition/mods/6369>)
- `Knapsack Backpacks SE` (<https://www.nexusmods.com/skyrimspecialedition/mods/3440>)
- `NordwarUA Total Armor and Weapon Compilation` (<https://www.nexusmods.com/skyrimspecialedition/mods/61423>)
- `Immersive Weapons` (<https://www.nexusmods.com/skyrimspecialedition/mods/16788>)
- `Immersive Armors` (<https://www.nexusmods.com/skyrimspecialedition/mods/3479>)

### Choice Required

- Alternate start path:
    - `Alternate Perspective - Alternate Start` (<https://www.nexusmods.com/skyrimspecialedition/mods/50307>)
    - `Alternate Start - Live Another Life` (<https://www.nexusmods.com/skyrimspecialedition/mods/272>)
    - `Skyrim Unbound Reborn (Alternate Start)` (<https://www.nexusmods.com/skyrimspecialedition/mods/27962>)
    - `Realm of Lorkhan - Freeform Alternate Start` (<https://www.nexusmods.com/skyrimspecialedition/mods/18223>)
- Roleplay extras:
    - `Dealing with Backstories` (<https://www.nexusmods.com/skyrimspecialedition/mods/61106>)
    - `Take Notes - Journal of the Dragonborn SSE` (<https://www.nexusmods.com/skyrimspecialedition/mods/13570>)
- Race / standing stone alternatives:
    - `Aetherius` vs `Morningstar` vs `Imperious`
    - `Evenstar` vs `Andromeda`
- Perk / magic alternatives:
    - `Adamant` vs `Vokrii` vs `Ordinator`
    - `Mysticism` vs `Odin` vs `Apocalypse`
- Alchemy / crafting alternatives:
    - `Apothecary` vs `Complete Alchemy and Cooking Overhaul` (<https://www.nexusmods.com/skyrimspecialedition/mods/19924>)
    - `Ars Metallica` vs `Complete Crafting Overhaul Remastered` (<https://www.nexusmods.com/skyrimspecialedition/mods/28608>)
    - `Honed Metal` (<https://www.nexusmods.com/skyrimspecialedition/mods/61015>) as optional service layer
- Economy path:
    - current lean: `Trade and Barter`
    - alternative progression route: `Open World Loot` (<https://www.nexusmods.com/skyrimspecialedition/mods/49681>) or `MorrowLoot Ultimate` (<https://www.nexusmods.com/skyrimspecialedition/mods/3058>)
- Religion path:
    - `Pilgrim` vs `Trua` (<https://www.nexusmods.com/skyrimspecialedition/mods/32549>) vs `Wintersun` (<https://www.nexusmods.com/skyrimspecialedition/mods/22506>)
- Follower framework path:
    - current preference: `Nether's Follower Framework`
    - alternatives: `EFF - Extensible Follower Framework` (<https://www.nexusmods.com/skyrimspecialedition/mods/7003>) or `Amazing Follower Tweaks SE` (<https://www.nexusmods.com/skyrimspecialedition/mods/6656>)

## Step 16. Install Survival, Combat Balance, And Targeted Bugfixes

Create or use separators `11 Survival, Difficulty, and Balance` and `12 Targeted Bugfix Mods`.

### Install Now

Under `11 Survival, Difficulty, and Balance`:

- `Arena - An Encounter Zone Overhaul` (<https://www.nexusmods.com/skyrimspecialedition/mods/33487>)
- `Simply Balanced` (<https://www.nexusmods.com/skyrimspecialedition/mods/15541>)
- `Stress and Fear - A Dynamic Sanity System` (<https://www.nexusmods.com/skyrimspecialedition/mods/116522>)
- `Know Your Enemy 2` (<https://www.nexusmods.com/skyrimspecialedition/mods/93258>)

Under `12 Targeted Bugfix Mods`, install the strongest current baseline bugfixes:

- `Actor Limit Fix` (<https://www.nexusmods.com/skyrimspecialedition/mods/32349>)
- `Equip Enchantment Fix` (<https://www.nexusmods.com/skyrimspecialedition/mods/42839>)
- `NPC AI Process Position Fix - NG` (<https://www.nexusmods.com/skyrimspecialedition/mods/69326>)
- `Simple Offence Suppression` (<https://www.nexusmods.com/skyrimspecialedition/mods/41764>)
- `Fuz Ro D-oh - Silent Voice` (<https://www.nexusmods.com/skyrimspecialedition/mods/15109>)
- `Bug Fixes SSE` (<https://www.nexusmods.com/skyrimspecialedition/mods/33261>)
- `Navigator - Navmesh Fixes` (<https://www.nexusmods.com/skyrimspecialedition/mods/52641>)

### Choice Required

- Combat balance branch:
    - current restrained route: `Simply Balanced`
    - alternative overhaul route: `Blade and Blunt - A Combat Overhaul` (<https://www.nexusmods.com/skyrimspecialedition/mods/34549>)
- Enemy overhaul branch:
    - current restrained default: no full enemy-overhaul lock yet
    - heavier option: `Skyrim Revamped - Complete Enemy Overhaul` (<https://www.nexusmods.com/skyrimspecialedition/mods/14598>)
- Enemy resistance branch:
    - preferred tactical route: `Know Your Enemy 2` (<https://www.nexusmods.com/skyrimspecialedition/mods/93258>)
    - lighter route: leave enemy resistances close to vanilla and get difficulty from pacing, roster, and progression structure
- Death / defeat branch:
    - `Shadow of Skyrim - Nemesis and Alternative Death System` (<https://www.nexusmods.com/skyrimspecialedition/mods/65136>)
    - or skip defeat mechanics for the first stable pass
- Additional bugfixes to evaluate case by case:
    - `Barter Limit Fix` (<https://www.nexusmods.com/skyrimspecialedition/mods/77173>)
    - `Better Jumping SE` (<https://www.nexusmods.com/skyrimspecialedition/mods/18967>)
    - `I'm Walkin' Here NG with Pets` (<https://www.nexusmods.com/skyrimspecialedition/mods/122516>)
    - `LeveledList Crash Fix` (<https://www.nexusmods.com/skyrimspecialedition/mods/129136>)
    - `Mum's the Word NG` (<https://www.nexusmods.com/skyrimspecialedition/mods/77409>)
    - `Regional Save Names` (<https://www.nexusmods.com/skyrimspecialedition/mods/49698>)
    - `Bard Instrumentals Mostly - Sing Rarely` (<https://www.nexusmods.com/skyrimspecialedition/mods/10927>)

## Step 17. Install World Feel, Cities, Content, NPCs, And Audio

This is the least locked part of the current plan. Use separators `07`, `08`, `09`, and `10`, but do not treat every listed candidate as cumulative.

### 17.1 Separator `07 Immersive Scale and World Feel`

Current strongest first-pass picks:

- `Time Flies SE` (<https://www.nexusmods.com/skyrimspecialedition/mods/39426>)
- `Carriage and Ferry Travel Overhaul (Formerly Complete Fast Travel Overhaul)` (<https://www.nexusmods.com/skyrimspecialedition/mods/8379>)
- `Extended Encounters` (<https://www.nexusmods.com/skyrimspecialedition/mods/44810>)
- `Sounds of Skyrim Complete SE` (<https://www.nexusmods.com/skyrimspecialedition/mods/8286>)
- `Ancient Land` (<https://www.nexusmods.com/skyrimspecialedition/mods/22900>)
- `Animallica SE - Skyrim Wildlife Overhaul` (<https://www.nexusmods.com/skyrimspecialedition/mods/20456>)
- `Simply Darker Nights (SSE)` (<https://www.nexusmods.com/skyrimspecialedition/mods/14269>)

### Choice Required

- Time system:
    - `Time Flies SE`
    - or `Dynamic Timescale - Remade` (<https://www.nexusmods.com/skyrimspecialedition/mods/141531>)
- City atmosphere layer:
    - `Spaghetti's Cities - AIO` (<https://www.nexusmods.com/skyrimspecialedition/mods/84735>)
    - or `Dawn of Skyrim (Director's Cut) SE` (<https://www.nexusmods.com/skyrimspecialedition/mods/9074>)
    - or `JK's Skyrim` (<https://www.nexusmods.com/skyrimspecialedition/mods/6289>)
    - do not install all three as if they were a single stack
- Encounter path:
    - `Extended Encounters`
    - or `Radiance Encounters` (<https://www.nexusmods.com/skyrimspecialedition/mods/19720>)
    - `Immersive Patrols SE AE` (<https://www.nexusmods.com/skyrimspecialedition/mods/718>) can accompany one encounter mod, not replace that choice
- Wildlife pressure path:
    - `Animallica`
    - `One With Nature` (<https://www.nexusmods.com/skyrimspecialedition/mods/13343>)
    - `Savage Skyrim` (<https://www.nexusmods.com/skyrimspecialedition/mods/37768>)
    - choose deliberately and patch overlaps

### 17.2 Separator `08 World Content`

Current strongest first-pass candidates:

- `The Great Cities - Minor Cities and Towns SSE Edition` (<https://www.nexusmods.com/skyrimspecialedition/mods/20272>)
- full `Cities of the North` series
- `Settlements Expanded` (<https://www.nexusmods.com/skyrimspecialedition/mods/7777>)
- `JK's Whiterun Outskirts` (<https://www.nexusmods.com/skyrimspecialedition/mods/78351>)
- `The Great City of Solitude SSE` (<https://www.nexusmods.com/skyrimspecialedition/mods/22243>)
- `The Great Village of Old Hroldan SSE` (<https://www.nexusmods.com/skyrimspecialedition/mods/33189>)
- `Forgotten Dungeons (SSE)` (<https://www.nexusmods.com/skyrimspecialedition/mods/449>)
- `Hidden Hideouts of Skyrim SE` (<https://www.nexusmods.com/skyrimspecialedition/mods/2625>)
- `Sidequests of Skyrim` (<https://www.nexusmods.com/skyrimspecialedition/mods/54245>)
- `Missives` (<https://www.nexusmods.com/skyrimspecialedition/mods/17576>)
- `Leaf Rest` (<https://www.nexusmods.com/skyrimspecialedition/mods/15191>)
- `Simple Fishing Overhaul - Animations and Improved Quest Dialogue` (<https://www.nexusmods.com/skyrimspecialedition/mods/103440>)
- `Hunterborn SE` (<https://www.nexusmods.com/skyrimspecialedition/mods/7900>)

Optional `Missives` support if that route wins over `Sidequests of Skyrim` or sits alongside it cleanly:

- `Missives - Worldspace Additions` (<https://www.nexusmods.com/skyrimspecialedition/mods/26788>) if the final list includes supported new lands / worldspaces and you want boards to respect that wider footprint
- `Missives - Notes Retexture` (<https://www.nexusmods.com/skyrimspecialedition/mods/46201>) if you want the note-handout visuals cleaned up

### Choice Required

- Major city / town overhaul policy:
    - `The Great Cities` (<https://www.nexusmods.com/skyrimspecialedition/mods/320>) family
    - `Cities of the North` family
    - `JK's` city expansion pieces
    - `Capital Whiterun Expansion` (<https://www.nexusmods.com/skyrimspecialedition/mods/37982>)
    - these can be combined in places, but only with explicit patch planning
- Dungeon expansion level:
    - lighter: `Forgotten Dungeons`
    - broader: `Hammet's Dungeon Pack`, `Skyrim Underground SSE` (<https://www.nexusmods.com/skyrimspecialedition/mods/131>), `Dungeons - Revisited` (<https://www.nexusmods.com/skyrimspecialedition/mods/51798>)
- Quest/worldspace content depth:
    - pick only the new-content mods that fit the final tone and maintenance budget
    - do not install every large quest/worldspace mod by default
    - candidates include `Moon and Star` (<https://www.nexusmods.com/skyrimspecialedition/mods/4301>), `Wyrmstooth` (<https://www.nexusmods.com/skyrimspecialedition/mods/45565>), `The Forgotten City` (<https://www.nexusmods.com/skyrimspecialedition/mods/1179>), `Sirenroot`, `VIGILANT SE` (<https://www.nexusmods.com/skyrimspecialedition/mods/11849>), `Beyond Skyrim - Bruma SE` (<https://www.nexusmods.com/skyrimspecialedition/mods/10917>), `Beyond Reach` (<https://www.nexusmods.com/skyrimspecialedition/mods/3008>), `The Wheels of Lull - Unwound Edition` (<https://www.nexusmods.com/skyrimspecialedition/mods/748>), `Falskaar` (<https://www.nexusmods.com/skyrimspecialedition/mods/2057>)
- Player-home/buildable settlement policy:
    - keep this narrow; 1 to 2 picks is enough
    - candidates include `Leaf Rest`, `Heljarchen Farm` (<https://www.nexusmods.com/skyrimspecialedition/mods/4108>), `LC_Build Your Noble House` (<https://www.nexusmods.com/skyrimspecialedition/mods/18308>), `Windstad Mine` (<https://www.nexusmods.com/skyrimspecialedition/mods/4160>), `Blackthorn`
- Fishing / hunting path:
    - `Simple Fishing Overhaul` + `Hunterborn SE`
    - or lighter `Streamlined Fishing` (<https://www.nexusmods.com/skyrimspecialedition/mods/80683>)

### 17.3 Separator `09 NPCs and Creatures`

Current strongest first-pass baseline:

- `Northbourne NPCs of Whiterun Hold` (<https://www.nexusmods.com/skyrimspecialedition/mods/35404>)
- `The Men of Winter SSE` (<https://www.nexusmods.com/skyrimspecialedition/mods/10902>)
- `AI Overhaul SSE` (<https://www.nexusmods.com/skyrimspecialedition/mods/21654>)
- `Lawless - A Bandit Overhaul` (<https://www.nexusmods.com/skyrimspecialedition/mods/88080>)
- `Fluffworks` (<https://www.nexusmods.com/skyrimspecialedition/mods/56361>)
- `Dragons Use Thu'um - Dragon AI Enhancements and New Fully Voiced Shouts` (<https://www.nexusmods.com/skyrimspecialedition/mods/87085>)
- `Crowded Streets` (<https://www.nexusmods.com/skyrimspecialedition/mods/127723>)
- `True Hunter - fewer animals per square meter` (<https://www.nexusmods.com/skyrimspecialedition/mods/25628>)

### Choice Required

- NPC face route:
    - `Northbourne` family
    - `Pandorable's NPCs` (<https://www.nexusmods.com/skyrimspecialedition/mods/78524>)
    - `High Poly True to Vanilla NPC Overhaul` (<https://www.nexusmods.com/skyrimspecialedition/mods/74226>)
    - `DIbella's Blessing` (<https://www.nexusmods.com/skyrimspecialedition/mods/82606>)
    - use one coherent appearance strategy and patch against `AI Overhaul`
- Dragon route:
    - `Dragons Use Thu'um`
    - optionally with `Dragon War - A Dragon Overhaul` (<https://www.nexusmods.com/skyrimspecialedition/mods/51310>)
    - do not keep `Splendor - Dragon Variants` (<https://www.nexusmods.com/skyrimspecialedition/mods/9670>) if `Dragon War` is chosen; they conflict
- Draugr route:
    - `Haugbui` (<https://www.nexusmods.com/skyrimspecialedition/mods/26188>)
    - `The Restless Dead` (<https://www.nexusmods.com/skyrimspecialedition/mods/94100>)
    - `Draugr Upgrades and Improvements` (<https://www.nexusmods.com/skyrimspecialedition/mods/21775>)
    - pick a lane instead of stacking every draugr overhaul
- Wildlife route:
    - `Pelagius's Wildlife AI - Skypatcher` (<https://www.nexusmods.com/skyrimspecialedition/mods/144909>)
    - or `True Hunter`
    - avoid using both as if they were complementary defaults
- Population route:
    - `Crowded Streets`
    - `Travellers of Skyrim` (<https://www.nexusmods.com/skyrimspecialedition/mods/1973>)
    - `Populated Skyrim Reborn SSE` (<https://www.nexusmods.com/skyrimspecialedition/mods/32190>)
    - `MINPCs (More Immersive NPCs)` (<https://www.nexusmods.com/skyrimspecialedition/mods/29483>)
    - select cautiously for performance and city patching reasons

### 17.4 Separator `10 Audio and Feedback`

Current strongest baseline direction:

- `Chapter II - Jeremy Soule Inspired Music (by Dreyma Music)` (<https://www.nexusmods.com/skyrimspecialedition/mods/37792>)
- `Audio Overhaul for Skyrim SE` (<https://www.nexusmods.com/skyrimspecialedition/mods/12466>)

### Choice Required

- Music stack:
    - baseline lean: `Chapter II`
    - alternatives: `Yggdrasil Music and SoundFX Overhaul SE` (<https://www.nexusmods.com/skyrimspecialedition/mods/21578>), `Nyghtfall - Dark Fantasy Music` (<https://www.nexusmods.com/skyrimspecialedition/mods/39011>), `Nordenhamr - Viking Music` (<https://www.nexusmods.com/skyrimspecialedition/mods/58080>)
    - do not install multiple full music overhauls casually
- Broad sound stack:
    - `Audio Overhaul for Skyrim SE`
    - optional comparison: `Immersive Sounds - Compendium` (<https://www.nexusmods.com/skyrimspecialedition/mods/523>)
- Scoped sound add-ons:
    - `Regional Sounds Expansion` (<https://www.nexusmods.com/skyrimspecialedition/mods/77829>)
    - `Airgetlam -Modern Magic Sounds Rework-` (<https://www.nexusmods.com/skyrimspecialedition/mods/51541>)
    - `Airgetlam - Shouts SFX -` (<https://www.nexusmods.com/skyrimspecialedition/mods/90696>)
    - `A Bow's Whisper - Bow sound overhaul` (<https://www.nexusmods.com/skyrimspecialedition/mods/47437>)
    - `Cataphract - Armored Footsteps Rework` (<https://www.nexusmods.com/skyrimspecialedition/mods/102213>)
    - `Sanguine Symphony Realistic Heavy Armor Sounds` (<https://www.nexusmods.com/skyrimspecialedition/mods/162883>)
    - keep these curated, not maximalist

## Step 18. Install Legacy Of The Dragonborn Late

Create or use separator `13 Legacy of the Dragonborn`.

Install:

- `Achievement Injector` (<https://www.nexusmods.com/skyrimspecialedition/mods/126220>)
- `Legacy of the Dragonborn SSE` (<https://www.nexusmods.com/skyrimspecialedition/mods/11802>)
- `Legacy of the Dragonborn - Achievement Injector` (<https://www.nexusmods.com/skyrimspecialedition/mods/130114>)
- `Legacy of the Dragonborn - The Curator's Companion` (<https://www.nexusmods.com/skyrimspecialedition/mods/38529>)
- `Legacy of the Dragonborn Patches (Official)` (<https://www.nexusmods.com/skyrimspecialedition/mods/30980>)

Optional visual/display add-ons:

- `Paintings Replacer for Legacy of the Dragonborn SSE` (<https://www.nexusmods.com/skyrimspecialedition/mods/13279>)
- `Legacy of the Dragonborn - Fate Cards Re-texture - Skyrim Concept Art` (<https://www.nexusmods.com/skyrimspecialedition/mods/16080>)
- `Placeable Display Cases` (<https://www.nexusmods.com/skyrimspecialedition/mods/131107>)

Rule:

- Only enable the official LoTD patches for mods you actually installed.
- Do not pre-enable the entire patch hub.

## Step 19. Generate FaceGen Data

After all NPC overhauls are installed and the load order is finalised for the NPC section, prevent the dark face bug by running Synthesis's face-discoloration patcher.

1. In MO2, select `Synthesis` from the executable dropdown and run it.
2. Add the **Face Discoloration Fix** patcher (or the NPC face patcher of your choice).
3. Run Synthesis and send the output to `Synthesis Output`.
4. Enable the generated patch.

If Synthesis's patcher does not resolve all dark-face cases, use zEdit's FaceGen patcher as a fallback.

## Step 20. Install Performance And Technical Helpers

Create or use separator `15 Performance and Technical Workflow`.

Install:

- `BethINI Pie (Performance INI Editor)` as the external INI tool baseline
- `Lightened Skyrim` (<https://www.nexusmods.com/skyrimspecialedition/mods/50755>) as the current lighter performance branch

### Choice Required

- `eFPS - Exterior FPS boost` (<https://www.nexusmods.com/skyrimspecialedition/mods/54907>)
    - install only if the chosen city/worldspace stack supports it cleanly
    - treat it as a new-game decision
    - defer to the official patch hub where needed

### Smoke Test — Performance

1. Launch via `SKSE` and load a save in an exterior cell (e.g., Whiterun outskirts).
2. Verify FPS is stable and no new stutter appeared after `Lightened Skyrim` / `eFPS`.
3. Check that `eFPS` (if installed) does not cause missing objects, flickering, or culled cities.
4. Exit the game.

## Step 21. Generate Patches While Installing, Not Only At The End

As the load order grows:

1. Keep all hand-made compatibility plugins under `Patches`.
2. Name pair patches explicitly, for example `ModA_x_ModB.esp`.
3. Use ESL-flagged template patches by default.
4. Keep `ModGroups` small and local.
5. Re-run `xEdit` after each major install block, especially after:
   - city overhauls
   - NPC overhauls
   - water / landscape changes
   - leveled-list heavy content mods
   - LoTD integration choices

## Step 22. Run The Secondary Generators In The Correct Order

Do this only after the load order, patches, and chosen branches are stable enough to justify generated output.

### Phase 1. Prepare The Final Sorted Load Order

1. Run `LOOT` and apply the sorted load order before any late generators that read plugin state.
2. If `LOOT` flags anything for cleaning, finish that first and re-sort.
3. Confirm the branch choices, conflict patches, and worldspace edits are actually finalized enough to justify generated output.

### Phase 2. Generate Outputs In Dependency Order

1. `Pandora` after the animation stack stabilizes.
2. `BodySlide` after body and armor changes stabilize.
3. `Synthesis` patchers that the final stack actually uses.
4. `Wrye Bash` only if a `Bashed Patch` is still warranted for the chosen leveled-list strategy.
5. grass cache generation after final grass/tree/worldspace choices stabilize.
6. `xLODGen`.
7. `TexGen`.
8. `DynDOLOD`.
9. `Occlusion` if needed on the first real DynDOLOD run.

### Phase 3. Verify Final Plugin Placement

1. Apply the sorted order, then verify the expected end-state manually:
   - `DynDOLOD.esm` should sit at the end of the ESM block.
   - `DynDOLOD.esp` should be near the end of the load order.
   - `Occlusion.esp`, if generated, should load after `DynDOLOD.esp`.
   - `Synthesis.esp` and any `Bashed Patch` should remain where their own tool guidance and conflict review say they belong, not wherever a vague rule of thumb would put them.

## Step 23. Final Patchers

Run these before the LOD pipeline so generated textures and LOD output see the patched load order.

Use these only where they genuinely help:

- `Synthesis`
    - use for whole-load-order rules such as leveled-list cleanup, AI forwarding, music merge, item-stat normalization, sound patching, or `Apothecary` / `CACO` support
    - do not use it as a substitute for deliberate conflict resolution
- `Wrye Bash`
    - use for leveled-list merging and Bash-tag-driven imports if the chosen mod stack still benefits from it
    - do not treat it as a junk drawer for unrelated overrides

### Prepare For LOD Generation

Before generating LODs, set the tree LOD distance to zero so DynDOLOD fully controls tree LOD placement:

1. Open `MO2 → Tools → INI Editor`.
2. Under `[Display]`, set `fTreeLoadDistance=0`.
3. Save and close.

## Step 24. xLODGen 4K Baseline

Use separator `Output` for the generated mod and keep the exact tool outside the game folder.

Run `xLODGen` for terrain LOD only.

Use this baseline:

- select all worldspaces
- tick only `Terrain LOD`
- leave `Brightness`, `Contrast`, and `Gamma` at defaults; use `Gamma 1.00` for a neutral baseline
- for true `2160p / 4K`, double the diffuse and normal sizes from the standard presets for `LOD4`, `LOD8`, `LOD16`, and `LOD32`
- for initial `LOD4` terrain generation, keep `Optimize Unseen` off
- if map / `LOD32` coastline quality needs a later pass, use a higher `Quality` setting in the documented `0-10` range and raise `Optimize Unseen` to roughly `550`
- after generation, run `ACMOS Road Generator` (<https://www.nexusmods.com/skyrimspecialedition/mods/79205>) with `Roads = Path Only`, point `Path to LOD` at the `xLODGen_Output` folder, choose `Yes` to overwrite LOD textures, and choose `No` when asked to zip
- move the output into `Terrain LOD Output`

## Step 25. TexGen 4K Baseline

Run `TexGen` before grass cache generation and before `DynDOLOD`.

Use this baseline:

- use the preset matching rendered resolution: `2160p = 4K`
- if grass LOD is not being generated, do not tick grass billboard options
- tick `Grass` if the list does not use complex grass
- tick `HD grass` if the list is following the complex-grass branch
- set `GrassModelHeightMultiplier=1.15` in `TexGen_SSE.ini`
- set `TreeMSAlphaThreshold=144` in `TexGen_SSE.ini`
- set `ObjectMSAlphaThreshold=96` in `TexGen_SSE.ini`
- set `ForceComplexGrass=0` for the non-complex-grass branch
- set `ForceComplexGrass=1` only for the complex-grass branch
- move the output into `TexGen Output`

## Step 26. Grass Cache Workflow

If the final list keeps grass LOD ambitions:

1. Install `No Grass In Objects` (<https://www.nexusmods.com/skyrimspecialedition/mods/42161>).
2. Install `Worldspaces with Grass SSEEdit Script for No Grass In Objects` (<https://www.nexusmods.com/skyrimspecialedition/mods/55152>).
3. Install `Grass Cache Fixes` (<https://www.nexusmods.com/skyrimspecialedition/mods/60891>).
4. Generate the grass cache only after grass, tree, landscape, and worldspace edits are mostly settled.
5. Send the result to `Grass Cache Output`.

If the grass stack changes later, rebuild the cache instead of trying to salvage the old one.

## Step 27. DynDOLOD 4K Baseline

Run `DynDOLOD` only after the load order and patches are stable.

Use this baseline:

- set `Expert=1` in `DynDOLOD_SSE.ini`
- set `Level32=1 AllHDLOD32=1`
- set grass brightness top and bottom RGB values to `0.500`
- set `DoubleSidedTextureMask=mountain,mtn`
- set `DoubleSidedMeshMask=mountain,mtn`
- if the list follows the complex-grass branch, also set:
    - `ComplexGrassBillboard=5`
    - all complex-grass brightness top and bottom RGB values to `0.500`
    - `ComplexGrassBacklightMask=25`
- select all worldspaces
- tick `Candles`
- tick `FXGlow`
- click `High` to load the expected `A Clear Map of Skyrim` mesh rules
- treat the intended end state as the `4K` profile with `Optimal` tree and catch-all rules plus the recommended `LOD32` rules
- generate `Occlusion` only on the first real run
- tick `Grass LOD` only if the list is intentionally generating grass LOD
- move the output into `DynDOLOD Output`
- enable `DynDOLOD.esm` and `DynDOLOD.esp`
- sort with `LOOT`

## Step 28. Final Verification And Test Pass

Before calling the build stable, complete these tests from `modlist-14.md`:

1. fresh game startup checklist
2. character creation test
3. third-person combat test
4. city performance test
5. forest traversal test
6. dungeon lighting test
7. UI and controller test
8. long-session stability test

Specific performance checks to keep:

- benchmark before and after LOD generation from a clean Whiterun save
- temporarily disable `A Clear Map of Skyrim and Other Worlds` (<https://www.nexusmods.com/skyrimspecialedition/mods/56367>) during benchmarking
- check the benchmark view outside Whiterun looking west
- sanity-check the Rift with `cow tamriel 40 -24`

### Smoke Test — Full Build

1. Start a fresh game with your chosen alternate-start mod.
2. Complete character creation — verify facegen, body, and UI all render.
3. Exit the starting area and enter the open world.
4. Test a cell transition (enter/exit a building).
5. Fast-travel between two discovered locations.
6. Verify no missing meshes (purple exclamation marks), no infinite loading screens, and no CTD within the first 30 minutes of play.

## Final Notes

- The cleanest parts of the build are sections `01`, `03`, `04`, `05`, `06`, `13`, and the MO2/tooling workflow.
- The least locked parts are sections `07`, `08`, `09`, `10`, and parts of `11`; keep those explicitly branch-based.
- The biggest trap in the current repo state is treating open research candidates as if they were already cumulative baseline installs.
- If a branch choice changes, rebuild the affected generated outputs instead of trusting stale output.
