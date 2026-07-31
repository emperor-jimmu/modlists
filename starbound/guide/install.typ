#import "../lib.typ": mod-entry, tip, concept, warning

= Installation Guide

This chapter walks you through setting up OpenStarbound, SBMM (Starbound Mod Manager), preparing your game, and installing mods.

== Step 1: Install OpenStarbound

OpenStarbound is a required fork of the Starbound engine. It fixes bugs, improves performance, and enables Lua scripting that many mods in this list require.

Download the latest stable release from #link("https://github.com/OpenStarbound/OpenStarbound/releases/latest")[github.com/OpenStarbound/OpenStarbound].

#concept[
  OpenStarbound is *not* a mod — it is a separate executable. Think of it like SKSE for Skyrim: a drop-in replacement that runs the same game but extends what mods can do.
]

=== Windows Setup

1. Run the OpenStarbound installer or extract the client zip to a folder of your choice (e.g., `C:\Games\OpenStarbound`).
2. Copy `packed.pak` from your Steam Starbound folder (usually `C:\Program Files (x86)\Steam\steamapps\common\Starbound\assets\packed.pak`) to the OpenStarbound `assets` folder.
3. Optionally copy the `user` folder from your Steam Starbound folder to transfer instrument songs.
4. Launch `openstarbound.exe` — it will load your Steam Workshop mods if Steam is running.

#tip[
  Create a desktop shortcut to `openstarbound.exe`. You will launch the game through this, not through Steam or the original `starbound.exe`.
]

=== Transferring Saves

Copy your `storage` folder from the Steam Starbound folder to the OpenStarbound folder to transfer characters, ships, and universe data. If you have locally installed (non-Steam) mods, copy the `mods` folder as well.

== Step 2: Install SBMM

SBMM (Starbound Mod Manager) by *korsir* handles mod profiles, load order, conflict detection, and Workshop integration.

Download SBMM from its GitHub repository: #link("https://github.com/korsir/sbmm")[SBMM on GitHub]

Extract the archive to a folder of your choice (e.g., `C:\Tools\SBMM`). Run `SBMM.exe` to launch.

== Step 3: Configure SBMM

=== First Launch
On first launch, SBMM will ask you to locate your Starbound installation. Point it to your OpenStarbound folder.

=== Create Profile
Create a single SBMM profile: *Aetherbound*

=== Set Up Mod Groups
Within the profile, create *groups* (folder-like categories) matching the modlist structure:

`00-Foundations`, `01-UI-QoL`, `02-Graphics`, `03-Audio`, `04-Races`, `05-Content`, `06-Mechanics`, `07-Ships`, `08-Building`, `09-Adult`

Place mods into their corresponding group as you install them. This keeps your load order organized and makes troubleshooting easier.

== Step 4: Workshop Backup Strategy

Steam Workshop auto-updates mods, which can break your carefully tested setup at any time. To prevent this:

1. Subscribe to all mods listed in this guide on Steam Workshop
2. Wait for Steam to download them (check the Downloads page)
3. Navigate to your Workshop content folder: `Steam\steamapps\workshop\content\211820\`
4. Copy the entire `211820` folder to a safe location (e.g., `C:\StarboundMods\Aetherbound\`)
5. In SBMM, configure the profile to use this *backup* folder — not the live Workshop folder

#warning[
  Always back up your Workshop mods before starting a playthrough. If a mod updates mid-game and breaks your save, you can restore from the backup. SBMM cannot roll back Workshop updates.
]

Your backup folder is a frozen snapshot of a known-good mod set.

== Step 5: Install Mods

For each mod in the guide:

1. Click the mod name (it links to the Steam Workshop page)
2. Click *Subscribe* on the Workshop page
3. Wait for Steam to download it
4. In SBMM, refresh your mod list — the new mod should appear
5. Drag it into the correct group
6. Check the install notes in the mod entry for any special instructions

#tip[
  Install mods in the order they appear within each category. This follows the recommended load order and minimizes conflicts.
]

== Step 6: Verify Your Setup

Before starting a playthrough:

- In SBMM, run the conflict checker. Resolve any flagged conflicts (check `conflicts.md` for guidance).
- Launch OpenStarbound through SBMM (not directly through Steam).
- Start a new game. Confirm the main menu loads without errors.
- Complete the intro mission. Confirm no crashes or missing assets.

If something goes wrong, disable mods in groups (starting from the last group) until you identify the problem mod.
