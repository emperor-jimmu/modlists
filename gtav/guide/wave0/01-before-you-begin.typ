= Before You Begin

This guide assumes you have GTA V installed and can launch it successfully in singleplayer.

== Installing OpenIV

#link("https://openiv.com/")[OpenIV] is the standard mod management tool for GTA V.

1. Download the latest version from #link("https://openiv.com/")[openiv.com]
2. Run the installer (default settings are fine)
3. Launch OpenIV — it will scan for your GTA V installation automatically
4. Switch OpenIV to *Edit Mode* when prompted (this enables file modification)

*Always back up files before editing.* OpenIV can create backups automatically — use this feature.

== Mod Management with OpenIV

OpenIV organizes mods through two mechanisms:

=== Mods Folder (Recommended)

OpenIV's *mods* folder creates a virtual override system:

1. In OpenIV, go to *Tools > Package Installer*
2. Set the install path to your GTA V directory
3. Most mod packages will install into `/mods/` automatically

The *mods* folder keeps the original game files untouched. To disable all mods for GTA Online, rename the *mods* folder to *mods_off*.

=== Direct .rpf Editing

Some older mods require direct editing of game archives (.rpf files). Only do this if the mod's install guide explicitly requires it. Always back up the original .rpf first.

The most common paths:
- `update/update.rpf` — DLC content, most common target
- `x64/` — Base game textures and models
- `common.rpf` — Shared data and scripts

== ScriptHookV

#link("http://dev-c.com/gtaiv/scripthookv/")[ScriptHookV] is required by almost every mod.

1. Download ScriptHookV (v1.73 compatible version)
2. Extract *ScriptHookV.dll* and *dsound.dll* into your GTA V root folder
3. Download #link("https://github.com/crosire/scripthookvdotnet")[ScriptHookVDotNet] if a mod requires it
4. Extract the .asi and .dll files into the same folder

*Verify:* Launch the game. If you see the ScriptHookV loading text in the top-left corner, it's working.

== ASI Mods

ASI mods use the OpenIV.asi loader:
- Copy the *.asi* file to your GTA V root folder (*not* the *mods* folder)
- ScriptHookV's *dsound.dll* acts as the ASI loader — no extra steps needed

== Safety Checklist

Run through this checklist before starting the game with new mods:

- [ ] Mods folder exists and is named *mods* (not *mods_off*)
- [ ] ScriptHookV.dll and dsound.dll in game root
- [ ] All mod files installed to correct paths
- [ ] Backups created for any replaced .rpf files
- [ ] GTA Online not launched with mods active (rename the *mods* folder to *mods_off* before launching Online)
