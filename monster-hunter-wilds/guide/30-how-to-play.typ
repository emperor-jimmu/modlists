// 30-how-to-play.typ — Forlorn Oath: how to play the modded game.
#import "theme.typ": *

= How to Play

_This chapter assumes you know the shape of Monster Hunter but want to play Wilds *well* with the Oath installed — what to set up before a hunt, how to read the game with the mods' new information, and the strategy behind each of the systems that actually matter._

== The Oath's reading of the game

The mods are not decoration — they change how you make decisions:

- _Weakness icons_ tell you what to bring before you leave camp. Element choice stops being a guess.
- _The Overlay_ tells you how the fight is actually going: what share of your damage lands on real hitzones, which statuses are building up, and when a monster is about to die — so you can stop over-cautious play and commit at the right moment.
- _Enhanced Damage Numbers_ teach you the hitzone system live: colored numbers where Weakness Exploit triggers, split physical/elemental values when you turn that on. You learn the monster's weak parts by watching your own hits.
- _The visual stack_ (post-processing script, fog tweak, glow removal) means you can actually *see* the monster's telegraphs at distance and in weather. Read the tells, not the fog.
- _The QoL stack_ removes the between-hunt busywork — restock, meal, camp repair, sharpening — so your session is hunts, not menus.

#info[
  Nothing in the Oath makes a monster die faster or hit softer. The information edge is real, but it is a *skill* edge: the mods show you what is already happening and let you act on it. Play with them for a week and you will be a better hunter — unmodded too, because everything you learned was already in the game.
]

== The hunt loop

Every hunt in Wilds runs the same skeleton. The mods slot into it:

1. _Prepare._ Eat a meal (Auto Meal handles it from your configured set), confirm your item loadout (Auto Restock restocks it when you take the quest). Check the weakness icons on the map to confirm your element.
2. _Travel._ Call your Seikret. Mark the monster on the map and let auto-navigation carry you — use the ride to sharpen (Auto Sharpen already handled the camp side) and plan your opening.
3. _Track._ Follow the Scoutflies and the monster's trail. Wilds' monsters move between zones; the map shows their current position and direction.
4. _Engage._ Enter Focus Mode to aim attacks at wounds and weak parts. The damage numbers now tell you where you are actually hitting — follow the colored numbers.
5. _Exploit._ Wounds glow red (blue on tempered monsters). A *Focus Strike* on a wound deals bonus damage, breaks it, and usually rewards you with parts or a resource refund. This is Wilds' core combat loop — wound, strike, repeat.
6. _Finish._ Slay or capture. The Overlay's HP bar removes the ambiguity of "is it dying?" — when it limps, it is time to decide: trap, or finish the carve.

== Preparation: where hunts are actually won

The Oath's QoL mods automate the *execution* of preparation — they do not automate the *decisions*. Learn to make them deliberately:

- _The elemental matchup._ Every monster has elemental weaknesses and resistances. The weakness icons put them on the map so you can match your weapon's element (and, later, your decorations) before the hunt starts. Fighting a monster with its *resisted* element is the single most common silent mistake in the game — you will see it in the damage numbers as grey where you expect gold.
- _The meal._ Meals grant a set of buffs and skills that last through the hunt, and different ingredient combinations produce different effects. Cook for the fight: raw damage for a quick kill, defense for a monster you do not know, stamina or elemental resist for the fights that demand them. Auto Meal is configured per weapon type or equipment loadout — build meal sets to match your builds, not a single one-size meal.
- _The item loadout._ Auto Restock pulls a configured item set into your pouch when you accept a quest. The right loadout is a real choice: potions and antidotes for a poisoner, flash pods for fliers, traps and tranq bombs if you intend to capture, dung pods for crowded zones, farcasters for emergencies.
- _The two-weapon identity._ The Seikret carries a second weapon, and you can switch mid-hunt. A common winning pair is one weapon for the monster's weakness and one for its resistance, or a melee weapon plus a ranged one so you can keep fighting when the monster camps in a bad spot.

#tip[
  Configure Auto Restock and Auto Meal per *weapon type* (Script Generated UI > Auto Restock / Auto Meal). Then switching your loadout for a matchup automatically switches your meal and your pouch — the automation does what you *would* have done anyway, but it never forgets.
]

== Combat strategy

=== Commitment and positioning

