// 02-installation.typ -- Full ME3Tweaks Installation Guide

#pagebreak()
#import "lib.typ": callout

= Installation

This chapter walks you through setting up the complete ME3Tweaks modding
toolchain for Mass Effect Legendary Edition. Follow every step in order
before installing any mods.

== System Requirements

Before you begin, ensure you meet these requirements:

- *Mass Effect Legendary Edition* installed via Steam, EA App, or Origin.
  The game installation is approximately 120 GB.
- *Windows 10 or 11* (64-bit). ME3Tweaks Mod Manager is Windows-only.
- *Administrator privileges* are recommended for installing tools and
  creating backups.

#callout("warning")[
  *Disk Space Warning.* A full game backup requires an additional
  approximately 120 GB of free disk space. Combined with the game
  installation and mod files, we recommend at least 250 GB of free
  space before you begin. Do not skip the backup step.
]

== Downloading ME3Tweaks Mod Manager

ME3Tweaks Mod Manager is the primary tool for installing and managing
mods for Mass Effect Legendary Edition. It handles DLC-based mod
installation, texture management via Mass Effect Modder, and game
configuration.

1. Visit the official ME3Tweaks Mod Manager page:
   #link("https://github.com/ME3Tweaks/ME3TweaksModManager/releases")[ME3Tweaks Mod Manager Releases]

2. Download the latest release (the `.exe` installer, not the source code).
   As of 2026, version 8.x or later is recommended.

3. Run the installer and follow the prompts. Accept the default
   installation location unless you have a specific reason to change it.

== First-Launch Setup

When you launch ME3Tweaks Mod Manager for the first time:

1. The application will auto-detect your Mass Effect Legendary Edition
   installation. If it does not, point it to the game directory manually.

2. ME3Tweaks includes several bundled tools. Confirm that Mass Effect
   Modder (MEM) is available -- it will appear as a tab or menu option
   within the main interface.

3. The first launch may prompt you to update various components.
   Allow all recommended updates to complete.

4. Familiarize yourself with the main interface:
   - *Mod Management* tab: where you install, enable, and manage DLC mods.
   - *Mass Effect Modder* tab: where you install texture mods (MEM files).
   - The mod list shows installed mods in the order they were added.
     This order is your effective install sequence.

== Toolchain Overview

ME3Tweaks Mod Manager bundles several essential tools. Here is what
each one does:

- *ME3Tweaks Mod Manager* -- The central hub. It installs mods as DLC
  packages into the game's DLC directory, manages the install sequence,
  and tracks what has been installed. It also runs AutoTOC automatically
  after mod changes.

- *Mass Effect Modder (MEM)* -- Installed separately but integrates with
  ME3Tweaks. MEM handles texture replacements, which work differently
  from standard DLC mods. Textures are applied directly to the game's
  `.tfc` texture archive files. This is covered in detail in the MEM
  Texture Guide chapter.

- *Trilogy Save Editor* -- An optional companion tool for inspecting
  and editing save files. Useful for troubleshooting character flags
  or importing decisions. Not required for mod installation.

- *AutoTOC* -- Automatically rebuilds the game's Table of Contents
  (TOC) file after mod changes. ME3Tweaks runs this automatically;
  you should not need to invoke it manually.

== Creating a Full Game Backup

#callout("warning")[
  Do not skip this step. A clean backup is your safety net for every
  modding mistake. Without it, you may need to re-download the entire
  120 GB game.
]

1. Close Mass Effect Legendary Edition if it is running.

2. Navigate to your game installation directory. Common locations:
   - Steam: `C:\Program Files (x86)\Steam\steamapps\common\Mass Effect Legendary Edition`
   - EA App: `C:\Program Files\EA Games\Mass Effect Legendary Edition`

3. Copy the *entire* `Mass Effect Legendary Edition` folder to a backup
   location -- an external drive, a secondary internal drive, or a
   dedicated backup folder. The copy will take 15-30 minutes depending
   on your disk speed.

4. Rename the copied folder to something clear, such as
   `Mass Effect Legendary Edition - CLEAN BACKUP`.

5. Verify that the backup folder contains the same files as the original
   (right-click both folders and compare Properties for size).

#callout("tip")[
  Keep this backup for as long as you plan to mod the game.
  You will return to it whenever you need to change your mod setup
  after applying texture mods, or if something goes wrong.
]

== DLC Mount Priority and Conflict Resolution

ME3Tweaks uses a DLC-based modding system. Understanding how this works
will help you avoid problems.

*How mods are installed.* Each mod becomes a DLC folder inside your
game's `DLC` directory (e.g., `DLC_MOD_CommunityPatch`). The game loads
DLC folders in alphabetical or numerical order, but ME3Tweaks manages
the mount order based on install sequence.

*Conflict resolution.* When two mods modify the same game file, the mod
installed *last* wins. This is different from Bethesda-style plugin
load orders. There is no "load order" to sort -- the install sequence
is your load order.

*Practical rules:*
- Install foundational mods (community patches) first.
- Install mods that depend on other mods after their dependencies.
- Install texture mods (via MEM) absolutely last -- never before other
  mods. If you add or remove non-texture mods after applying textures,
  you must restore from backup and reinstall everything (see Modding
  Best Practices).

*DLC mounting.* ME3Tweaks handles DLC authentication automatically.
You do not need to manually edit any configuration files. If a mod
requires a specific DLC mount priority, its documentation will say so.

== Common Troubleshooting

*Game won't launch after modding.*
- Run ME3Tweaks Mod Manager and check that no mods show errors.
- Restore your clean game backup and reinstall mods one at a time,
  testing after each batch of 3-5 mods to isolate the problem.
- Ensure the EA App or Steam overlay is not interfering. Disable
  overlays temporarily to test.

*Black screen or infinite loading.*
- This is often caused by a mod conflict or a missing dependency.
  Check the Conflicts chapter and verify all dependencies are
  installed before their dependents.
- Restore from backup and reinstall.

*Missing textures or broken meshes after MEM.*
- You may have applied textures before all DLC mods were installed.
  Restore from backup, reinstall all mods, then reapply textures.
- Check that you applied texture mods in the correct order within
  MEM (base textures first, overrides after).

*Where to get help.*
- ME3Tweaks Discord: #link("https://discord.gg/ME3Tweaks")[discord.gg/ME3Tweaks]
- NexusMods forums for individual mod pages
- The ME3Tweaks Mod Manager GitHub issues page

#callout("tip")[
  The single most common cause of modding problems is installing
  texture mods before completing all DLC mod installations.
  Follow the category install order in Modding Best Practices
  and always apply textures last.
]
