// 40-personas.typ — Iron Valley: player personas.
#import "theme.typ": *

= Personas

_Who are you on this railway? Five ways to play the same valley — each with a background and the career creation choices that make it yours._

== Before you start: how "creation" works here

Derail Valley has no character creator — no name entry, no appearance sliders. Your identity is what you *decide* in the career itself:

- *The save.* Name your career file and start a new save per persona — each persona gets its own railway, its own debt, its own fleet.
- *The difficulty and the rules.* Every persona below sets its own house rules on top of the game's difficulty settings: what you may buy, what you must drive, what counts as winning. This is the real "game creation" — the difficulty comes from the rules you keep, not from a menu.
- *The licenses and locomotives.* The career's license ladder *is* your character build: the order you buy licenses and locomotives defines what kind of railroader you are.
- *The mods.* Chapter 2's list is one installation; each persona simply leans on the mods that matter to its playstyle.

#info[
  All five personas are playable on the same modlist — the personas differ in goals and self-imposed rules, not in mods. Switch between them on different saves; keep one save backup per persona.
]

== 1. The Yard Apprentice

#mod(
  name: "The Yard Apprentice",
  tag: "Difficulty: medium · Focus: the fundamentals",
  what: "Background. You are the new hire — literally: the career starts you on a tutorial DE2 with a debt of fees and a booklet. You do not skip anything. Shunting jobs teach you the yard, logistic hauls teach you the routes, and only then do you climb onto the road engines. You play the career the way the game's own progression intends, and you learn the valley track by track.",
  source: "",
  install: "",
  risk: "",
)

*Game creation choices*

- *Save:* name it after the year you hire on — e.g. `apprentice-2026` — one save per persona.
- *House rules:* buy licenses strictly in the cheap-to-expensive ladder (Shunting → Train Length 1 → Concurrent Orders 1 → Logistic Haul); no license you cannot pay for outright with a cleared fee record.
- *Priorities:* master shunting first; use the DE2 until its 370 t rating genuinely runs out; learn one freight corridor before taking a second.
- *Goal:* the DH4 license bought with honest yard and local work — proof you have learned the craft.
- *Mods that shine:* Loco Ownership (buy your first real machine when the DE2 runs out of range), Skin Manager (paint your shunter so it feels like yours), Custom Car Loader (the Jk3 0-8-0 is a natural second shunter).

== 2. The Mainline Foreman

#mod(
  name: "The Mainline Foreman",
  tag: "Difficulty: medium · Focus: the diesel era",
  what: "Background. You are here for the modern railroad: self-lapping brakes, remote control, multiple-unit lashups, and a fleet you own outright. The DE2 is a stepping stone, the DH4 is a tool, and the DE6 is the goal — the $200,000 machine that says you have arrived. You run the valley the way a real diesel-era foreman would: on time, on spec, with a fleet list in your head.",
  source: "",
  install: "",
  risk: "",
)

*Game creation choices*

- *Save:* `mainline` — and give the save a company-style note in your head.
- *House rules:* modern locomotives only — no steam purchases until the DE6 is owned; every locomotive you run regularly must eventually be *owned* (Loco Ownership), not borrowed.
- *Priorities:* Freight Hauls and Logistic Hauls; buy Train Length and Concurrent Orders early to run longer, efficient consists; use MU lashups of DE2s, then DH4s, before the DE6.
- *Goal:* an owned DE6 and a small owned fleet (DH4 + DE2) serviced, painted and earning.
- *Mods that shine:* Loco Ownership (the heart of this persona), Skin Manager (fleet liveries), Custom Car Loader (the N Class is a DE6-class dual-cab workhorse; the EMC-E runs like a passenger-era showpiece), DV Custom Cargo (custom freight on your own cars).

== 3. The Steam Heritage Engineer

#mod(
  name: "The Steam Heritage Engineer",
  tag: "Difficulty: hard · Focus: the steam fleet",
  what: "Background. Steam is not nostalgia for you — it is the discipline: fire, water, coal, and a machine that demands attention every kilometre. You learn on the S060 shunter, earn the S282, and then the custom fleet opens the door to the great 4-8-4s — the Santa Fe 2900 Northerns and the S484-841 'Sunset' — plus the little Jk3 for yard work. Every run is a performance, and the valley is your heritage railway.",
  source: "",
  install: "",
  risk: "",
)

*Game creation choices*

