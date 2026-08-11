// 20-modlist.typ — Peräjärvi '95: the curated modlist.
#import "theme.typ": *

= The Modlist

_What "Peräjärvi '95" actually consists of: the final My Summer Car 1.0 plus six curated mods on MSCLoader — and, just as importantly, what it deliberately leaves out._

== The list at a glance

#table(
  columns: (1fr, 2fr),
  inset: 7pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { panel2 },
  align: (left, left),
  [*Property*], [*Value*],
  [Base game], [My Summer Car 1.0 (final build, out of Early Access 2025-01-08)],
  [Mod manager], [MSCLoader v1.4.2 (2026-06-21) — Nexus mods/147 · GitHub piotrulos/MSCModLoader],
  [Curated mods], [6 — one visual overhaul, one performance/stability pass, four detail & immersion mods],
  [Distribution], [Nexus Mods (mysummercar) + OverTake.gg — direct pages only],
  [Playstyle], [The vanilla sim, deepened and modernized — nothing that makes it easier],
)

== Design pillars

- *Deepen & modernize.* The game is a finished 2016-era sim; these mods stabilize its performance and make its world feel alive and current — without moving the goalposts.
- *Graphics, honestly.* One serious visual overhaul (post-processing, sky, weather, reflections) plus the performance pass that pays for it. No fake "ultra" filters that only smear the image.
- *Details.* Small, physical touches that a mechanic would notice: wear you can see, light switches you can find, tapes you can actually buy and play.
- *No overpowered, no easier.* Nothing that raises money, capacity, or success rates; nothing that erases a mechanic the game teaches you by doing. Mods that do exactly that are listed at the end of this chapter with reasons — they are the ones we said no to.

== The core: MSCLoader

MSCLoader is the *best mod manager for an avid modder* in this community, and it is the only one this guide uses:

- It is the de-facto standard — nearly every current mod is a loader plugin, so one manager covers the whole ecosystem.
- It gives you a real *mod menu in-game*: list every mod, see versions, enable/disable individually, and reach each mod's settings from one place.
- It is actively maintained (v1.4.2, June 2026) and open source, with a public wiki for modders and users.
- It does *not* need external launchers or profile juggling — the installer wires it into the game and your Mods folder is the whole management surface.

#info[
  One warning that comes from the mods themselves: *Mod Loader Pro* is a different, older loader from a different author. Modern mods — including Better Graphics — do not support it. If a mod page asks for "Mod Loader Pro", treat it as a legacy-mod red flag.
]

== The mods

=== Foundation

#mod(
  name: "MSCLoader",
  tag: "Required — the mod manager",
  what: "The community-standard mod loader for My Summer Car: a C# plugin loader with an in-game mod menu, per-mod settings, version listing, and enable/disable per mod. Everything else in this list runs on top of it. Open source (GPL-3.0), same author as Cassette Tapes.",
  source: [#link("https://www.nexusmods.com/mysummercar/mods/147")[Nexus — mysummercar/mods/147] · #link("https://github.com/piotrulos/MSCModLoader")[github.com/piotrulos/MSCModLoader]],
  install: "Unpack anywhere except the game folder, run MSCLInstaller.exe, point it at the game, install, then drop mods into the Mods folder you chose.",
  risk: "None — it is the ecosystem itself. Keep it updated; old loader versions break with new mods.",
)

=== Performance & stability

#mod(
  name: "Reharmonization",
  tag: "Performance · by Horsey4",
  what: "Rewrites some of the game's poorly written code paths for stable frame rates and smoother simulation. The successor to FSMO and the safe, actively recommended replacement for the abandoned MOP. Everything can be toggled in-game, per optimization, with a time-slicing slider for the aggressive fixes.",
  source: [#link("https://www.nexusmods.com/mysummercar/mods/3152")[Nexus — mysummercar/mods/3152]],
  install: "Extract the .dll into your Mods folder. Open its settings in the loader's mod menu.",
  risk: "Low. If you ever see odd behavior (e.g. loading issues), disable the 'FSM Loop Limit' optimization or lower the time-slicing — the community-documented first fix.",
)

=== Graphics

#mod(
  name: "Better Graphics",
  tag: "Visual overhaul · by Bosorkanamettle · v2.0",
  what: "The modernizer: depth of field / tilt-shift, day & night bloom, ambient obscurance (SSAO), tonemapping, anti-aliasing, screen-space reflections with quality slider, sunshafts anchored to the sun, adjustable sun cascades and shadow distance, the old-build skybox plus a night sky with a moonlight system, random foggy weather, a rebuilt lake, car mirror overhaul, remade headlight glass and emission, wet roads after rain, remade thunder, glowing garage lights, and a few extras from the cancelled map expansion (the abandoned mansion with its Halloween event, the park, air balloons — plus re-added roaming NPCs).",
  source: [#link("https://www.nexusmods.com/mysummercar/mods/4103")[Nexus — mysummercar/mods/4103]],
  install: "Extract into your Mods folder. Most effects are blended into the in-game Graphics tab; the rest live in the loader's 'Mod Settings'.",
  risk: "GPU-heavy — the author is explicit that weak PCs will drop frames. Mod Loader Pro is NOT supported. A few extras (mouse controls, hand shadows) are experimental and unreliable; leave them off.",
)

