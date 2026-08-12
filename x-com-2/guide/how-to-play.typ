// The 3rd Coming - How to Play chapter
// Grounded on the XCOM Wiki (xcom.fandom.com): War of the Chosen expansion page,
// The Chosen, The Lost, and the XCOM 2 classes articles, fetched 2026-08-12.
// Style matches installation.typ: === subsections, local callout, bold terms.

// theme colors + callout (include scope does not share #let bindings from template.typ)
#let cyan = rgb("#00e5ff")
#let red = rgb("#ff2d55")
#let callout(title, body, color: cyan) = block(
  fill: color.transparentize(92%),
  inset: 10pt,
  radius: 6pt,
  stroke: 0.6pt + color,
)[
  #text(weight: "bold", fill: color, title) #body
]

=== The Two Layers

XCOM 2: War of the Chosen plays on two alternating layers:

+ *Strategy layer* - you command the Avenger (a flying alien ship turned mobile base) on the global map, the *geoscape*. You build rooms, research alien tech, manage resources, scan sites, run covert actions, and decide which missions to accept. Time here moves in days; every decision shapes the tactical fights ahead.
+ *Tactical layer* - you command a squad of soldiers on the ground, turn by turn, in missions unlocked from the geoscape. Tactical victories earn soldiers, resources, and research, which feed back into the strategy layer.

The campaign has a hard global clock: the *Avatar Project* slowly completes. If its meter fills, the game is lost. You buy time by raiding alien facilities and completing story missions - and you should spend that time growing your squad and technology before the final assault.

=== The Strategy Layer (Avenger & Geoscape)

*The Avenger.* Build and staff rooms by assigning *engineers* and *scientists*:

+ *Guerrilla Tactics School (GTS)* - train rookies into classes and increase squad size. Build this early.
+ *Advanced Warfare Center / Infirmary* - reduces wound recovery time (WOTC).
+ *Proving Ground* - build experimental items, upgrades, and armor.
+ *Resistance Ring* - unlock and run *Covert Actions* (WOTC).
+ *Training Center* - spend *Ability Points* on extra soldier abilities (WOTC).
+ *Psi Lab* - train *Psi Operatives*, unlocked later in the campaign.
+ *Shadow Chamber* - predicts enemy forces on missions and unlocks the final story missions.
+ *Workshop, Laboratory, Power Relay, Comms* - more engineering, research, power, and contact slots.

*Resources.* Four main currencies: *Supplies* (monthly income from resistance contacts; funds most purchases), *Intel* (spent on scanning, revealing the map, and black-market deals), *Alloys* and *Elerium Cores* (advanced armor, weapons, and upgrades). WOTC adds *Ability Points* for the Training Center.

*Research.* Spend scientists on autopsies and projects. *Breakthroughs and Inspirations* (WOTC) offer one-time research bonuses that nudge your progression. Research weapons and armor tiers: conventional, magnetic, plasma.

*Dark Events.* Each month ADVENT plans a *Dark Event* - a nasty global effect. A corresponding guerrilla-op mission lets you counter one; the rest fire anyway. *Chosen Dark Events* are handled by mods in this guide's Enemies category.

*Contacts & income.* Scan the geoscape to contact new resistance regions (more monthly supplies) and reveal sites. Scanning takes time - and the Avatar clock never stops.

#callout("Tip:", [
  The strategy layer is a juggling act, not a race. Accept missions that earn *Supplies* and *Intel* consistently, keep research running, and never let the Avatar Project hit zero without a facility raid queued up.
])

=== The Tactical Layer (Missions)

Every soldier starts each turn with *two action points*. Movement within the "blue" half-zone leaves one action to shoot or use an ability; dashing into the "yellow" zone uses both. *Concealment* is key early - a concealed squad can scout, position, and ambush before the enemy reacts. Most hostile actions (shooting, hacking, grenades) *reveal* the squad.

