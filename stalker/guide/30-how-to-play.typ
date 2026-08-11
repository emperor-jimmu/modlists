// 30-how-to-play.typ — G.A.M.M.A Protocol: detailed game guide.
#import "theme.typ": *

= How to Play

_A field manual for surviving the Zone under GAMMA: from the New Game screen to exoskeleton endgame. GAMMA rebalances frequently, so this chapter teaches systems, routines and habits — not exact numbers. Current values live in the Mod Configuration Menu (MCM)._

#info[
  What kind of game is this? An open-world survival sandbox with no hand-holding. You choose your faction, your goals and your pace; the Zone kills the careless. Expect to die, learn, and come back smarter. This chapter is long on purpose — read the sections you need, when you need them.
]

== Starting out — the New Game screen

=== Choose a game mode

- *Story Mode* — the recommended way to learn: three sequential storylines (_Living Legend_ → _Mortal Sin_ → _Operation Afterglow_) with faction-specific missions woven in. New players should start here.
- *Sandbox Mode* — free play: your own goals, no main quest. Good for a second character or pure exploration.
- *Warfare Mode* — faction conquest sandbox. Under GAMMA this is generally not recommended (see the Modlist chapter).

=== Choose a faction

Your faction decides your starting location, gear, allies and enemies. Only some factions can play the main story:

#table(
  columns: (1.1fr, 2.2fr, 1.2fr, 1.8fr),
  inset: 6pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { panel2 },
  align: (left, left, left, left),
  [*Faction*], [*Who they are*], [*Story mode*], [*GAMMA note*],
  [Loner], [Independent stalkers of the Cordon and Garbage], [Yes], [The classic first-run start; neutral enough to trade anywhere],
  [Clear Sky], [Swamp-based scholar-warriors studying the Zone], [Yes], [Harder swamp start; good for players who know Anomaly],
  [Ecologist], [Scientists in advanced anomaly-resistant armor], [Yes], [Strong gear, weaker combat focus],
  [Mercenary], [Guns for hire in the south], [Yes], [Hostile to several factions; careful trading],
  [Freedom], [Anti-military, Zone-open ideology], [Yes], [Allies in the north-west; enemies in the east],
  [Duty], [Militaristic anti-mutant order], [Yes], [The mirror of Freedom: strong bases, many enemies],
  [Military], [Army regulars], [No], [Extremely hostile world; veteran pick],
  [Bandit], [Criminals of the Garbage], [No], [High risk, high reward looting],
  [Renegade], [Outcast rabble at the truck cemetery], [No], [Hardest early economy],
  [Sin], [Zone-worshipping cultists], [No], [Isolated; few friends anywhere],
  [Monolith], [Zealots of the Zone's center], [No], [Everyone shoots you on sight; expert territory],
  [UNISG], [International task force], [Own storyline (_Hollow Boundaries_)], [Unique campaign with a different perspective],
)

=== Choose your difficulty and loadout

- *Combat difficulty* — Medium or Hard is a good first run. Easy keeps fights forgiving while you learn survival.
- *Progression preset* — set in the GAMMA launcher: *Tourist* for your first character.
- *Starting loadout* — pick something light; you will replace everything within a few hours anyway. A pistol or shotgun, a knife, a sleeping bag and basic meds are a fine kit.

== Interface and controls

The HUD shows health, stamina, weight, ammo and your quick-use slots. The *PDA* (map + journal) is your best friend: it holds mission markers, stash notes and zone intel.

