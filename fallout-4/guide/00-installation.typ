#import "../templates/style.typ": *

= Installation Guide

== About Glowing Horizon

*Glowing Horizon* is a curated modlist and comprehensive game guide for *Fallout 4*, version *1.11.221* (the Anniversary Edition / "AE" runtime, released May 27, 2026). It uses *Mod Organizer 2.5* to manage mods safely, without touching your base game files. The guide currently includes 23 verified mods across two waves.

The guide is split into two waves. Wave 0 takes complete beginners through a full how-to-play primer using nothing but vanilla systems plus interface, quality-of-life, and bugfix mods. Wave 1 builds on Wave 0 with new content and deeper settlement mechanics for players ready to go further.

== Fallout 4 — Base Installation

1. Purchase Fallout 4 on Steam or GOG
2. Let Steam/GOG fully update the game — you want the *Anniversary Edition, version 1.11.221* (released May 27, 2026)
3. Install Fallout 4 outside `Program Files` (e.g. `C:\Games\Fallout 4`) to avoid Windows permission issues
4. Launch the game once through the vanilla launcher to generate your `Fallout4Prefs.ini` and `Fallout4.ini` files, then quit

=== Verifying Your Version

In the game's main menu, check the bottom-left corner for the version string. It should read `1.11.221`. If you see an older number (e.g. `1.10.163` "Old-Gen" or `1.10.984` "Next-Gen"), let Steam/GOG finish updating before installing any mods.

#callout(type: "warn")[
  Fallout 4's Anniversary Edition update (May 27, 2026) changed internal script offsets used by F4SE plugins. Every F4SE-dependent mod in this guide has been checked against the 1.11.221 runtime specifically — do not substitute older or unconfirmed F4SE plugin versions.
]

== Mod Organizer 2.5

#link("https://www.nexusmods.com/skyrimspecialedition/mods/6194")[Mod Organizer 2] (MO2) is a virtual file system mod manager. It keeps every mod isolated in its own folder and merges them into a virtual view of your game's `Data` folder at runtime — nothing is copied into your actual Fallout 4 installation. If something breaks, you uncheck the mod and the game sees its original files again.

MO2 operates across two panes. The *left pane* (mods list) controls which mod folders are active, and their priority order determines which copy of a conflicting file wins. The *right pane* (plugins tab) controls `.esp`/`.esm`/`.esl` load order — this is the order the game engine reads plugins in, and it operates independently of the left pane.

=== Download & Install

1. Get the latest MO2 2.5.x release from #link("https://github.com/ModOrganizer2/modorganizer/releases")[the official GitHub releases page] or via Nexus Mods
2. Install MO2 as a standalone application to a location *outside* your Fallout 4 directory (e.g. `C:\Modding\Tools\Mod Organizer 2`) — this avoids Windows permission issues and keeps the toolchain separate from the game
3. Launch `ModOrganizer.exe`

=== Initial Setup

1. On first launch, create a *global instance*, select *Fallout 4*, and point it at your installation folder (e.g. `C:\Games\Fallout 4`)
2. Name the instance `Glowing Horizon` so it stays separate from any other Fallout 4 profile
3. If MO2 prompts for profile settings, tick every box — the profile should own its own `INI` files and game-specific settings rather than sharing global ones
4. Connect MO2 to Nexus Mods during first-launch setup and let MO2 handle `nxm` links — this makes MO2 your default download handler for "Mod Manager Download" buttons
5. Go to *Tools → Settings → General* and confirm the executable paths point to `Fallout4.exe` (or `f4se_loader.exe` once F4SE is installed)
6. Go to *Settings → Plugins → Diagnostics* and enable *Missing Data* and *Overwrite Contents* warnings — these catch mistakes early
7. In *Settings → Workarounds*, tick *Enable archives parsing (experimental)* so MO2 reports asset conflicts more reliably in the left pane

=== Separators

