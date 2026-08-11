// 30-how-to-play.typ — The Grand Chronicle: how to play the modded game.
#import "theme.typ": *

= How to Play

_This chapter assumes you know the shape of a 4X game but want to play Civ VI *well* with The Grand Chronicle installed — what to set up, which game modes earn their place, and how to read the game with the mods' new lenses, era by era._

== Creating your game: the Chronicle baseline

From the main menu choose *Single Player → Create Game* and open *Advanced Setup*. This baseline works for every persona in Chapter 4:

#text(size: 9.5pt)[
#table(
  columns: (1.4fr, 2.4fr),
  inset: 6pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { cream },
  align: (left, left),
  [_Setting_], [_Chronicle baseline_],
  [Map type], [Continents (or Pangaea for a bloodier game; Fractal for variety; YnAMP True Start Earth for the Chronicler persona)],
  [Map size], [Standard (Large is fine on strong PCs; YnAMP: never above Enormous)],
  [Game speed], [Standard (Epic for the Chronicler persona — eras last longer, the world gets to breathe)],
  [Difficulty], [King to start; Emperor once the AI mod feels comfortable; Prince for pure sandbox],
  [Disaster intensity], [2 (moderate climate events; 4 if you want Gathering Storm to bite)],
  [Start position], [Legendary (fair starts; the game is hard enough without rerolling)],
  [World age], [New (more hills — pairs beautifully with Hillier Hills)],
  [Resources], [Standard (Abundant if you want a friendlier *economy*, not an easier game)],
  [Rainfall], [Standard (Wet gives Wetlands terrain more presence)],
)
]

#tip[
  The *number of civilizations* is worth tuning: 8 civs on Standard keeps the map competitive without crowding. The mods don't change how many civs fit a map.
]

=== Game modes: which earn their place

Game modes are official DLC toggles in Advanced Setup — choose them per game, not per install.

#text(size: 9.5pt)[
#table(
  columns: (1.6fr, 1fr, 2.2fr),
  inset: 6pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { cream },
  align: (left, left, left),
  [_Mode_], [_Verdict_], [_Why_],
  [Monopolies & Corporations], [_Recommended_], [Economic depth: monopolies, corporations, products, and a tourism hook. The single best 'deepen the economy' mode — the Merchant Republic persona is built on it.],
  [Barbarian Clans], [Recommended], [Barbarian camps become evolving clans that can be hired or recruited into city-states — more texture, not more power.],
  [Dramatic Ages], [Optional], [Ages swing hard, cities can flip, dark ages bite. Deeper and *harder* — for the Chronicler and veterans.],
  [Secret Societies], [Optional], [Four fantasy societies with strong bonuses. Honest note: this is the most power-giving mode, so it sits on the optional shelf, not the default.],
  [Heroes & Legends], [Leave off], [Heroes are flat power spikes — the exact thing this list avoids.],
  [Apocalypse / Zombie Defense], [Leave off], [Gimmick modes; they skew the world toward spectacle rather than strategy.],
  [Sukritact's Oceans], [Per game], [A mod game mode (Chapter 2). Great on standard map scripts; skip it on YnAMP maps.],
)
]

== Reading the game with The Grand Chronicle

The UI mods are not decoration — they change *how you make decisions*:

- _Quick Deals_ turns diplomacy into a market. Sell luxuries and strategics the moment they are spare; check every leader's offer before spending a trade turn.
- _Detailed Map Tacks_ makes districts a planning puzzle. Before you settle, tack out the campus/holy site/government plaza chain you want; the tacks show the adjacency math before you commit tiles.
- _Extended Policy Cards_ removes the "card amnesia": swap policies when the numbers say so, not from memory. Revisit after every new district or war declaration.
- _Extended Diplomacy Ribbon + Global Relations Panel_ give you the diplomatic map: who is weak, who is friendly, who everyone hates. Use it — grievances and alliances are visible strategy.
- _Better Combat Preview_ changes war: you see damage ranges before you attack. Ambushes and favorable terrain become things you *engineer*, not hope for.
- _Better Report Screen_ is your endgame dashboard: units, deals, policies, minors — one screen to plan your victory push.
- _Real Strategy_ makes the AI behave like a player with a plan. Respect it: the AI now builds districts that make sense, which means it *will* have an economy by the Renaissance. Early aggression windows are real, but so are its counterattacks.

== Era by era

=== Ancient Era — the first forty turns

- _Open_ with a scout (or two) and a slinger: meet city-states for free first-meet envoys, find your neighbors, and grab the tribal villages.
- _Settle on fresh water_ (river or coast) and *plan before you plant*: your first three cities should have room to grow into their districts. Drop tacks now, settle accordingly.
- _Tech eureka culture_: don't research blind — read what boosts a tech (build that pasture, meet that civ) and let the boosts pull you forward. This is the game's hidden skill floor.
- _Combat_: slingers with the warrior are enough to clear camps. Do not over-build military in a peaceful opening — every unit is a missed settler.

=== Classical & Medieval — governments and golden ages