=== Detail & immersion

#mod(
  name: "Traffic Car Expansion",
  tag: "Living world",
  what: "Overhauls the road traffic: 30+ unique vehicle models with randomized colors, wheels, license plates and trim levels, plus smarter AI — turn signals, emergency lights, reversing lights, obstacle awareness, dynamic traffic density, and drivers flashing their headlights to warn you of police posts. Rare NPC encounters included.",
  source: [#link("https://www.nexusmods.com/mysummercar/mods/4299")[Nexus — mysummercar/mods/4299]],
  install: "Extract into your Mods folder.",
  risk: "CPU-heavy — expect a hit on weaker machines. Do not combine with MOP-era mods; it targets the modern loader stack.",
)

#mod(
  name: "Visual Wear",
  tag: "Detail",
  what: "Lets you see the condition of your parts: transmission, head gasket, oil filter, tires and more visibly age as they wear, so you can judge maintenance at a glance instead of guessing. Also pops the caps off bottles (coolant, brake fluid…) when they run empty — a small, physical touch.",
  source: [#link("https://www.nexusmods.com/mysummercar/mods/5544")[Nexus — mysummercar/mods/5544]],
  install: "Extract into your Mods folder.",
  risk: "Low. Textures only — no balance changes.",
)

#mod(
  name: "Lights on Switches",
  tag: "Detail",
  what: "Adds a subtle, lore-friendly glow to the light switches in your home, so you can find them in the dark without fumbling along the wall. Small, but it removes real friction from the night hours.",
  source: [#link("https://www.nexusmods.com/mysummercar/mods/868")[Nexus — mysummercar/mods/868]],
  install: "Extract into your Mods folder.",
  risk: "None.",
)

#mod(
  name: "Cassette Tapes",
  tag: "Immersion · by piotrulos",
  what: "Custom music on real cassettes: each subfolder in the Radio folder is one tape you buy at Teimo's shop and play in the boombox or any car radio — with rewind, eject, and the playback position remembered. Supports mp3, flac, ogg, wav and aiff, with custom labels and cover art.",
  source: [#link("https://www.overtake.gg")[OverTake.gg — search "Cassette Tapes" (My Summer Car)]],
  install: "Extract into your Mods folder, then set up the Radio folder: one subfolder per tape, your music inside. Buy the tapes at Teimo's.",
  risk: "Low. Needs an OverTake account to download. Tapes do not work in the CD player — by design.",
)

== What we deliberately left out

Every mod below is real and some are popular — and each one fails a pillar. The reasons are recorded in STATUS.md as well.

- *MOP (Modern Optimization Plugin)* — abandoned; community-documented save corruption and physics bugs. Reharmonization does the job safely.
- *Fuel Tank Door and other Mod Loader Pro-era mods* — require the legacy Mod Loader Pro, which the modern ecosystem (and Better Graphics explicitly) does not support.
- *Delivery Jobs* — a great concept (package deliveries with a damage system), but it has been removed from Nexus and survives only on unofficial rehosts: no verifiable source.
- *Show Bolt Sizes* — removes the wrench-size trial-and-error. Finding the right wrench is a core hands-on mechanic of the build; erasing it makes the game easier.
- *Carry More / backpack mods* — raise your carry capacity, which softens inventory management. Same pillar violation.
- *Expanded Winter Features* — a full season overhaul that fights the summer setting and the weather systems Better Graphics is tuned for.

#info[
  The line we draw: *friction you can feel is the game*. Detail mods and honest performance work deepen it; anything that quietly removes a mechanic, a limit, or a source of tension is out — even when it is popular.
]

== Download sources

- Nexus Mods — My Summer Car hub: #link("https://www.nexusmods.com/mysummercar")[nexusmods.com/mysummercar] (loader + five of the six mods)
- MSCLoader releases: #link("https://github.com/piotrulos/MSCModLoader/releases")[github.com/piotrulos/MSCModLoader/releases]
- OverTake.gg: #link("https://www.overtake.gg")[overtake.gg] (Cassette Tapes)

Every mod card above links its own page — check the *Requirements* and *Last updated* fields there before installing; versions move faster than any printed guide.
