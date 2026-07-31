# Installation Guide

Getting mods working in Baldur's Gate 3 is straightforward once you understand the tools. This guide will walk you through installing BG3 Mod Manager, setting up your mods, and configuring everything for both waves of Mythic Crucible. Follow the steps in order, and you'll be playing within minutes.

## Installing BG3 Mod Manager

BG3 Mod Manager (BG3MM) is the community-standard tool for managing BG3 mods. It's a standalone program that lives outside the game and handles downloading, activating, and ordering your mods.

### Step 1: Download

Head to the official GitHub releases page:

**https://github.com/LaughingLeader/BG3ModManager/releases**

Download the latest `.zip` file from the top of the releases list. Don't grab the source code — you want the pre-built release. The latest version as of this writing fully supports Patch 8.

### Step 2: Install

Extract the `.zip` to a folder of your choice — something like `C:\Games\BG3ModManager\`. Do NOT put it inside your Baldur's Gate 3 game directory. It needs to live separately.

Run `BG3ModManager.exe`. You'll probably get a Windows SmartScreen warning because the tool isn't signed — click *More Info* and then *Run Anyway*. It's safe; this is an open-source project used by tens of thousands of players.

### Step 3: Point It at Your Game

The first time you launch BG3MM, it will ask you where Baldur's Gate 3 is installed. For most Steam users, that's:

`C:\Program Files (x86)\Steam\steamapps\common\Baldurs Gate 3\`

For GOG users: `C:\Program Files (x86)\GOG Galaxy\Games\Baldurs Gate 3\`

Point it at the folder containing `bg3.exe` or `bg3_dx11.exe`. Once it finds the game, it will detect your game version and show an empty mod list (if this is your first time).

### Step 4: Check Your Setup

Open **Settings > Preferences** (or click the gear icon) and verify two things:

- **Game Data Path** should point to your BG3 `Data` folder. BG3MM usually detects this correctly on its own.
- **Mods Directory** should default to `%LocalAppData%\Larian Studios\Baldur's Gate 3\Mods\`. Keep this — it's where the game looks for mods.

Click **Settings > Open Mods Folder** to confirm the directory exists and is accessible.

### Step 5: Create Your Profiles

Profiles let you maintain different mod sets for different playthroughs. At the top of BG3MM, you'll see a dropdown. Click it and create two profiles:

1. **Mythic Crucible — Wave 0** (for your beginner playthrough)
2. **Mythic Crucible — Wave 1** (for your experienced playthrough)

Switch between them using the dropdown. Each profile remembers its own mod list and load order — your Wave 0 save won't be affected when you switch to Wave 1.

---

## Downloading and Installing Mods

### Getting Mods from Nexus Mods

Every mod in this guide has a direct Nexus Mods link. Here's the flow for each one:

