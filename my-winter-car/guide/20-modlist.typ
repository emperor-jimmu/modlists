// 20-modlist.typ — Routa: the two-layer curated modlist.
#import "theme.typ": *

= The Modlist

_What "Routa" actually consists of: My Winter Car v.260516-01 plus a curated MSCLoader modlist in two layers — and, just as importantly, what it deliberately leaves out._

== The list at a glance

#table(
  columns: (1fr, 2fr),
  inset: 7pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { panel2 },
  align: (left, left),
  [*Property*], [*Value*],
  [Base game], [My Winter Car v.260516-01 (current Early Access build at guide time, August 2026)],
  [Mod manager], [MSCLoader (for My Winter Car) v1.4.2 — in-game mod menu + per-mod settings + updates],
  [Layer 1 — "The Cold Start"], [5 mods — QoL and graphics only; how a fresh player should start],
  [Layer 2 — "The Full Winter"], [1 mod added on top (Rivett Revamp) — the detailed, full modded experience; enable once you have experience],
  [Distribution], [Nexus Mods — official pages only],
  [Playstyle], [The vanilla sim, deepened and modernized — nothing that makes it easier],
)

== Design pillars

- *Deepen & modernize.* My Winter Car's January 1999 Finland is a survival sim and a project-car sim at once — the game's own 200+ part engine build, VIN-coded trims, inspections and races are the depth. This list makes the world look current, removes only genuine annoyances, and adds detail where the community has built it — it never moves the goalposts.
- *Graphics, honestly.* One serious visual overhaul (Enhanced Graphics) plus honest performance work. No fake "ultra" filters, and no second shader stacked on top just because it exists.
- *Details.* Physical touches a mechanic notices: a Corris that finally looks like the real Ford Taunus (Rivett Revamp), a headlamp for the dark garage, readable night traffic.
- *More AI, honestly.* My Winter Car's AI lives in its world: highway traffic, police checkpoints, taxi customers, NPC schedules. The only maintained AI-touching mods at guide time are behavioral tweaks — this list takes the good one (AI Highbeam Nerf) and says plainly that *no traffic-density or smarter-AI overhaul exists yet* for this young EA game. Pretending otherwise would be fiction.
- *No overpowered, no easier.* Nothing that raises money, spawns parts, or erases a mechanic the game teaches you by freezing your fingers off. Mods that do exactly that are listed at the end of this chapter with reasons.

== The mod manager: MSCLoader (for My Winter Car)

MSCLoader is the community-standard mod manager for My Winter Car, and for an avid modder it is the only manager this guide uses:

- It *is* the ecosystem — 497 mods on the Nexus hub depend on it, so one manager covers everything: install, enable/disable, per-mod settings, auto-updates.
- Its *in-game mod menu* is how the two layers work: enable the Layer 1 set for your first save; add Rivett Revamp when you start Layer 2. No uninstalling, no file juggling.
- It gives every mod a *Mod Settings* page, an *Updates* tab, conflict warnings, and bundled bug reports (`output_log.txt` + `MSCLoader_Preloader.txt`).
- It needs no third-party tools, no separate launchers, no account tricks — Nexus downloads, one installer, one folder.

#info[
  BepInEx and MelonLoader are *legacy* loader routes that a few early mod pages still document. They predate the loader's My Winter Car support and are not part of this guide — a mod's Requirements tab listing *MSCLoader (for My Winter Car)* is the filter every adopted mod passes.
]

== Layer 1 — "The Cold Start" (QoL & graphics)

_The starting set. Nothing here changes how the game plays — it makes it look better, run smoother, and removes only genuine annoyances of the dark Finnish winter._

=== Graphics

#mod(
  name: "Enhanced Graphics v2.0",
  tag: "Visual overhaul · by JCSX11",
  what: "The graphics pillar. Volumetric god-ray lighting on car lights, fully dynamic global illumination (SEGI), improved sun shadows and more shadow casters, a dynamic skybox system with separate day/night/rain exposure, better reflections, and car light & mirror enhancements (shadow casting, lens patterns). Wrapped in a full post-processing suite — anti-aliasing, ambient occlusion, depth of field, motion blur, bloom, sun shafts, color grading, chromatic aberration, film grain and vignette — every effect individually configurable. v2.0 was a full rewrite that brought the game's look properly into the modern era.",
  source: [#link("https://www.nexusmods.com/mywintercar/mods/708")[nexus: mywintercar/mods/708]],
  install: "Download from Nexus, unpack into the Mods folder, enable in the loader's mod menu. Some options are marked performance-heavy — enable the helpers in the mod's settings first and switch effects on from there.",
  risk: "GPU-heavy effects can cost frames — the mod flags them, so tune rather than stack. Uses third-party and custom assets; if a game update breaks something, check the Posts tab for a fix.",
)

