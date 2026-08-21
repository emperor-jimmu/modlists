#import "../../theme.typ": *

== Buddies & the Town

=== Your Palamute

The palamute is a riding dog that fights alongside you:

- *Riding* — the fastest way across a map; you can use items while mounted.
- *Combat* — it attacks and draws aggro; some weapon moves can be chained off a mounted position.

=== Your Palico

The palico is a support cat with a *role* that defines its behavior:

#table(
  columns: (22%, 78%),
  stroke: 0.4pt + LINE,
  fill: (x, y) => if y == 0 { EMBER_DK } else { white },
  table.header(
    [#text(fill: SNOW, weight: "bold", font: DISPLAY, size: 9.5pt)[Role]],
    [#text(fill: SNOW, weight: "bold", font: DISPLAY, size: 9.5pt)[What it does]],
  ),
  [Fighter], [Aggressive, high damage],
  [Assist], [Sets traps, uses items on you],
  [Defender], [Taunts, takes hits, buffs defenses],
  [Healer], [Restores your health],
  [Trapper], [Captures small monsters, places traps],
  [Gathering], [Collects extra materials during hunts],
)

For a beginner, *Healer* or *Assist* smooths the learning curve most; switch roles whenever you like — the role is training, not a permanent choice.

=== Buddy Gear & Skills

- Craft and upgrade buddy weapons and armor at the smithy (buddy gear shares your material pool).
- Each buddy equips *support moves* (active abilities) and *buddy skills* (passive perks). Read them and tune: a palico with the healing move set is a different animal from a trapper kit.
- Buddy gear also matters in Master Rank — Sunbreak's harder hunts lean on well-equipped buddies.

=== The Buddy Plaza

- *Meowcenaries* — send buddies out on expeditions; they return with materials on a timer. Free passive income; keep them running.
- *The Argosy* — a trading ship; trade materials for other materials or Kamura Points. Set it to bring what you are currently missing.
- *The Cohoot* — your owl; check its nest regularly for free daily items.

=== Town Facilities, Summarized

- *Smithy* — weapons, armor, decorations, buddy gear, melding.
- *Canteen* — dango meals.
- *Item box* — inventory, loadouts, item crafting.
- *Quest counter / Gathering Hub* — village and hub quests (see *Quests & Progression*).
- *Training area* — practice.
- *NPCs with markers* — quests and unlocks; talk to everyone.

#tip[
  The buddy plaza is easy to ignore and quietly valuable: Meowcenaries + Argosy running in the background means you arrive at every smithy visit with extra materials and points you never had to grind for.
]
