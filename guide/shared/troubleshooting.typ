#import "../../typst/styles.typ": *

= Troubleshooting

Common issues you may encounter when setting up or playing with this modlist, and how to fix them.

== Game Crashes on Startup

The most common issue with modded setups. Work through these checks in order:

=== BLSE Won't Launch

- Verify BLSE files are in the game root directory (not in a subfolder)
- Run `BannerlordSoftwareExtender.exe` as Administrator once
- Check that your antivirus has not quarantined BLSE — add an exception for the game folder
- Re-download BLSE from the official page: #link("https://www.nexusmods.com/mountandblade2bannerlord/mods/1")

=== Game Crashes Before Main Menu

- Disable all mods in BLSE and try launching with zero mods
- If the game launches without mods, a mod is the cause. Enable mods one at a time to find the culprit.
- Check that all mod dependencies are installed and enabled (see each wave's mod list for dependency requirements)
- Verify your game version matches WS v1.2.7 / BL v1.4.7

=== Crash During Loading Screen

- Your save may be corrupted. Try loading an earlier save or a new game.
- Verify load order in BLSE matches the wave's `load-order.typ`
- Clear the game's shader cache: delete `%ProgramData%\Mount and Blade II Bannerlord\Shaders\`

== Mod-Related Issues

=== Mod Version Mismatch

BLSE may show a warning that a mod's version does not match your game version. This can happen with mods that have not been updated but still work.

#warning-box[If a mod shows a version warning but BLSE's Auto-Sort still loads it and the game launches, it is usually safe to use. However, always check the mod's Nexus page for compatibility notes.]

=== Mods Not Detected by BLSE

- Ensure the mod folder is placed directly in `Modules\` (e.g., `Modules\MyMod\SubModule.xml`)
- BLSE reads `SubModule.xml` in each mod folder. If this file is missing or misplaced, BLSE will not detect the mod.
- Restart BLSE after adding new mods — it scans on launch, not dynamically.

=== Two Mods Conflict

- Check `mod-conflicts.md` in this project — known conflicts are documented there
- In BLSE, try adjusting load order manually: the mod loaded *last* takes priority
- Some mods have compatibility patches on their Nexus pages — check the mod's files tab
- If no resolution, choose one mod over the other — running both will cause unpredictable behavior

== Save Game Issues

=== Save Won't Load

- Saves made with mods A, B, C cannot be loaded if mod C is removed. Re-enable removed mods or start a new game.
- Saves from one wave cannot be used with another wave's mod set. Each wave requires a new campaign.
- If a save crashes mid-load, it may be corrupted. Use BLSE's *Backup Saves* feature (enabled in settings) to restore an earlier version.

=== Save Corrupted

#danger-box[Never save immediately after a battle or during an autosave. Wait a few seconds for the game to finish post-battle processing. Saving during heavy scripting can corrupt the save file.]

- Use the backup save from BLSE if enabled
- If no backup exists, the save is likely unrecoverable. Start a new game with the backup setting enabled.

== Performance Issues

=== Low FPS in Battles

- Reduce battle size in game options (Options > Gameplay > Battle Size)
- Lower shadow quality and particle effects
- Disable any graphics mods temporarily to isolate if a texture mod is the cause
- Verify your GPU drivers are up to date

=== Stuttering on Campaign Map

- Reduce sound channels in Options > Audio
- This is often CPU-related; close background applications
- Some large mods increase world processing. This is expected in Wave 2 setups.

== BLSE-Specific Issues

=== Auto-Sort Places Mods Incorrectly

BLSE's Auto-Sort uses mod metadata to determine order. If a mod author did not declare dependencies correctly, manual sorting is needed.

- Check the wave's `load-order.typ` for the correct order
- In BLSE, drag the mod to the correct position in the load order panel
- Export your load order for future use: BLSE menu > Export Load Order

=== "Cannot Resolve Dependencies" Error

- A mod requires another mod that is not installed or enabled
- Check the mod's *Dependencies* field in the wave's mod list
- Install and enable the missing dependency, then re-run Auto-Sort

== Getting Help

If none of the above resolves your issue:

- Check the Nexus Mods page of the mod causing issues — the Posts and Bugs tabs often have solutions
- The Bannerlord modding Discord servers are active and helpful
- BLSE's GitHub page has an Issues tracker for launcher-specific problems

#tip-box[When asking for help online, always mention your game version (WS v1.2.7 / BL v1.4.7), which wave you are playing, and your full mod list. This information is essential for anyone helping you.]
