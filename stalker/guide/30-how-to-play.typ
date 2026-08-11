// 30-how-to-play.typ — G.A.M.M.A Protocol: detailed game guide.
#import "theme.typ": *

= How to Play

_A field manual for surviving the Zone under GAMMA: from the New Game screen to exoskeleton endgame. GAMMA rebalances frequently, so this chapter teaches systems and habits, not exact numbers — current values live in the Mod Configuration Menu._

#info[
  What kind of game is this? An open-world survival sandbox with no hand-holding. You choose your faction, your goals and your pace; the Zone kills the careless. Expect to die, learn, and come back smarter.
]

== 1. Starting out — the New Game screen

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
  [Ecologist], [Scientists in advanced armor], [Yes], [Strong gear, weaker combat focus],
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

== 2. Interface and controls

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

== 3. Survival: health, hunger, sleep

=== Health and limbs

Damage is tracked per limb — head, torso, arms, legs — with layered effects:

- *Bleeding* — the big killer. Wounds bleed until bandaged; stack up bandages and carry more than you think you need.
- *Fractures* — broken limbs need *splints*; movement and aim suffer until treated.
- *Low HP / pain* — drugs and medkits recover health, but treatments take time: apply them somewhere you are not being shot at.
- *Armor* — your suit soaks damage but degrades; a suit in poor condition protects like paper.

=== Hunger, thirst and sleep

- Eat and drink regularly; starvation and dehydration drain health and stamina.
- Sleep restores energy and health. Use a *sleeping bag* anywhere safe, or a bed at a friendly base. Find somewhere sheltered — sleeping in the open is how stalkers get eaten.

=== Radiation

Radiation builds up from contaminated ground, artifacts and certain anomalies. Watch the Geiger counter; treat with anti-rad drugs or (in a pinch) alcohol. High exposure saps health fast. Lead-lined artifact containers are the correct way to carry glowing loot.

== 4. Anomalies and the Zone

Anomalies are the Zone's physics-defying hazards — invisible fields that kill or maim:

- *Gravitational* (whirligigs, springboards) — crush and fling.
- *Thermal* — invisible heat fields that burn.
- *Electrical* — arcing discharges.
- *Chemical* — acid and corrosive fields.
- *Psi* — mental attacks that disorient and damage.

*Bolt first, walk second.* Throw a bolt (a keybound gadget) to probe a suspicious patch before walking through it. Every anomaly field has a pattern — learn the safe lanes and the artifact spawn points inside.

#warn[
  An *emission* is the Zone's periodic purge: a warning flashes on the PDA, the sky turns red, and lethal radiation sweeps the map for a couple of minutes. The moment you see the warning, get *indoors* — a building or bunker — and wait it out. After an emission the world resets: anomaly fields reshuffle and new artifacts can spawn.
]

=== Artifacts and detectors

Artifacts form inside anomaly fields and are found with *detectors* (the basic *Echo*, better *Bear*, best *Veles*). They are the Zone's most valuable loot: sell them, craft with them, or equip them for stat bonuses — at the cost of radiation unless carried properly. In GAMMA, artifacts are also raw material for crafting, so early game you will often sell the weak ones and hoard the rest.

== 5. Mutants

The Zone's wildlife is uniformly hostile. Learn their behavior and match your weapons to the threat:

- *Flesh, boars, dogs* — early-game fodder; boars charge, dogs pack. A shotgun settles them cheaply.
- *Snorks* — leaping, fast melee; keep distance and keep firing.
- *Bloodsuckers* — cloak and strike; listen for the growl, keep moving, and let the magazine do the talking. Do not fight them with a pistol.
- *Controllers* — psi attackers; they rarely close in, but their stare cripples. Break line of sight and retreat, or finish them fast.
- *Burers* — telekinetic, throw objects and rip guns from your hands; surprise and burst damage win.
- *Chimeras and pseudogiants* — apex predators: fast, armoured, devastating. Bring heavy firepower, an escape route, or both.
- GAMMA expands the bestiary and lets you *loot mutant parts* — hides, meat and organs used in crafting. Skin what you kill.

