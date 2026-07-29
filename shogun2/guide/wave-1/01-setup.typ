= Wave 1: Tenka Fubu
== Installation & Setup

Wave 1 introduces visual, unit, and faction mods. You must have completed at least one vanilla campaign before starting this wave.

=== Resetting user.script.txt

Before adding mods, clear your previous load order:

1. Navigate to `%appdata%/The Creative Assembly/Shogun2/scripts/`
2. Open `user.script.txt` in Notepad
3. Delete all lines or rename the file to `user.script.bak`
4. Save the blank file

=== Mod Installation (Steam Workshop)

1. Open the *Total War: SHOGUN 2* Workshop on Steam
2. For each mod listed in 02-mods.typ, click *Subscribe*
3. Steam will download the `.pack` files to your data directory
4. Launch the game — the launcher will show available mods

=== Configuring Load Order in user.script.txt

After subscribing to all Wave 1 mods:

1. Launch the game once via the launcher (this auto-generates `user.script.txt`)
2. *Alternatively:* manually create/edit `user.script.txt` in `%appdata%/The Creative Assembly/Shogun2/scripts/`
3. Each line should read:
   ```
   mod "filename.pack";
   ```
4. Mods load top-to-bottom — later entries override earlier ones.
5. Save the file.

=== Wave 1 Load Order

_NOTE: Specific mods TBD. Load order template will be filled when mods are selected._

=== Starting a New Campaign

From the main menu:
1. Select *Single Player* → *New Campaign*
2. Select the *Oda* clan
3. Difficulty: *Hard* (you have experience now — time to earn it)
4. Campaign length: *Long*
5. Enable the following mod-launcher checkboxes if available: _TBD_
6. Click *Start*

=== Verifying Mods Are Active

In-game indicators that mods are loaded:
- Different loading screen art
- New units visible in recruitment menu
- Faction-specific visual changes
- If nothing looks different, check `user.script.txt` and that pack files exist in the data directory