MO2 separators are labelled divider lines in the left pane that group your mods by category instead of one long flat list. They have no effect on the game — they are an organisational tool that makes a growing modlist navigable.

Create these separators in MO2 (right-click the left pane → *Create Separator*) before installing your first mod. The order here matches the guide's recommended install sequence:

- `Baseline` — F4SE, Address Library, and engine-level frameworks
- `Bugfixes & Engine` — UFO4P, Buffout 4 NG, PRP, and engine-fix plugins
- `UI & Quality of Life` — MCM, FallUI series, Faster Loadscreens, XDI, Place Everywhere
- `Settlements & Content` — Workshop Framework, Sim Settlements 2, Homemaker, Scrap Everything
- `Crafting & Armor` — Armorsmith Extended, Faster Workshop AE
- `Weather & Visuals` — Vivid Weathers
- `Quests & New Content` — America Rising 2
- `Patches` — compatibility patches you or the community build
- `Output` — generated files from FO4Edit, BodySlide, and other tools

#callout(type: "tip")[
  Separators cost nothing and save time when you have 20+ mods and need to find one quickly. Add them early.
]

=== Output Mods To Create

Before registering tools, create these empty mods under the `Output` separator so generated files never spill into the `Overwrite` folder:

- `FO4Edit Output` — manual patches and conflict-resolution plugins
- `F4SE Output` — F4SE log files and runtime-generated data
- `BodySlide Output` — generated meshes (if using BodySlide later)

Right-click a folder → *Create empty mod*, name it, and drag it under the `Output` separator. Leave it unchecked until something populates it.

=== Register Tools in MO2

Open MO2's executable editor (the gear icon in the top toolbar) and register the tools you will use throughout this guide. Use *Add from file...* to point MO2 at each tool's executable.

#table(
  columns: (auto, auto, auto, auto),
  table.header([Tool], [Executable], [Arguments], [Notes]),
  [`F4SE`], [`f4se_loader.exe`], [`-forcesteamloader`], [Your default game launcher — use this for every launch after F4SE is installed.],
  [`LOOT`], [`LOOT.exe`], [`--game="Fallout4"`], [Sorts plugin load order. Run after adding new mods, before testing.],
  [`FO4Edit`], [`FO4Edit.exe`], [`-IKnowWhatImDoing -AllowMasterFilesEdit`], [Main conflict-review and manual-patching tool.],
  [`FO4EditQAC`], [`FO4EditQuickAutoClean.exe`], [`-IKnowWhatImDoing`], [Use only for plugins LOOT explicitly flags for cleaning.],
)

#callout(type: "tip")[
  For FO4Edit, also create a second entry called `FO4Edit — Conflicts` with the arguments `-veryquickshowconflicts -IKnowWhatImDoing`. This is the entry you will use for the per-mod conflict-review workflow described in the Patching Discipline section below.
]

=== Installing F4SE Through MO2

F4SE (Fallout 4 Script Extender) is the scripting framework almost every mod in this guide depends on.

1. Download F4SE from #link("https://www.nexusmods.com/fallout4/mods/42147")[Fallout 4 Script Extender (F4SE)] — the page explicitly states support for game version *1.11.221*
2. Extract the archive. Copy `f4se_loader.exe`, `f4se_1_11_221.dll`, and `f4se_steam_loader.dll` (if present) directly into your Fallout 4 installation folder, *next to* `Fallout4.exe` — the loader must live alongside the game executable
3. In MO2, the rest of F4SE's files (the `Data` folder content) should be installed as a regular mod. Create an empty mod called `F4SE Scripts` under the `Baseline` separator and copy the archive's `Data\Scripts` folder into it
4. In MO2, go to the executables dropdown → *Edit Executables...*
5. Add a new executable named `F4SE` pointing at `f4se_loader.exe` in your Fallout 4 folder. Add the argument `-forcesteamloader`
6. Set `F4SE` as your default executable — always launch through F4SE, never through the vanilla `Fallout4.exe` or the Steam "Play" button