*Cover* decides who lives. Low (half) cover grants +20 Defense; high (full) cover grants +40. Flanking an enemy cancels their cover bonus entirely - a flanked soldier is a dead soldier. Most destructible cover can be blown away with explosives (this is where Grenadiers earn their keep).

*Overwatch* lets a soldier fire a reaction shot at the first enemy that moves in their line of sight. Overwatch traps - ending the turn in cover with everyone on Overwatch - punish enemies that break concealment or dash. *Gotcha Again* and *Less Overwatch Lock Ups* (UI & HUD / Core categories) make these setups reliable.

The basics of every firefight:

+ Never dash into unexplored fog - you reveal, they shoot first.
+ Fight for high ground: +20 Aim and line-of-sight advantages.
+ Kill or disable active pods before revealing more. One pod at a time is a fair fight; three pods is a funeral.
+ When a soldier drops to zero HP they *bleed out* - stabilize them (medikits, a Specialist's Medical Protocol) or they die.
+ Timed missions (most guerrilla ops) force aggressive play; untimed ones (retaliation, some story missions) reward patience.

=== Soldiers & Classes

Soldiers start as *Rookies* and gain ranks through missions: Squaddie, Corporal, Sergeant, Lieutenant, Captain, Major, Colonel - and *Brigadier* in WOTC, reachable via the Training Center with Ability Points. Each promotion grants new abilities; class choice is locked at Squaddie.

*The four base classes:*

+ *Ranger* - shotgun and sword. Scout and close-range killer. Signature abilities: *Phantom* (stays concealed after the squad is revealed), *Run and Gun* (acts after dashing), *Slash*.
+ *Grenadier* - cannon and grenade launcher. Destroys cover and shreds armor. Signature abilities: *Shredder*, *Suppression* (pins enemies), *Salvo* (fires a heavy weapon without spending an action).
+ *Sharpshooter* - sniper rifle and pistol. *Squadsight* lets them shoot at what allies see; *Death From Above* refunds an action on high-ground kills; a *Gunslinger* build dominates mid-range with pistols.
+ *Specialist* - assault rifle and GREMLIN drone. Hacker and medic: *Medical Protocol* (remote heal/stabilize), *Combat Protocol* (armor-bypassing drone damage), *Haywire Protocol* (hack and take control of enemy robots).

*WOTC hero classes* (one per faction, powerful and unique):

+ *Reaper* - stealth infiltrator. Scouting, claymore traps, and guaranteed-damage shots that don't reveal. Their *Banish* ability (modded back in by the Cinematic Rapid Fire mod) shreds single targets.
+ *Skirmisher* - ex-ADVENT rebel. Extreme mobility, multi-action turns, and a grappling hook. *Justice* yanks enemies out of cover.
+ *Templar* - psionic melee warrior. Generates *Focus* in combat, parries incoming attacks, and spends focus on devastating psi-blade strikes.

*Psi Operatives* (Psi Lab, mid-to-late campaign) learn psionic powers instead of class abilities - no aim checks, just raw psi. *SPARKs* (Shen's Last Gift DLC) are heavy combat robots: no fatigue, no bonds, but expensive to build and repair.

=== Ability Points, Bonds & Fatigue (WOTC)

WOTC's soldier progression layer:

+ *Ability Points (AP)* - earned from promotions, bonds, and some covert actions. Spent at the *Training Center* to buy abilities from other classes or promote past Colonel to Brigadier.
+ *Bonds* - pairs of soldiers who fight together build a bond over time, unlocking passive buffs and bond abilities (each can assist the other). Bonded pairs are worth keeping on the same squad.
+ *Fatigue* - soldiers become *Tired* after missions and need rest; deploying a tired soldier risks *Shaken* (a negative trait). Rotate your roster - a bench of rested soldiers wins campaigns.

#callout("Note:", [
  The mods in the Classes & Skills category (Reliable Ever Vigilant, Ability Interaction Fixes, More Psionic Units, and others) repair and refine these systems - check each card's Notes for exactly what it touches.
])

