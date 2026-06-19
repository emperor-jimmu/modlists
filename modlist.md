# Elder Wilds

Target build: Skyrim Special Edition / Anniversary Edition runtime `1.6.1170` via Steam

Scope notes:

- No paid Anniversary Edition Creation Club content
- Research categories are organized around five pillars: modern graphics, expanded systems, modernized UI, immersive world scale, and third-person-first gameplay
- This modlist is also built around `Legacy of the Dragonborn` as a major collection, museum, and patch-ecosystem pillar rather than treating it as an optional side add-on

## Setup And Installation Guide

### Core Setup Goals

- Build and maintain `Elder Wilds` through `Mod Organizer 2` with clean separators and reproducible generated output
- Keep the setup aligned to Steam runtime `1.6.1170`
- Separate source mods, generated outputs, patches, and downloads clearly enough that rebuilds and troubleshooting stay manageable

### Recommended Base Toolchain

- `Mod Organizer 2` as the main mod manager and profile system
- `SKSE64` and `Address Library for SKSE Plugins` as the runtime baseline
- `SSEEdit` for conflict review, patch inspection, cleaning guidance, and record-level troubleshooting
- `Wrye Bash` for later leveled-list and compatibility review where it still adds value
- `Synthesis` for selective patcher-based automation once the stack is stable enough to justify it
- `Cathedral Assets Optimizer` for asset cleanup and conversion tasks when a mod actually needs it
- `BethINI Pie` for baseline INI management and graphics/settings normalization
- `xLODGen`, `TexGen`, and `DynDOLOD` for terrain/object/tree distant detail workflow
- `BodySlide and Outfit Studio` for the chosen body pipeline
- `Pandora Behaviour Engine Plus` for animation behavior generation

### Mod Organizer 2 Setup

- Follow STEP's standalone-folder approach: keep the game under a shallow custom path such as `C:\Games\Steam\steamapps\common\Skyrim Special Edition` and keep modding tools under a separate path such as `C:\Modding\Tools`.
- Install `Mod Organizer 2` as a standalone application under `C:\Modding\Tools\Mod Organizer` rather than inside the game folder.
- On first launch, create a `global instance`, select the Steam `Skyrim Special Edition` install, and name the instance something obvious like `Elder Wilds 1.6.1170`.
- If MO2 prompts for profile settings during instance creation, tick every box so the profile keeps its own `INI` files and game-specific settings.
- Connect MO2 to Nexus during first launch and let MO2 handle `nxm` links.
- In `Settings > Workarounds`, tick `Enable archives parsing (experimental)` so MO2 reports asset conflicts more reliably.
- Create at least one clean working profile before major category testing, and keep separators aligned to this repo's structure in `separators.md`.
- Keep generated outputs in their own enabled mods, never mixed into source mod folders.

### Output Mods To Create In MO2

- Create empty mods named `xEdit Output`, `SKSE Scripts`, `SKSE Output`, `TexGen Output`, `DynDOLOD Output`, and `Terrain LOD Output` before tool registration.
- Keep these output mods near the top or in a dedicated generated-output block so rebuild products are easy to replace and audit.
- Add more dedicated output mods only when a tool truly generates persistent files that should not land in `Overwrite`.

### SKSE64 Installation

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
- Community troubleshooting on `r/skyrimmods` still clusters around the same mistakes: wrong runtime build, root files copied into the wrong folder, scripts not installed as a mod, or launching outside MO2. The guide should guard against those explicitly.

### Register Tools In MO2

- Open MO2's executable editor from the gear icon and add each tool with `Add from file...`.
- Tick `Use application's icon for desktop shortcuts` for each entry so shortcuts remain readable.
- For tools that generate files, tick `Create files in mod instead of overwrite` and point them at the correct output mod.
- Arrange the executables in a stable order so the dropdown reflects the real workflow instead of becoming random over time.

### MO2 Executable Reference

