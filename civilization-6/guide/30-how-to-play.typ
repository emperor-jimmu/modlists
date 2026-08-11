// 30-how-to-play.typ — The Grand Chronicle: how to play the modded game.
#import "theme.typ": *

= How to Play

_This chapter assumes you know the shape of a 4X game but want to play Civ VI *well* with The Grand Chronicle installed — what to set up, which game modes earn their place, and how to read the game with the mods' new lenses, era by era._

== Which layer are you playing?

- _Layer 1 — Vanilla+ (learning):_ the rules are 100% vanilla. Everything in this chapter applies, but you can ignore the technology and content notes — the tree is the vanilla tree, the resources are the vanilla set. Play with all game modes off; that is what "learning the game" means here.
- _Layer 2 — The Grand Chronicle (fully modded):_ Layer 1 plus the AI and content. What changes: the AI thinks like a rival great power (Real Strategy); the tech tree is rearranged to be historical (Real Tech Tree) and its boosts are randomized every game (Real Eurekas); the world has ~60 extra resources (Resourceful 2, Sukritact's Resources), 20 extra natural wonders (Terra Mirabilis), wetlands that matter, dynamic city names, and an optional oceans game mode. This chapter's technology and content sections are written for this layer.

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

=== The settings, explained

- _Map type_ — decides the world's shape: Continents (landmasses divided by ocean — the balanced default), Pangaea (one giant landmass — wars and rivalries), Fractal (unpredictable), Archipelago (maritime), or one of YnAMP's real maps in Layer 2.
- _Map size_ — Standard (8–10 civs) is the balanced default; larger maps mean more rivals and longer games, and YnAMP maps above Enormous risk late-game crashes.
- _Game speed_ — Standard is the reference pace; Epic stretches it by a third so eras last longer; Marathon is a lifestyle.
- _Difficulty_ — the AI's handicap: higher levels give the AI more starting units and faster growth. It does not make the AI smarter — that is Real Strategy's job in Layer 2.
- _Disaster intensity_ — scales climate events from 0 (off) to 4 (cataclysmic). Gathering Storm's floods, droughts and storms are a strategic layer; start at 2.
- _Start position_ — Legendary gives fair, strong starts; random can be brutal. The modded game is hard enough without rerolling for a perfect spawn.
- _World age_ — New = more hills, Old = more flatland. Hills give production and defensible terrain; New pairs beautifully with Hillier Hills.
- _Resources_ — Standard is the reference; Abundant gives a friendlier economy (more luxuries, more amenities), not an easier game.
- _Rainfall_ — Wet creates more marshes and woods (which feeds the Wetlands mod in Layer 2); Arid creates deserts.

#tip[
  The *number of civilizations* is worth tuning: 8 civs on Standard keeps the map competitive without crowding. The mods don't change how many civs fit a map.
]

=== Game modes: which earn their place

Game modes are official DLC toggles in Advanced Setup — choose them per game, not per install. On Layer 1, leave them all off: the point of that layer is the vanilla rules. On Layer 2, the table below is your guide.

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
- _Better Tech Tree_ (and, on Layer 2, the Real Tech Tree reorder) makes the research path legible: prerequisites, costs, and unlocks at a glance, so you can see what beelining actually costs you.
- _Real Strategy_ makes the AI behave like a player with a plan. Respect it: the AI now builds districts that make sense, which means it *will* have an economy by the Renaissance. Early aggression windows are real, but so are its counterattacks.

== Your first 100 turns

A skeleton for a strong opening, whichever layer you are on:

- _Turns 1–10 (the scout phase)._ Build order: scout → slinger → builder (or settler on a very strong start). Move the scout in a widening spiral to meet city-states and neighbors — the first-meet envoy is free influence, and knowing the map beats hoping.
- _Turns 11–30 (the second city)._ Choose the second settle site while scouting: fresh water, a strategic luxury, or a district-adjacency cluster (tacks make this visible before you commit). A city that cannot grow is a city that cannot pay for itself.
- _Turns 31–60 (the economy turns)._ Third city, one district per city, and the first eureka chases. On Layer 2, Real Eurekas randomizes the boost conditions, so read each tech's tooltip this game instead of relying on memory.
- _Turns 61–100 (the era pivot)._ Governments arrive, governors get placed, and you commit to a victory direction — Chapter 4's personas tell you which. A Classical Golden Age here compounds for the rest of the game.

