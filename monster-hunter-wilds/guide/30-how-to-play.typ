// 30-how-to-play.typ — Forlorn Oath: how to play the modded game.
#import "theme.typ": *

= How to Play

_This chapter assumes you know the shape of Monster Hunter but want to play Wilds *well* with the Oath installed — how to read the game with the mods' new information, and the systems that actually matter._

== The Oath's reading of the game

The mods are not decoration — they change how you make decisions:

- _Weakness icons_ tell you what to bring before you leave camp. Element choice stops being a guess.
- _The Overlay_ tells you how the fight is actually going: which hunter is doing what, what percentage of your damage lands on real hitzones, and when a monster is about to die — so you can stop over-cautious play and commit.
- _Enhanced Damage Numbers_ teach you the hitzone system live: gold numbers where Weakness Exploit triggers, split physical/elemental values when you turn that on. You learn the monster's weak parts by watching your own hits.
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
4. _Engage._ Enter Focus Mode to aim attacks at wounds and weak parts. The damage numbers now tell you where you are actually hitting — follow the gold.
5. _Exploit._ Wounds glow red (blue on tempered monsters). A *Focus Strike* on a wound deals bonus damage, breaks it, and usually rewards you with parts or a resource refund. This is Wilds' core combat loop — wound, strike, repeat.
6. _Finish._ Slay or capture. The Overlay's HP bar removes the ambiguity of "is it dying?" — when it limps, it is time to decide: trap, or finish the carve.

== Weather and the seasons

Every locale cycles through three states, and the state is a strategy layer:

- _Plenty_ — abundant resources, calmer monsters. The best time to gather and farm.
- _Fallow_ — dry and sparse; some monsters and resources withdraw.
- _Inclemency_ — storms, sandstorms, magma flows. This is when *Apex monsters* appear and the environment itself becomes a hazard. The strongest hunts happen here.

You can change the weather and time of day by resting at a camp and using the BBQ menu — it costs Guild Points, so it is a resource decision, not a freebie. The fog and post-processing mods matter most in Inclemency: with the fog tamed, you can actually fight the apex in its storm instead of guessing where it is.

== Camps: your network

- _Base camps_ are permanent hubs: item box, smithy access, tent (change equipment, appearance, and loadouts).
- _Pop-up camps_ are built with a Camping Kit at marked spots. Each gives a fast-travel point and a rest stop — and monsters can destroy them. Better Camps raises how many you can maintain and Auto Fix Camps repairs them when you open the map.

#tip[
  Build pop-up camps near the hunting grounds you farm. A camp on the far side of the locale is worth more than a second camp near base — fast-travel is the difference between a fifteen-minute chase and a five-minute hunt.
]

== Combat depth, beyond the basics

- _Focus Mode_ (hold the aim button) gives precise attack direction, lets you guard in any direction, and reveals wounds. It is not optional tech — it is the game's central combat system.
- _Offset attacks_ — certain weapon moves, timed against an incoming attack, trigger a clash-like counter. High-risk, high-reward reads.
- _Clashes_ — blocking a monster's charge with a heavy weapon can lock into a power struggle; winning it topples the monster.
- _Mounting and the Seikret_ — while mounted you can use items, sharpen, and switch to your second weapon. The Seikret can sprint, drift, and glide; its auto-navigation frees your attention for the map and the monster.
- _The 14 weapons_ — every one is viable. At camp, the training area lets you try all of them with zero commitment; take a few hunts per weapon to find your two (the Seikret carries a second weapon, so you can build a two-weapon identity).

== Your companions: Palico and Support Hunters

- _The Palico_ is your permanent partner: heals, buffs, traps, and distracts. Its behavior is not moddable — instead, you shape it through its equipment and abilities.
- _Support Hunters_ are NPC hunters who fill your party when you start a quest solo. They split aggro and can make a hard hunt manageable — and monster HP scales with them, so it is not free.

#info[
  This is the Oath's honest answer to "more AI": the game ships two AI companion systems, and the mods make the *monsters'* AI readable. For the true solo experience, hunt without Support Hunters; for a living party without multiplayer, summon them — and treat them as allies whose aggro you should read and use, not as a difficulty slider.
]

== Progressing: Low Rank to the endgame

- _Low Rank_ (the story): the Forlorn expedition's journey through the Forbidden Lands. The story walks you through every locale and system — follow it, it is the tutorial in disguise.
- _High Rank_: after the credits, the real game. New variants, investigations, and the start of buildcraft. This is where the Overlay's stats table earns its keep — you can finally see which of your skills actually produce damage.
- _Tempered monsters_ — stronger variants with glowing wounds (blue in Focus Mode). The endgame's bread and butter.
- _Arch-Tempered_ — the top-tier challenge variants added through title updates (Arch-Tempered Rey Dau, Uth Duna, Arkveld, and more). Expect the hardest hunts in the game; bring the whole Oath stack.
- _Investigations_ — randomized quests with modifiers that change rewards and difficulty. The endgame's farming loop.
- _Event quests_ — since the 1.042 update, all 26 event quests are playable offline. Farm them for exclusive gear and layered armor without a lobby.

Content released so far through title updates: Mizutsune, Lagiacrus, Seregios, Gogmazios, and various Arch-Tempered and collaboration quests, on top of the launch roster. The *Ascendance* expansion is coming in 2027 — until then, this is the complete game, and this list is built for it.

== Multiplayer etiquette with the Oath

- _Solo and private lobbies_: run everything. The Overlay, damage numbers, the full visual stack — all fine.
- _Public lobbies_: disable the Overlay and Enhanced Damage Numbers before joining others (one click in Fluffy Mod Manager, or their REFramework toggles). The game hides monster HP for a reason; other players did not consent to you seeing theirs. The QoL and visuals mods are client-side and harmless.
- _With friends_: use a private lobby and share the overlay data — comparing DPS charts after a hunt is half the fun.

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
