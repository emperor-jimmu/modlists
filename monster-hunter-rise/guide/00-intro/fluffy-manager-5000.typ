#import "../../theme.typ": *

== Fluffy Manager 5000 — Installation & Configuration

Fluffy Manager 5000 (FM5000) is the mod organizer for this project. It is a free, portable mod manager by *FluffyQuack* for RE Engine Capcom titles — including *Monster Hunter Rise* — and it handles installing, toggling, and reordering mods without you ever touching the game's files by hand.

It manages mods for a game by installing them into a folder the game itself loads as an overlay — for Monster Hunter Rise that is the `nativePC` folder inside the game directory. You never edit that folder yourself; the manager does it.

=== 1. Download & Install the Manager

1. Download the latest *Fluffy Manager 5000* from the official site: #link("https://www.fluffyquack.com/")[fluffyquack.com] (the direct download link on the page, `modmanager.zip`).
2. Extract the archive to a normal folder — e.g. `D:\Mods\Fluffy Manager 5000`. Keep it *out* of `Program Files`, OneDrive, and any protected folder; it is a portable app and works best somewhere you control.
3. Run `Fluffy.exe`. No installer is needed; the manager writes nothing to the Windows registry.

#tip[
  Do not extract the manager inside the game's own folder. It needs to live somewhere stable so its per-game data survives game updates.
]

=== 2. First Launch & Game Setup

1. On first launch the manager shows a list of supported games. Select *Monster Hunter Rise*.
2. If it does not find the install automatically (or you want to double-check), click the game's entry and point it at your game folder — the folder that contains `MonsterHunterRise.exe`:
   `...\Steam\steamapps\common\MonsterHunterRise\`
3. The manager confirms the game is registered. Your per-game folder now exists inside the manager directory as `Games\MHRISE\`.

#note[
  Paths inside the manager use `MHRISE` as the game's short name. If your folder is named slightly differently, the manager will create it on first selection — trust what the manager shows you rather than this guide's wording.
]

=== 3. Where Mods Live

Mods arrive as archives — almost always `.zip`, sometimes `.rar` — that mirror the game's internal folder structure. To add a mod to the manager:

1. Drop the archive into the mods area for the game: `Fluffy Manager 5000\Games\MHRISE\Mods\` (the manager also offers an *Install Mods* button / drag-and-drop in its window).
2. The archive now appears in the mod list. It is *staged*, not yet active.

#note[
  The manager reads the archive directly; it does not need the archive extracted first, and it keeps your original files untouched. That is what makes uninstalling safe.
]

=== 4. Installing & Managing Mods

- *Install:* select the mod in the list and click *Install Mod* (or right-click → install). The manager unpacks it into the game's `nativePC` overlay. The list marks installed mods with a green state.
- *Enable / disable:* check the box next to a mod. Disabling removes its files from the overlay without deleting the archive — you can re-enable any time.
- *Reinstall:* if a mod is half-updated or the list state looks wrong, reinstall it from its archive.
- *Uninstall:* right-click → uninstall, or *Purge Mods* to remove everything the manager installed at once. Purge is the safe "reset to vanilla" button.
- *Load order:* drag mods in the list. For mods that overwrite the same files, the one *lower in the list* wins (the later install overwrites the earlier one).

#warn[
  Install mods that have dependencies *before* the mods that need them. If a card says "requires REFramework (or another dependency)", that dependency is itself a mod you install the same way, first. See the Dependencies section below.
]

=== 5. Launching the Game

Use the manager's *Launch game* button. This ensures the current mod list state is applied and starts the game normally. Launching from Steam also works once mods are installed — the files are already in the overlay — but the manager's button is the safest habit.

#tip[
  After any change to the mod list, launch through the manager at least once. That is the moment a broken mod install announces itself — and with a save backup and a purge, it is always recoverable.
]

=== 6. Dependencies

Many Monster Hunter Rise mods — especially script-based ones — list a dependency such as *REFramework* on their page. Rules:

- Treat every dependency the owner recorded in a mod's card as mandatory. Install dependencies first, then the mod.
- Dependencies are mods too and go through the exact same install flow (including REFramework, whose archive contains a `dinput8.dll` that lands in the game's main folder).
- A mod whose dependency is missing will silently do nothing — no crash, no error. If a mod "doesn't work," check dependencies first.

=== 7. Keeping Everything Current

- *Game updates:* when Steam updates Monster Hunter Rise, re-check the version at the main menu. This guide targets 16.0.3.1. After a game update, mods can break even if they were fine the day before — re-test your wave before playing on.
- *Manager updates:* FM5000 checks for updates at launch; update when prompted. Manager updates rarely affect installed mods, but re-verify your list after one.
- *Mod versions:* the owner records version/date info on each card when known. Use it as the compatibility signal — never assume an old mod works on a new patch.

=== 8. Uninstalling Everything

1. In the manager: uninstall each mod (or *Purge Mods*) to restore the game to vanilla.
2. Delete the manager folder. Nothing else needs cleaning — the manager never touches your save games.

#warn[
  Save games are never modified by mods, but *always* back them up before large mod changes. Saves live under your user profile, outside the game folder: `...\Steam\userdata\<id>\1446780\` is where Rise keeps them (the game's Steam App ID). Copy the folder, don't trust Steam Cloud alone.
]

=== 9. Troubleshooting

#table(
  columns: (24%, 34%, 42%),
  stroke: 0.4pt + LINE,
  fill: (x, y) => if y == 0 { EMBER_DK } else { white },
  table.header(
  )[
    [#text(fill: SNOW, weight: "bold", font: DISPLAY, size: 9.5pt)[Symptom]]
    [#text(fill: SNOW, weight: "bold", font: DISPLAY, size: 9.5pt)[Likely cause]]
    [#text(fill: SNOW, weight: "bold", font: DISPLAY, size: 9.5pt)[Fix]]
  ],
  [Game not detected at first launch], [Manager searched the wrong drive], [Re-add the game and point at the folder containing `MonsterHunterRise.exe`],
  [Mod does not appear in the list], [Wrong mods folder, or archive is corrupt], [Move the archive into `Games\MHRISE\Mods\`; re-download if corrupt],
  [Mod is installed but has no effect], [Missing dependency; wrong game version; or the mod needs config], [Check the card's dependencies; confirm version 16.0.3.1; read the mod's own instructions],
  [Game fails to start after installing], [One bad mod in the overlay], [Disable the newest mods one by one; if desperate, *Purge Mods* and reinstall the wave's mods in order],
  [Manager or game blocked by antivirus], [Portable executables get flagged], [Add exceptions for the manager folder and the game folder],
  [Mod list state lost], [Antivirus or manual deletion of `nativePC`], [Reinstall from the archives — the archives are the source of truth],
)

#note[
  If the list state ever disagrees with reality, the archives in `Games\MHRISE\Mods\` are the source of truth: purge, then reinstall the wave's mods in dependency order.
]