== 6. Combat and ballistics

GAMMA's combat is lethal and realistic by design:

- *Caliber and ammo matter.* Against armour, use armour-piercing rounds; against unarmoured flesh, expanding rounds hurt more. Carry the right ammo for the job.
- *Hit location matters.* Headshots end fights; torso shots grind through armour; leg shots cripple movement.
- *Weapon condition matters.* A dirty, degraded gun jams, drifts and spreads. *Clean it* with gun oil and cleaning kits, and repair parts before they break.
- *Stealth works.* Silencers, moving slowly, and firing from cover keep engagements one-sided. Noise draws the Zone to you.
- *Grenades are gold.* Scarce and loud, they clear rooms and mutant packs — save them for the right moment.

#tip[
  In a firefight: cover, burst fire, reposition. Standing still and trading shots is how stalkers become stashes.
]

== 7. Scavenging and inventory

- *Loot everything useful* — bodies carry weapons, parts, ammo, meds and junk. Weapons usually drop in pieces and poor condition; that is fine, parts are the real prize.
- *Containers* — stashes (PDA-marked or found by chance) hold the best early loot: tools, parts, documents.
- *Weight discipline* — overburdening drains stamina and speed. Decide what is worth carrying; stash the rest in your base or personal stash boxes.
- *Backpacks* — larger carrying bags exist as equipment; upgrading your carry capacity is a real early-game power spike.

== 8. Repair and crafting — the heart of GAMMA

This is the system that defines the pack. Everything you wear and shoot will degrade, and *you* are the repair shop.

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
  Do not hoard a ruined weapon "for later" — unless you have the parts and kits, it is dead weight. Sell or dismantle it into useful parts instead.
]

== 9. Economy and missions

- *Traders* sell ammunition, consumables, food, junk and services — but no weapons or armor by default. They also *buy* your looted junk, parts and artifacts.
- *Money* mostly flows out (ammo, meds, repairs, fast travel) and comes in from *tasks*: hunt mutants, deliver items, retrieve artifacts, recon areas. Task payouts scale with your progression preset.
- *Reputation* — completing tasks raises standing with a faction, unlocking better prices, services and gear availability; shooting friendlies does the opposite. Keep your reputation intact where you shop.
- *Guides* — NPCs at bases who fast-travel you across the Zone for money. Worth every ruble when crossing hostile territory.

== 10. Navigation and travel

- The *PDA map* is your compass: mission markers, known stashes, and faction territory. Set your own waypoints and use the compass.
- The Zone is one continuous open world — no loading screens between regions. Travel is on foot (or fast travel via guides).
- *North is harder.* The Cordon and Garbage are gentle; Zaton, Jupiter and the north (Pripyat, the CNPP) demand better gear, meds and radiation protection. Do not wander north in a leather jacket.

== 11. The progression arc

- *The hobo phase (first hours)* — pistol or shotgun, light suit, barely enough meds. Scavenge, do tasks, clean your gun, learn the Zone's rules.
- *The survivor phase* — assault rifles, decent armor, Advanced tools, your own crafting loop. You start choosing engagements instead of fleeing them.
- *The veteran phase* — exoskeleton or SEVA suit, artifact loadout, high-caliber rifles, northward expeditions. The Zone's best loot (and hardest threats) is now yours to take.

== 12. Tips for new stalkers

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

== 13. Common mistakes

- *Buying gear from traders* — they do not sell weapons/armor by default; spend on ammo and meds instead.
- *Selling all your parts* — repair needs parts; keep a working stock.
- *Heading north too early* — radiation and mutants will eat a hobo loadout.
- *Ignoring hunger/sleep/radiation* — the HUD lies; the Geiger counter does not.
- *Hand-editing the mod list* — use MCM, the launcher, or vetted addons (next chapter).