#table(
  columns: (1fr, 2.2fr),
  inset: 6pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { panel2 },
  align: (left, left),
  [*Action*], [*Default key(s)*],
  [Move], [#key("W") #key("A") #key("S") #key("D")],
  [Look], [Mouse],
  [Fire / Aim], [#key("LMB") / #key("RMB")],
  [Reload], [#key("R")],
  [Interact / Use], [#key("F")],
  [Jump], [#key("SPACE")],
  [Crouch], [#key("C")],
  [Sprint (hold)], [#key("SHIFT")],
  [Weapon slots], [#key("1") – #key("5")],
  [Inventory], [#key("I") or #key("TAB")],
  [Map / PDA], [#key("M")],
  [Quicksave], [#key("F5")],
)

#info[
  Defaults differ slightly between Anomaly and GAMMA builds and are fully remappable in *Options → Controls*. Gadget toggles (flashlight, night vision, binoculars, detector) are bound there too, and GAMMA adds extra bindings visible in *MCM*. Laptops often need #key("FN") + #key("F5") for quicksave.
]

=== The Mod Configuration Menu (MCM)

Open the pause menu → *Mod Configuration Menu*. This is GAMMA's control panel: every included mod exposes its options here — economy sliders, loot rates, repair settings, audio, crosshair, and dozens more. When a guide or the Discord tells you to "change X", it is almost always in MCM.

== A day in the Zone — the core loop

GAMMA is best played as a routine, not a series of sprints. A healthy day looks like this:

1. *Wake up* at your base or camp; eat and drink; check your condition.
2. *Plan the route*: open the PDA, pick one or two tasks that lie in the same direction, check the weather (rain hurts visibility; night raises mutant activity).
3. *Gear check*: enough meds and bandages, ammo for the caliber you carry, food and water, a detector if you plan to hunt artifacts — and *gun oil* so your weapon does not jam mid-fight.
4. *Travel carefully*: bolt suspicious ground, stay off roads when possible, listen more than you look.
5. *Complete the objective*: loot what is worth carrying, strip parts from ruined weapons, mark useful stashes on the PDA.
6. *Return before dusk* or before an emission — being caught outside in either is how stashes are made.
7. *At base*: sell junk, repair and clean your gear, craft supplies, rest. Accept new tasks.

#tip[
  Every hour you survive teaches you one more rule of the Zone. The loop above is the frame; the rules are the content. When in doubt, do the boring thing: it is usually the alive thing.
]

== Your first 90 minutes (Loner start)

A concrete walkthrough of the opening, using the classic Loner start in the Cordon:

1. *Spawn in* — you begin near the Rookie Village with a basic kit. Open the PDA and read the tutorial hints; they are short and worth it.
2. *Talk to the trader* — accept a simple task or two (killing mutants near the village, fetching an item). Do not wander north yet.
3. *Scavenge the immediate area* — loot bodies from recent fights, search stashes and containers. Most early weapons drop broken; that is fine, parts have value.
4. *Do your first tasks* — a few boars or dogs with a shotgun or pistol is a fair fight. Collect mutant parts; they sell and craft.
5. *Return and sell* — junk, spare parts and duplicate meds become money. Buy ammo, meds and a better detector.
6. *Learn to clean your gun* — apply gun oil after every outing; a clean weapon is a reliable weapon.
7. *Rest* — sleep, save (#key("F5")), and take stock. You are now a functioning stalker. From here, push into the Garbage when you feel ready.

#warn[
  The single most common first-hour death is wandering into the military checkpoint zone at the north of the Cordon. Watch the PDA map for red hostility, listen for gunfire ahead, and turn around if the firefight sounds too big for you.
]

== Health and survival — deep dive

=== The statuses that kill you

#table(
  columns: (1.1fr, 1.6fr, 1.6fr),
  inset: 6pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { panel2 },
  align: (left, left, left),
  [*Status*], [*Caused by*], [*Treatment*],
  [Bleeding], [Bullets, mutants, anomalies], [Bandages (multiple for heavy bleeding); medkits after the bleeding stops],
  [Fracture], [Falls, melee, explosives], [Splint; movement and aim recover as it heals],
  [Radiation], [Artifacts, contaminated ground, some anomalies], [Anti-rad drugs; leave the source; lead containers for artifacts],
  [Chemical burn], [Acid anomalies and weapons], [Anti-chemical treatment; wash and treat the affected limb],
  [Psy damage], [Psi anomalies, controllers], [Psi-blockers; break line of sight to the source],
  [Hunger / thirst], [Time passing], [Food and water; carry more than you think you need],
  [Fatigue], [Time passing, sprinting, carrying weight], [Sleep — a sleeping bag anywhere safe, or a bed at a base],
)

=== The rules of treating yourself

- *Treat in cover.* Bandaging takes time and leaves you vulnerable. Get behind a wall before you patch up.
- *Bleeding first, health second.* Medkits restore HP but do not stop bleeding; bandages stop bleeding but do not restore much HP. Use both, in that order.
- *Read the item card.* GAMMA's medical items are specific: the right tool for the right status, and often a use-time to respect.
- *Armor is your health bar.* A suit in good condition absorbs hits that would otherwise shred your limbs. A wrecked suit makes every fight a gamble.

== Radiation and artifacts

=== Radiation basics

Radiation builds up from contaminated ground, artifact handling and certain anomalies. Watch the Geiger counter:

- *Low exposure* — treat with anti-rad drugs; keep moving.
- *High exposure* — find shelter, use stronger treatment, and *remove the source* (drop the artifact into a container, leave the field).
- *Carry containers.* Lead-lined artifact containers are the correct way to haul glowing loot — an artifact loose in your bag irradiates you continuously.

=== The artifact hunt — a workflow

1. *Bring a detector* — the basic *Echo*, the better *Bear*, the best *Veles*. Better detectors see further and mark fainter fields.
2. *Read the field* — artifacts spawn inside anomaly fields. Observe the pattern of the anomalies first; find the safe lanes.
3. *Probe with bolts* — throw a bolt to test the path before you commit to it.
4. *Detect and triangulate* — sweep with the detector; the signal strengthens as you approach. The artifact is usually near the field's center.
5. *Grab it quickly* — snatch the artifact and retreat along your probed path. Do not linger in the field.
6. *Containerize or sell* — artifacts radiate; keep them in containers. Decide: sell for money, keep for crafting, or equip for stats.

#tip[
  After every *emission*, anomaly fields reshuffle and new artifacts can spawn. An experienced stalker's best payday is a well-known field right after an emission.
]

== Anomalies and the Zone

=== Anomaly encyclopedia

#table(
  columns: (1fr, 1.7fr, 1.9fr),
  inset: 6pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { panel2 },
  align: (left, left, left),
  [*Class*], [*Examples*], [*How to survive it*],
  [Gravitational], [Whirligigs, springboards], [They crush and fling; watch for shimmering air and dead grass rings; walk around, never through],
  [Thermal], [Fireballs, burner fields], [Heat haze and scorched ground; a burst of fire damage — keep distance and do not stand still],
  [Electrical], [Electro arcs, spark fields], [Blue crackling; discharges on approach — time your crossing between arcs or go around],
  [Chemical], [Acid pools, corrosive clouds], [Green pools and fumes; chemical burn damage — use the gas-mask/SEVA suits for protection],
  [Psi], [Psi fields, some structures], [Disorientation, psy damage; psi-blockers help; break line of sight to the emitter],
)

The Zone's first rule: *bolt first, walk second*. Throw a bolt (a keybound gadget) to probe a suspicious patch before walking through it. Every field has a pattern — learn the safe lanes and the artifact spawn points inside.

=== Emissions — the protocol

#warn[
  An *emission* is the Zone's periodic purge: a warning flashes on the PDA, the sky turns red, and lethal radiation sweeps the map for a couple of minutes. The moment you see the warning, get *indoors* — a building or bunker — and wait it out. Do not try to outrun it in the open. After an emission the world resets: anomaly fields reshuffle and new artifacts can spawn.
]

== Mutants

The Zone's wildlife is uniformly hostile. Learn their behavior and match your weapons to the threat:

#table(
  columns: (1.3fr, 2.2fr, 1.9fr),
  inset: 6pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { panel2 },
  align: (left, left, left),
  [*Mutant*], [*Behavior*], [*Tactics*],
  [Flesh], [Pig-like; flees when hurt], [Any weapon; a shotgun settles them cheaply],
  [Boar], [Charges in a straight line], [Sidestep the charge, then fire into the flank],
  [Blind dogs / pseudodogs], [Fast packs], [Keep moving, headshots; never stand still],
  [Snorks], [Leaping melee attackers], [Distance and sustained fire; they close fast],
  [Bloodsucker], [Cloaks, strikes melee], [Listen for the growl, keep moving, burst fire — do not fight it with a pistol],
  [Controller], [Psi stare at range], [Break line of sight and retreat, or finish it fast with heavy rounds],
  [Burer], [Telekinesis; throws objects, yanks weapons], [Surprise and burst damage; recover your weapon after the yank],
  [Chimera], [Fast, armoured, lethal], [Heavy calibers, explosives, an escape route — or avoid it entirely],
  [Pseudogiant], [Tank that stomps], [Explosives and sustained heavy fire; run if outgunned],
)

#info[
  GAMMA expands the bestiary and lets you *loot mutant parts* — hides, meat and organs used in crafting. Skin what you kill; the parts sell and feed your crafting loop.
]

== Weapons, ammo and ballistics

=== Caliber guide

#table(
  columns: (1.2fr, 1.7fr, 1.9fr),
  inset: 6pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { panel2 },
  align: (left, left, left),
  [*Caliber*], [*Typical guns*], [*Role*],
  [9x18 PM], [PM, PP-91], [Cheap starter pistols; weak against armor],
  [9x19], [Western pistols and SMGs], [Better sidearms and early SMGs],
  [.45 ACP], [Heavy pistols], [Hard-hitting sidearms; rare ammo],
  [9x39], [AS Val, VSS, SR-3], [Subsonic and quiet; AP options; special forces gear],
  [5.45x39], [AK-74 family], [The Zone's workhorse — common, light, plentiful ammo],
  [5.56x45], [AR family], [Accurate, modular; ammo less common in the south],
  [7.62x39], [AKM], [Harder-hitting than 5.45; heavier ammo],
  [7.62x54R], [SVD, PKM], [Sniping and suppression; one-shot power on soft targets],
  [12 gauge], [Shotguns], [King of close range and mutant control],
  [12.7x55], [VKS], [Endgame anti-armor sniper; very rare],
)

=== Ammo types

- *FMJ (ball)* — the standard round; fine against unarmoured targets.
- *AP (armor-piercing)* — defeats armor; costs more, does less tissue damage. Carry it for armored enemies.
- *Expanding / hollow point* — more damage to flesh, poor against armor. Perfect for mutants.
- *Tracer / subsonic / specialty* — situational; GAMMA adds more types, so read the item card.

#tip[
  Match the round to the target: AP for armored stalkers and Monolith, expanding for mutants and unarmored bandits. Carrying two ammo types for your main gun is standard practice.
]

=== Ballistics reality

- *Headshots end fights.* Torso shots grind through armor; leg shots cripple movement.
- *Gun condition is everything.* A dirty, degraded gun jams, drifts and spreads. Clean it with gun oil and cleaning kits; repair parts before they break.
- *Suppressors work.* Quiet shots keep engagements one-sided; noise draws the Zone to you.
- *Zeroing and scopes matter at range.* Know your optic, range your target.

== Armor and protection

#table(
  columns: (1.4fr, 2.1fr, 1.9fr),
  inset: 6pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { panel2 },
  align: (left, left, left),
  [*Armor class*], [*Examples*], [*Strengths / weaknesses*],
  [Light], [Leather jacket, windbreaker], [Cheap, light, near-useless against bullets; fine against dogs],
  [Light combined], [CS-1/2, stalker suits], [Modest bullet and anomaly protection; the early-mid workhorse],
  [Heavy / combined], [Bulat, military and merc armor], [Serious ballistic protection; heavier, slower, costlier to repair],
  [Exoskeleton], [Exoskeletons], [Top ballistic and mutant protection; heavy, no sprint until upgraded],
  [SEVA / ecologist], [SEVA suits], [Best anomaly, chemical and radiation protection; weaker against bullets],
)

