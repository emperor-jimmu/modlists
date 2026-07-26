= Installation & Setup

Follow these steps to prepare your game for modding. Perform them in order.

== Prerequisites

- Red Dead Redemption 2 (version 1.32) — Steam, Rockstar Launcher, or Epic
- ~2 GB free disk space for mod files
- Administrative access to your game installation directory

== Step 1: Clean Game Installation

Ensure RDR2 is fully updated to version 1.32. Verify the version by
checking the game properties in your launcher.

```default
Steam:      Library > RDR2 > Properties > Betas > "None"
Rockstar:   Settings > RDR2 > Game Details
```

== Step 2: Lenny's Mod Loader (LML)

Download the latest version of Lenny's Mod Loader from the official site.

1. Extract the archive to a temporary folder
2. Copy all files into your RDR2 installation root directory (where
   `RDR2.exe` lives)

```default
RDR2 Installation/
├── RDR2.exe
├── version.dll          <- LML file
├── LML/                 <- will be created on first launch
├── lml_mods/            <- your mods go here
```

3. Launch the game once to verify LML installed correctly — you should see
   an LML notification in the top-left corner

== Step 3: Script Hook RDR2

Some gameplay mods require Script Hook RDR2. Download it and place
`ScriptHookRDR2.dll` and `ScriptHookRDR2.asi` in the game root directory.

== Step 4: Verify Installation

Launch the game and check:
- LML version in the top-left notification
- Script Hook loads without errors (check `ScriptHookRDR2.log` in `Documents`
  or game root)

== Folder Structure

```default
RDR2 Installation/
├── RDR2.exe
├── version.dll
├── ScriptHookRDR2.dll
├── ScriptHookRDR2.asi
├── LML/
├── lml_mods/
│   ├── ModName1/          <- extracted mod folders
│   └── ModName2/
└── settings.xml           <- LML config (enable/disable mods here)
```

== Removing Mods

To disable a mod, move its folder out of `lml_mods/`. To uninstall LML,
remove `version.dll` and the `LML/` folder.
