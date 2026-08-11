// 10-installation.typ — Routa: from a clean Steam install to a modded winter garage.
#import "theme.typ": *

= Installation

_From a vanilla My Winter Car v.260516-01 to a modded winter garage in four steps: game, loader, mods, verify._

== What you need

#table(
  columns: (1fr, 2fr),
  inset: 7pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { panel2 },
  align: (left, left),
  [*Item*], [*Value*],
  [Base game], [My Winter Car v.260516-01 — Steam (Early Access; Amistech is still actively developing the game)],
  [Mod manager], [MSCLoader (for My Winter Car) v1.4.2 — the community-standard mod manager; every maintained mod on the hub depends on it],
  [Mods], [The curated Nexus mods from chapter 2, installed in two layers],
  [Sources], [Nexus Mods (My Winter Car hub) · the loader's GitHub wiki · the My Winter Car Wiki],
)

My Winter Car is a *living game*: Amistech ships date-coded Early Access builds frequently (v.260126-01, v.260415-01, v.260504-01, v.260516-01 — and more after). Steam keeps the game on the latest build automatically, so there is no version selection to worry about — but a game update can briefly break a mod until its author catches up, so check each mod's *Last updated* date and *Posts* tab before installing.

#info[
  The two-layer structure exists for exactly this reason: *Layer 1* (QoL and graphics only) is how a fresh player starts. *Layer 2* (the full modded experience) is added once you have experience. Both are described in chapter 2. MSCLoader loads all installed mods and lets you *enable and disable each one* from its in-game mod menu — that is how the layers work here: enable the Layer 1 set first, then switch Rivett Revamp on for Layer 2.
]

== Step 1 — Install and launch the game

1. Install *My Winter Car* from Steam (app 4164420).
2. Launch the game once and start a new game, so the game creates its save folder under `%AppData%\LocalLow\Amistech\My Winter Car` (`savefile.txt` for world state and jobs, `carpart.txt` for vehicle wear and tightness).
3. Quit and confirm the vanilla game runs before touching mods. If something is wrong, fix it first.

== Step 2 — Install the loader (the mod manager)

Every maintained mod for My Winter Car is built for *MSCLoader* — the loader is the ecosystem: it provides the in-game mod menu, per-mod settings, update checking, conflict warnings and bug reports, and 497 mods on the Nexus hub depend on it. Install flow (from the loader's official README):

1. Download the latest *MSCLoader (for My Winter Car)* release — Nexus `mods/3` or GitHub `piotrulos/MSCModLoader/releases`.
2. Unpack the archive *anywhere you like* — *do NOT unpack it into any game folders*.
3. Run *MSCLInstaller.exe*. If the My Winter Car path is not found automatically, select it manually.
4. Choose *Install MSCLoader* → *Select Option*, and pick your *Mods folder* — *Game Folder is recommended*.
5. Wait for the installation to finish. Launch the game once: you should see the loader's mod menu (the loader wiki shows the current keybind; a console window and `output_log.txt` / `MSCLoader_Preloader.txt` next to the game's executable are normal).

#tip[
  The loader serves both My Summer Car and My Winter Car — use the *for My Winter Car* build from `mods/3` and the installer picks the right game. If the installer does not auto-detect the game, the community-documented workaround is to temporarily rename the game executable (`mywintercar.exe` → `mysummercar.exe`), run the installer, and rename it back — then verify the mod menu opens.
]

== Step 3 — Install the mods, layer by layer

Every mod in this guide lives on the Nexus Mods My Winter Car hub. There is no separate download site and no external tool: download → unpack into the Mods folder → enable in the loader's mod menu.

1. Open the hub: #link("https://www.nexusmods.com/mywintercar")[nexusmods.com/mywintercar].
2. Download the *Layer 1* mods from chapter 2 (cards link their own pages).
3. Unpack each download into the Mods folder you chose in Step 2 — a mod is typically a single `.dll` (plus optional subfolders); follow each mod's Files tab if it ships something else.
4. Launch the game and open the loader's mod menu: the mods should be listed. *Layer 1 first* — that is the save you start with.
5. When you later want Layer 2, open the mod menu and enable *Rivett Revamp* as well. The loader saves your enabled/disabled state per mod, so switching between the two layers is one menu visit.

#tip[
  Some mod pages still document *BepInEx* or *MelonLoader* installation routes from the game's early weeks. Ignore those — use the *MSCLoader* build of each mod (the Requirements tab lists the loader for every mod in this guide). One manager, one set of files, one update path.
]

== Step 4 — Verify the first launch

1. Launch the game and load your save.
2. Confirm the mods are actually active — each mod card in chapter 2 says what you should see (Enhanced Graphics changes the sky and lighting immediately; the minimap adds its HUD; Better FPS can be benchmarked with `fpstest` in the loader console).
3. *If a mod has not been updated since the current game build*, watch for issues — see "Updating and removing mods" below.

#warn[
  Backup your save folder (`%AppData%\LocalLow\Amistech\My Winter Car`) *before* installing anything, and again before any big change. Saves are two small text files — copying them is cheap, losing them is not.
]

== Updating and removing mods

- *Update a mod*: the loader's mod menu has an *Updates* tab — it checks each enabled mod and applies updates from Nexus. If an update breaks something, check the mod's Posts tab for a fix before reporting it.
- *Remove a mod*: disable it in the mod menu, quit, delete its files from the Mods folder, and (for a mod that touches the car) load a save that doesn't rely on it.
- *Clean slate*: Steam → right-click My Winter Car → *Properties → Installed Files → Verify integrity of game files* resets the game's own files. For the loader: reinstall it with MSCLInstaller.exe and empty the Mods folder.
- *Bug reports*: the loader collects `output_log.txt` and `MSCLoader_Preloader.txt` — attach both if a mod misbehaves and you report it to its author.

#info[
  Adding, removing or updating a mod is safe mid-career for this list — unlike many games, MSCLoader mods here do not touch the save format (the game's progress lives in `savefile.txt` / `carpart.txt`, and none of the adopted mods rewrite them). Keep the backup habit anyway; Early Access patches are the real wildcard.
]

== Safety rules

- Back up `%AppData%\LocalLow\Amistech\My Winter Car` before any big change, and keep a second backup when you start Layer 2.
- Read the *Requirements*, *Last updated* and *Bugs* fields on every mod page before downloading.
- Only install mods that list *MSCLoader (for My Winter Car)* as a requirement — My Summer Car mods do *not* magically work on My Winter Car (the loader can ignore its compatibility warning, but that "will NOT magically make MSC mods work on MWC", per the loader's own changelog).
- The moment something breaks: disable mods one at a time in the mod menu to isolate the culprit, then verify the game files.
