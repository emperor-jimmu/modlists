#import "../lib.typ": mod-entry, tip, concept, warning

= Installation Guide

This chapter walks you through setting up SBMM (Starbound Mod Manager), preparing your game, and installing mods for both waves.

== Step 1: Install SBMM

SBMM is a mod manager for Starbound created by *korsir*. It handles mod profiles, load order, conflict detection, and Workshop integration.

Download SBMM from its GitHub repository: #link("https://github.com/korsir/sbmm")[SBMM on GitHub]

Extract the archive to a folder of your choice (e.g., `C:\Tools\SBMM`). Run `SBMM.exe` to launch.

#tip[
  Create a desktop shortcut to `SBMM.exe` — you will be using it frequently.
]

== Step 2: Configure SBMM

=== First Launch
On first launch, SBMM will ask you to locate your Starbound installation. Point it to your Steam Starbound folder (usually `C:\Program Files (x86)\Steam\steamapps\common\Starbound`).

=== Create Profiles
SBMM uses *profiles* to separate mod sets. Create two profiles:

1. *Aetherbound — Wave 0* — for your first playthrough
2. *Aetherbound — Wave 1* — for your second playthrough

#concept[
  Profiles let you switch between completely different mod setups without uninstalling anything. Wave 0 and Wave 1 are independent — nothing carries over between them.
]

=== Set Up Mod Groups
Within each profile, create *groups* (folder-like categories) matching the modlist structure:

*Wave 0 groups:* `00-QoL-UI`, `01-Bugfixes`

*Wave 1 groups:* `01-Graphics`, `02-Races`, `03-Content`, `04-Mechanics`, `05-Ships`, `06-Weapons-Armor`, `07-Building`, `08-Audio`, `09-Adult`

Place mods into their corresponding group as you install them. This keeps your load order organized and makes troubleshooting easier.

== Step 3: Workshop Backup Strategy

Steam Workshop auto-updates mods, which can break your carefully tested setup at any time. To prevent this:

1. Subscribe to all mods for your current wave on Steam Workshop
2. Wait for Steam to download them (check the Downloads page)
3. Navigate to your Workshop content folder: `Steam\steamapps\workshop\content\211820\`
4. Copy the entire `211820` folder to a safe location (e.g., `C:\StarboundMods\Wave0\`)
5. In SBMM, configure the profile to use this *backup* folder — not the live Workshop folder

#warning[
  Always back up your Workshop mods before starting a playthrough. If a mod updates mid-game and breaks your save, you can restore from the backup. SBMM cannot roll back Workshop updates.
]

Repeat this process for each wave. Your backup folders are frozen snapshots of a known-good mod set.

== Step 4: Install Mods

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

== Step 5: Verify Your Setup

Before starting a playthrough:

- In SBMM, run the conflict checker. Resolve any flagged conflicts (check `conflicts.md` for guidance).
- Launch Starbound through SBMM (not directly through Steam).
- Start a new game. Confirm the main menu loads without errors.
- Complete the intro mission. Confirm no crashes or missing assets.

If something goes wrong, disable mods in groups (starting from the last group) until you identify the problem mod.

== Switching Waves

When you are ready to move from Wave 0 to Wave 1:

1. Back up your Wave 0 save if you want to keep it
2. Switch to the *Aetherbound — Wave 1* profile in SBMM
3. Repeat the Workshop backup process for Wave 1 mods
4. Start a new game — Wave 1 is a fresh playthrough

#warning[
  Do not load a Wave 0 save with Wave 1 mods enabled. Adding content mods to an existing save can cause crashes, missing items, or corrupted worlds. Always start fresh for a new wave.
]