#mod(
  name: "Better FPS v1.3",
  tag: "Performance · by Bitpro17",
  what: "A CPU-side optimization mod that rewrites parts of the game's code to faster equivalents while keeping functionality identical — the author describes it as 'inspired by Reharmonization' (the My Summer Car standard). Measured 6–46% FPS gains on his own saves. Honest about its limits: 'probably gives some FPS, probably doesn't break everything.' Benchmark it yourself by typing `fpstest` in the loader console.",
  source: [#link("https://www.nexusmods.com/mywintercar/mods/1060")[nexus: mywintercar/mods/1060]],
  install: "Download from Nexus, unpack into the Mods folder, enable in the mod menu.",
  risk: "Low. CPU-only — no visual changes; if your game is GPU-bound or v-synced it simply won't do much, which is the point of the honesty.",
)

=== Quality of life

#mod(
  name: "GTA SA Style Minimap V0.4.9",
  tag: "UI / navigation · by Snake04511",
  what: "A full-screen world map and a circular HUD minimap. Press N for the full map (left-click to set a waypoint, right-click to delete), M to show/hide the minimap, with adjustable size, zoom and refresh rate. Overlay icons for the house, bar, gas station, mechanic and workplace, advertisement positions, and — the killer feature in January — taxi pickup/dropoff blips that only show *active* taxi jobs. Legend panel, dark mode, fully rebindable hotkeys.",
  source: [#link("https://www.nexusmods.com/mywintercar/mods/601")[nexus: mywintercar/mods/601]],
  install: "Download from Nexus, unpack into the Mods folder, enable in the mod menu. Configure hotkeys and icons via the loader's Mod Settings.",
  risk: "Low-to-medium. The author's own note: NOT compatible with the 'NOP' and 'Cold Start Fix' mods — neither of which this list adopts (see the rejected list).",
)

#mod(
  name: "AI Highbeam Nerf v1.0",
  tag: "AI behavior · by Tobipaste",
  what: "Kills the 'AI highbeam flashbang': dims or completely disables AI high beams while forcing AI vehicles to keep their low beams on, with intensity sliders for both. Only touches AI traffic lights — your own cars are untouched. A genuine night-driving QoL fix for the dark season, and the only AI-behavior mod this list trusts.",
  source: [#link("https://www.nexusmods.com/mywintercar/mods/1184")[nexus: mywintercar/mods/1184]],
  install: "Download from Nexus, unpack into the Mods folder, enable in the mod menu; recommended settings in the loader's Mod Settings: disable AI high beams ON, force low beams ON, low-beam multiplier 1.00.",
  risk: "Low. AI-only light objects; applies to newly spawned traffic too.",
)

#mod(
  name: "Head Lamp v1.0.1",
  tag: "QoL · by xVilho",
  what: "A toggleable headlamp for the player (default G) — winter days are short and garages are dark, and the vanilla player carries no light. Fully configurable: color temperature (Kelvin), intensity, range and beam angle. One of the most-endorsed mods in the whole young hub, and exactly the kind of tool a mechanic would actually wear.",
  source: [#link("https://www.nexusmods.com/mywintercar/mods/68")[nexus: mywintercar/mods/68]],
  install: "Download from Nexus, unpack into the Mods folder, enable in the mod menu. The page documents a BepInEx route too — use the MSCLoader build (the Requirements tab lists the loader).",
  risk: "Low. A light source only; it does not change night darkness for the game world.",
)

== Layer 2 — "The Full Winter" (the full modded experience)

_Once you have experience — a Rivett that runs, a job routine that works, a sense of the map — enable Rivett Revamp on top of the Layer 1 set. This is the layer for players who want the project car to look and feel like the real machine it is modelled on._

=== Detail & depth