- _Era score is a resource_ (Rise & Fall / Gathering Storm). Aim for a Golden Age in the Classical era — the Legacy bonuses compound for the rest of the game.
- _Governors_ (R&F/GS): Magnus (settler/chopping economy), Pingala (science/culture), Liang (builder safety). Move them deliberately; their promotions are long-term investments.
- _Policy economy_: with Extended Policy Cards, you can *see* when a military card beats a growth card. Re-swap every few turns — that's the actual government minigame.
- _Loyalty_ (R&F/GS): don't settle inside your neighbor's pressure bubble unless you plan to take their cities next. Foreign cities flip; yours can too.
- _Wonders_: pick two or three per era that match your victory (Chapter 4 personas say which). With Real Strategy installed, the AI races you — check the wonder screen and pivot when beaten.

=== Renaissance & Industrial — the economy era

- _Trade routes are your second economy_ (Gathering Storm makes them even more vital). With Better Trade Screen, sort by gold/science and keep every route filled — internal routes grow new cities, external routes make money and spread religion.
- _Corporations_ (if Monopolies & Corporations is on): monopolies come from controlling a luxury's sources — trade for them, don't gift them. Products are endgame gold.
- _Great People_: with Real Great People, the window shows portraits and points. Plan *which* great person you want and protect your lead in that category — don't let a neighbor's Theatre Square out-accumulate you.
- _Alliances_: a Research or Economic Alliance with the right neighbor is compounding value. The Global Relations Panel shows who's actually reliable.

=== Modern & Atomic — the war era

- _War is a calculation now_: use Better Combat Preview to confirm fights before committing. Corps and armies (GS) double your punch — but oil gates the good stuff.
- _Power_ (GS): plan power districts (Industrial Zones, Dams, power plants) before you need them; running out mid-war is a classic collapse.
- _Spies_: a handful of spies doing missions (steal great works, siphon gold, disrupt rocketry) is more value than any wonder this era. Assign them like governors.
- _Diplomacy under pressure_: the ribbon shows who's arming up. If a neighbor's strength is spiking, that's your war warning — bribe their target, or be the target.

=== Information & Future — the victory era

- _Pick your lane in Chapter 4's roadmap and commit._ Late-game Civ VI punishes dithering more than any other era.
- _Production Queue earns its keep_: queue up space-race projects, districts, and wonder chains so no city idles.
- _Climate_ (GS): carbon emissions drive sea-level rise; coastal cities flood. If you're the top polluter, expect the world congress to tax you.
- _The endgame dash_: science → Mars; culture → rock bands and tourism; diplomacy → world congress votes; domination → the last capitals. Watch all four progress meters in the victory screen — the AI is pushing its own lane.

== Empire systems, quickly

- _Districts_: adjacency is king — campus/holy site adjacency from mountains and reefs, government plaza chains, aqueduct/dam combos for industrial zones. Tacks make this visible.
- _Housing & amenities_: grow to the housing cap, then build neighborhoods (later) — amenities above all prevent production loss and riots (late game: Entertainment Complexes, luxuries, policies).
- _Loyalty_: pressure from nearby cities and civics; governors, garrisons, and population decide who keeps the city.
- _Grievances_ (GS): declare war without cause and the world hates you; casus belli keeps grievances low. The ribbon shows the fallout.
- _Religion_: founding a religion is optional but powerful (faith economy, relics, city-state Suzerain bonuses, religious victory). If you skip it, at least defend against it.
- _City-states_: first meet = free envoy; 3 envoys = Suzerain. Suzerain bonuses are among the strongest incentives in the game — the report screen's new minors tab tracks them.
- _Tourism_ (culture victory): great works, wonders, relics, seaside resorts, rock bands. Theming bonuses (same era/type in one museum) multiply tourism — Great Works Viewer exists for this.
- _Climate_ (GS): CO₂ from coal/oil plants, floods and droughts scale with disaster intensity. Clean energy later; the congress votes on carbon taxes.

== Victory roadmaps

- _Science_: campuses everywhere → universities → Oxford/space agency wonders → moon/mars projects. Pingala in the spaceport city, Production Queue on the projects, research alliances. *Persona: The Cradle of Science.*
- _Culture_: theatre squares, wonders, artifacts, then rock bands; monopolies multiply tourism if that mode is on. *Persona: The Architect of Wonders.*
- _Domination_: an early war to cripple a neighbor, then snowball — but Real Strategy's AI will punish a stalled war. Corps, oil, and air power close it out. *Persona: The Iron Chancellor.*
- _Diplomatic_: win world congress votes — build Statue of Liberty, spread your government's appeal, bank favour with everyone. *Persona: The Merchant Republic.*
- _Religious_: found early, spread hard, defend apostles — theological combat is real combat. *Persona: The Faithful Pilgrim.*
- _Score_: the patient person's victory — outlast everyone with the best empire. *Persona: The Chronicler of Eras.*

#info[
  One game, one persona. Chapter 4 turns these roadmaps into characters — with the exact creation choices each one needs.
]