=== MO2 Operating Rules

- Launch the game through `F4SE` in MO2 every time, never through Steam or the stock launcher
- Run `LOOT` after every major batch of new mods and before any testing session
- Treat the `Overwrite` folder (at the bottom of MO2's left pane) as an error state. Files only end up there when a tool wasn't configured to output into a dedicated mod. If you find files in `Overwrite`, move them into the appropriate output mod or create one
- Keep generated outputs in their own dedicated mods — never mix generated files into source mod folders
- Rebuild outputs after major changes to bodies, animations, or any other system that generates artifacts
- Create a clean backup profile in MO2 before any large installation batch so you can revert without reinstalling

== Installing Mods with MO2

=== Standard Mod Install

1. Download a mod's archive (`.7z` / `.zip` / `.rar`) from Nexus Mods — use the *Mod Manager Download* button and let MO2 handle the `nxm` link
2. In MO2, the download appears in the *Downloads* tab (right pane). Right-click it → *Install*
3. If the mod uses a FOMOD installer, MO2 will show the installer wizard — choose the options specified in this guide's mod entries
4. The new mod appears in your left-hand *Mods* list, unchecked by default
5. Drag it into the appropriate separator group
6. Check the box next to the mod to activate it
7. For mods that add or change `.esp`/`.esl` plugins, switch to the *Plugins* tab (right panel) to set load order — see each mod's *Notes* for placement guidance

=== Load Order Basics

MO2's *Plugins* pane (right panel) controls plugin (`.esp`/`.esm`/`.esl`) load order, top to bottom. The game engine reads plugins in this order and later-loading records overwrite earlier ones — getting this order wrong is the single most common cause of mod conflicts.

General rules used throughout this guide:

- Masters and frameworks (Unofficial Fallout 4 Patch, Workshop Framework) load near the top, just after the base game masters and DLCs
- Bugfix and engine-fix mods load early
- Content and gameplay mods load after their required frameworks
- Weather mods load late to override exterior lighting and image-space records
- Patches and compatibility fixes always load *after* the mods they patch

#callout(type: "tip")[
  MO2 2.5 includes a built-in LOOT integration (the sort icon in the *Plugins* tab toolbar). Running LOOT after installing several mods will auto-sort most of your load order correctly — but always double-check framework mods (Workshop Framework, Sim Settlements 2) land where their own documentation specifies.
]

=== Left Pane Order

The *left pane* (mods list) controls file-level priority. When two mods supply the same file (e.g. both replace the same texture or script), the mod lower in the left pane wins. This is separate from plugin load order — you can have a mod's files active even if its plugin loads early.

General left-pane rules:

- F4SE and engine frameworks at the top
- Bugfixes next, so their fixes override anything above
- UI mods after bugfixes
- Content mods next (meshes, textures, scripts)
- Patches at the very bottom so they override everything they patch

When MO2 shows a lightning bolt icon next to a mod, that mod is overriding (green bolt with `+`) or being overridden by (red bolt with `-`) another mod's files. Double-click the mod and check the *Conflicts* tab to see exactly which files conflict with which mods.

== How to Mod Fallout 4

Modding is not just downloading and checking boxes. Every mod you add touches some part of the game — a record, a script, a texture, a mesh — and when two mods touch the same thing without a patch between them, one silently loses. The result might be invisible (a perk not applying) or catastrophic (a crash in a specific cell). The discipline described here prevents both.

=== Install One Mod at a Time

Install mods one at a time, never in bulk. After every new mod:

1. Install and activate the mod in MO2
2. Run `LOOT` to sort the updated plugin list
3. Launch the game through `F4SE` and spend 60 seconds testing — open the menu the mod touches, visit a settlement if it adds Workshop items, check that nothing obvious is broken
4. If the mod adds a plugin, run `FO4Edit — Conflicts` to check for new record conflicts (see Patching Discipline below)
5. Only after this passes do you move on to the next mod