- *Maintain your suit* — repair with sewing kits, textiles and armor parts; a suit in poor condition protects like paper.
- *Upgrade via technicians* — suits take upgrades (pockets, protection, movement) using parts; the technician's tool tier gates what is available.
- *Match suit to mission* — artifact hunting favors anomaly protection; fighting favors ballistic protection; a good stalker owns both.

== Combat tactics

- *Cover, burst fire, reposition.* Standing still and trading shots is how stalkers become stashes.
- *Use your gadgets* — binoculars to scout, night vision to own the dark, the detector to avoid surprises.
- *Grenades are gold* — scarce and loud; they clear rooms and mutant packs. Save them for the right moment.
- *Stealth is a weapon* — silencers, slow movement and angles keep fights one-sided.
- *Know when to run* — every rule of the Zone has an exception called "alive".

== Scavenging and inventory

- *Loot everything useful* — bodies carry weapons, parts, ammo, meds and junk. Weapons usually drop in pieces and poor condition; that is fine, parts are the real prize.
- *Weight discipline* — overburdening drains stamina and speed. Decide what is worth carrying; stash the rest.
- *Backpacks* — larger carrying bags exist as equipment; upgrading your carry capacity is a real early-game power spike.
- *Sort as you loot* — keep a mental "sell pile" (junk, spare parts, duplicates) and a "keep pile" (ammo for your calibers, meds, tools). It saves trips.

