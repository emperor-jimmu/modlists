// 10-installation.typ — Whitecap: from a clean Steam install to a modded rescue service.
#import "theme.typ": *

= Installation

_From a vanilla Stormworks v1.15.18 to a modded rescue service in four steps: game, mods, world, verify._

== What you need

#table(
  columns: (1fr, 2fr),
  inset: 7pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { panel2 },
  align: (left, left),
  [*Item*], [*Value*],
  [Base game], [Stormworks: Build and Rescue v1.15.18 — Steam (current stable; Geometa is still actively developing the game)],
  [DLC], [*All three, required:* Search and Destroy (weapons & explosives), Industrial Frontier (industry), Space (space & mining) — the "Complete Collection" bundle covers them],
  [Mod manager], [The game's official Mod Manager — Steam Workshop subscriptions + per-save "Enabled Mods" (asset modding since v1.13.0). No third-party tool needed.],
  [Mods], [The curated Workshop mods from chapter 2, installed in two layers],
  [Sources], [Steam Workshop · the game's own Mod Manager · the Geometa modding wiki],
)

Stormworks is a *living game*: Geometa ships several updates a year (v1.15.18 "The Airburst Update" landed June 2026). Steam keeps the game on the latest build automatically — there is no version selection to worry about, but it does mean mods must be checked against the current game version, because a game update can briefly break a mod until its author catches up.

*All three DLCs are required for this modlist.* The game's current content — and the mods built on it — assume the full set: Search and Destroy for weapons and explosives (R.A.M.B.O. rebalances weapon components; several parts mods add military hardware), Industrial Frontier for mining and industry, and Space for rockets and orbital content. They install like the base game (one Steam purchase, no launcher, no options), and the *Complete Collection* bundle on the store page includes all three plus the base game in one discounted package.

#info[
  The two-layer structure exists for exactly this reason: *Layer 1* (QoL and graphics only) is your first save, and *Layer 2* (the full modded experience) is a second save you start once you know the ropes. Both are described in chapter 2, and both are created exactly the same way — the only difference is which mods you enable.
]

== Step 1 — Install and launch the game

1. Install *Stormworks: Build and Rescue* from Steam.
2. Launch the game once and start a new game, so the game generates its save folders under `%AppData%\Roaming\Stormworks\`.
3. Quit and confirm the vanilla game runs before touching mods. If something is wrong, fix it first.

== Step 2 — Subscribe to the mods

Every mod in this guide lives on the Steam Workshop — there is no separate download site and no external loader. The Workshop is also the *manager*: subscription, version tracking and updates are handled by Steam automatically.

1. Open the Steam Workshop for Stormworks: #link("https://steamcommunity.com/app/573090/workshop/")[steamcommunity.com/app/573090/workshop].
2. Open each mod's page (every card in chapter 2 links its own page) and click *Subscribe*.
3. Layer 1 first — that is the save you start with.

#tip[
  Steam *Workshop Collections* let you group mods and subscribe to the whole group in one click — this is the avid modder's way to keep the two layers as two collections ("Whitecap Layer 1", "Whitecap Layer 2") and to switch between them cleanly.
]

== Step 3 — Create the world and enable the mods

Stormworks decides which mods run *per save, at world creation*. The flow (documented by the R.A.M.B.O. author, and identical for every mod):

1. From the main menu click *New Game*.
2. Click *Enabled Mods*.
3. Switch to the *Workshop* tab.
4. Enable the mods for the layer you are starting (all of Layer 1 — or all of Layer 1 + Layer 2 once you have experience). Leave the rest off.
5. Click *Back*, set the rest of your world options (mode, difficulty — see chapter 4), and click *Confirm*.
6. Play a little, save, and quit.

#warn[
  Mods are bound to the save at creation. If you later want a different mod set, *start a fresh save* with the new selection — do not try to bolt Layer 2 onto your Layer 1 save. (The advanced scene.xml path below exists, but it is exactly the kind of fiddly surgery a fresh save avoids.)
]

== Step 4 — Verify the first launch

1. Launch the game and load your new save.
2. Confirm the mods are actually active — each mod's page describes what you should see (e.g. Opal's shader changes are immediately visible in the water and sky; Echo's workbenches are visibly bigger).
3. *If a mod is tagged with a game version older than the current build*, watch for issues — see "Updating and removing mods" below.

#warn[
  R.A.M.B.O. (Layer 2) has one documented quirk: after launching the game, *load the modded save twice* — the first load does not always apply the modded physics (a game bug the author reports to Geometa). This is in the mod's own installation instructions.
]

== Updating and removing mods

- *Update a mod*: nothing to do — Steam updates Workshop subscriptions automatically. If an update breaks something, check the mod's page for a fix before reporting it.
- *Remove a mod*: *Unsubscribe* on its Workshop page, then remove any vehicles that use its parts *before* loading the save without it — modded parts on a save without the mod can lock vehicles or corrupt the save.
- *Clean slate*: if you want every trace of a mod gone, Steam → right-click Stormworks → *Properties → Installed Files → Verify integrity of game files* resets the game's own files.
- *The `data/mods` folder*: `%AppData%\Roaming\Stormworks\data\mods` holds local mod overrides. You generally never need to touch it — Workshop mods are managed in-game — but it is where mod files land if you download a mod manually, and removing a folder there is how you uninstall a manual mod.

#info[
  Adding a mod to an *existing* save is possible but unsupported and fiddly: it means editing `scene.xml` in the save folder (`%AppData%\Roaming\Stormworks\saves\<save>\`) to reference the mod's files. Create a temporary save with the mod enabled, copy the mod's line from its `scene.xml`, and paste it into your main save's `scene.xml`. Only do this if you cannot start a new save — it is the backup plan, not the flow.
]

== Safety rules

- Back up your save folder: copy `%AppData%\Roaming\Stormworks\saves\<save>` somewhere safe before any big change. Saves are cheap to copy and expensive to lose.
- Read the *Requirements* and *Last updated* fields on every mod page before subscribing.
- Check the version tag on each mod (e.g. `v1.15.18`): a mod a few versions behind the game usually still works, but one that is years behind is a compatibility risk — this guide's rejected list in chapter 2 is full of exactly those.
- Keep your Layer 1 and Layer 2 saves separate, and back up each before upgrading anything.
- The moment something breaks: verify the game files, then disable mods one at a time (new saves or the scene.xml path) to isolate the culprit.