1. Click the mod's link in the guide. It opens the mod's Nexus page.
2. Go to the **Files** tab at the top of the page.
3. Click **Manual Download** on the main file. Some mods have multiple files — read the description to pick the right one (occasionally there's a Patch 8-specific version).
4. If asked, choose **Slow Download** (free) or **Fast Download** (Premium).
5. Most files download as `.pak` files — that's the mod. If it downloads as a `.zip`, extract it to find the `.pak` file inside.

### Adding Mods to BG3MM

1. Drag the `.pak` file from your Downloads folder directly into the BG3MM window. Alternatively: **File > Import Mod** and browse to the file.
2. The mod appears in the *Inactive Mods* list on the right.
3. Drag it to the *Active Mods* list on the left, or double-click it. It's now active.

### Load Order Basics

The order of mods in the *Active Mods* list (top to bottom) is your load order. Mods loaded earlier are foundations; mods loaded later can override them. The recommended load order for Mythic Crucible is in `guide/06-load-order.md` — follow that exactly.

To reorder: drag mods up or down in the list. To save: **File > Save Order** (Ctrl+S). This saves inside BG3MM, but does NOT tell the game about your changes yet.

### Exporting to the Game

This is the most common mistake new users make. After changing your mod list, you MUST export:

1. Click **File > Export Order to Game** (or the Export button in the toolbar).
2. This writes your load order to the game's `modsettings.lsx` file. Until you do this, Baldur's Gate 3 doesn't know your mods exist.
3. Export every single time you add, remove, or reorder a mod.

### Verifying Mods Are Active

Launch Baldur's Gate 3. On the main menu, click **Mod Manager** (the in-game one, separate from BG3MM). You should see all your active mods listed. If anything is missing:

- Go back to BG3MM and check the mod is in the Active Mods list.
- Click **Export Order to Game** again.
- Restart BG3.

**Important:** Don't enable or disable mods in the in-game Mod Manager — it can conflict with BG3MM. Use BG3MM exclusively for all mod management.

### Troubleshooting

| Problem | What It Usually Means | How to Fix It |
|---------|----------------------|---------------|
| Game crashes when launching | Load order conflict, or a mod is incompatible with Patch 8 | Disable all mods, verify game launches vanilla. Re-enable one at a time. Check the mod's Nexus page for Patch 8 complaints. |
| Mod doesn't appear in-game | You forgot to export, or the mod is in the wrong order | Export from BG3MM. Restart game. Check Active Mods list. |
| Save file won't load | A mod that was active when you saved is now missing | Re-enable the missing mod, or start a new game. Never remove mods mid-playthrough unless the author says it's safe. |
| "Mod mismatch" warning | Only relevant if playing multiplayer with someone who has different mods | Ignore for single player. |
| BG3MM says "Game not found" | Wrong game path in settings | Settings > Preferences > Game Data Path. Point to BG3's `Data` folder. |
| `.pak` file won't import | Either the download is corrupted, or you're trying to import a `.zip` instead of a `.pak` | Re-download. Make sure you've extracted the `.zip` if the mod came in one. |

### Mod Safety Rules

Three rules to protect your saves:

1. **Never remove mods mid-playthrough.** Some mods can be safely removed, but unless the mod author explicitly states it's safe, assume it isn't. Removing mods can corrupt your save files.
2. **Always export after changing mods.** The game reads `modsettings.lsx` once at launch. If you forget, your changes won't take effect until you export and restart.
3. **Back up your saves.** Before installing a large new mod set, copy your save folder somewhere safe. Saves are at: `%LocalAppData%\Larian Studios\Baldur's Gate 3\PlayerProfiles\<YourProfile>\Savegames\Story\`

---

## Setting Up Each Wave

### Wave 0 — Your First Playthrough

1. In BG3MM, select the **Mythic Crucible — Wave 0** profile from the top dropdown.
2. Download every mod listed in `guide/03-wave-0-modlist.md`.
3. Import each `.pak` into BG3MM. Drag them all into the Active Mods list.
4. Arrange them in the exact order shown in `guide/06-load-order.md` (Wave 0 section).
5. Save the order (Ctrl+S), then Export to Game.
6. Launch BG3. Start a New Game. You're ready for *First Steps into Faerun*.

### Wave 1 — After Completing Wave 0

1. In BG3MM, switch to the **Mythic Crucible — Wave 1** profile.
2. You need ALL Wave 0 mods AND ALL Wave 1 mods (from `guide/05-wave-1-modlist.md`).
3. Import everything. Arrange in the Wave 1 load order from `guide/06-load-order.md`. Note: Wave 0 mods stay in their original order at the top. Wave 1 mods append below them.
4. Save and Export.
5. **Start a completely new game.** Wave 1 mods require a fresh save — many add content that only initializes during character creation or at game start. Your Wave 0 save remains intact, loaded under the Wave 0 profile.

### Switching Between Profiles

Simply select the profile you want from the dropdown in BG3MM, export to game, and launch. Your Wave 0 saves will only load when the Wave 0 mod set is active, and your Wave 1 saves will only load under Wave 1. You can freely switch between them — neither affects the other.
