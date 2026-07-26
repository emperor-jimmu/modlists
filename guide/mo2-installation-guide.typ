= Introduction

This guide walks you through setting up Mod Organizer 2 for X4 Foundations with the Stellar Dominion modlist.

== Prerequisites

- X4 Foundations v9.0 installed (Steam or GOG)
- Mod Organizer 2 (latest stable) — download from Nexus Mods: https://www.nexusmods.com/site/mods/1
- A Nexus Mods account (free) for mod downloads

== Installation

=== Step 1: Install Mod Organizer 2

Download the latest MO2 installer and run it. Choose _Portable_ installation type and install to a directory _outside_ your game folder (e.g., `C:\Modding\MO2`).

IMPORTANT: Portable mode keeps MO2 self-contained. Do NOT use Instance mode for this guide.

=== Step 2: Configure X4 in MO2

1. Launch MO2. It will prompt you to set up a game — select X4 Foundations.
2. If not auto-detected, browse to your X4 installation folder (e.g., `C:\Program Files (x86)\Steam\steamapps\common\X4 Foundations`).
3. Set the _Mod Staging Folder_ to a location with plenty of disk space, inside your MO2 folder (e.g., `C:\Modding\MO2\mods`).

=== Step 3: Link Nexus Mods Account

1. In MO2, click the puzzle-piece icon (Tools) _Settings_.
2. Go to the _Nexus_ tab.
3. Click _Associate with "Download with Manager" links_.
4. Click _Account_ and log in with your Nexus Mods account.

=== Step 4: Create Profiles

Create one profile per wave:

1. In MO2, click the profile dropdown (top bar) _Manage Profiles_.
2. Create profiles: `Stellar Dominion - Wave 0`, `Stellar Dominion - Wave 1`, `Stellar Dominion - Wave 2`, `Stellar Dominion - Wave 3`.
3. Keep _Default_ as-is for vanilla testing.

When upgrading from one wave to the next:
- Switch to the new profile
- Install the additional mods for the new wave
- Do NOT disable old mods — waves are cumulative

== Load Order Rules

X4 loads mods alphabetically by folder name. MO2 manages this by renaming folders with priority prefixes. Follow this priority order:

1. _Libraries & Utilities_ (API mods, frameworks) — lowest number prefix
2. _Total Conversions_ and _Overhauls_ (VRO, economy mods)
3. _Standalone Content_ (ships, stations, sectors)
4. _Visual_ and _Audio_
5. _UI_ — highest number prefix

Example naming:

```
01 - Mod Support API
02 - Economy Overhaul
10 - Expanded Ships Pack
20 - Visual Enhancement
30 - Better Map
```

== Running X4 Through MO2

1. In MO2, click the dropdown next to _Run_ and select _X4 Foundations_.
2. If it's not listed, add it: Click the gears icon _Add from file_ — browse to `X4.exe` in your game folder.
3. ALWAYS launch X4 from within MO2 so mods are loaded.

== Troubleshooting

- _Mods not appearing in-game?_ Make sure they are checked in the left panel AND the right panel shows them as active.
- _Game crashes on startup?_ Check for missing dependencies (listed in each mod's entry). Disable mods one by one.
- _Wrong mod version?_ Ensure every mod matches X4 v9.0. Check the mod's Nexus page for version compatibility notes.

= Stellar Dominion Mod Order

// This section will list the exact load order once mods are selected
