# Chapter 2: Setup

## Learning Objectives
- Install RimWorld and verify all DLC are active
- Install and configure RimPy Mod Manager
- Navigate the Steam Workshop to find and subscribe to mods
- Understand load order and how RimPy auto-sort works
- Set up mod profiles for different playthroughs

## Installing RimWorld

RimWorld is available exclusively through Steam on Windows. If you haven't installed it yet:

1. Open Steam and search for "RimWorld" in the store.
2. Purchase the base game.
3. Install it through Steam (default location: `C:\Program Files (x86)\Steam\steamapps\common\RimWorld`).
4. Purchase and install the DLCs — Royalty, Ideology, Biotech, Anomaly, and Odyssey. You can install them all at once; you'll choose which to activate per save file.

Before doing anything with mods, launch RimWorld **once in vanilla** (no mods) to verify everything works. From the main menu:
1. Click **New Colony**.
2. The scenario selector will appear — you'll see all your owned DLCs listed as available.
3. Start the tutorial scenario if you've never played before. Or just create any colony to verify the game runs smoothly.
4. Exit the game.

This first launch creates RimWorld's configuration folders, which is what RimPy needs to detect your installation. If you skip this step, RimPy won't be able to find the game.

## Installing RimPy

**RimPy Mod Manager** is a community-built tool that replaces RimWorld's built-in mod manager. It does three things the built-in manager cannot:
1. **Auto-sort** your mod load order correctly with one click.
2. **Warn you** about missing dependencies and known conflicts before you launch the game.
3. **Download mods** from Steam Workshop without needing to launch the game first.

### Installation Steps