This sounds slow. It is. But installing 15 mods at once and then trying to figure out which one broke the game takes far longer.

=== Test Between Categories

After completing an entire category (e.g. all `Bugfixes & Engine` mods, or all `UI & Quality of Life` mods), do a longer test:

1. Launch the game, load a clean save, and play for 15-20 minutes
2. Cover the systems the category touches — open every menu, build a Workshop item, fast-travel between cells, enter and exit interiors
3. If anything is wrong, the category boundary is a natural rollback point — disable the category's mods and re-enable them one by one to isolate the problem

=== Managing the Overwrite Folder

MO2's `Overwrite` folder (always visible at the bottom of the left pane) catches loose files that tools generate but have no designated output mod. Examples: F4SE logs, FO4Edit cache files, MCM settings exports.

- Empty the `Overwrite` folder after every tool run — either move its contents into the appropriate output mod or, if it's just logs, delete them
- If MCM settings files appear in `Overwrite` after configuring mods, create an `MCM Settings` mod under `Output` and drag them there
- If you see `.esp` files or `.pexe` cache files appearing in `Overwrite`, something is misconfigured — check your tool executable arguments

#callout(type: "warn")[
  Leaving files in `Overwrite` means they load globally across every profile and mod combination. A stale F4SE log or a leftover MCM config can cause confusing behaviour that doesn't match any enabled mod. The `Overwrite` folder should be empty or contain only files you deliberately placed and understand.
]

== Patching Discipline

Mod conflicts are not a sign something is broken. They are the natural result of two or more mods editing the same game record. The question is not whether conflicts exist — they always will — but whether the *right* mod wins each conflict.

Adopt the canonical mod-by-mod patching workflow: install one mod at a time, run `FO4Edit` in `-veryquickshowconflicts` mode, try load order first, build per-pair patches only when necessary, and use `ModGroup`s to keep the conflict view clean.

=== The Tools

- `FO4Edit` (xEdit for Fallout 4) is the primary tool for inspecting, cleaning, and patching plugins. It loads your entire plugin list and visualises every record-level conflict.
- `LOOT` is the load-order sorting tool. Run it after every new mod installation and before any FO4Edit session.

Download FO4Edit from #link("https://www.nexusmods.com/fallout4/mods/2737")[FO4Edit on Nexus Mods] and register it in MO2 as described in Register Tools above.

=== Cyclic Workflow (per new mod)

For every mod that adds or changes an `.esp`/`.esl` plugin, follow this cycle:

1. *Install and place.* Heuristic: broad world-changing mods load early; narrow local edits load late. Run `LOOT`.
2. *Run FO4Edit with conflicts.* Launch your `FO4Edit — Conflicts` executable entry (registered with `-veryquickshowconflicts`). Right-click in the left-hand tree → *Hide no conflict and empty rows*. Now you only see records where at least two plugins compete.
3. *Try load order first.* Most conflicts are resolved by moving the winning mod later in the load order. Move the mod, re-run `LOOT`, re-launch FO4Edit, and re-check. Only proceed to step 4 if moving the mod creates a different problem or the right mod genuinely cannot win through load order alone.
4. *Identify bad conflicts.* A bad conflict is one where the *loser* was supposed to win — for example, UFO4P fixes a quest record but a later-loading mod reverts it to the unfixed vanilla state. Focus only on these.
5. *Build a per-pair patch.* Right-click the losing record → *Copy as override into...* → `<new file>.esp` with the ESL template flag. Name it explicitly (e.g. `GlowingHorizon_UFO4P_x_Homemaker.esp`). Drag the corrected values from the losing plugin into the new patch record. Right-click the patch plugin → *Add Masters...* and add every mod whose records it references. Save into the `FO4Edit Output` mod.
6. *Build per-pair ModGroups.* After saving the patch, right-click each conflicting plugin pair → *Create ModGroup*. Move the generated `.ModGroup` files from MO2's `Overwrite` folder into each source mod's own MO2 folder. See the ModGroups section below for details.
7. *Re-open FO4Edit and confirm.* With the patch active and ModGroups applied, re-run the conflict view. The patch should resolve the conflicting records, and the ModGroups should hide the known-acceptable conflicts. You now have zero *visible* unresolved conflicts involving this mod.

