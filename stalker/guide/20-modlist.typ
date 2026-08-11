// 20-modlist.typ — G.A.M.M.A Protocol: the modlist (GAMMA pack) overview.
#import "theme.typ": *

= The Modlist

_What "G.A.M.M.A Protocol" actually consists of: the GAMMA modpack for Anomaly 1.5.3, and how it is organized._

== The pack at a glance

#table(
  columns: (1fr, 2fr),
  inset: 7pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { panel2 },
  align: (left, left),
  [*Property*], [*Value*],
  [Base game], [S.T.A.L.K.E.R. Anomaly 1.5.3 (standalone, free)],
  [Modpack], [GAMMA — Grok's / Grokitach's Automated Modular Modpack for Anomaly],
  [Mod count], [Roughly 400 curated mods],
  [Mod manager], [Mod Organizer 2 (bundled and pre-configured by the installer)],
  [Distribution], [GAMMA Launcher — official Discord / GitHub wiki only],
  [Version line], [0.9.5 (May 2026) is current; 0.9.3 (Dec 2024) prior — check the Discord for anything newer],
  [Install size], [Roughly 80–120 GB after assembly],
  [Playing style], [Hardcore open-world survival sandbox with story missions],
)

== What GAMMA is

GAMMA is a heavily curated, modular overhaul. Its design goal is a long, immersive survival campaign: you start as a barely equipped stalker and claw your way up through scavenging, repairing and crafting — not through buying gear. Every system in Anomaly is rebalanced and extended: economy, health, ballistics, crafting, mutants, stashes, missions and visuals are all part of the pack.

Because it is assembled from hundreds of individual mods inside a pre-configured MO2 instance, the pack is both deeply customizable (you can disable or tweak individual mods) and sensitive to outside changes — which is why the Addons chapter stresses compatibility checks.

== Design pillars

- *The "hobo phase".* You begin with minimal gear and no way to simply buy your way out of it. Early hours are about surviving, looting and scraping together a usable loadout.
- *No gear from traders.* By default traders do not stock weapons or armor; they sell ammunition, consumables, junk and services. Everything shootable is found, looted, repaired or crafted. (This rule is toggleable in MCM if you want a softer economy.)
- *Repair is the progression.* Gear degrades and jams; you maintain it with oil and cleaning kits and repair it part-by-part with repair kits and scavenged parts. Better tools unlock better repairs and recipes.
- *Realistic danger.* Ballistics, health and radiation are tuned to be lethal: calibers matter, armor matters, headshots end fights, and untreated wounds stack up.
- *Expanded world.* More locations, quests, stashes, artifacts, mutant variants and AI behavior on top of Anomaly's already large sandbox.

== Systems overview

The pack is organized in MO2 by category; the full per-mod list lives there after install. At a system level, GAMMA delivers:

- *Health & survival* — limb-based damage (head, torso, arms, legs), bleeding, fractures, radiation, hunger, thirst, sleep, drugs and treatment items with real usage time.
- *Economy* — task payouts scaled by progression preset; trade in junk, parts, artifacts and ammo; no direct weapon/armor purchases by default.
- *Repair & crafting* — weapon parts and repair kits (kit types cover weapon classes, shown on the item), gun oil and cleaning kits, armor repair with sewing kits and textiles, ammunition reloading, medicine and food crafting, and a station-based crafting flow unlocked by *tool kits* (Basic, Advanced, Expert) delivered to technicians.
- *Weapons & gear* — hundreds of weapons across calibers, attachments and ammo types; armor from light jackets to exoskeletons; equipment upgrades through technicians.
- *World & content* — expanded stash economy, artifact systems with radiation trade-offs, more mutants and loot, improved A-Life squad behavior and faction dynamics.
- *Visuals & audio* — atmospheric overhaul (including Hippos Atmospherics and Screen Space Shaders as the rendering base), ReShade support, and a heavily retuned soundscape (including Oleh's Miscellaneous Sound Improvements); many other community audio mods are deliberately *not* included to protect that tuning.

#info[
  Gameplay systems and exact numbers drift between GAMMA versions. This guide describes how the systems *work* — for current values and recipes, open the Mod Configuration Menu (MCM) in-game and check the mod's own options.
]

== Difficulty and progression presets

GAMMA separates *combat difficulty* from *progression difficulty*:

- Combat difficulty (Easy / Medium / Hard / Master) controls enemy accuracy, damage and aggression — set in-game at New Game or in settings.
- Progression difficulty (*Tourist / Scavenger / Survivalist*) controls the economy: how much tasks pay and how scarce resources are. It is chosen in the GAMMA launcher and is primarily about the speed of your rise, not the lethality of combat.

#tip[
  First run: Tourist progression + Medium or Hard combat. You still get the full GAMMA experience — lethal fights, scavenging, repair — without starving the economy.
]

The Mod Configuration Menu lets you fine-tune everything further: task payouts, buy/sell prices, loot durability, stash chances, the "no weapons in trader stock" rule and more. Tuning is expected; there is no "wrong" difficulty.

== Warfare mode — an explicit caveat

Anomaly's third game mode, *Warfare*, reworks the whole Zone into a living faction battlefield. Within GAMMA it is generally *not* recommended: it is not well integrated with the pack's survival progression and can undermine the intended experience. Story or Sandbox are the supported ways to play GAMMA.

== Download sources

Everything in this guide is downloaded from exactly two trusted hubs — never third-party repacks:

- *Anomaly 1.5.3*: #link("https://www.moddb.com/mods/stalker-anomaly")[ModDB — moddb.com/mods/stalker-anomaly] (Files tab → 1.5.3 release).
- *GAMMA (the modpack itself)*: #link("https://discord.com/invite/stalker-gamma")[official GAMMA Discord — discord.com/invite/stalker-gamma] (installer + current version) or the #link("https://github.com/Grokitach/Stalker_GAMMA")[official GitHub wiki — github.com/Grokitach/Stalker_GAMMA].
- *Community addons*: see chapter 4 — each entry lists its own ModDB or Discord source.

== Where the modlist lives

After installation, open *Mod Organizer 2* (desktop shortcut): the left pane lists every installed mod grouped by category, the right pane shows the load order. Treat this list as the source of truth for "what is in GAMMA". Do not hand-edit or reorder the pack's own mods — changes are best made through the launcher, MCM options, or carefully vetted addons (chapter 4).
