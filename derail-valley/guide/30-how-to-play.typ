// 30-how-to-play.typ — Iron Valley: field manual for the modded railway.
#import "theme.typ": *

= How to Play

_A field manual for the modded career: what the game actually is, the daily loop, jobs and licenses, the locomotives, driving — and what the mods change once you are in._

== What the game actually is

Derail Valley is a first-person train-driving and career sim set in a fictional mountain valley served by a diesel-era railway. You start as a new hire for the valley's freight railway: a debt of fees to clear, a tutorial DE2 shunter to learn on, and a job booklet that tells you exactly what to move, where, and when.

There is no quest marker that flies you to the action — you physically walk your station, pick a job paper off the table, feed it to the job validator, and go couple up. The difficulty *is* the process: reading the booklet, finding the right siding, driving your train within its limits, and paying the fees your locomotives burn. This guide's mods deepen that process; they do not shorten it.

== The career loop

1. *Walk into a station office.* On the table are job preview papers; next to them the *job validator* and the *Career Manager* machine.
2. *Take a job.* Choose a paper (its heading colour tells you the type), insert it into the validator, and receive the booklet: car numbers, siding numbers, destination, and a time limit.
3. *Do the work.* Couple up, move the consist, finish every step the booklet lists.
4. *Turn it in.* Insert the booklet at any station's validator. Complete = payment (plus a *time bonus* if you beat the deadline). Incomplete = a status report telling you what is left.
5. *Pay your fees* at the Career Manager — fuel, maintenance, and the insurance copay your licenses carry. Keep the fees clear, or the railway stops letting you work.

#tip[
  The time bonus is real money. Completing jobs under the printed time limit is the difference between climbing the license ladder quickly and being swamped by fueling fees. Be ready to go *before* you accept: locomotive coupled, plan in hand.
]

== Money and fees

- *Job payments* are your income: freight hauls pay the most, then logistic hauls, then shunting.
- *Fees* accumulate as you run: consumables for engaged locomotives, maintenance, and damage — to your train, the cargo, or the environment. Pay them at the Career Manager; a clean fee record is required to buy licenses.
- *Insurance copay*: most licenses raise the copay you owe after accidents. That is the game's risk economy — big licenses (DE6, Hazmat 3) come with big copays.
- *Service*: paying fees at the Career Manager refuels and resupplies your locomotive; a Manual Service license unlocks the cheaper service points around the map.

== Licenses — the progression spine

There are _22 licenses_: three come from the tutorial (*Train Driver*, *Freight Haul*, *DE2*), the rest are bought at any Career Manager with a clean fee record. Licenses unlock locomotives, job types, cargo classes and longer trains — and most of them raise your copay and tighten the time-bonus deadline, so every step up costs something.

#table(
  columns: (1.4fr, 0.9fr, 2fr),
  inset: 6pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { panel2 },
  align: (left, left, left),
  [*License*], [*Cost*], [*What it unlocks*],
  [Shunting], [\$1,000], [Shunting jobs (yard work)],
  [Train Length 1], [\$10,000], [Jobs up to 10 cars],
  [Train Length 2], [\$20,000], [Jobs of any length (needs Length 1)],
  [Logistical Haul], [\$20,000], [Empty-car hauling jobs (needs Concurrent Orders 1)],
  [Concurrent Orders 1], [\$10,000], [Two jobs at once],
  [Concurrent Orders 2], [\$20,000], [Any number of jobs (needs CO1)],
  [Dispatcher], [\$10,000], [Throw switches from the map],
  [Manual Service], [\$20,000], [Service points for cheap resupply],
  [Fragile], [\$10,000], [Fragile cargo jobs (vehicles, animals, fruit)],
  [Hazmat 1/2/3], [\$40k / \$130k / \$290k], [Flammable, hazardous, most-dangerous cargo (tiered, needs Fragile)],
  [Military 1/2/3], [\$100k / \$30k / \$400k], [Restricted-zone, military, top-secret cargo (tiered)],
)

#info[
  Locomotive licenses follow the same ladder: DE2 is free from the tutorial, then S060 (\$20k), DM3 (\$30k), DH4 (\$50k), S282 (\$50k), BE2 (\$17k), DM1U (\$18k), and the big one — DE6 at \$200,000, which needs Concurrent Orders 2. The custom locomotives in chapter 2 slot into this system: several gate themselves behind custom licenses you buy at the same Career Manager.
]

== Job types

- *Freight Hauls* (green heading) — the main earners: take loaded cars from one station's outbound track to another station's inbound track. Highest pay, highest risk; hazmat and military variants pay best and punish derailments hardest.
- *Logistic Hauls* (yellow heading) — moving *empty* cars around, with varied destinations and tracks that may already be occupied. Less pay, excellent practice for route knowledge and light enough for a DE2.
- *Shunting* (red heading) — localized yard work: move cars between tracks, load/unload them, build the consists for the hauls. Least pay, least risk — the game's schoolroom.

#warn[
  Jobs only exist while you are inside a station's range: leave the range and unclaimed cars and papers despawn. Claimed consists stay around for about two in-game hours — enough to finish a run, not enough to treat the map as a free parking lot. Plan yard work inside station limits.
]

== The map and its industries

The valley's railway serves _16 stations_: the cities and towns (City West, Harbor & Town, Food Factory & Town, Goods Factory & Town, Machine Factory & Town), the resource sites (Coal Mine East, Iron Ore Mine East and West, Oil Well North and Central, Farm, Forest Central and South, Sawmill), and the Steel Mill and Military Base. Around them turns an economy with _82 cargo types_ as of B99 — coal and iron ore to the Steel Mill, logs to the Sawmill, food and goods to the towns, cars and machinery out of the Machine Factory, fuel from the Refinery and Harbor, and hazmat or military traffic for the brave.

