// 10-installation.typ — Iron Valley: from a clean Steam install to a modded railway.
#import "theme.typ": *

= Installation

_From a vanilla Derail Valley B99.7 to a modded railway in four steps: game, manager, mods, verify._

== What you need

#table(
  columns: (1fr, 2fr),
  inset: 7pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { panel2 },
  align: (left, left),
  [*Item*], [*Value*],
  [Base game], [Derail Valley — Steam (Early Access; current live build is the B99.7 line, final patch 2025-08-02)],
  [Mod manager], [Unity Mod Manager — the community-standard loader (v0.32.5 at the time of writing)],
  [Mods], [The curated mods from chapter 2 (foundations, rolling stock, detail mods)],
  [Sources], [Steam · Nexus Mods (derailvalley) · GitHub (WhistleWiz) · reshade.me (optional)],
)

Derail Valley is an Early Access game. The last released builds are B99 (November 2024) with the B99.1–B99.7 stability patches through 2025, plus a Unity engine security patch (October 2025) that changed nothing gameplay-wise. The team is now building _B100_ — the planned first proper electric locomotive, overhead lines and 100+ new cargo types — with a target around the end of 2027. This guide targets the current live build, and everything here is chosen to work on it.

#info[
  Everything in this guide is downloaded from exactly four trusted hubs: Steam, Nexus Mods, official GitHub repositories, and reshade.me (optional). Never grab Derail Valley mods from random repack or aggregator sites.
]

== Step 1 — Install and launch the game

1. Install *Derail Valley* from Steam. The game folder is typically `Steam\steamapps\common\Derail Valley`.
2. Launch the game once and play through the tutorial start so the game generates its files and folder structure.
3. Quit and verify the game runs unmodded first. If anything is wrong, fix it before touching mods.

#tip[
  Your save lives in `DerailValley_Data\SaveGameData\savegame` inside the game folder (the game auto-saves on exit and keeps regular backups there). Copy the whole folder before you start modding — saves are cheap to back up and expensive to lose.
]

== Step 2 — Install Unity Mod Manager (the mod manager)

Unity Mod Manager (UMM) is the *best mod manager for an avid modder* in the Derail Valley community, and the only one this guide uses:

- It is the ecosystem standard — nearly every current mod is a UMM mod, so one manager covers everything, including the frameworks in chapter 2.
- It gives you a real *mod menu in-game* (#key("Ctrl+F10")): every mod listed with its version, enable/disable per mod, and per-mod settings from one place.
- It installs mods by *drag-and-drop*: drop a downloaded mod zip onto the Mods tab and it is installed, enabled and updatable — no manual folder surgery.
- It is cross-game (51k+ endorsements, in active development) and can check Nexus for mod updates.
- The game has *no official mod support and no Steam Workshop* — UMM is how the community does it, and the official community modding guide documents it.

The install flow (from the manager's own documentation — follow it exactly):

1. Download the latest release from #link("https://www.nexusmods.com/site/mods/21")[the Unity Mod Manager Nexus page].
2. Unpack the archive *anywhere you want* — never inside the game folder.
3. Run `UnityModManager.exe`.
4. Go to the *Install* tab and select _Derail Valley_ from the game list.
5. If the game folder is not detected automatically, point it at your `Steam\steamapps\common\Derail Valley` folder.
6. Ensure the installation method is set to _DoorstopProxy_ (the recommended method for Derail Valley) and click *Install*.
7. The manager is now wired into the game. Leave the manager open for the next step.

== Step 3 — Install the mods

Every mod in chapter 2 follows the same pattern:

1. Download the mod from its page (Nexus Mods or GitHub).
2. Open Unity Mod Manager and go to the *Mods* tab.
3. *Drag and drop* the downloaded `.zip` directly onto the mod list. UMM installs it, enables it, and shows its status.
4. Install in dependency order: first the frameworks (Language Helper → Custom Car Loader → Custom Licenses → Comms Radio API), then the content that needs them (the locomotive packs, Skin Manager, Loco Ownership, DV Custom Cargo). Each mod card in chapter 2 lists its requirements.

#warn[
  Custom Car Loader is version-strict: it _does not support any build before B99.7_ (which is exactly the current build), and _all mods built for CCL pre-3.0.0 do not work on the current version_. If a custom locomotive page says "requires CCL", make sure it is the current CCL release. Also note CCL's own warning: *Number Manager is not compatible with CCL* — that is why it is not in this list.
]

== Step 4 — Verify and first launch

1. Launch the game through Steam. Unity Mod Manager boots with the game.
2. Open the mod menu with #key("Ctrl+F10"). All installed mods should show a *green/OK* status.
3. A mod shown in red means it failed to load — usually an outdated version or a missing dependency. Check the mod's Nexus page (Requirements section and Posts/Bugs tabs) for the fix.
4. If a mod misbehaves, disable it from the same menu and test — that is the first troubleshooting move for any problem.

#info[
  Mods can be enabled and disabled individually from the UMM mod menu without touching any files. That makes testing new additions — and isolating the cause of a crash — a two-minute job.
]

== Updating and removing mods

- *Update a mod*: drag the new zip into UMM (it replaces the old version) or use the manager's update check.
- *Remove a mod*: disable it in the mod menu, or remove it from UMM's Mods tab.
- *Update the manager*: download the new release and re-run the installer — your mods and saves are untouched.
- After any change, launch and check the mod list once before playing on.

== Safety rules

- Only Nexus Mods, official GitHub repositories, and reshade.me in this guide.
- Read the *Requirements* section of every mod page — most mods need the current UMM and, for custom rolling stock, the current Custom Car Loader.
- Check the *Last updated* date. Derail Valley is Early Access: every major build has historically broken older mods, and B100 will do it again. A mod updated in the B99.x era is a green flag; a mod untouched since 2023 is a red one.
- Keep one save backup from before modding, and one before each big mod change.
