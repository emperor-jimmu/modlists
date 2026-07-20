# Setup: Installing SMAPI and Stardrop

This chapter walks through setting up Stardrop and SMAPI, the two tools you need to manage and run Stardew Valley mods. Stardrop is a purpose-built mod manager for Stardew Valley — lightweight, cross-platform, and designed to work seamlessly with SMAPI.

## Prerequisites

- **Stardew Valley 1.6.15** (or latest) installed via Steam or GOG. Run it once before modding so the game generates its initial config files.
- **~2 GB free disk space** for the modlist.
- A free [Nexus Mods](https://nexusmods.com) account — almost every mod in this catalog is hosted there.

## How This Guide Is Structured: The Three-Wave Approach

This guide teaches Stardew Valley in three waves. Each wave adds complexity — install each wave's mods as a group, play with them until you're comfortable, then move on. Installing everything at once will overwhelm you with mechanics you have no context for.

### Wave 1 — Vanilla (Enhanced Quality of Life)

Play your first year (or more) with only **foundations, bugfixes, and UI/HUD mods** installed. The game looks cleaner, runs smoother, and surfaces information better — but every mechanic is pure Stardew Valley. Chapter [02-vanilla-primer.md](02-vanilla-primer.md) teaches all the core systems: farming, mining, fishing, combat, relationships, and the Community Center.

**Wave 1 mod catalog sections:**
[00 — Foundations](03-mod-catalog/00-foundations.md) · [01 — Bugfixes](03-mod-catalog/01-bugfixes.md) · [02 — UI and HUD](03-mod-catalog/02-ui-and-hud.md)

### Wave 2 — Content Expansion

Once vanilla mechanics are second nature, add content mods. These introduce new areas, items, enemies, NPCs, and storylines — but the core game loop (farm → mine → craft → build relationships → repeat) stays intact. Chapter [04-modded-gameplay.md](04-modded-gameplay.md) section "Wave 2" teaches the new systems these mods bring.

**Wave 2 mod catalog sections:**
[03–06 — Graphics](03-mod-catalog/03-graphics-base.md) · [07 — World Expansion](03-mod-catalog/07-world-expansion.md) · [08 — Monsters and Combat](03-mod-catalog/08-monsters-and-combat.md) · [09 — Items and Weapons](03-mod-catalog/09-items-and-weapons.md) · [10 — NPC Interactions](03-mod-catalog/10-npc-interactions.md) · [11 — Grown-Up Town](03-mod-catalog/11-grownup-town.md) · [15 — Music and Audio](03-mod-catalog/15-music-and-audio.md)

### Wave 3 — Gameplay Overhaul

For players who have thoroughly explored Waves 1 and 2 and want deeper mechanical changes. These mods rework skill trees, profession paths, farming systems, and core gameplay balance. They assume you know the game intimately — rebalancing mods won't make sense if you don't know what they changed.

**Wave 3 mod catalog sections:**
[12 — Gameplay Tweaks](03-mod-catalog/12-gameplay-tweaks.md) · [13 — Skills and Professions](03-mod-catalog/13-skills-and-professions.md) · [14 — Farming and Making](03-mod-catalog/14-farming-and-making.md)

## Installing SMAPI

SMAPI (Stardew Modding API) is the loader that lets mods hook into the game. Without it, no mod works.

1. Go to [smapi.io](https://smapi.io/) and download the installer for Windows.
2. Run the installer. It will ask where Stardew Valley is installed:
   - **Steam:** `C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley`
   - **GOG:** `C:\Program Files (x86)\GOG Galaxy\Games\Stardew Valley`
   - **Game Pass:** The WindowsApps folder — use the "find my game" button in the installer.
3. The installer patches `StardewModdingAPI.exe` into your game folder and adds a "play with SMAPI" option to your Steam/GOG launcher.

To verify: run the game via SMAPI. You should see a dark console window open alongside the game with SMAPI version info. If you see that, SMAPI is working.

## Installing Stardrop

Stardrop is an open-source, cross-platform mod manager built specifically for Stardew Valley. Unlike general-purpose mod managers, it integrates directly with SMAPI and the Nexus Mods API — no plugin configuration, no virtual file system to learn.

1. Download the latest release from [Stardrop on Nexus Mods](https://www.nexusmods.com/stardewvalley/mods/10455) (or from the [GitHub releases page](https://github.com/Floogen/Stardrop/releases)).
2. Extract the archive to a folder of your choice. Example: `C:\Games\Stardrop`
3. Run `Stardrop.exe`. On first launch it will ask for your Stardew Valley install folder — point it at your game directory.

### First Launch

1. Stardrop scans your `Mods` folder and loads any existing mods. If you already installed SMAPI from the previous step, you will see it listed.
2. The main window shows a table of your mods with columns for name, version, status, and update availability.
3. Click **Help → Settings** to set up Nexus integration and choose your preferences.

### Connect to Nexus Mods

1. In Stardrop, go to **Nexus Mods → API Connection → Stardrop**.
2. A browser window opens asking you to authorize Stardrop. Log in with your Nexus Mods account and grant access.
3. Copy the API key from the browser back into Stardrop and click **Apply**.
4. Once connected, the **Download with Mod Manager** button on Nexus mod pages will trigger Stardrop to download and install mods automatically.

### Set Up a Profile

Stardrop supports mod profiles — separate mod lists for different playthroughs. Create one for this guide:

1. Click **Profiles → Manage Profiles**.
2. Click **New**, name it `SDV Modlist Guide`, and click **OK**.
3. Check **Automatically save profile changes** so your mod list stays in sync.
4. Select this profile from the dropdown before installing mods.

## Installing Mods

The mod catalog in [03-mod-catalog/](03-mod-catalog/) lists every mod in installation order. Install each category as a group before moving to the next.

### Downloading from Nexus Mods

- Browse to the mod's Nexus page and click **Download with Mod Manager** (the "Vortex" button). Stardrop's NXM handler picks it up automatically.
- If the download doesn't start, check that your API key is valid in **Nexus Mods → API Connection**.
- Stardrop will ask whether to install the mod immediately. Choose **Yes** and it places the mod in your active profile's mod folder.

### Installing Manually

- Click **Add Mods** (or drag and drop a `.zip` file onto the Stardrop window).
- Stardrop extracts the archive and adds it to your mod list. If the archive contains multiple mods (common for framework requirements), Stardrop installs them all at once.

### Enabling and Disabling Mods

- Each mod has a checkbox in the **Enabled** column. Unchecked mods are passed to SMAPI as disabled.
- Use **Shift+click** or **Ctrl+click** to bulk-enable or bulk-disable multiple mods at once.

### Organizing with Mod Groups

Stardrop groups mods by their folder, content pack type, or category. To change the grouping:

1. Click the **Group By** dropdown in the toolbar.
2. Options include:
   - **Folder** — groups mods by their parent directory
   - **Content Pack** — groups mods by the framework they target (CP, JA, etc.)
   - **None** — flat list

For this guide, **Folder** grouping works best since each mod category maps to a clear folder structure.

## Verifying Your Installation

Before diving in, run a quick sanity check:

1. In Stardrop, click the **SMAPI** button (or go to **Mods → Launch SMAPI**).
2. The SMAPI console opens and shows each mod being loaded. Watch for red `ERROR` or yellow `WARN` lines — they indicate broken dependencies or version mismatches.
3. Once the game reaches the title screen, quit. If SMAPI showed no errors, your setup is good.

### Common Issues

| Problem | Fix |
|---------|-----|
| Stardrop says SMAPI is missing | Re-run the SMAPI installer from [smapi.io](https://smapi.io/) |
| Mod shows a red warning for missing dependencies | You missed a required framework mod — check the catalog entry's requirements |
| NXM downloads don't start | Re-authorize your Nexus API key in **Nexus Mods → API Connection** |
| Game crashes on launch | Disable all mods in Stardrop and enable them one category at a time |
| Stardrop won't launch | Install [.NET 8 Runtime](https://dotnet.microsoft.com/download/dotnet/8.0) (required by Stardrop) |
| SMAPI console shows "Skipped" mods | These mods are disabled in Stardrop — enable them via the checkbox |

## Next Steps

With SMAPI and Stardrop ready, move to [02-vanilla-primer.md](02-vanilla-primer.md) for a crash course on playing Stardew Valley. If you already know the basics, jump straight into the mod catalog starting with [01-bugfixes.md](03-mod-catalog/01-bugfixes.md).