| Tool | Executable | Arguments | Output Handling | Notes |
| --- | --- | --- | --- | --- |
| `BethINI Pie` | `Bethini.exe` | none | none | Run through MO2 so it edits the active profile INIs instead of global game INIs. |
| `LOOT` | `LOOT.exe` | `--game="Skyrim Special Edition"` | none | If LOOT fails through MO2, use `--single-process --game="Skyrim Special Edition"`. |
| `SKSE Skyrim Launcher` | `skse64_loader.exe` | none | `SKSE Output` | Use this to launch the game after the root files are in the game folder and the `SKSE Scripts` mod is enabled. |
| `xEdit` | `xEdit.exe` | `-SSE -IKnowWhatImDoing -AllowMasterFilesEdit` | `xEdit Output` | Main conflict review and manual patching entry. |
| `xEditQuickAutoClean` | `xEditQuickAutoClean.exe` | `-SSE` | `xEdit Output` | Only use for plugins LOOT explicitly flags for cleaning. |
| `xLODGen` | `xLODGenx64.exe` | `-lodgen -SSE -o:"DriveLetter:\Modding\Tools\xLODGen\xLODGen_Output"` | `Terrain LOD Output` | Replace `DriveLetter` with the actual drive letter used for the modding folder. |
| `TexGen` | `TexGen64.exe` | `-SSE` | `TexGen Output` | Keep output isolated and pack it into the dedicated mod immediately after generation. |
| `DynDOLOD` | `DynDOLODx64.exe` | `-SSE` | `DynDOLOD Output` | Keep output isolated and enable `DynDOLOD.esm` / `DynDOLOD.esp` after generation. |
| `Wrye Bash` | `Wrye Bash.exe` | none | dedicated patch/output mod if used | Register only if the list still needs a `Bashed Patch` or leveled-list review pass. |
| `Synthesis` | `Synthesis.exe` | none | dedicated patch/output mod if used | Give it its own output mod once the final patcher set is known. |
| `BodySlide` | `BodySlide x64.exe` | none | dedicated body/output mod | Run through MO2 so mesh output respects the active profile and selected body stack. |
| `Pandora` | `Pandora Behaviour Engine Plus.exe` | none | dedicated behavior/output mod if needed | Run through MO2 so behavior generation sees the real virtualized animation stack. |

### MO2 Operating Rules

- Launch the game through `SKSE`, not through Steam or the stock launcher, after the vanilla initialization step is complete.
- Run `LOOT` before gameplay tests and before any major cleaning or conflict-review pass.
- Use `xEditQuickAutoClean` only for plugins LOOT explicitly marks as needing cleaning.
- Use `xEdit` after each major category to review conflicts instead of waiting until the whole list is assembled. Detailed patching technique and strategy lives in the `Patching Technique And Strategy` subsection of `modlist-15.md`.
- Treat the `Overwrite` folder as a failure state; if files appear there, either move them into the proper output mod or fix the executable configuration that produced them.
- Rebuild generated outputs after major changes to bodies, animations, grass, LOD, or other systems that produce artifacts.
- Document manual fixes, custom arguments, and tool-specific decisions directly in this repository so the plan stays reproducible.

## Research Workflow

- Work through one category at a time
- For each category, define goals, constraints, candidate mods, compatibility risks, and acceptance criteria
- Do not lock final picks until foundations, graphics baseline, animation framework, and UI framework are validated together
- Prefer mods with active maintenance, clear Steam `1.6.1170` support, strong patch ecosystem, and stable load-order behavior

## Section Index

Each second-level section of the plan now lives in its own numbered file. The companion file [mods-checklist.md](mods-checklist.md) lists every referenced mod with its Nexus URL as a download checklist. The file [separators.md](separators.md) is the canonical ordered reference for `Mod Organizer 2` separators derived from this structure.

- [Foundations and Compatibility](modlist-01.md)
- [Modern Graphics](modlist-02.md)
- [Animations and Movement](modlist-03.md)
- [Third-Person Gameplay](modlist-04.md)
- [Expanded Systems](modlist-05.md)
- [Modernized UI](modlist-06.md)
- [Immersive Scale and World Feel](modlist-07.md)
- [World Content](modlist-08.md)
- [NPCs and Creatures](modlist-09.md)
- [Audio and Feedback](modlist-10.md)
- [Survival, Difficulty, and Balance](modlist-11.md)
- [Targeted Bugfix Mods](modlist-12.md)
- [Legacy of the Dragonborn](modlist-13.md)
- [Modlist Curation Rules and Testing Plan](modlist-14.md)
- [Performance and Technical Workflow](modlist-15.md)
- [Adult Content](modlist-16.md)
