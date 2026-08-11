// 10-installation.typ — Forlorn Oath: installation chapter.
#import "theme.typ": *

= Installation

_Everything you need to go from a vanilla install to a fully modded hunt — with the right mod manager, the right framework, and a setup that survives the game's steady stream of updates._

== What you need

- _Monster Hunter Wilds on PC (Steam), updated to the current build._ This guide is written against *1.042.00.01* (released August 7, 2026). Steam updates automatically; check the version on the title screen before installing.
- _Fluffy Mod Manager_ — the community-standard mod manager for Monster Hunter Wilds and every other RE Engine title. Download it from #link("https://www.nexusmods.com/site/mods/818")[Nexus Mods] (site-wide "Fluffy Mod Manager" page; current version 3.081). It installs, backs up, enables, and disables mods without you ever hand-editing the game folder.
- _REFramework_ — the modding framework that almost every script mod in this list runs on. Download the latest *nightly build* from its #link("https://github.com/praydog/REFramework-nightly/releases")[GitHub releases page] — the Nexus copy is frequently outdated, and an outdated `dinput8.dll` is the number one cause of black screens after a game update.
- _A Nexus Mods account_ (free) — every mod in Chapter 2 is hosted on Nexus.

#info[
  This list targets the *last* version of the game as it exists today. The paid expansion _Monster Hunter Wilds: Ascendance_ was announced in June 2026 for a 2027 release — it is not out yet, so none of the mods here assume it. When it lands, expect a fresh wave of updates and a new version of this guide.
]

== The mod manager: Fluffy Mod Manager 5000

Monster Hunter Wilds mods come in two flavors: *loose-file mods* (REFramework scripts that drop into `reframework/autorun/`) and *PAK mods* (texture and asset overrides that load via REFramework's loose-file loader). Fluffy Mod Manager handles both: you drag a downloaded archive into the window, it installs it into its own mods folder with automatic backups, and a single click enables or disables it.

#tip[
  Fluffy Mod Manager is the right tool for an avid modder here because it is the tool the RE Engine scene actually uses: every mod page in Chapter 2 is written against it, it keeps a pristine backup of every file it touches, and its per-mod toggles let you A/B test without touching the game folder.
]

=== Where the files live

- _Game folder_: `Steam\steamapps\common\MonsterHunterWilds\` — contains `MonsterHunterWilds.exe`, `dinput8.dll` (REFramework), and the `reframework\` folder.
- _REFramework scripts_: `MonsterHunterWilds\reframework\autorun\` — one `.lua` file (or subfolder) per script mod.
- _REFramework plugins_: `MonsterHunterWilds\reframework\plugins\` — `.dll` plugins such as reframework-d2d.
- _Fluffy's managed mods_: Fluffy stores archives in its own `Games\MonsterHunterWilds\Mods\` folder and deploys the enabled ones into the game folder for you.

== Installation, step by step

1. _Launch the game once, vanilla._ Generate your settings, confirm the build reads 1.042.00.01, and reach the title screen. This also proves your install is healthy before anything modded touches it.
2. _Install REFramework._ Download the latest nightly from #link("https://github.com/praydog/REFramework-nightly/releases")[GitHub], extract `dinput8.dll`, and drop it next to `MonsterHunterWilds.exe`. Launch the game once — you should be able to press `Insert` in-game and see the REFramework menu.
3. _Enable the loose file loader._ In the REFramework menu, open *Settings* and make sure *Enable Loose File Loader* is checked. Without it, PAK-based mods (none in this list, but worth knowing) and some script features will not load.
4. _Install Fluffy Mod Manager._ Download from #link("https://www.nexusmods.com/site/mods/818")[Nexus], extract, and run `Modmanager.exe`. Pick *Monster Hunter Wilds* from the game list; point it at your Steam library if it does not find the game automatically.
5. _Install the two libraries._ Download *CatLib* (#link("https://www.nexusmods.com/monsterhunterwilds/mods/65")[mod 65]) and the overlay's renderer *REFramework Direct2D* — either the HDR-aware Wilds build (#link("https://www.nexusmods.com/monsterhunterwilds/mods/4033")[mod 4033]) if you play in HDR, or the classic build from the #link("https://www.nexusmods.com/monsterhunterrise/mods/134")[Rise page] (version 1.3.0+) otherwise. Drag each archive into Fluffy and enable it. These are dependencies, not gameplay — install them first.
6. _Install the mods from Chapter 2._ Download each archive, drag it into Fluffy Mod Manager, and enable it. The modlist chapter notes the handful that need configuration after first launch.
7. _Configure in-game._ Start the game, press `Insert`, and open *Script Generated UI*. That is where every REFramework script in this list exposes its options — Auto Restock, the Overlay, Disable Post Processing Effects, and the rest. Settings persist automatically.
8. _Verify._ Hunt something small. Confirm the overlay draws, weakness icons appear in the map, damage numbers render, and the image looks the way the visuals chapter intends.

== Optional: the HDR/grading stack

Two entries in the visuals chapter — *RenoDX* and the fog tweak — sit on top of the base install:

- *RenoDX* (#link("https://www.nexusmods.com/monsterhunterwilds/mods/202")[mod 202]) requires *ReShade with add-on support* (download from #link("https://reshade.me")[reshade.me], select DirectX 12, install into the game folder). It rewrites the game's own shader pipeline — it is not a ReShade effect preset. Its virus-scan note is a known false-positive pattern from AV software; the code is open source. Install REFramework first, then ReShade, then extract RenoDX next to the game's `.exe`.
- *Tweak In-Game Volumetric Fog(s)* (#link("https://www.nexusmods.com/monsterhunterwilds/mods/455")[mod 455]) is a plain REFramework script — no extra tools.

If you skip RenoDX, the base visual stack (Chapter 2) still stands on its own.

== Keeping the list alive after updates

Wilds receives regular title updates, and every update is a moment your mods can break. The drill:

1. _After Steam updates the game, check the version._ If it is no longer 1.042.00.01, expect a compatibility window.
2. _Update REFramework first._ Delete `dinput8.dll`, download the newest nightly, relaunch. This fixes the majority of black screens and startup crashes on its own.
3. _Then update the scripts._ CatLib, the Overlay, and the visuals scripts are the ones that track game versions most closely (their version numbers literally mirror game patches, e.g. the weakness icons mod versions as 1.041.x).
4. _Re-test._ If something misbehaves, disable mods one at a time in Fluffy to isolate it — never assume; test.

== Troubleshooting

- _Black screen or instant crash on launch_ — outdated REFramework after a game update. Delete `dinput8.dll` (and `re2_fw_config.txt`), reinstall the latest nightly from GitHub.
- _Mods not loading_ — check that `Enable Loose File Loader` is on in the REFramework menu; confirm the script's `.lua` sits directly in `reframework\autorun\` (not in a nested folder).
- _Overlay missing_ — the Overlay needs CatLib *and* a Direct2D build; if you play in HDR, the plain Rise d2d renders wrong colors, so use mod 4033. Verify all three are enabled in Fluffy.
- _Frame-gen flicker in menus_ — a known quirk of the post-processing script when local exposure is on and blurred luminance is off; flip one of those two settings (see the script's own notes).
- _Still broken?_ — Verify game files (Steam → right-click Monster Hunter Wilds → Properties → Installed Files → Verify integrity), then disable all mods in Fluffy and test vanilla. Re-enable one at a time.
