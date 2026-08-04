// The 3rd Coming - Installation chapter
// Grounded on the official AML README + wiki (Installation, Getting-started), fetched 2026-08-04.

// theme colors + callout (include scope does not share #let bindings from template.typ)
#let cyan = rgb("#00e5ff")
#let red = rgb("#ff2d55")
#let callout(title, body, color: cyan) = block(
  fill: color.transparentize(92%),
  inset: 10pt,
  radius: 6pt,
  stroke: 0.6pt + color,
)[
  #text(weight: "bold", fill: color, title) #body
]

=== Game Prep

This guide targets *XCOM 2: War of the Chosen* on Steam.

1. Install *XCOM 2* and the *War of the Chosen* expansion on Steam.
2. Launch the game once, all the way to the main menu, so Steam and the game finish their first-time setup.
3. Confirm the version. The last official patch is *Build 8270065* (24 February 2022; branch update 28 March 2022). No further official content patches exist.

#callout("Note:", [
  This guide's mods come from the *Steam Workshop*, by far the largest mod community for XCOM 2. Every mod card in the modlist chapters links its Workshop page. Subscribe there; nothing else is needed to get a mod into your game.
])

=== Alternative Mod Launcher (AML)

The *Alternative Mod Launcher* (AML) is a community-standard replacement for the official game launcher, for XCOM 2 and XCOM Chimera Squad. This guide uses AML because it is far more capable and reliable than the official launcher for managing a large mod set.

What AML gives you, from its official README:

+ Replaces the official game launcher entirely.
+ Steam Workshop support in the launcher: mod details, tags, changelog, dependencies, unsubscribe.
+ Mod categories and profiles.
+ A configuration editor - change a mod's configs right in the launcher - and configuration saving to disk.
+ Search/filter options and editable mod descriptions.
+ Basic compatibility checks (duplicate IDs, class and screen-listener conflicts).
+ Cleans stale *ModOverride* entries from `XComEngine.ini` - the official launcher's known corruption problem.

Requirements (official README):

+ XCOM 2 (WotC) - the game this guide targets.
+ Steam installed and running.
+ Microsoft .NET Framework 4.7.2 or later.
+ 64-bit Windows.

=== Installing AML

1. Download the *latest stable release* from the Releases page: #link("https://github.com/X2CommunityCore/xcom2-launcher/releases/latest")[github.com/X2CommunityCore/xcom2-launcher/releases]. Take the *zip archive* under the "Assets" section, below the release notes.
2. Extract *all files* from the zip into a folder of your choice with *write access* - the Desktop is the safest option. Avoid system folders such as `c:\Program Files\` or `c:\Windows`.
3. There is no installer. Run `XCOM2 Launcher.exe` from the extracted folder.

#callout("Warning:", [
  If the archive contains no `.exe`, you downloaded the *source-only* archive - the wrong download. Grab the release zip under "Assets" instead.
], color: red)

#callout("Tip:", [
  `settings.json` next to the launcher holds your AML configuration. Back it up if you ever copy files between AML folders - overwriting it with an older copy loses your setup.
])

=== First Launch

1. The *Welcome Dialog* asks which game this copy of AML should manage. Select *XCOM 2 (WotC)*. This is a one-time selection that cannot be changed later - if you also want AML for XCOM Chimera Squad, use a second copy of AML in its own folder.
2. AML offers anonymous error reporting. It helps the developers find bugs; enabling it is recommended but optional.
3. AML tries to detect the game's installation directory automatically. If that fails, configure the path manually (see the official wiki's Troubleshooting page, linked below).
4. On startup AML automatically *searches for new mods* and *updates mod information* for everything it finds. This is the same as `File -> Search for new mods` and `File -> Update mod information` from the menu bar.

=== Steam Workshop Workflow

1. *Subscribe.* Open each mod card's Workshop link and click Subscribe on the mod's Workshop page. Steam downloads the subscription automatically - XCOM 2 has no separate "install mod" step.
2. *Refresh in AML.* In AML, use `File -> Search for new mods` to pick up new subscriptions, then `File -> Update mod information` to refresh metadata (AML also does both automatically at startup).
3. *Enable and order.* Enable mods with their checkboxes and arrange load order as the mod cards direct. Categories and profiles keep the list organized.
4. *Import previous state (optional).* `Tools -> Import active mods` re-enables everything that was active the last time XCOM was launched, whether from the official launcher or another AML copy.
5. *Launch.* Start the game *from AML*. AML replaces the official launcher, so the game boots directly with your chosen load.

#callout("Tip:", [
  Because AML replaces the official launcher, it sidesteps the launcher's known habit of writing stale `ModOverride` entries into `XComEngine.ini` and dropping mods from your load. AML even cleans up entries the official launcher already wrote.
])

#callout("Warning:", [
  Steam must be installed *and running* for AML to see Workshop mods. If the game updates, re-check Build 8270065 and re-verify your mods before playing.
], color: red)

=== Updating AML

1. Download the new release zip and extract it *over the existing AML folder*, overwriting all files.
2. When copying between folders instead of extracting a fresh archive, do not overwrite the new folder's `settings.json` with an older copy.
3. Config compatibility follows the *major version*: same major version = compatible; switching to a new major version may require re-configuring.

=== Verify

1. Start the game through AML.
2. In the main menu, open the mod list (the "Mods" button) and confirm the mods you enabled in AML are present and active - it is the authoritative view of what is loaded.
3. Play the opening mission(s) and confirm the mods behave the way the guide describes.

#callout("Note:", [
  Official AML resources: #link("https://github.com/X2CommunityCore/xcom2-launcher")[repository], #link("https://github.com/X2CommunityCore/xcom2-launcher/wiki/Installation")[Installation], #link("https://github.com/X2CommunityCore/xcom2-launcher/wiki/Getting-started")[Getting started], #link("https://github.com/X2CommunityCore/xcom2-launcher/wiki/Troubleshooting")[Troubleshooting]. AML is GPLv3 open source; the AML logo is based on the XCOM 2 logo (Firaxis property).
])
