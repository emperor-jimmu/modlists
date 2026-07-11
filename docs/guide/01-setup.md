# 01 — Setup: Installing SMAPI and Mod Organizer 2

This chapter walks through setting up Mod Organizer 2 (MO2) and SMAPI, the two tools you need to manage and run Stardew Valley mods. Follow every step in order — skipping ahead is where things break.

## Prerequisites

- **Stardew Valley 1.6.15** (or latest) installed via Steam or GOG. Run it once before modding so the game generates its initial config files.
- **~2 GB free disk space** for the modlist.
- A free [Nexus Mods](https://nexusmods.com) account — almost every mod in this catalog is hosted there.

## Installing SMAPI

SMAPI (Stardew Modding API) is the loader that lets mods hook into the game. Without it, no mod works.

1. Go to [smapi.io](https://smapi.io/) and download the installer for Windows.
2. Run the installer. It will ask where Stardew Valley is installed:
   - **Steam:** `C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley`
   - **GOG:** `C:\Program Files (x86)\GOG Galaxy\Games\Stardew Valley`
   - **Game Pass:** The WindowsApps folder — use the "find my game" button in the installer.
3. The installer patches `StardewModdingAPI.exe` into your game folder and adds a "play with SMAPI" option to your Steam/GOG launcher.

To verify: run the game via SMAPI. You should see a dark console window open alongside the game with SMAPI version info. If you see that, SMAPI is working.

**Do not install mods yet** — MO2 will handle that.

## Installing Mod Organizer 2

MO2 keeps your Stardew Valley install folder clean by virtualising the mod file system. Every mod lives in its own directory inside MO2 — nothing touches the game folder directly.

1. Download the latest release from the [MO2 GitHub releases page](https://github.com/ModOrganizer2/modorganizer/releases).
2. Run the installer. Choose **Portable** when asked — this keeps all mod data inside a single folder (recommended for modlists).
3. Pick an install location outside `Program Files` to avoid permission issues. Example: `C:\Games\Mod Organizer 2`.
4. When the installer asks which game to manage, select **Stardew Valley** (or skip and set it up manually later).

### First Launch

1. Launch MO2. It will open a setup wizard asking for the Stardew Valley executable location. Point it to your game folder.
2. MO2 will ask about Nexus integration. Log in with your Nexus Mods account — this enables "Download with Mod Manager" buttons on Nexus mod pages.
3. You should see the main MO2 window. On the right sidebar, confirm the game is detected as **Stardew Valley**.

## Configuring MO2 for This Modlist

### Create a Profile

1. In the top toolbar, click **Profile** (dropdown) → **<Manage...>**.
2. Create a new profile called `SDV Modlist Guide`. Check "Use profile-specific Game INI Files" — this keeps our tweaks separate from vanilla.
3. Set this profile as default.

### Add SMAPI as an Executable

1. In MO2, click the **Executables** dropdown (top-right, shows "Stardew Valley" by default) → **<Edit...>**.
2. Click the **+** → **Add from file...** → navigate to your Stardew Valley folder and select `StardewModdingAPI.exe`.
3. Name it **SMAPI** and click **OK**.
4. Select **SMAPI** from the executables dropdown — this is what you will always launch through from now on.

### Set Up Separators

Separators are visual dividers in MO2's left panel that keep your load order organised. This guide uses 15 category separators matching the mod catalog chapters. Create them now (or after installing mods):

1. In the left panel, right-click the empty space → **Create separator**.
2. Name it after the mod category (e.g., `=== 01 — Bugfixes ===`).
3. Repeat for all 15 categories listed in [05-mo2-separators.md](05-mo2-separators.md).

Separators don't affect load order — they just keep your list readable.

## Installing Mods

The mod catalog in [03-mod-catalog/](03-mod-catalog/) lists every mod in installation order. Each category should be installed as a group before moving to the next.

### Downloading from Nexus Mods

- Browse to the mod's Nexus page and click **Download with Manager**. MO2 will pick it up automatically.
- If the download doesn't start, check that MO2's Nexus integration is logged in (Tools → Settings → Nexus).

### Installing in MO2

1. In MO2's right panel, double-click the downloaded archive (or select it and click the install icon).
2. MO2 shows a preview of the mod's file structure. Click **OK**.
3. A dialog may warn about overwriting files — click **Replace** only if you are sure the new mod should override. When in doubt, check the mod catalog notes.

### Load Order (Left Panel) vs Plugin Order (Right Panel)

- **Left panel** (mod list): Determines which mod's files win when two mods modify the same game file. Higher = wins.
- **Right panel** (plugins/Content Patcher): Controls SMAPI load order. Higher = loads later, overrides earlier plugins.

For this modlist, the left panel order is what matters most. The mod catalog tells you exactly where each mod should sit.

## Verifying Your Installation

Before diving in, run a quick sanity check:

1. In MO2, select the **SMAPI** executable and click **Run**.
2. The SMAPI console opens and shows each mod being loaded. Watch for red `ERROR` or yellow `WARN` lines — they indicate broken dependencies or version mismatches.
3. Once the game reaches the title screen, quit. If SMAPI showed no errors, your setup is good.

### Common Issues

| Problem                                            | Fix                                                                               |
|----------------------------------------------------|-----------------------------------------------------------------------------------|
| "SMAPI not found" or game launches without console | Re-run the SMAPI installer                                                        |
| MO2 says game executable not found                 | Check MO2's executable settings point to `Stardew Valley.exe` in your game folder |
| Mod has a red X (missing DLL)                      | You missed a required dependency — check the mod catalog entry                    |
| Mod downloads won't start in MO2                   | Re-authenticate Nexus integration in MO2 settings                                 |
| Game crashes on launch                             | Disable all mods and enable them one category at a time                           |

## Next Steps

With SMAPI and MO2 ready, move to [02-vanilla-primer.md](02-vanilla-primer.md) for a crash course on playing Stardew Valley. If you already know the basics, jump straight into the mod catalog starting with [01-bugfixes.md](03-mod-catalog/01-bugfixes.md).