== Repair and crafting — the heart of GAMMA

Everything you wear and shoot degrades, and *you* are the repair shop.

=== Weapons

- *Parts* — every weapon is made of parts (receiver, barrel, magazine, and so on). Looted weapons yield spare parts.
- *Repair kits* — typed kits (Type A/B/C/D, covering weapon classes) repair the matching part of a matching weapon. The type you need is shown on the item.
- *Cleaning* — *gun oil* and cleaning kits keep condition up and stop parts from degrading; a clean gun jams far less.
- *Assembly* — with enough parts and kits you can build a weapon from scratch. This is how you graduate from a rusty pistol to a rifle.

=== Armor

Suits work the same way: repaired with *sewing kits, textiles* and armor parts; maintained so ballistic and anomaly protection stays high.

=== Tools and technicians

*Tool kits* — *Basic, Advanced, Expert* — are the key progression items. They are found in stashes, increasingly in the dangerous north, and *delivered to technicians*. Each tier unlocks better repair kits and more crafting recipes. Befriending technicians (do their tasks) is the fastest way to grow.

=== Crafting

At base crafting stations you can make meds, food, ammunition (reload from casings), attachments and gear — recipes gated by the tool tiers you have unlocked. Scavenged parts and mutant materials feed into all of it.

#warn[
  Do not hoard a ruined weapon "for later" — unless you have the parts and kits, it is dead weight. Dismantle it into useful parts instead.
]