=== Conflict Resolution in Practice

Not every conflict needs a patch. Here is how to decide:

- *Leveled lists (`LVLI` records):* Two mods adding items to the same leveled list. If both additions should appear in-game, they need a patch or a merged patch. If one is intentionally replacing the other, load order alone may suffice.
- *NPC records (`NPC_` records):* Two mods editing the same NPC — one changes their inventory, the other changes their face. This almost always needs a patch, because whichever mod loads last will overwrite *all* fields, not just the ones it changes.
- *Quest records (`QUST` records):* Complex and fragile. Never let two mods edit the same quest stage or alias without a patch. If you don't understand the conflict, err on the side of patching.
- *Cell records (`CELL` records):* Two mods placing objects in the same cell. A patch merges both sets of placements into a single cell record so both mods' objects appear. Without a patch, the winner's objects appear and the loser's are invisible.
- *Texture and mesh conflicts (left-pane only):* These do not appear in FO4Edit at all — they are file-level conflicts managed entirely by MO2's left-pane order. Check double-click → *Conflicts* tab for each mod in the left pane.

#callout(type: "tip")[
  When in doubt about whether to patch, check the Nexus pages of both mods. Many popular mods publish compatibility patches — search for them before building your own. A community-tested patch is always safer than a hand-built one.
]

=== ModGroups

`ModGroup`s are metadata files FO4Edit uses to hide conflicts you have *already reviewed and accepted*. They mark a specific pair of plugins as "known — the loser is supposed to lose," so those conflicts no longer clutter the view.

Create a ModGroup after you have confirmed a conflict is intentional and acceptable:

1. In FO4Edit, right-click the losing plugin → *Create ModGroup*
2. FO4Edit generates a `.ModGroup` file and saves it to the `Overwrite` folder
3. Drag the `.ModGroup` file from `Overwrite` into the *losing* plugin's MO2 mod folder (not the winning one — the ModGroup tells FO4Edit "this plugin is expected to lose to that one")

After building ModGroups for all accepted conflicts, re-opening FO4Edit should show you *only new, unresolved conflicts* — the view stays clean and actionable as your modlist grows.

#callout(type: "warn")[
  Never create a ModGroup for a conflict you have not actually reviewed. A ModGroup that hides an unintended override is how a bug survives undetected through twenty more mod installs.
]

=== Cleaning Discipline

Some plugins ship with identical-to-master (ITM) records or deleted (UDR) references — remnants from the author's development process that can cause issues when other mods depend on the vanilla version of those records.

1. Run `LOOT` after installing a new mod
2. If LOOT flags a plugin as needing cleaning, launch your `FO4EditQAC` executable entry, select only that plugin, and wait for it to complete
3. After QAC finishes, select the plugin again in FO4Edit and run *Check for Errors* (right-click → *Check for Errors*). Red errors may indicate the mod is broken — reconsider using it
4. Never clean a plugin LOOT does not flag. Many mods ship ITMs intentionally as compatibility measures

The official Fallout 4 masters (`Fallout4.esm`, DLC `.esm` files) should also be cleaned. This is standard practice across the FO4 modding community:

1. Launch `FO4EditQAC`, select all vanilla masters *except* `Fallout4.esm` (clean it last, alone)
2. Repeat for each DLC master individually
3. Collect the cleaned `.esm` files into a `Cleaned Vanilla Masters` mod under the `Baseline` separator
4. Restore the originals from the `FO4Edit Backups` folder inside your `Overwrite` or FO4Edit directory