#tip[
  Learn the commodity flows and you can predict the job papers: the Steel Mill is the valley's heart (coal + iron ore in, steel products out), the Farm feeds the Food Factory, and everything imported comes through the Harbor. Route knowledge is the difference between a time bonus and a dead heat.
]

== The locomotives

The current build has _eight locomotives_, all usable, and each has a personality:

#table(
  columns: (1fr, 1.1fr, 0.8fr, 1.1fr),
  inset: 6pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { panel2 },
  align: (left, left, left, left),
  [*Model*], [*Type*], [*Load rating*], [*License*],
  [BE2], [Battery-electric microshunter], [100 t], [\$17,000],
  [DE2], [Diesel-electric shunter], [370 t], [Tutorial],
  [DM3], [Diesel-mechanical shunter], [960 t], [\$30,000],
  [S060], [Steam 0-6-0 shunter], [560 t], [\$20,000],
  [DM1U], [Diesel-mechanical utility rail vehicle], [100 t], [\$18,000],
  [DH4], [Diesel-hydraulic road switcher], [800 t], [\$50,000],
  [S282], [Steam 2-8-2 mainline], [1,390 t], [\$50,000],
  [DE6], [Diesel-electric mainline], [1,320 t], [\$200,000],
)

The split that matters: the *modern* locomotives (DE2, DH4, DE6) have self-lapping brakes, remote-control compatibility (except the DE6) and multiple-unit (MU) capability; the *old* ones (DM3, S060, S282) have non-self-lapping brakes and no remote or MU. Steam locomotives add water and coal (or, for some custom ones, diesel) to your pre-trip checklist. The Vehicle Catalog in your inventory shows every spec, load rating and service score — read it.

== Starting the career

The sensible early ladder: learn shunting and the DE2 → buy Shunting, then the DM3 or S060 for stronger yard power → Train Length 1 and Concurrent Orders 1 to stack work → DH4 as the first serious road engine → S282 or the long road to the DE6. Fees stay small early because the licenses you can afford carry small copays.

== Driving

The tutorial booklet hands you the core controls, and everything is rebindable from the in-game settings (`GamePreferences.ini` holds the full key list). The essentials:

- *Throttle and reverser* move the train; *brakes* stop it — an independent brake for the locomotive and a train brake for the consist. Old locomotives brake differently from modern ones: read the cab.
- *Signals, switches and speed limits* are the road rules of the valley. A sharp curve at speed derails cars — or the whole train. Throw switches by hand at the ground, or buy the Dispatcher license to do it from the map.
- *Grades matter.* Every locomotive has a load rating for flat track and a lower one for grades — a consist that rolls on the flat may stall or crawl on the valley's hills. The catalog's load ratings exist to keep you honest.
- *The Comms Radio* is your Swiss-army knife: car spawner, locomotive remote control (a huge help for shunting), and now — with the mods — reskinning and ownership modes.
- *Save anywhere, but deliberately*: the game auto-saves on exit and you can save manually; keep backups of the `savegame` file before big purchases or mod changes.

== The modded experience

What the Iron Valley mods change once you are playing:

- *Unity Mod Manager* — #key("Ctrl+F10") in-game: every mod, its version, its settings, enable/disable. This is your dashboard.
- *Custom Car Loader* — the community locomotives spawn in the world naturally and some appear as purchasable work trains; cars with custom cargo can show up in jobs. The five locomotives from chapter 2 are now part of the motive-power pool, each with its own cab, gauges and quirks. Remember: CCL needs the current version, and it does not get along with Number Manager.
- *Custom Licenses* — the custom locomotives' licenses appear in the Career Manager like vanilla ones: earn the fee record, buy the license, drive the machine. No free locomotives.
- *DV Custom Cargo* — the economy can now carry cargo types beyond the vanilla 82, on custom cars. Add cargo packs *before* starting a career — changing the cargo set mid-save can clear hazmat-map markers.
- *Skin Manager* — repaint your fleet via the Comms Radio reskin mode: heritage liveries for the steam fleet, modern schemes for the diesels. Your railway, your colours.
- *Loco Ownership* — buy the locomotives you actually run: they stay where you park them, you service them, and you can sell them on. Build a fleet of demonstrators plus owned machines and treat it like real capital — because it is.
- *ReShade (optional)* — toggle the overlay with #key("Home") and tune to taste. Night freight is dark by design; resist the temptation to lighten it into daylight.

== Saves, backups & troubleshooting

- *Saving*: auto-save on exit; manual save available in-game.
- *Backups*: the save is `DerailValley_Data\SaveGameData\savegame`; the game keeps automatic backups there too. Copy the folder before mod changes and before licence purchases you would hate to redo.
- *Mod problems*: a mod shown red in the UMM menu is outdated or missing a dependency — check its Nexus page, or disable it and test.
- *Isolation*: when something breaks, disable mods one at a time from #key("Ctrl+F10"). UMM makes this a two-minute job.
- *The next build*: Derail Valley is Early Access and B100 is coming. Major builds have historically broken mods; when it lands, expect a brief 'wait for updates' period before the list works again — that is normal for this game.

== How to stay out of trouble (a checklist)

- Clear your fees before buying anything; a dirty fee record blocks the license ladder.
- Check the consist against the booklet before you move: wrong cars or wrong sidings cost time bonuses.
- Know your locomotive's load rating and the grades on your route before you accept a heavy haul.
- Slow down for curves and respect the speed signs — a derailment costs more than time.
- Watch water and coal (or diesel) on steam: a dead engine in the middle of the valley is a long walk with a fuel can.
- Back up the save before ambitious purchases — the DE6 is \$200,000 of your time.
- When in doubt, walk the yard. The game rewards the careful railroader.