== Economy and missions

- *Traders* sell ammunition, consumables, food, junk and services — but no weapons or armor by default. They also *buy* your looted junk, parts and artifacts.
- *Money flows out* (ammo, meds, repairs, fast travel) and comes in from *tasks* — the honest economy loop is: loot → sell → buy consumables → repeat.
- *Task types* — hunt mutants, deliver items, retrieve artifacts, recon areas, escort or rescue. Pay scales with the progression preset; risk should scale with pay.
- *Reputation* — completing tasks raises standing with a faction, unlocking better prices, services and gear availability; shooting friendlies does the opposite. Keep your reputation intact where you shop.
- *Guides* — NPCs at bases who fast-travel you across the Zone for money. Worth every ruble when crossing hostile territory.

== Stashes and safehouses

- *Stashes* are hidden loot caches — some marked on the PDA by task-givers, some found by chance or rumour. They hold tools, parts, documents and meds; they are the best early-game progression.
- *Personal stashes* — boxes at friendly bases store your surplus. Use them: the Zone is long, and you will come back for that spare suit.
- *Safehouses* — some buildings are safe to sleep and save in. Learn which ones; a safe bed beats a sleeping bag in the bushes.

== A-Life and factions — how the world lives

- *A-Life* simulates the Zone around you: squads patrol, hunt, fight and die — on and off screen. Gunfire in the distance is a real fight with real loot on the ground afterward.
- *Faction wars* — Duty and Freedom skirmish, bandits raid, military sweeps. Neutral ground shifts; check the PDA's faction map before crossing "safe" roads.
- *Disguises* — wearing an enemy faction's armor can fool distant patrols. It does not survive close inspection or a scan — keep your distance and your story straight.
- *Your reputation is social capital.* In GAMMA, money buys consumables, but standing buys trust, prices and access. Spend both wisely.

