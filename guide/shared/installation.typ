#import "../../typst/styles.typ": *

= Installation & Setup

This section covers everything you need to set up Bannerlord with BLSE and prepare for any wave. Follow these steps once — they apply to all three waves.

== Game Installation

Ensure your Bannerlord installation matches the target version before proceeding.

#warning-box[All mods in this guide target *WS v1.2.7 / BL v1.4.7 (8 July 2026)*. Mods marked for other versions will not work and may corrupt your saves.]

=== On Steam

- Right-click Mount & Blade II: Bannerlord in your Steam library
- Select *Properties* > *Betas*
- From the dropdown, choose the version matching `v1.4.7`
- Allow Steam to download the correct version files
- Launch the game once to generate config files, then exit

=== On GOG / Other Platforms

- Use the platform's version management to select the `v1.4.7` build
- If your platform does not support version pinning, you must ensure your installed version matches before proceeding
- Launch once, then exit

== Bannerlord Software Extender (BLSE)

BLSE is the mod launcher for this modlist. It manages load order, resolves dependencies, and provides a unified mod management interface.

=== What BLSE Does

- Sorts mods automatically by dependency and compatibility rules
- Detects version mismatches before you launch
- Provides a clean UI for enabling, disabling, and reordering mods
- Replaces the default Bannerlord launcher entirely

#tip-box[BLSE is required for all waves, including Wave 0. The default game launcher does not reliably manage mod load order and will cause crashes with multiple mods. Install BLSE even if you only plan to use Wave 0.]

=== Download & Install BLSE

#link("https://www.nexusmods.com/mountandblade2bannerlord/mods/1")[Download BLSE from Nexus Mods]

- Download the latest BLSE release
- Extract the archive into your Bannerlord game directory (the folder containing `bin\Win64_Shipping_Client\`)
- The key files are `BannerlordSoftwareExtender.exe` and the `BLSE` folder
- Launch `BannerlordSoftwareExtender.exe` — this replaces your normal game launch

=== First Launch with BLSE

- BLSE will scan your game directory and detect installed mods on first launch
- You will see the main mod management screen with a list of detected mods (empty initially for Wave 0)
- The load order panel on the right shows the current order
- BLSE's *Auto-Sort* button resolves dependencies automatically

#tip-box[Always launch Bannerlord through BLSE, even for Wave 0. Launching through Steam or the default launcher will bypass your mod setup.]

=== BLSE Settings

When you first open BLSE, configure the following:

#table(
  columns: (auto, 1fr),
  [*Setting*], [*Recommended Value*],
  [*Auto-Sort on Launch*], [Enabled — ensures load order is always correct],
  [*Check for Mod Updates*], [Enabled — warns you when mods have newer versions],
  [*Game Launch Arguments*], [Leave blank unless you need specific launch flags],
  [*Backup Saves*], [Enabled — creates timestamped save backups before launching],
)

=== Installing Mods with BLSE

For each mod in a wave's modlist:

+ Download the mod from its Nexus Mods page
+ Extract the mod folder into `Modules\` inside your Bannerlord game directory
+ Launch BLSE — the mod will appear in the list
+ Enable the mod by checking its box
+ Use *Auto-Sort* to place it correctly in the load order

#warning-box[Always check the mod's installation instructions on its Nexus page. Some mods require specific subfolder placement or additional dependencies not listed here.]

== Required Foundation Mods

These mods are the dependency framework. Every other mod in this guide requires one or more of them. Install all of them once, regardless of which wave you choose. Download each from its Nexus Mods page, extract into your `Modules\` folder, then launch BLSE and enable them.

#danger-box[Do not skip any of these. Missing a foundation mod will cause other mods to fail to load or crash on startup. Install the foundation before installing any wave's modlist.]

+ #link("https://www.nexusmods.com/mountandblade2bannerlord/mods/2006")[*Harmony*] — Runtime method patching library. Required by ButterLib, UIExtenderEx, MCM, and nearly every other mod in this list. Includes a debug UI accessible via `CTRL+ALT+H`.
+ #link("https://www.nexusmods.com/mountandblade2bannerlord/mods/2018")[*ButterLib*] — Extension library providing crash reporting, compatibility checks, and shared utilities. Required by MCM and most modern mods.
+ #link("https://www.nexusmods.com/mountandblade2bannerlord/mods/2102")[*UIExtenderEx*] — UI extension framework. Required by MCM and any mod that modifies the game interface.
+ #link("https://www.nexusmods.com/mountandblade2bannerlord/mods/612")[*Mod Configuration Menu (MCM)*] — In-game mod settings menu. Required by any mod with configurable options. Used by 867+ mods.
+ #link("https://www.nexusmods.com/mountandblade2bannerlord/mods/404")[*Better Exception Window*] — Enhanced crash handler with detailed error reporting, emergency save, screenshot attachments, and an "attempt to continue" feature. Requires Harmony.
+ #link("https://www.nexusmods.com/mountandblade2bannerlord/mods/6367")[*Better Core*] — Shared utility library for the Better mod series. Only required if you install Better Time (Wave 1). Does nothing on its own.

#tip-box[BLSE's Auto-Sort will place these foundation mods at the top of your load order automatically. No manual ordering needed.]

=== Additional Setup: Unblock DLLs

Windows may block DLL files downloaded from the internet, preventing mods from loading. Run the following PowerShell command once in your Bannerlord `Modules` directory to unblock all mod DLLs. This is a one-time setup step — not a mod that goes in your load order.

#link("https://www.nexusmods.com/mountandblade2bannerlord/mods/397")[Unblock DLLs (Nexus Mods page)]

#block(fill: code-bg, inset: 10pt, radius: 4pt)[
  #show raw: set text(font: mono-font, size: 9.5pt)
  `Get-ChildItem -Recurse -Filter *.dll | Unblock-File`
]

== Wave-Specific Setup

After installing BLSE and your game, follow the *Getting Started* section of your chosen wave. Each wave has its own mod list and recommended game settings.

=== Choosing Your Wave

- *Wave 0 — The Exile*: You are new to Bannerlord or want a guided first campaign. Minimal mods, complete tutorial.
- *Wave 1 — The Alliance*: You have completed a campaign or are familiar with Bannerlord's basics. Enhanced experience, more mechanics.
- *Wave 2 — The Reckoning*: You are a veteran player seeking a transformed, challenging experience with major overhauls.

#danger-box[Do not mix mods from different waves. Each wave's mod list is tested as a complete set. Adding Wave 2 mods to a Wave 1 setup will cause conflicts and crashes.]

== Game Settings

Regardless of your wave, these baseline settings are recommended:

#table(
  columns: (auto, 1fr),
  [*Setting*], [*Value*],
  [*Difficulty*], [Freebooter (medium) — adjustable per wave],
  [*Autosave Interval*], [15 minutes — prevents progress loss],
  [*Friendly Troops Banner Icons*], [Enabled — easier battle awareness],
  [*Show HUD in Combat*], [Enabled — shows health, ammo, orders],
  [*Graphics API*], [DirectX 11 — most stable for modded setups],
  [*Sound*], [Default — some mods add audio and rely on default settings],
)

#tip-box[Graphics settings depend on your hardware. Wave 1+ graphics mods target stable 60 FPS at 1440p on an NVIDIA RTX 3080 (or equivalent). If your GPU is older or slower, reduce resolution or shadow quality — the modlist is tuned for high-end hardware.]