Every weapon in Wilds is a contract about how long you commit to an attack. The game's difficulty is mostly *reading* — knowing when the monster's turn ends and yours begins:

- _Sheath discipline._ The fastest way to get hit is to attack during the monster's wind-up. If the monster is preparing a charge, roar, or tail spin, your only job is to not be where it lands. Sheathe early; reposition; punish after.
- _Position is a weapon._ Most monsters have a danger zone (front claws, tail arc, breath line) and a safe flank. Learn the safe zone for each monster and stand there: you attack more, dodge less, and create wounds faster.
- _Turn economy._ Monster Hunter fights are a constant exchange of turns. The monster's attack is its turn; your punish window is yours. Weapons with long wind-ups (Great Sword, Hammer) need you to *predict* the end of the monster's turn; fast weapons (Dual Blades, Sword & Shield) can react to it. Play to your weapon's timing, not the monster's aggression.

=== Hitzones and damage

Damage numbers in Wilds are split between physical and elemental, and each part of a monster takes different amounts of each:

- _Physical damage_ favors parts with soft meat values — heads, wings, tails, exposed bellies. Enhanced Damage Numbers colors them gold when Weakness Exploit is live (hitzone value over 45), so you can *see* which parts count.
- _Elemental damage_ is a separate, usually smaller, channel. Some monsters are famously element-resistant on their best physical hitzones — if your numbers look gold but the fight feels slow, the monster may be resisting your element.
- _Fixed damage_ (gunlance shelling, some special attacks) ignores hitzones entirely — the damage numbers mod marks these red. Useful against monsters with no soft spots, but they do not benefit from Weakness Exploit.
- _Mind's Eye_ (which the numbers mod also flags) removes the damage penalty for hitting *hard* parts — worth slotting when a monster's weak point is hard to reach.

The practical loop: watch your own numbers, identify which part is gold, farm that part. Every monster becomes a checklist.

=== The wound economy

Wounds are Wilds' core loop, and they are a *resource* with timing:

- _Creating wounds._ Focused damage on one part accumulates a wound; the part glows red in Focus Mode (blue on tempered monsters). Different weapons create wounds at different rates — burst weapons (Dual Blades, Bow) create them fast; heavy weapons create fewer, deeper ones.
- _Spending wounds._ A Focus Strike on a wound does big damage, breaks the wound, and refunds resources or drops parts. But a wound is also a *soft spot* — normal attacks on it deal increased damage until it breaks on its own.
- _Timing the pop._ The best time to Focus Strike is when the monster is committed to a long animation (roaring, charging, exhausted), because the strike animation is a commitment too. Popping a wound also staggers the monster — save a wound for the moment the monster is about to escape or enrage, and the stagger becomes a control tool.
- _Wounds as parts._ Breaking wounds drops materials; if you need a rare part, farm the wound on the part that drops it, then break it deliberately (traps are a reliable window).

=== Counters: offsets and clashes

Wilds gives several weapons a *counter* identity built on timing:

- _Offset attacks_ — certain weapon moves, timed against an incoming attack, trigger a counter that staggers the monster and opens a huge punish window. These are the highest-skill, highest-reward reads in the game. Start by practicing on slow, telegraphed attacks (charges, tail slams) before attempting them in live fights.
- _Clashes_ — blocking a monster's charge with a heavy weapon (Lance, Gunlance, Great Sword guard, and others) can lock into a power struggle; winning it topples the monster. Clashes reward *standing your ground* — the Warden persona is built around them.
- _Perfect guards and evades_ — some weapons reward frame-perfect defensive timing with counters of their own. Learn one counter per weapon you play; it turns the defensive game into offense.

=== Status and crowd control

Status effects build up on a hidden gauge that persists through the fight; the Overlay's status readout shows you the buildup. Each status is a different tactical tool:

- _Poison_ — ticking damage over time; strongest on high-HP monsters where the fight will be long.
- _Blast_ — an explosive proc after enough buildup; extra burst damage on almost every monster.
- _Paralysis_ — freezes the monster in place for a long punish window; the classic "set up the big hit" tool.
- _Sleep_ — the monster falls asleep and the *first hit* on it deals massively increased damage. A sleeping monster is your chance to place one huge charged attack (Great Sword true charge, gunlance full burst, a barrel bomb stack). Never wake a monster with a poke.
- _Stun_ — from repeated head damage; the monster falls over for a free window. Head-focused builds effectively farm stuns.
- _Riding_ (Seikret jumping attacks) — topples the monster on a timer, giving the whole hunt a free damage window.

