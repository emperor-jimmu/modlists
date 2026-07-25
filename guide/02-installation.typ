= Installation Guide

== Assetto Corsa — Base Installation

1. Purchase and download *Assetto Corsa* on Steam
2. Right-click the title in your library → *Properties* → *Betas* → select `1.16.4` from the dropdown
3. Wait for the download to complete
4. Launch the game once to generate configuration files, then exit

=== Verifying Your Version

In the main menu, check the bottom-right corner for version text. It should read `v1.16.4` (build date August 2020).

== Content Manager

#link("https://assettocorsa.club/content-manager.html")[Content Manager] (CM) is the essential launcher and mod manager for Assetto Corsa. It replaces the default launcher with a significantly more capable interface.

=== Download & Install

1. Visit #link("https://assettocorsa.club/content-manager.html")[the official CM site]
2. Download the latest full release (not a patch)
3. Run the installer — it will detect your Assetto Corsa installation automatically
4. Launch Content Manager after installation

=== Initial Setup

1. Go to *Settings* → *Content Manager* → *Appearance*
   - Set *Theme* to your preference (Dark is recommended for readability)
   - Set *Language* if needed
2. Go to *Settings* → *Assetto Corsa*
   - Verify that the *Game path* points to your AC installation (e.g., `C:\Program Files (x86)\Steam\steamapps\common\assettocorsa`)
3. Go to *Settings* → *Customs*
   - *Cars search path*: Leave default
   - *Tracks search path*: Leave default

=== Installing Mods with CM

CM supports drag-and-drop installation:

- `.zip` / `.rar` / `.7z` archives containing car or track folders
- `.kn5` / `.kn` files (compiled Assetto Corsa data)
- Folders placed directly into `assettocorsa/content/cars` or `assettocorsa/content/tracks`

To install, simply drag the archive onto the CM window, or use *Install Mod* button.

== Custom Shaders Patch (CSP)

Custom Shaders Patch is a major visual and functional enhancement for Assetto Corsa. It will be added in Wave 1.

*Note for later:* CSP versions must match AC v1.16.4. The last compatible pre-WeatherFX build is `0.1.79`. For later CSP versions with WeatherFX, use v1.16.4-post-launch compatible builds (`0.2.0`+).

== Recommended Folder Structure

```
Steam/steamapps/common/assettocorsa/
├── content/
│   ├── cars/           — Car mods
│   ├── tracks/         — Track mods
│   └── fonts/          — Custom fonts (rare)
├── extensions/         — CSP configs
├── system/cfg/         — Game configuration files
└── assettocorsa.exe    — Game executable
```

== Backup Your Installation

Before adding any mods, create a backup of your clean AC installation:

```
Copy "assettocorsa" folder to "assettocorsa-stock"
```

This will let you revert if anything goes wrong.

#pagebreak()