#mod(
  name: "Rivett Revamp v1.1.1",
  tag: "Vehicle detail overhaul · by michu97736 & Kwoniizin · the heart of Layer 2",
  what: "A complete visual/detail overhaul of the Corris Rivett, making it look like the real 1971–76 Ford Taunus it is modelled on: remade body shape, realistic dashboard and interior parts, three headlight types and grilles to choose from, new rims and hubcaps, new fenders with trim, bumper options (including the GT rear bumper), side trims, a right mirror for prefacelift doors, seatbelts, headliner material selection, CD-player size and a subwoofer shelf, frozen-glass models, and license-plate options. Every option lives in the mod's settings menu. Nexus-tagged *Fair and balanced* — it adds detail, not power.",
  source: [#link("https://www.nexusmods.com/mywintercar/mods/2")[nexus: mywintercar/mods/2]],
  install: "Download from Nexus, unpack into the Mods folder, enable in the loader's mod menu; all options are set from the mod's settings menu.",
  risk: "Low-to-medium. Author-tracked quirks: the GT rear bumper collides with bumper-guard and rubber-side-stripe options, and the GT grille/bumper paint is buggy. If models glitch, delete `MeshSave` (the author's own fix).",
)

#info[
  Layer 2 is deliberately one mod — and that is an honest statement about this game, not a shy one. My Winter Car is eight months into Early Access, and its mod scene is dominated by utilities and cheat tools (which this list rejects wholesale). The depth this layer promises — the 200+ part engine build, VIN-coded trims, strict ice-race inspections, tuning that can over-rev and wreck your own engine — is *already the base game*. Rivett Revamp is the first serious detail overhaul to land, and the moment real depth mods (traffic overhauls, wear systems, new parts) exist and are verified, this chapter grows. Until then, this list says what exists and what does not — that is the deal.
]

== What we deliberately left out

Every mod below is real and several are enormously popular — and each one fails a pillar. The reasons are recorded in STATUS.md as well.

- *MWC CheatBox* — the hub's most-endorsed mod (1,183), Nexus-tagged *Cheating / Unbalanced / Unrealistic*: item spawner, godmode, money and bank editors, need locks, teleport and noclip, taxi income multipliers, time and weather control. It is the exact opposite of everything this list stands for — it erases the whole game.
- *ShowBoltSize* — shows the required wrench size and X-ray-highlights bolts. Choosing the right wrench by trial and error is a core hands-on mechanic of this series; showing the answer removes it. (The My Summer Car list reached the same verdict on the identical mod.)
- *MoonLightTweaks* — makes the night world brighter (default 2×). The short, dark Finnish winter is part of the game's challenge — the headlamp in Layer 1 is a tool *in* that darkness, not a removal of it.
- *My Winter Backpack* — carries multiple items at once, removing the one-thing-at-a-time friction. It is also *hidden on Nexus since April 2026* (unsupported by its author), so it fails the verifiable-source rule anyway.
- *JT Minimap* — the older, previously popular minimap; its author explicitly stopped supporting it. The maintained GTA SA Style Minimap covers the pillar.
- *"Cold Start Fix"* — a mod referenced by name in the minimap's incompatibility note. It 'fixes' the game's signature cold-start challenge — the exact challenge this guide's chapter 3 teaches you to beat. Even setting compatibility aside, it fails the "no easier" pillar by design.
- *Traffic density / "more cars" mods* — none exist for My Winter Car at guide time. The AI pillar is served by the game's own systems (traffic, checkpoints, taxi customers) plus AI Highbeam Nerf; when a maintained traffic mod lands, it gets a card.
- *Wear / dirt / rust visual systems* — none exist yet either. The detail pillar is Rivett Revamp plus the base game's own wear and inspection systems.
- *BepInEx / MelonLoader loader routes* — legacy alternatives from the game's first weeks; MSCLoader is the ecosystem and the only manager here.

#info[
  The line we draw: *friction you can feel is the game.* A headlamp for the dark garage deepens the work; a cheat box that spawns the parts you were meant to earn deletes it. Detail mods, honest performance work, and one serious graphics overhaul — that is what survives the winter.
]

== Download sources

- Nexus Mods — My Winter Car hub: #link("https://www.nexusmods.com/mywintercar")[nexusmods.com/mywintercar]
- MSCLoader (for My Winter Car): #link("https://www.nexusmods.com/mywintercar/mods/3")[nexus: mywintercar/mods/3] · #link("https://github.com/piotrulos/MSCModLoader")[github.com/piotrulos/MSCModLoader]

Every mod card above links its own Nexus page — check the *Last updated* and *Bugs* fields there before installing; the game is in active Early Access and versions move faster than any printed guide.
