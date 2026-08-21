== Script Extender Setup

=== Starfield Script Extender (SFSE)

SFSE is required for almost all scripted mods. Every mod in this list that uses scripts will depend on it.

1. Visit #link("https://sfse.silverlock.org/")[Silverlock — SFSE].
2. Download the latest version compatible with 1.16.244.
3. Extract the archive.
4. Copy all files *except* `Data/` into your Starfield root folder (where `Starfield.exe` lives).
5. Copy the `Data/` folder contents into `Data/` (merge if needed).

=== Launching Through SFSE

In MO2:
1. Click the dropdown next to *Run* and select `<Edit...>`.
2. Add a new executable:
   - *Title:* SFSE
   - *Binary:* `path\to\Starfield\sfse_loader.exe`
3. Always launch Starfield via this entry.

=== Address Library

Required by many SFSE plugins. Installs like any other mod in MO2.

1. Download from #link("https://www.nexusmods.com/starfield/mods/3256")[Nexus Mods — Address Library].
2. Install via MO2 (drag the archive into the downloads tab and double-click).

=== Baka Achievement Enabler (SFSE)

Keeps Steam achievements enabled while mods are active. Required by this modlist — most of these mods flag the game's mod-detection.

1. Download from #link("https://www.nexusmods.com/starfield/mods/658")[Nexus Mods — Baka Achievement Enabler].
2. Install via MO2.

=== Plugins.txt Enabler

Lets Starfield read a `Plugins.txt` load order, which several mods and patchers rely on.

1. Download from #link("https://www.nexusmods.com/starfield/mods/4157")[Nexus Mods — Plugins.txt Enabler].
2. Install via MO2.
