# Installation Guide

This document covers everything needed to set up the toolchain and environment for Elder Wilds. The section index and project scope live in [`modlist.md`](modlist.md).

## Pre-Installation: Steam, Skyrim, And Creation Kit

### Steam & Skyrim Setup

1. Install Steam and Skyrim SE/AE outside `Program Files`, ideally under a shallow path such as `C:\Games\Skyrim Special Edition`.
2. Confirm the game is on runtime `1.6.1170`. The **Anniversary Upgrade** is not used.

#### Configure Steam

- **Disable the Steam Overlay**: In Steam, go to **Steam > Settings > In-Game** and uncheck "Enable the Steam overlay while in-game." Alternatively, disable it per-game: right-click **The Elder Scrolls V: Skyrim Special Edition** in your library, select **Properties**, and uncheck "Enable the Steam Overlay while in-game."
- **Update-proof Skyrim**: In Steam, right-click **The Elder Scrolls V: Skyrim Special Edition > Properties > Updates**, set **Automatic Updates** to **"Wait until I launch the game."** Updates will not trigger when launching through MO2 via SKSE. If an update slips through, use the [Skyrim downgrade patcher](https://www.nexusmods.com/skyrimspecialedition/mods/32698/) to roll back.

#### Vanilla Skyrim First Launch

Launch Skyrim Special Edition through Steam to open the default launcher: click **Options**, select the **Ultra** preset, set **Aspect Ratio** and **Resolution** to your monitor's optimal values, set **Antialiasing** to **Off** (prepares for Community Shaders), ensure **Windowed Mode** is unchecked, click **OK** to save, and exit the launcher.

#### Install The Creation Kit

- **Skyrim Special Edition: Creation Kit** (<https://store.steampowered.com/app/1946180/Skyrim_Special_Edition_Creation_Kit/>): Download and install via Steam. Launch the Creation Kit through Steam to allow the **Scripts** folder to extract (automatic on first launch). Exit once loaded. Download the pre-made [`CreationKitCustom.ini`](https://lexyslotd.com/guide/common-tasks/#creation-kit-ini) and extract it to the Skyrim root folder. This configures the CK to allow multiple masters and load DLC content. If the CK crashes on first launch, add an [outbound firewall rule](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-firewall/create-an-outbound-port-rule) for `CreationKit.exe`.

- **Creation Kit Platform Extended** (<https://www.nexusmods.com/skyrimspecialedition/mods/71371>): Download **CK Platform Extended 0.6-b550** and extract directly into the main Skyrim Special Edition folder — NOT into a sub-folder.

#### Create Modding Folders And Install Core Tools

Create a separate modding path with sub-folders (e.g., `C:\Modding` and `C:\Modding\Tools`) and install the tools from the toolchain list below into `C:\Modding\Tools`.

### FOMOD Plus Installation

Install **FOMOD Plus - A Mod Installation Overhaul for Mod Organizer 2** (<https://www.nexusmods.com/skyrimspecialedition/mods/141001>) after MO2 setup: extract the archive contents directly into your MO2 installation folder, merging the `plugins` folder. Restart MO2 — FOMOD Plus activates automatically, adding a `FOMOD` column in the left pane and a `FOMOD` tab on the right pane.

## Core Setup Goals

- Build and maintain `Elder Wilds` through `Mod Organizer 2` with clean separators and reproducible generated output
- Keep the setup aligned to Steam runtime `1.6.1170`
- Separate source mods, generated outputs, patches, and downloads clearly enough that rebuilds and troubleshooting stay manageable

## Recommended Base Toolchain

- [`Mod Organizer 2`](https://www.nexusmods.com/skyrimspecialedition/mods/6194) as the main mod manager and profile system
- [`SKSE64`](https://skse.silverlock.org/) and [`Address Library for SKSE Plugins`](https://www.nexusmods.com/skyrimspecialedition/mods/32444) as the runtime baseline
- [`SSEEdit`](https://www.nexusmods.com/skyrimspecialedition/mods/164) for conflict review, patch inspection, cleaning guidance, and record-level troubleshooting
- [`Wrye Bash`](https://www.nexusmods.com/skyrimspecialedition/mods/6837) for later leveled-list and compatibility review where it still adds value
- [`Synthesis`](https://www.nexusmods.com/skyrimspecialedition/mods/140863) for selective patcher-based automation once the stack is stable enough to justify it
- [`Cathedral Assets Optimizer`](https://www.nexusmods.com/skyrimspecialedition/mods/23316) for asset cleanup and conversion tasks when a mod actually needs it
- [`BethINI Pie`](https://www.nexusmods.com/skyrimspecialedition/mods/153026) for baseline INI management and graphics/settings normalization
- [`Skyrim Special Edition: Creation Kit`](https://store.steampowered.com/app/489490/Skyrim_Special_Edition_Creation_Kit/) for resaving LE plugins to SE format; used alongside [`Creation Kit Platform Extended`](https://www.nexusmods.com/skyrimspecialedition/mods/71371) for stability
- [`xLODGen`](https://www.nexusmods.com/skyrimspecialedition/mods/10202), [`TexGen`](https://www.nexusmods.com/skyrimspecialedition/mods/68547), and [`DynDOLOD`](https://www.nexusmods.com/skyrimspecialedition/mods/68547) for terrain/object/tree distant detail workflow
- `BodySlide and Outfit Studio` and `Pandora Behaviour Engine Plus` are installed as regular mods — see → [Characters & Creatures](modlist-graphics-characters.md) (BodySlide) and → [Animations](modlist-animations.md) (Pandora). They are still registered as MO2 executables (see tool registration below).

## Mod Organizer 2 Setup

- Follow STEP's standalone-folder approach: keep the game under a shallow custom path such as `C:\Games\Steam\steamapps\common\Skyrim Special Edition` and keep modding tools under a separate path such as `C:\Modding\Tools`.
- Install `Mod Organizer 2` as a standalone application under `C:\Modding\Tools\Mod Organizer` rather than inside the game folder.
- On first launch, create a **global instance**, select the Steam *Skyrim Special Edition* install, and name the instance something obvious like *Elder Wilds 1.6.1170*.
- If MO2 prompts for profile settings during instance creation, tick every box so the profile keeps its own `INI` files and game-specific settings.
- Connect MO2 to Nexus during first launch and let MO2 handle `nxm` links.
- In *Settings > Workarounds*, tick **Enable archives parsing (experimental)** so MO2 reports asset conflicts more reliably.
- Create at least one clean working profile before major category testing, and keep separators aligned to this repo's structure in `separators.md`.
- Keep generated outputs in their own enabled mods, never mixed into source mod folders.

## Output Mods To Create In MO2

Before registering tools, create these empty mods in MO2 under the `Output` separator:

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

## SKSE64 Installation

- Follow STEP's split install pattern for `SKSE64` on Steam runtime `1.6.1170`: install the two root files into the Skyrim game folder, but manage the `Data` portion through MO2 as its own mod.
- Use the current AE `1.6.1170` build of `SKSE64`, not an older AE build and not a GOG/VR variant.
- Copy `skse64_loader.exe` and the matching `skse64_1_6_1170.dll` from the archive into the Skyrim root folder next to `SkyrimSE.exe`.
- In MO2, create an empty mod named `SKSE Scripts`, then copy the archive's `Data\Scripts` folder into that mod so the script portion stays visible and manageable in the left pane.
- If an `SKSE\skse.ini` is needed later, place it inside the `SKSE Scripts` mod rather than writing directly into the game folder. Minimal modern baseline:

```ini
[General]
ClearInvalidRegistrations=1

[Display]
iTintTextureResolution=2048
```

- Register `skse64_loader.exe` in MO2 as the `SKSE Skyrim Launcher` executable and launch the game through that entry after the vanilla initialization step.
- Community troubleshooting on `r/skyrimmods` still clusters around the same mistakes: wrong runtime build, root files copied into the wrong folder, scripts not installed as a mod, or launching outside MO2. Guard against those explicitly.

## Register Tools In MO2

- Open MO2's executable editor from the gear icon and add each tool with **Add from file...**.
- Tick **Use application's icon for desktop shortcuts** for each entry so shortcuts remain readable.
- For tools that generate files, tick **Create files in mod instead of overwrite** and point them at the correct output mod.
- Arrange the executables in a stable order so the dropdown reflects the real workflow instead of becoming random over time.

### MO2 Executable Reference

| Tool                   | Executable                          | Arguments                                                             | Output Handling                         | Notes                                                                                                          |
|------------------------|-------------------------------------|-----------------------------------------------------------------------|-----------------------------------------|----------------------------------------------------------------------------------------------------------------|
| `BethINI Pie`          | `Bethini.exe`                       | none                                                                  | none                                    | Run through MO2 so it edits the active profile INIs instead of global game INIs.                               |
| `LOOT`                 | `LOOT.exe`                          | `--game="Skyrim Special Edition"`                                     | none                                    | If LOOT fails through MO2, use `--single-process --game="Skyrim Special Edition"`.                             |
| `SKSE Skyrim Launcher` | `skse64_loader.exe`                 | none                                                                  | `SKSE Output`                           | Use this to launch the game after the root files are in the game folder and the `SKSE Scripts` mod is enabled. |
| `xEdit`                | `xEdit.exe`                         | `-SSE -IKnowWhatImDoing -AllowMasterFilesEdit`                        | `xEdit Output`                          | Main conflict review and manual patching entry.                                                                |
| `xEditQuickAutoClean`  | `xEditQuickAutoClean.exe`           | `-SSE`                                                                | `xEdit Output`                          | Only use for plugins LOOT explicitly flags for cleaning.                                                       |
| `xLODGen`              | `xLODGenx64.exe`                    | `-lodgen -SSE -o:"DriveLetter:\Modding\Tools\xLODGen\xLODGen_Output"` | `Terrain LOD Output`                    | Replace `DriveLetter` with the actual drive letter used for the modding folder.                                |
| `TexGen`               | `TexGen64.exe`                      | `-SSE`                                                                | `TexGen Output`                         | Keep output isolated and pack it into the dedicated mod immediately after generation.                          |
| `DynDOLOD`             | `DynDOLODx64.exe`                   | `-SSE`                                                                | `DynDOLOD Output`                       | Keep output isolated and enable `DynDOLOD.esm` / `DynDOLOD.esp` after generation.                              |
| `Wrye Bash`            | `Wrye Bash.exe`                     | none                                                                  | dedicated patch/output mod if used      | Register only if the list still needs a **Bashed Patch** or leveled-list review pass.                            |
| `Synthesis`            | `Synthesis.exe`                     | none                                                                  | dedicated patch/output mod if used      | Give it its own output mod once the final patcher set is known.                                                |

### MO2 Operating Rules

- Launch the game through `SKSE`, not through Steam or the stock launcher, after the vanilla initialization step is complete.
- Run `LOOT` before gameplay tests and before any major cleaning or conflict-review pass.
- Use `xEditQuickAutoClean` only for plugins LOOT explicitly marks as needing cleaning.
- Use `xEdit` after each major category to review conflicts instead of waiting until the whole list is assembled. The `Patching Technique And Strategy` section in [`modlist-foundations.md`](modlist-foundations.md) defines the workflow to follow from the first mod.
- Treat the `Overwrite` folder as a failure state; if files appear there, either move them into the proper output mod or fix the executable configuration that produced them.
- Rebuild generated outputs after major changes to bodies, animations, grass, LOD, or other systems that produce artifacts.
- Document manual fixes, custom arguments, and tool-specific decisions directly in this repository so the plan stays reproducible.