#tip[
  Status weapons (and status decorations) pair beautifully with the Overlay's buildup readout: you can *see* when paralysis is one hit away and hold your strongest attack for it. Status is not a damage increase — it is a *timing* increase.
]

== The weapons, grouped by strategy

All fourteen weapons are viable and all fourteen share the same core rules; they differ in *when* they want to commit. Try everything in the camp training area, then build an identity:

- _The big reads_ — Great Sword, Hammer, Hunting Horn. Slow, massive, and entirely about predicting the end of the monster's turn. Great Sword charges and Hammer charges need positioning hours; Hunting Horn fights with its melodies (Notes) while playing buffs.
- _The blade dancers_ — Sword & Shield, Dual Blades. Fast, reactive, and sticky: they stay on the monster, create wounds quickly, and (Sword & Shield) use items without sheathing. Dual Blades' Demon Mode is a commitment with a reward.
- _The walls_ — Lance, Gunlance. Guard, counter, and never retreat. Lance is the pure poke-and-guard identity; Gunlance trades mobility for shelling (fixed damage) and the explosive full burst.
- _The technical arsenal_ — Switch Axe, Charge Blade. Both manage a resource (phials for Charge Blade's sword/shield/axe states; amped state and Power Axe for Switch Axe). High skill ceiling, enormous payoff for clean play.
- _The aerialist_ — Insect Glaive. Harvests kinsect extracts (red, white, orange — each grants a different buff) and fights from the air; extract management is the whole game.
- _The ranged line_ — Bow, Light Bowgun, Heavy Bowgun. Range, weak-spot precision, and status ammo/coatings. Bow charges shots and rewards mobility; the bowguns add a third ammo economy on top of the normal one. Ranged weapons change the positioning game entirely — you still need to read the monster, but the safe zones are different.

== Monsters and matchups

The Forbidden Lands host five locales — the Windward Plains, the Scarlet Forest, the Oilwell Basin, the Iceshard Cliffs, and the Ruins of Wyveria — and each has its own ecosystem and its own apex predator (Rey Dau in the plains, Uth Duna in the forest, and worse beyond). Learn the *families*, not just the individuals:

- _Wyverns and leviathans_ (Rathian-line, Mizutsune, Lagiacrus) — classic patterns: breath attacks, charges, tail arcs. Their tells are big and slow; they punish overcommitment.
- _Brute and fanged monsters_ — wrestling patterns: tackles, grapples, and enraged spin cycles. They reward staying mobile and punishing the recovery after a missed grab.
- _Guardians and elder-tier threats_ (Arkveld, Zoh Shia, Gogmazios) — the endgame walls. Expect multi-phase fights, elemental shifts, and attacks that demand the full toolkit: offset reads, clash blocks, status windows, and wound discipline.

The matchup strategy is simple in principle: *bring what the icons tell you, aim where the numbers tell you, and know the family's danger zone before the fight starts.* Title updates have added more matchups over time — Mizutsune (April 2025), Lagiacrus and Seregios (June 2025), Gogmazios (December 2025), and various Arch-Tempered challenges — each one a new lesson in the same grammar.

== Weather, seasons, and the environment

Every locale cycles through three states, and the state is a strategy layer:

- _Plenty_ — abundant resources, calmer monsters. The best time to gather, fish, and farm endemic life.
- _Fallow_ — dry and sparse; some monsters and resources withdraw. Routes change.
- _Inclemency_ — storms, sandstorms, magma flows. This is when each locale's *Apex monster* appears and the environment itself becomes a hazard. The strongest hunts happen here.

You can change the weather and time of day by resting at a camp and using the BBQ menu — it costs *Guild Points*, so it is a resource decision, not a freebie. Plan around the cycle: farm in Plenty, hunt apexes in Inclemency, and use Fallow for the monsters that only appear then. The fog and post-processing mods matter most in Inclemency: with the fog tamed, you can actually fight the apex in its storm instead of guessing where it is.

== Camps: your logistics network

- _Base camps_ are permanent hubs: item box, smithy access, tent (change equipment, appearance, and loadouts).
- _Pop-up camps_ are built with a Camping Kit at marked spots. Each gives a fast-travel point and a rest stop — and monsters can destroy them. Better Camps raises how many you can maintain, and Auto Fix Camps repairs them when you open the map.

#tip[
  Build pop-up camps near the hunting grounds you farm. A camp on the far side of the locale is worth more than a second camp near base — fast-travel is the difference between a fifteen-minute chase and a five-minute hunt.
]

