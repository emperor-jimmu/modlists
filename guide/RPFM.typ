== RPFM Setup for When Gods Bleed

== Overview

link(https://frodo45127.github.io/rpfm/)[RPFM] is the official mod manager for Total War: Warhammer III. This guide walks you through the full setup process required for the When Gods Bleed modlist.

== Installation

1. Download the latest release from the link(https://github.com/frodo45127/rpfm/releases)[RPFM GitHub Releases].
2. Extract the archive to a permanent location (e.g., C:\RPFM\).
3. Launch RPFM.exe — it will attempt to auto-detect your TWWH3 installation.

== First-Time Configuration

=== Step 1: Set the Game Directory

1. Open RPFM and click the *Settings* gear icon.
2. Locate the *Warhammer 3 Directory* field.
3. Set it to your TWWH3 root folder. Example paths:
   - *Steam*: C:\Program Files\Steam\steamapps\common\Total War WARHAMMER 3
   - *Epic Games Store*: C:\Program Files\Epic Games\TWW3
4. Click *Save* or *Apply*.

=== Step 2: Configure a Mod Folder

1. In Settings, go to the *Mods* tab.
2. Set a dedicated mod folder path for this modlist:
   - Recommended: C:\TWWH3\Mods\WhenGodsBleed\
3. This keeps Wave-specific mods organized and prevents conflicts with other modlists.
4. Click *Save*.

== Activating Mods from This Modlist

1. In RPFM, navigate to *Mods* in the left sidebar.
2. Click *Add Mod* and browse to the mod file or folder.
3. Toggle the mod to *Active* (green checkmark icon).
4. Verify dependency chains: any mod listed as a dependency must also be active.
5. Click *Launch Game* to start TWWH3 with your selected mods.

== Downloading Mods from URLs

1. Click *Add Mod* > *Download from URL*.
2. Paste the mod URL (e.g., a Total Workshop link).
3. RPFM downloads and adds the mod to your library.
4. Activate it and check dependencies as above.

== Recommended Workflow for This Modlist

1. Start by installing and activating all *Wave 0* mods.
2. Launch the game and complete the campaign tutorial / learn basic mechanics.
3. When ready for more challenge, deactivate Wave 0 mods (optional) and activate Wave 1 mods.
4. Continue wave progression at your own pace.
5. Never activate mods from multiple waves simultaneously unless specified otherwise.

== Troubleshooting

| Symptom | Likely Cause | Fix |
|---------|-------------|-----|
| RPFM cannot find the game | TWWH3 directory not set | Manually set the path in Settings |
| Mod crashes on launch | Version mismatch or missing dependency | Check mod version and activate all dependencies |
| Conflicting mods cause issues | Two mods modify the same content | Refer to conflicts.conf; deactivate one |
| Game won't start after modding | Mod order or activation issue | Deactivate all mods, reactivate in wave order |