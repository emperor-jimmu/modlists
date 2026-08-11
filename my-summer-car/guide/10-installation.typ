// 10-installation.typ — Peräjärvi '95: from a clean Steam install to a modded garage.
#import "theme.typ": *

= Installation

_From a vanilla My Summer Car 1.0 to a modded garage in four steps: game, loader, mods, verify._

== What you need

#table(
  columns: (1fr, 2fr),
  inset: 7pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { panel2 },
  align: (left, left),
  [*Item*], [*Value*],
  [Base game], [My Summer Car 1.0 — Steam (final build; out of Early Access 2025-01-08)],
  [Mod manager], [MSCLoader — the community-standard loader (v1.4.2 at the time of writing)],
  [Mods], [The 6 curated mods from chapter 2],
  [Sources], [Steam · Nexus Mods (mysummercar) · GitHub (piotrulos/MSCModLoader) · OverTake.gg],
)

My Summer Car is a finished product: 1.0 shipped in January 2025 and Steam keeps the game on the final stable build automatically. There is no "beta branch" you need — install the current build and leave it on default settings.

#info[
  Everything in this guide is downloaded from exactly four trusted hubs: Steam, Nexus Mods, the official MSCLoader GitHub, and OverTake.gg. Never grab MSC mods from random repack or aggregator sites.
]

== Step 1 — Install and launch the game

1. Install *My Summer Car* from Steam. The game folder is typically `Steam\steamapps\common\My Summer Car`.
2. Launch the game once and start a new save so the game generates its files and folder structure.
3. Quit and verify the game runs unmodded first. If anything is wrong, fix it before touching mods.

== Step 2 — Install MSCLoader (the mod manager)

MSCLoader is the mod manager for the avid modder: it loads C\# plugins, shows every installed mod with its version in an in-game mod menu, exposes per-mod settings, and is the ecosystem nearly every current My Summer Car mod is built for. It is open source (GPL-3.0) and maintained by the same author as several popular mods.

The official install flow (from the loader's README — follow it exactly):

1. Download the latest release from #link("https://github.com/piotrulos/MSCModLoader/releases")[the MSCLoader GitHub releases] (or the #link("https://www.nexusmods.com/mysummercar/mods/147")[Nexus page]).
2. Unpack the archive *anywhere you want* — #text(weight: "bold")[never inside any game folder].
3. Run `MSCLInstaller.exe`.
4. If your game path was not found automatically, select the My Summer Car folder manually.
5. Select *"Install MSCLoader"* and click the *"Select option"* button.
6. Choose the folder that will hold your mods — the game folder is the recommended, simplest choice.
7. Wait for the install to finish. The loader is now part of the game.

#tip[
  The same installer can also *uninstall* the loader cleanly. If you ever want to go back to a completely vanilla game, re-run `MSCLInstaller.exe` and use its uninstall option.
]

== Step 3 — Install the mods

Every mod in chapter 2 has its own *Install* line, but they all follow the same pattern:

1. Download the mod from its page (Nexus Mods or OverTake.gg).
2. Unpack the archive — do not place `.zip` files into the mods folder.
3. Copy the mod's contents (a folder containing the `.dll` and any assets) into the *Mods* folder you chose in step 2.
4. Some mods need extra setup — e.g. Cassette Tapes wants a `Radio` folder for your music. Those notes are on the mod cards.

#warn[
  Before your first modded launch, back up your save — the file is `defaultES2File.txt` in the game's saves folder. Mods are generally safe, but saves are cheap to copy and expensive to lose.
]

== Step 4 — Verify and first launch

1. Launch the game through Steam. The loader boots with the game.
2. Open the loader's mod menu (the exact key/menu entry is shown in the loader's own documentation; the game's settings screen also lists loader options).
3. All installed mods should show as *loaded/active*. A mod shown in red means it failed to load — usually an outdated mod or a missing dependency. Check the mod's Nexus posts/bugs tab for the fix.
4. If a mod misbehaves, the game writes `output_log.txt` in the game folder — this file is what mod authors and the community will ask for when you report an issue.

#info[
  Mods can be enabled and disabled individually from the loader's menu — that is the first troubleshooting move for any problem, and it makes testing new additions safe.
]

== Updating and removing mods

- *Update a mod*: replace its folder in the Mods folder with the new version from its page.
- *Remove a mod*: delete its folder from the Mods folder.
- *Update the loader*: download the new release and re-run `MSCLInstaller.exe` — your mods folder and saves are untouched.
- After any change, launch and check the loader's mod list once before playing on.

== Safety rules

- Only Nexus Mods, the official MSCLoader GitHub, and OverTake.gg in this guide.
- Read the *Requirements* section of every mod page — most mods need the latest MSCLoader.
- Check the *Last updated* date: for a finished game, old mods are the main compatibility risk, not new ones.
- Keep one save backup from before modding, and one from before each big mod change.