- *Save:* `steam-heritage` — one save per locomotive you consider 'yours'.
- *House rules:* no diesel-hauled freight for your own contracts — the consist moves behind steam or it does not move; water and coal must be managed at the tender, not topped up by magic.
- *Priorities:* S060 license early (\$20k) to learn fire and water in the yard; the S282 (\$50k) for the mainline; then the custom-steam licenses from Custom Licenses — the 2900 and the Sunset are the crown jewels.
- *Goal:* run a complete steam-only roster — S060, S282, Jk3, 2900, Sunset — each owned, painted in heritage liveries, and each with a finished run to its name.
- *Mods that shine:* Custom Car Loader + Custom Licenses (the whole steam expansion), Loco Ownership (park them in your own yard), Skin Manager (heritage paint for every steamer), Comms Radio API (a remote for the yard work that steam cannot do).

#warn[
  Steam is the hardest driving in the game: no remote, no MU, non-self-lapping brakes, and a fire that goes out if you ignore it. The Heritage Engineer is a vow, not a tutorial — relax one rule if the first week stops being fun.
]

== 4. The Iron Road Hauler

#mod(
  name: "The Iron Road Hauler",
  tag: "Difficulty: hard · Focus: heavy freight",
  what: "Background. The valley's economy runs on you: coal and iron ore to the Steel Mill, steel out of it, hazmat and military traffic when the pay is right. You measure success in tonnage moved and fees cleared. Long trains, big grades, dangerous cargo — the Iron Road Hauler takes the jobs nobody else wants and makes money where others make excuses.",
  source: "",
  install: "",
  risk: "",
)

*Game creation choices*

- *Save:* `iron-road` — this is the career you grind.
- *House rules:* every job must be a Freight Haul of at least ten cars or a hazmat/military job; no passenger work, no pleasure driving; fees are paid in full before any licence purchase.
- *Priorities:* Train Length 2 and Concurrent Orders 2 fast; Fragile → Hazmat 1/2/3 and Military 1/2/3 as the fee record allows; S282 or DE6 for the heaviest consists.
- *Goal:* a cleared fee record, an owned DE6 (and an owned S282 for the heritage-heavy hauls), and a completed Hazmat 3 run without environmental damage.
- *Mods that shine:* Custom Car Loader (the N Class and EMC-E pull serious tonnage), DV Custom Cargo (new commodities for the hauling), Loco Ownership (your fleet, your risk), Custom Licenses (the big machines are earned, not given).

== 5. The Railfan Cruiser

#mod(
  name: "The Railfan Cruiser",
  tag: "Difficulty: easy-going · Focus: the journey",
  what: "Background. You came for the scenery and the machines: the moon over the mountains, the steam chuffing through the pass, the valley seen from the cab. You take the jobs that appeal, paint your locomotives the way you like them, and treat the career as a ticket to the best seat in the house. The license ladder happens eventually; the photograph at the summit is the real goal.",
  source: "",
  install: "",
  risk: "",
)

*Game creation choices*

- *Save:* `railfan` — your scenic career.
- *House rules:* no grinding — take a job only when it is interesting or on the way; spend on paint and liveries as happily as on licenses; stop and look whenever the view demands it.
- *Priorities:* passenger and light freight jobs along the prettiest corridors (Harbor, the forests, the mountain grades); collect locomotives to admire rather than to work.
- *Goal:* a small owned fleet in full custom liveries, one memorable run on each — and no regrets.
- *Mods that shine:* Skin Manager (the heart of this persona — every locomotive a canvas), Custom Car Loader (the Sunset, the EMC-E and the 2900 are the stars of the show), Loco Ownership (a personal stable), Comms Radio API (remote control for relaxed solo runs), ReShade (tune the night to taste — but gently).

== How to start a persona run

1. Start a new career and play the tutorial morning to confirm everything works.
2. Quit, back up the fresh `savegame`, and write your persona's name and house rules on paper — three lines of rules beat a forgotten promise.
3. Install order matters if you are switching personas on one machine: the modlist is shared, only the save differs — keep one backup per persona.
4. Launch, and play the persona's priorities from day one.

#table(
  columns: (2fr, 1fr, 2.2fr),
  inset: 6pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { panel2 },
  align: (left, left, left),
  [*Persona*], [*Difficulty*], [*Signature mods*],
  [The Yard Apprentice], [Medium], [Loco Ownership, Skin Manager, Custom Car Loader (Jk3)],
  [The Mainline Foreman], [Medium], [Loco Ownership, Skin Manager, Custom Car Loader (N Class, EMC-E), DV Custom Cargo],
  [The Steam Heritage Engineer], [Hard], [Custom Car Loader + Custom Licenses, Loco Ownership, Skin Manager, Comms Radio API],
  [The Iron Road Hauler], [Hard], [Custom Car Loader, DV Custom Cargo, Loco Ownership, Custom Licenses],
  [The Railfan Cruiser], [Easy-going], [Skin Manager, Custom Car Loader, Loco Ownership, Comms Radio API, ReShade],
)