== Progression: from the story to the endgame

=== Low Rank — the story

The story walks you through every locale and system: the Forlorn expedition, your handler Alma, the smithy run by Gemma, and the mystery of the White Wraith. Treat it as the tutorial in disguise — it deliberately introduces one system at a time. Do not rush it: the gear you craft here teaches you the crafting loop that the endgame runs on.

=== The smithy and crafting

Gemma's forge is where all progression lives:

- _Weapons_ branch from ore/bone base trees into monster-specific lines, each with different raw, element, sharpness, and slots. You upgrade along a tree — pick a line and feed it materials. Two weapons of the same tree share progress, so upgrading for one persona's build does not waste the line.
- _Armor_ is built per monster: each set carries armor skills plus defense, and pieces have decoration slots. Early sets are stepping stones; the skills they carry (Divine Blessing, Speed Eating, and the rest) matter more than raw defense.
- _Talismans_ are forged at the smithy from Chapter 2 onward — a dedicated equipment slot that adds extra skill points. The best talismans are a long-term endgame goal.

=== Skills, decorations, and buildcraft

Wilds separates skills into two channels, and buildcraft is about balancing both:

- _Weapon skills_ live on your weapon and its slots — offensive and weapon-mechanic skills (Artillery for shelling, Charge Master for charged attacks, Focus for Great Sword, Guard for Lance).
- _Armor skills_ live on armor — defensive and utility skills (Divine Blessing, Speed Eating, and general buffs).
- _Decorations_ (jewels) fill slots on both. Slots come in levels 1–3; a lower-level jewel fits a higher-level slot, never the reverse. Crucially, *weapon decorations only fit weapon slots and armor decorations only fit armor slots* — plan your weapons around the skills they must carry.
- _Set bonuses_ activate when you wear a number of pieces from the same armor set; _group skills_ are more flexible, activating when three pieces share a group skill even across different sets.
- _Getting decorations:_ mostly random appraisal from quest rewards — tempered hunts are the reliable source — plus targeted crafting at the Melding Pot.

#tip[
  The Overlay's stats table is a buildcraft tool: it shows what share of your damage is physical vs elemental, how often you hit Weakness Exploit zones, and what your buffs actually contribute. Before changing a build, *measure* it — the numbers tell you whether the new skill is earning its slot.
]

=== High Rank and beyond

- _High Rank_ (after the credits): new monster variants, investigations, and the real gear ladder. HR versions of every monster drop the materials the endgame builds need.
- _Tempered monsters_ — stronger variants with glowing wounds (blue in Focus Mode) and better rewards. Hunting tempered monsters is the primary decoration farm; every tempered kill is appraisal loot.
- _Investigations_ — randomized quests with modifiers that change rewards and difficulty. The endgame's farming loop: farm the investigation for the parts, decorations, and rare materials you need.
- _Arch-Tempered_ — the top-tier challenge variants added through title updates (Arch-Tempered Rey Dau, Uth Duna, Arkveld, and more). Expect the hardest hunts in the game; bring the whole Oath stack.
- _Event quests_ — since the 1.042 update, all 26 event quests are playable at any time. They award exclusive gear, layered armor, and event-only materials — the reliable source of the cosmetic endgame.

The current endgame ceiling: Gogmazios (December 2025) added a new endgame gear system, and Arch-Tempered Arkveld (February 2026) sits at the top of the challenge ladder. The *Ascendance* expansion arrives in 2027 and will rewrite this paragraph.

== Economy and upkeep

- _Zenny_ — the money. Crafting, upgrading, and meals all drain it. Sell duplicate monster parts you have hundreds of; never sell materials you still need for an upgrade you are chasing.
- _Guild Points_ — the expedition's resource. Resting to change weather, and some services, cost it. Earn it by hunting, gathering, and completing optional quests — it flows in constantly, so spend it on weather control freely.
- _Ingredients_ — meal fuel, gathered in the field. Build a stockpile of the ingredients your meal sets use; gather on the way to every hunt (the Horizon Keeper persona makes this a rule).
- _Monster parts_ — the real currency. Every hunt yields materials; the field guide tells you which parts drop from which breaks and carves. Target the break, not the kill: a tail carved is a tail you did not have to re-hunt.