== Era by era

=== Ancient Era — the first forty turns

- _Open_ with a scout (or two) and a slinger: meet city-states for free first-meet envoys, find your neighbors, and grab the tribal villages.
- _Settle on fresh water_ (river or coast) and *plan before you plant*: your first three cities should have room to grow into their districts. Drop tacks now, settle accordingly.
- _Tech eureka culture_: don't research blind — read what boosts a tech (build that pasture, meet that civ) and let the boosts pull you forward. This is the game's hidden skill floor. (Layer 2 with Real Eurekas: the boost conditions are randomized each game, so the skill becomes *discovering* them — hover the tech and read what this game's boost is.)
- _Combat_: slingers with the warrior are enough to clear camps. Do not over-build military in a peaceful opening — every unit is a missed settler.

=== Classical & Medieval — governments and golden ages

- _Era score is a resource_ (Rise & Fall / Gathering Storm). Aim for a Golden Age in the Classical era — the Legacy bonuses compound for the rest of the game.
- _Governors_ (R&F/GS): Magnus (settler/chopping economy), Pingala (science/culture), Liang (builder safety). Move them deliberately; their promotions are long-term investments.
- _Policy economy_: with Extended Policy Cards, you can *see* when a military card beats a growth card. Re-swap every few turns — that's the actual government minigame.
- _Loyalty_ (R&F/GS): don't settle inside your neighbor's pressure bubble unless you plan to take their cities next. Foreign cities flip; yours can too.
- _Wonders_: pick two or three per era that match your victory (Chapter 4 personas say which). With Real Strategy installed, the AI races you — check the wonder screen and pivot when beaten.
- _Research path (Layer 2)_: Real Tech Tree reorders prerequisites to be historical — don't assume the vanilla chain. Open the tree (Better Tech Tree makes this easy) and chart your path before you commit.

=== Renaissance & Industrial — the economy era

- _Trade routes are your second economy_ (Gathering Storm makes them even more vital). With Better Trade Screen, sort by gold/science and keep every route filled — internal routes grow new cities, external routes make money and spread religion.
- _Corporations_ (if Monopolies & Corporations is on): monopolies come from controlling a luxury's sources — trade for them, don't gift them. Products are endgame gold. (Layer 2: with Resourceful 2 and Luxury Resource Variety there are far more luxuries in play — and therefore more monopolies to chase.)
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

== Empire systems, in depth

=== Districts and adjacency

The heart of Civ VI's planning: every district's yield is adjacency-driven. Campuses and Holy Sites love mountains and reefs; Industrial Zones love aqueducts and dams; Commercial Hubs and Harbors love rivers and each other. The Government Plaza chain and the district-discount mechanic reward planning your first three cities as one system. Detailed Map Tacks exists for exactly this — tack before you settle.

=== Housing and amenities

Growth needs housing (fresh water, farms, granaries, neighborhoods) and contentment needs amenities (luxuries, Entertainment Complexes, policies). A city at its housing cap stops growing; a city short on amenities bleeds production and can riot. On Layer 2 the ~60 extra resource types (Resourceful 2, Sukritact's Resources) make amenity trading a real market — and Luxury Resource Variety means each map's luxury mix is different.

=== Loyalty

Rise & Fall's pressure system: nearby foreign cities push on your borders, and low loyalty flips cities to free cities or a neighbor. Pressure comes from population, proximity, governors, garrisons, and civics. If you conquer, expect to hold your prize under pressure; if you forward-settle, expect the same treatment back.

=== Grievances and diplomacy

Gathering Storm's grievance system prices every war: declare without cause and the world accrues grievances against you; a justified war (promises broken, denouncements honored) keeps them low. The Extended Diplomacy Ribbon and Global Relations Panel turn this from fog into a readable board — check them every few turns, not just when war breaks out.

=== Religion and the faith economy

Founding a religion is a build order, not an accident: Holy Sites and Great Prophet points from the early game, then beliefs that match your victory (Work Ethic for production, Choral Music for culture, Feed the World for growth). Faith buys apostles, then districts and buildings under Theocracy. Even a secular empire should defend against conversion — foreign religion on your cities is foreign influence on your yields.

=== City-states

Every city-state grants a Suzerain bonus to whoever holds the most envoys (first meet = 1 free envoy; 3 = Suzerainty). Bonuses range from production and unit discounts to diplomatic favour and unique units. Envoys are one of the best early investments in the game — the report screen's minors tab (Better Report Screen) tracks every relationship.

=== Tourism and the culture victory

Culture victory is a tourism race: great works, wonders, relics, seaside resorts, rock bands, and — on Layer 2 with Monopolies & Corporations — monopolies that multiply tourism. Theming bonuses (museums holding the same era and type) double their output; Great Works Viewer exists to plan them. Watch the tourism lens: it shows exactly who is converting whom.

=== Spies

A handful of spies doing missions — sabotage rocketry, siphon gold, steal great works, recruit partisans — is more value than any wonder in the modern era. Assign them like governors, promote them, and expect the AI's spies in your own spaceport cities; counter-spy where it hurts.

=== Power and climate

Gathering Storm adds power (coal, oil, uranium, renewables) and climate: emissions drive sea-level rise, disasters scale with intensity, and the World Congress votes on carbon taxes. Plan power districts before you need them — running out of power mid-war is a classic collapse. Clean energy is an endgame science flex that also keeps the congress happy.

=== Governors

Governors are your empire's staff: Magnus (settler and chopping economy), Pingala (science/culture in one city), Liang (builder safety), Reyna (gold), Moksha (faith), Victor (defense), Amani (city-state influence). Their promotions are long-term investments — move them rarely and promote deliberately.

== Pitfalls that end runs

- _Settling on faith._ Every city needs a plan: fresh water, growth, and a district cluster. Three cities that can grow beat six that cannot work.
- _Ignoring amenities._ The yield loss from negative amenities quietly kills a mid-game empire. Keep the luxuries coming, or build Entertainment.
- _No army, no allies._ The AI (especially under Real Strategy) reads weakness. A standing core army and one real alliance are cheap insurance.
- _Beelining without a plan._ One tech to a wonder is fine; ten techs to a fantasy is how you fall two eras behind. Chart the tree — Better Tech Tree makes this painless.
- _Wonder greed._ Rushing a wonder the AI is also building wastes a city's production. Check the wonder screen and pivot when beaten.
- _Forgetting era score._ A Dark Age is a setback, not a reset — but two in a row is a spiral. Plan golden-age triggers (firsts, great people, wonders, disasters survived).
- _Playing every victory at once._ Commit by the Industrial era; the Layer 2 AI certainly does.
- _No spies in the endgame._ Disrupting a rival's Mars project or spaceport is the difference between winning and watching the AI win.

== Victory roadmaps

- _Science_ — the reliability pick. Campuses in every city, universities as soon as they exist, and the spaceport in your Pingala city with Production Queue stacked on its projects. Research alliances compound your lead. On Layer 2, Real Tech Tree makes the path to rocketry more historical — chart it early with Better Tech Tree. *Persona: The Cradle of Science.*
- _Culture_ — the accumulation pick. Theatre squares, wonders, artifacts, then rock bands in the late game; monopolies multiply tourism if that mode is on. Theming bonuses are the difference between good and great, and Great Works Viewer plans them. *Persona: The Architect of Wonders.*
- _Domination_ — the momentum pick. One early war to cripple a neighbor, then snowball — but Real Strategy's AI punishes a stalled war, so every campaign needs corps, oil, and a plan. *Persona: The Iron Chancellor.*
- _Diplomatic_ — the currency pick. Win World Congress votes by banking diplomatic favour: build Statue of Liberty, win aid competitions, keep everyone friendly. It is the victory that lives and dies on the Global Relations Panel. *Persona: The Merchant Republic.*
- _Religious_ — the patience pick. Found early, spread hard, defend apostles; theological combat is real combat, and Inquisition keeps your own cities loyal. *Persona: The Faithful Pilgrim.*
- _Score_ — the fallback pick. If nobody wins before the clock runs out (Standard speed: turn 500), the best empire wins on score — so play a clean game and let the chronicle outlast everyone. *Persona: The Chronicler of Eras.*

#info[
  One game, one persona. Chapter 4 turns these roadmaps into characters — with the exact creation choices each one needs.
]
