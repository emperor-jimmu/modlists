// 40-personas.typ — Peräjärvi '95: player personas.
#import "theme.typ": *

= Personas

_Who are you this summer? Five ways to play the same 1995 — each with a background and the game creation choices that make it yours._

== Before you start: how "creation" works here

My Summer Car has no character creator — no name entry, no appearance sliders. Your identity is what you *decide*:

- *The name.* Edit the save with MSC Editor: open `defaultES2File.txt`, find the `player` section, and set `playerfirstname` / `playerlastname` to whatever you like. The community tradition is a Finnish name — and if you want to feel like part of the village, the surname *Kesseli* matches the in-game Kesseli family.
- *The rules.* Every persona below sets its own house rules: what you may buy, what you must do, what counts as winning. This is the real "game creation" — the difficulty comes from the rules you keep, not from a menu.
- *The mods.* Chapter 2's list is one installation; each persona simply leans on the mods that matter to its playstyle.

#info[
  All five personas are playable on the same modlist — the personas differ in goals and self-imposed rules, not in mods. Switch between them on different saves; keep one backup per persona.
]

== 1. The Restorer

#mod(
  name: "The Restorer",
  tag: "Difficulty: medium · Focus: the car",
  what: "Background. Your father's Satsuma sat in the garage for a decade, and you mean to bring it back exactly as it left the factory — every bolt, every adjustment, the right paint. You are not in a hurry; you are doing it properly. The village will see a showroom car by the end of summer, and Korhonen's inspection will be a formality.",
  source: "",
  install: "",
  risk: "",
)

*Game creation choices*

- *Name:* something steady — "Juha Kesseli" works, or any Finnish name you like. Edit it in MSC Editor.
- *House rules:* buy only correct, proper parts — no salvaged shortcuts, no tuning for power. Original everything; keep the engine stock.
- *Priorities:* finish each assembly step completely before starting the next; fluids and torque before anything else; drive gently once it is road-legal.
- *Goal:* a spotless, fully legal, fully original Satsuma — the inspection passed first time with nothing flagged.
- *Mods that shine:* Visual Wear (spot worn parts before they embarrass you), Better Graphics (enjoy the showroom look), Lights on Switches.

== 2. The Rally Driver

#mod(
  name: "The Rally Driver",
  tag: "Difficulty: medium · Focus: speed",
  what: "Background. You grew up on gravel roads and you know exactly what a 1.0-litre with the right setup can do. The Satsuma is not a project — it is a chassis waiting for a build sheet. Money goes into racing parts, tuning, and seat time; the inspection is just a checkpoint on the way to the grid.",
  source: "",
  install: "",
  risk: "",
)

*Game creation choices*

- *Name:* a driver's name — "Timo Virtanen" and the like.
- *House rules:* every markka earned goes toward performance parts; the build prioritizes the engine, suspension and weight; you may tune aggressively — and accept the consequences.
- *Priorities:* earn via the night shuttle and racing payouts; run the engine in quickly but thoroughly; practice launches and gravel technique.
- *Goal:* win — drag and rally events both, with a reputation on the dirt.
- *Mods that shine:* Traffic Car Expansion (a living road scene), Better Graphics (motion blur and tilt-shift sell the speed), Visual Wear (a race engine eats parts — watch them).

== 3. The Workhorse

#mod(
  name: "The Workhorse",
  tag: "Difficulty: medium · Focus: the economy",
  what: "Background. Nobody is handing you this car. You take every job the village offers — firewood at grandma's, Friday flyers, the night shuttle, hauling — and the Satsuma is built mark by mark. You know the price of every part because you earned it, and by August the garage holds the proof.",
  source: "",
  install: "",
  risk: "",
)

*Game creation choices*

- *Name:* a working man's name — "Esa Miettinen".
- *House rules:* the car is bought with earned money only — no shortcuts, no freebies; the daily loop is job-first, build-second.
- *Priorities:* learn the job routes and payouts; bank money for the big parts; use the van and tractor well before the Satsuma exists.
- *Goal:* a fully built, inspected Satsuma funded entirely by honest work — and a comfortable bank balance to show for the summer.
- *Mods that shine:* Cassette Tapes (the radio makes long hauling tolerable), Traffic Car Expansion (roads worth sharing), Visual Wear (keep the work vehicle alive).

== 4. The Stoic

#mod(
  name: "The Stoic",
  tag: "Difficulty: hard · Focus: no shortcuts",
  what: "Background. You play the game the way it is written: no help, no comfort, no beer. Everything the Satsuma needs is earned the hard way, salvaged where possible, and fitted by hand. The summer will test your patience — that is the point. This is the persona for the player who has done it once the easy way.",
  source: "",
  install: "",
  risk: "",
)

*Game creation choices*

- *Name:* something plain — "Pekka Ahonen".
- *House rules:* *no beer* (it is a cheap food-and-drink staple — refusing it makes hunger management real); salvage and reuse what you can find before buying new; never take the easy transport; sleep only at home.
- *Priorities:* firewood and the slow jobs; hunt for usable parts; build methodically and maintain everything.
- *Goal:* the Satsuma, assembled from the hardest possible summer — every markka honestly earned, every part honestly fitted.
- *Mods that shine:* Visual Wear (essential — you cannot afford surprises), Reharmonization (stable frames while you grind), Better Graphics (the fog and storms make the struggle atmospheric).

#warn[
  The Stoic is a self-imposed hard mode. If the first week stops being fun, relax one rule — the persona is a lens, not a vow.
]

== 5. The Cruiser

#mod(
  name: "The Cruiser",
  tag: "Difficulty: easy-going · Focus: the summer",
  what: "Background. You came to the village for the season: a borrowed garage, a wreck with potential, and no particular hurry. The Satsuma gets built between long drives, cassette tapes, and evenings at the pub. The inspection will happen eventually — the summer is what you are actually here for.",
  source: "",
  install: "",
  risk: "",
)

*Game creation choices*

- *Name:* an easygoing name — "Antti Koskinen".
- *House rules:* no grinding — do the jobs that appeal; spend on comfort (food, tapes, paint) as well as parts; enjoy the world.
- *Priorities:* build at your own pace; take the Satsuma out for pleasure drives once it is legal; spectate the racing scene.
- *Goal:* a road-legal Satsuma by summer's end, a stack of cassette tapes, and no regrets.
- *Mods that shine:* Cassette Tapes (the heart of this persona), Better Graphics (the map has never looked better for cruising), Traffic Car Expansion, Lights on Switches.

== How to start a persona run

1. Start a new game and play one morning to confirm everything works.
2. Quit, open the save with MSC Editor, and set your persona's name in `defaultES2File.txt` (`playerfirstname` / `playerlastname`).
3. Write your house rules somewhere visible — three lines on paper beats a forgotten promise.
4. Launch, and play the persona's priorities from day one.

#table(
  columns: (2fr, 1fr, 2.2fr),
  inset: 6pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { panel2 },
  align: (left, left, left),
  [*Persona*], [*Difficulty*], [*Signature mods*],
  [The Restorer], [Medium], [Visual Wear, Better Graphics, Lights on Switches],
  [The Rally Driver], [Medium], [Traffic Car Expansion, Better Graphics, Visual Wear],
  [The Workhorse], [Medium], [Cassette Tapes, Traffic Car Expansion, Visual Wear],
  [The Stoic], [Hard], [Visual Wear, Reharmonization, Better Graphics],
  [The Cruiser], [Easy-going], [Cassette Tapes, Better Graphics, Traffic Car Expansion, Lights on Switches],
)