== Side systems: the world between hunts

- _Fishing_ — rod or capture net. Net-caught fish are fast but do not count for quests or achievements; rod-caught ones do. Big fish ("Whoppers") trigger a minigame: match the fish's movements, use the right lure and reeling speed, and force jumpers back down. Fish are ingredients, quest targets, and trophy material.
- _Endemic life_ — small creatures caught with the Capture Net. They are sent to the Expedition Command tent at your base camp. Rare species appear only under specific conditions — time of day, weather, season — which makes the weather system double as a *collecting* system. Completing the field guide is a long-term goal with real rewards.
- _Photo mode_ — no default hotkey; open it from the Options tab of the main menu (or bind it to your radial menu). In solo play it freezes the game for clean shots. Enable Depth of Field in graphics settings first, or the option is unavailable. With the Oath's visual stack installed, the Forbidden Lands are worth photographing.
- _The field guide_ — the in-game encyclopedia of monsters, materials, and endemic life. The weakness icons mod puts the combat-relevant part of it on the map; the full guide is still worth completing — it is the checklist for the whole game.

== Your first hunts: a skeleton

A strong opening, whatever your weapon:

1. _The first assignments_ are scripted introductions — follow them, and use the training area at camp between them to test the full weapon roster. Pick one weapon and stay with it for the Low Rank story; weapon-switching mid-story slows your gear progress.
2. _Upgrade constantly._ Every time you unlock a new monster, check the smithy: your weapon line and a fresh armor set are worth more than any skill you could grind for.
3. _Learn Focus Mode early._ Hold the aim button, watch the wounds appear, and practice Focus Strikes on the low-rank monsters where the stakes are low.
4. _Build the meal and loadout habits now._ Configure Auto Meal and Auto Restock per weapon type in the first session — they pay off for the whole game.
5. _Don't beeline._ Wilds' story is the tutorial; skipping systems (camps, fishing, endemic life, side quests) to reach High Rank faster just makes High Rank harder. The endgame assumes you know the loop.

== Pitfalls that end runs

- _Fighting the wrong element._ Grey damage numbers are a silent gear check. Check the icons before you leave camp.
- _Overcommitting on reads._ A missed Great Sword charge or an ill-timed offset costs you more than the monster's turn — it costs your positioning. Practice reads on slow monsters first.
- _Ignoring sharpness._ Hitting with a dull weapon is a massive damage loss. Sharpen between engagements (Auto Sharpen handles after-quest; mid-fight is your call).
- _Skipping meals._ A hunt without a meal is a hunt fighting with one hand tied. Auto Meal exists so this never happens.
- _Wandering without a plan._ Every hunt should have a target part, a break, and a capture/slay decision. The Overlay makes the decision visible; make it before the monster is limping.
- _Hoarding Guild Points._ They are for spending — the weather is a tool, not a tax.
- _Hunting in the wrong season._ Want a rare endemic creature or an apex? Check the weather, rest to set it, then go. Farming the wrong cycle wastes sessions.
- _Chasing the perfect build before the story._ Low Rank gear is disposable; the endgame ladder is where builds matter. Craft for the next fight, not for the final one.
- _Not using the camp network._ A pop-up camp on the far side of the map halves every hunt. Place them early, repair them (Auto Fix Camps), and use them.

== Ten rules for a modded hunt

1. _Update REFramework after every game update, before anything else._ Black screen = old dinput8.dll, nine times out of ten.
2. _Keep the Oath's exclusions in mind_ — if a mod sounds like it removes challenge, it does not belong.
3. _Eat before every hunt_ (Auto Meal makes this automatic — configure the sets).
4. _Restock before every hunt_ (Auto Restock — configure per weapon type).
5. _Read the damage numbers_ — gold means Weakness Exploit is live; if you are hitting grey, you are hitting the wrong part.
6. _Fight the weather, don't fight the fog_ — with the fog tamed, Inclemency is where the best hunts live.
7. _Capture when you need parts, slay when you need carves_ — the Overlay's HP bar makes the decision clean.
8. _Learn two weapons_ — the Seikret carries a second; a ranged and a melee identity covers every matchup.
9. _One persona, one save_ (Chapter 4) — keep the chronicles from bleeding into each other.
10. _Screenshot the moments_ — with the image stack, Wilds is a beautiful game; the Oath just takes the glasses off.
