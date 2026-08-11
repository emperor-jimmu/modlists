// 10-installation.typ — The Grand Chronicle: installation chapter.
#import "theme.typ": *

= Installation

_Everything you need to go from a vanilla install to a fully modded chronicle — in two layers, with the right mod manager and a load order that stays stable._

== What you need

- _The Complete Edition of Civ VI on Steam_ — base game, *Rise and Fall*, *Gathering Storm*, the *New Frontier Pass*, and the *Leader Pass*. Every mod in this list targets the Gathering Storm ruleset, and several assume the later content.
- _A current game build._ The final version of the game is _1.0.12.68_ (last update: July 15, 2024; the content roadmap had ended earlier with the Leader Pass in March 2023). Steam updates automatically — you are current if there is no pending update and the Leader Pass leaders appear in-game.
- _~15 GB of free disk space_ for the Workshop downloads.
- _Steam subscribed_ to nothing else required — the Workshop does the downloading.

#info[
  This list is designed for the *last* version of the game. Mods that were not updated for the final build (e.g. old monolithic UI packs such as CQUI) are deliberately excluded — every mod below is verified to exist and remain in active use on the Workshop.
]

== The mod manager: how Civ 6 actually does it

Civ 6 has _no community-standard external mod manager_ — unlike Skyrim or Stellaris there is no widely used third-party tool, and Vortex is actively discouraged by the community. Instead, the power-user setup has three layers:

1. _The Steam Workshop_ — this is where every mod lives and where subscribing *is* the installation. Subscribe to the items in Chapter 2 (or save them into your own Workshop *Collection* to reinstall in one click).
2. _Enhanced Mod Manager_ — a Workshop mod by FinalFreak16 (over a million subscribers) that replaces the clunky in-game mod screen: it splits your mods into *enabled* and *disabled* lists, adds filters, and shows each mod's description and dependencies at a glance.
3. _The in-game Additional Content screen_ — the game's own mod list (from the main menu: *Additional Content → Mods*). This is where you toggle mods for each game.

#tip[
  Subscribing is enough — the game detects Workshop mods automatically. You only need the local `Mods` folder when a mod is not on the Workshop (none in this list are).
]

=== Where the files live

- _Workshop mods_: `Steam\steamapps\workshop\content\289070\<item id>\` — one folder per subscribed item.
- _Local mods_: `Documents\My Games\Sid Meier's Civilization VI\Mods\`

=== Load order: how conflicts are resolved

Civ 6 has _no drag-and-drop load order_. Each mod's `.modinfo` file declares a `<LoadOrder>` number: lower values load first, higher values load later and win conflicts.

#text(size: 9.5pt)[
#table(
  columns: (1fr, 2.6fr),
  inset: 6pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { cream },
  align: (left, left),
  [_LoadOrder_], [_Intended phase_],
  [-100], [Schema changes — data removal, core adjustments],
  [-50], [Premature updates — must run before content is added],
  [0], [Standard content — the default for most mods],
  [50], [Post-updates — applied after most content],
  [100], [Scenario updates — very last],
)
]

For The Grand Chronicle this mostly takes care of itself: the mods in Chapter 2 are non-overlapping by design (one AI overhaul, cosmetic mods with known companions). If you *ever* need a mod to override another, edit that mod's `.modinfo` (raise its `<LoadOrder>`), keep a backup, and remember Steam will overwrite your edit on the next mod update.

== Installation: Layer 1 first, then Layer 2

The list is split into two layers (see Chapter 2): _Layer 1 — Vanilla+_ is 20 interface/graphics mods with zero gameplay change, the layer to learn on; _Layer 2 — The Grand Chronicle_ adds 11 more (12 with the optional Extended Eras) — AI, tech tree, and content. Install them in that order.

#text(size: 9.5pt)[
#table(
  columns: (1.4fr, 1fr, 1.4fr, 2fr),
  inset: 6pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { cream },
  align: (left, left, left, left),
  [_Question_], [_Layer 1 — Vanilla+_], [_Layer 2 — The Chronicle_], [_Who it is for_],
  [Gameplay changes], [None — vanilla rules], [AI, tech tree, resources, wonders], [Layer 1: anyone learning or returning],
  [Mods], [20 (interface + graphics)], [31 required / 32 with Extended Eras], [Layer 2: players who know the systems],
  [Game modes], [All off], [Monopolies & Barbarian Clans recommended], [—],
  [Typical difficulty], [Prince–King], [King–Emperor], [—],
  [When to move on], [Systems feel familiar], [When you want the chronicle], [—],
)
]

1. _Install and launch the game once_ (vanilla) to generate your settings and confirm the build works.
2. _Subscribe to Layer 1_ — the 20 items under Layer 1 in Chapter 2, plus _Enhanced Mod Manager_ (#link("https://steamcommunity.com/sharedfiles/filedetails/?id=1601259406")[Workshop item 1601259406]) — 21 subscriptions total. Steam downloads them in the background.
3. _Verify and enable_ — the items appear in `workshop\content\289070\` when complete; launch the game, open *Additional Content → Mods*, and move every subscribed item to the enabled list.
4. _Play Layer 1_ with the settings from Chapter 3 (game modes off) — this is the vanilla game, readable and pretty. Stay here until the systems feel familiar.
5. _Graduate to Layer 2_ — subscribe the remaining 11 items (12 with Extended Eras) listed under Layer 2 in Chapter 2. They join the enabled list automatically.
6. _Order check_ — no action needed; the load order comes from the mods' own `.modinfo` values, and the Layer 2 mods are designed to layer cleanly on top of Layer 1.
7. _Optional: build two Collections_ — in the Workshop, save the Layer 1 set and the Layer 2 set as two separate collections, so reinstalling either layer is one click.

#warn[
  Do _not_ stack the AI overhaul with other AI mods (AI+, RHAI, Better Balanced Game) — mixing them produces erratic AI behavior. Chapter 2 includes exactly one AI mod for this reason.
]

#tip[
  Switching between layers mid-save is safe in one direction only: you can enable Layer 2 mods on an existing Layer 1 game (content is added), but disabling Layer 2 mods on an active Layer 2 game can confuse it. Start the save you care about at the layer you want to finish in.
]

== Troubleshooting

- _Crash on the leader screen / at game start_ — Civ 6 has a hard-coded asset limit for animated leaders and high-detail assets. Disable the newest high-asset mods you added last and re-test. In this list the heaviest asset mod is _Resourceful 2_ (51 new resources) — disable it first if you hit the limit, or swap to a lighter Layer 2 by skipping it.
- _Mod shows as "incompatible"_ — the game flags mods whose declared compatibility predates the current build. The mods in this list are verified to load on 1.0.12.68 (data-only mods like Real Tech Tree have needed no changes since 2020); if one ever flags, check its Workshop page for an update before removing it.
- _Odd behavior after a Steam update_ — Steam may overwrite `.modinfo` edits or a mod update changes things. Re-check the affected mod's notes.
- _Still broken?_ — Verify game files (Steam → right-click Civ VI → Properties → Installed Files → Verify), then delete the `Cache` folder under `Documents\My Games\Sid Meier's Civilization VI\` and relaunch. Disable mods one at a time to isolate the culprit.