== Navigation and travel

- The *PDA map* is your compass: mission markers, known stashes, faction territory. Set waypoints and use the compass.
- The Zone is one continuous open world — no loading screens between regions. Travel is on foot or via guides.
- *North is harder.* The Cordon and Garbage are gentle; Zaton, Jupiter and the north (Pripyat, the CNPP) demand better gear, meds and radiation protection. Do not wander north in a leather jacket.

== The progression arc

- *The hobo phase (first hours)* — pistol or shotgun, light suit, barely enough meds. Scavenge, do tasks, clean your gun, learn the Zone's rules.
- *The survivor phase* — assault rifles, decent armor, Advanced tools, your own crafting loop. You start choosing engagements instead of fleeing them.
- *The veteran phase* — exoskeleton or SEVA suit, artifact loadout, high-caliber rifles, northward expeditions. The Zone's best loot — and hardest threats — is now yours to take.

== How to die less — a field checklist

#table(
  columns: (1.7fr, 1.9fr),
  inset: 6pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { panel2 },
  align: (left, left),
  [*Cause of death*], [*Prevention*],
  [Emission in the open], [Drop everything, run to the nearest building the moment the warning fires],
  [Wandering into hostile territory], [Check the PDA faction map; follow the gunfire with your ears before your feet],
  [Jammed gun in a fight], [Clean and repair your weapon at the end of every outing],
  [Bleeding out without bandages], [Carry more bandages than feels sensible; treat in cover],
  [Artifact radiation death], [Containers, containers, containers],
  [Night ambushes], [Sleep through the worst hours, or fight with night vision on your side],
  [Over-encumbrance], [Stash the surplus; a fast stalker is a live stalker],
  [Rushing the north], [Progress by gear, not by curiosity],
)

== Tips for new stalkers

1. *Start on Tourist.* You are learning systems, not proving anything.
2. *Quicksave often* (#key("F5")) — before fights, anomalies and long walks. Death is cheap; losing progress is not.
3. *Do not sprint everywhere* — stamina is life, and noise attracts trouble.
4. *Keep your gun clean.* A jammed rifle at the wrong moment is a corpse.
5. *Learn anomaly patterns before hunting artifacts* — bolts are cheaper than medkits.
6. *Run from bloodsuckers early.* There is no shame in living to loot another day.
7. *Use MCM.* Every frustration (economy, loot, audio, crosshair) has a lever there.
8. *Stash, do not carry everything.* Your base is your bank.
9. *Do tasks for technicians first* — tools are the real level-ups.
10. *Respect emissions.* The warning is not a suggestion.

== Common mistakes

- *Buying gear from traders* — they do not sell weapons/armor by default; spend on ammo and meds instead.
- *Selling all your parts* — repair needs parts; keep a working stock.
- *Heading north too early* — radiation and mutants will eat a hobo loadout.
- *Ignoring hunger/sleep/radiation* — the HUD lies; the Geiger counter does not.
- *Hand-editing the mod list* — use MCM, the launcher, or vetted addons (next chapter).
