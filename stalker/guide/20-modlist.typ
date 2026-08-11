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

== Notable mods inside the pack

GAMMA is built from roughly 400 addons, each with its original author credited inside the pack. The list below is a curated subset of the best-known ones, taken from the pack's own repository — it is *not* exhaustive. Every entry links to its folder in the official pack repo; from inside the game, you can also right-click any mod in MO2 and choose *visit moddb.com* to open the author's original page (per the official GAMMA README).

=== Core systems & survival

#table(
  columns: (2.1fr, 1.2fr, 2.4fr),
  inset: 6pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { panel2 },
  align: (left, left, left),
  [*Mod*], [*Author*], [*Role in the pack*],
  [#link("https://github.com/Grokitach/Stalker_GAMMA/tree/main/G.A.M.M.A/modpack_addons/140-%20Weapon%20Parts%20Overhaul%20-%20arti")[Weapon Parts Overhaul]], [arti], [Parts-based weapon condition and repair — the core of GAMMA's repair loop],
  [#link("https://github.com/Grokitach/Stalker_GAMMA/tree/main/G.A.M.M.A/modpack_addons/G.A.M.M.A.%20Armors%20repair%20like%20WPO")[Armors repair like WPO]], [G.A.M.M.A.], [The same parts system applied to armor and suits],
  [#link("https://github.com/Grokitach/Stalker_GAMMA/tree/main/G.A.M.M.A/modpack_addons/ZCP%201.5d")[ZCP 1.5d]], [ZCP team], [Zone Customization Project — spawns, squads and population control],
  [#link("https://github.com/Grokitach/Stalker_GAMMA/tree/main/G.A.M.M.A/modpack_addons/109-%20MCM%20Mod%20Configuration%20Menu%20-%20RavenAscendant")[MCM Mod Configuration Menu]], [RavenAscendant], [The in-game config menu nearly every other mod plugs into],
  [#link("https://github.com/Grokitach/Stalker_GAMMA/tree/main/G.A.M.M.A/modpack_addons/G.A.M.M.A.%20Economy%20(don't%20disable,%20turn%20on%20Black%20Market%20to%20buy%20gear)")[G.A.M.M.A. Economy]], [G.A.M.M.A.], [No gear trading by default; optional Black Market toggle],
  [#link("https://github.com/Grokitach/Stalker_GAMMA/tree/main/G.A.M.M.A/modpack_addons/G.A.M.M.A.%20Cooking%20Overhaul")[G.A.M.M.A. Cooking Overhaul]], [G.A.M.M.A.], [The cooking and meal system behind hunger management],
  [#link("https://github.com/Grokitach/Stalker_GAMMA/tree/main/G.A.M.M.A/modpack_addons/234-%20Dynamic%20Anomalies%20Overhaul%20-%20Demonized")[Dynamic Anomalies Overhaul]], [Demonized], [Anomaly fields that evolve and shift over time],
  [#link("https://github.com/Grokitach/Stalker_GAMMA/tree/main/G.A.M.M.A/modpack_addons/265-%20NPCs%20Die%20in%20Emissions%20for%20Real%20-%20TheMrDemonized")[NPCs Die in Emissions for Real]], [TheMrDemonized], [NPCs actually die in emissions — the Zone plays by its own rules],
  [#link("https://github.com/Grokitach/Stalker_GAMMA/tree/main/G.A.M.M.A/modpack_addons/437-%20Weighted%20NPC%20Random%20Loadouts%20-%20SD")[Weighted NPC Random Loadouts]], [SD], [Randomized, weighted enemy gear — no two fights feel the same],
  [#link("https://github.com/Grokitach/Stalker_GAMMA/tree/main/G.A.M.M.A/modpack_addons/G.A.M.M.A.%20Mutants%20Overhaul")[G.A.M.M.A. Mutants Overhaul]], [G.A.M.M.A.], [Expanded and rebalanced mutant roster],
)

=== Items, weapons & animations

#table(
  columns: (2.1fr, 1.5fr, 2.1fr),
  inset: 6pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { panel2 },
  align: (left, left, left),
  [*Mod*], [*Author*], [*Role in the pack*],
  [#link("https://github.com/Grokitach/Stalker_GAMMA/tree/main/G.A.M.M.A/modpack_addons/40-%20Food%20Drugs%20and%20Drinks%20Animations%20FDDA%20-%20Feel_Fried")[Food, Drugs and Drinks Animations]], [Feel_Fried], [First-person consume animations for everything you eat, drink or inject],
  [#link("https://github.com/Grokitach/Stalker_GAMMA/tree/main/G.A.M.M.A/modpack_addons/312-%20Gunslinger%20Guns%20for%20Anomaly%20-%20Teivazcz%20%26%20Gunslinger%20Team")[Gunslinger Guns for Anomaly]], [Teivazcz & Gunslinger Team], [Premium weapon pack — models, animations and handling],
  [#link("https://www.moddb.com/mods/stalker-anomaly/addons")[BoomSticks and SharpSticks]], [BaS team], [The classic weapon pack — already integrated via multiple BaS addons in GAMMA],
  [#link("https://github.com/Grokitach/Stalker_GAMMA/tree/main/G.A.M.M.A/modpack_addons/Anomaly%20Magazines%20Redux%20(need%20to%20disable%20GAMMA%20unjam%20reload%20same%20key)")[Anomaly Magazines Redux]], [—], [Realistic magazine system — track rounds per magazine],
  [#link("https://github.com/Grokitach/Stalker_GAMMA/tree/main/G.A.M.M.A/modpack_addons/127-%20Toggle%20Scope%20-%20Ishmaeel")[Toggle Scope]], [Ishmaeel], [One-key scope toggling instead of scope cycling],
  [#link("https://github.com/Grokitach/Stalker_GAMMA/tree/main/G.A.M.M.A/modpack_addons/462-%20Procedural%20Movement%20Animations%20-%20party_50")[Procedural Movement Animations]], [party_50], [Fluid first-person body and movement animation],
  [#link("https://github.com/Grokitach/Stalker_GAMMA/tree/main/G.A.M.M.A/modpack_addons/236-%201st%20Person%20Visible%20Body%20Ported%20from%20SWM%20-%20Wang_Laoshi%20%26%20SWM%20Team")[1st Person Visible Body]], [Wang_Laoshi & SWM Team], [You can see your own body from first person],
  [#link("https://github.com/Grokitach/Stalker_GAMMA/tree/main/G.A.M.M.A/modpack_addons/95-%20Doom-like%20weapon%20inspection%20-%20Grokitach")[Doom-like weapon inspection]], [Grokitach], [Inspect your weapon in hand — animations, not stats],
)

=== Visuals, audio & UI

#table(
  columns: (2.1fr, 1.2fr, 2.4fr),
  inset: 6pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { panel2 },
  align: (left, left, left),
  [*Mod*], [*Author*], [*Role in the pack*],
  [#link("https://github.com/Grokitach/Stalker_GAMMA/tree/main/G.A.M.M.A/modpack_addons/290-%20Atmospherics%20Shaders%20Weathers%20and%20Reshade%20Latest%20-%20Hippobot")[Atmospherics Shaders Weathers and Reshade]], [Hippobot], [Hippos Atmospherics — the weather and lighting foundation],
  [#link("https://github.com/Grokitach/Stalker_GAMMA/tree/main/G.A.M.M.A/modpack_addons/188-%20Enhanced%20Shaders%20-%20KennShade")[Enhanced Shaders]], [KennShade], [Extra shader work on top of the rendering base],
  [#link("https://github.com/Grokitach/Stalker_GAMMA/tree/main/G.A.M.M.A/modpack_addons/Oleh's%20Miscellaneous%20Sound%20Improvements")[Oleh's Miscellaneous Sound Improvements]], [Oleh], [The tuned soundscape that defines GAMMA's audio],
  [#link("https://github.com/Grokitach/Stalker_GAMMA/tree/main/G.A.M.M.A/modpack_addons/276-%20Dark%20Signal%20Mutants%20Audio%20-%20Shrike")[Dark Signal Mutants Audio]], [Shrike], [Mutant audio component — note: only this part of Dark Signal is in the pack],
  [#link("https://github.com/Grokitach/Stalker_GAMMA/tree/main/G.A.M.M.A/modpack_addons/293-%20PDA%20Taskboard%20-%20iTheon")[PDA Taskboard]], [iTheon], [A task board in the PDA — accept and track tasks in one place],
  [#link("https://github.com/Grokitach/Stalker_GAMMA/tree/main/G.A.M.M.A/modpack_addons/110-%20SortingPlus%20-%20RavenAscendant")[SortingPlus]], [RavenAscendant], [Smart inventory sorting and filtering],
  [#link("https://github.com/Grokitach/Stalker_GAMMA/tree/main/G.A.M.M.A/modpack_addons/G.A.M.M.A.%20Minimalist%20HUD")[G.A.M.M.A. Minimalist HUD]], [G.A.M.M.A.], [Cleaner HUD layout with the pack's default look],
  [#link("https://github.com/Grokitach/Stalker_GAMMA/tree/main/G.A.M.M.A/modpack_addons/164-%20Hunger%20Thirst%20Sleep%20UI%200.71%20-%20xcvb")[Hunger Thirst Sleep UI]], [xcvb], [Clear HUD indicators for the survival stats],
)

#info[
  The complete list lives in your MO2 instance (left pane, grouped by category) and in the pack repository: #link("https://github.com/Grokitach/Stalker_GAMMA/tree/main/G.A.M.M.A/modpack_addons")[github.com/Grokitach/Stalker_GAMMA/tree/main/G.A.M.M.A/modpack_addons]. Many mods are GAMMA-internal ("G.A.M.M.A. ..." entries) — treat the ones above as the landmarks, not the whole map.
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

After installation, open *Mod Organizer 2* (desktop shortcut): the left pane lists every installed mod grouped by category, the right pane shows the load order. Treat this list as the source of truth for "what is in GAMMA". Right-click any mod → *visit moddb.com* to open the author's original page. Do not hand-edit or reorder the pack's own mods — changes are best made through the launcher, MCM options, or carefully vetted addons (chapter 4).