=== ESL-Flagged Patches

When building patches in FO4Edit, always use the ESL template flag (`<new file>.esp` with the ESL option checked). ESL-flagged plugins do not count toward Fallout 4's 254-plugin hard cap, but they still load and function exactly like regular plugins.

- Always use the `[Template] ESL` option when creating a new patch — never manually re-flag an existing ESP to ESL unless FO4Edit explicitly confirms it is safe
- Patches created with the ESL template are automatically compacted and flagged correctly
- ESL-flagged plugins share a limited address space (4096 slots across all light plugins) — this is rarely an issue for patch-sized plugins but avoid ESL-flagging mods that add hundreds of new records

=== Risks

- Keep your patches scoped — do not let one patch absorb every decision. A single monolithic patch is harder to update and harder to debug
- Date-stamp your patch filenames or maintain a changelog so you know when a source mod update requires rebuilding the patch
- Re-run FO4Edit after every source-mod update — an update to UFO4P or Workshop Framework can silently invalidate patches you built against an older version
- Patches that copy records from downstream plugins inherit unresolved conflicts — always check the full master chain, not just the two mods you are patching
- If you accumulate many small per-pair patches, consider merging them into themed patches (e.g. `GlowingHorizon_Settlement_Patch.esp` for all settlement-mod conflicts)
- Test that disabling one upstream source mod cleanly removes its dependent patch's masters — a patch that demands a master you have removed will crash the game on load

#callout(type: "tip")[
  The discipline described here is the same one used by every major Skyrim and Fallout 4 modlist. It is an investment of time at the start that pays back every time you install a new mod without breaking anything, and every time you debug a problem in minutes instead of hours because the conflict view is clean.
]

== Recommended Folder Structure

```
C:\Games\Fallout 4\                <- vanilla game install (untouched)
├── Fallout4.exe
├── f4se_loader.exe                <- F4SE, installed directly here
├── f4se_1_11_221.dll
└── Data\                          <- only vanilla + DLC files live here

C:\Modding\Tools\Mod Organizer 2\  <- MO2 instance (separate location)
├── ModOrganizer.exe
├── mods\                          <- every mod's isolated folder
│   ├── Baseline\
│   │   └── F4SE Scripts\
│   ├── Bugfixes & Engine\
│   │   ├── Unofficial Fallout 4 Patch\
│   │   └── ...
│   ├── UI & Quality of Life\
│   ├── Settlements & Content\
│   └── Output\
│       ├── FO4Edit Output\
│       └── F4SE Output\
├── profiles\
│   └── Glowing Horizon\
│       ├── plugins.txt            <- load order
│       └── modlist.txt            <- mod activation state
├── downloads\                     <- archived mod downloads
└── overwrite\                     <- loose generated files
```

== Backing Up Your Save

Before installing any mods, make a manual backup of your `Documents\My Games\Fallout4\Saves` folder. MO2 does not touch your saves, but it is good practice before any modding project.

Also back up your MO2 profile periodically: copy the entire `profiles\Glowing Horizon\` folder to a safe location. This preserves both your `plugins.txt` (load order) and `modlist.txt` (mod activation state) — recovering from a broken load order is trivial if you have this backup.

== Verifying Your Setup

Before beginning the Wave 0 modlist:

1. Launch the game through MO2's *F4SE* executable entry
2. Watch for the F4SE version splash in the main menu's bottom-right corner (in addition to the game version `1.11.221` in the bottom-left)
3. Start a new game and verify the vanilla opening sequence runs without crashing — this confirms F4SE and the base game are in agreement before any mods are added
4. Quit, check MO2's `Overwrite` folder is empty or contains only expected log files
5. You are now ready to begin installing Wave 0 mods

#pagebreak()