=== The Chosen

The Chosen are WOTC's three boss enemies - the *Assassin*, the *Hunter*, and the *Warlock* - each with unique strengths and weaknesses randomized per campaign. They are the expansion's main antagonists and hunt your soldiers across missions and regions.

+ *The Assassin* - stealth and close combat. Enters concealment, blinds your soldiers, strikes with her sword, then escapes back into hiding. Hit-and-run terror.
+ *The Hunter* - long-range specialist. Keeps his distance, fires a two-turn *Tracking Shot*, summons ADVENT reinforcements, and flanks with his grappling hook.
+ *The Warlock* - psionic master. Chain-dazes, mind-controls, teleports allies, and summons *Spectral Zombies* and a *Spectral Army* when threatened.

*How they escalate:* killing a Chosen on a mission only wounds them - they resurrect at their Citadel and return. Each Chosen gains *knowledge* of XCOM (from appearances and interrogating captured soldiers) and uses it for *sabotage*: cutting your income, injuring staff, destroying inventory, delaying research. At maximum knowledge they *assault the Avenger*; losing that defense ends the game.

*How to end them for good:* each Chosen is permanently killed by raiding their *Citadel* (Stronghold Assault), unlocked by completing a 3-part series of covert actions for their rival faction - part 1 needs a Sergeant, part 2 a Lieutenant, part 3 a Major. The assault is two-stage: fight to the Ascension Chamber, then destroy the *Sarcophagus* that fuels their resurrection (the Chosen revives mid-fight until the Sarcophagus falls). Victory grants their unique weapons (e.g. the Assassin's *Arashi* and *Katana*, the Hunter's *Darklance* and *Darkclaw*, the Warlock's *Disruptor Rifle*).

#callout("Tip:", [
  Check the Chosen's weaknesses before engaging - they always have an *Adversary* weakness against one faction (Reaper, Skirmisher, or Templar). Bring that faction's hero class and you deal bonus damage all mission.
])

=== The Lost & New Threats

WOTC adds three new threat types:

+ *The Lost* - mutated husks of the first invasion's victims, in swarms. Weak individually; dangerous in numbers. Headshot kills don't cost an action, so one soldier can clear many; explosions attract more swarms, fire hurts them badly, and they're immune to mind-affecting psi.
+ *The Spectre* - a stealthy alien that creates *dark copies* of your own soldiers from their shadows. Kill the Spectre or the copy; the copied soldier is held until then.
+ *ADVENT Purifier* and *ADVENT Priest* - the Purifier lobs incendiary grenades (see the Purifier Grenades Fix mod), the Priest is psionically charged with stasis and mind games.

*SITREPs* (WOTC) are per-mission modifiers that change the fight - e.g. *The Lost World* (Lost on every mission), *Between the Eyes* (Lost are always one-shot), *High Explosives* (more explosives), or *Marksman* (more Sharpshooters). Check the pre-mission briefing and adapt your loadout.

=== First-Campaign Tips

+ Build the *GTS* first and prioritize the squad-size upgrade - five and six soldiers beat four, every time.
+ Run a balanced squad: a Grenadier for cover destruction, a Specialist for hacking and healing, a Ranger for scouting, a Sharpshooter for long-range support.
+ Use *concealment* aggressively: scout the pod, set up the overwatch trap, then break concealment with a grenade.
+ Don't neglect *Research* - armor and weapon tiers matter more than any single ability.
+ Keep *Intel* in reserve for emergencies (revealing the Blacksite or a facility raid) and spend the rest on contacts and scanning.
+ WOTC's *covert actions* and *resistance orders* are a second economy - run them every cycle, they cost nothing but time.
+ Losing soldiers is part of the game. Recruit more rookies than you think you need, and level a bench before you need it.
