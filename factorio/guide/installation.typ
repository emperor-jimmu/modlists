#let callout(title, body) = block(
  fill: rgb("#f2ede0"), inset: 8pt, radius: 4pt,
  stroke: 0.5pt + rgb("#e8590c"),
)[*#title* #body]

This chapter takes you from a fresh Factorio install to a running, verified modded setup: the exact game build, the built-in mod manager, where every mod in this guide comes from, how version compatibility is enforced, and the per-wave discipline the whole guide assumes. It is written against *Factorio 2.0.77*, released *May 21, 2026*, with the *Space Age* expansion owned. The mod organizer is Factorio's own built-in mod manager — the *Mods* screen in the main menu — so there is no third-party tool to install and nothing to configure outside the game. Every mod in the list is published on the official Factorio Mod Portal (#link("https://mods.factorio.com")[mods.factorio.com]), and every card in the wave chapters records the portal-verified build that was checked against this install.

If you follow the waves in order, you do the setup here exactly once, up front. Each wave is its own new game with its own mod subset; the final section of this chapter explains how to switch between waves using only the built-in manager's checkboxes.

The whole chapter, in one glance:

1. *Game prep* — Factorio 2.0.77 from Steam or standalone, confirmed.
2. *Enable the built-in manager* — main menu → Mods, synced to the official portal.
3. *Fetch the mods* — per-card portal URLs, installed through the manager.
4. *Version compatibility* — how the manager guards against mismatched builds.
5. *The Wave 2 anchor* — Krastorio 2 and the Spaced Out bridge.
6. *Launch & verify* — the in-game mod state is the ground truth.
7. *Per-wave switching* — a new game per wave, checkboxes for the rest.

Each step is one short section below. None of them should take more than a few minutes, and the order they are written in is the order you should do them — fetching the mods depends on the manager being open, which depends on the game being prepped.

=== Game Prep

Install Factorio from Steam, or download the standalone build from factorio.com — both give you the same game, and the rest of this chapter is identical either way. Run the game once before you touch anything else: that first launch generates the game's install folders and confirms the build in front of you.

The build matters. This guide targets *2.0.77*, released *May 21, 2026* — the exact build every mod card was verified against and every fact in the wave chapters was checked against. The main menu shows the version; confirm it reads 2.0.77 before you begin. If you install through Steam and the game later updates to a newer build, re-confirm the version before starting a wave — the guide's guarantees are written for 2.0.77 specifically.

#callout("Note:", [The 2.0 version line is shared between the base game and the Space Age expansion — there are not separate "2.0.77 base" and "2.0.77 expansion" builds. The same version number covers both, and a mod declaring `factorio_version` "2.0" is compatible with the whole 2.0 line. What differs between waves is not the build but which *mods* are enabled — which is the whole subject of this chapter.])

Space Age is owned and installed for this guide, and it behaves like a mod: it appears in the mod manager as an enabled or disabled entry. The guide uses it selectively — the Wave 2 chapter runs *with* Space Age enabled, while Waves 0–1 run the base-game experience. The Wave 2 anchor section below explains the difference and why it exists.

=== Enable the Built-In Mod Manager

Factorio ships its mod manager inside the game: main menu → *Mods*. There is no separate application to install, no account to configure, and no launcher step — the manager is part of the game itself, and it is the only tool this guide needs.

The manager is a portal client. It syncs with the official Factorio Mod Portal (#link("https://mods.factorio.com")[mods.factorio.com]), so the catalogue you browse in the game is the same catalogue every mod card in this guide links to. You can browse by category, search by name, and install any mod with one click; the manager downloads the mod into the game's `mods/` folder, adds it to your list, and enables it for the next start.

Two built-in behaviours do the work this guide leans on, and both are automatic:

- *Dependency auto-resolution.* When a mod declares dependencies, the manager installs them too. This is how *Krastorio 2* pulls in its supporting asset and menu-simulation mods, and how *Krastorio 2 Spaced Out* pulls in the bridge's own assets — you never fetch those by hand.
- *Version-aware flags.* A mod whose releases do not match your build is flagged rather than silently installed, which is the guard the Version Compatibility section relies on.

The manager's list is also where every wave's on/off decisions happen: each installed mod is a checkbox, enabled mods load on the next start, and disabled mods stay installed but idle. That checkbox list is the installation state for the whole guide.

=== Fetch the Mods

Every mod in this guide lives on the official portal, and every card in the wave chapters carries its verified URL — the same page the manager searches. Two examples: #link("https://mods.factorio.com/mod/Krastorio2")[Krastorio 2] and #link("https://mods.factorio.com/mod/even-distribution")[Even Distribution]. The per-card URL is the canonical source: if you ever doubt whether you have the right mod, the card's link settles it.

To fetch a wave's mods:

1. Open the *Mods* screen from the main menu.
2. Search for each mod by name — the manager's search reaches the same portal catalogue the cards point at.
3. Hit *Install* and let the manager place the mod in the game's `mods/` folder.
4. Watch the dependency note on install — anything the manager pulls in as a dependency is expected, not an error.

Fetch each wave's mods when you reach that wave, not all at once. The mods are listed per wave in that wave's Modlist section, and the Per-Wave Switching section explains why installing everything up front would fight the guide's design.

=== Version Compatibility

The portal lists every release of a mod with its `factorio_version` — the version line that release is built for. When your game's build and the mod's `factorio_version` do not match, the manager flags the mod as incompatible rather than letting it silently break the game. That is the manager's compatibility guard, and it is the reason every card in the wave chapters records a build: the "Factorio version" column on each card states the portal-verified 2.0-line release the manager will select for a 2.0.77 install, and the STATUS.md audit trail logs the VERIFIED verdict behind every one of them.

Because this guide targets the 2.0 line, every accepted mod was required to have a 2.0-line release — a mod whose newest build targets Factorio 1.1 or 2.1 is outside this install and was rejected or deferred during the wave verification. A correct install should therefore produce no compatibility flags at all: every mod in the list is verified to match a 2.0.77 install, and if the manager flags one of them, the card's recorded build is the evidence to check against.

#callout("Note:", [A naming trap worth knowing: a mod's page shows its newest release on *any* version line, which is not necessarily the one your build wants. Krastorio 2 Spaced Out's page displays "2.0.14" as its latest version, but that is the 2.1-line build; the 2.0 line uses 1.6.x version numbers. For a 2.0.77 install the manager selects the 2.0-line build — 1.6.21 — and that is the build the card records. The same principle applies to any mod whose page headline is newer than its 2.0-line build.])

=== The Wave 2 Anchor: Krastorio 2 and the Spaced Out Bridge

One wave breaks the pattern, and it owns the guide's most important single instruction: *keep Space Age enabled for Wave 2.*

Wave 2 is anchored by *Krastorio 2* (#link("https://mods.factorio.com/mod/Krastorio2")[mods.factorio.com/mod/Krastorio2]), the end-game overhaul. On its own, though, Krastorio 2 does not work with Space Age. Its page is explicit: "Krastorio 2 does not properly support the Space Age mod. The game will load, but progression will be broken. Please install an add-on such as Krastorio 2 Spaced Out."

The add-on is *Krastorio 2 Spaced Out* (K2SO, #link("https://mods.factorio.com/mod/Krastorio2-spaced-out")[mods.factorio.com/mod/Krastorio2-spaced-out]) by Polka_37, which merges Krastorio 2 with Space Age into one longer playthrough. K2SO *requires* Space Age — its releases carry the space-travel feature flag — so Wave 2's install is: Space Age enabled, Krastorio 2, Krastorio 2 Spaced Out, and the wave's seven verified companions. On a 2.0.77 install the manager selects each mod's 2.0-line build — Krastorio 2 *2.0.19* and K2SO *1.6.21* — both logged as VERIFIED - COMPATIBLE in STATUS.md.

#callout("Warning:", [The honest limit of the bridge: K2SO's page states it "won't receive updates or bugfixes for Factorio 2.0, switching to Factorio 2.1 is preferable." The 2.0 line is stable and verified at 1.6.21, which is exactly what this guide targets — but if you ever move the game to a newer build, re-confirm the bridge before carrying a save. Waves 0–1 never touch this: their mods are base-game-compatible, and their chapters describe the base game's rocket rules, not Space Age's.])

=== Launch & Verify

With a wave's mods installed and its checkboxes set, start the game. Then verify the load actually worked:

1. From the main menu, open the *Mods* screen. It lists every installed mod and which ones are enabled — this is the authoritative state, not a third-party view.
2. Confirm every mod that wave's Modlist section names is present and enabled, and that nothing you expected is missing.
3. Confirm nothing is flagged incompatible. A flag here means the manager refused the mod for your build — see Version Compatibility for what to check.
4. Start a *new game* for the wave and play the first minutes of its opening to confirm the mods behave before committing to the run. A wave's mechanics mods (new ores, new science, logistics dispatch) are best confirmed by actually using them, not just by checking the list.

#callout("Tip:", [The in-game mod state is the ground truth — it is exactly what the game will load, no further translation needed. If a mod you enabled is not showing its effects in play, the first check is the Mods screen: is it really enabled, and is the running save the new-game start that wave created?])

=== Per-Wave Switching

The three waves are three separate games, not three chapters of one save. Each wave is its own new map with its own mod subset, and the mods are layered so that the *Wave 0 base carries into every wave* while each wave's content stays scoped to that wave:

- *Wave 0 — The Castaway*: the base game plus the seven-mod QoL base — Even Distribution, Squeak Through 2, Rate Calculator, Factory Planner, YARM, Todo List and Bottleneck Lite. This is the persistent core of all three waves.
- *Wave 1 — The Architect*: the Wave 0 base plus the twelve Wave 1 mods — Miniloader (Redux), Deadlock's Stacking Beltboxes & Compact Loaders, Warehousing Mod, Project Cybersyn, Circuit HUD V2, Module Inserter, Auto Deconstruct, Nixie Tubes, Belt Visualizer, Prismatic Belts, Circuit Visualizer and Alien Biomes. Runs the base game (Space Age off).
- *Wave 2 — The Krastorio Prodigy*: the Wave 0 base plus the two anchors — Krastorio 2 and Krastorio 2 Spaced Out — plus the seven verified companions: Krastorio 2 Imersite Asteroids, Armoured Biters, FNEI, Fluid Must Flow, Milestones, K2 Tech Card Icons for Space Age, and Krastorio2 - roboport mode colored textures. Runs *with* Space Age on.

The Wave 0 QoL base persists across all three because it cannot touch gameplay data — pure client, UI and informational mods carry unchanged into Krastorio 2's rebalanced world. The Wave 1 content mods deliberately do *not* carry into Wave 2, because Krastorio 2 rebalances every recipe and the wave keeps its install focused on the two overhauls and their companions. Space Age is disabled for Waves 0–1 (their content is the base-game experience — the base game's rocket rules, not Space Age's) and enabled for Wave 2, where the K2SO bridge requires it.

Switching waves is two steps in the Mods screen:

1. *Enable the new wave's subset and disable the previous wave's content* — every installed mod is a checkbox, so moving from Wave 1 to Wave 2 means checking the K2 pair and its companions and unchecking the Wave 1 content. The Wave 0 base stays checked throughout.
2. *Start a new game for the wave.* Each wave gets a fresh map — which is also where worldgen mods like Alien Biomes do their work, because an existing save never sees a new terrain mod.

#callout("Tip:", [Before committing to a long run, glance at the Mods screen and read the enabled list against that wave's Modlist section. The enabled list *is* the wave — it is the whole definition of what you are about to play.])

#callout("Warning:", [Two mistakes break a wave, and both are checkbox errors. Carrying Wave 1's recipe-adjacent content into Wave 2 fights Krastorio 2's rebalanced recipes. And starting Wave 2 with Space Age disabled — or with Krastorio 2 enabled but K2SO missing — reproduces exactly the broken progression Krastorio 2's own page warns about. The Mods screen is where both errors live and where both are fixed.])
