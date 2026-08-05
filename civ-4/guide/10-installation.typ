#import "theme.typ": *

= Installation

_Everything you need to run Beyond the Sword 3.19 with mods — via the CIV 4 – All Mod Chooser, with a full manual fallback._

== Prerequisites

- A working install of _Sid Meier's Civilization IV: Beyond the Sword_ (Steam, GOG, or retail disc).
- The game patched to *3.19* — Steam and GOG versions already ship at 3.19; retail discs need the official 3.19 patch.
- Enough free space for the mods you install (total conversions can be large).

== Check the version (3.19)

The main menu displays the current game version. If it is anything other than 3.19, apply the official 3.19 patch before installing any mods — most modern mods assume it.

== Find the right folders

- Steam: `...\Steam\steamapps\common\Sid Meier's Civilization IV Beyond the Sword\Beyond the Sword\`
- Retail / GOG Complete: `...\Sid Meier's Civilization 4 Complete\Beyond the Sword\` (path varies by install)

All mods live in the *Mods* subfolder: `<BTS>\Mods\`. On Steam, mind the nested `Beyond the Sword` folder — the Mods folder is *inside* it, not in the app root.

== Method A — CIV 4 – All Mod Chooser (recommended)

#info[
  The All Mod Chooser is a community launcher for Civ 4. It manages all game variants (Vanilla, Warlords, Beyond the Sword, Colonization), detects installed mods, and starts the game with the correct launch parameters — no shortcut editing. Recent versions (v2.9 and newer) also handle custom resolutions and windowed mode, which helps on modern displays.
]

=== Download

- Get the current release from the CivFanatics forums: Civ4 → *Creation & Customization* → thread _"Tool - CIV 4 - All Mod Chooser 2025"_ (the thread is updated with new versions; v2.9 is a recent reference).
- Mirror: civforum.de — Civ4 downloads area, maintained by _onkelm_.
- Extract the archive to a permanent location, e.g. `C:\Tools\Civ4ModChooser\`.

=== First-run configuration

1. Start the tool.
2. Point it at your *main Civilization IV installation folder* — the folder that contains the separate game directories (the "Civilization IV Complete" root, or the Steam BTS app root). The chooser needs this to find the Vanilla / Warlords / Beyond the Sword trees.
3. Verify it lists *Beyond the Sword* and the mods present in `<BTS>\Mods\`.

=== Launching a mod

1. Select *Beyond the Sword* as the game variant.
2. Pick the desired mod from the list.
3. Launch — the game starts with the right `mod=` parameter and loads straight into the mod.

To play without a mod, choose "None". Switching between mods is just a relaunch through the chooser.

=== Notes

- If a mod is missing from the list, re-check the path from "First-run configuration" and confirm the mod is installed as in Method B step 1.
- Resolution and windowed-mode options live in the chooser's settings (v2.9+).

== Method B — Manual installation (fallback)

=== Install a mod

1. Download the mod archive (`.zip`, `.rar`, or `.7z`).
2. Extract it so the mod folder lands inside `<BTS>\Mods\`. The result must look like `<BTS>\Mods\ModName\Assets\...` — an `Assets` folder dumped directly into `Mods` is *not* recognized.
3. Read the mod's readme: complex mods sometimes need extra steps.

=== Load a mod

- *In-game:* main menu → *Advanced* → *Load a Mod* → choose the mod → the game restarts with it.
- *Desktop shortcut:* copy a shortcut to `Civilization4BeyondSword.exe` and append `mod=\ModName` to the Target field, e.g. `"C:\...\Beyond the Sword\Civilization4BeyondSword.exe" mod=\ModName`.
- *Steam:* right-click the game → Properties → General → Launch Options → `mod=\ModName`.

=== Back to vanilla

Use *Load a Mod* and pick "None", remove the `mod=` argument from the shortcut or launch options, or just start the game normally.

== Troubleshooting

- *Mod missing from the load list* — wrong folder structure (see "Install a mod"), or you edited the wrong `Mods` folder (see "Find the right folders").
- *Crash when loading a mod* — many total conversions ship their own DLL and require exactly BTS 3.19; confirm the game version (see "Check the version") and the mod's own requirements.
- *Display problems on modern monitors* — use the chooser's custom resolution / windowed mode (v2.9+), the game's own graphics settings, or the *Playing at 4K* section below.
- *Steam nested folders* — double-check that your Mods folder is `<app root>\Beyond the Sword\Mods`, not the app root itself.

== Playing at 4K: fonts and readability

Civ 4's interface was designed for mid-2000s monitors: the UI art (buttons, panels, icons) is fixed-size bitmap graphics that do not scale with resolution, so at 4K the text becomes very small. There is no UI-scale option in the game, and no packaged mod fixes this — but the fonts can be enlarged by hand. Everything in this section is game configuration, not a mod, and does not affect the mod list.

=== Windows High-DPI override (fastest to try)

1. Right-click `Civ4BeyondSword.exe` (in the `<BTS>\` folder) → *Properties* → *Compatibility*.
2. Click *Change high DPI settings* (or tick *Override high DPI scaling behavior*).
3. Tick *Override high DPI scaling behavior* and choose *System* (or *System (Enhanced)* when available).
4. Apply, then relaunch the game.

#info[
  If the game then renders only part of the screen or the mouse misbehaves, run it in *Windowed Mode* — via the graphics options, or by setting `FullScreen = 0` in `CivilizationIV.ini` under `Documents\My Games\Beyond the Sword`.
]

=== Larger fonts via the theme file

1. Back up `<BTS>\Resource\Themes\Civ4\Civ4Theme_Common.thm`.
2. Open it in a text editor (Notepad++ or VS Code).
3. Search for `.Font` (around line 357) and raise the numeric sizes in the `GFont(...)` entries — a bump of 2 to 4 points is the range most players report as usable at 4K (e.g. 12 to 14 or 16).
4. Save and restart the game.

#warn[
  The surrounding UI art does not grow with the text. Large increases make labels overflow their buttons and boxes — keep the bump modest and check every screen.
]

=== City name and production labels

The on-map city billboards use a fixed bitmap font that the theme edit does not touch. In `Assets\XML\Art\CIV4ArtDefines_Misc.xml`, find the `CITY_BILLBOARDS` entry and set `<fScale>` to a negative value such as `-1.0` — a negative value makes the game use the regular interface font for these labels instead.

=== When a mod is loaded

If the active mod ships its own interface theme (most total conversions do), edit that mod's `Resource\Themes\Civ4\Civ4Theme_Common.thm` rather than the base game's — otherwise the game loads the mod's theme and your base-game edit has no effect.

=== Last resort: lower the resolution

Many players simply run the game at 1440p or 1080p (windowed if needed) on a 4K monitor. The UI stays small but readable, and nothing clips. The All Mod Chooser (v2.9+) can set the game's resolution and windowed mode for you.