1. **Download RimPy.** Go to the [RimPy releases page](https://github.com/rimpy-custom/RimPy/releases). Download the latest release — look for the `.exe` installer or the portable `.zip` file for Windows. As of this writing, the latest version is `RimPy Mod Manager 1.1.x`.
2. **Run the installer.** If you downloaded the `.exe`, double-click to install. If you downloaded the portable `.zip`, extract it to a folder like `C:\RimPy` or your Documents folder. RimPy works from any location.
3. **First launch.** Open RimPy. It may take a moment to scan your Steam library. If it can't find RimWorld automatically, point it to your RimWorld install folder manually through the Settings menu.
4. **Steam integration.** RimPy needs to communicate with Steam to download mods. If you're logged into Steam on the same machine, this should work automatically. If RimPy shows a Steam connection error, restart Steam and try again.

### What You'll See

When RimPy opens, you'll see:
- A list of your subscribed mods on the left.
- Your active mod list (the "load order") on the right.
- Buttons at the top for sorting, saving, and managing profiles.
- Colour-coded dependency warnings if anything is missing.

The interface looks busy on first glance, but you'll mostly use three buttons: **Sort**, **Save**, and **Run**. Everything else is information.

## Navigating the Steam Workshop

All RimWorld mods are hosted on the [Steam Workshop](https://steamcommunity.com/app/294100/workshop/). Here's how to find and subscribe to the ones in this guide:

1. **Open a mod's Workshop page.** Each mod entry in the following chapters includes a clickable name that links to its Workshop URL. The URLs follow the pattern `https://steamcommunity.com/sharedfiles/filedetails/?id=<WORKSHOP_ID>`.
2. **Read the description.** Before subscribing, scroll through the mod's description. Look for:
   - **Required items** — other mods or DLC that must be installed for this mod to work. A mod might say "Requires: Royalty DLC" or "Requires: HugsLib." RimPy also warns you about missing dependencies, but it's good to know before subscribing.
   - **Known incompatibilities** — mods that this one conflicts with. The curated list in this guide avoids known conflicts, but always check if you're adding mods outside the list.
   - **Version compatibility** — every mod in this guide has been verified for RimWorld 1.6. If a mod's Workshop page doesn't mention 1.6, skip it.
3. **Click Subscribe.** The green "Subscribe" button on the Workshop page adds the mod to your Steam library. Steam downloads it automatically in the background. You can see download progress in the Steam client's Downloads page.
4. **Wait for the download.** Some mods are a few kilobytes; others are hundreds of megabytes (especially graphics and sound mods). Give large mods a minute to finish downloading before launching RimPy.
5. **Refresh RimPy.** After subscribing, click the refresh button in RimPy (or restart it) and the new mod appears in your library.

### Collections

Some mod authors create **Workshop Collections** — curated lists of mods that work together. If you see a collection linked from a mod's page, it's worth browsing, but don't blindly subscribe to everything in it. The modlist in this guide is more carefully curated for a beginner's first modded run.

### Scanning for Updates

Steam keeps mods up to date automatically. However, some mods receive updates that change how they work or add new requirements. RimPy will flag mods whose Workshop version doesn't match your local version. If an update breaks your save, RimPy can roll back mods to earlier versions using its backup system.

## Understanding Load Order

When RimWorld starts, it loads mods in a specific sequence from top to bottom. This sequence — the **load order** — is the single most important thing to get right. An incorrect load order causes crashes, broken features, and corrupted saves.

Here's how it works:

- **Mods that define the rules load first.** Harmony (code patching) and HugsLib (shared library) must always be at the very top of your load order. Every mod that uses them expects them to be loaded already. If Harmony isn't first, half your modlist won't work.
- **Frameworks and libraries load next.** Mods like JecsTools, ResearchPal, and Eccentric Tech - Core provide tools that other mods use. They must load before the mods that depend on them.
- **Content mods load last.** Anything that adds items, factions, animals, weapons, or quests. These use the frameworks from above to add their content.
- **Later mods override earlier ones.** If Mod A adds a crafting recipe for a steel sword, and Mod B also adds a recipe for a steel sword, the one from Mod B wins because it loads later. This is called "patching" and is the primary way mods interact — one mod tweaks another's behaviour by loading after it.

This sounds complicated, and it is. **That is why RimPy exists.** RimPy reads every mod's metadata (its dependencies, what it patches, what it conflicts with) and calculates the correct load order automatically. You click one button. It sorts hundreds of mods in seconds. You never need to manually drag mods into position.

If you ever see advice about "just drag Harmony to the top," ignore it — that's advice for people not using RimPy. With RimPy, the auto-sort handles everything, including edge cases you'd never think of on your own.

## Setting Up RimPy

Now that you understand what RimPy does, let's configure it properly.

### Step 1: Verify Your Mod List

Open RimPy. The left panel shows all mods you've subscribed to. The right panel shows your active load order. For a fresh install:

1. Click **Tools → Refresh Mods** (or the refresh icon) to ensure RimPy has the latest list.
2. In the left panel, verify that Harmony and HugsLib appear (if you've subscribed to them yet — if not, they're covered in Chapter 3).
3. Ignore the right panel for now — it's empty because you haven't activated anything yet.

### Step 2: Create a Profile

Profiles let you switch between different mod sets without manually activating and deactivating mods. This is useful for having a separate profile for this guide's modlist versus a vanilla profile for testing.

1. Click the **Profiles** dropdown near the top of RimPy.
2. Select **New Profile**.
3. Name it "Home Among the Stars" or any name you prefer.
4. Click **OK**.

You now have an isolated profile. All mod activations and sorting in this profile won't affect any other profiles. You can create additional profiles later — for example, a "Vanilla" profile with no mods for when you want the pure RimWorld experience.

### Step 3: The Sort Button

The **Sort** button (or Ctrl+S) is RimPy's core feature. It scans every activated mod, determines the correct load order, and rearranges them:

1. Activate a few mods by double-clicking them in the left panel (they move to the right panel). Or activate all mods in your current profile.
2. Click **Sort**.
3. RimPy displays a green checkmark if the sort succeeds, or a red warning with a description of what went wrong (missing dependency, version conflict, etc.).

Read the warnings. RimPy's error messages are specific and actionable — it will tell you exactly which mod is missing a dependency and what that dependency is.

### Step 4: Save and Run

After sorting:
1. Click **Save** (or Ctrl+S again) to save the current load order to your profile.
2. Click **Run** to launch RimWorld with this load order.

RimWorld will start up. You'll see the main menu with a "Mods" button. Click it to verify your mod list — it should match what you set up in RimPy. If a mod is missing, go back to RimPy, refresh, and check that you're subscribed.

### RimPy Quick Reference

| Action | How |
|--------|-----|
| Sort load order | Click **Sort** button (or Ctrl+S) |
| Save profile | Click **Save** |
| Launch game | Click **Run** |
| Refresh mod list | Click **Refresh** (circular arrow icon) |
| Activate/deactivate a mod | Double-click it |
| Search mods | Type in the search bar above the left panel |
| Check for updates | RimPy shows an orange update icon on outdated mods |
| Reorder manually | Drag mods in the right panel (but auto-sort is better) |

## Your First Mod Install

Let's walk through installing one mod from start to finish. We'll use **Harmony** as the example because nearly every mod in this guide depends on it.

### Step 1: Subscribe on Steam Workshop

1. Open the [Harmony Workshop page](https://steamcommunity.com/sharedfiles/filedetails/?id=2009463077) in your browser.
2. Click the green **Subscribe** button.
3. Steam will download Harmony in the background. The download is tiny (under 1 MB) — it should complete almost immediately.
4. Verify in the Steam client's **Downloads** page that the download finished.

### Step 2: Activate in RimPy

1. Open (or switch to) RimPy.
2. Click **Refresh** if Harmony doesn't appear in your mod list.
3. Double-click **Harmony** in the left panel. It moves to the right panel — it's now active on your current profile.
4. Click **Sort**. Since it's the only mod active, the sort is trivial.
5. Click **Save**.

### Step 3: Launch and Verify

1. Click **Run** in RimPy to launch RimWorld.
2. At the main menu, click the **Mods** button. You should see Harmony listed and active.
3. If it's marked with a green checkmark or no error indicator, it's loaded correctly.
4. Start a new colony and look at the debug log (Ctrl+` to open the console). You should see Harmony's startup message confirming it initialised. If there are any red error lines, note them and check the troubleshooting section in Chapter 15.
5. Exit RimWorld.

That's the complete install flow for one mod. Every mod in subsequent chapters follows the same pattern: **Subscribe → Refresh in RimPy → Activate → Sort → Save → Run.** You'll get fast at it.

Repeat this process for HugsLib (Workshop ID `818773962`) as a second exercise. Harmony + HugsLib are the "always installed" pair — they form the foundation everything else builds on.

### Before Moving On

At this point you should have:
- RimWorld installed and launched once in vanilla mode.
- RimPy Mod Manager installed and able to see your mods and launch RimWorld.
- Harmony installed and verified as working.
- A basic understanding of the Workshop → RimPy → Sort → Launch pipeline.

Don't worry about subscribing to every mod yet — each chapter will introduce mods as you read, and you'll install them one group at a time. The goal is to build your modlist progressively, understanding what each mod adds before installing the next one.

## Next Steps
Proceed to [Chapter 3: Framework](chapter-03-framework.md).
