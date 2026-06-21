# Elder Wilds Installation Guide

Target build: Skyrim Special Edition / Anniversary Edition runtime `1.6.1170` via Steam

This guide turns the planning files into an install order that can actually be followed in `Mod Organizer 2` (<https://github.com/ModOrganizer2/modorganizer/releases>).

## How To Use This Guide

- Follow the steps in order.
- Create the exact separators named in this guide.
- Install one mod at a time inside each separator unless a subsection is clearly a tight dependency cluster.
- When this guide says `Choice Required`, pick one path before continuing.
- Keep generated files in dedicated output mods. Do not let them pile up in `Overwrite`.

## Step 1. Prepare Skyrim And Tool Folders

1. Install Steam and Skyrim SE/AE outside `Program Files`, ideally under a shallow path such as `C:\Games\Skyrim Special Edition`.
2. Confirm the game is on runtime `1.6.1170`. The **Anniversary Upgrade** is not used!
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

Create separators in MO2 using the names from [`separators.md`](separators.md) — each entry includes the `-#RRGGBB` color prefix that MO2 reads. Create them in list order; the `xx` and `xxa` prefixes preserve sort order (the `xxa` groups nest visually under their parent by position).

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
- `Animation Queue Fix` (<https://www.nexusmods.com/skyrimspecialedition/mods/82395>)
- `Actor Value Generator` (<https://www.nexusmods.com/skyrimspecialedition/mods/84743>) — SKSE framework for creating custom actor values; required by `Classic Attributes` and other mods that add new stats/traits
- `Papyrus Ini Manipulator` (<https://www.nexusmods.com/skyrimspecialedition/mods/65634>) — INI file settings framework; required by several `Roleplaying in Skyrim` mods (Origins, Lineages, Birthsigns, Skill Based Stat Growth, Evolving Economy, Loot Overhaul)
- `aTweaks and Utilities` (<https://www.nexusmods.com/skyrimspecialedition/mods/107741>) — SKSE plugin for expanded gameplay systems; required by `Roleplaying in Skyrim - Standing Stones`
- `Perk Entry Point Extender` (<https://www.nexusmods.com/skyrimspecialedition/mods/91192>) — SKSE plugin extending perk entry points; required by `aTweaks and Utilities`
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
- `Dynamic Inventory Icon Injector` (<https://www.nexusmods.com/skyrimspecialedition/mods/174136>)
- `Enchanted Icon Overhaul` (<https://www.nexusmods.com/skyrimspecialedition/mods/174246>) — optional; adds distinct icons for learned, artifact, and learnable enchantments
- `The Handy Icon Collection Collective (THICC)` (<https://www.nexusmods.com/skyrimspecialedition/mods/90508>) — Comprehensive inventory icon replacer. (Optional)

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
- `FYX - Eastern Empire Company Building` (<https://www.nexusmods.com/skyrimspecialedition/mods/86526>)
- `FYX - Nordic Doors and Traps Collisions` (<https://www.nexusmods.com/skyrimspecialedition/mods/100295>)
- `Explosion Collision Fix` (<https://www.nexusmods.com/skyrimspecialedition/mods/154076>)
- `Natural Waterfalls` (<https://www.nexusmods.com/skyrimspecialedition/mods/87261>)
- `Rally's Water Foam` (<https://www.nexusmods.com/skyrimspecialedition/mods/28922>)
- `Cathedral - 3D Stonecrop` (<https://www.nexusmods.com/skyrimspecialedition/mods/110726>)
- `DrJacopo - 3D Tundra Shrubs` (<https://www.nexusmods.com/skyrimspecialedition/mods/108747>)
- `Cathedral - 3D Clover Plant` (<https://www.nexusmods.com/skyrimspecialedition/mods/68793>)
- `Cathedral - 3D Deathbell` (<https://www.nexusmods.com/skyrimspecialedition/mods/76460>)
- `Cathedral - 3D Dragons Tongue` (<https://www.nexusmods.com/skyrimspecialedition/mods/85694>)
- `Cathedral - 3D Lavender` (<https://www.nexusmods.com/skyrimspecialedition/mods/68310>)
- `Cathedral - 3D Thistle` (<https://www.nexusmods.com/skyrimspecialedition/mods/67619>)
- `Cathedral - 3D Snow Berries` (<https://www.nexusmods.com/skyrimspecialedition/mods/69415>)
- `Dragon Breath VFX Edit` (<https://www.nexusmods.com/skyrimspecialedition/mods/118431>)
- `Flame VFX Edit` (<https://www.nexusmods.com/skyrimspecialedition/mods/109414>) — improves fire spell effects (mesh replacer, no ESP, compatible with Community Shaders)

Under `02.13 Character, Skin, And Creature Visuals` install the current strongest baseline:

- `CBBE NSFW - Caliente's Beautiful Bodies Enhancer` (<https://www.nexusmods.com/skyrimspecialedition/mods/74257>)
- `CBBE 3BA (3BBB)` (<https://www.nexusmods.com/skyrimspecialedition/mods/30174>)
- `Highly Improved Male Body Overhaul - HIMBO` (<https://www.nexusmods.com/skyrimspecialedition/mods/74174>)
- `BnP - Female Skin` (<https://www.nexusmods.com/skyrimspecialedition/mods/65274>)
- `BnP - Male Skin` (<https://www.nexusmods.com/skyrimspecialedition/mods/65402>)
- `Expressive Facial Animation -Female Edition-` (<https://www.nexusmods.com/skyrimspecialedition/mods/19181>)
- `Expressive Facial Animation -Male Edition-` (<https://www.nexusmods.com/skyrimspecialedition/mods/19532>)
- `Expressive Facegen Morphs SE` (<https://www.nexusmods.com/skyrimspecialedition/mods/35785>) if you want the `High Poly Head 1.4` face-mesh branch
- `High Poly Head 1.4 SE` (official Google Drive mirror: <https://drive.google.com/drive/folders/1V_jcYzwTiKnSv8Dbv-7Z0hh9SWbkn6Bi>) if you want the supported high-resolution face-mesh branch
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

Optional texture / mesh add-ons:

- `Skyking Signs` (<https://www.nexusmods.com/skyrimspecialedition/mods/112902>) — Sign texture and mesh replacer. (Optional)
- `Skyking Unique Signs` (<https://www.nexusmods.com/skyrimspecialedition/mods/114940>) — Unique per-shop sign variants. Requires Skyking Signs. (Optional)
- `Skyland Imperial and Nordic Tents` (<https://www.nexusmods.com/skyrimspecialedition/mods/57002>) — 4K tent texture replacer. (Optional)
- `Steel Armor Redone - PBR and Complex Material` (<https://www.nexusmods.com/skyrimspecialedition/mods/177513>) — PBR retexture of CC Steel Soldier armor. Requires CC Alternative Armors - Steel Soldier, Community Shaders or ENB, PG Patcher. (Optional)

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
    - baseline: `Blended Roads - Light Plugin (ESL)` (<https://www.nexusmods.com/skyrimspecialedition/mods/171554>)
- Face mesh branch:
    - baseline route stays on the current `RaceMenu SE` + `Expressive Facial Animation` stack without `High Poly Head`
    - supported higher-resolution route adds `Expressive Facegen Morphs SE` (<https://www.nexusmods.com/skyrimspecialedition/mods/35785>) + `High Poly Head 1.4 SE` (official Google Drive mirror: <https://drive.google.com/drive/folders/1V_jcYzwTiKnSv8Dbv-7Z0hh9SWbkn6Bi>)
    - only take the `High Poly Head` branch if you are willing to absorb extra NPC facegen and headpart patching later
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
- `Animated Armoury - DAR Version` (<https://www.nexusmods.com/skyrimspecialedition/mods/35978>) — provides weapon meshes, collision, and leveled-list for 12 new weapon types; required by the OAR version
- `Animated Armoury - OAR` (<https://www.nexusmods.com/skyrimspecialedition/mods/103577>) — adds first/third-person animations for 12 new weapon types (rapier, spear, halberd, katana, etc.) via Open Animation Replacer; requires the DAR version above

### Choice Required

- Locomotion set:
    - preferred current male route: `Leviathan Animations II - Male Idle Walk And Run` (<https://www.nexusmods.com/skyrimspecialedition/mods/81463>)
    - preferred current female route: `Leviathan Animations II - Female Idle Walk And Run` (<https://www.nexusmods.com/skyrimspecialedition/mods/80760>)
    - alternative route: `Vanargand Animations II - Male Idle Walk And Run` (<https://www.nexusmods.com/skyrimspecialedition/mods/99999>)
- Female idle flavor:
    - `Goetia Animations - Female Idle Walk And Run` (<https://www.nexusmods.com/skyrimspecialedition/mods/68625>)
    - `Goetia Animations - Conditional Shuffled Idle for Pretty Female idles` (<https://www.nexusmods.com/skyrimspecialedition/mods/68005>)
- Optional traversal / flavor add-ons:
    - `Animated Interactions SKSE` (<https://www.nexusmods.com/skyrimspecialedition/mods/143798>) as a higher-fidelity interaction companion or alternative; if used with `Immersive Interactions`, disable overlapping actions instead of letting both own the same prompts
    - `SkyClimb` (<https://www.nexusmods.com/skyrimspecialedition/mods/97253>) as the climbing-first alternative to `SkyParkour v3`; do not install both as if they were complementary baselines
    - `RaySense - Jumping over obstacles` (<https://www.nexusmods.com/skyrimspecialedition/mods/175506>) + `Open Animation Replacer - RaySense` (<https://www.nexusmods.com/skyrimspecialedition/mods/175498>)
    - `RaySense - Edge Lookdown` (<https://www.nexusmods.com/skyrimspecialedition/mods/175514>) — Look-down animation near cliff edges. Requires Open Animation Replacer. (Optional)
    - `Take a Seat - New Sitting Animations for OAR or DAR` (<https://www.nexusmods.com/skyrimspecialedition/mods/54193>) — Adds new sitting/idle animations for chairs and benches. Requires Open Animation Replacer. (Optional)
    - `Go to bed` (<https://www.nexusmods.com/skyrimspecialedition/mods/4224>)
- Creature animation add-ons:
    - `New Creature Animation - Giant` (<https://www.nexusmods.com/skyrimspecialedition/mods/83317>)
    - `New Creature Animation - Falmer` (<https://www.nexusmods.com/skyrimspecialedition/mods/83572>)
    - `New Creature Animation - Werewolf` (<https://www.nexusmods.com/skyrimspecialedition/mods/83806>)
- Weapon-type variety (adds 12 new weapon types with custom animations):
    - `Animated Armoury - DAR Version` (<https://www.nexusmods.com/skyrimspecialedition/mods/35978>) + `Animated Armoury - OAR` (<https://www.nexusmods.com/skyrimspecialedition/mods/103577>)
    - install DAR version first (provides meshes and leveled lists), then OAR version (provides animations)
    - run `Pandora` after installing this pair
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
    - `RaySense - Cover Animation` (<https://www.nexusmods.com/skyrimspecialedition/mods/175504>) — Flatten-against-wall animation when sneaking. Requires Open Animation Replacer. (Optional)
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
- `Pumping Iron - Dynamic Muscle Growth` (<https://www.nexusmods.com/skyrimspecialedition/mods/13434>) — Muscle visual progression from combat/fitness. Requires SKSE, Address Library. (Optional)

### Choice Required

- Alternate start path:
    - `Alternate Perspective - Alternate Start` (<https://www.nexusmods.com/skyrimspecialedition/mods/50307>)
    - `Alternate Start - Live Another Life` (<https://www.nexusmods.com/skyrimspecialedition/mods/272>)
    - `Skyrim Unbound Reborn (Alternate Start)` (<https://www.nexusmods.com/skyrimspecialedition/mods/27962>)
    - `Realm of Lorkhan - Freeform Alternate Start` (<https://www.nexusmods.com/skyrimspecialedition/mods/18223>)
- Roleplay extras:
    - `Dealing with Backstories` (<https://www.nexusmods.com/skyrimspecialedition/mods/61106>)
    - `Take Notes - Journal of the Dragonborn SSE` (<https://www.nexusmods.com/skyrimspecialedition/mods/13570>)
    - `Roleplaying in Skyrim - Classic Attributes` (<https://www.nexusmods.com/skyrimspecialedition/mods/151476>) — adds 10 classic RPG attributes (Strength, Fortitude, Endurance, Intelligence, Wisdom, Perception, Agility, Dexterity, Charisma, Luck) that govern various traits and mechanics. Requires `Actor Value Generator` from Step 9. Integrates with other RoleRim mods. (Optional)
    - `Roleplaying In Skyrim - Origins` (<https://www.nexusmods.com/skyrimspecialedition/mods/150186>) — background narrative with optional bonuses based on character history. Requires SKSE and `Papyrus Ini Manipulator` from Step 9. (Optional)
    - `Roleplaying in Skyrim - Useful MiscStats` (<https://www.nexusmods.com/skyrimspecialedition/mods/149142>) — makes miscellaneous stats useful for character building, reduces crafting grinding. Requires `Actor Value Generator` from Step 9. (Optional)
    - `Roleplaying in Skyrim - Skill Based Stat Growth` (<https://www.nexusmods.com/skyrimspecialedition/mods/147455>) — primary stats (Health, Magicka, Stamina) grow as skills develop. Requires SKSE and `Papyrus Ini Manipulator` from Step 9. (Optional)
    - `The Choice is Yours` (<https://www.nexusmods.com/skyrimspecialedition/mods/3850>) if you want tighter control over quest auto-starts in a content-heavy run
    - `To Your Face SE - AE - VR` (<https://www.nexusmods.com/skyrimspecialedition/mods/24720>) if you want to reduce ambient NPC greeting spam without changing the broader social-system baseline
- Race / standing stone alternatives:
    - `Aetherius` vs `Morningstar` vs `Imperious`
    - `Evenstar` vs `Andromeda`
    - `Roleplaying in Skyrim - Races` (<https://www.nexusmods.com/skyrimspecialedition/mods/149544>) — biological/physiological race overhaul. Requires SKSE, `KID`, `SPID` from Step 9. (Optional)
    - `Roleplaying in Skyrim - Lineages` (<https://www.nexusmods.com/skyrimspecialedition/mods/174443>) — subraces (4 per vanilla race) with unique abilities. Supplements `Races`. Requires SKSE, `KID`, `SPID`, `Papyrus Ini Manipulator` from Step 9. (Optional)
    - `Roleplaying in Skyrim - Standing Stones` (<https://www.nexusmods.com/skyrimspecialedition/mods/157053>) — overhaul of the 13 standing stones. Requires SKSE, `aTweaks and Utilities`, `KID`, `Perk Entry Point Extender` (installed via aTweaks) from Step 9. (Optional)
    - `Roleplaying in Skyrim - Birthsigns` (<https://www.nexusmods.com/skyrimspecialedition/mods/154610>) — lore-inspired 13 birthsigns with monthly waxing/waning effects. Requires SKSE, `KID`, `Papyrus Ini Manipulator` from Step 9. (Optional)
- Perk / magic alternatives:
    - `Adamant` vs `Vokrii` vs `Ordinator`
    - `Mysticism` vs `Odin` vs `Apocalypse`
- Alchemy / crafting alternatives:
    - `Apothecary` vs `Complete Alchemy and Cooking Overhaul` (<https://www.nexusmods.com/skyrimspecialedition/mods/19924>)
    - `Ars Metallica` vs `Complete Crafting Overhaul Remastered` (<https://www.nexusmods.com/skyrimspecialedition/mods/28608>)
    - `Honed Metal` (<https://www.nexusmods.com/skyrimspecialedition/mods/61015>) as optional service layer
    - `Summermyst - Enchantments of Skyrim` (<https://www.nexusmods.com/skyrimspecialedition/mods/6285>) as optional enchanting-variety companion (needs research — verify compatibility with the chosen perk/magic/artifact stack)
- Economy path:
    - current lean: `Trade and Barter`
    - alternative progression route: `Open World Loot` (<https://www.nexusmods.com/skyrimspecialedition/mods/49681>) or `MorrowLoot Ultimate` (<https://www.nexusmods.com/skyrimspecialedition/mods/3058>)
    - `Roleplaying in Skyrim - Evolving Economy` (<https://www.nexusmods.com/skyrimspecialedition/mods/149830>) — dynamic pricing based on area resources, season, Civil War, reputation, and distance from cities. Requires SKSE, `Papyrus Ini Manipulator`, `powerofthree's Papyrus Extender` from Step 9. (Optional)
    - `Roleplaying in Skyrim - Loot Overhaul` (<https://www.nexusmods.com/skyrimspecialedition/mods/157259>) — rarity-driven contextually-aware loot overhaul with equipment breakage and deleveled artifacts. Requires SKSE, `Papyrus Ini Manipulator` from Step 9. (Optional)
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
- `Roleplaying in Skyrim - Encounter Zones` (<https://www.nexusmods.com/skyrimspecialedition/mods/149899>) — comprehensive encounter zone overhaul reworked for realism and variety based on NPC type, location, and quest significance. ESL flagged, no hard requirements. (Optional Arena alternative)
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
- `Dynamic Wind Framework - SKSE Plugin` (<https://www.nexusmods.com/skyrimspecialedition/mods/177023>)
- `Dynamic Wind - Skyrim` (<https://www.nexusmods.com/skyrimspecialedition/mods/177024>) — config/data mod for the framework
- `Realistic Boat Bobbing SE` (<https://www.nexusmods.com/skyrimspecialedition/mods/26080>) — Makes boats bob realistically on water. (Optional)
- `Particle Wind - SKSE Plugin` (<https://www.nexusmods.com/skyrimspecialedition/mods/174812>) — Dust/leaves/snow particles react to wind direction. Requires SKSE, Address Library. (Optional)
- `Roleplaying In Skyrim - Immersive Activators` (<https://www.nexusmods.com/skyrimspecialedition/mods/149908>) — replaces generic activation prompts with descriptive action text (e.g., "Read Book" instead of "Activate"); hides NPC names until interaction. ESL-flagged, 8KB, toggleable via MCM. (Optional)

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
- `Environs - Abandoned Abodes` (<https://www.nexusmods.com/skyrimspecialedition/mods/82410>)
- `Evolving Locations - Riverside Shack` (<https://www.nexusmods.com/skyrimspecialedition/mods/124268>) — dynamic overhauls that change over playtime
- `Evolving Locations - Lucky Shack` (<https://www.nexusmods.com/skyrimspecialedition/mods/123700>)
- `Evolving Locations - Cliffside Retreat` (<https://www.nexusmods.com/skyrimspecialedition/mods/124524>)
- `Immersive Fishing` (<https://www.nexusmods.com/skyrimspecialedition/mods/115249>) — adds fishing spots, craftable rods, new fish types, and radiant fishing quests
- `Fishing Extension Framework` (<https://www.nexusmods.com/skyrimspecialedition/mods/139626>) — framework for adding fishing biomes to new worldspaces
- `Fishing Voiced Narrative - Simple Fishing Overhaul Voice Patch` (<https://www.nexusmods.com/skyrimspecialedition/mods/113771>) — compatibility patch between Voiced Narrative - Fishing and Simple Fishing Overhaul
- `Hunterborn SE` (<https://www.nexusmods.com/skyrimspecialedition/mods/7900>)
- `Fishermen Fish - Brings the Fish to You` (<https://www.nexusmods.com/skyrimspecialedition/mods/134408>) — overlays fish meshes on NPCs for immersive fishing scenes
- `Garbage Loot - Barrels and Sacks` (<https://www.nexusmods.com/skyrimspecialedition/mods/18047>) — adds lootable trash containers throughout the world for scavenging

Optional `Missives` support if that route wins over `Sidequests of Skyrim` or sits alongside it cleanly:

- `Missives - Worldspace Additions` (<https://www.nexusmods.com/skyrimspecialedition/mods/26788>) if the final list includes supported new lands / worldspaces and you want boards to respect that wider footprint
- `Missives - Notes Retexture` (<https://www.nexusmods.com/skyrimspecialedition/mods/46201>) if you want the note-handout visuals cleaned up

Optional quest / worldspace content add-ons:

- `Penitus Oculatus` (<https://www.nexusmods.com/skyrimspecialedition/mods/21061>) — Joinable faction mod replacing the Dark Brotherhood. (Optional)
- `Quests Are In Skyrim` (<https://www.nexusmods.com/skyrimspecialedition/mods/18416>) — Synthesis patcher that distributes quest markers. (Optional)
- `The Forgotten City - Delayed Start` (<https://www.nexusmods.com/skyrimspecialedition/mods/56958>) — Delays Forgotten City start to level 25. Requires The Forgotten City. (Optional)
- `The Gray Cowl of Nocturnal - 10th Anniversary Edition` (<https://www.nexusmods.com/skyrimspecialedition/mods/141327>) — Large quest mod in Hammerfell. (Optional)
- `The Gray Cowl of Nocturnal - Addons Repository` (<https://www.nexusmods.com/skyrimspecialedition/mods/126661>) — Patches and addons collection for Gray Cowl. (Optional)
- `The Gray Cowl of Nocturnal - Bounty Fix and Leveled List Integration` (<https://www.nexusmods.com/skyrimspecialedition/mods/94939>) — Bugfix and leveled list patch. (Optional)
- `The Gray Cowl of Nocturnal - We Don't Need Two Boards` (<https://www.nexusmods.com/skyrimspecialedition/mods/107288>) — Fixes duplicate quest boards. Requires Gray Cowl + Missives. (Optional)
- `The Isle Of Valefrost SE` (<https://www.nexusmods.com/skyrimspecialedition/mods/103215>) — New lands quest mod. (Optional)

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
    - candidates include `Moon and Star` (<https://www.nexusmods.com/skyrimspecialedition/mods/4301>), `Wyrmstooth` (<https://www.nexusmods.com/skyrimspecialedition/mods/45565>), `The Forgotten City` (<https://www.nexusmods.com/skyrimspecialedition/mods/1179>), `Sirenroot`, `Whispers of the Depths - A Sea Monster Quest` (<https://www.nexusmods.com/skyrimspecialedition/mods/127087>), `VIGILANT SE` (<https://www.nexusmods.com/skyrimspecialedition/mods/11849>), `Beyond Skyrim - Bruma SE` (<https://www.nexusmods.com/skyrimspecialedition/mods/10917>), `Fishing Extension for Beyond Skyrim - Bruma` (<https://www.nexusmods.com/skyrimspecialedition/mods/152152>), `Beyond Reach` (<https://www.nexusmods.com/skyrimspecialedition/mods/3008>), `The Wheels of Lull - Unwound Edition` (<https://www.nexusmods.com/skyrimspecialedition/mods/748>), `Falskaar` (<https://www.nexusmods.com/skyrimspecialedition/mods/2057>)
- Player-home/buildable settlement policy:
    - keep this narrow; 1 to 2 picks is enough
    - candidates include `Leaf Rest`, `Heljarchen Farm` (<https://www.nexusmods.com/skyrimspecialedition/mods/4108>), `LC_Build Your Noble House` (<https://www.nexusmods.com/skyrimspecialedition/mods/18308>), `Windstad Mine` (<https://www.nexusmods.com/skyrimspecialedition/mods/4160>), `Blackthorn`
- Fishing / hunting path:
    - `Simple Fishing Overhaul` + `Immersive Fishing` + `Hunterborn SE`
    - or lighter `Streamlined Fishing` (<https://www.nexusmods.com/skyrimspecialedition/mods/80683>)
    - if you adopt new-lands mods, add `Fishing Extension Framework` + the relevant worldspace extension (e.g. `Fishing Extension for Beyond Skyrim - Bruma`)

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
- `Dialogue Expansion - Windhelm` (<https://www.nexusmods.com/skyrimspecialedition/mods/112415>)
- `Dialogue Expansion - Imperial Soldiers` (<https://www.nexusmods.com/skyrimspecialedition/mods/113208>)
- `Follower Dialogue Expansion - Aela the Huntress` (<https://www.nexusmods.com/skyrimspecialedition/mods/114801>) — adds 2700+ voiced lines, quest commentary, approval system, and romance for the Companions huntress
- `Follower Dialogue Expansion - Brelyna Maryon` (<https://www.nexusmods.com/skyrimspecialedition/mods/113359>) — expands the College of Winterhold apprentice with 400+ voiced lines
- `Follower Dialogue Expansion - Lydia` (<https://www.nexusmods.com/skyrimspecialedition/mods/119226>) — expands the Housecarl of Whiterun with 400+ voiced lines
- `Follower Dialogue Expansion - Roggi Knot-Beard` (<https://www.nexusmods.com/skyrimspecialedition/mods/134694>) — expands the Kynesgrove miner into a fully fledged follower
- `Follower Dialogue Expansion - Aranea Ienith` (<https://www.nexusmods.com/skyrimspecialedition/mods/141907>) — expands the Priestess of Azura with 495 voiced lines
- `Follower Dialogue Expansion - Borgakh the Steel Heart` (<https://www.nexusmods.com/skyrimspecialedition/mods/120255>) — expands the Orc stronghold warrior with 478 voiced lines and a personal quest
- `Follower Dialogue Expansion - Uthgerd the Unbroken` (<https://www.nexusmods.com/skyrimspecialedition/mods/122487>) — expands the Unbroken with 233 voiced lines and banter with Aela
- `Follower Dialogue Expansion - Ysolda` (<https://www.nexusmods.com/skyrimspecialedition/mods/124787>) — expands the Whiterun merchant into a fully functional follower with 180 voiced lines
- `Follower Dialogue Expansion - Olfina Gray-Mane` (<https://www.nexusmods.com/skyrimspecialedition/mods/172562>) — expands Olfina into a fully fledged follower with 578 voiced lines and Civil War commentary

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
- `Recursion Monitor (Updated Fork)` (<https://www.nexusmods.com/skyrimspecialedition/mods/179627>) — Detects broken Papyrus script recursion without blocking. Original: <https://www.nexusmods.com/skyrimspecialedition/mods/76867>. Requires SKSE, Address Library. (Optional)
- `Save and Load Accelerator (S.L.A.C.K.)` (<https://www.nexusmods.com/skyrimspecialedition/mods/163969>) — Speeds up save/load operations. Requires SKSE, Address Library, SSE Engine Fixes. (Optional)

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
    - specific patcher — `Weapon Stat Synthesis Patcher` (Nexus 149027):
        - what it does: analyzes all weapons in the load order and rebalances their stats (damage, reach, speed, weight, value) using configurable formulas. Produces a single output patch that normalises the tier ladder across mod-added weapons from `Immersive Weapons`, `Animated Armoury`, `Creation Club` content, or any other weapon mod.
        - when to run: once after the full weapon stack is installed and stable — any time weapons are added, removed, or reordered in the load order. Do not run before the weapon mods are finalised.
        - how to add in Synthesis:
            1. Open `Synthesis`, click `Add` or `+`.
            2. Search the registry for `Weapon Stat Synthesis Patcher`.
            3. Select it and add it to the active patcher list.
            4. Click the gear icon to configure parameters with these Elder Wilds–suitable values:
                - `Damage Floor` — 4 (default; keeps iron/early weapons viable)
                - `Damage Ceiling` — 22 (tighter than the default 30 — Adamant's perk curve does not need the wide default spread, and a tighter ceiling keeps mid-tier loot relevant longer, supporting the survival/scarcity tone)
                - `Weight Scale` — 1.0 (default)
                - `Value Scale` — 1.0 (default; economy is handled by `Trade and Barter`, not the stat patcher)
                - `Speed Normalization` — tick ON (weapon speed consistency matters more with Animated Armoury's varied movesets)
                - `Reach Normalization` — tick ON (prevents spear/halberd from having wildly different reach than intended)
                - `Ignore List` — add these plugins so hand-authored artifact and unique-item stats are preserved: `Reliquary of Myth.esp`, `ArteFakes.esp`, `Unique Items Tweaks.esp`, `Konahrik's Accoutrements.esp`
            5. Close config and save the patcher list.
        - order in the patcher pipeline: run after `OWLLeveledListAddition`, `SpeedandReachFixes`, and `AmmoTweaks` (weapon stat patchers that resolve structural data before this patcher applies its formulas). See the full pipeline order in `modlist-15.md`.
        - output: generates `zWeaponStatSynthesis.esp` when run (or merges into the main Synthesis output if configured as a group patcher). Ensure it loads after all weapon mods.
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

### Quick Teleport Smoke Test (`coc`)

From the main menu, open the console (`~`) and teleport to each location. Verify no crashes, no missing textures, and ≥60 FPS (uncap framerate, use `tgm` for god mode if needed).

| # | Command | Location | Stress Profile |
|---|---------|----------|----------------|
| 1 | `coc Whiterun` | Whiteron | Major city — NPCs, shadows, architecture density |
| 2 | `coc Solitude` | Solitude | Large city — water reflections, long draw distances |
| 3 | `coc RiftenOrigin` | Riften | Canopy lighting, heavy NPC AI packages |
| 4 | `coc MarkarthOrigin` | Markarth | Dwemer stone, waterfalls, extreme verticality |
| 5 | `coc Riverwood` | Riverwood | Forest exterior — grass, trees, landscape LOD |
| 6 | `coc BleakFallsBarrow01` | Bleak Falls Barrow | Interior dungeon — close-quarters lighting |
| 7 | `coc WhiterunBanneredMare` | Bannered Mare (Whiterun) | Tavern interior — fire lighting, patron NPCs, confined space |

If any location fails, the most recently installed mod or generator step is the first suspect.

### Smoke Test — Full Build

1. Start a fresh game with your chosen alternate-start mod.
2. Complete character creation — verify facegen, body, and UI all render.
3. Exit the starting area and enter the open world.
4. Test a cell transition (enter/exit a building).
5. Fast-travel between two discovered locations.
6. Verify no missing meshes (purple exclamation marks), no infinite loading screens, and no CTD within the first 30 minutes of play.

## Step 29. Performance Testing And Tuning

Performance tuning is an iterative process, not a one-time setup. The goal is consistent frametimes (not just a high average FPS) across the scenarios you actually play.

### Tools

| Tool                                              | Purpose                                                                                                                                                                                                        | Download                                                    |
|---------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------|
| **NVIDIA FrameView**                              | Lightweight overlay and logging for FPS, frametime, GPU power, thermals. No CPU per-core stats, but lower overhead than Afterburner                                                                            | <https://www.nvidia.com/en-us/geforce/frameview/>           |
| **MSI Afterburner + RivaTuner Statistics Server** | Full overlay and logging: FPS, frametime, GPU usage %, CPU per-core, VRAM, draw calls, temps                                                                                                                   | <https://www.msi.com/Landing/afterburner/graphics-cards>    |
| **GPU-Z**                                         | Sensor logging for GPU clock, voltage, thermals, power limits                                                                                                                                                  | <https://www.techpowerup.com/gpuz/>                         |
| **Community Shaders debug overlay**               | Built-in performance stats — press `F11` (default) in-game to toggle render-time breakdown, draw-call count, and VRAM usage from the CS pipeline                                                               | already installed with Community Shaders                    |
| **SSE Display Tweaks OSD**                        | Built-in overlay — set `ShowOSD=true` in `SSEDisplayTweaks.ini` for basic FPS/frametime without RTSS                                                                                                           |                                                             |
| **Skyrim console tools**                          | `showstats` toggles a real-time stat overlay (FPS, triangle count, batch count). `sgtm 0.3` slows the game to 30% speed for inspecting stutter frames. `tfc 1` freezes the camera for reproducible screenshots | built-in                                                    |
| **BethINI Pie**                                   | INI tuning — grass density, shadow resolution, particle limits, view distances                                                                                                                                 | already installed                                           |
| **Cathedral Assets Optimizer**                    | Downscale uncompressed or oversized textures for VRAM relief                                                                                                                                                   | <https://www.nexusmods.com/skyrimspecialedition/mods/23316> |

### Benchmark Methodology

1. **Create a stable reference save** — start a clean save with a fixed weather (`fw 10a240` for clear skies), a fixed time (`set gamehour to 12`), and `tfc 1` for reproducible screenshots. Save it as `benchmark_ref.ess`.
2. **Use fixed routes** — do not free-roam during benchmarks. Load the same save, follow the same path for 60 seconds, record the results.
3. **Log everything** — use MSI Afterburner's hardware logging (or NVIDIA FrameView's CSV logging, or Community Shaders' on-screen debug overlay with `showstats`) to capture GPU usage %, VRAM, CPU per-core usage, frametime 99th percentile, and power draw.
4. **Test one change at a time** — change one setting, reload the same save, re-run the same route. No multi-variable tests.

### Benchmark Scenarios

Use these console commands to reach each scenario from a clean save, then run the 60-second route:

| Scenario                      | Location              | Teleport                                                                                             | What It Tests                                                            |
|-------------------------------|-----------------------|------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------|
| **Open world (general)**      | Whiterun plains west  | `cow WhiterunWorld -10 0`                                                                            | General GPU/CPU balance, grass density, LOD load                         |
| **Dense forest**              | Falkreath woods       | `cow FalkreathWorld -30 -20`                                                                         | Tree rendering, shadow complexity, grass LOD                             |
| **Pine-and-marsh transition** | Morthal swamp edge    | `cow HjaalmarchWorld -15 -10`                                                                        | Wetland shaders, mist particles, mixed tree/flora density                |
| **City centre (canals)**      | Riften marketplace    | `cow RiftenWorld 0 0`                                                                                | NPC count, script load, water reflections, interior/exterior transitions |
| **City centre (castles)**     | Solitude exterior     | `cow SolitudeWorld 0 0`                                                                              | Large static-mesh draw calls, castle shadow cascades, skybox occlusion   |
| **Snowy tundra**              | Dawnstar coast        | `cow WinterholdWorld 10 5`                                                                           | Snow shader coverage, volumetric fog, low-visibility weather transition  |
| **Waterfall-heavy coast**     | Coast near Solitude   | `cow Tamriel -22 -4`                                                                                 | Water displacement, foam particles, Natural Waterfalls, coastal LOD      |
| **Large interior**            | Blackreach            | `cow Blackreach 0 0`                                                                                 | Particle lights, mesh density, alpha sorting                             |
| **Large combat**              | Fort Neugrad assault  | `cow WhiterunWorld 15 -5` then run toward the fort                                                   | AI packages, magic FX, simultaneous actor rendering                      |
| **Dragon encounter**          | Set dragon encounter  | `player.placeatme 000FEA9F` on an open-world save                                                    | Large-creature skeleton, shout/breath VFX, cell transition               |
| **Magic VFX stress**          | Dense combat + spells | `cow WhiterunWorld 0 0` then `player.placeatme 000FEA9F` + `player.placeatme 0001F1A` (fire mage) x3 | Simultaneous particle systems, glow shaders, screen-space shadows        |
| **Heavy weather**             | Solstheim ash storm   | `cow SolstheimWorld 0 0` with `fw 10A1E8`                                                            | Particle effects, alpha-heavy weather, volumetric fog                    |

Record these metrics per scenario:

- **Average FPS** — how the GPU handles the scene overall
- **Frametime 99th percentile** — the stutter floor; anything over ~50ms (20 FPS) means visible hitches
- **GPU usage %** — below 90% means the CPU is the bottleneck (too many draw calls, script load, or single-thread limits)
- **VRAM usage** — if within 500MB of your card's total, expect stutter on cell transitions
- **Draw calls** — above ~10,000 in a single frame means the CPU will start struggling regardless of GPU

### Tuning Knobs (Ordered By Impact)

Tune in this order. Stop tuning once the worst-case scenario is playable.

1. **Grass density** (`BethINI > Environment > Grass Density`). 40-60 is the range. This is the single biggest performance lever.
2. **Grass render distance** (`BethINI > View Distance > Grass LOD Fade`). Drop from the High preset default to `50`-`70` for immediate gains in forested areas.
3. **Shadow resolution** (`BethINI > Visuals > Shadow Resolution`). 2048 is the sweet spot; 4096 costs ~15% GPU in outdoor scenes for marginal visual gain at 4K.
4. **Particle count** (`BethINI > Visuals > Max Particle Render Count`). 7500 is the baseline from Step 7; drop to 5000 if fire/frost/storm magic causes framedrops.
5. **Tree LOD distance** (`fTreeLoadDistance=0` via INI Editor, already done for DynDOLOD). Keep at 0 — DynDOLOD manages this.
6. **Object LOD fade** (`BethINI > View Distance > Object LOD Fade`). Drop `fMeshLODLevel2FadeTreeDistance` from default to `6144` and `fMeshLODLevel1FadeTreeDistance` to `8192` if tree pop-in is not the primary visual concern.
7. **VSync / framerate cap** — use `SSE Display Tweaks` for a locked framerate (60 FPS for 60Hz, 72/90/120 for high-refresh displays) rather than the engine's built-in VSync. Set `LockFrameRate=60` and `VSync=0` in `SSEDisplayTweaks.ini`.
8. **Skyrim Upscaler** — if the GPU is the bottleneck and resolution scaling is acceptable, enable `Skyrim Upscaler - DLSS FSR2 XeSS` (<https://www.nexusmods.com/skyrimspecialedition/mods/80343>) with Quality preset.

### When To Accept The Result

- Occasional microstutter on cell border crossing is normal (Engine Fixes already mitigates the worst of it).
- Combat in tight spaces with 6+ actors + magic VFX will always be heavier than open-world traversal — if average FPS stays above 40 in those moments with no hitch above 100ms, call it stable.
- If a specific mod (city overhaul, tree replacement, ENB/CS preset) cuts FPS by 30%+ compared to its alternative in the same branch, consider swapping rather than tuning around it.

### Benchmark Reports

Turn your raw logs into a visual comparison report so you can see at a glance whether a change helped or hurt.

#### CSV Export (Any Logging Tool)

1. Export your benchmark session to CSV. Both **NVIDIA FrameView** (`Save CSV` button in the overlay) and **MSI Afterburner** (`History > Log to file`) produce CSV with consistent column headers.
2. Name each CSV by the scenario and run number, for example `whiterun_grass50_run1.csv`.
3. Keep a `baseline/` subfolder with the very first run's CSVs so you always have a reference point.

#### Spreadsheet Dashboard (Google Sheets / Excel)

1. Import each scenario's CSV into a separate sheet tab. Most loggers emit columns for `Frametime (ms)`, `FPS`, `GPU Usage (%)`, `VRAM (MB)`, `CPU Usage (%)`.
2. Compute these summary cells per tab:
   - `=AVERAGE(FPS_column)` — average FPS
   - `=PERCENTILE(FPS_column, 0.01)` — 1% low FPS (the real playability floor; lower than the 99th percentile frametime in raw frametime terms)
   - `=MAX(Frametime_column)` — worst single hitch
   - `=AVERAGE(GPU_column)` — average GPU load (under 80% = CPU bottleneck)
3. Build a **summary sheet** with one row per scenario and columns for each metric. Side-by-side paste the `Baseline` and `Current` values so changes are obvious at column-comparison distance.
4. Insert a **sparkline** (`=SPARKLINE(current_range, baseline_range)` or simple mini-bar) next to each metric so the eye catches the direction of change before reading numbers.

#### Comparison Table (Markdown, For Git Tracking)

Keep a `benchmark-sheet.md` in the `Output` separator that records each tuning pass as a markdown table:

```
| Pass | Scenario | Avg FPS | 1% Low | GPU% | VRAM | Hitch Max | Delta vs Prev |
|------|----------|---------|--------|------|------|-----------|---------------|
| 1    | Whiterun | 58      | 42     | 92%  | 6.1G | 48ms      | —             |
| 2    | Whiterun | 55      | 38     | 88%  | 6.0G | 62ms      | -3 / -4       |
```

Now every tuning attempt is recorded in git alongside the modlist changes. You can `git diff` the benchmark sheet to see whether a grass-density or shadow-resolution change actually moved the needle.

#### Infographic Snapshot (For Presentation)

When you want a one-page visual summary:

1. Use **Google Sheets > Insert > Chart** to build a grouped bar chart — scenarios on the x-axis, two bars per scenario (Baseline vs Current) for Avg FPS.
2. Overlay a secondary axis with a line series for VRAM usage so the GPU-memory trend is visible in the same chart.
3. Add a **conditional-formatting heatmap** to the summary table: green cells for "improved by >=5%", yellow for "within 5%", red for "regressed by >=5%". This colour-coding gives the infographic feel without any manual charting.
4. Export the sheet as a PDF or PNG (`File > Share > Publish to web` for a live link, or `File > Download > PDF` for a static snapshot). Drop the PNG into the build notes folder.

On your next tuning round, duplicate the sheet, re-import baseline CSVs into a new tab, and the comparison table updates automatically.

## Step 30. Epilogue — Ongoing Maintenance And Patcher Revisits

The load order is not static. Mods update, new mods replace old recommendations, and patchers must be re-run when the input state changes.

### When To Revisit Each Patcher

| Patcher         | Trigger To Re-run                                                                                                                                            | Settings Worth Tweaking                                                                                                                                                                                                                                                                                                        |
|-----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **LOOT**        | Every meaningful load-order change                                                                                                                           | No custom tweaks — keep LOOT as the sort authority                                                                                                                                                                                                                                                                             |
| **Synthesis**   | When any mod it patches is added, removed, or updated. Always re-run after: new weapon/armor packs, leveled-list changes, NPC overhauls, music stack changes | `Weapon Stat Synthesis Patcher` — raise/lower `Damage Ceiling` if combat pacing feels too fast or too slow during survival-difficulty playthroughs. Add new plugins to `Ignore List` when hand-authored artifacts from a new quest mod should not be normalized. Revisit the patcher pipeline order if new patchers are added. |
| **Wrye Bash**   | When a leveled-list-heavy mod is added or removed. Only if a `Bashed Patch` is still part of the strategy.                                                   | No settings worth changing per-run. If the Bashed Patch starts pulling in unintended imports, switch to manually merged leveled lists instead.                                                                                                                                                                                 |
| **Pandora**     | After any animation mod is added, removed, or reordered. After any skeleton or behavior-file change.                                                         | No end-user settings. Keep the output directed to `Pandora Output`.                                                                                                                                                                                                                                                            |
| **BodySlide**   | After body preset, skin texture, armor mod, or outfit changes.                                                                                               | No per-run settings beyond the chosen preset.                                                                                                                                                                                                                                                                                  |
| **Grass Cache** | After grass mod, tree mod, landscape texture, or worldspace changes. Any grass-density INI tweak invalidates the cache.                                      | Rebuild from scratch rather than patching.                                                                                                                                                                                                                                                                                     |
| **xLODGen**     | After landscape texture, heightmap, or worldspace changes. After terrain LOD mod changes.                                                                    | `Quality` slider can be raised per-run if coastline/water-edge artefacts appear.                                                                                                                                                                                                                                               |
| **TexGen**      | After any texture change to objects, trees, or buildings that produces LOD billboards. After tree-mod swaps.                                                 | Revisit `GrassModelHeightMultiplier` and `TreeMSAlphaThreshold` if tree or grass billboards look wrong.                                                                                                                                                                                                                        |
| **DynDOLOD**    | After any worldspace mod, tree mod, large-reference mod, or LOD resource change. After TexGen output changes.                                                | `Brightness` and `Contrast` for LOD32 can be dialled per-run if the distant world looks washed out or too dark. `DoubleSidedTextureMask` needs updating if new mountain/mesh types are added.                                                                                                                                  |

### Change Tracking

Keep a `changelog.txt` or `build-notes.md` inside the `Output` separator that records:

- Date and scope of each generator re-run.
- Settings that differed from the baseline guide.
- Branch choices that changed.
- Any manual ini tweaks applied per-generator.
- The reference-save used for post-change verification.

This saves hours of guesswork when returning to a build months later.

### MCM Settings Recording

MCM configuration is the most tedious part to reproduce on a rebuild. Record every meaningful MCM page once you have the build dialled in:

1. **Screenshot each MCM page** — open each mod's MCM, page through every tab, and screenshot (`Print Screen` or Steam `F12`). Store the screenshots in a folder named `MCM-Reference` under the `Output` separator.
2. **Use MCM Recorder** — Nexus mod <https://www.nexusmods.com/skyrimspecialedition/mods/24113> (MCM Recorder) lets you record and replay MCM settings via JSON profiles. Install it as a utility mod, open each MCM once with recording enabled, and save the profiles alongside the screenshots.
3. **Cross-check on rebuild** — when rebuilding from scratch, replay each MCM profile after the mods are installed but before generating final patches. Tick off the recorded profiles against the screenshot folder to catch any mods that added or lost settings pages since the last build.

Without this, a full rebuild of `Elder Wilds` means re-configuring 20–30 MCM pages from memory, which guarantees missed settings.

### Mod Update Workflow

1. Read the mod's changelog before updating. Do not blindly overwrite.
2. If the update is a minor version with no record or script changes, replace in-place and re-run LOOT.
3. If the update touches records, scripts, or dependencies, treat it as a new install — disable the old version, install the new, run LOOT, check xEdit conflicts, and re-run the affected patchers from the table above.
4. Never update DynDOLOD, TexGen, or xLODGen mid-playthrough without verifying the output is functionally identical. When in doubt, start a new game after LOD regeneration.

### Playing Forward

The modlist's branch-and-choice structure means two installations of `Elder Wilds` can look quite different while following the same guide. The epilogue rule is simple: **whatever you changed, note it, and re-run only the patchers whose upstream input changed.** You do not need to re-run all 8 generators every time you tweak a setting.

## Final Notes

- The cleanest parts of the build are sections `01`, `03`, `04`, `05`, `06`, `13`, and the MO2/tooling workflow.
- The least locked parts are sections `07`, `08`, `09`, `10`, and parts of `11`; keep those explicitly branch-based.
- The biggest trap in the current repo state is treating open research candidates as if they were already cumulative baseline installs.
- If a branch choice changes, rebuild the affected generated outputs instead of trusting stale output.
